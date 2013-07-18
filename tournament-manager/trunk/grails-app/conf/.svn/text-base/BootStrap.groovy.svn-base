import com.maali.tournamentmanager.MUser
import com.maali.tournamentmanager.Role
import com.maali.tournamentmanager.User
import com.maali.tournamentmanager.UserRole

class BootStrap {
    def init = { servletContext ->
        def adminRole = Role.findByAuthority("ROLE_ADMIN") ?: new Role(authority: 'ROLE_ADMIN').save(flush: true)
        def adminUser = User.findByEmailAddress("admin@maali.com")
        if (!adminUser) {
            adminUser = new User(emailAddress: 'admin@maali.com', enabled: true, password: 'admin@123').save(flush: true)
            UserRole.create(adminUser, adminRole, true)
        }

        def userRole = Role.findByAuthority("ROLE_USER") ?: new Role(authority: 'ROLE_USER').save(flush: true)
        def testUser = MUser.findByEmailAddress("ahsan.javed@maali.com")
        if (!testUser) {
            testUser = new MUser(firstName: 'Ahsan', middleName: '', lastName: 'Javed', address: 'F-95, Sector 27 Noida', dateOfBirth: new Date(),
                    placeOfBirth: 'Jaunpur', countryOfBirth: 'India', citizenship: 'Indian', emailAddress: 'ahsan.javed@maali.com',
                    password: 'ahsan@123', enabled: true, accountExpired: false, accountLocked: false, passwordExpired: false).save(flush: true, failOnError: true)
            UserRole.create(testUser, userRole, true)
        }
    }
    def destroy = {
    }
}
