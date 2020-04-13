package com.chrislg.whisky.service;

import com.chrislg.whisky.dao.WhiskyDAO;
import com.chrislg.whisky.entity.WhiskyEntry;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;


import java.util.List;

@Service
public class WhiskyServiceImpl implements WhiskyService {

    @Autowired
    private WhiskyDAO whiskyDAO;

    @Override
    @Transactional
    public List<WhiskyEntry> getWhiskies() {
        return whiskyDAO.getWhiskies();
    }

    @Override
    @Transactional
    public WhiskyEntry getWhiskyEntry(int id) {
        return whiskyDAO.getWhiskyEntry(id);
    }

    @Override
    @Transactional
    public void saveWhiskyEntry(WhiskyEntry whiskyEntry) {
        whiskyDAO.saveWhiskyEntry(whiskyEntry);
    }

    @Override
    @Transactional
    public void deleteWhiskyEntry(int id) {
        whiskyDAO.deleteWhiskyEntry(id);
    }

    @Override
    @Transactional
    public List<WhiskyEntry> searchWhiskies(String theSearchName) {
        return whiskyDAO.searchWhiskies(theSearchName);
    }
}
