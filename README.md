# COGS188 Final Project
- Ningxin Chen
- Yumeng Liu
- Xiaonan Fu

Our goal is to fine-tune a small GPT2 model (124M) using DPO and LoRA, with a dataset from Anthropic, which contains approximately 16K high-quality conversational interactions. The data represents diverse dialogues measured by metrics such as coherence, relevance, and engagement. We will use this dataset to enhance our model's ability to generate human-like, contextually appropriate responses. Performance will be assessed using perplexity as the universal method across 3 different datasets. Success will be determined by the model's improved capability to produce coherent and engaging dialogues that mimic human conversation, and a lower perplexity score. After 1 epoch of training, the performance slightly improved, but there is a significant limitation due to the model size and the training time. 