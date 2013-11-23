package 
{
    import com.kbmj.viking.view.tactics.*;
    import flash.display.*;
    import mx.binding.*;
    import mx.core.*;

    public class _com_kbmj_viking_view_tactics_StatusWindowWatcherSetupUtil extends Sprite implements IWatcherSetupUtil
    {

        public function _com_kbmj_viking_view_tactics_StatusWindowWatcherSetupUtil()
        {
            return;
        }// end function

        public function setup(param1:Object, param2:Function, param3:Array, param4:Array) : void
        {
            param4[47] = new PropertyWatcher("_swf_strange_effect_0", {propertyChange:true}, [param3[35]], param2);
            param4[48] = new PropertyWatcher("_swf_strange_effect_1", {propertyChange:true}, [param3[36]], param2);
            param4[49] = new PropertyWatcher("_swf_strange_effect_2", {propertyChange:true}, [param3[37]], param2);
            param4[50] = new PropertyWatcher("_swf_strange_effect_3", {propertyChange:true}, [param3[38]], param2);
            param4[51] = new PropertyWatcher("_swf_strange_effect_4", {propertyChange:true}, [param3[39]], param2);
            param4[40] = new PropertyWatcher("_attackDefIcon", {propertyChange:true}, [param3[28]], param2);
            param4[20] = new PropertyWatcher("hpbar2", {propertyChange:true}, [param3[8]], param2);
            param4[17] = new PropertyWatcher("hpbar1", {propertyChange:true}, [param3[6]], param2);
            param4[15] = new PropertyWatcher("hpbar_base", {propertyChange:true}, [param3[4]], param2);
            param4[39] = new PropertyWatcher("baseDamage", {propertyChange:true}, [param3[27]], param2);
            param4[38] = new PropertyWatcher("_weaponIcon", {propertyChange:true}, [param3[26]], param2);
            param4[32] = new PropertyWatcher("hpbar8", {propertyChange:true}, [param3[20]], param2);
            param4[30] = new PropertyWatcher("hpbar7", {propertyChange:true}, [param3[18]], param2);
            param4[34] = new PropertyWatcher("hpbar9", {propertyChange:true}, [param3[22]], param2);
            param4[24] = new PropertyWatcher("hpbar4", {propertyChange:true}, [param3[12]], param2);
            param4[22] = new PropertyWatcher("hpbar3", {propertyChange:true}, [param3[10]], param2);
            param4[28] = new PropertyWatcher("hpbar6", {propertyChange:true}, [param3[16]], param2);
            param4[26] = new PropertyWatcher("hpbar5", {propertyChange:true}, [param3[14]], param2);
            param4[36] = new PropertyWatcher("hpbar10", {propertyChange:true}, [param3[24]], param2);
            param4[16] = new PropertyWatcher("hpbar_max", {propertyChange:true}, [param3[5]], param2);
            param4[0] = new PropertyWatcher("_unit", {propertyChange:true}, [param3[34], param3[0], param3[1], param3[32], param3[2], param3[33], param3[3], param3[7], param3[9], param3[11], param3[13], param3[15], param3[17], param3[19], param3[21], param3[23], param3[25], param3[29], param3[31]], param2);
            param4[11] = new PropertyWatcher("factionBossFlag", {propertyChange:true}, [param3[3]], null);
            param4[43] = new PropertyWatcher("baseMagicalDefense", {propertyChange:true}, [param3[31]], null);
            param4[19] = new PropertyWatcher("realMaxHp", {propertyChange:true}, [param3[17], param3[19], param3[21], param3[23], param3[7], param3[25], param3[9], param3[11], param3[13], param3[15]], null);
            param4[12] = new PropertyWatcher("displayHp", {propertyChange:true}, [param3[17], param3[19], param3[3], param3[21], param3[23], param3[7], param3[25], param3[9], param3[11], param3[13], param3[15]], null);
            param4[3] = new PropertyWatcher("jobName", {propertyChange:true}, [param3[1]], null);
            param4[4] = new PropertyWatcher("level", {propertyChange:true}, [param3[1]], null);
            param4[46] = new PropertyWatcher("face2Uic", {propertyChange:true}, [param3[34]], null);
            param4[1] = new PropertyWatcher("name", {propertyChange:true}, [param3[0]], null);
            param4[6] = new PropertyWatcher("weapon", {propertyChange:true}, [param3[2]], null);
            param4[9] = new PropertyWatcher("displayEndurance", {propertyChange:true}, [param3[2]], null);
            param4[8] = new PropertyWatcher("nameLabel", {propertyChange:true}, [param3[2]], null);
            param4[44] = new PropertyWatcher("face2OffsetX", {propertyChange:true}, [param3[32]], null);
            param4[45] = new PropertyWatcher("face2OffsetY", {propertyChange:true}, [param3[33]], null);
            param4[14] = new PropertyWatcher("maskedMaxHp", {propertyChange:true}, [param3[3]], null);
            param4[41] = new PropertyWatcher("baseDefense", {propertyChange:true}, [param3[29]], null);
            param4[42] = new PropertyWatcher("_magicDefIcon", {propertyChange:true}, [param3[30]], param2);
            param4[47].updateParent(param1);
            param4[48].updateParent(param1);
            param4[49].updateParent(param1);
            param4[50].updateParent(param1);
            param4[51].updateParent(param1);
            param4[40].updateParent(param1);
            param4[20].updateParent(param1);
            param4[17].updateParent(param1);
            param4[15].updateParent(param1);
            param4[39].updateParent(param1);
            param4[38].updateParent(param1);
            param4[32].updateParent(param1);
            param4[30].updateParent(param1);
            param4[34].updateParent(param1);
            param4[24].updateParent(param1);
            param4[22].updateParent(param1);
            param4[28].updateParent(param1);
            param4[26].updateParent(param1);
            param4[36].updateParent(param1);
            param4[16].updateParent(param1);
            param4[0].updateParent(param1);
            param4[0].addChild(param4[11]);
            param4[0].addChild(param4[43]);
            param4[0].addChild(param4[19]);
            param4[0].addChild(param4[12]);
            param4[0].addChild(param4[3]);
            param4[0].addChild(param4[4]);
            param4[0].addChild(param4[46]);
            param4[0].addChild(param4[1]);
            param4[0].addChild(param4[6]);
            param4[6].addChild(param4[9]);
            param4[6].addChild(param4[8]);
            param4[0].addChild(param4[44]);
            param4[0].addChild(param4[45]);
            param4[0].addChild(param4[14]);
            param4[0].addChild(param4[41]);
            param4[42].updateParent(param1);
            return;
        }// end function

        public static function init(param1:IFlexModuleFactory) : void
        {
            StatusWindow.watcherSetupUtil = new _com_kbmj_viking_view_tactics_StatusWindowWatcherSetupUtil;
            return;
        }// end function

    }
}
