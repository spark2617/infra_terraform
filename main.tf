//EC2>>>> instância
resource "aws_instance" "jhonatan" {
    count = 2//diz a quantidade de instância
    ami = "ami-085284d24fe829cd0"// ami da imagem da aws
    instance_type = "t2.micro"// tipe da instancia
    tags = {
      Name = "jhonatan${count.index}"//nome das maquinas
    }
    key_name = "jhonatan-terraform-aws"//nome da chave privada
    vpc_security_group_ids = ["${aws_security_group.aluno-jhonatan-acesso.id}","${aws_security_group.jhonatan-acesso-web.id}" ]
}

//terrafor plan >>>> ele olha o que vc pediu, e mostra o plano dele
//terraform apply >>>> aplica o plano
//terrraform destroy >>> apaga