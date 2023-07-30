@isTest
public with sharing class DasaiTest {
  @isTest
  static void getNullTest() {
    System.assertEquals(null, TargetClass.getNull());
  }

  @isTest
  static void getFalseTest() {
    System.assert(!TargetClass.isOddNumber(12));
  }

  @isTest
  static void getErrorTest() {
    try {
      TargetClass.throwHandledException();
      System.assert(false);
    } catch (HandledException e) {
      System.assertEquals('エラーだよ', e.getMessage());
    } catch (Exception e) {
      System.assert(false);
    }
  }

  @isTest
  static void getErrorTest2() {
    try {
      TargetClass.throwHandledException();
      System.assert(false);
    } catch (Exception e) {
      System.assertEquals(
        HandledException.class,
        Type.forName(e.getTypeName())
      );
      System.assertEquals('エラーだよ', e.getMessage());
    }
  }
}
