class_name Workbook

var parent_document : Document

var sheets : Array[Sheet] = []

func _init(_document : Document) -> void:
	parent_document = _document

func get_sheets() -> Array[Sheet]:
	return []

func get_sheet_by_index(_index: int) -> Sheet:
	return null

func get_sheet_by_name(_name: String) -> Sheet:
	return null

## Creates a new sheet and names it and (optional to set an index of the sheet, defaults to last)
func create_new_sheet(_name:String,_index : int = -1) -> Sheet:
	return null


func delete_sheet_by_index(_index: int) -> Sheet:
	return null

func delete_sheet_by_name(_name: String) -> Sheet:
	return null


func close_workbook(_save: bool) -> void:
	for sheet : Sheet in sheets:
		if is_instance_valid(sheet):
			sheet.close_sheet(_save)
	free()
