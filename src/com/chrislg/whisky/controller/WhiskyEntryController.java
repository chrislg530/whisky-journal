package com.chrislg.whisky.controller;

import com.chrislg.whisky.entity.WhiskyEntry;
import com.chrislg.whisky.service.WhiskyService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
@RequestMapping("/whisky")
public class WhiskyEntryController {

    @Autowired
    private WhiskyService whiskyService;

    @GetMapping("/whiskyList")
    public String listWhiskies(Model model) {
        // get whiskies form dao
        List<WhiskyEntry> whiskyEntries = whiskyService.getWhiskies();

        // add whiskies to model
        model.addAttribute("whiskyEntries", whiskyEntries);

        return "list-whiskies";
    }

    @GetMapping("/whiskyEntry")
    public String listWhiskyEntry(@RequestParam("whiskyEntry") int id, Model model) {
        // get whisky form dao
        WhiskyEntry whiskyEntry = whiskyService.getWhiskyEntry(id);

        // add whisky to model
        model.addAttribute("whiskyEntry", whiskyEntry);

        // return model to jsp
        return "whisky-entry";

    }

    @GetMapping("/showFormForAdd")
    public String showFormForAdd(Model model) {

        // construct whisky
        WhiskyEntry whiskyEntry = new WhiskyEntry();

        // add whisky to model
        model.addAttribute("whiskyEntry",whiskyEntry);

        // return model to form
        return "whisky-entry-form";

    }

    @GetMapping("/showFormForUpdate")
    public String showFormForUpdate(@RequestParam("whiskyEntry") int id,
                                    Model model) {
        // get entry from db
        WhiskyEntry whiskyEntry = whiskyService.getWhiskyEntry(id);

        // set entry as model to pre=populate form
        model.addAttribute("whiskyEntry",whiskyEntry);

        // send to form
        return "whisky-entry-form";

    }

    @PostMapping("/saveWhisky")
    public String saveWhisky(@ModelAttribute("whiskyEntry") WhiskyEntry whiskyEntry) {
        // save entry using service
        whiskyService.saveWhiskyEntry(whiskyEntry);

        return "redirect:/whisky/whiskyList";
    }

    @GetMapping("/delete")
    public String deleteWhisky(@RequestParam("whiskyEntryId") int id) {
        whiskyService.deleteWhiskyEntry(id);

        return "redirect:/whisky/whiskyList";
    }

    @GetMapping("/search")
    public String searchWhiskies(@RequestParam("theSearchName") String theSearchName,
                                  Model theModel) {

        // search whiskies from the service
        List<WhiskyEntry> whiskyEntries = whiskyService.searchWhiskies(theSearchName);

        // add the whiskies to the model
        theModel.addAttribute("whiskyEntries", whiskyEntries);

        return "list-whiskies";
    }


}
