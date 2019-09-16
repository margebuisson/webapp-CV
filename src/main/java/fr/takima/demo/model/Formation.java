package fr.takima.demo.model;

import javax.persistence.*;
import java.util.Objects;

@Entity(name = "formations")
public class Formation{

    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Id

    @Column(name = "formation_name") private String formationName;
    @Column(name = "beg_year") private int begYear;
    @Column(name = "end_Year") private int endYear;
    @Column(name = "diploma_Year") private String diplomaName;
    @Column(name = "city") private String city;
    @Column(name = "subject") private String subject;

    public Formation(String formationName, int begYear, int endYear, String diplomaName, String city, String subject) {
        this.formationName = formationName;
        this.begYear = begYear;
        this.endYear = endYear;
        this.diplomaName = diplomaName;
        this.city = city;
        this.subject = subject;
    }

    public String getFormationName() {
        return formationName;
    }

    public void setFormationName(String formationName) {
        this.formationName = formationName;
    }

    public int getBegYear() {
        return begYear;
    }

    public void setBegYear(int begYear) {
        this.begYear = begYear;
    }

    public int getEndYear() {
        return endYear;
    }

    public void setEndYear(int endYear) {
        this.endYear = endYear;
    }

    public String getDiplomaName() {
        return diplomaName;
    }

    public void setDiplomaName(String diplomaName) {
        this.diplomaName = diplomaName;
    }

    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city;
    }

    public String getSubject() {
        return subject;
    }

    public void setSubject(String subject) {
        this.subject = subject;
    }
}
