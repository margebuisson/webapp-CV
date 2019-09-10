package fr.takima.demo;

import java.util.Objects;

public class Formation {
    private String formationName;
    private int begYear;
    private int endYear;
    private String diplomaName;
    private String city;
    private String subject;

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
