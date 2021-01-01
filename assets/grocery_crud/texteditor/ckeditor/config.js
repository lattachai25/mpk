CKEDITOR.editorConfig = function( config )
{
	// Define changes to default configuration here. For example:
 config.language = 'th';
 config.uiColor = '#AADC6E';

	 // added code for ckfinder ------>
	 config.filebrowserBrowseUrl = '../../../assets/grocery_crud/texteditor/ckfinder/ckfinder.html';
	 config.filebrowserImageBrowseUrl = '../../../assets/grocery_crud/texteditor/ckfinder/ckfinder.html?type=Images';
	 config.filebrowserFlashBrowseUrl = '../../../assets/grocery_crud/texteditor/ckfinder/ckfinder.html?type=Flash';
	 config.filebrowserUploadUrl = '../../../assets/grocery_crud/texteditor/ckfinder/core/connector /php/connector.php?command=QuickUpload&type=Files';
	 config.filebrowserImageUploadUrl = '../../../assets/grocery_crud/texteditor/ckfinder/core/connector/php/connector.php?command=QuickUpload&type=Images';
	 config.filebrowserFlashUploadUrl = '../../../assets/grocery_crud/texteditor/ckfinder/core/connector/php/connector.php?command=QuickUpload&type=Flash';
     config.contentsCss = '../../../fonts/font.css';
     config.font_names =  'ThaiSansNeue-ExtraBold;'+ config.font_names;
     config.font_names ='ThaiSansNeue-Bold;'+ config.font_names;
// end: code for ckfinder ------>


};
