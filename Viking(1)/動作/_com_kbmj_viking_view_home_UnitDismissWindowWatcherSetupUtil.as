package 
{
    import com.kbmj.viking.view.home.*;
    import flash.display.*;
    import mx.binding.*;
    import mx.core.*;

    public class _com_kbmj_viking_view_home_UnitDismissWindowWatcherSetupUtil extends Sprite implements IWatcherSetupUtil
    {

        public function _com_kbmj_viking_view_home_UnitDismissWindowWatcherSetupUtil()
        {
            return;
        }// end function

        public function setup(param1:Object, param2:Function, param3:Array, param4:Array) : void
        {
            param4[11] = new PropertyWatcher("_swf_dismiss", {propertyChange:true}, [param3[8]], param2);
            param4[10] = new PropertyWatcher("_swf_close", {propertyChange:true}, [param3[7]], param2);
            param4[3] = new PropertyWatcher("_unit", {propertyChange:true}, [param3[2], param3[3], param3[4], param3[6]], param2);
            param4[7] = new PropertyWatcher("level", {propertyChange:true}, [param3[4], param3[6]], null);
            param4[4] = new PropertyWatcher("name", {propertyChange:true}, [param3[2]], null);
            param4[6] = new PropertyWatcher("jobName", {propertyChange:true}, [param3[3]], null);
            param4[0] = new PropertyWatcher("_swf_bg", {propertyChange:true}, [param3[0]], param2);
            param4[11].updateParent(param1);
            param4[10].updateParent(param1);
            param4[3].updateParent(param1);
            param4[3].addChild(param4[7]);
            param4[3].addChild(param4[4]);
            param4[3].addChild(param4[6]);
            param4[0].updateParent(param1);
            return;
        }// end function

        public static function init(param1:IFlexModuleFactory) : void
        {
            UnitDismissWindow.watcherSetupUtil = new _com_kbmj_viking_view_home_UnitDismissWindowWatcherSetupUtil;
            return;
        }// end function

    }
}
