---@meta

---@alias nu.Table.ColumnType
---| "text" Renders readonly String value.
---| "edit" Like `<!enum class>Text` but allows user to edit the text.
---| "checkbox" Renders a checkbox, the data type must be Boolean.
---| "custom" Supports arbitrary type of data but a drawing function has to be provided. Note that native objects like `Image` can not be passed to `Table` as data.
