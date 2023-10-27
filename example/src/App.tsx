import * as React from 'react';
import { useColorScheme } from 'react-native';

import { StyleSheet, View, Text } from 'react-native';
import { multiply } from 'react-native-kotlin-swift-backward-compatible-module';

export default function App() {
  const textColor = useColorScheme() === 'dark' ? 'white' : 'black';
  const [result, setResult] = React.useState<number | undefined>();

  React.useEffect(() => {
    multiply(3, 7).then(setResult);
  }, []);

  return (
    <View style={styles.container}>
      <Text
        style={{
          color: textColor,
        }}
      >
        Result: {result}
      </Text>
    </View>
  );
}

const styles = StyleSheet.create({
  container: {
    flex: 1,
    alignItems: 'center',
    justifyContent: 'center',
  },
  box: {
    width: 60,
    height: 60,
    marginVertical: 20,
  },
});
