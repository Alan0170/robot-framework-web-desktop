import os
import subprocess
import argparse

# Função para configurar as variáveis de ambiente com base no ambiente selecionado
def set_environment_variables(environment):
    if environment == "Piloto":
        os.environ["ROBOT_URL"] = "https://exemplo/user/"
        os.environ["ROBOT_IMAGE_PATH"] = "\\Resources\\Images-sikuli\\login-images-sikuli"
    elif environment == "Prod01":
        os.environ["ROBOT_URL"] = "https://exemplo/user/"
        os.environ["ROBOT_IMAGE_PATH"] = ""
    elif environment == "Prod02":
        os.environ["ROBOT_URL"] = ""
        os.environ["ROBOT_IMAGE_PATH"] = "https://exemplo/user/"

# Função para executar os testes do Robot Framework com base nas opções fornecidas
def run_robot_tests(test_directory, tags):
    command = ["robot"]
    if tags:
        command.extend(["-i", tags])
    command.append(test_directory)
    
    subprocess.run(command)

# Configuração do parser de argumentos para receber opções personalizadas
if __name__ == "__main__":
    parser = argparse.ArgumentParser(description="Executar testes do Robot Framework com opções personalizadas.")
    parser.add_argument("--environment", required=True, help="Ambiente de execução (Piloto, Prod01 ou Prod02)")
    parser.add_argument("--tags", help="Tags dos testes a serem executados")
    parser.add_argument("--test-directory", required=True, help="Diretório dos arquivos de teste Robot Framework a serem executados")
    
    # Parse dos argumentos fornecidos na linha de comando
    args = parser.parse_args()

    # Configura as variáveis de ambiente com base no ambiente selecionado
    set_environment_variables(args.environment)

    # Executa os testes do Robot Framework com as opções fornecidas
    run_robot_tests(args.test_directory, args.tags)
