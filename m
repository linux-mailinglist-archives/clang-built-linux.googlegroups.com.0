Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBWMQ2GAAMGQEGXIG2LY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x13a.google.com (mail-il1-x13a.google.com [IPv6:2607:f8b0:4864:20::13a])
	by mail.lfdr.de (Postfix) with ESMTPS id D4557308BA3
	for <lists+clang-built-linux@lfdr.de>; Fri, 29 Jan 2021 18:39:38 +0100 (CET)
Received: by mail-il1-x13a.google.com with SMTP id n12sf8250028ili.15
        for <lists+clang-built-linux@lfdr.de>; Fri, 29 Jan 2021 09:39:38 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1611941978; cv=pass;
        d=google.com; s=arc-20160816;
        b=QMW6kRJWHJhfkXxuffWx2AAiQyMQGfVlTUFlciqXGNMZ8sYQSaW0D/KK92AV1Kd1+0
         tDiV+TFk/HMXQT4I7PBQB+/T1EvfzSy+IEIS2830n11GaFGAufcLJkVO2Wnk+xOQsISo
         ntqAsWlr6zu4vr97DTBO6OG1u6QkI+QHTDcyhMtwi0+CyWJfbm1lzKmKak6EzVyRTwl0
         gX63ZqPLTRoHvn7btuTxvrxUwfLUB0KWbnrJiMf1ogyQ3QRf/oCIjNrZy9wd8qev8wqg
         A9wXRkSluqHk3BGBrQq9maQZnvfWj7Gj8M8TmetT5J/k5IDluc0eQ/Jwpb3hlXSBzy8M
         vArg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=hJoX3C3nXK02EqEISNr+kS9yaGeby+dVBiHbzj1xKkI=;
        b=dsgzpExOtpqYKcP2Vjk677ArFwuDgIiWObBSzgQ7Ox8IcGZQ1QaeuEm+YRPxQGgxim
         nRkHBMqADtzXvy/1hksbH4fqoKWc8YZPbSOoev77fye786x/bNyWPIvJCD0NyIzJeYiM
         b1J19Fu9rC2AFOs+5ntUY28Wto0w8OHx6rB6jbGbft7Evu2lNXUXAX75a4t0Bi5N8Xcj
         Swwqd3ny0tzZMPOPxafKihSzVlVtowtMhBR01AduvPSvovHkBr/mQtLXfJt3AKaRnzFt
         uuI2ehZY8ldbDbbbdEnkpmFAbEL8o1+aJKAKcrF+d5hZqNW2GnlEgSutzPMFPODp/smp
         s9Ng==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=SWISnX+C;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=hJoX3C3nXK02EqEISNr+kS9yaGeby+dVBiHbzj1xKkI=;
        b=teasimDxUYCLUyfgnvA4Zxd7ezkUq0ou67H491yXySHOXthmL4ztNHav9r81q7MOu+
         +tZVuWzRLANsgOD49jYxgwzsV9Gx2XRtRrowX7XD9kmB9vgUeoFpdnwjhritgBzSMlR7
         6ZznyW/j9g8u6EtZC9QbtHNdE/Si1d6dOyEId88GacGLxro119DOUae7tiQV5YWKumZ3
         tFAEtuZqFQWEAZ3ElSef0BiLHpjVWlfUEcvLlooqHgCsI80eAuqTrbRUUfqyB+m95o8n
         Z3JeA7U0CdUTkpMvwF/tqiG9ZEeMhzuWkyM1JK7QMQ8Txi4unUYFPcfK58k4KjSmhehl
         MgLw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=hJoX3C3nXK02EqEISNr+kS9yaGeby+dVBiHbzj1xKkI=;
        b=HfQvOaO5ffXVCGi5D0eLPivWZ4+suXvHV+by/IQfo9AaOImCK3U4AMhTkToXP9C+dP
         UXURX9oVboAGT3C0GfwhhU/RIL2p2nhuZlILgKWlKnWzvlZnwW4iaJfzOtlQ6FG1zgoS
         vGpi2Dfdv2Q9xqgLBZnDc4gKn+ucC8Pp0/dz3eYsISY+NMFKWBMg3m6MnQkr/NGI99OV
         8IOQ1I80Gq3qlfLvck05C0AqTjxdwGwmeaOxXjVAfmgQYPQnlQd+21hfWrjlxBZEzmqB
         edrlg0SH2JTSRVnEKc0fa/+fJPtiarArdEhM0x5uS39+Aix+SODWiljmlw9La6KCCkuE
         pdAg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531+/Ko52GN2J252MhazCJIax6HjMANtAMEZEusdjCTMF0bPuNPE
	oSLSvvQYYrpp0zUgQln8r+s=
X-Google-Smtp-Source: ABdhPJyMD6kz0EblRr9pRbyPQRQ1BWziP97M6u34OvV5H8c85X0dUu3lbc0D/XQCSt6TaXlGYmMzyw==
X-Received: by 2002:a92:9510:: with SMTP id y16mr4849328ilh.26.1611941977681;
        Fri, 29 Jan 2021 09:39:37 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6638:d81:: with SMTP id l1ls1181019jaj.2.gmail; Fri, 29
 Jan 2021 09:39:37 -0800 (PST)
X-Received: by 2002:a02:bb99:: with SMTP id g25mr5024883jan.140.1611941977152;
        Fri, 29 Jan 2021 09:39:37 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1611941977; cv=none;
        d=google.com; s=arc-20160816;
        b=CyUxyZDdJOoQz5Wf7TNK+R3mxneRFoiiZNxj4JFxzvtd/MvWq1pAQDo0yEoE5AKrj8
         ElmLJ5Y+37OQY7mytZfLQzmgt52E50ROwcXlKyehdWlxquR4agtFGec0HT1/vBPGa8iW
         zkX8EQo9CCO1xmgUApE5TJRlWRLyV9cFJ6YUTyWO0D/kVAMZrCRk98/cSnmUxGgRkchU
         4QOYGmZdA72vecsPavTghO9FN56zbw9zQkwd6+RHdJjKp6PrtGkKO35IU2mo6lio08dF
         9BwOMSD08rdimgbc0yb04pF4Bw+a7T+iBDS4PC0pfYG35Tvo4KEgMg4UdbCDatjkHLsh
         nmgA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=VdCmMuajoElQ/8IfUVBed/jrgv/GG15VmgoD6kk5YrE=;
        b=rptuFCXqRCzO6oT4qYWb2x87hPndvcFgdQEwGgAvOSKMHdM58IbAYYvq7sASR1Txho
         yjBNxoRdCtFnt7VP6JPhN0nVPua5DNivOTB3LFN5UX6UwuLb54QFgjpdOsTYiCAMkPHa
         OLqq+UzQHNhxLZXxRKtJyNpgMJd60DfpOwgOgsNElBdXBkj16zPvYFK/ZwnJcGyzJzjQ
         DNFuDbLuPqlMOPgrK1+OrUO3zcp0EJIUYFVyYJBrixKfDj3rxXg1/cuhkT+72o43MS7V
         5yCXOw+DbQR8lkSiTuVXJcIfQyExRRwIDb0TrakWbOHq/9t7OmodKeTwGILeTGWE3OZJ
         XYKQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=SWISnX+C;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id d24si502206ioi.3.2021.01.29.09.39.36
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 29 Jan 2021 09:39:37 -0800 (PST)
Received-SPF: pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id F225F64E04;
	Fri, 29 Jan 2021 17:39:35 +0000 (UTC)
Date: Fri, 29 Jan 2021 10:39:34 -0700
From: Nathan Chancellor <nathan@kernel.org>
To: James Bottomley <James.Bottomley@HansenPartnership.com>
Cc: kernel test robot <lkp@intel.com>, kbuild-all@lists.01.org,
	clang-built-linux@googlegroups.com
Subject: Re: aarch64-linux-gnu-ld: warning: orphan section `.eh_frame' from
 `security/keys/trusted-keys/tpm2key.asn1.o' being placed in section
 `.eh_frame'
Message-ID: <20210129173934.GA2433246@localhost>
References: <202101292235.TSfb52uc-lkp@intel.com>
 <aa8e8553c1e94e2b2225aa66557f6a49886b0203.camel@HansenPartnership.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <aa8e8553c1e94e2b2225aa66557f6a49886b0203.camel@HansenPartnership.com>
X-Original-Sender: nathan@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=SWISnX+C;       spf=pass
 (google.com: domain of nathan@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=nathan@kernel.org;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=kernel.org
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

On Fri, Jan 29, 2021 at 09:20:52AM -0800, James Bottomley wrote:
> On Fri, 2021-01-29 at 22:27 +0800, kernel test robot wrote:
> > tree:   
> > https://github.com/0day-ci/linux/commits/UPDATE-20210129-183238/James-Bottomley/TPM-2-0-trusted-key-rework/20210129-175906
> > head:   d98ce41d6c32fa78e380385c6e146f752e4d3809
> > commit: af175fe469c6f0bdd1e14a14a3d107e7adb122bb security: keys:
> > trusted: use ASN.1 TPM2 key format for the blobs
> > date:   4 hours ago
> > config: arm64-randconfig-r023-20210129 (attached as .config)
> > compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project
> > 275c6af7d7f1ed63a03d05b4484413e447133269)
> > reproduce (this is a W=1 build):
> >         wget 
> > https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross
> > -O ~/bin/make.cross
> >         chmod +x ~/bin/make.cross
> >         # install arm64 cross compiling tool for clang build
> >         # apt-get install binutils-aarch64-linux-gnu
> >         # 
> > https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=af175fe469c6f0bdd1e14a14a3d107e7adb122bb
> >         git remote add linux-review 
> > https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git
> >         git fetch --no-tags linux-review UPDATE-20210129-
> > 183238/James-Bottomley/TPM-2-0-trusted-key-rework/20210129-175906
> >         git checkout af175fe469c6f0bdd1e14a14a3d107e7adb122bb
> >         # save the attached .config to linux build tree
> >         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross
> > ARCH=arm64 
> > 
> > If you fix the issue, kindly add following tag as appropriate
> > Reported-by: kernel test robot <lkp@intel.com>
> > 
> > All warnings (new ones prefixed by >>):
> > 
> >    aarch64-linux-gnu-ld: warning: orphan section `.eh_frame' from
> > `fs/dlm/rcom.o' being placed in section `.eh_frame'
> 
> What's the problem here?  the file you're complaining about is pure
> machine generated so I can't alter its .c anyway and this looks like
> some type of linker problem anyway.
> 
> Let's start with what does the error actually mean?

Unfortunately, this is a clang bug:
https://github.com/ClangBuiltLinux/linux/issues/1069

$ curl -LSs https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org/message/OWC2ZF3C6UTA6ND74UJVSJ4BRRKFGJKC/attachment/2/config.gz | gzip -d | rg "GCOV"
# GCOV-based kernel profiling
CONFIG_GCOV_KERNEL=y
CONFIG_ARCH_HAS_GCOV_PROFILE_ALL=y
CONFIG_GCOV_PROFILE_ALL=y
# end of GCOV-based kernel profiling

I will try to send out that workaround today so that we stop pinging
developers about it (and it would be nice if the 0day folks could just
send warnings of this nature to our mailing list only).

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210129173934.GA2433246%40localhost.
