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
public class BST {
    public Node root;

    public BST(Object x) { // ONLY CONSTRUCTOR//
        root = new Node(x);
    }

    /* ( RECURSIVE APPROACH )
     * FUNCTION INSERT() WILL ADD THE NEW ELEMENT IN TREE CORRESPONDING TO THE
     * ROOT, AT EACH LEVEL IT WILL CHECK WHETHER THE ELEMENT TO BE ADDED IS
     * SMALLER (MOVE TO LEFT-SUBTREE) OR GREATER (MOVE TO RIGHT-SUBTREE); AND
     * ACCORDINGLY POSITION DECIDED.
     */
    public Node insert(Node node, Integer x) {
        if (node == null) {
            return node = new Node(x);
        }
        if (x < (Integer) node.element) {
            node.left = insert(node.left, x);
        } else {
            node.right = insert(node.right, x);
        }
        return node;
    }

    // IN-ORDER TRAVERSAL(LEFT->ROOT->RIGHT) OF TREE FOR GETTING ELEMENTS IN
    // ASCENDING ORDER//
    public void inOrder(Node node) {
        if (node != null) {
            inOrder(node.left);
            System.out.print(((Integer) node.element).intValue() + ",");
            inOrder(node.right);
        }
    }

    // RIGHT->ROOT->LEFT TRAVERSAL OF TREE FOR GETTING ELEMENTS IN DESCENDING
    // ORDER//
    public void descOrder(Node node) {
        if (node != null) {
            descOrder(node.right);
            System.out.print(((Integer) node.element).intValue() + ",");
            descOrder(node.left);
        }
    }
}
