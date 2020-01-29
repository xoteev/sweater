package com.xoteev.sweater.repos;

import com.xoteev.sweater.domain.User;
import org.springframework.data.jpa.repository.JpaRepository;

public interface UserRepo extends JpaRepository<User, Long> {
    User findByUsername(String username);

    User findByActivationCode(String code);
    /* если нужен запрос
    @Query(value = "SELECT nextval(pg_get_serial_sequence('t_user', 'id'))", nativeQuery = true)
    Long getNextId();
     */
}
