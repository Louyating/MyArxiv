let titles_type = ["Dataset", "Survey", "Review", "Overview"];
let titles_model = ["VTON", "GAN", "Diffusion", "Transformer", "3D Human", "Avatar"];
let titles_method = ["Virtual Try-on", "Clothing Transfer", "Garment Synthesis", "Pretrain", "Self-Supervised"];
let titles =  titles_model + titles_method + titles_type;
let authors_array = ["Gerard Pons-Moll", "Ira Kemelmacher-Schlizerman", "Ming Lin", "An-An Liu", "Xiaoguang Han", "Shengfeng He"];

let conferences = [
    // CV（VTON核心）
    "CVPR", "ECCV", "ICCV", "WACV", "BMVC",
    // 多媒体（VTON核心）
    "ACM MM", "ICMR",
    // 图形学（3D VTON核心）
    "SIGGRAPH", "3DV",
    // 机器学习(生成模型支撑）
    "ICML", "NeurIPS", "ICLR"
];

let start = conferences.shift();
let conferences_rg = conferences.reduce(|sum, v| sum + "|" + v, start);
let conferences_rg = "(" + conferences_rg + ")([\\s'-]*\\d+)?";

let start = titles.shift();
let title_rg = titles.reduce(|sum, v| sum + "|" + v, start);

let start = authors_array.shift();
let authors_rg = authors_array.reduce(|sum, v| sum + "|" + v, start);

export title_rg;
export authors_rg;
export conferences_rg;
