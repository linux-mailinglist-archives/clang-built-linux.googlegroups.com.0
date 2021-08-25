Return-Path: <clang-built-linux+bncBDYJPJO25UGBBK7DTKEQMGQEELLHBFI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x33e.google.com (mail-wm1-x33e.google.com [IPv6:2a00:1450:4864:20::33e])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F1543F7D80
	for <lists+clang-built-linux@lfdr.de>; Wed, 25 Aug 2021 23:10:09 +0200 (CEST)
Received: by mail-wm1-x33e.google.com with SMTP id j33-20020a05600c1c21b02902e6828f7a20sf194977wms.7
        for <lists+clang-built-linux@lfdr.de>; Wed, 25 Aug 2021 14:10:09 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629925804; cv=pass;
        d=google.com; s=arc-20160816;
        b=Qv7lm5uLLY8QBh3vAQgt+3rCFbPWwTqUMdiqyjbIRJYT61HFxuLPSOmaOrtbly7wYY
         4VqExUDRWEoqPEiAHuizOHMigrJdT2LeuPC+Yqk9OA0BO3ljJsSfDEVTIOrINFC3OWHD
         gy3iut2PqPqc20In9wYBevG3IuLgyAJNB7gj5Xvhn3pZTrXg/Bz58hxy75PQ5B/Pubxc
         jZ4ogFhpy7MxctlKakRRoUR9PnE9DyEtvO16nTCeDMXcUQk2LQLtOFcha0Rd/ygkXnxF
         vT9RLPoxYMricEgRrw4XPj2QN1lGTVXB8h/LM8KRJp8o8g0tdC7P9pnOedI23OyBlgiB
         bL1A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=3ZrmEKNJ7WxZRw8Bdl+Palxlurhleq1CIc6CLkSMKgw=;
        b=Yfw9iNXegA/65SaAXaVZWCYaCzECYtamcqBrLYsTDS/ti2VzE1TupxAiFfG+WI9pMF
         EwpFmj1roWPQEc4Swc29qAUOzmcGb/ddN1m7jk64uS3aI92Tpf5Kv28QqpIGm9p1qczV
         IpbKTwmdRNhgFfiMlO9NRgxSLXlAkJNHTaRO4m9bXGjdNxLVG9K9SOIqhnT1ZL/vUhM7
         WXHNUNXhJDm8Ov+XT+2uYE+QzBRdvfh6Sb1YzOIlnjfBOMwFnIAJTw8A/U9tZKMoEpTu
         9NrxUmz0uPU3+CvQZs17JBZW2xaZUA0HtJahEomtbHGPSBRFKTi96ugXopuot6bWsjzX
         1JVw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=rDk6QdPm;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::133 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=3ZrmEKNJ7WxZRw8Bdl+Palxlurhleq1CIc6CLkSMKgw=;
        b=ADusNax51ZGCfHSQPDwhBG3MFRhpySAFvzl7EKpQ+3ftNq+jmBeC4Nm27gSvNTIFkE
         rB2PVYRolj0HWU6RfcYBDz5uhgGs9kArqA3otLSV9v2NwFsZJVhhUyOvlSsdi4BQl23D
         dz7dPG5KJa7VHW6hABlUo2hJpj4HiLY/HUon+phhrAGggAn9jiulORAeljLiKTDmwAkY
         vDtCjNmI75TMRj8Wi7zlqal7kSiEanWk15OSN9VdHhGRvuQnFZjuDPy5fblN6U49t4qB
         gQufjDpIwGHOv0/KM+ZviUFLGUiGKzV/mW2ixVHGWIFha4qzqBD2Y5l4IwYNAIOL9GXt
         2Oag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=3ZrmEKNJ7WxZRw8Bdl+Palxlurhleq1CIc6CLkSMKgw=;
        b=f2wTm0QVT/xpZkyeoaaYLo/aFAKTpR5yiCN2bsrmjIgR9VaGD0V/dokKrPi8jx8xaS
         +zK4n5rvoIOBQTy0WX/0RE8ZMINuqQR8FCG3CSV9nq1qxby4NBtEaFoFJuTwpROZ+v3A
         JmFmMkMaPkWmF4PKHce4ZQbQHBTjhz1VWIEpECBKwLan4vlztCOO2RXBDJaJjqE5LrY9
         AxnxZ1MIpP2CyjF9+DK1CQuVKTp/b1lni2rlqFa1l7F9CXmn/Cmi6okUkzAT0cCJ6qaC
         p6SYVrEGZnhQCie7aVCSlNb1cwFrPYKt2pVXd4IEefgOQkOLdKJlxZHlsp10SLVJnZDe
         tg2A==
X-Gm-Message-State: AOAM533pt6SRcwvMfmFtXRQRAmeGHJm8g6yHjz8E89ObXdYz26i1prI+
	qRoAi1ClMJ1UgQDzNY2QtCY=
X-Google-Smtp-Source: ABdhPJy6kHhMpOVtyENXWQBB06W+C40Xwz97t955i/oqZt18iPvEYKl0Hiql+OoiPuH2mOVzX1098g==
X-Received: by 2002:a7b:c7cd:: with SMTP id z13mr11326752wmk.51.1629925804105;
        Wed, 25 Aug 2021 14:10:04 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:adf:ef0d:: with SMTP id e13ls4485679wro.3.gmail; Wed, 25 Aug
 2021 14:10:03 -0700 (PDT)
X-Received: by 2002:a5d:4c4e:: with SMTP id n14mr147068wrt.226.1629925803209;
        Wed, 25 Aug 2021 14:10:03 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629925803; cv=none;
        d=google.com; s=arc-20160816;
        b=B/3azYFMCpAaEQ3fdw03QbEayzJAk7QUiePzlZn92PF0fw9tApgPRDazvBXuWkwGMT
         pzjQZSWMjKH+L6q80JojpGp8FOSsv5vWFhn1wav6/HPwI22vJpPq2k4tRAFU/pOZRakx
         3CbsJXwBKqtPPaLYHf1z5KltBgQNslJvXU83mBO3fN+xw04rwQajXPhzuFVOfX1L4Ugh
         Ldf7WkFdW3bKbNn1dGoYQS1aP8fgvw20aUAtP14V7uFO2giWFmObYKPhwcukb5pQvRgE
         ZyH87T7R51xL/omPQXZt23siMx4gGhHjbDiS4ln8HsXBLKuezdx86aKXtDTbR6YZ/uXj
         Bs2Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=E9tATzQmNnf1n87t/HdQMMPUKAwA0uk3NMuEvkkauNQ=;
        b=taI0sBsQA5aVo7oKnbHHT3snrF2WpZKlMyZXxAx3UAkI6iaMLXSN0IoVF7luhrg44l
         fmC9gthLx6yKrhOu3/b0LO7z0XCJZd0itTMhmVuMN4AGYsi34lIAVdBaKlmr4i+omlAA
         eDVtsi7PkKgaoURSsSV05R6ftXfb1Vg3rMqV7IFQeo29CvjQhVACWdkumFT2l1hEos88
         KVVM5NSFrlnY1H1MuAug6PQf+O5R3k6odmFsHDNG3+lOBK8Vl5sI1Nfu53dtxf+PlrJU
         Dd8Ty5+6h5uUY2GOdZ9Uy88ko5ygnOIgQDh2CUQil0Y+SkorpWrdliciYxqbDRpBS3Q+
         ZJvQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=rDk6QdPm;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::133 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-lf1-x133.google.com (mail-lf1-x133.google.com. [2a00:1450:4864:20::133])
        by gmr-mx.google.com with ESMTPS id g17si204830wmq.4.2021.08.25.14.10.03
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 25 Aug 2021 14:10:03 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::133 as permitted sender) client-ip=2a00:1450:4864:20::133;
Received: by mail-lf1-x133.google.com with SMTP id x27so1768084lfu.5
        for <clang-built-linux@googlegroups.com>; Wed, 25 Aug 2021 14:10:03 -0700 (PDT)
X-Received: by 2002:a05:6512:3b85:: with SMTP id g5mr87035lfv.368.1629925802350;
 Wed, 25 Aug 2021 14:10:02 -0700 (PDT)
MIME-Version: 1.0
References: <20210817005624.1455428-1-nathan@kernel.org> <80fa539a-b767-76ed-dafa-4d8d1a6b063e@kernel.org>
 <CAHk-=wgFXOf9OUh3+vmWjhp1PC47RVsUkL0NszBxSWhbGzx4tw@mail.gmail.com>
 <5c856f36-69a7-e274-f72a-c3aef195adeb@kernel.org> <202108171056.EDCE562@keescook>
 <3f28b45e-e725-8b75-042a-d34d90c56361@kernel.org> <CAK7LNAQFgYgavTP2ZG9Y16XBVdPuJ98J_Ty1OrQy1GXHq6JjQQ@mail.gmail.com>
In-Reply-To: <CAK7LNAQFgYgavTP2ZG9Y16XBVdPuJ98J_Ty1OrQy1GXHq6JjQQ@mail.gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Wed, 25 Aug 2021 14:09:50 -0700
Message-ID: <CAKwvOdkaHp5akDyAz_rav5u6gu4SgtjhmzftKgNCPr0LVukHOA@mail.gmail.com>
Subject: Re: [PATCH] kbuild: Enable -Wimplicit-fallthrough for clang 14.0.0+
To: Masahiro Yamada <masahiroy@kernel.org>, "Gustavo A. R. Silva" <gustavoars@kernel.org>, 
	Nathan Chancellor <nathan@kernel.org>
Cc: Kees Cook <keescook@chromium.org>, Linus Torvalds <torvalds@linux-foundation.org>, 
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, linux-hardening@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=rDk6QdPm;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::133
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

On Tue, Aug 17, 2021 at 2:18 PM Masahiro Yamada <masahiroy@kernel.org> wrote:
>
> On Wed, Aug 18, 2021 at 3:25 AM Nathan Chancellor <nathan@kernel.org> wrote:
> >
> > On 8/17/2021 11:03 AM, Kees Cook wrote:
> > > On Mon, Aug 16, 2021 at 09:55:28PM -0700, Nathan Chancellor wrote:
> > >> If you/Gustavo would prefer, I can upgrade that check to
> > >>
> > >> ifneq ($(call cc-option, -Wunreachable-code-fallthrough),)
> > >>
> > >> I was just trying to save a call to the compiler, as that is more expensive
> > >> than a shell test call.
> > >
> > > I prefer the option test -- this means no changes are needed on the
> > > kernel build side if it ever finds itself backported to earlier versions
> > > (and it handles the current case of "14" not meaning "absolute latest").
> > >
> > > More specifically, I think you want this (untested):
> >
> > That should work but since -Wunreachable-code-fallthrough is off by
> > default, I did not really see a reason to include it in KBUILD_CFLAGS. I
> > do not have a strong opinion though, your version is smaller than mine
> > is so we can just go with that. I'll defer to Gustavo on it since he has
> > put in all of the work cleaning up the warnings.
>
>
>
> https://github.com/llvm/llvm-project/commit/9ed4a94d6451046a51ef393cd62f00710820a7e8
>
>    did two things:
>
>  (1) Change the -Wimplicit-fallthrough behavior so that it fits
>       to our use in the kernel
>
>  (2) Add a new option -Wunreachable-code-fallthrough
>       that works like the previous -Wimplicit-fallthrough of
>       Clang <= 13.0.0
>
>
> They are separate things.
>
> Checking the presence of -Wunreachable-code-fallthrough
> does not make sense since we are only interested in (1) here.
>
>
>
> So, checking the Clang version is sensible and matches
> the explanation in the comment block.
>
>
> Moreover, using $(shell test ...) is less expensive than cc-option.
>
>
> If you want to make it even faster, you can use only
> built-in functions, like this:
>
>
> # Warn about unmarked fall-throughs in switch statement.
> # Clang prior to 14.0.0 warned on unreachable fallthroughs with
> # -Wimplicit-fallthrough, which is unacceptable due to IS_ENABLED().
> # https://bugs.llvm.org/show_bug.cgi?id=51094
> ifeq ($(firstword $(sort $(CONFIG_CLANG_VERSION) 140000)),140000)
> KBUILD_CFLAGS += -Wimplicit-fallthrough
> endif
>
>
>
> The $(sort ...) is alphabetical sort, not numeric sort.
> It works for us because the minimum Clang version is 10.0.1
> (that is CONFIG_CLANG_VERSION is always 6-digit)
>
> It will break when Clang version 100.0.0 is released.
>
> But, before that, we will raise the minimum supported clang version,
> and this conditional will go away.

I'd much rather pay the cost of cc-option to have a more precise
check; Linus is right: when I upgrade AOSP's fork of LLVM, it may not
be the fully released version of clang-14 though we have already moved
the version numbers upstream to clang-14.  I think we should strive to
prefer feature tests over version tests, which are brittle.

```
# Clang would warn about unreachable fall throughs until clang-14.
ifdef CONFIG_CC_IS_CLANG
ifneq ($(call cc-option,-Wunreachable-code-fallthrough),)
KBUILD_CFLAGS += -Wimplicit-fallthrough
endif
endif
```

Is precisely what we want.
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdkaHp5akDyAz_rav5u6gu4SgtjhmzftKgNCPr0LVukHOA%40mail.gmail.com.
