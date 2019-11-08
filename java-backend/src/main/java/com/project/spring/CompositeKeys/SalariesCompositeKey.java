package com.project.spring.CompositeKeys;

import com.fasterxml.jackson.annotation.JsonFormat;
import com.project.spring.DomainObjects.Employee;

import javax.persistence.Column;
import javax.persistence.Embeddable;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.validation.constraints.NotBlank;
import java.io.Serializable;
import java.util.Date;

@Embeddable
public class SalariesCompositeKey implements Serializable {
    /*@Column(name = "emp_no")
    private int empNo;*/

    @ManyToOne
    @JoinColumn(name = "emp_no", referencedColumnName = "emp_no")
    private Employee employee;

    @Column(name = "from_date")
    @NotBlank
    @JsonFormat(shape = JsonFormat.Shape.STRING, pattern = "yyyy-MM-dd")
    private Date fromDate;

    public SalariesCompositeKey(){
    }

    public SalariesCompositeKey(Employee employee, Date fromDate){
        this.employee = employee;
        this.fromDate = fromDate;
    }

    /*public int getEmpNo(){
        return empNo;
    }

    public void setEmpNo(int empNo) {
        this.empNo = empNo;
    }*/

    public Employee getEmployee() {
        return employee;
    }

    public void setEmployee(Employee employee) {
        this.employee = employee;
    }

    public Date getFromDate(){
        return fromDate;
    }

    public void setFromDate(Date fromDate) {
        this.fromDate = fromDate;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        SalariesCompositeKey that = (SalariesCompositeKey) o;

        if (employee.getEmpNo() != that.employee.getEmpNo()) return false;
        return fromDate != null ? fromDate.equals(that.fromDate) : that.fromDate == null;

    }

    @Override
    public int hashCode() {
        int result = employee.getEmpNo();
        result = 31 * result + (fromDate != null ? fromDate.hashCode() : 0);
        return result;
    }
}
