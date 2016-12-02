package edu.hexa.teamsns.domain;

public class ManageProjectPartVO {
	private String pid;
	   private String user_id;
	   private String part;
	   
	   public ManageProjectPartVO(){}

	   public ManageProjectPartVO(String pid, String user_id, String part) {
	      super();
	      this.pid = pid;
	      this.user_id = user_id;
	      this.part = part;
	   }

	   public String getPid() {
	      return pid;
	   }

	   public void setPid(String pid) {
	      this.pid = pid;
	   }

	   public String getUser_id() {
	      return user_id;
	   }

	   public void setUser_id(String user_id) {
	      this.user_id = user_id;
	   }

	   public String getPart() {
	      return part;
	   }

	   public void setPart(String part) {
	      this.part = part;
	   }

	
}
