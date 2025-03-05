package Java.GUI.SMS;

import java.sql.Date;
// Java Bean
public class Student {
    private int serialNo;
    private String name;
    private String className;
    private String batchName;
    private Date paymentDate;
    private String mobile;
    private String parentsMobile;
    private double payAmount;
    

    // Getters and Setters
   
	public int getSerialNo() {
		return serialNo;
	}
	public void setSerialNo(int serialNo) {
		this.serialNo = serialNo;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getClassName() {
		return className;
	}
	public void setClassName(String className) {
		this.className = className;
	}
	public String getBatchName() {
		return batchName;
	}
	public void setBatchName(String batchName) {
		this.batchName = batchName;
	}
	public Date getPaymentDate() {
		return paymentDate;
	}
	public void setPaymentDate(Date paymentDate) {
		this.paymentDate = paymentDate;
	}
	public String getMobile() {
		return mobile;
	}
	public void setMobile(String mobile) {
		this.mobile = mobile;
	}
	public String getParentsMobile() {
		return parentsMobile;
	}
	public void setParentsMobile(String parentsMobile) {
		this.parentsMobile = parentsMobile;
	}
	public double getPayAmount() {
		return payAmount;
	}
	public void setPayAmount(double payAmount) {
		this.payAmount = payAmount;
	}
}