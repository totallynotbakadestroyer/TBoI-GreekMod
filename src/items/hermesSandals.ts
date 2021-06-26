import { CollectibleTypeCustom } from "../constants";

let added = 0;

export const checkApplyEffect = (player: EntityPlayer): void => {
  if (player.HasCollectible(CollectibleTypeCustom.COLLECTIBLE_HERMES_SANDALS)) {
    if (player.GetMovementDirection() !== Direction.NO_DIRECTION) {
      if (Isaac.GetFrameCount() % 8 === 0 && player.MoveSpeed < 1.99) {
        added += 0.01;
        player.MoveSpeed += 0.01;
        player.EvaluateItems();
      }
    } else {
      player.MoveSpeed -= added;
      added = 0;
    }
  }
};
