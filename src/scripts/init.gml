init_controls();

/// [Player]
global.CanPause = true; // Completely unimplemented (so far!)
global.SaveHop = true; // Whether you get a djump on load (otherwise it's in your save)
global.AdTrick = true; // Determines if you can use the A<>D trick
global.CanSuicide = false; // Determines if you can kill yourself with SuicideKeyBind
global.DrawPlayer = true; // Why would you disable this
global.DrawHitbox = false; // Turn this on to reveal your hitbox (also k_debug_hitbox debugkey)
global.GiveDjumpOnFlip = true; // what do you think
global.InfiniteJump = false; // YOU CAN JUMP MANY TIMES!!
global.LrAnywhere = false; // Check for left/right keys when tabbed out because old shitty gm8 engines
global.BulletCap = 5; // Maximum bullets in a room at any given time
global.WrapPlayerX = false; // VVVVVV (X-Axis)
global.WrapPlayerY = false; // VVVVVV (Y-Axis)
global.KillPlayerOnEdge = true; // The standard thing.

/// [Internal]
global.Autosave = false; // Makes the player save(true) on next creation
global.Death = 0; // Deaths counter
global.Difficulty = 0; // Not really implemented - only used in saves
global.EngineFps = 75; // Set on every room start
global.Paused = false; // Determines if the game is paused
global.Time = 0; // Time counter (seconds)
global.TimeTicking = true; // Determines if time should be incrementing
global.TimeWhileDead = false; // Determines if time should advance while you're dead
// Formatted windowtitle - %T - time, %D - deaths, %H - hours, %M - mins, %s - secs
global.WindowCap = "ShiftEngine Game - Deaths: %D | Time: %H:%M:%S"; // Parsed in update_title automagically

/// [Savefile]
create_save(); // Initializes savefile into global.saveData
global.SaveIndex = -1; // Current Savefile. Initial value is unknown until the save is chosen.

/// [World]
update_title(); // Set window title based on global.windowCap
global.SSaves = false; // S key for saving instead of shooting/touchshooting
global.StartRoom = rNeedleDemo; // The first room when a new game is started
texture_set_interpolation( false ); // Make sure sprite interpolation is off

/// [Mixer]
global.MasterVolume = 1.0; // Master Volume (0.0 ~ 1.0)
global.MusicVolume = 1.0; // Music Volume (0.0 ~ 1.0)
global.SoundVolume = 1.0; // SFX Volume (0.0 ~ 1.0)
global.CurrentBGM = noone; // Current BGM (set by update_bgm)
global.InstanceBGM = noone; // Instance of the current BGM (set by update_bgm)

/// [Debug]
global.Debug = true; // Enables cheats & debug hotkeys
global.DebugGui = false; // Enables the drawing of the debug GUI
global.God = false; // Invincibility (can also be toggled via debug hotkey k_debug_god)

