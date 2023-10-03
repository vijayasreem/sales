@isTest
public class DocumentVerificationAppTest {

    private static DocumentVerificationApp app;

    @isTest
    static void verifyUserDocs_GivenHighIncomeAndCreditScore_ShouldReturnHighLimitMessage() {
        //Arrange
        app = new DocumentVerificationApp();

        //Act
        app.verifyUserDocs();

        //Assert
        System.assertEquals('Congratulations! You are eligible for a credit score with a high limit.', app.verifyUserDocs());
    }

    @isTest
    static void verifyUserDocs_GivenModerateIncomeAndCreditScore_ShouldReturnModerateLimitMessage() {
        //Arrange
        app = new DocumentVerificationApp();
        app.annualIncome = 20000;
        app.creditScore = 600;

        //Act
        app.verifyUserDocs();

        //Assert
        System.assertEquals('You are eligible for a credit score with a moderate limit.', app.verifyUserDocs());
    }

    @isTest
    static void verifyUserDocs_GivenLowIncomeAndCreditScore_ShouldReturnErrorMessage() {
        //Arrange
        app = new DocumentVerificationApp();
        app.annualIncome = 10000;
        app.creditScore = 500;

        //Act
        app.verifyUserDocs();

        //Assert
        System.assertEquals('You are not eligible for banking services.', app.verifyUserDocs());
    }
}