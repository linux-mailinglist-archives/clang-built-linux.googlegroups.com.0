Return-Path: <clang-built-linux+bncBC7IT64C2UOBB56UZP2QKGQEEY6FEVQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x738.google.com (mail-qk1-x738.google.com [IPv6:2607:f8b0:4864:20::738])
	by mail.lfdr.de (Postfix) with ESMTPS id A18581C76FC
	for <lists+clang-built-linux@lfdr.de>; Wed,  6 May 2020 18:48:56 +0200 (CEST)
Received: by mail-qk1-x738.google.com with SMTP id 14sf1923787qkv.16
        for <lists+clang-built-linux@lfdr.de>; Wed, 06 May 2020 09:48:56 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1588783735; cv=pass;
        d=google.com; s=arc-20160816;
        b=hn6VjPPtKtelYmvZ7uN8tapWHOW39q7LY7aDGqxFwPgChGZSz/mo+Do55EnyqnL6nH
         pMyn26yYF5/EN/u0LBb9+YAa8L6nbXUtKKYJxt5z+JLB8UMN2Bq1DKsDo3op0JGNsxFZ
         66my7kzMHaHImWjYi74CyxJTtBPDJzcR4oRe6lvqHDZ3jcxG+fmjquUXjGdMlUE9280d
         qS2L6/SP/oAlyl1IPtnUv5um6u9KFHv+y/yhMbG/PR8uCHeXwR4rICiafHEbgUZPlg/d
         N6NdRKdqtPO693P58OLX/SDhnV1sOjs0He0OF4G3q2HqSF7mzEUOuY+D2bZSjpB87o9H
         flmQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=ACrZyq44CjfyMh4IwgVhuL6MYycy/9PbJjVr5gmAJ0s=;
        b=lQ6bfjAAIgNhukEH1kVyu+xElRf4Txd6UhXCnLs0emhM6+JqXwYSpqrFKjiaztQZQj
         8zaZcwGiapj+TrRas6AvoNrelp4i6hNXVdsHgVFCDAQ4escozsTjCLQo0o/uiv8vTriZ
         xFLuOiUDzjm4uZAnZq8qh/7Gy0nXcgiJWzytcUFhmqfAvRubSihGMZFDT0D+W4zJOVzy
         /iabLMrZ2RK8f5Ofp8l6MLnuR0lvHkK5NP3BhghYzWJu252TyZeKrwgaFankDcyRNA6N
         ErfgraVB5LGH2AJeKz46acbdymJ/ePvPAjJPxTQ794YUfNnjwdXWqBPuTscwDEjN/QcE
         AfLg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=FqU4WoJo;
       spf=pass (google.com: domain of gbiv@google.com designates 2607:f8b0:4864:20::442 as permitted sender) smtp.mailfrom=gbiv@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ACrZyq44CjfyMh4IwgVhuL6MYycy/9PbJjVr5gmAJ0s=;
        b=sfBylFgtJZhnwkBbA/ew3+VLwM8Z991cMaFrB8ENO/AJwl4WcTruz6hSTYpxbX5uEf
         ksiORTjfU32UURRy0oEbIoaXNrQhJghy3HhUYlinzdrMkVJ7KxYsxsCZjDvaHDmpH1cW
         vMMJnBIbKi2toETFnUH4QG34bILZzmvuALfwahM4R0XB6u7LJZpCGXzHhBgX8sGwJfmS
         UKLp4tORvifDrSzLJfcpxyz2xWMB2QOk6eVDYVIsiWvRPTUzz/C8A9OkZ0WEyi7a1mIB
         SGjf+rRePK3otQBeVct0z8wQnCBQM6qOOiqWVAuwmWWuXblpaHjaKPWBCW5f9V23Yt5x
         UZQA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ACrZyq44CjfyMh4IwgVhuL6MYycy/9PbJjVr5gmAJ0s=;
        b=e8abYu9PdMD4bTYaj08DG6F+wO9DZ4W4Zvu6bP4pXOAhRo+4q1zhwP/oGo8wCk9/To
         flKmO0L3luK5DnHgLsff9hLczQRvU1nWZPErl/6OLYGsO3PzCFbqxdKpEjKXXzXRjLw+
         lOqlT6plmZaXJJB2mRkkbYB+rf+rPaeDCsu9c0KqBm/B7SHJG+TRwk+NOC/7k9sWYLJ0
         SrMnmspzdfGgMfAOrHRRY5p35PBbcd3hOjyGvLXsee7zDANq5VZKsqlv5jI5NHpn2010
         ar6r65gURz4M0vXEXMsMYVwonbHDFgUTF+5jNKNUYj8n3VnFl1mOjc92hVg1hS6SfC+8
         hntw==
X-Gm-Message-State: AGi0PuaEXjNtdSEK+JEVhDpvQUeOiON+D/8Ywufa/jMRfa3psn1Cg4NT
	F7s4xnQ5p5j34Jaduf51q6A=
X-Google-Smtp-Source: APiQypInC2y0gY8DxyaGHtDz/7/oIx55KBbqP7yJiKL6QilrvTY2lDcScEwcBmuBMMybRtBws4x8JA==
X-Received: by 2002:a37:67c6:: with SMTP id b189mr7065443qkc.285.1588783735698;
        Wed, 06 May 2020 09:48:55 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a37:610d:: with SMTP id v13ls2409600qkb.0.gmail; Wed, 06 May
 2020 09:48:55 -0700 (PDT)
X-Received: by 2002:a37:640b:: with SMTP id y11mr3229111qkb.266.1588783735187;
        Wed, 06 May 2020 09:48:55 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1588783735; cv=none;
        d=google.com; s=arc-20160816;
        b=V3eq400jwPe8SVk7PCqOCm31V7gsmjU9aGMOlUAFaHLsoluydb6xZi0mMNduR8fR36
         NBE+QDkVz2njEtsA5CegFpU5ybCkkcwoXy8ibMH3zSx2MYbvrwXIVvjxx4SutDrPqpef
         WRu/TB7K+qgcAeMk1RDfpx+DEJQEruVHIiy644Oj2mYyUMGJavYaMi8RznYBFx8CzIMr
         mAZNPehBc1wrugphkOxctxY+35R46VnZ0PXoi9u4xt++tx8G0yk8hzsqbnNNPZATVNKI
         C3FXZ2Kl/Gp8KJ68MGBtLHgv9EivfZYIvyCMAQvz2kJ22k5oRVsTujaJiM4TjUeLOP6j
         c2eQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=fYzSetl93/pxTqOYZg3cigxftxW+mQd4kGIUi5KwOak=;
        b=SLj9acDO8wFHps8RBNA5Z9atGvOOUvC5YjlLfFSCikDFiNITCTPd71UIEbPFgyDJei
         5RZVlU5GwTdsHot2kGi1ldL3RDF+TpXooKENvwoaXYCrbI8Dz49/vhI3jryK4cwtDvd0
         SDtyyKPD/DH4WfRo/1YGRQRtXy8TKuyjJMb+1086M29Zzh/xthtIOTTjrhk2FgOu3cn1
         hRbKHhGcsYQf0r1ph5dRYA8NMg3PJz1Rs7rRVe3ldEnyZYUiZSvPvDTGa8ttOHgeU/8F
         1w+O3/3FWCpGW3UcKwaFaKIOQXVrSAYDJ7epBwfTN549QpcPWogQEdDLPMcGLOJgsOrS
         STHg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=FqU4WoJo;
       spf=pass (google.com: domain of gbiv@google.com designates 2607:f8b0:4864:20::442 as permitted sender) smtp.mailfrom=gbiv@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x442.google.com (mail-pf1-x442.google.com. [2607:f8b0:4864:20::442])
        by gmr-mx.google.com with ESMTPS id o3si222668qtm.0.2020.05.06.09.48.55
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 06 May 2020 09:48:55 -0700 (PDT)
Received-SPF: pass (google.com: domain of gbiv@google.com designates 2607:f8b0:4864:20::442 as permitted sender) client-ip=2607:f8b0:4864:20::442;
Received: by mail-pf1-x442.google.com with SMTP id z1so1288603pfn.3
        for <clang-built-linux@googlegroups.com>; Wed, 06 May 2020 09:48:55 -0700 (PDT)
X-Received: by 2002:aa7:81cf:: with SMTP id c15mr9185836pfn.211.1588783733947;
 Wed, 06 May 2020 09:48:53 -0700 (PDT)
MIME-Version: 1.0
References: <202005051617.F9B32B5526@keescook> <20200506001453.764332-1-Jason@zx2c4.com>
 <202005051953.AF54DA4@keescook> <20200506035351.GA599026@ubuntu-s3-xlarge-x86>
In-Reply-To: <20200506035351.GA599026@ubuntu-s3-xlarge-x86>
From: "'George Burgess' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Wed, 6 May 2020 09:48:17 -0700
Message-ID: <CA+rzOEmt8MUiXZcN7LPz3yedteHodxLN20L1UPtb2qXKeuunrw@mail.gmail.com>
Subject: Re: [PATCH v2] security: disable FORTIFY_SOURCE on clang
To: Nathan Chancellor <natechancellor@gmail.com>
Cc: Kees Cook <keescook@chromium.org>, "Jason A. Donenfeld" <Jason@zx2c4.com>, linux-kernel@vger.kernel.org, 
	clang-built-linux@googlegroups.com, arnd@arndb.de, 
	Nick Desaulniers <ndesaulniers@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: gbiv@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=FqU4WoJo;       spf=pass
 (google.com: domain of gbiv@google.com designates 2607:f8b0:4864:20::442 as
 permitted sender) smtp.mailfrom=gbiv@google.com;       dmarc=pass (p=REJECT
 sp=REJECT dis=NONE) header.from=google.com
X-Original-From: George Burgess <gbiv@google.com>
Reply-To: George Burgess <gbiv@google.com>
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

I took a bit to poke Clang here. Building an arbitrary file with
`CONFIG_FORTIFY_SOURCE=y`, none of the functions in this range
https://github.com/ClangBuiltLinux/linux/blob/0bee0cece/include/linux/string.h#L274-L468
have FORTIFY'ed definitions emitted by clang, i.e., the added FORTIFY checks
aren't helping. Happy to check other functions elsewhere if they exist,
but given that this entire block seems to be a functional nop...

Reviewed-by: George Burgess IV <gbiv@google.com>


On Tue, May 5, 2020 at 8:53 PM Nathan Chancellor
<natechancellor@gmail.com> wrote:
>
> On Tue, May 05, 2020 at 07:54:09PM -0700, Kees Cook wrote:
> > On Tue, May 05, 2020 at 06:14:53PM -0600, Jason A. Donenfeld wrote:
> > > clang-10 has a broken optimization stage that doesn't allow the
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
> > > But actually, for versions of clang earlier than 10, fortify source
> > > mostly does nothing. So, between being broken and doing nothing, it
> > > probably doesn't make sense to pretend to offer this option. So, this
> > > commit just disables it entirely when compiling with clang.
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
> > Grudgingly,
> >
> > Reviewed-by: Kees Cook <keescook@chromium.org>
> >
> > --
> > Kees Cook
> >
>
> I feel like you should finish your investigation into how broken this
> actually is before we give it the hammer like this but if it is going
> in regardless...
>
> Reviewed-by: Nathan Chancellor <natechancellor@gmail.com>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CA%2BrzOEmt8MUiXZcN7LPz3yedteHodxLN20L1UPtb2qXKeuunrw%40mail.gmail.com.
