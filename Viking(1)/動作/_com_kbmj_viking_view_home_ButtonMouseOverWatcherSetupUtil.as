﻿package 
{
    import com.kbmj.viking.view.home.*;
    import flash.display.*;
    import mx.binding.*;
    import mx.core.*;

    public class _com_kbmj_viking_view_home_ButtonMouseOverWatcherSetupUtil extends Sprite implements IWatcherSetupUtil
    {

        public function _com_kbmj_viking_view_home_ButtonMouseOverWatcherSetupUtil()
        {
            return;
        }// end function

        public function setup(param1:Object, param2:Function, param3:Array, param4:Array) : void
        {
            param4[8] = new PropertyWatcher("_abilitiesText", {propertyChange:true}, [param3[8]], param2);
            param4[1] = new PropertyWatcher("goldColor", {propertyChange:true}, [param3[1]], param2);
            param4[3] = new PropertyWatcher("materials", {propertyChange:true}, [param3[3]], param2);
            param4[0] = new PropertyWatcher("constructionName", {propertyChange:true}, [param3[0]], param2);
            param4[10] = new PropertyWatcher("_daysText", {propertyChange:true}, [param3[10]], param2);
            param4[2] = new PropertyWatcher("gold", {propertyChange:true}, [param3[2]], param2);
            param4[7] = new PropertyWatcher("abilityColor", {propertyChange:true}, [param3[7]], param2);
            param4[8].updateParent(param1);
            param4[1].updateParent(param1);
            param4[3].updateParent(param1);
            param4[0].updateParent(param1);
            param4[10].updateParent(param1);
            param4[2].updateParent(param1);
            param4[7].updateParent(param1);
            return;
        }// end function

        public static function init(param1:IFlexModuleFactory) : void
        {
            ButtonMouseOver.watcherSetupUtil = new _com_kbmj_viking_view_home_ButtonMouseOverWatcherSetupUtil;
            return;
        }// end function

    }
}
