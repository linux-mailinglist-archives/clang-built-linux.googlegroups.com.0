Return-Path: <clang-built-linux+bncBDHYDDNWVUNRBRHK3D2QKGQEEWHMOTI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x13e.google.com (mail-lf1-x13e.google.com [IPv6:2a00:1450:4864:20::13e])
	by mail.lfdr.de (Postfix) with ESMTPS id C57DC1CBD89
	for <lists+clang-built-linux@lfdr.de>; Sat,  9 May 2020 06:44:53 +0200 (CEST)
Received: by mail-lf1-x13e.google.com with SMTP id b16sf1370362lfb.19
        for <lists+clang-built-linux@lfdr.de>; Fri, 08 May 2020 21:44:53 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1588999493; cv=pass;
        d=google.com; s=arc-20160816;
        b=gbM/TzRPfsHYHL50W0UVzp6A6v2FU84jCWHrPezrEF07PbG/WYJ75qXDaWi8h23vLI
         59JAwjHI7EiIVZwYT9RLFoiQLY9/aD35aPLwOW7rp/F88UkapZHtmP+0vlRufWAbeHiD
         n1VPZ1fMQMA7GXrUi+dIbLv+/0p5g8pSqG0O66OeIMVXaa+p8uKpR5ajzTMmt/O+K8qg
         2b91UkgIQvvnxN/wv7WEKrRYbVuzplhgDJx/l24zdv/WPnvZGnbAYn+v37xwl66Z5j2h
         Xr2cMpxC+e1lInpxL0VjCCmGiot9go5xCpWA9u8yiDEkZgO7Z1pxAHAT8Lrdu6VzeeE6
         nUng==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :reply-to:in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=R2X5/dK3hST9AspydtOxQVsfdvh5ZpTb4AXczX+D3Kk=;
        b=IctYPjxS3AgPBRbIgoBZ+Z3ISKwuCWNSR9VeDSO7AamW99RcqePCAVGq/SxbDNm8V5
         R9Rwb2Qczt2Rj63aRPRW6HWoRiU+LH3k+MMAaS/r7vtrD1X87cNBxco7qnJ1I+Fug2s3
         A04k8JYuDzgE6Iy/dl9LcS0O/oFxq/2o5N/I4Hq94lHvvZNmFU0M5blcD6zzwXCGa31H
         6KUfT9XV5o8bHyWStH3p8fMgQPOWkmuISuu2r4uFb0u7aRDfEKO1z0E+8kbQxVAMUv4n
         JQINkvpDPar3dx5qWz8hJlECPftnTzeu2l5HOAd1cvjXiLViFgfMu1cIlfKJvd7AU1g4
         3ThA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=pouY5t34;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2a00:1450:4864:20::241 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=R2X5/dK3hST9AspydtOxQVsfdvh5ZpTb4AXczX+D3Kk=;
        b=XA1dNdefiyAUdgwGQqpYP5/sAVXb/DlKr9k5/n9jxdIZTiz3X/NRZixxAEMaEWXx1u
         crA/+HkS3QxCCdPgjx1jbnAck+3caXXDgUJJ31sarsYh7LOBy4LJ9w/vWkcnyc2Q8G9w
         DTOgxZahRj2ubUpLIFS3MF0jJ2Yu28rEOIiTUSZrlN9YxyuLYfU+5JZxCuvlHFjE3Tsx
         knkIq4Ze/f3/v5O0d3GJFbpXRvHsmRE9WMjc4LCbBNDpwtIEMJ1ihOlJaRmDn7Cf1YHT
         wPGzzbL7R/cmlNMYAmw0rJIiKmzl5pGpsjxEj2OFqkcYHyjRvDnbCskt0wKVYXI9yxHF
         2HjQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=R2X5/dK3hST9AspydtOxQVsfdvh5ZpTb4AXczX+D3Kk=;
        b=P+ao7/S2SuBCSdHo0DoPZEAoWa0xImXP+WQ05RVzg/Mymhy9El1tDLYH74HovE/cH1
         WsEF/7Gop+AVJl4zm4aw57jDrlWy2If/VyhXHewkLnE7Hj0flRBfJVupDibXn9gZa5tV
         ePH7K7QNA82qmnn0qS9ZPjkzQ9EW2LAL5VetkdMf1iSlw265N9c/ONIXzvZ8adH9hm5h
         M3NMkSZ97EWK/gQ4T2Y7bJBV8nz34joIAfW3mp7g4D+n+THNDFYX3LoPV28YciCg+TQa
         kinibQQbhOh6julx3aCQ5D6y1rRZB4hAtIMbuRCNsoQMcPTLqbgvgT/UPQ/JMmUrKnGv
         wLbw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to
         :reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=R2X5/dK3hST9AspydtOxQVsfdvh5ZpTb4AXczX+D3Kk=;
        b=f6yuY+7Vnh+UCOELTEwJMp9GaC4qpSEKoGv9tXBheuohEPFIISWcgEyI8g5rlQSsXz
         47diYCk02DDdsg6c64MKPbUNjW/iQr6ssR4FvjaS/8aVyUlUYkWshTSsa2i1tYOAIErw
         KRKoRw/zfGJRfJCVHHwtjXuxFI+Rn6/hZGAiCcvr6BaufS1QJxfpymnfgJT/zoIHlvUI
         LGNrBcwQWOQ62ofoo1J9bR26oxjhyDiwXlSGKyaLcbiUckBeFtQoXOZEIifUXdCLTPeS
         rb6DPAq6mzRFGcZXNIyWQCfP7mmatvDJGH6CMiuMHxNzWMha8tUV60cXcsx6AHjnAL7M
         CriQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5317NkSB40Bt+cqjTwsqlRbBsMdfQo2WVFhJh9Vp/pbKeM7/Rh9p
	HG62eg/fQv8H6XHWoqkIUt0=
X-Google-Smtp-Source: ABdhPJxKtMRdZPsQeqCKFgzE57liPnjtQRtrQaIt8I+9U6Jz+iXMNh95Bb3F1og4cuQVZLrn8uULgQ==
X-Received: by 2002:a2e:740f:: with SMTP id p15mr3738607ljc.151.1588999493108;
        Fri, 08 May 2020 21:44:53 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6512:3047:: with SMTP id b7ls849641lfb.1.gmail; Fri, 08
 May 2020 21:44:52 -0700 (PDT)
X-Received: by 2002:a05:6512:110d:: with SMTP id l13mr3186471lfg.93.1588999492199;
        Fri, 08 May 2020 21:44:52 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1588999492; cv=none;
        d=google.com; s=arc-20160816;
        b=s33JoCUJ9ISSoj/XSCi04ihDIZipKdeYUglhpsWZAiaGAOYGXEFixMlCbQmUuuTN+m
         bhigNjBVwVvA1T3Jn4mV7RArfFU9ybgjo0ohBhExN217rcE5N0hsyPvTxF/7dyC0OgmW
         94fcBlIj3G/xsrr1Y3a6MbfWmU+ROtOG+JJLcyRJzoY5z9JCsobQpsgWoNLYdXxYJsxN
         goCotGV09fxhtXIyLIEBWI9Fv9unk9SMegn36SJOY6ThIqHqR30kT1l1wNMzuUkLmYZz
         MFSLGkDn03Orr71nN03IbYE6FLEsAQ0IyKlRMbaewVgCNnwc1ISrJ3u46l/uJLFkFxyz
         i19A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:reply-to:in-reply-to:references
         :mime-version:dkim-signature;
        bh=MRnH5k9ZI9zg5bBwtUec2EUFq39SVuIpRRMAftUUCeQ=;
        b=yO9AMMf3WdVC0ZcxWu1nvmmuaHzHYM4AOBAbz/dJW99Hld52g7sGmq6dZmOCELVZIU
         bmOdas0Htl+K8+7aHsHWKiJ/iwLmyDGW6t4SBZclVgm5XLcKIF/Jrp8kErnNQDdi8rF3
         PrQsk0SoWUt6NtgNN2wCL9QrSz74Jef7wWdH4OHFf/uo+SqNIEsr6650X4emMEqDco60
         2ukCOcXGbCBIm1fN7wqvx4iSjqSzvxqc0TdW7O00gCkSzDqZTnlu8dzZRD5d7FCcaUxg
         gdkLoIntYn9H31CRTwm3mQ0JYvWayaQvF96fQUZZ40GHbqurAX59mJFRVssOlQmYJKhn
         hbNg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=pouY5t34;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2a00:1450:4864:20::241 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-lj1-x241.google.com (mail-lj1-x241.google.com. [2a00:1450:4864:20::241])
        by gmr-mx.google.com with ESMTPS id b11si258299lji.0.2020.05.08.21.44.52
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 08 May 2020 21:44:52 -0700 (PDT)
Received-SPF: pass (google.com: domain of sedat.dilek@gmail.com designates 2a00:1450:4864:20::241 as permitted sender) client-ip=2a00:1450:4864:20::241;
Received: by mail-lj1-x241.google.com with SMTP id w20so3848443ljj.0
        for <clang-built-linux@googlegroups.com>; Fri, 08 May 2020 21:44:52 -0700 (PDT)
X-Received: by 2002:a05:651c:385:: with SMTP id e5mr3709241ljp.208.1588999491978;
 Fri, 08 May 2020 21:44:51 -0700 (PDT)
MIME-Version: 1.0
References: <20200508182835.228107-1-ndesaulniers@google.com>
 <20200508183230.229464-1-ndesaulniers@google.com> <20200508202835.GA550540@ubuntu-s3-xlarge-x86>
 <20200508164703.0000481d@intel.com>
In-Reply-To: <20200508164703.0000481d@intel.com>
Reply-To: sedat.dilek@gmail.com
From: Sedat Dilek <sedat.dilek@gmail.com>
Date: Sat, 9 May 2020 06:44:40 +0200
Message-ID: <CA+icZUXcaZKjA=khdzy2DyXtwA4YkN=XBqNvTQSQqSz7tdipfA@mail.gmail.com>
Subject: Re: [PATCH v5] x86: bitops: fix build regression
To: Jesse Brandeburg <jesse.brandeburg@intel.com>
Cc: Nathan Chancellor <natechancellor@gmail.com>, Nick Desaulniers <ndesaulniers@google.com>, 
	Thomas Gleixner <tglx@linutronix.de>, Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>, 
	"kernelci . org bot" <bot@kernelci.org>, Andy Shevchenko <andriy.shevchenko@intel.com>, 
	Brian Gerst <brgerst@gmail.com>, "H . Peter Anvin" <hpa@zytor.com>, Ilie Halip <ilie.halip@gmail.com>, 
	x86@kernel.org, Marco Elver <elver@google.com>, "Paul E. McKenney" <paulmck@kernel.org>, 
	Andrey Ryabinin <aryabinin@virtuozzo.com>, Luc Van Oostenryck <luc.vanoostenryck@gmail.com>, 
	Andrew Morton <akpm@linux-foundation.org>, Masahiro Yamada <yamada.masahiro@socionext.com>, 
	Daniel Axtens <dja@axtens.net>, "Peter Zijlstra (Intel)" <peterz@infradead.org>, linux-kernel@vger.kernel.org, 
	Clang-Built-Linux ML <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: sedat.dilek@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=pouY5t34;       spf=pass
 (google.com: domain of sedat.dilek@gmail.com designates 2a00:1450:4864:20::241
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

On Sat, May 9, 2020 at 1:47 AM Jesse Brandeburg
<jesse.brandeburg@intel.com> wrote:
>
> On Fri, 8 May 2020 13:28:35 -0700
> Nathan Chancellor <natechancellor@gmail.com> wrote:
>
> > On Fri, May 08, 2020 at 11:32:29AM -0700, Nick Desaulniers wrote:
> > > Use the `%b` "x86 Operand Modifier" to instead force register allocation
> > > to select a lower-8-bit GPR operand.
>
> This looks OK to me, I appreciate the work done to find the right
> fix and clean up the code while not breaking sparse! I had a look at
> the assembly from gcc 9.3.1 and it looks good. Thanks!
>
> Reviewed-by: Jesse Brandeburg <jesse.brandeburg@intel.com>
>

Tested v5 on Debian/testing AMD64 with a selfmade llvm-toolchain
(LLVM/Clang/LLD) v10.0.1+git92d5c1be9ee9

Please add:

     Tested-by: Sedat Dilek <sedat.dilek@gmail.com>

For details see
<https://github.com/ClangBuiltLinux/linux/issues/961#issuecomment-626104287>

Thanks to all involved people.

- Sedat -

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CA%2BicZUXcaZKjA%3Dkhdzy2DyXtwA4YkN%3DXBqNvTQSQqSz7tdipfA%40mail.gmail.com.
