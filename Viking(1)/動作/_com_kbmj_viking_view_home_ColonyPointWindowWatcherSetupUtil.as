package 
{
    import com.kbmj.viking.view.home.*;
    import flash.display.*;
    import mx.binding.*;
    import mx.core.*;

    public class _com_kbmj_viking_view_home_ColonyPointWindowWatcherSetupUtil extends Sprite implements IWatcherSetupUtil
    {

        public function _com_kbmj_viking_view_home_ColonyPointWindowWatcherSetupUtil()
        {
            return;
        }// end function

        public function setup(param1:Object, param2:Function, param3:Array, param4:Array) : void
        {
            param4[4] = new PropertyWatcher("_guildName", {propertyChange:true}, [param3[4]], param2);
            param4[2] = new PropertyWatcher("_ownerName", {propertyChange:true}, [param3[2]], param2);
            param4[9] = new PropertyWatcher("_topPoint", {propertyChange:true}, [param3[8]], param2);
            param4[6] = new PropertyWatcher("_point", {propertyChange:true}, [param3[5]], param2);
            param4[4].updateParent(param1);
            param4[2].updateParent(param1);
            param4[9].updateParent(param1);
            param4[6].updateParent(param1);
            return;
        }// end function

        public static function init(param1:IFlexModuleFactory) : void
        {
            ColonyPointWindow.watcherSetupUtil = new _com_kbmj_viking_view_home_ColonyPointWindowWatcherSetupUtil;
            return;
        }// end function

    }
}
