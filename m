Return-Path: <clang-built-linux+bncBDYJPJO25UGBBTMOTPVQKGQEXLY2PDA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x939.google.com (mail-ua1-x939.google.com [IPv6:2607:f8b0:4864:20::939])
	by mail.lfdr.de (Postfix) with ESMTPS id DA9CEA0965
	for <lists+clang-built-linux@lfdr.de>; Wed, 28 Aug 2019 20:26:22 +0200 (CEST)
Received: by mail-ua1-x939.google.com with SMTP id u24sf238127uah.19
        for <lists+clang-built-linux@lfdr.de>; Wed, 28 Aug 2019 11:26:22 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1567016781; cv=pass;
        d=google.com; s=arc-20160816;
        b=l0RESGnD77RWNOuJ7u5uSy1sQpqnk+8I0hnS6XuoM9mgsD+0Xliv2PUoxzyoWXOB5k
         FlxUY3Iw2uc7I96ib8H3vw6OzPw6z3+D5LOOh1y23Gy6FLed/mrqoXBWsGHRdaR5nzKr
         OldNk35r34uD96KUNiE0Ky4UC/V38ev5xO3wWp+uiZzh8xaNDvzcvxvp6AJJEoylYmF3
         mOdiPvAI4uQhT9UDhbGXhDbXPmWlh71J9Cq6fKndvzJuDYU3Pnyjt4895pscUvXu2WPC
         8HfGF9n/tZEdHNeOhZJibCwk3mEPot6eiAF4xYRy15A8fI+pC/i5erzWb8xrTOWNEdx2
         tbiw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=hl8pvQtKcgrmAuO5QdyuUI7BBHRXoM65Jpac9yyqPpg=;
        b=yb+N+D2soFvBc9QziC92BWUAUW40p1w45gSf3+XMuolz91VwZv5Errw38tq2yPX5CL
         WcmP/CFr02X8WA+ScWmKlXGoingI8PE2Dpo4/amltLsfp/4jZ3hVfhAEEsJBw/TLQrx+
         OlBcYnSJ+w70kwC/OmIrj3gPi6xFX+/56m0mESuOduKMa6d86jWJu8FVQf/K3IvgunLf
         zgRPaDuGVXYSc4fbj2m+OuGg0E3caJCiptOqP08mIB6VKZ5UGZp0MIlC2gYA83oDp7HO
         OL9qMjleDtBhpMF2E8HQXjpDF5Q695QpSHTMnXD0cc7XTw+gSdEsLqmOvyVQ/AUsVIEI
         X7ZQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=WrZfzjuQ;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::442 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=hl8pvQtKcgrmAuO5QdyuUI7BBHRXoM65Jpac9yyqPpg=;
        b=UJ/57ViMejJO82KDjg9/Encj8GUbCI/9GdyzxW8oJ9YkpBOCVUy48BGFb7VFAN3BlB
         cxJ3KYnfWLD+miXYU6bD6awgg/MMNqVTCedNiL14zP1+qu7WrdV36R07lLpwujXXJi28
         jzra5NKemSyVooaSm0MewXH/RNz7EsRn/kI/k9A+S9ACvoiNz5+hZBOkWOByfUBlWdYF
         EK2URd4U/LIaIyJoAKOEREE6qFTR29f7hNnNuMWaOjAmqXaoRBDO+3uc35JLAlPXzjpS
         JbeeEAmMO59BaJemst3NWFhQSERXxTA0ZX7l2hNXvksDJB+cZ5ORHyWYpfyFbd1+IW0f
         KzGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=hl8pvQtKcgrmAuO5QdyuUI7BBHRXoM65Jpac9yyqPpg=;
        b=abw3dDnBW5BkQcWvEULJmCNHHnDJP4QdDh17vTlM5SEArRt9F3oFPpkEUPiNevDE90
         7pBtbAueTif4q5bBRinekbvKiE2J3gPQlkuYQ+6EyiaVdpyuX/JPR+JMcVPDRioiFb+F
         qTfKTtLTQuFsPSmRTlKh89CXrF/QilU1g73VbFp5WQ0Glf4ZYiXD/Whuz+FzoqDRALjX
         ps4CncTpr4JOKlvRs3KmNkmEejLUUweYHDQH4uJVHjo/YfAF63CcTw2Gz0ve3xJ2ooFT
         h2DFBBqMAHIuY5s5DXXUwuhBjVzIamrNYhNo+hxmxzTYufCCAYwsXuXDig9126iZ5paA
         Kxiw==
X-Gm-Message-State: APjAAAUTiyBppeotj3aeYUOusT16Zz9+uYl9otXi2jfcAFrsafbEOoWJ
	GRsFjtOo6JPdhfRc5MDLr74=
X-Google-Smtp-Source: APXvYqwzpNhy5pwvU1djU7oio3bkccYDbzREox6hZNKYZw88iIg7eNuWRJToMzXtgrafxjfYkG5sAQ==
X-Received: by 2002:a67:c114:: with SMTP id d20mr3313233vsj.37.1567016781368;
        Wed, 28 Aug 2019 11:26:21 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ab0:4e01:: with SMTP id g1ls5515uah.3.gmail; Wed, 28 Aug
 2019 11:26:21 -0700 (PDT)
X-Received: by 2002:ab0:65c3:: with SMTP id n3mr2734314uaq.69.1567016780939;
        Wed, 28 Aug 2019 11:26:20 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1567016780; cv=none;
        d=google.com; s=arc-20160816;
        b=mHRvgCpwBeoTC28TSQNbgyRA4SQX+9iOwMZdSA8IJM7viFMELugpgTUEi9O0E+hfy2
         cNOhAdUqkiKcV0bzBwDes0tWN/QvTM96Aw6SlZAQynQPRg66Ftyf8eVM24gsc/IkA4sA
         pTH1r4zUBQnQNX6HbTQ40cIISa/d9HLv1C/GwsZhUX45v6kIfm9uwDduWJXbsgkdWpK4
         SEGEaVOHV6D22rrZ8iw65UU4LNGVaNATW5UEcsv2mZ6va1UvKANAtfh2u+sIhNewCsyd
         8NjEc00JnnNNEXAj5DMydkVqXJloDPTs7tNdvBy1eLcfV3RkyyItUI0QiwiW3+c85KsY
         3O8Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=/2ELFCvPtWq7P/iBoFB+bDhTH6F6gZMcRs7pKSMkPZ0=;
        b=O2GzKvBbsZaFIwAti5SqXD3dU3NLaSJ4RHZLUjqKHEfygGTIc0QrbdF42K9SC33Jdf
         uZSO5TOvcQyRnlpg22kCNOUsCXUSbLRoiZeTbTNWsMwieMuoRGLwZXqnSsFHUaahBbLC
         dxiRcZxT2bicyyhIAGHatNw0cG8/uD+0cx4xZPKcjmfXNNQTzTyYzSDWTG9gNMgLPhw7
         GGaYORaS1uhOaL2LgzGmRYabYDciNZZJKSLXbaxjocIqVhR0sdgutuQrFTU/iTCxbz/l
         Xj38mQirxwyEE1asGBmQl76FtxGrZFc3sFR+jjddo4MigdH0u4IpyYqP84hb912XfORG
         8MWQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=WrZfzjuQ;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::442 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x442.google.com (mail-pf1-x442.google.com. [2607:f8b0:4864:20::442])
        by gmr-mx.google.com with ESMTPS id k125si198187vkh.4.2019.08.28.11.26.20
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 28 Aug 2019 11:26:20 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::442 as permitted sender) client-ip=2607:f8b0:4864:20::442;
Received: by mail-pf1-x442.google.com with SMTP id 196so319861pfz.8
        for <clang-built-linux@googlegroups.com>; Wed, 28 Aug 2019 11:26:20 -0700 (PDT)
X-Received: by 2002:aa7:8085:: with SMTP id v5mr6354559pff.165.1567016779610;
 Wed, 28 Aug 2019 11:26:19 -0700 (PDT)
MIME-Version: 1.0
References: <20190828055425.24765-1-yamada.masahiro@socionext.com> <CA+icZUWigJkh-VtJc4=xE06oMgE=ci2Mfdo2JaDv0fth8PKH+A@mail.gmail.com>
In-Reply-To: <CA+icZUWigJkh-VtJc4=xE06oMgE=ci2Mfdo2JaDv0fth8PKH+A@mail.gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Wed, 28 Aug 2019 11:26:08 -0700
Message-ID: <CAKwvOd=Zwkm33_8MTFKoVfs8XEEUKgzQFqJN3nar_ryKnbJTPw@mail.gmail.com>
Subject: Re: [PATCH 1/2] kbuild: refactor scripts/Makefile.extrawarn
To: Sedat Dilek <sedat.dilek@gmail.com>
Cc: Masahiro Yamada <yamada.masahiro@socionext.com>, 
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, Nathan Chancellor <natechancellor@gmail.com>, 
	Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>, Arnd Bergmann <arnd@arndb.de>, 
	Michal Marek <michal.lkml@markovi.net>, 
	Clang-Built-Linux ML <clang-built-linux@googlegroups.com>, LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=WrZfzjuQ;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::442
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

On Wed, Aug 28, 2019 at 12:20 AM Sedat Dilek <sedat.dilek@gmail.com> wrote:
>
> On Wed, Aug 28, 2019 at 7:55 AM Masahiro Yamada
> <yamada.masahiro@socionext.com> wrote:
> >
> > Instead of the warning-[123] magic, let's accumulate compiler options
> > to KBUILD_CFLAGS directly as the top Makefile does. I think this makes
> > easier to understand what is going on in this file.
> >
> > This commit slightly changes the behavior, I think all of which are OK.
> >
> > [1] Currently, cc-option calls are needlessly evaluated. For example,
> >       warning-3 += $(call cc-option, -Wpacked-bitfield-compat)
> >     needs evaluating only when W=3, but it is actually evaluated for
> >     W=1, W=2 as well. With this commit, only relevant cc-option calls
> >     will be evaluated. This is a slight optimization.
> >
> > [2] Currently, unsupported level like W=4 is checked by:
> >       $(error W=$(KBUILD_ENABLE_EXTRA_GCC_CHECKS) is unknown)
> >     This will no longer be checked, but I do not think it is a big
> >     deal.
> >
>
> Hi Masahiro Yamada,
>
> thanks for your patch series.
>
> If KBUILD_ENABLE_EXTRA_GCC_CHECKS does extra(-warning)-checks for GCC and Clang,
> please rename the Kconfig into...
>
> KBUILD_ENABLE_EXTRA_CC_CHECKS
>
> ...or something similiar (and maybe with some notes in its Kconfig help-text?).

I too would like to see that changed.

-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOd%3DZwkm33_8MTFKoVfs8XEEUKgzQFqJN3nar_ryKnbJTPw%40mail.gmail.com.
