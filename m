Return-Path: <clang-built-linux+bncBDY3NC743AGBBA5423ZAKGQE4UJGNBI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x83c.google.com (mail-qt1-x83c.google.com [IPv6:2607:f8b0:4864:20::83c])
	by mail.lfdr.de (Postfix) with ESMTPS id 58E0A16F288
	for <lists+clang-built-linux@lfdr.de>; Tue, 25 Feb 2020 23:21:56 +0100 (CET)
Received: by mail-qt1-x83c.google.com with SMTP id e37sf1353143qtk.7
        for <lists+clang-built-linux@lfdr.de>; Tue, 25 Feb 2020 14:21:56 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1582669315; cv=pass;
        d=google.com; s=arc-20160816;
        b=H8mRtDavNH3KiSpuiNFkvYLmSesk6OAkAt5TnFZwn1cosvIY3zRXQQ0I5wE4y7bdeq
         Iy7JjDf5Khor+53pYpYZYM0GFwnVaMC5aizDxNaqQpy3x7eytog0G5Lc9EPftPJ4USU4
         GLZhN9LN/eBplEBEQMjmZDBkI00VQxE251+w5VI15BKqxndXR0k3E2P0XTAiYdOpZb+2
         rs+siARqZU9yBGFjGWfMkSLv37/zoiYai/0d3PzKpp/bQYB5sSdp8XJ8ama5Oowlm6Mx
         NvUXCzNUNdaj53HhCuF4in1zok6X/ErIyatSCBHenLRrNMT8HaVaO39sRB7ZXDPT1jCb
         rUIg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id:sender
         :dkim-signature;
        bh=0/xzPreHYm3EFUphP5SgJOcUDkkaRLZpPVAYYnlmZaU=;
        b=Of0sdruiRoZfw4S6aCwti2z2FooMUqYjerSlTujffW3LWYsdyF2FHbaUcphgB3WbZF
         YJrxwNI3fYm07aKGiUWlyD2zDj30pWTG5pi2U27AM39foDe7aA3r1YfASvS/jDz07/b5
         f0ujJd7Qu2ZQ1x7UbR7J6edSGtjhOT9vB8Cv6G1r+wALjAGIQKcT+EHX4v1axxozYNVy
         7apuztDm3/uZwjTpDBx+fFMSZPDMu7wBhWMpT/e+GKsq3yDcK7s5CPpjhcLvmLKlX370
         rbYMnQdqE2TmsBqPlPL7LTw8c/2o2TB0ig2nIYIpmgJMBtTZFbbiVWdTonnA0TBCV5J6
         q/qA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=neutral (google.com: 216.40.44.200 is neither permitted nor denied by best guess record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:message-id:subject:from:to:cc:date:in-reply-to:references
         :user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=0/xzPreHYm3EFUphP5SgJOcUDkkaRLZpPVAYYnlmZaU=;
        b=TTORkBNrRhqluMM+2zahKN4OyHUNTQ5WbsHwEfrRI3Vn32iYKv972Oxqro31MY6Cxj
         /PaSCem+kqmDVBs8IvQ/aQPBn5KxAs7wlCS/wISwqEpGWZXVQv02FYiz0I3KqMKl8Mrb
         67jmJDHbJT6ouQJbGeX+yuJUMI7wTkf/Ka1dpbZOUGSzHY/j4bB70GyPXNtJvLHNOZQ8
         2fsQa3GHVJaL5gQgsdwCB42KezcGvcJD7Espm2FVf9rnCC84yUXIOki36Zdjo0PWl0mF
         gAnIlPfL+xyXqVHQNDdDoma7LKbLQXic6Dw0IyKJozjfRgKCIo92ZaJSPslfxxzVdHDE
         GSzA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:message-id:subject:from:to:cc:date
         :in-reply-to:references:user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=0/xzPreHYm3EFUphP5SgJOcUDkkaRLZpPVAYYnlmZaU=;
        b=pGpRrJjH/gz1vpnCOLpvqWrxScZsWNcOW4emcYNku0TScYtxU7+D4lSBN1TStI5z7b
         BVtTH2PGpuvj4qX5cRNic86y/04p5+Ze+n6Lc+HodjcEO7p7vGBXPveMfBkcash496gA
         +xqs7+YEY1zZLQzIH+0jL25859g7DsgLgKRlttMBcSMnZeRu0YFiL9Aa8UpanYU4a1ew
         4/9j6eTCKOF1c6c91+NK26Rm8KGlwS/Uzy+GrGA12NKKFXqSIDXz4N0uJtB/iK3zPRuN
         J+4uglYG0TQneRtv1yDPJc8BxeAALITmkTPDAeDrMyohivofMoW2docNdfXJSukoAcyz
         fLyg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWAF4CgoalEY0Eu+zIpKQ+XPNolDMK515ZgqXKESGu0xgqLnVEC
	zRA6rtPQQrwn6BNkgYBz+AI=
X-Google-Smtp-Source: APXvYqzuJ6NjTXW/GTioFvemrDnwpK95BzNeAlobmPuL3b1V8R+/rS518koHkzfAwTAl2xf1k3/9dA==
X-Received: by 2002:ad4:4e09:: with SMTP id dl9mr1342805qvb.137.1582669315425;
        Tue, 25 Feb 2020 14:21:55 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ad4:4e70:: with SMTP id ec16ls129724qvb.7.gmail; Tue, 25 Feb
 2020 14:21:55 -0800 (PST)
X-Received: by 2002:a0c:fe8e:: with SMTP id d14mr1434093qvs.106.1582669315087;
        Tue, 25 Feb 2020 14:21:55 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1582669315; cv=none;
        d=google.com; s=arc-20160816;
        b=dVJPOnswaFO6iXAfJpDuBmCrqoN8fubyTB861J3tIFKVIXuOiNjwvSi5p2rfjpFh1y
         Q+S+ubSgnupNosYJDf22hsPKgP+l5LJW/UDA4yYIJOvILfw0Tl6fI30gH5fvoUViDQJi
         kpBIPCRIayD6xPLpo64fQ4xLdXONR49qV28ScpQwBnckDRY0C9F0xqgfMTG+hx7limQX
         bbKupSoJ3slXc6idVNy+oQG20ql4K5lL3C24AMlp3Rs6L+iU0KiiX0Jh/1Wn3Kj4sdx0
         b2vMe1RpVbxwOO9e6QxRMwr+c65DO4G5BvijW+7nKsmO3nC16hNoXwsSoa44N4whT26h
         gM2Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id;
        bh=/dGs9XEjFpWn91RY5DDKcZ6lM6UMUNqrF4Wnt2iB8N0=;
        b=PDhC/xZ68sXcu5DE7WTKPoyS8t9BGIpI7PWgQU62HJxqLh34XdBLcb0ZHbu4YUsZIg
         kz3pFs2LePAPeONG8mTXaMRDfdthiLS8+a2PGLCKpP2y+iawAmrq3+1e1P3hBx5z0ytU
         926Jekne9CnHtlJSz/yVtC2fXVz0SVGj1525woy9XEbouP2JXfrws0SlayvlaOA7CBMq
         oe5Sd6A7cJbdxAQK596/MEaCF+wweuOlwJD1HHPwRbqRX2KDPb8T0PTGgD6aFcWLUcJc
         m83uGicegXI5yLsOMFQ4uSzuzcva+b889tn2+WYlr+E5FNC9t2THMyUFsiQDJAj7hbAG
         eJcg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 216.40.44.200 is neither permitted nor denied by best guess record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
Received: from smtprelay.hostedemail.com (smtprelay0200.hostedemail.com. [216.40.44.200])
        by gmr-mx.google.com with ESMTPS id p23si8534qkm.7.2020.02.25.14.21.55
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 25 Feb 2020 14:21:55 -0800 (PST)
Received-SPF: neutral (google.com: 216.40.44.200 is neither permitted nor denied by best guess record for domain of joe@perches.com) client-ip=216.40.44.200;
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net [216.40.38.60])
	by smtprelay07.hostedemail.com (Postfix) with ESMTP id 9970A181D3417;
	Tue, 25 Feb 2020 22:21:54 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Spam-Summary: 2,0,0,,d41d8cd98f00b204,joe@perches.com,,RULES_HIT:41:355:379:599:973:988:989:1260:1277:1311:1313:1314:1345:1359:1437:1515:1516:1518:1534:1538:1593:1594:1711:1714:1730:1747:1777:1792:2393:2559:2562:2689:2740:2828:3138:3139:3140:3141:3142:3350:3622:3865:3866:3867:3871:3872:3874:4321:5007:10004:10400:11232:11658:11914:12297:12660:12740:12760:12895:13069:13311:13357:13439:14659:21080:21611:21627:30054:30060:30091,0,RBL:none,CacheIP:none,Bayesian:0.5,0.5,0.5,Netcheck:none,DomainCache:0,MSF:not bulk,SPF:,MSBL:0,DNSBL:none,Custom_rules:0:0:0,LFtime:1,LUA_SUMMARY:none
X-HE-Tag: mass36_2d532f68ee916
X-Filterd-Recvd-Size: 1751
Received: from XPS-9350 (unknown [172.58.27.58])
	(Authenticated sender: joe@perches.com)
	by omf08.hostedemail.com (Postfix) with ESMTPA;
	Tue, 25 Feb 2020 22:21:50 +0000 (UTC)
Message-ID: <3b7b2b366220c9ba39ebc241ba22c0304f0d61b0.camel@perches.com>
Subject: Re: [PATCH] Documentation/llvm: add documentation on building w/
 Clang/LLVM
From: Joe Perches <joe@perches.com>
To: Kees Cook <keescook@chromium.org>, Nick Desaulniers
	 <ndesaulniers@google.com>
Cc: Nathan Chancellor <natechancellor@gmail.com>, Jonathan Corbet
	 <corbet@lwn.net>, Masahiro Yamada <masahiroy@kernel.org>, Michal Marek
	 <michal.lkml@markovi.net>, Linux Kbuild mailing list
	 <linux-kbuild@vger.kernel.org>, Linux Doc Mailing List
	 <linux-doc@vger.kernel.org>, LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Date: Tue, 25 Feb 2020 14:20:19 -0800
In-Reply-To: <202002251353.25A016CD@keescook>
References: <20200224174129.2664-1-ndesaulniers@google.com>
	 <202002242003.870E5F80@keescook>
	 <20200225041643.GA17425@ubuntu-m2-xlarge-x86>
	 <CAKwvOdn0_EETGtBVhbRKMPqv2K04Z1N4PuOZDZ6++Ejbi9-B-w@mail.gmail.com>
	 <202002251353.25A016CD@keescook>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.34.1-2
MIME-Version: 1.0
X-Original-Sender: joe@perches.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=neutral
 (google.com: 216.40.44.200 is neither permitted nor denied by best guess
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

On Tue, 2020-02-25 at 13:56 -0800, Kees Cook wrote:
> I think we should take a specific version stand as the
> "minimum" version. Being able to build x86 defconfig is a good minimum
> IMO.

Agree.

It's odd to say that clang 4 is fine for arm when it's
not fine for x86.  It's also reasonable to expect arm
users to upgrade their compiler to a more recent version
when the only cost is a very small bit of time.


-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/3b7b2b366220c9ba39ebc241ba22c0304f0d61b0.camel%40perches.com.
