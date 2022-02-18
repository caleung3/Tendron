public class Cluster
{
    public final static int NUM_STEMS = 7; //number of tendrils per cluster

    public Cluster(int len, int x, int y)
    {
        // your code here
        double Z = 2*Math.PI / 7.0;
        Tendril lin = new Tendril(len,0,x,y);
        lin.show();
        Tendril lin2 = new Tendril(len,Z,x,y);
        lin2.show();
        Tendril lin3 = new Tendril(len,2*Z,x,y);
        lin3.show();
        Tendril lin4 = new Tendril(len,3*Z,x,y);
        lin4.show();
        Tendril lin5 = new Tendril(len,4*Z,x,y);
        lin5.show();
        Tendril lin6 = new Tendril(len,5*Z,x,y);
        lin6.show();
        Tendril lin7 = new Tendril(len,6*Z,x,y);
        lin7.show();
    }
}
