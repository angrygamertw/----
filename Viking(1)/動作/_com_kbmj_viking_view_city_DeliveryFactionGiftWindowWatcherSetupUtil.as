package 
{
    import com.kbmj.viking.view.city.*;
    import flash.display.*;
    import mx.binding.*;
    import mx.core.*;

    public class _com_kbmj_viking_view_city_DeliveryFactionGiftWindowWatcherSetupUtil extends Sprite implements IWatcherSetupUtil
    {

        public function _com_kbmj_viking_view_city_DeliveryFactionGiftWindowWatcherSetupUtil()
        {
            return;
        }// end function

        public function setup(param1:Object, param2:Function, param3:Array, param4:Array) : void
        {
            param4[7] = new PropertyWatcher("_giftCountLeft", {propertyChange:true}, [param3[5]], param2);
            param4[0] = new PropertyWatcher("_swf_window", {propertyChange:true}, [param3[0]], param2);
            param4[5] = new PropertyWatcher("_currentGiftCount", {propertyChange:true}, [param3[4]], param2);
            param4[2] = new PropertyWatcher("_maxQuantity", {propertyChange:true}, [param3[2]], param2);
            param4[7].updateParent(param1);
            param4[0].updateParent(param1);
            param4[5].updateParent(param1);
            param4[2].updateParent(param1);
            return;
        }// end function

        public static function init(param1:IFlexModuleFactory) : void
        {
            DeliveryFactionGiftWindow.watcherSetupUtil = new _com_kbmj_viking_view_city_DeliveryFactionGiftWindowWatcherSetupUtil;
            return;
        }// end function

    }
}
