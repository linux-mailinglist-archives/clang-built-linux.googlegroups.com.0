Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBZ6PY72QKGQEPJQG47Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103c.google.com (mail-pj1-x103c.google.com [IPv6:2607:f8b0:4864:20::103c])
	by mail.lfdr.de (Postfix) with ESMTPS id E16C81C63D8
	for <lists+clang-built-linux@lfdr.de>; Wed,  6 May 2020 00:25:44 +0200 (CEST)
Received: by mail-pj1-x103c.google.com with SMTP id l11sf349831pjz.4
        for <lists+clang-built-linux@lfdr.de>; Tue, 05 May 2020 15:25:44 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1588717543; cv=pass;
        d=google.com; s=arc-20160816;
        b=x3JHzOlXa3CJSqzjFsZtCYJQsbId5Kn5/Yc0qILbAcij1CWExD1w9ZBd1Z3wYRfrUE
         /0xVAldbvKGZFI2h6T+Gw8y4sg5FTSwe1tjT5/zHs4lKFuCyY1uDSx4JAO+ESLOfWhmO
         pux3NrIfSIE9kXx2cku4WjCZgFr0XvbZChbMrF8ng4MShb5Y47Q1zM751u+4JdU8Q4wK
         gpNFBfzdOYJc9l5Q0V99XtbCtbu0EMnIkHF8ZB3RXdAAO8oj/6x5SKMjdjO88qY/IYhO
         u0ovtMEOpFQ8jmzJuuB5h4/j1R5vzIJHBUkGeLF6Y/xpCROs5GKQiF7/kIJ284ytVkFW
         JwHg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature:dkim-signature;
        bh=t3qb1MDLpfTAcMhbnIzjftduSZ48D6X3wjy5g276apk=;
        b=Vx6oJQjW2PlzcXIguu70s2o/3X4co19KHQcFB3gtFj5g3ppG1FEyReCWNUC22NqE7J
         4h+w69JhBf7j7M+FB1hwcsljSrM9ryRtFspyJDoEbxcWqfXrpu53FHA3oC8RaH16DxtE
         jML+oyNJyoF5EU0h9mHxv2b1A02Ra40MhBZpdwseKcFYHmzJ2PdfLtVXH/bRgg0xEGqe
         9DBUq/U466e5eR51CpJj2b8nimwVzqjVy5i+5tNy/Df3KQ/qZz6ALlhFQmdWp51DYK/b
         A6sR1m7egyLKd7CMZkJGFJHPZLCwv3SysvXl2QtMAqdpUobP+AOT8yUXaSG6Fp/Mw8x4
         vTdw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="spGt4p/0";
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::342 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=t3qb1MDLpfTAcMhbnIzjftduSZ48D6X3wjy5g276apk=;
        b=MljkCHQBQvdgooh1jqYBno4YAmOlU5lNewgAt/YWd2M3YJc0xPFCMjS2VqvxlXMpYx
         3+xy99W+lgzSgql6jccp48tALkBxqYoMJl9Aae5SyC8GVqTbS2ZCMeKJovAMpOOi6eee
         e6kvR/kIp2WKUc25Iz2HXhnXyhdWzhMrvhRu5Rz8nBnOew2g21tTPyXDWgSDw5yalh4x
         vmrhCyMZdPU2B5ALPujscEYe+HiKbI7LYWcwEgen0LbyYSHNCFyqrefr3RwLL7pek5Xi
         ml62iI9YsZ7tgZxIiHweR1msYrtYBV1KChuvoqhoDqNOAlVm1n1SEIsukGZNJt/c2Roo
         2j/w==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=t3qb1MDLpfTAcMhbnIzjftduSZ48D6X3wjy5g276apk=;
        b=j8siVG7rlY3OjNco5Q8axyreA1uiKhmJobgQaUB2lkyesrp3loqdYft74xLS1KHORt
         ylMitToVoUbHVkkJHWwUL1oFBCCAenOy9qAfWGDjEwlKGGex5UoTh/8vcgKmB/lUXyHg
         zQUPji/4RNgW3Nre047ezpNtDiec9bVXOgCTISklGgCS1aIP09C9pt7cTUHkVlYASaaQ
         ztImhW7wCxAN64tUktYWpSgYH/Z80fQheU7NOfFPR9LziE4tuK1xWjqeFPlmN8ka/5JH
         1JYmgYgNVpJqX9fd0W5KM8z5Y1cGuFhOnTWm7fiJtAHuLCe/BrQiCsOuyfetuylPPCPn
         68cA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=t3qb1MDLpfTAcMhbnIzjftduSZ48D6X3wjy5g276apk=;
        b=CsdFaLZkHtQBdUAt7+8yfJBk4tdDlk313ZRLxi/aJdKVwG5Ptkoy4RLdEQlgOUQosb
         rcrfpttIxiTOR/POutcCLIzdSTwWXalEGCTXNMoUwx0Tp5IN2rRF6jIj7XfY1SVsL6gq
         8VL8tEhL7KMmmhOBcAlTKY2rxCIvFxjwOK7idPuXxKJNdCpJR6SnXwYybKGzTYUx7PSV
         51uDoPVjlStdQ/EvY8CRaM+mojYOccPI1UnANhukY3SH3SYGaHTXcfW14FWbqIdAaP+K
         r4emaNEGq+sEd02nIeEPlIGzypS4xctan8hWhu3IrYSg/+gAdVHXx6hD4S0lfuBiSZ/D
         JvDA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0PuZIu3MF5Cgu2feQMUU5z2JQ//6lbe7zmqAgb+/oKnO8Kv0micRT
	s+3ibOkdKYscIwwlDyMJmqk=
X-Google-Smtp-Source: APiQypLhTmiePrIqsy2PBR5wHbOp+3Mnn/Brey0V5atIMJgTEBYPzY0iI0qTG4WsmKXuOYhZh2ETiA==
X-Received: by 2002:a17:902:7042:: with SMTP id h2mr5102872plt.204.1588717543482;
        Tue, 05 May 2020 15:25:43 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:9a03:: with SMTP id v3ls226032plp.11.gmail; Tue, 05
 May 2020 15:25:43 -0700 (PDT)
X-Received: by 2002:a17:90a:ee84:: with SMTP id i4mr5854458pjz.71.1588717543080;
        Tue, 05 May 2020 15:25:43 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1588717543; cv=none;
        d=google.com; s=arc-20160816;
        b=uTPp63MqRBkop6RZGBDTcVIbX0EGSOkD3hC8lkDmqCxduapjMfPQvozzqVIdeRZK6g
         8YWgoA9gqL2N+OpObLrkddJtqOBk8T4JgEv17IFJl1G92rAsVvNPkswR8bUosJsqMIcJ
         c6YsrXSw2DgBbl9uWA2CAfOrMbWL2pVF9kfxv7yQ3d3oYqX7da0gcT+4aHJdcZMjadyG
         ei9ykkXBJiKKpausuD1OxlgBRofbxU++2LIQjp1USQ5dIrVaWmUOcVRwRa77zUn7bQgP
         pTjsIpFwWOnVLNR4YPWn0TkUzJkjD1odDmYU9FalA0arVJJ0SsC8yHKwMFZa2SsPqc6D
         t/dw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=UnIZKv+ULxeZ6m0Rl5baeyEV0lNzhevN8SqK1epATzE=;
        b=uKOAvc5sUoJ12aswhWH3j3eHR/xWIxGrYm8wVsDdVKWLHWR7YXB8BkX6VsHqyRfh6u
         Z8Rt0XsOV3GZ4SzSGNdBgb2FzpAwp+e2YfQCaP9WC+HCIt3BpfBgULmsma9dLn1kRsUY
         srzODXfIC1kh6PtadShPLskBVIBn8dYyVbFOHLrg5jHaAl6sfnK1PyjnWcE/ZnTa89ba
         uZRVoX2L0Fnjmf00pzNe6YhvOstHGndDcr0CatIGhWBlIBCpGgB6gbm4QjyM64y3W4ri
         pS9sjOOdVkaAg5fznzhSd78XtAEA9ixEHVQEleBgt0Q3EDmzyZOKFEK54YDlQpDQfzUY
         fXdw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="spGt4p/0";
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::342 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-ot1-x342.google.com (mail-ot1-x342.google.com. [2607:f8b0:4864:20::342])
        by gmr-mx.google.com with ESMTPS id q189si24437pfc.0.2020.05.05.15.25.43
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 05 May 2020 15:25:43 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::342 as permitted sender) client-ip=2607:f8b0:4864:20::342;
Received: by mail-ot1-x342.google.com with SMTP id g14so3117542otg.10
        for <clang-built-linux@googlegroups.com>; Tue, 05 May 2020 15:25:43 -0700 (PDT)
X-Received: by 2002:a9d:4602:: with SMTP id y2mr4062509ote.199.1588717542246;
        Tue, 05 May 2020 15:25:42 -0700 (PDT)
Received: from ubuntu-s3-xlarge-x86 ([2604:1380:4111:8b00::1])
        by smtp.gmail.com with ESMTPSA id 95sm36886otf.72.2020.05.05.15.25.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 05 May 2020 15:25:41 -0700 (PDT)
Date: Tue, 5 May 2020 15:25:40 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: "Jason A. Donenfeld" <Jason@zx2c4.com>,
	"open list:HARDWARE RANDOM NUMBER GENERATOR CORE" <linux-crypto@vger.kernel.org>,
	LKML <linux-kernel@vger.kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Arnd Bergmann <arnd@arndb.de>, Kees Cook <keescook@chromium.org>,
	George Burgess <gbiv@google.com>
Subject: Re: [PATCH] Kbuild: disable FORTIFY_SOURCE on clang-10
Message-ID: <20200505222540.GA230458@ubuntu-s3-xlarge-x86>
References: <CAHmME9oMcfY4nwkknwN9c4rB-O7xD4GCAOFPoZCbdnq=034=Vw@mail.gmail.com>
 <20200505215503.691205-1-Jason@zx2c4.com>
 <CAKwvOdk32cDowvrqRPKDRpf2ZiXh=jVnBTmhM-NWD=Ownq9v3w@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAKwvOdk32cDowvrqRPKDRpf2ZiXh=jVnBTmhM-NWD=Ownq9v3w@mail.gmail.com>
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b="spGt4p/0";       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::342 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

On Tue, May 05, 2020 at 03:02:16PM -0700, 'Nick Desaulniers' via Clang Built Linux wrote:
> On Tue, May 5, 2020 at 2:55 PM Jason A. Donenfeld <Jason@zx2c4.com> wrote:
> >
> > clang-10 has a broken optimization stage that doesn't enable the
> > compiler to prove at compile time that certain memcpys are within
> > bounds, and thus the outline memcpy is always called, resulting in
> > horrific performance, and in some cases, excessive stack frame growth.
> > Here's a simple reproducer:
> >
> >     typedef unsigned long size_t;
> >     void *c(void *dest, const void *src, size_t n) __asm__("memcpy");
> >     extern inline __attribute__((gnu_inline)) void *memcpy(void *dest, const void *src, size_t n) { return c(dest, src, n); }
> >     void blah(char *a)
> >     {
> >       unsigned long long b[10], c[10];
> >       int i;
> >
> >       memcpy(b, a, sizeof(b));
> >       for (i = 0; i < 10; ++i)
> >         c[i] = b[i] ^ b[9 - i];
> >       for (i = 0; i < 10; ++i)
> >         b[i] = c[i] ^ a[i];
> >       memcpy(a, b, sizeof(b));
> >     }
> >
> > Compile this with clang-9 and clang-10 and observe:
> >
> > zx2c4@thinkpad /tmp/curve25519-hacl64-stack-frame-size-test $ clang-10 -Wframe-larger-than=0 -O3 -c b.c -o c10.o
> > b.c:5:6: warning: stack frame size of 104 bytes in function 'blah' [-Wframe-larger-than=]
> > void blah(char *a)
> >      ^
> > 1 warning generated.
> > zx2c4@thinkpad /tmp/curve25519-hacl64-stack-frame-size-test $ clang-9 -Wframe-larger-than=0 -O3 -c b.c -o c9.o
> >
> > Looking at the disassembly of c10.o and c9.o, one can see that c9.o is
> > properly optimized in the obvious way one would expect, while c10.o has
> > blown up and includes extern calls to memcpy.
> >
> > This is present on the most trivial bits of code. Thus, for clang-10, we
> > just set __NO_FORTIFY globally, so that this issue won't be incurred.
> >
> > Cc: Arnd Bergmann <arnd@arndb.de>
> > Cc: LKML <linux-kernel@vger.kernel.org>
> > Cc: clang-built-linux <clang-built-linux@googlegroups.com>
> > Cc: Kees Cook <keescook@chromium.org>
> > Cc: George Burgess <gbiv@google.com>
> > Cc: Nick Desaulniers <ndesaulniers@google.com>
> > Link: https://bugs.llvm.org/show_bug.cgi?id=45802
> > Signed-off-by: Jason A. Donenfeld <Jason@zx2c4.com>
> 
> I'm going to request this not be merged until careful comment from
> George and Kees. My hands are quite full at the moment with other
> regressions.  I suspect these threads may be relevant, though I
> haven't had time to read through them myself.
> https://github.com/ClangBuiltLinux/linux/issues/979
> https://github.com/ClangBuiltLinux/linux/pull/980

I believe these issues are one in the same. I did a reverse bisect with
Arnd's test case and converged on George's first patch:

https://github.com/llvm/llvm-project/commit/2dd17ff08165e6118e70f00e22b2c36d2d4e0a9a

I think that in lieu of this patch, we should have that patch and its
follow-up fix merged into 10.0.1.

I can file an upstream PR for Tom to take a look out later tonight.

Cheers,
Nathan

> > ---
> >  Makefile | 7 +++++++
> >  1 file changed, 7 insertions(+)
> >
> > diff --git a/Makefile b/Makefile
> > index 49b2709ff44e..f022f077591d 100644
> > --- a/Makefile
> > +++ b/Makefile
> > @@ -768,6 +768,13 @@ KBUILD_CFLAGS += -Wno-gnu
> >  # source of a reference will be _MergedGlobals and not on of the whitelisted names.
> >  # See modpost pattern 2
> >  KBUILD_CFLAGS += -mno-global-merge
> > +
> > +# clang-10 has a broken optimization stage that causes memcpy to always be
> > +# outline, resulting in excessive stack frame growth and poor performance.
> > +ifeq ($(shell test $(CONFIG_CLANG_VERSION) -ge 100000 && test $(CONFIG_CLANG_VERSION) -lt 110000; echo $$?),0)
> > +KBUILD_CFLAGS += -D__NO_FORTIFY
> > +endif
> > +
> >  else
> >
> >  # These warnings generated too much noise in a regular build.
> > --
> > 2.26.2
> >
> 
> 
> -- 
> Thanks,
> ~Nick Desaulniers
> 
> -- 
> You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdk32cDowvrqRPKDRpf2ZiXh%3DjVnBTmhM-NWD%3DOwnq9v3w%40mail.gmail.com.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200505222540.GA230458%40ubuntu-s3-xlarge-x86.
