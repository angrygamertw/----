package 
{
    import com.kbmj.viking.view.*;
    import flash.display.*;
    import mx.binding.*;
    import mx.core.*;

    public class _com_kbmj_viking_view_WeaponDetailWatcherSetupUtil extends Sprite implements IWatcherSetupUtil
    {

        public function _com_kbmj_viking_view_WeaponDetailWatcherSetupUtil()
        {
            return;
        }// end function

        public function setup(param1:Object, param2:Function, param3:Array, param4:Array) : void
        {
            param4[1] = new PropertyWatcher("_swf_close", {propertyChange:true}, [param3[1]], param2);
            param4[0] = new PropertyWatcher("_swf_window", {propertyChange:true}, [param3[0]], param2);
            param4[2] = new PropertyWatcher("viewData", {propertyChange:true}, [param3[2], param3[3], param3[4], param3[5], param3[6], param3[7], param3[8], param3[9], param3[10], param3[11], param3[12], param3[13], param3[14], param3[15], param3[17], param3[16], param3[19], param3[18], param3[21], param3[20]], param2);
            param4[33] = new PropertyWatcher("equipabilityJobNameLabel", null, [param3[21]], null);
            param4[30] = new PropertyWatcher("maxHp", null, [param3[19]], null);
            param4[28] = new PropertyWatcher("agility", null, [param3[17]], null);
            param4[6] = new PropertyWatcher("endurance", null, [param3[4]], null);
            param4[23] = new PropertyWatcher("rank", null, [param3[12]], null);
            param4[15] = new PropertyWatcher("attackRangeMax", null, [param3[8]], null);
            param4[10] = new PropertyWatcher("hit", null, [param3[6]], null);
            param4[14] = new PropertyWatcher("attackRangeMin", null, [param3[8]], null);
            param4[4] = new PropertyWatcher("description", null, [param3[3]], null);
            param4[17] = new PropertyWatcher("physicalDefense", null, [param3[9]], null);
            param4[25] = new PropertyWatcher("intelligence", null, [param3[14]], null);
            param4[27] = new PropertyWatcher("defense", null, [param3[16]], null);
            param4[19] = new PropertyWatcher("magicalDefense", null, [param3[10]], null);
            param4[24] = new PropertyWatcher("strength", null, [param3[13]], null);
            param4[29] = new PropertyWatcher("luck", null, [param3[18]], null);
            param4[8] = new PropertyWatcher("damage", null, [param3[5]], null);
            param4[3] = new PropertyWatcher("nameLabel", null, [param3[2]], null);
            param4[26] = new PropertyWatcher("tech", null, [param3[15]], null);
            param4[31] = new PropertyWatcher("skill", null, [param3[20]], null);
            param4[32] = new PropertyWatcher("nameLabel", null, [param3[20]], null);
            param4[12] = new PropertyWatcher("attackRange", null, [param3[7]], null);
            param4[21] = new PropertyWatcher("avoidance", null, [param3[11]], null);
            param4[1].updateParent(param1);
            param4[0].updateParent(param1);
            param4[2].updateParent(param1);
            param4[2].addChild(param4[33]);
            param4[2].addChild(param4[30]);
            param4[2].addChild(param4[28]);
            param4[2].addChild(param4[6]);
            param4[2].addChild(param4[23]);
            param4[2].addChild(param4[15]);
            param4[2].addChild(param4[10]);
            param4[2].addChild(param4[14]);
            param4[2].addChild(param4[4]);
            param4[2].addChild(param4[17]);
            param4[2].addChild(param4[25]);
            param4[2].addChild(param4[27]);
            param4[2].addChild(param4[19]);
            param4[2].addChild(param4[24]);
            param4[2].addChild(param4[29]);
            param4[2].addChild(param4[8]);
            param4[2].addChild(param4[3]);
            param4[2].addChild(param4[26]);
            param4[2].addChild(param4[31]);
            param4[31].addChild(param4[32]);
            param4[2].addChild(param4[12]);
            param4[2].addChild(param4[21]);
            return;
        }// end function

        public static function init(param1:IFlexModuleFactory) : void
        {
            WeaponDetail.watcherSetupUtil = new _com_kbmj_viking_view_WeaponDetailWatcherSetupUtil;
            return;
        }// end function

    }
}
