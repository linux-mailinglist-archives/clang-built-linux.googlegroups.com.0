Return-Path: <clang-built-linux+bncBDYJPJO25UGBBNUIWT5QKGQEZJ6YRTA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3f.google.com (mail-yb1-xb3f.google.com [IPv6:2607:f8b0:4864:20::b3f])
	by mail.lfdr.de (Postfix) with ESMTPS id BC54D277A90
	for <lists+clang-built-linux@lfdr.de>; Thu, 24 Sep 2020 22:40:23 +0200 (CEST)
Received: by mail-yb1-xb3f.google.com with SMTP id r9sf437188ybd.20
        for <lists+clang-built-linux@lfdr.de>; Thu, 24 Sep 2020 13:40:23 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1600980022; cv=pass;
        d=google.com; s=arc-20160816;
        b=039JSWwsmMcubZWDgkD96ZnvQVjUoE8eY2M9W3H7EzJ1dDHZloHyIWuHsHcoI4uEmt
         FBP4+1IyLWdmGRi4jAO9SlMxLDxxtKS+8b+TKvPhl48XFR9o96qfwNDkNgXjIZkIcr6R
         eH30JoUJKV4VpRZkG1TDMrjDP8xPfqTa/DJZZOIFD54i5EVlaiVrKi8ndN/zpA1OZL3b
         05tl+Ucu6NEb57Vwz82X+1n7VbXmxmLbmw2OQ1fIMEYrfXb+F4Zzs5TrsaL2z6InJwly
         6Gd4C5cVnh5QHRV6GqfS2lgHAY1t21otqivsNgZHyHouqN6j0S7EuuSiXigUtZ2omAet
         +KaA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=gtfzQKccJ2mKiJ6iDVcM2gySGSrQeJIuAUketMrybQI=;
        b=zd7it/87qn04mK2tirD/2LiR8g6JpqWqaJMdgBToxewik4wDY3j4oX110kjGOIfZH4
         MQEjaAbWsD8di/OJ+a5My4eRg108ymwgouU0On1COkz4UkwavJF9//7zto+ZwULh88I7
         thzUvCP22xZkVvoOI/B5QEu5t2xzdEkm8YKsH2DWxm5Yfy/jpqJb8LOaFMTMzcU2eAXw
         kh2CH+50Iy+gL/hbn2LIwnMkTLr8pP1mOf26X7/0Ou19719mgihbKqYg2ARloPlErf9h
         RXJS1MRoCCwOuYchzXyHIb6VGhDvlpkvjnVOpi2nzmb5OG1chzynMzf9rtJVFnBPGsbU
         eM+g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=bJURcH3C;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1043 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=gtfzQKccJ2mKiJ6iDVcM2gySGSrQeJIuAUketMrybQI=;
        b=AhtIxVs9Mx8nNnkKMck8m3l7bem4LB46Yoy2dnCvf5mPw0iF072+924e/S+iKl3U7c
         EeHJ64sZl72hnzaEYftFgKksp7d5PWx+92jgZB8xOVKg0AzlkIXxSfKrhFd9U1aNYxco
         mhMb0WnPi1bOJt1/0Y8Tly+e8G4OrpqyBNJsQ9XbqskzZWYC86PN9bOfABcPE5t7YV6f
         SvXO0VHbbGhXOvDB0MSGV6azmYftAjYMb4WWWGWOgc1IW04QgCktJgzvU5uSeufMh1tS
         ltvHeWALGobA+bsums64WuGIBNdZiVac3zztpQrcFJDpdIiV3r7WPvCvxTwmbdyTN813
         JBwQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=gtfzQKccJ2mKiJ6iDVcM2gySGSrQeJIuAUketMrybQI=;
        b=cx5f/Atg0AHCahyLMET0UV0EI1EY+OKmtaHbOEvgvNN/pdVjbMfSq8TdtNCclglSZ5
         /oblnnI9cp3BsskUUtK9MzoUtc9A2W0Lm6TCWdqs7Oqsn0806Gzp1OWl3FlrK/+yXjfL
         WQpVDbuXktuytPTC5/ecues8S7+IXUST9uQGX4xhWZ/AkAtpiz1gfsSswSlNrTqS4QjK
         FmZsxMdtp1SM+4T9tRXfow3ElzB7s3I5CCTMJz/JXSQ/1GxWHgLMLDdaqUxl0TewRcYi
         jQXqhuk4+HFUKCEOk25m/K3K/8Ucaw9ECY3DG7+C9MtxVjWggFzvSchEatQnXNJniDnn
         whjA==
X-Gm-Message-State: AOAM531DrnaDIZ9CMrZt+5KKCdjxpuZF0IGWCOYx1U8pm0RBVi3NAGLJ
	Nrpr6SNbubSGup0Jamey0NA=
X-Google-Smtp-Source: ABdhPJwgLKU7xfbcmc9Cj8wh+P3B5PlHFpz8TiqRBOZt9tZmOhKqoBKIbt0zg3G6w3K/5RVrQlsMLA==
X-Received: by 2002:a25:2bc2:: with SMTP id r185mr956193ybr.71.1600980022734;
        Thu, 24 Sep 2020 13:40:22 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:9005:: with SMTP id s5ls241236ybl.4.gmail; Thu, 24 Sep
 2020 13:40:22 -0700 (PDT)
X-Received: by 2002:a25:e710:: with SMTP id e16mr906220ybh.358.1600980022270;
        Thu, 24 Sep 2020 13:40:22 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1600980022; cv=none;
        d=google.com; s=arc-20160816;
        b=JNQNHxNpBH0LwbJkwt9OEiocss+eEbT5Bl1iCVVMaB+2Cc8rhFBGVES6pdJ1wzHrVU
         +cycxgnT6H31HScXkKuCDxGuYbsVDSXuHp33eFF3g4s8/J0Tn25lf0ZEkreWAA2aLK/f
         +Gq0aVcj+iTGOWhFv+uPxG5iDR2DyQhPRpbqMjfNqf2xF+ysnbskrJUd+dPgGt5hYuCZ
         CQCpgL+3v7X8adrCOb7AjqzAjeOf5dM5Uha6k57gdVkWfkn64d0gjfCUfjzZm/TAokW5
         sPJAmVAoER/NLqm/2OcaST3mKWk6H/yVYf8vCBqmi67wKP16qrpbvpOBBvO+tZIlq2yT
         5uag==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=UsrH7o+UwVgn//9vIRfkhx21gWjyOdf+tFUKDwF6Gic=;
        b=li6GohafFMPY2h+/JWpv+pTCrZ2E9DfuYtFViIaYHoTE0ePU/AEM7U21SvUFxgZkkL
         VEgsBIHZdT4L65nhEnJYs3GncLfmQoWF2d9mmM4edsZLmSzLp/jgWMFcWVae1uo/WRmy
         WYAF0PfD7o+bA1ZGExyLAyT2N/2vOe5VDYviW3KGoqWxzO3uCc5cfJYarcGV5ZIdGiHL
         bhaqrUaQjK32k+jJcQVGS1msKazn9o4dbb9hKxmVhUh9S+BHdVU4WGBvZpEHXhB/J1ic
         eUcQ6G1pLu/iB1BKKYn6GWlyITerI1bPVmEsUiig/sMli9l6nt5gR1wkvaizoI/OPXHH
         OP6g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=bJURcH3C;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1043 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pj1-x1043.google.com (mail-pj1-x1043.google.com. [2607:f8b0:4864:20::1043])
        by gmr-mx.google.com with ESMTPS id s69si53969ybc.4.2020.09.24.13.40.22
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 24 Sep 2020 13:40:22 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1043 as permitted sender) client-ip=2607:f8b0:4864:20::1043;
Received: by mail-pj1-x1043.google.com with SMTP id bw23so491005pjb.2
        for <clang-built-linux@googlegroups.com>; Thu, 24 Sep 2020 13:40:22 -0700 (PDT)
X-Received: by 2002:a17:90b:f18:: with SMTP id br24mr708218pjb.32.1600980021639;
 Thu, 24 Sep 2020 13:40:21 -0700 (PDT)
MIME-Version: 1.0
References: <202009180302.cc60Lfbg%lkp@intel.com> <79256845-c7d4-94df-adee-9cd833fbca03@csgroup.eu>
 <20200922163519.GL28786@gate.crashing.org> <CAKwvOdmhW_T-J98tQRoMCAgY6uPnW=bujtpDw5KauMnHDE4n=A@mail.gmail.com>
 <20200922215325.GM28786@gate.crashing.org> <CAFP8O3LaxHqpeUu-iifJMC=YkYmNXSUyxCbRnSdsMRD-pKwMGQ@mail.gmail.com>
 <20200922232956.GO28786@gate.crashing.org> <CAFP8O3+XC59aJGG4RcSAW_pysftpobXQ=sbjqgeNDoF=TBP7sw@mail.gmail.com>
 <CAKwvOdkBH7=hjNQiXUGx8D2oyyrVZdDSo0QwS3MO+nU=FCaaQQ@mail.gmail.com> <20200924003055.GZ28786@gate.crashing.org>
In-Reply-To: <20200924003055.GZ28786@gate.crashing.org>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Thu, 24 Sep 2020 13:40:10 -0700
Message-ID: <CAKwvOdmyynxsfenanhu11tErFupgE2voW6TjfYY1oUdAz_-HYw@mail.gmail.com>
Subject: Re: [linux-next:master 7032/8629] arch/powerpc/kernel/vdso32/gettimeofday.S:40:
 Error: syntax error; found `@', expected `,'
To: Segher Boessenkool <segher@kernel.crashing.org>
Cc: =?UTF-8?B?RsSBbmctcnXDrCBTw7JuZw==?= <maskray@google.com>, 
	Christophe Leroy <christophe.leroy@csgroup.eu>, kernel test robot <lkp@intel.com>, 
	Michael Ellerman <mpe@ellerman.id.au>, kbuild-all@lists.01.org, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Ulrich Weigand <Ulrich.Weigand@de.ibm.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=bJURcH3C;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1043
 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Nick Desaulniers <ndesaulniers@google.com>
Reply-To: Nick Desaulniers <ndesaulniers@google.com>
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

On Wed, Sep 23, 2020 at 5:33 PM Segher Boessenkool
<segher@kernel.crashing.org> wrote:
>
> On Wed, Sep 23, 2020 at 01:43:18PM -0700, Nick Desaulniers wrote:
> > I wonder if we need to be setting --target=powerpc-linux-gnu instead?
>
> Yes, probably.
>
> > ah, `-a32` will put the assembler in 32b mode.  I'm guessing gcc maybe
> > adds this implicitly for `-m32`?
>
> For Linux and many other systems, yes (if it isn't the default, etc).

Now I'm curious if this behavior works in Clang for x86...does the
target triple used internally change when -m32 is specified?  If so, I
wonder if Clang doesn't do the same thing for PPC maybe.

For now, I'll just send a patch marking the relevant config as broken
or "un-selectable" when CC_IS_CLANG with a TODO until we have more
time to sort this out; that way the CI will stop harassing folks over
it.
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdmyynxsfenanhu11tErFupgE2voW6TjfYY1oUdAz_-HYw%40mail.gmail.com.
