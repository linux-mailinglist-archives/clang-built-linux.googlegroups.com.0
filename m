Return-Path: <clang-built-linux+bncBCLY5BP6XMFRBCG54PUQKGQEHWLZWEQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x83b.google.com (mail-qt1-x83b.google.com [IPv6:2607:f8b0:4864:20::83b])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F45774254
	for <lists+clang-built-linux@lfdr.de>; Thu, 25 Jul 2019 01:49:30 +0200 (CEST)
Received: by mail-qt1-x83b.google.com with SMTP id 41sf37072028qtm.4
        for <lists+clang-built-linux@lfdr.de>; Wed, 24 Jul 2019 16:49:30 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1564012169; cv=pass;
        d=google.com; s=arc-20160816;
        b=LLmU8zhQ22iUjTQyZWe01OZk4cTxL1BaKFTygwqRyTFvCF5Kl8doAfAWnGstrActmL
         lM36pemBuakC8pX+cjWIUtas0usZnlyYFDh7ibp+s5YKjY+05JpsrwFjyMuMnaMY7Mio
         qyIp60lqfMdqJlnTYjXiGhyc+tfeL0D+L6fz6rrHzICaTRXoZUDPhm8gM0yms0zi81J9
         PsCgrwqdtuM9MkHcbgT0h7/S5+5gOTTHSh7OeZFJUi+6YiSc/6wSKnYY1tlVDysV1Kr5
         +X8MpzHZ/uxK4/w9Wxt7Gtv3oAS8uRjGep31EJlGAkQUADUVaJ/4wNT9k0z0RqtzUoLV
         KuOQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=HJAfE1sbNFXtqcusrCULBAGmzeYwsJHFy29lOZ7gibk=;
        b=j88y0r1BPNxvkMmqKUNABThJaddNxDRi40MOVLCsayGuohkyfK4efhU1KcbnZmRQcO
         xiqWe5+U9GH9zXoiPM4gYcLiiv93o5if1EoW1a4PbHykmaBbCbgdvtKkV79xZ+Oh1TKx
         wfQE2sI4Ty+LQJuybXSiMf+Q7rm0krYu1flyw4qH7LUqA8yB0WCZS9DIU4TpY2P5hDco
         Ujgqegof78eLiAJJwJuV41Clp6AhlcHuEB7Hr3G+s4CtnrTJ83IKw5Gd6iXXWWSSV/+E
         IA3Urp6w6gZ9eFd2PP/52lZL4sNbkpGerv5YYWnZT2EFBWRJw80W+3SMJbO6C0wVaiD+
         AW8g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=JE6IcczQ;
       spf=pass (google.com: domain of vaibhavrustagi@google.com designates 2607:f8b0:4864:20::d41 as permitted sender) smtp.mailfrom=vaibhavrustagi@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=HJAfE1sbNFXtqcusrCULBAGmzeYwsJHFy29lOZ7gibk=;
        b=E9TmTCNup37uE08CqfjcKjsXVHWgEid3dcVNx76UL/aGknPjjkVUhOHkb4R6/741KU
         NtaprVNWJO4iFGQ/vwFZCqx2HBLnuYwnubVg6qXHedYUCUd0n4sbsgpRvYrGFr8H4a1/
         QB/VQkxnCy5MoSw+ZrRjQTRliSClTInH9V2pHwWyLQs/zfe4VFTjUq66BVSHfLoHJw5F
         YLB/SahH153ksg8SUYRviMiuqsXXg+WzUs065gpSTj74d7DVr9Ni3G/aFKsZy8BFL1jE
         pYHRGBRx+mZadEV2/Ct/PowOtx5tluUy/e8qGTyv2YLyS2z8EDqQiNx8dolPGmlG6eCE
         BgRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=HJAfE1sbNFXtqcusrCULBAGmzeYwsJHFy29lOZ7gibk=;
        b=jq0H2FvrN7SZXJfPsZZjP85uKt3zLuIA/Vo9cGE4j/rFU7tRH00awXiKaempv/PLr7
         EV3rAWvt7uAxUiT8b5Vhh27b55VyKVQVZ4UKN1KGgrSJERk0H8aDJe0k4Hl3RyilvyWM
         64sRur9aagRGiXYp7HzE3Fwix+LPWMv6DO4JwA0lP8uMQL2TI4VLs0zwxmYftA8C5b0F
         7FXLsWa+0DXclgEnSaFy3Kun+9Z6i/I8iwOva9ruLiEjpAQHce9SrjzVfuI0w8nhtX2d
         435Vb3V5pzypizcqP84oaHZ/lok/gejazc95PRmOgjMBJGpx7ZVL3aR6hUo2ic69/YIy
         Dxuw==
X-Gm-Message-State: APjAAAU48/Esb1e1FCGfTlxi8IFr1gK7ciB2M9RdC4nYEqKIZiBLAn+Q
	HcwduD4bVkXTZb538wtULtY=
X-Google-Smtp-Source: APXvYqwT5TPccU7uzIHHL1AE687k98na2skMvbopNn0sJhcYCWDWNaD1J9TafrzzgA6oJ1OI3cIpfg==
X-Received: by 2002:a05:620a:1187:: with SMTP id b7mr54958518qkk.218.1564012169003;
        Wed, 24 Jul 2019 16:49:29 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a37:9d4f:: with SMTP id g76ls14495727qke.0.gmail; Wed, 24
 Jul 2019 16:49:28 -0700 (PDT)
X-Received: by 2002:a37:4c01:: with SMTP id z1mr58598867qka.144.1564012168791;
        Wed, 24 Jul 2019 16:49:28 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1564012168; cv=none;
        d=google.com; s=arc-20160816;
        b=vGbIaSXZVOBvP5eMj5VM7XGv5kzk5/Gtfl5oY346Qy5lBSSfxqeSBWOV5NG5T46NYi
         JJTJmC1L0+DZsudofyREBXYvFlgk9m25n0FkBoUzI+eeDEhQMTkXY2pznyDQLUydJVzd
         Dl/bxD3Ugg3iZhQX/3nAf2m8kzoy3EzmY09iHnsBgZwy1jFlBKyRgQUtVvzDcGGWkt15
         Ndz58ENMnE/aNzR6h3UDXCR9PqIzCp66VB+v+D02wINkNqrzZ5Tr4EWAQCSdLwfysnkn
         Zppx/DKh4oifWL6iFb1ZaG0BDly7u5hAWIum2EdxQ+6zLz6cwXLCWH/gd62yVNOv//rI
         NPIw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=YJ1aMEs74UNhuCKOoREVlxCR5HtwdPtwGYYolQWtluU=;
        b=ZuHSTHADvLwcEapBfZKYMv/Vck/daZ7nGqawLft9PIKLr5w1ePt7Wo8ONDGQZUdg9e
         6sJCRGV2gLq5WMCsxc+XGA1vwiUASVnpzxt0X/8aWJ+0/ejkMsrDsdKPgzmsuBjC6Xc9
         u8BnKkE56aC9FRmxJusYRwxRUBm6UU4NmQTyOUgVTQduXtrxCgcyU1UkJfMC4usjIzwG
         49Q2I4Wb6ZEzs+CLOROSTJAfW97oEVy2Ovy0+gerGfvE5dhJPcyd1IA3+NIV/JfSu7Oe
         Wua/UysXHqoLkdmDIzxsSC1Fb1KJt8WjlhFTxk+MfpwIMV4Y8JQgwdFzkOkW1u/xe764
         JIMw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=JE6IcczQ;
       spf=pass (google.com: domain of vaibhavrustagi@google.com designates 2607:f8b0:4864:20::d41 as permitted sender) smtp.mailfrom=vaibhavrustagi@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-io1-xd41.google.com (mail-io1-xd41.google.com. [2607:f8b0:4864:20::d41])
        by gmr-mx.google.com with ESMTPS id r4si2095512qkb.1.2019.07.24.16.49.28
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
        Wed, 24 Jul 2019 16:49:28 -0700 (PDT)
Received-SPF: pass (google.com: domain of vaibhavrustagi@google.com designates 2607:f8b0:4864:20::d41 as permitted sender) client-ip=2607:f8b0:4864:20::d41;
Received: by mail-io1-xd41.google.com with SMTP id k20so93305901ios.10
        for <clang-built-linux@googlegroups.com>; Wed, 24 Jul 2019 16:49:28 -0700 (PDT)
X-Received: by 2002:a5d:8b52:: with SMTP id c18mr14203913iot.89.1564012167930;
 Wed, 24 Jul 2019 16:49:27 -0700 (PDT)
MIME-Version: 1.0
References: <20190723212418.36379-1-ndesaulniers@google.com> <20190723212418.36379-2-ndesaulniers@google.com>
In-Reply-To: <20190723212418.36379-2-ndesaulniers@google.com>
From: "'Vaibhav Rustagi' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Wed, 24 Jul 2019 16:49:16 -0700
Message-ID: <CAMVonLggcXdcScZSi3ZXZUyRnkHGK7Jv5sED43hHpGmXnKQfWA@mail.gmail.com>
Subject: Re: [PATCH v3 2/2] x86/purgatory: use CFLAGS_REMOVE rather than reset KBUILD_CFLAGS
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Thomas Gleixner <tglx@linutronix.de>, Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>, 
	Peter Zijlstra <peterz@infradead.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, LKML <linux-kernel@vger.kernel.org>, 
	yamada.masahiro@socionext.com, stable@vger.kernel.org, 
	"H. Peter Anvin" <hpa@zytor.com>, 
	"maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: vaibhavrustagi@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=JE6IcczQ;       spf=pass
 (google.com: domain of vaibhavrustagi@google.com designates
 2607:f8b0:4864:20::d41 as permitted sender) smtp.mailfrom=vaibhavrustagi@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Vaibhav Rustagi <vaibhavrustagi@google.com>
Reply-To: Vaibhav Rustagi <vaibhavrustagi@google.com>
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

On Tue, Jul 23, 2019 at 2:24 PM Nick Desaulniers
<ndesaulniers@google.com> wrote:
>
> KBUILD_CFLAGS is very carefully built up in the top level Makefile,
> particularly when cross compiling or using different build tools.
> Resetting KBUILD_CFLAGS via := assignment is an antipattern.
>
> The comment above the reset mentions that -pg is problematic.  Other
> Makefiles use `CFLAGS_REMOVE_file.o = $(CC_FLAGS_FTRACE)` when
> CONFIG_FUNCTION_TRACER is set. Prefer that pattern to wiping out all of
> the important KBUILD_CFLAGS then manually having to re-add them. Seems
> also that __stack_chk_fail references are generated when using
> CONFIG_STACKPROTECTOR or CONFIG_STACKPROTECTOR_STRONG.
>
> Cc: stable@vger.kernel.org
> Fixes: 8fc5b4d4121c ("purgatory: core purgatory functionality")
> Reported-by: Vaibhav Rustagi <vaibhavrustagi@google.com>
> Suggested-by: Peter Zijlstra <peterz@infradead.org>
> Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
> ---
> Alternatively, we could put these in all in one variable and remove it
> without any conditional checks (I think that's ok to do so with
> CFLAGS_REMOVE).
>
> Changes v2 -> v3:
> * Prefer $(CC_FLAGS_FTRACE) which is exported to -pg.
> * Also check CONFIG_STACKPROTECTOR and CONFIG_STACKPROTECTOR_STRONG.
> * Cc stable.
> Changes v1 -> v2:
> Rather than manually add -mno-sse, -mno-mmx, -mno-sse2, prefer to filter
> -pg flags.
>
>  arch/x86/purgatory/Makefile | 26 +++++++++++++++++++++-----
>  1 file changed, 21 insertions(+), 5 deletions(-)
>
> diff --git a/arch/x86/purgatory/Makefile b/arch/x86/purgatory/Makefile
> index 91ef244026d2..6ef0ced59b9c 100644
> --- a/arch/x86/purgatory/Makefile
> +++ b/arch/x86/purgatory/Makefile
> @@ -20,11 +20,27 @@ KCOV_INSTRUMENT := n
>
>  # Default KBUILD_CFLAGS can have -pg option set when FTRACE is enabled. That
>  # in turn leaves some undefined symbols like __fentry__ in purgatory and not
> -# sure how to relocate those. Like kexec-tools, use custom flags.
> -
> -KBUILD_CFLAGS := -fno-strict-aliasing -Wall -Wstrict-prototypes -fno-zero-initialized-in-bss -fno-builtin -ffreestanding -c -Os -mcmodel=large
> -KBUILD_CFLAGS += -m$(BITS)
> -KBUILD_CFLAGS += $(call cc-option,-fno-PIE)
> +# sure how to relocate those.
> +ifdef CONFIG_FUNCTION_TRACER
> +CFLAGS_REMOVE_sha256.o += $(CC_FLAGS_FTRACE)
> +CFLAGS_REMOVE_purgatory.o += $(CC_FLAGS_FTRACE)
> +CFLAGS_REMOVE_string.o += $(CC_FLAGS_FTRACE)
> +CFLAGS_REMOVE_kexec-purgatory.o += $(CC_FLAGS_FTRACE)
> +endif
> +
> +ifdef CONFIG_STACKPROTECTOR
> +CFLAGS_REMOVE_sha256.o += -fstack-protector
> +CFLAGS_REMOVE_purgatory.o += -fstack-protector
> +CFLAGS_REMOVE_string.o += -fstack-protector
> +CFLAGS_REMOVE_kexec-purgatory.o += -fstack-protector
> +endif
> +
> +ifdef CONFIG_STACKPROTECTOR_STRONG
> +CFLAGS_REMOVE_sha256.o += -fstack-protector-strong
> +CFLAGS_REMOVE_purgatory.o += -fstack-protector-strong
> +CFLAGS_REMOVE_string.o += -fstack-protector-strong
> +CFLAGS_REMOVE_kexec-purgatory.o += -fstack-protector-strong
> +endif
>
>  $(obj)/purgatory.ro: $(PURGATORY_OBJS) FORCE
>                 $(call if_changed,ld)
> --
> 2.22.0.709.g102302147b-goog
>

Tested-by: Vaibhav Rustagi <vaibhavrustagi@google.com>

I tested the v3 patch series with clang compiled kernel for below
scenarios:

1. kexec'ing into a new kernel.
2. Purposely crashing the running kernel to generate kdump logs.

Thanks,
Vaibhav

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAMVonLggcXdcScZSi3ZXZUyRnkHGK7Jv5sED43hHpGmXnKQfWA%40mail.gmail.com.
