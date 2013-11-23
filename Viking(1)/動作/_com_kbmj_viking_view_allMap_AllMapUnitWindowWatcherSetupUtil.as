package 
{
    import com.kbmj.viking.view.allMap.*;
    import flash.display.*;
    import mx.binding.*;
    import mx.core.*;

    public class _com_kbmj_viking_view_allMap_AllMapUnitWindowWatcherSetupUtil extends Sprite implements IWatcherSetupUtil
    {

        public function _com_kbmj_viking_view_allMap_AllMapUnitWindowWatcherSetupUtil()
        {
            return;
        }// end function

        public function setup(param1:Object, param2:Function, param3:Array, param4:Array) : void
        {
            param4[0] = new PropertyWatcher("_windowBg", {propertyChange:true}, [param3[0]], param2);
            param4[11] = new PropertyWatcher("_buttonX", {propertyChange:true}, [param3[10]], param2);
            param4[9] = new PropertyWatcher("expLabel", {propertyChange:true}, [param3[8]], param2);
            param4[4] = new PropertyWatcher("_unitArray", {propertyChange:true}, [param3[3]], param2);
            param4[3] = new PropertyWatcher("_commandName", {propertyChange:true}, [param3[2]], param2);
            param4[1] = new PropertyWatcher("_title", {propertyChange:true}, [param3[1]], param2);
            param4[10] = new PropertyWatcher("_buttonCancel", {propertyChange:true}, [param3[9]], param2);
            param4[0].updateParent(param1);
            param4[11].updateParent(param1);
            param4[9].updateParent(param1);
            param4[4].updateParent(param1);
            param4[3].updateParent(param1);
            param4[1].updateParent(param1);
            param4[10].updateParent(param1);
            return;
        }// end function

        public static function init(param1:IFlexModuleFactory) : void
        {
            AllMapUnitWindow.watcherSetupUtil = new _com_kbmj_viking_view_allMap_AllMapUnitWindowWatcherSetupUtil;
            return;
        }// end function

    }
}
