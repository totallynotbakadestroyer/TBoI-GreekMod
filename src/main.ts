// Register the mod
// (which will make it show up in the list of mods on the mod screen in the main menu)
const GreekMod = RegisterMod("GreekMod", 1);

// Define callback functions
function postGameStarted() {
  Isaac.DebugString("Callback triggered: MC_POST_GAME_STARTED");
}

// Register callbacks
GreekMod.AddCallback(ModCallbacks.MC_POST_GAME_STARTED, postGameStarted);

// Print an initialization message to the "log.txt" file
Isaac.DebugString("GreekMod initialized.");
