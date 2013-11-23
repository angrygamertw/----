package 
{
    import com.kbmj.viking.view.*;
    import flash.display.*;
    import mx.binding.*;
    import mx.core.*;

    public class _com_kbmj_viking_view_UnitPortraitWatcherSetupUtil extends Sprite implements IWatcherSetupUtil
    {

        public function _com_kbmj_viking_view_UnitPortraitWatcherSetupUtil()
        {
            return;
        }// end function

        public function setup(param1:Object, param2:Function, param3:Array, param4:Array) : void
        {
            param4[2] = new PropertyWatcher("_portraitWidth", {propertyChange:true}, [param3[1]], param2);
            param4[0] = new PropertyWatcher("_unit", {propertyChange:true}, [param3[0]], param2);
            param4[1] = new PropertyWatcher("faceUic", {propertyChange:true}, [param3[0]], null);
            param4[3] = new PropertyWatcher("_portraitHeight", {propertyChange:true}, [param3[2]], param2);
            param4[2].updateParent(param1);
            param4[0].updateParent(param1);
            param4[0].addChild(param4[1]);
            param4[3].updateParent(param1);
            return;
        }// end function

        public static function init(param1:IFlexModuleFactory) : void
        {
            UnitPortrait.watcherSetupUtil = new _com_kbmj_viking_view_UnitPortraitWatcherSetupUtil;
            return;
        }// end function

    }
}
