@isTest
public class DedupeReminderTest {
    @isTest static void createAccount() {
        Account acc = new Account();
        acc.Name = 'Smith & Jones';
        insert acc;
    }
}
