package model;

import java.sql.Date;

public class Resources {
String ResourceName;
Date date;
String slot;
public String getResourceName() {
	return ResourceName;
}
public void setResourceName(String resourceName) {
	ResourceName = resourceName;
}
public Date getDate() {
	return date;
}
public void setDate(Date date) {
	this.date = date;
}
public String getSlot() {
	return slot;
}
public void setSlot(String slot) {
	this.slot = slot;
}
}
