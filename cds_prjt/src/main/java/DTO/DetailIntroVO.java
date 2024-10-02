package DTO;

import java.util.List;

import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
public class DetailIntroVO {
	
	private Response response;
	
	@Data
	@NoArgsConstructor
	public static class Response{
		private Header header;
		private Body body;
	}
	
	@Data
	@NoArgsConstructor
	public static class Header{
		private String resultCode;
		private String resultMsg;
	}

	@Data
	@NoArgsConstructor
	public static class Body{
		private int numOfRows;
		private int totalCount;
		private int pageNo;
		private Items items;
	}
	
	@Data
	@NoArgsConstructor
	public static class Items{
		private List<DetailIntro> item;
	}
	
	@Data
	@NoArgsConstructor
	public static class DetailIntro{
		private String discountinfofestival; 	//행사공연축제(15) : 할인정보
		private String eventenddate; 			//행사공연축제(15) : 행사종료일
		private String playtime; 				//행사공연축제(15) : 공연시간
		private String eventhomepage; 			//행사공연축제(15) : 행사홈페이지
		private String eventplace; 				//행사공연축제(15) : 행사장소
		private String eventstartdate; 			//행사공연축제(15) : 행사시작일
		private String festivalgrade;			//행사공연축제(15) : 축제등급
		private String program; 				//행사공연축제(15) : 행사프로그램
		private String spendtimefestival;		//행사공연축제(15) : 관람소요시간
		private String sponsor1; 				//행사공연축제(15) : 주최자정보
		private String sponsor1tel; 			//행사공연축제(15) : 주최자연락처
		private String agelimit; 				//행사공연축제(15) : 관람가능연령
		private String bookingplace;			//행사공연축제(15) : 예매처
		private String sponsor2;			 	//행사공연축제(15) : 주관사정보
		private String sponsor2tel;			 	//행사공연축제(15) : 주관사연락처
		private String subevent;			 	//행사공연축제(15) : 부대행사
		private String usetimefestival;			//행사공연축제(15) : 이용요금
		private String placeinfo;			 	//행사공연축제(15) : 행사장위치안내
		private String contentid;			 	//기본정보 : 콘텐츠ID
		private String contenttypeid;			//기본정보 : 콘텐츠타입ID
		private String chkcreditcardculture;
		private String scaleleports;
		private String usefeeleports;
		private String chkcreditcardfood;
		private String chkbabycarriageculture;
		private String roomcount;
		private String reservationlodging;
		private String reservationurl;
		private String roomtype;
		private String scalelodging;
		private String subfacility;
		private String barbecue;
		private String beauty;
		private String beverage;
		private String bicycle;
		private String campfire;
		private String fitness;
		private String parkinglodging;
		private String pickup;
		private String publicbath;
		private String opendate;
		private String parking;
		private String restdate;
		private String usetimeleports;
		private String foodplace;
		private String goodstay;
		private String hanok;
		private String infocenterlodging;
		private String parkingleports;
		private String reservation;
		private String restdateleports;
		private String karaoke;
		private String discountinfofood;
		private String firstmenu;
		private String infocenterfood;
		private String kidsfacility;
		private String opendatefood;
		private String opentimefood;
		private String packing;
		private String parkingfood;
		private String reservationfood;
		private String restdatefood;
		private String scalefood;
		private String seat;
		private String smoking;
		private String treatmenu;
		private String lcnsno;
		private String accomcount;
		private String chkbabycarriage;
		private String chkcreditcard;
		private String chkpet;
		private String expagerange;
		private String expguide;
		private String heritage1;
		private String heritage2;
		private String heritage3;
		private String infocenter;
		private String taketime;
		private String theme;
		private String accomcountleports;
		private String chkbabycarriageleports;
		private String chkcreditcardleports;
		private String chkpetleports;
		private String expagerangeleports;
		private String infocenterleports;
		private String openperiod;
		private String parkingfeeleports;
		private String chkpetculture;
		private String discountinfo;
		private String infocenterculture;
		private String parkingculture;
		private String parkingfee;
		private String restdateculture;
		private String usefee;
		private String usetimeculture;
		private String scale;
		private String spendtime;
		private String useseason;
		private String usetime;
		private String accomcountculture;
		private String distance;
		private String infocentertourcourse;
		private String schedule;
		private String publicpc;
		private String sauna;
		private String seminar;
		private String sports;
		private String refundregulation;
		private String chkbabycarriageshopping;
		private String chkcreditcardshopping;
		private String chkpetshopping;
		private String culturecenter;
		private String fairday;
		private String infocentershopping;
		private String opendateshopping;
		private String opentime;
		private String parkingshopping;
		private String restdateshopping;
		private String restroom;
		private String saleitem;
		private String saleitemcost;
		private String scaleshopping;
		private String shopguide;
		private String checkintime;
		private String checkouttime;
		private String chkcooking;
		private String accomcountlodging;
		private String benikia;
	}
	
}
