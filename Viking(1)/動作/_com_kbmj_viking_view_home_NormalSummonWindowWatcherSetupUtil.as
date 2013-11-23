package 
{
    import com.kbmj.viking.view.home.*;
    import flash.display.*;
    import mx.binding.*;
    import mx.core.*;

    public class _com_kbmj_viking_view_home_NormalSummonWindowWatcherSetupUtil extends Sprite implements IWatcherSetupUtil
    {

        public function _com_kbmj_viking_view_home_NormalSummonWindowWatcherSetupUtil()
        {
            return;
        }// end function

        public function setup(param1:Object, param2:Function, param3:Array, param4:Array) : void
        {
            param4[16] = new PropertyWatcher("tutVisible", {propertyChange:true}, [param3[17]], param2);
            param4[25] = new PropertyWatcher("_swf_cancel", {propertyChange:true}, [param3[30]], param2);
            param4[3] = new PropertyWatcher("nonTutVisible", {propertyChange:true}, [param3[3]], param2);
            param4[27] = new PropertyWatcher("summonUnit", {propertyChange:true}, [param3[32], param3[31]], param2);
            param4[28] = new PropertyWatcher("name", null, [param3[31]], null);
            param4[31] = new PropertyWatcher("soulCrystal", null, [param3[32]], null);
            param4[18] = new PropertyWatcher("detailTutorialRenderer", {propertyChange:true}, [param3[19]], param2);
            param4[35] = new PropertyWatcher("_swf_back", {propertyChange:true}, [param3[35]], param2);
            param4[9] = new PropertyWatcher("sphereRenderer", {propertyChange:true}, [param3[23], param3[9]], param2);
            param4[2] = new PropertyWatcher("summonType", {propertyChange:true}, [param3[16], param3[2]], param2);
            param4[34] = new PropertyWatcher("_swf_summon", {propertyChange:true}, [param3[34]], param2);
            param4[11] = new PropertyWatcher("itemRenderer0", {propertyChange:true}, [param3[25], param3[11]], param2);
            param4[13] = new PropertyWatcher("itemRenderer1", {propertyChange:true}, [param3[27], param3[13]], param2);
            param4[5] = new PropertyWatcher("detailRenderer", {propertyChange:true}, [param3[5]], param2);
            param4[15] = new PropertyWatcher("itemRenderer2", {propertyChange:true}, [param3[29], param3[15]], param2);
            param4[16].updateParent(param1);
            param4[25].updateParent(param1);
            param4[3].updateParent(param1);
            param4[27].updateParent(param1);
            param4[27].addChild(param4[28]);
            param4[27].addChild(param4[31]);
            param4[18].updateParent(param1);
            param4[35].updateParent(param1);
            param4[9].updateParent(param1);
            param4[2].updateParent(param1);
            param4[34].updateParent(param1);
            param4[11].updateParent(param1);
            param4[13].updateParent(param1);
            param4[5].updateParent(param1);
            param4[15].updateParent(param1);
            return;
        }// end function

        public static function init(param1:IFlexModuleFactory) : void
        {
            NormalSummonWindow.watcherSetupUtil = new _com_kbmj_viking_view_home_NormalSummonWindowWatcherSetupUtil;
            return;
        }// end function

    }
}
