SELECT u.Id as UserId, COUNT(p.Id) as PaymentsRealized, COUNT(v.Id) as VouchersUsed
FROM Users as u
JOIN Orders as o ON u.Id = o.UserId
JOIN Payment as p ON o.PaymentId = p.Id
JOIN Voucher as v ON p.VoucherId = v.Id
GROUP BY u.Id
