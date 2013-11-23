package 
{
    import com.kbmj.viking.*;
    import flash.display.*;
    import mx.binding.*;
    import mx.core.*;

    public class _com_kbmj_viking_AllMapWatcherSetupUtil extends Sprite implements IWatcherSetupUtil
    {

        public function _com_kbmj_viking_AllMapWatcherSetupUtil()
        {
            return;
        }// end function

        public function setup(param1:Object, param2:Function, param3:Array, param4:Array) : void
        {
            param4[4] = new PropertyWatcher("swf_rank", {propertyChange:true}, [param3[4]], param2);
            param4[0] = new PropertyWatcher("rangeImage", {propertyChange:true}, [param3[0]], param2);
            param4[2] = new PropertyWatcher("_tasks", {propertyChange:true}, [param3[2]], param2);
            param4[1] = new PropertyWatcher("_swf_info_chat", {propertyChange:true}, [param3[1]], param2);
            param4[5] = new PropertyWatcher("_unreadMail", {propertyChange:true}, [param3[5]], param2);
            param4[3] = new PropertyWatcher("swf_faction", {propertyChange:true}, [param3[3]], param2);
            param4[4].updateParent(param1);
            param4[0].updateParent(param1);
            param4[2].updateParent(param1);
            param4[1].updateParent(param1);
            param4[5].updateParent(param1);
            param4[3].updateParent(param1);
            return;
        }// end function

        public static function init(param1:IFlexModuleFactory) : void
        {
            AllMap.watcherSetupUtil = new _com_kbmj_viking_AllMapWatcherSetupUtil;
            return;
        }// end function

    }
}
