package controllers;

import dao.Trainer_dao;
import model.Trainer;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping(value = "trainer/")
public class Dispatcher {

    @Autowired
    Trainer_dao td;

    @RequestMapping(value = "home.htm")
    public String show(ModelMap m) {

        m.addAttribute("trainers", td.showAllTrainers());
        return "home";
    }

    @RequestMapping(value = "form.htm")
    public String form1(ModelMap m) {
        Trainer trainer = new Trainer();
        m.addAttribute("trainer", trainer);

        return "form";
    }

    @RequestMapping(value = "post.htm")
    public String insert(ModelMap m, @ModelAttribute("trainer") Trainer trainer) {

        td.insertTrainer(trainer);

        return "redirect:/trainer/home.htm";
    }

    @RequestMapping(value = "Update.htm")
    public String Update(ModelMap m, @RequestParam(value = "id", required = false, defaultValue = "all") String id_string) {

        int id = Integer.parseInt(id_string);
        Trainer trainer = td.findById(id);
        m.addAttribute(trainer);

        return "formUpdate";
    }

    @RequestMapping(value = "postUpdate.htm")
    public String update(ModelMap m, @ModelAttribute("trainer") Trainer trainer) {

        td.mergeTrainer(trainer);

        return "redirect:/trainer/home.htm";
    }

    @RequestMapping(value = "Delete.htm")
    public String delete(ModelMap m, @RequestParam(value = "id", required = false, defaultValue = "all") String id_string) {

        int id = Integer.parseInt(id_string);
        System.out.println(id);
        td.deleteTrainer(id);

        return "redirect:/trainer/home.htm";
    }

}

//return "forward:/url pattern controller"
//createQuery ("Select c from Candidates") JPQL
//createNativeQuery SQL
// link & actions
