package edu.hexa.seungbae.persistence;

import java.util.List;

import edu.hexa.seungbae.domain.TeamCardDTO;

public interface TeamCardDAO {
	
	int insert(TeamCardDTO vo);
	List<TeamCardDTO> select();
	TeamCardDTO select(int teamId);
	int update(TeamCardDTO vo);
	int delete(int teamId);

}
