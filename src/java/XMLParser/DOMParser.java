/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package XMLParser;

import javax.xml.parsers.*;

import org.xml.sax.ErrorHandler;
import org.xml.sax.SAXException; 
import org.xml.sax.SAXParseException;
import org.xml.sax.helpers.*;

import java.io.File;
import java.io.OutputStreamWriter;
import java.io.PrintWriter;

import org.w3c.dom.Document;
import org.w3c.dom.DocumentType;
import org.w3c.dom.Element;
import org.w3c.dom.Entity;
import org.w3c.dom.NamedNodeMap;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;
/**
 *
 * @author Thomas
 */
public class DOMParser {

    static final String outputEncoding = "UTF-8";
    private final String FILE_NAME;
    protected Document doc;
    private void usage() {
        // ...
    }

    public DOMParser(String File_name)throws Exception{
        FILE_NAME=File_name;
        boolean dtdValidate = false;
        boolean xsdValidate = false;
        String schemaSource = null;

       /* for (int i = 0; i < args.length; i++) {
            if (args[i].equals("-dtd"))  { 
                dtdValidate = true;
            } 
            else if (args[i].equals("-xsd")) {
                xsdValidate = true;
            } 
            else if (args[i].equals("-xsdss")) {
                if (i == args.length - 1) {
                    usage();
                }
                xsdValidate = true;
                schemaSource = args[++i];
            }
            else {
                //filename = args[i];
                if (i != args.length - 1) {
                    usage();
                }
            }
        }

        if (FILE_NAME == null) {
            usage();
        }*/

        DocumentBuilderFactory dbf = DocumentBuilderFactory.newInstance();

        dbf.setNamespaceAware(true);
        dbf.setValidating(dtdValidate || xsdValidate);

        // ...

        DocumentBuilder db = dbf.newDocumentBuilder();
        doc = db.parse(new File(FILE_NAME));
    }
    public static void main(String[] args) throws Exception {
        
    }
    
    
    private static class MyErrorHandler implements ErrorHandler { 
            private PrintWriter out;

            MyErrorHandler(PrintWriter out) {
                this.out = out;
            }

            private String getParseExceptionInfo(SAXParseException spe) {
                String systemId = spe.getSystemId();
                if (systemId == null) {
                    systemId = "null";
                }

                String info = "URI=" + systemId + " Line=" + spe.getLineNumber() +
                              ": " + spe.getMessage();
                return info;
            }

            public void warning(SAXParseException spe) throws SAXException {
                out.println("Warning: " + getParseExceptionInfo(spe));
            }

            public void error(SAXParseException spe) throws SAXException {
                String message = "Error: " + getParseExceptionInfo(spe);
                throw new SAXException(message);
            }

            public void fatalError(SAXParseException spe) throws SAXException {
                String message = "Fatal Error: " + getParseExceptionInfo(spe);
                throw new SAXException(message);
            }
        }
    }

