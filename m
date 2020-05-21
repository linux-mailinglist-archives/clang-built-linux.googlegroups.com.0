Return-Path: <clang-built-linux+bncBC7OBJGL2MHBBJUDTL3AKGQE54WZRYY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc39.google.com (mail-oo1-xc39.google.com [IPv6:2607:f8b0:4864:20::c39])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B0AD1DCDE5
	for <lists+clang-built-linux@lfdr.de>; Thu, 21 May 2020 15:27:04 +0200 (CEST)
Received: by mail-oo1-xc39.google.com with SMTP id l21sf3394727oos.22
        for <lists+clang-built-linux@lfdr.de>; Thu, 21 May 2020 06:27:04 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1590067623; cv=pass;
        d=google.com; s=arc-20160816;
        b=gsSOnxxk0i6KQkLECdM/eC0S6evF8GVTaE/awu6VELyxkB84G6WJPAqjrXtjN9MvFv
         p7S/igYrJmsiTkUtZFMPtrI4gi2rbsseWdBwmnXNNS/05t83NFozhvaYmLu2OaYB12sH
         IBga25A4bVHVn7NLYXtZFurFZAZfU+csRegT60lgxeE3ZgLGgBpv42NwPWykv/K5FY8U
         VFry+QjSfta79U8AESNEFftVPMOcrLUKRMEkCa7M7YVzhZdnVUOFFOmNEEsbKb+DOPn7
         eOWwgYb0inxq1jNi7wulkafRJxilICLhMBaRos6WaUsFPIFstcaOMhwrICp2yxfYEuDD
         SbZw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=K7nNuf+T2f4DM/guWllVmg+2g0Gmu1F60Q6j84BEYWU=;
        b=KCs9zc+zv6b5Yo03wlJ0Q8eNaDp1vteoo9FQ/73uabK5Nwt2nq4+aXOmGTftZO1oI6
         FEYjEIuOLqClXMNdJVISDGPxKDqIdUQYwZPsRlA1afrZhwX6rPUixxk3IK6Zc/aamEgi
         1jvctE0cUNaU/kWkJwAYJZAyPBOoRGRNucfdlExIiEjVzTFkJgoANMS/c6vA/h16OrG4
         QbzBz9sdNRNwxjt0wVGM+rxGA4chuIyhnxOm1gVRn8Nyu3KaRPGrfdOwv/SNOZyh+D3j
         LLCSjzVap93ZFbEF6uoizl+hJfq2rfrAZmyjKj1TAfr9IdPw3keG3bjDG4eey9iKkH+q
         cKBg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=GXlGtQiQ;
       spf=pass (google.com: domain of elver@google.com designates 2607:f8b0:4864:20::342 as permitted sender) smtp.mailfrom=elver@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=K7nNuf+T2f4DM/guWllVmg+2g0Gmu1F60Q6j84BEYWU=;
        b=OhDTVJ2tzYDzzOkbDbVcWW7llxMV1ynH4KReW4f7UgPPYhzB052458GKWfVXZmzjwj
         SWM7QLChJ9eMhAcYYLUUGFIgB2UifC5uFLd4NInnMT9jAPcJUnnUVc2qOkZWAvIuVNFO
         iLwfIjeE0WhnQlc+RHDFU8df+i2QVq4zPmS0Zw6AO3V2ywi7lh2Y5jQn8EFGj49uvNTS
         BZ+/pTPgdLALFfqtdYpJ3Fdhc/KCYjT47vyX1a0bhdl6M/F/FXeAnFAofHQqwrqWURif
         yeTV5USCYHQwCbBkFHYkHb8KNHXXMYGO3on62TxMF1CUzBD1xvVxG9FXiE2v+77vJKmT
         v2rA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=K7nNuf+T2f4DM/guWllVmg+2g0Gmu1F60Q6j84BEYWU=;
        b=M9Oz4FR5okZjygVOqBLVOcdHL2730/WPRxxjSfbeAbCgP/ehy6G/Ep6qhW8jIvKZ8J
         lr/g8Sr3gDAN3FDEbFDZ7BOJPzOCtUfRZrn0pQpeUz51wTKb3M0V6rbMAoIhxh1A00T4
         Q1Z9n5OJ6dGhjNrwHVJKdQ/nXZ1FUEieX0aiWtryqif7DcKk+Tce1Xa8yWHJHEzTq0/H
         UJU58HK9auMzJFuaobH9B840gs8vLV6Cwbd1LJ4jdZeM6Ub4hO9f9e92Sirkm+9INhpW
         PDp/VjxwhYY3wcl6qwelNS50bgPjoPrKsjc/0ed9N1haW3qSPefHq2xnDi734zODeZlU
         FcJQ==
X-Gm-Message-State: AOAM530cjLRAV3+HHq5yxRRzSvVWb/PzFotXHDCCC3HU+jy3N6ws3iR7
	du3FVER3+q++ipKJlR2gB9Y=
X-Google-Smtp-Source: ABdhPJyKBxiyDTnk24cvfjnnRgfAqsc/iGrT54nx+/zBJuL61vIiYQeVma0MyG6tbyZFNAGHwoQJsw==
X-Received: by 2002:aca:1a18:: with SMTP id a24mr7059601oia.99.1590067623038;
        Thu, 21 May 2020 06:27:03 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:7d11:: with SMTP id v17ls453958otn.2.gmail; Thu, 21 May
 2020 06:27:02 -0700 (PDT)
X-Received: by 2002:a05:6830:1006:: with SMTP id a6mr7307625otp.65.1590067622714;
        Thu, 21 May 2020 06:27:02 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1590067622; cv=none;
        d=google.com; s=arc-20160816;
        b=FRqy74d3H7h872oZelbxrtdZ8NA9EBMswIyfiG8W2fPhUfnFmC6JyBXSUuYRiAFz0V
         Q340DDRFKxNOkeL04DvS+5wtHCB50cj26kw51cLZQcDWCSkHyU4JdeTTIakrMuZhBlVN
         CxI2YJGvxWnTOTl/wyaplwYMjDKk0X+w0q2pN2VcIfBhVSPtRxD7TgOMTONCYnj0VjJm
         nsHEzWMy1FNGrlIuBbIP10sNVjlz1UW1CFPiPlb7RQKLSzwvUmWgD19tIk7VchM3WuKV
         WI7frjd4V7NYOMu/YmEe0s3+xjAjd7ujKWEZ/lPYHUykTnTlEBYIG6GvFy15gSwqpbqt
         2G6g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=Moc8xalnKllIyEU4EMIrwAPrYnUw5Fl91QeBkTIQAoU=;
        b=get8s/7KvYlHhemHxD/OPm3S6zwYnl04j6/29YU6/e7ktkTIfWA805ZPwgvhIZ6WyF
         z+g/ES/HKjk8dYg1DnwGPeaBHH9Udc9nSuUB9ueQriFgoiy8njFRkJS4YGPA6mRVf1mf
         Q0hJTbGGPZXn5YvgWIJuU5P5uC34Fkbd7R5TCBECSaNAHgCPXuGt9cMwiw2iLsndjshG
         vVPDqoWfBnFEDWkQ1TEtJ0+VoFV5UqMwy/C4PPByqNrMDtRG4rykUe2T9+E9/6LE64NO
         a4CGMiSSsKaf7DUNe769Zdv5EvfBOy/Nsd9Z+QKpIEjOl63S6Zof/PIPF2ijKhIjXf7t
         XelQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=GXlGtQiQ;
       spf=pass (google.com: domain of elver@google.com designates 2607:f8b0:4864:20::342 as permitted sender) smtp.mailfrom=elver@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-ot1-x342.google.com (mail-ot1-x342.google.com. [2607:f8b0:4864:20::342])
        by gmr-mx.google.com with ESMTPS id n140si395643oig.0.2020.05.21.06.27.02
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 21 May 2020 06:27:02 -0700 (PDT)
Received-SPF: pass (google.com: domain of elver@google.com designates 2607:f8b0:4864:20::342 as permitted sender) client-ip=2607:f8b0:4864:20::342;
Received: by mail-ot1-x342.google.com with SMTP id h7so5488189otr.3
        for <clang-built-linux@googlegroups.com>; Thu, 21 May 2020 06:27:02 -0700 (PDT)
X-Received: by 2002:a05:6830:18ce:: with SMTP id v14mr6550417ote.251.1590067622152;
 Thu, 21 May 2020 06:27:02 -0700 (PDT)
MIME-Version: 1.0
References: <20200521110854.114437-1-elver@google.com> <20200521110854.114437-4-elver@google.com>
 <20200521131803.GA6608@willie-the-truck>
In-Reply-To: <20200521131803.GA6608@willie-the-truck>
From: "'Marco Elver' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Thu, 21 May 2020 15:26:48 +0200
Message-ID: <CANpmjNNDRb+wokzagQtLRVvZrj-8eH87gOX1JwG9hWf+eicRNg@mail.gmail.com>
Subject: Re: [PATCH -tip v2 03/11] kcsan: Support distinguishing volatile accesses
To: Will Deacon <will@kernel.org>
Cc: "Paul E. McKenney" <paulmck@kernel.org>, Dmitry Vyukov <dvyukov@google.com>, 
	Alexander Potapenko <glider@google.com>, Andrey Konovalov <andreyknvl@google.com>, 
	kasan-dev <kasan-dev@googlegroups.com>, LKML <linux-kernel@vger.kernel.org>, 
	Thomas Gleixner <tglx@linutronix.de>, Ingo Molnar <mingo@kernel.org>, 
	Peter Zijlstra <peterz@infradead.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Borislav Petkov <bp@alien8.de>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: elver@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=GXlGtQiQ;       spf=pass
 (google.com: domain of elver@google.com designates 2607:f8b0:4864:20::342 as
 permitted sender) smtp.mailfrom=elver@google.com;       dmarc=pass (p=REJECT
 sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Marco Elver <elver@google.com>
Reply-To: Marco Elver <elver@google.com>
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

On Thu, 21 May 2020 at 15:18, Will Deacon <will@kernel.org> wrote:
>
> On Thu, May 21, 2020 at 01:08:46PM +0200, Marco Elver wrote:
> > In the kernel, volatile is used in various concurrent context, whether
> > in low-level synchronization primitives or for legacy reasons. If
> > supported by the compiler, we will assume that aligned volatile accesses
> > up to sizeof(long long) (matching compiletime_assert_rwonce_type()) are
> > atomic.
> >
> > Recent versions Clang [1] (GCC tentative [2]) can instrument volatile
> > accesses differently. Add the option (required) to enable the
> > instrumentation, and provide the necessary runtime functions. None of
> > the updated compilers are widely available yet (Clang 11 will be the
> > first release to support the feature).
> >
> > [1] https://github.com/llvm/llvm-project/commit/5a2c31116f412c3b6888be361137efd705e05814
> > [2] https://gcc.gnu.org/pipermail/gcc-patches/2020-April/544452.html
> >
> > This patch allows removing any explicit checks in primitives such as
> > READ_ONCE() and WRITE_ONCE().
> >
> > Signed-off-by: Marco Elver <elver@google.com>
> > ---
> > v2:
> > * Reword Makefile comment.
> > ---
> >  kernel/kcsan/core.c    | 43 ++++++++++++++++++++++++++++++++++++++++++
> >  scripts/Makefile.kcsan |  5 ++++-
> >  2 files changed, 47 insertions(+), 1 deletion(-)
> >
> > diff --git a/kernel/kcsan/core.c b/kernel/kcsan/core.c
> > index a73a66cf79df..15f67949d11e 100644
> > --- a/kernel/kcsan/core.c
> > +++ b/kernel/kcsan/core.c
> > @@ -789,6 +789,49 @@ void __tsan_write_range(void *ptr, size_t size)
> >  }
> >  EXPORT_SYMBOL(__tsan_write_range);
> >
> > +/*
> > + * Use of explicit volatile is generally disallowed [1], however, volatile is
> > + * still used in various concurrent context, whether in low-level
> > + * synchronization primitives or for legacy reasons.
> > + * [1] https://lwn.net/Articles/233479/
> > + *
> > + * We only consider volatile accesses atomic if they are aligned and would pass
> > + * the size-check of compiletime_assert_rwonce_type().
> > + */
> > +#define DEFINE_TSAN_VOLATILE_READ_WRITE(size)                                  \
> > +     void __tsan_volatile_read##size(void *ptr)                             \
> > +     {                                                                      \
> > +             const bool is_atomic = size <= sizeof(long long) &&            \
> > +                                    IS_ALIGNED((unsigned long)ptr, size);   \
> > +             if (IS_ENABLED(CONFIG_KCSAN_IGNORE_ATOMICS) && is_atomic)      \
> > +                     return;                                                \
> > +             check_access(ptr, size, is_atomic ? KCSAN_ACCESS_ATOMIC : 0);  \
> > +     }                                                                      \
> > +     EXPORT_SYMBOL(__tsan_volatile_read##size);                             \
> > +     void __tsan_unaligned_volatile_read##size(void *ptr)                   \
> > +             __alias(__tsan_volatile_read##size);                           \
> > +     EXPORT_SYMBOL(__tsan_unaligned_volatile_read##size);                   \
> > +     void __tsan_volatile_write##size(void *ptr)                            \
> > +     {                                                                      \
> > +             const bool is_atomic = size <= sizeof(long long) &&            \
> > +                                    IS_ALIGNED((unsigned long)ptr, size);   \
> > +             if (IS_ENABLED(CONFIG_KCSAN_IGNORE_ATOMICS) && is_atomic)      \
> > +                     return;                                                \
> > +             check_access(ptr, size,                                        \
> > +                          KCSAN_ACCESS_WRITE |                              \
> > +                                  (is_atomic ? KCSAN_ACCESS_ATOMIC : 0));   \
> > +     }                                                                      \
> > +     EXPORT_SYMBOL(__tsan_volatile_write##size);                            \
> > +     void __tsan_unaligned_volatile_write##size(void *ptr)                  \
> > +             __alias(__tsan_volatile_write##size);                          \
> > +     EXPORT_SYMBOL(__tsan_unaligned_volatile_write##size)
> > +
> > +DEFINE_TSAN_VOLATILE_READ_WRITE(1);
> > +DEFINE_TSAN_VOLATILE_READ_WRITE(2);
> > +DEFINE_TSAN_VOLATILE_READ_WRITE(4);
> > +DEFINE_TSAN_VOLATILE_READ_WRITE(8);
> > +DEFINE_TSAN_VOLATILE_READ_WRITE(16);
>
> Having a 16-byte case seems a bit weird to me, but I guess clang needs this
> for some reason?

Yes, the emitted fixed-size instrumentation is up to 16 bytes, so
we'll need it (for both volatile and non-volatile -- otherwise we'll
get linker errors). It doesn't mean we'll consider 16 byte volatile
accesses as atomic, because of the size check to compute is_atomic
above.

Thanks,
-- Marco

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CANpmjNNDRb%2BwokzagQtLRVvZrj-8eH87gOX1JwG9hWf%2BeicRNg%40mail.gmail.com.
