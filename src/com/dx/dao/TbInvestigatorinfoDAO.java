package com.dx.dao;

import java.util.List;

import org.hibernate.LockMode;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.context.ApplicationContext;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.dx.bean.TbInvestigatorinfo;

/**
 	* A data access object (DAO) providing persistence and search support for TbInvestigatorinfo entities.
 			* Transaction control of the save(), update() and delete() operations 
		can directly support Spring container-managed transactions or they can be augmented	to handle user-managed Spring transactions. 
		Each of these methods provides additional information for how to configure it for the desired type of transaction control. 	
	 * @see com.dx.dao.TbInvestigatorinfo
  * @author MyEclipse Persistence Tools 
 */

public class TbInvestigatorinfoDAO extends HibernateDaoSupport  {
	     private static final Logger log = LoggerFactory.getLogger(TbInvestigatorinfoDAO.class);
		//property constants
	public static final String INVESTIGATOR_NAME = "investigatorName";
	public static final String INVESTIGATOR_SEX = "investigatorSex";
	public static final String INVESTIGATOR_AGE = "investigatorAge";
	public static final String INVESTIGATOR_COMPANY = "investigatorCompany";
	public static final String INVESTIGATOR_POSITION = "investigatorPosition";
	public static final String INVESTIGATOR_MAIL_ADDR = "investigatorMailAddr";
	public static final String INVESTIGATOR_POSTCODE = "investigatorPostcode";
	public static final String INVESTIGATOR_PHONE = "investigatorPhone";
	public static final String INVESTIGATOR_FAX = "investigatorFax";
	public static final String INVESTIGATOR_EMAIL = "investigatorEmail";
	public static final String INVESTIGATOR_SUBMIT_TIME = "investigatorSubmitTime";



	protected void initDao() {
		//do nothing
	}
    
    public void save(TbInvestigatorinfo transientInstance) {
        log.debug("saving TbInvestigatorinfo instance");
        try {
            getHibernateTemplate().save(transientInstance);
            log.debug("save successful");
        } catch (RuntimeException re) {
            log.error("save failed", re);
            throw re;
        }
    }
    
	public void delete(TbInvestigatorinfo persistentInstance) {
        log.debug("deleting TbInvestigatorinfo instance");
        try {
            getHibernateTemplate().delete(persistentInstance);
            log.debug("delete successful");
        } catch (RuntimeException re) {
            log.error("delete failed", re);
            throw re;
        }
    }
    
    public TbInvestigatorinfo findById( java.lang.Integer id) {
        log.debug("getting TbInvestigatorinfo instance with id: " + id);
        try {
            TbInvestigatorinfo instance = (TbInvestigatorinfo) getHibernateTemplate()
                    .get("com.dx.bean.TbInvestigatorinfo", id);
            return instance;
        } catch (RuntimeException re) {
            log.error("get failed", re);
            throw re;
        }
    }
    
    
    public List findByExample(TbInvestigatorinfo instance) {
        log.debug("finding TbInvestigatorinfo instance by example");
        try {
            List results = getHibernateTemplate().findByExample(instance);
            log.debug("find by example successful, result size: " + results.size());
            return results;
        } catch (RuntimeException re) {
            log.error("find by example failed", re);
            throw re;
        }
    }    
    
    public List findByProperty(String propertyName, Object value) {
      log.debug("finding TbInvestigatorinfo instance with property: " + propertyName
            + ", value: " + value);
      try {
         String queryString = "from TbInvestigatorinfo as model where model." 
         						+ propertyName + "= ?";
		 return getHibernateTemplate().find(queryString, value);
      } catch (RuntimeException re) {
         log.error("find by property name failed", re);
         throw re;
      }
	}

	public List findByInvestigatorName(Object investigatorName
	) {
		return findByProperty(INVESTIGATOR_NAME, investigatorName
		);
	}
	
	public List findByInvestigatorSex(Object investigatorSex
	) {
		return findByProperty(INVESTIGATOR_SEX, investigatorSex
		);
	}
	
	public List findByInvestigatorAge(Object investigatorAge
	) {
		return findByProperty(INVESTIGATOR_AGE, investigatorAge
		);
	}
	
	public List findByInvestigatorCompany(Object investigatorCompany
	) {
		return findByProperty(INVESTIGATOR_COMPANY, investigatorCompany
		);
	}
	
	public List findByInvestigatorPosition(Object investigatorPosition
	) {
		return findByProperty(INVESTIGATOR_POSITION, investigatorPosition
		);
	}
	
	public List findByInvestigatorMailAddr(Object investigatorMailAddr
	) {
		return findByProperty(INVESTIGATOR_MAIL_ADDR, investigatorMailAddr
		);
	}
	
	public List findByInvestigatorPostcode(Object investigatorPostcode
	) {
		return findByProperty(INVESTIGATOR_POSTCODE, investigatorPostcode
		);
	}
	
	public List findByInvestigatorPhone(Object investigatorPhone
	) {
		return findByProperty(INVESTIGATOR_PHONE, investigatorPhone
		);
	}
	
	public List findByInvestigatorFax(Object investigatorFax
	) {
		return findByProperty(INVESTIGATOR_FAX, investigatorFax
		);
	}
	
	public List findByInvestigatorEmail(Object investigatorEmail
	) {
		return findByProperty(INVESTIGATOR_EMAIL, investigatorEmail
		);
	}
	
	public List findByInvestigatorSubmitTime(Object investigatorSubmitTime
	) {
		return findByProperty(INVESTIGATOR_SUBMIT_TIME, investigatorSubmitTime
		);
	}
	

	public List findAll() {
		log.debug("finding all TbInvestigatorinfo instances");
		try {
			String queryString = "from TbInvestigatorinfo";
		 	return getHibernateTemplate().find(queryString);
		} catch (RuntimeException re) {
			log.error("find all failed", re);
			throw re;
		}
	}
	
    public TbInvestigatorinfo merge(TbInvestigatorinfo detachedInstance) {
        log.debug("merging TbInvestigatorinfo instance");
        try {
            TbInvestigatorinfo result = (TbInvestigatorinfo) getHibernateTemplate()
                    .merge(detachedInstance);
            log.debug("merge successful");
            return result;
        } catch (RuntimeException re) {
            log.error("merge failed", re);
            throw re;
        }
    }

    public void attachDirty(TbInvestigatorinfo instance) {
        log.debug("attaching dirty TbInvestigatorinfo instance");
        try {
            getHibernateTemplate().saveOrUpdate(instance);
            log.debug("attach successful");
        } catch (RuntimeException re) {
            log.error("attach failed", re);
            throw re;
        }
    }
    
    public void attachClean(TbInvestigatorinfo instance) {
        log.debug("attaching clean TbInvestigatorinfo instance");
        try {
            getHibernateTemplate().lock(instance, LockMode.NONE);
            log.debug("attach successful");
        } catch (RuntimeException re) {
            log.error("attach failed", re);
            throw re;
        }
    }

	public static TbInvestigatorinfoDAO getFromApplicationContext(ApplicationContext ctx) {
    	return (TbInvestigatorinfoDAO) ctx.getBean("TbInvestigatorinfoDAO");
	}
}