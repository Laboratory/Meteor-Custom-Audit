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

```json
{
  type: 'Info',
  message: 'Create chart',
  owner: false,
  created_at: 'Thu Dec 11 2014 20:28:44 GMT+0300 (MSK)',
  _id: 'gxftndeejfC2rHv4f'
}
```
