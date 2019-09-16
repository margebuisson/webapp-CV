package fr.takima.demo.controller;

import fr.takima.demo.dao.UserDAO;
import fr.takima.demo.model.User;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import org.springframework.web.servlet.view.RedirectView;

/**
 *
 */
@Controller
public class UserController {

  private final UserDAO userDAO;

  public UserController(UserDAO userDAO) {
    this.userDAO = userDAO;
  }

  @GetMapping("/")
  public String homePage(Model m) {
    m.addAttribute("users", userDAO.findAll());
    return "acceuil";
  }

  @GetMapping("/createAccount")
  public String addUserPage(Model m) {
    m.addAttribute("user", new User());
    return "formulaire";
  }


  @PostMapping("/createAccount")
  public RedirectView createNewUser(@ModelAttribute User user, RedirectAttributes attrs) {
    attrs.addFlashAttribute("message", "Utilisateur ajouté avec succès");
    userDAO.save(user);
    return new RedirectView("/");
  }

  /*@PostMapping("/")
  public RedirectView signIn(@ModelAttribute User user, RedirectAttributes attrs) {
    return new RedirectView("/createAccount");
  }*/

}
