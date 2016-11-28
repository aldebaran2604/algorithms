/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package binarytree;

/**
 *
 * @author lpadilla
 */
public class Node {
    public Object element;
    public Node left;
    public Node right;

    // CONSTRUCTORS 
    public Node(Object theElement) {
        this(theElement, null, null);
    }

    public Node(Object theElement, Node lLink, Node rLink) {
        element = theElement;
        this.left = lLink;
        this.right = rLink;
    }
}
