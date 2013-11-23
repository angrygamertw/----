package 
{
    import com.kbmj.viking.view.city.*;
    import flash.display.*;
    import mx.binding.*;
    import mx.core.*;

    public class _com_kbmj_viking_view_city_PaymentCommodityWindowWatcherSetupUtil extends Sprite implements IWatcherSetupUtil
    {

        public function _com_kbmj_viking_view_city_PaymentCommodityWindowWatcherSetupUtil()
        {
            return;
        }// end function

        public function setup(param1:Object, param2:Function, param3:Array, param4:Array) : void
        {
            param4[20] = new PropertyWatcher("_swf_close", {propertyChange:true}, [param3[24]], param2);
            param4[21] = new PropertyWatcher("_swf_close_window", {propertyChange:true}, [param3[27]], param2);
            param4[0] = new PropertyWatcher("_swf_window", {propertyChange:true}, [param3[0]], param2);
            param4[7] = new PropertyWatcher("_balanceLabel", {propertyChange:true}, [param3[8]], param2);
            param4[13] = new PropertyWatcher("powerRenderer", {propertyChange:true}, [param3[17]], param2);
            param4[9] = new PropertyWatcher("_paymentCommodities", {propertyChange:true}, [param3[12]], param2);
            param4[11] = new PropertyWatcher("detailRenderer", {propertyChange:true}, [param3[15]], param2);
            param4[20].updateParent(param1);
            param4[21].updateParent(param1);
            param4[0].updateParent(param1);
            param4[7].updateParent(param1);
            param4[13].updateParent(param1);
            param4[9].updateParent(param1);
            param4[11].updateParent(param1);
            return;
        }// end function

        public static function init(param1:IFlexModuleFactory) : void
        {
            PaymentCommodityWindow.watcherSetupUtil = new _com_kbmj_viking_view_city_PaymentCommodityWindowWatcherSetupUtil;
            return;
        }// end function

    }
}
