package 
{
    import com.kbmj.viking.view.tactics.*;
    import flash.display.*;
    import mx.binding.*;
    import mx.core.*;

    public class _com_kbmj_viking_view_tactics_ArmsWindowWatcherSetupUtil extends Sprite implements IWatcherSetupUtil
    {

        public function _com_kbmj_viking_view_tactics_ArmsWindowWatcherSetupUtil()
        {
            return;
        }// end function

        public function setup(param1:Object, param2:Function, param3:Array, param4:Array) : void
        {
            param4[13] = new PropertyWatcher("_swf_close", {propertyChange:true}, [param3[18]], param2);
            param4[5] = new PropertyWatcher("_swf_close_window", {propertyChange:true}, [param3[7]], param2);
            param4[0] = new PropertyWatcher("_swf_window", {propertyChange:true}, [param3[0]], param2);
            param4[15] = new PropertyWatcher("_swf_yes", {propertyChange:true}, [param3[25]], param2);
            param4[6] = new PropertyWatcher("eqpData", {propertyChange:true}, [param3[8]], param2);
            param4[16] = new PropertyWatcher("_swf_no", {propertyChange:true}, [param3[28]], param2);
            param4[13].updateParent(param1);
            param4[5].updateParent(param1);
            param4[0].updateParent(param1);
            param4[15].updateParent(param1);
            param4[6].updateParent(param1);
            param4[16].updateParent(param1);
            return;
        }// end function

        public static function init(param1:IFlexModuleFactory) : void
        {
            ArmsWindow.watcherSetupUtil = new _com_kbmj_viking_view_tactics_ArmsWindowWatcherSetupUtil;
            return;
        }// end function

    }
}
