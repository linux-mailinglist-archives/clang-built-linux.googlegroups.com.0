Return-Path: <clang-built-linux+bncBDY3NC743AGBBROF5DZQKGQEHXOJWBY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x337.google.com (mail-ot1-x337.google.com [IPv6:2607:f8b0:4864:20::337])
	by mail.lfdr.de (Postfix) with ESMTPS id B1DA41913E4
	for <lists+clang-built-linux@lfdr.de>; Tue, 24 Mar 2020 16:09:58 +0100 (CET)
Received: by mail-ot1-x337.google.com with SMTP id 4sf12640086otd.17
        for <lists+clang-built-linux@lfdr.de>; Tue, 24 Mar 2020 08:09:58 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1585062597; cv=pass;
        d=google.com; s=arc-20160816;
        b=YKfmhrEh/1LO7lAobl21XiUZ7dGUt/BqJQ2sCqOoknTKEA/6h9H85aEL5gV3ROZfQe
         D2iRd1of/w6S0/sRuy+uOR1Rgu8Kf1Di4ZqelJgH8SQe58ENrBaAXoCktCMKglr1jQ0d
         o7Q46VuWK7nGJ0cVMY0lAODx7Ze3pA/PVkQG+DunipqrQdpetPGXs7EWAb2eJWt3syD3
         lYGCyLmFGAjpr04DW43FTNqjG4yqO8kuO9UItFZGFfelrId1OyasX53QJLltrRi45kzc
         TWOaDuO8Q6k6xgvfelFE4VkIzbFd/1r9T08Ydx/I87Vj3mLbkms6nDyyV+uBDntgSsHb
         IGBA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id:sender
         :dkim-signature;
        bh=lYHgH1PMaK8BOdzqzuLm/u+eQJn5LnVn2adbEbpYUrM=;
        b=V5nKh/DnC32II3e+TN5epJ+R1/Zjy8x7r6WYwcxh2PQV0K54q0txylH70Kplxl8qV+
         Cvg34tEh0ajX1J7gCEMgPungP8bKFCqTAuVhnk1kYfunA5G9x8yGdd/B8FW7wL+5kofe
         V6OSfM8pNwwRna5lX9xeNV6U8rjpxa3yMCFWlZlZkj8B9nBWlucRPLxYlDph1YPP0jMe
         IKBjkNvzWcWib2gA58jDYYFhKBsy/PX7aYGNKnMdzUK2vo4H1s8Jui487MVlz22a3JUM
         dn9WbDf6RoyHGLlgNmWq9pOcFovkDEuEw9QaNBd6p7+pEwq7bxoJ3r/cswKfknEXaTE1
         H61w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=neutral (google.com: 216.40.44.243 is neither permitted nor denied by best guess record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:message-id:subject:from:to:cc:date:in-reply-to:references
         :user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=lYHgH1PMaK8BOdzqzuLm/u+eQJn5LnVn2adbEbpYUrM=;
        b=hgVlXBAJ/lhtN1KsDWZ3OoFGRkm3pTyBUybgzF1A6i1LetEAOuBlk4LXy7f8uujthI
         Va8HNJmTAP5M+oNjZ6xraiXTqx8FKlBZ3DIUY/kn/wYUbdV6cmUn0cQyZcCMKPa1GTEE
         UF+Lv61aPpJ7HJGsXT3vd0NsTsbCp9MQK5Y8N4flPGmedkS9FiLAeebP6byuOCICYJRl
         Rilq3LVe+L98iRVjwYhmXs3bjWrA/Fc1VkcWH0A8sRBHL2wamjBZyB+d5MUckX95knmf
         hSkKJpnGt/G2c2ZYGu5EzJ76VGOoPNclXPXWkM9HGEakzm/UJpTNwFJ5xivItNl9odA9
         GyrQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:message-id:subject:from:to:cc:date
         :in-reply-to:references:user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=lYHgH1PMaK8BOdzqzuLm/u+eQJn5LnVn2adbEbpYUrM=;
        b=YpYLKhhZqLWBwoF2epurqRo1ggGcaB5Hhrg+3nnh8fQwT95tjzPLeiipagn1H1+4dx
         Sp4G3IB+1EUCEwFr6eWgWbZweqRqA3xISZnvisPVIWj6a9H9sknpDSVBzlLtg9s1U2m3
         1Qma/LJBlpVhFlas+QW32AidOgJuKoITedE9ZRB/AsEqtqHqqOBBcebJtVjwEQl6H1Px
         9q/e0V7Ycd2foRx6Y9BGIuxiTwZhdHRwOzRbVT/upE0Skw89Lzc8NpFqtwGNeUa5G5Am
         +eUGdwU2OZLxpR5Nlj1wWWBIzJeWDgTDWHWneJwAURa8iwyMNR9ZWOVTzFSwOzYBqPYN
         l+Kg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ3ptjrxqeWano2IV3Hy2LNqYIvM5agog3V284+b5Eb1uMRqlJFC
	oWS2vaNlCGqD1AOV+YhDTrA=
X-Google-Smtp-Source: ADFU+vuyI1xmeucmwKNVJWsgLwB0b/UcA7rA+WGZozVhYbiHKEdXpl06fm4VWDVtQMXOI9r6gN/ekg==
X-Received: by 2002:a9d:4e3:: with SMTP id 90mr22876957otm.261.1585062597378;
        Tue, 24 Mar 2020 08:09:57 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:fd02:: with SMTP id b2ls1907337oii.2.gmail; Tue, 24 Mar
 2020 08:09:57 -0700 (PDT)
X-Received: by 2002:a54:478a:: with SMTP id o10mr3822650oic.45.1585062597023;
        Tue, 24 Mar 2020 08:09:57 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585062597; cv=none;
        d=google.com; s=arc-20160816;
        b=fl1z21B+v+OyWmbp093t+tcJhrrU0Y9SPabnlV3uIKoPE8S9NKV5FBaiItLQzE/3PU
         qdyYxm35xpABZOmn7N3RfX7dGQ0TkiXyYw10Z1sdFdCV7C0nq3+nRERGr1hvHFBvzXtd
         HiRyIc8SVHHPyKefBYT9CuGsk/ci9kxtaZlqrQAagL8EDDygEPku9z848kTtng1K+wf1
         PgVQvRB0UpjkWk6VHOnr1WhGGpuzFRShkQr5BXYsfOnCG+tJhfG2N/b9YEYi56lbAP4E
         7P7ZzDZhpqKKpYgnz6rLapAtDi4Te89UdjOoP9ivtgkn7r11gXyjTZ/MNbGShj8N1mHb
         HV+Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id;
        bh=I8uPVupr3c0WvBj8c6Gmv9c9F5W6+72PCcAusqly6ao=;
        b=hhys3el59D/f3IjlHtCcdJFkpPyc4zHXfTzFE/whln9Dr6GG9FL8TypyNm0LD2ptKz
         Lt2D03/WrPWaBGGJwsL2REC1B2FA6DdSuayKfmpitSeDUt6IXFjDZfV2cZXYl5GZNYad
         ft88UozpfevHjjfyEVnR6LxKphJNDzTLPmQp0KaZeZhU7cbztChLl8DR3F2qz+vaUDSv
         Smubox+DPbBXE7k6H9PgkglNs83tYcvPnGebXMEt6Al6lUeCBahtNr2t8ajF75OcQWFL
         jDTXkbCST4sHbMaAEn7sZBJ5xA0KC2u/kzv2xyX2Ptm68g4SyARVYD6/QvEMcJ4RYU3w
         Ra2w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 216.40.44.243 is neither permitted nor denied by best guess record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
Received: from smtprelay.hostedemail.com (smtprelay0243.hostedemail.com. [216.40.44.243])
        by gmr-mx.google.com with ESMTPS id x23si903312oif.2.2020.03.24.08.09.56
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 24 Mar 2020 08:09:56 -0700 (PDT)
Received-SPF: neutral (google.com: 216.40.44.243 is neither permitted nor denied by best guess record for domain of joe@perches.com) client-ip=216.40.44.243;
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net [216.40.38.60])
	by smtprelay06.hostedemail.com (Postfix) with ESMTP id 3CCFD18027F92;
	Tue, 24 Mar 2020 15:09:56 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Spam-Summary: 2,0,0,,d41d8cd98f00b204,joe@perches.com,,RULES_HIT:41:355:379:599:966:973:988:989:1260:1277:1311:1313:1314:1345:1359:1437:1515:1516:1518:1534:1540:1593:1594:1711:1730:1747:1777:1792:2196:2199:2393:2559:2562:2693:2828:3138:3139:3140:3141:3142:3352:3622:3865:3866:3867:3868:3870:3871:3874:4321:4385:5007:7903:8603:8660:10004:10400:10848:11658:11914:12297:12555:12740:12760:12895:12986:13069:13148:13230:13311:13357:13439:14181:14659:14721:21080:21627:21966:30012:30054:30091,0,RBL:none,CacheIP:none,Bayesian:0.5,0.5,0.5,Netcheck:none,DomainCache:0,MSF:not bulk,SPF:,MSBL:0,DNSBL:none,Custom_rules:0:0:0,LFtime:2,LUA_SUMMARY:none
X-HE-Tag: rifle75_567c803e6e424
X-Filterd-Recvd-Size: 1914
Received: from XPS-9350.home (unknown [47.151.136.130])
	(Authenticated sender: joe@perches.com)
	by omf15.hostedemail.com (Postfix) with ESMTPA;
	Tue, 24 Mar 2020 15:09:54 +0000 (UTC)
Message-ID: <7a87a9b971caefa847c412608c98c0a2e1835904.camel@perches.com>
Subject: Re: [PATCH v2]     x86: Alias memset to __builtin_memset.
From: Joe Perches <joe@perches.com>
To: Clement Courbet <courbet@google.com>
Cc: Nathan Chancellor <natechancellor@gmail.com>, Kees Cook
 <keescook@chromium.org>, Nick Desaulniers <ndesaulniers@google.com>, Thomas
 Gleixner <tglx@linutronix.de>, Ingo Molnar <mingo@redhat.com>, Borislav
 Petkov <bp@alien8.de>, "H. Peter Anvin" <hpa@zytor.com>, x86@kernel.org,
 linux-kernel@vger.kernel.org,  clang-built-linux@googlegroups.com
Date: Tue, 24 Mar 2020 08:08:04 -0700
In-Reply-To: <20200324140742.71850-1-courbet@google.com>
References: <20200323114207.222412-1-courbet@google.com>
	 <20200324140742.71850-1-courbet@google.com>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.34.1-2
MIME-Version: 1.0
X-Original-Sender: joe@perches.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=neutral
 (google.com: 216.40.44.243 is neither permitted nor denied by best guess
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

On Tue, 2020-03-24 at 15:07 +0100, Clement Courbet wrote:
>     Recent compilers know the meaning of builtins (`memset`,
>     `memcpy`, ...) and can replace calls by inline code when
>     deemed better. For example, `memset(p, 0, 4)` will be lowered
>     to a four-byte zero store.
> 
>     When using -ffreestanding (this is the case e.g. building on
>     clang), these optimizations are disabled. This means that **all**
>     memsets, including those with small, constant sizes, will result
>     in an actual call to memset.
[]
>     In terms of code size, this grows the clang-built kernel a
>     bit (+0.022%):
>     440285512 vmlinux.clang.after
>     440383608 vmlinux.clang.before

This shows the kernel getting smaller not larger.
Is this still reversed or is this correct?


-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/7a87a9b971caefa847c412608c98c0a2e1835904.camel%40perches.com.
