package 
{
    import com.kbmj.viking.view.home.*;
    import flash.display.*;
    import mx.binding.*;
    import mx.core.*;

    public class _com_kbmj_viking_view_home_ChengeIceCheckWindowWatcherSetupUtil extends Sprite implements IWatcherSetupUtil
    {

        public function _com_kbmj_viking_view_home_ChengeIceCheckWindowWatcherSetupUtil()
        {
            return;
        }// end function

        public function setup(param1:Object, param2:Function, param3:Array, param4:Array) : void
        {
            param4[1] = new PropertyWatcher("_withUnit", {propertyChange:true}, [param3[17], param3[1], param3[2], param3[18], param3[3], param3[4], param3[6], param3[7], param3[15]], param2);
            param4[9] = new PropertyWatcher("_swf_ok", {propertyChange:true}, [param3[13]], param2);
            param4[0] = new PropertyWatcher("_swf_window", {propertyChange:true}, [param3[0]], param2);
            param4[5] = new PropertyWatcher("_ticket", {propertyChange:true}, [param3[9]], param2);
            param4[10] = new PropertyWatcher("_swf_back", {propertyChange:true}, [param3[14]], param2);
            param4[11] = new PropertyWatcher("_swf_awake", {propertyChange:true}, [param3[16]], param2);
            param4[1].updateParent(param1);
            param4[9].updateParent(param1);
            param4[0].updateParent(param1);
            param4[5].updateParent(param1);
            param4[10].updateParent(param1);
            param4[11].updateParent(param1);
            return;
        }// end function

        public static function init(param1:IFlexModuleFactory) : void
        {
            ChengeIceCheckWindow.watcherSetupUtil = new _com_kbmj_viking_view_home_ChengeIceCheckWindowWatcherSetupUtil;
            return;
        }// end function

    }
}
