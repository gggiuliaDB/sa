package it.ggg.sa.prodotto
import java.sql.Blob
import java.sql.SQLException
import org.hibernate.Hibernate

class Prodotto {

    String nome
    String descrizione
    String comeGustarlo
    String ingredienti
    String conservazione

    Integer durata
    Linea linea
    java.sql.Blob immagine
    String note
    int top = 0
    TipoProdotto tipoProdotto
    static hasMany = [confezioni: Confezione, internazionalizzazioni: InternazionalizzazioneProdotto]
    static constraints = {
        durata nullable:true
        immagine nullable:true//, maxSize:1073741824
        descrizione nullable:true, maxSize:1024
        comeGustarlo nullable:true, maxSize:1024
        ingredienti nullable:true, maxSize:1024
        conservazione nullable:true, maxSize:1024
        note nullable:true, maxSize:1024
    }

    static def getSqlBlobFromFile(String path) {
        File file = new File(path)
        byte[] bytes = this.getBytesFromFile(file)
        java.sql.Blob sqlBlob = null
        if (bytes) {
        sqlBlob = org.hibernate.Hibernate.createBlob(bytes)
        }
        return sqlBlob
    }
    
    private static byte[] getBytesFromFile(File file) throws IOException {
        InputStream is = new FileInputStream(file);
        // Get the size of the file
        long length = file.length();
        if (length > Integer.MAX_VALUE) {
        // File is too large
        return null
        }
        // Create the byte array to hold the data
        byte[] bytes = new byte[(int)length];
        // Read in the bytes
        int offset = 0;
        int numRead = 0;
        while (offset < bytes.length
        && (numRead=is.read(bytes, offset, bytes.length-offset)) >= 0) {
        offset += numRead;
        }
        // Ensure all the bytes have been read in
        if (offset < bytes.length) {
        throw new IOException("Could not completely read file "+file.getName());
        }
        // Close the input stream and return bytes
        is.close();
        return bytes;
    }


    def getNome(String locale){
        //println("getNome locale: [${locale.toString()}]")
        if(locale){
            for(int i=0; i<internazionalizzazioni.size(); i++){
                def it = internazionalizzazioni[i]
                if (it.locale.toString() == locale.toString()){
                    return it.nome
                }
            }
        }
        nome
    }
    def getDescrizione(String locale){
        //println("getNome locale: [${locale.toString()}]")
        if(locale){
            for(int i=0; i<internazionalizzazioni.size(); i++){
                def it = internazionalizzazioni[i]
                if (it.locale.toString() == locale.toString()){
                    return it.descrizione
                }
            }
        }
        descrizione
    }
    //def getInternazionalizzazione(Locale locale){
    //    println("getInternazionalizzazione locale: [${locale.toString()}]")
    //    if(locale){
    //        for(int i=0; i<internazionalizzazioni.size(); i++){
    //            def it = internazionalizzazioni[i]
    //            if (it.locale.toString() == locale.toString()){
    //                return it
    //            }
    //        }
    //    }
    //    new InternazionalizzazioneProdotto(nome: nome,
    //        descrizione: descrizione,
    //        note: "",
    //        comeGustarlo: "",
    //        ingredienti: "",
    //        conservazione: "" )
    //}
    
    def getInternazionalizzazione(String locale){
        println("getInternazionalizzazione locale: [${locale.toString()}]")
        if(locale){
            for(int i=0; i<internazionalizzazioni.size(); i++){
                def it = internazionalizzazioni[i]
                if (it.locale.toString() == locale.toString()){
                    return it
                }
            }
        }
        new InternazionalizzazioneProdotto(nome: nome,
            descrizione: descrizione,
            note: "",
            comeGustarlo: "",
            ingredienti: "",
            conservazione: "" )
    }

//    def getNote(Locale locale){
//        println("getNome locale: [${locale.toString()}]")
//        if(locale){
//            for(int i=0; i<internazionalizzazioni.size(); i++){
//                def it = internazionalizzazioni[i]
//                if (it.locale.toString() == locale.toString()){
//                    return it.note
//                }
//            }
//        }
//    }
//
//    def getComeGustarlo(Locale locale){
//        println("getNome locale: [${locale.toString()}]")
//        if(locale){
//            for(int i=0; i<internazionalizzazioni.size(); i++){
//                def it = internazionalizzazioni[i]
//                if (it.locale.toString() == locale.toString()){
//                    return it.comeGustarlo
//                }
//            }
//        }
//    }




    static Blob createBlobFromInputStream(InputStream is) {
        Hibernate.createBlob(is)
    }

    byte[] createByteArray() {
        if (immagine == null)
            return null;
        return toByteArray(getImmagine());
    }


    private byte[] toByteArray(Blob fromBlob) {
        ByteArrayOutputStream baos = new ByteArrayOutputStream();
        try {
            return toByteArrayImpl(fromBlob, baos);
        } catch (SQLException e) {
            throw new RuntimeException(e);
        } catch (IOException e) {
            throw new RuntimeException(e);
        } finally {
            if (baos != null) {
                try {
                    baos.close();
                } catch (IOException ex) {
                }
            }
        }
    }

    private byte[] toByteArrayImpl(Blob fromBlob, ByteArrayOutputStream baos) {
        byte[] buf = new byte[4000];
        InputStream is = fromBlob.getBinaryStream();
        try {
            while (true) {
                int dataSize = is.read(buf);

                if (dataSize == -1)
                    break;
                baos.write(buf, 0, dataSize);
            }
        } finally {
            if (is != null) {
                try {
                    is.close();
                } catch (IOException ex) {
                    throw ex;
                }
            }
        }
        return baos.toByteArray();
    }


}
