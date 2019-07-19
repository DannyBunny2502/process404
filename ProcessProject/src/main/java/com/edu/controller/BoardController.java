package com.edu.controller;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.edu.common.Pagination;
import com.edu.common.Search;
import com.edu.domain.BoardVO;
import com.edu.service.BoardService;


@Controller
@RequestMapping(value = "/board")
public class BoardController {

	@Inject
	private BoardService boardService;
	
	@RequestMapping(value = "/getBoardList", method = RequestMethod.GET)
	public String getBoardList(Model model
			, @RequestParam(required = false, defaultValue = "1") int page
			, @RequestParam(required = false, defaultValue = "1") int range
			, @RequestParam(required = false, defaultValue = "title")String searchType
			, @RequestParam(required = false)String keyword
			) throws Exception {
		
			//검색기능
			Search search = new Search();
			search.setSearchType(searchType);
			search.setKeyword(keyword);

			//페이징: 전체 게시글 개수
			int listCnt = boardService.getBoardListCnt(search);
			
			//검색기능
			search.pageInfo(page, range, listCnt);
						
		    //페이징 : Pagination 객체생성
			Pagination pagination = new Pagination();
			pagination.pageInfo(page, range, listCnt);
			
		/*
		 * model.addAttribute("pagination", pagination); model.addAttribute("boardList",
		 * boardService.getBoardList(pagination));
		 */
			model.addAttribute("pagination", search);
			model.addAttribute("boardList", boardService.getBoardList(search));
			return "board/index";
	}
	
	//글쓰기 화면 매핑하기
	@RequestMapping("/boardForm")
	public String boardForm(@ModelAttribute("boardVO") BoardVO vo, Model model) {
	return "board/boardForm";
	}

	//글을 작성한 후 글을 저장할 때 호출될 컨트롤러
	
	@RequestMapping(value = "/saveBoard", method = RequestMethod.POST)
	public String saveBoard(@ModelAttribute("BoardVO") BoardVO boardVO 
							,@RequestParam("mode") String mode
							, RedirectAttributes rttr) throws Exception {
		
			if (mode.equals("edit")) {
				boardService.updateBoard(boardVO);
			} else {
				boardService.insertBoard(boardVO);
			}

		return "redirect:/board/getBoardList";
		
		/* @ModelAttribute("BoardVO") BoardVO boardVO
		 * : 화면에서 넘겨주는 값을 BoardVO와 매칭시켜 데이터를 받아온다.
		 *  RedirectAttributes
		 *  : 글쓰기 이후 돌아가야 할 페이지에 데이터를 전달하기 위한 파라미터
		 *  : 브라우저의 '뒤로가기'버튼에 대한 대응책
		 * return "redirect:/board/getBoardList";
		 *  : 돌아갈 곳인 게시판의 리스트 주소로 지정한다.
		 *  
		 *  글쓰기 화면 => 저장단계(서버) => 리스트화면
		 *   뒤로가기버튼을 클릭ㅎ면 다시한번 '저장하기'단계로 가게된다.(게시물도배)
		 *   때문에 이를방지하기 위해서 RedirectAttributes를 사용해서 '저장단계'를 지나 글쓰기 폼으로 
		 *   돌아가서 글을 자동으로 도배할 수 없도록 한다.
		 *   
		 *  
		 */

	}
	
	
	//3.4 controller에서는 Service에서 return 받은 글의 상세내역(boardVO) 를 화면에 전달
	// 서비스에서는 받아온 데이터를 model.addAttribute를 통해 화면으로 전달을 할 수 있게 된다.
	// "boardContent"라는 이름으로 화면에 데이터를 전달한다는 내용이다.
	// 또한 상세 내용을 보여줄  화면의 이름은 board 아래 있는 boardContent.jsp 라는 것을 알 수 있다.
	
	
	
	@RequestMapping(value = "/getBoardContent", method = RequestMethod.GET)
	public String getBoardContent(Model model, @RequestParam("bid") int bid) throws Exception {
		model.addAttribute("boardContent", boardService.getBoardContent(bid));
		return "board/boardContent";//상세 내용을 보여줄 화면이 board 폴더의 boardContent.jsp파일이다.
	}
	
	//게시판 수정
	@RequestMapping(value = "/editForm", method = RequestMethod.GET)
	public String editForm(@RequestParam("bid") int bid
			, @RequestParam("mode") String mode, Model model) throws Exception {
		model.addAttribute("boardContent", boardService.getBoardContent(bid));
		model.addAttribute("mode", mode);
		model.addAttribute("boardVO", new BoardVO());
		return "board/boardForm";
	}
	
	//게시글 삭제
	@RequestMapping(value = "/deleteBoard", method = RequestMethod.GET)
	public String deleteBoard(RedirectAttributes rttr, @RequestParam("bid") int bid) throws Exception {
		boardService.deleteBoard(bid);
		return "redirect:/board/getBoardList";
	}


}	

