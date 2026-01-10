#include <stdio.h>
#include "platform.h"
#include "lw_usb/GenericMacros.h"
#include "lw_usb/GenericTypeDefs.h"
#include "lw_usb/MAX3421E.h"
#include "lw_usb/USB.h"
#include "lw_usb/usb_ch9.h"
#include "lw_usb/transfer.h"
#include "lw_usb/HID.h"
#include "hdmi_text_controller.h"

#include "xparameters.h"
#include <xgpio.h>

#include <stdlib.h>     // For rand() and srand()
#include <time.h>       // For time() (to seed the generator)
#include "xil_printf.h" // For printing in Xilinx environment
#include "CallCpp_c.h"

void initialize_random_generator()
{
    srand((unsigned int)2587599890); // Seed the random number generator
}

int get_random_number(int min, int max)
{
    if (min >= max)
    {
        return min; // Return min if the range is invalid
    }
    return (rand() % (max - min + 1)) + min; // Generate random number in [min, max]
}

int printTime()
{
    initialize_random_generator();
    for (int i = 0; i < 10; i++)
    {
        int rand_num = get_random_number(1, 100);
        xil_printf("Random number %d: %d\r\n", i + 1, rand_num);
    }
    return 0;
}

extern HID_DEVICE hid_device;

static XGpio Gpio_hex;

static BYTE addr = 1; // hard-wired USB address
const char *const devclasses[] = {" Uninitialized", " HID Keyboard", " HID Mouse", " Mass storage"};

BYTE GetDriverandReport()
{
    BYTE i;
    BYTE rcode;
    BYTE device = 0xFF;
    BYTE tmpbyte;

    DEV_RECORD *tpl_ptr;
    xil_printf("Reached USB_STATE_RUNNING (0x40)\n");
    for (i = 1; i < USB_NUMDEVICES; i++)
    {
        tpl_ptr = GetDevtable(i);
        if (tpl_ptr->epinfo != NULL)
        {
            xil_printf("Device: %d", i);
            xil_printf("%s \n", devclasses[tpl_ptr->devclass]);
            device = tpl_ptr->devclass;
        }
    }
    // Query rate and protocol
    rcode = XferGetIdle(addr, 0, hid_device.interface, 0, &tmpbyte);
    if (rcode)
    { // error handling
        xil_printf("GetIdle Error. Error code: ");
        xil_printf("%x \n", rcode);
    }
    else
    {
        xil_printf("Update rate: ");
        xil_printf("%x \n", tmpbyte);
    }
    xil_printf("Protocol: ");
    rcode = XferGetProto(addr, 0, hid_device.interface, &tmpbyte);
    if (rcode)
    { // error handling
        xil_printf("GetProto Error. Error code ");
        xil_printf("%x \n", rcode);
    }
    else
    {
        xil_printf("%d \n", tmpbyte);
    }
    return device;
}

void printHex(u32 data, unsigned channel)
{
    XGpio_DiscreteWrite(&Gpio_hex, channel, data);
}

volatile uint32_t *sw_gpio_data = XPAR_GPIO_3_BASEADDR;
volatile uint32_t *led_gpio_data = XPAR_GPIO_4_BASEADDR;

void resetDirectorIO(struct DirectorIO *dio)
{
    memset(dio, 0, sizeof(struct DirectorIO));
}

int main()
{
    init_platform();

    XGpio_Initialize(&Gpio_hex, XPAR_GPIO_USB_KEYCODE_DEVICE_ID);
    XGpio_SetDataDirection(&Gpio_hex, 1, 0x00000000); // configure hex display GPIO
    XGpio_SetDataDirection(&Gpio_hex, 2, 0x00000000); // configure hex display GPIO

    BYTE rcode;
    BOOT_MOUSE_REPORT buf; // USB mouse report
    BOOT_KBD_REPORT kbdbuf;

    BYTE runningdebugflag = 0; // flag to dump out a bunch of information when we first get to USB_STATE_RUNNING
    BYTE errorflag = 0;        // flag once we get an error device so we don't keep dumping out state info
    BYTE device;

    xil_printf("initializing MAX3421E...\n");
    MAX3421E_init();
    xil_printf("initializing USB...\n");
    USB_init();

    uint32_t prev_frame_count = 10;
    uint32_t frame_count = 0;
    struct DirectorIO directorIo;
    resetDirectorIO(&directorIo);

    while (1)
    {
#if 0
        xil_printf("."); // A tick here means one loop through the USB main handler
        MAX3421E_Task();
        USB_Task();
        if (GetUsbTaskState() == USB_STATE_RUNNING)
        {
            if (!runningdebugflag)
            {
                runningdebugflag = 1;
                device = GetDriverandReport();
            }
            else if (device == 1)
            {
                // run keyboard debug polling
                rcode = kbdPoll(&kbdbuf);
                if (rcode == hrNAK)
                {
                    continue; // NAK means no new data
                }
                else if (rcode)
                {
                    xil_printf("Rcode: ");
                    xil_printf("%x \n", rcode);
                    continue;
                }
                xil_printf("keycodes: ");
                for (int i = 0; i < 6; i++)
                {
                    xil_printf("%x ", kbdbuf.keycode[i]);
                    directorIo.keycode[i] = kbdbuf.keycode[i];
                }
                // Outputs the first 4 keycodes using the USB GPIO channel 1
                // printHex(kbdbuf.keycode[0] + (kbdbuf.keycode[1] << 8) + (kbdbuf.keycode[2] << 16) + +(kbdbuf.keycode[3] << 24), 1);
                // Modify to output the last 2 keycodes on channel 2.
            }

            else if (device == 2)
            {
                rcode = mousePoll(&buf);
                if (rcode == hrNAK)
                {
                    // NAK means no new data
                    continue;
                }
                else if (rcode)
                {
                    xil_printf("Rcode: ");
                    xil_printf("%x \n", rcode);
                    continue;
                }
                xil_printf("X displacement: ");
                xil_printf("%d ", (signed char)buf.Xdispl);
                xil_printf("Y displacement: ");
                xil_printf("%d ", (signed char)buf.Ydispl);
                xil_printf("Buttons: ");
                xil_printf("%x\n", buf.button);
            }
        }
        else if (GetUsbTaskState() == USB_STATE_ERROR)
        {
            if (!errorflag)
            {
                errorflag = 1;
                xil_printf("USB Error State\n");
                // print out string descriptor here
            }
        }
        else // not in USB running state
        {

            xil_printf("USB task state: ");
            xil_printf("%x\n", GetUsbTaskState());
            if (runningdebugflag)
            { // previously running, reset USB hardware just to clear out any funky state, HS/FS etc
                runningdebugflag = 0;
                MAX3421E_init();
                USB_init();
            }
            errorflag = 0;
        }
#endif

        // uint32_t frame_tick = hdmi_ctrl->FRAME_TICK;
        //		uint8_t* ptr = (uint8_t*) &frame_tick;
        //		xil_printf("frame tick=%u [0]=%u [3]=%u\n",frame_tick, ptr[0], ptr[3]);
        uint32_t fc_x_y_raw = hdmi_ctrl->FC_X_Y;
        struct FC_DRAWX_DRAWY *fc_x_y = (struct FC_DRAWX_DRAWY *)&fc_x_y_raw;
        frame_count = fc_x_y->frame_count;

        if (frame_count != prev_frame_count) // start of frame
        {
            directorIo.frame_count = frame_count;
            directorIo.switches = *sw_gpio_data;
            xil_printf("SW  %08X\n", directorIo.switches);
            directorIo.keycode[3] = 0xCA;
            directorIo.keycode[2] = 0xFE;
            directorIo.keycode[1] = 0xBA;
            directorIo.keycode[0] = 0xBE;

            directorIo.keycode[3] = 0x20;
            directorIo.keycode[2] = 0x25;
            directorIo.keycode[1] = 0x12;
            directorIo.keycode[0] = 0x11;

            hdmi_ctrl->SWITCHES = *sw_gpio_data;
            printHex(directorIo.keycode[0] + (directorIo.keycode[1] << 8) + (directorIo.keycode[2] << 16) + (directorIo.keycode[3] << 24), 1);

            uint32_t result = call_cpp(&directorIo);
            if (directorIo.leds_changed != 0)
            {
                xil_printf("Setting LEDS to %08X\n", directorIo.leds);
                *led_gpio_data = directorIo.leds;
            }
            if (directorIo.segments7_changed != 0)
            {
                *sw_gpio_data = directorIo.segments7;
                printHex(directorIo.keycode[0] + (directorIo.keycode[1] << 8) + (directorIo.keycode[2] << 16) + (directorIo.keycode[3] << 24), 1);
                xil_printf("Setting SEGMENTS7 to %08X\n", directorIo.segments7);
            }

            prev_frame_count = frame_count;
            resetDirectorIO(&directorIo);
        }
    }

    cleanup_platform();

    return 0;
}
