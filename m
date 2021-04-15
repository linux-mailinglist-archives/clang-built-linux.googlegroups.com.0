Return-Path: <clang-built-linux+bncBD4NDKWHQYDRB2754CBQMGQE3MZBMTQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x239.google.com (mail-oi1-x239.google.com [IPv6:2607:f8b0:4864:20::239])
	by mail.lfdr.de (Postfix) with ESMTPS id 1AA8A360A79
	for <lists+clang-built-linux@lfdr.de>; Thu, 15 Apr 2021 15:26:05 +0200 (CEST)
Received: by mail-oi1-x239.google.com with SMTP id r204-20020aca44d50000b029013da91480a0sf7747201oia.17
        for <lists+clang-built-linux@lfdr.de>; Thu, 15 Apr 2021 06:26:05 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1618493164; cv=pass;
        d=google.com; s=arc-20160816;
        b=ck/bCjrFzyIAFLMuCbAIK5LQIaLTAHJgUJ6bdw5H1M9pK2PjQSxm6i4oq56NpRWfEf
         o3yxPd8JWlpKRbYag1TU3/zZYQ14kGHNwiYSrjWVcXge8h/vJoeR4t3y/UzEX0YRbWJS
         z5nCeKzm94+RKe1SjvW//aFXZxdOgXzKtBpPUdDbyivQBOOlaUCYGlPrzXH65kbOrheB
         NYiuj2eVhjxkY2V7gBOmfP5krbu1hsl4rr5aXqiVBjvID4NwpSexQrotnS3AnF9yQgPG
         GLLgtDh0O198BG47VPO+5pk+Mwnmw2Od5MvVCMx8Lcxk9BF8xYM7UdauC37vHvBeJd6t
         LUhg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=JEksTqHcY+HqWYPpAryihXzG0lkO0w8AFyCtxtsc5xQ=;
        b=koe3+lMZzn+ne6fSHhtD+OphC9LS7h2hjGzvPIH2nW5+ecDrXTpkY7xx1luBFKNn78
         Etr+oCt9IIpNd59kIhkdodYiqbE8s10dUOiGF63Tv724HyTHEMCcJM57Z0aLvr3/T68H
         cGzOGTBYIgsVFxIaJ2Z7Azb+l7xVYV/RJM8qRnTutSZ+cCy+IvEFtgzQ+OBHFU1y1/6A
         omU6H1gzhe9plCucCgh+pPzdQNm8cTAb7sLa9LDjEujYeUf2OXdYBI7kY+FCfws+nNW4
         kS+CPWAv81gK6pdnbh/QqIuRe/i/YTdxQHfxTjzvjs9qdEag8p/fBS2hZV4pfNzArIdo
         pFDg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=JIQBEpSU;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=JEksTqHcY+HqWYPpAryihXzG0lkO0w8AFyCtxtsc5xQ=;
        b=N0/l+9u3wakIxCFYmZNkptlsg8Ky3VrKCn2yvkiCzBAdRMxNiFxr8auHZO/P32apq1
         byiNS9iekNXIkVf2yhD2/mK42x3bJAEzhSWd5SNQE58yGs/m1spoHZWeqtmMIod63HeE
         TwlVhj4wnCa1hMTVWNzGuiBZIbxeGCox2dsKuUn2L4QHl2q5nfrQuCf2Fb8scIFoS/RM
         nqCX/ZnGFxqChZXnRoQe5bJdvXhOMdNn4A+Oq6R5wCcRy45VYo6PQcHjIQuo1WMVjgHj
         Mjj5TOrdnd0gZrJMa135Vm7e1Z8xq9ZQpS2HKrWnlJKa++Cd9XCFOWBOn3RBNF9AxJhN
         kKAw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=JEksTqHcY+HqWYPpAryihXzG0lkO0w8AFyCtxtsc5xQ=;
        b=Y+CCrnN/pkcpEiE7pWhoItHJkilLdL4PSjOYCeBQG+keZ7nX4WAD0UxP3o+6B/SIx3
         VN59sc5TOs2HLlbMNf8tZzEoVp0ktOowN5Ho4yg3CRCc1hOmyHrxr9SWyFP9MzzUDCtC
         t4HKM0ZWMfxYf0VM2aZDtscqT/aEjgegNOGSb06zpPQOznoGFxWwE0ug+/JM6JpT3pgn
         qEjQdZ29fxvzmV38HfrYlcigiYDpnT3qyOSGvkWi6AKVMYT3EHeb4rShuH2m93KdWZdT
         GKAQ/SA8yOCtiGXXpnbtQ/9RoHTVUSDuviURgrYCcq91uAQRzy18K8ChS7m21owGzwFD
         pKrQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533r27nEU2ukPvTOjK1tykCA50zsbmIz2D5hTpWXFAQChCaWCFOv
	Jh9rHzsote3UAqSTrTub/jk=
X-Google-Smtp-Source: ABdhPJydSMSSTTKP326ofNdlqZPD4L+pYOcSDvJ+Q/V3JwmYhRwsvMjkfMtPrERJxbS1AAsGFJcgug==
X-Received: by 2002:a05:6830:1411:: with SMTP id v17mr2783858otp.87.1618493164026;
        Thu, 15 Apr 2021 06:26:04 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:71cf:: with SMTP id z15ls1384861otj.2.gmail; Thu, 15 Apr
 2021 06:26:03 -0700 (PDT)
X-Received: by 2002:a05:6830:1e87:: with SMTP id n7mr2797278otr.129.1618493163689;
        Thu, 15 Apr 2021 06:26:03 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618493163; cv=none;
        d=google.com; s=arc-20160816;
        b=Iu8KzhuOVj8+QYfgKGJk4+aPxTuLW/PFyBDVVQd29PojHlwiSDtOX8u52Z4g3PfMqt
         TQI9XPQe4DBo+byKQNOsxcKLw9P6ZxLkBtPrMnZDpTefA21hwTF7qioRyktri/TbeBDO
         YhaswS1yAb5/FtRGg1l5rFjBG/PH6H+Y1/QM8D24Z/jDDAh9tDwEkxlh+9SuPV71ZHRf
         GFvTmKsnG9UrhqlJ1S9Qh0fYNaFPHIWIuVscN5THw4cTVofVlTw1+mLDNTP4LJslwkTX
         o8NKrHbDc9Umtw0TIYPe2A0DTne6/7htQ1I5Y1Zjc1YZMSJQn/ZUpdZ3Ewo6Yo8b1m4g
         HklQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=JNsgyNGI7tLN0vlDtY+9SHhjV9fQB/6kJdcktrU4I+g=;
        b=RH1gOUN4zM99RYAk2KZt32cy8O0TxtFtMJeykGZmjCry1zWF6gc9VeXaowwZrpiGtp
         jJ3pIFWgQfoFZBSznVKXK/+hFQ3eA+s9B9qkAx4TIjVflwqO3TAJ0Zedq4+YW24PEr0Q
         8t2Zjy4mb+XDD0hKgEbJUt6XwAcnuccYLE/IHRlmzNeHwnH8dhk6eiYq+YoqTck9Y5za
         EerKTAJa13dInh7d6SKNxR4EWjK2kcTmFK0ey3YwuHtYGNrocNe10nIgRBnNMONNhNkf
         pepXiKmCqNTqfh+MXlZD4s7fIkae+P7LJjW7oj5PMnBeLYvqJiixai/QyYjnJrGaZhhj
         Rg/g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=JIQBEpSU;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id b11si237717ots.2.2021.04.15.06.26.03
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 15 Apr 2021 06:26:03 -0700 (PDT)
Received-SPF: pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 30368611F1;
	Thu, 15 Apr 2021 13:26:01 +0000 (UTC)
Date: Thu, 15 Apr 2021 06:25:57 -0700
From: Nathan Chancellor <nathan@kernel.org>
To: Catalin Marinas <catalin.marinas@arm.com>
Cc: Will Deacon <will@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Sami Tolvanen <samitolvanen@google.com>,
	Jian Cai <jiancai@google.com>, linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com,
	stable@vger.kernel.org
Subject: Re: [PATCH] arm64: alternatives: Move length validation in
 alternative_{insn,endif}
Message-ID: <YHg+5RSG4XPLlZD8@archlinux-ax161>
References: <20210414000803.662534-1-nathan@kernel.org>
 <20210415091743.GB1015@arm.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20210415091743.GB1015@arm.com>
X-Original-Sender: nathan@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=JIQBEpSU;       spf=pass
 (google.com: domain of nathan@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=nathan@kernel.org;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=kernel.org
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

On Thu, Apr 15, 2021 at 10:17:43AM +0100, Catalin Marinas wrote:
> Hi Nathan,
> 
> On Tue, Apr 13, 2021 at 05:08:04PM -0700, Nathan Chancellor wrote:
> > After commit 2decad92f473 ("arm64: mte: Ensure TIF_MTE_ASYNC_FAULT is
> > set atomically"), LLVM's integrated assembler fails to build entry.S:
> > 
> > <instantiation>:5:7: error: expected assembly-time absolute expression
> >  .org . - (664b-663b) + (662b-661b)
> >       ^
> > <instantiation>:6:7: error: expected assembly-time absolute expression
> >  .org . - (662b-661b) + (664b-663b)
> >       ^
> 
> I tried the latest Linus' tree and linux-next (defconfig) with this
> commit in and I can't get your build error. I used both clang-10 from
> Debian stable and clang-11 from Debian sid. So, which clang version did
> you use or which kernel config options?
> 
> -- 
> Catalin
> 

Hi Catalin,

Interesting, this reproduces for me with LLVM 12 or newer with just
defconfig.

$ make -j"$(nproc)" ARCH=arm64 CROSS_COMPILE=aarch64-linux-gnu- LLVM=1 LLVM_IAS=1 defconfig arch/arm64/kernel/entry.o

https://github.com/ClangBuiltLinux/continuous-integration2/runs/2350258778?check_suite_focus=true

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/YHg%2B5RSG4XPLlZD8%40archlinux-ax161.
