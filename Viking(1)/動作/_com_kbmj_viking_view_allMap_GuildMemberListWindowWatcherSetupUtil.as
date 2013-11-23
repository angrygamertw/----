package 
{
    import com.kbmj.viking.view.allMap.*;
    import flash.display.*;
    import mx.binding.*;
    import mx.core.*;

    public class _com_kbmj_viking_view_allMap_GuildMemberListWindowWatcherSetupUtil extends Sprite implements IWatcherSetupUtil
    {

        public function _com_kbmj_viking_view_allMap_GuildMemberListWindowWatcherSetupUtil()
        {
            return;
        }// end function

        public function setup(param1:Object, param2:Function, param3:Array, param4:Array) : void
        {
            param4[2] = new PropertyWatcher("_players", {propertyChange:true}, [param3[2]], param2);
            param4[4] = new PropertyWatcher("nameRenderer", {propertyChange:true}, [param3[4]], param2);
            param4[0] = new PropertyWatcher("_listWindow", {propertyChange:true}, [param3[0]], param2);
            param4[6] = new PropertyWatcher("positionRenderer", {propertyChange:true}, [param3[6]], param2);
            param4[2].updateParent(param1);
            param4[4].updateParent(param1);
            param4[0].updateParent(param1);
            param4[6].updateParent(param1);
            return;
        }// end function

        public static function init(param1:IFlexModuleFactory) : void
        {
            GuildMemberListWindow.watcherSetupUtil = new _com_kbmj_viking_view_allMap_GuildMemberListWindowWatcherSetupUtil;
            return;
        }// end function

    }
}
