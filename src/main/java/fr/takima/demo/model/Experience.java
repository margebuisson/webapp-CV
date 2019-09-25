package fr.takima.demo.model;

import javax.persistence.*;
import java.util.Objects;

@Entity(name="experiences")
public class Experience {

    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Id private long id;
    @Column(name = "job_title")private String jobTitle;
    @Column(name = "company")private String company;
    @Column(name = "contract_type")private String contractType;
    @Column(name = "job_description")private String jobDescription;
    @Column(name = "beg_year")private int begYear;
    @Column(name = "end_year")private int endYear;
    @Column(name = "ended")private boolean ended;
        @ManyToOne
        @JoinColumn(name = "user_id") private User user;

    public Experience() {
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (!(o instanceof Experience)) return false;
        Experience that = (Experience) o;
        return isEnded() == that.isEnded() &&
                Objects.equals(getJobTitle(), that.getJobTitle()) &&
                Objects.equals(getCompany(), that.getCompany()) &&
                Objects.equals(getContractType(), that.getContractType()) &&
                Objects.equals(getJobDescription(), that.getJobDescription()) &&
                Objects.equals(getBegYear(), that.getBegYear()) &&
                Objects.equals(getEndYear(), that.getEndYear());
    }

    @Override
    public int hashCode() {
        return Objects.hash(getJobTitle(), getCompany(), getContractType(), getJobDescription(), getBegYear(), getEndYear(), isEnded());
    }

    public Experience(String jobTitle, String company, String contractType, String jobDescription, int begYear, int endYear, boolean ended, User user) {
        this.jobTitle = jobTitle;
        this.company = company;
        this.contractType = contractType;
        this.jobDescription = jobDescription;
        this.begYear = begYear;
        this.endYear = endYear;
        this.ended = ended;
        this.user = user;
    }

    public long getId() {
        return id;
    }

    public String getJobTitle() {
        return jobTitle;
    }

    public void setJobTitle(String jobTitle) {
        this.jobTitle = jobTitle;
    }

    public String getCompany() {
        return company;
    }

    public void setCompany(String company) {
        this.company = company;
    }

    public String getContractType() {
        return contractType;
    }

    public void setContractType(String contractType) {
        this.contractType = contractType;
    }

    public String getJobDescription() {
        return jobDescription;
    }

    public void setJobDescription(String jobDescription) {
        this.jobDescription = jobDescription;
    }

    public Integer getBegYear() {
        return begYear;
    }

    public void setBegYear(Integer begYear) {
        this.begYear = begYear;
    }

    public Integer getEndYear() {
        return endYear;
    }

    public void setEndYear(Integer endYear) {
        this.endYear = endYear;
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

    public void setBegYear(int begYear) {
        this.begYear = begYear;
    }

    public void setEndYear(int endYear) {
        this.endYear = endYear;
    }


    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }
}
