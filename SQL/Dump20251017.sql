CREATE DATABASE  IF NOT EXISTS `camunda` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `camunda`;
-- MySQL dump 10.13  Distrib 8.0.32, for Win64 (x86_64)
--
-- Host: localhost    Database: camunda
-- ------------------------------------------------------
-- Server version	8.0.32

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `act_ge_bytearray`
--

DROP TABLE IF EXISTS `act_ge_bytearray`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `act_ge_bytearray` (
  `ID_` varchar(64) COLLATE utf8mb3_bin NOT NULL,
  `REV_` int DEFAULT NULL,
  `NAME_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `DEPLOYMENT_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `BYTES_` longblob,
  `GENERATED_` tinyint DEFAULT NULL,
  `TENANT_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `TYPE_` int DEFAULT NULL,
  `CREATE_TIME_` datetime DEFAULT NULL,
  `ROOT_PROC_INST_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `REMOVAL_TIME_` datetime DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  KEY `ACT_FK_BYTEARR_DEPL` (`DEPLOYMENT_ID_`),
  KEY `ACT_IDX_BYTEARRAY_ROOT_PI` (`ROOT_PROC_INST_ID_`),
  KEY `ACT_IDX_BYTEARRAY_RM_TIME` (`REMOVAL_TIME_`),
  KEY `ACT_IDX_BYTEARRAY_NAME` (`NAME_`),
  CONSTRAINT `ACT_FK_BYTEARR_DEPL` FOREIGN KEY (`DEPLOYMENT_ID_`) REFERENCES `act_re_deployment` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_ge_bytearray`
--

LOCK TABLES `act_ge_bytearray` WRITE;
/*!40000 ALTER TABLE `act_ge_bytearray` DISABLE KEYS */;
INSERT INTO `act_ge_bytearray` VALUES ('11ec82f8-a8cd-11f0-821c-00059a3c7a00',1,'D:\\Downloads_Chrome\\my-learning\\my-learning\\target\\classes\\process.bpmn','11eb9897-a8cd-11f0-821c-00059a3c7a00',_binary '<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<bpmn:definitions xmlns:bpmn=\"http://www.omg.org/spec/BPMN/20100524/MODEL\" xmlns:bpmndi=\"http://www.omg.org/spec/BPMN/20100524/DI\" xmlns:dc=\"http://www.omg.org/spec/DD/20100524/DC\" xmlns:di=\"http://www.omg.org/spec/DD/20100524/DI\" xmlns:camunda=\"http://camunda.org/schema/1.0/bpmn\" id=\"Definitions_0fr9mxs\" targetNamespace=\"http://bpmn.io/schema/bpmn\">\n  <bpmn:process id=\"my-learning-process\" isExecutable=\"true\" camunda:historyTimeToLive=\"180\">\n    <bpmn:startEvent id=\"StartEvent_1\">\n      <bpmn:outgoing>SequenceFlow_1fp17al</bpmn:outgoing>\n    </bpmn:startEvent>\n    <bpmn:sequenceFlow id=\"SequenceFlow_1fp17al\" sourceRef=\"StartEvent_1\" targetRef=\"say-hello\" />\n    <bpmn:endEvent id=\"EndEvent_0x6ir2l\">\n      <bpmn:incoming>SequenceFlow_16gzt2m</bpmn:incoming>\n    </bpmn:endEvent>\n    <bpmn:sequenceFlow id=\"SequenceFlow_16gzt2m\" sourceRef=\"say-hello\" targetRef=\"EndEvent_0x6ir2l\" />\n    <bpmn:userTask id=\"say-hello\" name=\"Say hello to&#10;admin\" camunda:candidateUsers=\"admin\">\n      <bpmn:incoming>SequenceFlow_1fp17al</bpmn:incoming>\n      <bpmn:outgoing>SequenceFlow_16gzt2m</bpmn:outgoing>\n    </bpmn:userTask>\n  </bpmn:process>\n  <bpmndi:BPMNDiagram id=\"BPMNDiagram_1\">\n    <bpmndi:BPMNPlane id=\"BPMNPlane_1\" bpmnElement=\"my-learning-process\">\n      <bpmndi:BPMNShape id=\"_BPMNShape_StartEvent_2\" bpmnElement=\"StartEvent_1\">\n        <dc:Bounds x=\"179\" y=\"99\" width=\"36\" height=\"36\" />\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape id=\"EndEvent_0x6ir2l_di\" bpmnElement=\"EndEvent_0x6ir2l\">\n        <dc:Bounds x=\"432\" y=\"99\" width=\"36\" height=\"36\" />\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape id=\"UserTask_08mft2c_di\" bpmnElement=\"say-hello\">\n        <dc:Bounds x=\"270\" y=\"77\" width=\"100\" height=\"80\" />\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNEdge id=\"SequenceFlow_1fp17al_di\" bpmnElement=\"SequenceFlow_1fp17al\">\n        <di:waypoint x=\"215\" y=\"117\" />\n        <di:waypoint x=\"270\" y=\"117\" />\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge id=\"SequenceFlow_16gzt2m_di\" bpmnElement=\"SequenceFlow_16gzt2m\">\n        <di:waypoint x=\"370\" y=\"117\" />\n        <di:waypoint x=\"432\" y=\"117\" />\n      </bpmndi:BPMNEdge>\n    </bpmndi:BPMNPlane>\n  </bpmndi:BPMNDiagram>\n</bpmn:definitions>\n',0,NULL,1,'2025-10-14 07:11:57',NULL,NULL),('11ecaa09-a8cd-11f0-821c-00059a3c7a00',1,'D:\\Downloads_Chrome\\my-learning\\my-learning\\target\\classes\\welcome.bpmn','11eb9897-a8cd-11f0-821c-00059a3c7a00',_binary '<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<bpmn:definitions xmlns:bpmn=\"http://www.omg.org/spec/BPMN/20100524/MODEL\" xmlns:bpmndi=\"http://www.omg.org/spec/BPMN/20100524/DI\" xmlns:dc=\"http://www.omg.org/spec/DD/20100524/DC\" xmlns:camunda=\"http://camunda.org/schema/1.0/bpmn\" xmlns:di=\"http://www.omg.org/spec/DD/20100524/DI\" xmlns:modeler=\"http://camunda.org/schema/modeler/1.0\" id=\"Definitions_0w3zl5m\" targetNamespace=\"http://bpmn.io/schema/bpmn\" exporter=\"Camunda Modeler\" exporterVersion=\"5.37.0\" modeler:executionPlatform=\"Camunda Platform\" modeler:executionPlatformVersion=\"7.23.0\">\n  <bpmn:process id=\"welcome_process_id\" name=\"Welcome_Process\" isExecutable=\"true\" camunda:historyTimeToLive=\"100\">\n    <bpmn:startEvent id=\"Event_1yyqk5z\">\n      <bpmn:outgoing>Flow_0xrg9fo</bpmn:outgoing>\n    </bpmn:startEvent>\n    <bpmn:sequenceFlow id=\"Flow_0xrg9fo\" sourceRef=\"Event_1yyqk5z\" targetRef=\"Activity_10bnpdy\" />\n    <bpmn:endEvent id=\"Event_1tqbdzf\">\n      <bpmn:incoming>Flow_1g5ws19</bpmn:incoming>\n    </bpmn:endEvent>\n    <bpmn:sequenceFlow id=\"Flow_1g5ws19\" sourceRef=\"Activity_10bnpdy\" targetRef=\"Event_1tqbdzf\" />\n    <bpmn:serviceTask id=\"Activity_10bnpdy\" name=\"Welcome Message\" camunda:class=\"com.learn.delegates.Welcome\">\n      <bpmn:incoming>Flow_0xrg9fo</bpmn:incoming>\n      <bpmn:outgoing>Flow_1g5ws19</bpmn:outgoing>\n    </bpmn:serviceTask>\n  </bpmn:process>\n  <bpmndi:BPMNDiagram id=\"BPMNDiagram_1\">\n    <bpmndi:BPMNPlane id=\"BPMNPlane_1\" bpmnElement=\"welcome_process_id\">\n      <bpmndi:BPMNShape id=\"Event_1yyqk5z_di\" bpmnElement=\"Event_1yyqk5z\">\n        <dc:Bounds x=\"152\" y=\"102\" width=\"36\" height=\"36\" />\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape id=\"Event_1tqbdzf_di\" bpmnElement=\"Event_1tqbdzf\">\n        <dc:Bounds x=\"392\" y=\"102\" width=\"36\" height=\"36\" />\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape id=\"Activity_1mzzpxn_di\" bpmnElement=\"Activity_10bnpdy\">\n        <dc:Bounds x=\"240\" y=\"80\" width=\"100\" height=\"80\" />\n        <bpmndi:BPMNLabel />\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNEdge id=\"Flow_0xrg9fo_di\" bpmnElement=\"Flow_0xrg9fo\">\n        <di:waypoint x=\"188\" y=\"120\" />\n        <di:waypoint x=\"240\" y=\"120\" />\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge id=\"Flow_1g5ws19_di\" bpmnElement=\"Flow_1g5ws19\">\n        <di:waypoint x=\"340\" y=\"120\" />\n        <di:waypoint x=\"392\" y=\"120\" />\n      </bpmndi:BPMNEdge>\n    </bpmndi:BPMNPlane>\n  </bpmndi:BPMNDiagram>\n</bpmn:definitions>\n',0,NULL,1,'2025-10-14 07:11:57',NULL,NULL),('2ffe60e6-a8cc-11f0-b9fd-00059a3c7a00',1,'D:\\Downloads_Chrome\\my-learning\\my-learning\\target\\classes\\process.bpmn','2ffdc4a5-a8cc-11f0-b9fd-00059a3c7a00',_binary '<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<bpmn:definitions xmlns:bpmn=\"http://www.omg.org/spec/BPMN/20100524/MODEL\" xmlns:bpmndi=\"http://www.omg.org/spec/BPMN/20100524/DI\" xmlns:dc=\"http://www.omg.org/spec/DD/20100524/DC\" xmlns:di=\"http://www.omg.org/spec/DD/20100524/DI\" xmlns:camunda=\"http://camunda.org/schema/1.0/bpmn\" id=\"Definitions_0fr9mxs\" targetNamespace=\"http://bpmn.io/schema/bpmn\">\n  <bpmn:process id=\"my-learning-process\" isExecutable=\"true\" camunda:historyTimeToLive=\"180\">\n    <bpmn:startEvent id=\"StartEvent_1\">\n      <bpmn:outgoing>SequenceFlow_1fp17al</bpmn:outgoing>\n    </bpmn:startEvent>\n    <bpmn:sequenceFlow id=\"SequenceFlow_1fp17al\" sourceRef=\"StartEvent_1\" targetRef=\"say-hello\" />\n    <bpmn:endEvent id=\"EndEvent_0x6ir2l\">\n      <bpmn:incoming>SequenceFlow_16gzt2m</bpmn:incoming>\n    </bpmn:endEvent>\n    <bpmn:sequenceFlow id=\"SequenceFlow_16gzt2m\" sourceRef=\"say-hello\" targetRef=\"EndEvent_0x6ir2l\" />\n    <bpmn:userTask id=\"say-hello\" name=\"Say hello to&#10;admin\" camunda:candidateUsers=\"admin\">\n      <bpmn:incoming>SequenceFlow_1fp17al</bpmn:incoming>\n      <bpmn:outgoing>SequenceFlow_16gzt2m</bpmn:outgoing>\n    </bpmn:userTask>\n  </bpmn:process>\n  <bpmndi:BPMNDiagram id=\"BPMNDiagram_1\">\n    <bpmndi:BPMNPlane id=\"BPMNPlane_1\" bpmnElement=\"my-learning-process\">\n      <bpmndi:BPMNShape id=\"_BPMNShape_StartEvent_2\" bpmnElement=\"StartEvent_1\">\n        <dc:Bounds x=\"179\" y=\"99\" width=\"36\" height=\"36\" />\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape id=\"EndEvent_0x6ir2l_di\" bpmnElement=\"EndEvent_0x6ir2l\">\n        <dc:Bounds x=\"432\" y=\"99\" width=\"36\" height=\"36\" />\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape id=\"UserTask_08mft2c_di\" bpmnElement=\"say-hello\">\n        <dc:Bounds x=\"270\" y=\"77\" width=\"100\" height=\"80\" />\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNEdge id=\"SequenceFlow_1fp17al_di\" bpmnElement=\"SequenceFlow_1fp17al\">\n        <di:waypoint x=\"215\" y=\"117\" />\n        <di:waypoint x=\"270\" y=\"117\" />\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge id=\"SequenceFlow_16gzt2m_di\" bpmnElement=\"SequenceFlow_16gzt2m\">\n        <di:waypoint x=\"370\" y=\"117\" />\n        <di:waypoint x=\"432\" y=\"117\" />\n      </bpmndi:BPMNEdge>\n    </bpmndi:BPMNPlane>\n  </bpmndi:BPMNDiagram>\n</bpmn:definitions>\n',0,NULL,1,'2025-10-14 07:05:38',NULL,NULL),('331fda11-ab3f-11f0-a68d-00059a3c7a00',1,'LoginProcess.bpmn','331fda10-ab3f-11f0-a68d-00059a3c7a00',_binary '<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<bpmn:definitions xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\" xmlns:bpmn=\"http://www.omg.org/spec/BPMN/20100524/MODEL\" xmlns:bpmndi=\"http://www.omg.org/spec/BPMN/20100524/DI\" xmlns:dc=\"http://www.omg.org/spec/DD/20100524/DC\" xmlns:di=\"http://www.omg.org/spec/DD/20100524/DI\" xmlns:camunda=\"http://camunda.org/schema/1.0/bpmn\" id=\"Definitions_1\" targetNamespace=\"http://bpmn.io/schema/bpmn\" exporter=\"Camunda Modeler\" exporterVersion=\"5.40.0\">\n  <bpmn:process id=\"LoginProcess\" name=\"Login Process\" isExecutable=\"true\" camunda:historyTimeToLive=\"10\">\n    <bpmn:startEvent id=\"StartEvent_1\" name=\"Start Login\">\n      <bpmn:outgoing>Flow_1</bpmn:outgoing>\n    </bpmn:startEvent>\n    <bpmn:userTask id=\"Activity_ShowLoginForm\" name=\"Show Login Form\" camunda:formKey=\"login\">\n      <bpmn:incoming>Flow_1</bpmn:incoming>\n      <bpmn:outgoing>Flow_2</bpmn:outgoing>\n    </bpmn:userTask>\n    <bpmn:serviceTask id=\"Activity_ValidateCredentials\" name=\"Validate Credentials\" camunda:type=\"external\" camunda:topic=\"validate-login\">\n      <bpmn:incoming>Flow_2</bpmn:incoming>\n      <bpmn:outgoing>Flow_3</bpmn:outgoing>\n    </bpmn:serviceTask>\n    <bpmn:exclusiveGateway id=\"Gateway_LoginResult\" name=\"Is Login Valid?\">\n      <bpmn:incoming>Flow_3</bpmn:incoming>\n      <bpmn:outgoing>Flow_4</bpmn:outgoing>\n      <bpmn:outgoing>Flow_5</bpmn:outgoing>\n    </bpmn:exclusiveGateway>\n    <bpmn:endEvent id=\"Event_Success\" name=\"Login Success\">\n      <bpmn:incoming>Flow_4</bpmn:incoming>\n    </bpmn:endEvent>\n    <bpmn:userTask id=\"Activity_ShowRegistrationForm\" name=\"Show Registration Form\" camunda:formKey=\"register\">\n      <bpmn:incoming>Flow_5</bpmn:incoming>\n      <bpmn:outgoing>Flow_6</bpmn:outgoing>\n    </bpmn:userTask>\n    <bpmn:serviceTask id=\"Activity_CreateUser\" name=\"Create User\" camunda:type=\"external\" camunda:topic=\"create-user\">\n      <bpmn:incoming>Flow_6</bpmn:incoming>\n      <bpmn:outgoing>Flow_7</bpmn:outgoing>\n    </bpmn:serviceTask>\n    <bpmn:endEvent id=\"Event_RegistrationSuccess\" name=\"Registration Success\">\n      <bpmn:incoming>Flow_7</bpmn:incoming>\n    </bpmn:endEvent>\n    <bpmn:sequenceFlow id=\"Flow_1\" sourceRef=\"StartEvent_1\" targetRef=\"Activity_ShowLoginForm\" />\n    <bpmn:sequenceFlow id=\"Flow_2\" sourceRef=\"Activity_ShowLoginForm\" targetRef=\"Activity_ValidateCredentials\" />\n    <bpmn:sequenceFlow id=\"Flow_3\" sourceRef=\"Activity_ValidateCredentials\" targetRef=\"Gateway_LoginResult\" />\n    <bpmn:sequenceFlow id=\"Flow_4\" sourceRef=\"Gateway_LoginResult\" targetRef=\"Event_Success\">\n      <bpmn:conditionExpression xsi:type=\"bpmn:tFormalExpression\">${valid}</bpmn:conditionExpression>\n    </bpmn:sequenceFlow>\n    <bpmn:sequenceFlow id=\"Flow_5\" sourceRef=\"Gateway_LoginResult\" targetRef=\"Activity_ShowRegistrationForm\">\n      <bpmn:conditionExpression xsi:type=\"bpmn:tFormalExpression\">${!valid}</bpmn:conditionExpression>\n    </bpmn:sequenceFlow>\n    <bpmn:sequenceFlow id=\"Flow_6\" sourceRef=\"Activity_ShowRegistrationForm\" targetRef=\"Activity_CreateUser\" />\n    <bpmn:sequenceFlow id=\"Flow_7\" sourceRef=\"Activity_CreateUser\" targetRef=\"Event_RegistrationSuccess\" />\n  </bpmn:process>\n  <bpmndi:BPMNDiagram id=\"BPMNDiagram_1\">\n    <bpmndi:BPMNPlane id=\"BPMNPlane_1\" bpmnElement=\"LoginProcess\">\n      <bpmndi:BPMNShape id=\"StartEvent_1_di\" bpmnElement=\"StartEvent_1\">\n        <dc:Bounds x=\"160\" y=\"150\" width=\"36\" height=\"36\" />\n        <bpmndi:BPMNLabel>\n          <dc:Bounds x=\"151\" y=\"203\" width=\"54\" height=\"14\" />\n        </bpmndi:BPMNLabel>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape id=\"Activity_ShowLoginForm_di\" bpmnElement=\"Activity_ShowLoginForm\">\n        <dc:Bounds x=\"260\" y=\"130\" width=\"100\" height=\"80\" />\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape id=\"Activity_ValidateCredentials_di\" bpmnElement=\"Activity_ValidateCredentials\">\n        <dc:Bounds x=\"420\" y=\"130\" width=\"100\" height=\"80\" />\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape id=\"Gateway_LoginResult_di\" bpmnElement=\"Gateway_LoginResult\" isMarkerVisible=\"true\">\n        <dc:Bounds x=\"570\" y=\"145\" width=\"50\" height=\"50\" />\n        <bpmndi:BPMNLabel>\n          <dc:Bounds x=\"550\" y=\"113\" width=\"90\" height=\"14\" />\n        </bpmndi:BPMNLabel>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape id=\"Event_Success_di\" bpmnElement=\"Event_Success\">\n        <dc:Bounds x=\"732\" y=\"72\" width=\"36\" height=\"36\" />\n        <bpmndi:BPMNLabel>\n          <dc:Bounds x=\"713\" y=\"113\" width=\"73\" height=\"14\" />\n        </bpmndi:BPMNLabel>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape id=\"Activity_ShowRegistrationForm_di\" bpmnElement=\"Activity_ShowRegistrationForm\">\n        <dc:Bounds x=\"730\" y=\"220\" width=\"100\" height=\"80\" />\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape id=\"Activity_CreateUser_di\" bpmnElement=\"Activity_CreateUser\">\n        <dc:Bounds x=\"890\" y=\"220\" width=\"100\" height=\"80\" />\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape id=\"Event_RegistrationSuccess_di\" bpmnElement=\"Event_RegistrationSuccess\">\n        <dc:Bounds x=\"1052\" y=\"242\" width=\"36\" height=\"36\" />\n        <bpmndi:BPMNLabel>\n          <dc:Bounds x=\"1027\" y=\"283\" width=\"86\" height=\"27\" />\n        </bpmndi:BPMNLabel>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNEdge id=\"Flow_1_di\" bpmnElement=\"Flow_1\">\n        <di:waypoint x=\"196\" y=\"168\" />\n        <di:waypoint x=\"260\" y=\"168\" />\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge id=\"Flow_2_di\" bpmnElement=\"Flow_2\">\n        <di:waypoint x=\"360\" y=\"170\" />\n        <di:waypoint x=\"420\" y=\"170\" />\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge id=\"Flow_3_di\" bpmnElement=\"Flow_3\">\n        <di:waypoint x=\"520\" y=\"170\" />\n        <di:waypoint x=\"570\" y=\"170\" />\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge id=\"Flow_4_di\" bpmnElement=\"Flow_4\">\n        <di:waypoint x=\"595\" y=\"145\" />\n        <di:waypoint x=\"595\" y=\"90\" />\n        <di:waypoint x=\"732\" y=\"90\" />\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge id=\"Flow_5_di\" bpmnElement=\"Flow_5\">\n        <di:waypoint x=\"595\" y=\"195\" />\n        <di:waypoint x=\"595\" y=\"260\" />\n        <di:waypoint x=\"730\" y=\"260\" />\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge id=\"Flow_6_di\" bpmnElement=\"Flow_6\">\n        <di:waypoint x=\"830\" y=\"260\" />\n        <di:waypoint x=\"890\" y=\"260\" />\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge id=\"Flow_7_di\" bpmnElement=\"Flow_7\">\n        <di:waypoint x=\"990\" y=\"260\" />\n        <di:waypoint x=\"1052\" y=\"260\" />\n      </bpmndi:BPMNEdge>\n    </bpmndi:BPMNPlane>\n  </bpmndi:BPMNDiagram>\n</bpmn:definitions>',0,NULL,1,'2025-10-17 09:53:58',NULL,NULL),('3a38fa9d-a8cd-11f0-821c-00059a3c7a00',1,'welcome.bpmn','3a38fa9c-a8cd-11f0-821c-00059a3c7a00',_binary '<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<bpmn:definitions xmlns:bpmn=\"http://www.omg.org/spec/BPMN/20100524/MODEL\" xmlns:bpmndi=\"http://www.omg.org/spec/BPMN/20100524/DI\" xmlns:dc=\"http://www.omg.org/spec/DD/20100524/DC\" xmlns:camunda=\"http://camunda.org/schema/1.0/bpmn\" xmlns:di=\"http://www.omg.org/spec/DD/20100524/DI\" xmlns:modeler=\"http://camunda.org/schema/modeler/1.0\" id=\"Definitions_0w3zl5m\" targetNamespace=\"http://bpmn.io/schema/bpmn\" exporter=\"Camunda Modeler\" exporterVersion=\"5.37.0\" modeler:executionPlatform=\"Camunda Platform\" modeler:executionPlatformVersion=\"7.23.0\">\n  <bpmn:process id=\"welcome_process_id\" name=\"Welcome_Process\" isExecutable=\"true\" camunda:historyTimeToLive=\"100\">\n    <bpmn:startEvent id=\"Event_1yyqk5z\">\n      <bpmn:outgoing>Flow_0xrg9fo</bpmn:outgoing>\n    </bpmn:startEvent>\n    <bpmn:sequenceFlow id=\"Flow_0xrg9fo\" sourceRef=\"Event_1yyqk5z\" targetRef=\"Activity_10bnpdy\" />\n    <bpmn:endEvent id=\"Event_1tqbdzf\">\n      <bpmn:incoming>Flow_1g5ws19</bpmn:incoming>\n    </bpmn:endEvent>\n    <bpmn:sequenceFlow id=\"Flow_1g5ws19\" sourceRef=\"Activity_10bnpdy\" targetRef=\"Event_1tqbdzf\" />\n    <bpmn:serviceTask id=\"Activity_10bnpdy\" name=\"Welcome Message\" camunda:class=\"com.learn.delegates.Welcome\">\n      <bpmn:incoming>Flow_0xrg9fo</bpmn:incoming>\n      <bpmn:outgoing>Flow_1g5ws19</bpmn:outgoing>\n    </bpmn:serviceTask>\n  </bpmn:process>\n  <bpmndi:BPMNDiagram id=\"BPMNDiagram_1\">\n    <bpmndi:BPMNPlane id=\"BPMNPlane_1\" bpmnElement=\"welcome_process_id\">\n      <bpmndi:BPMNShape id=\"Event_1yyqk5z_di\" bpmnElement=\"Event_1yyqk5z\">\n        <dc:Bounds x=\"152\" y=\"102\" width=\"36\" height=\"36\" />\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape id=\"Event_1tqbdzf_di\" bpmnElement=\"Event_1tqbdzf\">\n        <dc:Bounds x=\"392\" y=\"102\" width=\"36\" height=\"36\" />\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape id=\"Activity_1mzzpxn_di\" bpmnElement=\"Activity_10bnpdy\">\n        <dc:Bounds x=\"240\" y=\"80\" width=\"100\" height=\"80\" />\n        <bpmndi:BPMNLabel />\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNEdge id=\"Flow_0xrg9fo_di\" bpmnElement=\"Flow_0xrg9fo\">\n        <di:waypoint x=\"188\" y=\"120\" />\n        <di:waypoint x=\"240\" y=\"120\" />\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge id=\"Flow_1g5ws19_di\" bpmnElement=\"Flow_1g5ws19\">\n        <di:waypoint x=\"340\" y=\"120\" />\n        <di:waypoint x=\"392\" y=\"120\" />\n      </bpmndi:BPMNEdge>\n    </bpmndi:BPMNPlane>\n  </bpmndi:BPMNDiagram>\n</bpmn:definitions>\n',0,NULL,1,'2025-10-14 07:13:05',NULL,NULL),('5a15248d-aab6-11f0-988e-00059a3c7a00',1,'LoginProcess.bpmn','5a15248c-aab6-11f0-988e-00059a3c7a00',_binary '<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<bpmn:definitions xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\"\n                  xmlns:bpmn=\"http://www.omg.org/spec/BPMN/20100524/MODEL\"\n                  xmlns:bpmndi=\"http://www.omg.org/spec/BPMN/20100524/DI\"\n                  xmlns:dc=\"http://www.omg.org/spec/DD/20100524/DC\"\n                  xmlns:di=\"http://www.omg.org/spec/DD/20100524/DI\"\n                  xmlns:camunda=\"http://camunda.org/schema/1.0/bpmn\"\n                  id=\"Definitions_1\"\n                  targetNamespace=\"http://bpmn.io/schema/bpmn\"\n                  exporter=\"Camunda Modeler\"\n                  exporterVersion=\"3.14.0\">\n\n  <bpmn:process id=\"LoginProcess\" name=\"Login Process\" isExecutable=\"true\" camunda:historyTimeToLive=\"10\">\n    <bpmn:startEvent id=\"StartEvent_1\" name=\"Start Login\">\n      <bpmn:outgoing>Flow_1</bpmn:outgoing>\n    </bpmn:startEvent>\n\n    <bpmn:serviceTask id=\"Activity_ValidateCredentials\" name=\"Validate Credentials\"\n                      camunda:type=\"external\"\n                      camunda:topic=\"validate-login\">\n      <bpmn:incoming>Flow_1</bpmn:incoming>\n      <bpmn:outgoing>Flow_2</bpmn:outgoing>\n    </bpmn:serviceTask>\n\n    <bpmn:exclusiveGateway id=\"Gateway_LoginResult\" name=\"Is Login Valid?\">\n      <bpmn:incoming>Flow_2</bpmn:incoming>\n      <bpmn:outgoing>Flow_3</bpmn:outgoing>\n      <bpmn:outgoing>Flow_4</bpmn:outgoing>\n    </bpmn:exclusiveGateway>\n\n    <bpmn:endEvent id=\"Event_Success\" name=\"Login Success\">\n      <bpmn:incoming>Flow_3</bpmn:incoming>\n    </bpmn:endEvent>\n\n    <bpmn:endEvent id=\"Event_Error\" name=\"Login Failed\">\n      <bpmn:incoming>Flow_4</bpmn:incoming>\n    </bpmn:endEvent>\n\n    <bpmn:sequenceFlow id=\"Flow_1\" sourceRef=\"StartEvent_1\" targetRef=\"Activity_ValidateCredentials\"/>\n    <bpmn:sequenceFlow id=\"Flow_2\" sourceRef=\"Activity_ValidateCredentials\" targetRef=\"Gateway_LoginResult\"/>\n    <bpmn:sequenceFlow id=\"Flow_3\" sourceRef=\"Gateway_LoginResult\" targetRef=\"Event_Success\">\n      <bpmn:conditionExpression xsi:type=\"bpmn:tFormalExpression\">${valid}</bpmn:conditionExpression>\n    </bpmn:sequenceFlow>\n    <bpmn:sequenceFlow id=\"Flow_4\" sourceRef=\"Gateway_LoginResult\" targetRef=\"Event_Error\">\n      <bpmn:conditionExpression xsi:type=\"bpmn:tFormalExpression\">${!valid}</bpmn:conditionExpression>\n    </bpmn:sequenceFlow>\n  </bpmn:process>\n\n  <bpmndi:BPMNDiagram id=\"BPMNDiagram_1\">\n    <bpmndi:BPMNPlane id=\"BPMNPlane_1\" bpmnElement=\"LoginProcess\">\n\n      <bpmndi:BPMNShape id=\"StartEvent_1_di\" bpmnElement=\"StartEvent_1\">\n        <dc:Bounds x=\"100\" y=\"150\" width=\"36\" height=\"36\"/>\n      </bpmndi:BPMNShape>\n\n      <bpmndi:BPMNShape id=\"Activity_ValidateCredentials_di\" bpmnElement=\"Activity_ValidateCredentials\">\n        <dc:Bounds x=\"200\" y=\"130\" width=\"100\" height=\"80\"/>\n      </bpmndi:BPMNShape>\n\n      <bpmndi:BPMNShape id=\"Gateway_LoginResult_di\" bpmnElement=\"Gateway_LoginResult\" isMarkerVisible=\"true\">\n        <dc:Bounds x=\"350\" y=\"145\" width=\"50\" height=\"50\"/>\n      </bpmndi:BPMNShape>\n\n      <bpmndi:BPMNShape id=\"Event_Success_di\" bpmnElement=\"Event_Success\">\n        <dc:Bounds x=\"450\" y=\"120\" width=\"36\" height=\"36\"/>\n      </bpmndi:BPMNShape>\n\n      <bpmndi:BPMNShape id=\"Event_Error_di\" bpmnElement=\"Event_Error\">\n        <dc:Bounds x=\"450\" y=\"200\" width=\"36\" height=\"36\"/>\n      </bpmndi:BPMNShape>\n\n      <bpmndi:BPMNEdge id=\"Flow_1_di\" bpmnElement=\"Flow_1\">\n        <di:waypoint x=\"136\" y=\"168\"/>\n        <di:waypoint x=\"200\" y=\"168\"/>\n      </bpmndi:BPMNEdge>\n\n      <bpmndi:BPMNEdge id=\"Flow_2_di\" bpmnElement=\"Flow_2\">\n        <di:waypoint x=\"300\" y=\"168\"/>\n        <di:waypoint x=\"350\" y=\"168\"/>\n      </bpmndi:BPMNEdge>\n\n      <bpmndi:BPMNEdge id=\"Flow_3_di\" bpmnElement=\"Flow_3\">\n        <di:waypoint x=\"400\" y=\"168\"/>\n        <di:waypoint x=\"450\" y=\"138\"/>\n      </bpmndi:BPMNEdge>\n\n      <bpmndi:BPMNEdge id=\"Flow_4_di\" bpmnElement=\"Flow_4\">\n        <di:waypoint x=\"400\" y=\"168\"/>\n        <di:waypoint x=\"450\" y=\"218\"/>\n      </bpmndi:BPMNEdge>\n\n    </bpmndi:BPMNPlane>\n  </bpmndi:BPMNDiagram>\n\n</bpmn:definitions>\n',0,NULL,1,'2025-10-16 17:34:22',NULL,NULL),('61c04d84-a8cd-11f0-821c-00059a3c7a00',1,'welcome.bpmn','61c04d83-a8cd-11f0-821c-00059a3c7a00',_binary '<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<bpmn:definitions xmlns:bpmn=\"http://www.omg.org/spec/BPMN/20100524/MODEL\" xmlns:bpmndi=\"http://www.omg.org/spec/BPMN/20100524/DI\" xmlns:dc=\"http://www.omg.org/spec/DD/20100524/DC\" xmlns:camunda=\"http://camunda.org/schema/1.0/bpmn\" xmlns:di=\"http://www.omg.org/spec/DD/20100524/DI\" xmlns:modeler=\"http://camunda.org/schema/modeler/1.0\" id=\"Definitions_0w3zl5m\" targetNamespace=\"http://bpmn.io/schema/bpmn\" exporter=\"Camunda Modeler\" exporterVersion=\"5.37.0\" modeler:executionPlatform=\"Camunda Platform\" modeler:executionPlatformVersion=\"7.23.0\">\n  <bpmn:process id=\"welcome_process_id\" name=\"Welcome_Process\" isExecutable=\"true\" camunda:historyTimeToLive=\"100\">\n    <bpmn:startEvent id=\"Event_1yyqk5z\">\n      <bpmn:outgoing>Flow_0xrg9fo</bpmn:outgoing>\n    </bpmn:startEvent>\n    <bpmn:sequenceFlow id=\"Flow_0xrg9fo\" sourceRef=\"Event_1yyqk5z\" targetRef=\"Activity_10bnpdy\" />\n    <bpmn:serviceTask id=\"Activity_10bnpdy\" name=\"Welcome Message\" camunda:class=\"com.learn.delegates.Welcome\">\n      <bpmn:incoming>Flow_0xrg9fo</bpmn:incoming>\n      <bpmn:outgoing>Flow_1i7w7pr</bpmn:outgoing>\n    </bpmn:serviceTask>\n    <bpmn:sequenceFlow id=\"Flow_1i7w7pr\" sourceRef=\"Activity_10bnpdy\" targetRef=\"Activity_0gl2886\" />\n    <bpmn:endEvent id=\"Event_0rfnw34\">\n      <bpmn:incoming>Flow_0lqjlzs</bpmn:incoming>\n    </bpmn:endEvent>\n    <bpmn:sequenceFlow id=\"Flow_0lqjlzs\" sourceRef=\"Activity_0gl2886\" targetRef=\"Event_0rfnw34\" />\n    <bpmn:userTask id=\"Activity_0gl2886\" name=\"User task\" camunda:assignee=\"admin\">\n      <bpmn:incoming>Flow_1i7w7pr</bpmn:incoming>\n      <bpmn:outgoing>Flow_0lqjlzs</bpmn:outgoing>\n    </bpmn:userTask>\n  </bpmn:process>\n  <bpmndi:BPMNDiagram id=\"BPMNDiagram_1\">\n    <bpmndi:BPMNPlane id=\"BPMNPlane_1\" bpmnElement=\"welcome_process_id\">\n      <bpmndi:BPMNShape id=\"Event_1yyqk5z_di\" bpmnElement=\"Event_1yyqk5z\">\n        <dc:Bounds x=\"152\" y=\"102\" width=\"36\" height=\"36\" />\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape id=\"Activity_1mzzpxn_di\" bpmnElement=\"Activity_10bnpdy\">\n        <dc:Bounds x=\"240\" y=\"80\" width=\"100\" height=\"80\" />\n        <bpmndi:BPMNLabel />\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape id=\"Event_0rfnw34_di\" bpmnElement=\"Event_0rfnw34\">\n        <dc:Bounds x=\"542\" y=\"102\" width=\"36\" height=\"36\" />\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape id=\"Activity_1kalacg_di\" bpmnElement=\"Activity_0gl2886\">\n        <dc:Bounds x=\"390\" y=\"80\" width=\"100\" height=\"80\" />\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNEdge id=\"Flow_0xrg9fo_di\" bpmnElement=\"Flow_0xrg9fo\">\n        <di:waypoint x=\"188\" y=\"120\" />\n        <di:waypoint x=\"240\" y=\"120\" />\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge id=\"Flow_1i7w7pr_di\" bpmnElement=\"Flow_1i7w7pr\">\n        <di:waypoint x=\"340\" y=\"120\" />\n        <di:waypoint x=\"390\" y=\"120\" />\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge id=\"Flow_0lqjlzs_di\" bpmnElement=\"Flow_0lqjlzs\">\n        <di:waypoint x=\"490\" y=\"120\" />\n        <di:waypoint x=\"542\" y=\"120\" />\n      </bpmndi:BPMNEdge>\n    </bpmndi:BPMNPlane>\n  </bpmndi:BPMNDiagram>\n</bpmn:definitions>\n',0,NULL,1,'2025-10-14 07:14:11',NULL,NULL),('70bf19fa-aab5-11f0-8e98-00059a3c7a00',1,'DecisionTable.dmn','70bf19f9-aab5-11f0-8e98-00059a3c7a00',_binary '<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<definitions xmlns=\"https://www.omg.org/spec/DMN/20191111/MODEL/\" xmlns:camunda=\"http://camunda.org/schema/1.0/dmn\" id=\"discount-decision\" name=\"Discount Decision\" namespace=\"http://camunda.org/schema/1.0/dmn\">\n  <decision id=\"discountDecision\" name=\"Discount Calculation\" camunda:historyTimeToLive=\"5\">\n    <decisionTable id=\"decisionTable1\" hitPolicy=\"FIRST\">\n      <input id=\"input1\" label=\"Order Amount\">\n        <inputExpression id=\"inputExpression1\" typeRef=\"double\">\n          <text>amount</text>\n        </inputExpression>\n      </input>\n      <input id=\"input2\" label=\"Customer Type\">\n        <inputExpression id=\"inputExpression2\" typeRef=\"string\">\n          <text>customerType</text>\n        </inputExpression>\n      </input>\n      <output id=\"output1\" label=\"Discount\" name=\"discount\" typeRef=\"double\" />\n      <rule id=\"rule1\">\n        <inputEntry id=\"inputEntry1\">\n          <text>&gt; 10000</text>\n        </inputEntry>\n        <inputEntry id=\"inputEntry2\">\n          <text>\"Premium\"</text>\n        </inputEntry>\n        <outputEntry id=\"outputEntry1\">\n          <text>0.15</text>\n        </outputEntry>\n      </rule>\n      <rule id=\"rule2\">\n        <inputEntry id=\"inputEntry3\">\n          <text>&lt; 10000</text>\n        </inputEntry>\n        <inputEntry id=\"inputEntry4\">\n          <text>\"Regular\"</text>\n        </inputEntry>\n        <outputEntry id=\"outputEntry2\">\n          <text>0.05</text>\n        </outputEntry>\n      </rule>\n      <rule id=\"rule3\">\n        <inputEntry id=\"inputEntry5\">\n          <text>-</text>\n        </inputEntry>\n        <inputEntry id=\"inputEntry6\">\n          <text>-</text>\n        </inputEntry>\n        <outputEntry id=\"outputEntry3\">\n          <text>0.0</text>\n        </outputEntry>\n      </rule>\n    </decisionTable>\n  </decision>\n</definitions>\n',0,NULL,1,'2025-10-16 17:27:51',NULL,NULL),('70bf19fb-aab5-11f0-8e98-00059a3c7a00',1,'LoginProcess.bpmn','70bf19f9-aab5-11f0-8e98-00059a3c7a00',_binary '<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<bpmn:definitions xmlns:bpmn=\"http://www.omg.org/spec/BPMN/20100524/MODEL\" xmlns:bpmndi=\"http://www.omg.org/spec/BPMN/20100524/DI\" xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\" xmlns:camunda=\"http://camunda.org/schema/1.0/bpmn\" id=\"Definitions_1\" targetNamespace=\"http://bpmn.io/schema/bpmn\" exporter=\"Camunda Modeler\" exporterVersion=\"5.40.0\">\n  <bpmn:process id=\"LoginProcess\" name=\"Login Process\" isExecutable=\"true\" camunda:historyTimeToLive=\"100\">\n    <bpmn:startEvent id=\"StartEvent_1\" name=\"Start Login\">\n      <bpmn:outgoing>Flow_1</bpmn:outgoing>\n    </bpmn:startEvent>\n    <bpmn:serviceTask id=\"Activity_ValidateCredentials\" name=\"Validate Credentials\" camunda:type=\"external\" camunda:topic=\"validate-login\">\n      <bpmn:incoming>Flow_1</bpmn:incoming>\n      <bpmn:outgoing>Flow_2</bpmn:outgoing>\n    </bpmn:serviceTask>\n    <bpmn:sequenceFlow id=\"Flow_1\" sourceRef=\"StartEvent_1\" targetRef=\"Activity_ValidateCredentials\" />\n    <bpmn:sequenceFlow id=\"Flow_2\" sourceRef=\"Activity_ValidateCredentials\" targetRef=\"Gateway_LoginResult\" />\n    <bpmn:exclusiveGateway id=\"Gateway_LoginResult\" name=\"Is Login Valid?\">\n      <bpmn:incoming>Flow_2</bpmn:incoming>\n      <bpmn:outgoing>Flow_3</bpmn:outgoing>\n      <bpmn:outgoing>Flow_4</bpmn:outgoing>\n    </bpmn:exclusiveGateway>\n    <bpmn:sequenceFlow id=\"Flow_3\" sourceRef=\"Gateway_LoginResult\" targetRef=\"Event_Success\">\n      <bpmn:conditionExpression xsi:type=\"bpmn:tFormalExpression\">${valid}</bpmn:conditionExpression>\n    </bpmn:sequenceFlow>\n    <bpmn:sequenceFlow id=\"Flow_4\" sourceRef=\"Gateway_LoginResult\" targetRef=\"Event_Error\">\n      <bpmn:conditionExpression xsi:type=\"bpmn:tFormalExpression\">${!valid}</bpmn:conditionExpression>\n    </bpmn:sequenceFlow>\n    <bpmn:endEvent id=\"Event_Success\" name=\"Login Success\">\n      <bpmn:incoming>Flow_3</bpmn:incoming>\n    </bpmn:endEvent>\n    <bpmn:endEvent id=\"Event_Error\" name=\"Login Failed\">\n      <bpmn:incoming>Flow_4</bpmn:incoming>\n    </bpmn:endEvent>\n  </bpmn:process>\n  <bpmndi:BPMNDiagram id=\"BPMNDiagram_1\">\n    <bpmndi:BPMNPlane id=\"BPMNPlane_1\" bpmnElement=\"LoginProcess\" />\n  </bpmndi:BPMNDiagram>\n</bpmn:definitions>\n',0,NULL,1,'2025-10-16 17:27:51',NULL,NULL),('8e765dac-ab3a-11f0-a68d-00059a3c7a00',1,'LoginProcess.bpmn','8e7488eb-ab3a-11f0-a68d-00059a3c7a00',_binary '<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<bpmn:definitions xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\" xmlns:bpmn=\"http://www.omg.org/spec/BPMN/20100524/MODEL\" xmlns:bpmndi=\"http://www.omg.org/spec/BPMN/20100524/DI\" xmlns:dc=\"http://www.omg.org/spec/DD/20100524/DC\" xmlns:di=\"http://www.omg.org/spec/DD/20100524/DI\" xmlns:camunda=\"http://camunda.org/schema/1.0/bpmn\" id=\"Definitions_1\" targetNamespace=\"http://bpmn.io/schema/bpmn\" exporter=\"Camunda Modeler\" exporterVersion=\"5.40.0\">\n  <bpmn:process id=\"LoginProcess\" name=\"Login Process\" isExecutable=\"true\" camunda:historyTimeToLive=\"10\">\n    <bpmn:startEvent id=\"StartEvent_1\" name=\"Start Login\">\n      <bpmn:outgoing>Flow_1</bpmn:outgoing>\n    </bpmn:startEvent>\n    <bpmn:serviceTask id=\"Activity_ValidateCredentials\" name=\"Validate Credentials\" camunda:type=\"external\" camunda:topic=\"validate-login\">\n      <bpmn:incoming>Flow_1</bpmn:incoming>\n      <bpmn:outgoing>Flow_2</bpmn:outgoing>\n    </bpmn:serviceTask>\n    <bpmn:exclusiveGateway id=\"Gateway_LoginResult\" name=\"Is Login Valid?\">\n      <bpmn:incoming>Flow_2</bpmn:incoming>\n      <bpmn:outgoing>Flow_3</bpmn:outgoing>\n      <bpmn:outgoing>Flow_4</bpmn:outgoing>\n    </bpmn:exclusiveGateway>\n    <bpmn:endEvent id=\"Event_Success\" name=\"Login Success\">\n      <bpmn:incoming>Flow_3</bpmn:incoming>\n    </bpmn:endEvent>\n    <bpmn:endEvent id=\"Event_Error\" name=\"Login Failed\">\n      <bpmn:incoming>Flow_4</bpmn:incoming>\n    </bpmn:endEvent>\n    <bpmn:sequenceFlow id=\"Flow_1\" sourceRef=\"StartEvent_1\" targetRef=\"Activity_ValidateCredentials\" />\n    <bpmn:sequenceFlow id=\"Flow_2\" sourceRef=\"Activity_ValidateCredentials\" targetRef=\"Gateway_LoginResult\" />\n    <bpmn:sequenceFlow id=\"Flow_3\" sourceRef=\"Gateway_LoginResult\" targetRef=\"Event_Success\">\n      <bpmn:conditionExpression xsi:type=\"bpmn:tFormalExpression\">${valid}</bpmn:conditionExpression>\n    </bpmn:sequenceFlow>\n    <bpmn:sequenceFlow id=\"Flow_4\" sourceRef=\"Gateway_LoginResult\" targetRef=\"Event_Error\">\n      <bpmn:conditionExpression xsi:type=\"bpmn:tFormalExpression\">${!valid}</bpmn:conditionExpression>\n    </bpmn:sequenceFlow>\n  </bpmn:process>\n  <bpmndi:BPMNDiagram id=\"BPMNDiagram_1\">\n    <bpmndi:BPMNPlane id=\"BPMNPlane_1\" bpmnElement=\"LoginProcess\">\n      <bpmndi:BPMNShape id=\"StartEvent_1_di\" bpmnElement=\"StartEvent_1\">\n        <dc:Bounds x=\"160\" y=\"150\" width=\"36\" height=\"36\" />\n        <bpmndi:BPMNLabel>\n          <dc:Bounds x=\"151\" y=\"203\" width=\"54\" height=\"14\" />\n        </bpmndi:BPMNLabel>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape id=\"Activity_ValidateCredentials_di\" bpmnElement=\"Activity_ValidateCredentials\">\n        <dc:Bounds x=\"260\" y=\"130\" width=\"100\" height=\"80\" />\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape id=\"Gateway_LoginResult_di\" bpmnElement=\"Gateway_LoginResult\" isMarkerVisible=\"true\">\n        <dc:Bounds x=\"410\" y=\"145\" width=\"50\" height=\"50\" />\n        <bpmndi:BPMNLabel>\n          <dc:Bounds x=\"470\" y=\"73\" width=\"72\" height=\"14\" />\n        </bpmndi:BPMNLabel>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape id=\"Event_Success_di\" bpmnElement=\"Event_Success\">\n        <dc:Bounds x=\"672\" y=\"72\" width=\"36\" height=\"36\" />\n        <bpmndi:BPMNLabel>\n          <dc:Bounds x=\"653\" y=\"113\" width=\"73\" height=\"14\" />\n        </bpmndi:BPMNLabel>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape id=\"Event_Error_di\" bpmnElement=\"Event_Error\">\n        <dc:Bounds x=\"672\" y=\"222\" width=\"36\" height=\"36\" />\n        <bpmndi:BPMNLabel>\n          <dc:Bounds x=\"660\" y=\"263\" width=\"60\" height=\"14\" />\n        </bpmndi:BPMNLabel>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNEdge id=\"Flow_1_di\" bpmnElement=\"Flow_1\">\n        <di:waypoint x=\"196\" y=\"168\" />\n        <di:waypoint x=\"260\" y=\"168\" />\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge id=\"Flow_2_di\" bpmnElement=\"Flow_2\">\n        <di:waypoint x=\"360\" y=\"168\" />\n        <di:waypoint x=\"410\" y=\"168\" />\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge id=\"Flow_3_di\" bpmnElement=\"Flow_3\">\n        <di:waypoint x=\"435\" y=\"145\" />\n        <di:waypoint x=\"435\" y=\"90\" />\n        <di:waypoint x=\"672\" y=\"90\" />\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge id=\"Flow_4_di\" bpmnElement=\"Flow_4\">\n        <di:waypoint x=\"435\" y=\"195\" />\n        <di:waypoint x=\"435\" y=\"240\" />\n        <di:waypoint x=\"672\" y=\"240\" />\n      </bpmndi:BPMNEdge>\n    </bpmndi:BPMNPlane>\n  </bpmndi:BPMNDiagram>\n</bpmn:definitions>\n',0,NULL,1,'2025-10-17 09:20:44',NULL,NULL);
/*!40000 ALTER TABLE `act_ge_bytearray` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `act_ge_property`
--

DROP TABLE IF EXISTS `act_ge_property`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `act_ge_property` (
  `NAME_` varchar(64) COLLATE utf8mb3_bin NOT NULL,
  `VALUE_` varchar(300) COLLATE utf8mb3_bin DEFAULT NULL,
  `REV_` int DEFAULT NULL,
  PRIMARY KEY (`NAME_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_ge_property`
--

LOCK TABLES `act_ge_property` WRITE;
/*!40000 ALTER TABLE `act_ge_property` DISABLE KEYS */;
INSERT INTO `act_ge_property` VALUES ('camunda.installation.id','3ead0501-6785-4ff2-8f96-6d8e99797ea2',1),('deployment.lock','0',1),('history.cleanup.job.lock','0',1),('historyLevel','3',1),('installationId.lock','0',1),('next.dbid','1',1),('schema.history','create(fox)',1),('schema.version','fox',1),('startup.lock','0',1);
/*!40000 ALTER TABLE `act_ge_property` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `act_ge_schema_log`
--

DROP TABLE IF EXISTS `act_ge_schema_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `act_ge_schema_log` (
  `ID_` varchar(64) COLLATE utf8mb3_bin NOT NULL,
  `TIMESTAMP_` datetime DEFAULT NULL,
  `VERSION_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_ge_schema_log`
--

LOCK TABLES `act_ge_schema_log` WRITE;
/*!40000 ALTER TABLE `act_ge_schema_log` DISABLE KEYS */;
INSERT INTO `act_ge_schema_log` VALUES ('0','2025-10-14 12:28:12','7.23.0');
/*!40000 ALTER TABLE `act_ge_schema_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `act_hi_actinst`
--

DROP TABLE IF EXISTS `act_hi_actinst`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `act_hi_actinst` (
  `ID_` varchar(64) COLLATE utf8mb3_bin NOT NULL,
  `PARENT_ACT_INST_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `PROC_DEF_KEY_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `PROC_DEF_ID_` varchar(64) COLLATE utf8mb3_bin NOT NULL,
  `ROOT_PROC_INST_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8mb3_bin NOT NULL,
  `EXECUTION_ID_` varchar(64) COLLATE utf8mb3_bin NOT NULL,
  `ACT_ID_` varchar(255) COLLATE utf8mb3_bin NOT NULL,
  `TASK_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `CALL_PROC_INST_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `CALL_CASE_INST_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `ACT_NAME_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `ACT_TYPE_` varchar(255) COLLATE utf8mb3_bin NOT NULL,
  `ASSIGNEE_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `START_TIME_` datetime NOT NULL,
  `END_TIME_` datetime DEFAULT NULL,
  `DURATION_` bigint DEFAULT NULL,
  `ACT_INST_STATE_` int DEFAULT NULL,
  `SEQUENCE_COUNTER_` bigint DEFAULT NULL,
  `TENANT_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `REMOVAL_TIME_` datetime DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  KEY `ACT_IDX_HI_ACTINST_ROOT_PI` (`ROOT_PROC_INST_ID_`),
  KEY `ACT_IDX_HI_ACT_INST_START_END` (`START_TIME_`,`END_TIME_`),
  KEY `ACT_IDX_HI_ACT_INST_END` (`END_TIME_`),
  KEY `ACT_IDX_HI_ACT_INST_PROCINST` (`PROC_INST_ID_`,`ACT_ID_`),
  KEY `ACT_IDX_HI_ACT_INST_COMP` (`EXECUTION_ID_`,`ACT_ID_`,`END_TIME_`,`ID_`),
  KEY `ACT_IDX_HI_ACT_INST_STATS` (`PROC_DEF_ID_`,`PROC_INST_ID_`,`ACT_ID_`,`END_TIME_`,`ACT_INST_STATE_`),
  KEY `ACT_IDX_HI_ACT_INST_TENANT_ID` (`TENANT_ID_`),
  KEY `ACT_IDX_HI_ACT_INST_PROC_DEF_KEY` (`PROC_DEF_KEY_`),
  KEY `ACT_IDX_HI_AI_PDEFID_END_TIME` (`PROC_DEF_ID_`,`END_TIME_`),
  KEY `ACT_IDX_HI_ACT_INST_RM_TIME` (`REMOVAL_TIME_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_hi_actinst`
--

LOCK TABLES `act_hi_actinst` WRITE;
/*!40000 ALTER TABLE `act_hi_actinst` DISABLE KEYS */;
INSERT INTO `act_hi_actinst` VALUES ('8cd3c9f1-ab3d-11f0-a68d-00059a3c7a00','8ccf0efa-ab3d-11f0-a68d-00059a3c7a00','LoginProcess','LoginProcess:3:8e8ec7ad-ab3a-11f0-a68d-00059a3c7a00','8ccf0efa-ab3d-11f0-a68d-00059a3c7a00','8ccf0efa-ab3d-11f0-a68d-00059a3c7a00','8cd3c9f0-ab3d-11f0-a68d-00059a3c7a00','Activity_ValidateCredentials',NULL,NULL,NULL,'Validate Credentials','serviceTask',NULL,'2025-10-17 09:42:09',NULL,NULL,0,3,NULL,NULL),('Activity_0gl2886:61c49349-a8cd-11f0-821c-00059a3c7a00','61c49346-a8cd-11f0-821c-00059a3c7a00','welcome_process_id','welcome_process_id:3:61c1d425-a8cd-11f0-821c-00059a3c7a00','61c49346-a8cd-11f0-821c-00059a3c7a00','61c49346-a8cd-11f0-821c-00059a3c7a00','61c49346-a8cd-11f0-821c-00059a3c7a00','Activity_0gl2886','61c4934a-a8cd-11f0-821c-00059a3c7a00',NULL,NULL,'User task','userTask','admin','2025-10-14 07:14:11',NULL,NULL,0,5,NULL,NULL),('Activity_10bnpdy:3a468f31-a8cd-11f0-821c-00059a3c7a00','3a441e2f-a8cd-11f0-821c-00059a3c7a00','welcome_process_id','welcome_process_id:2:3a3a5a2e-a8cd-11f0-821c-00059a3c7a00','3a441e2f-a8cd-11f0-821c-00059a3c7a00','3a441e2f-a8cd-11f0-821c-00059a3c7a00','3a441e2f-a8cd-11f0-821c-00059a3c7a00','Activity_10bnpdy',NULL,NULL,NULL,'Welcome Message','serviceTask',NULL,'2025-10-14 07:13:05','2025-10-14 07:13:05',10,4,3,NULL,'2026-01-22 07:13:05'),('Activity_10bnpdy:61c49348-a8cd-11f0-821c-00059a3c7a00','61c49346-a8cd-11f0-821c-00059a3c7a00','welcome_process_id','welcome_process_id:3:61c1d425-a8cd-11f0-821c-00059a3c7a00','61c49346-a8cd-11f0-821c-00059a3c7a00','61c49346-a8cd-11f0-821c-00059a3c7a00','61c49346-a8cd-11f0-821c-00059a3c7a00','Activity_10bnpdy',NULL,NULL,NULL,'Welcome Message','serviceTask',NULL,'2025-10-14 07:14:11','2025-10-14 07:14:11',0,4,3,NULL,NULL),('Activity_ShowLoginForm:41c516c9-ab3f-11f0-a68d-00059a3c7a00','41c4efb3-ab3f-11f0-a68d-00059a3c7a00','LoginProcess','LoginProcess:4:33224b12-ab3f-11f0-a68d-00059a3c7a00','41c4efb3-ab3f-11f0-a68d-00059a3c7a00','41c4efb3-ab3f-11f0-a68d-00059a3c7a00','41c4efb3-ab3f-11f0-a68d-00059a3c7a00','Activity_ShowLoginForm','41c5b30a-ab3f-11f0-a68d-00059a3c7a00',NULL,NULL,'Show Login Form','userTask',NULL,'2025-10-17 09:54:22',NULL,NULL,0,3,NULL,NULL),('Activity_ShowLoginForm:80d04f71-ab3f-11f0-a68d-00059a3c7a00','80d0014b-ab3f-11f0-a68d-00059a3c7a00','LoginProcess','LoginProcess:4:33224b12-ab3f-11f0-a68d-00059a3c7a00','80d0014b-ab3f-11f0-a68d-00059a3c7a00','80d0014b-ab3f-11f0-a68d-00059a3c7a00','80d0014b-ab3f-11f0-a68d-00059a3c7a00','Activity_ShowLoginForm','80d04f72-ab3f-11f0-a68d-00059a3c7a00',NULL,NULL,'Show Login Form','userTask',NULL,'2025-10-17 09:56:08',NULL,NULL,0,3,NULL,NULL),('Activity_ShowLoginForm:94774929-ab3f-11f0-a68d-00059a3c7a00','94772213-ab3f-11f0-a68d-00059a3c7a00','LoginProcess','LoginProcess:4:33224b12-ab3f-11f0-a68d-00059a3c7a00','94772213-ab3f-11f0-a68d-00059a3c7a00','94772213-ab3f-11f0-a68d-00059a3c7a00','94772213-ab3f-11f0-a68d-00059a3c7a00','Activity_ShowLoginForm','9477703a-ab3f-11f0-a68d-00059a3c7a00',NULL,NULL,'Show Login Form','userTask',NULL,'2025-10-17 09:56:41',NULL,NULL,0,3,NULL,NULL),('Event_1tqbdzf:3a4815d2-a8cd-11f0-821c-00059a3c7a00','3a441e2f-a8cd-11f0-821c-00059a3c7a00','welcome_process_id','welcome_process_id:2:3a3a5a2e-a8cd-11f0-821c-00059a3c7a00','3a441e2f-a8cd-11f0-821c-00059a3c7a00','3a441e2f-a8cd-11f0-821c-00059a3c7a00','3a441e2f-a8cd-11f0-821c-00059a3c7a00','Event_1tqbdzf',NULL,NULL,NULL,NULL,'noneEndEvent',NULL,'2025-10-14 07:13:05','2025-10-14 07:13:05',0,1,5,NULL,'2026-01-22 07:13:05'),('Event_1yyqk5z:3a468f30-a8cd-11f0-821c-00059a3c7a00','3a441e2f-a8cd-11f0-821c-00059a3c7a00','welcome_process_id','welcome_process_id:2:3a3a5a2e-a8cd-11f0-821c-00059a3c7a00','3a441e2f-a8cd-11f0-821c-00059a3c7a00','3a441e2f-a8cd-11f0-821c-00059a3c7a00','3a441e2f-a8cd-11f0-821c-00059a3c7a00','Event_1yyqk5z',NULL,NULL,NULL,NULL,'startEvent',NULL,'2025-10-14 07:13:05','2025-10-14 07:13:05',0,4,1,NULL,'2026-01-22 07:13:05'),('Event_1yyqk5z:61c49347-a8cd-11f0-821c-00059a3c7a00','61c49346-a8cd-11f0-821c-00059a3c7a00','welcome_process_id','welcome_process_id:3:61c1d425-a8cd-11f0-821c-00059a3c7a00','61c49346-a8cd-11f0-821c-00059a3c7a00','61c49346-a8cd-11f0-821c-00059a3c7a00','61c49346-a8cd-11f0-821c-00059a3c7a00','Event_1yyqk5z',NULL,NULL,NULL,NULL,'startEvent',NULL,'2025-10-14 07:14:11','2025-10-14 07:14:11',0,4,1,NULL,NULL),('StartEvent_1:41c516c8-ab3f-11f0-a68d-00059a3c7a00','41c4efb3-ab3f-11f0-a68d-00059a3c7a00','LoginProcess','LoginProcess:4:33224b12-ab3f-11f0-a68d-00059a3c7a00','41c4efb3-ab3f-11f0-a68d-00059a3c7a00','41c4efb3-ab3f-11f0-a68d-00059a3c7a00','41c4efb3-ab3f-11f0-a68d-00059a3c7a00','StartEvent_1',NULL,NULL,NULL,'Start Login','startEvent',NULL,'2025-10-17 09:54:22','2025-10-17 09:54:22',0,4,1,NULL,NULL),('StartEvent_1:80d02860-ab3f-11f0-a68d-00059a3c7a00','80d0014b-ab3f-11f0-a68d-00059a3c7a00','LoginProcess','LoginProcess:4:33224b12-ab3f-11f0-a68d-00059a3c7a00','80d0014b-ab3f-11f0-a68d-00059a3c7a00','80d0014b-ab3f-11f0-a68d-00059a3c7a00','80d0014b-ab3f-11f0-a68d-00059a3c7a00','StartEvent_1',NULL,NULL,NULL,'Start Login','startEvent',NULL,'2025-10-17 09:56:08','2025-10-17 09:56:08',1,4,1,NULL,NULL),('StartEvent_1:8cd17fff-ab3d-11f0-a68d-00059a3c7a00','8ccf0efa-ab3d-11f0-a68d-00059a3c7a00','LoginProcess','LoginProcess:3:8e8ec7ad-ab3a-11f0-a68d-00059a3c7a00','8ccf0efa-ab3d-11f0-a68d-00059a3c7a00','8ccf0efa-ab3d-11f0-a68d-00059a3c7a00','8ccf0efa-ab3d-11f0-a68d-00059a3c7a00','StartEvent_1',NULL,NULL,NULL,'Start Login','startEvent',NULL,'2025-10-17 09:42:09','2025-10-17 09:42:09',15,4,1,NULL,NULL),('StartEvent_1:94774928-ab3f-11f0-a68d-00059a3c7a00','94772213-ab3f-11f0-a68d-00059a3c7a00','LoginProcess','LoginProcess:4:33224b12-ab3f-11f0-a68d-00059a3c7a00','94772213-ab3f-11f0-a68d-00059a3c7a00','94772213-ab3f-11f0-a68d-00059a3c7a00','94772213-ab3f-11f0-a68d-00059a3c7a00','StartEvent_1',NULL,NULL,NULL,'Start Login','startEvent',NULL,'2025-10-17 09:56:41','2025-10-17 09:56:41',0,4,1,NULL,NULL);
/*!40000 ALTER TABLE `act_hi_actinst` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `act_hi_attachment`
--

DROP TABLE IF EXISTS `act_hi_attachment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `act_hi_attachment` (
  `ID_` varchar(64) COLLATE utf8mb3_bin NOT NULL,
  `REV_` int DEFAULT NULL,
  `USER_ID_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `NAME_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `DESCRIPTION_` varchar(4000) COLLATE utf8mb3_bin DEFAULT NULL,
  `TYPE_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `TASK_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `ROOT_PROC_INST_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `URL_` varchar(4000) COLLATE utf8mb3_bin DEFAULT NULL,
  `CONTENT_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `TENANT_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `CREATE_TIME_` datetime DEFAULT NULL,
  `REMOVAL_TIME_` datetime DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  KEY `ACT_IDX_HI_ATTACHMENT_CONTENT` (`CONTENT_ID_`),
  KEY `ACT_IDX_HI_ATTACHMENT_ROOT_PI` (`ROOT_PROC_INST_ID_`),
  KEY `ACT_IDX_HI_ATTACHMENT_PROCINST` (`PROC_INST_ID_`),
  KEY `ACT_IDX_HI_ATTACHMENT_TASK` (`TASK_ID_`),
  KEY `ACT_IDX_HI_ATTACHMENT_RM_TIME` (`REMOVAL_TIME_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_hi_attachment`
--

LOCK TABLES `act_hi_attachment` WRITE;
/*!40000 ALTER TABLE `act_hi_attachment` DISABLE KEYS */;
/*!40000 ALTER TABLE `act_hi_attachment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `act_hi_batch`
--

DROP TABLE IF EXISTS `act_hi_batch`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `act_hi_batch` (
  `ID_` varchar(64) COLLATE utf8mb3_bin NOT NULL,
  `TYPE_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `TOTAL_JOBS_` int DEFAULT NULL,
  `JOBS_PER_SEED_` int DEFAULT NULL,
  `INVOCATIONS_PER_JOB_` int DEFAULT NULL,
  `SEED_JOB_DEF_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `MONITOR_JOB_DEF_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `BATCH_JOB_DEF_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `TENANT_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `CREATE_USER_ID_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `START_TIME_` datetime NOT NULL,
  `END_TIME_` datetime DEFAULT NULL,
  `REMOVAL_TIME_` datetime DEFAULT NULL,
  `EXEC_START_TIME_` datetime DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  KEY `ACT_HI_BAT_RM_TIME` (`REMOVAL_TIME_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_hi_batch`
--

LOCK TABLES `act_hi_batch` WRITE;
/*!40000 ALTER TABLE `act_hi_batch` DISABLE KEYS */;
/*!40000 ALTER TABLE `act_hi_batch` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `act_hi_caseactinst`
--

DROP TABLE IF EXISTS `act_hi_caseactinst`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `act_hi_caseactinst` (
  `ID_` varchar(64) COLLATE utf8mb3_bin NOT NULL,
  `PARENT_ACT_INST_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `CASE_DEF_ID_` varchar(64) COLLATE utf8mb3_bin NOT NULL,
  `CASE_INST_ID_` varchar(64) COLLATE utf8mb3_bin NOT NULL,
  `CASE_ACT_ID_` varchar(255) COLLATE utf8mb3_bin NOT NULL,
  `TASK_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `CALL_PROC_INST_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `CALL_CASE_INST_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `CASE_ACT_NAME_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `CASE_ACT_TYPE_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `CREATE_TIME_` datetime NOT NULL,
  `END_TIME_` datetime DEFAULT NULL,
  `DURATION_` bigint DEFAULT NULL,
  `STATE_` int DEFAULT NULL,
  `REQUIRED_` tinyint(1) DEFAULT NULL,
  `TENANT_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  KEY `ACT_IDX_HI_CAS_A_I_CREATE` (`CREATE_TIME_`),
  KEY `ACT_IDX_HI_CAS_A_I_END` (`END_TIME_`),
  KEY `ACT_IDX_HI_CAS_A_I_COMP` (`CASE_ACT_ID_`,`END_TIME_`,`ID_`),
  KEY `ACT_IDX_HI_CAS_A_I_CASEINST` (`CASE_INST_ID_`,`CASE_ACT_ID_`),
  KEY `ACT_IDX_HI_CAS_A_I_TENANT_ID` (`TENANT_ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_hi_caseactinst`
--

LOCK TABLES `act_hi_caseactinst` WRITE;
/*!40000 ALTER TABLE `act_hi_caseactinst` DISABLE KEYS */;
/*!40000 ALTER TABLE `act_hi_caseactinst` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `act_hi_caseinst`
--

DROP TABLE IF EXISTS `act_hi_caseinst`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `act_hi_caseinst` (
  `ID_` varchar(64) COLLATE utf8mb3_bin NOT NULL,
  `CASE_INST_ID_` varchar(64) COLLATE utf8mb3_bin NOT NULL,
  `BUSINESS_KEY_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `CASE_DEF_ID_` varchar(64) COLLATE utf8mb3_bin NOT NULL,
  `CREATE_TIME_` datetime NOT NULL,
  `CLOSE_TIME_` datetime DEFAULT NULL,
  `DURATION_` bigint DEFAULT NULL,
  `STATE_` int DEFAULT NULL,
  `CREATE_USER_ID_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `SUPER_CASE_INSTANCE_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `SUPER_PROCESS_INSTANCE_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `TENANT_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  UNIQUE KEY `CASE_INST_ID_` (`CASE_INST_ID_`),
  KEY `ACT_IDX_HI_CAS_I_CLOSE` (`CLOSE_TIME_`),
  KEY `ACT_IDX_HI_CAS_I_BUSKEY` (`BUSINESS_KEY_`),
  KEY `ACT_IDX_HI_CAS_I_TENANT_ID` (`TENANT_ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_hi_caseinst`
--

LOCK TABLES `act_hi_caseinst` WRITE;
/*!40000 ALTER TABLE `act_hi_caseinst` DISABLE KEYS */;
/*!40000 ALTER TABLE `act_hi_caseinst` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `act_hi_comment`
--

DROP TABLE IF EXISTS `act_hi_comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `act_hi_comment` (
  `ID_` varchar(64) COLLATE utf8mb3_bin NOT NULL,
  `TYPE_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `TIME_` datetime NOT NULL,
  `USER_ID_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `TASK_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `ROOT_PROC_INST_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `ACTION_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `MESSAGE_` varchar(4000) COLLATE utf8mb3_bin DEFAULT NULL,
  `FULL_MSG_` longblob,
  `TENANT_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `REMOVAL_TIME_` datetime DEFAULT NULL,
  `REV_` int NOT NULL DEFAULT '1',
  PRIMARY KEY (`ID_`),
  KEY `ACT_IDX_HI_COMMENT_TASK` (`TASK_ID_`),
  KEY `ACT_IDX_HI_COMMENT_ROOT_PI` (`ROOT_PROC_INST_ID_`),
  KEY `ACT_IDX_HI_COMMENT_PROCINST` (`PROC_INST_ID_`),
  KEY `ACT_IDX_HI_COMMENT_RM_TIME` (`REMOVAL_TIME_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_hi_comment`
--

LOCK TABLES `act_hi_comment` WRITE;
/*!40000 ALTER TABLE `act_hi_comment` DISABLE KEYS */;
/*!40000 ALTER TABLE `act_hi_comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `act_hi_dec_in`
--

DROP TABLE IF EXISTS `act_hi_dec_in`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `act_hi_dec_in` (
  `ID_` varchar(64) COLLATE utf8mb3_bin NOT NULL,
  `DEC_INST_ID_` varchar(64) COLLATE utf8mb3_bin NOT NULL,
  `CLAUSE_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `CLAUSE_NAME_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `VAR_TYPE_` varchar(100) COLLATE utf8mb3_bin DEFAULT NULL,
  `BYTEARRAY_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `DOUBLE_` double DEFAULT NULL,
  `LONG_` bigint DEFAULT NULL,
  `TEXT_` varchar(4000) COLLATE utf8mb3_bin DEFAULT NULL,
  `TEXT2_` varchar(4000) COLLATE utf8mb3_bin DEFAULT NULL,
  `TENANT_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `CREATE_TIME_` datetime DEFAULT NULL,
  `ROOT_PROC_INST_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `REMOVAL_TIME_` datetime DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  KEY `ACT_IDX_HI_DEC_IN_INST` (`DEC_INST_ID_`),
  KEY `ACT_IDX_HI_DEC_IN_CLAUSE` (`DEC_INST_ID_`,`CLAUSE_ID_`),
  KEY `ACT_IDX_HI_DEC_IN_ROOT_PI` (`ROOT_PROC_INST_ID_`),
  KEY `ACT_IDX_HI_DEC_IN_RM_TIME` (`REMOVAL_TIME_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_hi_dec_in`
--

LOCK TABLES `act_hi_dec_in` WRITE;
/*!40000 ALTER TABLE `act_hi_dec_in` DISABLE KEYS */;
/*!40000 ALTER TABLE `act_hi_dec_in` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `act_hi_dec_out`
--

DROP TABLE IF EXISTS `act_hi_dec_out`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `act_hi_dec_out` (
  `ID_` varchar(64) COLLATE utf8mb3_bin NOT NULL,
  `DEC_INST_ID_` varchar(64) COLLATE utf8mb3_bin NOT NULL,
  `CLAUSE_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `CLAUSE_NAME_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `RULE_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `RULE_ORDER_` int DEFAULT NULL,
  `VAR_NAME_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `VAR_TYPE_` varchar(100) COLLATE utf8mb3_bin DEFAULT NULL,
  `BYTEARRAY_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `DOUBLE_` double DEFAULT NULL,
  `LONG_` bigint DEFAULT NULL,
  `TEXT_` varchar(4000) COLLATE utf8mb3_bin DEFAULT NULL,
  `TEXT2_` varchar(4000) COLLATE utf8mb3_bin DEFAULT NULL,
  `TENANT_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `CREATE_TIME_` datetime DEFAULT NULL,
  `ROOT_PROC_INST_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `REMOVAL_TIME_` datetime DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  KEY `ACT_IDX_HI_DEC_OUT_INST` (`DEC_INST_ID_`),
  KEY `ACT_IDX_HI_DEC_OUT_RULE` (`RULE_ORDER_`,`CLAUSE_ID_`),
  KEY `ACT_IDX_HI_DEC_OUT_ROOT_PI` (`ROOT_PROC_INST_ID_`),
  KEY `ACT_IDX_HI_DEC_OUT_RM_TIME` (`REMOVAL_TIME_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_hi_dec_out`
--

LOCK TABLES `act_hi_dec_out` WRITE;
/*!40000 ALTER TABLE `act_hi_dec_out` DISABLE KEYS */;
/*!40000 ALTER TABLE `act_hi_dec_out` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `act_hi_decinst`
--

DROP TABLE IF EXISTS `act_hi_decinst`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `act_hi_decinst` (
  `ID_` varchar(64) COLLATE utf8mb3_bin NOT NULL,
  `DEC_DEF_ID_` varchar(64) COLLATE utf8mb3_bin NOT NULL,
  `DEC_DEF_KEY_` varchar(255) COLLATE utf8mb3_bin NOT NULL,
  `DEC_DEF_NAME_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `PROC_DEF_KEY_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `PROC_DEF_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `CASE_DEF_KEY_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `CASE_DEF_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `CASE_INST_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `ACT_INST_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `ACT_ID_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `EVAL_TIME_` datetime NOT NULL,
  `REMOVAL_TIME_` datetime DEFAULT NULL,
  `COLLECT_VALUE_` double DEFAULT NULL,
  `USER_ID_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `ROOT_DEC_INST_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `ROOT_PROC_INST_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `DEC_REQ_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `DEC_REQ_KEY_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `TENANT_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  KEY `ACT_IDX_HI_DEC_INST_ID` (`DEC_DEF_ID_`),
  KEY `ACT_IDX_HI_DEC_INST_KEY` (`DEC_DEF_KEY_`),
  KEY `ACT_IDX_HI_DEC_INST_PI` (`PROC_INST_ID_`),
  KEY `ACT_IDX_HI_DEC_INST_CI` (`CASE_INST_ID_`),
  KEY `ACT_IDX_HI_DEC_INST_ACT` (`ACT_ID_`),
  KEY `ACT_IDX_HI_DEC_INST_ACT_INST` (`ACT_INST_ID_`),
  KEY `ACT_IDX_HI_DEC_INST_TIME` (`EVAL_TIME_`),
  KEY `ACT_IDX_HI_DEC_INST_TENANT_ID` (`TENANT_ID_`),
  KEY `ACT_IDX_HI_DEC_INST_ROOT_ID` (`ROOT_DEC_INST_ID_`),
  KEY `ACT_IDX_HI_DEC_INST_REQ_ID` (`DEC_REQ_ID_`),
  KEY `ACT_IDX_HI_DEC_INST_REQ_KEY` (`DEC_REQ_KEY_`),
  KEY `ACT_IDX_HI_DEC_INST_ROOT_PI` (`ROOT_PROC_INST_ID_`),
  KEY `ACT_IDX_HI_DEC_INST_RM_TIME` (`REMOVAL_TIME_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_hi_decinst`
--

LOCK TABLES `act_hi_decinst` WRITE;
/*!40000 ALTER TABLE `act_hi_decinst` DISABLE KEYS */;
/*!40000 ALTER TABLE `act_hi_decinst` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `act_hi_detail`
--

DROP TABLE IF EXISTS `act_hi_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `act_hi_detail` (
  `ID_` varchar(64) COLLATE utf8mb3_bin NOT NULL,
  `TYPE_` varchar(255) COLLATE utf8mb3_bin NOT NULL,
  `PROC_DEF_KEY_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `PROC_DEF_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `ROOT_PROC_INST_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `EXECUTION_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `CASE_DEF_KEY_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `CASE_DEF_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `CASE_INST_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `CASE_EXECUTION_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `TASK_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `ACT_INST_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `VAR_INST_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `NAME_` varchar(255) COLLATE utf8mb3_bin NOT NULL,
  `VAR_TYPE_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `REV_` int DEFAULT NULL,
  `TIME_` datetime NOT NULL,
  `BYTEARRAY_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `DOUBLE_` double DEFAULT NULL,
  `LONG_` bigint DEFAULT NULL,
  `TEXT_` varchar(4000) COLLATE utf8mb3_bin DEFAULT NULL,
  `TEXT2_` varchar(4000) COLLATE utf8mb3_bin DEFAULT NULL,
  `SEQUENCE_COUNTER_` bigint DEFAULT NULL,
  `TENANT_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `OPERATION_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `REMOVAL_TIME_` datetime DEFAULT NULL,
  `INITIAL_` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  KEY `ACT_IDX_HI_DETAIL_ROOT_PI` (`ROOT_PROC_INST_ID_`),
  KEY `ACT_IDX_HI_DETAIL_PROC_INST` (`PROC_INST_ID_`),
  KEY `ACT_IDX_HI_DETAIL_ACT_INST` (`ACT_INST_ID_`),
  KEY `ACT_IDX_HI_DETAIL_CASE_INST` (`CASE_INST_ID_`),
  KEY `ACT_IDX_HI_DETAIL_CASE_EXEC` (`CASE_EXECUTION_ID_`),
  KEY `ACT_IDX_HI_DETAIL_TIME` (`TIME_`),
  KEY `ACT_IDX_HI_DETAIL_NAME` (`NAME_`),
  KEY `ACT_IDX_HI_DETAIL_TASK_ID` (`TASK_ID_`),
  KEY `ACT_IDX_HI_DETAIL_TENANT_ID` (`TENANT_ID_`),
  KEY `ACT_IDX_HI_DETAIL_PROC_DEF_KEY` (`PROC_DEF_KEY_`),
  KEY `ACT_IDX_HI_DETAIL_BYTEAR` (`BYTEARRAY_ID_`),
  KEY `ACT_IDX_HI_DETAIL_RM_TIME` (`REMOVAL_TIME_`),
  KEY `ACT_IDX_HI_DETAIL_TASK_BYTEAR` (`BYTEARRAY_ID_`,`TASK_ID_`),
  KEY `ACT_IDX_HI_DETAIL_VAR_INST_ID` (`VAR_INST_ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_hi_detail`
--

LOCK TABLES `act_hi_detail` WRITE;
/*!40000 ALTER TABLE `act_hi_detail` DISABLE KEYS */;
INSERT INTO `act_hi_detail` VALUES ('41c4efb5-ab3f-11f0-a68d-00059a3c7a00','VariableUpdate','LoginProcess','LoginProcess:4:33224b12-ab3f-11f0-a68d-00059a3c7a00','41c4efb3-ab3f-11f0-a68d-00059a3c7a00','41c4efb3-ab3f-11f0-a68d-00059a3c7a00','41c4efb3-ab3f-11f0-a68d-00059a3c7a00',NULL,NULL,NULL,NULL,NULL,'41c4efb3-ab3f-11f0-a68d-00059a3c7a00','41c4efb4-ab3f-11f0-a68d-00059a3c7a00','password','string',0,'2025-10-17 09:54:22',NULL,NULL,NULL,'admin',NULL,1,NULL,NULL,NULL,1),('41c516c7-ab3f-11f0-a68d-00059a3c7a00','VariableUpdate','LoginProcess','LoginProcess:4:33224b12-ab3f-11f0-a68d-00059a3c7a00','41c4efb3-ab3f-11f0-a68d-00059a3c7a00','41c4efb3-ab3f-11f0-a68d-00059a3c7a00','41c4efb3-ab3f-11f0-a68d-00059a3c7a00',NULL,NULL,NULL,NULL,NULL,'41c4efb3-ab3f-11f0-a68d-00059a3c7a00','41c516c6-ab3f-11f0-a68d-00059a3c7a00','username','string',0,'2025-10-17 09:54:22',NULL,NULL,NULL,'admin',NULL,1,NULL,NULL,NULL,1),('80d0285d-ab3f-11f0-a68d-00059a3c7a00','VariableUpdate','LoginProcess','LoginProcess:4:33224b12-ab3f-11f0-a68d-00059a3c7a00','80d0014b-ab3f-11f0-a68d-00059a3c7a00','80d0014b-ab3f-11f0-a68d-00059a3c7a00','80d0014b-ab3f-11f0-a68d-00059a3c7a00',NULL,NULL,NULL,NULL,NULL,'80d0014b-ab3f-11f0-a68d-00059a3c7a00','80d0285c-ab3f-11f0-a68d-00059a3c7a00','password','string',0,'2025-10-17 09:56:08',NULL,NULL,NULL,'admin',NULL,1,NULL,NULL,NULL,1),('80d0285f-ab3f-11f0-a68d-00059a3c7a00','VariableUpdate','LoginProcess','LoginProcess:4:33224b12-ab3f-11f0-a68d-00059a3c7a00','80d0014b-ab3f-11f0-a68d-00059a3c7a00','80d0014b-ab3f-11f0-a68d-00059a3c7a00','80d0014b-ab3f-11f0-a68d-00059a3c7a00',NULL,NULL,NULL,NULL,NULL,'80d0014b-ab3f-11f0-a68d-00059a3c7a00','80d0285e-ab3f-11f0-a68d-00059a3c7a00','username','string',0,'2025-10-17 09:56:08',NULL,NULL,NULL,'admin',NULL,1,NULL,NULL,NULL,1),('8cd17ffc-ab3d-11f0-a68d-00059a3c7a00','VariableUpdate','LoginProcess','LoginProcess:3:8e8ec7ad-ab3a-11f0-a68d-00059a3c7a00','8ccf0efa-ab3d-11f0-a68d-00059a3c7a00','8ccf0efa-ab3d-11f0-a68d-00059a3c7a00','8ccf0efa-ab3d-11f0-a68d-00059a3c7a00',NULL,NULL,NULL,NULL,NULL,'8ccf0efa-ab3d-11f0-a68d-00059a3c7a00','8cd0e3bb-ab3d-11f0-a68d-00059a3c7a00','userId','string',0,'2025-10-17 09:42:09',NULL,NULL,NULL,'3',NULL,1,NULL,NULL,NULL,1),('8cd17ffe-ab3d-11f0-a68d-00059a3c7a00','VariableUpdate','LoginProcess','LoginProcess:3:8e8ec7ad-ab3a-11f0-a68d-00059a3c7a00','8ccf0efa-ab3d-11f0-a68d-00059a3c7a00','8ccf0efa-ab3d-11f0-a68d-00059a3c7a00','8ccf0efa-ab3d-11f0-a68d-00059a3c7a00',NULL,NULL,NULL,NULL,NULL,'8ccf0efa-ab3d-11f0-a68d-00059a3c7a00','8cd17ffd-ab3d-11f0-a68d-00059a3c7a00','username','string',0,'2025-10-17 09:42:09',NULL,NULL,NULL,'admin',NULL,1,NULL,NULL,NULL,1),('94772215-ab3f-11f0-a68d-00059a3c7a00','VariableUpdate','LoginProcess','LoginProcess:4:33224b12-ab3f-11f0-a68d-00059a3c7a00','94772213-ab3f-11f0-a68d-00059a3c7a00','94772213-ab3f-11f0-a68d-00059a3c7a00','94772213-ab3f-11f0-a68d-00059a3c7a00',NULL,NULL,NULL,NULL,NULL,'94772213-ab3f-11f0-a68d-00059a3c7a00','94772214-ab3f-11f0-a68d-00059a3c7a00','password','string',0,'2025-10-17 09:56:41',NULL,NULL,NULL,'test',NULL,1,NULL,NULL,NULL,1),('94774927-ab3f-11f0-a68d-00059a3c7a00','VariableUpdate','LoginProcess','LoginProcess:4:33224b12-ab3f-11f0-a68d-00059a3c7a00','94772213-ab3f-11f0-a68d-00059a3c7a00','94772213-ab3f-11f0-a68d-00059a3c7a00','94772213-ab3f-11f0-a68d-00059a3c7a00',NULL,NULL,NULL,NULL,NULL,'94772213-ab3f-11f0-a68d-00059a3c7a00','94772216-ab3f-11f0-a68d-00059a3c7a00','username','string',0,'2025-10-17 09:56:41',NULL,NULL,NULL,'test',NULL,1,NULL,NULL,NULL,1);
/*!40000 ALTER TABLE `act_hi_detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `act_hi_ext_task_log`
--

DROP TABLE IF EXISTS `act_hi_ext_task_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `act_hi_ext_task_log` (
  `ID_` varchar(64) COLLATE utf8mb3_bin NOT NULL,
  `TIMESTAMP_` timestamp NOT NULL,
  `EXT_TASK_ID_` varchar(64) COLLATE utf8mb3_bin NOT NULL,
  `RETRIES_` int DEFAULT NULL,
  `TOPIC_NAME_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `WORKER_ID_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `PRIORITY_` bigint NOT NULL DEFAULT '0',
  `ERROR_MSG_` varchar(4000) COLLATE utf8mb3_bin DEFAULT NULL,
  `ERROR_DETAILS_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `ACT_ID_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `ACT_INST_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `EXECUTION_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `ROOT_PROC_INST_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `PROC_DEF_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `PROC_DEF_KEY_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `TENANT_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `STATE_` int DEFAULT NULL,
  `REV_` int DEFAULT NULL,
  `REMOVAL_TIME_` datetime DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  KEY `ACT_HI_EXT_TASK_LOG_ROOT_PI` (`ROOT_PROC_INST_ID_`),
  KEY `ACT_HI_EXT_TASK_LOG_PROCINST` (`PROC_INST_ID_`),
  KEY `ACT_HI_EXT_TASK_LOG_PROCDEF` (`PROC_DEF_ID_`),
  KEY `ACT_HI_EXT_TASK_LOG_PROC_DEF_KEY` (`PROC_DEF_KEY_`),
  KEY `ACT_HI_EXT_TASK_LOG_TENANT_ID` (`TENANT_ID_`),
  KEY `ACT_IDX_HI_EXTTASKLOG_ERRORDET` (`ERROR_DETAILS_ID_`),
  KEY `ACT_HI_EXT_TASK_LOG_RM_TIME` (`REMOVAL_TIME_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_hi_ext_task_log`
--

LOCK TABLES `act_hi_ext_task_log` WRITE;
/*!40000 ALTER TABLE `act_hi_ext_task_log` DISABLE KEYS */;
INSERT INTO `act_hi_ext_task_log` VALUES ('8cd3c9f3-ab3d-11f0-a68d-00059a3c7a00','2025-10-17 04:12:09','8cd3c9f2-ab3d-11f0-a68d-00059a3c7a00',NULL,'validate-login',NULL,0,NULL,NULL,'Activity_ValidateCredentials','8cd3c9f1-ab3d-11f0-a68d-00059a3c7a00','8cd3c9f0-ab3d-11f0-a68d-00059a3c7a00','8ccf0efa-ab3d-11f0-a68d-00059a3c7a00','8ccf0efa-ab3d-11f0-a68d-00059a3c7a00','LoginProcess:3:8e8ec7ad-ab3a-11f0-a68d-00059a3c7a00','LoginProcess',NULL,0,NULL,NULL);
/*!40000 ALTER TABLE `act_hi_ext_task_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `act_hi_identitylink`
--

DROP TABLE IF EXISTS `act_hi_identitylink`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `act_hi_identitylink` (
  `ID_` varchar(64) COLLATE utf8mb3_bin NOT NULL,
  `TIMESTAMP_` timestamp NOT NULL,
  `TYPE_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `USER_ID_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `GROUP_ID_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `TASK_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `ROOT_PROC_INST_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `PROC_DEF_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `OPERATION_TYPE_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `ASSIGNER_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `PROC_DEF_KEY_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `TENANT_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `REMOVAL_TIME_` datetime DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  KEY `ACT_IDX_HI_IDENT_LNK_ROOT_PI` (`ROOT_PROC_INST_ID_`),
  KEY `ACT_IDX_HI_IDENT_LNK_USER` (`USER_ID_`),
  KEY `ACT_IDX_HI_IDENT_LNK_GROUP` (`GROUP_ID_`),
  KEY `ACT_IDX_HI_IDENT_LNK_TENANT_ID` (`TENANT_ID_`),
  KEY `ACT_IDX_HI_IDENT_LNK_PROC_DEF_KEY` (`PROC_DEF_KEY_`),
  KEY `ACT_IDX_HI_IDENT_LINK_TASK` (`TASK_ID_`),
  KEY `ACT_IDX_HI_IDENT_LINK_RM_TIME` (`REMOVAL_TIME_`),
  KEY `ACT_IDX_HI_IDENT_LNK_TIMESTAMP` (`TIMESTAMP_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_hi_identitylink`
--

LOCK TABLES `act_hi_identitylink` WRITE;
/*!40000 ALTER TABLE `act_hi_identitylink` DISABLE KEYS */;
INSERT INTO `act_hi_identitylink` VALUES ('61c4934b-a8cd-11f0-821c-00059a3c7a00','2025-10-14 01:44:11','assignee','admin',NULL,'61c4934a-a8cd-11f0-821c-00059a3c7a00','61c49346-a8cd-11f0-821c-00059a3c7a00','welcome_process_id:3:61c1d425-a8cd-11f0-821c-00059a3c7a00','add',NULL,'welcome_process_id',NULL,NULL);
/*!40000 ALTER TABLE `act_hi_identitylink` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `act_hi_incident`
--

DROP TABLE IF EXISTS `act_hi_incident`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `act_hi_incident` (
  `ID_` varchar(64) COLLATE utf8mb3_bin NOT NULL,
  `PROC_DEF_KEY_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `PROC_DEF_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `ROOT_PROC_INST_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `EXECUTION_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `CREATE_TIME_` timestamp NOT NULL,
  `END_TIME_` timestamp NULL DEFAULT NULL,
  `INCIDENT_MSG_` varchar(4000) COLLATE utf8mb3_bin DEFAULT NULL,
  `INCIDENT_TYPE_` varchar(255) COLLATE utf8mb3_bin NOT NULL,
  `ACTIVITY_ID_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `FAILED_ACTIVITY_ID_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `CAUSE_INCIDENT_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `ROOT_CAUSE_INCIDENT_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `CONFIGURATION_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `HISTORY_CONFIGURATION_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `INCIDENT_STATE_` int DEFAULT NULL,
  `TENANT_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `JOB_DEF_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `ANNOTATION_` varchar(4000) COLLATE utf8mb3_bin DEFAULT NULL,
  `REMOVAL_TIME_` datetime DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  KEY `ACT_IDX_HI_INCIDENT_TENANT_ID` (`TENANT_ID_`),
  KEY `ACT_IDX_HI_INCIDENT_PROC_DEF_KEY` (`PROC_DEF_KEY_`),
  KEY `ACT_IDX_HI_INCIDENT_ROOT_PI` (`ROOT_PROC_INST_ID_`),
  KEY `ACT_IDX_HI_INCIDENT_PROCINST` (`PROC_INST_ID_`),
  KEY `ACT_IDX_HI_INCIDENT_RM_TIME` (`REMOVAL_TIME_`),
  KEY `ACT_IDX_HI_INCIDENT_CREATE_TIME` (`CREATE_TIME_`),
  KEY `ACT_IDX_HI_INCIDENT_END_TIME` (`END_TIME_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_hi_incident`
--

LOCK TABLES `act_hi_incident` WRITE;
/*!40000 ALTER TABLE `act_hi_incident` DISABLE KEYS */;
/*!40000 ALTER TABLE `act_hi_incident` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `act_hi_job_log`
--

DROP TABLE IF EXISTS `act_hi_job_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `act_hi_job_log` (
  `ID_` varchar(64) COLLATE utf8mb3_bin NOT NULL,
  `TIMESTAMP_` datetime NOT NULL,
  `JOB_ID_` varchar(64) COLLATE utf8mb3_bin NOT NULL,
  `JOB_DUEDATE_` datetime DEFAULT NULL,
  `JOB_RETRIES_` int DEFAULT NULL,
  `JOB_PRIORITY_` bigint NOT NULL DEFAULT '0',
  `JOB_EXCEPTION_MSG_` varchar(4000) COLLATE utf8mb3_bin DEFAULT NULL,
  `JOB_EXCEPTION_STACK_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `JOB_STATE_` int DEFAULT NULL,
  `JOB_DEF_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `JOB_DEF_TYPE_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `JOB_DEF_CONFIGURATION_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `ACT_ID_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `FAILED_ACT_ID_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `EXECUTION_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `ROOT_PROC_INST_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `PROCESS_INSTANCE_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `PROCESS_DEF_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `PROCESS_DEF_KEY_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `DEPLOYMENT_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `SEQUENCE_COUNTER_` bigint DEFAULT NULL,
  `TENANT_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `HOSTNAME_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `REMOVAL_TIME_` datetime DEFAULT NULL,
  `BATCH_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  KEY `ACT_IDX_HI_JOB_LOG_ROOT_PI` (`ROOT_PROC_INST_ID_`),
  KEY `ACT_IDX_HI_JOB_LOG_PROCINST` (`PROCESS_INSTANCE_ID_`),
  KEY `ACT_IDX_HI_JOB_LOG_PROCDEF` (`PROCESS_DEF_ID_`),
  KEY `ACT_IDX_HI_JOB_LOG_TENANT_ID` (`TENANT_ID_`),
  KEY `ACT_IDX_HI_JOB_LOG_JOB_DEF_ID` (`JOB_DEF_ID_`),
  KEY `ACT_IDX_HI_JOB_LOG_PROC_DEF_KEY` (`PROCESS_DEF_KEY_`),
  KEY `ACT_IDX_HI_JOB_LOG_EX_STACK` (`JOB_EXCEPTION_STACK_ID_`),
  KEY `ACT_IDX_HI_JOB_LOG_RM_TIME` (`REMOVAL_TIME_`),
  KEY `ACT_IDX_HI_JOB_LOG_JOB_CONF` (`JOB_DEF_CONFIGURATION_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_hi_job_log`
--

LOCK TABLES `act_hi_job_log` WRITE;
/*!40000 ALTER TABLE `act_hi_job_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `act_hi_job_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `act_hi_op_log`
--

DROP TABLE IF EXISTS `act_hi_op_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `act_hi_op_log` (
  `ID_` varchar(64) COLLATE utf8mb3_bin NOT NULL,
  `DEPLOYMENT_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `PROC_DEF_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `PROC_DEF_KEY_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `ROOT_PROC_INST_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `EXECUTION_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `CASE_DEF_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `CASE_INST_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `CASE_EXECUTION_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `TASK_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `JOB_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `JOB_DEF_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `BATCH_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `USER_ID_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `TIMESTAMP_` timestamp NOT NULL,
  `OPERATION_TYPE_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `OPERATION_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `ENTITY_TYPE_` varchar(30) COLLATE utf8mb3_bin DEFAULT NULL,
  `PROPERTY_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `ORG_VALUE_` varchar(4000) COLLATE utf8mb3_bin DEFAULT NULL,
  `NEW_VALUE_` varchar(4000) COLLATE utf8mb3_bin DEFAULT NULL,
  `TENANT_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `REMOVAL_TIME_` datetime DEFAULT NULL,
  `CATEGORY_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `EXTERNAL_TASK_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `ANNOTATION_` varchar(4000) COLLATE utf8mb3_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  KEY `ACT_IDX_HI_OP_LOG_ROOT_PI` (`ROOT_PROC_INST_ID_`),
  KEY `ACT_IDX_HI_OP_LOG_PROCINST` (`PROC_INST_ID_`),
  KEY `ACT_IDX_HI_OP_LOG_PROCDEF` (`PROC_DEF_ID_`),
  KEY `ACT_IDX_HI_OP_LOG_TASK` (`TASK_ID_`),
  KEY `ACT_IDX_HI_OP_LOG_RM_TIME` (`REMOVAL_TIME_`),
  KEY `ACT_IDX_HI_OP_LOG_TIMESTAMP` (`TIMESTAMP_`),
  KEY `ACT_IDX_HI_OP_LOG_USER_ID` (`USER_ID_`),
  KEY `ACT_IDX_HI_OP_LOG_OP_TYPE` (`OPERATION_TYPE_`),
  KEY `ACT_IDX_HI_OP_LOG_ENTITY_TYPE` (`ENTITY_TYPE_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_hi_op_log`
--

LOCK TABLES `act_hi_op_log` WRITE;
/*!40000 ALTER TABLE `act_hi_op_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `act_hi_op_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `act_hi_procinst`
--

DROP TABLE IF EXISTS `act_hi_procinst`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `act_hi_procinst` (
  `ID_` varchar(64) COLLATE utf8mb3_bin NOT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8mb3_bin NOT NULL,
  `BUSINESS_KEY_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `PROC_DEF_KEY_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `PROC_DEF_ID_` varchar(64) COLLATE utf8mb3_bin NOT NULL,
  `START_TIME_` datetime NOT NULL,
  `END_TIME_` datetime DEFAULT NULL,
  `REMOVAL_TIME_` datetime DEFAULT NULL,
  `DURATION_` bigint DEFAULT NULL,
  `START_USER_ID_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `START_ACT_ID_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `END_ACT_ID_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `SUPER_PROCESS_INSTANCE_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `ROOT_PROC_INST_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `SUPER_CASE_INSTANCE_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `CASE_INST_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `DELETE_REASON_` varchar(4000) COLLATE utf8mb3_bin DEFAULT NULL,
  `TENANT_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `STATE_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `RESTARTED_PROC_INST_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  UNIQUE KEY `PROC_INST_ID_` (`PROC_INST_ID_`),
  KEY `ACT_IDX_HI_PRO_INST_END` (`END_TIME_`),
  KEY `ACT_IDX_HI_PRO_I_BUSKEY` (`BUSINESS_KEY_`),
  KEY `ACT_IDX_HI_PRO_INST_TENANT_ID` (`TENANT_ID_`),
  KEY `ACT_IDX_HI_PRO_INST_PROC_DEF_KEY` (`PROC_DEF_KEY_`),
  KEY `ACT_IDX_HI_PRO_INST_PROC_TIME` (`START_TIME_`,`END_TIME_`),
  KEY `ACT_IDX_HI_PI_PDEFID_END_TIME` (`PROC_DEF_ID_`,`END_TIME_`),
  KEY `ACT_IDX_HI_PRO_INST_ROOT_PI` (`ROOT_PROC_INST_ID_`),
  KEY `ACT_IDX_HI_PRO_INST_RM_TIME` (`REMOVAL_TIME_`),
  KEY `ACT_IDX_HI_PRO_RST_PRO_INST_ID` (`RESTARTED_PROC_INST_ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_hi_procinst`
--

LOCK TABLES `act_hi_procinst` WRITE;
/*!40000 ALTER TABLE `act_hi_procinst` DISABLE KEYS */;
INSERT INTO `act_hi_procinst` VALUES ('3a441e2f-a8cd-11f0-821c-00059a3c7a00','3a441e2f-a8cd-11f0-821c-00059a3c7a00',NULL,'welcome_process_id','welcome_process_id:2:3a3a5a2e-a8cd-11f0-821c-00059a3c7a00','2025-10-14 07:13:05','2025-10-14 07:13:05','2026-01-22 07:13:05',24,NULL,'Event_1yyqk5z','Event_1tqbdzf',NULL,'3a441e2f-a8cd-11f0-821c-00059a3c7a00',NULL,NULL,NULL,NULL,'COMPLETED',NULL),('41c4efb3-ab3f-11f0-a68d-00059a3c7a00','41c4efb3-ab3f-11f0-a68d-00059a3c7a00',NULL,'LoginProcess','LoginProcess:4:33224b12-ab3f-11f0-a68d-00059a3c7a00','2025-10-17 09:54:22',NULL,NULL,NULL,NULL,'StartEvent_1',NULL,NULL,'41c4efb3-ab3f-11f0-a68d-00059a3c7a00',NULL,NULL,NULL,NULL,'ACTIVE',NULL),('61c49346-a8cd-11f0-821c-00059a3c7a00','61c49346-a8cd-11f0-821c-00059a3c7a00',NULL,'welcome_process_id','welcome_process_id:3:61c1d425-a8cd-11f0-821c-00059a3c7a00','2025-10-14 07:14:11',NULL,NULL,NULL,NULL,'Event_1yyqk5z',NULL,NULL,'61c49346-a8cd-11f0-821c-00059a3c7a00',NULL,NULL,NULL,NULL,'ACTIVE',NULL),('80d0014b-ab3f-11f0-a68d-00059a3c7a00','80d0014b-ab3f-11f0-a68d-00059a3c7a00',NULL,'LoginProcess','LoginProcess:4:33224b12-ab3f-11f0-a68d-00059a3c7a00','2025-10-17 09:56:08',NULL,NULL,NULL,NULL,'StartEvent_1',NULL,NULL,'80d0014b-ab3f-11f0-a68d-00059a3c7a00',NULL,NULL,NULL,NULL,'ACTIVE',NULL),('8ccf0efa-ab3d-11f0-a68d-00059a3c7a00','8ccf0efa-ab3d-11f0-a68d-00059a3c7a00',NULL,'LoginProcess','LoginProcess:3:8e8ec7ad-ab3a-11f0-a68d-00059a3c7a00','2025-10-17 09:42:09',NULL,NULL,NULL,NULL,'StartEvent_1',NULL,NULL,'8ccf0efa-ab3d-11f0-a68d-00059a3c7a00',NULL,NULL,NULL,NULL,'ACTIVE',NULL),('94772213-ab3f-11f0-a68d-00059a3c7a00','94772213-ab3f-11f0-a68d-00059a3c7a00',NULL,'LoginProcess','LoginProcess:4:33224b12-ab3f-11f0-a68d-00059a3c7a00','2025-10-17 09:56:41',NULL,NULL,NULL,NULL,'StartEvent_1',NULL,NULL,'94772213-ab3f-11f0-a68d-00059a3c7a00',NULL,NULL,NULL,NULL,'ACTIVE',NULL);
/*!40000 ALTER TABLE `act_hi_procinst` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `act_hi_taskinst`
--

DROP TABLE IF EXISTS `act_hi_taskinst`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `act_hi_taskinst` (
  `ID_` varchar(64) COLLATE utf8mb3_bin NOT NULL,
  `TASK_DEF_KEY_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `PROC_DEF_KEY_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `PROC_DEF_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `ROOT_PROC_INST_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `EXECUTION_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `CASE_DEF_KEY_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `CASE_DEF_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `CASE_INST_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `CASE_EXECUTION_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `ACT_INST_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `NAME_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `PARENT_TASK_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `DESCRIPTION_` varchar(4000) COLLATE utf8mb3_bin DEFAULT NULL,
  `OWNER_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `ASSIGNEE_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `START_TIME_` datetime NOT NULL,
  `END_TIME_` datetime DEFAULT NULL,
  `DURATION_` bigint DEFAULT NULL,
  `DELETE_REASON_` varchar(4000) COLLATE utf8mb3_bin DEFAULT NULL,
  `PRIORITY_` int DEFAULT NULL,
  `DUE_DATE_` datetime DEFAULT NULL,
  `FOLLOW_UP_DATE_` datetime DEFAULT NULL,
  `TENANT_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `REMOVAL_TIME_` datetime DEFAULT NULL,
  `TASK_STATE_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  KEY `ACT_IDX_HI_TASKINST_ROOT_PI` (`ROOT_PROC_INST_ID_`),
  KEY `ACT_IDX_HI_TASK_INST_TENANT_ID` (`TENANT_ID_`),
  KEY `ACT_IDX_HI_TASK_INST_PROC_DEF_KEY` (`PROC_DEF_KEY_`),
  KEY `ACT_IDX_HI_TASKINST_PROCINST` (`PROC_INST_ID_`),
  KEY `ACT_IDX_HI_TASKINSTID_PROCINST` (`ID_`,`PROC_INST_ID_`),
  KEY `ACT_IDX_HI_TASK_INST_RM_TIME` (`REMOVAL_TIME_`),
  KEY `ACT_IDX_HI_TASK_INST_START` (`START_TIME_`),
  KEY `ACT_IDX_HI_TASK_INST_END` (`END_TIME_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_hi_taskinst`
--

LOCK TABLES `act_hi_taskinst` WRITE;
/*!40000 ALTER TABLE `act_hi_taskinst` DISABLE KEYS */;
INSERT INTO `act_hi_taskinst` VALUES ('41c5b30a-ab3f-11f0-a68d-00059a3c7a00','Activity_ShowLoginForm','LoginProcess','LoginProcess:4:33224b12-ab3f-11f0-a68d-00059a3c7a00','41c4efb3-ab3f-11f0-a68d-00059a3c7a00','41c4efb3-ab3f-11f0-a68d-00059a3c7a00','41c4efb3-ab3f-11f0-a68d-00059a3c7a00',NULL,NULL,NULL,NULL,'Activity_ShowLoginForm:41c516c9-ab3f-11f0-a68d-00059a3c7a00','Show Login Form',NULL,NULL,NULL,NULL,'2025-10-17 09:54:22',NULL,NULL,NULL,50,NULL,NULL,NULL,NULL,'Created'),('61c4934a-a8cd-11f0-821c-00059a3c7a00','Activity_0gl2886','welcome_process_id','welcome_process_id:3:61c1d425-a8cd-11f0-821c-00059a3c7a00','61c49346-a8cd-11f0-821c-00059a3c7a00','61c49346-a8cd-11f0-821c-00059a3c7a00','61c49346-a8cd-11f0-821c-00059a3c7a00',NULL,NULL,NULL,NULL,'Activity_0gl2886:61c49349-a8cd-11f0-821c-00059a3c7a00','User task',NULL,NULL,NULL,'admin','2025-10-14 07:14:11',NULL,NULL,NULL,50,NULL,NULL,NULL,NULL,'Created'),('80d04f72-ab3f-11f0-a68d-00059a3c7a00','Activity_ShowLoginForm','LoginProcess','LoginProcess:4:33224b12-ab3f-11f0-a68d-00059a3c7a00','80d0014b-ab3f-11f0-a68d-00059a3c7a00','80d0014b-ab3f-11f0-a68d-00059a3c7a00','80d0014b-ab3f-11f0-a68d-00059a3c7a00',NULL,NULL,NULL,NULL,'Activity_ShowLoginForm:80d04f71-ab3f-11f0-a68d-00059a3c7a00','Show Login Form',NULL,NULL,NULL,NULL,'2025-10-17 09:56:08',NULL,NULL,NULL,50,NULL,NULL,NULL,NULL,'Created'),('9477703a-ab3f-11f0-a68d-00059a3c7a00','Activity_ShowLoginForm','LoginProcess','LoginProcess:4:33224b12-ab3f-11f0-a68d-00059a3c7a00','94772213-ab3f-11f0-a68d-00059a3c7a00','94772213-ab3f-11f0-a68d-00059a3c7a00','94772213-ab3f-11f0-a68d-00059a3c7a00',NULL,NULL,NULL,NULL,'Activity_ShowLoginForm:94774929-ab3f-11f0-a68d-00059a3c7a00','Show Login Form',NULL,NULL,NULL,NULL,'2025-10-17 09:56:41',NULL,NULL,NULL,50,NULL,NULL,NULL,NULL,'Created');
/*!40000 ALTER TABLE `act_hi_taskinst` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `act_hi_varinst`
--

DROP TABLE IF EXISTS `act_hi_varinst`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `act_hi_varinst` (
  `ID_` varchar(64) COLLATE utf8mb3_bin NOT NULL,
  `PROC_DEF_KEY_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `PROC_DEF_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `ROOT_PROC_INST_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `EXECUTION_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `ACT_INST_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `CASE_DEF_KEY_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `CASE_DEF_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `CASE_INST_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `CASE_EXECUTION_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `TASK_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `NAME_` varchar(255) COLLATE utf8mb3_bin NOT NULL,
  `VAR_TYPE_` varchar(100) COLLATE utf8mb3_bin DEFAULT NULL,
  `CREATE_TIME_` datetime DEFAULT NULL,
  `REV_` int DEFAULT NULL,
  `BYTEARRAY_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `DOUBLE_` double DEFAULT NULL,
  `LONG_` bigint DEFAULT NULL,
  `TEXT_` varchar(4000) COLLATE utf8mb3_bin DEFAULT NULL,
  `TEXT2_` varchar(4000) COLLATE utf8mb3_bin DEFAULT NULL,
  `TENANT_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `STATE_` varchar(20) COLLATE utf8mb3_bin DEFAULT NULL,
  `REMOVAL_TIME_` datetime DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  KEY `ACT_IDX_HI_VARINST_ROOT_PI` (`ROOT_PROC_INST_ID_`),
  KEY `ACT_IDX_HI_PROCVAR_PROC_INST` (`PROC_INST_ID_`),
  KEY `ACT_IDX_HI_PROCVAR_NAME_TYPE` (`NAME_`,`VAR_TYPE_`),
  KEY `ACT_IDX_HI_CASEVAR_CASE_INST` (`CASE_INST_ID_`),
  KEY `ACT_IDX_HI_VAR_INST_TENANT_ID` (`TENANT_ID_`),
  KEY `ACT_IDX_HI_VAR_INST_PROC_DEF_KEY` (`PROC_DEF_KEY_`),
  KEY `ACT_IDX_HI_VARINST_BYTEAR` (`BYTEARRAY_ID_`),
  KEY `ACT_IDX_HI_VARINST_RM_TIME` (`REMOVAL_TIME_`),
  KEY `ACT_IDX_HI_VAR_PI_NAME_TYPE` (`PROC_INST_ID_`,`NAME_`,`VAR_TYPE_`),
  KEY `ACT_IDX_HI_VARINST_NAME` (`NAME_`),
  KEY `ACT_IDX_HI_VARINST_ACT_INST_ID` (`ACT_INST_ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_hi_varinst`
--

LOCK TABLES `act_hi_varinst` WRITE;
/*!40000 ALTER TABLE `act_hi_varinst` DISABLE KEYS */;
INSERT INTO `act_hi_varinst` VALUES ('41c4efb4-ab3f-11f0-a68d-00059a3c7a00','LoginProcess','LoginProcess:4:33224b12-ab3f-11f0-a68d-00059a3c7a00','41c4efb3-ab3f-11f0-a68d-00059a3c7a00','41c4efb3-ab3f-11f0-a68d-00059a3c7a00','41c4efb3-ab3f-11f0-a68d-00059a3c7a00','41c4efb3-ab3f-11f0-a68d-00059a3c7a00',NULL,NULL,NULL,NULL,NULL,'password','string','2025-10-17 09:54:22',0,NULL,NULL,NULL,'admin',NULL,NULL,'CREATED',NULL),('41c516c6-ab3f-11f0-a68d-00059a3c7a00','LoginProcess','LoginProcess:4:33224b12-ab3f-11f0-a68d-00059a3c7a00','41c4efb3-ab3f-11f0-a68d-00059a3c7a00','41c4efb3-ab3f-11f0-a68d-00059a3c7a00','41c4efb3-ab3f-11f0-a68d-00059a3c7a00','41c4efb3-ab3f-11f0-a68d-00059a3c7a00',NULL,NULL,NULL,NULL,NULL,'username','string','2025-10-17 09:54:22',0,NULL,NULL,NULL,'admin',NULL,NULL,'CREATED',NULL),('80d0285c-ab3f-11f0-a68d-00059a3c7a00','LoginProcess','LoginProcess:4:33224b12-ab3f-11f0-a68d-00059a3c7a00','80d0014b-ab3f-11f0-a68d-00059a3c7a00','80d0014b-ab3f-11f0-a68d-00059a3c7a00','80d0014b-ab3f-11f0-a68d-00059a3c7a00','80d0014b-ab3f-11f0-a68d-00059a3c7a00',NULL,NULL,NULL,NULL,NULL,'password','string','2025-10-17 09:56:08',0,NULL,NULL,NULL,'admin',NULL,NULL,'CREATED',NULL),('80d0285e-ab3f-11f0-a68d-00059a3c7a00','LoginProcess','LoginProcess:4:33224b12-ab3f-11f0-a68d-00059a3c7a00','80d0014b-ab3f-11f0-a68d-00059a3c7a00','80d0014b-ab3f-11f0-a68d-00059a3c7a00','80d0014b-ab3f-11f0-a68d-00059a3c7a00','80d0014b-ab3f-11f0-a68d-00059a3c7a00',NULL,NULL,NULL,NULL,NULL,'username','string','2025-10-17 09:56:08',0,NULL,NULL,NULL,'admin',NULL,NULL,'CREATED',NULL),('8cd0e3bb-ab3d-11f0-a68d-00059a3c7a00','LoginProcess','LoginProcess:3:8e8ec7ad-ab3a-11f0-a68d-00059a3c7a00','8ccf0efa-ab3d-11f0-a68d-00059a3c7a00','8ccf0efa-ab3d-11f0-a68d-00059a3c7a00','8ccf0efa-ab3d-11f0-a68d-00059a3c7a00','8ccf0efa-ab3d-11f0-a68d-00059a3c7a00',NULL,NULL,NULL,NULL,NULL,'userId','string','2025-10-17 09:42:09',0,NULL,NULL,NULL,'3',NULL,NULL,'CREATED',NULL),('8cd17ffd-ab3d-11f0-a68d-00059a3c7a00','LoginProcess','LoginProcess:3:8e8ec7ad-ab3a-11f0-a68d-00059a3c7a00','8ccf0efa-ab3d-11f0-a68d-00059a3c7a00','8ccf0efa-ab3d-11f0-a68d-00059a3c7a00','8ccf0efa-ab3d-11f0-a68d-00059a3c7a00','8ccf0efa-ab3d-11f0-a68d-00059a3c7a00',NULL,NULL,NULL,NULL,NULL,'username','string','2025-10-17 09:42:09',0,NULL,NULL,NULL,'admin',NULL,NULL,'CREATED',NULL),('94772214-ab3f-11f0-a68d-00059a3c7a00','LoginProcess','LoginProcess:4:33224b12-ab3f-11f0-a68d-00059a3c7a00','94772213-ab3f-11f0-a68d-00059a3c7a00','94772213-ab3f-11f0-a68d-00059a3c7a00','94772213-ab3f-11f0-a68d-00059a3c7a00','94772213-ab3f-11f0-a68d-00059a3c7a00',NULL,NULL,NULL,NULL,NULL,'password','string','2025-10-17 09:56:41',0,NULL,NULL,NULL,'test',NULL,NULL,'CREATED',NULL),('94772216-ab3f-11f0-a68d-00059a3c7a00','LoginProcess','LoginProcess:4:33224b12-ab3f-11f0-a68d-00059a3c7a00','94772213-ab3f-11f0-a68d-00059a3c7a00','94772213-ab3f-11f0-a68d-00059a3c7a00','94772213-ab3f-11f0-a68d-00059a3c7a00','94772213-ab3f-11f0-a68d-00059a3c7a00',NULL,NULL,NULL,NULL,NULL,'username','string','2025-10-17 09:56:41',0,NULL,NULL,NULL,'test',NULL,NULL,'CREATED',NULL);
/*!40000 ALTER TABLE `act_hi_varinst` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `act_id_group`
--

DROP TABLE IF EXISTS `act_id_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `act_id_group` (
  `ID_` varchar(64) COLLATE utf8mb3_bin NOT NULL,
  `REV_` int DEFAULT NULL,
  `NAME_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `TYPE_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_id_group`
--

LOCK TABLES `act_id_group` WRITE;
/*!40000 ALTER TABLE `act_id_group` DISABLE KEYS */;
INSERT INTO `act_id_group` VALUES ('camunda-admin',1,'camunda BPM Administrators','SYSTEM');
/*!40000 ALTER TABLE `act_id_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `act_id_info`
--

DROP TABLE IF EXISTS `act_id_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `act_id_info` (
  `ID_` varchar(64) COLLATE utf8mb3_bin NOT NULL,
  `REV_` int DEFAULT NULL,
  `USER_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `TYPE_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `KEY_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `VALUE_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `PASSWORD_` longblob,
  `PARENT_ID_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_id_info`
--

LOCK TABLES `act_id_info` WRITE;
/*!40000 ALTER TABLE `act_id_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `act_id_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `act_id_membership`
--

DROP TABLE IF EXISTS `act_id_membership`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `act_id_membership` (
  `USER_ID_` varchar(64) COLLATE utf8mb3_bin NOT NULL,
  `GROUP_ID_` varchar(64) COLLATE utf8mb3_bin NOT NULL,
  PRIMARY KEY (`USER_ID_`,`GROUP_ID_`),
  KEY `ACT_FK_MEMB_GROUP` (`GROUP_ID_`),
  CONSTRAINT `ACT_FK_MEMB_GROUP` FOREIGN KEY (`GROUP_ID_`) REFERENCES `act_id_group` (`ID_`),
  CONSTRAINT `ACT_FK_MEMB_USER` FOREIGN KEY (`USER_ID_`) REFERENCES `act_id_user` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_id_membership`
--

LOCK TABLES `act_id_membership` WRITE;
/*!40000 ALTER TABLE `act_id_membership` DISABLE KEYS */;
INSERT INTO `act_id_membership` VALUES ('admin','camunda-admin');
/*!40000 ALTER TABLE `act_id_membership` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `act_id_tenant`
--

DROP TABLE IF EXISTS `act_id_tenant`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `act_id_tenant` (
  `ID_` varchar(64) COLLATE utf8mb3_bin NOT NULL,
  `REV_` int DEFAULT NULL,
  `NAME_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_id_tenant`
--

LOCK TABLES `act_id_tenant` WRITE;
/*!40000 ALTER TABLE `act_id_tenant` DISABLE KEYS */;
/*!40000 ALTER TABLE `act_id_tenant` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `act_id_tenant_member`
--

DROP TABLE IF EXISTS `act_id_tenant_member`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `act_id_tenant_member` (
  `ID_` varchar(64) COLLATE utf8mb3_bin NOT NULL,
  `TENANT_ID_` varchar(64) COLLATE utf8mb3_bin NOT NULL,
  `USER_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `GROUP_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  UNIQUE KEY `ACT_UNIQ_TENANT_MEMB_USER` (`TENANT_ID_`,`USER_ID_`),
  UNIQUE KEY `ACT_UNIQ_TENANT_MEMB_GROUP` (`TENANT_ID_`,`GROUP_ID_`),
  KEY `ACT_FK_TENANT_MEMB_USER` (`USER_ID_`),
  KEY `ACT_FK_TENANT_MEMB_GROUP` (`GROUP_ID_`),
  CONSTRAINT `ACT_FK_TENANT_MEMB` FOREIGN KEY (`TENANT_ID_`) REFERENCES `act_id_tenant` (`ID_`),
  CONSTRAINT `ACT_FK_TENANT_MEMB_GROUP` FOREIGN KEY (`GROUP_ID_`) REFERENCES `act_id_group` (`ID_`),
  CONSTRAINT `ACT_FK_TENANT_MEMB_USER` FOREIGN KEY (`USER_ID_`) REFERENCES `act_id_user` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_id_tenant_member`
--

LOCK TABLES `act_id_tenant_member` WRITE;
/*!40000 ALTER TABLE `act_id_tenant_member` DISABLE KEYS */;
/*!40000 ALTER TABLE `act_id_tenant_member` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `act_id_user`
--

DROP TABLE IF EXISTS `act_id_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `act_id_user` (
  `ID_` varchar(64) COLLATE utf8mb3_bin NOT NULL,
  `REV_` int DEFAULT NULL,
  `FIRST_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `LAST_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `EMAIL_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `PWD_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `SALT_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `LOCK_EXP_TIME_` datetime DEFAULT NULL,
  `ATTEMPTS_` int DEFAULT NULL,
  `PICTURE_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_id_user`
--

LOCK TABLES `act_id_user` WRITE;
/*!40000 ALTER TABLE `act_id_user` DISABLE KEYS */;
INSERT INTO `act_id_user` VALUES ('admin',1,'Admin','Admin','admin@localhost','{SHA-512}ijZ+wLnj620wbG2kuQZh362m2miOkDg6Re/cf+Ddv0xdRLRP6wUPQTWj2clkKIv5B+XYVXlE1fOEx35Sr+ZcpA==','Puspr9vIwH4lyRZJ/9hgVw==',NULL,NULL,NULL);
/*!40000 ALTER TABLE `act_id_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `act_re_camformdef`
--

DROP TABLE IF EXISTS `act_re_camformdef`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `act_re_camformdef` (
  `ID_` varchar(64) COLLATE utf8mb3_bin NOT NULL,
  `REV_` int DEFAULT NULL,
  `KEY_` varchar(255) COLLATE utf8mb3_bin NOT NULL,
  `VERSION_` int NOT NULL,
  `DEPLOYMENT_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `RESOURCE_NAME_` varchar(4000) COLLATE utf8mb3_bin DEFAULT NULL,
  `TENANT_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_re_camformdef`
--

LOCK TABLES `act_re_camformdef` WRITE;
/*!40000 ALTER TABLE `act_re_camformdef` DISABLE KEYS */;
/*!40000 ALTER TABLE `act_re_camformdef` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `act_re_case_def`
--

DROP TABLE IF EXISTS `act_re_case_def`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `act_re_case_def` (
  `ID_` varchar(64) COLLATE utf8mb3_bin NOT NULL,
  `REV_` int DEFAULT NULL,
  `CATEGORY_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `NAME_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `KEY_` varchar(255) COLLATE utf8mb3_bin NOT NULL,
  `VERSION_` int NOT NULL,
  `DEPLOYMENT_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `RESOURCE_NAME_` varchar(4000) COLLATE utf8mb3_bin DEFAULT NULL,
  `DGRM_RESOURCE_NAME_` varchar(4000) COLLATE utf8mb3_bin DEFAULT NULL,
  `TENANT_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `HISTORY_TTL_` int DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  KEY `ACT_IDX_CASE_DEF_TENANT_ID` (`TENANT_ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_re_case_def`
--

LOCK TABLES `act_re_case_def` WRITE;
/*!40000 ALTER TABLE `act_re_case_def` DISABLE KEYS */;
/*!40000 ALTER TABLE `act_re_case_def` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `act_re_decision_def`
--

DROP TABLE IF EXISTS `act_re_decision_def`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `act_re_decision_def` (
  `ID_` varchar(64) COLLATE utf8mb3_bin NOT NULL,
  `REV_` int DEFAULT NULL,
  `CATEGORY_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `NAME_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `KEY_` varchar(255) COLLATE utf8mb3_bin NOT NULL,
  `VERSION_` int NOT NULL,
  `DEPLOYMENT_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `RESOURCE_NAME_` varchar(4000) COLLATE utf8mb3_bin DEFAULT NULL,
  `DGRM_RESOURCE_NAME_` varchar(4000) COLLATE utf8mb3_bin DEFAULT NULL,
  `DEC_REQ_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `DEC_REQ_KEY_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `TENANT_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `HISTORY_TTL_` int DEFAULT NULL,
  `VERSION_TAG_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  KEY `ACT_IDX_DEC_DEF_TENANT_ID` (`TENANT_ID_`),
  KEY `ACT_IDX_DEC_DEF_REQ_ID` (`DEC_REQ_ID_`),
  CONSTRAINT `ACT_FK_DEC_REQ` FOREIGN KEY (`DEC_REQ_ID_`) REFERENCES `act_re_decision_req_def` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_re_decision_def`
--

LOCK TABLES `act_re_decision_def` WRITE;
/*!40000 ALTER TABLE `act_re_decision_def` DISABLE KEYS */;
INSERT INTO `act_re_decision_def` VALUES ('discountDecision:1:70c5347e-aab5-11f0-8e98-00059a3c7a00',1,'http://camunda.org/schema/1.0/dmn','Discount Calculation','discountDecision',1,'70bf19f9-aab5-11f0-8e98-00059a3c7a00','DecisionTable.dmn',NULL,NULL,NULL,NULL,5,NULL);
/*!40000 ALTER TABLE `act_re_decision_def` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `act_re_decision_req_def`
--

DROP TABLE IF EXISTS `act_re_decision_req_def`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `act_re_decision_req_def` (
  `ID_` varchar(64) COLLATE utf8mb3_bin NOT NULL,
  `REV_` int DEFAULT NULL,
  `CATEGORY_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `NAME_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `KEY_` varchar(255) COLLATE utf8mb3_bin NOT NULL,
  `VERSION_` int NOT NULL,
  `DEPLOYMENT_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `RESOURCE_NAME_` varchar(4000) COLLATE utf8mb3_bin DEFAULT NULL,
  `DGRM_RESOURCE_NAME_` varchar(4000) COLLATE utf8mb3_bin DEFAULT NULL,
  `TENANT_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  KEY `ACT_IDX_DEC_REQ_DEF_TENANT_ID` (`TENANT_ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_re_decision_req_def`
--

LOCK TABLES `act_re_decision_req_def` WRITE;
/*!40000 ALTER TABLE `act_re_decision_req_def` DISABLE KEYS */;
/*!40000 ALTER TABLE `act_re_decision_req_def` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `act_re_deployment`
--

DROP TABLE IF EXISTS `act_re_deployment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `act_re_deployment` (
  `ID_` varchar(64) COLLATE utf8mb3_bin NOT NULL,
  `NAME_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `DEPLOY_TIME_` datetime DEFAULT NULL,
  `SOURCE_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `TENANT_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  KEY `ACT_IDX_DEPLOYMENT_NAME` (`NAME_`),
  KEY `ACT_IDX_DEPLOYMENT_TENANT_ID` (`TENANT_ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_re_deployment`
--

LOCK TABLES `act_re_deployment` WRITE;
/*!40000 ALTER TABLE `act_re_deployment` DISABLE KEYS */;
INSERT INTO `act_re_deployment` VALUES ('11eb9897-a8cd-11f0-821c-00059a3c7a00','SpringAutoDeployment','2025-10-14 07:11:57',NULL,NULL),('2ffdc4a5-a8cc-11f0-b9fd-00059a3c7a00','SpringAutoDeployment','2025-10-14 07:05:38',NULL,NULL),('331fda10-ab3f-11f0-a68d-00059a3c7a00','camunda-node-deployment','2025-10-17 09:53:58','nodejs-app',NULL),('3a38fa9c-a8cd-11f0-821c-00059a3c7a00','welcome','2025-10-14 07:13:05','Camunda Modeler',NULL),('5a15248c-aab6-11f0-988e-00059a3c7a00','camunda-node-deployment','2025-10-16 17:34:22','nodejs-app',NULL),('61c04d83-a8cd-11f0-821c-00059a3c7a00','welcome','2025-10-14 07:14:11','Camunda Modeler',NULL),('70bf19f9-aab5-11f0-8e98-00059a3c7a00','camunda-node-deployment','2025-10-16 17:27:51','nodejs-app',NULL),('8e7488eb-ab3a-11f0-a68d-00059a3c7a00','camunda-node-deployment','2025-10-17 09:20:43','nodejs-app',NULL);
/*!40000 ALTER TABLE `act_re_deployment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `act_re_procdef`
--

DROP TABLE IF EXISTS `act_re_procdef`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `act_re_procdef` (
  `ID_` varchar(64) COLLATE utf8mb3_bin NOT NULL,
  `REV_` int DEFAULT NULL,
  `CATEGORY_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `NAME_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `KEY_` varchar(255) COLLATE utf8mb3_bin NOT NULL,
  `VERSION_` int NOT NULL,
  `DEPLOYMENT_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `RESOURCE_NAME_` varchar(4000) COLLATE utf8mb3_bin DEFAULT NULL,
  `DGRM_RESOURCE_NAME_` varchar(4000) COLLATE utf8mb3_bin DEFAULT NULL,
  `HAS_START_FORM_KEY_` tinyint DEFAULT NULL,
  `SUSPENSION_STATE_` int DEFAULT NULL,
  `TENANT_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `VERSION_TAG_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `HISTORY_TTL_` int DEFAULT NULL,
  `STARTABLE_` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`ID_`),
  KEY `ACT_IDX_PROCDEF_DEPLOYMENT_ID` (`DEPLOYMENT_ID_`),
  KEY `ACT_IDX_PROCDEF_TENANT_ID` (`TENANT_ID_`),
  KEY `ACT_IDX_PROCDEF_VER_TAG` (`VERSION_TAG_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_re_procdef`
--

LOCK TABLES `act_re_procdef` WRITE;
/*!40000 ALTER TABLE `act_re_procdef` DISABLE KEYS */;
INSERT INTO `act_re_procdef` VALUES ('LoginProcess:1:70c0a09c-aab5-11f0-8e98-00059a3c7a00',1,'http://bpmn.io/schema/bpmn','Login Process','LoginProcess',1,'70bf19f9-aab5-11f0-8e98-00059a3c7a00','LoginProcess.bpmn',NULL,0,1,NULL,NULL,100,1),('LoginProcess:2:5a180abe-aab6-11f0-988e-00059a3c7a00',1,'http://bpmn.io/schema/bpmn','Login Process','LoginProcess',2,'5a15248c-aab6-11f0-988e-00059a3c7a00','LoginProcess.bpmn',NULL,0,1,NULL,NULL,10,1),('LoginProcess:3:8e8ec7ad-ab3a-11f0-a68d-00059a3c7a00',1,'http://bpmn.io/schema/bpmn','Login Process','LoginProcess',3,'8e7488eb-ab3a-11f0-a68d-00059a3c7a00','LoginProcess.bpmn',NULL,0,1,NULL,NULL,10,1),('LoginProcess:4:33224b12-ab3f-11f0-a68d-00059a3c7a00',1,'http://bpmn.io/schema/bpmn','Login Process','LoginProcess',4,'331fda10-ab3f-11f0-a68d-00059a3c7a00','LoginProcess.bpmn',NULL,0,1,NULL,NULL,10,1),('my-learning-process:1:300a95e7-a8cc-11f0-b9fd-00059a3c7a00',1,'http://bpmn.io/schema/bpmn',NULL,'my-learning-process',1,'2ffdc4a5-a8cc-11f0-b9fd-00059a3c7a00','D:\\Downloads_Chrome\\my-learning\\my-learning\\target\\classes\\process.bpmn',NULL,0,1,NULL,NULL,180,1),('my-learning-process:2:11fd24ca-a8cd-11f0-821c-00059a3c7a00',1,'http://bpmn.io/schema/bpmn',NULL,'my-learning-process',2,'11eb9897-a8cd-11f0-821c-00059a3c7a00','D:\\Downloads_Chrome\\my-learning\\my-learning\\target\\classes\\process.bpmn',NULL,0,1,NULL,NULL,180,1),('welcome_process_id:1:11fe5d4b-a8cd-11f0-821c-00059a3c7a00',1,'http://bpmn.io/schema/bpmn','Welcome_Process','welcome_process_id',1,'11eb9897-a8cd-11f0-821c-00059a3c7a00','D:\\Downloads_Chrome\\my-learning\\my-learning\\target\\classes\\welcome.bpmn',NULL,0,1,NULL,NULL,100,1),('welcome_process_id:2:3a3a5a2e-a8cd-11f0-821c-00059a3c7a00',1,'http://bpmn.io/schema/bpmn','Welcome_Process','welcome_process_id',2,'3a38fa9c-a8cd-11f0-821c-00059a3c7a00','welcome.bpmn',NULL,0,1,NULL,NULL,100,1),('welcome_process_id:3:61c1d425-a8cd-11f0-821c-00059a3c7a00',1,'http://bpmn.io/schema/bpmn','Welcome_Process','welcome_process_id',3,'61c04d83-a8cd-11f0-821c-00059a3c7a00','welcome.bpmn',NULL,0,1,NULL,NULL,100,1);
/*!40000 ALTER TABLE `act_re_procdef` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `act_ru_authorization`
--

DROP TABLE IF EXISTS `act_ru_authorization`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `act_ru_authorization` (
  `ID_` varchar(64) COLLATE utf8mb3_bin NOT NULL,
  `REV_` int NOT NULL,
  `TYPE_` int NOT NULL,
  `GROUP_ID_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `USER_ID_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `RESOURCE_TYPE_` int NOT NULL,
  `RESOURCE_ID_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `PERMS_` int DEFAULT NULL,
  `REMOVAL_TIME_` datetime DEFAULT NULL,
  `ROOT_PROC_INST_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  UNIQUE KEY `ACT_UNIQ_AUTH_USER` (`USER_ID_`,`TYPE_`,`RESOURCE_TYPE_`,`RESOURCE_ID_`),
  UNIQUE KEY `ACT_UNIQ_AUTH_GROUP` (`GROUP_ID_`,`TYPE_`,`RESOURCE_TYPE_`,`RESOURCE_ID_`),
  KEY `ACT_IDX_AUTH_GROUP_ID` (`GROUP_ID_`),
  KEY `ACT_IDX_AUTH_RESOURCE_ID` (`RESOURCE_ID_`),
  KEY `ACT_IDX_AUTH_ROOT_PI` (`ROOT_PROC_INST_ID_`),
  KEY `ACT_IDX_AUTH_RM_TIME` (`REMOVAL_TIME_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_ru_authorization`
--

LOCK TABLES `act_ru_authorization` WRITE;
/*!40000 ALTER TABLE `act_ru_authorization` DISABLE KEYS */;
INSERT INTO `act_ru_authorization` VALUES ('2fe9ee6e-a8cc-11f0-b9fd-00059a3c7a00',1,1,'camunda-admin',NULL,0,'*',2147483647,NULL,NULL),('2feb9c1f-a8cc-11f0-b9fd-00059a3c7a00',1,1,'camunda-admin',NULL,1,'*',2147483647,NULL,NULL),('2fec5f70-a8cc-11f0-b9fd-00059a3c7a00',1,1,'camunda-admin',NULL,2,'*',2147483647,NULL,NULL),('2fed22c1-a8cc-11f0-b9fd-00059a3c7a00',1,1,'camunda-admin',NULL,3,'*',2147483647,NULL,NULL),('2fedbf02-a8cc-11f0-b9fd-00059a3c7a00',1,1,'camunda-admin',NULL,4,'*',2147483647,NULL,NULL),('2fee5b43-a8cc-11f0-b9fd-00059a3c7a00',1,1,'camunda-admin',NULL,5,'*',2147483647,NULL,NULL),('2feef784-a8cc-11f0-b9fd-00059a3c7a00',1,1,'camunda-admin',NULL,6,'*',2147483647,NULL,NULL),('2fefbad5-a8cc-11f0-b9fd-00059a3c7a00',1,1,'camunda-admin',NULL,7,'*',2147483647,NULL,NULL),('2ff0a536-a8cc-11f0-b9fd-00059a3c7a00',1,1,'camunda-admin',NULL,8,'*',2147483647,NULL,NULL),('2ff16887-a8cc-11f0-b9fd-00059a3c7a00',1,1,'camunda-admin',NULL,9,'*',2147483647,NULL,NULL),('2ff22bd8-a8cc-11f0-b9fd-00059a3c7a00',1,1,'camunda-admin',NULL,10,'*',2147483647,NULL,NULL),('2ff31639-a8cc-11f0-b9fd-00059a3c7a00',1,1,'camunda-admin',NULL,11,'*',2147483647,NULL,NULL),('2ff3d98a-a8cc-11f0-b9fd-00059a3c7a00',1,1,'camunda-admin',NULL,12,'*',2147483647,NULL,NULL),('2ff4c3eb-a8cc-11f0-b9fd-00059a3c7a00',1,1,'camunda-admin',NULL,13,'*',2147483647,NULL,NULL),('2ff5873c-a8cc-11f0-b9fd-00059a3c7a00',1,1,'camunda-admin',NULL,14,'*',2147483647,NULL,NULL),('2ff64a8d-a8cc-11f0-b9fd-00059a3c7a00',1,1,'camunda-admin',NULL,15,'*',2147483647,NULL,NULL),('2ff70dde-a8cc-11f0-b9fd-00059a3c7a00',1,1,'camunda-admin',NULL,16,'*',2147483647,NULL,NULL),('2ff7d12f-a8cc-11f0-b9fd-00059a3c7a00',1,1,'camunda-admin',NULL,17,'*',2147483647,NULL,NULL),('2ff89480-a8cc-11f0-b9fd-00059a3c7a00',1,1,'camunda-admin',NULL,18,'*',2147483647,NULL,NULL),('2ff930c1-a8cc-11f0-b9fd-00059a3c7a00',1,1,'camunda-admin',NULL,19,'*',2147483647,NULL,NULL),('2ff9f412-a8cc-11f0-b9fd-00059a3c7a00',1,1,'camunda-admin',NULL,20,'*',2147483647,NULL,NULL),('2ffab763-a8cc-11f0-b9fd-00059a3c7a00',1,1,'camunda-admin',NULL,21,'*',2147483647,NULL,NULL);
/*!40000 ALTER TABLE `act_ru_authorization` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `act_ru_batch`
--

DROP TABLE IF EXISTS `act_ru_batch`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `act_ru_batch` (
  `ID_` varchar(64) COLLATE utf8mb3_bin NOT NULL,
  `REV_` int NOT NULL,
  `TYPE_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `TOTAL_JOBS_` int DEFAULT NULL,
  `JOBS_CREATED_` int DEFAULT NULL,
  `JOBS_PER_SEED_` int DEFAULT NULL,
  `INVOCATIONS_PER_JOB_` int DEFAULT NULL,
  `SEED_JOB_DEF_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `BATCH_JOB_DEF_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `MONITOR_JOB_DEF_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `SUSPENSION_STATE_` int DEFAULT NULL,
  `CONFIGURATION_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `TENANT_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `CREATE_USER_ID_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `START_TIME_` datetime DEFAULT NULL,
  `EXEC_START_TIME_` datetime DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  KEY `ACT_IDX_BATCH_SEED_JOB_DEF` (`SEED_JOB_DEF_ID_`),
  KEY `ACT_IDX_BATCH_MONITOR_JOB_DEF` (`MONITOR_JOB_DEF_ID_`),
  KEY `ACT_IDX_BATCH_JOB_DEF` (`BATCH_JOB_DEF_ID_`),
  CONSTRAINT `ACT_FK_BATCH_JOB_DEF` FOREIGN KEY (`BATCH_JOB_DEF_ID_`) REFERENCES `act_ru_jobdef` (`ID_`),
  CONSTRAINT `ACT_FK_BATCH_MONITOR_JOB_DEF` FOREIGN KEY (`MONITOR_JOB_DEF_ID_`) REFERENCES `act_ru_jobdef` (`ID_`),
  CONSTRAINT `ACT_FK_BATCH_SEED_JOB_DEF` FOREIGN KEY (`SEED_JOB_DEF_ID_`) REFERENCES `act_ru_jobdef` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_ru_batch`
--

LOCK TABLES `act_ru_batch` WRITE;
/*!40000 ALTER TABLE `act_ru_batch` DISABLE KEYS */;
/*!40000 ALTER TABLE `act_ru_batch` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `act_ru_case_execution`
--

DROP TABLE IF EXISTS `act_ru_case_execution`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `act_ru_case_execution` (
  `ID_` varchar(64) COLLATE utf8mb3_bin NOT NULL,
  `REV_` int DEFAULT NULL,
  `CASE_INST_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `SUPER_CASE_EXEC_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `SUPER_EXEC_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `BUSINESS_KEY_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `PARENT_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `CASE_DEF_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `ACT_ID_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `PREV_STATE_` int DEFAULT NULL,
  `CURRENT_STATE_` int DEFAULT NULL,
  `REQUIRED_` tinyint(1) DEFAULT NULL,
  `TENANT_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  KEY `ACT_IDX_CASE_EXEC_BUSKEY` (`BUSINESS_KEY_`),
  KEY `ACT_IDX_CASE_EXE_CASE_INST` (`CASE_INST_ID_`),
  KEY `ACT_FK_CASE_EXE_PARENT` (`PARENT_ID_`),
  KEY `ACT_FK_CASE_EXE_CASE_DEF` (`CASE_DEF_ID_`),
  KEY `ACT_IDX_CASE_EXEC_TENANT_ID` (`TENANT_ID_`),
  CONSTRAINT `ACT_FK_CASE_EXE_CASE_DEF` FOREIGN KEY (`CASE_DEF_ID_`) REFERENCES `act_re_case_def` (`ID_`),
  CONSTRAINT `ACT_FK_CASE_EXE_CASE_INST` FOREIGN KEY (`CASE_INST_ID_`) REFERENCES `act_ru_case_execution` (`ID_`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `ACT_FK_CASE_EXE_PARENT` FOREIGN KEY (`PARENT_ID_`) REFERENCES `act_ru_case_execution` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_ru_case_execution`
--

LOCK TABLES `act_ru_case_execution` WRITE;
/*!40000 ALTER TABLE `act_ru_case_execution` DISABLE KEYS */;
/*!40000 ALTER TABLE `act_ru_case_execution` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `act_ru_case_sentry_part`
--

DROP TABLE IF EXISTS `act_ru_case_sentry_part`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `act_ru_case_sentry_part` (
  `ID_` varchar(64) COLLATE utf8mb3_bin NOT NULL,
  `REV_` int DEFAULT NULL,
  `CASE_INST_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `CASE_EXEC_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `SENTRY_ID_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `TYPE_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `SOURCE_CASE_EXEC_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `STANDARD_EVENT_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `SOURCE_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `VARIABLE_EVENT_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `VARIABLE_NAME_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `SATISFIED_` tinyint(1) DEFAULT NULL,
  `TENANT_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  KEY `ACT_FK_CASE_SENTRY_CASE_INST` (`CASE_INST_ID_`),
  KEY `ACT_FK_CASE_SENTRY_CASE_EXEC` (`CASE_EXEC_ID_`),
  CONSTRAINT `ACT_FK_CASE_SENTRY_CASE_EXEC` FOREIGN KEY (`CASE_EXEC_ID_`) REFERENCES `act_ru_case_execution` (`ID_`),
  CONSTRAINT `ACT_FK_CASE_SENTRY_CASE_INST` FOREIGN KEY (`CASE_INST_ID_`) REFERENCES `act_ru_case_execution` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_ru_case_sentry_part`
--

LOCK TABLES `act_ru_case_sentry_part` WRITE;
/*!40000 ALTER TABLE `act_ru_case_sentry_part` DISABLE KEYS */;
/*!40000 ALTER TABLE `act_ru_case_sentry_part` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `act_ru_event_subscr`
--

DROP TABLE IF EXISTS `act_ru_event_subscr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `act_ru_event_subscr` (
  `ID_` varchar(64) COLLATE utf8mb3_bin NOT NULL,
  `REV_` int DEFAULT NULL,
  `EVENT_TYPE_` varchar(255) COLLATE utf8mb3_bin NOT NULL,
  `EVENT_NAME_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `EXECUTION_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `ACTIVITY_ID_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `CONFIGURATION_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `CREATED_` datetime NOT NULL,
  `TENANT_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  KEY `ACT_IDX_EVENT_SUBSCR_CONFIG_` (`CONFIGURATION_`),
  KEY `ACT_IDX_EVENT_SUBSCR_TENANT_ID` (`TENANT_ID_`),
  KEY `ACT_FK_EVENT_EXEC` (`EXECUTION_ID_`),
  KEY `ACT_IDX_EVENT_SUBSCR_EVT_NAME` (`EVENT_NAME_`),
  CONSTRAINT `ACT_FK_EVENT_EXEC` FOREIGN KEY (`EXECUTION_ID_`) REFERENCES `act_ru_execution` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_ru_event_subscr`
--

LOCK TABLES `act_ru_event_subscr` WRITE;
/*!40000 ALTER TABLE `act_ru_event_subscr` DISABLE KEYS */;
/*!40000 ALTER TABLE `act_ru_event_subscr` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `act_ru_execution`
--

DROP TABLE IF EXISTS `act_ru_execution`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `act_ru_execution` (
  `ID_` varchar(64) COLLATE utf8mb3_bin NOT NULL,
  `REV_` int DEFAULT NULL,
  `ROOT_PROC_INST_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `BUSINESS_KEY_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `PARENT_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `PROC_DEF_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `SUPER_EXEC_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `SUPER_CASE_EXEC_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `CASE_INST_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `ACT_ID_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `ACT_INST_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `IS_ACTIVE_` tinyint DEFAULT NULL,
  `IS_CONCURRENT_` tinyint DEFAULT NULL,
  `IS_SCOPE_` tinyint DEFAULT NULL,
  `IS_EVENT_SCOPE_` tinyint DEFAULT NULL,
  `SUSPENSION_STATE_` int DEFAULT NULL,
  `CACHED_ENT_STATE_` int DEFAULT NULL,
  `SEQUENCE_COUNTER_` bigint DEFAULT NULL,
  `TENANT_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `PROC_DEF_KEY_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  KEY `ACT_IDX_EXEC_ROOT_PI` (`ROOT_PROC_INST_ID_`),
  KEY `ACT_IDX_EXEC_BUSKEY` (`BUSINESS_KEY_`),
  KEY `ACT_IDX_EXEC_TENANT_ID` (`TENANT_ID_`),
  KEY `ACT_FK_EXE_PROCINST` (`PROC_INST_ID_`),
  KEY `ACT_FK_EXE_PARENT` (`PARENT_ID_`),
  KEY `ACT_FK_EXE_SUPER` (`SUPER_EXEC_`),
  KEY `ACT_FK_EXE_PROCDEF` (`PROC_DEF_ID_`),
  CONSTRAINT `ACT_FK_EXE_PARENT` FOREIGN KEY (`PARENT_ID_`) REFERENCES `act_ru_execution` (`ID_`),
  CONSTRAINT `ACT_FK_EXE_PROCDEF` FOREIGN KEY (`PROC_DEF_ID_`) REFERENCES `act_re_procdef` (`ID_`),
  CONSTRAINT `ACT_FK_EXE_PROCINST` FOREIGN KEY (`PROC_INST_ID_`) REFERENCES `act_ru_execution` (`ID_`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `ACT_FK_EXE_SUPER` FOREIGN KEY (`SUPER_EXEC_`) REFERENCES `act_ru_execution` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_ru_execution`
--

LOCK TABLES `act_ru_execution` WRITE;
/*!40000 ALTER TABLE `act_ru_execution` DISABLE KEYS */;
INSERT INTO `act_ru_execution` VALUES ('41c4efb3-ab3f-11f0-a68d-00059a3c7a00',1,'41c4efb3-ab3f-11f0-a68d-00059a3c7a00','41c4efb3-ab3f-11f0-a68d-00059a3c7a00',NULL,NULL,'LoginProcess:4:33224b12-ab3f-11f0-a68d-00059a3c7a00',NULL,NULL,NULL,'Activity_ShowLoginForm','Activity_ShowLoginForm:41c516c9-ab3f-11f0-a68d-00059a3c7a00',1,0,1,0,1,18,3,NULL,'LoginProcess'),('61c49346-a8cd-11f0-821c-00059a3c7a00',1,'61c49346-a8cd-11f0-821c-00059a3c7a00','61c49346-a8cd-11f0-821c-00059a3c7a00',NULL,NULL,'welcome_process_id:3:61c1d425-a8cd-11f0-821c-00059a3c7a00',NULL,NULL,NULL,'Activity_0gl2886','Activity_0gl2886:61c49349-a8cd-11f0-821c-00059a3c7a00',1,0,1,0,1,2,5,NULL,'welcome_process_id'),('80d0014b-ab3f-11f0-a68d-00059a3c7a00',1,'80d0014b-ab3f-11f0-a68d-00059a3c7a00','80d0014b-ab3f-11f0-a68d-00059a3c7a00',NULL,NULL,'LoginProcess:4:33224b12-ab3f-11f0-a68d-00059a3c7a00',NULL,NULL,NULL,'Activity_ShowLoginForm','Activity_ShowLoginForm:80d04f71-ab3f-11f0-a68d-00059a3c7a00',1,0,1,0,1,18,3,NULL,'LoginProcess'),('8ccf0efa-ab3d-11f0-a68d-00059a3c7a00',1,'8ccf0efa-ab3d-11f0-a68d-00059a3c7a00','8ccf0efa-ab3d-11f0-a68d-00059a3c7a00',NULL,NULL,'LoginProcess:3:8e8ec7ad-ab3a-11f0-a68d-00059a3c7a00',NULL,NULL,NULL,NULL,'8ccf0efa-ab3d-11f0-a68d-00059a3c7a00',0,0,1,0,1,16,2,NULL,'LoginProcess'),('8cd3c9f0-ab3d-11f0-a68d-00059a3c7a00',1,NULL,'8ccf0efa-ab3d-11f0-a68d-00059a3c7a00',NULL,'8ccf0efa-ab3d-11f0-a68d-00059a3c7a00','LoginProcess:3:8e8ec7ad-ab3a-11f0-a68d-00059a3c7a00',NULL,NULL,NULL,'Activity_ValidateCredentials','8cd3c9f1-ab3d-11f0-a68d-00059a3c7a00',1,0,1,0,1,128,3,NULL,'LoginProcess'),('94772213-ab3f-11f0-a68d-00059a3c7a00',1,'94772213-ab3f-11f0-a68d-00059a3c7a00','94772213-ab3f-11f0-a68d-00059a3c7a00',NULL,NULL,'LoginProcess:4:33224b12-ab3f-11f0-a68d-00059a3c7a00',NULL,NULL,NULL,'Activity_ShowLoginForm','Activity_ShowLoginForm:94774929-ab3f-11f0-a68d-00059a3c7a00',1,0,1,0,1,18,3,NULL,'LoginProcess');
/*!40000 ALTER TABLE `act_ru_execution` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `act_ru_ext_task`
--

DROP TABLE IF EXISTS `act_ru_ext_task`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `act_ru_ext_task` (
  `ID_` varchar(64) COLLATE utf8mb3_bin NOT NULL,
  `REV_` int NOT NULL,
  `WORKER_ID_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `TOPIC_NAME_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `RETRIES_` int DEFAULT NULL,
  `ERROR_MSG_` varchar(4000) COLLATE utf8mb3_bin DEFAULT NULL,
  `ERROR_DETAILS_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `LOCK_EXP_TIME_` datetime DEFAULT NULL,
  `CREATE_TIME_` datetime DEFAULT NULL,
  `SUSPENSION_STATE_` int DEFAULT NULL,
  `EXECUTION_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `PROC_DEF_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `PROC_DEF_KEY_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `ACT_ID_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `ACT_INST_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `TENANT_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `PRIORITY_` bigint NOT NULL DEFAULT '0',
  `LAST_FAILURE_LOG_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  KEY `ACT_IDX_EXT_TASK_TOPIC` (`TOPIC_NAME_`),
  KEY `ACT_IDX_EXT_TASK_TENANT_ID` (`TENANT_ID_`),
  KEY `ACT_IDX_EXT_TASK_PRIORITY` (`PRIORITY_`),
  KEY `ACT_IDX_EXT_TASK_ERR_DETAILS` (`ERROR_DETAILS_ID_`),
  KEY `ACT_IDX_EXT_TASK_EXEC` (`EXECUTION_ID_`),
  CONSTRAINT `ACT_FK_EXT_TASK_ERROR_DETAILS` FOREIGN KEY (`ERROR_DETAILS_ID_`) REFERENCES `act_ge_bytearray` (`ID_`),
  CONSTRAINT `ACT_FK_EXT_TASK_EXE` FOREIGN KEY (`EXECUTION_ID_`) REFERENCES `act_ru_execution` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_ru_ext_task`
--

LOCK TABLES `act_ru_ext_task` WRITE;
/*!40000 ALTER TABLE `act_ru_ext_task` DISABLE KEYS */;
INSERT INTO `act_ru_ext_task` VALUES ('8cd3c9f2-ab3d-11f0-a68d-00059a3c7a00',7,'some-random-id','validate-login',NULL,NULL,NULL,'2025-10-17 09:58:58','2025-10-17 09:42:09',1,'8cd3c9f0-ab3d-11f0-a68d-00059a3c7a00','8ccf0efa-ab3d-11f0-a68d-00059a3c7a00','LoginProcess:3:8e8ec7ad-ab3a-11f0-a68d-00059a3c7a00','LoginProcess','Activity_ValidateCredentials','8cd3c9f1-ab3d-11f0-a68d-00059a3c7a00',NULL,0,NULL);
/*!40000 ALTER TABLE `act_ru_ext_task` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `act_ru_filter`
--

DROP TABLE IF EXISTS `act_ru_filter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `act_ru_filter` (
  `ID_` varchar(64) COLLATE utf8mb3_bin NOT NULL,
  `REV_` int NOT NULL,
  `RESOURCE_TYPE_` varchar(255) COLLATE utf8mb3_bin NOT NULL,
  `NAME_` varchar(255) COLLATE utf8mb3_bin NOT NULL,
  `OWNER_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `QUERY_` longtext COLLATE utf8mb3_bin NOT NULL,
  `PROPERTIES_` longtext COLLATE utf8mb3_bin,
  PRIMARY KEY (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_ru_filter`
--

LOCK TABLES `act_ru_filter` WRITE;
/*!40000 ALTER TABLE `act_ru_filter` DISABLE KEYS */;
/*!40000 ALTER TABLE `act_ru_filter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `act_ru_identitylink`
--

DROP TABLE IF EXISTS `act_ru_identitylink`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `act_ru_identitylink` (
  `ID_` varchar(64) COLLATE utf8mb3_bin NOT NULL,
  `REV_` int DEFAULT NULL,
  `GROUP_ID_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `TYPE_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `USER_ID_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `TASK_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `PROC_DEF_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `TENANT_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  KEY `ACT_IDX_IDENT_LNK_USER` (`USER_ID_`),
  KEY `ACT_IDX_IDENT_LNK_GROUP` (`GROUP_ID_`),
  KEY `ACT_IDX_ATHRZ_PROCEDEF` (`PROC_DEF_ID_`),
  KEY `ACT_FK_TSKASS_TASK` (`TASK_ID_`),
  CONSTRAINT `ACT_FK_ATHRZ_PROCEDEF` FOREIGN KEY (`PROC_DEF_ID_`) REFERENCES `act_re_procdef` (`ID_`),
  CONSTRAINT `ACT_FK_TSKASS_TASK` FOREIGN KEY (`TASK_ID_`) REFERENCES `act_ru_task` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_ru_identitylink`
--

LOCK TABLES `act_ru_identitylink` WRITE;
/*!40000 ALTER TABLE `act_ru_identitylink` DISABLE KEYS */;
/*!40000 ALTER TABLE `act_ru_identitylink` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `act_ru_incident`
--

DROP TABLE IF EXISTS `act_ru_incident`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `act_ru_incident` (
  `ID_` varchar(64) COLLATE utf8mb3_bin NOT NULL,
  `REV_` int NOT NULL,
  `INCIDENT_TIMESTAMP_` datetime NOT NULL,
  `INCIDENT_MSG_` varchar(4000) COLLATE utf8mb3_bin DEFAULT NULL,
  `INCIDENT_TYPE_` varchar(255) COLLATE utf8mb3_bin NOT NULL,
  `EXECUTION_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `ACTIVITY_ID_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `FAILED_ACTIVITY_ID_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `PROC_DEF_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `CAUSE_INCIDENT_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `ROOT_CAUSE_INCIDENT_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `CONFIGURATION_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `TENANT_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `JOB_DEF_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `ANNOTATION_` varchar(4000) COLLATE utf8mb3_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  KEY `ACT_IDX_INC_CONFIGURATION` (`CONFIGURATION_`),
  KEY `ACT_IDX_INC_TENANT_ID` (`TENANT_ID_`),
  KEY `ACT_IDX_INC_JOB_DEF` (`JOB_DEF_ID_`),
  KEY `ACT_IDX_INC_CAUSEINCID` (`CAUSE_INCIDENT_ID_`),
  KEY `ACT_IDX_INC_EXID` (`EXECUTION_ID_`),
  KEY `ACT_IDX_INC_PROCDEFID` (`PROC_DEF_ID_`),
  KEY `ACT_IDX_INC_PROCINSTID` (`PROC_INST_ID_`),
  KEY `ACT_IDX_INC_ROOTCAUSEINCID` (`ROOT_CAUSE_INCIDENT_ID_`),
  CONSTRAINT `ACT_FK_INC_CAUSE` FOREIGN KEY (`CAUSE_INCIDENT_ID_`) REFERENCES `act_ru_incident` (`ID_`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `ACT_FK_INC_EXE` FOREIGN KEY (`EXECUTION_ID_`) REFERENCES `act_ru_execution` (`ID_`),
  CONSTRAINT `ACT_FK_INC_JOB_DEF` FOREIGN KEY (`JOB_DEF_ID_`) REFERENCES `act_ru_jobdef` (`ID_`),
  CONSTRAINT `ACT_FK_INC_PROCDEF` FOREIGN KEY (`PROC_DEF_ID_`) REFERENCES `act_re_procdef` (`ID_`),
  CONSTRAINT `ACT_FK_INC_PROCINST` FOREIGN KEY (`PROC_INST_ID_`) REFERENCES `act_ru_execution` (`ID_`),
  CONSTRAINT `ACT_FK_INC_RCAUSE` FOREIGN KEY (`ROOT_CAUSE_INCIDENT_ID_`) REFERENCES `act_ru_incident` (`ID_`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_ru_incident`
--

LOCK TABLES `act_ru_incident` WRITE;
/*!40000 ALTER TABLE `act_ru_incident` DISABLE KEYS */;
/*!40000 ALTER TABLE `act_ru_incident` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `act_ru_job`
--

DROP TABLE IF EXISTS `act_ru_job`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `act_ru_job` (
  `ID_` varchar(64) COLLATE utf8mb3_bin NOT NULL,
  `REV_` int DEFAULT NULL,
  `TYPE_` varchar(255) COLLATE utf8mb3_bin NOT NULL,
  `LOCK_EXP_TIME_` datetime DEFAULT NULL,
  `LOCK_OWNER_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `EXCLUSIVE_` tinyint(1) DEFAULT NULL,
  `EXECUTION_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `ROOT_PROC_INST_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `PROCESS_INSTANCE_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `PROCESS_DEF_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `PROCESS_DEF_KEY_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `RETRIES_` int DEFAULT NULL,
  `EXCEPTION_STACK_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `EXCEPTION_MSG_` varchar(4000) COLLATE utf8mb3_bin DEFAULT NULL,
  `FAILED_ACT_ID_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `DUEDATE_` datetime DEFAULT NULL,
  `REPEAT_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `REPEAT_OFFSET_` bigint DEFAULT '0',
  `HANDLER_TYPE_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `HANDLER_CFG_` varchar(4000) COLLATE utf8mb3_bin DEFAULT NULL,
  `DEPLOYMENT_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `SUSPENSION_STATE_` int NOT NULL DEFAULT '1',
  `JOB_DEF_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `PRIORITY_` bigint NOT NULL DEFAULT '0',
  `SEQUENCE_COUNTER_` bigint DEFAULT NULL,
  `TENANT_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `CREATE_TIME_` datetime DEFAULT NULL,
  `LAST_FAILURE_LOG_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `BATCH_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  KEY `ACT_IDX_JOB_EXECUTION_ID` (`EXECUTION_ID_`),
  KEY `ACT_IDX_JOB_HANDLER` (`HANDLER_TYPE_`(100),`HANDLER_CFG_`(155)),
  KEY `ACT_IDX_JOB_PROCINST` (`PROCESS_INSTANCE_ID_`),
  KEY `ACT_IDX_JOB_ROOT_PROCINST` (`ROOT_PROC_INST_ID_`),
  KEY `ACT_IDX_JOB_TENANT_ID` (`TENANT_ID_`),
  KEY `ACT_IDX_JOB_JOB_DEF_ID` (`JOB_DEF_ID_`),
  KEY `ACT_FK_JOB_EXCEPTION` (`EXCEPTION_STACK_ID_`),
  KEY `ACT_IDX_JOB_HANDLER_TYPE` (`HANDLER_TYPE_`),
  CONSTRAINT `ACT_FK_JOB_EXCEPTION` FOREIGN KEY (`EXCEPTION_STACK_ID_`) REFERENCES `act_ge_bytearray` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_ru_job`
--

LOCK TABLES `act_ru_job` WRITE;
/*!40000 ALTER TABLE `act_ru_job` DISABLE KEYS */;
/*!40000 ALTER TABLE `act_ru_job` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `act_ru_jobdef`
--

DROP TABLE IF EXISTS `act_ru_jobdef`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `act_ru_jobdef` (
  `ID_` varchar(64) COLLATE utf8mb3_bin NOT NULL,
  `REV_` int DEFAULT NULL,
  `PROC_DEF_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `PROC_DEF_KEY_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `ACT_ID_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `JOB_TYPE_` varchar(255) COLLATE utf8mb3_bin NOT NULL,
  `JOB_CONFIGURATION_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `SUSPENSION_STATE_` int DEFAULT NULL,
  `JOB_PRIORITY_` bigint DEFAULT NULL,
  `TENANT_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `DEPLOYMENT_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  KEY `ACT_IDX_JOBDEF_TENANT_ID` (`TENANT_ID_`),
  KEY `ACT_IDX_JOBDEF_PROC_DEF_ID` (`PROC_DEF_ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_ru_jobdef`
--

LOCK TABLES `act_ru_jobdef` WRITE;
/*!40000 ALTER TABLE `act_ru_jobdef` DISABLE KEYS */;
/*!40000 ALTER TABLE `act_ru_jobdef` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `act_ru_meter_log`
--

DROP TABLE IF EXISTS `act_ru_meter_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `act_ru_meter_log` (
  `ID_` varchar(64) COLLATE utf8mb3_bin NOT NULL,
  `NAME_` varchar(64) COLLATE utf8mb3_bin NOT NULL,
  `REPORTER_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `VALUE_` bigint DEFAULT NULL,
  `TIMESTAMP_` datetime DEFAULT NULL,
  `MILLISECONDS_` bigint DEFAULT '0',
  PRIMARY KEY (`ID_`),
  KEY `ACT_IDX_METER_LOG_MS` (`MILLISECONDS_`),
  KEY `ACT_IDX_METER_LOG_NAME_MS` (`NAME_`,`MILLISECONDS_`),
  KEY `ACT_IDX_METER_LOG_REPORT` (`NAME_`,`REPORTER_`,`MILLISECONDS_`),
  KEY `ACT_IDX_METER_LOG_TIME` (`TIMESTAMP_`),
  KEY `ACT_IDX_METER_LOG` (`NAME_`,`TIMESTAMP_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_ru_meter_log`
--

LOCK TABLES `act_ru_meter_log` WRITE;
/*!40000 ALTER TABLE `act_ru_meter_log` DISABLE KEYS */;
INSERT INTO `act_ru_meter_log` VALUES ('06640a99-a8e2-11f0-821c-00059a3c7a00','root-process-instance-start','10.169.82.39$default',0,'2025-10-14 09:41:57',1760434917177),('06640a9a-a8e2-11f0-821c-00059a3c7a00','activity-instance-start','10.169.82.39$default',0,'2025-10-14 09:41:57',1760434917177),('06640a9b-a8e2-11f0-821c-00059a3c7a00','job-acquired-failure','10.169.82.39$default',0,'2025-10-14 09:41:57',1760434917177),('06640a9c-a8e2-11f0-821c-00059a3c7a00','job-locked-exclusive','10.169.82.39$default',0,'2025-10-14 09:41:57',1760434917177),('06640a9d-a8e2-11f0-821c-00059a3c7a00','job-execution-rejected','10.169.82.39$default',0,'2025-10-14 09:41:57',1760434917177),('06640a9e-a8e2-11f0-821c-00059a3c7a00','executed-decision-elements','10.169.82.39$default',0,'2025-10-14 09:41:57',1760434917177),('06640a9f-a8e2-11f0-821c-00059a3c7a00','activity-instance-end','10.169.82.39$default',0,'2025-10-14 09:41:57',1760434917177),('06640aa0-a8e2-11f0-821c-00059a3c7a00','job-successful','10.169.82.39$default',0,'2025-10-14 09:41:57',1760434917177),('06640aa1-a8e2-11f0-821c-00059a3c7a00','job-acquired-success','10.169.82.39$default',0,'2025-10-14 09:41:57',1760434917177),('06640aa2-a8e2-11f0-821c-00059a3c7a00','job-acquisition-attempt','10.169.82.39$default',15,'2025-10-14 09:41:57',1760434917177),('06640aa3-a8e2-11f0-821c-00059a3c7a00','executed-decision-instances','10.169.82.39$default',0,'2025-10-14 09:41:57',1760434917177),('06640aa4-a8e2-11f0-821c-00059a3c7a00','job-failed','10.169.82.39$default',0,'2025-10-14 09:41:57',1760434917177),('0ad65357-ab40-11f0-a68d-00059a3c7a00','root-process-instance-start','10.175.133.60$default',0,'2025-10-17 10:00:00',1760695199655),('0ad65358-ab40-11f0-a68d-00059a3c7a00','activity-instance-start','10.175.133.60$default',0,'2025-10-17 10:00:00',1760695199655),('0ad65359-ab40-11f0-a68d-00059a3c7a00','job-acquired-failure','10.175.133.60$default',0,'2025-10-17 10:00:00',1760695199655),('0ad6535a-ab40-11f0-a68d-00059a3c7a00','job-locked-exclusive','10.175.133.60$default',0,'2025-10-17 10:00:00',1760695199655),('0ad6535b-ab40-11f0-a68d-00059a3c7a00','job-execution-rejected','10.175.133.60$default',0,'2025-10-17 10:00:00',1760695199655),('0ad6535c-ab40-11f0-a68d-00059a3c7a00','executed-decision-elements','10.175.133.60$default',0,'2025-10-17 10:00:00',1760695199655),('0ad6535d-ab40-11f0-a68d-00059a3c7a00','activity-instance-end','10.175.133.60$default',0,'2025-10-17 10:00:00',1760695199655),('0ad6535e-ab40-11f0-a68d-00059a3c7a00','job-successful','10.175.133.60$default',0,'2025-10-17 10:00:00',1760695199655),('0ad6535f-ab40-11f0-a68d-00059a3c7a00','job-acquired-success','10.175.133.60$default',0,'2025-10-17 10:00:00',1760695199655),('0ad65360-ab40-11f0-a68d-00059a3c7a00','job-acquisition-attempt','10.175.133.60$default',1,'2025-10-17 10:00:00',1760695199655),('0ad65361-ab40-11f0-a68d-00059a3c7a00','executed-decision-instances','10.175.133.60$default',0,'2025-10-17 10:00:00',1760695199655),('0ad65362-ab40-11f0-a68d-00059a3c7a00','job-failed','10.175.133.60$default',0,'2025-10-17 10:00:00',1760695199655),('2a64c8fd-a8cf-11f0-821c-00059a3c7a00','root-process-instance-start','10.169.82.39$default',2,'2025-10-14 07:26:57',1760426817141),('2a64c8fe-a8cf-11f0-821c-00059a3c7a00','activity-instance-start','10.169.82.39$default',6,'2025-10-14 07:26:57',1760426817141),('2a64c8ff-a8cf-11f0-821c-00059a3c7a00','job-acquired-failure','10.169.82.39$default',0,'2025-10-14 07:26:57',1760426817141),('2a64c900-a8cf-11f0-821c-00059a3c7a00','job-locked-exclusive','10.169.82.39$default',0,'2025-10-14 07:26:57',1760426817141),('2a64c901-a8cf-11f0-821c-00059a3c7a00','job-execution-rejected','10.169.82.39$default',0,'2025-10-14 07:26:57',1760426817141),('2a64c902-a8cf-11f0-821c-00059a3c7a00','executed-decision-elements','10.169.82.39$default',0,'2025-10-14 07:26:57',1760426817141),('2a64c903-a8cf-11f0-821c-00059a3c7a00','activity-instance-end','10.169.82.39$default',5,'2025-10-14 07:26:57',1760426817141),('2a64c904-a8cf-11f0-821c-00059a3c7a00','job-successful','10.169.82.39$default',0,'2025-10-14 07:26:57',1760426817141),('2a64c905-a8cf-11f0-821c-00059a3c7a00','job-acquired-success','10.169.82.39$default',0,'2025-10-14 07:26:57',1760426817141),('2a64c906-a8cf-11f0-821c-00059a3c7a00','job-acquisition-attempt','10.169.82.39$default',18,'2025-10-14 07:26:57',1760426817141),('2a64c907-a8cf-11f0-821c-00059a3c7a00','executed-decision-instances','10.169.82.39$default',0,'2025-10-14 07:26:57',1760426817141),('2a64c908-a8cf-11f0-821c-00059a3c7a00','job-failed','10.169.82.39$default',0,'2025-10-14 07:26:57',1760426817141),('3145e7e1-aab6-11f0-8e98-00059a3c7a00','root-process-instance-start','192.168.0.108$default',0,'2025-10-16 17:33:14',1760635993591),('3145e7e2-aab6-11f0-8e98-00059a3c7a00','activity-instance-start','192.168.0.108$default',0,'2025-10-16 17:33:14',1760635993591),('3145e7e3-aab6-11f0-8e98-00059a3c7a00','job-acquired-failure','192.168.0.108$default',0,'2025-10-16 17:33:14',1760635993591),('3145e7e4-aab6-11f0-8e98-00059a3c7a00','job-locked-exclusive','192.168.0.108$default',0,'2025-10-16 17:33:14',1760635993591),('3145e7e5-aab6-11f0-8e98-00059a3c7a00','job-execution-rejected','192.168.0.108$default',0,'2025-10-16 17:33:14',1760635993591),('3145e7e6-aab6-11f0-8e98-00059a3c7a00','executed-decision-elements','192.168.0.108$default',0,'2025-10-16 17:33:14',1760635993591),('3145e7e7-aab6-11f0-8e98-00059a3c7a00','activity-instance-end','192.168.0.108$default',0,'2025-10-16 17:33:14',1760635993591),('3145e7e8-aab6-11f0-8e98-00059a3c7a00','job-successful','192.168.0.108$default',0,'2025-10-16 17:33:14',1760635993591),('3145e7e9-aab6-11f0-8e98-00059a3c7a00','job-acquired-success','192.168.0.108$default',0,'2025-10-16 17:33:14',1760635993591),('3145e7ea-aab6-11f0-8e98-00059a3c7a00','job-acquisition-attempt','192.168.0.108$default',9,'2025-10-16 17:33:14',1760635993591),('3145e7eb-aab6-11f0-8e98-00059a3c7a00','executed-decision-instances','192.168.0.108$default',0,'2025-10-16 17:33:14',1760635993591),('3145e7ec-aab6-11f0-8e98-00059a3c7a00','job-failed','192.168.0.108$default',0,'2025-10-16 17:33:14',1760635993591),('42d0d9f9-a8d1-11f0-821c-00059a3c7a00','root-process-instance-start','10.169.82.39$default',0,'2025-10-14 07:41:57',1760427717109),('42d0d9fa-a8d1-11f0-821c-00059a3c7a00','activity-instance-start','10.169.82.39$default',0,'2025-10-14 07:41:57',1760427717109),('42d0d9fb-a8d1-11f0-821c-00059a3c7a00','job-acquired-failure','10.169.82.39$default',0,'2025-10-14 07:41:57',1760427717109),('42d0d9fc-a8d1-11f0-821c-00059a3c7a00','job-locked-exclusive','10.169.82.39$default',0,'2025-10-14 07:41:57',1760427717109),('42d0d9fd-a8d1-11f0-821c-00059a3c7a00','job-execution-rejected','10.169.82.39$default',0,'2025-10-14 07:41:57',1760427717109),('42d0d9fe-a8d1-11f0-821c-00059a3c7a00','executed-decision-elements','10.169.82.39$default',0,'2025-10-14 07:41:57',1760427717109),('42d0d9ff-a8d1-11f0-821c-00059a3c7a00','activity-instance-end','10.169.82.39$default',0,'2025-10-14 07:41:57',1760427717109),('42d0da00-a8d1-11f0-821c-00059a3c7a00','job-successful','10.169.82.39$default',0,'2025-10-14 07:41:57',1760427717109),('42d0da01-a8d1-11f0-821c-00059a3c7a00','job-acquired-success','10.169.82.39$default',0,'2025-10-14 07:41:57',1760427717109),('42d0da02-a8d1-11f0-821c-00059a3c7a00','job-acquisition-attempt','10.169.82.39$default',15,'2025-10-14 07:41:57',1760427717109),('42d0da03-a8d1-11f0-821c-00059a3c7a00','executed-decision-instances','10.169.82.39$default',0,'2025-10-14 07:41:57',1760427717109),('42d0da04-a8d1-11f0-821c-00059a3c7a00','job-failed','10.169.82.39$default',0,'2025-10-14 07:41:57',1760427717109),('5b3f34e5-a8d3-11f0-821c-00059a3c7a00','root-process-instance-start','10.169.82.39$default',0,'2025-10-14 07:56:57',1760428617092),('5b3f34e6-a8d3-11f0-821c-00059a3c7a00','activity-instance-start','10.169.82.39$default',0,'2025-10-14 07:56:57',1760428617092),('5b3f34e7-a8d3-11f0-821c-00059a3c7a00','job-acquired-failure','10.169.82.39$default',0,'2025-10-14 07:56:57',1760428617092),('5b3f34e8-a8d3-11f0-821c-00059a3c7a00','job-locked-exclusive','10.169.82.39$default',0,'2025-10-14 07:56:57',1760428617092),('5b3f34e9-a8d3-11f0-821c-00059a3c7a00','job-execution-rejected','10.169.82.39$default',0,'2025-10-14 07:56:57',1760428617092),('5b3f34ea-a8d3-11f0-821c-00059a3c7a00','executed-decision-elements','10.169.82.39$default',0,'2025-10-14 07:56:57',1760428617092),('5b3f34eb-a8d3-11f0-821c-00059a3c7a00','activity-instance-end','10.169.82.39$default',0,'2025-10-14 07:56:57',1760428617092),('5b3f34ec-a8d3-11f0-821c-00059a3c7a00','job-successful','10.169.82.39$default',0,'2025-10-14 07:56:57',1760428617092),('5b3f34ed-a8d3-11f0-821c-00059a3c7a00','job-acquired-success','10.169.82.39$default',0,'2025-10-14 07:56:57',1760428617092),('5b3f34ee-a8d3-11f0-821c-00059a3c7a00','job-acquisition-attempt','10.169.82.39$default',15,'2025-10-14 07:56:57',1760428617092),('5b3f34ef-a8d3-11f0-821c-00059a3c7a00','executed-decision-instances','10.169.82.39$default',0,'2025-10-14 07:56:57',1760428617092),('5b3f34f0-a8d3-11f0-821c-00059a3c7a00','job-failed','10.169.82.39$default',0,'2025-10-14 07:56:57',1760428617092),('73ab6cf1-a8d5-11f0-821c-00059a3c7a00','root-process-instance-start','10.169.82.39$default',0,'2025-10-14 08:11:57',1760429517060),('73ab6cf2-a8d5-11f0-821c-00059a3c7a00','activity-instance-start','10.169.82.39$default',0,'2025-10-14 08:11:57',1760429517060),('73ab6cf3-a8d5-11f0-821c-00059a3c7a00','job-acquired-failure','10.169.82.39$default',0,'2025-10-14 08:11:57',1760429517060),('73ab6cf4-a8d5-11f0-821c-00059a3c7a00','job-locked-exclusive','10.169.82.39$default',0,'2025-10-14 08:11:57',1760429517060),('73ab6cf5-a8d5-11f0-821c-00059a3c7a00','job-execution-rejected','10.169.82.39$default',0,'2025-10-14 08:11:57',1760429517060),('73ab6cf6-a8d5-11f0-821c-00059a3c7a00','executed-decision-elements','10.169.82.39$default',0,'2025-10-14 08:11:57',1760429517060),('73ab6cf7-a8d5-11f0-821c-00059a3c7a00','activity-instance-end','10.169.82.39$default',0,'2025-10-14 08:11:57',1760429517060),('73ab6cf8-a8d5-11f0-821c-00059a3c7a00','job-successful','10.169.82.39$default',0,'2025-10-14 08:11:57',1760429517060),('73ab6cf9-a8d5-11f0-821c-00059a3c7a00','job-acquired-success','10.169.82.39$default',0,'2025-10-14 08:11:57',1760429517060),('73ab6cfa-a8d5-11f0-821c-00059a3c7a00','job-acquisition-attempt','10.169.82.39$default',15,'2025-10-14 08:11:57',1760429517060),('73ab6cfb-a8d5-11f0-821c-00059a3c7a00','executed-decision-instances','10.169.82.39$default',0,'2025-10-14 08:11:57',1760429517060),('73ab6cfc-a8d5-11f0-821c-00059a3c7a00','job-failed','10.169.82.39$default',0,'2025-10-14 08:11:57',1760429517060),('8c3454bd-a8d7-11f0-821c-00059a3c7a00','root-process-instance-start','10.169.82.39$default',0,'2025-10-14 08:26:57',1760430417214),('8c3454be-a8d7-11f0-821c-00059a3c7a00','activity-instance-start','10.169.82.39$default',0,'2025-10-14 08:26:57',1760430417214),('8c3454bf-a8d7-11f0-821c-00059a3c7a00','job-acquired-failure','10.169.82.39$default',0,'2025-10-14 08:26:57',1760430417214),('8c3454c0-a8d7-11f0-821c-00059a3c7a00','job-locked-exclusive','10.169.82.39$default',0,'2025-10-14 08:26:57',1760430417214),('8c3454c1-a8d7-11f0-821c-00059a3c7a00','job-execution-rejected','10.169.82.39$default',0,'2025-10-14 08:26:57',1760430417214),('8c3454c2-a8d7-11f0-821c-00059a3c7a00','executed-decision-elements','10.169.82.39$default',0,'2025-10-14 08:26:57',1760430417214),('8c3454c3-a8d7-11f0-821c-00059a3c7a00','activity-instance-end','10.169.82.39$default',0,'2025-10-14 08:26:57',1760430417214),('8c3454c4-a8d7-11f0-821c-00059a3c7a00','job-successful','10.169.82.39$default',0,'2025-10-14 08:26:57',1760430417214),('8c3454c5-a8d7-11f0-821c-00059a3c7a00','job-acquired-success','10.169.82.39$default',0,'2025-10-14 08:26:57',1760430417214),('8c3454c6-a8d7-11f0-821c-00059a3c7a00','job-acquisition-attempt','10.169.82.39$default',15,'2025-10-14 08:26:57',1760430417214),('8c3454c7-a8d7-11f0-821c-00059a3c7a00','executed-decision-instances','10.169.82.39$default',0,'2025-10-14 08:26:57',1760430417214),('8c3454c8-a8d7-11f0-821c-00059a3c7a00','job-failed','10.169.82.39$default',0,'2025-10-14 08:26:57',1760430417214),('a49234e9-a8d9-11f0-821c-00059a3c7a00','root-process-instance-start','10.169.82.39$default',0,'2025-10-14 08:41:57',1760431317090),('a49234ea-a8d9-11f0-821c-00059a3c7a00','activity-instance-start','10.169.82.39$default',0,'2025-10-14 08:41:57',1760431317090),('a49234eb-a8d9-11f0-821c-00059a3c7a00','job-acquired-failure','10.169.82.39$default',0,'2025-10-14 08:41:57',1760431317090),('a49234ec-a8d9-11f0-821c-00059a3c7a00','job-locked-exclusive','10.169.82.39$default',0,'2025-10-14 08:41:57',1760431317090),('a49234ed-a8d9-11f0-821c-00059a3c7a00','job-execution-rejected','10.169.82.39$default',0,'2025-10-14 08:41:57',1760431317090),('a49234ee-a8d9-11f0-821c-00059a3c7a00','executed-decision-elements','10.169.82.39$default',0,'2025-10-14 08:41:57',1760431317090),('a49234ef-a8d9-11f0-821c-00059a3c7a00','activity-instance-end','10.169.82.39$default',0,'2025-10-14 08:41:57',1760431317090),('a49234f0-a8d9-11f0-821c-00059a3c7a00','job-successful','10.169.82.39$default',0,'2025-10-14 08:41:57',1760431317090),('a49234f1-a8d9-11f0-821c-00059a3c7a00','job-acquired-success','10.169.82.39$default',0,'2025-10-14 08:41:57',1760431317090),('a49234f2-a8d9-11f0-821c-00059a3c7a00','job-acquisition-attempt','10.169.82.39$default',15,'2025-10-14 08:41:57',1760431317090),('a49234f3-a8d9-11f0-821c-00059a3c7a00','executed-decision-instances','10.169.82.39$default',0,'2025-10-14 08:41:57',1760431317090),('a49234f4-a8d9-11f0-821c-00059a3c7a00','job-failed','10.169.82.39$default',0,'2025-10-14 08:41:57',1760431317090),('b46a97fe-ab3b-11f0-a68d-00059a3c7a00','root-process-instance-start','10.175.133.60$default',0,'2025-10-17 09:28:57',1760693336671),('b46a97ff-ab3b-11f0-a68d-00059a3c7a00','activity-instance-start','10.175.133.60$default',0,'2025-10-17 09:28:57',1760693336671),('b46a9800-ab3b-11f0-a68d-00059a3c7a00','job-acquired-failure','10.175.133.60$default',0,'2025-10-17 09:28:57',1760693336671),('b46a9801-ab3b-11f0-a68d-00059a3c7a00','job-locked-exclusive','10.175.133.60$default',0,'2025-10-17 09:28:57',1760693336671),('b46a9802-ab3b-11f0-a68d-00059a3c7a00','job-execution-rejected','10.175.133.60$default',0,'2025-10-17 09:28:57',1760693336671),('b46a9803-ab3b-11f0-a68d-00059a3c7a00','executed-decision-elements','10.175.133.60$default',0,'2025-10-17 09:28:57',1760693336671),('b46a9804-ab3b-11f0-a68d-00059a3c7a00','activity-instance-end','10.175.133.60$default',0,'2025-10-17 09:28:57',1760693336671),('b46a9805-ab3b-11f0-a68d-00059a3c7a00','job-successful','10.175.133.60$default',0,'2025-10-17 09:28:57',1760693336671),('b46a9806-ab3b-11f0-a68d-00059a3c7a00','job-acquired-success','10.175.133.60$default',0,'2025-10-17 09:28:57',1760693336671),('b46a9807-ab3b-11f0-a68d-00059a3c7a00','job-acquisition-attempt','10.175.133.60$default',18,'2025-10-17 09:28:57',1760693336671),('b46a9808-ab3b-11f0-a68d-00059a3c7a00','executed-decision-instances','10.175.133.60$default',0,'2025-10-17 09:28:57',1760693336671),('b46a9809-ab3b-11f0-a68d-00059a3c7a00','job-failed','10.175.133.60$default',0,'2025-10-17 09:28:57',1760693336671),('bcfee225-a8db-11f0-821c-00059a3c7a00','root-process-instance-start','10.169.82.39$default',0,'2025-10-14 08:56:57',1760432217060),('bcfee226-a8db-11f0-821c-00059a3c7a00','activity-instance-start','10.169.82.39$default',0,'2025-10-14 08:56:57',1760432217060),('bcfee227-a8db-11f0-821c-00059a3c7a00','job-acquired-failure','10.169.82.39$default',0,'2025-10-14 08:56:57',1760432217060),('bcfee228-a8db-11f0-821c-00059a3c7a00','job-locked-exclusive','10.169.82.39$default',0,'2025-10-14 08:56:57',1760432217060),('bcfee229-a8db-11f0-821c-00059a3c7a00','job-execution-rejected','10.169.82.39$default',0,'2025-10-14 08:56:57',1760432217060),('bcfee22a-a8db-11f0-821c-00059a3c7a00','executed-decision-elements','10.169.82.39$default',0,'2025-10-14 08:56:57',1760432217060),('bcfee22b-a8db-11f0-821c-00059a3c7a00','activity-instance-end','10.169.82.39$default',0,'2025-10-14 08:56:57',1760432217060),('bcfee22c-a8db-11f0-821c-00059a3c7a00','job-successful','10.169.82.39$default',0,'2025-10-14 08:56:57',1760432217060),('bcfee22d-a8db-11f0-821c-00059a3c7a00','job-acquired-success','10.169.82.39$default',0,'2025-10-14 08:56:57',1760432217060),('bcfee22e-a8db-11f0-821c-00059a3c7a00','job-acquisition-attempt','10.169.82.39$default',15,'2025-10-14 08:56:57',1760432217060),('bcfee22f-a8db-11f0-821c-00059a3c7a00','executed-decision-instances','10.169.82.39$default',0,'2025-10-14 08:56:57',1760432217060),('bcfee230-a8db-11f0-821c-00059a3c7a00','job-failed','10.169.82.39$default',0,'2025-10-14 08:56:57',1760432217060),('ccb194d4-ab3d-11f0-a68d-00059a3c7a00','root-process-instance-start','10.175.133.60$default',1,'2025-10-17 09:43:56',1760694236403),('ccb194d5-ab3d-11f0-a68d-00059a3c7a00','activity-instance-start','10.175.133.60$default',2,'2025-10-17 09:43:56',1760694236403),('ccb194d6-ab3d-11f0-a68d-00059a3c7a00','job-acquired-failure','10.175.133.60$default',0,'2025-10-17 09:43:56',1760694236403),('ccb194d7-ab3d-11f0-a68d-00059a3c7a00','job-locked-exclusive','10.175.133.60$default',0,'2025-10-17 09:43:56',1760694236403),('ccb194d8-ab3d-11f0-a68d-00059a3c7a00','job-execution-rejected','10.175.133.60$default',0,'2025-10-17 09:43:56',1760694236403),('ccb194d9-ab3d-11f0-a68d-00059a3c7a00','executed-decision-elements','10.175.133.60$default',0,'2025-10-17 09:43:56',1760694236403),('ccb194da-ab3d-11f0-a68d-00059a3c7a00','activity-instance-end','10.175.133.60$default',1,'2025-10-17 09:43:56',1760694236403),('ccb194db-ab3d-11f0-a68d-00059a3c7a00','job-successful','10.175.133.60$default',0,'2025-10-17 09:43:56',1760694236403),('ccb194dc-ab3d-11f0-a68d-00059a3c7a00','job-acquired-success','10.175.133.60$default',0,'2025-10-17 09:43:56',1760694236403),('ccb194dd-ab3d-11f0-a68d-00059a3c7a00','job-acquisition-attempt','10.175.133.60$default',15,'2025-10-17 09:43:56',1760694236403),('ccb194de-ab3d-11f0-a68d-00059a3c7a00','executed-decision-instances','10.175.133.60$default',0,'2025-10-17 09:43:56',1760694236403),('ccb194df-ab3d-11f0-a68d-00059a3c7a00','job-failed','10.175.133.60$default',0,'2025-10-17 09:43:56',1760694236403),('d0009908-a8cc-11f0-b9fd-00059a3c7a00','root-process-instance-start','10.169.82.39$default',0,'2025-10-14 07:10:06',1760425806496),('d0009909-a8cc-11f0-b9fd-00059a3c7a00','activity-instance-start','10.169.82.39$default',0,'2025-10-14 07:10:06',1760425806496),('d000990a-a8cc-11f0-b9fd-00059a3c7a00','job-acquired-failure','10.169.82.39$default',0,'2025-10-14 07:10:06',1760425806496),('d000990b-a8cc-11f0-b9fd-00059a3c7a00','job-locked-exclusive','10.169.82.39$default',0,'2025-10-14 07:10:06',1760425806496),('d000990c-a8cc-11f0-b9fd-00059a3c7a00','job-execution-rejected','10.169.82.39$default',0,'2025-10-14 07:10:06',1760425806496),('d000990d-a8cc-11f0-b9fd-00059a3c7a00','executed-decision-elements','10.169.82.39$default',0,'2025-10-14 07:10:06',1760425806496),('d000990e-a8cc-11f0-b9fd-00059a3c7a00','activity-instance-end','10.169.82.39$default',0,'2025-10-14 07:10:06',1760425806496),('d000990f-a8cc-11f0-b9fd-00059a3c7a00','job-successful','10.169.82.39$default',0,'2025-10-14 07:10:06',1760425806496),('d0009910-a8cc-11f0-b9fd-00059a3c7a00','job-acquired-success','10.169.82.39$default',0,'2025-10-14 07:10:06',1760425806496),('d0009911-a8cc-11f0-b9fd-00059a3c7a00','job-acquisition-attempt','10.169.82.39$default',8,'2025-10-14 07:10:06',1760425806496),('d0009912-a8cc-11f0-b9fd-00059a3c7a00','executed-decision-instances','10.169.82.39$default',0,'2025-10-14 07:10:06',1760425806496),('d0009913-a8cc-11f0-b9fd-00059a3c7a00','job-failed','10.169.82.39$default',0,'2025-10-14 07:10:06',1760425806496),('d56e9ca1-a8dd-11f0-821c-00059a3c7a00','root-process-instance-start','10.169.82.39$default',0,'2025-10-14 09:11:57',1760433117051),('d56e9ca2-a8dd-11f0-821c-00059a3c7a00','activity-instance-start','10.169.82.39$default',0,'2025-10-14 09:11:57',1760433117051),('d56e9ca3-a8dd-11f0-821c-00059a3c7a00','job-acquired-failure','10.169.82.39$default',0,'2025-10-14 09:11:57',1760433117051),('d56e9ca4-a8dd-11f0-821c-00059a3c7a00','job-locked-exclusive','10.169.82.39$default',0,'2025-10-14 09:11:57',1760433117051),('d56e9ca5-a8dd-11f0-821c-00059a3c7a00','job-execution-rejected','10.169.82.39$default',0,'2025-10-14 09:11:57',1760433117051),('d56e9ca6-a8dd-11f0-821c-00059a3c7a00','executed-decision-elements','10.169.82.39$default',0,'2025-10-14 09:11:57',1760433117051),('d56e9ca7-a8dd-11f0-821c-00059a3c7a00','activity-instance-end','10.169.82.39$default',0,'2025-10-14 09:11:57',1760433117051),('d56e9ca8-a8dd-11f0-821c-00059a3c7a00','job-successful','10.169.82.39$default',0,'2025-10-14 09:11:57',1760433117051),('d56e9ca9-a8dd-11f0-821c-00059a3c7a00','job-acquired-success','10.169.82.39$default',0,'2025-10-14 09:11:57',1760433117051),('d56e9caa-a8dd-11f0-821c-00059a3c7a00','job-acquisition-attempt','10.169.82.39$default',15,'2025-10-14 09:11:57',1760433117051),('d56e9cab-a8dd-11f0-821c-00059a3c7a00','executed-decision-instances','10.169.82.39$default',0,'2025-10-14 09:11:57',1760433117051),('d56e9cac-a8dd-11f0-821c-00059a3c7a00','job-failed','10.169.82.39$default',0,'2025-10-14 09:11:57',1760433117051),('e5343b2b-ab3f-11f0-a68d-00059a3c7a00','root-process-instance-start','10.175.133.60$default',3,'2025-10-17 09:58:57',1760695136517),('e5343b2c-ab3f-11f0-a68d-00059a3c7a00','activity-instance-start','10.175.133.60$default',6,'2025-10-17 09:58:57',1760695136517),('e5343b2d-ab3f-11f0-a68d-00059a3c7a00','job-acquired-failure','10.175.133.60$default',0,'2025-10-17 09:58:57',1760695136517),('e5343b2e-ab3f-11f0-a68d-00059a3c7a00','job-locked-exclusive','10.175.133.60$default',0,'2025-10-17 09:58:57',1760695136517),('e5343b2f-ab3f-11f0-a68d-00059a3c7a00','job-execution-rejected','10.175.133.60$default',0,'2025-10-17 09:58:57',1760695136517),('e5343b30-ab3f-11f0-a68d-00059a3c7a00','executed-decision-elements','10.175.133.60$default',0,'2025-10-17 09:58:57',1760695136517),('e5343b31-ab3f-11f0-a68d-00059a3c7a00','activity-instance-end','10.175.133.60$default',3,'2025-10-17 09:58:57',1760695136517),('e5343b32-ab3f-11f0-a68d-00059a3c7a00','job-successful','10.175.133.60$default',0,'2025-10-17 09:58:57',1760695136517),('e5343b33-ab3f-11f0-a68d-00059a3c7a00','job-acquired-success','10.175.133.60$default',0,'2025-10-17 09:58:57',1760695136517),('e5343b34-ab3f-11f0-a68d-00059a3c7a00','job-acquisition-attempt','10.175.133.60$default',15,'2025-10-17 09:58:57',1760695136517),('e5343b35-ab3f-11f0-a68d-00059a3c7a00','executed-decision-instances','10.175.133.60$default',0,'2025-10-17 09:58:57',1760695136517),('e5343b36-ab3f-11f0-a68d-00059a3c7a00','job-failed','10.175.133.60$default',0,'2025-10-17 09:58:57',1760695136517),('edf00a5d-a8df-11f0-821c-00059a3c7a00','root-process-instance-start','10.169.82.39$default',0,'2025-10-14 09:26:57',1760434017159),('edf00a5e-a8df-11f0-821c-00059a3c7a00','activity-instance-start','10.169.82.39$default',0,'2025-10-14 09:26:57',1760434017159),('edf00a5f-a8df-11f0-821c-00059a3c7a00','job-acquired-failure','10.169.82.39$default',0,'2025-10-14 09:26:57',1760434017159),('edf00a60-a8df-11f0-821c-00059a3c7a00','job-locked-exclusive','10.169.82.39$default',0,'2025-10-14 09:26:57',1760434017159),('edf00a61-a8df-11f0-821c-00059a3c7a00','job-execution-rejected','10.169.82.39$default',0,'2025-10-14 09:26:57',1760434017159),('edf00a62-a8df-11f0-821c-00059a3c7a00','executed-decision-elements','10.169.82.39$default',0,'2025-10-14 09:26:57',1760434017159),('edf00a63-a8df-11f0-821c-00059a3c7a00','activity-instance-end','10.169.82.39$default',0,'2025-10-14 09:26:57',1760434017159),('edf00a64-a8df-11f0-821c-00059a3c7a00','job-successful','10.169.82.39$default',0,'2025-10-14 09:26:57',1760434017159),('edf00a65-a8df-11f0-821c-00059a3c7a00','job-acquired-success','10.169.82.39$default',0,'2025-10-14 09:26:57',1760434017159),('edf00a66-a8df-11f0-821c-00059a3c7a00','job-acquisition-attempt','10.169.82.39$default',15,'2025-10-14 09:26:57',1760434017159),('edf00a67-a8df-11f0-821c-00059a3c7a00','executed-decision-instances','10.169.82.39$default',0,'2025-10-14 09:26:57',1760434017159),('edf00a68-a8df-11f0-821c-00059a3c7a00','job-failed','10.169.82.39$default',0,'2025-10-14 09:26:57',1760434017159),('eedf4489-aab4-11f0-8e98-00059a3c7a00','root-process-instance-start','192.168.0.108$default',0,'2025-10-16 17:24:13',1760635452689),('eedf448a-aab4-11f0-8e98-00059a3c7a00','activity-instance-start','192.168.0.108$default',0,'2025-10-16 17:24:13',1760635452690),('eedf448b-aab4-11f0-8e98-00059a3c7a00','job-acquired-failure','192.168.0.108$default',0,'2025-10-16 17:24:13',1760635452690),('eedf448c-aab4-11f0-8e98-00059a3c7a00','job-locked-exclusive','192.168.0.108$default',0,'2025-10-16 17:24:13',1760635452690),('eedf448d-aab4-11f0-8e98-00059a3c7a00','job-execution-rejected','192.168.0.108$default',0,'2025-10-16 17:24:13',1760635452690),('eedf448e-aab4-11f0-8e98-00059a3c7a00','executed-decision-elements','192.168.0.108$default',0,'2025-10-16 17:24:13',1760635452690),('eedf448f-aab4-11f0-8e98-00059a3c7a00','activity-instance-end','192.168.0.108$default',0,'2025-10-16 17:24:13',1760635452690),('eedf4490-aab4-11f0-8e98-00059a3c7a00','job-successful','192.168.0.108$default',0,'2025-10-16 17:24:13',1760635452690),('eedf4491-aab4-11f0-8e98-00059a3c7a00','job-acquired-success','192.168.0.108$default',0,'2025-10-16 17:24:13',1760635452690),('eedf4492-aab4-11f0-8e98-00059a3c7a00','job-acquisition-attempt','192.168.0.108$default',18,'2025-10-16 17:24:13',1760635452690),('eedf4493-aab4-11f0-8e98-00059a3c7a00','executed-decision-instances','192.168.0.108$default',0,'2025-10-16 17:24:13',1760635452690),('eedf4494-aab4-11f0-8e98-00059a3c7a00','job-failed','192.168.0.108$default',0,'2025-10-16 17:24:13',1760635452690);
/*!40000 ALTER TABLE `act_ru_meter_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `act_ru_task`
--

DROP TABLE IF EXISTS `act_ru_task`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `act_ru_task` (
  `ID_` varchar(64) COLLATE utf8mb3_bin NOT NULL,
  `REV_` int DEFAULT NULL,
  `EXECUTION_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `PROC_DEF_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `CASE_EXECUTION_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `CASE_INST_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `CASE_DEF_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `NAME_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `PARENT_TASK_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `DESCRIPTION_` varchar(4000) COLLATE utf8mb3_bin DEFAULT NULL,
  `TASK_DEF_KEY_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `OWNER_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `ASSIGNEE_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `DELEGATION_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `PRIORITY_` int DEFAULT NULL,
  `CREATE_TIME_` datetime DEFAULT NULL,
  `LAST_UPDATED_` datetime DEFAULT NULL,
  `DUE_DATE_` datetime DEFAULT NULL,
  `FOLLOW_UP_DATE_` datetime DEFAULT NULL,
  `SUSPENSION_STATE_` int DEFAULT NULL,
  `TENANT_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `TASK_STATE_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  KEY `ACT_IDX_TASK_CREATE` (`CREATE_TIME_`),
  KEY `ACT_IDX_TASK_LAST_UPDATED` (`LAST_UPDATED_`),
  KEY `ACT_IDX_TASK_ASSIGNEE` (`ASSIGNEE_`),
  KEY `ACT_IDX_TASK_OWNER` (`OWNER_`),
  KEY `ACT_IDX_TASK_TENANT_ID` (`TENANT_ID_`),
  KEY `ACT_FK_TASK_EXE` (`EXECUTION_ID_`),
  KEY `ACT_FK_TASK_PROCINST` (`PROC_INST_ID_`),
  KEY `ACT_FK_TASK_PROCDEF` (`PROC_DEF_ID_`),
  KEY `ACT_FK_TASK_CASE_EXE` (`CASE_EXECUTION_ID_`),
  KEY `ACT_FK_TASK_CASE_DEF` (`CASE_DEF_ID_`),
  CONSTRAINT `ACT_FK_TASK_CASE_DEF` FOREIGN KEY (`CASE_DEF_ID_`) REFERENCES `act_re_case_def` (`ID_`),
  CONSTRAINT `ACT_FK_TASK_CASE_EXE` FOREIGN KEY (`CASE_EXECUTION_ID_`) REFERENCES `act_ru_case_execution` (`ID_`),
  CONSTRAINT `ACT_FK_TASK_EXE` FOREIGN KEY (`EXECUTION_ID_`) REFERENCES `act_ru_execution` (`ID_`),
  CONSTRAINT `ACT_FK_TASK_PROCDEF` FOREIGN KEY (`PROC_DEF_ID_`) REFERENCES `act_re_procdef` (`ID_`),
  CONSTRAINT `ACT_FK_TASK_PROCINST` FOREIGN KEY (`PROC_INST_ID_`) REFERENCES `act_ru_execution` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_ru_task`
--

LOCK TABLES `act_ru_task` WRITE;
/*!40000 ALTER TABLE `act_ru_task` DISABLE KEYS */;
INSERT INTO `act_ru_task` VALUES ('41c5b30a-ab3f-11f0-a68d-00059a3c7a00',1,'41c4efb3-ab3f-11f0-a68d-00059a3c7a00','41c4efb3-ab3f-11f0-a68d-00059a3c7a00','LoginProcess:4:33224b12-ab3f-11f0-a68d-00059a3c7a00',NULL,NULL,NULL,'Show Login Form',NULL,NULL,'Activity_ShowLoginForm',NULL,NULL,NULL,50,'2025-10-17 09:54:22',NULL,NULL,NULL,1,NULL,'Created'),('61c4934a-a8cd-11f0-821c-00059a3c7a00',1,'61c49346-a8cd-11f0-821c-00059a3c7a00','61c49346-a8cd-11f0-821c-00059a3c7a00','welcome_process_id:3:61c1d425-a8cd-11f0-821c-00059a3c7a00',NULL,NULL,NULL,'User task',NULL,NULL,'Activity_0gl2886',NULL,'admin',NULL,50,'2025-10-14 07:14:11',NULL,NULL,NULL,1,NULL,'Created'),('80d04f72-ab3f-11f0-a68d-00059a3c7a00',1,'80d0014b-ab3f-11f0-a68d-00059a3c7a00','80d0014b-ab3f-11f0-a68d-00059a3c7a00','LoginProcess:4:33224b12-ab3f-11f0-a68d-00059a3c7a00',NULL,NULL,NULL,'Show Login Form',NULL,NULL,'Activity_ShowLoginForm',NULL,NULL,NULL,50,'2025-10-17 09:56:08',NULL,NULL,NULL,1,NULL,'Created'),('9477703a-ab3f-11f0-a68d-00059a3c7a00',1,'94772213-ab3f-11f0-a68d-00059a3c7a00','94772213-ab3f-11f0-a68d-00059a3c7a00','LoginProcess:4:33224b12-ab3f-11f0-a68d-00059a3c7a00',NULL,NULL,NULL,'Show Login Form',NULL,NULL,'Activity_ShowLoginForm',NULL,NULL,NULL,50,'2025-10-17 09:56:41',NULL,NULL,NULL,1,NULL,'Created');
/*!40000 ALTER TABLE `act_ru_task` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `act_ru_task_meter_log`
--

DROP TABLE IF EXISTS `act_ru_task_meter_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `act_ru_task_meter_log` (
  `ID_` varchar(64) COLLATE utf8mb3_bin NOT NULL,
  `ASSIGNEE_HASH_` bigint DEFAULT NULL,
  `TIMESTAMP_` datetime DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  KEY `ACT_IDX_TASK_METER_LOG_TIME` (`TIMESTAMP_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_ru_task_meter_log`
--

LOCK TABLES `act_ru_task_meter_log` WRITE;
/*!40000 ALTER TABLE `act_ru_task_meter_log` DISABLE KEYS */;
INSERT INTO `act_ru_task_meter_log` VALUES ('61c4934c-a8cd-11f0-821c-00059a3c7a00',2387804082629223847,'2025-10-14 07:14:11');
/*!40000 ALTER TABLE `act_ru_task_meter_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `act_ru_variable`
--

DROP TABLE IF EXISTS `act_ru_variable`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `act_ru_variable` (
  `ID_` varchar(64) COLLATE utf8mb3_bin NOT NULL,
  `REV_` int DEFAULT NULL,
  `TYPE_` varchar(255) COLLATE utf8mb3_bin NOT NULL,
  `NAME_` varchar(255) COLLATE utf8mb3_bin NOT NULL,
  `EXECUTION_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `PROC_DEF_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `CASE_EXECUTION_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `CASE_INST_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `TASK_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `BATCH_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `BYTEARRAY_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `DOUBLE_` double DEFAULT NULL,
  `LONG_` bigint DEFAULT NULL,
  `TEXT_` varchar(4000) COLLATE utf8mb3_bin DEFAULT NULL,
  `TEXT2_` varchar(4000) COLLATE utf8mb3_bin DEFAULT NULL,
  `VAR_SCOPE_` varchar(64) COLLATE utf8mb3_bin NOT NULL,
  `SEQUENCE_COUNTER_` bigint DEFAULT NULL,
  `IS_CONCURRENT_LOCAL_` tinyint DEFAULT NULL,
  `TENANT_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  UNIQUE KEY `ACT_UNIQ_VARIABLE` (`VAR_SCOPE_`,`NAME_`),
  KEY `ACT_IDX_VARIABLE_TASK_ID` (`TASK_ID_`),
  KEY `ACT_IDX_VARIABLE_TENANT_ID` (`TENANT_ID_`),
  KEY `ACT_IDX_VARIABLE_TASK_NAME_TYPE` (`TASK_ID_`,`NAME_`,`TYPE_`),
  KEY `ACT_FK_VAR_EXE` (`EXECUTION_ID_`),
  KEY `ACT_FK_VAR_PROCINST` (`PROC_INST_ID_`),
  KEY `ACT_FK_VAR_BYTEARRAY` (`BYTEARRAY_ID_`),
  KEY `ACT_IDX_BATCH_ID` (`BATCH_ID_`),
  KEY `ACT_FK_VAR_CASE_EXE` (`CASE_EXECUTION_ID_`),
  KEY `ACT_FK_VAR_CASE_INST` (`CASE_INST_ID_`),
  CONSTRAINT `ACT_FK_VAR_BATCH` FOREIGN KEY (`BATCH_ID_`) REFERENCES `act_ru_batch` (`ID_`),
  CONSTRAINT `ACT_FK_VAR_BYTEARRAY` FOREIGN KEY (`BYTEARRAY_ID_`) REFERENCES `act_ge_bytearray` (`ID_`),
  CONSTRAINT `ACT_FK_VAR_CASE_EXE` FOREIGN KEY (`CASE_EXECUTION_ID_`) REFERENCES `act_ru_case_execution` (`ID_`),
  CONSTRAINT `ACT_FK_VAR_CASE_INST` FOREIGN KEY (`CASE_INST_ID_`) REFERENCES `act_ru_case_execution` (`ID_`),
  CONSTRAINT `ACT_FK_VAR_EXE` FOREIGN KEY (`EXECUTION_ID_`) REFERENCES `act_ru_execution` (`ID_`),
  CONSTRAINT `ACT_FK_VAR_PROCINST` FOREIGN KEY (`PROC_INST_ID_`) REFERENCES `act_ru_execution` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_ru_variable`
--

LOCK TABLES `act_ru_variable` WRITE;
/*!40000 ALTER TABLE `act_ru_variable` DISABLE KEYS */;
INSERT INTO `act_ru_variable` VALUES ('41c4efb4-ab3f-11f0-a68d-00059a3c7a00',1,'string','password','41c4efb3-ab3f-11f0-a68d-00059a3c7a00','41c4efb3-ab3f-11f0-a68d-00059a3c7a00','LoginProcess:4:33224b12-ab3f-11f0-a68d-00059a3c7a00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'admin',NULL,'41c4efb3-ab3f-11f0-a68d-00059a3c7a00',1,0,NULL),('41c516c6-ab3f-11f0-a68d-00059a3c7a00',1,'string','username','41c4efb3-ab3f-11f0-a68d-00059a3c7a00','41c4efb3-ab3f-11f0-a68d-00059a3c7a00','LoginProcess:4:33224b12-ab3f-11f0-a68d-00059a3c7a00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'admin',NULL,'41c4efb3-ab3f-11f0-a68d-00059a3c7a00',1,0,NULL),('80d0285c-ab3f-11f0-a68d-00059a3c7a00',1,'string','password','80d0014b-ab3f-11f0-a68d-00059a3c7a00','80d0014b-ab3f-11f0-a68d-00059a3c7a00','LoginProcess:4:33224b12-ab3f-11f0-a68d-00059a3c7a00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'admin',NULL,'80d0014b-ab3f-11f0-a68d-00059a3c7a00',1,0,NULL),('80d0285e-ab3f-11f0-a68d-00059a3c7a00',1,'string','username','80d0014b-ab3f-11f0-a68d-00059a3c7a00','80d0014b-ab3f-11f0-a68d-00059a3c7a00','LoginProcess:4:33224b12-ab3f-11f0-a68d-00059a3c7a00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'admin',NULL,'80d0014b-ab3f-11f0-a68d-00059a3c7a00',1,0,NULL),('8cd0e3bb-ab3d-11f0-a68d-00059a3c7a00',1,'string','userId','8ccf0efa-ab3d-11f0-a68d-00059a3c7a00','8ccf0efa-ab3d-11f0-a68d-00059a3c7a00','LoginProcess:3:8e8ec7ad-ab3a-11f0-a68d-00059a3c7a00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'3',NULL,'8ccf0efa-ab3d-11f0-a68d-00059a3c7a00',1,0,NULL),('8cd17ffd-ab3d-11f0-a68d-00059a3c7a00',1,'string','username','8ccf0efa-ab3d-11f0-a68d-00059a3c7a00','8ccf0efa-ab3d-11f0-a68d-00059a3c7a00','LoginProcess:3:8e8ec7ad-ab3a-11f0-a68d-00059a3c7a00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'admin',NULL,'8ccf0efa-ab3d-11f0-a68d-00059a3c7a00',1,0,NULL),('94772214-ab3f-11f0-a68d-00059a3c7a00',1,'string','password','94772213-ab3f-11f0-a68d-00059a3c7a00','94772213-ab3f-11f0-a68d-00059a3c7a00','LoginProcess:4:33224b12-ab3f-11f0-a68d-00059a3c7a00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'test',NULL,'94772213-ab3f-11f0-a68d-00059a3c7a00',1,0,NULL),('94772216-ab3f-11f0-a68d-00059a3c7a00',1,'string','username','94772213-ab3f-11f0-a68d-00059a3c7a00','94772213-ab3f-11f0-a68d-00059a3c7a00','LoginProcess:4:33224b12-ab3f-11f0-a68d-00059a3c7a00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'test',NULL,'94772213-ab3f-11f0-a68d-00059a3c7a00',1,0,NULL);
/*!40000 ALTER TABLE `act_ru_variable` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `id` int NOT NULL AUTO_INCREMENT,
  `userId` int NOT NULL,
  `productName` varchar(255) NOT NULL,
  `quantity` int NOT NULL,
  `amount` float NOT NULL,
  `status` enum('pending','approved','rejected','processing','delivered') DEFAULT 'pending',
  `processInstanceId` varchar(255) DEFAULT NULL,
  `discount` float DEFAULT '0',
  `finalAmount` float NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `orders_user_id` (`userId`),
  KEY `orders_status` (`status`),
  CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` enum('user','admin') DEFAULT 'user',
  `isVerified` tinyint(1) DEFAULT '0',
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-10-17 16:17:04
CREATE DATABASE  IF NOT EXISTS `my_app` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `my_app`;
-- MySQL dump 10.13  Distrib 8.0.32, for Win64 (x86_64)
--
-- Host: localhost    Database: my_app
-- ------------------------------------------------------
-- Server version	8.0.32

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `invoices`
--

DROP TABLE IF EXISTS `invoices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `invoices` (
  `id` int NOT NULL AUTO_INCREMENT,
  `orderId` int NOT NULL,
  `amount` float NOT NULL,
  `discount` float DEFAULT '0',
  `tax` float DEFAULT '0',
  `totalAmount` float NOT NULL,
  `status` enum('generated','sent','paid','overdue') DEFAULT 'generated',
  `dueDate` datetime NOT NULL,
  `createdAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updatedAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `idx_orderId` (`orderId`),
  KEY `idx_status` (`status`),
  CONSTRAINT `invoices_ibfk_1` FOREIGN KEY (`orderId`) REFERENCES `orders` (`id`),
  CONSTRAINT `invoices_chk_1` CHECK ((`amount` >= 0.01))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `invoices`
--

LOCK TABLES `invoices` WRITE;
/*!40000 ALTER TABLE `invoices` DISABLE KEYS */;
/*!40000 ALTER TABLE `invoices` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `id` int NOT NULL AUTO_INCREMENT,
  `userId` int NOT NULL,
  `productName` varchar(255) NOT NULL,
  `quantity` int NOT NULL,
  `amount` float NOT NULL,
  `status` enum('pending','approved','rejected','processing','delivered') DEFAULT 'pending',
  `processInstanceId` varchar(255) DEFAULT NULL,
  `discount` float DEFAULT '0',
  `finalAmount` float NOT NULL,
  `createdAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updatedAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `idx_userId` (`userId`),
  KEY `idx_status` (`status`),
  KEY `orders_user_id` (`userId`),
  KEY `orders_status` (`status`),
  CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `users` (`id`),
  CONSTRAINT `orders_chk_1` CHECK ((`quantity` >= 1)),
  CONSTRAINT `orders_chk_2` CHECK ((`amount` >= 0.01))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oreers`
--

DROP TABLE IF EXISTS `oreers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oreers` (
  `id` int NOT NULL AUTO_INCREMENT,
  `userId` int NOT NULL,
  `productName` varchar(255) NOT NULL,
  `quantity` int NOT NULL,
  `amount` float NOT NULL,
  `status` enum('pending','approved','rejected','processing','delivered') DEFAULT 'pending',
  `processInstanceId` varchar(255) DEFAULT NULL,
  `discount` float DEFAULT '0',
  `finalAmount` float NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `oreers_user_id` (`userId`),
  KEY `oreers_status` (`status`),
  CONSTRAINT `oreers_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oreers`
--

LOCK TABLES `oreers` WRITE;
/*!40000 ALTER TABLE `oreers` DISABLE KEYS */;
/*!40000 ALTER TABLE `oreers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` enum('user','admin') DEFAULT 'user',
  `isVerified` tinyint(1) DEFAULT '0',
  `createdAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updatedAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (2,'new','new@gmail.com','$2b$10$ZzHODB7/HNBBeTCL1MBxzOyCT/zMkNAKFGddgyDFWnj0byZQer8zO','user',0,'2025-10-17 09:30:15','2025-10-17 09:30:15'),(3,'admin','admin@gmail.com','$2b$10$is2xwlIjdrVNMHuU7tO2AObsHFzIQ4SP5ubwONKDEbQtfSgksvdxi','admin',0,'2025-10-17 09:31:00','2025-10-17 09:31:00');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-10-17 16:17:04
