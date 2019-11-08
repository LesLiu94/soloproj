package com.project.spring.DomainObjects;

import com.fasterxml.jackson.annotation.JsonFormat;
import com.project.spring.CompositeKeys.SalariesCompositeKey;

import javax.persistence.*;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;
import java.io.Serializable;
import java.text.DecimalFormat;
import java.util.Date;

@Entity
@Table(schema = "employeesschema", name = "salaries")

public class Salary implements Serializable {

    @EmbeddedId
    private SalariesCompositeKey salariesCompositeKey;

    /*@Column(name = "emp_no",insertable=false, updatable=false)
    @NotBlank
    private int empNo;*/

    @Column(name = "salary")
    @NotNull(message = "Please enter pay")
    private double pay;

    /*@Column(name = "from_date",insertable=false, updatable=false)
    @NotBlank
    @JsonFormat(shape = JsonFormat.Shape.STRING, pattern = "yyyy-MM-dd")
    private Date fromDate;*/

    @Column(name = "to_date")
    @NotNull(message = "Please enter to date")
    @JsonFormat(shape = JsonFormat.Shape.STRING, pattern = "yyyy-MM-dd")
    private Date toDate;

    public Salary() {
        salariesCompositeKey = new SalariesCompositeKey();
    }

    /*public int getEmp_No() {
        return empNo;
    }

    public void setEmp_No(int emp_No) {
        this.empNo = emp_No;
    }*/

    public double getPay() {
        return pay;
    }

    public void setPay(double pay) {
        this.pay = pay;
    }

    public Date getFromDate() {
        return (salariesCompositeKey==null) ? null : salariesCompositeKey.getFromDate();
    }

    public void setFromDate(Date fromDate) {
        if (salariesCompositeKey != null) {
            salariesCompositeKey.setFromDate(fromDate);
        }
    }

    public Employee getEmployee() {
        return (salariesCompositeKey==null) ? null : salariesCompositeKey.getEmployee();
    }

    public void setEmployee(Employee employee) {
        if(salariesCompositeKey != null){
            salariesCompositeKey.setEmployee(employee);
        }
    }

    /*public void setFromDate(Date fromDate) {
        this.fromDate = fromDate;
    }*/

    public Date getToDate() {
        return toDate;
    }

    public void setToDate(Date toDate) {
        this.toDate = toDate;
    }
}
