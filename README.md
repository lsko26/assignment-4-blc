Blockchain Marketplace DApp
This is a decentralized application (DApp) built on the Ethereum blockchain that allows users to list and purchase models using custom AI-Tokens. The application interacts with two smart contracts:

Token Contract: Implements the ERC20 standard for AI-Tokens.
Marketplace Contract: Allows users to list models and purchase them using AI-Tokens.
Features
MetaMask Integration: Users can connect their MetaMask wallet to interact with the DApp.
Token Balance Display: Displays the user's balance of AI-Tokens.
List Models: Users can list new models for sale, specifying a name, description, and price in AI-Tokens.
Purchase Models: Users can browse and purchase models from the marketplace using their AI-Tokens.
Allowance Management: The DApp ensures users have sufficient allowance and balance to complete transactions.
Prerequisites
Before running this project, ensure you have the following:

Node.js: To install dependencies and run the application locally.
MetaMask Extension: A browser extension to interact with the Ethereum blockchain.
Web3.js: The JavaScript library for interacting with the Ethereum blockchain.
Setup
1. Clone the Repository
bash
Копировать
git clone https://github.com/your-username/blockchain-marketplace.git
cd blockchain-marketplace
2. Install Dependencies
Install the required dependencies using npm:

bash
Копировать
npm install
3. Connect MetaMask
Install and set up MetaMask.
Connect to a test network (e.g., Rinkeby or local Ganache instance).
4. Configure Token and Marketplace Contracts
Replace tokenAddress and marketplaceAddress in the JavaScript code with the deployed contract addresses on your preferred network.
javascript
Копировать
const tokenAddress = "0x76a8783d12e5bbe1a37583f777626c0409c89add"; // Your Token contract address
const marketplaceAddress = "0x2a7fb019a3c9b0251105b4a8f14aa2ab254ba967"; // Your Marketplace contract address
5. Run the Application
You can host the DApp on any server or locally using a simple web server. To run it locally:

bash
Копировать
npx http-server
Visit http://localhost:8080 in your browser.

Usage
1. Connect Wallet
Click the "Connect Wallet" button to link your MetaMask wallet. Once connected, the user's address will be displayed, and the AI-Token balance will be shown.

2. List a Model
To list a model for sale:

Fill in the name, description, and price fields.
Submit the form to list the model on the marketplace.
3. Purchase a Model
Browse the list of models. If you have enough AI-Tokens in your wallet, you can click the "Buy" button to purchase the model.

4. Token Balance and Allowance Management
The DApp checks your balance of AI-Tokens and ensures that you have sufficient allowance to interact with the marketplace.

Contract Methods
Token Contract
balanceOf(address): Returns the token balance of an account.
approve(address, uint256): Approves the marketplace to spend a specified amount of tokens.
allowance(address, address): Checks the current allowance for a spender.
Marketplace Contract
listModel(string, string, uint256): Allows users to list a new model with a name, description, and price.
purchaseModel(uint256): Allows users to purchase a listed model by ID.
modelCount(): Returns the total number of models listed on the marketplace.
models(uint256): Retrieves model details based on the model ID.
Known Issues
Make sure MetaMask is properly configured to use the same network as the contracts.
Transaction failures may occur if the gas limit is not sufficient.
License
This project is licensed under the MIT License - see the LICENSE file for details.
