package edu.penta.hyunsun.persistence;

import edu.penta.hyunsun.domain.RecruitDetailDTO;

public interface RecruitDetailDAO {
	public abstract RecruitDetailDTO select(int rbno);
}
