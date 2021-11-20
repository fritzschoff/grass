import { initializeApp, FirebaseApp } from "firebase/app";
import { getFirestore } from "firebase/firestore";

let app: FirebaseApp;

export default function getDB() {
  if (!app) {
    app = initializeApp(
      {
        apiKey: process.env["apiKey"],
        appId: process.env["appId"],
        authDomain: process.env["authDomain"],
        databaseURL: process.env["databaseURL"],
        projectId: process.env["projectId"],
        storageBucket: process.env["storageBucket"],
        messagingSenderId: process.env["messagingSenderId"],
      },
      "default"
    );
  }
  return getFirestore(app);
}
