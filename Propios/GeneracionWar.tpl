BEGIN
  UPDATE sim_parametros_war 
    SET valor=0 WHERE nombre='diaGeneracionWar';
  COMMIT;
END;
