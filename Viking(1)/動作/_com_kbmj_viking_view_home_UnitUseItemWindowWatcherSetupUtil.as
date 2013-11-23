package 
{
    import com.kbmj.viking.view.home.*;
    import flash.display.*;
    import mx.binding.*;
    import mx.core.*;

    public class _com_kbmj_viking_view_home_UnitUseItemWindowWatcherSetupUtil extends Sprite implements IWatcherSetupUtil
    {

        public function _com_kbmj_viking_view_home_UnitUseItemWindowWatcherSetupUtil()
        {
            return;
        }// end function

        public function setup(param1:Object, param2:Function, param3:Array, param4:Array) : void
        {
            param4[13] = new PropertyWatcher("tutVisible", {propertyChange:true}, [param3[12]], param2);
            param4[20] = new PropertyWatcher("_swf_close", {propertyChange:true}, [param3[19]], param2);
            param4[5] = new PropertyWatcher("items", {propertyChange:true}, [param3[3], param3[11]], param2);
            param4[6] = new PropertyWatcher("nonTutVisible", {propertyChange:true}, [param3[4]], param2);
            param4[2] = new PropertyWatcher("_unitVO", {propertyChange:true}, [param3[1]], param2);
            param4[3] = new PropertyWatcher("name", {propertyChange:true}, [param3[1]], null);
            param4[8] = new PropertyWatcher("detailRenderer", {propertyChange:true}, [param3[6]], param2);
            param4[15] = new PropertyWatcher("detailRendererTutorial", {propertyChange:true}, [param3[14]], param2);
            param4[13].updateParent(param1);
            param4[20].updateParent(param1);
            param4[5].updateParent(param1);
            param4[6].updateParent(param1);
            param4[2].updateParent(param1);
            param4[2].addChild(param4[3]);
            param4[8].updateParent(param1);
            param4[15].updateParent(param1);
            return;
        }// end function

        public static function init(param1:IFlexModuleFactory) : void
        {
            UnitUseItemWindow.watcherSetupUtil = new _com_kbmj_viking_view_home_UnitUseItemWindowWatcherSetupUtil;
            return;
        }// end function

    }
}
