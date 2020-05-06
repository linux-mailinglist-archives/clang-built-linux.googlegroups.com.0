Return-Path: <clang-built-linux+bncBCLI747UVAFRB2PAZD2QKGQEZB67ARA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc37.google.com (mail-oo1-xc37.google.com [IPv6:2607:f8b0:4864:20::c37])
	by mail.lfdr.de (Postfix) with ESMTPS id AF70D1C6663
	for <lists+clang-built-linux@lfdr.de>; Wed,  6 May 2020 05:35:06 +0200 (CEST)
Received: by mail-oo1-xc37.google.com with SMTP id f3sf298902oob.14
        for <lists+clang-built-linux@lfdr.de>; Tue, 05 May 2020 20:35:06 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1588736105; cv=pass;
        d=google.com; s=arc-20160816;
        b=NMimyH8I4okKCRsyDOYzt+v4OW6E2VOw8MMAeHVPOlV7FUD8qe45WohZ7psSLE2j4U
         V0raVg7fGNgW9eM/sQ3M1rIywop7XHNnEqpUcuUHVVwvdSOFczfzigQ7rV7hGn55PYqN
         2EtuyFvnI/O0lkj7CC87kOHjvXXfiHUmApWusgycBOW9j0O7O3nn6KIefFP9dQXqUFWI
         ExeSrhlfgVoB5tvm37/QoWJ53Vnyce3M6jDElKy1/RBkkUgJx/78YiTjhlB2nz2D2Qzp
         bVwBnp9NkQDUyTjpnoCxZp6+M67uRj2yxmDzPH0L4JXj0M1K70CcDstwPxjj412aLhyk
         C2uw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=n3kuHUbHNtyIrW3v94IaOWk38grrGtMYUi2PPngDDMA=;
        b=MbiFQMMnwCPYcpatcHbERyVQq/5JkZSPXGs9TxHMpm8MYIuk08V2n6HLJ9EEXUhWKB
         eHQ7EXskwkbv9GtU8Rhi34QgahMXMhkqbkQ69RDkV428A70DOEV0yyWhiT7GiTMendim
         xmDy+UBEqf7HYZvetdanqJnP7yhUPgkaIHE1QrW9QSHSsInAz4Xuv+eMJvtZ4eVrz3RR
         4F3C2QMk0An3pDw5AGm5XPfH8L4k2+35ijyt2IXWBiI5geVxCN7W/PgNkWnr+5p7cGCm
         DZYu/ORM4zupuk7W+mgJstYuP6EfiiSlgkTDtVUD9JB5/5V7FcZex51suNekUjJVCxoW
         tYUQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@zx2c4.com header.s=mail header.b=L0zsIjjg;
       spf=pass (google.com: domain of jason@zx2c4.com designates 192.95.5.64 as permitted sender) smtp.mailfrom=Jason@zx2c4.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=zx2c4.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=n3kuHUbHNtyIrW3v94IaOWk38grrGtMYUi2PPngDDMA=;
        b=mMT7fOYuraEn408w/SQV1I3g7K3gQlUw6eNXTd/RYQuyLMAbfIRhllnphR0mKlswxj
         cBUfGlqtJzNRpGXX1t3qNJVIlbevtv4GsBhr038BmCrctvhp6/LVK16wR15+OREepLZE
         eZu//kSsRfs9IVe3SweiGIMaUfSce8TJ1WmD3uFQYaqLMMHC1HhiZyqhXuQGLaPTrSKv
         sXublnd6kgWV6Lr6sBztBx37PbRpMgypnjSEaU0/o5Oqmnp5bnXIh81EOTVHRtdLG4uN
         xcuxnISDlNL0dV+QG6o/tJcYXlqGJNEqc6P1s2eCjHnO/MTWDJzrhtcrNghZdgusiS/k
         CcIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=n3kuHUbHNtyIrW3v94IaOWk38grrGtMYUi2PPngDDMA=;
        b=fva6+u+Eth8Z0RDhVpKL4gh5tMFqsmnKpSDVsrbhdQRb3cYNpj4CWAvVb5bR5rlKt1
         76nsOy1DBvDXGIe+qirN8wk0ZQ5wVta2LjKpgsjJSACgZv/OEFLhtm6QOSY7uTkiRNv8
         oQoUc1Bx2U5EchDvxN0KLTkUHA7z0MATDxlXjiUyFioxFamNJi2SNLojVQ+DGAypPTRp
         1R6aLMg7aWyqo4sFayQFLDoG711Xb5v056tGaN4JQ8RzXLsr3o4pSh9ikBBH69XOFLUq
         Bv9qQNynvUiB9VzVAXB0Y2S489lHib4RGXecsZSuMskKkIayIX0rR545sC4fClF9vGPM
         CIzw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0PuZEc3SEikj3t0XhGPJg5is/CHSeytjtnpZoZqlCpZ7/E//cSfNy
	EfAm/5e0jtrDEOPGsaL9S8k=
X-Google-Smtp-Source: APiQypJC32VIkqQb+KWz5H5Mw2N0nCzA4l97MQSC0CSAwiFBOIWTtuQ+SP9eeimWr5Py25I6oxpwGg==
X-Received: by 2002:a05:6830:4d6:: with SMTP id s22mr4888438otd.129.1588736105612;
        Tue, 05 May 2020 20:35:05 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:cd54:: with SMTP id d81ls206575oig.6.gmail; Tue, 05 May
 2020 20:35:05 -0700 (PDT)
X-Received: by 2002:aca:b6c2:: with SMTP id g185mr1418066oif.156.1588736105263;
        Tue, 05 May 2020 20:35:05 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1588736105; cv=none;
        d=google.com; s=arc-20160816;
        b=E2Qqrv6QYD7vJEhEjGaI9ZJxwNY1GzC5Fz7mfDVq6oR+sDqIKoIjiwuRaV64FoxK2f
         3bq0EqA6bcfdxiEf7wtwzOtDKzPIIGxGOtkjiud70qPabdNpc3V3WG3JBOuXoeVFLWbY
         DeLskhtZuEee0cTZjAlt4Mv7Nz4cLXXkXEIP0qEqsalo4u/+dkScrIXXmI+wQkoO63wP
         M8KWPxjjmYF1Wy4nSzjo7xJLd2HXWn5kdGJEqrITTZK7h3BLTPJi7c9izr+saIoEL97N
         YjetmnWEpQ650IURHJC3Jk/LRumksoDKr6wlAx407XTzsAzCUmJ1AIJ1uVZpNzHERiUI
         kdZg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=ZtGz85ixs5NUWddyB7XolsyJ9A7tVdqdzoQEcxaffN8=;
        b=vlgpXiKMoUzrbvDArLucv4KUih0bl9i2zzyHY+p3BxNWQFcXvSZVSu5+Cv+b7m/TwC
         jIagEoyQcwKrIyA1Dg8RMKBh80gJae7YXTnhG/sQ/KhIHB8Z2UX1C7dOAY0iCDjB/QuW
         TgMpKQg300ib2Zr8kHEAs8a8bQlbdHLURZbFLVT2euf4QZo19gHomNgWRh2zNqHG0dAe
         BEhmM1ZeAbo6fyPU113KqEKInCaXCW8v5nKVMHbLHWRySz2Hw2QIFPcgaatGSVE8bkN2
         IDByonXhzCBjnn5h17dTCwlYNPl9xoGLHbvIl0KopgO6+QEodFOolfLjqvK8nNUqOL8h
         BYgA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@zx2c4.com header.s=mail header.b=L0zsIjjg;
       spf=pass (google.com: domain of jason@zx2c4.com designates 192.95.5.64 as permitted sender) smtp.mailfrom=Jason@zx2c4.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=zx2c4.com
Received: from mail.zx2c4.com (mail.zx2c4.com. [192.95.5.64])
        by gmr-mx.google.com with ESMTPS id f139si71808oig.5.2020.05.05.20.35.04
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 05 May 2020 20:35:05 -0700 (PDT)
Received-SPF: pass (google.com: domain of jason@zx2c4.com designates 192.95.5.64 as permitted sender) client-ip=192.95.5.64;
Received: by mail.zx2c4.com (ZX2C4 Mail Server) with ESMTP id 95e9ee14
	for <clang-built-linux@googlegroups.com>;
	Wed, 6 May 2020 03:22:26 +0000 (UTC)
Received: by mail.zx2c4.com (ZX2C4 Mail Server) with ESMTPSA id 2b63280a (TLSv1.3:TLS_AES_256_GCM_SHA384:256:NO)
	for <clang-built-linux@googlegroups.com>;
	Wed, 6 May 2020 03:22:26 +0000 (UTC)
Received: by mail-il1-f170.google.com with SMTP id b18so442092ilf.2
        for <clang-built-linux@googlegroups.com>; Tue, 05 May 2020 20:35:03 -0700 (PDT)
X-Received: by 2002:a92:5c82:: with SMTP id d2mr7181724ilg.231.1588736102459;
 Tue, 05 May 2020 20:35:02 -0700 (PDT)
MIME-Version: 1.0
References: <202005051617.F9B32B5526@keescook> <20200506001453.764332-1-Jason@zx2c4.com>
 <202005051953.AF54DA4@keescook>
In-Reply-To: <202005051953.AF54DA4@keescook>
From: "Jason A. Donenfeld" <Jason@zx2c4.com>
Date: Tue, 5 May 2020 21:34:51 -0600
X-Gmail-Original-Message-ID: <CAHmME9ofHLjgB3KY9xwCkhK4V78KB_XUe1kzyizfx5yQRKo0JA@mail.gmail.com>
Message-ID: <CAHmME9ofHLjgB3KY9xwCkhK4V78KB_XUe1kzyizfx5yQRKo0JA@mail.gmail.com>
Subject: Re: [PATCH v2] security: disable FORTIFY_SOURCE on clang
To: Kees Cook <keescook@chromium.org>
Cc: LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Arnd Bergmann <arnd@arndb.de>, 
	George Burgess <gbiv@google.com>, Nick Desaulniers <ndesaulniers@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: jason@zx2c4.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@zx2c4.com header.s=mail header.b=L0zsIjjg;       spf=pass
 (google.com: domain of jason@zx2c4.com designates 192.95.5.64 as permitted
 sender) smtp.mailfrom=Jason@zx2c4.com;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=zx2c4.com
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

On Tue, May 5, 2020 at 8:54 PM Kees Cook <keescook@chromium.org> wrote:
>
> On Tue, May 05, 2020 at 06:14:53PM -0600, Jason A. Donenfeld wrote:
> > clang-10 has a broken optimization stage that doesn't allow the
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
> > But actually, for versions of clang earlier than 10, fortify source
> > mostly does nothing. So, between being broken and doing nothing, it
> > probably doesn't make sense to pretend to offer this option. So, this
> > commit just disables it entirely when compiling with clang.
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
> Grudgingly,
>
> Reviewed-by: Kees Cook <keescook@chromium.org>

Do you want to take this into your tree to send to Linus? Seems like
security kconfig switches is in line with your usual submissions.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAHmME9ofHLjgB3KY9xwCkhK4V78KB_XUe1kzyizfx5yQRKo0JA%40mail.gmail.com.
