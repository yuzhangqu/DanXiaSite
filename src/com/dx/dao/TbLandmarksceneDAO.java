package com.dx.dao;

import java.util.List;

import org.hibernate.LockMode;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.context.ApplicationContext;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.dx.bean.TbLandmarkscene;

/**
 	* A data access object (DAO) providing persistence and search support for TbLandmarkscene entities.
 			* Transaction control of the save(), update() and delete() operations 
		can directly support Spring container-managed transactions or they can be augmented	to handle user-managed Spring transactions. 
		Each of these methods provides additional information for how to configure it for the desired type of transaction control. 	
	 * @see com.dx.dao.TbLandmarkscene
  * @author MyEclipse Persistence Tools 
 */

public class TbLandmarksceneDAO extends HibernateDaoSupport  {
	     private static final Logger log = LoggerFactory.getLogger(TbLandmarksceneDAO.class);
		//property constants
	public static final String PIC = "pic";
	public static final String PIC_DESCRIPTION = "picDescription";



	protected void initDao() {
		//do nothing
	}
    
    public void save(TbLandmarkscene transientInstance) {
        log.debug("saving TbLandmarkscene instance");
        try {
            getHibernateTemplate().save(transientInstance);
            log.debug("save successful");
        } catch (RuntimeException re) {
            log.error("save failed", re);
            throw re;
        }
    }
    
	public void delete(TbLandmarkscene persistentInstance) {
        log.debug("deleting TbLandmarkscene instance");
        try {
            getHibernateTemplate().delete(persistentInstance);
            log.debug("delete successful");
        } catch (RuntimeException re) {
            log.error("delete failed", re);
            throw re;
        }
    }
    
    public TbLandmarkscene findById( java.lang.Integer id) {
        log.debug("getting TbLandmarkscene instance with id: " + id);
        try {
            TbLandmarkscene instance = (TbLandmarkscene) getHibernateTemplate()
                    .get("com.dx.dao.TbLandmarkscene", id);
            return instance;
        } catch (RuntimeException re) {
            log.error("get failed", re);
            throw re;
        }
    }
    
    
    public List findByExample(TbLandmarkscene instance) {
        log.debug("finding TbLandmarkscene instance by example");
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
      log.debug("finding TbLandmarkscene instance with property: " + propertyName
            + ", value: " + value);
      try {
         String queryString = "from TbLandmarkscene as model where model." 
         						+ propertyName + "= ?";
		 return getHibernateTemplate().find(queryString, value);
      } catch (RuntimeException re) {
         log.error("find by property name failed", re);
         throw re;
      }
	}

	public List findByPic(Object pic
	) {
		return findByProperty(PIC, pic
		);
	}
	
	public List findByPicDescription(Object picDescription
	) {
		return findByProperty(PIC_DESCRIPTION, picDescription
		);
	}
	

	public List findAll() {
		log.debug("finding all TbLandmarkscene instances");
		try {
			String queryString = "from TbLandmarkscene";
		 	return getHibernateTemplate().find(queryString);
		} catch (RuntimeException re) {
			log.error("find all failed", re);
			throw re;
		}
	}
	
    public TbLandmarkscene merge(TbLandmarkscene detachedInstance) {
        log.debug("merging TbLandmarkscene instance");
        try {
            TbLandmarkscene result = (TbLandmarkscene) getHibernateTemplate()
                    .merge(detachedInstance);
            log.debug("merge successful");
            return result;
        } catch (RuntimeException re) {
            log.error("merge failed", re);
            throw re;
        }
    }

    public void attachDirty(TbLandmarkscene instance) {
        log.debug("attaching dirty TbLandmarkscene instance");
        try {
            getHibernateTemplate().saveOrUpdate(instance);
            log.debug("attach successful");
        } catch (RuntimeException re) {
            log.error("attach failed", re);
            throw re;
        }
    }
    
    public void attachClean(TbLandmarkscene instance) {
        log.debug("attaching clean TbLandmarkscene instance");
        try {
            getHibernateTemplate().lock(instance, LockMode.NONE);
            log.debug("attach successful");
        } catch (RuntimeException re) {
            log.error("attach failed", re);
            throw re;
        }
    }

	public static TbLandmarksceneDAO getFromApplicationContext(ApplicationContext ctx) {
    	return (TbLandmarksceneDAO) ctx.getBean("TbLandmarksceneDAO");
	}
}