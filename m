Return-Path: <clang-built-linux+bncBDS5JPEL3IIRB2XL6P6QKGQE2WBGE7Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x83e.google.com (mail-qt1-x83e.google.com [IPv6:2607:f8b0:4864:20::83e])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E8182C2521
	for <lists+clang-built-linux@lfdr.de>; Tue, 24 Nov 2020 13:00:43 +0100 (CET)
Received: by mail-qt1-x83e.google.com with SMTP id i20sf16041177qtr.0
        for <lists+clang-built-linux@lfdr.de>; Tue, 24 Nov 2020 04:00:43 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1606219242; cv=pass;
        d=google.com; s=arc-20160816;
        b=OfDigQgf9ZBbBTLI8p42gqH8UzAi9MCNI5CliqIkjDcdSQ3DMCGoMGrOuH/8OA9w/c
         t51LsUe/UwBjceOqx6iRLityW1mpIQitTpwI1lOXSw/MmOG8leY6wZBvp75CtsS4co1g
         M4qL0yVVcYjqhK/0+BSkGBNrfB6ZjUej2xJlg33ADEcuN1nyQzvw/aYa5vXGmiumhbBd
         rEGn1YQ+/lKVlDtcksxJ8b4M3z07Q/zS7Bgpt4K68UwKYjRTeCUmG8l6JBPI4LLzPSW1
         CxLNMwnsYbbNoqIktJ9XXc+om565+CBXvdy128hOh3fWIrbFSECm7MAKPjXhG9EapULD
         pCSQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=36BSvnE0kMT4ama0mTq51CwMadspAOKN3GzgF961FjU=;
        b=U4HRbwKYepsKHa8YdAGtHm2aAzD1KcHf5lMPaBUWf+PnCZsBciIACmZe391csXTr5m
         qFKVOAm8W01ou42Z7pH9XAq2jOfI7UMrAPnL0B87Y6ciCy1l4ByH51KiCicev969K2rW
         pZrgkk+hX+Z90oimquKNh1vTtK1dADAdpGPig6twigPF+k2HCCd+NI6F32s81c02XQtc
         pDRPiU7NV7+QqJT1AGds9td79PV+gHhiX6YqjYOYNbgf3NcJXtG9r/6XFA5EdOrhVmRo
         bBfrJ/JeYnCatKqbBXBwFe1BdVBeVHczFVolUcq6b4d4mz50NK1ixpLBHhQf4EGwDGMh
         ltPA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=PlrDiVIB;
       spf=pass (google.com: domain of lukas.bulwahn@gmail.com designates 2607:f8b0:4864:20::d42 as permitted sender) smtp.mailfrom=lukas.bulwahn@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=36BSvnE0kMT4ama0mTq51CwMadspAOKN3GzgF961FjU=;
        b=TP5dnxgomSHke9FNb1xVO45hlAB3sjqh+WVbF5dqv68Cw0lfSX7KzH+fWTeJ3+8er8
         X7XTpySc8tsi0/s30BGAA1TWzAvwBQ8gle/vHbgIQs9YTMq2CnzUOvasqWQmnya0OjVe
         LY9h0oIuMlYgyjmfU/TRJW5NdWgvFb8MfKgFm8zkG1EI+WFXvnWUsYj8xOX5adTvVd24
         JyhPZIZO6eVGyHyeaP7iqnxY2j89s99fHEcpLYCenDsXU10dZusHrZCudYnFvDGae/qX
         w4n5YmPBYu4Jix4qul5maJ/8icMGEsFHtszTdedl947xPtsZ9j13LWzSPlAtaeoeAjwq
         ThGA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=36BSvnE0kMT4ama0mTq51CwMadspAOKN3GzgF961FjU=;
        b=e4iJfvvTcJ2xQVMr5uxI2/2RG7Zoj+gl3ggW3ZUSqXMCWkD/JlS4pPL5P0/CFCkR5o
         WwKQAQC8yaCewiBxUA8pDrJ+JmrfRbReK5raOKg64mr+yMglwdnk5vN6Zbr0qmAN0qxJ
         oeWdrFZripBav8+myyzqfwFnzwit1+whH8lJTKSJTgVg6SyDIVfS6deHc/5EJo/10f/x
         EnHmE0ZXJb6ty/78H5dpqnjZY0xSOiQ8XhvnWPMRipURGG3iQkroeo9DdwfOw+fxB7Vx
         6WcnBg9aFUAdy3Q7Lh7dIEFavR6N4PYmzu34WQNQVfduuLgD0p56R8a7GcwBj5dbZT5S
         DFmw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=36BSvnE0kMT4ama0mTq51CwMadspAOKN3GzgF961FjU=;
        b=q2GBG/o/ITdPw12laEDGCYlLuOSxPFuxZ4a1bi59b6arBitvZf8LfBfSS3UIoy/1II
         QlKfhZR/H7EArqV/bvVfcCBTflBN/NyIFe0/b5tFpxznBapHIvqykWQk2kocQ+bUBgYU
         Yb8ZXVrkKFBWJ94V8Cy3k238RUDtypWY3Z7AvzAf2dFL+L/xEva5pPsJSGrWsh+PIOKp
         5qqga9z3h096mI0yPpV+WG5HN95fA1KBHznpXeu+Hf/NGV3xwD4EuLt4abbe1oarTw/Z
         7Alre6d7qnwi/v1Q+YWqFYifwI+X199Mc2pkRe3Yyj+wrc5FrzEiChCoSh7HjYP1S4Sn
         oAQg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530nLLiit40oGn67n21JIcEoWxaLL1q4U9oRkWwklkeOMsild5RY
	7qNXmZEtYnMIoWmYsYy6psI=
X-Google-Smtp-Source: ABdhPJxBJtv0Zhp8fM912vZBaQP3hy04ur5DJnHKe6PouhaD3CkWPdx8G5d3SACNbha+wZuIBrTGmw==
X-Received: by 2002:a37:7e82:: with SMTP id z124mr4201934qkc.107.1606219242174;
        Tue, 24 Nov 2020 04:00:42 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:620a:648:: with SMTP id a8ls2677793qka.2.gmail; Tue, 24
 Nov 2020 04:00:41 -0800 (PST)
X-Received: by 2002:a37:9dd1:: with SMTP id g200mr4236700qke.376.1606219241734;
        Tue, 24 Nov 2020 04:00:41 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1606219241; cv=none;
        d=google.com; s=arc-20160816;
        b=Q+FJjygFABK3F+mdI9MjIuD/GdVTYmfCKSa04rtsJl982tKGJGSRKMQ9dmIhE8nuKL
         mX1uqUMHYGJucF3UwI1RKzzjYd8nHZPDVZO88K75smACjtz+TUftp8qO28nDtKV3sfOk
         R0VtmYfZS1a8PwEoofzrl/H9ENELksjapzv7WQp7pDo+JCf1UjdS64hv40lRWjgdv63L
         FAN7R93nBJZ1oPSBGYo80vb/3BrFPJ6CaxdKJ4ZukDcQ++q0JOt5oi4OSzS82U8hL6r8
         bVNcvLLB+z9EWlXxPIVq6iHSMUCOVQUBuaz4E8bN3My9se2iVtq+ptGmDtYl8bzqnlEa
         Vw1A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=pFQqpahw9l/rBq/5WPcCxd/Tz8vut/eGLY8uQxwZEKc=;
        b=XXjLS4Dlc5HRGVMlmHkumtroQlKlkK8BYpCs2KF9bA9pGWhIc9cgSNyo7fBlYxjm94
         cWadmwwm9XKmvYHZE1Xxt7OdAiF4omj8u56hv4o5yUuHzUC303420qwDjaPHkcXXCRDf
         /oHWDrKJFUi/NrvgGAYJIXDfhTN06K6rfJbo8vsVCBE8L8nAyBhRMawmPqXjwNaZT0iN
         rADy5Nv4XTRTgu29W3eKd+VnzObwk6c+QDkHgBbysW5DasURJaL+5CyN0JZUxxaCwqhn
         FqpWmzMIo7ZpFS5uy5VAnSojksnWdMI9PseKPuVpib81ziNYojXH8j+mWU3wlcgpcBAV
         VAdg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=PlrDiVIB;
       spf=pass (google.com: domain of lukas.bulwahn@gmail.com designates 2607:f8b0:4864:20::d42 as permitted sender) smtp.mailfrom=lukas.bulwahn@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-io1-xd42.google.com (mail-io1-xd42.google.com. [2607:f8b0:4864:20::d42])
        by gmr-mx.google.com with ESMTPS id o11si657079qke.2.2020.11.24.04.00.41
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 24 Nov 2020 04:00:41 -0800 (PST)
Received-SPF: pass (google.com: domain of lukas.bulwahn@gmail.com designates 2607:f8b0:4864:20::d42 as permitted sender) client-ip=2607:f8b0:4864:20::d42;
Received: by mail-io1-xd42.google.com with SMTP id m9so21634087iox.10
        for <clang-built-linux@googlegroups.com>; Tue, 24 Nov 2020 04:00:41 -0800 (PST)
X-Received: by 2002:a05:6638:41a:: with SMTP id q26mr4087022jap.27.1606219241186;
 Tue, 24 Nov 2020 04:00:41 -0800 (PST)
MIME-Version: 1.0
References: <20201124104030.903-1-lukas.bulwahn@gmail.com> <CAG48ez1FqJYay1F=LUt84DVHd+k0=gXohwhTnwv=t1sv=hTSjw@mail.gmail.com>
 <20201124115058.GA32060@infradead.org> <CAK8P3a2rVKQ5UHzcycu=0QpjtSQ3Nne4Xre-7+V27vmCe9yfKg@mail.gmail.com>
In-Reply-To: <CAK8P3a2rVKQ5UHzcycu=0QpjtSQ3Nne4Xre-7+V27vmCe9yfKg@mail.gmail.com>
From: Lukas Bulwahn <lukas.bulwahn@gmail.com>
Date: Tue, 24 Nov 2020 13:00:30 +0100
Message-ID: <CAKXUXMxfPqn4hG-QCtQM1qrK7Vck2hHRycb5VZBYHf4-ezkiGA@mail.gmail.com>
Subject: Re: [PATCH] zlib: define get_unaligned16() only when used
To: Arnd Bergmann <arnd@kernel.org>
Cc: Christoph Hellwig <hch@infradead.org>, Jann Horn <jannh@google.com>, 
	Andrew Morton <akpm@linux-foundation.org>, Arnd Bergmann <arnd@arndb.de>, Tom Rix <trix@redhat.com>, 
	Nathan Chancellor <natechancellor@gmail.com>, Nick Desaulniers <ndesaulniers@google.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, kernel-janitors@vger.kernel.org, 
	kernel list <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: lukas.bulwahn@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=PlrDiVIB;       spf=pass
 (google.com: domain of lukas.bulwahn@gmail.com designates 2607:f8b0:4864:20::d42
 as permitted sender) smtp.mailfrom=lukas.bulwahn@gmail.com;       dmarc=pass
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

On Tue, Nov 24, 2020 at 12:56 PM Arnd Bergmann <arnd@kernel.org> wrote:
>
> On Tue, Nov 24, 2020 at 12:51 PM Christoph Hellwig <hch@infradead.org> wrote:
> > On Tue, Nov 24, 2020 at 12:08:40PM +0100, Jann Horn wrote:
> > > > Since commit acaab7335bd6 ("lib/zlib: remove outdated and incorrect
> > > > pre-increment optimization"), get_unaligned16() is only used when
> > > > !CONFIG_HAVE_EFFICIENT_UNALIGNED_ACCESS.
> > > >
> > > > Hence, make CC=clang W=1 warns:
> > > >
> > > >   lib/zlib_inflate/inffast.c:20:1:
> > > >     warning: unused function 'get_unaligned16' [-Wunused-function]
> > > >
> > > > Define get_unaligned16() only when it is actually used.
> > > >
> > > > Signed-off-by: Lukas Bulwahn <lukas.bulwahn@gmail.com>
> > >
> > > AFAICS a nicer option would be to "#include <asm/unaligned.h>" and
> > > then use "get_unaligned", which should automatically do the right
> > > thing everywhere and remove the need for defining get_unaligned16()
> > > and checking CONFIG_HAVE_EFFICIENT_UNALIGNED_ACCESS entirely?
> >
> > Yes, that is the right thing to do.
>
> It's possible that this didn't work when the code was originally added:
> The decompressor functions are called from the compressed boot path,
> which is a bit limited regarding which headers it can include, at least
> on some architectures.
>
> I would recommend test-building this for all architectures that include
> ../../../../lib/decompress_inflate.c from their boot code.
>

Jann, Christoph, Arnd, thanks for the advice. I will start to look
into this immediately.

Lukas

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKXUXMxfPqn4hG-QCtQM1qrK7Vck2hHRycb5VZBYHf4-ezkiGA%40mail.gmail.com.
