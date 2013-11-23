package 
{
    import com.kbmj.viking.view.home.*;
    import flash.display.*;
    import mx.binding.*;
    import mx.core.*;

    public class _com_kbmj_viking_view_home_SkillSelectWindowWatcherSetupUtil extends Sprite implements IWatcherSetupUtil
    {

        public function _com_kbmj_viking_view_home_SkillSelectWindowWatcherSetupUtil()
        {
            return;
        }// end function

        public function setup(param1:Object, param2:Function, param3:Array, param4:Array) : void
        {
            param4[5] = new PropertyWatcher("skills", {propertyChange:true}, [param3[5]], param2);
            param4[10] = new PropertyWatcher("_swf_close", {propertyChange:true}, [param3[10]], param2);
            param4[1] = new PropertyWatcher("_swf_close_window", {propertyChange:true}, [param3[1]], param2);
            param4[11] = new PropertyWatcher("_swf_check_window", {propertyChange:true}, [param3[11]], param2);
            param4[0] = new PropertyWatcher("_swf_window", {propertyChange:true}, [param3[0]], param2);
            param4[13] = new PropertyWatcher("_swf_cancel", {propertyChange:true}, [param3[13]], param2);
            param4[12] = new PropertyWatcher("_swf_change", {propertyChange:true}, [param3[12]], param2);
            param4[7] = new PropertyWatcher("detailRenderer", {propertyChange:true}, [param3[7]], param2);
            param4[5].updateParent(param1);
            param4[10].updateParent(param1);
            param4[1].updateParent(param1);
            param4[11].updateParent(param1);
            param4[0].updateParent(param1);
            param4[13].updateParent(param1);
            param4[12].updateParent(param1);
            param4[7].updateParent(param1);
            return;
        }// end function

        public static function init(param1:IFlexModuleFactory) : void
        {
            SkillSelectWindow.watcherSetupUtil = new _com_kbmj_viking_view_home_SkillSelectWindowWatcherSetupUtil;
            return;
        }// end function

    }
}
