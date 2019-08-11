Return-Path: <clang-built-linux+bncBDY3NC743AGBBI4MX3VAKGQEHFYZLEQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x637.google.com (mail-pl1-x637.google.com [IPv6:2607:f8b0:4864:20::637])
	by mail.lfdr.de (Postfix) with ESMTPS id 93FEF88F27
	for <lists+clang-built-linux@lfdr.de>; Sun, 11 Aug 2019 05:06:13 +0200 (CEST)
Received: by mail-pl1-x637.google.com with SMTP id 71sf59674293pld.1
        for <lists+clang-built-linux@lfdr.de>; Sat, 10 Aug 2019 20:06:13 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1565492772; cv=pass;
        d=google.com; s=arc-20160816;
        b=whbP1mRVnnzuU78pPBUxP/8TqgKI7wwOQM8tfUcHxz7Ux3vlELwhQlG7Fd8Ec7BG1U
         3peByIAVhcMxgzYwaVeNBtTl6nQWZy5zKnj7VpktB/iFDJDVam4EjB+/ZA2CweMNPU6h
         TZgMXjO8TA/BsgwVlp5web7XIr6LSWr6hiMMJu1i/qOO+GKJh7GcDQzfhLYUrZzfGsVd
         CUul8LXQZ3JZZgcpPhkYke3NUJBEryC1LUUd+DXD2WBCr3fp5Tl4x9SgzuGJM/xeHy94
         F5eARqBSs3cZpVJ2+ZhCcB/hQnhbFZJqWflUfdEwxmB6FZbN0i6xJ5SwiMb+sd2wkmhJ
         HurA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id:sender
         :dkim-signature;
        bh=qsOquEVvP66asc39hDLppJxb6XovCT8DqPYJ+zv8uvM=;
        b=tA5JRqOnToNw05Eozu5J6PnFMGtvTGg8++QexGs9xBMFgpsXUydYAHKsZVUfNYdIXp
         wMmJX1aAa950aeq5d3e4A4G3RV0pS0GFRtLSr5/VOvhCkiBDwiVtNt/6kWSq6Ekccrl7
         wos6YDB2Xy/mCxPrN5AtUS+OgHxtG+gSImJUQbq09fhJL3QYWqXYFfpgNVizvoAaiuhC
         V348hBymnX06Y+7BdtpAiLWPMPnzGOnnskT4mSdu34Vm9uhoJffSPJ76YLQvX9whj8Ib
         hmfgXcxlw+NQpHF3NlEofEaw2Z0aH4kaJT5008ljNMk0gliIWddFMwarnYJgwabhzjpK
         yumw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=neutral (google.com: 216.40.44.94 is neither permitted nor denied by best guess record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:message-id:subject:from:to:cc:date:in-reply-to:references
         :user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=qsOquEVvP66asc39hDLppJxb6XovCT8DqPYJ+zv8uvM=;
        b=oaa3WrZ+kFAi436hlBnwTbcMZVypGOH1+nZx4YJZTjdtGO+7AcmqpsH6vscuKKvlGw
         aTe6pHO+0Dt26zAUaR/vRTE+E1zhucpZFUXg6Ww0ktOInaxsmVWYW88bcJx/wj8ZaeMj
         qh4rA1mI5VC+iKWAoMtnri9b10hE/YM98ZaGqgPT2DailG5VADa/jWgSCPdWtOLVnVlm
         qFT3keisR08clJMAXgjHggNytIKk4y/YThg5bkxURq+kgUseqqKnCK6sgI+SVa2atpaZ
         8gFjvXp+RUXM6SaMAETzydXJ/HDfXAQfFsUbLAaQ/Z4n5sQULsnaXIARH0S43eF6jiXH
         V/pA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:message-id:subject:from:to:cc:date
         :in-reply-to:references:user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=qsOquEVvP66asc39hDLppJxb6XovCT8DqPYJ+zv8uvM=;
        b=Or5+YtZozr38PVb98BsTzOQAfLWWJmYScSO2ZzWxbg/ua7Irtv1gxjMK6LSZ0xAv/N
         tSotbNmbB6NaW23Ew9ZPrVNi6OGGxjR/hTxBG23dvHr/rPoTggoSBAAC4SELNMzrs4rJ
         wBBDv7KYfba6pUeW3UgIvwRhB081yOrNWd7ULuSGRmg3vSNuogTR14B6+1LwsGf0wPyh
         XMT3Ok493ay28kLc67JFTz0a/3em/+BW1XHkw+GmU3uP/t1Y1wSoyuiSmiNaZhiVy/u4
         Zq9DV4ftWdW98u7jxJ2YtYBrxqXYZl2NPzyMi/Aia/CZTKOaaD/lZjHeVyczOL7GERoz
         zeww==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUG8hdACHfp7ONVG4WT2Dz22dYNpzBpE6j5jEgZykYH6JOe10a/
	g6+Q9JoourzKbERak07970U=
X-Google-Smtp-Source: APXvYqwQROLlsrzAhAlGVL8N/2sjOounEya726u95XmnX2McAAguTKk3hfcZXKrITwNnXCzeeLsSRg==
X-Received: by 2002:a17:90b:d8a:: with SMTP id bg10mr17289542pjb.92.1565492771770;
        Sat, 10 Aug 2019 20:06:11 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:fc15:: with SMTP id j21ls11453583pgi.9.gmail; Sat, 10
 Aug 2019 20:06:11 -0700 (PDT)
X-Received: by 2002:a63:b20f:: with SMTP id x15mr25224085pge.453.1565492770979;
        Sat, 10 Aug 2019 20:06:10 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1565492770; cv=none;
        d=google.com; s=arc-20160816;
        b=UwabyvJK9V4qtJwJkY+0foZQLiVTZAmncH3em0X1Ne8/y8JPAvwUBEFXUi4kBq/OgC
         vZOCifny4yI8XP+80j4FC/QkMjZAPUcB0VU+Rxevjs0VdBexrdOb4tkQJXUjOPpvz3EE
         Q2RdaWqDQN3aQG/F0Qwh+5s6TUpADKPMSDKhQkUEmcD/dRVKmb9CC/VuVRksY5K1nEN8
         34n09ODd7SuzubxBBDH8JcPKOigR3O4CpEvLypinrWQW6teNhUTXqyp7SWotzDuc4sq4
         3tmwxqChc2+HiKSmWyk5gGcWJxoeSWrWprR7J+XgMgUDN+ilYIBHnEOtv3GMU5nqmKbT
         UrEg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id;
        bh=AX5wzvTgsXkaJPY8+pcKNSm1JtXOFOWYw6rovo76n6c=;
        b=sjXM5tY3wTYH1MU7mkZVBE9yWaET4ZM6CJyVvQpLEo5zMNXkQH8sfC9+Fb34MWIDMB
         NFEWunE3niqZPOTYdu2RI8LwPyEms74X0pj0LHVVhl9nuX8ZazhODMA7arBcgr2mxLyF
         Go8jq8dRZmp+QkvW/LD2THZurUwyfAfqmb/FxMae6ppv4VydWkCzkQO4yR08Pu1LD8wt
         OhZA143w8xUJOYRdxgDIY5VJtkNEYdIx6egX2yTjEP7ow9Wb0PrKB3uPSN/ISBLSh3VD
         rUVGuUjnu9kzW2TDOc3BdocXbiHa2jLYjum5db6GizPT+i5BorRbraXIP2NySFQEZoSy
         +rfg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 216.40.44.94 is neither permitted nor denied by best guess record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
Received: from smtprelay.hostedemail.com (smtprelay0094.hostedemail.com. [216.40.44.94])
        by gmr-mx.google.com with ESMTPS id cm10si4446216plb.0.2019.08.10.20.06.10
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 10 Aug 2019 20:06:10 -0700 (PDT)
Received-SPF: neutral (google.com: 216.40.44.94 is neither permitted nor denied by best guess record for domain of joe@perches.com) client-ip=216.40.44.94;
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net [216.40.38.60])
	by smtprelay07.hostedemail.com (Postfix) with ESMTP id 9561C181D3419;
	Sun, 11 Aug 2019 03:06:09 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Spam-Summary: 2,0,0,,d41d8cd98f00b204,joe@perches.com,:::::::::,RULES_HIT:41:355:379:599:967:973:982:988:989:1260:1277:1311:1313:1314:1345:1359:1437:1515:1516:1518:1534:1540:1593:1594:1711:1730:1747:1777:1792:2198:2199:2393:2525:2559:2564:2682:2685:2693:2828:2859:2933:2937:2939:2942:2945:2947:2951:2954:3022:3138:3139:3140:3141:3142:3352:3622:3865:3866:3867:3868:3871:3872:3873:3874:3934:3936:3938:3941:3944:3947:3950:3953:3956:3959:4321:5007:7903:9025:10004:10400:10848:11232:11658:11914:12043:12114:12297:12555:12740:12760:12895:13069:13255:13311:13357:13439:13845:14181:14659:14721:21080:21222:21366:21433:21451:21627:21740:30054:30091,0,RBL:23.242.196.136:@perches.com:.lbl8.mailshell.net-62.8.0.180 64.201.201.201,CacheIP:none,Bayesian:0.5,0.5,0.5,Netcheck:none,DomainCache:0,MSF:not bulk,SPF:fn,MSBL:0,DNSBL:neutral,Custom_rules:0:0:0,LFtime:29,LUA_SUMMARY:none
X-HE-Tag: stem44_6fd7008362b22
X-Filterd-Recvd-Size: 2154
Received: from XPS-9350 (cpe-23-242-196-136.socal.res.rr.com [23.242.196.136])
	(Authenticated sender: joe@perches.com)
	by omf06.hostedemail.com (Postfix) with ESMTPA;
	Sun, 11 Aug 2019 03:06:08 +0000 (UTC)
Message-ID: <871efd6113ee2f6491410409511b871b7637f9e3.camel@perches.com>
Subject: Re: [PATCH] Makefile: Convert -Wimplicit-fallthrough=3 to just
 -Wimplicit-fallthrough for clang
From: Joe Perches <joe@perches.com>
To: Nathan Chancellor <natechancellor@gmail.com>
Cc: Linus Torvalds <torvalds@linux-foundation.org>, "Gustavo A. R. Silva"
	 <gustavo@embeddedor.com>, LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux@googlegroups.com
Date: Sat, 10 Aug 2019 20:06:05 -0700
In-Reply-To: <20190811020442.GA22736@archlinux-threadripper>
References: <c0005a09c89c20093ac699c97e7420331ec46b01.camel@perches.com>
	 <9c7a79b4d21aea52464d00c8fa4e4b92638560b6.camel@perches.com>
	 <CAHk-=wiL7jqYNfYrNikgBw3byY+Zn37-8D8yR=WUu0x=_2BpZA@mail.gmail.com>
	 <6a5f470c1375289908c37632572c4aa60d6486fa.camel@perches.com>
	 <20190811020442.GA22736@archlinux-threadripper>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.30.5-0ubuntu0.18.10.1
MIME-Version: 1.0
X-Original-Sender: joe@perches.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=neutral
 (google.com: 216.40.44.94 is neither permitted nor denied by best guess
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

On Sat, 2019-08-10 at 19:04 -0700, Nathan Chancellor wrote:
> On a tangential note, how are you planning on doing the fallthrough
> comment to attribute conversion? The reason I ask is clang does not
> support the comment annotations, meaning that when Nathan Huckleberry's
> patch is applied to clang (which has been accepted [1]), we are going
> to get slammed by the warnings. I just ran an x86 defconfig build at
> 296d05cb0d3c with his patch applied and I see 27673 instances of this
> warning... (mostly coming from some header files so nothing crazy but it
> will be super noisy).
> 
> If you have something to share like a script or patch, I'd be happy to
> test it locally.
> 
> [1]: https://reviews.llvm.org/D64838

Something like this patch:

https://lore.kernel.org/patchwork/patch/1108577/

Maybe use:

#define fallthrough [[fallthrough]]

if the compiler supports that notation

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/871efd6113ee2f6491410409511b871b7637f9e3.camel%40perches.com.
