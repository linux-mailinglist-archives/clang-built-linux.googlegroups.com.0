Return-Path: <clang-built-linux+bncBDY3NC743AGBB2EV3TVAKGQE72WAUPI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x73a.google.com (mail-qk1-x73a.google.com [IPv6:2607:f8b0:4864:20::73a])
	by mail.lfdr.de (Postfix) with ESMTPS id 75F6590917
	for <lists+clang-built-linux@lfdr.de>; Fri, 16 Aug 2019 21:58:33 +0200 (CEST)
Received: by mail-qk1-x73a.google.com with SMTP id o68sf6349947qkb.12
        for <lists+clang-built-linux@lfdr.de>; Fri, 16 Aug 2019 12:58:33 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1565985512; cv=pass;
        d=google.com; s=arc-20160816;
        b=UoBpjKtLDCzX/n01/ZYCvrP9RkL2JHGSlICVUCJCHECBI9ZFsrzeXvye5uv7JFgOoU
         h/k9eMGgDE3YkZtUbQCjI10mZMK3Gju6+8TJ+JZ1FZ5hos/eUcyG0RSRMAqsUYWJqTcr
         cMOj9duiH20rra0soE6E5pNyLloLAUStC1Q2bD9Q3uN4PXt6LLJqjzILTl85/fdsz62J
         1fT+a12MhVBsgkJj9DB1yoQUYQNdDqFCPFX5unOqF/d3a1L2/e9oHScOCEUg+Ey4DqY0
         vVCYl0mgeMevdZ4x4iCXbCmnmqK2efWS4fd+TNojDJLOImGLwk5DBznSKMjiOz4FSCrW
         Wrhw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id:sender
         :dkim-signature;
        bh=4hTYtEKNJPA/qPiV13V3Tn/BdEkMDnu9XCJa8NpzA7k=;
        b=nAV7RV2FdQcoxXKCsA8DHu0AfFpkTdtTuy3H95zAzHXLBhyXZGI+K6g/wFT+638sTP
         KinGG9GRQp2XPLhi61/4yOFQx0K5uZXbLcDmRy16fqRZw+FgiqclfGD9ngrBBBE1ml7Y
         advjw68u9yrukKwAdGitasYMaCZoqSKxr63HYLosZ+Wto8CBCDZRag6Q5J5bsC4ZLuCD
         XmT2mDIYK9LSuRxvHnIeqyKTk11AfOO8THdD62aYPuY4i7cT0gmQj34ZcjxUp8EnTPTl
         5pDInpqr1TEvDLIE26CEHWZRFzdYno3Kb9JqOG8wBA43qvUb6H3TzWqPJRf9TZcNmVsq
         v1xQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=neutral (google.com: 216.40.44.163 is neither permitted nor denied by best guess record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:message-id:subject:from:to:cc:date:in-reply-to:references
         :user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=4hTYtEKNJPA/qPiV13V3Tn/BdEkMDnu9XCJa8NpzA7k=;
        b=GMvX5OPsqY9O+TuNFDe8/8qM5a4xz+ThAYTZQ6bFQ7i66Y8CXqD8FM3i19j8F78gIL
         wX3Q0XrcBtF0Nlh8tjuDPcOq76Mk5/SesYvdxompMmcSDywRJ+xllGTHf5wbAHiTU5sn
         rfwWRhAI+UfNjLKmn53vkWDRC9c4wx+SXze6Efe7/A0R1niLZT9RBWrKYNS3K147dlZi
         mpSmpae0U0ICMoKsIIUrWi2DBIR4PwM/UNNR78199/HjUtSZaYU/mK0mVoVSa83H57Po
         QXtk0h/KNSMJhrx7iCxs+9wkZhdCxUC8BKXsawHzhPO9AyH9h8Vv0kpUet6szko+hwx5
         rYXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:message-id:subject:from:to:cc:date
         :in-reply-to:references:user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=4hTYtEKNJPA/qPiV13V3Tn/BdEkMDnu9XCJa8NpzA7k=;
        b=KxMixIZyGhtFqaEzVamAS1A2qdMKhnR/5xusfZpZn1FYajQ9korgAX+pRTBpWCHkuH
         nNWyx8DO/G4SxHPutZ0tu4MGIKzMdEs+i2bLHgLM5OoG3PBX4wPZuERBj/zyzzI2a2fU
         sfi8a27zPgG0fQBW+e0qYZnhJO6V7Fb9ueEjAN50hMG1VTJSk0+nR4NpQmX5tqTfSDdd
         r8i+sLrFluMSK7UzhRE/KbsgXA1zhNZK4HJpyGB1NRCqJ4vhgWsuurdWZSV3dzNfec+z
         nKSPgcCzit3zudnBgypDtsW6rVKT8R8CgGl0zYH/cm32SQUasMOw93pM20Gxr6T/6nYI
         +uaw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUcBxBjLLh8tWMGZQAVQ9D8aiFTeagv6nKt1ytkiDyOPDSQ+qWb
	pxlNbOct6Xx/PzloWHY07Mg=
X-Google-Smtp-Source: APXvYqywXj6iSzCG83QoMvyXo7cejkQVHdSEnXCPph7ctiuVaXsEv6qrKzsAecUq8Kdw02o7po5WOA==
X-Received: by 2002:a0c:98e9:: with SMTP id g38mr2951669qvd.187.1565985512249;
        Fri, 16 Aug 2019 12:58:32 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a37:b387:: with SMTP id c129ls691907qkf.10.gmail; Fri, 16
 Aug 2019 12:58:31 -0700 (PDT)
X-Received: by 2002:ae9:ee0b:: with SMTP id i11mr10749276qkg.408.1565985511958;
        Fri, 16 Aug 2019 12:58:31 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1565985511; cv=none;
        d=google.com; s=arc-20160816;
        b=ZmroD/b0154tW24J2F9i3ZkhKGm2mLdX3NFCCvWwqTEwkb3tAwArtTT4FPLmOehiEE
         dYbOyzg3H+O7h6qI8FRHAchd4qlNB7xPkZTctHShKE/0Ezj+Sg0LHpNB+O2bH5RC5gMk
         69rjUQwLAQTMsEvcuG67HVkECV2vNMKFusTe0AMGmm3GSMSAM0sNW8tiP2405XYXy6Ev
         vZ9BXeAtll4rwM6OQa3Q4tmh3e0KbdUzmYo9+L/AmFdoLG+UXfYVf66V71L8eXdTFB2+
         yRN37EyoCaGCEymT4dTDD82RnbLYkpfon598+Cou5ocZDflG/aLRJKjAWni7zBP0N3dt
         itWg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id;
        bh=TsHkBbYEeI/4ynxzxinljLv3TmTPNJzFah0mQ5q76fk=;
        b=codR4OAriVppnvo7334CTZGd+upFHWaj0UlrMbyLQCLuOSn2shAHEv2A0R9+t8AjMH
         CNb1UJFf2VKRtDGtJvAtSkYdcEejDGMQiKPyQO19sLpJYQ7KZGffScoq02JAxzeZwhD/
         qYv0AINfnwmD27hQzFVdnuQtdbZbnxObj+FJETgCO5Vte2HCrbP2WCLebVU6rKapH41E
         H7phtirLvrn19G25x3gRJS7QWIWxsJ94cnLQbNzQ+4qzGGtAQU+e+m5BvyiAt4Nzwn3p
         Lw5HtYo14Aw1zXGZ5xKNPARlDhL5ojws6YjpW1FNt55eBU607i0b7gyI3hQw7qLoOimK
         KYYQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 216.40.44.163 is neither permitted nor denied by best guess record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
Received: from smtprelay.hostedemail.com (smtprelay0163.hostedemail.com. [216.40.44.163])
        by gmr-mx.google.com with ESMTPS id o56si285678qtf.0.2019.08.16.12.58.31
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 16 Aug 2019 12:58:31 -0700 (PDT)
Received-SPF: neutral (google.com: 216.40.44.163 is neither permitted nor denied by best guess record for domain of joe@perches.com) client-ip=216.40.44.163;
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net [216.40.38.60])
	by smtprelay06.hostedemail.com (Postfix) with ESMTP id 5FD2E18008646;
	Fri, 16 Aug 2019 19:58:31 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Spam-Summary: 2,0,0,,d41d8cd98f00b204,joe@perches.com,:::::::::::::,RULES_HIT:41:355:379:800:967:973:982:988:989:1260:1277:1311:1313:1314:1345:1359:1437:1515:1516:1518:1534:1541:1593:1594:1711:1730:1747:1777:1792:2393:2525:2559:2564:2682:2685:2691:2828:2859:2933:2937:2939:2942:2945:2947:2951:2954:3022:3138:3139:3140:3141:3142:3353:3622:3865:3866:3867:3868:3870:3872:3873:3874:3934:3936:3938:3941:3944:3947:3950:3953:3956:3959:4321:5007:7903:9025:10004:10400:10471:10848:11232:11658:11914:12043:12050:12114:12297:12438:12555:12740:12760:12895:12986:13069:13142:13230:13255:13311:13357:13439:14096:14097:14180:14181:14659:14721:14819:21080:21451:21627:21811:30041:30054:30060:30070:30091,0,RBL:23.242.196.136:@perches.com:.lbl8.mailshell.net-62.14.0.180 64.201.201.201,CacheIP:none,Bayesian:0.5,0.5,0.5,Netcheck:none,DomainCache:0,MSF:not bulk,SPF:fn,MSBL:0,DNSBL:neutral,Custom_rules:0:0:0,LFtime:29,LUA_SUMMARY:none
X-HE-Tag: mass40_4a1449745f063
X-Filterd-Recvd-Size: 2860
Received: from XPS-9350 (cpe-23-242-196-136.socal.res.rr.com [23.242.196.136])
	(Authenticated sender: joe@perches.com)
	by omf01.hostedemail.com (Postfix) with ESMTPA;
	Fri, 16 Aug 2019 19:58:28 +0000 (UTC)
Message-ID: <ad42da450ccafcb571cca9289dcf52840dbb53d3.camel@perches.com>
Subject: rfc: treewide scripted patch mechanism? (was: Re: [PATCH] Makefile:
 Convert -Wimplicit-fallthrough=3 to just -Wimplicit-fallthrough for clang)
From: Joe Perches <joe@perches.com>
To: Linus Torvalds <torvalds@linux-foundation.org>, Stephen Rothwell
	 <sfr@canb.auug.org.au>, Julia Lawall <julia.lawall@lip6.fr>
Cc: "Gustavo A. R. Silva" <gustavo@embeddedor.com>, LKML
	 <linux-kernel@vger.kernel.org>, clang-built-linux@googlegroups.com, Linux
	Next Mailing List <linux-next@vger.kernel.org>
Date: Fri, 16 Aug 2019 12:58:27 -0700
In-Reply-To: <4398924f28a58fca296d101dae11e7accce80656.camel@perches.com>
References: <c0005a09c89c20093ac699c97e7420331ec46b01.camel@perches.com>
	 <9c7a79b4d21aea52464d00c8fa4e4b92638560b6.camel@perches.com>
	 <CAHk-=wiL7jqYNfYrNikgBw3byY+Zn37-8D8yR=WUu0x=_2BpZA@mail.gmail.com>
	 <6a5f470c1375289908c37632572c4aa60d6486fa.camel@perches.com>
	 <4398924f28a58fca296d101dae11e7accce80656.camel@perches.com>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.32.1-2
MIME-Version: 1.0
X-Original-Sender: joe@perches.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=neutral
 (google.com: 216.40.44.163 is neither permitted nor denied by best guess
 record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
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

On Sat, 2019-08-10 at 13:33 -0700, Joe Perches wrote:
> On Sat, 2019-08-10 at 13:18 -0700, Joe Perches wrote:
[]
> > There are classes of patches generated by scripts that have
> > no real mechanism to be applied today.
> > 
> > For instance: global coccinelle scripted changes to use stracpy
> > https://lore.kernel.org/lkml/alpine.DEB.2.21.1907251747560.2494@hadrien/
> > 
> > and trivial scripted changes to MAINTAINERS
> > https://lore.kernel.org/lkml/6482e6546dc328ec47b07dba9a78a9573ebb3e56.camel@perches.com/
> > 
> > that are basically impossible to be applied by anyone but you.
> > 
> > Otherwise there are hundreds of little micro patches most of
> > which would not otherwise be applied.
> > 
> > There should be some process available to get these treewide
> > or difficult to keep up-to-date and apply patches handled.
> > 
> > I believe these sorts of scripted patches should ideally
> > be handled immediately before an RC1 so other trees can be 
> > synchronized in the simplest way possible.
> 
> Hey Stephen
> 
> Question for you about a possible -next process change.
> 
> Would it be reasonable to have some mechanism to script
> treewide patches to generate and apply after Andrew Morton's
> mmotm patches are applied to -next?
> 
> This could allow treewide scripted patches to have
> compilation and test coverage before possibly being
> applied to Linus' tree.
> 
> What would be necessary to allow this?

Ping?

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/ad42da450ccafcb571cca9289dcf52840dbb53d3.camel%40perches.com.
