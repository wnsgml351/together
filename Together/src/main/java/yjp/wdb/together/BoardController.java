package yjp.wdb.together;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import yjp.wdb.domain.BoardVO;
import yjp.wdb.domain.Criteria;
import yjp.wdb.domain.PageMaker;
import yjp.wdb.service.BoardService;

@Controller
@RequestMapping("/board/*")
public class BoardController {
	private static final Logger logger = LoggerFactory.getLogger(BoardController.class);

	@Inject
	private BoardService service;

	@RequestMapping(value = "smartView", method = RequestMethod.GET)
	public void smartViewGET(BoardVO board, Model model) throws Exception {

	}

	@RequestMapping(value = "smartView", method = RequestMethod.POST)
	public String smartViewPOST(BoardVO board, Model model) throws Exception {
		service.regist(board);

		model.addAttribute("result", "success");

		// return "/board/success";
		return "redirect:/board/listPage";
	}

	// @RequestMapping(value = "listAll", method = RequestMethod.GET)
	// public void listAll(Model model) throws Exception {
	// model.addAttribute("list", service.listAll());
	// }

	@RequestMapping(value = "readPage", method = RequestMethod.GET)
	public void read(@RequestParam("bno") int bno, @ModelAttribute("cri") Criteria cri, Model model) throws Exception {
		model.addAttribute(service.read(bno));
	}

	@RequestMapping(value = "remove", method = RequestMethod.POST)
	public String remove(int bno, Model model) throws Exception {
		service.remove(bno);

		return "redirect:/board/listPage";

	}

	@RequestMapping(value = "modify2", method = RequestMethod.GET)
	public void modifyGET(int bno, Model model) throws Exception {
		model.addAttribute(service.read(bno));

	}

	@RequestMapping(value = "modify2", method = RequestMethod.POST)
	public String modiftPOST(BoardVO board, RedirectAttributes rttr) throws Exception {
		service.mofify(board);
		rttr.addAttribute("msg", "SUCCESS");

		return "redirect:/board/listPage";
	}

	@RequestMapping(value = "listCri", method = RequestMethod.GET)
	public void listAll(Criteria cri, Model model) throws Exception {
		model.addAttribute("list", service.listCriteria(cri));
	}

	@RequestMapping(value = "listPage", method = RequestMethod.GET)
	public void listPge(Criteria cri, Model model) throws Exception {

		model.addAttribute("list", service.listCriteria(cri));
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);
		pageMaker.setTotalCount(service.listCountCriteria(cri));

		model.addAttribute("pageMaker", pageMaker);

	}

}