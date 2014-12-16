Package.describe({
  name: 'laboratory:meteor-custom-audit',
  summary: 'Audit custom events',
  version: '1.0.2',
  git: 'https://github.com/Laboratory/meteor-custom-audit.git'
});

Package.onUse(function (api) {
  api.versionsFrom('1.0.1');
  api.use('mongo');
  api.use('coffeescript', ['client', 'server']);
  api.addFiles('laboratory:meteor-custom-audit.coffee');
});

Package.onTest(function (api) {
  api.use('tinytest');
  api.use('coffeescript', ['client', 'server']);
  api.use('laboratory:meteor-custom-audit');
  api.addFiles('laboratory:meteor-custom-audit-tests.coffee');
});
