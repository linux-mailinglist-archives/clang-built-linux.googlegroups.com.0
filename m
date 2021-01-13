Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBV547X7QKGQE2ARJIAA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x637.google.com (mail-pl1-x637.google.com [IPv6:2607:f8b0:4864:20::637])
	by mail.lfdr.de (Postfix) with ESMTPS id 938DE2F5455
	for <lists+clang-built-linux@lfdr.de>; Wed, 13 Jan 2021 21:55:52 +0100 (CET)
Received: by mail-pl1-x637.google.com with SMTP id bg11sf1933767plb.16
        for <lists+clang-built-linux@lfdr.de>; Wed, 13 Jan 2021 12:55:52 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1610571351; cv=pass;
        d=google.com; s=arc-20160816;
        b=v9J/c9nMnFSvOxYB+LmHy/ItDD4OKfzpMk2E2O0zEmBwNqSAJ87yFYOv7p1KtiZXyb
         nYKzyhtYaBYmqRhxSfluFB2Fw6KVIA+VvdVbTygqeyvV0I42oT6GwMPaHijJYBnUUnxf
         PHRnx0/wI52FQQzaUVoAY+Ik9v2PMnj6iqTcDmDW9wYUqFmucQoJsYzRqmioc98h1CqM
         I0zr56r2EjclrmPoJYvP2ckTPAO/Nb7ACE6TvhJAd00u2cjLxne1srkMO1YGNiu2p3dl
         GuWYNxHtXKfg9Pr3qXco4dU9WWrLrjSRlvmglAs6T+qeR5yWZ8UtCBrMcyN//l5HCCH8
         Ea9A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature:dkim-signature;
        bh=FtNYXgBcZ/wESd5AHiFkqPsqClMxYDgrKq3jkjdH0J0=;
        b=ANvdUrGjW8QCTbtHt+GTrYUQIScNW3E5Xg4WB9r9YQaq8VetinL1ubD4hohVlXzdUo
         kZKBQ/s6ja4Abx91YOvFw6jikBFI/+PcATKHftYVDOBZzbrCt49BzeeQMdSI61cAZnfo
         c1d+bqeSAeTLFJ093pdczL2NE+tq14grRmCetAwfRrfeH0W0ju0C5ZY2D4jCBB0fKW12
         RtwEZJ4wQTVLWiMG/dzdDvkzqepYKuAJ52oNfw0HnAfOq0P9iyf3i6KxWa3UOdGk68FF
         kg8FPbzU5vP13nvIgAKYE1T/6Ft8T7xQ0JjzFMcsUMwYBBJ5cfzfDzTjtuc94hWKT9Gi
         QFRQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=aRbWDjM0;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::433 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=FtNYXgBcZ/wESd5AHiFkqPsqClMxYDgrKq3jkjdH0J0=;
        b=KsTAOKa+evLRRY2Ht1/86Cft6vvqgAaRe26LyB+mukpjrShRImOdwycwgZ6I2NsTAr
         FCZews9aRu1SBtHXBm/6OUippxUrm7CQSJeZQiLfQIS65l7Tjg15LRKgAOPMsRNVDmuf
         EyhUul+itrhd6Hi0Irxp2TDqis1JWsrkeJiLAYq20RAJyGp5OzbuNm3DhPUBo0L4GIJK
         AfEg/YODvGXFDb2bcFxtu4aI5wQvrnGnYcnNFrxSCAXK7jJhalPYoh+1IoWL+kzcDr+q
         3OlsGfJCeeFL9njkzS8uNj4HKiNm8RSci9c9DB3eSyCMV4ity6SoaZy686XFAhTUitlD
         3tDQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=FtNYXgBcZ/wESd5AHiFkqPsqClMxYDgrKq3jkjdH0J0=;
        b=OPzirRi6M8rjnpKY5D3Zq0H1coFwNBJISqX1bX3XeE1UF4pIkkboTeUEeLZwJH9eZu
         sOkHZogrTq91Lqi98rmrtIXzHFKotAC1XS9Yikotgl/e6G2IV1oV8KF0I1WYTHEKMq9R
         LefXY3nyRnvJ5qn8l0aCD2a9rL9ToMUxEUVOl3BZlrILczM+XW5H+jE8FFuIs9peUdRU
         Isr7rjUln3rkxd5uzcbrC1XURREkxcnZpsoqyJ7EENV5F3ybnxvypTRredwPlbFLc1zA
         HJ2OBdvO39CDGNLu0jX5Q3bnSmmuYxViLXf0yHwcR3sRZrZP/XZvgoBwPOjEOEpR2mZg
         qVrw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=FtNYXgBcZ/wESd5AHiFkqPsqClMxYDgrKq3jkjdH0J0=;
        b=NqHu5gMa36sfQql2NCLS/hM+oY15/sBaYAp/d0eDsNfMJ5ebfETLnp/JBiunqVQtcn
         djbPnjQuY8tIPyRX28VWPVKM0l4PbOpSKM9TCKUMQM4mzwxYeiYt1G6tvNPDr3FEpaoq
         1vIOF7QtrgMLbgAi/+MNl1Z6kdiPYttrr+ixW11LoHefMWKpNbgcT7uSPVpOa3scpne0
         9oJkSP2Ju37ZYkhUiYHs8AuTd49lFXHh9TfnUcedX+xqgDbTQyGRc6lI1JysrBdKUR1Z
         F7/ZG9sQY27IqPtKWo7U0z2rIcwU+MvfPOtFJT8AjSTz7zargWGHxQrIG05MTPbRyAB7
         1zLA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533QNh2kcCGP7kWPWMuN7n0EhyY3aa3UaaVEDJ7wJLoceDB2VIfR
	kFcJaqLjE7h3t0qprBWMAsw=
X-Google-Smtp-Source: ABdhPJz9qeYYEY/NOk+TGc8VrLCT/dSYCvKukwym/lpY5gRhk29bNy3uLU1FiD20XpBdzyGLswCoNg==
X-Received: by 2002:a62:1816:0:b029:1ae:6d39:b92e with SMTP id 22-20020a6218160000b02901ae6d39b92emr3819204pfy.81.1610571351330;
        Wed, 13 Jan 2021 12:55:51 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:fb01:: with SMTP id o1ls1265002pgh.7.gmail; Wed, 13 Jan
 2021 12:55:50 -0800 (PST)
X-Received: by 2002:aa7:957c:0:b029:19e:3b88:de7e with SMTP id x28-20020aa7957c0000b029019e3b88de7emr3941332pfq.31.1610571350731;
        Wed, 13 Jan 2021 12:55:50 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1610571350; cv=none;
        d=google.com; s=arc-20160816;
        b=SoEwV0tWbKDP69vJYYXiTd4Eh8Tqjt1yLNnvS9mOtxe/zPbmWq05PPKjjtySTFKT1X
         JaNzgJBbt1kXsO0Assoi7To9PH8w6Yk2jvt11S4eUMNCsdzICPVAHaQLzZsvTWsOuD+V
         RmGh9WT89oihjkssLuvdDPiiQKYDH1cxA4OvjGK1RGZ7pDvN94C/k8C5YhKZruwjPhvP
         VzDRRHHLU0igfOU5ZBcpyXEJu0LZyv1uhLA177xHfAjQZmldWVAw6sFw5O4FtT9eJehd
         DOdk1m3zWNbLuVgP6pkmia30e8271XrIgrbXGIbHEhGGSaMl3Oui6TgLVY0fInRVAWCF
         Apkw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=J9lVrM6cSutgG7mLzBj653Ro4jtg4186uGwFWHcVmp8=;
        b=snp2r3mZvSlfLgWxORlvGSTwasGs3kkfxBX4NKMnf3sws4Omer4hH8oAsPcchssw/P
         JUJNPTU/rkA3rMSro/+edFe+NvfCDZOmNPg5nKjN2lq0hQ63TqNlpA2gcubm8ToKYi3A
         nYm3kktMRGRBxbiYf9ZROtzYD5V5V6aZkbRKsr29LO9v3gGflMXjnZuggodtJovn5Ppq
         YMJ9KCaXc8kZGAN/sqV/m2oYw3iwT51M+Fc0/OFiqEYL/jaLUOccqVvNzHnEiWrw1PuB
         7T4E//lH5e2lQNWQU7Kuvfa0bnqF6GhBTzf+TSGbravzxxPXhQlMyi50xCMeCb3H/Tc8
         etyg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=aRbWDjM0;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::433 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-pf1-x433.google.com (mail-pf1-x433.google.com. [2607:f8b0:4864:20::433])
        by gmr-mx.google.com with ESMTPS id kr15si571368pjb.2.2021.01.13.12.55.50
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 13 Jan 2021 12:55:50 -0800 (PST)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::433 as permitted sender) client-ip=2607:f8b0:4864:20::433;
Received: by mail-pf1-x433.google.com with SMTP id h186so2014059pfe.0
        for <clang-built-linux@googlegroups.com>; Wed, 13 Jan 2021 12:55:50 -0800 (PST)
X-Received: by 2002:a63:f21:: with SMTP id e33mr3991936pgl.84.1610571350379;
        Wed, 13 Jan 2021 12:55:50 -0800 (PST)
Received: from Ryzen-9-3900X.localdomain (ip68-104-204-241.ph.ph.cox.net. [68.104.204.241])
        by smtp.gmail.com with ESMTPSA id 193sm3564863pfz.36.2021.01.13.12.55.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 13 Jan 2021 12:55:49 -0800 (PST)
Date: Wed, 13 Jan 2021 13:55:47 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Bill Wendling <morbo@google.com>
Cc: Jonathan Corbet <corbet@lwn.net>,
	Masahiro Yamada <masahiroy@kernel.org>, linux-doc@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-kbuild@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Andrew Morton <akpm@linux-foundation.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Sami Tolvanen <samitolvanen@google.com>
Subject: Re: [PATCH v4] pgo: add clang's Profile Guided Optimization
 infrastructure
Message-ID: <20210113205547.GA21653@Ryzen-9-3900X.localdomain>
References: <20210112053113.4180271-1-morbo@google.com>
 <20210113061958.886723-1-morbo@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20210113061958.886723-1-morbo@google.com>
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=aRbWDjM0;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::433 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

Hi Bill,

On Tue, Jan 12, 2021 at 10:19:58PM -0800, Bill Wendling wrote:
> From: Sami Tolvanen <samitolvanen@google.com>
> 
> Enable the use of clang's Profile-Guided Optimization[1]. To generate a
> profile, the kernel is instrumented with PGO counters, a representative
> workload is run, and the raw profile data is collected from
> /sys/kernel/debug/pgo/profraw.
> 
> The raw profile data must be processed by clang's "llvm-profdata" tool
> before it can be used during recompilation:
> 
>   $ cp /sys/kernel/debug/pgo/profraw vmlinux.profraw
>   $ llvm-profdata merge --output=vmlinux.profdata vmlinux.profraw
> 
> Multiple raw profiles may be merged during this step.
> 
> The data can now be used by the compiler:
> 
>   $ make LLVM=1 KCFLAGS=-fprofile-use=vmlinux.profdata ...
> 
> This initial submission is restricted to x86, as that's the platform we
> know works. This restriction can be lifted once other platforms have
> been verified to work with PGO.
> 
> Note that this method of profiling the kernel is clang-native, unlike
> the clang support in kernel/gcov.
> 
> [1] https://clang.llvm.org/docs/UsersManual.html#profile-guided-optimization
> 
> Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
> Co-developed-by: Bill Wendling <morbo@google.com>
> Signed-off-by: Bill Wendling <morbo@google.com>
> Change-Id: Ic78e69c682286d3a44c4549a0138578c98138b77

Small nit: This should be removed.

I applied this patch on top of v5.11-rc3, built it with LLVM 12
(f1d5cbbdee5526bc86eac0a5652b115d9bc158e5 + D94470) with Microsoft's
WSL 5.4 config [1] + CONFIG_PGO_CLANG=y, and ran it on WSL2.

$ zgrep PGO /proc/config.gz
# Profile Guided Optimization (PGO) (EXPERIMENTAL)
CONFIG_ARCH_SUPPORTS_PGO_CLANG=y
CONFIG_PGO_CLANG=y
# end of Profile Guided Optimization (PGO) (EXPERIMENTAL)

However, I see an issue with actually using the data:

$ sudo -s
# mount -t debugfs none /sys/kernel/debug
# cp -a /sys/kernel/debug/pgo/profraw vmlinux.profraw
# chown nathan:nathan vmlinux.profraw
# exit
$ tc-build/build/llvm/stage1/bin/llvm-profdata merge --output=vmlinux.profdata vmlinux.profraw
warning: vmlinux.profraw: Invalid instrumentation profile data (bad magic)
error: No profiles could be merged.

Am I holding it wrong? :) Note, this is virtualized, I do not have any
"real" x86 hardware that I can afford to test on right now.

[1]: https://github.com/microsoft/WSL2-Linux-Kernel/raw/linux-msft-wsl-5.4.y/Microsoft/config-wsl

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210113205547.GA21653%40Ryzen-9-3900X.localdomain.
