import { CollectibleTypeCustom } from "../constants";

export const evaluateCache = (player: EntityPlayer, cacheFlag: CacheFlag): void => {
  if (cacheFlag === CacheFlag.CACHE_SPEED) {
    if (
      player.HasCollectible(CollectibleTypeCustom.COLLECTIBLE_HERMES_SANDALS)
    ) {
      if (player.MoveSpeed >= 1.7) {
        player.MoveSpeed = 2;
      } else {
        player.MoveSpeed += 0.3;
      }
    }
  }
};
