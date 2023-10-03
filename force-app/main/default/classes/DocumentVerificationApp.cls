public class DocumentVerificationApp {

    public static final int MIN_INCOME_HIGH_LIMIT = 30000;
    public static final int MIN_CREDIT_SCORE_HIGH_LIMIT = 700;
    public static final int MIN_INCOME_MODERATE_LIMIT = 20000;
    public static final int MIN_CREDIT_SCORE_MODERATE_LIMIT = 600;

    private Scanner scanner;
    private int annualIncome;
    private int creditScore;

    public DocumentVerificationApp() {
        scanner = new Scanner(System.in);
    }

    public void verifyUserDocs() {
        //Display welcome message
        System.out.println("Welcome to the Document Verification App!");

        //Collect user input
        System.out.println("Please enter your annual income: ");
        annualIncome = scanner.nextInt();
        System.out.println("Please enter your credit score: ");
        creditScore = scanner.nextInt();

        //Verify identity and address
        if (identityAndAddressVerified()) {
            System.out.println("Document verification is complete.");

            //Check annual income and credit score
            if (annualIncome >= MIN_INCOME_HIGH_LIMIT && creditScore >= MIN_CREDIT_SCORE_HIGH_LIMIT) {
                System.out.println("Congratulations! You are eligible for a credit score with a high limit.");
            } else if (annualIncome >= MIN_INCOME_MODERATE_LIMIT && creditScore >= MIN_CREDIT_SCORE_MODERATE_LIMIT) {
                System.out.println("You are eligible for a credit score with a moderate limit.");
            } else {
                System.out.println("You are not eligible for banking services.");
            }
        } else {
            System.out.println("Document verification is incomplete and you are not eligible for banking services.");
        }

        //Close resources
        scanner.close();
    }

    private boolean identityAndAddressVerified() {
        //TODO: Add logic to verify identity and address
        //For now, assume identity and address are always verified
        return true;
    }
}