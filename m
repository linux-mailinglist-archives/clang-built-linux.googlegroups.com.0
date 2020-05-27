Return-Path: <clang-built-linux+bncBDHYDDNWVUNRBUVBXH3AKGQEJWMKV3Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x93a.google.com (mail-ua1-x93a.google.com [IPv6:2607:f8b0:4864:20::93a])
	by mail.lfdr.de (Postfix) with ESMTPS id 28A1E1E4029
	for <lists+clang-built-linux@lfdr.de>; Wed, 27 May 2020 13:36:51 +0200 (CEST)
Received: by mail-ua1-x93a.google.com with SMTP id g28sf9310466uaf.15
        for <lists+clang-built-linux@lfdr.de>; Wed, 27 May 2020 04:36:51 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1590579410; cv=pass;
        d=google.com; s=arc-20160816;
        b=qTaiDLHUeWsk6sDkT5RqZ7vp3elitQl8yWYGzHE0FEO2zzZNXYFi80TM/llhvr81I9
         lV9+dGIMrdTNO9ek+XJqGRIl8Pu7/8SJyQEt/I/67QIUVW9xMFzkECJcp3eDaqMtlY6t
         KE0xjph1iPAmqjX9JbqM/XGqsE9/xRiZa9GFXVBvhdjPLPX9Arwvc//90SdT2cpe5fju
         rxDsoUm/yqpWmtU82XS99OGxxb3eVY1mEW79uWTBPWQbomv3q1DBDr5Q9DPFmSf8N4ww
         4W9VwMZgF/1jlg2LN65KvETaAI+rlULWbK+9EIc+qqRlORBuSi7VhxPJNZ1VBBRBXjiF
         bbHg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :reply-to:in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=jwMTvvol1yBPnlEU+UJs1VPIyd4LrkOTddMpVlzyRUE=;
        b=CIU0FNAOKIoV6mHlNwk9Ob74OTbcHUESLY8GAUHwBHTmiR6KDVMXahJEivSxeQ9+Un
         vQzjZVk1Hy9QsQOfirezBAUtjZb64cQWS/ZUmbq+MdIflhJhuxcggxss1rWeSh1mbA54
         0mWEsHgBwVxpL7UxjtDin78A0A0ruk8KQl0S9foaQRlYu2whQhyn1lcW3lW6CzgeOcEG
         RYevzUD54Ar6Xd7++IB3HsvpfkmpHcOQPczy9MK2Gsp38F7PIohGRJj5PrxM+IEq0YfI
         nlQtIlE074pH0BBP8oYXVNmzi+7v/LMFUcgff3LNd6CipCFL8q6Jn5HFCj6qgmRfTr/q
         nfbg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=L1YBq2nY;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::144 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=jwMTvvol1yBPnlEU+UJs1VPIyd4LrkOTddMpVlzyRUE=;
        b=JGLKenxNJ2gYWKmyyN2prWaV5yk1NB0MIvDSVBgm+unYBbWiS07hTQcFNDIG817/Jt
         x9MMZPSbSNVE8j4AQw1E9wj7GAvva2P25+HQkemLIPuzU4qY8xl3NJL+/zobRdf38PwD
         E9SwhO+I4kx/AaBS4mI0A8kulj5xT5Yyym3QhhBhKIkvni0BdfL1nUzKqF0+8WauhOgO
         hI4QWP84TiQDcek9ulOq00l95hifFjry4umQDNyFbl6OxOdyanhOgC8qoLSg3Q7Um9ZH
         FCegBQDRoh/Lu4SBcMaBA+xaEteRHjUTKrrHyHYe/mg+XJjXHva+c/5wyIfk6X+5Owvp
         JdIg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=jwMTvvol1yBPnlEU+UJs1VPIyd4LrkOTddMpVlzyRUE=;
        b=if7iXQXxomCmjmRY+JuID7MHp/vNIZr1v5ePuKQ5mACP4WUpW5Qp2xtfooO1elGwqk
         Mcdko6Z+sSBo9qBXc/02TVzvEwg1ulLhc6g6Xe3kd2i6elV76z08Y/w1NdhRHHuy7PTs
         AoIjzWrHXL1oPLIAvyj/r335ufSYyC/e5RWc9ecwCi2Hdgsghk7ioda0xBUnmnjL2hhT
         q+hlc520iZdX8ZFFNCEt/TbhtFKEuKGJtqlp/PP7kz4X5vOuD6sdB6jyuPE+4N3FCVq1
         wC34YVb4JjSVUa04IeuA559Xs1Dp/9GalMl8ckSCa+53VJnt1epFmdIoenHFi/6w8OmB
         QRcw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to
         :reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=jwMTvvol1yBPnlEU+UJs1VPIyd4LrkOTddMpVlzyRUE=;
        b=gdPXW/Hw9DdwfrU0FjeeQbcskeAM5awFFNMTtKu0Nt0XW9JiNIpqVxzrVJ6ES2H/50
         59zafXOzuLFcomhPU/gz5F6EE/8Fu+HJf1rMylW9Rhye2+LujUps9q1JpBl3d9lvTVds
         fht8W2mY/cB2yY8YSSChEUysNLwJVSLsIgfaqXG2ZxnfDaQ/kPgNu1KC1Mgfl11sBvyi
         myTfSC1gCGJp0F8qqh7lJ5Sae7HA6BAtxgaEDLWFcnjd787WK7hQVsym66IlzpizbUjF
         5MEELQghcr8X2hs0tJ+frZbYotEIMFXI52eXApbMaFL5Y2dJqh/UMOE2mA8hWq2NnuCT
         /fXw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530HAg2s2pnPHreJlxYXcSeU598dzseX4TebYkzqCud6DPB0W5xh
	7SRSIzkAr2wtvrLt3snRvQs=
X-Google-Smtp-Source: ABdhPJy3Ph6ra/AROnjREq8G9u/46W2pCq61kiJd0e6Q5TcSCoLPs223STmzMKLnnBMB9gqbKNNv0A==
X-Received: by 2002:a67:1486:: with SMTP id 128mr4334246vsu.191.1590579410070;
        Wed, 27 May 2020 04:36:50 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ab0:7608:: with SMTP id o8ls957773uap.8.gmail; Wed, 27 May
 2020 04:36:49 -0700 (PDT)
X-Received: by 2002:ab0:28a:: with SMTP id 10mr4276549uah.131.1590579409737;
        Wed, 27 May 2020 04:36:49 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1590579409; cv=none;
        d=google.com; s=arc-20160816;
        b=QDe1uIRJwOZXH0TqCEKdB6iKfBVT9WNa8HGb8fIwSa6DqHEZXGqRadre0Qu04DeUJs
         qN3qpwy18cIu7A6VetgpgA9AlpTSX2or24MveRqfpgokmQ4hCszzUmEqy/iEfX8y6k/k
         5nCM+bgJJJu0h/KPSDykAvFV3SgjeK+JuJcDGN0mS1wf0e3f0IOvXwMEdyXNwbs9tZ0H
         MfBvWcP+VK6x8WQtOdmzB2FbLg41U2LwVqrEH0VeJalyBomMMbpP0FKtU2YI9383BVc+
         0qwTsHbKuYxMJq4o9OJCDOcPus7lSbS8tRQACasV4vscmnsYf0n8ntD1ca8q2RS5IBPY
         rbNA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:reply-to:in-reply-to:references
         :mime-version:dkim-signature;
        bh=z6go2Pe/0xHx8Ur0HnZIKTJ47Wq/ilnSzd2NqpRkWGw=;
        b=N1TJ0kTvTYBfCQ5++0FX9mOvNEE7iKBnVpgkG22p5YjCKyzaZ+TwPgiMpqLTs9u9lz
         A8/bETLMzcCpE8XVzCrD/4GO4iBu7DQon5LP1pC9rIDC4xupS9+Z/FXKKDGXX5mepyBW
         WrZXgQgg8YSjNmTU1hViVZkaue3IqP4im/++8chMWx0UyVSJz7JqSsQhrJihdO6kmTDo
         LhwS6/lvek0EirpBJMKxNBELjRE2iHwjUP7gJlDSVU/tp1JT25kSxiaj6HpC8bjSe8Nh
         93oRZQngGmrzsTQjGVbAyNW+4nFmF/9YlcUShi2rLl6OSRRb5ZnpfTk9/ZEaw7YsInqO
         hIpw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=L1YBq2nY;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::144 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-il1-x144.google.com (mail-il1-x144.google.com. [2607:f8b0:4864:20::144])
        by gmr-mx.google.com with ESMTPS id j5si286169vkl.3.2020.05.27.04.36.49
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 27 May 2020 04:36:49 -0700 (PDT)
Received-SPF: pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::144 as permitted sender) client-ip=2607:f8b0:4864:20::144;
Received: by mail-il1-x144.google.com with SMTP id a18so6352384ilp.7;
        Wed, 27 May 2020 04:36:49 -0700 (PDT)
X-Received: by 2002:a92:6608:: with SMTP id a8mr5465508ilc.204.1590579409205;
 Wed, 27 May 2020 04:36:49 -0700 (PDT)
MIME-Version: 1.0
References: <20200527103236.148700-1-elver@google.com> <CAK8P3a1MFgRxm6=+9WZKNzN+Nc5fhrDso6orSNQaaa-0yqygYA@mail.gmail.com>
In-Reply-To: <CAK8P3a1MFgRxm6=+9WZKNzN+Nc5fhrDso6orSNQaaa-0yqygYA@mail.gmail.com>
Reply-To: sedat.dilek@gmail.com
From: Sedat Dilek <sedat.dilek@gmail.com>
Date: Wed, 27 May 2020 13:36:41 +0200
Message-ID: <CA+icZUWtzu0ONUSy0E27Mq1BrdO79qNaY3Si-PDhHZyF8M4S5g@mail.gmail.com>
Subject: Re: [PATCH -tip] compiler_types.h: Optimize __unqual_scalar_typeof
 compilation time
To: Arnd Bergmann <arnd@arndb.de>
Cc: Marco Elver <elver@google.com>, Will Deacon <will@kernel.org>, 
	Peter Zijlstra <peterz@infradead.org>, Borislav Petkov <bp@alien8.de>, 
	Thomas Gleixner <tglx@linutronix.de>, Ingo Molnar <mingo@kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	"Paul E. McKenney" <paulmck@kernel.org>, Dmitry Vyukov <dvyukov@google.com>, 
	Alexander Potapenko <glider@google.com>, Andrey Konovalov <andreyknvl@google.com>, 
	kasan-dev <kasan-dev@googlegroups.com>, 
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, Nick Desaulniers <ndesaulniers@google.com>, 
	Stephen Rothwell <sfr@canb.auug.org.au>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: sedat.dilek@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=L1YBq2nY;       spf=pass
 (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::144
 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Wed, May 27, 2020 at 1:27 PM Arnd Bergmann <arnd@arndb.de> wrote:
>
> On Wed, May 27, 2020 at 12:33 PM Marco Elver <elver@google.com> wrote:
> >
> > If the compiler supports C11's _Generic, use it to speed up compilation
> > times of __unqual_scalar_typeof(). GCC version 4.9 or later and
> > all supported versions of Clang support the feature (the oldest
> > supported compiler that doesn't support _Generic is GCC 4.8, for which
> > we use the slower alternative).
> >
> > The non-_Generic variant relies on multiple expansions of
> > __pick_integer_type -> __pick_scalar_type -> __builtin_choose_expr,
> > which increases pre-processed code size, and can cause compile times to
> > increase in files with numerous expansions of READ_ONCE(), or other
> > users of __unqual_scalar_typeof().
> >
> > Summary of compile-time benchmarking done by Arnd Bergmann [1]:
> >
> >         <baseline normalized time>  clang-11   gcc-9
> >         this patch                      0.78    0.91
> >         ideal                           0.76    0.86
> >
> > [1] https://lkml.kernel.org/r/CAK8P3a3UYQeXhiufUevz=rwe09WM_vSTCd9W+KvJHJcOeQyWVA@mail.gmail.com
> >
> > Further compile-testing done with:
> >         gcc 4.8, 4.9, 5.5, 6.4, 7.5, 8.4;
> >         clang 9, 10.
> >
> > Reported-by: Arnd Bergmann <arnd@arndb.de>
> > Signed-off-by: Marco Elver <elver@google.com>
>
> This gives us back 80% of the performance drop on clang, and 50%
> of the drop I saw with gcc, compared to current mainline.
>
> Tested-by: Arnd Bergmann <arnd@arndb.de>
>

Hi Arnd,

with "mainline" you mean Linux-next aka Linux v5.8 - not v5.7?
I have not seen __unqual_scalar_typeof(x) in compiler_types.h in Linux v5.7.

Is there a speedup benefit also for Linux v5.7?
Which patches do I need?

Thanks.

Regards,
- Sedat -

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CA%2BicZUWtzu0ONUSy0E27Mq1BrdO79qNaY3Si-PDhHZyF8M4S5g%40mail.gmail.com.
