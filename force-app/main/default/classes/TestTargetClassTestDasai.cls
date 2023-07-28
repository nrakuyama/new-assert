@isTest
public with sharing class TestTargetClassTestDasai {
  @isTest
  static void getNullTest() {
    System.assertEquals(null, TestTargetClass.getNull());
  }

  @isTest
  static void getFalseTest() {
    System.assert(!TestTargetClass.isOddNumber(12));
  }

  @isTest
  static void getErrorTest() {
    try {
      TestTargetClass.getError();
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
      TestTargetClass.getError();
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
