Return-Path: <clang-built-linux+bncBD4LX4523YGBBONV7DZQKGQEIUNJFBI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x440.google.com (mail-pf1-x440.google.com [IPv6:2607:f8b0:4864:20::440])
	by mail.lfdr.de (Postfix) with ESMTPS id 12FBB1959B1
	for <lists+clang-built-linux@lfdr.de>; Fri, 27 Mar 2020 16:24:43 +0100 (CET)
Received: by mail-pf1-x440.google.com with SMTP id h125sf8548089pfg.3
        for <lists+clang-built-linux@lfdr.de>; Fri, 27 Mar 2020 08:24:43 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1585322681; cv=pass;
        d=google.com; s=arc-20160816;
        b=OWK4Xyo5QdPaVRiPdt3b8rt3JQqDzrFjQOhYQL5Eb7aCzKeZpgjGiYUKetzfCrcjdA
         nxADJcydx0Kf0+QqIyPFJf5Yg8254G2IBQPXLpi41k4ZxK2ycJLF9ClDvgUGNlfomUVL
         +Z2/Jj2Dko1klKbtcCagGDIYMFDwIqPvPdTAQfxgEw06XmwMosKBhVa0SSKst4v1QfWN
         wT6TbqjNfN8iOt8+Vvjdj8rs3kmIdvLk3g49UA/EXp4xsZ5ogFxgkBNPi5VfPx1S4KVW
         1whaOheBmFa1XSZWaeDyItEnWiLZb3+DJtn5yUdq8GdHGy2kD5aEr+YGgxgTog4UYpHt
         yCug==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=fDZjpuox9K+HFThpWM42afZHojaVeGcjjsjnq3kXZ9M=;
        b=bddKqmbbZX+BNjIDLkZxPwU1nFy3zU9KMMJvv0ci4atwlN0+xnySGE6EmkQ55r+/gr
         DrhK3Ib1CxZl1FPkvoQGtYRsZIJbkh6SlekuMI0+rB8xsY7RACqEZB5Aex7yJopLP++b
         4lG3i8f06FWuwI02Fgis9PxEYBSo+oSBiq4QQiQUaDGnMRbUBwhKpbA3qIrDW48AeHC5
         +TnDLr+tFl50yuzBOBtInlLBn9JDJCtmzjzTtb3Rw4q2f3b1x378CbCX56H5dO7hdmDZ
         nLQ3w++MALj6Echrwn0YSoWFJ6mYmE9FXqDg2Lls3vX072L+hSFkQBkFrdINPbZQSWn8
         UZ1w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of segher@kernel.crashing.org designates 63.228.1.57 as permitted sender) smtp.mailfrom=segher@kernel.crashing.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=fDZjpuox9K+HFThpWM42afZHojaVeGcjjsjnq3kXZ9M=;
        b=CihkC8013D5SU43LgL3/IFD0kOmiSBlMUm1M+G2awiMR8YUHbKq14dx2L1BPKiMUr1
         HKjMSkP7qInsjBrdWWA+z84bgr3yUjt1PJ9ORI9WlD6bA9Kxbil9gm/2zfqqXc+1+hGG
         rpRVhc/MaK7qEC6e4dR0Q5Yj7+Hd2tS61QDcWmzmStNecIEdugxvFgnqD84+NwRuoWKj
         UWXrbU6Ap140Oxq3IaKHHj61FxuMWcODvJiNDp6wNwC0o3dmDkdWGDOs7d4WsPj3oONN
         fxvlG14WQqubcBlSI3DGopQiHbuAv2vb8HC9JUIGK0NcyEIUUQUnLfCCGcEZ7nPWOizx
         M3uA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=fDZjpuox9K+HFThpWM42afZHojaVeGcjjsjnq3kXZ9M=;
        b=SBWf74qafF6JjAYorxgh1+IRf2KSLm2v0b4kIE+K4pdrOyIC9x6AeQNwQCwbTuiax/
         kRKAbConzpWHLYd4ImlzrH0pR8OPzz69ubLC/9plA/ZVJH4c7J0UHekEiYxEXToDl2WG
         1BDObkpFtpFgR76Hu13ICEN2/IWSgQMC2TcyGirq+w5UhjaobEvcuMU+2hYYaos+alah
         /hQp3hvDxPiG+46Fk9slJYbLnRtZsDG0afQVKxko2hSFVdS18A0RQ0WU0IeVUUgqD0Xb
         nBpgiCQ6l3Hmle7LPWupngUBIUxWF4chQf5fKnZ8+mVjs3IzCbSOXTfF9riFuoXW38Hx
         6vvw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ3Yj0Ohd7WgK6D1g6LpW/ycGjSg6r4uSe6GvMVzgQa2EQT6MBUh
	sTg/bI93kkQRB63DaTWSNiU=
X-Google-Smtp-Source: ADFU+vtwIEbn8/87xQxMjOAHdb4G0vqM/zbm6d4dNxNSLuiuhCi03xOrbqGtfuL0ketN3K7jp3zXSQ==
X-Received: by 2002:a63:1003:: with SMTP id f3mr14657518pgl.450.1585322681516;
        Fri, 27 Mar 2020 08:24:41 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:bd4b:: with SMTP id b11ls6692792plx.4.gmail; Fri, 27
 Mar 2020 08:24:41 -0700 (PDT)
X-Received: by 2002:a17:902:b604:: with SMTP id b4mr13227942pls.340.1585322680908;
        Fri, 27 Mar 2020 08:24:40 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585322680; cv=none;
        d=google.com; s=arc-20160816;
        b=FF6qxK8TW4JEiSmGMoDOiFUyztkUgHsGArLuv9i91Q+KloJTqRjunLMJbhLw8id21f
         +Xo5aOFwMuqTJ59dTCZehxGYYU+if2wYvW4c2bFu+aPnDONKQr53K19LjYjKsQunGh4b
         cvpR1rThe9o/8zwuPZ/3bB7qFuy/hZ16FNorsdEsHx0zFn+NMLzKI0+Segks2Ivk9b74
         FmTTf1UbxpOjIQfTo4xxbilUr9GtUIF0J0hseI+WYobYqgXxpKvyWTtEd+vId19mRDkE
         JTJWUD16qtaJ7Qa04jgBwm9XeOEh4V31e8DQwwHV2l/Q5d70LPJqRH+XixMletUUxqJL
         kbPQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=sJ6+oOAa9gVa0WcMyjl5u0RbzvFBzBbUzL0H3Kn1v3s=;
        b=B0GX9zETEyX9N6eZyk0cGp51ubu3b/FuaZUWaunBs+RhZv+g1AkjIxDO3SsilvpI2r
         TiOer8JXu7hMSKbb5if6758RYZN/F3b2hP+lCNFmmRj1BbVSuhRZUl3PD5N4wSStqjE1
         ljktqg0YJPz7QRIfhfxW/EAIgrBca5/E+w5BOAuUU7D5H1CuaIWhnunFTRsTbevL3k1d
         /7a/DlOeTftnfI08Q8NnSEy8Gw+tU2Ibtd/ZcVdYX/chna07pPkQf5dC8RfnhlZFkCVH
         3dcsZu2PJFob00O2VNwlfXTQ5A9NdkFYyxpOVsTranJBGUV4j8cPJFJ1suc3KON804Ds
         TB3A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of segher@kernel.crashing.org designates 63.228.1.57 as permitted sender) smtp.mailfrom=segher@kernel.crashing.org
Received: from gate.crashing.org (gate.crashing.org. [63.228.1.57])
        by gmr-mx.google.com with ESMTP id 62si337581pgf.0.2020.03.27.08.24.40
        for <clang-built-linux@googlegroups.com>;
        Fri, 27 Mar 2020 08:24:40 -0700 (PDT)
Received-SPF: pass (google.com: domain of segher@kernel.crashing.org designates 63.228.1.57 as permitted sender) client-ip=63.228.1.57;
Received: from gate.crashing.org (localhost.localdomain [127.0.0.1])
	by gate.crashing.org (8.14.1/8.14.1) with ESMTP id 02RFOTOH014259;
	Fri, 27 Mar 2020 10:24:29 -0500
Received: (from segher@localhost)
	by gate.crashing.org (8.14.1/8.14.1/Submit) id 02RFOSQa014258;
	Fri, 27 Mar 2020 10:24:28 -0500
X-Authentication-Warning: gate.crashing.org: segher set sender to segher@kernel.crashing.org using -f
Date: Fri, 27 Mar 2020 10:24:28 -0500
From: Segher Boessenkool <segher@kernel.crashing.org>
To: Fangrui Song <maskray@google.com>
Cc: linuxppc-dev@lists.ozlabs.org, Alan Modra <amodra@gmail.com>,
        Joel Stanley <joel@jms.id.au>, Michael Ellerman <mpe@ellerman.id.au>,
        Nick Desaulniers <ndesaulniers@google.com>,
        clang-built-linux@googlegroups.com
Subject: Re: [PATCH v2] powerpc/boot: Delete unneeded .globl _zimage_start
Message-ID: <20200327152428.GF22482@gate.crashing.org>
References: <20200325164257.170229-1-maskray@google.com> <20200326221625.GA22482@gate.crashing.org> <20200326222612.zbbiyi75emq6npzn@google.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200326222612.zbbiyi75emq6npzn@google.com>
User-Agent: Mutt/1.4.2.3i
X-Original-Sender: segher@kernel.crashing.org
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of segher@kernel.crashing.org designates 63.228.1.57 as
 permitted sender) smtp.mailfrom=segher@kernel.crashing.org
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

On Thu, Mar 26, 2020 at 03:26:12PM -0700, Fangrui Song wrote:
> On 2020-03-26, Segher Boessenkool wrote:
> >On Wed, Mar 25, 2020 at 09:42:57AM -0700, Fangrui Song wrote:
> >>.globl sets the symbol binding to STB_GLOBAL while .weak sets the
> >>binding to STB_WEAK. GNU as let .weak override .globl since binutils-gdb
> >>5ca547dc2399a0a5d9f20626d4bf5547c3ccfddd (1996). Clang integrated
> >>assembler let the last win but it may error in the future.
> >
> >GNU AS works for more than just ELF.  The way the assembler language
> >is defined, it is not .weak overriding .globl -- instead, .weak sets a
> >symbol attribute.  On an existing symbol (but it creates on if there is
> >none yet).
> >
> >Clang is buggy if it does not allow valid (and perfectly normal)
> >assembler code like this.
> 
> https://sourceware.org/pipermail/binutils/2020-March/110399.html
> 
> Alan: "I think it is completely fine for you to make the llvm assembler
> error on inconsistent binding, or the last directive win.  Either of
> those behaviours is logical and good, but you quite possibly will run
> into a need to fix more user assembly.

This would be fine and consistent behaviour, of course.  But it is not
appropriate if you want to pretend to be compatible to GNU toolchains.

Which is exactly why you want this kernel patch at all.  And the kernel
can (in this case) accommodate your buggy assembler, sure, but are you
going to "fix" all other programs with this "problem" as well?


Segher

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200327152428.GF22482%40gate.crashing.org.
