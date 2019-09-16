package fr.takima.demo.model

import java.util.*
import javax.persistence.*

/**
 *
 */
@Entity(name = "users")
data class User(
        @GeneratedValue(strategy = GenerationType.IDENTITY)
                @Id var id: Long?,
        @Column(name = "first_name") var firstName: String?,
        @Column(name = "last_name") var lastName: String?,
        @Column(name = "address") var address: String?,
        @Column(name = "city") var city: String?,
        @Column(name = "zip_code") var zipCode: Int?,
        @Column(name = "mail") var mail: String?,
        @Column(name = "telephone") var telephone: Int?,
        @Column(name = "profilPicture") var profilPicture: String?,
        @Column(name = "birthDate") var birthDate: Date?) {
    constructor() : this(null, null, null, null, null,null, null,
            null, null, null)

}
