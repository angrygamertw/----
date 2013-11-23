package 
{
    import com.kbmj.viking.view.*;
    import flash.display.*;
    import mx.binding.*;
    import mx.core.*;

    public class _com_kbmj_viking_view_GuildChatWindowWatcherSetupUtil extends Sprite implements IWatcherSetupUtil
    {

        public function _com_kbmj_viking_view_GuildChatWindowWatcherSetupUtil()
        {
            return;
        }// end function

        public function setup(param1:Object, param2:Function, param3:Array, param4:Array) : void
        {
            param4[4] = new PropertyWatcher("smallChatRendererFct", {propertyChange:true}, [param3[10]], param2);
            param4[2] = new PropertyWatcher("smallChatRendererAll", {propertyChange:true}, [param3[4]], param2);
            param4[0] = new PropertyWatcher("_oldChatText", {propertyChange:true}, [param3[0], param3[2], param3[3], param3[5], param3[6], param3[8], param3[9], param3[11]], param2);
            param4[3] = new PropertyWatcher("smallChatRendererSys", {propertyChange:true}, [param3[7]], param2);
            param4[1] = new PropertyWatcher("smallChatRenderer", {propertyChange:true}, [param3[1]], param2);
            param4[4].updateParent(param1);
            param4[2].updateParent(param1);
            param4[0].updateParent(param1);
            param4[3].updateParent(param1);
            param4[1].updateParent(param1);
            return;
        }// end function

        public static function init(param1:IFlexModuleFactory) : void
        {
            GuildChatWindow.watcherSetupUtil = new _com_kbmj_viking_view_GuildChatWindowWatcherSetupUtil;
            return;
        }// end function

    }
}
