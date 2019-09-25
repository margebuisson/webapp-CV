package fr.takima.demo.model;

import javax.persistence.*;
import java.util.Objects;

@Entity(name = "formations")
public class Formation{

    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Id private long id;

    @Column(name = "formation_name") private String formationName;
    @Column(name = "beg_year") private String begYear;
    @Column(name = "end_Year") private String endYear;
    @Column(name = "city") private String city;
    @Column(name = "description") private String description;
    @Column(name = "level") private String level;
    @Column(name = "ended") private boolean ended;
    @ManyToOne
            @JoinColumn(name="user_id") private User user;

    public Formation(String formationName, String begYear, String endYear, String city, String description, String level, boolean ended, User user) {
        this.formationName = formationName;
        this.begYear = begYear;
        this.endYear = endYear;
        this.city = city;
        this.description = description;
        this.level = level;
        this.ended = ended;
        this.user = user;
    }

    public void setBegYear(String begYear) {
        this.begYear = begYear;
    }

    public void setEndYear(String endYear) {
        this.endYear = endYear;
    }
    public Formation(User user) {
        this.user = user;
    }

    public Formation() {
    }


    public String getBegYear() {
        return begYear;
    }

    public String getEndYear() {
        return endYear;
    }

    public long getId() {
        return id;
    }

    public User getUser() {
        return user;
    }


    public String getFormationName() {
        return formationName;
    }

    public void setFormationName(String formationName) {
        this.formationName = formationName;
    }

    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getLevel() {
        return level;
    }

    public void setLevel(String level) {
        this.level = level;
    }

    public boolean isEnded() {
        return ended;
    }

    public void setEnded(boolean ended) {
        this.ended = ended;
    }

    public void setId(long id) {
        this.id = id;
    }

    public void setUser(User user) {
        this.user = user;
    }
}
