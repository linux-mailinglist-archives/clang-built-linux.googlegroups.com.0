Return-Path: <clang-built-linux+bncBDOILZ6ZXABBBD65Q6AAMGQEKXCF36I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x437.google.com (mail-wr1-x437.google.com [IPv6:2a00:1450:4864:20::437])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CBBC2F8596
	for <lists+clang-built-linux@lfdr.de>; Fri, 15 Jan 2021 20:35:43 +0100 (CET)
Received: by mail-wr1-x437.google.com with SMTP id v5sf4587074wrr.0
        for <lists+clang-built-linux@lfdr.de>; Fri, 15 Jan 2021 11:35:43 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1610739343; cv=pass;
        d=google.com; s=arc-20160816;
        b=NcfES3tC3QHODR4Xgc0k91KZbE5Kuw+kJ4e1NMTNj7y1ow2cDXOLPKhb2hzVF5V4rY
         fvx0EQvcmplbiGN6aqyrQ7y2dNcNzWXBz8yLs4jqzDpNeDYmWTOgExaykSMo0ahhJEu1
         JNpPykuRJIjQYsNHraz9vbM/7RdpiHE70I/+rnw2AwP+eJDw/1GsRroAdZDC05ujLUSZ
         cFdmDRP+zPtnDc+bxni4Of1tWT6BvbCQ5JEPFqolylulpj0p4WYUEpXXiYU/w5x2IhTp
         EI+ye1JYSreM5jwXbQ7tZVJbFxaVqk7CDcFZU6m7qwvOj5iQvyel011nGwdxkDX64hZz
         z71w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=Sq08OZ1qhFon5ePP8LbDYsGlwUOBwnWCfK8GdE6NuhU=;
        b=TEPZKnuLQUhd2y+zjFqcMawG0f2fgohZWqYTIZTp/XLw8DQ6GoUOGLmGPfkwXIgQyW
         DB464MZbvTKHL5bx/uMGONor8wVXpcVXB0dNiiECPKiF2x9GtFm3dT6WkfCp5Mu/3JYr
         Qkt5lRC3MpkK9bJsKDqcnP1mGxnK/V2ipdtFscgvTXj8buVy1vweE+P2kVaZKVJAC8/E
         PcLjw5rKZMx1sldfDgns/OilVDY6NbnQHk0O3zr7On/B/6eNpl21p841DYedMGUTMrY2
         hz7oE92XcyA7IS4D+mj0DMrFXVOK01mscTDj/L97zhVeMyz8v9ABEu5zUMVNbH4BbduP
         yJNg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=T4ZP2fit;
       spf=pass (google.com: domain of anders.roxell@linaro.org designates 2a00:1450:4864:20::12c as permitted sender) smtp.mailfrom=anders.roxell@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Sq08OZ1qhFon5ePP8LbDYsGlwUOBwnWCfK8GdE6NuhU=;
        b=QYyzQf/e9240nHen0TRVLcxjFAOoq+yqFMZ6Q6cfu9HvrLMfCszHITtYlym1r334p0
         ZO+K9bYwoKpDno6EyQvpBUspJttmwzJ/EWZdborCT/W7v/S0/zfxL1ByRGzdmghWa4by
         4hxDlCVGaqq3QfZzZh5ko1hZc9wSkE3Z6oTngZpiKeiuILyy1Gp9MemHg7Rh7Eg6dywA
         vuwKXsccjQRLLkSjS9M6021fXCz4IqjLgfXEzeK3VDoSist9LsOK6kFcXHcxHADOCpqZ
         VJI3TKEt/c/bBH/evbSxm6zWh5nUIAvVeTGnF1ljxdhlewO0qmNr/5aMVP4QryG4WFom
         FGMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Sq08OZ1qhFon5ePP8LbDYsGlwUOBwnWCfK8GdE6NuhU=;
        b=qUL0JqP5Kjy5cBhcGTrYQEafkvCHvOB6hkgC6I/DvAEL4zs1slSIc4ovjGVydOGhOm
         3yh8mw1udcPJsJuhYNNz+Wjqy2kNkmtxkfD6rhdjv4X2YEOZOIatNu2Jqo29pZvX0rwE
         zZyZNwfbfvQdrgZQ4Xk89cuyi7LRU+fMZE3ujRJWk5zD4hOQkYWaCsQYXmtTy5zumHlg
         2FCCrOa0AreGntUkujvRW/zQkMwPWB36vQ7+4IKVMdRHKdUUh9HOm4HwSaaKtLXyGPMy
         WrxxfFMOMrkQAB8AO9oDuOZrvKojJnEdbxFqxUIeYtjEoKClIP3VpHElHzaiatFCopLL
         yH+g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532aNXHh8hQbQZidSI5+YB0+xCBMd5GQvVzH/fSvSAClAitAudPn
	xHvpk2ljsu/KMrVUY3KdKRM=
X-Google-Smtp-Source: ABdhPJw0grXT0KZwJ5VUkIIRPlUzB/EM68C5YpxbqcolY4VP+viE4V9qrm48j5WVj4W4fvK+RaLMdw==
X-Received: by 2002:a1c:4c0a:: with SMTP id z10mr9981961wmf.95.1610739343419;
        Fri, 15 Jan 2021 11:35:43 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5d:5543:: with SMTP id g3ls1192585wrw.0.gmail; Fri, 15 Jan
 2021 11:35:42 -0800 (PST)
X-Received: by 2002:adf:bc92:: with SMTP id g18mr14339096wrh.160.1610739342602;
        Fri, 15 Jan 2021 11:35:42 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1610739342; cv=none;
        d=google.com; s=arc-20160816;
        b=ugpW31eULVstsVwDXwllC2UiBSAuZyLd5nY4KG1LUPyoFspwU2NZwSp/8nKoq90AZ6
         vEy/VOLwgziJk6/G3ReGo+uREn79oxbR5XkyFsdCX7wUGCbWAqFGQIy/5no33J//Zmpm
         Y0OfcNh+uvkvuidPOTrdvTWFF+e2qOtMqp7zefA1ZVf3mPvGN8GCNSmSfGrfKbvf7bzF
         1/KnNUELcZkvFuGX9V+BZvB1W6O5qHZJZrdvFJfF+zKCyRAJtjzw7a2wD4cRQLI7VosU
         uTRzxERQBH2e88iVR6QAVLSaaOjgueuqEqzZFhoxKVIjCjW5wP7hIzERR8bfjL043lkg
         UVVA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=tgVsYmSCdgmeuL9qYmhROq6jdCnyLmcDJlct14eS4/U=;
        b=vWeQ7ep3wL0URX5yd8kFh6rB439ABxLqvhtq4OHLk9GaHI9Fn1+Qnf/vf8176FJZEf
         YFvQKlGfm7IUUr628ncZhxCqcPbRb7JW5gBFLzhaFze1uGyFvffiQu9r+4HCDjsOk/5C
         yr4UAWtTr3Os8iDnYsB/KTfLwhfFxdReq88CI05Qqbg9/exX18zwGKikXcaQpri8UwdT
         M9ipvkNvA4okLQL3Z0UlGei+P1iSTMp0crA34Tma7cPqaTT39FPzx+sTtpoUEQGRESvy
         CYIU9Bo7z0LdraAHC82WiwU0Hy1L5poPQMiWDDPIsJ3nFGZSEWueDvfp7lXajJ2lnnCm
         /Rjg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=T4ZP2fit;
       spf=pass (google.com: domain of anders.roxell@linaro.org designates 2a00:1450:4864:20::12c as permitted sender) smtp.mailfrom=anders.roxell@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: from mail-lf1-x12c.google.com (mail-lf1-x12c.google.com. [2a00:1450:4864:20::12c])
        by gmr-mx.google.com with ESMTPS id 10si775833wml.0.2021.01.15.11.35.42
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 15 Jan 2021 11:35:42 -0800 (PST)
Received-SPF: pass (google.com: domain of anders.roxell@linaro.org designates 2a00:1450:4864:20::12c as permitted sender) client-ip=2a00:1450:4864:20::12c;
Received: by mail-lf1-x12c.google.com with SMTP id b26so14816812lff.9
        for <clang-built-linux@googlegroups.com>; Fri, 15 Jan 2021 11:35:42 -0800 (PST)
X-Received: by 2002:a19:4107:: with SMTP id o7mr5912867lfa.512.1610739342289;
 Fri, 15 Jan 2021 11:35:42 -0800 (PST)
MIME-Version: 1.0
References: <20210115191330.2319352-1-anders.roxell@linaro.org> <20210115192803.GA3828660@ubuntu-m3-large-x86>
In-Reply-To: <20210115192803.GA3828660@ubuntu-m3-large-x86>
From: Anders Roxell <anders.roxell@linaro.org>
Date: Fri, 15 Jan 2021 20:35:31 +0100
Message-ID: <CADYN=9Kt597LsfW=Aq6v+kWr+ja+55_+Z3s5mFaJULa+9J4EfA@mail.gmail.com>
Subject: Re: [PATCH] mips: vdso: fix DWARF2 warning
To: Nathan Chancellor <natechancellor@gmail.com>
Cc: Thomas Bogendoerfer <tsbogend@alpha.franken.de>, Nick Desaulniers <ndesaulniers@google.com>, 
	linux-mips@vger.kernel.org, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, stable@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: anders.roxell@linaro.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b=T4ZP2fit;       spf=pass
 (google.com: domain of anders.roxell@linaro.org designates
 2a00:1450:4864:20::12c as permitted sender) smtp.mailfrom=anders.roxell@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
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

On Fri, 15 Jan 2021 at 20:28, Nathan Chancellor
<natechancellor@gmail.com> wrote:
>
> On Fri, Jan 15, 2021 at 08:13:30PM +0100, Anders Roxell wrote:
> > When building mips tinyconifg the following warning show up
> >
> > make --silent --keep-going --jobs=8 O=/home/anders/src/kernel/next/out/builddir ARCH=mips CROSS_COMPILE=mips-linux-gnu- HOSTCC=clang CC=clang
> > /srv/src/kernel/next/arch/mips/vdso/elf.S:14:1: warning: DWARF2 only supports one section per compilation unit
> > .pushsection .note.Linux, "a",@note ; .balign 4 ; .long 2f - 1f ; .long 4484f - 3f ; .long 0 ; 1:.asciz "Linux" ; 2:.balign 4 ; 3:
> > ^
> > /srv/src/kernel/next/arch/mips/vdso/elf.S:34:2: warning: DWARF2 only supports one section per compilation unit
> >  .section .mips_abiflags, "a"
> >  ^
> >
> > Rework so the mips vdso Makefile adds flag '-no-integrated-as' unless
> > LLVM_IAS is defined.
> >
> > Link: https://github.com/ClangBuiltLinux/linux/issues/1256
> > Cc: stable@vger.kernel.org # v4.19+
> > Suggested-by: Nick Desaulniers <ndesaulniers@google.com>
> > Signed-off-by: Anders Roxell <anders.roxell@linaro.org>
>
> I believe this is the better solution:
>
> https://lore.kernel.org/r/20210115192622.3828545-1-natechancellor@gmail.com/

Yes, I agree.

Cheers,
Anders

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CADYN%3D9Kt597LsfW%3DAq6v%2BkWr%2Bja%2B55_%2BZ3s5mFaJULa%2B9J4EfA%40mail.gmail.com.
