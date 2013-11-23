package 
{
    import com.kbmj.viking.view.home.*;
    import flash.display.*;
    import mx.binding.*;
    import mx.core.*;

    public class _com_kbmj_viking_view_home_CheckQuestWindowWatcherSetupUtil extends Sprite implements IWatcherSetupUtil
    {

        public function _com_kbmj_viking_view_home_CheckQuestWindowWatcherSetupUtil()
        {
            return;
        }// end function

        public function setup(param1:Object, param2:Function, param3:Array, param4:Array) : void
        {
            param4[11] = new PropertyWatcher("_swf_cancel", {propertyChange:true}, [param3[9]], param2);
            param4[2] = new PropertyWatcher("quest", {propertyChange:true}, [param3[1], param3[4], param3[5], param3[6], param3[7]], param2);
            param4[9] = new PropertyWatcher("reward", null, [param3[7]], null);
            param4[8] = new PropertyWatcher("condition", null, [param3[6]], null);
            param4[6] = new PropertyWatcher("name", null, [param3[4]], null);
            param4[3] = new PropertyWatcher("kills", null, [param3[1]], null);
            param4[7] = new PropertyWatcher("client_name", null, [param3[5]], null);
            param4[11].updateParent(param1);
            param4[2].updateParent(param1);
            param4[2].addChild(param4[9]);
            param4[2].addChild(param4[8]);
            param4[2].addChild(param4[6]);
            param4[2].addChild(param4[3]);
            param4[2].addChild(param4[7]);
            return;
        }// end function

        public static function init(param1:IFlexModuleFactory) : void
        {
            CheckQuestWindow.watcherSetupUtil = new _com_kbmj_viking_view_home_CheckQuestWindowWatcherSetupUtil;
            return;
        }// end function

    }
}
