# README

## Directions

1. Change REACT_APP_CANDY_MACHINE_ID in .env.production to your mainnet-beta candy machine public key. Follow the normal Metaplex cli package guidelines to create this candymachine.
2. You can set the update_candy_machine --date function in Metaplex cli package to a date in the future, which will prevent people from minting.
3. Or, you can leave the default on the src/Home.tsx as phase0 in function getPhase.
4. Whenever you're ready to display the minting interface, change that phase0 to phase4.
5. You'll probably want to search and replace in that file the C◎PETree and COPE instances.
6. Yes, the idea behind this UI is to sell people candies that are in a given SPL token. This is not required.
7. Change this in src/candymachine: new anchor.BN(10000000), to: new anchor.BN(your price * your decimals multipled by power 10). In the case of SOL you can use your price * LAMPORTS_PER_SOL 
8. Meta description and title in public/index.html.