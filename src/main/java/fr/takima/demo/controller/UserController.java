package fr.takima.demo.controller;

import fr.takima.demo.dao.ExperienceDAO;
import fr.takima.demo.dao.FormationDAO;
import fr.takima.demo.dao.UserDAO;
import fr.takima.demo.model.Experience;
import fr.takima.demo.model.Formation;
import fr.takima.demo.model.User;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import org.springframework.web.servlet.view.RedirectView;

/**
 *
 */
@Controller
public class UserController {

  private final UserDAO userDAO;
  private final FormationDAO formationDAO;
  private final ExperienceDAO experienceDAO;


  public UserController(UserDAO userDAO, FormationDAO formationDAO, FormationDAO formationDAO1, ExperienceDAO experienceDAO) {
    this.userDAO = userDAO;
    this.formationDAO = formationDAO1;
    this.experienceDAO = experienceDAO;
  }

  @GetMapping("/")
  public String homePage(Model m) {
    m.addAttribute("users", userDAO.findAll());
    return "homepage";
  }

  @GetMapping("/createAccount")
  public String addUserPage(Model m) {
    m.addAttribute("user", new User());
    return "createAccount";
  }

  @PostMapping("/createAccount")
  public RedirectView createNewUser(@ModelAttribute User user, RedirectAttributes attrs) {
    attrs.addFlashAttribute("message", "Utilisateur ajouté avec succès");
    userDAO.save(user);
    long id = user.getId();
    return new RedirectView("/addFormation/"+id );
  }

  @GetMapping("/editAccount/{id}")
  public String addUserPage(Model m, @PathVariable long id) {
    m.addAttribute("user", userDAO.findById(id).get());
    return "editAccount";
  }

  @PostMapping("/editAccount/{id}")
  public RedirectView updateUser(@ModelAttribute User user, RedirectAttributes attrs, @PathVariable long id) {
    attrs.addFlashAttribute("message", "Utilisateur ajouté avec succès");
    User oldUser = userDAO.findById(id).get();
    oldUser.setFirstName(user.getFirstName());
    oldUser.setAddress(user.getAddress());
    oldUser.setBirthdate(user.getBirthdate());
    oldUser.setCity(user.getCity());
    oldUser.setMail(user.getMail());
    oldUser.setZipCode(user.getZipCode());
    oldUser.setLastName(user.getLastName());
    oldUser.setMobilePhone(user.getMobilePhone());
    userDAO.save(oldUser);
    return new RedirectView("/editAccount/"+id );
  }

  @GetMapping("/addFormation/{id}")
  public String addFormation(Model m, @PathVariable long id) {
    m.addAttribute("formation", new Formation());
    m.addAttribute("user", userDAO.findById(id).get());
    return "addFormation";
  }

  @PostMapping("/addFormation/{id}")
  public RedirectView addFormation(@ModelAttribute Formation formation, RedirectAttributes attrs, @PathVariable long id) {
    User user = userDAO.findById(id).get();
    formation.setUser(user);
    attrs.addFlashAttribute("confirmation", "Cette formation a été ajoutée avec succès!");
    formationDAO.save(formation);
    return new RedirectView("/addExperience/"+ user.getId());
  }

  @GetMapping("/editFormation/{id}")
  public String editFormation(Model m, @PathVariable long id) {
    User user = userDAO.findById(id).get();
    Formation formation = formationDAO.findByUser(user);
    m.addAttribute("formation", formation);
    m.addAttribute("user", user);
    return "editFormation";
  }

  @PostMapping("/editFormation/{id}")
  public RedirectView editFormation(@ModelAttribute Formation formation,@ModelAttribute User user, RedirectAttributes attrs, @PathVariable long id) {
    Formation oldFormation = formationDAO.findByUser(user);
    oldFormation.setBegYear(formation.getBegYear());
    oldFormation.setFormationName(formation.getFormationName());
    oldFormation.setCity(formation.getCity());
    oldFormation.setDescription(formation.getDescription());
    oldFormation.setLevel(formation.getLevel());
    oldFormation.setEnded(formation.isEnded());
    oldFormation.setEndYear(formation.getEndYear());
    attrs.addFlashAttribute("confirmation", "Vos changements ont été sauvegardés!");
    formationDAO.save(oldFormation);
    return new RedirectView("/editFormation/"+user.getId());
  }

  @GetMapping("/editExperience/{id}")
  public String editExperience(Model m, @PathVariable long id) {
    User user = userDAO.findById(id).get();
    Experience experience = experienceDAO.findByUser(user);
    m.addAttribute("experience", experience);
    m.addAttribute("user", user);
    return "editExperience";
  }

  @PostMapping("/editExperience/{id}")
  public RedirectView editExperience(@ModelAttribute Experience experience, @ModelAttribute User user, RedirectAttributes attrs, @PathVariable long id) {
    Experience oldExperience = experienceDAO.findByUser(user);
    oldExperience.setBegYear(experience.getBegYear());
    oldExperience.setCompany(experience.getCompany());
    oldExperience.setContractType(experience.getContractType());
    oldExperience.setEnded(experience.isEnded());
    oldExperience.setJobDescription(experience.getJobDescription());
    oldExperience.setEndYear(experience.getEndYear());
    oldExperience.setJobTitle(experience.getJobTitle());
    attrs.addFlashAttribute("confirmation", "Vos changements ont été sauvegardés!");
    experienceDAO.save(oldExperience);
    return new RedirectView("/editExperience/"+user.getId());
  }


  @PostMapping("/deleteUser/{id}")
  public RedirectView deleteUser(@ModelAttribute User user, RedirectAttributes attrs,@PathVariable long id) {
    attrs.addFlashAttribute("message", "Utilisateur supprimé");
    userDAO.delete(user);
    return new RedirectView("/");
  }

  @GetMapping("/addExperience/{id}")
  public String addExperience(Model m, @PathVariable long id) {
    User user=userDAO.findById(id).get();
    m.addAttribute("experience", new Experience());
    m.addAttribute("user",user);
    return "addExperience";
  }

  @PostMapping("/addExperience/{id}")
  public RedirectView addExperience(@ModelAttribute Experience experience, RedirectAttributes attrs, @PathVariable long id) {
    User user = userDAO.findById(id).get();
    experience.setUser(user);
    attrs.addFlashAttribute("confirmation", "Cette experience a été ajoutée avec succès!");
    experienceDAO.save(experience);
    return new RedirectView("/viewCV/"+ user.getId());
  }

  @GetMapping("viewCV/{id}")
  public String afficherCV(Model m, @PathVariable long id){
    User user=userDAO.findById(id).get();
    m.addAttribute("user", user);
    m.addAttribute("formation",formationDAO.findByUser(user));
    m.addAttribute("experience", experienceDAO.findByUser(user));
    return "viewCV";
  }

  @GetMapping("/deleteUser/{id}")
  public RedirectView deleteUser(Model m, @PathVariable long id, RedirectAttributes attrs) {
    User user=userDAO.findById(id).get();
    try{
      Formation formation = formationDAO.findByUser(user);
      formationDAO.delete(formation);
    }
    catch(Exception e){System.out.println("Pas de formation à supprimer");}

    try{
      Experience experience = experienceDAO.findByUser(user);
      experienceDAO.delete(experience);
    }
    catch(Exception e){System.out.println("Pas d'expérience à supprimer");}
    userDAO.delete(user);
    attrs.addFlashAttribute("message", "Utilisateur supprimé! Sa formation et son expérience ont aussi été supprimé");
    return new RedirectView("/");
  }
}
