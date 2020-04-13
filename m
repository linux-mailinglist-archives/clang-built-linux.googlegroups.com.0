Return-Path: <clang-built-linux+bncBDYJPJO25UGBB5WU2L2AKGQEONH3R6Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3c.google.com (mail-yb1-xb3c.google.com [IPv6:2607:f8b0:4864:20::b3c])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FBF51A6BE5
	for <lists+clang-built-linux@lfdr.de>; Mon, 13 Apr 2020 20:07:51 +0200 (CEST)
Received: by mail-yb1-xb3c.google.com with SMTP id j23sf5555286ybg.1
        for <lists+clang-built-linux@lfdr.de>; Mon, 13 Apr 2020 11:07:51 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1586801270; cv=pass;
        d=google.com; s=arc-20160816;
        b=zH9n5iPfJwf6E/iu5AXjKZ6iDHI2t4y293emKxyEcnMMu+6yzzoDufBrH7K92/okFk
         3+PaS7wKLGehuUMSVkCN+JmT51t+Jyiza3USbIKYd7yxb4we1wac8CYvmPFxMId4T8wC
         ymjofuqIgiFysjXPPuJny3gWdXkw+idMNxqwcvafdecNORf1aNrmYUY/z/eaSJb2ToJN
         4DrrjIgKv8fxmGUlaSYwZQx5H7BZL9xriESi9MEg+et0fRvw0/q93iUDVkUAjCLBo8mQ
         W8jwBw9Nn5/FKmDKykXOTUY2uG80vFzJHOrQV/Jg1KbzEPgqW3UsAsbeR2NdBhQSPcsB
         L+KQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=YdRcE3r4jOwO1Kkmh54eQYSXmxoju4oN2JngwBLdMxs=;
        b=Qhx5bea5YFZv+/pbZWihRboiOMld6PEOF4e0qiwS8KEbCDn+0e1MVWiwYDvASKHqWs
         2UC1gcPwOYassowrerfcR74K9I+qWu1w0+0wV96YAnSi62XigN5VxHE1RuSZBatf09xh
         8z6INffwZD1j7tgqb8zkl0x+ZSmyTg8tausom+Wm/wUDfzva3H9TsfjVS+Q7Gc6olkEa
         d1Ikfh4BzDJZtcckrhBtVQEyBDT3VrQ3D7xS8QS9WwvcuQvJhywUFQN9rwH18zEp2gSd
         yzGeGjmnQDVNdhNqk/cfIDkdYMtq2rYe+Qp7P7Rt9GYRDQ/GQn5Up2blkkSMltEf6wzc
         LnZA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=MsUxuzO8;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=YdRcE3r4jOwO1Kkmh54eQYSXmxoju4oN2JngwBLdMxs=;
        b=Qd6+sicnDkC62KUcddqnGIt28dxzxpXYh3UzGGIFp79lgX0tPy/yKOnaz0bMqYD8UJ
         4SnwSdTIGdj8s+bzjF9dHKv+Im//X515PaG+wdDwh4tG67kbF3CMIEyLOBIaDVqVo/4L
         r9DIwgsNRY2yHmfJxLN5dVH5CQ3MjgJX14eafkAeRnVEjLLkNeHu1kw/ZVVEOzNBzdGE
         mJT8WlPhM7FckL+Y7pBHCgMhKfNhtyUiBRn/BXT8lSViQr1WT7IQuyjauxhcGCj1S6MW
         qCt4CzC4jhMm9HOV9Ra+VW9z2lCBO8U6Z/UNkSkHeMTSIOvBV8YbZUkGHlmtMeVv5KHd
         pFKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=YdRcE3r4jOwO1Kkmh54eQYSXmxoju4oN2JngwBLdMxs=;
        b=AqRGeAOMPtbI2TwQDhJau3/m2Ks3GugePXILeR3p/H3C3C1GTE/SJeKoKMNBYzej9W
         OLtyAW7XGqOBSVmmXn88aLOfoFCkWlxWQ2YqhImMFpu3NjkyBr3D4w8vJDg8Ivh1MsoM
         Wf7psIMKicUfTez6xJVzRG1M1wnMwxFcLuPtwRqymQQhQwt4vcOwU1ZchJlJm+QZavmg
         HYrB+4AWwdhd+uMTxOjzSUIgV/I/6IWpoOdSycQPktf1Vhy7lgADg5MkeJkPaIwS+laC
         kzue6P4YxzQ4UGVnNesd5FBWMSMH8ZyBXjhU+Ph5/lmfP2KG6UvZRAMMzCZ6CxA0QQ0p
         2KPg==
X-Gm-Message-State: AGi0PuboX5D27Q7e2eFAZNdXPuBxxQInifusZin4YsOpTDhePqX5146s
	FcVRX8PBP5u1lHGKX9PxvuA=
X-Google-Smtp-Source: APiQypIiYnaMkQQ5AtYlVzan/xB1kDpXo3qlNiK3PT5X0fHNa/EquiXA4JSG0HU2L9hBueSf1DV9Yg==
X-Received: by 2002:a25:cf12:: with SMTP id f18mr27418823ybg.167.1586801270466;
        Mon, 13 Apr 2020 11:07:50 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:dcf:: with SMTP id 198ls307305ybn.8.gmail; Mon, 13 Apr
 2020 11:07:50 -0700 (PDT)
X-Received: by 2002:a25:afcc:: with SMTP id d12mr29122603ybj.243.1586801269908;
        Mon, 13 Apr 2020 11:07:49 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1586801269; cv=none;
        d=google.com; s=arc-20160816;
        b=TP4nUbJ/ybkVlPirmD9kPKSh/Iw16ad+aNqSDVt1oRu8V5uhPmnlAogHcKnPDY7mib
         B3PTFM+jfNNYVLQtdXdJoALotlGCUIxvkKYXQY62R1j/Gca4p3qMV8h8N54FV4d6OE/5
         egd9PSyqvQRpPARaHJpTjw0J/c9Ei59SqZw44vhAn0V+VSeu34z8wbZka9Aqwi0HAOdF
         px3gW/shA4jobIVvhgTgMKH07RharMVVzFZwSxK5T2RekPwaOmne6tppymN5tKyx7M7v
         HuT3VJ5HbF2DI4MyENE4zGE8yvs84gEP82wU3yuPhtaWnbcuCGCaSKso4H7CKisCO6In
         gzpg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=XGx7qFwHLiVd4V1d68uSwgIpjNRKonWDkoXdUUpJdmU=;
        b=m2pHMNEzthlfnePJbTJtGSpDJPLkDMmbc640l0Wceyc3pkuPzKe3SOpmiAmJbLBp63
         XF3jjb4ZHR6yoyXNr/cQL7UOyn4+FxDG/8PaLTfDxEYk2GR9xAfCqbLillVg7hd2grgz
         jwKlla+fzj4sruXIllCXfiKX5LR5ayJTT0pQThm/NfVRv9vIlwFzHnNGlM+miL+9gtHs
         DJQMvX8REcN67PM4R088oiyI+BYvYQvJ0rw93ULKMZ7vQP9Kkj44Ub3zJKU4PuvvsFp6
         iXwdQvuB+SXVBS0md+LVsX/l38dFmHXJIqTPIaDNM9gNIDYIhEt4dGftggKOcH5zQ5Af
         O/rw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=MsUxuzO8;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x542.google.com (mail-pg1-x542.google.com. [2607:f8b0:4864:20::542])
        by gmr-mx.google.com with ESMTPS id d72si690854ybh.5.2020.04.13.11.07.49
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 13 Apr 2020 11:07:49 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::542 as permitted sender) client-ip=2607:f8b0:4864:20::542;
Received: by mail-pg1-x542.google.com with SMTP id g32so4793385pgb.6
        for <clang-built-linux@googlegroups.com>; Mon, 13 Apr 2020 11:07:49 -0700 (PDT)
X-Received: by 2002:a63:6604:: with SMTP id a4mr17243102pgc.381.1586801268806;
 Mon, 13 Apr 2020 11:07:48 -0700 (PDT)
MIME-Version: 1.0
References: <20200413033811.75074-1-maskray@google.com>
In-Reply-To: <20200413033811.75074-1-maskray@google.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 13 Apr 2020 11:07:37 -0700
Message-ID: <CAKwvOdkwpAJp2aw+PFybi11rjxvk5tc5zOhaFw9=Xim0k73DAQ@mail.gmail.com>
Subject: Re: [PATCH] arm64: Delete the space separator in __emit_inst
To: Fangrui Song <maskray@google.com>
Cc: Linux ARM <linux-arm-kernel@lists.infradead.org>, 
	LKML <linux-kernel@vger.kernel.org>, Catalin Marinas <catalin.marinas@arm.com>, 
	Will Deacon <will@kernel.org>, Mark Rutland <mark.rutland@arm.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Ilie Halip <ilie.halip@gmail.com>, 
	Jian Cai <jiancai@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=MsUxuzO8;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::542
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

On Sun, Apr 12, 2020 at 8:38 PM 'Fangrui Song' via Clang Built Linux
<clang-built-linux@googlegroups.com> wrote:
>
> Many instances of __emit_inst(x) expand to a directive. In a few places
> it is used as a macro argument, e.g.
>
>   arch/arm64/include/asm/sysreg.h
>   #define __emit_inst(x)                       .inst (x)
>
>   arch/arm64/include/asm/sysreg.h
>   #define SET_PSTATE_PAN(x)            __emit_inst(0xd500401f | PSTATE_PAN | ((!!x) << PSTATE_Imm_shift))
>
>   arch/arm64/kvm/hyp/entry.S
>   ALTERNATIVE(nop, SET_PSTATE_PAN(1), ARM64_HAS_PAN, CONFIG_ARM64_PAN)
>
> Clang integrated assembler parses `.inst (x)` as two arguments passing
> to a macro. We delete the space separator so that `.inst(x)` will be
> parsed as one argument.
>
> Note, GNU as parsing `.inst (x)` as one argument is unintentional (for
> example the x86 backend will parse the construct as two arguments).
> See https://sourceware.org/bugzilla/show_bug.cgi?id=25750#c10

Thanks for the patch and for leading the discussion with the binutils
developers on this curious parsing case.

>
> Link: https://github.com/ClangBuiltLinux/linux/issues/939
> Cc: clang-built-linux@googlegroups.com
> Signed-off-by: Fangrui Song <maskray@google.com>

Shouldn't this have:
Suggested-by: Ilie Halip <ilie.halip@gmail.com>
Since Ilie sugguested this in
https://github.com/ClangBuiltLinux/linux/issues/939#issuecomment-601776123?

> ---
>  arch/arm64/include/asm/sysreg.h | 4 +++-
>  1 file changed, 3 insertions(+), 1 deletion(-)
>
> diff --git a/arch/arm64/include/asm/sysreg.h b/arch/arm64/include/asm/sysreg.h
> index ebc622432831..af21e2ec5e3e 100644
> --- a/arch/arm64/include/asm/sysreg.h
> +++ b/arch/arm64/include/asm/sysreg.h
> @@ -49,7 +49,9 @@
>  #ifndef CONFIG_BROKEN_GAS_INST
>
>  #ifdef __ASSEMBLY__
> -#define __emit_inst(x)                 .inst (x)
> +// The space separator is omitted so that __emit_inst(x) can be parsed as
> +// either a directive or a macro argument.
> +#define __emit_inst(x)                 .inst(x)
>  #else
>  #define __emit_inst(x)                 ".inst " __stringify((x)) "\n\t"

What happens if someone starts using `__emit_inst` from inline
assembly, and passes that subexpression to a macro?  There are no
users today in arch/arm64/, but I think it's better to change both.

With this applied on -next, and testing via:
$ ARCH=arm64 CROSS_COMPILE=aarch64-linux-gnu- make LLVM=1 LLVM_IAS=1
-j71 defconfig
$ qemu-system-aarch64 -kernel arch/arm64/boot/Image.gz -machine virt
-cpu cortex-a57 -nographic --append "console=ttyAMA0" -m 2048 -initrd
<path to my buildroot.cpio>

I was able to build and boot, modulo:
https://github.com/ClangBuiltLinux/linux/issues/988 (new)
https://github.com/ClangBuiltLinux/linux/issues/716
https://github.com/ClangBuiltLinux/linux/issues/510 (more specific to
LLD than AS)
so we're pretty close to being able to assemble an arm64 defconfig with Clang.
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdkwpAJp2aw%2BPFybi11rjxvk5tc5zOhaFw9%3DXim0k73DAQ%40mail.gmail.com.
