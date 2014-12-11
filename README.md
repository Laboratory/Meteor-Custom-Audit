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
  "type": "Info",
  "message": "Create chart",
  "owner": false,
  "created_at": "ThuDec11201420: 28: 44GMT+0300(MSK)",
  "_id": "gxftndeejfC2rHv4f"
}
```
