package 
{
    import com.kbmj.viking.view.home.*;
    import flash.display.*;
    import mx.binding.*;
    import mx.core.*;

    public class _com_kbmj_viking_view_home_ContinuationResumeWindowWatcherSetupUtil extends Sprite implements IWatcherSetupUtil
    {

        public function _com_kbmj_viking_view_home_ContinuationResumeWindowWatcherSetupUtil()
        {
            return;
        }// end function

        public function setup(param1:Object, param2:Function, param3:Array, param4:Array) : void
        {
            param4[23] = new PropertyWatcher("_swf_resume_7", {propertyChange:true}, [param3[16]], param2);
            param4[20] = new PropertyWatcher("_swf_resume_6", {propertyChange:true}, [param3[14]], param2);
            param4[26] = new PropertyWatcher("_swf_close", {propertyChange:true}, [param3[18]], param2);
            param4[14] = new PropertyWatcher("_swf_resume_4", {propertyChange:true}, [param3[10]], param2);
            param4[17] = new PropertyWatcher("_swf_resume_5", {propertyChange:true}, [param3[12]], param2);
            param4[8] = new PropertyWatcher("_swf_resume_2", {propertyChange:true}, [param3[6]], param2);
            param4[11] = new PropertyWatcher("_swf_resume_3", {propertyChange:true}, [param3[8]], param2);
            param4[2] = new PropertyWatcher("_swf_resume_0", {propertyChange:true}, [param3[2]], param2);
            param4[5] = new PropertyWatcher("_swf_resume_1", {propertyChange:true}, [param3[4]], param2);
            param4[0] = new PropertyWatcher("_swf_bg", {propertyChange:true}, [param3[0]], param2);
            param4[23].updateParent(param1);
            param4[20].updateParent(param1);
            param4[26].updateParent(param1);
            param4[14].updateParent(param1);
            param4[17].updateParent(param1);
            param4[8].updateParent(param1);
            param4[11].updateParent(param1);
            param4[2].updateParent(param1);
            param4[5].updateParent(param1);
            param4[0].updateParent(param1);
            return;
        }// end function

        public static function init(param1:IFlexModuleFactory) : void
        {
            ContinuationResumeWindow.watcherSetupUtil = new _com_kbmj_viking_view_home_ContinuationResumeWindowWatcherSetupUtil;
            return;
        }// end function

    }
}
