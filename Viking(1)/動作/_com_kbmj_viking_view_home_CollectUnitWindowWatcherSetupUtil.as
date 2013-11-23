package 
{
    import com.kbmj.viking.view.home.*;
    import flash.display.*;
    import mx.binding.*;
    import mx.core.*;

    public class _com_kbmj_viking_view_home_CollectUnitWindowWatcherSetupUtil extends Sprite implements IWatcherSetupUtil
    {

        public function _com_kbmj_viking_view_home_CollectUnitWindowWatcherSetupUtil()
        {
            return;
        }// end function

        public function setup(param1:Object, param2:Function, param3:Array, param4:Array) : void
        {
            param4[15] = new PropertyWatcher("_swf_close", {propertyChange:true}, [param3[12]], param2);
            param4[17] = new PropertyWatcher("_swf_ok_training", {propertyChange:true}, [param3[14]], param2);
            param4[5] = new PropertyWatcher("expLabel", {propertyChange:true}, [param3[5]], param2);
            param4[7] = new PropertyWatcher("countLabel", {propertyChange:true}, [param3[7]], param2);
            param4[14] = new PropertyWatcher("_swf_ok", {propertyChange:true}, [param3[11]], param2);
            param4[18] = new PropertyWatcher("_swf_close_training", {propertyChange:true}, [param3[15]], param2);
            param4[9] = new PropertyWatcher("unitList", {propertyChange:true}, [param3[8], param3[13]], param2);
            param4[10] = new PropertyWatcher("selectedItem", {valueCommit:true, change:true}, [param3[8], param3[13]], null);
            param4[11] = new PropertyWatcher("name", null, [param3[8], param3[13]], null);
            param4[1] = new PropertyWatcher("_unitArray", {propertyChange:true}, [param3[1]], param2);
            param4[12] = new PropertyWatcher("actionCount", {propertyChange:true}, [param3[9]], param2);
            param4[15].updateParent(param1);
            param4[17].updateParent(param1);
            param4[5].updateParent(param1);
            param4[7].updateParent(param1);
            param4[14].updateParent(param1);
            param4[18].updateParent(param1);
            param4[9].updateParent(param1);
            param4[9].addChild(param4[10]);
            param4[10].addChild(param4[11]);
            param4[1].updateParent(param1);
            param4[12].updateParent(param1);
            return;
        }// end function

        public static function init(param1:IFlexModuleFactory) : void
        {
            CollectUnitWindow.watcherSetupUtil = new _com_kbmj_viking_view_home_CollectUnitWindowWatcherSetupUtil;
            return;
        }// end function

    }
}
