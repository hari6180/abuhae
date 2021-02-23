package study.team.abuhae.service;

import study.team.abuhae.model.Connect;
import study.team.abuhae.model.ProfileFile;

public interface UploadService {
	  public int addProfile(ProfileFile input) throws Exception;
	  
	  public ProfileFile getProfileItem(ProfileFile input) throws Exception;
	  
	  public int getProfileCount(ProfileFile input) throws Exception;
	  
	  /** 인터뷰 요청에 대한 수락 / 거절 여부 업데이트 */
	   public int editProfile(ProfileFile input) throws Exception;
}
