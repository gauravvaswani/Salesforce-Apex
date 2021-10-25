import { LightningElement, track } from "lwc";
import getContactLists from "@salesforce/apex/ContactController.getContactLists";
import getAccountLists from "@salesforce/apex/AccountController.getAccountLists";
export default class XlsxDemo extends LightningElement {
  @track xlsHeader = []; // store all the headers of the the tables
  @track workSheetNameList = []; // store all the sheets name of the the tables
  @track xlsData = []; // store all tables data
  @track filename = "xlsheet_demo.xlsx"; // Name of the file
  @track accountData = []; // used only for storing account table
  @track contactData = []; // used only for storing contact table
  
  connectedCallback() {
    //apex call for bringing the account data  
    getAccountLists()
      .then(result => {
        console.log(result);
        this.accountHeader = Object.keys(result[0]);
        this.accountData = [...this.accountData, ...result];
        this.xlsFormatter(result, "Accounts");
      })
      .catch(error => {
        console.error(error);
      });
    //apex call for bringing the contact data  
    getContactLists()
    .then(result => {
      console.log(result);
      this.contactHeader = Object.keys(result[0]);
      this.contactData = [...this.contactData, ...result];
      this.xlsFormatter(result, "Contacts");
    })
    .catch(error => {
      console.error(error);
    });
  }

  // formating the data to send as input to  xlsxMain component
  xlsFormatter(data, sheetName) {
    let Header = Object.keys(data[0]);
    this.xlsHeader.push(Header);
    this.workSheetNameList.push(sheetName);
    this.xlsData.push(data);
  }

   // calling the download function from xlsxMain.js 
  download() {
    this.template.querySelector("c-xlsx-main").download();
  }
}