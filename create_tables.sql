CREATE TABLE `crop` (
  `CropID` int NOT NULL,
  `CropName` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`CropID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `farm` (
  `FarmID` int NOT NULL,
  `FarmLocation` varchar(100) DEFAULT NULL,
  `WaterSource` varchar(50) DEFAULT NULL,
  `LabourHours` int DEFAULT NULL,
  PRIMARY KEY (`FarmID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `farm_crop` (
  `FarmCropID` int NOT NULL AUTO_INCREMENT,
  `FarmID` int DEFAULT NULL,
  `CropID` int DEFAULT NULL,
  `SoilID` int DEFAULT NULL,
  `InitiativeID` int DEFAULT NULL,
  `PlantingDate` date DEFAULT NULL,
  `HarvestDate` date DEFAULT NULL,
  `CropYield` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`FarmCropID`),
  KEY `CropID` (`CropID`),
  KEY `SoilID` (`SoilID`),
  KEY `fk_initiative` (`InitiativeID`),
  KEY `fk_farm` (`FarmID`),
  CONSTRAINT `fk_farm` FOREIGN KEY (`FarmID`) REFERENCES `farm` (`FarmID`),
  CONSTRAINT `fk_initiative` FOREIGN KEY (`InitiativeID`) REFERENCES `sustainability_initiative` (`InitiativeID`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `resource` (
  `ResourceID` int NOT NULL,
  `ResourceType` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`ResourceID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `soil` (
  `SoilID` int NOT NULL,
  `pHLevel` decimal(3,1) DEFAULT NULL,
  `NitrogenLevel` decimal(5,2) DEFAULT NULL,
  `PhosphorusLevel` decimal(5,2) DEFAULT NULL,
  `PotassiumLevel` decimal(5,2) DEFAULT NULL,
  PRIMARY KEY (`SoilID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `sustainability_initiative` (
  `InitiativeID` int NOT NULL,
  `InitiativeDescription` text,
  `DateInitiated` date DEFAULT NULL,
  `ExpectedImpact` text,
  `EnvironmentalImpactScore` decimal(5,2) DEFAULT NULL,
  PRIMARY KEY (`InitiativeID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `resource_application` (
  `ApplicationID` int NOT NULL,
  `FarmCropID` int DEFAULT NULL,
  `ResourceID` int DEFAULT NULL,
  `ResourceQuantity` decimal(10,2) DEFAULT NULL,
  `DateOfApplication` date DEFAULT NULL,
  PRIMARY KEY (`ApplicationID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
