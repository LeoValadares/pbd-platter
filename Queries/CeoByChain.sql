SELECT c.Id AS ChainId, c.Name as ChainName, u.Name as UserName
FROM Users as u
JOIN UserRoles as ur ON u.Id = ur.UserId
JOIN Roles as r ON ur.RoleId = r.Id
JOIN Chains as c ON ur.ChainId = c.Id
WHERE r.Name = 'CEO'
GROUP BY c.Id, c.Name, u.Name
