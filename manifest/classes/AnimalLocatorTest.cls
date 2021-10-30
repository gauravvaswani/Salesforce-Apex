@isTest
private class AnimalLocatorTest {
    @isTest static void testGetAnimalCallout() {
        Test.setMock(HttpCalloutMock.class, new AnimalLocatorMock());
        String str = AnimalLocator.getAnimalNameById(1);
    }
}
