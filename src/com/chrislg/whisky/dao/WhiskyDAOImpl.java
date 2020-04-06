package com.chrislg.whisky.dao;

import com.chrislg.whisky.entity.WhiskyEntry;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class WhiskyDAOImpl implements WhiskyDAO {

    // inject seesion factory
    @Autowired
    private SessionFactory sessionFactory;

    @Override
    public List<WhiskyEntry> getWhiskies() {

        // get current hibernate session
        Session currentSession = sessionFactory.getCurrentSession();

        // create query
        Query<WhiskyEntry> theQuery = currentSession.createQuery("from WhiskyEntry order by id",
                WhiskyEntry.class);

        // execute query and get result list
        List<WhiskyEntry> whiskyEntries = theQuery.getResultList();

        // return results
        return whiskyEntries;
    }

    @Override
    public WhiskyEntry getWhiskyEntry(int id) {
        // get current hibernate session
        Session currentSession = sessionFactory.getCurrentSession();

        // retrieve from database using primary key
        WhiskyEntry whiskyEntry = currentSession.get(WhiskyEntry.class, id);

        // return result
        return whiskyEntry;
    }

    @Override
    public void saveWhiskyEntry(WhiskyEntry whiskyEntry) {
        // get current hibernate session
        Session currentSession = sessionFactory.getCurrentSession();

        // save the whiskyEntry
        currentSession.saveOrUpdate(whiskyEntry);
    }

    @Override
    public void deleteWhiskyEntry(int id) {
        // get current hibernate session
        Session currentSession = sessionFactory.getCurrentSession();

        // delete customer with primary key
        Query query =
                currentSession.createQuery("delete from WhiskyEntry where id=:whiskyId");
        query.setParameter("whiskyId",id);

        query.executeUpdate();
    }

    @Override
    public List<WhiskyEntry> searchWhiskies(String theSearchName) {
        // get the current hibernate session
        Session currentSession = sessionFactory.getCurrentSession();

        Query theQuery = null;

        // only search by name if theSearchName is not empty
        if (theSearchName != null && theSearchName.trim().length() > 0) {

            // search for whisky_name... case insensitive
            theQuery =currentSession.createQuery("from whisky_entry where lower(whisky_name) like :theName", WhiskyEntry.class);
            theQuery.setParameter("theName", "%" + theSearchName.toLowerCase() + "%");

        }
        else {
            // theSearchName is empty ... so just get all whiskies
            theQuery =currentSession.createQuery("from whisky_entry", WhiskyEntry.class);
        }

        // execute query and get result list
        List<WhiskyEntry> whiskyEntries = theQuery.getResultList();

        // return the results
        return whiskyEntries;
    }
}
