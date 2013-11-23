package 
{
    import com.kbmj.viking.view.home.*;
    import flash.display.*;
    import mx.binding.*;
    import mx.core.*;

    public class _com_kbmj_viking_view_home_SubjugationSelectLevelWindowWatcherSetupUtil extends Sprite implements IWatcherSetupUtil
    {

        public function _com_kbmj_viking_view_home_SubjugationSelectLevelWindowWatcherSetupUtil()
        {
            return;
        }// end function

        public function setup(param1:Object, param2:Function, param3:Array, param4:Array) : void
        {
            param4[7] = new PropertyWatcher("tutVisible", {propertyChange:true}, [param3[8]], param2);
            param4[1] = new PropertyWatcher("titleText", {propertyChange:true}, [param3[1]], param2);
            param4[11] = new PropertyWatcher("_swf_close", {propertyChange:true}, [param3[12]], param2);
            param4[3] = new PropertyWatcher("nonTutVisible", {propertyChange:true}, [param3[3]], param2);
            param4[0] = new PropertyWatcher("_swf_bg", {propertyChange:true}, [param3[0]], param2);
            param4[5] = new PropertyWatcher("detailRenderer", {propertyChange:true}, [param3[5]], param2);
            param4[2] = new PropertyWatcher("viewData", {propertyChange:true}, [param3[2], param3[7]], param2);
            param4[9] = new PropertyWatcher("detailRendererTutorial", {propertyChange:true}, [param3[10]], param2);
            param4[7].updateParent(param1);
            param4[1].updateParent(param1);
            param4[11].updateParent(param1);
            param4[3].updateParent(param1);
            param4[0].updateParent(param1);
            param4[5].updateParent(param1);
            param4[2].updateParent(param1);
            param4[9].updateParent(param1);
            return;
        }// end function

        public static function init(param1:IFlexModuleFactory) : void
        {
            SubjugationSelectLevelWindow.watcherSetupUtil = new _com_kbmj_viking_view_home_SubjugationSelectLevelWindowWatcherSetupUtil;
            return;
        }// end function

    }
}
