package 
{
    import com.kbmj.viking.view.home.*;
    import flash.display.*;
    import mx.binding.*;
    import mx.core.*;

    public class _com_kbmj_viking_view_home_HomeMapBuildingMouseOverWatcherSetupUtil extends Sprite implements IWatcherSetupUtil
    {

        public function _com_kbmj_viking_view_home_HomeMapBuildingMouseOverWatcherSetupUtil()
        {
            return;
        }// end function

        public function setup(param1:Object, param2:Function, param3:Array, param4:Array) : void
        {
            param4[0] = new PropertyWatcher("building", {propertyChange:true}, [param3[1]], param2);
            param4[1] = new PropertyWatcher("buildingMasterVO", {propertyChange:true}, [param3[1]], null);
            param4[2] = new PropertyWatcher("nameLabel", {propertyChange:true}, [param3[1]], null);
            param4[3] = new PropertyWatcher("buidingLevel", {propertyChange:true}, [param3[1]], param2);
            param4[0].updateParent(param1);
            param4[0].addChild(param4[1]);
            param4[1].addChild(param4[2]);
            param4[3].updateParent(param1);
            return;
        }// end function

        public static function init(param1:IFlexModuleFactory) : void
        {
            HomeMapBuildingMouseOver.watcherSetupUtil = new _com_kbmj_viking_view_home_HomeMapBuildingMouseOverWatcherSetupUtil;
            return;
        }// end function

    }
}
