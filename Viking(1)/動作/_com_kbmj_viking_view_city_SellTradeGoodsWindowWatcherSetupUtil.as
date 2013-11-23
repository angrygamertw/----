package 
{
    import com.kbmj.viking.view.city.*;
    import flash.display.*;
    import mx.binding.*;
    import mx.core.*;

    public class _com_kbmj_viking_view_city_SellTradeGoodsWindowWatcherSetupUtil extends Sprite implements IWatcherSetupUtil
    {

        public function _com_kbmj_viking_view_city_SellTradeGoodsWindowWatcherSetupUtil()
        {
            return;
        }// end function

        public function setup(param1:Object, param2:Function, param3:Array, param4:Array) : void
        {
            param4[49] = new PropertyWatcher("_swf_close_window", {propertyChange:true}, [param3[74]], param2);
            param4[0] = new PropertyWatcher("_swf_window", {propertyChange:true}, [param3[0]], param2);
            param4[43] = new PropertyWatcher("sellItemName", {propertyChange:true}, [param3[65], param3[63], param3[62]], param2);
            param4[42] = new PropertyWatcher("_swf_close", {propertyChange:true}, [param3[59]], param2);
            param4[41] = new PropertyWatcher("_swf_exhibit", {propertyChange:true}, [param3[56]], param2);
            param4[6] = new PropertyWatcher("_weapons", {propertyChange:true}, [param3[7]], param2);
            param4[8] = new PropertyWatcher("detailRenderer", {propertyChange:true}, [param3[48], param3[39], param3[20], param3[10], param3[31]], param2);
            param4[48] = new PropertyWatcher("_swf_tab", {propertyChange:true}, [param3[71]], param2);
            param4[22] = new PropertyWatcher("_accessories", {propertyChange:true}, [param3[28]], param2);
            param4[14] = new PropertyWatcher("_armors", {propertyChange:true}, [param3[17]], param2);
            param4[33] = new PropertyWatcher("_materials", {propertyChange:true}, [param3[45]], param2);
            param4[38] = new PropertyWatcher("_gold", {propertyChange:true}, [param3[51]], param2);
            param4[27] = new PropertyWatcher("_items", {propertyChange:true}, [param3[36]], param2);
            param4[49].updateParent(param1);
            param4[0].updateParent(param1);
            param4[43].updateParent(param1);
            param4[42].updateParent(param1);
            param4[41].updateParent(param1);
            param4[6].updateParent(param1);
            param4[8].updateParent(param1);
            param4[48].updateParent(param1);
            param4[22].updateParent(param1);
            param4[14].updateParent(param1);
            param4[33].updateParent(param1);
            param4[38].updateParent(param1);
            param4[27].updateParent(param1);
            return;
        }// end function

        public static function init(param1:IFlexModuleFactory) : void
        {
            SellTradeGoodsWindow.watcherSetupUtil = new _com_kbmj_viking_view_city_SellTradeGoodsWindowWatcherSetupUtil;
            return;
        }// end function

    }
}
