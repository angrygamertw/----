package 
{
    import com.kbmj.viking.view.city.*;
    import flash.display.*;
    import mx.binding.*;
    import mx.core.*;

    public class _com_kbmj_viking_view_city_CreateGuildWindowWatcherSetupUtil extends Sprite implements IWatcherSetupUtil
    {

        public function _com_kbmj_viking_view_city_CreateGuildWindowWatcherSetupUtil()
        {
            return;
        }// end function

        public function setup(param1:Object, param2:Function, param3:Array, param4:Array) : void
        {
            param4[11] = new PropertyWatcher("viewDataCheckBox", {propertyChange:true}, [param3[9]], param2);
            param4[16] = new PropertyWatcher("_swf_close", {propertyChange:true}, [param3[16]], param2);
            param4[17] = new PropertyWatcher("_swf_close_window", {propertyChange:true}, [param3[19]], param2);
            param4[6] = new PropertyWatcher("_errorMessage", {propertyChange:true}, [param3[6]], param2);
            param4[0] = new PropertyWatcher("_swf_window", {propertyChange:true}, [param3[0]], param2);
            param4[12] = new PropertyWatcher("listRenderer", {propertyChange:true}, [param3[10]], param2);
            param4[8] = new PropertyWatcher("guildName", {propertyChange:true}, [param3[7]], param2);
            param4[9] = new PropertyWatcher("text", {change:false, textChanged:true}, [param3[7]], null);
            param4[11].updateParent(param1);
            param4[16].updateParent(param1);
            param4[17].updateParent(param1);
            param4[6].updateParent(param1);
            param4[0].updateParent(param1);
            param4[12].updateParent(param1);
            param4[8].updateParent(param1);
            param4[8].addChild(param4[9]);
            return;
        }// end function

        public static function init(param1:IFlexModuleFactory) : void
        {
            CreateGuildWindow.watcherSetupUtil = new _com_kbmj_viking_view_city_CreateGuildWindowWatcherSetupUtil;
            return;
        }// end function

    }
}
