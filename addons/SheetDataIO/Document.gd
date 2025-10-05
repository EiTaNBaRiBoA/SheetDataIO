class_name Document

var file_path : String

var workbook : Workbook

func open_file(_path: String) -> Workbook:
	file_path = _path
	return null

## Saves current file, fails if it doesn't have a file_path never opened or never saved_as
func save_file() -> void:
	pass

## saves_as a new sheet file
func save_as_file(_path: String,_file_type: FileType) -> void:
	pass

func get_workbooks() -> Workbook:
	return null # Open workbook and return it

## Deletes the current file from pc and frees memory
func delete() -> void:
	close_document(false)
	self.free()

func close_document(_save: bool) -> void:
	if is_instance_valid(workbook):
		workbook.close_workbook(_save)


enum FileType
{
	xlsx,
	xls,
	csv
}
