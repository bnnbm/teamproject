package logic;

import java.io.File;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.hibernate.validator.internal.metadata.aggregated.rule.ParallelMethodsMustNotDefineParameterConstraints;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import dao.BorderDao;
import dao.ItemDao;
import dao.ReplyboardDao;
import dao.UserDao;

@Service // @Component + service 기능
public class ShopService {
	@Autowired
	private ItemDao itemDao;
	@Autowired
	private UserDao userDao;
	@Autowired
	private BorderDao borderDao;
	@Autowired
	private ReplyboardDao replyboardDao;

	private void uploadFileCreate(MultipartFile picture, HttpServletRequest request, String path) {
		// picture : 업로드된 파일의 내용
		String orgFile = picture.getOriginalFilename(); // 파일의 이름
		String uploadPath = request.getServletContext().getRealPath("/") + path;
		File fpath = new File(uploadPath);
		if (!fpath.exists()) { // 해당 Path가 없으면 만들고
			fpath.mkdirs(); // 여러개의 디렉토리를 만드려면 mkdirs 를 써주고 하나만 만들때 mkdir을 쓴다.
		}
		try {
			// 파일로 생성
			picture.transferTo(new File(uploadPath + orgFile)); // 해당Path에 파일이름으로 업로드해라
		} catch (Exception e) {
			e.printStackTrace();
		}

	}

	/////////////////////////////////////////////////// User	///////////////////////////////////////////////////

	public void insert(User user, HttpServletRequest request) {
	      uploadFileCreate(user.getProfile(),request,"user/pic/");
	      user.setProfileUrl(user.getProfile().getOriginalFilename());
	      userDao.insert(user);
	   }

	public User getUser(String userid) {
		return userDao.selectOne(userid);
	}

	public List<User> userlist() {
		return userDao.list();
	}

	public List<User> userList(String[] idchks) {
		return userDao.list(idchks);
	}

	//////////////////////////////////////////// Item	//////////////////////////////////////////// 
	// 판매중 목록 카운트
	public int itemcount(String searchtype, String searchcontent, String sessionid) {
		return itemDao.sellingcount(searchtype, searchcontent, sessionid);
	}

	// 판매중 목록
	public List<Item> itemlist(Integer pageNum, int limit, String searchtype, String searchcontent, String sessionid) {
		return itemDao.sellinglist(pageNum, limit, searchtype, searchcontent, sessionid);
	}

	// 아이템 가져오기
	public Item getItem(String itemid) {
		return itemDao.selectOne(itemid);
	}

	// 아이템 삭제
	public void itemDelete(String id) {
		itemDao.delete(id);
	}

	// 첨부파일 생성
	public void itemCreate(Item item, HttpServletRequest request) {
		if (item.getPicture1() != null && !item.getPicture1().isEmpty()) { // 업로드된 이미지파일이 존재하면
			// 파일을 업로드 : 업로드된 파일의 내용을 파일에 저장
			uploadFileCreate(item.getPicture1(), request, "item/img/");
			item.setPictureUrl1(item.getPicture1().getOriginalFilename());
		}
		if (item.getPicture2() != null && !item.getPicture2().isEmpty()) { // 업로드된 이미지파일이 존재하면
			// 파일을 업로드 : 업로드된 파일의 내용을 파일에 저장
			uploadFileCreate(item.getPicture2(), request, "item/img/");
			item.setPictureUrl2(item.getPicture2().getOriginalFilename());
		}
		if (item.getPicture3() != null && !item.getPicture3().isEmpty()) { // 업로드된 이미지파일이 존재하면
			// 파일을 업로드 : 업로드된 파일의 내용을 파일에 저장
			uploadFileCreate(item.getPicture3(), request, "item/img/");
			item.setPictureUrl3(item.getPicture3().getOriginalFilename());
		}
		if (item.getPicture4() != null && !item.getPicture4().isEmpty()) { // 업로드된 이미지파일이 존재하면
			// 파일을 업로드 : 업로드된 파일의 내용을 파일에 저장
			uploadFileCreate(item.getPicture4(), request, "item/img/");
			item.setPictureUrl4(item.getPicture4().getOriginalFilename());
		}
		if (item.getPicture5() != null && !item.getPicture5().isEmpty()) { // 업로드된 이미지파일이 존재하면
			// 파일을 업로드 : 업로드된 파일의 내용을 파일에 저장
			uploadFileCreate(item.getPicture5(), request, "item/img/");
			item.setPictureUrl5(item.getPicture5().getOriginalFilename());
		}
		itemDao.insert(item);
	}

	// 첨부파일 업데이트
	public void itemUpdate(Item item, HttpServletRequest request) {
		if (item.getPicture1() != null && !item.getPicture1().isEmpty()) { // 업로드된 이미지파일이 존재하면
			// 파일을 업로드 : 업로드된 파일의 내용을 파일에 저장
			uploadFileCreate(item.getPicture1(), request, "item/img/");
			item.setPictureUrl1(item.getPicture1().getOriginalFilename());
		}
		if (item.getPicture2() != null && !item.getPicture2().isEmpty()) { // 업로드된 이미지파일이 존재하면
			// 파일을 업로드 : 업로드된 파일의 내용을 파일에 저장
			uploadFileCreate(item.getPicture2(), request, "item/img/");
			item.setPictureUrl2(item.getPicture2().getOriginalFilename());
		}
		if (item.getPicture3() != null && !item.getPicture3().isEmpty()) { // 업로드된 이미지파일이 존재하면
			// 파일을 업로드 : 업로드된 파일의 내용을 파일에 저장
			uploadFileCreate(item.getPicture3(), request, "item/img/");
			item.setPictureUrl3(item.getPicture3().getOriginalFilename());
		}
		if (item.getPicture4() != null && !item.getPicture4().isEmpty()) { // 업로드된 이미지파일이 존재하면
			// 파일을 업로드 : 업로드된 파일의 내용을 파일에 저장
			uploadFileCreate(item.getPicture4(), request, "item/img/");
			item.setPictureUrl4(item.getPicture4().getOriginalFilename());
		}
		if (item.getPicture5() != null && !item.getPicture5().isEmpty()) { // 업로드된 이미지파일이 존재하면
			// 파일을 업로드 : 업로드된 파일의 내용을 파일에 저장
			uploadFileCreate(item.getPicture5(), request, "item/img/");
			item.setPictureUrl5(item.getPicture5().getOriginalFilename());
		}
		itemDao.update(item);
	}

	public int categorycount(String searchtype, String searchcontent, String tema, String visitid) {
		return itemDao.temacount(searchtype, searchcontent, tema, visitid);
	}

	public List<Item> categorylist(Integer pageNum, int limit, String searchtype, String searchcontent, String tema, String visitid) {
		return itemDao.temalist(pageNum, limit, searchtype, searchcontent, tema, visitid);
	}
	

	public void jjiminsert(Shopbasket sb) {
		itemDao.jjiminsert(sb);
	}
	
	public int getjjimcount(String itemid, String userid) {
		return itemDao.getjjimcount(itemid, userid);
	}
	
	public void jjimdelete(Shopbasket sb) {
		itemDao.jjimdelete(sb);		
	}
	
	////////////////////////////////////// ItemManagement ///////////////////////////////////////
	

	public void buying(Itemmanagement im) {
		int maxsaleid = itemDao.getsalemaxid();
		im.setSaleid(++maxsaleid);
		itemDao.buying(im);
	}
	
	public int getItemmanagementcount(String searchtype, String searchcontent, String sessionid) {
		return itemDao.getItemmanagementcount(searchtype, searchcontent, sessionid);
	}

	public List<Itemmanagement> getItemmangement(Integer pageNum, int limit, String searchtype, String searchcontent, String sessionid){
		return itemDao.getItemmangement(pageNum, limit, searchtype, searchcontent,sessionid);
	}

	public int getTakebackcount(String searchtype, String searchcontent, String sessionid) {
		return itemDao.getTakebackcount(searchtype, searchcontent, sessionid);
	}

	public List<Itemmanagement> getTakeback(Integer pageNum, int limit, String searchtype, String searchcontent, String sessionid) {
		return itemDao.getTakeback(pageNum, limit, searchtype, searchcontent,sessionid);
	}

	public int getsellingcompletecount(String searchtype, String searchcontent, String sessionid) {
		return itemDao.getsellingcompletecount(searchtype, searchcontent, sessionid);
	}

	public List<Itemmanagement> getsellingcomplete(Integer pageNum, int limit, String searchtype, String searchcontent,
			String sessionid) {
		return itemDao.getsellingcomplete(pageNum, limit, searchtype, searchcontent,sessionid);
	}

	////////////////////////////////////////// Boarder	////////////////////////////////////////////////////////

	// 게시판 부분
	public int bordercount(String searchtype, String searchcontent, String tema, String visitid) {
		return borderDao.count(searchtype, searchcontent, tema, visitid);
	}

	public List<Border> borderlist(Integer pageNum, int limit, String searchtype, String searchcontent, String tema, String visitid) {
		Map<String, Object> map = new HashMap<String, Object>();
		return borderDao.list(pageNum, limit, searchtype, searchcontent, tema, visitid);
	}

	public void borderWrite(Border border, HttpServletRequest request) {
		// 첨부파일이 존재하는 경우
		if (border.getFile() != null && !border.getFile().isEmpty()) {
			uploadFileCreate(border.getFile(), request, "border/file/");
			// 업로드 파일의 이름 지정
			border.setFileUrl(border.getFile().getOriginalFilename());
		}
		int max = borderDao.maxnum();
		border.setNo(++max);
		borderDao.insert(border);
	}

	public Border getBorder(Integer no, HttpServletRequest request) {
		if (request.getRequestURI().contains("detail.shop")) {
			borderDao.viewadd(no);
		}
		return borderDao.selectOne(no);
	}

	public void borderDelete(Border border, HttpServletRequest request) {
		borderDao.delete(border.getNo());
	}

	public Border getBorder(int no) {
		return borderDao.selectOne(no);
	}

	public void borderUpdate(Border border, HttpServletRequest request) {
		if (border.getFile() != null && !border.getFile().isEmpty()) {
			uploadFileCreate(border.getFile(), request, "border/file/");
			// 업로드 파일의 이름 지정
			border.setFileUrl(border.getFile().getOriginalFilename());
		}
		borderDao.update(border);
	}

	public int replyCount(String searchtype, String searchcontent, Integer no) {
		return replyboardDao.count(searchtype, searchcontent, no);
	}

	public List<Replyboard> replylist(int pageNum, int limit, Integer no) {
		Map<String, Object> map = new HashMap<String, Object>();
		return replyboardDao.list(pageNum, limit, no);
	}

	public void replyboardwrite(Replyboard replyboard, HttpServletRequest request) {
		replyboardDao.grpstepadd(replyboard.getGrp(), replyboard.getGrpstep());
		int max = replyboardDao.maxnum();
		replyboard.setGrp(++max);
//		replyboard.setGrplevel(replyboard.getGrplevel()+1);
//		replyboard.setGrpstep(replyboard.getGrpstep()+1);
		replyboard.setNum(max);
		replyboardDao.insert(replyboard);
	}
    public void replyboardDelete(int num) {
    	replyboardDao.delete(num);
	}
    public void ReplyboardUpdate(Replyboard replyboard, HttpServletRequest request) {
    	replyboardDao.update(replyboard);
	}
    
    public void replyreply(Replyboard replyboard, HttpServletRequest request) {
        int no = Integer.parseInt(request.getParameter("no"));
        int num = Integer.parseInt(request.getParameter("num"));
        int grp = Integer.parseInt(request.getParameter("grp"));
        int grplevel = Integer.parseInt(request.getParameter("grplevel"));
        int grpstep = Integer.parseInt(request.getParameter("grpstep"));
        replyboard.setNo(no);
        replyboard.setNum(num);
        replyboard.setGrp(grp);
        replyboard.setGrplevel(grplevel);
        replyboard.setGrpstep(grpstep);
        replyboardDao.grpstepadd(replyboard.getGrp(), replyboard.getGrpstep());
        int max = replyboardDao.maxnum();
        replyboard.setNum(++max);
        replyboard.setGrplevel(replyboard.getGrplevel()+1);
        replyboard.setGrpstep(replyboard.getGrpstep()+1);      
        replyboardDao.replyreply(replyboard);
     }
	
	//////////////////////////////////////////////////		방송		/////////////////////////////////////////////////////////
	
	//리스트 잠시 띄울 예정
	public int broadcastcount(String searchtype, String searchcontent) {
		return userDao.broadcastcount(searchtype, searchcontent);
	}
	
	//리스트 잠시 띄울 예정
	public List<User> broadcastlist(Integer pageNum, int limit, String searchtype, String searchcontent) {
		return userDao.broadcastlist(pageNum, limit, searchtype, searchcontent);
	}

	public String getmaxYear(String userid) {
		
		return itemDao.maxyear(userid);
	}

	public String getminYear(String userid) {
		
		return itemDao.minyear(userid);
	}

	public List<sold> getsold(String userid, String year) {
		
		return itemDao.soldList(userid,year);
	}

	public List<sold> gettake(String userid, int year) {
		
		return itemDao.takeList(userid, year);
	}

	public Integer getmaxMonth(String userid, String year) {
	
		return itemDao.maxmonth(userid, year);
	}
	
	
	///////////////////////////////////////리뷰
	//리뷰//
	   public void review(Review review, HttpServletRequest request) {
		  int max = itemDao.maxnum();
		  ++max;
	      itemDao.review(review,max);
	   }

	   public int reviewcount(String itemid) {
	      return itemDao.reviewcount(itemid);
	   }
	   public List<Review> reviewlist(Integer pageNum, int limit, String itemid) {
	      return itemDao.reviewlist(pageNum, limit, itemid);
	   }

	////////////////////////////////////주문 내역
	// 주문 내역
	   public int getorderitem(String searchtype, String searchcontent, String buyerid) {
	      
	      return itemDao.orderitem(searchtype, searchcontent, buyerid);
	   }
	   
	   // 주문 리스트
	   public List<Itemmanagement> orderlist(Integer pageNum, int limit, String searchtype, String searchcontent,
	         String buyerid) {
	      
	      return itemDao.orderlist(pageNum, limit, searchtype,searchcontent,buyerid);
	   }

	   // 판매자 User
	   public User getsaleUser(String saleid) {
	      
	      return itemDao.saleUser(saleid);
	   }

	   public Itemmanagement getItemmangement(String itemid, String saleid) {
	      
	      return itemDao.Itemmanagement(itemid, saleid);
	   }

	   public int getreturndel(String saleid) {
	      
	      return itemDao.returndel(saleid);
	   }

	   public void getreturnUpdate(String saleid,String text) {
	      
	      itemDao.returnUpdate(saleid, text);
	   }

	   public int gettakecount(String searchtype, String searchcontent, String userid) {
	      
	      return itemDao.takecount(searchtype, searchcontent, userid);
	   }

	   public List<Itemmanagement> takelist(Integer pageNum, int limit, String searchtype, String searchcontent,
	         String userid) {
	      
	      return itemDao.takelist(pageNum, limit, searchtype, searchcontent, userid);
	   }

	   public void getordercancle(String buyerid, String saleid) {
	      
	      itemDao.ordercancle(buyerid,saleid);
	   }

	   public int getpaymentcnt(String searchtype, String searchcontent, String userid) {
	      
	      return itemDao.paymentcnt(searchtype, searchcontent, userid);
	   }

	   public List<Itemmanagement> paymentlist(Integer pageNum, int limit, String searchtype, String searchcontent,
	         String userid) {
	      
	      return itemDao.paymentlist(pageNum,limit,searchtype,searchcontent,userid);
	   }

	   public int getitemcnt(String searchtype, String searchcontent, String userid) {
	      
	      return itemDao.itemcnt(searchtype,searchcontent,userid);
	   }

	   public List<Shopbasket> dipslist(Integer pageNum, int limit, String searchtype, String searchcontent,
	         String userid) {
	      
	      return itemDao.dipslist(pageNum,limit,searchtype,searchcontent,userid);
	   }

	public Itemmanagement getreturninformation(String saleid) {
		return itemDao.getreturninformation(saleid);
	}

	public void approvetakeback(String saleid) {
		itemDao.approvetakeback(saleid);
	}

	public void denytakeback(String saleid, String refuse) {
		itemDao.denytakeback(saleid,refuse);
		
	}

	public List<Item> itemlist(String userid) {
		return itemDao.itemlist(userid);
	}

	public int gettakebackedcount(String searchtype, String searchcontent, String sessionid) {
		return itemDao.gettakebackedcount(searchtype, searchcontent, sessionid);
	}

	public List<Itemmanagement> gettakebacked(Integer pageNum, int limit, String searchtype, String searchcontent,
			String sessionid) {
		return itemDao.gettakebacked(pageNum, limit, searchtype, searchcontent,sessionid);
	}
	
}
