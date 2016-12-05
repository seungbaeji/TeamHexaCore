package edu.penta.hyunsun.persistence;

import edu.penta.hyunsun.domain.RecruitDetailDTO;

public interface RecruiteDetailDAO {
	public abstract RecruitDetailDTO select(int rbno);
}
