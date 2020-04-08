#------------------------------------------------------------
#        Script MySQL.
#------------------------------------------------------------

#------------------------------------------------------------
# CREATE DataBase
#------------------------------------------------------------

CREATE DATABASE IF NOT EXISTS `m2lreservationdessales` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `m2lreservationdessales`;

#------------------------------------------------------------
# Table: Club
#------------------------------------------------------------

CREATE TABLE Club(
        Id_Club Int NOT NULL ,
        Name    Varchar (50) NOT NULL
	,CONSTRAINT Club_PK PRIMARY KEY (Id_Club)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: AccesRight
#------------------------------------------------------------

CREATE TABLE AccesRight(
        Id_AccesRight   Int NOT NULL ,
        Name_AccesRight Varchar (50) NOT NULL
	,CONSTRAINT AccesRight_PK PRIMARY KEY (Id_AccesRight)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: Member
#------------------------------------------------------------

CREATE TABLE Member(
        Id_Member       Int NOT NULL ,
        Name_Member     Varchar (50) NOT NULL ,
        LastName_Member Varchar (50) NOT NULL ,
        Password_User   Varchar (50) NOT NULL ,
        Login_Member    Varchar (50) NOT NULL ,
        Id_Club         Int ,
        Id_AccesRight   Int NOT NULL
	,CONSTRAINT Member_PK PRIMARY KEY (Id_Member)

	,CONSTRAINT Member_Club_FK FOREIGN KEY (Id_Club) REFERENCES Club(Id_Club)
	,CONSTRAINT Member_AccesRight0_FK FOREIGN KEY (Id_AccesRight) REFERENCES AccesRight(Id_AccesRight)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: Room
#------------------------------------------------------------

CREATE TABLE Room(
        Id_Room           Int NOT NULL ,
        Name_Room         Varchar (50) NOT NULL ,
        BuildingName_Room Varchar (50) NOT NULL
	,CONSTRAINT Room_PK PRIMARY KEY (Id_Room)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: Booking
#------------------------------------------------------------

CREATE TABLE Booking(
        Id_Booking   Int NOT NULL ,
        Name_Booking Varchar (50) NOT NULL ,
        Id_Room      Int NOT NULL ,
        Id_Member    Int NOT NULL
	,CONSTRAINT Booking_PK PRIMARY KEY (Id_Booking)

	,CONSTRAINT Booking_Room_FK FOREIGN KEY (Id_Room) REFERENCES Room(Id_Room)
	,CONSTRAINT Booking_Member0_FK FOREIGN KEY (Id_Member) REFERENCES Member(Id_Member)
)ENGINE=InnoDB;

