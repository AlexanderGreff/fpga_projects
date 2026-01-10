#pragma once

#include "EnemiesContainer.hpp"

// ================== GameData ==================
struct GameData
{
    SpriteCatalog &spriteCatalog;

    EnemiesContainer enemies;
    MissilesContainer missiles;
    PlayerState player;

    uint32_t fcCountPrev{};

    GameData()
        : spriteCatalog(globalSpriteCatalog),
          enemies(this),
          missiles(this),
          player(this)
    {
        player.sprite.x = 150;
    }
    void update()
    {
        player.update();
        if (hardware.fcCount > (fcCountPrev + 3))
        {
            missiles.addMissile(player.sprite.xCenter(), player.sprite.y , getSpriteId(Bullet), 3);
            fcCountPrev = hardware.fcCount;
        }
        enemies.update();
        missiles.update();
        hardware.fcCount++;
    }
    void draw()
    {
        player.draw();
        enemies.draw();
        missiles.draw();
    }
    void onFrame()
    {
        update();
        draw();
    }
    void start()
    {
//        enemies.addEnemies(0, 30, 5, 0);
//        enemies.addEnemies(0, 60, 5, 1, 10);
//        enemies.addEnemies(0, 90, 5, 2);
//        enemies.addEnemies(0, 120, 5, 3, 10);

        enemies.addEnemies(0, 30, 5, 0);
        enemies.addEnemies(0, 60, 5, 2, 10);
        enemies.addEnemies(0, 90, 5, 4);
        enemies.addEnemies(0, 130, 5, 1, 10);

    }

};

// ================== Director ==================
struct Director
{
    DirectorIO io;
    GameData gameData;
    bool started{false};

    Director() { memset(&io, 0, sizeof(DirectorIO)); }

    void onStartOfFrame(DirectorIO *directorIo)
    {
        io = *directorIo;
        hardware.directorIo = &io;  

        if (!started)
        {
            started = true;
            gameData.start();
        }
        gameData.onFrame();
    }

    void writeOutputs(DirectorIO *directorIo)
    {
        // Write outputs from io to hardware registers
    }
};

inline Director director;

// ===============================================
// ================ End of File ==================
