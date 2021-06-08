Return-Path: <clang-built-linux+bncBCJZRXGY5YJBBL7T7OCQMGQEIQEJSBI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x1037.google.com (mail-pj1-x1037.google.com [IPv6:2607:f8b0:4864:20::1037])
	by mail.lfdr.de (Postfix) with ESMTPS id 622FB39EDE5
	for <lists+clang-built-linux@lfdr.de>; Tue,  8 Jun 2021 07:01:37 +0200 (CEST)
Received: by mail-pj1-x1037.google.com with SMTP id w1-20020a17090a0281b0290156f7df20a0sf12477595pja.8
        for <lists+clang-built-linux@lfdr.de>; Mon, 07 Jun 2021 22:01:37 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1623128495; cv=pass;
        d=google.com; s=arc-20160816;
        b=Y6/+jIjP/EzWamQ+U9svlC+JwwVJb3Te2wUeAfH7khRr3DDWqiHekMmyxM6M6xU8CU
         7ggGSgnkzncvzm7aKNLcDJfPNUgJA11EaXHtG5B1nLW8r+H4B802oL1n6DvmPHgbxfxV
         FmiYtMMxhRy7PGYgZdhw3pbcuMBUwoOFy5TXqcdj+9tdbFKtie8cYs5J+bDDeBJCPDRc
         WnSOuQkPxF1bzRBmoItyP2nN39Rbcw9f23m8giKzRke4KKDXcENw2pBvqMzCiwFVi39z
         +ZHEJQFm17T3mbZpUgb5qzZ/ZCbCtCEQtwzTM7zxPDts+pYO4/dAyOFo8J3AA9cjuBU7
         J2EA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to
         :content-transfer-encoding:content-disposition:mime-version
         :references:reply-to:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=jvoZYmB+xIRaJWU+Z3/eyCZGK0SgKS6VDRCQY0V6YlA=;
        b=uJ19m/nyWTMyV8T2Vt+N/1GR7WjtmmkIeJXpzig1LeMmYYvFcpl/Eznvg8LCU3EfNU
         HF6m6whSsUBEMyXYeBom9M9TP6Okcdws10qU6WSd920W3yhJR4Xg//HrQeM3ehWOuJSy
         YoqybtGIqXRyqLGlL3iTwCIvRMHd6V2j7siCpeHgsIvti7E1QbGAKB8F2CctZsoigMD/
         8WKeFVLZwW+kJGjXVGbaNbyoyDB4ZRMlSWfq+nQS6kXIkbvCyq6grXODgEu6xXnnmiCB
         toxFzcHbI1st3VcFVYwaAvPhqeKwSm9DONeYXiWuOcjhhqtvd2RoosY7fEiBp+EfYw0B
         9ydQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=d6l6E8jI;
       spf=pass (google.com: domain of srs0=pgpo=lc=paulmck-thinkpad-p17-gen-1.home=paulmck@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom="SRS0=PgPO=LC=paulmck-ThinkPad-P17-Gen-1.home=paulmck@kernel.org";
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:reply-to:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=jvoZYmB+xIRaJWU+Z3/eyCZGK0SgKS6VDRCQY0V6YlA=;
        b=OhdozqA6+P0PpX2cfnZIUPNwbwu/4+aLb+RErv9pehiYiep6E9fjOUhks219Q5vQZ3
         pgDB33MCON6GdFUKGNtimaXa2Zxpdw+dk8L+hzbaCWyM8hkMptAZWow+BvhXLL7uqSvK
         3VOkYqhXLxqSgfPGYQ3BchoGuJVx8l0XbsWJZ9yBlu4AS9ualGE1HG5HpbTJ2poWipp3
         uYgAi7B3I0ehLjNkckU2+RrS1SJmu65LRLcOLFPLEcQ2Aom//+Xk+wnLe2voYo3tqbvq
         j8zSwqkfuyO9NFNVKZsEnOZpmJmmdhDHJHYAEob7/VZAYA30VLiYUKP9rIgie1bdmEkj
         DioA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :reply-to:references:mime-version:content-disposition
         :content-transfer-encoding:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=jvoZYmB+xIRaJWU+Z3/eyCZGK0SgKS6VDRCQY0V6YlA=;
        b=antFLqAHU4Vf3zkFP1b9onnwOxvnCJGqazF58K86Ah8T6QvzKvm98kkLRNlKv8JfNC
         NMW1yukE0GQPCEmg28gJHprq4ZHUkrminFjhve9Eqr/Fw9g4ZtOhFmAB2seKkSXYRIQx
         v4dLVT+tdr2oyOkr5yxMxN0oHdQGk/R2d51W/YS+VmTYobZciIFmoShdoJ4JnZxEPE2S
         zhLsnpdO4lleDPXxi+lMv96mla2CT96gFAUN+sXfOp1qjH9PG5CptAReoFmAGhF0KEPp
         3+oAY7FntBr+0/zfwdAxsRs8ddVMH8V+OMrPhWGJJDU8vYdPywyvGlbxqcxarRD5va03
         dBpw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531sGIW4I+aGs5aikAFh9cSmE8Mdkt6+LS/5UEeWxxyLwiJY0xVF
	7jVYc/RR6sIzegFEccik9oo=
X-Google-Smtp-Source: ABdhPJwgPWEhWAE8F69sDLCINWEAzxWiwqEUIP2LRO9paS6rACg7nSh74Vy46WhE+DIQBEZYpyrvLQ==
X-Received: by 2002:a17:90a:ad85:: with SMTP id s5mr15182139pjq.230.1623128495481;
        Mon, 07 Jun 2021 22:01:35 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:b256:: with SMTP id t22ls1354032pgo.8.gmail; Mon, 07 Jun
 2021 22:01:34 -0700 (PDT)
X-Received: by 2002:a63:dd46:: with SMTP id g6mr16994169pgj.125.1623128494836;
        Mon, 07 Jun 2021 22:01:34 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1623128494; cv=none;
        d=google.com; s=arc-20160816;
        b=xecy/wie9KKPRgmsOVpDLuog1MHRaytlGG7cxqmUSKzdA1UOVih0Iu1AR31i7oeSDI
         H5CyT/cEvCkExyH6IOBqAMEaeojdYYMT7zM+c/rVuKCHW+mlYXkZ1JrxmhRf6jX+kQPF
         78G71eXlSfPgd907DXdJHJXxLr2rTBD1q6cSng0LAN2NFRlarN4epMp1DLgkZGv/bzTW
         dRPL2/JZ6A/rEpQ+hGRFHkK3ksxJ0U/Txw11G8P5WbzRTkV8gNYNOGwyJbELNHN4Nh+s
         vwya6YjQDhqFUUluLZLkX7AewmzPUS8N72M5chdg0lFCmXSKWooTOFTJQvzM+qr19N0i
         IntQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:reply-to:message-id:subject:cc:to:from:date
         :dkim-signature;
        bh=CDIe8vJxVjGp0dSu8tbaoDJ7jrfkg/oeaHYciOsRFpc=;
        b=07iER7VTYNl/6ab1aVUfjfSo+6BoE3tCffDc1neEhifXvZLhpM3EvRAko4Rz8/gOjV
         Fc64rTmQcwhJcyUOG25v4SrkquAQxG/T2L8Ja1XndK2jWxbi3TqOmSOXemsG5CC37QwL
         DR8ziGcUxbZ2o/zypNeO9shpV4dRbcXyU8XjuOgeA0ZCxUUfjHhK7/f8dVVuh+1+Xy/0
         k6XXFqCESUX/MC9bWK7rvQqc7G014DrI/jwGh+1aSWCBq7Uov4wIGA5m1FvBaBKbqSTl
         9Q5YXCPvyc4waV014tCjRQPa2V6JcpsVCN6LCyeOBWtTnfg9HWQVvhPOQIgn4/MBSRvx
         mfMg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=d6l6E8jI;
       spf=pass (google.com: domain of srs0=pgpo=lc=paulmck-thinkpad-p17-gen-1.home=paulmck@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom="SRS0=PgPO=LC=paulmck-ThinkPad-P17-Gen-1.home=paulmck@kernel.org";
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id ob5si110295pjb.3.2021.06.07.22.01.34
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 07 Jun 2021 22:01:34 -0700 (PDT)
Received-SPF: pass (google.com: domain of srs0=pgpo=lc=paulmck-thinkpad-p17-gen-1.home=paulmck@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 890B760FF2;
	Tue,  8 Jun 2021 05:01:34 +0000 (UTC)
Received: by paulmck-ThinkPad-P17-Gen-1.home (Postfix, from userid 1000)
	id 568065C08B9; Mon,  7 Jun 2021 22:01:34 -0700 (PDT)
Date: Mon, 7 Jun 2021 22:01:34 -0700
From: "Paul E. McKenney" <paulmck@kernel.org>
To: Rong Chen <rong.a.chen@intel.com>
Cc: kernel test robot <lkp@intel.com>, kbuild-all@lists.01.org,
	clang-built-linux@googlegroups.com, linux-kernel@vger.kernel.org
Subject: Re: [kbuild-all] Re: kernel/rcu/tree.c:2073:23: warning: stack frame
 size of 2704 bytes in function 'rcu_gp_kthread'
Message-ID: <20210608050134.GZ4397@paulmck-ThinkPad-P17-Gen-1>
Reply-To: paulmck@kernel.org
References: <202106061253.0X2QKyyI-lkp@intel.com>
 <20210606044926.GJ4397@paulmck-ThinkPad-P17-Gen-1>
 <4696fe3d-a7ad-acae-686e-6295ca327737@intel.com>
 <20210607151939.GP4397@paulmck-ThinkPad-P17-Gen-1>
 <e7bbb0e5-3063-031b-af6e-273e97f1d61f@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <e7bbb0e5-3063-031b-af6e-273e97f1d61f@intel.com>
X-Original-Sender: paulmck@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=d6l6E8jI;       spf=pass
 (google.com: domain of srs0=pgpo=lc=paulmck-thinkpad-p17-gen-1.home=paulmck@kernel.org
 designates 198.145.29.99 as permitted sender) smtp.mailfrom="SRS0=PgPO=LC=paulmck-ThinkPad-P17-Gen-1.home=paulmck@kernel.org";
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Precedence: list
Mailing-list: list clang-built-linux@googlegroups.com; contact clang-built-linux+owners@googlegroups.com
List-ID: <clang-built-linux.googlegroups.com>
X-Spam-Checked-In-Group: clang-built-linux@googlegroups.com
X-Google-Group-Id: 357212215037
List-Post: <https://groups.google.com/group/clang-built-linux/post>, <mailto:clang-built-linux@googlegroups.com>
List-Help: <https://groups.google.com/support/>, <mailto:clang-built-linux+help@googlegroups.com>
List-Archive: <https://groups.google.com/group/clang-built-linux
List-Subscribe: <https://groups.google.com/group/clang-built-linux/subscribe>, <mailto:clang-built-linux+subscribe@googlegroups.com>
List-Unsubscribe: <mailto:googlegroups-manage+357212215037+unsubscribe@googlegroups.com>,
 <https://groups.google.com/group/clang-built-linux/subscribe>

On Tue, Jun 08, 2021 at 11:14:40AM +0800, Rong Chen wrote:
>=20
>=20
> On 6/7/21 11:19 PM, Paul E. McKenney wrote:
> > On Mon, Jun 07, 2021 at 05:18:21PM +0800, Rong Chen wrote:
> > >=20
> > > On 6/6/21 12:49 PM, Paul E. McKenney wrote:
> > > > On Sun, Jun 06, 2021 at 12:19:57PM +0800, kernel test robot wrote:
> > > > > Hi Paul,
> > > > >=20
> > > > > FYI, the error/warning still remains.
> > > > >=20
> > > > > tree:   https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/=
linux.git master
> > > > > head:   f5b6eb1e018203913dfefcf6fa988649ad11ad6e
> > > > > commit: 7dffe01765d9309b8bd5505503933ec0ec53d192 rcu: Add lockdep=
_assert_irqs_disabled() to raw_spin_unlock_rcu_node() macros
> > > > > date:   5 months ago
> > > > > config: powerpc-randconfig-r023-20210606 (attached as .config)
> > > > > compiler: clang version 13.0.0 (https://github.com/llvm/llvm-proj=
ect 551a697c5cf33275b66add4fc467fcf59084cffb)
> > > > > reproduce (this is a W=3D1 build):
> > > > >           wget https://raw.githubusercontent.com/intel/lkp-tests/=
master/sbin/make.cross -O ~/bin/make.cross
> > > > >           chmod +x ~/bin/make.cross
> > > > >           # install powerpc cross compiling tool for clang build
> > > > >           # apt-get install binutils-powerpc-linux-gnu
> > > > >           # https://git.kernel.org/pub/scm/linux/kernel/git/torva=
lds/linux.git/commit/?id=3D7dffe01765d9309b8bd5505503933ec0ec53d192
> > > > >           git remote add linus https://git.kernel.org/pub/scm/lin=
ux/kernel/git/torvalds/linux.git
> > > > >           git fetch --no-tags linus master
> > > > >           git checkout 7dffe01765d9309b8bd5505503933ec0ec53d192
> > > > >           # save the attached .config to linux build tree
> > > > >           COMPILER_INSTALL_PATH=3D$HOME/0day COMPILER=3Dclang mak=
e.cross ARCH=3Dpowerpc
> > > > >=20
> > > > > If you fix the issue, kindly add following tag as appropriate
> > > > > Reported-by: kernel test robot <lkp@intel.com>
> > > > >=20
> > > > > All warnings (new ones prefixed by >>):
> > > > >=20
> > > > >      In file included from kernel/rcu/tree.c:21:
> > > > >      In file included from include/linux/kernel.h:12:
> > > > >      In file included from include/linux/bitops.h:29:
> > > > >      In file included from arch/powerpc/include/asm/bitops.h:62:
> > > > >      arch/powerpc/include/asm/barrier.h:49:9: warning: '__lwsync'=
 macro redefined [-Wmacro-redefined]
> > > > >      #define __lwsync()      __asm__ __volatile__ (stringify_in_c=
(LWSYNC) : : :"memory")
> > > > >              ^
> > > > >      <built-in>:310:9: note: previous definition is here
> > > > >      #define __lwsync __builtin_ppc_lwsync
> > > > >              ^
> > > > > > > kernel/rcu/tree.c:2073:23: warning: stack frame size of 2704 =
bytes in function 'rcu_gp_kthread' [-Wframe-larger-than=3D]
> > > > >      static int __noreturn rcu_gp_kthread(void *unused)
> > > > Does -rcu commit 2f20de99a63b ("rcu: Make rcu_gp_cleanup() be noinl=
ine
> > > > for tracing") help?
> > > Hi Paul,
> > >=20
> > > The stack frame size decreased to 2256 bytes:
> > >=20
> > >  =C2=A0 kernel/rcu/tree.c:2129:23: warning: stack frame size of 2256 =
bytes in
> > > function 'rcu_gp_kthread' [-Wframe-larger-than=3D]
> > Very good, thank you!  Does the following patch (in addition to that
> > commit) also help?
>=20
> Hi Paul,
>=20
> I applied the below patch on commit 2f20de99a63b and the warning is gone.

Very good, and thank you for your testing.  I have applied the requested
Reported-by and your Tested-by on the commit shown below.  Please let
me know if you would prefer some other Reported/Tested setup.

							Thanx, Paul

------------------------------------------------------------------------

commit 336e92638287615d47c07af4ff6feb397cfe2084
Author: Paul E. McKenney <paulmck@kernel.org>
Date:   Mon Jun 7 21:57:02 2021 -0700

    rcu: Make rcu_gp_init() and rcu_gp_fqs_loop noinline to conserve stack
   =20
    The kbuild test project found an oversized stack frame in rcu_gp_kthrea=
d()
    for some kernel configurations.  This oversizing was due to a very larg=
e
    amount of inlining, which is unnecessary due to the fact that this code
    executes infrequently.  This commit therefore marks rcu_gp_init() and
    rcu_gp_fqs_loop noinline to conserve stack space.
   =20
    Reported-by: kernel test robot <lkp@intel.com>
    Tested-by: Rong Chen <rong.a.chen@intel.com>
    Signed-off-by: Paul E. McKenney <paulmck@kernel.org>

diff --git a/kernel/rcu/tree.c b/kernel/rcu/tree.c
index 13bd8eee62bf..ef435aeac993 100644
--- a/kernel/rcu/tree.c
+++ b/kernel/rcu/tree.c
@@ -1737,7 +1737,7 @@ static void rcu_strict_gp_boundary(void *unused)
 /*
  * Initialize a new grace period.  Return false if no grace period require=
d.
  */
-static bool rcu_gp_init(void)
+static noinline bool rcu_gp_init(void)
 {
 	unsigned long firstseq;
 	unsigned long flags;
@@ -1931,7 +1931,7 @@ static void rcu_gp_fqs(bool first_time)
 /*
  * Loop doing repeated quiescent-state forcing until the grace period ends=
.
  */
-static void rcu_gp_fqs_loop(void)
+static noinline void rcu_gp_fqs_loop(void)
 {
 	bool first_gp_fqs;
 	int gf =3D 0;

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/20210608050134.GZ4397%40paulmck-ThinkPad-P17-Gen-1.
