import com.officegain.enigma.base.Role
import com.officegain.enigma.base.User
import com.officegain.enigma.base.UserGroup
import com.officegain.enigma.base.UserRole

class BootStrap {

    def init = { servletContext ->
        def userGroup = UserGroup.findByName("Top Administrator") ?: new UserGroup(name: 'Top Administrator', permission: '').save(flush: true)

        def adminRole = Role.findByAuthority("ROLE_ADMIN") ?: new Role(authority: 'ROLE_ADMIN').save(flush: true)

        def adminUser = User.findByUsername("admin")
        if (!adminUser) {
            adminUser = new User(userGroupId: userGroup.id, username: 'admin', accountExpired: false, accountLocked: false, code: '', dateAdded: new Date(),
                    email: 'admin@officegain.com', enabled: true, firstname: 'Admin', lastname: 'Admin', ip: '',
                    password: 'admin@123', passwordExpired: false,).save(flush: true, failOnError: true)
            UserRole.create(adminUser, adminRole, true)
        }
    }
    def destroy = {
    }
}
