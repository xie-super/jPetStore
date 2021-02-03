package org.csu.mypetstore.web.servlets;

import org.csu.mypetstore.domain.Cart;
import org.csu.mypetstore.domain.CartItem;
import org.csu.mypetstore.service.CatalogService;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Iterator;

public class UpdateCartJSServlet extends HttpServlet {

    private Cart cart;

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doPost(req,resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        HttpSession session = req.getSession();
        cart = (Cart)session.getAttribute("cart");

        Iterator<CartItem> cartItemIterator = cart.getAllCartItems();

        while (cartItemIterator.hasNext()) {
            //产品数量增加
            CartItem cartItem = (CartItem) cartItemIterator.next();
            String itemId1 = cartItem.getItem().getItemId();

            try {
                int quantity = Integer.parseInt((String) req.getParameter("quantity"));
                String itemId=(String) req.getParameter("itemId");
                if(itemId1.equals(itemId))
                    cart.setQuantityByItemId(itemId, quantity);
                if (quantity < 1) {
                    cartItemIterator.remove();
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        session.setAttribute("cart", cart);


        Cart cart2 = (Cart)session.getAttribute("cart");
        Iterator<CartItem> cartItemIterator2 = cart2.getAllCartItems();
        String quantityAll = "";
        while (cartItemIterator2.hasNext()) {
            //产品数量增加


            String itemId=(String) req.getParameter("itemId");
            CartItem cartItem2 = cartItemIterator2.next();
            String itemId1 = cartItem2.getItem().getItemId();
            int quantity2 = cartItem2.getQuantity();
            if(itemId.equals(itemId1))
                quantityAll += quantity2 + "," + cartItem2.getTotal() + "," + cart2.getSubTotal();

        }

        resp.setContentType("text/xml");
        PrintWriter out = resp.getWriter();
        out.write(quantityAll);
    }
}
