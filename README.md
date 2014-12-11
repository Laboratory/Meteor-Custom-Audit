meteor-custom-audit
===================

Audit custom events such as: 

```javascript
  Audit.Log('Create User');
  Audit.Error('Incorrect password');
  Audit.Fatal('Exception Meteor.Error');
  Audit.Warn('Session timeout');
  Audit.Info('Create chart');
```
