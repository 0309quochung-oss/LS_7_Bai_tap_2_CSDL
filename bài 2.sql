-- code đúng:
SELECT SUM(total_spent)
FROM (
    SELECT student_id, SUM(amount) AS total_spent
    FROM Payments
    GROUP BY student_id
    HAVING SUM(amount) > 10000000
) vip_students;

-- lỗi sai ở đây khi dịch ra thì mình có thể hiểu được được là ta đã thiếu bước đặt tên cho bảng mà FROM đã trả ra
-- vì mệnh đề FROM yêu cầu ta phải đặt tên cho bảng thì mới có thể biết là bảng gì để SQL nó lấy mà nó sử lý được
