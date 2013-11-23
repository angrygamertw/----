package 
{
    import com.kbmj.viking.view.city.*;
    import flash.display.*;
    import mx.binding.*;
    import mx.core.*;

    public class _com_kbmj_viking_view_city_TempleConfirmWindowWatcherSetupUtil extends Sprite implements IWatcherSetupUtil
    {

        public function _com_kbmj_viking_view_city_TempleConfirmWindowWatcherSetupUtil()
        {
            return;
        }// end function

        public function setup(param1:Object, param2:Function, param3:Array, param4:Array) : void
        {
            param4[16] = new PropertyWatcher("_swf_close", {propertyChange:true}, [param3[20]], param2);
            param4[5] = new PropertyWatcher("_swf_close_window", {propertyChange:true}, [param3[7]], param2);
            param4[0] = new PropertyWatcher("_swf_window", {propertyChange:true}, [param3[0]], param2);
            param4[7] = new PropertyWatcher("_guildName", {propertyChange:true}, [param3[17], param3[16], param3[11], param3[12], param3[13], param3[14], param3[15]], param2);
            param4[16].updateParent(param1);
            param4[5].updateParent(param1);
            param4[0].updateParent(param1);
            param4[7].updateParent(param1);
            return;
        }// end function

        public static function init(param1:IFlexModuleFactory) : void
        {
            TempleConfirmWindow.watcherSetupUtil = new _com_kbmj_viking_view_city_TempleConfirmWindowWatcherSetupUtil;
            return;
        }// end function

    }
}
