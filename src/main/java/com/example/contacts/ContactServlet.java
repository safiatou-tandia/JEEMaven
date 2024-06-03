/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.example.contacts;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "ContactServlet", urlPatterns = {"/ContactServlet"})
public class ContactServlet extends HttpServlet {
    
    private final List<Contact> contacts = new ArrayList<>();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.setAttribute("contacts", contacts);
        request.getRequestDispatcher("/ListeContacts.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String phone = request.getParameter("phone");
        
        Contact contact = new Contact(name, email, phone);
        contacts.add(contact);
        
        // Ajouter un attribut de message de succès
        request.setAttribute("message", "Contact ajouté avec succès");
        
        // Mettre à jour la liste des contacts
        request.setAttribute("contacts", contacts);
        
        // Rediriger vers la page de liste des contacts
        response.sendRedirect("ListeContacts.jsp");
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }
}
