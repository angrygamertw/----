package 
{
    import com.kbmj.viking.view.city.*;
    import flash.display.*;
    import mx.binding.*;
    import mx.core.*;

    public class _com_kbmj_viking_view_city_BuyTradeGoodsSearchWindowWatcherSetupUtil extends Sprite implements IWatcherSetupUtil
    {

        public function _com_kbmj_viking_view_city_BuyTradeGoodsSearchWindowWatcherSetupUtil()
        {
            return;
        }// end function

        public function setup(param1:Object, param2:Function, param3:Array, param4:Array) : void
        {
            param4[44] = new PropertyWatcher("_swf_close_window", {propertyChange:true}, [param3[65]], param2);
            param4[6] = new PropertyWatcher("selectJobData", {propertyChange:true}, [param3[20], param3[7]], param2);
            param4[7] = new PropertyWatcher("weaponArray", {propertyChange:true}, [param3[9]], param2);
            param4[16] = new PropertyWatcher("armorArray", {propertyChange:true}, [param3[22]], param2);
            param4[43] = new PropertyWatcher("_swf_close", {propertyChange:true}, [param3[62]], param2);
            param4[24] = new PropertyWatcher("accessoryArray", {propertyChange:true}, [param3[33]], param2);
            param4[35] = new PropertyWatcher("materialArray", {propertyChange:true}, [param3[50]], param2);
            param4[39] = new PropertyWatcher("_gold", {propertyChange:true}, [param3[55]], param2);
            param4[29] = new PropertyWatcher("itemArray", {propertyChange:true}, [param3[41]], param2);
            param4[9] = new PropertyWatcher("detailRenderer", {propertyChange:true}, [param3[53], param3[36], param3[25], param3[12], param3[44]], param2);
            param4[40] = new PropertyWatcher("_swf_tab", {propertyChange:true}, [param3[59]], param2);
            param4[44].updateParent(param1);
            param4[6].updateParent(param1);
            param4[7].updateParent(param1);
            param4[16].updateParent(param1);
            param4[43].updateParent(param1);
            param4[24].updateParent(param1);
            param4[35].updateParent(param1);
            param4[39].updateParent(param1);
            param4[29].updateParent(param1);
            param4[9].updateParent(param1);
            param4[40].updateParent(param1);
            return;
        }// end function

        public static function init(param1:IFlexModuleFactory) : void
        {
            BuyTradeGoodsSearchWindow.watcherSetupUtil = new _com_kbmj_viking_view_city_BuyTradeGoodsSearchWindowWatcherSetupUtil;
            return;
        }// end function

    }
}
