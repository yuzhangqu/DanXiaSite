package com.dx.dao;

import java.util.List;

import org.hibernate.LockMode;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.context.ApplicationContext;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.dx.bean.TbGeologyscene;

/**
 	* A data access object (DAO) providing persistence and search support for TbGeologyscene entities.
 			* Transaction control of the save(), update() and delete() operations 
		can directly support Spring container-managed transactions or they can be augmented	to handle user-managed Spring transactions. 
		Each of these methods provides additional information for how to configure it for the desired type of transaction control. 	
	 * @see com.dx.dao.TbGeologyscene
  * @author MyEclipse Persistence Tools 
 */

public class TbGeologysceneDAO extends HibernateDaoSupport  {
	     private static final Logger log = LoggerFactory.getLogger(TbGeologysceneDAO.class);
		//property constants
	public static final String PIC = "pic";
	public static final String PIC_DESCRIPTION = "picDescription";



	protected void initDao() {
		//do nothing
	}
    
    public void save(TbGeologyscene transientInstance) {
        log.debug("saving TbGeologyscene instance");
        try {
            getHibernateTemplate().save(transientInstance);
            log.debug("save successful");
        } catch (RuntimeException re) {
            log.error("save failed", re);
            throw re;
        }
    }
    
	public void delete(TbGeologyscene persistentInstance) {
        log.debug("deleting TbGeologyscene instance");
        try {
            getHibernateTemplate().delete(persistentInstance);
            log.debug("delete successful");
        } catch (RuntimeException re) {
            log.error("delete failed", re);
            throw re;
        }
    }
    
    public TbGeologyscene findById( java.lang.Integer id) {
        log.debug("getting TbGeologyscene instance with id: " + id);
        try {
            TbGeologyscene instance = (TbGeologyscene) getHibernateTemplate()
                    .get("com.dx.dao.TbGeologyscene", id);
            return instance;
        } catch (RuntimeException re) {
            log.error("get failed", re);
            throw re;
        }
    }
    
    
    public List findByExample(TbGeologyscene instance) {
        log.debug("finding TbGeologyscene instance by example");
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
      log.debug("finding TbGeologyscene instance with property: " + propertyName
            + ", value: " + value);
      try {
         String queryString = "from TbGeologyscene as model where model." 
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
		log.debug("finding all TbGeologyscene instances");
		try {
			String queryString = "from TbGeologyscene";
		 	return getHibernateTemplate().find(queryString);
		} catch (RuntimeException re) {
			log.error("find all failed", re);
			throw re;
		}
	}
	
    public TbGeologyscene merge(TbGeologyscene detachedInstance) {
        log.debug("merging TbGeologyscene instance");
        try {
            TbGeologyscene result = (TbGeologyscene) getHibernateTemplate()
                    .merge(detachedInstance);
            log.debug("merge successful");
            return result;
        } catch (RuntimeException re) {
            log.error("merge failed", re);
            throw re;
        }
    }

    public void attachDirty(TbGeologyscene instance) {
        log.debug("attaching dirty TbGeologyscene instance");
        try {
            getHibernateTemplate().saveOrUpdate(instance);
            log.debug("attach successful");
        } catch (RuntimeException re) {
            log.error("attach failed", re);
            throw re;
        }
    }
    
    public void attachClean(TbGeologyscene instance) {
        log.debug("attaching clean TbGeologyscene instance");
        try {
            getHibernateTemplate().lock(instance, LockMode.NONE);
            log.debug("attach successful");
        } catch (RuntimeException re) {
            log.error("attach failed", re);
            throw re;
        }
    }

	public static TbGeologysceneDAO getFromApplicationContext(ApplicationContext ctx) {
    	return (TbGeologysceneDAO) ctx.getBean("TbGeologysceneDAO");
	}
}