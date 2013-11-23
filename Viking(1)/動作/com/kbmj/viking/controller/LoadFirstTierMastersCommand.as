package com.kbmj.viking.controller
{
    import com.kbmj.viking.proxy.*;
    import com.kbmj.viking.vo.*;
    import org.puremvc.as3.interfaces.*;
    import org.puremvc.as3.patterns.command.*;

    public class LoadFirstTierMastersCommand extends SimpleCommand
    {
        public static const NAME:String = "LoadFirstTierMastersCommand";
        public static const FIRST_TIER_MASTERS_LOAD_COMPLETE:String = NAME + "/notes/firstTierMastersLoadComplete";

        public function LoadFirstTierMastersCommand()
        {
            return;
        }// end function

        override public function execute(param1:INotification) : void
        {
            var _loc_2:* = MasterProxy(facade.retrieveProxy(MasterProxy.NAME));
            var _loc_3:* = ConfigProxy(facade.retrieveProxy(ConfigProxy.NAME));
            var _loc_4:* = MultipleLoadProxy(facade.retrieveProxy(MultipleLoadProxy.NAME));
            var _loc_5:* = SkillProxy(facade.retrieveProxy(SkillProxy.NAME));
            var _loc_6:* = UnitImageMasterProxy(facade.retrieveProxy(UnitImageMasterProxy.NAME));
            _loc_4.loadMultiple("independentMasters", FIRST_TIER_MASTERS_LOAD_COMPLETE, [new LoadDetailVO(_loc_3, "loadVikingConfig", ConfigProxy.LOAD_VIKING_CONFIG_COMPLETE), new LoadDetailVO(_loc_2, "loadMaterialMaster", MasterProxy.MATERIAL_MASTER_LOAD_COMPLETE), new LoadDetailVO(_loc_2, "loadBuildingMaster", MasterProxy.BUILDING_MASTER_LOAD_COMPLETE), new LoadDetailVO(_loc_2, "loadItemMaster", MasterProxy.ITEM_MASTER_LOAD_COMPLETE), new LoadDetailVO(_loc_2, "loadJobMaster", MasterProxy.JOB_MASTER_LOAD_COMPLETE), new LoadDetailVO(_loc_2, "loadAwakeMaster", MasterProxy.AWAKE_MASTER_LOAD_COMPLETE), new LoadDetailVO(_loc_2, "loadGuildFeaturesMaster", MasterProxy.GUILD_FEATURE_MASTER_LOAD_COMPLETE), new LoadDetailVO(_loc_2, "loadAssistantMaster", MasterProxy.ASSISTANT_MASTER_LOAD_COMPLETE), new LoadDetailVO(_loc_5, "loadSkills", SkillProxy.SKILL_LOAD_COMPLETE), new LoadDetailVO(_loc_2, "loadGalleryMaster", MasterProxy.GALLERY_MASTER_LOAD_COMPLETE), new LoadDetailVO(_loc_2, "loadUnionMaster", MasterProxy.UNION_MASTER_LOAD_COMPLETE)]);
            return;
        }// end function

    }
}
