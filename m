Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBSX4QT4AKGQEK6B2Y2Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc3d.google.com (mail-oo1-xc3d.google.com [IPv6:2607:f8b0:4864:20::c3d])
	by mail.lfdr.de (Postfix) with ESMTPS id B344F2149AA
	for <lists+clang-built-linux@lfdr.de>; Sun,  5 Jul 2020 04:43:23 +0200 (CEST)
Received: by mail-oo1-xc3d.google.com with SMTP id i9sf8586600oom.6
        for <lists+clang-built-linux@lfdr.de>; Sat, 04 Jul 2020 19:43:23 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1593917002; cv=pass;
        d=google.com; s=arc-20160816;
        b=0fbOphouYas69eL8sqp1iUKtxxalzkLula3a7VpEOx4vWCi0T2HhwEElr427jUAxnD
         SPK1vZ9oZThADNcpIGLzDsZVjInGNMtFsy50OdVKEkPb6tOp3MOdwG1pm5914LI/wxR2
         fCCbuKgSyXBhweLpK0eJ2hPEJVpzl67r5HqHzAoLQUqzS3Lt7KqJbJ/ODPMhc/OATibR
         sK9aZp87FU/vbmFgvjyAPhXOv6osJ/Gq8iL4BvYJO8eR33JPzRzeWWzeNrmP5W4RGY7q
         HjV4NlAGuUL23p8CzJjOVPPlBEMunrDeYocYmgZe6r94dCBPLdJcN0ujKRLNFuy84vnG
         iu1g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature:dkim-signature;
        bh=R4m2Fj8MomvUwoWGPbjGMzLpMGtR+72p0mCo378eF1E=;
        b=uoMd/uzpf6HggPdICtRUe5ZrNC+4k70lvInQ1b9T+Jtw0EEoTMtASKASwgNI1m+xro
         2NX4e955/bOkTdqwvtS0suTE3vpgRXFNk7lQ2xfLZAPjtTXfJhsfC/bYXNChvXvtKVpz
         anh+f48o8U0tsh9TfThuaJsNLIVKMZ9/CpJCGpVkDY06UHJfg5VINXTKRPQsHUGAOBKS
         B+A9gSbPNFiXm7fwuQHVrIDn5vAi/SSRqB1HiU0Zg8HpbmXcCrc2k9qial3WrPyxznHK
         jI5W6kzwaqCv+WsMLwRrv+2aFIYJ4UlQBssYaWD6PsuVEEue62ea7kBYHhZBSITXk/B2
         svJg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=MSrIH0a4;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=R4m2Fj8MomvUwoWGPbjGMzLpMGtR+72p0mCo378eF1E=;
        b=aAk7dDPJqE8pduBkEL6T6dTEFQ8HnferEMpaz3oYXMQ6Er1+jPSk11EVPPTJ4yHeNa
         Vbe7oLu/lZIvw6CDwslp1pxI8HwQrlQn6lQNqZI7Lb1BMqpQZZYnjditmO9pkGX//VKU
         zujoW+4+qYhrM0dxLNw98Cf4rOZLtUFOhWDB83MVY9BMEWy86+7rC1OQbKxJit0oFmY+
         k2xtqU+B4t4rAJdk9HZJLVRbhQ8NeM0N2GMs9k0ettcNB6S39cjOZl0C2Hx43NK2mYvL
         z14nZq+1MLXepCs201XDn6nmyL+d2xENCFIpQr1Minje54wC/f5bmFNr+CfJKGPofKA0
         q+Jw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=R4m2Fj8MomvUwoWGPbjGMzLpMGtR+72p0mCo378eF1E=;
        b=K5/qH+42aflP+tMS4G0quj223zySeNzNXVuzI5jE4TD+siSg0wquEWs7GZwlxaoE2B
         g/8GanYT8e60FjAgacUIKCpeyI9olkFhI6uUoT/r0Bl1Wips3dd+qaIoOKH+dqfDS62o
         8vVowF2JEnxOB9eGUBAg8RxEuaTqGk9e08gGGpiM4ACXD+W5TzHOFg1Wfr/Si/Z0Ixri
         nyjZS35plodL0Subv5fEVNELGl4kpa3JXrKwd7wbPnPq0/O25RkA+nK1JWf2yxDXlljX
         T5H/f9+Y5OqGSmQSYA9mkNbGfJQ3LO+sa7GIB/1D7wQCYLBDJBrkKAH4/nInj614FVl6
         bSiA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=R4m2Fj8MomvUwoWGPbjGMzLpMGtR+72p0mCo378eF1E=;
        b=c9b/8xwRUDs9d9YvdiNvLbwcefYs5WnFnQ/mIQYU9ksAQjn9rjrD6DT0phY2UgEr2f
         h3rcBEpfCHdoR5cF/quRL0dfKqY6cFdPaMPJeJWC1ihhTcHBgdw17/2YTs7ryWeLKoLh
         d8Wq5cYwJIuUCeNSVpyB7L+RURD0EfmJRth+oz4IibA24yY4siND7+tQ2DC8mpkB7/5a
         3bXKNpSYjDeSNIBFhs3atFQHtMHPc/fRiZvM1eRfo15xAl2whYWSNkDMB9smcLxW2INH
         qgtyJKyKrcwI0+1H3dSpXnMifkP+GDt5EPXUaUeTot9uDFIci4aJWL/NnOEQAWfYetOA
         iOMQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530hjPFVklGEg/A8nfe4fHZsn7XGhMhFzwBcajV4ytRrANljKL4S
	6KsqcAkLeSXUM+HAcSWMlTc=
X-Google-Smtp-Source: ABdhPJxzO0IfwIyUMckTVGwGwe/2U/3rVLcw6Nz3VuuafQtaAe5UGQ7gdmOIBTm5S9kr6XZzm/KV5A==
X-Received: by 2002:a05:6820:50a:: with SMTP id m10mr37507719ooj.54.1593917002415;
        Sat, 04 Jul 2020 19:43:22 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:4b14:: with SMTP id y20ls2592415oia.1.gmail; Sat, 04 Jul
 2020 19:43:22 -0700 (PDT)
X-Received: by 2002:a54:4e87:: with SMTP id c7mr1675060oiy.110.1593917002053;
        Sat, 04 Jul 2020 19:43:22 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1593917002; cv=none;
        d=google.com; s=arc-20160816;
        b=SOTUIQ9gwjwiLAVT+DKmkdwRUPSPXpFs8H+e0Gsbc4HF+NscUVUSQwHcuH/+iZ261C
         eYKYwbb9WqG+zpMd9735Q9AgRTIN6R4cAJT4ROiqO4m7wy3nrMpc+fboqk2QJazcZrHy
         T3MsLqfCDkV/iwsT545isZkPPrIMgSvNPaLfHYGAjeG4lXAGhXoylyVy0R7Ujm687shp
         OFLMR6Ik/NOvmPew3QzINEelgksasGiwkMBv8elq6IMWsNZRMTyZl9A4BgqFzLu3xQRO
         Pm+tRMltFrLaC7gB1UZsj1BcrJegIrSrMhfuQHD2U9uef4PYeswYnkMQoR9J2E3M3elm
         DMOQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=sKCO9/1M60oSMeKwbDwHzeuGQ1Mf9xZp+DMEQlF5lwQ=;
        b=ZcznW0ZCWv3GqL+VXJBLtwUQ8XmEe5rRAUarDT45GihEfLrpeUZ5eJOFvMCgecB4iz
         lkRFVgE1/ly81xSKRRQ90tDJWqZZ7n40HG/TKRgumwtX8UUeVNax6P3t/NaRBznMNjlj
         5uSSAKFCZzWpIfV8Wxs44WSnz32XZ90F2EICnJ6offGHcLdn9OgvolREFJAlh9gxQUNm
         i3tHreL5rg8qSNr//3KGLKH4DssvO3yLq5X2Lo7T7OFYEv5LAemyn3jm4zCq/BRGlfyG
         y0ekddebQHfJLHY/9vJS/vNEGSZXMHnEr1nH9jsOebQy8J5rSTxFZHzfza3yEPpL1IoS
         /50w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=MSrIH0a4;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-pf1-x441.google.com (mail-pf1-x441.google.com. [2607:f8b0:4864:20::441])
        by gmr-mx.google.com with ESMTPS id m23si1305036ooe.0.2020.07.04.19.43.22
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 04 Jul 2020 19:43:22 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::441 as permitted sender) client-ip=2607:f8b0:4864:20::441;
Received: by mail-pf1-x441.google.com with SMTP id t11so10670460pfq.11
        for <clang-built-linux@googlegroups.com>; Sat, 04 Jul 2020 19:43:22 -0700 (PDT)
X-Received: by 2002:a63:5a20:: with SMTP id o32mr26437223pgb.15.1593917001330;
        Sat, 04 Jul 2020 19:43:21 -0700 (PDT)
Received: from Ryzen-9-3900X.localdomain ([104.200.135.125])
        by smtp.gmail.com with ESMTPSA id d65sm7525552pfc.97.2020.07.04.19.43.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 04 Jul 2020 19:43:20 -0700 (PDT)
Date: Sat, 4 Jul 2020 19:43:18 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Danny Lin <danny@kdrag0n.dev>
Cc: Masahiro Yamada <masahiroy@kernel.org>,
	Michal Marek <michal.lkml@markovi.net>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Sami Tolvanen <samitolvanen@google.com>,
	Kees Cook <keescook@chromium.org>, linux-kbuild@vger.kernel.org,
	linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com
Subject: Re: [PATCH] kbuild: Allow Clang global merging if !MODULES
Message-ID: <20200705024318.GA433@Ryzen-9-3900X.localdomain>
References: <20200702233929.181409-1-danny@kdrag0n.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200702233929.181409-1-danny@kdrag0n.dev>
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=MSrIH0a4;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

Hi Danny,

On Thu, Jul 02, 2020 at 04:39:29PM -0700, Danny Lin wrote:
> The old reasoning for disabling Clang's global merging optimization is
> that it breaks modpost by coalescing many symbols into _MergedGlobals.
> However, modpost is only used in builds with dynamic modules;
> vmlinux.symvers is still created during standalone builds, but it's
> effectively just an empty dummy file.
> 
> Enabling the optimization whenever possible allows us to reap the
> benefits of reduced register pressure when many global variables are
> used in the same function.

Have you run into any place within the kernel that this is the case or
this more of a "could help if this ever happens" type of deal?

> An x86 defconfig kernel built with this optimization boots fine in qemu,
> and a downstream 4.14 kernel has been used on arm64 for nearly a year
> without any issues caused by this optimization.

If I am reading LLVM's source correctly, this option only seems relevant
for ARM and AArch64?

$ rg --no-heading createGlobalMergePass
llvm/lib/CodeGen/GlobalMerge.cpp:679:Pass *llvm::createGlobalMergePass(const TargetMachine *TM, unsigned Offset,
llvm/lib/Target/AArch64/AArch64TargetMachine.cpp:524:    addPass(createGlobalMergePass(TM, 4095, OnlyOptimizeForSize,
llvm/lib/Target/ARM/ARMTargetMachine.cpp:456:    addPass(createGlobalMergePass(TM, 127, OnlyOptimizeForSize,
llvm/include/llvm/CodeGen/Passes.h:419:  Pass *createGlobalMergePass(const TargetMachine *TM, unsigned MaximalOffset,

Otherwise, I think this is probably okay. According to [1], when the
optimization level is less than -O3, we get a less aggressive version of
this optimization level, which is good for code size:

https://github.com/llvm/llvm-project/commit/8207641251706ea808df6d2a1ea8f87b8ee04c6d

However, we do potentially get merging of extern globals if we do not
specify -mglobal-merge (if I am reading the source correctly), which
this commit claims might hurt performance? Not sure if there is any way
to test or verify that?

https://github.com/llvm/llvm-project/commit/de73404b8c4332190750537eb93ce0d5b6451300

> Signed-off-by: Danny Lin <danny@kdrag0n.dev>
> ---
>  Makefile | 3 +++
>  1 file changed, 3 insertions(+)
> 
> diff --git a/Makefile b/Makefile
> index a60c98519c37..f04c3639cf61 100644
> --- a/Makefile
> +++ b/Makefile
> @@ -772,10 +772,13 @@ ifdef CONFIG_CC_IS_CLANG
>  KBUILD_CPPFLAGS += -Qunused-arguments
>  KBUILD_CFLAGS += -Wno-format-invalid-specifier
>  KBUILD_CFLAGS += -Wno-gnu
> +
> +ifdef CONFIG_MODULES
>  # CLANG uses a _MergedGlobals as optimization, but this breaks modpost, as the
>  # source of a reference will be _MergedGlobals and not on of the whitelisted names.
>  # See modpost pattern 2
>  KBUILD_CFLAGS += -mno-global-merge
> +endif
>  else
>  
>  # These warnings generated too much noise in a regular build.
> -- 
> 2.27.0
> 

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200705024318.GA433%40Ryzen-9-3900X.localdomain.
