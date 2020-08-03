Return-Path: <clang-built-linux+bncBD4LX4523YGBB6XVUH4QKGQEXTICLBI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63a.google.com (mail-pl1-x63a.google.com [IPv6:2607:f8b0:4864:20::63a])
	by mail.lfdr.de (Postfix) with ESMTPS id ECB9723AEA5
	for <lists+clang-built-linux@lfdr.de>; Mon,  3 Aug 2020 23:00:45 +0200 (CEST)
Received: by mail-pl1-x63a.google.com with SMTP id x20sf20646901plm.15
        for <lists+clang-built-linux@lfdr.de>; Mon, 03 Aug 2020 14:00:45 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1596488444; cv=pass;
        d=google.com; s=arc-20160816;
        b=gult6bufde+LC04KrtL8TAiQLSVZ5Lnti+Yo4T28SJZ0ox6SgT0KIrj1c+RHf61BQ/
         raMimPfoKQoHA7JuMreGLyhwZZvWLX4EkL4OoaFjzo8/j45JvWY6KYQEIEad6TT+Kayw
         yWOouYaDN0KHa1cGaHUHEjZvqRHUbHbCdDS3oB0RdeHFiI0icET7QzHCljfgNGu0sKGx
         29ZTKkSFSDwppcEgDaX6p49/KiFZ/XTbAF9hKdJs2xwM0e0F6Vz7pMUZgHmQwhdax9aI
         mUUjigUwOxZEFcZNzk/ONNPsh4VbSGw2CXa1b/g+MBxE3zRG9jeNG6EVf3WjynljH/EY
         vlkw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=13kqsczdunJou7hdTQl98W6x9ObwBrn92Xn/ww6x7IY=;
        b=bhp3DREWlJasTcrEwf2ow9oaqNdiJ6Cgt0mKEqEUm0h0XJO/aCyUfsqiwAtQz4A15e
         0ANThGm0CzwSb1GQBcl+9quRrlDyYaPVuZ8P7yg01fQEWBy3KY1xEfpIb7ttBuTza3Ua
         DuBzTt3msVGThmKYlhTHXqoAYkTt1x2TVWxlT8jIbv2qlcaDKXOl+MjOv/IaauSlrAfY
         kmhk8iQGdD+7y3Imx84klRMGY9p4uS0rd/L6JKvaVVc3t/omJcO14w3pRzj8CKehTTbH
         0cuLaYDyeMEWKR2UAWHgyUxfoA2VbbJpYGKZAw9MQWxCTns/XMwKUoX0HqgZepdfDvsx
         MufQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of segher@kernel.crashing.org designates 63.228.1.57 as permitted sender) smtp.mailfrom=segher@kernel.crashing.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=13kqsczdunJou7hdTQl98W6x9ObwBrn92Xn/ww6x7IY=;
        b=nsuw0QInG3GaGWUx4/Y87GijByapr0pfMthYKSd5eHLwuAUPDI52GowO1rShrhze9X
         EfZ3NQZisIl4GG5WhnuZERGwJwdugEg0c7n4ay9XVRSST3rhTdVUCWA3ebza0nrAT45n
         NUiSg59WHE9QuHd5tkDusGtCfSA1JB6NEn6alYWl/7qkqbjE+Sv3Wgc+ngBmvYM1lphd
         SA5K3oinQix9fCirt33oyuWtYYRegg8TKdlcPdbQnZmC2JGqc9sB2EvyMELthfCmLC/K
         g/1rLPzo6IuJOCV6MUtwMMJvkRjBsz1V3ytotm15pV+RoTstggahIyU6RmApAsvSeBNq
         K5tQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=13kqsczdunJou7hdTQl98W6x9ObwBrn92Xn/ww6x7IY=;
        b=GDKy8RtHOnB7Ng2rhGGOjf4Qzg2Uljg5SxMxApRIqBtjlzJ7mCq6f7JymejjNR4IJ7
         N5WvQZhE3RmD0VA7z45REQOuoYrNATjshmQjW8aWwiB9SfTMbNBsBJCE4PcIk37T2ZGa
         Gy6MFXXdHUa0uFJqXbB+WqfEg+nC1tdNIJcVe3GVz29MBDlGLpaVabZVqeSBeG35PmCR
         TXfY1BB5aAsrjvI7tu5qImStwaxwwi8ljqVjdQOlb5yGz/PNMc5PI0LE2IYCM9f86oDJ
         /gaViQ+bL5IRXNGXYPpXWIYJOFNwolasF/6AKBdGvk5xIyQ5Dn13dj7p9Xy0gpN5kOv1
         5f3g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532lfLMypuPV7QUyHX1dkmoJ0A4LBm/yMCL4dYiWwap3+XLiHRcy
	vV76P3cefDWF69hLJrDOQCc=
X-Google-Smtp-Source: ABdhPJytU1QtqTpAHhpWt+RpcEDICER0tQ4i5uHEx2Cs4zUdd0JswtMI2sXUQmM+Fs/m95eipHhTmA==
X-Received: by 2002:a05:6102:21a4:: with SMTP id i4mr13309066vsb.24.1596488443703;
        Mon, 03 Aug 2020 14:00:43 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:7241:: with SMTP id n62ls2030222vsc.2.gmail; Mon, 03 Aug
 2020 14:00:42 -0700 (PDT)
X-Received: by 2002:a67:eb18:: with SMTP id a24mr4976577vso.71.1596488442352;
        Mon, 03 Aug 2020 14:00:42 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1596488442; cv=none;
        d=google.com; s=arc-20160816;
        b=iqS3qnMCVvLqy7vkF0820hJwifksuInHyAXlDmrYJqCx/kUf6lwrG6otzflbUpUfvD
         xwqdLeq8FMQ/UqoJon+eqhKdabOlhJlMsEXsG9Ix0AyJLtim5QFe2RT52erMZCn/8IAG
         jZKxXYcVQOFysch+bzG9eWjvWd1Y6DEpgpoy/XwINiEQZVIhQm6bBeMYsrv2MvBVa9D5
         7pUNEYzpeionWY9l/ajbRYxL3kfIzAl2rR/X274RYhchI641wimsaMISEPZTVqS27ShI
         k9IXEpNnqwnCxX4UPpOBYwkBHxPqAMxEc6QPsZjPT+Ds9Oj7gk0f//syonvvRz6o8UBa
         9xyQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=jvfC2Eg+cBTY/P8RKNwovqpLuef2LEBqirr48/I2UUY=;
        b=XjTmduPGyttKnRRt2jjA0kzamtjQ3/gb/qsc0BhCcXJBu+jepK6nR1st5PhiE1FP82
         IVs/UO6xHehi3ECvH99vqo9bH27p4EPjTp9IwTofnl1S5bYTuRMWpcYlplMrxoY9WQy8
         4ylkLjE2hHbQMD6jlmLINw27PjdB6RTNNTys1F0CgzNVM8/QCJlIKAjE/kOlsO7SfMIo
         RmKYG8lw7lwVeYap7UaWrtr8epsvvQc+RmVlroWypukPhIK0xHyc/UnfYSxq9vYKhz5y
         Q8RN5XsDMpiTqq+rozpRGZznK0wpJuGWeCanER2yuSkDlCP9M58vQB4AIJMIKM4qylKN
         F1nQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of segher@kernel.crashing.org designates 63.228.1.57 as permitted sender) smtp.mailfrom=segher@kernel.crashing.org
Received: from gate.crashing.org (gate.crashing.org. [63.228.1.57])
        by gmr-mx.google.com with ESMTP id u18si566089vsq.0.2020.08.03.14.00.39
        for <clang-built-linux@googlegroups.com>;
        Mon, 03 Aug 2020 14:00:40 -0700 (PDT)
Received-SPF: pass (google.com: domain of segher@kernel.crashing.org designates 63.228.1.57 as permitted sender) client-ip=63.228.1.57;
Received: from gate.crashing.org (localhost.localdomain [127.0.0.1])
	by gate.crashing.org (8.14.1/8.14.1) with ESMTP id 073L0W3B017027;
	Mon, 3 Aug 2020 16:00:32 -0500
Received: (from segher@localhost)
	by gate.crashing.org (8.14.1/8.14.1/Submit) id 073L0Vo5017020;
	Mon, 3 Aug 2020 16:00:31 -0500
X-Authentication-Warning: gate.crashing.org: segher set sender to segher@kernel.crashing.org using -f
Date: Mon, 3 Aug 2020 16:00:31 -0500
From: Segher Boessenkool <segher@kernel.crashing.org>
To: Michael Ellerman <mpe@ellerman.id.au>
Cc: Nathan Chancellor <natechancellor@gmail.com>,
        "Oliver O'Halloran" <oohall@gmail.com>, linuxppc-dev@lists.ozlabs.org,
        clang-built-linux@googlegroups.com
Subject: Re: [PATCH v2 15/16] powerpc/powernv/sriov: Make single PE mode a per-BAR setting
Message-ID: <20200803210031.GD6753@gate.crashing.org>
References: <20200722065715.1432738-1-oohall@gmail.com> <20200722065715.1432738-15-oohall@gmail.com> <20200801061823.GA1203340@ubuntu-n2-xlarge-x86> <87r1sp19ag.fsf@mpe.ellerman.id.au> <20200803044609.GB195@Ryzen-9-3900X.localdomain> <87k0yg1dc8.fsf@mpe.ellerman.id.au>
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <87k0yg1dc8.fsf@mpe.ellerman.id.au>
User-Agent: Mutt/1.4.2.3i
X-Original-Sender: segher@kernel.crashing.org
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of segher@kernel.crashing.org designates 63.228.1.57 as
 permitted sender) smtp.mailfrom=segher@kernel.crashing.org
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

On Mon, Aug 03, 2020 at 03:57:11PM +1000, Michael Ellerman wrote:
> > I would assume the function should still be generated since those checks
> > are relevant, just the return value is bogus.
> 
> Yeah, just sometimes missing warnings boil down to the compiler eliding
> whole sections of code, if it can convince itself they're unreachable.

Including when the compiler considers they must be unreachable because
they would perform undefined behaviour, like, act on uninitialised
values.  Such code is removed by cddce ("control dependence dead code
elimination", enabled by -ftree-dce at -O2 or above).

> AFAICS there's nothing weird going on here that should confuse GCC, it's
> about as straight forward as it gets.

Yes.  Please open a bug?

> Actually I can reproduce it with:
> 
> $ cat > test.c <<EOF
> int foo(void *p)
> {
>         unsigned align;
> 
>         if (!p)
>                 return align;
> 
>         return 0;
> }
> EOF
> 
> $ gcc -Wall -Wno-maybe-uninitialized -c test.c
> $
> 
> No warning.

The whole if() is deleted pretty early.

===
static int foo(void *p)
{
        unsigned align;

        if (!p)
                return align;

        return 42;
}
int bork(void) { return foo(0); }
===

doesn't warn either, although that always uses the uninitialised var
(actually, that code is *removed*, and it always does that "return 42").

> But I guess that's behaving as documented. The compiler can't prove that
> foo() will be called with p == NULL, so it doesn't warn.

-Wmaybe-uninitialized doesn't warn for this either, btw.


Segher

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200803210031.GD6753%40gate.crashing.org.
