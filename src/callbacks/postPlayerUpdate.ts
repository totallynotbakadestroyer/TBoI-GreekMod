import { checkApplyEffect } from "../items/hermesSandals";

export const postPlayerUpdate = (player: EntityPlayer): void => {
  checkApplyEffect(player);
};
