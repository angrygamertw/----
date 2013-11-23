package 
{
    import com.kbmj.viking.view.city.*;
    import flash.display.*;
    import mx.binding.*;
    import mx.core.*;

    public class _com_kbmj_viking_view_city_ItemDetailWatcherSetupUtil extends Sprite implements IWatcherSetupUtil
    {

        public function _com_kbmj_viking_view_city_ItemDetailWatcherSetupUtil()
        {
            return;
        }// end function

        public function setup(param1:Object, param2:Function, param3:Array, param4:Array) : void
        {
            param4[19] = new PropertyWatcher("menu_data", {propertyChange:true}, [param3[17]], param2);
            param4[0] = new PropertyWatcher("itemVO", {propertyChange:true}, [param3[0], param3[1], param3[2], param3[3], param3[4], param3[5], param3[6], param3[7], param3[8], param3[9], param3[10], param3[11], param3[12], param3[13], param3[14], param3[15], param3[16]], param2);
            param4[1] = new PropertyWatcher("masterVO", null, [param3[0], param3[1], param3[3], param3[4], param3[5], param3[6], param3[7], param3[8], param3[9], param3[10], param3[11], param3[12], param3[13], param3[14], param3[15], param3[16]], null);
            param4[14] = new PropertyWatcher("defense", null, [param3[12]], null);
            param4[11] = new PropertyWatcher("strength", null, [param3[9]], null);
            param4[16] = new PropertyWatcher("luck", null, [param3[14]], null);
            param4[7] = new PropertyWatcher("damage", null, [param3[5]], null);
            param4[18] = new PropertyWatcher("skillId", null, [param3[16]], null);
            param4[2] = new PropertyWatcher("nameLabel", null, [param3[0]], null);
            param4[17] = new PropertyWatcher("maxHp", null, [param3[15]], null);
            param4[13] = new PropertyWatcher("tech", null, [param3[11]], null);
            param4[15] = new PropertyWatcher("agility", null, [param3[13]], null);
            param4[6] = new PropertyWatcher("endurance", null, [param3[4]], null);
            param4[8] = new PropertyWatcher("hit", null, [param3[6]], null);
            param4[9] = new PropertyWatcher("attackRangeMax", null, [param3[7], param3[8]], null);
            param4[3] = new PropertyWatcher("description", null, [param3[1]], null);
            param4[10] = new PropertyWatcher("attackRangeMin", null, [param3[8]], null);
            param4[5] = new PropertyWatcher("weaponRank", null, [param3[3]], null);
            param4[12] = new PropertyWatcher("intelligence", null, [param3[10]], null);
            param4[4] = new PropertyWatcher("buyingPrice", null, [param3[2]], null);
            param4[19].updateParent(param1);
            param4[0].updateParent(param1);
            param4[0].addChild(param4[1]);
            param4[1].addChild(param4[14]);
            param4[1].addChild(param4[11]);
            param4[1].addChild(param4[16]);
            param4[1].addChild(param4[7]);
            param4[1].addChild(param4[18]);
            param4[1].addChild(param4[2]);
            param4[1].addChild(param4[17]);
            param4[1].addChild(param4[13]);
            param4[1].addChild(param4[15]);
            param4[1].addChild(param4[6]);
            param4[1].addChild(param4[8]);
            param4[1].addChild(param4[9]);
            param4[1].addChild(param4[3]);
            param4[1].addChild(param4[10]);
            param4[1].addChild(param4[5]);
            param4[1].addChild(param4[12]);
            param4[0].addChild(param4[4]);
            return;
        }// end function

        public static function init(param1:IFlexModuleFactory) : void
        {
            ItemDetail.watcherSetupUtil = new _com_kbmj_viking_view_city_ItemDetailWatcherSetupUtil;
            return;
        }// end function

    }
}
