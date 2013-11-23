package com.kbmj.viking.controller
{
    import com.kbmj.viking.proxy.*;
    import com.kbmj.viking.vo.*;
    import org.puremvc.as3.interfaces.*;
    import org.puremvc.as3.patterns.command.*;

    public class LoadSecondTierMastersCommand extends SimpleCommand
    {
        public static const SECOND_TIER_MASTERS_LOAD_COMPLETE:String = NAME + "notes/secondTierMastersLoadComplete";
        public static const NAME:String = "LoadSecondTierMasters";

        public function LoadSecondTierMastersCommand()
        {
            return;
        }// end function

        override public function execute(param1:INotification) : void
        {
            var _loc_2:* = MasterProxy(facade.retrieveProxy(MasterProxy.NAME));
            var _loc_3:* = MultipleLoadProxy(facade.retrieveProxy(MultipleLoadProxy.NAME));
            _loc_3.loadMultiple("dependentMasters", SECOND_TIER_MASTERS_LOAD_COMPLETE, [new LoadDetailVO(_loc_2, "loadWeaponMaster", MasterProxy.WEAPON_MASTER_LOAD_COMPLETE), new LoadDetailVO(_loc_2, "loadArmorMaster", MasterProxy.ARMOR_MASTER_LOAD_COMPLETE), new LoadDetailVO(_loc_2, "loadAccessoryMaster", MasterProxy.ACCESSORY_MASTER_LOAD_COMPLETE), new LoadDetailVO(_loc_2, "loadRecipeMaster", MasterProxy.RECIPE_MASTER_LOAD_COMPLETE)]);
            return;
        }// end function

    }
}
