package users;

import javax.annotation.Generated;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.5.2.v20140319-rNA", date="2015-10-07T15:26:17")
@StaticMetamodel(UsersEntity.class)
public class UsersEntity_ { 

    public static volatile SingularAttribute<UsersEntity, Long> id;
    public static volatile SingularAttribute<UsersEntity, String> permissionLevel;
    public static volatile SingularAttribute<UsersEntity, String> pseudo;
    public static volatile SingularAttribute<UsersEntity, String> password;

}