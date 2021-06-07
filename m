Return-Path: <clang-built-linux+bncBCJZRXGY5YJBBDHS7CCQMGQEDNXHKEI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23b.google.com (mail-oi1-x23b.google.com [IPv6:2607:f8b0:4864:20::23b])
	by mail.lfdr.de (Postfix) with ESMTPS id 0962439E01D
	for <lists+clang-built-linux@lfdr.de>; Mon,  7 Jun 2021 17:19:42 +0200 (CEST)
Received: by mail-oi1-x23b.google.com with SMTP id l1-20020a5441010000b02901ecd2ee1861sf7178110oic.13
        for <lists+clang-built-linux@lfdr.de>; Mon, 07 Jun 2021 08:19:41 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1623079180; cv=pass;
        d=google.com; s=arc-20160816;
        b=0p0Ht/RGzXDhQP2igBnJkRoRBuk+ggDXNe0nrhrv0BRyTdmU44j3PirpNXnHGKfY5L
         exiJC/TOhHylg9GyrFkQxeDQGymuC0SvXYgnYeIqp2p08r0z+8pTVSbqq0Ce+bBxY5id
         HAIjXFg4jZDjfx8i4Xfirdowg9rp+71GBt/n4TG0zzCl3Y/+euYFIJ77wZvhZ16NCuT9
         6/QSTKRwPhfShhAVsnt6Q5Ey4se+6iNIZuazNpNv+u6auieFJX8iXXAUsZfH1mBC+27I
         Am+CQPQRsqgrBd0pA9cZJZARnOR+zhU6rNGGTu0uRtxC+oYaMK9lJ+nrkoI4N5hVozcJ
         rZmw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to
         :content-transfer-encoding:content-disposition:mime-version
         :references:reply-to:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=crhuD/eDEHNC+1Gklc1eER0ijCzhqf89RjKqv1ljQ1U=;
        b=AUWWy+9n7/gKpXKnQomWpzgBuYnNl1EWvsIO6LkKSC/qUOCM1R9ZpESkp9Ty/A4FyA
         TL45nHrrgKHK1iudRmXE9JjOQvoEkeTiBdYrr+d1pSq+HBe7tKluigGBNS2MlT6VY8Re
         Nzg2UKCbADRt8/OiGXZVCWsBEdFVMJlY5vPl144ogOXLYaaUCbNSI7fpW/RCC/4JqvcB
         hDm8hwLWmpGF7yXHt5XBYfUT0A1vSoJ+PYWsj8Ch7NuayMB/OABeOGn1fcystcUYLdF6
         zqK99FlPZkpdtbIPr+aRBOeVnkvAqRiHVSc80SahLsrdq31sbY+iCYCdFiC3vjKi5are
         evuA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=ZIPoT4F7;
       spf=pass (google.com: domain of srs0=f9+n=lb=paulmck-thinkpad-p17-gen-1.home=paulmck@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom="SRS0=f9+N=LB=paulmck-ThinkPad-P17-Gen-1.home=paulmck@kernel.org";
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:reply-to:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=crhuD/eDEHNC+1Gklc1eER0ijCzhqf89RjKqv1ljQ1U=;
        b=UyLBX8GmRf7pTVV24ke2A/VSykITxmvcOPmXTBlPRUlJ0SP6raJWzAUnKaYbPqyb9J
         rOmZp6rGf3y8CB0ttRKwqjqGZYsE08KITplLIR+vS17kcpsAJLV7gKV21PNJ5VuemL7D
         iidvYjRz+bVowE2SSMElbNmeah/uDDcGKmi9JdT5zHrhbr/rfEDQvQ/uw7v2xVkStpzh
         r/igs6rKKqjBTnWPyRWTw+lt3VlhVFxSjG1RFpQQ5t31Xq2haMD/KI3svlfrBh7XAEhR
         hJ5PTHD4RFXT/QQqn730m5odCIoxswCsuTuFh2SYrvDV59xo30OnPfzg4aleKVE/AqTN
         QF7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :reply-to:references:mime-version:content-disposition
         :content-transfer-encoding:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=crhuD/eDEHNC+1Gklc1eER0ijCzhqf89RjKqv1ljQ1U=;
        b=nQG8kTFbMqb3JOrux191Y3+1kFmv0PdJX0EJa3QvXtqkaIDBrjwQ74KEfaxWW+KEAm
         sKf7lYyk0AmRrORkBGov9BYztOV1StYXmkyW6Y00DoY0CvhiK9QVEBpl08CIiagwMRT2
         gg9vLTcLVvQAVBr3JPmxrNLyWjGDMTaswqVSmehqWnbl4N2WgrefZ5e9y8CpsJJRsElF
         sqIOFH0if99UsiNqFBXq1Io6L5hXMVRuicIjMDyE1EHSLPSqK/MJqb923X/QuMrjG1wd
         7CusMNK5Y3PfuHQHlDrtZy95qb1xZXVtHO4mTIMwJBiuN5ziIS2B6VSC34a9yDt43PaP
         B+Tg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531mzkjnYy5oUvcdzmlePscz/hYBWBPr8YV1IlB18jpBcL2dFIsU
	TJxBwK3eaef9LN81PqwYo3E=
X-Google-Smtp-Source: ABdhPJy5xAzO9RG5exBNfZCRmaaoQpp/tUEgI43k+LD9V6Kk/G6mtKGci845yo0CC3CAkJdFzqZp8g==
X-Received: by 2002:a05:6830:1dda:: with SMTP id a26mr13343596otj.213.1623079180804;
        Mon, 07 Jun 2021 08:19:40 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6830:310c:: with SMTP id b12ls5047865ots.9.gmail; Mon,
 07 Jun 2021 08:19:40 -0700 (PDT)
X-Received: by 2002:a05:6830:124d:: with SMTP id s13mr11953341otp.241.1623079180476;
        Mon, 07 Jun 2021 08:19:40 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1623079180; cv=none;
        d=google.com; s=arc-20160816;
        b=xtIek5aJ7LiVO6LYqmgRfdOWM5QCCRO2GzCWgBnAK8RMQ3u06hA8LT81VVim9TOJ2s
         wV11bW6KnsGak14KSa0JS075qG9qouyiQwWX/jdcV3sI7o43Tkx0cU4fmgZ2uT2tulwO
         X3AuAonEqmeMO9ooJNNvsTNuejHzt9DtK/xDJ+6JchxA6yFnxSn3uEBZL55nJd1zbM4a
         3+1DH9O0Q+3gYAAsyzPsA+ca+cxZng97nlwNUwXu2KZ1a3uxpRqcVhGv8YIeD6qTAo76
         1pk8X4/WVwbl5UBCKCZ/MQ414i9CooM2qnh4h4KQv65zJDRoh/WriH/e3Q6XU5CAqWR1
         gsFQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:reply-to:message-id:subject:cc:to:from:date
         :dkim-signature;
        bh=0K1W9LgoJwGPhiUg95dolULdtCtpdNxlaD7DaQG5JnM=;
        b=PFV/woy/4PY6nudAW1FM56Gq/RG3Fm5OPa/Qg8ItQ+UlJuoznS9lQ+mIyGb3AzyMWa
         kOrGsYO9EqpWwwwoBNDtbCHkgT/KLKnjTxGDYqs13t3JfY2T46xIWxHtCUdIZ33B8YDE
         +wFJBStwKPVqOJjbxxZmeIDr8zQguby7O0YkKwh0yVV+mVSJE3PfYbdEZDIJwQOIbxbJ
         B5ZK+TFpPDhsudfWDlxdn7qYTDYVhmAeZWS1ynFEXoibOjSEOwSVPrNmfryUa0U9Gac1
         AUZev/zfkrIT3m0IAltjEaSSssYon5UzeyZFmepjfG0n3gbzEXbsObfPnU8BXGrfBraS
         EgyA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=ZIPoT4F7;
       spf=pass (google.com: domain of srs0=f9+n=lb=paulmck-thinkpad-p17-gen-1.home=paulmck@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom="SRS0=f9+N=LB=paulmck-ThinkPad-P17-Gen-1.home=paulmck@kernel.org";
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id c22si1231421oiy.1.2021.06.07.08.19.40
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 07 Jun 2021 08:19:40 -0700 (PDT)
Received-SPF: pass (google.com: domain of srs0=f9+n=lb=paulmck-thinkpad-p17-gen-1.home=paulmck@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 95C6460C3D;
	Mon,  7 Jun 2021 15:19:39 +0000 (UTC)
Received: by paulmck-ThinkPad-P17-Gen-1.home (Postfix, from userid 1000)
	id 5EE645C0395; Mon,  7 Jun 2021 08:19:39 -0700 (PDT)
Date: Mon, 7 Jun 2021 08:19:39 -0700
From: "Paul E. McKenney" <paulmck@kernel.org>
To: Rong Chen <rong.a.chen@intel.com>
Cc: kernel test robot <lkp@intel.com>, kbuild-all@lists.01.org,
	clang-built-linux@googlegroups.com, linux-kernel@vger.kernel.org
Subject: Re: [kbuild-all] Re: kernel/rcu/tree.c:2073:23: warning: stack frame
 size of 2704 bytes in function 'rcu_gp_kthread'
Message-ID: <20210607151939.GP4397@paulmck-ThinkPad-P17-Gen-1>
Reply-To: paulmck@kernel.org
References: <202106061253.0X2QKyyI-lkp@intel.com>
 <20210606044926.GJ4397@paulmck-ThinkPad-P17-Gen-1>
 <4696fe3d-a7ad-acae-686e-6295ca327737@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <4696fe3d-a7ad-acae-686e-6295ca327737@intel.com>
X-Original-Sender: paulmck@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=ZIPoT4F7;       spf=pass
 (google.com: domain of srs0=f9+n=lb=paulmck-thinkpad-p17-gen-1.home=paulmck@kernel.org
 designates 198.145.29.99 as permitted sender) smtp.mailfrom="SRS0=f9+N=LB=paulmck-ThinkPad-P17-Gen-1.home=paulmck@kernel.org";
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

On Mon, Jun 07, 2021 at 05:18:21PM +0800, Rong Chen wrote:
>=20
>=20
> On 6/6/21 12:49 PM, Paul E. McKenney wrote:
> > On Sun, Jun 06, 2021 at 12:19:57PM +0800, kernel test robot wrote:
> > > Hi Paul,
> > >=20
> > > FYI, the error/warning still remains.
> > >=20
> > > tree:   https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linu=
x.git master
> > > head:   f5b6eb1e018203913dfefcf6fa988649ad11ad6e
> > > commit: 7dffe01765d9309b8bd5505503933ec0ec53d192 rcu: Add lockdep_ass=
ert_irqs_disabled() to raw_spin_unlock_rcu_node() macros
> > > date:   5 months ago
> > > config: powerpc-randconfig-r023-20210606 (attached as .config)
> > > compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project =
551a697c5cf33275b66add4fc467fcf59084cffb)
> > > reproduce (this is a W=3D1 build):
> > >          wget https://raw.githubusercontent.com/intel/lkp-tests/maste=
r/sbin/make.cross -O ~/bin/make.cross
> > >          chmod +x ~/bin/make.cross
> > >          # install powerpc cross compiling tool for clang build
> > >          # apt-get install binutils-powerpc-linux-gnu
> > >          # https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/l=
inux.git/commit/?id=3D7dffe01765d9309b8bd5505503933ec0ec53d192
> > >          git remote add linus https://git.kernel.org/pub/scm/linux/ke=
rnel/git/torvalds/linux.git
> > >          git fetch --no-tags linus master
> > >          git checkout 7dffe01765d9309b8bd5505503933ec0ec53d192
> > >          # save the attached .config to linux build tree
> > >          COMPILER_INSTALL_PATH=3D$HOME/0day COMPILER=3Dclang make.cro=
ss ARCH=3Dpowerpc
> > >=20
> > > If you fix the issue, kindly add following tag as appropriate
> > > Reported-by: kernel test robot <lkp@intel.com>
> > >=20
> > > All warnings (new ones prefixed by >>):
> > >=20
> > >     In file included from kernel/rcu/tree.c:21:
> > >     In file included from include/linux/kernel.h:12:
> > >     In file included from include/linux/bitops.h:29:
> > >     In file included from arch/powerpc/include/asm/bitops.h:62:
> > >     arch/powerpc/include/asm/barrier.h:49:9: warning: '__lwsync' macr=
o redefined [-Wmacro-redefined]
> > >     #define __lwsync()      __asm__ __volatile__ (stringify_in_c(LWSY=
NC) : : :"memory")
> > >             ^
> > >     <built-in>:310:9: note: previous definition is here
> > >     #define __lwsync __builtin_ppc_lwsync
> > >             ^
> > > > > kernel/rcu/tree.c:2073:23: warning: stack frame size of 2704 byte=
s in function 'rcu_gp_kthread' [-Wframe-larger-than=3D]
> > >     static int __noreturn rcu_gp_kthread(void *unused)
> > Does -rcu commit 2f20de99a63b ("rcu: Make rcu_gp_cleanup() be noinline
> > for tracing") help?
>=20
> Hi Paul,
>=20
> The stack frame size decreased to 2256 bytes:
>=20
> =C2=A0 kernel/rcu/tree.c:2129:23: warning: stack frame size of 2256 bytes=
 in
> function 'rcu_gp_kthread' [-Wframe-larger-than=3D]

Very good, thank you!  Does the following patch (in addition to that
commit) also help?

							Thanx, Paul

------------------------------------------------------------------------

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
clang-built-linux/20210607151939.GP4397%40paulmck-ThinkPad-P17-Gen-1.
