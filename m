Return-Path: <clang-built-linux+bncBDYJPJO25UGBB5WJYOBQMGQEIPAEQHY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x23f.google.com (mail-lj1-x23f.google.com [IPv6:2a00:1450:4864:20::23f])
	by mail.lfdr.de (Postfix) with ESMTPS id EBDF435A948
	for <lists+clang-built-linux@lfdr.de>; Sat, 10 Apr 2021 01:36:22 +0200 (CEST)
Received: by mail-lj1-x23f.google.com with SMTP id i26sf2310694ljn.13
        for <lists+clang-built-linux@lfdr.de>; Fri, 09 Apr 2021 16:36:22 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1618011382; cv=pass;
        d=google.com; s=arc-20160816;
        b=oDO+Nr5RrvPbvpt6iYoJ4kq6I4JhFQS93ne+ky3pBV0/g7qcF4mfwq4SbGRO0WBYGg
         M4rRwuzTjBU8VryWJqUs0k3pSvpZ9iRxPu1/XxQjYsGRWoXdAj5HJSV/A7QaalLWkFsv
         PfW7QYv4w9ArDX/9t/Ld2u07uH8ckboUrxYVxdJSt8vo5Geo+C8k/whXNz5zHFiruV6f
         8Pl0p+W5KkiBt8SBhxXVT3jAmWsFQxwKu6UGL0wcArpikyARe6vEBSvZpCXdR2U6k4wZ
         Sa9LUld07pGkV+kFOWATPRvS9LpvbzXwma7FrMrgJO/uzm51IOp/QrT3/WY+yRn6lJFR
         vdXg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=/4/iNvLccMCNQuIBVIg3ouBjtBL/mF3vlgfpwgV7C6U=;
        b=QEkV82Ou4D2r2pBAgzWmSuI09KxlLeo4ElwG3GY5UKmfgsubsmGT7eVgYXKtfnt5AL
         zXQMn+nJJbb9Ey40Ro0ka0mNIXTaDk3DuW7VhY0Jt80zwZu/iN7dDWOe7vdMFmaOLcz1
         fkQd9rLfnHPgEwYPujYdQbPL/kcQeZIHnpbQhsCgDS5X0WTi91XsR8DBdbuMD+Pw/iG4
         loScSii3sHmqQYRvqyAWTxo18wXSCKt/BWPbf7litB8NTEIt0ig/314N4K+vZuWAextK
         FE7a+wu4rtzl4iBOQ/Cn15Wj78pDQOYO9fcsGwGxtQ3naoBX6t07qYh1EY6jmN+c/DeM
         W0+g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=naXn5kfX;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::229 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=/4/iNvLccMCNQuIBVIg3ouBjtBL/mF3vlgfpwgV7C6U=;
        b=dh4asnO4N/zKaJ5SqHWxWTBB4xPZZu4KSBdxK5EFoRYNy7GnLwlMUKLnezRvcnRGgZ
         M6HmuLNxo++V+oaoGmi06E6vmwRlkHTZcoAxrSO6zfeIemFUSn3PwGUGgfvFmkLRQDsz
         NdRbx7gkbxKUbPs2kT8hwbnIsdxjpPCRplcsds5HVF6G07uXxUWCKDsbUbygkS2nLrcc
         tUAY4S8ja5AjiSmEd7vyrCyhUmyge5Yl/2fQmLLMlsnt+z5SoYiLz0k1q4BLcy6dymnk
         oq27/t7KQroRUFaAZASzFiqapx9ya21lDOu/+Uh6LMd+Jq27e2ZJMaPipFRq1+v77CTe
         5RGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=/4/iNvLccMCNQuIBVIg3ouBjtBL/mF3vlgfpwgV7C6U=;
        b=HNT4JR2FiW+XtfW/XvYdiGYQclD/7LrzFibhh1JrhZ1ebsUJS9Mck7ZviqnjLPLp10
         jVEo2ocyAwe4aggh0Rc5GVvf7UjDbv+BYdBNtmJFdnv1+O29Onu7T2HLLwmuZKzDmoAI
         MWkCx3vc//t+QRk0r8LCfwCt786Js5yoBPVwLG1AqDqyct0Zofkc+dXYXkkJGc1NT7b6
         REcsQ49tD4ltoUWJQXmqT1o9Si4GQzrB3gcEC40RFg4rjgqemDtfnEHg3KAl9lcML0Pv
         unJLIEKbnOApN00RYtcaXBYFTZDFOZ1+bNe8iW0kM8LdTult18EVIVEbOWH05sZi05gw
         QhTA==
X-Gm-Message-State: AOAM5304XDfwil43ThbsrCQuUqVeFlRi3C09hsoBCM6GvIjuCw158R+u
	dcwRHUhxFvUFkYxhwRfiUCM=
X-Google-Smtp-Source: ABdhPJyjhBPbwAFibHhYTTxz7Iy7g0piuBcJfUkkvwaUGJan4nnbxJ2xulF9cfXFHlTtHEm6FRNsLg==
X-Received: by 2002:a19:c708:: with SMTP id x8mr11944065lff.548.1618011382353;
        Fri, 09 Apr 2021 16:36:22 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6512:3b95:: with SMTP id g21ls145183lfv.1.gmail; Fri, 09
 Apr 2021 16:36:21 -0700 (PDT)
X-Received: by 2002:ac2:491d:: with SMTP id n29mr11835233lfi.541.1618011381330;
        Fri, 09 Apr 2021 16:36:21 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618011381; cv=none;
        d=google.com; s=arc-20160816;
        b=hf9etU4ArSXduNQ1q8Bcjy26TRwBoxkdc4jOlkwuv5vsyA/P/3FEhda+/qDqlTO3qq
         AhTneFy3tEyVE1EsnUq8AHXuo8n0xZWXtmtzVV+wRtO43BXtFgbdX7P3sj3yR95hRECG
         4FVz0S43tnror0NfDJW9urOYKuYaJb5LUPprRA6aYi9uKS9DYBHcRiU6U/Lsy1C5IPq9
         cOoqnN8xqrio08O/EjZwd//Q7lQ8nhV8scHLMqLXsp7nDDWCXCDEBIZ/1TZSHUlOkfLx
         S+DdYwfpbb5JndmcLQF1VzDNbQR+ATgZJx45syCD/wXxbIHIY7qREI9ylYZnM1NZQQcw
         PjmQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=MQEhdxl+cSU7BC7XRTZDcCsNpOwQL3MJhJomrvmkJCY=;
        b=nbZACdLXgk1Xn8rQJiZ/d+Of2d5IXZ3MAaZ3X0mGDqO7++MpT+txuMwb5UghntPMTm
         xdpQH3PlhtRVKrjfqwXl15bsiSNK8TnPhn8j9A9vPhrF5x+D2HLGcGOqbijj0uYFvOMh
         51RUdQoh+WKFb2yfYuotegESFd3xNxeJd8hHegU+69L/ypS7gS3ybPzrwBXT3ZAkD4mS
         oYQgMobUYZ2+8jsZQ+hmt9gKHkMm8OU2yAAc9c4Y/IMTP7FsmVpR708VC3dzLmTQCAZt
         wUKrW/efEPZZOMI/tahiyLE4lggRv8fxn7TVJT8ykFwmdjhjwMj2i3Y5V/1j1y8vWTpZ
         N7Ow==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=naXn5kfX;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::229 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-lj1-x229.google.com (mail-lj1-x229.google.com. [2a00:1450:4864:20::229])
        by gmr-mx.google.com with ESMTPS id d19si297207ljo.1.2021.04.09.16.36.21
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 09 Apr 2021 16:36:21 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::229 as permitted sender) client-ip=2a00:1450:4864:20::229;
Received: by mail-lj1-x229.google.com with SMTP id a1so8367814ljp.2
        for <clang-built-linux@googlegroups.com>; Fri, 09 Apr 2021 16:36:21 -0700 (PDT)
X-Received: by 2002:a2e:3603:: with SMTP id d3mr10563594lja.495.1618011380903;
 Fri, 09 Apr 2021 16:36:20 -0700 (PDT)
MIME-Version: 1.0
References: <20210409221155.1113205-1-nathan@kernel.org>
In-Reply-To: <20210409221155.1113205-1-nathan@kernel.org>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Fri, 9 Apr 2021 16:36:09 -0700
Message-ID: <CAKwvOdnTFXPy29L5JhcMBJAP4STfZUMn6739Mc4J_2Qwu3efBw@mail.gmail.com>
Subject: Re: [PATCH] crypto: arm/curve25519 - Move '.fpu' after '.arch'
To: Nathan Chancellor <nathan@kernel.org>
Cc: Herbert Xu <herbert@gondor.apana.org.au>, "David S. Miller" <davem@davemloft.net>, 
	Russell King <linux@armlinux.org.uk>, Ard Biesheuvel <ardb@kernel.org>, 
	"Jason A. Donenfeld" <Jason@zx2c4.com>, 
	"open list:HARDWARE RANDOM NUMBER GENERATOR CORE" <linux-crypto@vger.kernel.org>, 
	Linux ARM <linux-arm-kernel@lists.infradead.org>, LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, "# 3.4.x" <stable@vger.kernel.org>, 
	Arnd Bergmann <arnd@arndb.de>, Jessica Clarke <jrtc27@jrtc27.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=naXn5kfX;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::229
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

On Fri, Apr 9, 2021 at 3:12 PM Nathan Chancellor <nathan@kernel.org> wrote:
>
> Debian's clang carries a patch that makes the default FPU mode
> 'vfp3-d16' instead of 'neon' for 'armv7-a' to avoid generating NEON
> instructions on hardware that does not support them:
>
> https://salsa.debian.org/pkg-llvm-team/llvm-toolchain/-/raw/5a61ca6f21b4ad8c6ac4970e5ea5a7b5b4486d22/debian/patches/clang-arm-default-vfp3-on-armv7a.patch
> https://bugs.debian.org/841474
> https://bugs.debian.org/842142
> https://bugs.debian.org/914268

Another good link would be the one from Jessica describing more
precisely what the ARM targets for Debian are:
https://wiki.debian.org/ArchitectureSpecificsMemo#armel

>
> This results in the following build error when clang's integrated
> assembler is used because the '.arch' directive overrides the '.fpu'
> directive:
>
> arch/arm/crypto/curve25519-core.S:25:2: error: instruction requires: NEON
>  vmov.i32 q0, #1
>  ^
> arch/arm/crypto/curve25519-core.S:26:2: error: instruction requires: NEON
>  vshr.u64 q1, q0, #7
>  ^
> arch/arm/crypto/curve25519-core.S:27:2: error: instruction requires: NEON
>  vshr.u64 q0, q0, #8
>  ^
> arch/arm/crypto/curve25519-core.S:28:2: error: instruction requires: NEON
>  vmov.i32 d4, #19
>  ^
>
> Shuffle the order of the '.arch' and '.fpu' directives so that the code
> builds regardless of the default FPU mode. This has been tested against
> both clang with and without Debian's patch and GCC.
>
> Cc: stable@vger.kernel.org
> Fixes: d8f1308a025f ("crypto: arm/curve25519 - wire up NEON implementation")
> Link: https://github.com/ClangBuiltLinux/continuous-integration2/issues/118
> Reported-by: Arnd Bergmann <arnd@arndb.de>
> Suggested-by: Arnd Bergmann <arnd@arndb.de>
> Suggested-by: Jessica Clarke <jrtc27@jrtc27.com>
> Signed-off-by: Nathan Chancellor <nathan@kernel.org>

Great work tracking down that Debian was carrying patches! Thank you!
I've run this through the same 3 assemblers.

Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
Tested-by: Nick Desaulniers <ndesaulniers@google.com>

> ---
>  arch/arm/crypto/curve25519-core.S | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/arch/arm/crypto/curve25519-core.S b/arch/arm/crypto/curve25519-core.S
> index be18af52e7dc..b697fa5d059a 100644
> --- a/arch/arm/crypto/curve25519-core.S
> +++ b/arch/arm/crypto/curve25519-core.S
> @@ -10,8 +10,8 @@
>  #include <linux/linkage.h>
>
>  .text
> -.fpu neon
>  .arch armv7-a
> +.fpu neon
>  .align 4
>
>  ENTRY(curve25519_neon)
>
> base-commit: e49d033bddf5b565044e2abe4241353959bc9120
> --
> 2.31.1.189.g2e36527f23
>


-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdnTFXPy29L5JhcMBJAP4STfZUMn6739Mc4J_2Qwu3efBw%40mail.gmail.com.
