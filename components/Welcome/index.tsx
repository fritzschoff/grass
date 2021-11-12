import styled from "styled-components";

export default function Welcome() {
  return (
    <WelcomeSection>
      <h1>Welcome</h1>
    </WelcomeSection>
  );
}

const WelcomeSection = styled.section`
  display: flex;
  justify-content: center;
  align-items: center;
`;
