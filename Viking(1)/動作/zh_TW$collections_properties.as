﻿package 
{
    import mx.resources.*;
    import zh_TW$collections_properties.*;

    public class zh_TW$collections_properties extends ResourceBundle
    {

        public function zh_TW$collections_properties()
        {
            super("zh_TW", "collections");
            return;
        }// end function

        override protected function getContent() : Object
        {
            var _loc_1:Object = {findCondition:"Find criteria must contain all sort fields leading up to \'{0}\'.", noComparatorSortField:"Cannot determine comparator for SortField with name \'{0}\'.", outOfBounds:"Index \'{0}\' specified is out of bounds.", nonUnique:"Non-unique values in items.", incorrectAddition:"Attempt to add an item already in the view.", findRestriction:"Find criteria must contain at least one sort field value.", invalidType:"Incorrect type. Must be of type XML or a XMLList that contains one XML object. ", unknownMode:"Unknown find mode.", invalidIndex:"Invalid index: \'{0}\'.", invalidRemove:"Cannot remove when current is beforeFirst or afterLast.", unknownProperty:"Unknown Property: \'{0}\'.", invalidInsert:"Cannot insert when current is beforeFirst.", itemNotFound:"Cannot find when view is not sorted.", bookmarkInvalid:"Bookmark no longer valid.", noComparator:"Cannot determine comparator for \'{0}\'.", invalidCursor:"Cursor no longer valid.", noItems:"No items to search.", bookmarkNotFound:"Bookmark is not from this view."};
            return _loc_1;
        }// end function

    }
}
