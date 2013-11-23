package 
{
    import com.kbmj.viking.view.city.*;
    import flash.display.*;
    import mx.binding.*;
    import mx.core.*;

    public class _com_kbmj_viking_view_city_AdmissionGuildWindowWatcherSetupUtil extends Sprite implements IWatcherSetupUtil
    {

        public function _com_kbmj_viking_view_city_AdmissionGuildWindowWatcherSetupUtil()
        {
            return;
        }// end function

        public function setup(param1:Object, param2:Function, param3:Array, param4:Array) : void
        {
            param4[11] = new PropertyWatcher("_swf_yes", {propertyChange:true}, [param3[14]], param2);
            param4[7] = new PropertyWatcher("_guildData", {propertyChange:true}, [param3[11]], param2);
            param4[8] = new PropertyWatcher("name", {propertyChange:true}, [param3[11]], null);
            param4[5] = new PropertyWatcher("_swf_close_window", {propertyChange:true}, [param3[7]], param2);
            param4[12] = new PropertyWatcher("_swf_no", {propertyChange:true}, [param3[17]], param2);
            param4[0] = new PropertyWatcher("_swf_window", {propertyChange:true}, [param3[0]], param2);
            param4[11].updateParent(param1);
            param4[7].updateParent(param1);
            param4[7].addChild(param4[8]);
            param4[5].updateParent(param1);
            param4[12].updateParent(param1);
            param4[0].updateParent(param1);
            return;
        }// end function

        public static function init(param1:IFlexModuleFactory) : void
        {
            AdmissionGuildWindow.watcherSetupUtil = new _com_kbmj_viking_view_city_AdmissionGuildWindowWatcherSetupUtil;
            return;
        }// end function

    }
}
