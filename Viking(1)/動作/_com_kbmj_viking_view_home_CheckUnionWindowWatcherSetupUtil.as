package 
{
    import com.kbmj.viking.view.home.*;
    import flash.display.*;
    import mx.binding.*;
    import mx.core.*;

    public class _com_kbmj_viking_view_home_CheckUnionWindowWatcherSetupUtil extends Sprite implements IWatcherSetupUtil
    {

        public function _com_kbmj_viking_view_home_CheckUnionWindowWatcherSetupUtil()
        {
            return;
        }// end function

        public function setup(param1:Object, param2:Function, param3:Array, param4:Array) : void
        {
            param4[10] = new PropertyWatcher("_swf_close", {propertyChange:true}, [param3[6]], param2);
            param4[7] = new PropertyWatcher("_swf_union", {propertyChange:true}, [param3[3]], param2);
            param4[0] = new PropertyWatcher("_swf_window", {propertyChange:true}, [param3[0]], param2);
            param4[8] = new PropertyWatcher("_swf_back", {propertyChange:true}, [param3[4]], param2);
            param4[2] = new PropertyWatcher("_yangUnit", {propertyChange:true}, [param3[1]], param2);
            param4[3] = new PropertyWatcher("name", {propertyChange:true}, [param3[1]], null);
            param4[4] = new PropertyWatcher("_yinUnit", {propertyChange:true}, [param3[1]], param2);
            param4[5] = new PropertyWatcher("name", {propertyChange:true}, [param3[1]], null);
            param4[10].updateParent(param1);
            param4[7].updateParent(param1);
            param4[0].updateParent(param1);
            param4[8].updateParent(param1);
            param4[2].updateParent(param1);
            param4[2].addChild(param4[3]);
            param4[4].updateParent(param1);
            param4[4].addChild(param4[5]);
            return;
        }// end function

        public static function init(param1:IFlexModuleFactory) : void
        {
            CheckUnionWindow.watcherSetupUtil = new _com_kbmj_viking_view_home_CheckUnionWindowWatcherSetupUtil;
            return;
        }// end function

    }
}
