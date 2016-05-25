package my.testtask.web;

import my.testtask.domain.entities.User;
import my.testtask.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import java.util.Collections;
import java.util.Date;
import java.util.Optional;


@Controller
public class CrudTestTaskController {

    private UserService userService;

    @Autowired
    public void setUserService(UserService userService) {
        this.userService = userService;
    }

    @RequestMapping(value = "/search")
    public String search(@RequestParam("searchString") String searchString, Model model) {
        Iterable<User> users;
        if (searchString != null)
            users = userService.findByName(searchString);
        else
            users = Collections.emptyList();

        model.addAttribute("users", users);

        return "search";
    }

    @RequestMapping(value = "/delete/{userId}", method = RequestMethod.GET)
    public String delete(@PathVariable Integer userId) {
        userService.deleteUser(userId);
        return "redirect:/";
    }

    @RequestMapping(value = {"/update", "/update/{userId}"}, method = RequestMethod.GET)
    public ModelAndView update(@PathVariable Optional<Integer> userId) {
        User user;
        if (userId.isPresent())
            user = userService.findUser(userId.get());
        else {
            user = new User();
            user.setCreatedDate(new Date());
        }

        return new ModelAndView("user", "command", user);
    }

    @RequestMapping(value = "/save", method = RequestMethod.POST)
    public String save(@ModelAttribute User user, BindingResult result) {
        if (result.hasErrors())
            return "redirect:/update";

        userService.saveUser(user);
        return "redirect:/";
    }

    @RequestMapping(value = {"/", "/{pageNumberParam}"}, method = RequestMethod.GET)
    public String index(@PathVariable Optional<Integer> pageNumberParam, Model model) {
        Integer currentPageNumber = 1;
        Integer previousPageNumber = -1;
        Integer nextPageNumber = -1;

        if (pageNumberParam.isPresent())
            currentPageNumber = pageNumberParam.get();

        Page<User> page = userService.findAllUsers(currentPageNumber);

        if (currentPageNumber != 1)
            previousPageNumber = currentPageNumber - 1;

        if (currentPageNumber < page.getTotalPages())
            nextPageNumber = currentPageNumber + 1;

        model.addAttribute("title", "Users");
        model.addAttribute("users", page.getContent());
        model.addAttribute("previousPageNumber", previousPageNumber);
        model.addAttribute("nextPageNumber", nextPageNumber);

        return "index";
    }

}
