Return-Path: <clang-built-linux+bncBDYJPJO25UGBBPWD3P6QKGQESMCOVZY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63d.google.com (mail-pl1-x63d.google.com [IPv6:2607:f8b0:4864:20::63d])
	by mail.lfdr.de (Postfix) with ESMTPS id 211BE2B9CCA
	for <lists+clang-built-linux@lfdr.de>; Thu, 19 Nov 2020 22:21:04 +0100 (CET)
Received: by mail-pl1-x63d.google.com with SMTP id u14sf4766078plq.5
        for <lists+clang-built-linux@lfdr.de>; Thu, 19 Nov 2020 13:21:04 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1605820862; cv=pass;
        d=google.com; s=arc-20160816;
        b=KJVDav76zPkQeMfI0fdaB6L4jbCU+yVUPU8bZCoCVhFsMBZTk36pvlVjJHgj8AoRF2
         hS4Zu+JxNFwJnH5mRAnFy51hrr4hgnsvHUyUFZiAAtrXWRV0tMa7xfFgFwbqt6yFlgBq
         k7wlnVtdGY2ul9KNadznzfIZfU+yjtGJHVBACW1ro0+SdhUJN7bJNDSZTOz03nVw5AZy
         ThNCVTne9D6cjZjl+HIMJP8eIQMXhXH1+65SVEYGEZiLVrJ3Q7KvXunHLnktaYL5XVNy
         bRWHhtidZ2QzuazG0+F01lA66oL/IG2TjN1AkG3ahp/2xCdxAOMc7TEjsKAJIQHv024G
         Ayrg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=gkhSowEoArDkQD8b/ymWHpeWCjdn/IkJBmTob6Lroag=;
        b=pIbTCXyfzB/IYXak8Jn1kBM055h+kCfQX2Vc7KTEYVpGcgs0L/SHUi8OvmgjRyJNit
         3mp5kvGG23EsprzuBdDXyHivoV2fSJ+lRr7F5NdkCLCf1ntj3xwkgma/xMuJ6gcLKp4S
         qNrh/1ZEA6CnDl8hM8MV+LwoLgmUdMKS+QO3YBdiDmO2zzxqySXX2qJTsyQGNm9tApn9
         8yFfwMhcN59NPEF8V2NvZ4/zbHISLbhcrhKiIoWfV4lLlq4pDir5P1HpVstSwXKYzcq7
         P9ijJGKV16jBYh1DmfedBUTPLgpY2lzkYkYhTpJanTo7hAS8zIBq7w4Ag9Iy6dJLA63S
         EiSA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=OQGuPnH+;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::62c as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=gkhSowEoArDkQD8b/ymWHpeWCjdn/IkJBmTob6Lroag=;
        b=jp9DmQqDW2usDwMcUoO9oPs7K11ABY4of6iJswpjg/oU7IfMz4AqYptUT9Ye8mchAc
         oX5ph9wGjEbKEM8uWLniHVi6BvqE3IdqgMb8reD5iSkSovunEEpN0q/D0vocc8/Xw5/c
         NAwvZPZT6wYD9JfF8LeBsxIQbHJ5sGI327DNJY6HPE8Qqqn1op3N3/4DzHAZFGKaBL6t
         34M/uCbZLNhNCcLAKT3O3C86/4hzKNT3DoSCf+o7BbQF54r1wAIXURdipQjoRl//iJpr
         9cBiWVeQEymYi8GvuByFsPQrY5WOZlRtW5fcxo7IhNaPIZluEL/0WdfKoJ51/C+Iwscw
         qACg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=gkhSowEoArDkQD8b/ymWHpeWCjdn/IkJBmTob6Lroag=;
        b=Ub1sXnlj3CxXyd6mOQ8tyenlrOFwaQIIBNKyd+nG2TtyQLTgS/K/SswAC43mrVhSNY
         UTS48PTiCvrmUj6DI1pAQSlHSaMe2zhXEUkd/OGGUbYwJXSObTa08FLaD0nu/VbsxdRd
         IzEBo6PVY57l4c7g10/n/o/cUnUJdeF/uPT0yy3F6JK4rQF8W5wec2iFFIDD8bkWheoY
         YRhthyUlekLgi7ffS98qk+XrM+C8q5MH8JgtyY4FQiiAYUOrtehHbEQlO8/BEIoIFRmC
         AU5a2pXk7UdlFL/pyjq9WKLjTa8g97+pQrl5gtWVUcSPaFu7DWZzFXOykDIRC8rA17AV
         GZEA==
X-Gm-Message-State: AOAM533dEEY9N+ZvGGs+7ubUsSrXB37XYL5rv3Q85+5ZCYxGYgWAVwtp
	6c5M0yEdHoXcQVh2BU+RAYU=
X-Google-Smtp-Source: ABdhPJyuUjaciJznmOIopBWoEjH4kyWZMiTypmW3UMX6o1shReWuM7wZxQg12NB1/ciW//KtZj/EsA==
X-Received: by 2002:a17:90a:4298:: with SMTP id p24mr6214314pjg.7.1605820862695;
        Thu, 19 Nov 2020 13:21:02 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:4e13:: with SMTP id c19ls1417270pgb.9.gmail; Thu, 19 Nov
 2020 13:21:02 -0800 (PST)
X-Received: by 2002:a63:7847:: with SMTP id t68mr14339287pgc.422.1605820861966;
        Thu, 19 Nov 2020 13:21:01 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1605820861; cv=none;
        d=google.com; s=arc-20160816;
        b=aaqbvFEEzVH2qTIQmMSNfFmA7+fMBl2fXt4HlU4nxaa/iFEm9rmKilhWbYBg5LVSqS
         +rwTjhDTrSb+g/8n+uZ65SijsfDRmfjqzdO2U2cOGNBRu0Rpitc/j6aBLlz9HTkwaM/i
         Kxfd4OhTSmVKTBIvWNU+4UAPqlDvjaMY5N2i47YOhIUzrw0zfsqNTkR35E3pehxDReB3
         Ee7hG7rzPjTYf9WipWGX8qbCg70bPb2kBj8wMhqDY2WT35pCGcOTbP8vV4p7NwDo/j+J
         Z6w0m67Bw+SVD3XnvuyR37APnejgTJVvRDdUEgSAXyHaBkeZkwhjCDFmghPMFcGxGcnJ
         Y1oQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=ka3A6tRoOkhWPL9R2OyJCRL7+EeI+UW6i9h+izxdvxQ=;
        b=jChr1vBGyssvAEN8AXVuE0vlvliApp5lVCTCU0KK9BFudYCmLqflNfIbFM2oOVjtmw
         OjfUn1/EnuZ3lmEvzUKDzEjV9U9gxmUUqZeHTxEcuGJqbx2c2JOFcWWtVRTyDQ2x97ZZ
         U5eCXPQaDIXOklxsZoEN8N+eKH6r82z1batVqtsjF43/ivrDdWXQ7Rjzer6WF9c6Z7qf
         RK1ujVyZl33X63e/uk18A7k5Went+F8hC4T3XPNfE6jXpN+r0QSwVwh3MJg+Vq83kZ//
         LZ3VgccF3VjWgpW6BUIWADJqGxJFNUSydchu/KZWXhrAoNlTm3JkVMxNKG1Gb0NJSd/+
         vJwQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=OQGuPnH+;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::62c as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x62c.google.com (mail-pl1-x62c.google.com. [2607:f8b0:4864:20::62c])
        by gmr-mx.google.com with ESMTPS id e19si95690pgv.4.2020.11.19.13.21.01
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 19 Nov 2020 13:21:01 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::62c as permitted sender) client-ip=2607:f8b0:4864:20::62c;
Received: by mail-pl1-x62c.google.com with SMTP id y22so3661637plr.6
        for <clang-built-linux@googlegroups.com>; Thu, 19 Nov 2020 13:21:01 -0800 (PST)
X-Received: by 2002:a17:902:b18c:b029:d9:f:15fc with SMTP id
 s12-20020a170902b18cb02900d9000f15fcmr10457700plr.29.1605820861509; Thu, 19
 Nov 2020 13:21:01 -0800 (PST)
MIME-Version: 1.0
References: <CAKwvOdnSpsvpjpchqq+5Sc7i0xx5f3oKTJ2jnveSv-WQqmj68A@mail.gmail.com>
 <2ff0-5f5efc00-17-63900500@117564367> <CAKwvOd=LNzffJfNKgfAwscTo=u+UH_qSUq2UNmv5NGzRJdEcyQ@mail.gmail.com>
In-Reply-To: <CAKwvOd=LNzffJfNKgfAwscTo=u+UH_qSUq2UNmv5NGzRJdEcyQ@mail.gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Thu, 19 Nov 2020 13:20:49 -0800
Message-ID: <CAKwvOd=kDMSw7f8PMNs2sGXqPUcNBuynUbuuc5Th84DyFJemuQ@mail.gmail.com>
Subject: Re: openmandriva clang kernels
To: Bernhard Rosenkraenzer <bero@lindev.ch>
Cc: =?UTF-8?Q?Tomasz_Pawe=C5=82_Gajc?= <tpgxyz@gmail.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=OQGuPnH+;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::62c
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

On Mon, Sep 14, 2020 at 9:24 AM Nick Desaulniers
<ndesaulniers@google.com> wrote:
>
> On Sun, Sep 13, 2020 at 10:14 PM Bernhard Rosenkraenzer <bero@lindev.ch> wrote:
> >
> > Hi,
> > hope you're doing well. Just a quick update: Our problems are all sorted out, we have a 5.8.6 based clang kernel working very nicely now, and it'll be shipping in the next release.
> > For the time being we'll also continue to ship a gcc kernel just to be on the safe side. The final decision on which one will be the default for the upcoming 4.2 release depends on what feedback we get in the beta phase.

Hi friends,
I was just checking if there have been any updates in this area? Or is
there an issue tracker I can subscribe to to get updates?

>
> Hey Bero! That's great news!  Please let me know how the beta goes,
> and please send any bug reports our way.
> https://github.com/ClangBuiltLinux/linux/issues.  You should stop by
> our meeting next week and give a status update: see
> https://clangbuiltlinux.github.io/ for the calendar invite.
>
> I had accidentally added OpenMandriva to the kernel's docs on LLVM:
> https://www.kernel.org/doc/html/latest/kbuild/llvm.html#about.  I had
> sent that before Tomasz clarified OpenMandriva wasn't shipping these
> kernels by default.  So if you guys ship those kernels by default, I
> technically won't need to amend the docs. ;)
>
> Hope all is well my friend!
>
> >
> > Best regards
> > bero
> >
> > On Friday, July 24, 2020 19:48 CEST, Nick Desaulniers <ndesaulniers@google.com> wrote:
> >
> > > Hi friends,
> > > I remember the thread about testing clang for kernels for
> > > openmandriva. Are those actually shipping now in releases?
> > > https://github.com/ClangBuiltLinux/linux/issues/690
> > >
> > > --
> > > Thanks,
> > > ~Nick Desaulniers
> >
>
>
> --
> Thanks,
> ~Nick Desaulniers



-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOd%3DkDMSw7f8PMNs2sGXqPUcNBuynUbuuc5Th84DyFJemuQ%40mail.gmail.com.
