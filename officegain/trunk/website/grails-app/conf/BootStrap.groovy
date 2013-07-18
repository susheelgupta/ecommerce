import com.officegain.enigma.base.Customer
import com.officegain.enigma.base.Role
import com.officegain.enigma.base.User
import com.officegain.enigma.base.UserRole

class BootStrap {

    def init = { servletContext ->

        def userRole = Role.findByAuthority("ROLE_USER") ?: new Role(authority: 'ROLE_USER').save(flush: true)
        def adminRole = Role.findByAuthority("ROLE_ADMIN") ?: new Role(authority: 'ROLE_ADMIN').save(flush: true)

        def testCustomer = Customer.findByEmailAddress("ahsan.javed@officegain.com")
        if (!testCustomer) {
            testCustomer = new Customer(gender: 'M', firstName: 'Ahsan', lastName: 'Javed', telephone: '9810572052', emailAddress: 'ahsan.javed@officegain.com', enabled: true, password: 'ahsan@123').save(flush: true, failOnError: true)
            UserRole.create(testCustomer, userRole, true)
        }

        def adminUser = User.findByEmailAddress("admin@officegain.com")
        if (!adminUser) {
            adminUser = new User(emailAddress: 'admin@officegain.com', enabled: true, password: 'admin@123').save(flush: true)
            UserRole.create(adminUser, adminRole, true)
        }
    }

    def destroy = {
    }
}
