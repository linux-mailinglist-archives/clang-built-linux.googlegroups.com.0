Return-Path: <clang-built-linux+bncBAABBN7Y6HXAKGQETGQNLGI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x73e.google.com (mail-qk1-x73e.google.com [IPv6:2607:f8b0:4864:20::73e])
	by mail.lfdr.de (Postfix) with ESMTPS id F1574109776
	for <lists+clang-built-linux@lfdr.de>; Tue, 26 Nov 2019 02:13:28 +0100 (CET)
Received: by mail-qk1-x73e.google.com with SMTP id o11sf10827845qkk.7
        for <lists+clang-built-linux@lfdr.de>; Mon, 25 Nov 2019 17:13:28 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1574730807; cv=pass;
        d=google.com; s=arc-20160816;
        b=evxxyoADZfNvZoCskOTSOAOYzgcLouR+OWctkmCG4QJc/l+GJQjJ0EFPZ9bxEXWDwi
         esGOVpvqzrTPVbsD2TVG/d+7InT3rq6QDw8P0Fc3B2oAbU9BXDViH4KzVzwmAwZPG7V5
         gVMEXtM89XX870vMk15tyr2A4HDZy8a8m6NwYDFqN6jGm5tcQVDVxI88EaSI/rsJUvmU
         vtl2Kd2mfchA9ijTESkIAq+D0Pg0vSP2P7EJ6YiLI+NFSrH7lWaDzH2jT6eDRH755OKs
         e9s8RkM9gH7ZfqQbx6RoS6FgBi87K+n1QTH2mM/6Tf5WygFeNuTqlppJ9Dd8b+yM+Ydq
         vMRg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:date:message-id:subject:cc:from:to
         :in-reply-to:mime-version:sender:dkim-signature;
        bh=YqIVZSYTFKxWJ8eBNFVWMIbgszDEzFHUgh3jiqr0qlA=;
        b=EsldPtYFI4xwOJX4IKDUGgDLQT+P3ZC0tuIEuVIkmgwlZeBfdckmkfrZRcAvnwm9fn
         rk6d5Tbsna5ojHtMec9qay6pQ+kU6OLGJsbyuky/zW50bwI7H93uYzWApagirrY02icn
         fRSNY7TL/xO5zkuZXSSo+ouuTFxSbmlkcdPN3esPwtktgMPVAN+c7gFbQGndhl9XP9n2
         E5GOg7IzZAi4EGEA3fMAKOqE0phtUUJJwtDEnFrkyjKPChr8EOwhLnEB0i5cAgiXEk9w
         UodKyt71Qi1z2lRjjOZ/S3keTjgwppLsBWhbu/pr0qqdvsM8xF9baR7CKlqD5IeWC/wu
         2Wvw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of michael@ozlabs.org designates 203.11.71.1 as permitted sender) smtp.mailfrom=michael@ozlabs.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:in-reply-to:to:from:cc:subject:message-id:date
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=YqIVZSYTFKxWJ8eBNFVWMIbgszDEzFHUgh3jiqr0qlA=;
        b=b3X/fIDc3POvt6UkXLYRgOsG0Ed9xLDTDTDPiAhdD1jsmtiYzFoviojUwccl9ZYAx2
         jpaBRWx8Agxj4p+22Kg+rGtVf76dijpBNunOu3igR3boJoQtjZw8XqZ0fCXsXR9oQv65
         S704AIjAQIf4vexUFtYjkKGmPTjyL39RveAdivssts4ooRMkLccro/BK3K/pt9WsOm7X
         6V3AOgyil9LTZzmwScYT2JmE2Ono8SDolmZGSR4W+nE0eyRq1WNHyQJEd+Ljd7G52Vzo
         eaVozT6p9PL12bOXdeafKeTYlJJCfrDRqXlo1wG04ZJUN0oRf5vb0bLy1b9eBVjzfMOl
         IayA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:in-reply-to:to:from:cc
         :subject:message-id:date:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=YqIVZSYTFKxWJ8eBNFVWMIbgszDEzFHUgh3jiqr0qlA=;
        b=HqiLsbEkm3IBK2ycI1qiI9yVU5HCtmVS8NZ+BK/Rg5oSaL9EcNNMnvZ/cCkw1UZhFf
         KqTCDKARTck/ikv16woFouK+Dv4DBZIOyiMCm9jhyes+Jb5fTDiNWi/ac1pE225zgYdf
         DAwqKxfiv4tNzmTK5PGo7m2qwrV3XX611tk71BMkNGiMFmrUSSgmhyviTRqac+Haao0Q
         qXKac1MT77KE6N63pHit1RshTv8rOVIj2xrUg/jMCuy1pky7OF/ymdP4+YPcpdklYzjE
         zcWy3XfTAJLj3LmslICEnnZX4DbkfYbpQ6+2qX8Fc7ZIrNKjvga3ZQH6EabU2cxDsRUO
         kLsA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVCf1Cny9Ql3ymb5qrIdgGz846CIlxcnDeAoCOGABUP4TJCUT6i
	W+rQ1e9ixUf/CgaphdtJENg=
X-Google-Smtp-Source: APXvYqxYQT6H9GfJicU/hRiikMV02/YyaUtdwELN3hFu23Em/aA/sxyPWRohpMlNa8hMnehO4wCTaQ==
X-Received: by 2002:ac8:1afc:: with SMTP id h57mr21158681qtk.250.1574730807219;
        Mon, 25 Nov 2019 17:13:27 -0800 (PST)
MIME-Version: 1.0
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:4347:: with SMTP id a7ls6026611qtn.11.gmail; Mon, 25 Nov
 2019 17:13:26 -0800 (PST)
X-Received: by 2002:ac8:6944:: with SMTP id n4mr14833560qtr.360.1574730806749;
        Mon, 25 Nov 2019 17:13:26 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1574730806; cv=none;
        d=google.com; s=arc-20160816;
        b=qiXruhJ+BarCqlZt4dJHunvPwJ9dMPSIU8wu0RN7kLRmvUcotsD9bgrklT/tpBGqhV
         apV2qMcxdzTiKNIR4JiE5aLIBkdQilVutKfIkQC7xCej6sOqgFy39pPTsRYnmX/2ISiB
         RK9lRfm/u8ZieHKycC9dl17h3+C42u3OEZRd3Zplvh5l0pvY/rhGkiuU5QcV7xTb5WfA
         ZkS2CJl9kbrMqltuIixofM8NmVXgm0qpNym5UUo0PB0sC9xZAsStHJoLnxU4DSnBC4FA
         fvUhKiE5kmsxE+3Qi6UWQyV6EmsDIVagafYRfIr9pQOHgcXudHSn/InL/W/jQgQpykdv
         OY5g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=date:message-id:subject:cc:from:to:in-reply-to;
        bh=k0rXWflJTkbg0kZLA4DEP3mZZDwx6/0gmL1EzUX3DPA=;
        b=MlhkUR44hmRIpGGwW5DNDISL8mAHtCUC0vWwvjx2Jzh/RCbF9V851vpKEYMG4wt3wy
         1aovtZGgNUw2b+WyANpDoqPZmelQS1gSt7aY6rhNt7yxLRvw4HDAIN5d5hK2kRannmy5
         qmiOJxI/ywVo5l62tSMlEUygEwazKDtTBjNsq87dz0B68gSC4elAChQSkp5j07ZT0wdM
         /pu8xaQBMQMcQe3944pAIF6TT8/F7fdM/APD3SwxavrbttE4kGt7bfDmkWK+HhdKXD0Z
         L4E8C/Ak2euYAAH/JvJOgdZoItp1aGcQpnRqXh4nY03wmnceLCuZ/ECkBYjreLyQxyjF
         orxQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of michael@ozlabs.org designates 203.11.71.1 as permitted sender) smtp.mailfrom=michael@ozlabs.org
Received: from ozlabs.org (bilbo.ozlabs.org. [203.11.71.1])
        by gmr-mx.google.com with ESMTPS id r28si352931qtu.0.2019.11.25.17.13.25
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 25 Nov 2019 17:13:26 -0800 (PST)
Received-SPF: pass (google.com: domain of michael@ozlabs.org designates 203.11.71.1 as permitted sender) client-ip=203.11.71.1;
Received: by ozlabs.org (Postfix, from userid 1034)
	id 47MQrd1PSrz9sPZ; Tue, 26 Nov 2019 12:13:21 +1100 (AEDT)
X-powerpc-patch-notification: thanks
X-powerpc-patch-commit: 465bfd9c44dea6b55962b5788a23ac87a467c923
In-Reply-To: <20191119045712.39633-2-natechancellor@gmail.com>
To: Nathan Chancellor <natechancellor@gmail.com>, Benjamin Herrenschmidt <benh@kernel.crashing.org>, Paul Mackerras <paulus@samba.org>
From: Michael Ellerman <patch-notifications@ellerman.id.au>
Cc: Nick Desaulniers <ndesaulniers@google.com>, linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com, Nathan Chancellor <natechancellor@gmail.com>, linuxppc-dev@lists.ozlabs.org, Daniel Axtens <dja@axtens.net>
Subject: Re: [PATCH v5 1/3] powerpc: Don't add -mabi= flags when building with Clang
Message-Id: <47MQrd1PSrz9sPZ@ozlabs.org>
Date: Tue, 26 Nov 2019 12:13:21 +1100 (AEDT)
X-Original-Sender: patch-notifications@ellerman.id.au
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of michael@ozlabs.org designates 203.11.71.1 as permitted
 sender) smtp.mailfrom=michael@ozlabs.org
Content-Type: text/plain; charset="UTF-8"
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

On Tue, 2019-11-19 at 04:57:10 UTC, Nathan Chancellor wrote:
> When building pseries_defconfig, building vdso32 errors out:
> 
>   error: unknown target ABI 'elfv1'
> 
> This happens because -m32 in clang changes the target to 32-bit,
> which does not allow the ABI to be changed, as the setABI virtual
> function is not overridden:
> 
> https://github.com/llvm/llvm-project/blob/llvmorg-9.0.0/clang/include/clang/Basic/TargetInfo.h#L1073-L1078
> 
> https://github.com/llvm/llvm-project/blob/llvmorg-9.0.0/clang/lib/Basic/Targets/PPC.h#L327-L365
> 
> Commit 4dc831aa8813 ("powerpc: Fix compiling a BE kernel with a
> powerpc64le toolchain") added these flags to fix building big endian
> kernels with a little endian GCC.
> 
> Clang doesn't need -mabi because the target triple controls the default
> value. -mlittle-endian and -mbig-endian manipulate the triple into
> either powerpc64-* or powerpc64le-*, which properly sets the default
> ABI:
> 
> https://github.com/llvm/llvm-project/blob/llvmorg-9.0.0/clang/lib/Driver/Driver.cpp#L450-L463
> 
> https://github.com/llvm/llvm-project/blob/llvmorg-9.0.0/llvm/lib/Support/Triple.cpp#L1432-L1516
> 
> https://github.com/llvm/llvm-project/blob/llvmorg-9.0.0/clang/lib/Basic/Targets/PPC.h#L377-L383
> 
> Adding a debug print out in the PPC64TargetInfo constructor after line
> 383 above shows this:
> 
> $ echo | ./clang -E --target=powerpc64-linux -mbig-endian -o /dev/null -
> Default ABI: elfv1
> 
> $ echo | ./clang -E --target=powerpc64-linux -mlittle-endian -o /dev/null -
> Default ABI: elfv2
> 
> $ echo | ./clang -E --target=powerpc64le-linux -mbig-endian -o /dev/null -
> Default ABI: elfv1
> 
> $ echo | ./clang -E --target=powerpc64le-linux -mlittle-endian -o /dev/null -
> Default ABI: elfv2
> 
> Don't specify -mabi when building with clang to avoid the build error
> with -m32 and not change any code generation.
> 
> -mcall-aixdesc is not an implemented flag in clang so it can be
> safely excluded as well, see commit 238abecde8ad ("powerpc: Don't
> use gcc specific options on clang").
> 
> pseries_defconfig successfully builds after this patch and
> powernv_defconfig and ppc44x_defconfig don't regress.
> 
> Link: https://github.com/ClangBuiltLinux/linux/issues/240
> Reviewed-by: Daniel Axtens <dja@axtens.net>
> Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>

Series applied to powerpc next, thanks.

https://git.kernel.org/powerpc/c/465bfd9c44dea6b55962b5788a23ac87a467c923

cheers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/47MQrd1PSrz9sPZ%40ozlabs.org.
