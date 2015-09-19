package com.dx.dao;

import java.util.List;

import org.hibernate.LockMode;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.context.ApplicationContext;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.dx.bean.TbProvincelevel;

/**
 	* A data access object (DAO) providing persistence and search support for TbProvincelevel entities.
 			* Transaction control of the save(), update() and delete() operations 
		can directly support Spring container-managed transactions or they can be augmented	to handle user-managed Spring transactions. 
		Each of these methods provides additional information for how to configure it for the desired type of transaction control. 	
	 * @see com.dx.dao.TbProvincelevel
  * @author MyEclipse Persistence Tools 
 */

public class TbProvincelevelDAO extends HibernateDaoSupport  {
	     private static final Logger log = LoggerFactory.getLogger(TbProvincelevelDAO.class);
		//property constants
	public static final String PROVINCE_LEVEL_NAME = "provinceLevelName";



	protected void initDao() {
		//do nothing
	}
    
    public void save(TbProvincelevel transientInstance) {
        log.debug("saving TbProvincelevel instance");
        try {
            getHibernateTemplate().save(transientInstance);
            log.debug("save successful");
        } catch (RuntimeException re) {
            log.error("save failed", re);
            throw re;
        }
    }
    
	public void delete(TbProvincelevel persistentInstance) {
        log.debug("deleting TbProvincelevel instance");
        try {
            getHibernateTemplate().delete(persistentInstance);
            log.debug("delete successful");
        } catch (RuntimeException re) {
            log.error("delete failed", re);
            throw re;
        }
    }
    
    public TbProvincelevel findById( java.lang.String id) {
        log.debug("getting TbProvincelevel instance with id: " + id);
        try {
            TbProvincelevel instance = (TbProvincelevel) getHibernateTemplate()
                    .get("com.dx.bean.TbProvincelevel", id);
            return instance;
        } catch (RuntimeException re) {
            log.error("get failed", re);
            throw re;
        }
    }
    
    
    public List findByExample(TbProvincelevel instance) {
        log.debug("finding TbProvincelevel instance by example");
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
      log.debug("finding TbProvincelevel instance with property: " + propertyName
            + ", value: " + value);
      try {
         String queryString = "from TbProvincelevel as model where model." 
         						+ propertyName + "= ?";
		 return getHibernateTemplate().find(queryString, value);
      } catch (RuntimeException re) {
         log.error("find by property name failed", re);
         throw re;
      }
	}

	public List findByProvinceLevelName(Object provinceLevelName
	) {
		return findByProperty(PROVINCE_LEVEL_NAME, provinceLevelName
		);
	}
	

	public List findAll() {
		log.debug("finding all TbProvincelevel instances");
		try {
			String queryString = "from TbProvincelevel";
		 	return getHibernateTemplate().find(queryString);
		} catch (RuntimeException re) {
			log.error("find all failed", re);
			throw re;
		}
	}
	
    public TbProvincelevel merge(TbProvincelevel detachedInstance) {
        log.debug("merging TbProvincelevel instance");
        try {
            TbProvincelevel result = (TbProvincelevel) getHibernateTemplate()
                    .merge(detachedInstance);
            log.debug("merge successful");
            return result;
        } catch (RuntimeException re) {
            log.error("merge failed", re);
            throw re;
        }
    }

    public void attachDirty(TbProvincelevel instance) {
        log.debug("attaching dirty TbProvincelevel instance");
        try {
            getHibernateTemplate().saveOrUpdate(instance);
            log.debug("attach successful");
        } catch (RuntimeException re) {
            log.error("attach failed", re);
            throw re;
        }
    }
    
    public void attachClean(TbProvincelevel instance) {
        log.debug("attaching clean TbProvincelevel instance");
        try {
            getHibernateTemplate().lock(instance, LockMode.NONE);
            log.debug("attach successful");
        } catch (RuntimeException re) {
            log.error("attach failed", re);
            throw re;
        }
    }

	public static TbProvincelevelDAO getFromApplicationContext(ApplicationContext ctx) {
    	return (TbProvincelevelDAO) ctx.getBean("TbProvincelevelDAO");
	}
}