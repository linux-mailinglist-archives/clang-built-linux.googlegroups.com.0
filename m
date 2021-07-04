Return-Path: <clang-built-linux+bncBCJZRXGY5YJBBMHGQ6DQMGQEOGAN7ZY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3b.google.com (mail-io1-xd3b.google.com [IPv6:2607:f8b0:4864:20::d3b])
	by mail.lfdr.de (Postfix) with ESMTPS id 6788A3BAE1B
	for <lists+clang-built-linux@lfdr.de>; Sun,  4 Jul 2021 19:43:13 +0200 (CEST)
Received: by mail-io1-xd3b.google.com with SMTP id p7-20020a6b63070000b029050017e563a6sf11829245iog.4
        for <lists+clang-built-linux@lfdr.de>; Sun, 04 Jul 2021 10:43:13 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1625420592; cv=pass;
        d=google.com; s=arc-20160816;
        b=V2cYHTVWNP6KKrYtIFBzLzTnXmmGNF9AAb3BMFM/9AxN515Zh1wWR756CT28UznvkH
         GOOd5UtqYshBbjAvGiyCjA7K3CTmderSEQyJCvaPWKcmGCsUgfgwlR1CZjtH/FLQqYDH
         OcdQH3wmXMCkdnUHY889rpYCbz06m2Mg9jYpD45gRC3PvVmVUlp+qvuiqmJtpSSV54qK
         aw4t6gHwGRhp0YSQeZswdQuHAYKF63TiORrRdQ0QjqsbQXQOG2yWY/9EY+9Bed22kpK/
         A6/CAnhywam0CV3IqA1greQX+S9OaxJltbLC63vbOEqt6tCPwEnPBL+aBvXKeZbReLt6
         Ue9g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:reply-to:message-id:subject:cc:to:from:date
         :sender:dkim-signature;
        bh=pWreN7ss0ROFkCBx4bY8M0W9JII+A36YnrD/gs/Fc6A=;
        b=R+5APL0TpsZqWadKXvpOLuqx7wln3LBIgcwLrMKrPPCQnBkEkjURDnuNOC32IJpYpq
         NTXWtTqZwVCiHJQuqFn9Y4z92i7bViycqTFDg8WfDLPvwMOohg5DYDwe/tSD1ULXVk/t
         oV08sp0eMA//q9VFHtyV/yebAV/7pZaX824L/hytx3sGgzKCIaY8nTqpk578P/qfMtzt
         FWwudVwnpy/3t1aHPnU0GzDQp+MsDiPLrSfayPnMI+Cias9W3LhDqg3X6rwnC+EQk++8
         4hu/D/tt5wCwpvgrAJm0KFLvYI+gYDYj4Bx7pdqNk8/ZXNspviwxktOKFZaijloBaz+G
         IVWw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=k4txGoC6;
       spf=pass (google.com: domain of srs0=lbf0=l4=paulmck-thinkpad-p17-gen-1.home=paulmck@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom="SRS0=lbf0=L4=paulmck-ThinkPad-P17-Gen-1.home=paulmck@kernel.org";
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:reply-to:references
         :mime-version:content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=pWreN7ss0ROFkCBx4bY8M0W9JII+A36YnrD/gs/Fc6A=;
        b=ZQZfanhuCCo/6An1NsIFs06yH1bH2Ls/vQePXbXsQe6YQ8vCKj2PLOrQy6cnYl1RBV
         6qdFS5F5ycOYsENLWjpDSlcfdtGCe544KvH+yyTMIKewpIMWNFxPR2uL11hljBakC+zX
         moHuq6tiqlwdBz207ubqIjwG15SQidwWxhushodjt5+tC77tGszVkuwMg24tspw1ge6y
         gLtlj3U4UK8cuHYSTthxSTVloh3EaAa898ZKePSh64HFELoC+AmBrF0yxdk39QknZYQE
         li3/RoyV4w/bwuWVnYa/dVQsIIu4seooAsNbgl19yTgcub/haph+aP+EqMtv1g7dG/rq
         QZAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :reply-to:references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=pWreN7ss0ROFkCBx4bY8M0W9JII+A36YnrD/gs/Fc6A=;
        b=fYQz79+D0PQKPtgY72Ymrc/P+sJs4rknFquZLiPg2ORBUZ7FoLWPX0LxMphKMwKmdn
         TiASLActAa4G5R58fSZzwyWq/3etG00sXGXt5/Zr+2n5Ux1Q2wfzQLovIRUDdWibz30i
         E+k0rdvjp/Xfu8yDPmALscEDN/ujWhrv2VztviFhUohPxNV0oveOzTdFvq+5FwP64U+P
         jxwyJ5wt/ohpwwLfKV21+iYTtosk+Qk0mcXf8vvo5KjQw+lygENFgIx7QL9LUEo6iR7k
         gfLwjKFPQ1pUVTpzuJLT4yeaBj41KXGQyWeQmbUOLt6KmpR/mB1t92VyGyzrowAZOinh
         Pu0w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533y/HsFX3kaZL5yaCwkatvfMYz0OI2oCmaOhvcIP6qQHsIW3Fm9
	vBPSMnkSkwcQ1pn8sTa0d9U=
X-Google-Smtp-Source: ABdhPJxTFjntAYQbjjdj3UZiAe43469J/s6NbRjOHBBRsvIEoZ4dFsXtyffSDZrUmlVJt40Sf9FiDQ==
X-Received: by 2002:a05:6638:5b7:: with SMTP id b23mr8580285jar.138.1625420592290;
        Sun, 04 Jul 2021 10:43:12 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a6b:5a15:: with SMTP id o21ls406536iob.3.gmail; Sun, 04 Jul
 2021 10:43:12 -0700 (PDT)
X-Received: by 2002:a05:6602:3406:: with SMTP id n6mr8675958ioz.11.1625420591965;
        Sun, 04 Jul 2021 10:43:11 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1625420591; cv=none;
        d=google.com; s=arc-20160816;
        b=kyh+0c4edhLoY7LC332lgKU6N9t1R0nuOrQLAMvxx8RMLu4XBVNcBAJqs2sFZI6Xza
         n3vTfJtnQf6Gfv0hW4VOD7wln2DKa0sxCKFt/aeeZbwnJqkHO+k3xVfjZwtd2KmXtmTC
         o1IVs9QA4LwzFNdz/WJLYnYZKSB9FAvBTJmrwkV20Ui8TBhzE7+edif0gmOd6yUYm8yI
         XXDGvdX15Md4uKXo+v5qAxz9GgQ04EUGltLQIgqt5pxhHcwSUhcvG/2flWsKTwu+o9df
         mcYoFVTMSgFjpi10g05uslp7b1tM2vf5lFQSwKpCR00vh2rvGNQnJ3PzMWUE1d3ERjcB
         7+vA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:reply-to
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=oOXNElIXSumJ09YSMhebOY4VGSq8f0UNrZmoX+/nDFQ=;
        b=ep9qmC0XQKs+MKmUGRkyohz4CsF7YWLXy5ch8Ue6PFkeKVagQ2EJD8BINMthrpaIkb
         fCpGSBABBpf1asZOAhXsQ3Bq4XXo87h+ml69gV0niFdLK9HchkHlR487Ix1ggA//s9zy
         x20jvgrtwR1NdUkRNhsQH1C7gNyhst+Tzh29I+XRNsN335GMbEABrS/n1gO3c4GBcGcx
         +95K9EnToSPZ39X6QjVeRtkT+c6ga2XQ2rvxKiZUtlvcA837oNq0ZT12zQ7W86kBAudl
         Rd3RKJh8RTba1uOFigBr+VDvIFcIW6mUNLmHl0BXNaXuhAuk5SgPV378KvnlTFoO4IEk
         85eA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=k4txGoC6;
       spf=pass (google.com: domain of srs0=lbf0=l4=paulmck-thinkpad-p17-gen-1.home=paulmck@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom="SRS0=lbf0=L4=paulmck-ThinkPad-P17-Gen-1.home=paulmck@kernel.org";
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id w8si889602ioc.1.2021.07.04.10.43.11
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 04 Jul 2021 10:43:11 -0700 (PDT)
Received-SPF: pass (google.com: domain of srs0=lbf0=l4=paulmck-thinkpad-p17-gen-1.home=paulmck@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 0BFF3611AD;
	Sun,  4 Jul 2021 17:43:11 +0000 (UTC)
Received: by paulmck-ThinkPad-P17-Gen-1.home (Postfix, from userid 1000)
	id CFE875C0147; Sun,  4 Jul 2021 10:43:10 -0700 (PDT)
Date: Sun, 4 Jul 2021 10:43:10 -0700
From: "Paul E. McKenney" <paulmck@kernel.org>
To: kernel test robot <lkp@intel.com>
Cc: clang-built-linux@googlegroups.com, kbuild-all@lists.01.org,
	linux-kernel@vger.kernel.org, Thomas Gleixner <tglx@linutronix.de>
Subject: Re: kernel/time/clocksource-wdtest.c:47:22: warning: signed shift
 result (0x27BC86B00) requires 35 bits to represent, but 'long' only has 32
 bits
Message-ID: <20210704174310.GR4397@paulmck-ThinkPad-P17-Gen-1>
Reply-To: paulmck@kernel.org
References: <202107040532.wqL30yFp-lkp@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <202107040532.wqL30yFp-lkp@intel.com>
X-Original-Sender: paulmck@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=k4txGoC6;       spf=pass
 (google.com: domain of srs0=lbf0=l4=paulmck-thinkpad-p17-gen-1.home=paulmck@kernel.org
 designates 198.145.29.99 as permitted sender) smtp.mailfrom="SRS0=lbf0=L4=paulmck-ThinkPad-P17-Gen-1.home=paulmck@kernel.org";
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

On Sun, Jul 04, 2021 at 05:42:36AM +0800, kernel test robot wrote:
> tree:   https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git master
> head:   303392fd5c160822bf778270b28ec5ea50cab2b4
> commit: 1253b9b87e42ab6a3d5c2cb27af2bdd67d7e50ff clocksource: Provide kernel module to test clocksource watchdog
> date:   11 days ago
> config: mips-randconfig-r015-20210702 (attached as .config)
> compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project 9eb613b2de3163686b1a4bd1160f15ac56a4b083)
> reproduce (this is a W=1 build):
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         # install mips cross compiling tool for clang build
>         # apt-get install binutils-mips-linux-gnu
>         # https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=1253b9b87e42ab6a3d5c2cb27af2bdd67d7e50ff
>         git remote add linus https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git
>         git fetch --no-tags linus master
>         git checkout 1253b9b87e42ab6a3d5c2cb27af2bdd67d7e50ff
>         # save the attached .config to linux build tree
>         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=mips 
> 
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kernel test robot <lkp@intel.com>
> 
> All warnings (new ones prefixed by >>):
> 
> >> kernel/time/clocksource-wdtest.c:47:22: warning: signed shift result (0x27BC86B00) requires 35 bits to represent, but 'long' only has 32 bits [-Wshift-overflow]
>            .mult                   = TICK_NSEC << JIFFIES_SHIFT, /* details above */
>                                      ~~~~~~~~~ ^  ~~~~~~~~~~~~~
>    1 warning generated.

You have CONFIG_HZ_24=y and this test module assumes HZ > 100, as noted
just above the excerpt below:

/* Assume HZ > 100. */
#define JIFFIES_SHIFT   8

So this is expected behavior.

Would it help if I gave that comment some teeth, for example, as
shown at the end of this email?

> vim +/long +47 kernel/time/clocksource-wdtest.c
> 
>     39	
>     40	static struct clocksource clocksource_wdtest_jiffies = {
>     41		.name			= "wdtest-jiffies",
>     42		.rating			= 1, /* lowest valid rating*/
>     43		.uncertainty_margin	= TICK_NSEC,
>     44		.read			= wdtest_jiffies_read,
>     45		.mask			= CLOCKSOURCE_MASK(32),
>     46		.flags			= CLOCK_SOURCE_MUST_VERIFY,
>   > 47		.mult			= TICK_NSEC << JIFFIES_SHIFT, /* details above */
>     48		.shift			= JIFFIES_SHIFT,
>     49		.max_cycles		= 10,
>     50	};
>     51	

------------------------------------------------------------------------

diff --git a/lib/Kconfig.debug b/lib/Kconfig.debug
index e1856030fa66..8f0ad6e4183c 100644
--- a/lib/Kconfig.debug
+++ b/lib/Kconfig.debug
@@ -2573,6 +2573,7 @@ config TEST_FPU
 config TEST_CLOCKSOURCE_WATCHDOG
 	tristate "Test clocksource watchdog in kernel space"
 	depends on CLOCKSOURCE_WATCHDOG
+	depends on HZ >= 100
 	help
 	  Enable this option to create a kernel module that will trigger
 	  a test of the clocksource watchdog.  This module may be loaded

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210704174310.GR4397%40paulmck-ThinkPad-P17-Gen-1.
