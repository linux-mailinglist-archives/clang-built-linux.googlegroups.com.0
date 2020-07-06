Return-Path: <clang-built-linux+bncBAABBZ67RX4AKGQEWHQ52BY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3d.google.com (mail-yb1-xb3d.google.com [IPv6:2607:f8b0:4864:20::b3d])
	by mail.lfdr.de (Postfix) with ESMTPS id 580C0215EC3
	for <lists+clang-built-linux@lfdr.de>; Mon,  6 Jul 2020 20:39:36 +0200 (CEST)
Received: by mail-yb1-xb3d.google.com with SMTP id p22sf43838006ybg.21
        for <lists+clang-built-linux@lfdr.de>; Mon, 06 Jul 2020 11:39:36 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1594060775; cv=pass;
        d=google.com; s=arc-20160816;
        b=v7iazhmVEURs/Abk8hcRrWcq7jO1N9xi9s4C9y2dJqx+UNmcZP0LOY+Ze6l6URyU+L
         xLANVmfdvU7nzdC65l9bWIAM9hi2pD3G8SDV2kx+vkE61JWmI2DbkvUUd3O9cQswmJD8
         QZP43kWPQZNDwMuGv2qyBt/3hZdCkZHZfjSWpB9i68fqv68HwmWMlcStW+Frty5UKFJk
         e+kLVzW7tDmQFsFwq643mw22fSiNN04PxbGCgFnfrKFGTNcVw5XMHMyIETizSC15gJgb
         qmWpGzTrsaJfwGhH+Vs/hhxYX/1QFqGqeBZKyxLQF+xW0fkd2psTZAvqU21yRfwQKZV/
         yrDg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:reply-to:message-id
         :subject:cc:to:from:date:sender:dkim-signature;
        bh=Pjh/sDu42EfoU8jViJn584cQvsTOX6M5xjItcvuYJTo=;
        b=NZXHy2YUDXsVDRkx/qJY9wQOk8xke/XHeZQfy43Hhup/wo7jSI6sfH5gFmskkFBZbW
         JJEzIhqsW6A8UiFt7/4MAe98vG8Eni5yJuY5pP5UDCDUBD+zTNmFs9TFieG6u6/j2ll3
         ST9diAfx9LInAEh/ijRjERIw5vjP0c0866TNg3GUJ5zrqr2DrgdsXGhXk+aFh0A7FKVn
         FclfSneox+/enwWfDrujymvaaNEVLikqdZBZ1YzpsxrxwEAGdE+uZSnckUVfGAhnzYFE
         ElceLHspQSdJto17ISH3kqGWATVYJ859M4aKGDaxJKgIzLhLq5379w5i5meSbFDXPnmX
         Aqdg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=DxcjcPLX;
       spf=pass (google.com: domain of srs0=6sad=ar=paulmck-thinkpad-p72.home=paulmck@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom="SRS0=6SaD=AR=paulmck-ThinkPad-P72.home=paulmck@kernel.org";
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:reply-to:references
         :mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Pjh/sDu42EfoU8jViJn584cQvsTOX6M5xjItcvuYJTo=;
        b=ETD1mTyJe5gwq9nCHs/vPSK9v3eC16NMYz4WdbTxF18vq//Cno39XMPqY3HZTSfQwx
         RMT1bS12gQLmGLXElV7ITAAOIsuOaje+7JwygjVrUbKle5Aq9ZpTaBd+j9dJdzBLm1Ki
         7b3cP7VgyZDTUKLuGjOAHOrxCazpAy0sL8BnVO2Y819xfaykuQQYjYgu6wMTgATqSz2A
         cdft1rMoBT1VgPi6ouZfRF0CQpH/JtW5Mq9gmts3iomqgK8+EHC3QecD4PN/R1tleDL5
         /RAvCktnSrPJJ2kpOeK0YtX3YByh6aFwW0hRyibiCPitQmL+PxKp88DRHB0Im2uQSBdm
         EztA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :reply-to:references:mime-version:content-disposition:in-reply-to
         :user-agent:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Pjh/sDu42EfoU8jViJn584cQvsTOX6M5xjItcvuYJTo=;
        b=Cm47uvMS2s4cGRv1CN41L4oc75u1MoVqnVrHdxv9tFnYuuqlWa3812argHSg05awAe
         u5790/43TxTbOsRL6gwsa8Mgz2h5UpBw41/8VueLfijnj1gAT/btvJWuYDR851x8Qnhb
         joEJwgYPJ+xo573YWP6twiZ2HTAlGJeyhTszekeDxlT/FSWSWkhQWfTMgg+xqeZDkD4B
         9IfR2p8W0Ie1MombN5gf+PxKzDJH99hvInFtad8cqGfvWZUG3ApgLlqV/CbQTitqPiXH
         B1zaCqYS/0d27HUpRgsQVI1+CqjABXW6Ygm6uGaYAXblDk0ZCIGiG6p/KLW3NJ2Bcu/c
         ll9Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530B5zRGWUHRgucXoKCid5/eeIDUbtjGmJwo3jDUPHrHLp2KWwAC
	hGVJacMzrjvTA24s3zrTGCU=
X-Google-Smtp-Source: ABdhPJzUBj9QsdQEBnpqPiCXSw2E8zKSPrwNabNsqYiLpsSzF9oh2k5ZN21OyzfP0eT7roIWOdjL0A==
X-Received: by 2002:a25:d0c8:: with SMTP id h191mr84438500ybg.457.1594060775236;
        Mon, 06 Jul 2020 11:39:35 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:d603:: with SMTP id n3ls30365ybg.3.gmail; Mon, 06 Jul
 2020 11:39:34 -0700 (PDT)
X-Received: by 2002:a25:d652:: with SMTP id n79mr88305834ybg.406.1594060774925;
        Mon, 06 Jul 2020 11:39:34 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1594060774; cv=none;
        d=google.com; s=arc-20160816;
        b=MUmngSP11dbURYFATCg/RqXx/fSj/fXyWVys3Lx1u2vVCU/DLAuGKugrGY3FtCiPEO
         ZHgOnSSNUsSP1BdxysCtMn0CxKa4Bl4JwCFIVTlQlv8QtMONr5ktFXL06HOtxSDoUEd9
         +aGo65EXeYMFCG5ZUptfg5KCoRqRdYjJfX3CLO2LSRGV2oVI0l//+59k5kTWHve+klE2
         ov0j1ElmJRhM4zUFuo+cWmOzRnnyZalQuwwI3coh4ghhWTjs/vHhjPfCXZA4TcXX4S69
         0P8U0x/OxFMtTUVhnmo58vtfOoQQPTd+8+JI7frQ4AYGeUBcgzxEnSLwFwdxk9cG+frS
         HZtg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :reply-to:message-id:subject:cc:to:from:date:dkim-signature;
        bh=iPdb4W4hrefFtCXMXUC3UBF8LC9CE5w545vWZXw0VOI=;
        b=iUyxQGdpfTuHiCSDLwUGTG7XNL2E9oiZBo/Qa27Jxda3h3cvIjpddQToORwvBM2Du2
         1FpgOSAm1vQSYWmJdsM+KS7UXSCxCNr4VPqnMEfQ81tA0ZlAu/He/S0NgkKmouSof3mf
         bfKHJA9N7/pNFnJfXUiuwMRe1n/65/OB1+MoI84ETvtYgBePntehJpzSZEBMFbOdV7QX
         vyyA/+Zg45m8UTmrfjVLOcuEYvjtABzu4z4Nh2DLPUco17X96D1AyrX7xfpaa9l5vOa5
         nt1ShFGrOAdLpiBUoFC7RMKMgmeJLQ1pMsfxyN4jtozOFZ+dRnyAV1zq9t6xFbWFgS1x
         R1yg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=DxcjcPLX;
       spf=pass (google.com: domain of srs0=6sad=ar=paulmck-thinkpad-p72.home=paulmck@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom="SRS0=6SaD=AR=paulmck-ThinkPad-P72.home=paulmck@kernel.org";
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id b36si748283ybj.1.2020.07.06.11.39.34
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 06 Jul 2020 11:39:34 -0700 (PDT)
Received-SPF: pass (google.com: domain of srs0=6sad=ar=paulmck-thinkpad-p72.home=paulmck@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from paulmck-ThinkPad-P72.home (50-39-111-31.bvtn.or.frontiernet.net [50.39.111.31])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id DC023207BB;
	Mon,  6 Jul 2020 18:39:33 +0000 (UTC)
Received: by paulmck-ThinkPad-P72.home (Postfix, from userid 1000)
	id C7CAE3522637; Mon,  6 Jul 2020 11:39:33 -0700 (PDT)
Date: Mon, 6 Jul 2020 11:39:33 -0700
From: "Paul E. McKenney" <paulmck@kernel.org>
To: Peter Zijlstra <peterz@infradead.org>
Cc: Marco Elver <elver@google.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Sami Tolvanen <samitolvanen@google.com>,
	Masahiro Yamada <masahiroy@kernel.org>,
	Will Deacon <will@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Kees Cook <keescook@chromium.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Kernel Hardening <kernel-hardening@lists.openwall.com>,
	linux-arch <linux-arch@vger.kernel.org>,
	Linux ARM <linux-arm-kernel@lists.infradead.org>,
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
	LKML <linux-kernel@vger.kernel.org>, linux-pci@vger.kernel.org,
	"maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>
Subject: Re: [PATCH 00/22] add support for Clang LTO
Message-ID: <20200706183933.GE9247@paulmck-ThinkPad-P72>
Reply-To: paulmck@kernel.org
References: <20200701114027.GO4800@hirez.programming.kicks-ass.net>
 <20200701140654.GL9247@paulmck-ThinkPad-P72>
 <20200701150512.GH4817@hirez.programming.kicks-ass.net>
 <20200701160338.GN9247@paulmck-ThinkPad-P72>
 <20200702082040.GB4781@hirez.programming.kicks-ass.net>
 <20200702175948.GV9247@paulmck-ThinkPad-P72>
 <20200703131330.GX4800@hirez.programming.kicks-ass.net>
 <20200703144228.GF9247@paulmck-ThinkPad-P72>
 <20200706162633.GA13288@paulmck-ThinkPad-P72>
 <20200706182926.GH4800@hirez.programming.kicks-ass.net>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200706182926.GH4800@hirez.programming.kicks-ass.net>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Original-Sender: paulmck@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=DxcjcPLX;       spf=pass
 (google.com: domain of srs0=6sad=ar=paulmck-thinkpad-p72.home=paulmck@kernel.org
 designates 198.145.29.99 as permitted sender) smtp.mailfrom="SRS0=6SaD=AR=paulmck-ThinkPad-P72.home=paulmck@kernel.org";
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

On Mon, Jul 06, 2020 at 08:29:26PM +0200, Peter Zijlstra wrote:
> On Mon, Jul 06, 2020 at 09:26:33AM -0700, Paul E. McKenney wrote:
> 
> > And perhaps more constructively, we do need to prioritize address and data
> > dependencies over control dependencies.  For one thing, there are a lot
> > more address/data dependencies in existing code than there are control
> > dependencies, and (sadly, perhaps more importantly) there are a lot more
> > people who are convinced that address/data dependencies are important.
> 
> If they do not consider their Linux OS running correctly :-)

Many of them really do not care at all.  In fact, some would consider
Linux failing to run as an added bonus.

> > For another (admittedly more theoretical) thing, the OOTA scenarios
> > stemming from control dependencies are a lot less annoying than those
> > from address/data dependencies.
> > 
> > And address/data dependencies are as far as I know vulnerable to things
> > like conditional-move instructions that can cause problems for control
> > dependencies.
> > 
> > Nevertheless, yes, control dependencies also need attention.
> 
> Today I added one more \o/

Just make sure you continually check to make sure that compilers
don't break it, along with the others you have added.  ;-)

							Thanx, Paul

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200706183933.GE9247%40paulmck-ThinkPad-P72.
