package 
{
    import com.kbmj.viking.view.*;
    import flash.display.*;
    import mx.binding.*;
    import mx.core.*;

    public class _com_kbmj_viking_view_ChangeEquipmentWindow_inlineComponent2WatcherSetupUtil extends Sprite implements IWatcherSetupUtil
    {

        public function _com_kbmj_viking_view_ChangeEquipmentWindow_inlineComponent2WatcherSetupUtil()
        {
            return;
        }// end function

        public function setup(param1:Object, param2:Function, param3:Array, param4:Array) : void
        {
            param4[0] = new PropertyWatcher("outerDocument", {propertyChange:true}, [param3[0], param3[1], param3[2], param3[4]], param2);
            param4[1] = new PropertyWatcher("_arrow_right", {propertyChange:true}, [param3[0]], null);
            param4[3] = new PropertyWatcher("data", {dataChange:true}, [param3[1], param3[3]], param2);
            param4[5] = new PropertyWatcher("nameLabel", null, [param3[3]], null);
            param4[0].updateParent(param1);
            param4[0].addChild(param4[1]);
            param4[3].updateParent(param1);
            param4[3].addChild(param4[5]);
            return;
        }// end function

        public static function init(param1:IFlexModuleFactory) : void
        {
            ChangeEquipmentWindow_inlineComponent2.watcherSetupUtil = new _com_kbmj_viking_view_ChangeEquipmentWindow_inlineComponent2WatcherSetupUtil;
            return;
        }// end function

    }
}
