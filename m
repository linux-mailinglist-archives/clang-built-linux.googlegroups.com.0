Return-Path: <clang-built-linux+bncBDYJPJO25UGBBR7XTSDQMGQEB32Y3EA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x53b.google.com (mail-ed1-x53b.google.com [IPv6:2a00:1450:4864:20::53b])
	by mail.lfdr.de (Postfix) with ESMTPS id 78C463C18B1
	for <lists+clang-built-linux@lfdr.de>; Thu,  8 Jul 2021 19:54:15 +0200 (CEST)
Received: by mail-ed1-x53b.google.com with SMTP id j25-20020aa7ca590000b029039c88110440sf3696612edt.15
        for <lists+clang-built-linux@lfdr.de>; Thu, 08 Jul 2021 10:54:15 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1625766855; cv=pass;
        d=google.com; s=arc-20160816;
        b=YMsX1n41848tun78ch3WQ9X2jxQ19dX6oJ8UBDVOmOOc0ibPrKQqYPB/Kzwpf6T0wR
         /P3lx4j4cJMji5FKfOlcX3Qpli5N8SYyqzs2X3Uh6LjeudeDlVE2svGtDpqyflIkHbWX
         s+GmqtpxPPk/F6zvqs+mthQ7gY/BrAxlZaoUFxFnQy4g2ejRjnHMWnnAZVYvoXT0+1a1
         x8rc5c9nMuxUvz1rI4AqvI35O+xKPRI86W8UHZhRJl+sXZt0s8r0OOC92WFHFlS6ChGP
         ezT/zR0BMdZLE75jLQ57FnZu960CghyuAjnup7uFXDfNSix2RO2YVwOPrPevBWg5bDSx
         sEJQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=g+2ie5YwwiPA+quEFGSCL0sA8m2ZZiaXnTBI/OU93N8=;
        b=ndKqNbqdARdrFiG/8U9WztV/ePQv1Dp9JqBsFwAc9Xncx+MUO+v41v02Pity5VJL4r
         6CJtMQkNBUEHgs1WFDxnikW8PuJNL+K/4BUnajZDSfi6VYBEiGKOhAy2ooBDWZpvUYc1
         Johy7uwrhmY3tYilf6U71icC16eu7r5CqLC/tr//r9NBq7eOoV+18M/zPJT5MbO8yh9t
         po7FRnlqc+vpxhq6dY0o2W9u9pxsW8fuTfxqekQp27m4GOAPFginbrHwuDqp/AqVxOJ+
         dcYGINU0OMYnbWQB8gCWhFYBnhnXcFTmVHO/xuQCaS20HPpTD4i5wn9IV5Zd8rEb6QGz
         uSUQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=RWOaueOJ;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::22f as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=g+2ie5YwwiPA+quEFGSCL0sA8m2ZZiaXnTBI/OU93N8=;
        b=poq8AK3MtLWyCp30mVvs1I1UapBogWg8vadyrWyGe6AETotEHQjjGAVtUZc9YpmB7g
         txGiTRkjMri21mm1DYSH4wyl4z6XunV40sRxxgBFygpyN9yaXrGj/a5N8wLCgDzDIiZt
         GLymNw+JUTh5VEqEDeAiZLV45RoRLaAgBu3szg3zXl5JVYQqJHRp4gcQc77W6AopZ+RV
         KuVGkLMyfXRmVNi511/0YHh1JVGc22aPWg+GzG+5b7Zxy1bkNhSo3SmrIah60Ljw1OQp
         wV231/2AkrsYliwNvJiXB52P4aGJuYbgfR/wqEToYMszkVUxtCWE78gX1ETOmW3qV4Fa
         vW4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=g+2ie5YwwiPA+quEFGSCL0sA8m2ZZiaXnTBI/OU93N8=;
        b=inxbYPZA9ANrKgMx9GAca9f4sBr82pMLnPA0CY4OrSk4jm2Cba0SQBUYTxRklRja+U
         cx8pHZQrvmqIvQrXovh8sv3TrAfxYbk11S1hpvFVo6vwJVy8Z7gcbO6gmcN5Yb6Muzoi
         jDnC0WrrZdY6CJ6o3gz3CchVr3TGY/qS4PaHF8Df1LwFutLd4R3ktIT1nr5L5jZ21Pc3
         xySZN9bIWW5rmSL2E+SceUKPLZtCwKe8z5H4vd4Vvw2gIgkBT9kXv0M982jplsoYbtVU
         EBxlw4B52rIIyXLfzI9RVNxVBKCi2jFkdYiE5MG40VVoaD5/26pUUdJIpJjAKHngAqNc
         psWA==
X-Gm-Message-State: AOAM532Sj3ylWNfUA1NqZzJQLQHSsk2dJ22Gnpnb9xQyrEJWGLdqGA3A
	xSQmnbd2yLLoupHsWzAqUJA=
X-Google-Smtp-Source: ABdhPJxi3jRqPEOCohPMcCwGpyOi/1CWfFKL+Sdu5zWlHwp7flDZWxnNY8lOKiFijZTeRRZaKaJPsg==
X-Received: by 2002:a17:906:dc92:: with SMTP id cs18mr33088548ejc.433.1625766855255;
        Thu, 08 Jul 2021 10:54:15 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:906:48c3:: with SMTP id d3ls1150126ejt.1.gmail; Thu, 08
 Jul 2021 10:54:14 -0700 (PDT)
X-Received: by 2002:a17:906:24c3:: with SMTP id f3mr19972668ejb.145.1625766854435;
        Thu, 08 Jul 2021 10:54:14 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1625766854; cv=none;
        d=google.com; s=arc-20160816;
        b=rfa5Got2LpxUFyS5h3oglTYguG3ARoO8vq4pg+7s/6bFtSI/ub6Vm6fh/fSfEvQN0i
         hIpD6EPgJajHiv51yS3UDhTP054AwiPN1F4D+fsNYGSLITx6n7ztDk9UQcoisiJSW93v
         S1B/f2+3Kb7fY+l/Ib9s5f553nn7FpYIv9D+irWNFM+TW8/TcgrfT8dPS+pUa5RGGCXN
         3zAemZudMyl7VBYpWreCFcBSi8RxnWj6PdCP7/2zapcLQ+1y2AJUXgEVfHVuVLT6CFor
         wJoowqR1tnShzXBgXzeOMOpmbwZnNNs5nF27Fml2ufCvgW58+zOAkCc6Vtqkb+TX458K
         WtEQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=XLeTm8WzPVQ9Sr8q9zm+SAU9BBtPQLj8j1FfOLzDLnU=;
        b=ZOQo2TVmrT9EpEaa42JJtgAhp6GHyB/bytdNp1bUmLMChRf46j30waeFjzkNM1t0XW
         UhaYzivhR0V8NSENClR3Yia9eI5a59Gf6EMMAkEFqfMdKINRpunhArajwuZlKsp+tknM
         bVrfbwPZHmZXdIzBmtWdFuKVvbH3JXajTZPglHdJWPAzfZRocu0WDDfqyTRNbbU08fdr
         tm++eFndmxtK5P4mGzgJ32dRrGHWS1aESulfMvaCIhxjx/H4HqpTLFez53oEAKcd8j4k
         Djzm/ib0DNwcur5BWMzrLT5DB7VtHGlVA9NuyniSnmfZdwFtoGq33ph78OFNwboyW/N0
         04Xg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=RWOaueOJ;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::22f as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-lj1-x22f.google.com (mail-lj1-x22f.google.com. [2a00:1450:4864:20::22f])
        by gmr-mx.google.com with ESMTPS id s18si159229ejo.1.2021.07.08.10.54.14
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 08 Jul 2021 10:54:14 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::22f as permitted sender) client-ip=2a00:1450:4864:20::22f;
Received: by mail-lj1-x22f.google.com with SMTP id q184so3245088ljq.0
        for <clang-built-linux@googlegroups.com>; Thu, 08 Jul 2021 10:54:14 -0700 (PDT)
X-Received: by 2002:a2e:9952:: with SMTP id r18mr3955699ljj.244.1625766853637;
 Thu, 08 Jul 2021 10:54:13 -0700 (PDT)
MIME-Version: 1.0
References: <20210623141854.GA32155@lst.de> <08df01d7683d$8f5b7b70$ae127250$@codeaurora.org>
 <CAK8P3a28_0KJpcLRQrDhFk8-ndxmfk7-Q2_qcRRiYkyh-NNZUQ@mail.gmail.com>
 <08e101d76842$94f78a60$bee69f20$@codeaurora.org> <20210623151746.GA4247@lst.de>
 <CAK8P3a2bG64ARjpwQ0ZhQ9P0g8B-=AwcHHAbYBXBS4B6Fy9pQw@mail.gmail.com>
 <YNQE0YJzC2xmWg+2@Ryzen-9-3900X.localdomain> <20210707141054.GA24828@lst.de>
 <1ee8fc44-3e8c-91c0-7909-a636757dbda4@kernel.org> <20210708052751.GA18789@lst.de>
In-Reply-To: <20210708052751.GA18789@lst.de>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Thu, 8 Jul 2021 10:54:03 -0700
Message-ID: <CAKwvOd=iRLQPum8-jaCG90TPyxDptNB31yRHMEWgSMxjv=KuHA@mail.gmail.com>
Subject: Re: how can we test the hexagon port in mainline
To: Christoph Hellwig <hch@lst.de>
Cc: Nathan Chancellor <nathan@kernel.org>, Brian Cain <bcain@codeaurora.org>, 
	Sid Manning <sidneym@codeaurora.org>, Arnd Bergmann <arnd@arndb.de>, linux-hexagon@vger.kernel.org, 
	linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=RWOaueOJ;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::22f
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

On Wed, Jul 7, 2021 at 10:27 PM Christoph Hellwig <hch@lst.de> wrote:
>
> On Wed, Jul 07, 2021 at 10:42:27AM -0700, Nathan Chancellor wrote:
> >> hch@brick:~/work/linux$ make -j4 ARCH=hexagon
> >> CROSS_COMPILE=hexagon-unknown-linux-musl LLVM=1 LLVM_IAS=1 defconfig all
> >> HOSTCC  scripts/basic/fixdep
> >> clang: error while loading shared libraries: libtinfo.so.5: cannot open shared object file: No such file or directory
> >
> > Hmmm, is that with libtinfo5 installed (or whatever the ncurses-compat
> > equivalent is on your distribution installed)? I had that problem on Debian
> > until I insta
>
> I did install libtinfo5, which just gets me to the next error:
>
> hch@brick:~/work/linux$ export PATH=/opt/clang+llvm-12.0.0-cross-hexagon-unknown-linux-musl/x86_64-linux-gnu/bin/:$PATH
> hch@brick:~/work/linux$ make -j4 ARCH=hexagon CROSS_COMPILE=hexagon-unknown-linux-musl LLVM=1 LLVM_IAS=1 defconfig all
>   HOSTCC  scripts/basic/fixdep
> clang: error while loading shared libraries: libc++.so.1: cannot open shared object file: No such file or directory

^ Nathan did mention earlier in the thread that he "had to install
libtinfo5 and libc++1-7 on Debian Buster." Emphasis on the _and
libc++_ part.

I'm not sure if that binary distribution came with a libc++.so.1; if
so, that path needs to be specified via LD_LIBRARY_PATH so that the
runtime loader can find it.  Perhaps rpath wasn't set when the clang
binary was built.

We're looking into statically linked images of clang to prevent these
kinds of games.

> make[2]: *** [scripts/Makefile.host:95: scripts/basic/fixdep] Error 127
> make[1]: *** [Makefile:543: scripts_basic] Error 2
> make: *** [Makefile:346: __build_one_by_one] Error 2
>


-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOd%3DiRLQPum8-jaCG90TPyxDptNB31yRHMEWgSMxjv%3DKuHA%40mail.gmail.com.
