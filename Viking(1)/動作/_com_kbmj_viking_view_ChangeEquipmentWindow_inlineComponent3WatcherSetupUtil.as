package 
{
    import com.kbmj.viking.view.*;
    import flash.display.*;
    import mx.binding.*;
    import mx.core.*;

    public class _com_kbmj_viking_view_ChangeEquipmentWindow_inlineComponent3WatcherSetupUtil extends Sprite implements IWatcherSetupUtil
    {

        public function _com_kbmj_viking_view_ChangeEquipmentWindow_inlineComponent3WatcherSetupUtil()
        {
            return;
        }// end function

        public function setup(param1:Object, param2:Function, param3:Array, param4:Array) : void
        {
            param4[0] = new PropertyWatcher("outerDocument", {propertyChange:true}, [param3[0], param3[2]], param2);
            param4[2] = new PropertyWatcher("data", {dataChange:true}, [param3[1]], param2);
            param4[3] = new PropertyWatcher("nameLabel", null, [param3[1]], null);
            param4[0].updateParent(param1);
            param4[2].updateParent(param1);
            param4[2].addChild(param4[3]);
            return;
        }// end function

        public static function init(param1:IFlexModuleFactory) : void
        {
            ChangeEquipmentWindow_inlineComponent3.watcherSetupUtil = new _com_kbmj_viking_view_ChangeEquipmentWindow_inlineComponent3WatcherSetupUtil;
            return;
        }// end function

    }
}
