// Query name: mergeUserData
const api_get_user = {{ api_get_user }};
const api_get_roles = {{ api_get_roles }};
const api_get_group_list = {{ api_get_group_list }}


const users = api_get_user.data.value || [];
const roles = api_get_roles.data.value || [];
const teams = api_get_group_list.data.value || [];

// Build a mapping: userId -> [roles]
const userRolesMap = {};
roles.forEach(role => {
  if (role.users) {
    role.users.forEach(user => {
      if (!userRolesMap[user.id]) userRolesMap[user.id] = [];
      userRolesMap[user.id].push(role.name);
    });
  }
});

// Build a mapping: userId -> [teams]
const userTeamsMap = {};
teams.forEach(team => {
  if (team.members) {
    team.members.forEach(member => {
      if (!userTeamsMap[member.id]) userTeamsMap[member.id] = [];
      userTeamsMap[member.id].push(team.name);
    });
  }
});

// Merge role & team info vào user
const merged = users.map(user => ({
  id: user.id,
  fullName: user.fullName,
  email: user.email,
  status: user.status,
  createdAt: user.createdAt,
  lastActive: user.lastModified || null,
  roles: userRolesMap[user.id] || [],
  teams: userTeamsMap[user.id] || []
}));

return merged;