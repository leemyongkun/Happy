package org.happy.poor;

import java.net.URLEncoder;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.http.client.methods.HttpGet;
import org.apache.http.impl.client.BasicResponseHandler;
import org.apache.http.impl.client.DefaultHttpClient;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.social.facebook.api.Facebook;
import org.springframework.social.facebook.api.FacebookProfile;
import org.springframework.social.facebook.api.GroupMembership;
import org.springframework.social.facebook.api.GroupOperations;
import org.springframework.social.facebook.api.impl.FacebookTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

/**
 * <h1>net.siriussoft.uae.HomeController</h2>
 * 
 * <p>Handles requests for the application home page.</p>
 *
 * @project  UAE-Front-eService
 * @author   Siriussoft. Co
 * @create   2015.01.13 13:17:13
 * @version	 
 */
@Controller
public class SocialController {

	private static final Logger logger = LoggerFactory.getLogger(SocialController.class);
	
	
	
	 /**
		 * index
		 * 메인
		 * @param model
		 * @param param
		 * @return
		 */
		@RequestMapping(value = "/main", method = RequestMethod.GET)
		public String index(HttpSession session, Model model){
			//facebook info setting
		    Facebook facebook = new FacebookTemplate((String)session.getAttribute("ACCESS_TOKEN"));
		    FacebookProfile profile = facebook.userOperations().getUserProfile();
		    //List<string> friends = facebook.friendOperations().getFriendIds();
		  	//byte[] profiles = facebook.userOperations().getUserProfileImage();
		    
		    String myId = profile.getId();
			String myName = profile.getName();
			String myEmail = profile.getEmail();
			String myGender = profile.getGender();
			
			Map<String, String> profileInfo = new HashMap<String, String>();
			profileInfo.put("myId", myId);
			profileInfo.put("myName", myName);
			profileInfo.put("myEmail", myEmail);
			profileInfo.put("myGender", myGender);
			
			logger.info("myId=>{}", myId);
			logger.info("myId=>{}", myName);
			logger.info("myId=>{}", myEmail);
			logger.info("myId=>{}", myGender);
			

			System.out.println(facebook.feedOperations().post("100001624381504", "어잌후"));
			
			
			/*List<FacebookProfile> frnds = facebook.friendOperations().getFriendProfiles("100001624381504");
			
			for(FacebookProfile item : frnds){
				System.out.println(item.getName());
			}*/
			
			
			//List<Post> list = facebook.feedOperations().getHomeFeed();
			//List<Post> list = facebook.feedOperations().getPosts();
			//List<Post> list = facebook.pageOperations()
			
			/* Page page = facebook.pageOperations().getPage("517184751676153");//PoorNHappy
			 System.out.println(page.getName());
			 System.out.println(page.getId());
			 System.out.println(page.getFanCount());
			 System.out.println(page.getCompanyOverview());
			 System.out.println(page.getPicture());
			 */
			 
			 /*
			for(Post item : list){
				System.out.print("type name : " + item.getType().name()+" : ");
				System.out.println(item.getApplication() + " : " + item.getCaption()+" : "+item.getDescription() +" : "+item.getName());
				System.out.println("photo : "+item.getPicture());
				
			}*/
			
			return "index";
		}
		
		/**
		 * freiend Info search
		 * @param session
		 * @param model
		 * @return
		 */
		@RequestMapping(value="/getFriendInfo")
		public String getFriendsInfo(HttpSession session, Model model){
			//System.out.println("SESSION : " + session.getAttribute("ACCESS_TOKEN")
			Facebook facebook = new FacebookTemplate((String)session.getAttribute("ACCESS_TOKEN"));
			GroupOperations group = facebook.groupOperations();
			List<GroupMembership> groupMember = group.getMemberships();
			for(GroupMembership item : groupMember){
				System.out.println(item.getId());
			}
			

			return "index";
		}
		
		/**
		 * facebookSignin
		 * ?��?��?���? 로그?�� ?��?�� ?���?
		 * @param response
		 * @param request
		 * @param model
		 * @return
		 * @scope user_about_me:?��?��?�� 본인 ?���?, publish_stream: 기본?��?�� ?��기권?��, read_friendlists: 친구 목록       
		 * @throws Exception
		 */
		@RequestMapping(value="/sign" , method = RequestMethod.GET)
		public void facebookSignin(HttpServletResponse response, HttpServletRequest request, Model model) throws Exception {
			logger.info("{}","facebookSignIn START");
			
	        String callbackUrl = "http://poorman.com/facebookAccessToken";
	        String oauthUrl = "https://www.facebook.com/dialog/oauth?" +
	                        "client_id=340409039482823&redirect_uri="+URLEncoder.encode(callbackUrl, "UTF-8")+
	                        "&scope=user_about_me,read_stream,read_friendlists"; //publish_stream,offline_access
	                        	
	        response.sendRedirect(oauthUrl);
	        //model.addAttribute("oauthUrl", oauthUrl);
	        //return "home";
		}
		
		/**
		 * facebookAccessToken
		 * ?��?��?���? 로그?�� 결과 리턴
		 * @param request
		 * @param model
		 * @param message
		 * @param response
		 * @return
		 * @throws Exception
		 */
		@SuppressWarnings("deprecation")
		@RequestMapping(value="/facebookAccessToken")
		public void getFacebookClientAccessToken(HttpServletRequest request, Model model, @RequestParam(value="message", defaultValue="" , required=false) String message, HttpServletResponse response) throws Exception {
			String code 			= request.getParameter("code");
			String errorReason 		= request.getParameter("error_reason");
			String errorDescription = request.getParameter("error_description");
			
			System.out.println("code >> "+code);
			System.out.println("errorReason >> "+errorReason);
			System.out.println("errorDescription >> "+errorDescription);

			
			if(logger.isInfoEnabled()){
				logger.info("code => " +code);
				logger.info("errorReason code => " + errorReason);
				logger.info("errorDescription => " + errorDescription);
			}
			
			//facebook accessToken call
			requestAccesToken(request, code);
		    response.sendRedirect("http://poorman.com/main");
		    //return "callback";
		}
		
		/**
		 * facebook accessToken request
		 * ?��?���? 받아?��
		 * @param request
		 * @param code
		 * @throws Exception
		 */
		public void requestAccesToken(HttpServletRequest request, String code) throws Exception{
			String accessToken = "";
			String result	   = "";
			
			
			String callbackUrl = "http://poorman.com/main/";
			
			System.out.println("URI = "+URLEncoder.encode(callbackUrl, "UTF-8"));
			
			String url = "https://graph.facebook.com/oauth/access_token"+
		    		"?client_id=340409039482823"+
		    		"&client_secret=bcce0fdf6c35656a413737ade0b7b1cf"+
		    		"&redirect_uri="+URLEncoder.encode(callbackUrl, "UTF-8")+
		    		"&code="+code+"/";
			System.out.println("URL  >> "+url);
			//httpGet 
			HttpGet httpGet = new HttpGet(url);
			DefaultHttpClient httpClient = new DefaultHttpClient();
			result = httpClient.execute(httpGet, new BasicResponseHandler());
			accessToken = result.split("&")[0].replaceFirst("access_token=", "");
			
		    setAccessToken(request, accessToken);
		}
		
		/**
		 * setAccessToken
		 * ?��?���? ?��?�� ???��
		 * @param request
		 * @param accessToken
		 * @throws Exception
		 */
		public void setAccessToken(HttpServletRequest request, String accessToken) throws Exception {
			request.getSession().setAttribute("ACCESS_TOKEN", accessToken);
			logger.info("ACCESS_TOKEN => " + request.getSession().getAttribute("ACCESS_TOKEN"));
		}
}
