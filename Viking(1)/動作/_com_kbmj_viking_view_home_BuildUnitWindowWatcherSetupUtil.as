package 
{
    import com.kbmj.viking.view.home.*;
    import flash.display.*;
    import mx.binding.*;
    import mx.core.*;

    public class _com_kbmj_viking_view_home_BuildUnitWindowWatcherSetupUtil extends Sprite implements IWatcherSetupUtil
    {

        public function _com_kbmj_viking_view_home_BuildUnitWindowWatcherSetupUtil()
        {
            return;
        }// end function

        public function setup(param1:Object, param2:Function, param3:Array, param4:Array) : void
        {
            param4[7] = new PropertyWatcher("expLabel", {propertyChange:true}, [param3[7]], param2);
            param4[2] = new PropertyWatcher("_unitArray", {propertyChange:true}, [param3[2]], param2);
            param4[7].updateParent(param1);
            param4[2].updateParent(param1);
            return;
        }// end function

        public static function init(param1:IFlexModuleFactory) : void
        {
            BuildUnitWindow.watcherSetupUtil = new _com_kbmj_viking_view_home_BuildUnitWindowWatcherSetupUtil;
            return;
        }// end function

    }
}
