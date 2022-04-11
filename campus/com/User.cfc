component accessors="true"
{
  property name="Username" type="string"

  public void function init(string username) {
    setUsername(username);

    return this;
  }

  public string function getUsername() {
    return "Username is " & username;
  }
}