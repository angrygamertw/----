package 
{
    import com.kbmj.viking.view.city.*;
    import flash.display.*;
    import mx.binding.*;
    import mx.core.*;

    public class _com_kbmj_viking_view_city_BarWatcherSetupUtil extends Sprite implements IWatcherSetupUtil
    {

        public function _com_kbmj_viking_view_city_BarWatcherSetupUtil()
        {
            return;
        }// end function

        public function setup(param1:Object, param2:Function, param3:Array, param4:Array) : void
        {
            param4[1] = new PropertyWatcher("_menu2", {propertyChange:true}, [param3[1]], param2);
            param4[0] = new PropertyWatcher("_menu4", {propertyChange:true}, [param3[0]], param2);
            param4[2] = new PropertyWatcher("_menu1", {propertyChange:true}, [param3[2]], param2);
            param4[1].updateParent(param1);
            param4[0].updateParent(param1);
            param4[2].updateParent(param1);
            return;
        }// end function

        public static function init(param1:IFlexModuleFactory) : void
        {
            Bar.watcherSetupUtil = new _com_kbmj_viking_view_city_BarWatcherSetupUtil;
            return;
        }// end function

    }
}
