package com.dx.dao;

import java.util.List;

import org.hibernate.LockMode;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.context.ApplicationContext;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.dx.bean.TbAuditinfo;

/**
 	* A data access object (DAO) providing persistence and search support for TbAuditinfo entities.
 			* Transaction control of the save(), update() and delete() operations 
		can directly support Spring container-managed transactions or they can be augmented	to handle user-managed Spring transactions. 
		Each of these methods provides additional information for how to configure it for the desired type of transaction control. 	
	 * @see com.dx.dao.TbAuditinfo
  * @author MyEclipse Persistence Tools 
 */

public class TbAuditinfoDAO extends HibernateDaoSupport  {
	     private static final Logger log = LoggerFactory.getLogger(TbAuditinfoDAO.class);
		//property constants
	public static final String SUGGESTIONS = "suggestions";
	public static final String SIGNATURE = "signature";
	public static final String RESPONSIBILITY = "responsibility";
	public static final String COMPANY = "company";
	public static final String ADDRESS = "address";
	public static final String PHONE = "phone";
	public static final String FAX = "fax";
	public static final String EMAIL = "email";
	public static final String DATE = "date";



	protected void initDao() {
		//do nothing
	}
    
    public void save(TbAuditinfo transientInstance) {
        log.debug("saving TbAuditinfo instance");
        try {
            getHibernateTemplate().save(transientInstance);
            log.debug("save successful");
        } catch (RuntimeException re) {
            log.error("save failed", re);
            throw re;
        }
    }
    
	public void delete(TbAuditinfo persistentInstance) {
        log.debug("deleting TbAuditinfo instance");
        try {
            getHibernateTemplate().delete(persistentInstance);
            log.debug("delete successful");
        } catch (RuntimeException re) {
            log.error("delete failed", re);
            throw re;
        }
    }
    
    public TbAuditinfo findById( java.lang.Integer id) {
        log.debug("getting TbAuditinfo instance with id: " + id);
        try {
            TbAuditinfo instance = (TbAuditinfo) getHibernateTemplate()
                    .get("com.dx.bean.TbAuditinfo", id);
            return instance;
        } catch (RuntimeException re) {
            log.error("get failed", re);
            throw re;
        }
    }
    
    
    public List findByExample(TbAuditinfo instance) {
        log.debug("finding TbAuditinfo instance by example");
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
      log.debug("finding TbAuditinfo instance with property: " + propertyName
            + ", value: " + value);
      try {
         String queryString = "from TbAuditinfo as model where model." 
         						+ propertyName + "= ?";
		 return getHibernateTemplate().find(queryString, value);
      } catch (RuntimeException re) {
         log.error("find by property name failed", re);
         throw re;
      }
	}

	public List findBySuggestions(Object suggestions
	) {
		return findByProperty(SUGGESTIONS, suggestions
		);
	}
	
	public List findBySignature(Object signature
	) {
		return findByProperty(SIGNATURE, signature
		);
	}
	
	public List findByResponsibility(Object responsibility
	) {
		return findByProperty(RESPONSIBILITY, responsibility
		);
	}
	
	public List findByCompany(Object company
	) {
		return findByProperty(COMPANY, company
		);
	}
	
	public List findByAddress(Object address
	) {
		return findByProperty(ADDRESS, address
		);
	}
	
	public List findByPhone(Object phone
	) {
		return findByProperty(PHONE, phone
		);
	}
	
	public List findByFax(Object fax
	) {
		return findByProperty(FAX, fax
		);
	}
	
	public List findByEmail(Object email
	) {
		return findByProperty(EMAIL, email
		);
	}
	
	public List findByDate(Object date
	) {
		return findByProperty(DATE, date
		);
	}
	

	public List findAll() {
		log.debug("finding all TbAuditinfo instances");
		try {
			String queryString = "from TbAuditinfo";
		 	return getHibernateTemplate().find(queryString);
		} catch (RuntimeException re) {
			log.error("find all failed", re);
			throw re;
		}
	}
	
    public TbAuditinfo merge(TbAuditinfo detachedInstance) {
        log.debug("merging TbAuditinfo instance");
        try {
            TbAuditinfo result = (TbAuditinfo) getHibernateTemplate()
                    .merge(detachedInstance);
            log.debug("merge successful");
            return result;
        } catch (RuntimeException re) {
            log.error("merge failed", re);
            throw re;
        }
    }

    public void attachDirty(TbAuditinfo instance) {
        log.debug("attaching dirty TbAuditinfo instance");
        try {
            getHibernateTemplate().saveOrUpdate(instance);
            log.debug("attach successful");
        } catch (RuntimeException re) {
            log.error("attach failed", re);
            throw re;
        }
    }
    
    public void attachClean(TbAuditinfo instance) {
        log.debug("attaching clean TbAuditinfo instance");
        try {
            getHibernateTemplate().lock(instance, LockMode.NONE);
            log.debug("attach successful");
        } catch (RuntimeException re) {
            log.error("attach failed", re);
            throw re;
        }
    }

	public static TbAuditinfoDAO getFromApplicationContext(ApplicationContext ctx) {
    	return (TbAuditinfoDAO) ctx.getBean("TbAuditinfoDAO");
	}
}