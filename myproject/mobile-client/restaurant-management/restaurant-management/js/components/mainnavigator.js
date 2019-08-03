import { createStackNavigator, createAppContainer } from "react-navigation";
import homeview from "../views/homescreen";

const AppNavigator = createStackNavigator(
    {
        Home: {
            screen: homeview
        }
    },
    {
        initialRouteName: "Home"
    });

export default createAppContainer(AppNavigator);