Return-Path: <clang-built-linux+bncBDYJPJO25UGBB2V74TZQKGQEIZ6MIAI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb39.google.com (mail-yb1-xb39.google.com [IPv6:2607:f8b0:4864:20::b39])
	by mail.lfdr.de (Postfix) with ESMTPS id E4C4A18FFB0
	for <lists+clang-built-linux@lfdr.de>; Mon, 23 Mar 2020 21:45:31 +0100 (CET)
Received: by mail-yb1-xb39.google.com with SMTP id r1sf17055947ybf.2
        for <lists+clang-built-linux@lfdr.de>; Mon, 23 Mar 2020 13:45:31 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1584996331; cv=pass;
        d=google.com; s=arc-20160816;
        b=RgzTgWjrMiTMG4jXYOKeKSPIghaDxXMagIDolprQERG/RpN77hI13o0/IpNcI3HFrr
         a949ozjCOb3QyBIoLhaVkaEQaXYFHRX8/D6tClozkf0fK/K9aOYiBP1WuDBxOGc1lGXQ
         AQDbywdMXKCL5l4NV70Dqp4y607QaO2gtbzyxl1Kkp6PpXoW3hG3mqMLsCxeFREDCIYN
         SqewRSOptl9PKj+TXfFfKfoyxxZkP6kXS5v0p7PGwB++fkPm6Jv/2xLZypBY4aTav9iU
         PfGAPO3TiyxwsYuynby8Pz7RhQH6tETQJdcJZhYLOx80uSS9lclCYs2OG0YY8Y22fcDw
         QSew==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=9dD9UYtxPmGgqZVfrl/goTSddla6asQlJZK/e3Zw/g4=;
        b=bJsOgCjWiS4qnbefkkrxkEiIjCGVdQGRjKF9kVh/t/jncaIFK6HY1X5J2QYKde9lMR
         FgM28qsgsniegdZlYMmYxKoeT4o85KA2eIRtTQHCnxvniNNADdfr/wIMqcUnrnMfP69p
         g4prs690dt1qqFibu3vws0Lnmz36CTBE4kyuO9JkhUsjeUv5uLuTHS44jPEnzGl1FRry
         IIg8B8IOvIoofKmO62JzoYb+5pfgAJJekQwLuRSQuQ/JdjjC/puG/c3yu85s+O7xI3Z5
         RmgfxOtCAl3MtBEZftAK6GaXqGGS4qJ0NshpT83yJepz1hLQwqJj3sc632nXzMOnGTnD
         cmDw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=TigBIbf7;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::541 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=9dD9UYtxPmGgqZVfrl/goTSddla6asQlJZK/e3Zw/g4=;
        b=cUfFq/72WlnLv8shVmtL17Y1WUPoTEtaEDX4TG9muffqShYTzDVftbJtujtrLVZ2dR
         9jGY7Jen78qz5MqaSQX2EwKV8vuRXLTl0Ixd5Q8uckBVqeJAnLexo9o88HfwjftMoasR
         QYQ+40BV0kWVbBiSaGcYolL9qDqXqN8h4+woXN3U+yTzhsWRAoOjq3BxtzH1+5VlCLnJ
         kxzkvlcSvwrNd7lewyW21xZx0oUlDldvmhphrZlq8re2i/PIvtIZlUJEKJ9dLOGvVr5t
         fLXG+iU6uYe0Qf20Xn47B1G0o4F8cs+Ll1adZp7pg7pNBHKoQORuJFYuQU7e9p5vCM5x
         vSSw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=9dD9UYtxPmGgqZVfrl/goTSddla6asQlJZK/e3Zw/g4=;
        b=eYax1RUxa9T5a75o8sSQNrZn+T6V1g+/D0rvAA0g7wVKAyKqxy6i68idttY2O6xpCS
         A8TNzWZdZ55TazBZtRTZnxuBGQBUDLv+l2BJR8YkNoiF7QgFjldGyUgB4fJYrw6VTrA9
         Cqg9TCGAOaDS3V1oiGMIyxirRI3zUSXPhpKbV8OpvUvbXqvdqHyC47x65A4J6w0ZOdmI
         mvUNkSq99wxwStVCRIh/2YMlt3KAXpA5hhsdFa0szbZS4LWFNWxswQFxDZJIqKhkj8gX
         zhG2Qo3STdXRiMsXPIXRl1O/jtsVaH5Wu+B0TKtdcycCSeS14x7XmsBAKI5/0elfWYNE
         xLqA==
X-Gm-Message-State: ANhLgQ0CxTOcnJbrzqDxdKhnsxvB3z8XTsyZaKpvZDbWZlp/DcmgqoQb
	KlDygF2jG/+Aiw2B5bHkzKY=
X-Google-Smtp-Source: ADFU+vuEH7aFTbsXLiDRAn/tqWe3qT7W5ap1gUAuBud84QQIBZOQrrb/f2dh/NpMtr5dfKSmBE/Q4w==
X-Received: by 2002:a25:b88b:: with SMTP id w11mr38561483ybj.420.1584996330953;
        Mon, 23 Mar 2020 13:45:30 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:aa0c:: with SMTP id s12ls5490798ybi.6.gmail; Mon, 23 Mar
 2020 13:45:30 -0700 (PDT)
X-Received: by 2002:a25:aa44:: with SMTP id s62mr16475864ybi.442.1584996330592;
        Mon, 23 Mar 2020 13:45:30 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584996330; cv=none;
        d=google.com; s=arc-20160816;
        b=ut5B6SSESR20ICuiIi5SV/nltbnp3ZnwUfPy1BjRmIt0mMcRCVthZ4FvYGKn6RU3fd
         G7+oGUgclsmqDKv//ZGhjhEjOlb5GfT8cdkiZuh6YWtFjAzwsc/LTk4D7VQrg0HG9hRd
         G8DO8No1RF1iCpNs+Fl2Lmw351Hg6+3bD2zOda9RHSOta8HuircFmXit1SrvqqKUaC+e
         M8xXEba9r+lVGRsPfJQvY3cNqb9Fr4AvLzL6AgBo0cyZV4P4OE7Zho8+6AElnxkf56Ct
         +vWlgEKpB+kKp4OLQ6bCsqzinEyM0zx/wNvaqssPEbt+gf+UwDiNkk5lw2l0c4D9Et2b
         zYDQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=GfjxddVFwXVhr+lvz5y2NmQxJSLFPqj/SiFXB2tHtT0=;
        b=XQJjtd8yuSIgpQP35wnsapoWH8HL5bY4AONU385DED6QkcLF0CiRuUbEyT8lM3vQab
         rm8Xlf8hiFg7QT6F0o2sK6tWl/v+nZwCdzYitqXp1miD3cwgyqIeaR2qQ5C/V/FwyuB0
         D7W+L4UJLOw3N22zWQcWbo0dtl1IsHE/Zfl4OrZcYiIpILPO/iwFOLPp/4WHKQ1bVd7S
         U6Zf5sGPS5iU9WrmgaW3Sg3+mUpwmZXFeH4oA5hd4WCn5aiBcveYfYwhflNScqL9wn1g
         82lcRxTpKh2LwPWvNKkk282I3ZfBm3z7sme7mZtoHHCTtbzlUwPSe2ab47CoJAe4YMNF
         gmPw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=TigBIbf7;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::541 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x541.google.com (mail-pg1-x541.google.com. [2607:f8b0:4864:20::541])
        by gmr-mx.google.com with ESMTPS id l141si696875ybl.3.2020.03.23.13.45.30
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 23 Mar 2020 13:45:30 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::541 as permitted sender) client-ip=2607:f8b0:4864:20::541;
Received: by mail-pg1-x541.google.com with SMTP id j29so939034pgl.3
        for <clang-built-linux@googlegroups.com>; Mon, 23 Mar 2020 13:45:30 -0700 (PDT)
X-Received: by 2002:a05:6a00:42:: with SMTP id i2mr25856528pfk.108.1584996329288;
 Mon, 23 Mar 2020 13:45:29 -0700 (PDT)
MIME-Version: 1.0
References: <20200323020844.17064-1-masahiroy@kernel.org> <20200323020844.17064-4-masahiroy@kernel.org>
In-Reply-To: <20200323020844.17064-4-masahiroy@kernel.org>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 23 Mar 2020 13:45:17 -0700
Message-ID: <CAKwvOd=V=HF3RBP5bMwgnAZsPg7nVewZiMQ7F3bh=D6_5ejBaQ@mail.gmail.com>
Subject: Re: [PATCH 3/7] x86: remove always-defined CONFIG_AS_CFI_SIGNAL_FRAME
To: Masahiro Yamada <masahiroy@kernel.org>
Cc: "maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>, Ingo Molnar <mingo@kernel.org>, 
	Thomas Gleixner <tglx@linutronix.de>, Borislav Petkov <bp@alien8.de>, "H . Peter Anvin" <hpa@zytor.com>, 
	LKML <linux-kernel@vger.kernel.org>, "Jason A . Donenfeld" <Jason@zx2c4.com>, 
	Ingo Molnar <mingo@redhat.com>, clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=TigBIbf7;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::541
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

On Sun, Mar 22, 2020 at 7:09 PM Masahiro Yamada <masahiroy@kernel.org> wrote:
>
> CONFIG_AS_CFI_SIGNAL_FRAME was introduced by commit adf1423698f0
> ("[PATCH] i386/x86-64: Work around gcc bug with noreturn functions
> in unwinder").
>
> We raise the minimal supported binutils version from time to time.
> The last bump was commit 1fb12b35e5ff ("kbuild: Raise the minimum
> required binutils version to 2.21").
>
> I confirmed the code in $(call as-instr,...) can be assembled by the
> binutils 2.21 assembler and also by LLVM integrated assembler.
>
> Remove CONFIG_AS_CFI_SIGNAL_FRAME, which is always defined.

grepping for CONFIG_AS_CFI_SIGNAL_FRAME, I see another use in
arch/arc/kernel/unwind.c.  This change will cause inclusion of
additional code there, whereas for binutils produced within the past
ten years, there was not.

>
> Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
> ---
>
>  arch/x86/Makefile             | 6 ++----
>  arch/x86/include/asm/dwarf2.h | 5 -----
>  2 files changed, 2 insertions(+), 9 deletions(-)
>
> diff --git a/arch/x86/Makefile b/arch/x86/Makefile
> index 72f8f744ebd7..dd275008fc59 100644
> --- a/arch/x86/Makefile
> +++ b/arch/x86/Makefile
> @@ -177,8 +177,6 @@ ifeq ($(ACCUMULATE_OUTGOING_ARGS), 1)
>         KBUILD_CFLAGS += $(call cc-option,-maccumulate-outgoing-args,)
>  endif
>
> -# is .cfi_signal_frame supported too?
> -cfi-sigframe := $(call as-instr,.cfi_startproc\n.cfi_signal_frame\n.cfi_endproc,-DCONFIG_AS_CFI_SIGNAL_FRAME=1)
>  cfi-sections := $(call as-instr,.cfi_sections .debug_frame,-DCONFIG_AS_CFI_SECTIONS=1)
>
>  # does binutils support specific instructions?
> @@ -190,8 +188,8 @@ sha1_ni_instr :=$(call as-instr,sha1msg1 %xmm0$(comma)%xmm1,-DCONFIG_AS_SHA1_NI=
>  sha256_ni_instr :=$(call as-instr,sha256msg1 %xmm0$(comma)%xmm1,-DCONFIG_AS_SHA256_NI=1)
>  adx_instr := $(call as-instr,adox %r10$(comma)%r10,-DCONFIG_AS_ADX=1)
>
> -KBUILD_AFLAGS += $(cfi-sigframe) $(cfi-sections) $(asinstr) $(avx_instr) $(avx2_instr) $(avx512_instr) $(sha1_ni_instr) $(sha256_ni_instr) $(adx_instr)
> -KBUILD_CFLAGS += $(cfi-sigframe) $(cfi-sections) $(asinstr) $(avx_instr) $(avx2_instr) $(avx512_instr) $(sha1_ni_instr) $(sha256_ni_instr) $(adx_instr)
> +KBUILD_AFLAGS += $(cfi-sections) $(asinstr) $(avx_instr) $(avx2_instr) $(avx512_instr) $(sha1_ni_instr) $(sha256_ni_instr) $(adx_instr)
> +KBUILD_CFLAGS += $(cfi-sections) $(asinstr) $(avx_instr) $(avx2_instr) $(avx512_instr) $(sha1_ni_instr) $(sha256_ni_instr) $(adx_instr)
>
>  KBUILD_LDFLAGS := -m elf_$(UTS_MACHINE)
>
> diff --git a/arch/x86/include/asm/dwarf2.h b/arch/x86/include/asm/dwarf2.h
> index 90807583cad7..d6697aab5706 100644
> --- a/arch/x86/include/asm/dwarf2.h
> +++ b/arch/x86/include/asm/dwarf2.h
> @@ -20,12 +20,7 @@
>  #define CFI_RESTORE_STATE      .cfi_restore_state
>  #define CFI_UNDEFINED          .cfi_undefined
>  #define CFI_ESCAPE             .cfi_escape
> -
> -#ifdef CONFIG_AS_CFI_SIGNAL_FRAME
>  #define CFI_SIGNAL_FRAME       .cfi_signal_frame

Has no uses in the kernel.

> -#else
> -#define CFI_SIGNAL_FRAME
> -#endif
>
>  #if defined(CONFIG_AS_CFI_SECTIONS)
>  #ifndef BUILD_VDSO
> --
> 2.17.1
>
> --

-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOd%3DV%3DHF3RBP5bMwgnAZsPg7nVewZiMQ7F3bh%3DD6_5ejBaQ%40mail.gmail.com.
