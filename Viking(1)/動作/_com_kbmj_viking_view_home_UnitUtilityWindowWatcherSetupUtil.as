package 
{
    import com.kbmj.viking.view.home.*;
    import flash.display.*;
    import mx.binding.*;
    import mx.core.*;

    public class _com_kbmj_viking_view_home_UnitUtilityWindowWatcherSetupUtil extends Sprite implements IWatcherSetupUtil
    {

        public function _com_kbmj_viking_view_home_UnitUtilityWindowWatcherSetupUtil()
        {
            return;
        }// end function

        public function setup(param1:Object, param2:Function, param3:Array, param4:Array) : void
        {
            param4[16] = new PropertyWatcher("_swf_close", {propertyChange:true}, [param3[11]], param2);
            param4[0] = new PropertyWatcher("_swf_close_window", {propertyChange:true}, [param3[0]], param2);
            param4[5] = new PropertyWatcher("_swf_power1", {propertyChange:true}, [param3[3]], param2);
            param4[3] = new PropertyWatcher("_unit", {propertyChange:true}, [param3[2]], param2);
            param4[4] = new PropertyWatcher("name", {propertyChange:true}, [param3[2]], null);
            param4[8] = new PropertyWatcher("_swf_power2", {propertyChange:true}, [param3[5]], param2);
            param4[10] = new PropertyWatcher("_swf_power3", {propertyChange:true}, [param3[7]], param2);
            param4[13] = new PropertyWatcher("_swf_blood_reunion", {propertyChange:true}, [param3[9]], param2);
            param4[16].updateParent(param1);
            param4[0].updateParent(param1);
            param4[5].updateParent(param1);
            param4[3].updateParent(param1);
            param4[3].addChild(param4[4]);
            param4[8].updateParent(param1);
            param4[10].updateParent(param1);
            param4[13].updateParent(param1);
            return;
        }// end function

        public static function init(param1:IFlexModuleFactory) : void
        {
            UnitUtilityWindow.watcherSetupUtil = new _com_kbmj_viking_view_home_UnitUtilityWindowWatcherSetupUtil;
            return;
        }// end function

    }
}
