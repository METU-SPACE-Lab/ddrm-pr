export CUDA_VISIBLE_DEVICES=3
# if first argument
if [ "$1" == "empirical" ]; then
    python main.py --ni --config celeba_pr.yml --doc celeba_dene26_onuronuronur -i celeba_dene26_onuronuronur --deg prempirical --num_avg_samples 1 --eta 0.78 --etaB 0.17 --timesteps 30 --init_timestep 280
else
    python main.py --ni --config celeba_pr.yml --doc celeba_dene26_onuronuronur -i celeba_dene26_onuronuronur --deg pr3 --num_avg_samples 1 --eta 1.0 --etaB 0.6 --timesteps 20 --init_timestep 300
fi