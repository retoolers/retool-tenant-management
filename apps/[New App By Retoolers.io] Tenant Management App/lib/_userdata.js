const api_get_user = {{ api_get_user }};
const rows = api_get_user.data.value.map(user => ({
  id: user.id,
  user: user.fullName || "-",
  email: user.email || "-",
  role: user.user?.role || "Viewer", // fallback
  status: user.status,
  createdAt: user.createdAt,
  teams: user.groups ? user.groups.join(", ") : "",
  lastActive: user.lastModified !== "0001-01-01T00:00:00"
    ? new Date(user.lastModified).toLocaleString()
    : ""
}));
return rows