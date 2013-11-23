package 
{
    import com.kbmj.viking.view.*;
    import flash.display.*;
    import mx.binding.*;
    import mx.core.*;

    public class _com_kbmj_viking_view_UnitLevelUpWindowWatcherSetupUtil extends Sprite implements IWatcherSetupUtil
    {

        public function _com_kbmj_viking_view_UnitLevelUpWindowWatcherSetupUtil()
        {
            return;
        }// end function

        public function setup(param1:Object, param2:Function, param3:Array, param4:Array) : void
        {
            param4[2] = new PropertyWatcher("_preUnit", {propertyChange:true}, [param3[17], param3[16], param3[19], param3[2], param3[18], param3[3], param3[4], param3[9], param3[10], param3[11], param3[12]], param2);
            param4[24] = new PropertyWatcher("defense", {propertyChange:true}, [param3[16]], null);
            param4[6] = new PropertyWatcher("level", {propertyChange:true}, [param3[4]], null);
            param4[13] = new PropertyWatcher("strength", {propertyChange:true}, [param3[9]], null);
            param4[30] = new PropertyWatcher("skillPoint", {propertyChange:true}, [param3[19]], null);
            param4[28] = new PropertyWatcher("luck", {propertyChange:true}, [param3[18]], null);
            param4[3] = new PropertyWatcher("name", {propertyChange:true}, [param3[2]], null);
            param4[19] = new PropertyWatcher("maxHp", {propertyChange:true}, [param3[12]], null);
            param4[15] = new PropertyWatcher("tech", {propertyChange:true}, [param3[10]], null);
            param4[5] = new PropertyWatcher("jobName", {propertyChange:true}, [param3[3]], null);
            param4[26] = new PropertyWatcher("intelligence", {propertyChange:true}, [param3[17]], null);
            param4[17] = new PropertyWatcher("agility", {propertyChange:true}, [param3[11]], null);
            param4[0] = new PropertyWatcher("_swf_window", {propertyChange:true}, [param3[0]], param2);
            param4[32] = new PropertyWatcher("_swf_button", {propertyChange:true}, [param3[20]], param2);
            param4[7] = new PropertyWatcher("_afterUnit", {propertyChange:true}, [param3[17], param3[16], param3[19], param3[18], param3[4], param3[9], param3[10], param3[11], param3[12]], param2);
            param4[25] = new PropertyWatcher("defense", {propertyChange:true}, [param3[16]], null);
            param4[8] = new PropertyWatcher("level", {propertyChange:true}, [param3[4]], null);
            param4[14] = new PropertyWatcher("strength", {propertyChange:true}, [param3[9]], null);
            param4[31] = new PropertyWatcher("skillPoint", {propertyChange:true}, [param3[19]], null);
            param4[29] = new PropertyWatcher("luck", {propertyChange:true}, [param3[18]], null);
            param4[20] = new PropertyWatcher("maxHp", {propertyChange:true}, [param3[12]], null);
            param4[16] = new PropertyWatcher("tech", {propertyChange:true}, [param3[10]], null);
            param4[27] = new PropertyWatcher("intelligence", {propertyChange:true}, [param3[17]], null);
            param4[18] = new PropertyWatcher("agility", {propertyChange:true}, [param3[11]], null);
            param4[2].updateParent(param1);
            param4[2].addChild(param4[24]);
            param4[2].addChild(param4[6]);
            param4[2].addChild(param4[13]);
            param4[2].addChild(param4[30]);
            param4[2].addChild(param4[28]);
            param4[2].addChild(param4[3]);
            param4[2].addChild(param4[19]);
            param4[2].addChild(param4[15]);
            param4[2].addChild(param4[5]);
            param4[2].addChild(param4[26]);
            param4[2].addChild(param4[17]);
            param4[0].updateParent(param1);
            param4[32].updateParent(param1);
            param4[7].updateParent(param1);
            param4[7].addChild(param4[25]);
            param4[7].addChild(param4[8]);
            param4[7].addChild(param4[14]);
            param4[7].addChild(param4[31]);
            param4[7].addChild(param4[29]);
            param4[7].addChild(param4[20]);
            param4[7].addChild(param4[16]);
            param4[7].addChild(param4[27]);
            param4[7].addChild(param4[18]);
            return;
        }// end function

        public static function init(param1:IFlexModuleFactory) : void
        {
            UnitLevelUpWindow.watcherSetupUtil = new _com_kbmj_viking_view_UnitLevelUpWindowWatcherSetupUtil;
            return;
        }// end function

    }
}
