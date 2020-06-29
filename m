Return-Path: <clang-built-linux+bncBDYJPJO25UGBBREK5H3QKGQEY6EAV4Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33c.google.com (mail-ot1-x33c.google.com [IPv6:2607:f8b0:4864:20::33c])
	by mail.lfdr.de (Postfix) with ESMTPS id 8708C20D5CC
	for <lists+clang-built-linux@lfdr.de>; Mon, 29 Jun 2020 21:47:17 +0200 (CEST)
Received: by mail-ot1-x33c.google.com with SMTP id z6sf12089958otq.8
        for <lists+clang-built-linux@lfdr.de>; Mon, 29 Jun 2020 12:47:17 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1593460036; cv=pass;
        d=google.com; s=arc-20160816;
        b=GwJB+WhOTyTlxiSrKKXVIpDxtAuP3OEGCAulue0WyTIyNmH64z9nff67BlfnFNG15E
         eNG+eo25Uk4oDuvFjv79BO2YpjlfLeTPMpt8Gi9fdevKs0tpdgDRKtQVjiV0aNghOyhe
         RzqioQLeiNKyvX3jrOEZYphuGX5/xFtRZ13uUwbMwuBkGhNlOdyyJGgegV7CgqGoLW58
         1YAh9/rZjVgz9sXgKIo6XsT1i6Z2/bscq9xt5ZHrEmYQHjlOsYZCh5I5MLPk4288vVie
         J7WmpkfFmeFJCgR5J0WnKeAO1i47BZj256xOqseyTsrgaj5JuNvieW3jUhDmltNNYlkK
         XVrA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=+c3NNZIhqcjk5dCbiVnL6Igi2rmDnyiuzdNPvcSAGok=;
        b=OPe2rrLY18TMYEatATk17NlPEBDQa4zjGOUxLMf6ozhLCLXIu2J1USbxtz+8ZFKqC3
         2/9I3XaKiFh/f2HZ2nwj/SRE7G/GtYucll2JtTCWgNwXFg7ouB0+PhG28NK7w59+oAcp
         APe2JrE5wCMviKVmSp+Q0EfbsaYhKy90CvlS2M5P4pjPywiz4x7la+u15/9BeoGtkZDe
         Oc7hPZe/HRUSKXcfrs8/ErfbvgbYZE6YEx1+feHkvzGec6smb3G1Y3GRvUBCgVCJ0gXF
         /Cg/e17NN4ki6NcTOr5IGUGIxmMPxmKXh/pHmStoKKR3eHidoEiizvxGQzj21H1MnHQE
         WvKQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Im8v5EGy;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::644 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=+c3NNZIhqcjk5dCbiVnL6Igi2rmDnyiuzdNPvcSAGok=;
        b=BafQgf8qLxRwa8zH0Dh9k7gNOnRPbUNl+xZmo9nH8/0c45dF4aX1ZZGo303oXRDjTW
         J5gXyRk2HsKouqdxNuy2cgH+TjnXkYsIH71fLoWLzj0GESQe5GZoIIDtQKnhPdSSoLFJ
         XUPGd/Ej9eilAKaqr65BOvkdGpVU8nAcegG43/NVlK3iq0lRfWrrfPJmzS1zDyyEkve/
         Y7T7t/YH+tEyeiMOstufR6F1pxyveTNTQ62XWWt9Vcun5TkrHXc/qYOPHsKgvuy1LlVO
         XD9MZvIOgLUym+NORU9Mv3rRUeaLYnur3vNRrObK2aQjL3DVI0zh0JXCE5PyeSP6AQhF
         +7Zw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=+c3NNZIhqcjk5dCbiVnL6Igi2rmDnyiuzdNPvcSAGok=;
        b=kDl1j88MQ7afLaSc1Md7JZ6tv+E5495LkygribHoj07IZOJX1QUBRFeKBqR6qXJ9Vl
         YFmLo1wBd9Z2HWWbu9o2f+98hg1+huouugHK2X+nVyNNrhmBGdXRz8i31cnY8pqYlsFW
         bsiJ65l5DPuoIwKBIhw2GO2PM1dRAbu/TQjwowC62cRqDyTypc/RUc8xn0RGx1L21sVN
         Wtk/8BVn1KxvfoXtveAtzO9t/Pfon7ohJyQQUmvUzxbM6TquFNJytXb8Y/nKf0A0Q3/4
         K1eW4AFdOxp4s5NCmSnEH2Q2dH6/I3GA3/9YPk5aYGl0kzOVJ8xaXMTV7GRX+QzBBG24
         ExKw==
X-Gm-Message-State: AOAM531P3fRwOrNaXCeui9PuUrSy41hluq3j3H6jWG010RUXH+GjnfUE
	i3I8XMu5+hdsk86K28rlL+s=
X-Google-Smtp-Source: ABdhPJzVBwEbkzxVafL0o1X1q3HRdc54smA4u3Mtki45/zBEBUCLVa8d9oTpIA7GyqhmYj3/8MjmQw==
X-Received: by 2002:a9d:77ca:: with SMTP id w10mr15431416otl.34.1593460036533;
        Mon, 29 Jun 2020 12:47:16 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:cc89:: with SMTP id c131ls1556292oig.3.gmail; Mon, 29
 Jun 2020 12:47:16 -0700 (PDT)
X-Received: by 2002:aca:d0d:: with SMTP id 13mr13791005oin.174.1593460036246;
        Mon, 29 Jun 2020 12:47:16 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1593460036; cv=none;
        d=google.com; s=arc-20160816;
        b=XE9NwdCSLU8Q8i4jsg8/P6In4NpjSFJFyVrpGuKq+TkBBvhPuAlfheBLa8pTd4xkB4
         kthI/s+xEU57zCdx7l4r5TXaFajdGqqine7VL7yrw5RyI0qjHBGItn8DCv+0U79Nl7B/
         M3ZEjPJfQBqoClM/aED99csi2JfkqhH8Vec14icXtBfU2IrN1SaethdYGboqt8i53R9z
         LuJNfrTpkC1obHMLjFcii0CR702Njljh3JfFDNVJojP5x2N81tKvPHaM+nwv/k1PrQ6O
         Ic9BdCxWGED/jh6UD1CNBaMRo2BcnWa6CGH7sdJZM8NpTdPfzO0CgyCjyoSRP0Fie4i9
         t/Bw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=1gz1zQHU9+r/YpON9C/k1EX29gyKSkYfOsfpz38zwBA=;
        b=EYf6d/uPeG2vuAQNMP+zfaskJFPeAEU1PbO77giOpbZOtMo87GxFLM8ZJs2bzRvuNQ
         dPDrZcx2Pn80DodQSi2KxnB58LyVIPbprVHW3veTCoOhxW0/KRr6azsz8EUU+7jZH26K
         xMvT0gbUOEgZkT+2AoD/KM799pLlwGX9eGHK8x7lcoDDEB6ydJwhXt3rVmYXBUVx352u
         xZE0bvWZotyowl3SglqF/s9QQeKrbejDZqbBSvnfSJDp4xTO6u6+eBH7Om/1VhA4jwqz
         i8o6bIq9l9X4O6FeIdkVA076eHBc8U/5IKM8nHg4WfFAck3D7Cub9segBMTXfn4xYjS8
         g5IA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Im8v5EGy;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::644 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x644.google.com (mail-pl1-x644.google.com. [2607:f8b0:4864:20::644])
        by gmr-mx.google.com with ESMTPS id w28si17758oti.1.2020.06.29.12.47.16
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 29 Jun 2020 12:47:16 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::644 as permitted sender) client-ip=2607:f8b0:4864:20::644;
Received: by mail-pl1-x644.google.com with SMTP id 35so7509401ple.0
        for <clang-built-linux@googlegroups.com>; Mon, 29 Jun 2020 12:47:16 -0700 (PDT)
X-Received: by 2002:a17:90a:30ea:: with SMTP id h97mr18995233pjb.32.1593460035317;
 Mon, 29 Jun 2020 12:47:15 -0700 (PDT)
MIME-Version: 1.0
References: <20200629061840.4065483-1-keescook@chromium.org> <20200629061840.4065483-15-keescook@chromium.org>
In-Reply-To: <20200629061840.4065483-15-keescook@chromium.org>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 29 Jun 2020 12:47:03 -0700
Message-ID: <CAKwvOdnErUWrJUaw9gm3ZSOpD2JepZKod3REBctzBr4QuHLiAA@mail.gmail.com>
Subject: Re: [PATCH v4 14/17] arm/build: Warn on orphan section placement
To: Kees Cook <keescook@chromium.org>
Cc: Will Deacon <will@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>, 
	Mark Rutland <mark.rutland@arm.com>, Ard Biesheuvel <ardb@kernel.org>, 
	Peter Collingbourne <pcc@google.com>, James Morse <james.morse@arm.com>, Borislav Petkov <bp@suse.de>, 
	Thomas Gleixner <tglx@linutronix.de>, Ingo Molnar <mingo@redhat.com>, 
	Russell King <linux@armlinux.org.uk>, Masahiro Yamada <masahiroy@kernel.org>, 
	Arvind Sankar <nivedita@alum.mit.edu>, Nathan Chancellor <natechancellor@gmail.com>, 
	Arnd Bergmann <arnd@arndb.de>, 
	"maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>, clang-built-linux <clang-built-linux@googlegroups.com>, 
	linux-arch <linux-arch@vger.kernel.org>, linux-efi <linux-efi@vger.kernel.org>, 
	Linux ARM <linux-arm-kernel@lists.infradead.org>, LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=Im8v5EGy;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::644
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

On Sun, Jun 28, 2020 at 11:18 PM Kees Cook <keescook@chromium.org> wrote:
>
> We don't want to depend on the linker's orphan section placement
> heuristics as these can vary between linkers, and may change between
> versions. All sections need to be explicitly named in the linker
> script.
>
> Specifically, this would have made a recently fixed bug very obvious:
>
> ld: warning: orphan section `.fixup' from `arch/arm/lib/copy_from_user.o' being placed in section `.fixup'
>
> Discard unneeded sections .iplt, .rel.iplt, .igot.plt, and .modinfo.
>
> Add missing text stub sections .vfp11_veneer and .v4_bx.
>
> Add debug sections explicitly.
>
> Finally enable orphan section warning.
>
> Signed-off-by: Kees Cook <keescook@chromium.org>

Thanks for following up on the previous suggestion regarding .glu_7 /
.glu_7t ordering. LGTM
Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>

> ---
>  arch/arm/include/asm/vmlinux.lds.h | 6 +++++-
>  arch/arm/kernel/vmlinux-xip.lds.S  | 1 +
>  arch/arm/kernel/vmlinux.lds.S      | 1 +
>  3 files changed, 7 insertions(+), 1 deletion(-)
>
> diff --git a/arch/arm/include/asm/vmlinux.lds.h b/arch/arm/include/asm/vmlinux.lds.h
> index c66b16cd8837..d44fae722e7a 100644
> --- a/arch/arm/include/asm/vmlinux.lds.h
> +++ b/arch/arm/include/asm/vmlinux.lds.h
> @@ -39,6 +39,8 @@
>                 __idmap_text_end = .;                                   \
>
>  #define ARM_COMMON_DISCARD                                             \
> +               *(.iplt) *(.rel.iplt) *(.igot.plt)                      \
> +               *(.modinfo)                                             \
>                 *(.discard)                                             \
>                 *(.discard.*)
>
> @@ -63,7 +65,9 @@
>  #define ARM_STUBS_TEXT                                                 \
>                 *(.gnu.warning)                                         \
>                 *(.glue_7)                                              \
> -               *(.glue_7t)
> +               *(.glue_7t)                                             \
> +               *(.vfp11_veneer)                                        \
> +               *(.v4_bx)
>
>  #define ARM_TEXT                                                       \
>                 IDMAP_TEXT                                              \
> diff --git a/arch/arm/kernel/vmlinux-xip.lds.S b/arch/arm/kernel/vmlinux-xip.lds.S
> index 57fcbf55f913..11ffa79751da 100644
> --- a/arch/arm/kernel/vmlinux-xip.lds.S
> +++ b/arch/arm/kernel/vmlinux-xip.lds.S
> @@ -150,6 +150,7 @@ SECTIONS
>         _end = .;
>
>         STABS_DEBUG
> +       DWARF_DEBUG
>         ARM_DETAILS
>  }
>
> diff --git a/arch/arm/kernel/vmlinux.lds.S b/arch/arm/kernel/vmlinux.lds.S
> index 1d3d3b599635..dc672fe35de3 100644
> --- a/arch/arm/kernel/vmlinux.lds.S
> +++ b/arch/arm/kernel/vmlinux.lds.S
> @@ -149,6 +149,7 @@ SECTIONS
>         _end = .;
>
>         STABS_DEBUG
> +       DWARF_DEBUG
>         ARM_DETAILS
>  }
>
> --
> 2.25.1
>
> --
> You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200629061840.4065483-15-keescook%40chromium.org.



-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdnErUWrJUaw9gm3ZSOpD2JepZKod3REBctzBr4QuHLiAA%40mail.gmail.com.
