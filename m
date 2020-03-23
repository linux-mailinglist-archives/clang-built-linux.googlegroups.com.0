Return-Path: <clang-built-linux+bncBDYJPJO25UGBBNF44TZQKGQEY4543VQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x837.google.com (mail-qt1-x837.google.com [IPv6:2607:f8b0:4864:20::837])
	by mail.lfdr.de (Postfix) with ESMTPS id 92D4618FFA7
	for <lists+clang-built-linux@lfdr.de>; Mon, 23 Mar 2020 21:38:13 +0100 (CET)
Received: by mail-qt1-x837.google.com with SMTP id l29sf14216244qtu.11
        for <lists+clang-built-linux@lfdr.de>; Mon, 23 Mar 2020 13:38:13 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1584995892; cv=pass;
        d=google.com; s=arc-20160816;
        b=XkF5GuM4NAdbefh5y1awnV7si2jZzr8gab8g3XOyhQ3S1D5ttcZ7vn+vTZFzmUXS5g
         dWTwOVi2xPXYIYPsVqrmBNOfjSh5muIy2+3q0besGEGa4nhb2vQxHFxNCKlWX8wjvzhP
         8mKATZZpnvS5gXyBfXxFzM2+X1zvnUaC/1/uVgwHp1RJv2qWXW6FgOl7iCXJPG1/ieP6
         qybufqjQ4+suo+tDV+a9W21nM6eqcuEXEzMwoD4rcIvl46e4UKS+EfjNqDJbmxi/Fm/S
         XqbLHwkWsygE4VRVa3ArXylGDbryJ44FQMn9eta1jedCkVRU0O0RT0XNPKGzUpfD0fn2
         31cA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=1GPoyAPWBmfU/rX1X2AXCGEXDcjHMshzYqqqPUTotAI=;
        b=kWAhybIn9/bul4ISJI0nPLwRITau1Gf7gJTKAga2eqb9gj04f9C67e9xh47SVimI8O
         RNPs6ZzLFrh+a0E0bF0Aeu6Z9lLgjQ6H8XvwdZRtrzb1jCrMQlAaGJud35ALDdgWT8Mm
         uHwcl6enAkpkSsQVtB00NCWY+hsTtQjzYO9SfcinbCdwuBGir8bi6vtISb+pB5QyQf3O
         cmshm7br0/2ycXgsJrSDlYLMQPFzpMn7Tjc3Airom9Y8p/dP7EQ27ynF2Xt1oMDeC32q
         UTr+fjm00ks/rmjCkr99YcI9hC+y/C3FDyo12A9QGY4sgyTSKDnQVSykbp8AKmzYqfkN
         NSaA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=K+DhuU8d;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::543 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=1GPoyAPWBmfU/rX1X2AXCGEXDcjHMshzYqqqPUTotAI=;
        b=dr22C8ZfJdy0+gQhS0EUqzgn6/cKnPbIbKiduKj8QpxVCRlIzA/nFeaGSuXrt/BOXA
         CxMaqwwik4zTWB+5kPpOvY59lP0JFql3jMNkprKF2+G/P2THSDVwUrNp9LnU1ikFR6zb
         FesIy9C3DXUSuuQcFaMzyOJJYRb+rvVZkLgSpc57SOUpvCz/S5QMUKR25Ij7XLTNrgsd
         EdBj0yjAg650PzzuljRqiVUFiF63uKMAAkWg54kqAHBSOksP5Z4J/yFACUrMHh7Z48HY
         IsOl2uAiD6c4p0UbjNEx3v80ErORYHRauFQ5V5NSTYGeSlCoVFI1VUvpTXvxHcrHjDrn
         I1QA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=1GPoyAPWBmfU/rX1X2AXCGEXDcjHMshzYqqqPUTotAI=;
        b=nDDT/iADVjbyepGIzG1RYDZx2i2KIu65kCdbRftZSCYGpVwFTvQI3PxbKnaycTZi7v
         D95e/QHCFBRtQT1zryQ64vnB8qe3Utp6jddMcleFixmSDnTN6qlnT9/rKg+mQ54AUcWZ
         dLRDk+Adpn5CObFt0bhjM48nlPvzqEjK129bdzPPsbAy9EZc7uiUWe8AumqjZHCCNtIU
         dv2V53qFBJcTEtZfDsJiJORvJoRx+hloUYNsKhil7NkJI64l2i2oon4VPQsbMa4wB4AV
         GY6kfACUs7+W7pt4mUmFS2fsIGXuo9R2kVp+kN2/QfAUp7Jxhz8FE+rnysLVyVhs8e2O
         A4tA==
X-Gm-Message-State: ANhLgQ1D8UfN8nFcw8J2fzsMg0P/tM8j/aEihi0q1umhcnB1RU4l2Kl1
	Zbu2w/MjzYJ+VF72AA25BNw=
X-Google-Smtp-Source: ADFU+vva6OIbLHiyeRvN6Vy7au/LuCOknMYWQCEnNAL4T22SPw9SZ7tHI4fmsrMSFYRTRKsF7wlBKQ==
X-Received: by 2002:a37:2c45:: with SMTP id s66mr23043523qkh.268.1584995892183;
        Mon, 23 Mar 2020 13:38:12 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a37:6714:: with SMTP id b20ls684917qkc.5.gmail; Mon, 23 Mar
 2020 13:38:11 -0700 (PDT)
X-Received: by 2002:a37:85c2:: with SMTP id h185mr22368449qkd.446.1584995891782;
        Mon, 23 Mar 2020 13:38:11 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584995891; cv=none;
        d=google.com; s=arc-20160816;
        b=Rox4wMo3Xocl3mgqeUnN8JGzOlIPsAxWNpuhfhh3C5SupGm/MItdY5GpuArXkIJz72
         tAcYURZ8VKn/+7ouDEuXt9Kv2uJtvcFwWnaHRZL3gTtI4xgtvzOsZPrQrfh+B4jzEuOk
         pBp5peTGhZhVJlecIjthpUndK/518PQJ8x5qAzELDzAWCTtt2naUre8GZNanljkrN2HZ
         zSAQmQ+kKlcA07FOSewVJ2OOS35aT3bw7eMdqReRimIzrW+U/WXJfX7sqPKXiIWDw6no
         3r8Mzw38RdbVEsufIoDrLiTA1WdrOys0YOt3mHIi9/8oj8Ot5emaHJJWa7ZYnVpq3NHN
         XbWA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=R6pN4SWBJOjZo3UJffcVW9yRBd1JF8EC9ixzWT1pjmw=;
        b=T1dYhQCyGzwbyNT3ZaHjjx8NEXyJ6PprxpXP+Uv59sIuugB+ELwuHUl/3GSLvKaU7w
         j06v94s78fwPz5gTFhisdO4bP2FhvvhaZsHTLQhKub4jTw0vPxbVOV0OgkMmMGBQLaYw
         CHdK2t2szJnRjXRr+cKhiPl59B/vvqpjUHbasDL2NVYgyqt4M/EE4gg1ZmrTzO6xXS4m
         Yz827ZxE5xMCHgnN3i6IghzNwYZ/Ettfsa8EIvrTMn8gbZ5auDpgYWXqK/j2x4TBYeYY
         uPoVSBO87CAtEmK01QmBW2Ydr23fijdeo96LZGRysnqLVqKAgTwtK41akK0csSOCCLoJ
         RkfA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=K+DhuU8d;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::543 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x543.google.com (mail-pg1-x543.google.com. [2607:f8b0:4864:20::543])
        by gmr-mx.google.com with ESMTPS id j56si797662qta.0.2020.03.23.13.38.11
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 23 Mar 2020 13:38:11 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::543 as permitted sender) client-ip=2607:f8b0:4864:20::543;
Received: by mail-pg1-x543.google.com with SMTP id o26so1294017pgc.12
        for <clang-built-linux@googlegroups.com>; Mon, 23 Mar 2020 13:38:11 -0700 (PDT)
X-Received: by 2002:a63:a34d:: with SMTP id v13mr2687909pgn.10.1584995890392;
 Mon, 23 Mar 2020 13:38:10 -0700 (PDT)
MIME-Version: 1.0
References: <20200323020844.17064-1-masahiroy@kernel.org> <20200323020844.17064-3-masahiroy@kernel.org>
In-Reply-To: <20200323020844.17064-3-masahiroy@kernel.org>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 23 Mar 2020 13:37:57 -0700
Message-ID: <CAKwvOd=at2WhPCmgChSTPm1Du6nD09N=JSUmKU2r86+nVYRrLA@mail.gmail.com>
Subject: Re: [PATCH 2/7] x86: remove always-defined CONFIG_AS_CFI
To: Masahiro Yamada <masahiroy@kernel.org>
Cc: "maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>, Ingo Molnar <mingo@kernel.org>, 
	Thomas Gleixner <tglx@linutronix.de>, Borislav Petkov <bp@alien8.de>, "H . Peter Anvin" <hpa@zytor.com>, 
	LKML <linux-kernel@vger.kernel.org>, "Jason A . Donenfeld" <Jason@zx2c4.com>, 
	Ingo Molnar <mingo@redhat.com>, clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=K+DhuU8d;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::543
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
> CONFIG_AS_CFI was introduced by commit e2414910f212 ("[PATCH] x86:
> Detect CFI support in the assembler at runtime"), and extended by
> commit f0f12d85af85 ("x86_64: Check for .cfi_rel_offset in CFI probe").
>
> We raise the minimal supported binutils version from time to time.
> The last bump was commit 1fb12b35e5ff ("kbuild: Raise the minimum
> required binutils version to 2.21").

Yep, looks like 2.21 was released in 2010, while CFI_rel_offset was
added to binutils back in 2003.  LGTM, thanks for the patch (2 less
assembler invocations during a build).
Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>

>
> I confirmed the code in $(call as-instr,...) can be assembled by the
> binutils 2.21 assembler and also by LLVM integrated assembler.
>
> Remove CONFIG_AS_CFI, which is always defined.
>
> Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
> ---
>
> If this series is OK, we can do follwup cleanups.
> We can hard-code the assembler code, and delete CFI_* macros entirely.
>
>
>  arch/x86/Makefile             | 10 ++--------
>  arch/x86/include/asm/dwarf2.h | 36 -----------------------------------
>  2 files changed, 2 insertions(+), 44 deletions(-)
>
> diff --git a/arch/x86/Makefile b/arch/x86/Makefile
> index 513a55562d75..72f8f744ebd7 100644
> --- a/arch/x86/Makefile
> +++ b/arch/x86/Makefile
> @@ -177,12 +177,6 @@ ifeq ($(ACCUMULATE_OUTGOING_ARGS), 1)
>         KBUILD_CFLAGS += $(call cc-option,-maccumulate-outgoing-args,)
>  endif
>
> -# Stackpointer is addressed different for 32 bit and 64 bit x86
> -sp-$(CONFIG_X86_32) := esp
> -sp-$(CONFIG_X86_64) := rsp
> -
> -# do binutils support CFI?
> -cfi := $(call as-instr,.cfi_startproc\n.cfi_rel_offset $(sp-y)$(comma)0\n.cfi_endproc,-DCONFIG_AS_CFI=1)
>  # is .cfi_signal_frame supported too?
>  cfi-sigframe := $(call as-instr,.cfi_startproc\n.cfi_signal_frame\n.cfi_endproc,-DCONFIG_AS_CFI_SIGNAL_FRAME=1)
>  cfi-sections := $(call as-instr,.cfi_sections .debug_frame,-DCONFIG_AS_CFI_SECTIONS=1)
> @@ -196,8 +190,8 @@ sha1_ni_instr :=$(call as-instr,sha1msg1 %xmm0$(comma)%xmm1,-DCONFIG_AS_SHA1_NI=
>  sha256_ni_instr :=$(call as-instr,sha256msg1 %xmm0$(comma)%xmm1,-DCONFIG_AS_SHA256_NI=1)
>  adx_instr := $(call as-instr,adox %r10$(comma)%r10,-DCONFIG_AS_ADX=1)
>
> -KBUILD_AFLAGS += $(cfi) $(cfi-sigframe) $(cfi-sections) $(asinstr) $(avx_instr) $(avx2_instr) $(avx512_instr) $(sha1_ni_instr) $(sha256_ni_instr) $(adx_instr)
> -KBUILD_CFLAGS += $(cfi) $(cfi-sigframe) $(cfi-sections) $(asinstr) $(avx_instr) $(avx2_instr) $(avx512_instr) $(sha1_ni_instr) $(sha256_ni_instr) $(adx_instr)
> +KBUILD_AFLAGS += $(cfi-sigframe) $(cfi-sections) $(asinstr) $(avx_instr) $(avx2_instr) $(avx512_instr) $(sha1_ni_instr) $(sha256_ni_instr) $(adx_instr)
> +KBUILD_CFLAGS += $(cfi-sigframe) $(cfi-sections) $(asinstr) $(avx_instr) $(avx2_instr) $(avx512_instr) $(sha1_ni_instr) $(sha256_ni_instr) $(adx_instr)
>
>  KBUILD_LDFLAGS := -m elf_$(UTS_MACHINE)
>
> diff --git a/arch/x86/include/asm/dwarf2.h b/arch/x86/include/asm/dwarf2.h
> index 5a0502212bc5..90807583cad7 100644
> --- a/arch/x86/include/asm/dwarf2.h
> +++ b/arch/x86/include/asm/dwarf2.h
> @@ -6,15 +6,6 @@
>  #warning "asm/dwarf2.h should be only included in pure assembly files"
>  #endif
>
> -/*
> - * Macros for dwarf2 CFI unwind table entries.
> - * See "as.info" for details on these pseudo ops. Unfortunately
> - * they are only supported in very new binutils, so define them
> - * away for older version.
> - */
> -
> -#ifdef CONFIG_AS_CFI
> -
>  #define CFI_STARTPROC          .cfi_startproc
>  #define CFI_ENDPROC            .cfi_endproc
>  #define CFI_DEF_CFA            .cfi_def_cfa
> @@ -55,31 +46,4 @@
>  #endif
>  #endif
>
> -#else
> -
> -/*
> - * Due to the structure of pre-exisiting code, don't use assembler line
> - * comment character # to ignore the arguments. Instead, use a dummy macro.
> - */
> -.macro cfi_ignore a=0, b=0, c=0, d=0
> -.endm
> -
> -#define CFI_STARTPROC          cfi_ignore
> -#define CFI_ENDPROC            cfi_ignore
> -#define CFI_DEF_CFA            cfi_ignore
> -#define CFI_DEF_CFA_REGISTER   cfi_ignore
> -#define CFI_DEF_CFA_OFFSET     cfi_ignore
> -#define CFI_ADJUST_CFA_OFFSET  cfi_ignore
> -#define CFI_OFFSET             cfi_ignore
> -#define CFI_REL_OFFSET         cfi_ignore
> -#define CFI_REGISTER           cfi_ignore
> -#define CFI_RESTORE            cfi_ignore
> -#define CFI_REMEMBER_STATE     cfi_ignore
> -#define CFI_RESTORE_STATE      cfi_ignore
> -#define CFI_UNDEFINED          cfi_ignore
> -#define CFI_ESCAPE             cfi_ignore
> -#define CFI_SIGNAL_FRAME       cfi_ignore
> -
> -#endif
> -
>  #endif /* _ASM_X86_DWARF2_H */
> --
> 2.17.1
>
> --
> You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200323020844.17064-3-masahiroy%40kernel.org.



-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOd%3Dat2WhPCmgChSTPm1Du6nD09N%3DJSUmKU2r86%2BnVYRrLA%40mail.gmail.com.
