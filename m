Return-Path: <clang-built-linux+bncBD4NDKWHQYDRB26Y3XUQKGQECQRDYBA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x23c.google.com (mail-lj1-x23c.google.com [IPv6:2a00:1450:4864:20::23c])
	by mail.lfdr.de (Postfix) with ESMTPS id 39C61720A2
	for <lists+clang-built-linux@lfdr.de>; Tue, 23 Jul 2019 22:22:04 +0200 (CEST)
Received: by mail-lj1-x23c.google.com with SMTP id x19sf9558515ljh.21
        for <lists+clang-built-linux@lfdr.de>; Tue, 23 Jul 2019 13:22:04 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1563913323; cv=pass;
        d=google.com; s=arc-20160816;
        b=x8SjO9Hr8fljqVOADF04ItK40oBglC4wQCC3xjeQeu7xT62jy6iCWaFGl5+xEHw2/b
         v99L1+YmOImmtjczIj2UNqHqwZ+cokG97mzdeTuHlPQCD9uUmQgnQF1Ls7hMmlwH4Mlc
         Jqy8Sw1wvtNNym9VbJTffVZVaFXgbSXEsbXhJehXPjszCpVkV2ajFppVsd4SCTdGH83c
         wbTciP4bRi2cEugwzKZpjuK3/JsKtX/Lc7YNJVLYL/zouVy9cVXzMrPobGnBhQo4FZB5
         2SV8+IZUm+gvEPcxts+ocD6JCM4Jag1X/vMPo406QLF9LmTp6ZyJ6LlMWFOPfech5H9D
         yPJg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature:dkim-signature;
        bh=8ihv8j2x2f9ls1bodEWxT+FHySsPI0jdvYF7Kg/XS5o=;
        b=oIJqQQNGMYa8b22rNIDAq9fkYRKpg98ug8BljKXLK/9pXQb5uDOIUWcikkHMu74PjY
         rTxHq4AjfkBJDWjrkj+pSkYmgyNabxX17oRbp5p/3W87KLc0XoLXe+d4fRtAzOdohqOB
         GJk2bkn1IissSPMB/6tPzoLKrNc8ZnPOo79mHeWzU/A0NAVK1eqrLikadFknTEu4sZ0y
         q+VrSZEn3QheyIQKtmuGA7BIezKi9n9ZGLYTMRA4AU6v3xhG6bDxW//w9mlwotSznSgf
         iwc8QzwGFoq1mohKcdmTMT4VQBwAlONIlSx4jO9ZqfwSFCveYWiGjlVt00mwe5i2O35V
         EVRA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=BYuEXW5q;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::341 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=8ihv8j2x2f9ls1bodEWxT+FHySsPI0jdvYF7Kg/XS5o=;
        b=jJXd8rRtwRA8AjXegW69sPx3cEUN0y0/2gVWBln/qdDru4plqU1JKbTPNoAo6pgqdi
         vc62CNV1sRTBo8Iipl0rWF09V6q07iIWtilO3TjU1Sj8sNjN53KT16s3l/hHPhqHGoFJ
         vmkwwWrqzbsP158v6VVkbpF6RCN/cN5nSIy1jJev0tvGtLfopsf16xDGRREqxLGgsTli
         LzimGDEP7rHIX+Os+3YLFIyFbe8rI+hPZ9hSgk8EcpUNmmlUSO9vG2US1BwUTbWZrLSw
         iau+A/InAbhHncu3/w40RLoVnJci6E9etdl9OgJag3RWmKjd73XR2xIwLh+hNXNghtAi
         hFzw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=8ihv8j2x2f9ls1bodEWxT+FHySsPI0jdvYF7Kg/XS5o=;
        b=rdUkBl4UlCrsmlvHFIAg5ZAy1jBhzKlGjcn21yvvJRGi8eQu1obQJN5Av22JM06zEE
         sTpjbzfPWZk9Tz/Kl0NcxHs8TQo7nfqwI8o0GoP847SnSDGsY3o3Xc4H/MBCAdnGzF/N
         Vtkt6PLxYLw0Ki1QgQtqhvSf+0opeE7nbOqsayEFyQ+/quiYIdxK2WSoFaKv3l4LZZIv
         Wy+vaH2la65MxuqnYDIrJBGaUKalLn3kuxup/GefoEn7LucBVUktf865QkBizqqZHb4M
         S3AsjytJ2RYi0wGpP0gjnO1M/tA913tJHtpJJ959G8Tz/shBfCcD88wordNKfvr6PN9H
         V4OA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=8ihv8j2x2f9ls1bodEWxT+FHySsPI0jdvYF7Kg/XS5o=;
        b=AEDXvhNoLjIMFQq23MtBGDfaxLcdCWia1cC5AiZ+NgeNxAE1sFDyjdJFRNvqHfcynP
         gVAeifizR9A0xYkJf/biU5Tbd28Taa7f/5qNS7GFtsgaLs9aMWkCRyRvL93xvb9LmCOi
         xuRPh+1ClpWsKCBo7UyZua+71XmXfoaS+vv0oSjw7oId0kE+DHiRZhb+B2OoLvBLHudm
         2oRfsdpFel2fqB2Qa7i+aH3Duz4p/si5+esVZA5EFoe6EOWR169Ga5ZU6BUhOTGkVocC
         We179sbg3Yt+Y84sguvWHWx9FCstEYaUdbiv6f5q39IxONEIJZvSuE+u98t+/9pGY5Es
         9C4A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXg6SOmNYkMKK52m3kS9AJY+zd4EKjlP2xxsKy1XABE14bK6ntW
	UikzKm1+cbbIlTawfL5SYUw=
X-Google-Smtp-Source: APXvYqwHFpnFMPfk9oCedlm/nxlC6jaSWS0GYKbgKw1n4VUjrpIr9Ge/7lFOWBXsBNN7+sIcS7Ae/A==
X-Received: by 2002:a05:6512:146:: with SMTP id m6mr35889679lfo.90.1563913323825;
        Tue, 23 Jul 2019 13:22:03 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:5b91:: with SMTP id m17ls5007921lje.10.gmail; Tue, 23
 Jul 2019 13:22:03 -0700 (PDT)
X-Received: by 2002:a2e:8ed2:: with SMTP id e18mr40535458ljl.235.1563913323185;
        Tue, 23 Jul 2019 13:22:03 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1563913323; cv=none;
        d=google.com; s=arc-20160816;
        b=dfONx8IElx0CGNMO26zhWkvNdLpDSaKAnB8lxhYlUJBoaB4OqkGQxsgmgrkhCQWxRC
         WFAJ7qjnw+sVhnihyIjDCnwSmRIMMYD0iEO5SrtUwXjx7tcThdNPnDh+JvtUrZ0x3xRJ
         F73kS+FJAT1YKPd/CStO0uHjFnNs2BPNyhEcg0djOg/dN797PmW6ibxGgYl4W96Beh1i
         +oay9uE8YYn/dFgfuR0Xv5YnVZSfIPviFjfUAu+MikyUCBSiyu0i1HHvVKai/ocG9tW7
         7JPTdZCvRJ/UmMstrBaQM2mBSKpyhuEFwWNjTne9F5Frsh55Lt4zFr+TGXNH63QNZ2y/
         rEYQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=rCsfgRk4Gb3dHRK/7OJQSsVifCQtFvi6RkLR5FcNfMA=;
        b=HNtY+H8RSASAx3ibLdVkNi5VPhdljIcb/ojeUyfUk9ono5UWnvVxq2ntm36PLxvpiA
         sFalrudeitfnbYU8eS1J35iSBsW9Hps7CCdQ//B0RabshTblot99IHSwgS341QDBbZyd
         3oNY8PWxcV3CPbLOkXe5HuadF1NyEJo+h7PoAGDct2rzp5/wsnGxDGeP95jZE+YQ3IW7
         4qTVooFM2FKu+5j7QHY9kcu0AHs1tTvKNFDHxhyKl1TeCvdXdp+Ku1TsMW8E1rM3ccaB
         7lxbhwWV6WNwrbsBaWDQZ8TIFcakRdWHswnGJUTA0gBS+8AH8HwdGPRHAHc0SbXVS4HR
         Q4Ug==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=BYuEXW5q;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::341 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-wm1-x341.google.com (mail-wm1-x341.google.com. [2a00:1450:4864:20::341])
        by gmr-mx.google.com with ESMTPS id q11si2099539ljg.2.2019.07.23.13.22.03
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
        Tue, 23 Jul 2019 13:22:03 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::341 as permitted sender) client-ip=2a00:1450:4864:20::341;
Received: by mail-wm1-x341.google.com with SMTP id u25so29228219wmc.4
        for <clang-built-linux@googlegroups.com>; Tue, 23 Jul 2019 13:22:03 -0700 (PDT)
X-Received: by 2002:a1c:a1c1:: with SMTP id k184mr72604693wme.81.1563913322259;
        Tue, 23 Jul 2019 13:22:02 -0700 (PDT)
Received: from archlinux-threadripper ([2a01:4f8:222:2f1b::2])
        by smtp.gmail.com with ESMTPSA id u2sm38916407wmc.3.2019.07.23.13.22.00
        (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
        Tue, 23 Jul 2019 13:22:01 -0700 (PDT)
Date: Tue, 23 Jul 2019 13:21:59 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Arnd Bergmann <arnd@arndb.de>
Cc: Peter Zijlstra <peterz@infradead.org>, Ingo Molnar <mingo@redhat.com>,
	Andrew Morton <akpm@linux-foundation.org>,
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>
Subject: Re: [PATCH] [v2] waitqueue: shut up clang -Wuninitialized warnings
Message-ID: <20190723202159.GA79273@archlinux-threadripper>
References: <20190719113638.4189771-1-arnd@arndb.de>
 <20190723105046.GD3402@hirez.programming.kicks-ass.net>
 <CAK8P3a3_sRmHVsEh=+83zR_Q3+Bh9fd+-iiCxt4PU4gkx0HZ7Q@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAK8P3a3_sRmHVsEh=+83zR_Q3+Bh9fd+-iiCxt4PU4gkx0HZ7Q@mail.gmail.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=BYuEXW5q;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2a00:1450:4864:20::341 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Tue, Jul 23, 2019 at 01:03:05PM +0200, Arnd Bergmann wrote:
> On Tue, Jul 23, 2019 at 12:50 PM Peter Zijlstra <peterz@infradead.org> wrote:
> > On Fri, Jul 19, 2019 at 01:36:00PM +0200, Arnd Bergmann wrote:
> > > --- a/include/linux/wait.h
> > > +++ b/include/linux/wait.h
> > > @@ -70,8 +70,17 @@ extern void __init_waitqueue_head(struct wait_queue_head *wq_head, const char *n
> > >  #ifdef CONFIG_LOCKDEP
> > >  # define __WAIT_QUEUE_HEAD_INIT_ONSTACK(name) \
> > >       ({ init_waitqueue_head(&name); name; })
> > > -# define DECLARE_WAIT_QUEUE_HEAD_ONSTACK(name) \
> > > +# if defined(__clang__) && __clang_major__ <= 9
> > > +/* work around https://bugs.llvm.org/show_bug.cgi?id=42604 */
> > > +#  define DECLARE_WAIT_QUEUE_HEAD_ONSTACK(name)                                      \
> > > +     _Pragma("clang diagnostic push")                                        \
> > > +     _Pragma("clang diagnostic ignored \"-Wuninitialized\"")                 \
> > > +     struct wait_queue_head name = __WAIT_QUEUE_HEAD_INIT_ONSTACK(name)      \
> > > +     _Pragma("clang diagnostic pop")
> > > +# else
> > > +#  define DECLARE_WAIT_QUEUE_HEAD_ONSTACK(name) \
> > >       struct wait_queue_head name = __WAIT_QUEUE_HEAD_INIT_ONSTACK(name)
> > > +# endif
> >
> > While this is indeed much better than before; do we really want to do
> > this? That is, since clang-9 release will not need this, we're basically
> > doing the above for pre-release compilers only.
> 
> Kernelci currently builds arch/arm and arch/arm64 kernels with clang-8,
> and probably won't change to clang-9 until after that is released,
> presumably in September.
> 
> Anyone doing x86 builds would use a clang-9 snapshot today
> because of the asm-goto support, but so far the fix has not
> been merged there either. I think the chances of it getting
> fixed before the release are fairly good, but I don't know how
> long it will actually take.
> 
>        Arnd

Furthermore, while x86 will only be supported by clang-9 and up, there
are other architectures/configurations that work with earlier versions
that will never see that fix. There are a few people that still use
clang-7 for example.

In an ideal world, everyone should be using the latest version of clang
because of all of the fixes and improvements that are going into that
latest version but the same can be said of any piece of software. I am
not sure that it is fair to force someone to upgrade when it works for
them. Not everyone runs Ubuntu/Debian to get access to apt.llvm.org
builds or wants to add random repositories to their list or wants to
build clang from source.

I suppose it comes down to policy: if we don't want to support versions
of LLVM before 9.x then we should just break the build when it is
detected but Nick has spoken out against that and I think that he has a
fair point.

https://lore.kernel.org/lkml/CAKwvOdnzrMOCo4RRsfcR=K5ELWU8obgMqtOGZnx_avLrArjpRQ@mail.gmail.com/

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190723202159.GA79273%40archlinux-threadripper.
