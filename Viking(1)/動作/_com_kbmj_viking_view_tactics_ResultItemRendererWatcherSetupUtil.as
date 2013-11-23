package 
{
    import com.kbmj.viking.view.tactics.*;
    import flash.display.*;
    import mx.binding.*;
    import mx.core.*;

    public class _com_kbmj_viking_view_tactics_ResultItemRendererWatcherSetupUtil extends Sprite implements IWatcherSetupUtil
    {

        public function _com_kbmj_viking_view_tactics_ResultItemRendererWatcherSetupUtil()
        {
            return;
        }// end function

        public function setup(param1:Object, param2:Function, param3:Array, param4:Array) : void
        {
            param4[0] = new PropertyWatcher("data", {dataChange:true}, [param3[0], param3[1], param3[3]], param2);
            param4[1] = new PropertyWatcher("unitVO", {propertyChange:true}, [param3[0], param3[1], param3[3]], null);
            param4[3] = new PropertyWatcher("hp", {propertyChange:true}, [param3[1], param3[3]], null);
            param4[2] = new PropertyWatcher("name", {propertyChange:true}, [param3[0]], null);
            param4[4] = new PropertyWatcher("realMaxHp", {propertyChange:true}, [param3[1], param3[3]], null);
            param4[5] = new StaticPropertyWatcher("HP_BAR_BOLD", {propertyChange:true}, [param3[2]], null);
            param4[8] = new PropertyWatcher("nowExp", {propertyChange:true}, [param3[5]], param2);
            param4[9] = new PropertyWatcher("nxtExp", {propertyChange:true}, [param3[5]], param2);
            param4[7] = new PropertyWatcher("getExp", {propertyChange:true}, [param3[4]], param2);
            param4[0].updateParent(param1);
            param4[0].addChild(param4[1]);
            param4[1].addChild(param4[3]);
            param4[1].addChild(param4[2]);
            param4[1].addChild(param4[4]);
            param4[5].updateParent(ResultItemRenderer);
            param4[8].updateParent(param1);
            param4[9].updateParent(param1);
            param4[7].updateParent(param1);
            return;
        }// end function

        public static function init(param1:IFlexModuleFactory) : void
        {
            ResultItemRenderer.watcherSetupUtil = new _com_kbmj_viking_view_tactics_ResultItemRendererWatcherSetupUtil;
            return;
        }// end function

    }
}
