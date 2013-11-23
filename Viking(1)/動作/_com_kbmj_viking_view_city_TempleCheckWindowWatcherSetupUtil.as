package 
{
    import com.kbmj.viking.view.city.*;
    import flash.display.*;
    import mx.binding.*;
    import mx.core.*;

    public class _com_kbmj_viking_view_city_TempleCheckWindowWatcherSetupUtil extends Sprite implements IWatcherSetupUtil
    {

        public function _com_kbmj_viking_view_city_TempleCheckWindowWatcherSetupUtil()
        {
            return;
        }// end function

        public function setup(param1:Object, param2:Function, param3:Array, param4:Array) : void
        {
            param4[5] = new PropertyWatcher("_swf_close_window", {propertyChange:true}, [param3[7]], param2);
            param4[0] = new PropertyWatcher("_swf_window", {propertyChange:true}, [param3[0]], param2);
            param4[18] = new PropertyWatcher("_swf_yes", {propertyChange:true}, [param3[22]], param2);
            param4[8] = new PropertyWatcher("_guildName", {propertyChange:true}, [param3[17], param3[16], param3[19], param3[18], param3[12], param3[13], param3[14], param3[15]], param2);
            param4[19] = new PropertyWatcher("_swf_no", {propertyChange:true}, [param3[25]], param2);
            param4[5].updateParent(param1);
            param4[0].updateParent(param1);
            param4[18].updateParent(param1);
            param4[8].updateParent(param1);
            param4[19].updateParent(param1);
            return;
        }// end function

        public static function init(param1:IFlexModuleFactory) : void
        {
            TempleCheckWindow.watcherSetupUtil = new _com_kbmj_viking_view_city_TempleCheckWindowWatcherSetupUtil;
            return;
        }// end function

    }
}
