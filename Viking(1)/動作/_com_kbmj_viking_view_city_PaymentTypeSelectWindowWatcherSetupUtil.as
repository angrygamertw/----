package 
{
    import com.kbmj.viking.view.city.*;
    import flash.display.*;
    import mx.binding.*;
    import mx.core.*;

    public class _com_kbmj_viking_view_city_PaymentTypeSelectWindowWatcherSetupUtil extends Sprite implements IWatcherSetupUtil
    {

        public function _com_kbmj_viking_view_city_PaymentTypeSelectWindowWatcherSetupUtil()
        {
            return;
        }// end function

        public function setup(param1:Object, param2:Function, param3:Array, param4:Array) : void
        {
            param4[11] = new PropertyWatcher("_swf_close", {propertyChange:true}, [param3[11]], param2);
            param4[0] = new PropertyWatcher("_swf_window", {propertyChange:true}, [param3[0]], param2);
            param4[8] = new PropertyWatcher("_swf_point", {propertyChange:true}, [param3[8]], param2);
            param4[2] = new PropertyWatcher("_swf_power", {propertyChange:true}, [param3[2]], param2);
            param4[5] = new PropertyWatcher("_swf_gold", {propertyChange:true}, [param3[5]], param2);
            param4[11].updateParent(param1);
            param4[0].updateParent(param1);
            param4[8].updateParent(param1);
            param4[2].updateParent(param1);
            param4[5].updateParent(param1);
            return;
        }// end function

        public static function init(param1:IFlexModuleFactory) : void
        {
            PaymentTypeSelectWindow.watcherSetupUtil = new _com_kbmj_viking_view_city_PaymentTypeSelectWindowWatcherSetupUtil;
            return;
        }// end function

    }
}
