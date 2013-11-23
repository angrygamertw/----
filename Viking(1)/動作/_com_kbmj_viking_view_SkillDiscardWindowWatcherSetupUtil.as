package 
{
    import com.kbmj.viking.view.*;
    import flash.display.*;
    import mx.binding.*;
    import mx.core.*;

    public class _com_kbmj_viking_view_SkillDiscardWindowWatcherSetupUtil extends Sprite implements IWatcherSetupUtil
    {

        public function _com_kbmj_viking_view_SkillDiscardWindowWatcherSetupUtil()
        {
            return;
        }// end function

        public function setup(param1:Object, param2:Function, param3:Array, param4:Array) : void
        {
            param4[1] = new PropertyWatcher("skills", {propertyChange:true}, [param3[1]], param2);
            param4[4] = new PropertyWatcher("skillDataGrid", {propertyChange:true}, [param3[4]], param2);
            param4[5] = new PropertyWatcher("selectedItem", {valueCommit:true, change:true}, [param3[4]], null);
            param4[1].updateParent(param1);
            param4[4].updateParent(param1);
            param4[4].addChild(param4[5]);
            return;
        }// end function

        public static function init(param1:IFlexModuleFactory) : void
        {
            SkillDiscardWindow.watcherSetupUtil = new _com_kbmj_viking_view_SkillDiscardWindowWatcherSetupUtil;
            return;
        }// end function

    }
}
