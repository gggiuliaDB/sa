package it.ggg.sa.security

class Role {
    static final String ROLE_ADMIN = "ROLE_ADMIN"
    static final String ROLE_USER = "ROLE_USER"

	String id
    String authority
    String name
    String type

    static mapping = {
        id generator: 'assigned'
        cache true
    }

    static constraints = {
        authority blank: false, unique: true
        name nullable: true
        type nullable: true     
    }

}
