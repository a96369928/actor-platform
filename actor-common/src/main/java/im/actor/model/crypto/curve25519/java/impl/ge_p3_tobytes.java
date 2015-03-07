package im.actor.model.crypto.curve25519.java.impl;

public class ge_p3_tobytes {

//CONVERT #include "ge.h"

public static void ge_p3_tobytes(byte[] s,ge_p3 h)
{
  int[] recip = new int[10];
  int[] x = new int[10];
  int[] y = new int[10];

  fe_invert.fe_invert(recip,h.Z);
  fe_mul.fe_mul(x,h.X,recip);
  fe_mul.fe_mul(y,h.Y,recip);
  fe_tobytes.fe_tobytes(s,y);
  s[31] ^= fe_isnegative.fe_isnegative(x) << 7;
}


}