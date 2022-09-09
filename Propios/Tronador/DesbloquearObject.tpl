DECLARE 
 v_objeto VARCHAR2(2000):= UPPER('[#]SIM_PCK_PROCESO_DML_EMISION2');
 v_nombre VARCHAR2(2000):= 'SEBASTIAN ALMEIDA';
 v_mail  VARCHAR2(500):= 'jhoan.almeida@segurosbolivar.com';
BEGIN
  sim_pck_control_desarrollo.desbloquearObjeto(v_objeto,v_nombre);
END;
