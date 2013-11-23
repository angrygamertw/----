package 
{
    import mx.resources.*;
    import zh_TW$containers_properties.*;

    public class zh_TW$containers_properties extends ResourceBundle
    {

        public function zh_TW$containers_properties()
        {
            super("zh_TW", "containers");
            return;
        }// end function

        override protected function getContent() : Object
        {
            var _loc_1:Object = {noColumnsFound:"No ConstraintColumns found.", noRowsFound:"No ConstraintRows found.", rowNotFound:"ConstraintRow \'{0}\' not found.", columnNotFound:"ConstraintColumn \'{0}\' not found."};
            return _loc_1;
        }// end function

    }
}
