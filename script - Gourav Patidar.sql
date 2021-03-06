USE [master]
GO
/****** Object:  Database [BankingSystem]    Script Date: 4/30/2017 3:51:53 PM ******/
CREATE DATABASE [BankingSystem]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'BankingSystem', FILENAME = N'C:\Program Files (x86)\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\BankingSystem.mdf' , SIZE = 3264KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'BankingSystem_log', FILENAME = N'C:\Program Files (x86)\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\BankingSystem_log.ldf' , SIZE = 816KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [BankingSystem] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [BankingSystem].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [BankingSystem] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [BankingSystem] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [BankingSystem] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [BankingSystem] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [BankingSystem] SET ARITHABORT OFF 
GO
ALTER DATABASE [BankingSystem] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [BankingSystem] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [BankingSystem] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [BankingSystem] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [BankingSystem] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [BankingSystem] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [BankingSystem] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [BankingSystem] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [BankingSystem] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [BankingSystem] SET  ENABLE_BROKER 
GO
ALTER DATABASE [BankingSystem] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [BankingSystem] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [BankingSystem] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [BankingSystem] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [BankingSystem] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [BankingSystem] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [BankingSystem] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [BankingSystem] SET RECOVERY FULL 
GO
ALTER DATABASE [BankingSystem] SET  MULTI_USER 
GO
ALTER DATABASE [BankingSystem] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [BankingSystem] SET DB_CHAINING OFF 
GO
ALTER DATABASE [BankingSystem] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [BankingSystem] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [BankingSystem] SET DELAYED_DURABILITY = DISABLED 
GO
USE [BankingSystem]
GO
/****** Object:  Table [dbo].[AdminRegistration]    Script Date: 4/30/2017 3:51:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AdminRegistration](
	[AdminID] [int] IDENTITY(10,1) NOT NULL,
	[Name] [nvarchar](30) NOT NULL,
	[AdminDesignation] [nvarchar](30) NOT NULL,
	[AdminAddress] [nvarchar](50) NOT NULL,
	[State] [nvarchar](10) NULL,
	[City] [nvarchar](10) NOT NULL,
	[Zip] [int] NOT NULL,
	[AdminPhone] [nvarchar](10) NULL,
	[AdminEmail] [nvarchar](20) NOT NULL,
	[AdminName] [nvarchar](10) NOT NULL,
	[Password] [nvarchar](10) NOT NULL,
 CONSTRAINT [PK_AdminRegistration] PRIMARY KEY CLUSTERED 
(
	[AdminID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[BankAccountDetails]    Script Date: 4/30/2017 3:51:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BankAccountDetails](
	[AccountNumber] [int] IDENTITY(10100,1) NOT NULL,
	[CustomerID] [int] NOT NULL,
	[AccountTypeID] [int] NOT NULL,
	[AccountBalance] [money] NOT NULL,
 CONSTRAINT [PK_BankAccountDetails] PRIMARY KEY CLUSTERED 
(
	[AccountNumber] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[BankAccountType]    Script Date: 4/30/2017 3:51:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BankAccountType](
	[AccountTypeID] [int] IDENTITY(2100,1) NOT NULL,
	[AccountTypeName] [nvarchar](30) NOT NULL,
	[AccountDescription] [nvarchar](50) NOT NULL,
	[AccountInterestRate] [money] NOT NULL,
 CONSTRAINT [PK_BankAccountType] PRIMARY KEY CLUSTERED 
(
	[AccountTypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[BankCustomer]    Script Date: 4/30/2017 3:51:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[BankCustomer](
	[CustomerID] [int] IDENTITY(3100,1) NOT NULL,
	[CustomerName] [varchar](20) NOT NULL,
	[CustomerAddress] [varchar](50) NOT NULL,
	[City] [varchar](20) NOT NULL,
	[Zip] [varchar](20) NOT NULL,
	[State] [varchar](50) NULL,
	[CustomerPhone] [varchar](50) NULL,
	[CustomerEmail] [varchar](20) NOT NULL,
	[BranchID] [int] NOT NULL,
	[UserName] [nvarchar](30) NOT NULL,
	[Password] [nvarchar](30) NOT NULL,
	[Income] [nvarchar](100) NULL,
	[Asset] [nvarchar](100) NULL,
	[CreditScore] [nvarchar](100) NULL,
	[EmployementDetails] [nvarchar](100) NULL,
 CONSTRAINT [PK_BankCustomer] PRIMARY KEY CLUSTERED 
(
	[CustomerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[BankDepositDetails]    Script Date: 4/30/2017 3:51:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[BankDepositDetails](
	[CustomerID] [int] NOT NULL,
	[AccountNumber] [int] NOT NULL,
	[Phone] [varchar](10) NULL,
	[DepositAccount] [money] NOT NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[BankEmployee]    Script Date: 4/30/2017 3:51:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[BankEmployee](
	[EmployeeID] [int] IDENTITY(4100,1) NOT NULL,
	[EmployeeName] [varchar](20) NOT NULL,
	[EmployeeDesignation] [varchar](20) NOT NULL,
	[EmployeeAddress] [varchar](50) NOT NULL,
	[City] [varchar](50) NOT NULL,
	[Zip] [varchar](20) NOT NULL,
	[State] [nvarchar](50) NULL,
	[EmployeePhone] [nvarchar](50) NULL,
	[EmployeeEmail] [varchar](50) NOT NULL,
	[UserName] [nvarchar](30) NOT NULL,
	[Password] [nvarchar](30) NOT NULL,
 CONSTRAINT [PK_BankEmployee] PRIMARY KEY CLUSTERED 
(
	[EmployeeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[BranchOffice]    Script Date: 4/30/2017 3:51:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[BranchOffice](
	[BranchID] [int] IDENTITY(110,1) NOT NULL,
	[BranchName] [nvarchar](20) NOT NULL,
	[BranchAddress] [nvarchar](100) NULL,
	[City] [nvarchar](20) NOT NULL,
	[Zip] [varchar](20) NOT NULL,
	[State] [varchar](20) NULL,
	[BranchOfficePhone] [varchar](50) NULL,
	[BranchOfficeEmail] [nvarchar](50) NULL,
 CONSTRAINT [PK_BranchOffice] PRIMARY KEY CLUSTERED 
(
	[BranchID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CreditCardDepartment]    Script Date: 4/30/2017 3:51:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CreditCardDepartment](
	[CreditCardApplicantID] [int] IDENTITY(5001,1) NOT NULL,
	[CustomerID] [int] NOT NULL,
	[CreditCardType] [varchar](10) NOT NULL,
	[CreditCardLimit] [nvarchar](5) NOT NULL,
	[Status] [nvarchar](20) NULL,
 CONSTRAINT [PK_CreditCardDepaprtment] PRIMARY KEY CLUSTERED 
(
	[CreditCardApplicantID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[LoanApplicantDetail]    Script Date: 4/30/2017 3:51:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoanApplicantDetail](
	[ApplicationNumber] [int] IDENTITY(6100,1) NOT NULL,
	[CustomerID] [int] NOT NULL,
	[LoanID] [int] NOT NULL,
	[LoanStartDate] [date] NOT NULL,
	[LoanDurationMonths] [int] NOT NULL,
	[BranchID] [int] NOT NULL,
	[Status] [nvarchar](20) NULL,
 CONSTRAINT [PK_LoanApplicantDetails] PRIMARY KEY CLUSTERED 
(
	[ApplicationNumber] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[LoanDepartment]    Script Date: 4/30/2017 3:51:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[LoanDepartment](
	[LoanID] [int] IDENTITY(7001,1) NOT NULL,
	[LoanDescription] [varchar](max) NOT NULL,
	[LoanType] [varchar](20) NOT NULL,
	[LoanInterestRate] [nvarchar](2) NOT NULL,
 CONSTRAINT [PK_LoanDepartment] PRIMARY KEY CLUSTERED 
(
	[LoanID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [dbo].[BankAccountDetails]  WITH CHECK ADD  CONSTRAINT [FK_BankAccountDetails_BankAccountType] FOREIGN KEY([AccountTypeID])
REFERENCES [dbo].[BankAccountType] ([AccountTypeID])
GO
ALTER TABLE [dbo].[BankAccountDetails] CHECK CONSTRAINT [FK_BankAccountDetails_BankAccountType]
GO
ALTER TABLE [dbo].[BankAccountDetails]  WITH CHECK ADD  CONSTRAINT [FK_BankAccountDetails_BankCustomer] FOREIGN KEY([CustomerID])
REFERENCES [dbo].[BankCustomer] ([CustomerID])
GO
ALTER TABLE [dbo].[BankAccountDetails] CHECK CONSTRAINT [FK_BankAccountDetails_BankCustomer]
GO
ALTER TABLE [dbo].[CreditCardDepartment]  WITH CHECK ADD  CONSTRAINT [FK_CreditCardDepaprtment_BankCustomer] FOREIGN KEY([CustomerID])
REFERENCES [dbo].[BankCustomer] ([CustomerID])
GO
ALTER TABLE [dbo].[CreditCardDepartment] CHECK CONSTRAINT [FK_CreditCardDepaprtment_BankCustomer]
GO
ALTER TABLE [dbo].[LoanApplicantDetail]  WITH CHECK ADD  CONSTRAINT [FK_LoanApplicantDetail_BankCustomer] FOREIGN KEY([CustomerID])
REFERENCES [dbo].[BankCustomer] ([CustomerID])
GO
ALTER TABLE [dbo].[LoanApplicantDetail] CHECK CONSTRAINT [FK_LoanApplicantDetail_BankCustomer]
GO
ALTER TABLE [dbo].[LoanApplicantDetail]  WITH CHECK ADD  CONSTRAINT [FK_LoanApplicantDetail_BranchOffice] FOREIGN KEY([BranchID])
REFERENCES [dbo].[BranchOffice] ([BranchID])
GO
ALTER TABLE [dbo].[LoanApplicantDetail] CHECK CONSTRAINT [FK_LoanApplicantDetail_BranchOffice]
GO
ALTER TABLE [dbo].[LoanApplicantDetail]  WITH CHECK ADD  CONSTRAINT [FK_LoanApplicantDetail_LoanDepartment] FOREIGN KEY([LoanID])
REFERENCES [dbo].[LoanDepartment] ([LoanID])
GO
ALTER TABLE [dbo].[LoanApplicantDetail] CHECK CONSTRAINT [FK_LoanApplicantDetail_LoanDepartment]
GO
USE [master]
GO
ALTER DATABASE [BankingSystem] SET  READ_WRITE 
GO
