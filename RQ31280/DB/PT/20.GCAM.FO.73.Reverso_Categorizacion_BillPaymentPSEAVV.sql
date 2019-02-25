/*===================================================================================================
  TIPO: delete
-----------------------------------------------------------------------------------------------------
  DESCRIPCION: Eliminacion de los Codigos de  Error.
-----------------------------------------------------------------------------------------------------
  FECHA PLANEADA PRODUCCION: DD/MM/YYYY
-----------------------------------------------------------------------------------------------------
  RESPONSABLE: FABRICA CBIT
-----------------------------------------------------------------------------------------------------
  No. RQ: AAAAA
-----------------------------------------------------------------------------------------------------
  BD AFECTADA: WSRR
-----------------------------------------------------------------------------------------------------
  TABLAS AFECTADAS: MAPPING_CODE
-----------------------------------------------------------------------------------------------------
  ESQUEMA PRUEBAS PT: ORA12IIB10
-----------------------------------------------------------------------------------------------------
  ESQUEMA PRUEBAS QA: ORA12IIB10 
-----------------------------------------------------------------------------------------------------
  ESQUEMA PRODUCCION: ESBCATALOGS  
 -----------------------------------------------------------------------------------------------------
  NOMBRE SERVICIO: BillPaymentPSE
===================================================================================================*/
/*===================================================================================================
  CODIGO FUENTE
===================================================================================================*/
-- ****PRUEBAS TECNICA (PT) Y CALIDAD (QA)****
ALTER SESSION SET CURRENT_SCHEMA=ORA12IIB10;
-- ****PRODUCCIÓN (PROD)****
--ALTER SESSION SET CURRENT_SCHEMA=ESBCATALOGS;

--SELECT SUBSTR(HOST_NAME,1,20) SERVIDOR,	sys_context('USERENV', 'DB_NAME') as Base_Datos, SUBSTR(SYS_CONTEXT('USERENV', 'CURRENT_SCHEMA'),1,20) esquema, SUBSTR(SYS_CONTEXT('USERENV', 'HOST'), 1,20) Nombre_PC, SUBSTR(SYS_CONTEXT('USERENV', 'OS_USER'),1,30) Usuario_SO, SUBSTR(SYS_CONTEXT('USERENV', 'SESSION_USER'),1,20) Usuario_BD, TO_CHAR(SYSDATE,'YYYY-MM-DD HH24:MI:SS') FECHA	FROM V$INSTANCE;

------------------------------------------------------ 
DELETE MAPPING_CODE WHERE BANKID='00010524' AND IFXCODE='0' AND HOSTCODE='0' AND TRANCODE='P_BILLPAYPSEPMT';
DELETE MAPPING_CODE WHERE BANKID='00010524' AND IFXCODE='0' AND HOSTCODE='00' AND TRANCODE='P_BILLPAYPSEPMT';
DELETE MAPPING_CODE WHERE BANKID='00010524' AND IFXCODE='0' AND HOSTCODE='90' AND TRANCODE='P_BILLPAYPSEPMT';
DELETE MAPPING_CODE WHERE BANKID='00010524' AND IFXCODE='1420' AND HOSTCODE='1' AND TRANCODE='P_BILLPAYPSEPMT';
DELETE MAPPING_CODE WHERE BANKID='00010524' AND IFXCODE='2080' AND HOSTCODE='2' AND TRANCODE='P_BILLPAYPSEPMT';
DELETE MAPPING_CODE WHERE BANKID='00010524' AND IFXCODE='3000' AND HOSTCODE='3' AND TRANCODE='P_BILLPAYPSEPMT';
DELETE MAPPING_CODE WHERE BANKID='00010524' AND IFXCODE='200' AND HOSTCODE='4' AND TRANCODE='P_BILLPAYPSEPMT';
DELETE MAPPING_CODE WHERE BANKID='00010524' AND IFXCODE='1050' AND HOSTCODE='5' AND TRANCODE='P_BILLPAYPSEPMT';
DELETE MAPPING_CODE WHERE BANKID='00010524' AND IFXCODE='1050' AND HOSTCODE='11' AND TRANCODE='P_BILLPAYPSEPMT';
DELETE MAPPING_CODE WHERE BANKID='00010524' AND IFXCODE='1050' AND HOSTCODE='13' AND TRANCODE='P_BILLPAYPSEPMT';
DELETE MAPPING_CODE WHERE BANKID='00010524' AND IFXCODE='401' AND HOSTCODE='12' AND TRANCODE='P_BILLPAYPSEPMT';
DELETE MAPPING_CODE WHERE BANKID='00010524' AND IFXCODE='2300' AND HOSTCODE='14' AND TRANCODE='P_BILLPAYPSEPMT';
DELETE MAPPING_CODE WHERE BANKID='00010524' AND IFXCODE='1220' AND HOSTCODE='15' AND TRANCODE='P_BILLPAYPSEPMT';
DELETE MAPPING_CODE WHERE BANKID='00010524' AND IFXCODE='1400' AND HOSTCODE='16' AND TRANCODE='P_BILLPAYPSEPMT';
DELETE MAPPING_CODE WHERE BANKID='00010524' AND IFXCODE='1380' AND HOSTCODE='17' AND TRANCODE='P_BILLPAYPSEPMT';
DELETE MAPPING_CODE WHERE BANKID='00010524' AND IFXCODE='2350' AND HOSTCODE='19' AND TRANCODE='P_BILLPAYPSEPMT';
DELETE MAPPING_CODE WHERE BANKID='00010524' AND IFXCODE='1360' AND HOSTCODE='29' AND TRANCODE='P_BILLPAYPSEPMT';
DELETE MAPPING_CODE WHERE BANKID='00010524' AND IFXCODE='1360' AND HOSTCODE='30' AND TRANCODE='P_BILLPAYPSEPMT';
DELETE MAPPING_CODE WHERE BANKID='00010524' AND IFXCODE='1360' AND HOSTCODE='31' AND TRANCODE='P_BILLPAYPSEPMT';
DELETE MAPPING_CODE WHERE BANKID='00010524' AND IFXCODE='200' AND HOSTCODE='32' AND TRANCODE='P_BILLPAYPSEPMT';
DELETE MAPPING_CODE WHERE BANKID='00010524' AND IFXCODE='1220' AND HOSTCODE='33' AND TRANCODE='P_BILLPAYPSEPMT';
DELETE MAPPING_CODE WHERE BANKID='00010524' AND IFXCODE='2940' AND HOSTCODE='51' AND TRANCODE='P_BILLPAYPSEPMT';
DELETE MAPPING_CODE WHERE BANKID='00010524' AND IFXCODE='3300' AND HOSTCODE='61' AND TRANCODE='P_BILLPAYPSEPMT';
DELETE MAPPING_CODE WHERE BANKID='00010524' AND IFXCODE='2350' AND HOSTCODE='62' AND TRANCODE='P_BILLPAYPSEPMT';
DELETE MAPPING_CODE WHERE BANKID='00010524' AND IFXCODE='2080' AND HOSTCODE='63' AND TRANCODE='P_BILLPAYPSEPMT';
DELETE MAPPING_CODE WHERE BANKID='00010524' AND IFXCODE='1400' AND HOSTCODE='70' AND TRANCODE='P_BILLPAYPSEPMT';
DELETE MAPPING_CODE WHERE BANKID='00010524' AND IFXCODE='1050' AND HOSTCODE='71' AND TRANCODE='P_BILLPAYPSEPMT';
DELETE MAPPING_CODE WHERE BANKID='00010524' AND IFXCODE='1360' AND HOSTCODE='72' AND TRANCODE='P_BILLPAYPSEPMT';
DELETE MAPPING_CODE WHERE BANKID='00010524' AND IFXCODE='1360' AND HOSTCODE='73' AND TRANCODE='P_BILLPAYPSEPMT';
DELETE MAPPING_CODE WHERE BANKID='00010524' AND IFXCODE='3040' AND HOSTCODE='74' AND TRANCODE='P_BILLPAYPSEPMT';
DELETE MAPPING_CODE WHERE BANKID='00010524' AND IFXCODE='1056' AND HOSTCODE='96' AND TRANCODE='P_BILLPAYPSEPMT';
DELETE MAPPING_CODE WHERE BANKID='00010524' AND IFXCODE='700' AND HOSTCODE='99' AND TRANCODE='P_BILLPAYPSEPMT';
DELETE MAPPING_CODE WHERE BANKID='00010524' AND IFXCODE='310' AND HOSTCODE='98' AND TRANCODE='P_BILLPAYPSEPMT';
DELETE MAPPING_CODE WHERE BANKID='00010524' AND IFXCODE='200' AND HOSTCODE='9091' AND TRANCODE='P_BILLPAYPSEPMT';
DELETE MAPPING_CODE WHERE BANKID='00010524' AND IFXCODE='1056' AND HOSTCODE='42' AND TRANCODE='P_BILLPAYPSEPMT';

DELETE MAPPING_CODE WHERE BANKID='00010524' AND IFXCODE='1400' AND HOSTCODE='10' AND TRANCODE='P_BILLPAYPSEPMT';
DELETE MAPPING_CODE WHERE BANKID='00010524' AND IFXCODE='300'  AND HOSTCODE='-12' AND TRANCODE='P_BILLPAYPSEPMT';
DELETE MAPPING_CODE WHERE BANKID='00010524' AND IFXCODE='300'  AND HOSTCODE='20' AND TRANCODE='P_BILLPAYPSEPMT';
DELETE MAPPING_CODE WHERE BANKID='00010524' AND IFXCODE='310'  AND HOSTCODE='21' AND TRANCODE='P_BILLPAYPSEPMT';
DELETE MAPPING_CODE WHERE BANKID='00010524' AND IFXCODE='300'  AND HOSTCODE='22' AND TRANCODE='P_BILLPAYPSEPMT';
DELETE MAPPING_CODE WHERE BANKID='00010524' AND IFXCODE='300' AND HOSTCODE='23' AND TRANCODE='P_BILLPAYPSEPMT';
DELETE MAPPING_CODE WHERE BANKID='00010524' AND IFXCODE='300' AND HOSTCODE='24' AND TRANCODE='P_BILLPAYPSEPMT';
DELETE MAPPING_CODE WHERE BANKID='00010524' AND IFXCODE='300' AND HOSTCODE='25' AND TRANCODE='P_BILLPAYPSEPMT';
DELETE MAPPING_CODE WHERE BANKID='00010524' AND IFXCODE='300' AND HOSTCODE='27' AND TRANCODE='P_BILLPAYPSEPMT';
DELETE MAPPING_CODE WHERE BANKID='00010524' AND IFXCODE='300' AND HOSTCODE='28' AND TRANCODE='P_BILLPAYPSEPMT';
DELETE MAPPING_CODE WHERE BANKID='00010524' AND IFXCODE='300' AND HOSTCODE='34' AND TRANCODE='P_BILLPAYPSEPMT';
DELETE MAPPING_CODE WHERE BANKID='00010524' AND IFXCODE='2400'AND HOSTCODE='35' AND TRANCODE='P_BILLPAYPSEPMT';
DELETE MAPPING_CODE WHERE BANKID='00010524' AND IFXCODE='300' AND HOSTCODE='40' AND TRANCODE='P_BILLPAYPSEPMT';
DELETE MAPPING_CODE WHERE BANKID='00010524' AND IFXCODE='1600'AND HOSTCODE='41' AND TRANCODE='P_BILLPAYPSEPMT';
DELETE MAPPING_CODE WHERE BANKID='00010524' AND IFXCODE='1055'AND HOSTCODE='42' AND TRANCODE='P_BILLPAYPSEPMT';
DELETE MAPPING_CODE WHERE BANKID='00010524' AND IFXCODE='300' AND HOSTCODE='43' AND TRANCODE='P_BILLPAYPSEPMT';
DELETE MAPPING_CODE WHERE BANKID='00010524' AND IFXCODE='2350'AND HOSTCODE='44' AND TRANCODE='P_BILLPAYPSEPMT';
DELETE MAPPING_CODE WHERE BANKID='00010524' AND IFXCODE='300' AND HOSTCODE='45' AND TRANCODE='P_BILLPAYPSEPMT';
DELETE MAPPING_CODE WHERE BANKID='00010524' AND IFXCODE='300' AND HOSTCODE='46' AND TRANCODE='P_BILLPAYPSEPMT';
DELETE MAPPING_CODE WHERE BANKID='00010524' AND IFXCODE='3320'AND HOSTCODE='52' AND TRANCODE='P_BILLPAYPSEPMT';
DELETE MAPPING_CODE WHERE BANKID='00010524' AND IFXCODE='300' AND HOSTCODE='53' AND TRANCODE='P_BILLPAYPSEPMT';
DELETE MAPPING_CODE WHERE BANKID='00010524' AND IFXCODE='300' AND HOSTCODE='54' AND TRANCODE='P_BILLPAYPSEPMT';
DELETE MAPPING_CODE WHERE BANKID='00010524' AND IFXCODE='300' AND HOSTCODE='55' AND TRANCODE='P_BILLPAYPSEPMT';
DELETE MAPPING_CODE WHERE BANKID='00010524' AND IFXCODE='300' AND HOSTCODE='56' AND TRANCODE='P_BILLPAYPSEPMT';
DELETE MAPPING_CODE WHERE BANKID='00010524' AND IFXCODE='300' AND HOSTCODE='57' AND TRANCODE='P_BILLPAYPSEPMT';
DELETE MAPPING_CODE WHERE BANKID='00010524' AND IFXCODE='300' AND HOSTCODE='58' AND TRANCODE='P_BILLPAYPSEPMT';
DELETE MAPPING_CODE WHERE BANKID='00010524' AND IFXCODE='2300'AND HOSTCODE='6' AND TRANCODE='P_BILLPAYPSEPMT';

DELETE MAPPING_CODE WHERE TRANCODE IN ('P_BILLPAYPSEPMT') AND BANKID IN ('00010524') AND IFXCODE ='700' AND HOSTCODE='2667';
DELETE MAPPING_CODE WHERE TRANCODE IN ('P_BILLPAYPSEPMT') AND BANKID IN ('00010524') AND IFXCODE ='700' AND HOSTCODE='2666';
DELETE MAPPING_CODE WHERE TRANCODE IN ('P_BILLPAYPSEPMT') AND BANKID IN ('00010524') AND IFXCODE ='300' AND HOSTCODE='300';
DELETE MAPPING_CODE WHERE TRANCODE IN ('P_BILLPAYPSEPMT') AND BANKID IN ('00010524') AND IFXCODE ='300' AND HOSTCODE='env:Server';
DELETE MAPPING_CODE WHERE TRANCODE IN ('P_BILLPAYPSEPMT') AND BANKID IN ('00010524') AND IFXCODE ='300' AND HOSTCODE='env:Client';
DELETE MAPPING_CODE WHERE TRANCODE IN ('P_BILLPAYPSEPMT') AND BANKID IN ('00010524') AND IFXCODE ='700' AND HOSTCODE='700';
DELETE MAPPING_CODE WHERE TRANCODE IN ('P_BILLPAYPSEPMT') AND BANKID IN ('00010524') AND IFXCODE ='200' AND HOSTCODE='200';
DELETE MAPPING_CODE WHERE TRANCODE IN ('P_BILLPAYPSEPMT') AND BANKID IN ('00010524') AND IFXCODE ='400' AND HOSTCODE='400';
DELETE MAPPING_CODE WHERE TRANCODE IN ('P_BILLPAYPSEPMT') AND BANKID IN ('00010524') AND IFXCODE ='600' AND HOSTCODE='5025';
DELETE MAPPING_CODE WHERE TRANCODE IN ('P_BILLPAYPSEPMT') AND BANKID IN ('00010524') AND IFXCODE ='600' AND HOSTCODE='5004';
DELETE MAPPING_CODE WHERE TRANCODE IN ('P_BILLPAYPSEPMT') AND BANKID IN ('00010524') AND IFXCODE ='710' AND HOSTCODE='710';
DELETE MAPPING_CODE WHERE TRANCODE IN ('P_BILLPAYPSEPMT') AND BANKID IN ('00010524') AND IFXCODE ='300' AND HOSTCODE='3701';
DELETE MAPPING_CODE WHERE TRANCODE IN ('P_BILLPAYPSEPMT') AND BANKID IN ('00010524') AND IFXCODE ='300' AND HOSTCODE='3151';
DELETE MAPPING_CODE WHERE TRANCODE IN ('P_BILLPAYPSEPMT') AND BANKID IN ('00010524') AND IFXCODE ='600' AND HOSTCODE='5025';

DELETE ACCTTYPE WHERE BANKID='00010524' AND TRANCODE='P_BILLPAYPSEPMT' AND EPID ='1';
DELETE ACCTTYPE WHERE BANKID='00010524' AND TRANCODE='P_BILLPAYPSEPMT' AND EPID ='2';
DELETE ACCTTYPE WHERE BANKID='00010524' AND TRANCODE='P_BILLPAYPSEPMT' AND EPID ='6';

DELETE CUSTIDTYPE WHERE BANKID = '00010524' AND TRANCODE='P_BILLPAYPSEPMT' AND EPID='1';
DELETE CUSTIDTYPE WHERE BANKID = '00010524' AND TRANCODE='P_BILLPAYPSEPMT' AND EPID='5';
DELETE CUSTIDTYPE WHERE BANKID = '00010524' AND TRANCODE='P_BILLPAYPSEPMT' AND EPID='6';
DELETE CUSTIDTYPE WHERE BANKID = '00010524' AND TRANCODE='P_BILLPAYPSEPMT' AND EPID='4';
DELETE CUSTIDTYPE WHERE BANKID = '00010524' AND TRANCODE='P_BILLPAYPSEPMT' AND EPID='2';
COMMIT;