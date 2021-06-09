Return-Path: <clang-built-linux+bncBCJZRXGY5YJBBT7YQCDAMGQEAUIBGDI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x940.google.com (mail-ua1-x940.google.com [IPv6:2607:f8b0:4864:20::940])
	by mail.lfdr.de (Postfix) with ESMTPS id 50A5C3A0AEE
	for <lists+clang-built-linux@lfdr.de>; Wed,  9 Jun 2021 05:58:08 +0200 (CEST)
Received: by mail-ua1-x940.google.com with SMTP id j23-20020ab01d170000b029023ea6f67624sf7399872uak.14
        for <lists+clang-built-linux@lfdr.de>; Tue, 08 Jun 2021 20:58:08 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1623211087; cv=pass;
        d=google.com; s=arc-20160816;
        b=IEbbBzZ3oIeeyu0lfM2W3fYjMGhUucd5S5QDoLQD22VgJym2wlJXulQlaQPeQ6pBOT
         Wqy9bV8fA4VhzAUCxY9j8AC8LiK14icsrsBp17ppkT8VBtOLGgWiUJsOJTPnNlIJplS+
         9oZMXsyEcGyFHU1wWzHFOD8nsSkiuj0ERwmsBVKZSakFBqclbmVTSnD5yGR75HCmiV31
         4197+MyKr87CiRbOUl0zDS4U3ZhFxhaP68d9Kwn5/4xgXGArRybZGP1m3ywgJ+6Zt7WT
         uEXXkxWUAowHmznc3ldimScJzpQdPn/VHwzkywMQgnpbv1Fw8uE1LYXnC0UuitmzjMuW
         z7Sw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to
         :content-transfer-encoding:content-disposition:mime-version
         :references:reply-to:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=TGQc0uRgesKk/tpMmULEMEYY8swdfYIHwKonYJoRh2A=;
        b=KLWi/K9IPlLfQ2YDQItCSVX1e4jZeDJqNHDtnbQPr8y09ybFEtsQy2r7NE/iHdXyFH
         1fGMs9cCJ4q+yANRD0q7Yr0ChGgFZaZMIp3NvjyL7KCTndFljnI7Iw4tbDKjFPUKdaxP
         YpyCzk9f9aanMjjih+MVzuC5ktmJLm59rxUcO9dPMIqlL+tXRxTlLAtQVN+W8S1qFGLY
         64oI2lVojm24TyuwUwk1x4mXKsd6JbywwNtKSz9zHTpdpMLXYe20MvV/GSMtnKnTWLzU
         XvdDgsi3zmPjwvvtvsT0ysG/L+8CeFmI1enJWkf6NHK295Wo8/2HtEOdeXjpz+C+bR3V
         FL3g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=lOOlj3af;
       spf=pass (google.com: domain of srs0=dcq8=ld=paulmck-thinkpad-p17-gen-1.home=paulmck@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom="SRS0=Dcq8=LD=paulmck-ThinkPad-P17-Gen-1.home=paulmck@kernel.org";
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:reply-to:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=TGQc0uRgesKk/tpMmULEMEYY8swdfYIHwKonYJoRh2A=;
        b=QJ209G+b9Fhq4/y2eKMcXTgk4ZGGsHCk5BHHf947h3WSp1NIrbcdUlkDotlmLhWUPe
         ifGkoU6GPMtw7nyCBVVsBTVkrwqCkHznJyfBy7eftUNpB+DXHPf6f4rYCUptAn1pFkSV
         oXT9pvsdyfCcBSM/B8EGUZPvmr6gcD8cbBPJvOZSnn+oFg5JJlKNSKID7e5SEYJR9Yms
         PYd8pMIDBmAUkj27hfOdAbZIinlzy0VrFzjYwJoBBnQqZ7IBk6K4PhafiMGNfvybdWSo
         xbb4Cx7c1R6bLptfWQUnEqxa8Bs5rFpYNPYIAdpB8WCYF14t6XQYqorSIfBucROEn2gi
         S64A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :reply-to:references:mime-version:content-disposition
         :content-transfer-encoding:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=TGQc0uRgesKk/tpMmULEMEYY8swdfYIHwKonYJoRh2A=;
        b=XR7Y/5jLY65bempESWHlj30zLXQRbH4srbQbMLkQ3g8WmS2a7YNLhj1n3P1hPLWyzk
         N1+tvzVQduQc3nzgyVqpy37FiHrN9l1uCKPWxw9JtdIctYs1Orp5Mn+d1QjKMbGsjC76
         cw3Xhy37M3PtjHQ2OA3+n3bul0FSRn400bv3qFBF88xaE8dhnOVqGJYATmygGw6pfcZd
         bX2CsyCOA4TwQFXaau6l54sPqDlDzmzddkUHpEAlZ7ORwRXw9cJegLhL08hi0lzim53E
         3KOipDxABeYrIAzPfibKH1nPSQ14GmnSguTJXZD9ZxX0Xf4JFs8M67ejj2f4jlJPh0rn
         4ZQA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530u5iddw+EQ+OZVpA31bdIEHt08GXI/ZlmqPhZ2lRbFZ7jRzz6N
	ZfTYEehkqw4O0IaKBizc71s=
X-Google-Smtp-Source: ABdhPJzL2ItRt4xn3V90ySrspZQ+t2488S2RAoP8lxFcFQravqDjGu8fgN0j6oY5StctBZEncB7jjw==
X-Received: by 2002:a67:6946:: with SMTP id e67mr7582vsc.15.1623211087157;
        Tue, 08 Jun 2021 20:58:07 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:c398:: with SMTP id s24ls247102vsj.6.gmail; Tue, 08 Jun
 2021 20:58:06 -0700 (PDT)
X-Received: by 2002:a67:c90d:: with SMTP id w13mr3303883vsk.17.1623211086656;
        Tue, 08 Jun 2021 20:58:06 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1623211086; cv=none;
        d=google.com; s=arc-20160816;
        b=SkF63Jm9pLLsRQS4fZsr+7nKEX2HDZQHwbm7J6cVLG4jN2nHpkrAn6ZJ2tTz27oMal
         f+UiaH2er4mbL1X8XTHLdO9iyMOriyTnn97uJk/9ooWPQ2RXpYe5d0Fr556TbDENa+MI
         QwA5Ci2cY+eDz3l3r5otBVuPpeNkgivG2T63ZYDDvSevDCJmStzd+541Pr+yjFQkzJ4w
         WrEHxQVHJQcn4X9W0e6PzUNS819X4peDT9gIRAOi0QwCD3ld6XO6dOcevH11dg4Ua3pB
         JmJE0lW9EXPsJ5zZfTidokYLF0hvhJtjDU6TkD4edib9GM5WKn1l3DOZKbTxrXRcSQy5
         90jg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:reply-to:message-id:subject:cc:to:from:date
         :dkim-signature;
        bh=Z0a/aJqYcR9PGlX/0UiAAHAiAnLnQ3MubO4nGvnToao=;
        b=JsIHF4umD7xk839Ce+AjfvUUep1DV6hqJFm2Qti1/0fuyjL3g/WExTeEBCMMm6NuoT
         2p2J7ryOTg0kSjqV/67nXTguOCLwLZWn7PehX1bk/WskpZQDdpVEz3nZ29mZ6P/555L7
         Kwlw5UtJ/A9awgAR10CHE2wCunYKs987OoUlTbC63D2qxP+ruUm8rsUsmNWYsyLmWKZQ
         0K9Bkv/vj8sRAfFg2GD26jgAP0Ev5LGc1wDlzonkeQFDspaM8AkBvlIqZTO+/jv0mV0Y
         udQunMDj27oSHB79jZEnqxaf3owGaZFDg3ZzT7RntXYJU6AmkxMB7p1gmMKeVblqjvbI
         /H/A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=lOOlj3af;
       spf=pass (google.com: domain of srs0=dcq8=ld=paulmck-thinkpad-p17-gen-1.home=paulmck@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom="SRS0=Dcq8=LD=paulmck-ThinkPad-P17-Gen-1.home=paulmck@kernel.org";
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id a1si1813885uaq.0.2021.06.08.20.58.06
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 08 Jun 2021 20:58:06 -0700 (PDT)
Received-SPF: pass (google.com: domain of srs0=dcq8=ld=paulmck-thinkpad-p17-gen-1.home=paulmck@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 87B9061040;
	Wed,  9 Jun 2021 03:58:05 +0000 (UTC)
Received: by paulmck-ThinkPad-P17-Gen-1.home (Postfix, from userid 1000)
	id 50D6E5C0AD1; Tue,  8 Jun 2021 20:58:05 -0700 (PDT)
Date: Tue, 8 Jun 2021 20:58:05 -0700
From: "Paul E. McKenney" <paulmck@kernel.org>
To: Nathan Chancellor <nathan@kernel.org>
Cc: Rong Chen <rong.a.chen@intel.com>, kernel test robot <lkp@intel.com>,
	kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	linux-kernel@vger.kernel.org
Subject: Re: [kbuild-all] Re: kernel/rcu/tree.c:2073:23: warning: stack frame
 size of 2704 bytes in function 'rcu_gp_kthread'
Message-ID: <20210609035805.GA4397@paulmck-ThinkPad-P17-Gen-1>
Reply-To: paulmck@kernel.org
References: <202106061253.0X2QKyyI-lkp@intel.com>
 <20210606044926.GJ4397@paulmck-ThinkPad-P17-Gen-1>
 <4696fe3d-a7ad-acae-686e-6295ca327737@intel.com>
 <20210607151939.GP4397@paulmck-ThinkPad-P17-Gen-1>
 <e7bbb0e5-3063-031b-af6e-273e97f1d61f@intel.com>
 <20210608050134.GZ4397@paulmck-ThinkPad-P17-Gen-1>
 <f3cc5211-0c68-17c8-a222-4bc2c2525522@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <f3cc5211-0c68-17c8-a222-4bc2c2525522@kernel.org>
X-Original-Sender: paulmck@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=lOOlj3af;       spf=pass
 (google.com: domain of srs0=dcq8=ld=paulmck-thinkpad-p17-gen-1.home=paulmck@kernel.org
 designates 198.145.29.99 as permitted sender) smtp.mailfrom="SRS0=Dcq8=LD=paulmck-ThinkPad-P17-Gen-1.home=paulmck@kernel.org";
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

On Tue, Jun 08, 2021 at 08:53:17AM -0700, Nathan Chancellor wrote:
> On 6/7/2021 10:01 PM, Paul E. McKenney wrote:
> > On Tue, Jun 08, 2021 at 11:14:40AM +0800, Rong Chen wrote:
> > >=20
> > >=20
> > > On 6/7/21 11:19 PM, Paul E. McKenney wrote:
> > > > On Mon, Jun 07, 2021 at 05:18:21PM +0800, Rong Chen wrote:
> > > > >=20
> > > > > On 6/6/21 12:49 PM, Paul E. McKenney wrote:
> > > > > > On Sun, Jun 06, 2021 at 12:19:57PM +0800, kernel test robot wro=
te:
> > > > > > > Hi Paul,
> > > > > > >=20
> > > > > > > FYI, the error/warning still remains.
> > > > > > >=20
> > > > > > > tree:   https://git.kernel.org/pub/scm/linux/kernel/git/torva=
lds/linux.git master
> > > > > > > head:   f5b6eb1e018203913dfefcf6fa988649ad11ad6e
> > > > > > > commit: 7dffe01765d9309b8bd5505503933ec0ec53d192 rcu: Add loc=
kdep_assert_irqs_disabled() to raw_spin_unlock_rcu_node() macros
> > > > > > > date:   5 months ago
> > > > > > > config: powerpc-randconfig-r023-20210606 (attached as .config=
)
> > > > > > > compiler: clang version 13.0.0 (https://github.com/llvm/llvm-=
project 551a697c5cf33275b66add4fc467fcf59084cffb)
> > > > > > > reproduce (this is a W=3D1 build):
> > > > > > >            wget https://raw.githubusercontent.com/intel/lkp-t=
ests/master/sbin/make.cross -O ~/bin/make.cross
> > > > > > >            chmod +x ~/bin/make.cross
> > > > > > >            # install powerpc cross compiling tool for clang b=
uild
> > > > > > >            # apt-get install binutils-powerpc-linux-gnu
> > > > > > >            # https://git.kernel.org/pub/scm/linux/kernel/git/=
torvalds/linux.git/commit/?id=3D7dffe01765d9309b8bd5505503933ec0ec53d192
> > > > > > >            git remote add linus https://git.kernel.org/pub/sc=
m/linux/kernel/git/torvalds/linux.git
> > > > > > >            git fetch --no-tags linus master
> > > > > > >            git checkout 7dffe01765d9309b8bd5505503933ec0ec53d=
192
> > > > > > >            # save the attached .config to linux build tree
> > > > > > >            COMPILER_INSTALL_PATH=3D$HOME/0day COMPILER=3Dclan=
g make.cross ARCH=3Dpowerpc
> > > > > > >=20
> > > > > > > If you fix the issue, kindly add following tag as appropriate
> > > > > > > Reported-by: kernel test robot <lkp@intel.com>
> > > > > > >=20
> > > > > > > All warnings (new ones prefixed by >>):
> > > > > > >=20
> > > > > > >       In file included from kernel/rcu/tree.c:21:
> > > > > > >       In file included from include/linux/kernel.h:12:
> > > > > > >       In file included from include/linux/bitops.h:29:
> > > > > > >       In file included from arch/powerpc/include/asm/bitops.h=
:62:
> > > > > > >       arch/powerpc/include/asm/barrier.h:49:9: warning: '__lw=
sync' macro redefined [-Wmacro-redefined]
> > > > > > >       #define __lwsync()      __asm__ __volatile__ (stringify=
_in_c(LWSYNC) : : :"memory")
> > > > > > >               ^
> > > > > > >       <built-in>:310:9: note: previous definition is here
> > > > > > >       #define __lwsync __builtin_ppc_lwsync
> > > > > > >               ^
> > > > > > > > > kernel/rcu/tree.c:2073:23: warning: stack frame size of 2=
704 bytes in function 'rcu_gp_kthread' [-Wframe-larger-than=3D]
> > > > > > >       static int __noreturn rcu_gp_kthread(void *unused)
> > > > > > Does -rcu commit 2f20de99a63b ("rcu: Make rcu_gp_cleanup() be n=
oinline
> > > > > > for tracing") help?
> > > > > Hi Paul,
> > > > >=20
> > > > > The stack frame size decreased to 2256 bytes:
> > > > >=20
> > > > >   =C2=A0 kernel/rcu/tree.c:2129:23: warning: stack frame size of =
2256 bytes in
> > > > > function 'rcu_gp_kthread' [-Wframe-larger-than=3D]
> > > > Very good, thank you!  Does the following patch (in addition to tha=
t
> > > > commit) also help?
> > >=20
> > > Hi Paul,
> > >=20
> > > I applied the below patch on commit 2f20de99a63b and the warning is g=
one.
> >=20
> > Very good, and thank you for your testing.  I have applied the requeste=
d
> > Reported-by and your Tested-by on the commit shown below.  Please let
> > me know if you would prefer some other Reported/Tested setup.
> >=20
> > 							Thanx, Paul
> >=20
> > -----------------------------------------------------------------------=
-
> >=20
> > commit 336e92638287615d47c07af4ff6feb397cfe2084
> > Author: Paul E. McKenney <paulmck@kernel.org>
> > Date:   Mon Jun 7 21:57:02 2021 -0700
> >=20
> >      rcu: Make rcu_gp_init() and rcu_gp_fqs_loop noinline to conserve s=
tack
> >      The kbuild test project found an oversized stack frame in rcu_gp_k=
thread()
> >      for some kernel configurations.  This oversizing was due to a very=
 large
> >      amount of inlining, which is unnecessary due to the fact that this=
 code
> >      executes infrequently.  This commit therefore marks rcu_gp_init() =
and
> >      rcu_gp_fqs_loop noinline to conserve stack space.
> >      Reported-by: kernel test robot <lkp@intel.com>
> >      Tested-by: Rong Chen <rong.a.chen@intel.com>
> >      Signed-off-by: Paul E. McKenney <paulmck@kernel.org>
> >=20
> > diff --git a/kernel/rcu/tree.c b/kernel/rcu/tree.c
> > index 13bd8eee62bf..ef435aeac993 100644
> > --- a/kernel/rcu/tree.c
> > +++ b/kernel/rcu/tree.c
> > @@ -1737,7 +1737,7 @@ static void rcu_strict_gp_boundary(void *unused)
> >   /*
> >    * Initialize a new grace period.  Return false if no grace period re=
quired.
> >    */
> > -static bool rcu_gp_init(void)
> > +static noinline bool rcu_gp_init(void)
>=20
> Small comment if it is not too late. noinline_for_stack expands to the sa=
me
> thing but is self documenting :) that way people do not have to git blame=
 to
> see why these are marked as noinline (not that too many people are probab=
ly
> touching this but still).

How about like the following?

							Thanx, Paul

------------------------------------------------------------------------

commit 8aa0ceef4264012abd7b98d29f0a968f0f0046cb
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
    rcu_gp_fqs_loop noinline_for_stack to conserve stack space.
   =20
    Reported-by: kernel test robot <lkp@intel.com>
    Tested-by: Rong Chen <rong.a.chen@intel.com>
    [ paulmck: noinline_for_stack per Nathan Chancellor. ]
    Signed-off-by: Paul E. McKenney <paulmck@kernel.org>

diff --git a/kernel/rcu/tree.c b/kernel/rcu/tree.c
index 13bd8eee62bf..d8052adcdcb1 100644
--- a/kernel/rcu/tree.c
+++ b/kernel/rcu/tree.c
@@ -1737,7 +1737,7 @@ static void rcu_strict_gp_boundary(void *unused)
 /*
  * Initialize a new grace period.  Return false if no grace period require=
d.
  */
-static bool rcu_gp_init(void)
+static noinline_for_stack bool rcu_gp_init(void)
 {
 	unsigned long firstseq;
 	unsigned long flags;
@@ -1931,7 +1931,7 @@ static void rcu_gp_fqs(bool first_time)
 /*
  * Loop doing repeated quiescent-state forcing until the grace period ends=
.
  */
-static void rcu_gp_fqs_loop(void)
+static noinline_for_stack void rcu_gp_fqs_loop(void)
 {
 	bool first_gp_fqs;
 	int gf =3D 0;

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/20210609035805.GA4397%40paulmck-ThinkPad-P17-Gen-1.
