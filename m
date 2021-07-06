Return-Path: <clang-built-linux+bncBCJZRXGY5YJBBIPWSGDQMGQE6RSYKRY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x138.google.com (mail-il1-x138.google.com [IPv6:2607:f8b0:4864:20::138])
	by mail.lfdr.de (Postfix) with ESMTPS id B8E2F3BDA78
	for <lists+clang-built-linux@lfdr.de>; Tue,  6 Jul 2021 17:47:46 +0200 (CEST)
Received: by mail-il1-x138.google.com with SMTP id a15-20020a927f0f0000b02901ac2bdd733dsf12776864ild.22
        for <lists+clang-built-linux@lfdr.de>; Tue, 06 Jul 2021 08:47:46 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1625586465; cv=pass;
        d=google.com; s=arc-20160816;
        b=dpzsRVWu5TlOgD9RSDhSKIq4GBtmt895UifTLaXAtJm8yfTfm2JIJMxolXMfp4RPet
         z76E0LtjYyVz1DZYFv4McnhTOGFaWKGBqTZwhwKfp/ljcLUaU/CpcjaoilNJ3I6Q7J3K
         ntBo3AEn8y3bMP3nJ6FyfdM8PWDs2d8892GRMyRMC6jqNyxMT3jvTNbA+MXn/BR0ka7R
         TYg4FvSElwfhZJLuYl1e92RDm7exvI7RTUmNo1sND5AEcpViXNlNODc9rW3D6qvqXOIf
         wyXFR6LG5lPOJtRqrXvRmjO0eXHlfYcufacT/CN9ACfV2ezTf/qRwt1lpxDOLJvICpWZ
         4N5Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:reply-to:message-id:subject:cc:to:from:date
         :sender:dkim-signature;
        bh=ZS9r65v0O0W/iulDtfvG4p0ZKIxSvQZTYQGJrZfLpBk=;
        b=QlkIc55nr2GSrhTrqNz/m/wPNGfy0mK3AP7qRLtcHL/8afro9NQ+PY7kaml+kkRFed
         v2ooGTUQh7HPkJZjIus2KmKtIuI5IkU8qDJ8SZd7i6WbwOg8fGVFFmA4lFj/wRPWJeBa
         J7dcFxUjM8llOQjSA0+XPOE20M9wQMOJ1RBF4X5PrgUYRNJw+ajgcDu4uD1JjDMkCFUW
         PfeLw+BUVWaMU7RUm8vYIb6vgUC+CSaCVfojRS0X2T/0i4dUfQn+AR+2lyoVkfi0cIVZ
         S+wNcPpe4o3I45L2CpXLtGoGC3R1wEvLRUcgbkshg+RfXu8qQ6kK6UlREt0ioZrxpCyS
         7yTA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b="V/hKnDII";
       spf=pass (google.com: domain of srs0=cwsl=l6=paulmck-thinkpad-p17-gen-1.home=paulmck@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom="SRS0=cwsL=L6=paulmck-ThinkPad-P17-Gen-1.home=paulmck@kernel.org";
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:reply-to:references
         :mime-version:content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=ZS9r65v0O0W/iulDtfvG4p0ZKIxSvQZTYQGJrZfLpBk=;
        b=HmIWCzaUFnmhnbsNX28i/RtnW1BEF51vA8+sbhLEyXqppgHXyDRx1I3xNRR6nCFFmK
         BgG/7gtAwodW8DFW1xbI052YooLCJZQz/J1BZilX6zA19cNZ40Mz6FL+dv+lg/Hwawl/
         N5gnpu+Rk0j5mbjooGVKpAstx2aLTJLZSobZhoTMZKoqqZEhfREKIz4cpSaIC0gl7w6m
         b582+V/WQAQD0S/aoKNrpLpWU63XAauE3+LflGpfQvm+WDbMhIl1olbmDPfrQT8Qp4aI
         5n4bVC9owcXclaEvzUUGmbrSI/K3E88OJobsx6C9aZGYi40yKTcQkb38CONz0PNIw1HW
         ON2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :reply-to:references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=ZS9r65v0O0W/iulDtfvG4p0ZKIxSvQZTYQGJrZfLpBk=;
        b=dgP3YVpVKMu66xenhdI+A58I6zgvbDMP7bNaznQ/v5ayb0Eysfddyf0wfDB6oiWSDz
         02bX0GDX5gO6RhmdkCba0OGBJMS850Yb5q1uzvhpl7bc03jKOW+CtfacW7d7+dU9ouk0
         D6ZDxW0MdQzB7q0FminqyTiiCNXmIUKIfK8908TRy0kz4CZj0DQ+cDlXKfGRKKmcqE78
         gjs4lqipBNd6dd2Bh6mJtx7KK3vZY595O5sMmLD5cqOtnO8MVviQ0qkJ5xaHfq4c50iu
         CXPKwJJkLrOF4qvTlgp+LV0ThVOl3IMaD4J/gyZQBaoj52HB9irpLqJG6MEOAfry7Bly
         YK6A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530lsr0caJuX3SjhgP9i36sEqVqnwZqpmtjAMr1NM34yNRGXur2r
	dp3ibGYozedN32QGbOaPoVg=
X-Google-Smtp-Source: ABdhPJwF75Kg0V64RV7XcYrYxIXuX5S8m2VLn+Kf9nq33wzpVLMSAXpZycvDNbTcScgjH8I9qHQrzQ==
X-Received: by 2002:a05:6638:3594:: with SMTP id v20mr17264638jal.25.1625586465630;
        Tue, 06 Jul 2021 08:47:45 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6602:2b10:: with SMTP id p16ls4181698iov.2.gmail; Tue,
 06 Jul 2021 08:47:45 -0700 (PDT)
X-Received: by 2002:a5d:974f:: with SMTP id c15mr15482396ioo.190.1625586465203;
        Tue, 06 Jul 2021 08:47:45 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1625586465; cv=none;
        d=google.com; s=arc-20160816;
        b=unaCUgiXHdpGRTcxbK6I+Nxht1JBtOKAymFtSBMfAComId/RRYoiFDqo4wMLPgBPzp
         +CN1+w0PGeP+A8kDXfLvpe9T6MR68s71twpUfwQplElUHLVpcxoL4DKmCJEQLPFJRusp
         PPBdvY3jwqSDO1FyLx0TCBxkZ1ZI9s8L59vbCdNAWBwhWEeheSO/AsxvMoQcp+/AVdZO
         dEbQ25gY7fPbWZfjOEEHrwvvULbC5YevbA+rRALPEpqvAfEzj3qwAOyW+IHgwESvufQ0
         Fhe9OfvQAzQ8JfzTawcdS4s3eQs0PPGEaPXHN6oPdTwh6WBGhDP7mgm9KT/ekSqb3HlM
         0q3A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:reply-to
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=EsDhRYIH0vh+l/ptf3JzWWPce4GrYeHOh3pdU/WAeGg=;
        b=vTrbrimvyeKqfEbCNgqroRiiCR03q6Cvkw1ytvYUFv2EMSeY15jTf3IOl2bKf7/Tqt
         c+uOpRPvE/Kmxq2iUBJif6q+0Y/VKKJuSMZf8nzIxEdSaIrhtFkvf/TUo0dgCj+Eaomy
         O7AcsHQvfl/E23XHdU48RSAd1nxq0VLXVc/Ge/VqIywCNoWiLytc+WLzgFooFboDNqco
         6v+MmLZqPXqUWwQsoUS1JdEsA4VmsPvHVToGn8uApmtM+HjNq9AgXkrCpULL/CsNS7Fl
         klZEsqVCGbECMQkkpNTMsxfaUnl2MtdA/pcRzOzKRJUPlhPcwKkLNJctwmqepFOmN+S0
         k7DA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b="V/hKnDII";
       spf=pass (google.com: domain of srs0=cwsl=l6=paulmck-thinkpad-p17-gen-1.home=paulmck@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom="SRS0=cwsL=L6=paulmck-ThinkPad-P17-Gen-1.home=paulmck@kernel.org";
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id n16si231202ilt.4.2021.07.06.08.47.45
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 06 Jul 2021 08:47:45 -0700 (PDT)
Received-SPF: pass (google.com: domain of srs0=cwsl=l6=paulmck-thinkpad-p17-gen-1.home=paulmck@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 731F061C1A;
	Tue,  6 Jul 2021 15:47:44 +0000 (UTC)
Received: by paulmck-ThinkPad-P17-Gen-1.home (Postfix, from userid 1000)
	id 458415C08B6; Tue,  6 Jul 2021 08:47:44 -0700 (PDT)
Date: Tue, 6 Jul 2021 08:47:44 -0700
From: "Paul E. McKenney" <paulmck@kernel.org>
To: Rong Chen <rong.a.chen@intel.com>
Cc: kernel test robot <lkp@intel.com>, clang-built-linux@googlegroups.com,
	kbuild-all@lists.01.org, linux-kernel@vger.kernel.org,
	Thomas Gleixner <tglx@linutronix.de>
Subject: Re: [kbuild-all] Re: kernel/time/clocksource-wdtest.c:47:22:
 warning: signed shift result (0x27BC86B00) requires 35 bits to represent,
 but 'long' only has 32 bits
Message-ID: <20210706154744.GB4397@paulmck-ThinkPad-P17-Gen-1>
Reply-To: paulmck@kernel.org
References: <202107040532.wqL30yFp-lkp@intel.com>
 <20210704174310.GR4397@paulmck-ThinkPad-P17-Gen-1>
 <254ab0ec-2c25-29fd-cbe1-eaf2bc135326@intel.com>
 <20210705152107.GV4397@paulmck-ThinkPad-P17-Gen-1>
 <a10605cb-8de4-9da3-bda7-04f82e6fabe7@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <a10605cb-8de4-9da3-bda7-04f82e6fabe7@intel.com>
X-Original-Sender: paulmck@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b="V/hKnDII";       spf=pass
 (google.com: domain of srs0=cwsl=l6=paulmck-thinkpad-p17-gen-1.home=paulmck@kernel.org
 designates 198.145.29.99 as permitted sender) smtp.mailfrom="SRS0=cwsL=L6=paulmck-ThinkPad-P17-Gen-1.home=paulmck@kernel.org";
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

On Tue, Jul 06, 2021 at 08:11:07AM +0800, Rong Chen wrote:
> 
> 
> On 7/5/21 11:21 PM, Paul E. McKenney wrote:
> > On Mon, Jul 05, 2021 at 03:47:09PM +0800, Rong Chen wrote:
> > > 
> > > On 7/5/21 1:43 AM, Paul E. McKenney wrote:
> > > > On Sun, Jul 04, 2021 at 05:42:36AM +0800, kernel test robot wrote:
> > > > > tree:   https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git master
> > > > > head:   303392fd5c160822bf778270b28ec5ea50cab2b4
> > > > > commit: 1253b9b87e42ab6a3d5c2cb27af2bdd67d7e50ff clocksource: Provide kernel module to test clocksource watchdog
> > > > > date:   11 days ago
> > > > > config: mips-randconfig-r015-20210702 (attached as .config)
> > > > > compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project 9eb613b2de3163686b1a4bd1160f15ac56a4b083)
> > > > > reproduce (this is a W=1 build):
> > > > >           wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
> > > > >           chmod +x ~/bin/make.cross
> > > > >           # install mips cross compiling tool for clang build
> > > > >           # apt-get install binutils-mips-linux-gnu
> > > > >           # https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=1253b9b87e42ab6a3d5c2cb27af2bdd67d7e50ff
> > > > >           git remote add linus https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git
> > > > >           git fetch --no-tags linus master
> > > > >           git checkout 1253b9b87e42ab6a3d5c2cb27af2bdd67d7e50ff
> > > > >           # save the attached .config to linux build tree
> > > > >           COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=mips
> > > > > 
> > > > > If you fix the issue, kindly add following tag as appropriate
> > > > > Reported-by: kernel test robot <lkp@intel.com>
> > > > > 
> > > > > All warnings (new ones prefixed by >>):
> > > > > 
> > > > > > > kernel/time/clocksource-wdtest.c:47:22: warning: signed shift result (0x27BC86B00) requires 35 bits to represent, but 'long' only has 32 bits [-Wshift-overflow]
> > > > >              .mult                   = TICK_NSEC << JIFFIES_SHIFT, /* details above */
> > > > >                                        ~~~~~~~~~ ^  ~~~~~~~~~~~~~
> > > > >      1 warning generated.
> > > > You have CONFIG_HZ_24=y and this test module assumes HZ > 100, as noted
> > > > just above the excerpt below:
> > > > 
> > > > /* Assume HZ > 100. */
> > > > #define JIFFIES_SHIFT   8
> > > > 
> > > > So this is expected behavior.
> > > > 
> > > > Would it help if I gave that comment some teeth, for example, as
> > > > shown at the end of this email?
> > > Hi Paul,
> > > 
> > > I have confirmed that the below change can avoid the warning.
> > Very good, and thank you!  May I add your Tested-by?
> 
> Yes, please.

Applied, thank you!

							Thanx, Paul

> Best Regards,
> Rong Chen
> 
> > 
> > 							Thanx, Paul
> > 
> > > Best Regards,
> > > Rong Chen
> > > 
> > > > ------------------------------------------------------------------------
> > > > 
> > > > diff --git a/lib/Kconfig.debug b/lib/Kconfig.debug
> > > > index e1856030fa66..8f0ad6e4183c 100644
> > > > --- a/lib/Kconfig.debug
> > > > +++ b/lib/Kconfig.debug
> > > > @@ -2573,6 +2573,7 @@ config TEST_FPU
> > > >    config TEST_CLOCKSOURCE_WATCHDOG
> > > >    	tristate "Test clocksource watchdog in kernel space"
> > > >    	depends on CLOCKSOURCE_WATCHDOG
> > > > +	depends on HZ >= 100
> > > >    	help
> > > >    	  Enable this option to create a kernel module that will trigger
> > > >    	  a test of the clocksource watchdog.  This module may be loaded
> > > > _______________________________________________
> > > > kbuild-all mailing list -- kbuild-all@lists.01.org
> > > > To unsubscribe send an email to kbuild-all-leave@lists.01.org
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210706154744.GB4397%40paulmck-ThinkPad-P17-Gen-1.
