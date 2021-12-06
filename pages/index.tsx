import type { NextPage } from "next";
import Head from "next/head";
import Card from "../components/Card";
import usePeer from "../hooks/peer";

const Home: NextPage = () => {
  const { initPeer } = usePeer();
  console.log(initPeer);
  return (
    <>
      <Head>
        <title>Grass - Card Game</title>
      </Head>
    </>
  );
};

export default Home;
