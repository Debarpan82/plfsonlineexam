INSERT INTO roles (
  id,
  name,
  description,
  level,
  is_active,
  menu_access,
  created_at,
  updated_at
)
VALUES
(
  '1',
  'Super Admin',
  'System Administrator with full access to all features',
  1,
  true,
  ARRAY[
    '/dashboard','/users','/roles','/role-menu-management',
    '/surveys','/questions','/results','/enumerator-status',
    '/certificates','/settings'
  ],
  now(),
  now()
),
(
  '2',
  'SDRD ADMIN',
  'System Administrator with full access to all features',
  1,
  true,
  ARRAY[
    '/dashboard','/users','/roles','/role-menu-management',
    '/surveys','/questions','/results','/enumerator-status',
    '/certificates','/settings'
  ],
  now(),
  now()
),
(
  '3',
  'DQAD ADMIN',
  'System Administrator with full access to all features',
  1,
  true,
  ARRAY[
    '/dashboard','/users','/roles','/role-menu-management',
    '/surveys','/questions','/results','/enumerator-status',
    '/certificates','/settings'
  ],
  now(),
  now()
),
(
  '4',
  'CPD ADMIN',
  'System Administrator with full access to all features',
  1,
  true,
  ARRAY[
    '/dashboard','/users','/roles','/role-menu-management',
    '/surveys','/questions','/results','/enumerator-status',
    '/certificates','/settings'
  ],
  now(),
  now()
),
(
  '5',
  'FOD ADMIN',
  'System Administrator with full access to all features',
  1,
  true,
  ARRAY[
    '/dashboard','/users','/roles','/role-menu-management',
    '/surveys','/questions','/results','/enumerator-status',
    '/certificates','/settings'
  ],
  now(),
  now()
),
(
  '6',
  'ZO User',
  'Zonal Office User with zone-level management access',
  2,
  true,
  ARRAY[
    '/zo-dashboard','/zone-performance','/regional-overview',
    '/enumerator-status','/results','/certificates'
  ],
  now(),
  now()
),
(
  '7',
  'RO User',
  'Regional Office User with regional management access',
  3,
  true,
  ARRAY[
    '/ro-dashboard','/district-performance','/supervisor-teams',
    '/enumerator-status','/results','/certificates'
  ],
  now(),
  now()
),
(
  '8',
  'DS User',
  'Supervisor with team management capabilities',
  4,
  true,
  ARRAY[
    '/supervisor-dashboard','/team-results','/my-enumerators',
    '/assigned-surveys','/enumerator-status','/results',
    '/certificates'
  ],
  now(),
  now()
),
(
  '9',
  'CPG User',
  'Supervisor with team management capabilities',
  4,
  true,
  ARRAY[
    '/supervisor-dashboard','/team-results','/my-enumerators',
    '/assigned-surveys','/enumerator-status','/results',
    '/certificates'
  ],
  now(),
  now()
),
(
  '10',
  'SRO User',
  'Supervisor with team management capabilities',
  4,
  true,
  ARRAY[
    '/supervisor-dashboard','/team-results','/my-enumerators',
    '/assigned-surveys','/enumerator-status','/results',
    '/certificates'
  ],
  now(),
  now()
),
(
  '11',
  'Supervisor (SSO)',
  'Field Supervisor with team management capabilities',
  4,
  true,
  ARRAY[
    '/supervisor-dashboard','/team-results','/my-enumerators',
    '/assigned-surveys','/enumerator-status','/results',
    '/certificates'
  ],
  now(),
  now()
),
(
  '12',
  'Enumerator (JSO)',
  'Field Enumerator with test-taking access',
  5,
  true,
  ARRAY[
    '/enumerator-dashboard','/available-tests','/my-results',
    '/my-certificates','/test-schedule','/certificates'
  ],
  now(),
  now()
),
(
  '13',
  'HQ User',
  'Supervisor with team management capabilities',
  4,
  true,
  ARRAY[
    '/supervisor-dashboard','/team-results','/my-enumerators',
    '/assigned-surveys','/enumerator-status','/results',
    '/certificates'
  ],
  now(),
  now()
),
(
  '14',
  'Enumerator (FI)',
  'Field Enumerator with test-taking access',
  5,
  true,
  ARRAY[
    '/enumerator-dashboard','/available-tests','/my-results',
    '/my-certificates','/test-schedule','/certificates'
  ],
  now(),
  now()
),
(
  '15',
  'Supervisor (FO)',
  'Field Supervisor with team management capabilities',
  4,
  true,
  ARRAY[
    '/supervisor-dashboard','/team-results','/my-enumerators',
    '/assigned-surveys','/enumerator-status','/results',
    '/certificates'
  ],
  now(),
  now()
),
(
  '16',
  'AD_DD User',
  'Supervisor with team management capabilities',
  4,
  true,
  ARRAY[
    '/supervisor-dashboard','/team-results','/my-enumerators',
    '/assigned-surveys','/enumerator-status','/results',
    '/certificates'
  ],
  now(),
  now()
)
ON CONFLICT (name) DO UPDATE
SET
  description = EXCLUDED.description,
  level = EXCLUDED.level,
  is_active = EXCLUDED.is_active,
  menu_access = EXCLUDED.menu_access,
  updated_at = now();