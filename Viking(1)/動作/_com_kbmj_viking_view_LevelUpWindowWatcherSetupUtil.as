package 
{
    import com.kbmj.viking.view.*;
    import flash.display.*;
    import mx.binding.*;
    import mx.core.*;

    public class _com_kbmj_viking_view_LevelUpWindowWatcherSetupUtil extends Sprite implements IWatcherSetupUtil
    {

        public function _com_kbmj_viking_view_LevelUpWindowWatcherSetupUtil()
        {
            return;
        }// end function

        public function setup(param1:Object, param2:Function, param3:Array, param4:Array) : void
        {
            param4[0] = new PropertyWatcher("skills", {propertyChange:true}, [param3[0]], param2);
            param4[1] = new PropertyWatcher("skillDataGrid", {propertyChange:true}, [param3[1]], param2);
            param4[2] = new PropertyWatcher("selectedItem", {valueCommit:true, change:true}, [param3[1]], null);
            param4[0].updateParent(param1);
            param4[1].updateParent(param1);
            param4[1].addChild(param4[2]);
            return;
        }// end function

        public static function init(param1:IFlexModuleFactory) : void
        {
            LevelUpWindow.watcherSetupUtil = new _com_kbmj_viking_view_LevelUpWindowWatcherSetupUtil;
            return;
        }// end function

    }
}
