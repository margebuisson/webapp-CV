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
    @Column(name = "description") private String description;
    @Column(name = "level") private String level;
    @Column(name = "ended") private boolean ended;


    public Formation(int begYear, int endYear, String diplomaName, String city, String description, String level, boolean ended) {
        this.begYear = begYear;
        this.endYear = endYear;
        this.diplomaName = diplomaName;
        this.city = city;
        this.description = description;
        this.level = level;
        this.ended = ended;
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
}
