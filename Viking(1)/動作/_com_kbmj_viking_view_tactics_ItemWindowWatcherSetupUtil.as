package 
{
    import com.kbmj.viking.view.tactics.*;
    import flash.display.*;
    import mx.binding.*;
    import mx.core.*;

    public class _com_kbmj_viking_view_tactics_ItemWindowWatcherSetupUtil extends Sprite implements IWatcherSetupUtil
    {

        public function _com_kbmj_viking_view_tactics_ItemWindowWatcherSetupUtil()
        {
            return;
        }// end function

        public function setup(param1:Object, param2:Function, param3:Array, param4:Array) : void
        {
            param4[9] = new PropertyWatcher("_swf_yes", {propertyChange:true}, [param3[13]], param2);
            param4[6] = new PropertyWatcher("_item_mes", {propertyChange:true}, [param3[10]], param2);
            param4[5] = new PropertyWatcher("_swf_close_window", {propertyChange:true}, [param3[7]], param2);
            param4[10] = new PropertyWatcher("_swf_no", {propertyChange:true}, [param3[16]], param2);
            param4[0] = new PropertyWatcher("_swf_window", {propertyChange:true}, [param3[0]], param2);
            param4[9].updateParent(param1);
            param4[6].updateParent(param1);
            param4[5].updateParent(param1);
            param4[10].updateParent(param1);
            param4[0].updateParent(param1);
            return;
        }// end function

        public static function init(param1:IFlexModuleFactory) : void
        {
            ItemWindow.watcherSetupUtil = new _com_kbmj_viking_view_tactics_ItemWindowWatcherSetupUtil;
            return;
        }// end function

    }
}
