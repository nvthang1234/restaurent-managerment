import React from 'react';
import {createAppContainer } from "react-navigation";
import AppNavigator from "./js/components/mainnavigator"

const AppContainer = createAppContainer(AppNavigator);

export default function App() {
  return (
    <AppContainer></AppContainer>
  );
}