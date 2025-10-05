class_name Sheet

var parent_workbook : Workbook

var sheet_name : String


func _init(_workbook :  Workbook, _name : String) -> void:
	parent_workbook = _workbook
	sheet_name = _name

func get_data_from_cell(_row: int,_column: int) -> Variant:
	return null

func set_data_to_cell(_row: int,_column: int,_data : Variant) -> void:
	pass

func get_last_column_in_row(_row: int , _stop_at_first_empty_cell : bool = false) -> int:
	return -1

## Get's last and if stop at first cell it could be not the last row
func get_last_row_in_column(_column: int,_stop_at_first_empty_cell : bool = false) -> int:
	return -1

## Get's the last column int from the row with the most columns
func get_last_column() -> int:
	return -1

## Get's the last row int from the column with the most rows
func get_last_row() -> int:
	return -1

func delete_sheet() -> void:
	parent_workbook.sheets.erase(self)
	free()


## Closes the sheet and saves if _save is true
func close_sheet(_save: bool) -> void:
	free()
