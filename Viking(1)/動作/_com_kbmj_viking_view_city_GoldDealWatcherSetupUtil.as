package 
{
    import com.kbmj.viking.view.city.*;
    import flash.display.*;
    import mx.binding.*;
    import mx.core.*;

    public class _com_kbmj_viking_view_city_GoldDealWatcherSetupUtil extends Sprite implements IWatcherSetupUtil
    {

        public function _com_kbmj_viking_view_city_GoldDealWatcherSetupUtil()
        {
            return;
        }// end function

        public function setup(param1:Object, param2:Function, param3:Array, param4:Array) : void
        {
            param4[11] = new PropertyWatcher("_swf_close", {propertyChange:true}, [param3[13]], param2);
            param4[4] = new PropertyWatcher("_pocketMoney", {propertyChange:true}, [param3[3]], param2);
            param4[12] = new PropertyWatcher("_swf_close_window", {propertyChange:true}, [param3[14]], param2);
            param4[10] = new PropertyWatcher("_swf_sell", {propertyChange:true}, [param3[11]], param2);
            param4[2] = new PropertyWatcher("_pureGoldRate", {propertyChange:true}, [param3[1]], param2);
            param4[9] = new PropertyWatcher("_sumGold", {propertyChange:true}, [param3[9]], param2);
            param4[6] = new PropertyWatcher("_pureGoldAmount", {propertyChange:true}, [param3[5], param3[7]], param2);
            param4[11].updateParent(param1);
            param4[4].updateParent(param1);
            param4[12].updateParent(param1);
            param4[10].updateParent(param1);
            param4[2].updateParent(param1);
            param4[9].updateParent(param1);
            param4[6].updateParent(param1);
            return;
        }// end function

        public static function init(param1:IFlexModuleFactory) : void
        {
            GoldDeal.watcherSetupUtil = new _com_kbmj_viking_view_city_GoldDealWatcherSetupUtil;
            return;
        }// end function

    }
}
