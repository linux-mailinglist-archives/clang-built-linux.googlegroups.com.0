Return-Path: <clang-built-linux+bncBDY3NC743AGBB2E3T3VAKGQEQ7JNXEY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x639.google.com (mail-pl1-x639.google.com [IPv6:2607:f8b0:4864:20::639])
	by mail.lfdr.de (Postfix) with ESMTPS id 7202981018
	for <lists+clang-built-linux@lfdr.de>; Mon,  5 Aug 2019 04:01:14 +0200 (CEST)
Received: by mail-pl1-x639.google.com with SMTP id o6sf45286453plk.23
        for <lists+clang-built-linux@lfdr.de>; Sun, 04 Aug 2019 19:01:14 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1564970473; cv=pass;
        d=google.com; s=arc-20160816;
        b=HEcoBf4qp3kXfooPumGYmJD2yX5uWu+qCJjcfH7x/ekq6LUIDzvMSamZ2GD1LrVa6f
         syFuvrmqQpHP9DvSRwZWfKCin8CLodpBT6seWuys3bM415/i4nAhoqrTV3P1LIaNy+kW
         UWxU7Y2QagFPs/b8CrD5VAn/Zl+4Asj5agfyg4v39rhtPSKBfMmyMoAcd+m5iq2es9NP
         GW77R5PztMgKqhYZGwT+mUZq6ZY+KhPARof7cigYgK3vfxRggF3AVFFa6+3mtZEYc/ln
         kLmQrGzXeze/In/zH+ARByAC0TwlctBChgaNHIXweB8hm0UNwHTipRroC42p0lOK5yur
         FGWQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id:sender
         :dkim-signature;
        bh=xDuRaoi6Vyy8kCapCLAjYfqcLqYQ5PDOHhW9vroHXxM=;
        b=r29CXgY+M0FlSgpvUzVpJV2pewTxL/QYOADZvUP+i9qS/NcTws1uxOsJ3XGH4y/cZ7
         h96dWKmaKL98qn2q8kH6/HIWPK1HOAYifDZiAqSlFzjP47PeK17+6dVSdnXPy6M+6Gm4
         mWpS/kHu5AoVtC1/WnzSKUF8y82FpxMTGK/XOS5XNHOZ3hN0LYk8xQs2O4bH9oWUf62m
         eK+9XPHlPxtKE4g2rM4ntpxm0itV+DrRL4sEyc1krGqSct0/0AnDhy2CpTbEcuEvsQmI
         x0tdHmmuKyaGLysN0Tk2wIqxocwKtScopLqId3XR0oSDOh5nzCcAc4yO2Ztgf2etyJnI
         Gk+w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=neutral (google.com: 216.40.44.45 is neither permitted nor denied by best guess record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:message-id:subject:from:to:cc:date:in-reply-to:references
         :user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=xDuRaoi6Vyy8kCapCLAjYfqcLqYQ5PDOHhW9vroHXxM=;
        b=aTYcX7nbI75byz+T8bquofhG6ktOm5Kexj87VYIZQ4NzePgd24Vn5NKZUwbXZ6Sitt
         FSAO8LLujTOa/arODEdbjV5BU5dATA68aG+t78u96yUMrxPEN2UZW9TRT8BTsxOIaFZo
         s9nOPR4ZvTNwyw97UZPcHEYqK6AzDdaA0abfxLooxqSh36j9FFECqp81EQwvjUgyPXnT
         JHSx/mS5i7u9JAMUd1O9s+FkyTL+cT8CSBesrHATFLQycUMDzEvmclZra2PZGDqDNLWb
         1hEUER7MS/AwBOsZHlOgvV6U79lZxAJQKYT1y65Xhk50yEInJszUWD6flFMJMFflXChs
         1+zw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:message-id:subject:from:to:cc:date
         :in-reply-to:references:user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=xDuRaoi6Vyy8kCapCLAjYfqcLqYQ5PDOHhW9vroHXxM=;
        b=N9Lhn/dDSghm0Bowt7GIVYDQ+L8l6DZ4A5P1zJYre6U0PMzROqpipsnYtM86fav5oA
         GEcfsistVXWTC86vMUst7FD3FPs4cipLNVht2XAjEBiHw/BMaO7zKhjln2++wVFb9Maz
         vzyQNEmEAe2VVwJ6xjzr665LOteeUEo8a5B7nQdFUJV2MRoQn0ZPyrcAAjyo1Ovl7Ac1
         60vKnX38h+7i4Suusgqp2o1aP3w9a3taffyJL7VMXdf0uClihtBSKJWa6cek6ab5M8Td
         ebvoknhXMJLvyBoIs/KFvXI9Pc8uHIuUQlDfVDxssdC/n0FaAdWoA1OKwBS4ZXao6vo+
         09Hw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXNAb3PaeBbdKPc+l0DXendfe/Bf7E8Z3q8F3VWtESI9XXy7GHc
	7JBfqdGnpFKP5QrHpI35hw0=
X-Google-Smtp-Source: APXvYqw+gnB528QJU90Ji6JAOLFKSpXiBGxtQ9dGhiinQ7J6RF+c+ifl9SbagUSpuH8sD6lUKL5GIg==
X-Received: by 2002:aa7:9e9a:: with SMTP id p26mr72297740pfq.25.1564970472837;
        Sun, 04 Aug 2019 19:01:12 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:5ec4:: with SMTP id s187ls18350508pfb.1.gmail; Sun, 04
 Aug 2019 19:01:12 -0700 (PDT)
X-Received: by 2002:a63:553:: with SMTP id 80mr138014975pgf.280.1564970472455;
        Sun, 04 Aug 2019 19:01:12 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1564970472; cv=none;
        d=google.com; s=arc-20160816;
        b=D+xlN/PIqu063G6asIZKVmvJu4to9UreTI+xQoa+UWn0WweFPh4ts8cjTF4GRqUVye
         yhJ5FBzPA2Vzjt+igavSnNR1BvG+Q+JlksGLy8jSmrFKWhnllX1vdbZRdxWd603T/9MB
         WuYlHrvNOnMC1fa1fWWweDtMhg6uf521YrtWnkLrD3d+8TXR0VXzqc2hak5WZsm3ijPa
         KgmHk1sE8cAzIsJCMxXANalKdY9kPLZRc5aTaLAzHDuPWp2q3J1WU60Nj92VwwimgNPw
         Sw8//U5iofpIcmPWOf50u1218FrHNrMmzkURstUvwBde80ATM1wKDtZDMv92I+NSgTpD
         npGQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id;
        bh=XfPQrOfLAzLkJHKufgqPnE5EfZvz2eBdWLlH29Zxpe0=;
        b=p2wNUGCG4SIeUclXZVmjJEEHZK5O4kesA71Of3wOgv0fDAQ6ffFo+8Gq6AO3yg3F/p
         Sw7blm0iyT+9zyl9vpA7ga3lGeNCtD7Q7ihIoU0WUt8R3sJfXdspIXyLB3HQGNv6BIbI
         W9Z4OPyAZeA4+qdoLM4xr+o5zbmmvp2qaX4Wyoqn7q2aVFNLGoCMjcP7mxwkOCuJ1Eha
         pyatsRhId5uKN9edEGl2jU8eKlpYXgIJyhbo1qVr5IJKYuawMl5QqsCnSSraRCl//RAd
         qy1E7yJNJgZRJtmowoxacdWLw2vDJohaWXxwROPf8N8I0DkhHoUnI1yR0kzkepdZ4cN4
         HZrQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 216.40.44.45 is neither permitted nor denied by best guess record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
Received: from smtprelay.hostedemail.com (smtprelay0045.hostedemail.com. [216.40.44.45])
        by gmr-mx.google.com with ESMTPS id b24si629002pjq.1.2019.08.04.19.01.12
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 04 Aug 2019 19:01:12 -0700 (PDT)
Received-SPF: neutral (google.com: 216.40.44.45 is neither permitted nor denied by best guess record for domain of joe@perches.com) client-ip=216.40.44.45;
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net [216.40.38.60])
	by smtprelay03.hostedemail.com (Postfix) with ESMTP id 660668368EF8;
	Mon,  5 Aug 2019 02:01:11 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Spam-Summary: 2,0,0,,d41d8cd98f00b204,joe@perches.com,:::::::::::::::::::::::::::::::::::::::::::::,RULES_HIT:41:355:379:599:967:973:988:989:1260:1277:1311:1313:1314:1345:1359:1437:1515:1516:1518:1534:1540:1593:1594:1711:1730:1747:1777:1792:2110:2393:2525:2553:2559:2564:2682:2685:2828:2859:2933:2937:2939:2942:2945:2947:2951:2954:3022:3138:3139:3140:3141:3142:3352:3622:3865:3866:3867:3868:3870:3871:3872:3874:3934:3936:3938:3941:3944:3947:3950:3953:3956:3959:4321:5007:6117:6120:6742:6743:7903:8957:9025:10004:10400:10848:11232:11658:11914:12043:12114:12297:12438:12555:12740:12760:12895:12986:13069:13071:13255:13311:13357:13439:14180:14181:14659:14721:21060:21080:21366:21451:21627:21740:21809:21881:30054:30090:30091,0,RBL:23.242.196.136:@perches.com:.lbl8.mailshell.net-62.8.0.180 64.201.201.201,CacheIP:none,Bayesian:0.5,0.5,0.5,Netcheck:none,DomainCache:0,MSF:not bulk,SPF:fn,MSBL:0,DNSBL:neutral,Custom_rules:0:0:0,LFtime:25,LUA_SUMMARY:none
X-HE-Tag: leaf55_441906b845118
X-Filterd-Recvd-Size: 3022
Received: from XPS-9350.home (cpe-23-242-196-136.socal.res.rr.com [23.242.196.136])
	(Authenticated sender: joe@perches.com)
	by omf15.hostedemail.com (Postfix) with ESMTPA;
	Mon,  5 Aug 2019 02:01:07 +0000 (UTC)
Message-ID: <281d938d3d50efd75d5ec927c393c936c78f9d75.camel@perches.com>
Subject: Re: [RFC PATCH] compiler_attributes.h: Add 'fallthrough' pseudo
 keyword for switch/case use
From: Joe Perches <joe@perches.com>
To: Nathan Chancellor <natechancellor@gmail.com>
Cc: Linus Torvalds <torvalds@linux-foundation.org>, Miguel Ojeda
 <miguel.ojeda.sandonis@gmail.com>, Kees Cook <keescook@chromium.org>, Peter
 Zijlstra <peterz@infradead.org>, Borislav Petkov <bp@alien8.de>, "H . Peter
 Anvin" <hpa@zytor.com>,  Thomas Gleixner <tglx@linutronix.de>, Ingo Molnar
 <mingo@redhat.com>, Pavel Machek <pavel@ucw.cz>, "Gustavo A . R . Silva"
 <gustavo@embeddedor.com>, Arnaldo Carvalho de Melo <acme@kernel.org>, Kan
 Liang <kan.liang@linux.intel.com>, Namhyung Kim <namhyung@kernel.org>, Jiri
 Olsa <jolsa@redhat.com>, Alexander Shishkin
 <alexander.shishkin@linux.intel.com>,  Shawn Landden <shawn@git.icu>, the
 arch/x86 maintainers <x86@kernel.org>, Linux List Kernel Mailing
 <linux-kernel@vger.kernel.org>, Neil Horman <nhorman@tuxdriver.com>, David
 Miller <davem@davemloft.net>, Nick Desaulniers <ndesaulniers@google.com>, 
 clang-built-linux@googlegroups.com
Date: Sun, 04 Aug 2019 19:01:06 -0700
In-Reply-To: <20190805011815.GA110280@archlinux-threadripper>
References: <e0dd3af448e38e342c1ac6e7c0c802696eb77fd6.1564549413.git.joe@perches.com>
	 <1d2830aadbe9d8151728a7df5b88528fc72a0095.1564549413.git.joe@perches.com>
	 <c0669a7130645a20e99915385b7e712360c31ed9.camel@perches.com>
	 <CAHk-=wg1PAJR6ChVXE7O_H2wEG=1mWxi2uc0fH5bthOC_81uTA@mail.gmail.com>
	 <49b659d8f88f67c736881224203418f59a5d29ac.camel@perches.com>
	 <20190805011815.GA110280@archlinux-threadripper>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.30.5-0ubuntu0.18.10.1
MIME-Version: 1.0
X-Original-Sender: joe@perches.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=neutral
 (google.com: 216.40.44.45 is neither permitted nor denied by best guess
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

On Sun, 2019-08-04 at 18:18 -0700, Nathan Chancellor wrote:
> On Sun, Aug 04, 2019 at 05:39:28PM -0700, Joe Perches wrote:
> Hi Joe,

Hi Nathan.

> This patch resolves that while adding support for the attribute.
> https://reviews.llvm.org/D64838
[]
> > The __has_attribute use is at least clang compatible.
> > https://releases.llvm.org/3.7.0/tools/clang/docs/LanguageExtensions.html
> > even if it doesn't (seem to?) work.
> 
> I was trying to follow along with this thread through the web interface
> and kind of got lost, how does it not work?

It does not work in llvm/clang mainline through
commit 305b961f64b75e73110e309341535f6d5a48ed72.

> If I apply your compiler attributes patch with D64838,
> I see fallthrough get expanded to
> __attribute__((__fallthrough__)) by the preprocessor.

Well, great.
I hope D64838 or something like it gets applied soon.
But all I could and did test was the current version.

cheers, Joe

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/281d938d3d50efd75d5ec927c393c936c78f9d75.camel%40perches.com.
