#### Resource Authorization

Each resource will have an `authorization` class, similar to the concept of a `policy`
used in the `pundit` gem.

Inside this class you can define classes that correspond to the name of roles expected on an user, for example:

```ruby
class PostAuthorization < ResourceAuthorization
  class Author < RoleAbility
    # required, otherwise raises NotImplementedError
    def abilities
      can :create, Post
    end
  end
end
```
will automatically grant the `create` permission for a `Post` object on a signed in user
that has the `author` role associated to it

#### Guest Ability

If we want to allow access to a resource to a visitor that does not possess a user account, we can define
a `guest` ability the following way:

```ruby
class PostAuthorization < ResourceAuthorization
  # Note the inheritance of GuestAbility, this ensures the permissions
  # defined on this class get loaded first as base permissions, also does not have
  # a need to have `user` passed in as an argument
  class Guest < GuestAbility
    def abilities
      can :read, Post
    end
  end

  class Author < RoleAbility
    def abilities
      can :create, Post
    end
  end
end
```

This definition essentially opens the ability to read any `Post` even if you are not signed in.
The class is required to be named `Guest`
