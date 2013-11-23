package 
{
    import com.kbmj.viking.view.home.*;
    import flash.display.*;
    import mx.binding.*;
    import mx.core.*;

    public class _com_kbmj_viking_view_home_HomeAllUnitListWindowWatcherSetupUtil extends Sprite implements IWatcherSetupUtil
    {

        public function _com_kbmj_viking_view_home_HomeAllUnitListWindowWatcherSetupUtil()
        {
            return;
        }// end function

        public function setup(param1:Object, param2:Function, param3:Array, param4:Array) : void
        {
            param4[3] = new PropertyWatcher("totalLabel", {propertyChange:true}, [param3[8]], param2);
            param4[0] = new PropertyWatcher("_units", {propertyChange:true}, [param3[0]], param2);
            param4[2] = new PropertyWatcher("_statusWindowWidth", {propertyChange:true}, [param3[2], param3[3], param3[4], param3[5], param3[6], param3[7]], param2);
            param4[1] = new PropertyWatcher("genderLabel", {propertyChange:true}, [param3[1]], param2);
            param4[3].updateParent(param1);
            param4[0].updateParent(param1);
            param4[2].updateParent(param1);
            param4[1].updateParent(param1);
            return;
        }// end function

        public static function init(param1:IFlexModuleFactory) : void
        {
            HomeAllUnitListWindow.watcherSetupUtil = new _com_kbmj_viking_view_home_HomeAllUnitListWindowWatcherSetupUtil;
            return;
        }// end function

    }
}
