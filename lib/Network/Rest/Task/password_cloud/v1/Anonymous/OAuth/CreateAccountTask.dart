class CreateAccountTask {
  /*final CreateAccountForm form;
  final CreateAccountHandler handler;

  CreateAccountTask(this.form, this.handler);

  void submit() {
    handler.onTaskStart();
    AnonymousAccountService.createAccount(form).then((Response response) {
      final responseJson = json.decode(response.body);
      handler.onTaskComplete();

      switch (response.statusCode) {
        case 200:
          handler.onSuccess(AccountResponse.fromJson(responseJson));
          break;
        case 400:
          APIException exception = APIException.fromJson(responseJson);
          if (exception == null || exception.title == null) {
            handler.onError(
                response.statusCode, "UNKNOWN EXCEPTION FORMAT", response.body);
            break;
          }

          if (exception.title == NetworkMessageConstants.LOGICAL_ERROR) {
            for (String error in exception.errors) {
              switch (error) {
                case NetworkMessageConstants.ERROR_ACCOUNT_EMAIL_ALREADY_EXISTS:
                  handler.onEmailAlreadyExists();
                  break;
                case NetworkMessageConstants
                    .ERROR_ACCOUNT_PHONE_NUMBER_ALREADY_EXISTS:
                  handler.onPhoneNumberAlreadyExists();
                  break;
                case NetworkMessageConstants.ERROR_ACCOUNT_NEEDS_ACTIVATION:
                  handler.onPhoneNumberNeedsActivation();
                  break;
                default:
                  handler.onError(
                      response.statusCode,
                      "UNKNOWN_ERROR: " + exception.title + " > " + error,
                      response.body);
                  break;
              }
            }
          } else if (exception.title == NetworkMessageConstants.INVALID_FORM) {
            for (String error in exception.errors) {
              switch (error) {
                case NetworkMessageConstants.INVALID_PHONE_NUMBER:
                  handler.onInvalidPhoneNumber();
                  break;
                case NetworkMessageConstants.INVALID_EMAIL_ADDRESS:
                  handler.onInvalidEmailAddress();
                  break;
                case NetworkMessageConstants.INVALID_PASSWORD_POLICY:
                  handler.onInvalidPassword();
                  break;
                default:
                  handler.onError(
                      response.statusCode,
                      "UNKNOWN_ERROR: " + exception.title + " > " + error,
                      response.body);
                  break;
              }
            }
          } else if (exception.title == NetworkMessageConstants.SERVICE_ERROR) {
            for (String error in exception.errors) {
              switch (error) {
                case NetworkMessageConstants.ERROR_INVALID_RECAPTCHA:
                  handler.onInvalidRecaptcha();
                  break;
                case NetworkMessageConstants.ERROR_SENDING_SMS_FAILED:
                  handler.onSendingSmsFail();
                  break;
                case NetworkMessageConstants
                    .ERROR_INVALID_FIREBASE_AUTHENTICATION_EXCEEDED:
                  handler.onTrialsExceeded();
                  break;
                default:
                  handler.onError(
                      response.statusCode,
                      "UNKNOWN_ERROR: " + exception.title + " > " + error,
                      response.body);
                  break;
              }
            }
          } else {
            handler.onError(response.statusCode,
                "UNKNOWN_EXCEPTION_TITLE: " + exception.title, response.body);
          }
          break;
        default:
          handler.onError(
              response.statusCode,
              "UNKNOWN_STATUS_CODE: " + response.statusCode.toString(),
              response.body);
          break;
      }
    });
  }
  */
}