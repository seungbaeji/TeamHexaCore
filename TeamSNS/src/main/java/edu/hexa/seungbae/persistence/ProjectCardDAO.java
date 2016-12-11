package edu.hexa.seungbae.persistence;

import java.util.List;

import edu.hexa.seungbae.domain.ProjectCardDTO;
import edu.hexa.seungbae.pagetuil.PaginationCriteria;


public interface ProjectCardDAO {
	
	public abstract List<ProjectCardDTO> select();
	public abstract List<ProjectCardDTO> select(String[] districts);
	public abstract List<ProjectCardDTO> select(int rbno);
	
	// 페이징 처리를 위한 메소드
	int getNumOfRecords();
	List<ProjectCardDTO> select(PaginationCriteria c);

}
