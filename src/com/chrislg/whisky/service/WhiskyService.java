package com.chrislg.whisky.service;

import com.chrislg.whisky.entity.WhiskyEntry;

import java.util.List;

public interface WhiskyService {

    public List<WhiskyEntry> getWhiskies();

    public WhiskyEntry getWhiskyEntry(int id);

    public void saveWhiskyEntry(WhiskyEntry whiskyEntry);

    public void deleteWhiskyEntry(int id);

    public List<WhiskyEntry> searchWhiskies(String theSearchName);

}
