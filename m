Return-Path: <clang-built-linux+bncBDGPTUWU5UCBBUGVY72QKGQETIJX52A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa3e.google.com (mail-vk1-xa3e.google.com [IPv6:2607:f8b0:4864:20::a3e])
	by mail.lfdr.de (Postfix) with ESMTPS id 3CBD21C6407
	for <lists+clang-built-linux@lfdr.de>; Wed,  6 May 2020 00:38:10 +0200 (CEST)
Received: by mail-vk1-xa3e.google.com with SMTP id l188sf1741806vke.23
        for <lists+clang-built-linux@lfdr.de>; Tue, 05 May 2020 15:38:10 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1588718289; cv=pass;
        d=google.com; s=arc-20160816;
        b=z5ptQL7KW1wdyKgSpRvuFVnYAQey5xiCq3qG644G3tcIYMxoVlEj/Pa1lIMXdBh7/3
         IsBPmPlk0t7L2F0dpjVvCN54RBZafD3pD4xwty3LJ4HycpMXkUhMecGBGApmoF1/MpEg
         qNQn0jqWzrEl+y6DDZJfM2iujBKwwwWDaAFNX6/P/U9FAi4S0eoyl4FDgS4a4ZnUR8rt
         twbPPVk97Ds53wZu3FWfyyQx2m+UB5EbaFI0HSD33UbTJwBwR2gEbNOpi0rWX2aHb8NR
         aMcbNfQaYgXvyfe2KIATE9KeJ2PtE+W7bXA/ve+Ki0z+jCG0k382xmfDKDOxj4Bd1edQ
         iikw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=zf35ei6ygTqHDX3tfgDKX1YHmHWKPFWP83yeWXLLKwQ=;
        b=nbjSqgvgb3yd5fYc+F1S0iH3FfMKH3lIQBtl9XP9cVq1GKe7mYAsFRSS6b+jfvNwCF
         9Oqj7Si0s2avVDQAYudKbrssRjXuKhsp9DxHH13Mhn7UTS9xWPJPD3S4o88dxcCqufK6
         uGnLJzp8tztobvgD/e7sI8yyK+vDY6pHlqtddIGKD2ST3KmYWLS/vWfeVsV1N3M8Zfsb
         j4wIqcydmuyRqdvH6qeJzF+WnsxmisIvTahnNQXmSvgo1qbp2Z944kRHw9+1BD/Tn5BE
         dytBVXU/Spv2ycDmkItGLAuPkLDIlVJkqbWB2iWIUtYtpFnLlFyXw+7kwOVlx49EVjeA
         DwvQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=IvCyOTvY;
       spf=pass (google.com: domain of george.burgess.iv@gmail.com designates 2607:f8b0:4864:20::e43 as permitted sender) smtp.mailfrom=george.burgess.iv@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=zf35ei6ygTqHDX3tfgDKX1YHmHWKPFWP83yeWXLLKwQ=;
        b=qxJ18pK/8600Qqb3mcwqBRnj33pYqtdhOAZRv1kduft10q2BL0uWBjQyvVxIipwl98
         dcjryhJbv+bsTW1BnQbfsEQu7vc3bezuuFUFYvbIpqA5axOrD070ZfrbkazfJpSHq7Fo
         R8geN6FKesg+fPLts7fDR0KXG9o+8xFjZ7i+bcEuzHq0ue6hb0CNK4H9WHe4D14BZsPk
         Q0imDNfIPElQZtk3msbmK6py/xbVCJfn7YUgwNHYajYAA/3Sx38N7AsFCAi4qyoaMpmN
         x+mwJFWXp0f1BOY+8BVJNtrlfSGjK5N7yKUOl2vWwpzP7LqFs9iOZIhfP2abbNKtR81Y
         tuqg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=zf35ei6ygTqHDX3tfgDKX1YHmHWKPFWP83yeWXLLKwQ=;
        b=jWmLMBaIKdPkqBQj6V2DUe+uo4VhcX/f6ibD6MtdJHLeVnwPWGDeDGYDl53bUD7IyG
         WYS/80vhtBs0+XFzaTQ8Q2l2CkwA5rxYMdoU8TWYq42g0xyE65pZs6WiF8qDekHw0epk
         98ZR08/8mvNXPKF5TjCEpSkibVxACzE6Me9aOnwWEz/8+sG4wxAVunBDSNYNQr/Vl4KY
         u4+uzu21ku6ailMcwbmRuWDlFuNLtW/4HNIpurxN4qSY18xbOb430wGP6sRXRHsBS5zN
         CcWDu/Egl/ZyRrvC63HPqsQOm+ZsYmIIKdrP3Ma9Y+XVqdr7wBXLUpMTUXCXa6L1a8yW
         a2yg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=zf35ei6ygTqHDX3tfgDKX1YHmHWKPFWP83yeWXLLKwQ=;
        b=cahgd03Xu12FizdPSSdlpWXnb2xc5cgEkcBe/txmUe3jyaOnRjByWI94b5+P1mHWSc
         thShJVZn83xVlaIEKsA0zrVQMYlD/ZZcq32WihDw72VsIkM5UAT5gQTzCb24dDwVZEFt
         JslLYw6wPDN+o6l2bAq5lv/SrFcIb1L9cT3i1uGnG784ssLIrZPiM+ZfTzYLkqV71HBX
         IN8M7Ss7+ECJp26HTsekCUHZ9Wo+ynN/O7m2mKv2mU3Af+uTsJKFC9E6aBpxGbBwIj3K
         qcIzJFgS2sSRW6/IBwnw/1eXmdtuHAOW6OV/7c0f5Dtsz0Oi0eywyHbGw5k1X2ghtw9x
         M8Zg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0PubdOMd7N3URKsGeJahBd2GVVIHBFi9YiNTfVFg+jX5aS1E1QmFm
	asSpaSZe435HaifOYGQrTe4=
X-Google-Smtp-Source: APiQypJp1cSzNaCeWQ4l/TcpxUIyKIru2NUnMyCuNWtp+SY2tBf5J09DBm+Rq+qFEKhefZqzwFBPMQ==
X-Received: by 2002:ab0:554a:: with SMTP id u10mr766130uaa.43.1588718289011;
        Tue, 05 May 2020 15:38:09 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ab0:2992:: with SMTP id u18ls441436uap.8.gmail; Tue, 05 May
 2020 15:38:08 -0700 (PDT)
X-Received: by 2002:ab0:539b:: with SMTP id k27mr4606421uaa.50.1588718288645;
        Tue, 05 May 2020 15:38:08 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1588718288; cv=none;
        d=google.com; s=arc-20160816;
        b=yxocUmFTw2OpCYEvSNMnG+shAVl/3PVAg1sLmjiCBtK9K1WpJ8+F/ScQ5TzB5zXgqW
         LaJJwT+myIQVW9KQtxZ+8IrMQ0Ul1jGWmvxPgTK1jYlT9k9074edAXfilHV8hA+KPc0U
         8UynD0sYT8TEePPiRc9SYhVKqtLpNWaktSWzzZNathBUJvj6796ZjMdqIGTW12968VWQ
         JXTjXB4BXkNk21v9JnKxiSYgVtIfsJHwS297OQ5cKfqNCped8rkF1/uqteT4xcmNvI0d
         qNYTbRyItVCuSoaILhgbiAI/wtJSfgNYqIZJAhTJ5NBlqNw7kS76vwAWDy+lihkqONkL
         txKQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=cSfOB6yrL6iM3GyhSHKNdhh/qVQczJxQFfOD6vN+UVE=;
        b=qNAHIEc6TyfExChSkvzm6KyTrLeWGcT+QpY6vkvN0yt73MOY8N55PNL5/EDWTO9nJC
         /eP7B7NzzEWjgCA+52C0bCYONKy0/pjmAFtuIwhGUYtagPqQUAdi5Vett+99RXleVeHB
         U9xBWdrHKdrjjJxubhj55aSR+x4yWgZwnxPI8yed8o6+HNJ5pNIzYACxFYxtOnuW8voP
         3y5WxjUELp9XUp7wdpvbZq4SlLm7fDi1EDlXtuatTgq/7HrSJMm6YAuLFtoIpacIDZDl
         N3j7MDFlmabLMRS3RE+czf5clZjXRxgTO3GVlw0Vlrs4BIgwx6ULqYY0oX2s/nviF7V7
         OlGA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=IvCyOTvY;
       spf=pass (google.com: domain of george.burgess.iv@gmail.com designates 2607:f8b0:4864:20::e43 as permitted sender) smtp.mailfrom=george.burgess.iv@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-vs1-xe43.google.com (mail-vs1-xe43.google.com. [2607:f8b0:4864:20::e43])
        by gmr-mx.google.com with ESMTPS id i21si12674vkp.5.2020.05.05.15.38.08
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 05 May 2020 15:38:08 -0700 (PDT)
Received-SPF: pass (google.com: domain of george.burgess.iv@gmail.com designates 2607:f8b0:4864:20::e43 as permitted sender) client-ip=2607:f8b0:4864:20::e43;
Received: by mail-vs1-xe43.google.com with SMTP id a8so1342vsh.1
        for <clang-built-linux@googlegroups.com>; Tue, 05 May 2020 15:38:08 -0700 (PDT)
X-Received: by 2002:a67:1502:: with SMTP id 2mr5322645vsv.80.1588718288093;
 Tue, 05 May 2020 15:38:08 -0700 (PDT)
MIME-Version: 1.0
References: <CAHmME9oMcfY4nwkknwN9c4rB-O7xD4GCAOFPoZCbdnq=034=Vw@mail.gmail.com>
 <20200505215503.691205-1-Jason@zx2c4.com> <CAKwvOdk32cDowvrqRPKDRpf2ZiXh=jVnBTmhM-NWD=Ownq9v3w@mail.gmail.com>
 <20200505222540.GA230458@ubuntu-s3-xlarge-x86>
In-Reply-To: <20200505222540.GA230458@ubuntu-s3-xlarge-x86>
From: George Burgess IV <george.burgess.iv@gmail.com>
Date: Tue, 5 May 2020 15:37:31 -0700
Message-ID: <CAKh6zBEs50b6XmCn4O7JCgcrKOc3Q7Y28yxcWtAu30HJjqGpBg@mail.gmail.com>
Subject: Re: [PATCH] Kbuild: disable FORTIFY_SOURCE on clang-10
To: Nathan Chancellor <natechancellor@gmail.com>
Cc: Nick Desaulniers <ndesaulniers@google.com>, "Jason A. Donenfeld" <Jason@zx2c4.com>, 
	"open list:HARDWARE RANDOM NUMBER GENERATOR CORE" <linux-crypto@vger.kernel.org>, LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Arnd Bergmann <arnd@arndb.de>, 
	Kees Cook <keescook@chromium.org>, George Burgess <gbiv@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: george.burgess.iv@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=IvCyOTvY;       spf=pass
 (google.com: domain of george.burgess.iv@gmail.com designates
 2607:f8b0:4864:20::e43 as permitted sender) smtp.mailfrom=george.burgess.iv@gmail.com;
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

This code generated by Clang here is the unfortunate side-effect of a
bug introduced during Clang-10's development phase. From discussion
with Kees on the links Nick mentioned, I surmise that FORTIFY in the
kernel never worked as well for Clang as it does for GCC today. In
many cases, it'd compile into nothing, but with the aforementioned
Clang bug, it would turn into very suboptimal code.

Kees sounded interested in getting a FORTIFY that plays more nicely
with Clang into the kernel. Until that happens, we'll be in a world
where an unpatched Clang-10 generates suboptimal code, and where a
patched Clang-10 only FORTIFYs a subset of the kernel's `mem*`/`str*`
functions. (I haven't checked assembly, but I assume that not every
FORTIFY'ed function gets compiled into 'nothingness').

I don't have sufficient context to be opinionated on whether it's
"better" to prefer a subset of opportune checks vs better codegen on
unpatched versions of clang.

If we do turn it off, it'd be nice to have some idea of when it can be
turned back on (do we need a modified implementation as mentioned
earlier? N months after clang's next point release is released,
provided the fixes land in it?)

> I can file an upstream PR for Tom to take a look out later tonight.

Thank you for the bisection and for handling the merge :)





On Tue, May 5, 2020 at 3:25 PM Nathan Chancellor
<natechancellor@gmail.com> wrote:
>
> On Tue, May 05, 2020 at 03:02:16PM -0700, 'Nick Desaulniers' via Clang Built Linux wrote:
> > On Tue, May 5, 2020 at 2:55 PM Jason A. Donenfeld <Jason@zx2c4.com> wrote:
> > >
> > > clang-10 has a broken optimization stage that doesn't enable the
> > > compiler to prove at compile time that certain memcpys are within
> > > bounds, and thus the outline memcpy is always called, resulting in
> > > horrific performance, and in some cases, excessive stack frame growth.
> > > Here's a simple reproducer:
> > >
> > >     typedef unsigned long size_t;
> > >     void *c(void *dest, const void *src, size_t n) __asm__("memcpy");
> > >     extern inline __attribute__((gnu_inline)) void *memcpy(void *dest, const void *src, size_t n) { return c(dest, src, n); }
> > >     void blah(char *a)
> > >     {
> > >       unsigned long long b[10], c[10];
> > >       int i;
> > >
> > >       memcpy(b, a, sizeof(b));
> > >       for (i = 0; i < 10; ++i)
> > >         c[i] = b[i] ^ b[9 - i];
> > >       for (i = 0; i < 10; ++i)
> > >         b[i] = c[i] ^ a[i];
> > >       memcpy(a, b, sizeof(b));
> > >     }
> > >
> > > Compile this with clang-9 and clang-10 and observe:
> > >
> > > zx2c4@thinkpad /tmp/curve25519-hacl64-stack-frame-size-test $ clang-10 -Wframe-larger-than=0 -O3 -c b.c -o c10.o
> > > b.c:5:6: warning: stack frame size of 104 bytes in function 'blah' [-Wframe-larger-than=]
> > > void blah(char *a)
> > >      ^
> > > 1 warning generated.
> > > zx2c4@thinkpad /tmp/curve25519-hacl64-stack-frame-size-test $ clang-9 -Wframe-larger-than=0 -O3 -c b.c -o c9.o
> > >
> > > Looking at the disassembly of c10.o and c9.o, one can see that c9.o is
> > > properly optimized in the obvious way one would expect, while c10.o has
> > > blown up and includes extern calls to memcpy.
> > >
> > > This is present on the most trivial bits of code. Thus, for clang-10, we
> > > just set __NO_FORTIFY globally, so that this issue won't be incurred.
> > >
> > > Cc: Arnd Bergmann <arnd@arndb.de>
> > > Cc: LKML <linux-kernel@vger.kernel.org>
> > > Cc: clang-built-linux <clang-built-linux@googlegroups.com>
> > > Cc: Kees Cook <keescook@chromium.org>
> > > Cc: George Burgess <gbiv@google.com>
> > > Cc: Nick Desaulniers <ndesaulniers@google.com>
> > > Link: https://bugs.llvm.org/show_bug.cgi?id=45802
> > > Signed-off-by: Jason A. Donenfeld <Jason@zx2c4.com>
> >
> > I'm going to request this not be merged until careful comment from
> > George and Kees. My hands are quite full at the moment with other
> > regressions.  I suspect these threads may be relevant, though I
> > haven't had time to read through them myself.
> > https://github.com/ClangBuiltLinux/linux/issues/979
> > https://github.com/ClangBuiltLinux/linux/pull/980
>
> I believe these issues are one in the same. I did a reverse bisect with
> Arnd's test case and converged on George's first patch:
>
> https://github.com/llvm/llvm-project/commit/2dd17ff08165e6118e70f00e22b2c36d2d4e0a9a
>
> I think that in lieu of this patch, we should have that patch and its
> follow-up fix merged into 10.0.1.
>
> I can file an upstream PR for Tom to take a look out later tonight.
>
> Cheers,
> Nathan
>
> > > ---
> > >  Makefile | 7 +++++++
> > >  1 file changed, 7 insertions(+)
> > >
> > > diff --git a/Makefile b/Makefile
> > > index 49b2709ff44e..f022f077591d 100644
> > > --- a/Makefile
> > > +++ b/Makefile
> > > @@ -768,6 +768,13 @@ KBUILD_CFLAGS += -Wno-gnu
> > >  # source of a reference will be _MergedGlobals and not on of the whitelisted names.
> > >  # See modpost pattern 2
> > >  KBUILD_CFLAGS += -mno-global-merge
> > > +
> > > +# clang-10 has a broken optimization stage that causes memcpy to always be
> > > +# outline, resulting in excessive stack frame growth and poor performance.
> > > +ifeq ($(shell test $(CONFIG_CLANG_VERSION) -ge 100000 && test $(CONFIG_CLANG_VERSION) -lt 110000; echo $$?),0)
> > > +KBUILD_CFLAGS += -D__NO_FORTIFY
> > > +endif
> > > +
> > >  else
> > >
> > >  # These warnings generated too much noise in a regular build.
> > > --
> > > 2.26.2
> > >
> >
> >
> > --
> > Thanks,
> > ~Nick Desaulniers
> >
> > --
> > You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> > To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> > To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdk32cDowvrqRPKDRpf2ZiXh%3DjVnBTmhM-NWD%3DOwnq9v3w%40mail.gmail.com.
>
> --
> You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200505222540.GA230458%40ubuntu-s3-xlarge-x86.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKh6zBEs50b6XmCn4O7JCgcrKOc3Q7Y28yxcWtAu30HJjqGpBg%40mail.gmail.com.
