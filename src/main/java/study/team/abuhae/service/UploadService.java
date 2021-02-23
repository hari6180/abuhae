package study.team.abuhae.service;

import study.team.abuhae.model.ProfileFile;

public interface UploadService {
	  public int addProfile(ProfileFile input) throws Exception;
	  
	  public ProfileFile selectProfileItem(ProfileFile input) throws Exception;
}
