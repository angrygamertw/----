package 
{
    import com.kbmj.viking.view.home.*;
    import flash.display.*;
    import mx.binding.*;
    import mx.core.*;

    public class _com_kbmj_viking_view_home_CheckBuyPaymentCommodityWindowWatcherSetupUtil extends Sprite implements IWatcherSetupUtil
    {

        public function _com_kbmj_viking_view_home_CheckBuyPaymentCommodityWindowWatcherSetupUtil()
        {
            return;
        }// end function

        public function setup(param1:Object, param2:Function, param3:Array, param4:Array) : void
        {
            param4[0] = new PropertyWatcher("_swf_window", {propertyChange:true}, [param3[0]], param2);
            param4[9] = new PropertyWatcher("_swf_buy", {propertyChange:true}, [param3[4]], param2);
            param4[6] = new PropertyWatcher("_property", {propertyChange:true}, [param3[2]], param2);
            param4[10] = new PropertyWatcher("_swf_back", {propertyChange:true}, [param3[5]], param2);
            param4[7] = new PropertyWatcher("_typeLabel", {propertyChange:true}, [param3[2]], param2);
            param4[0].updateParent(param1);
            param4[9].updateParent(param1);
            param4[6].updateParent(param1);
            param4[10].updateParent(param1);
            param4[7].updateParent(param1);
            return;
        }// end function

        public static function init(param1:IFlexModuleFactory) : void
        {
            CheckBuyPaymentCommodityWindow.watcherSetupUtil = new _com_kbmj_viking_view_home_CheckBuyPaymentCommodityWindowWatcherSetupUtil;
            return;
        }// end function

    }
}
