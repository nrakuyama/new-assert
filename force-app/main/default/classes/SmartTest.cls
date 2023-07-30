@isTest
public with sharing class SmartTest {
  @isTest
  static void getNullTest() {
    Assert.isNull(TargetClass.getNull());
  }

  @isTest
  static void getFalseTest() {
    Assert.isFalse(TargetClass.isOddNumber(12));
  }

  @isTest
  static void getErrorTest() {
    try {
      TargetClass.throwHandledException();
      Assert.fail();
    } catch (Exception e) {
      Assert.isInstanceOfType(e, HandledException.class);
      Assert.areEqual('エラーだよ', e.getMessage());
    }
  }
}
