# rails-cookies

Nullstone capability to automatically provide a `SECRET_KEY_BASE` for encrypting cookies in rails apps.

## Variables

None

## Outputs

`secrets: list(object({ name: string, value: string })) - sensitive`
  - A list of secrets to inject into the app.
```
{
  name = "SECRET_KEY_BASE"
  value = "(value)"
}
```
