package 
{
    import com.kbmj.viking.view.home.*;
    import flash.display.*;
    import mx.binding.*;
    import mx.core.*;

    public class _com_kbmj_viking_view_home_BuildDitailRendererWatcherSetupUtil extends Sprite implements IWatcherSetupUtil
    {

        public function _com_kbmj_viking_view_home_BuildDitailRendererWatcherSetupUtil()
        {
            return;
        }// end function

        public function setup(param1:Object, param2:Function, param3:Array, param4:Array) : void
        {
            param4[2] = new PropertyWatcher("parentDocument", {initialize:true}, [param3[16], param3[1], param3[18], param3[14]], param2);
            param4[0] = new PropertyWatcher("data", {dataChange:true}, [param3[0], param3[1], param3[5], param3[6], param3[7], param3[8], param3[10], param3[11], param3[12], param3[13], param3[14], param3[15], param3[17], param3[16], param3[19], param3[18]], param2);
            param4[9] = new PropertyWatcher("requirement", null, [param3[7]], null);
            param4[10] = new PropertyWatcher("textGoldColor", null, [param3[7]], null);
            param4[7] = new PropertyWatcher("minutes", null, [param3[5]], null);
            param4[8] = new PropertyWatcher("gold", null, [param3[6]], null);
            param4[1] = new PropertyWatcher("nameLabel", null, [param3[0]], null);
            param4[2].updateParent(param1);
            param4[0].updateParent(param1);
            param4[0].addChild(param4[9]);
            param4[9].addChild(param4[10]);
            param4[0].addChild(param4[7]);
            param4[0].addChild(param4[8]);
            param4[0].addChild(param4[1]);
            return;
        }// end function

        public static function init(param1:IFlexModuleFactory) : void
        {
            BuildDitailRenderer.watcherSetupUtil = new _com_kbmj_viking_view_home_BuildDitailRendererWatcherSetupUtil;
            return;
        }// end function

    }
}
