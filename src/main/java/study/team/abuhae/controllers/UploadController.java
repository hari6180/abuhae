package study.team.abuhae.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import study.team.abuhae.helper.UploadItem;
import study.team.abuhae.helper.WebHelper;
import study.team.abuhae.model.ProfileFile;
import study.team.abuhae.model.Sitter_info;
import study.team.abuhae.service.UploadService;

import java.io.File;

import org.springframework.beans.factory.annotation.Autowired;

@Controller
public class UploadController {
	@Autowired
	WebHelper webHelper;
	@Autowired
	UploadService uploadService;
	
	/** 업로드 폼에 대한 action 페이지 */
	@RequestMapping(value = "upload/upload_ok.do", method = RequestMethod.POST)
	public ModelAndView uploadOk(Model model,
			@RequestParam(required = false) MultipartFile photo,
			@RequestParam(value = "memberno", defaultValue = "0") int memberno) {
		/** 1) 업로드 파일 저장하기 */
		// 업로드 된 파일이 존재하는지 확인
		if (photo.getOriginalFilename().isEmpty()) {
			return webHelper.redirect(null, "There is no upload file");
		}
		
		// 업로드 된 파일이 저장될 경로 정보를 생성한다.
		File targetFile =  new File(webHelper.getUploadDir(), photo.getOriginalFilename());
		
		// 업로드 된 파일을 지정된 경로로 복사한다.
		try {
			photo.transferTo(targetFile);
		} catch (Exception e) {
			e.printStackTrace();
			return webHelper.redirect(null, "Fail to save upload file");
		}
		
		/** 2) 업로드 경로 정보 처리하기 */
		// 복사된 파일의 절대경로를 추출한다.
		// --> 운영체제 호환을 위해 역슬래시를 슬래시로 변환한다.
		String absPath = targetFile.getAbsolutePath().replace("\\", "/");
		
		// 절대경로에서 이미 root-context에 지정되어 있는 업로드 폴더 경로를 삭제한다.
		String filePath = absPath.replace(webHelper.getUploadDir(), "");
		
		/** 3) 업로드 결과 Beans에 저장 */
		ProfileFile item = new ProfileFile();
		item.setContentType(photo.getContentType());
		item.setFileName(photo.getName());
		item.setFileSize(photo.getSize());
		item.setOriginName(photo.getOriginalFilename());
		item.setFilePath(filePath);
		item.setMemberno(memberno);
		item.setIsProfile("y");
		
		// 업로드 경로와 썸네일 경로는 웹 상에서 접근 가능한 경로 문자열로 변환하여 Beans에 추가한다.
		String fileUrl = webHelper.getUploadUrl(filePath);
		item.setFileUrl(fileUrl);
		
		// DB에 저장 
		try {
			uploadService.addProfile(item);
		} catch (Exception e) {
			
			return webHelper.redirect(null, e.getLocalizedMessage());
		}
		
		/** 4) View 처리 */
		// 텍스트 정보를 View로 전달한다.
		model.addAttribute("item", item);
		
		return new ModelAndView("upload/upload_ok");
	}
	
	@RequestMapping(value = "upload/upload_edit.do", method = RequestMethod.POST)
	public ModelAndView uploadEdit(Model model,
			@RequestParam(required = false) MultipartFile photo,
			@RequestParam(value = "memberno", defaultValue = "0") int memberno) {
		/** 1) 업로드 파일 저장하기 */
		// 업로드 된 파일이 존재하는지 확인
		if (photo.getOriginalFilename().isEmpty()) {
			return webHelper.redirect(null, "There is no upload file");
		}
		
		// 업로드 된 파일이 저장될 경로 정보를 생성한다.
		File targetFile =  new File(webHelper.getUploadDir(), photo.getOriginalFilename());
		
		// 업로드 된 파일을 지정된 경로로 복사한다.
		try {
			photo.transferTo(targetFile);
		} catch (Exception e) {
			e.printStackTrace();
			return webHelper.redirect(null, "Fail to save upload file");
		}
		
		/** 2) 업로드 경로 정보 처리하기 */
		// 복사된 파일의 절대경로를 추출한다.
		// --> 운영체제 호환을 위해 역슬래시를 슬래시로 변환한다.
		String absPath = targetFile.getAbsolutePath().replace("\\", "/");
		
		// 절대경로에서 이미 root-context에 지정되어 있는 업로드 폴더 경로를 삭제한다.
		String filePath = absPath.replace(webHelper.getUploadDir(), "");
		
		/** 3) 업로드 결과 Beans에 저장 */
		ProfileFile item = new ProfileFile();
		item.setContentType(photo.getContentType());
		item.setFileName(photo.getName());
		item.setFileSize(photo.getSize());
		item.setOriginName(photo.getOriginalFilename());
		item.setFilePath(filePath);
		item.setMemberno(memberno);
		item.setIsProfile("Y");
		
		// 업로드 경로와 썸네일 경로는 웹 상에서 접근 가능한 경로 문자열로 변환하여 Beans에 추가한다.
		String fileUrl = webHelper.getUploadUrl(filePath);
		item.setFileUrl(fileUrl);
		
		// DB에 저장 
		try {
			uploadService.editProfile(item);
		} catch (Exception e) {
			
			return webHelper.redirect(null, e.getLocalizedMessage());
		}
		
		/** 4) View 처리 */
		// 텍스트 정보를 View로 전달한다.
		model.addAttribute("item", item);
		
		return new ModelAndView("upload/upload_ok");
	}
}
