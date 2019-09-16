package fr.takima.demo.model;

import javax.persistence.*;
import java.util.Objects;

@Entity(name="experiences")
public class Experience {

    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Id

    @Column(name = "job_title")private String jobTitle;
    @Column(name = "company")private String company;
    @Column(name = "contract_type")private String contractType;
    @Column(name = "job_description")private String jobDescription;
    @Column(name = "beg_year")private Integer begYear;
    @Column(name = "end_year")private Integer endYear;
    @Column(name = "ended")private boolean ended;

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

    public Experience(String jobTitle, String company, String contractType, String jobDescription, Integer begYear, Integer endYear, boolean ended) {
        this.jobTitle = jobTitle;
        this.company = company;
        this.contractType = contractType;
        this.jobDescription = jobDescription;
        this.begYear = begYear;
        this.endYear = endYear;
        this.ended = ended;
    }
}