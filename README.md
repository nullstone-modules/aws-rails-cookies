# cap-rails-cookies

Nullstone capability to automatically provide a `SECRET_KEY_BASE` for encrypting rails cookies.

## Outputs

`secrets: map(string) - sensitive` - A map that contains the secret key base
```
{
  "SECRET_KEY_BASE" = "{value}"
}
```
