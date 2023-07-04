const mailchimpClient = require("@mailchimp/mailchimp_transactional")(
    "md-61LjN6EcBBuL6ZkX-Uq1Iw"
  );
  
  const run = async () => {
    const response = await mailchimpClient.messages.sendTemplate({
      template_name: "template_name",
      template_content: [{}],
      message: {},
    });
    console.log(response);
  };
  
  run();
  