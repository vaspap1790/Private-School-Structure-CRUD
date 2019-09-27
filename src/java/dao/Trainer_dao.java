package dao;

import java.util.ArrayList;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.transaction.Transactional;
import model.Trainer;
import org.springframework.stereotype.Repository;

@Repository
public class Trainer_dao {

    @PersistenceContext
    private EntityManager em;

    @Transactional
    public void insertTrainer(Trainer trainer) {

        em.persist(trainer);

    }
    
    @Transactional
    public void deleteTrainer(int id) {

        Trainer trainer = em.find(Trainer.class,id);
        em.remove(trainer);

    }
    
    @Transactional
    public void mergeTrainer(Trainer trainer) {

        em.merge(trainer);

    }
    
    @Transactional
    public Trainer findById(int id) {

        Trainer trainer = em.find(Trainer.class,id);
        
        return trainer;
    }
    

    @Transactional
    public ArrayList<Trainer> showAllTrainers() {

        ArrayList<Trainer> trainers = (ArrayList<Trainer>) em.createNamedQuery("Trainer.findAll").getResultList();

        return trainers;
    }

}
