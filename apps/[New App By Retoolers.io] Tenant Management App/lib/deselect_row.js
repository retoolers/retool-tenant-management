// Lấy tất cả các hàng hiện đang được chọn của Table 1
const selectedRows = table1.selectedRows;

// Lấy dữ liệu của hàng được click trong Table 2
// Lưu ý: currentRow là biến global trong context của button trong Table 2
const rowToDeselect = table2.selectedRow;

// Lọc ra các hàng KHÔNG PHẢI là hàng đã click
// Giả sử mỗi hàng có một trường ID duy nhất (ví dụ: 'id')
const newSelectedRows = selectedRows.filter(row => row.id !== rowToDeselect.id);

// Nếu không có ID, bạn có thể dùng JSON.stringify để so sánh
// const newSelectedRows = selectedRows.filter(row => JSON.stringify(row) !== JSON.stringify(rowToDeselect));

// Cập nhật lại Table 1 với danh sách đã lọc
table1.selectRow(newSelectedRows);