package 
{
    import com.kbmj.viking.view.home.*;
    import flash.display.*;
    import mx.binding.*;
    import mx.core.*;

    public class _com_kbmj_viking_view_home_SummonTypeSelectWindowWatcherSetupUtil extends Sprite implements IWatcherSetupUtil
    {

        public function _com_kbmj_viking_view_home_SummonTypeSelectWindowWatcherSetupUtil()
        {
            return;
        }// end function

        public function setup(param1:Object, param2:Function, param3:Array, param4:Array) : void
        {
            param4[4] = new PropertyWatcher("summonHeroEnabled", {propertyChange:true}, [param3[4], param3[6], param3[7], param3[9], param3[11], param3[12], param3[13], param3[14], param3[15], param3[17], param3[16], param3[19], param3[20], param3[23], param3[22], param3[25], param3[26], param3[28], param3[30], param3[34], param3[32], param3[39], param3[36], param3[37], param3[42], param3[40]], param2);
            param4[3] = new PropertyWatcher("tutMarkNormalVisible", {propertyChange:true}, [param3[3]], param2);
            param4[11] = new PropertyWatcher("_swf_close", {propertyChange:true}, [param3[10]], param2);
            param4[44] = new PropertyWatcher("_swf_close4", {propertyChange:true}, [param3[43]], param2);
            param4[30] = new PropertyWatcher("_swf_close2", {propertyChange:true}, [param3[29]], param2);
            param4[34] = new PropertyWatcher("_swf_close3", {propertyChange:true}, [param3[33]], param2);
            param4[4].updateParent(param1);
            param4[3].updateParent(param1);
            param4[11].updateParent(param1);
            param4[44].updateParent(param1);
            param4[30].updateParent(param1);
            param4[34].updateParent(param1);
            return;
        }// end function

        public static function init(param1:IFlexModuleFactory) : void
        {
            SummonTypeSelectWindow.watcherSetupUtil = new _com_kbmj_viking_view_home_SummonTypeSelectWindowWatcherSetupUtil;
            return;
        }// end function

    }
}
