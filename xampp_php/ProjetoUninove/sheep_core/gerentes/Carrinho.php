<?php

ini_set('memory_limit', '1G'); // Aumenta o limite de memória para 1GB

require('Carrinho.php');

class Carrinho
{
    private $Data;
    private $Resultado;

    const BD = 'carrinho';

    public function AddCarrinho(array $data)
    {
        $this->Data = $data;

        if (in_array('', $this->Data)) {
            $this->Resultado = false;
        } else {
            $this->Banco();
            $this->Criar();
        }

        // Monitora uso de memória
        echo 'Memória usada: ' . memory_get_usage() . ' bytes';
    }

    public function getResultado()
    {
        return $this->Resultado;
    }

    private function Banco()
    {
        $this->Data = array_map('addslashes', $this->Data);
        $this->Data = array_map('htmlspecialchars', $this->Data);
        $this->Data = array_map('trim', $this->Data);
    
        // Corrigido o uso de preg_replace
        $this->Data = preg_replace('/[^[:alnum:]@]/', '', $this->Data);
    
        $this->Data['id_produto'] = (int) $this->Data['id_produto'];
        $this->Data['valor'] = (string) $this->Data['valor'];
        $this->Data['data'] = date('Y-m-d H:i:s');  
    }

    private function Criar()
    {
        $criar = new Criar();
        $criar->Criacao(self::BD, $this->Data);
    
        if (!$criar->getResultado()) {
            $this->Resultado = true;
        } else {
            $this->Resultado = false;
        }
    
        // Libera memória após uso
        unset($criar);
    }
}
?>
