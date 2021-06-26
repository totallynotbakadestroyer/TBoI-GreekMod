import { evaluateCache } from "./callbacks/evaluateCache";
import { postPlayerUpdate } from "./callbacks/postPlayerUpdate";

const GreekMod = RegisterMod("GreekMod", 1);

// Define callback functions
function postGameStarted() {
  Isaac.ConsoleOutput("started");
}

// Register callbacks
GreekMod.AddCallback(ModCallbacks.MC_POST_GAME_STARTED, postGameStarted);
GreekMod.AddCallback(ModCallbacks.MC_POST_PLAYER_UPDATE, postPlayerUpdate);
GreekMod.AddCallback(ModCallbacks.MC_EVALUATE_CACHE, evaluateCache);

// Print an initialization message to the "log.txt" file
Isaac.DebugString("GreekMod initialized.");
