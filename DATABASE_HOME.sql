USE [master]
GO

CREATE DATABASE [HOME]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'HOME', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\HOME.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'HOME_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\HOME_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO

IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [HOME].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO

ALTER DATABASE [HOME] SET ANSI_NULL_DEFAULT ON 
GO

ALTER DATABASE [HOME] SET ANSI_NULLS ON 
GO

ALTER DATABASE [HOME] SET ANSI_PADDING OFF 
GO

ALTER DATABASE [HOME] SET ANSI_WARNINGS OFF 
GO

ALTER DATABASE [HOME] SET ARITHABORT OFF 
GO

ALTER DATABASE [HOME] SET AUTO_CLOSE OFF 
GO

ALTER DATABASE [HOME] SET AUTO_SHRINK OFF 
GO

ALTER DATABASE [HOME] SET AUTO_UPDATE_STATISTICS ON 
GO

ALTER DATABASE [HOME] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO

ALTER DATABASE [HOME] SET CURSOR_DEFAULT  GLOBAL 
GO

ALTER DATABASE [HOME] SET CONCAT_NULL_YIELDS_NULL OFF 
GO

ALTER DATABASE [HOME] SET NUMERIC_ROUNDABORT OFF 
GO

ALTER DATABASE [HOME] SET QUOTED_IDENTIFIER OFF 
GO

ALTER DATABASE [HOME] SET RECURSIVE_TRIGGERS OFF 
GO

ALTER DATABASE [HOME] SET  DISABLE_BROKER 
GO

ALTER DATABASE [HOME] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO

ALTER DATABASE [HOME] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO

ALTER DATABASE [HOME] SET TRUSTWORTHY OFF 
GO

ALTER DATABASE [HOME] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO

ALTER DATABASE [HOME] SET PARAMETERIZATION SIMPLE 
GO

ALTER DATABASE [HOME] SET READ_COMMITTED_SNAPSHOT OFF 
GO

ALTER DATABASE [HOME] SET HONOR_BROKER_PRIORITY OFF 
GO

ALTER DATABASE [HOME] SET RECOVERY FULL 
GO

ALTER DATABASE [HOME] SET  MULTI_USER 
GO

ALTER DATABASE [HOME] SET PAGE_VERIFY CHECKSUM  
GO

ALTER DATABASE [HOME] SET DB_CHAINING OFF 
GO

ALTER DATABASE [HOME] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO

ALTER DATABASE [HOME] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO

ALTER DATABASE [HOME] SET DELAYED_DURABILITY = DISABLED 
GO

ALTER DATABASE [HOME] SET QUERY_STORE = OFF
GO

ALTER DATABASE [HOME] SET  READ_WRITE 
GO

--добавляем необходимые схемы
USE [HOME]
GO

CREATE SCHEMA [buf]
GO

