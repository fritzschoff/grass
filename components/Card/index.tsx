import styled from "styled-components";

interface CardProps {
  inspect?: () => boolean;
  position?: "hand" | "market" | "hassle";
}

export default function Card({ inspect }: CardProps) {
  return <CardWrapper onClick={inspect}></CardWrapper>;
}

const CardWrapper = styled.div`
  border: 1px solid black;
  max-width: 200px;
  width: 100%;
  height: auto;
`;
