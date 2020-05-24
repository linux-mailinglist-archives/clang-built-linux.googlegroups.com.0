Return-Path: <clang-built-linux+bncBCS7XUWOUULBB3MJVT3AKGQERXJYVAY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x83d.google.com (mail-qt1-x83d.google.com [IPv6:2607:f8b0:4864:20::83d])
	by mail.lfdr.de (Postfix) with ESMTPS id AF2B71E03E4
	for <lists+clang-built-linux@lfdr.de>; Mon, 25 May 2020 01:36:14 +0200 (CEST)
Received: by mail-qt1-x83d.google.com with SMTP id p20sf5312557qtq.13
        for <lists+clang-built-linux@lfdr.de>; Sun, 24 May 2020 16:36:14 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1590363373; cv=pass;
        d=google.com; s=arc-20160816;
        b=jIdeQKRoWLWJYn/pabWDY1wCxcPDuPglR9jYQKxPrBrAEcnny4Cr030G+nymY2Shql
         X9aeSZkaIo2zrfLVB3Jxq53wMSOs198ueFgwi24ebdUlGXGPMX+SRfK4nJTzrEBbk+km
         jl2AAq9V52nGcnWCh5nj086xjL63R5zaKR05YhKtomRVaCDD8tDwOrrXNNMT9MN756VT
         sMTVK40c8sG0tHLtTxZ59IK5o1+KN/5kE0FgPVJyh08cDxsigJKXKzuEkCrSVrrVpRRa
         WuyY9e4JBMZD+BbcFVGfS2ovU+noHpfRmWNnHW1pRX9z2cQpT8xsAFAIrPFbF0/HswAT
         BohA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=sD6NRLy3j4RqU+spp2saZoQ6rBN/+YohIDNdJ4FeNNw=;
        b=WHVSyxCHGf2WJ404MQuTixBa7k5OJGmAQz8NsRZSdfKXgyHK08KYXNA718TAjQolwz
         0qjKJUMsOBF9Q4nrP+UBm+Z2L/whorIJGEN0NNkNyF8FjBiahoqCssB+5vx+e3janW20
         H388D9LiTipMHCgkZmxWpPA55Dm4CfIPakQlKO8m/fDiB0m6pHyOv4klZjXZxTSKRiKM
         9tSJsnradZWEopIGTJLZuaC7/Nl0NPJ//RsOdpiD9SOVnsySJjAeJiqvg0Cjfd8WLvpP
         YtHgntIiidfyv7xpDTcOJ8ctUkuIas2WxwmkvCzBcaRo/v08XhCe2frC/V28ZceFU9aR
         QnbA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=QeeaUABZ;
       spf=pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::644 as permitted sender) smtp.mailfrom=maskray@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=sD6NRLy3j4RqU+spp2saZoQ6rBN/+YohIDNdJ4FeNNw=;
        b=bXTwinfPr3Fy7nf6rEs3WKMgt42CncfNEGaBmLzKERlwYghwP9CspAGxEst5DB9712
         HM/a0reETCaihendvOe7a/CoxVP4OQ64FOCmAmPX5bJq8cEtUeXlztP0SUdHp4FlT4Ux
         DNDhhkYuXgVBoMY15nQFWZLbewwuoXoVMIrMSQJeIO6Isp++px/OnM2cOAetT9z9N8JV
         283+zktjfwRzfmEDfkvILPDoJ1SHZExpEHoC28HSDsDcvH9iyo47fSpEmaC0KTMpijO7
         2d415XmGOAKqyeAzGvwrbL6jpMpB3BC01CrAtI7T3hxDAJyGcUW3EhFvofUGlgs3BzgQ
         xmxQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=sD6NRLy3j4RqU+spp2saZoQ6rBN/+YohIDNdJ4FeNNw=;
        b=YYdAQ6Cu8yg6JV3fBqZifBapJ6yJQKCwCBM5HLcdMwRUgd9mNUpfBMlqZfOx/Ll9CM
         S0c/LVVoXDPOCiOjeFnIHbzhVJGuNP78MwlL92faFrRx4Bz5Rir8zUaTf7j/c2TBq9O0
         UkA/TRv1tezWAN/Oa9oSeShcCT9YOXm0zIVP+aMQTMVIl+DX4Lr7hObfhlS4KnDCZwZ3
         4XYCY2YGTE+TLtJZvm+zdxagv5HTGU+AxYNg6DxERxdh0NDBjE8n7UmviEdLDWWwallY
         KZlFuivAcqSBtDt18tIT2Pexj824bdbH4REsKLgDUuSZMNA+KmVLnO0MZVTHnjbWQzcZ
         NP5A==
X-Gm-Message-State: AOAM533zaRq7r08UiZv4rvvRkSBisugxx69O+CT5v1gY8MzdWFYMEgPr
	8sy+6qez+NHo8H3SyveJ7zc=
X-Google-Smtp-Source: ABdhPJx1u1L/UDy/bwqoTwGPnmPjti8vsKdataDgH1COXAbQqfMg3yIvoX7ALWMMy1IuNDO4opC7nQ==
X-Received: by 2002:a37:4f55:: with SMTP id d82mr23485749qkb.219.1590363373751;
        Sun, 24 May 2020 16:36:13 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:7542:: with SMTP id b2ls2825344qtr.1.gmail; Sun, 24 May
 2020 16:36:13 -0700 (PDT)
X-Received: by 2002:ac8:2fb0:: with SMTP id l45mr6438163qta.260.1590363373258;
        Sun, 24 May 2020 16:36:13 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1590363373; cv=none;
        d=google.com; s=arc-20160816;
        b=EVUBvFuvNWh11JgwqjveHRkdUe2gz2Lgpf4OYM2LaBXt9cfMoHG35JKJ0eaYIaANWi
         ZdJklOiITZlITVEGy0aCojLd8dVWNiCSn/LrYM+uwbDqYONkqjObTODVVu7JUR955eeE
         N6d+79FaToy2681DNXcF+hCfoTB3Uj6YkPLleuRZtrz3uLu+ly1auKqwkuip96qjtzIh
         OusPhZLMS2RahSN5Nu+rMCLoH5eT0whhmmfTqrzSUKnHq2fuvuYRMeZv3J6an1qMpTEO
         g+4wltKpT035BpauvAJ0pqDFfDpHWqU5NkxK6Jq/flEcppjgO3ofPRYgUF1QlavamynM
         ZbPw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=/xSfk8UNIM4h1pIcoF/9EHCGXYkBOmPVW3Mq1rqJ1Bw=;
        b=vvNkpHUEEgYKOLrUG26Hkhr8Ug9OTRsALDasnJnG7d7IE8mz9jBG0ARLRjETP5EOq7
         V/ST9CzN6gYHLMl2itmQ7TgWwgqBsup2jaUaSzhEYzKXsXDmITpsrjIJHB3asJMZXJxb
         pNM/ZdbExAMm+tZ7Af1cTRIL3S8Edul7uKB0aJjirIn71FtnVnHyHCbtrjXMdZ0/zMpg
         Kj347uenJQtlzZLlcpc0OBwy19DshnDr7PbVQVm5L1TzFrs8A7xenjBVzfvnyXEqL9lR
         LKb6rhLUbIk9PDfwxg98ro8TD/IOy3pGo62OaSwlkTXe+l4xsfvjmBOBm8dXMUJbHwyH
         fwwA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=QeeaUABZ;
       spf=pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::644 as permitted sender) smtp.mailfrom=maskray@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x644.google.com (mail-pl1-x644.google.com. [2607:f8b0:4864:20::644])
        by gmr-mx.google.com with ESMTPS id e17si327011qtw.5.2020.05.24.16.36.13
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 24 May 2020 16:36:13 -0700 (PDT)
Received-SPF: pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::644 as permitted sender) client-ip=2607:f8b0:4864:20::644;
Received: by mail-pl1-x644.google.com with SMTP id u22so6805267plq.12
        for <clang-built-linux@googlegroups.com>; Sun, 24 May 2020 16:36:13 -0700 (PDT)
X-Received: by 2002:a17:90a:64c6:: with SMTP id i6mr16719577pjm.14.1590363372259;
        Sun, 24 May 2020 16:36:12 -0700 (PDT)
Received: from google.com ([2620:15c:2ce:0:9efe:9f1:9267:2b27])
        by smtp.gmail.com with ESMTPSA id 2sm11652343pfz.39.2020.05.24.16.36.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 24 May 2020 16:36:11 -0700 (PDT)
Date: Sun, 24 May 2020 16:36:07 -0700
From: "'Fangrui Song' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Arvind Sankar <nivedita@alum.mit.edu>
Cc: Thomas Gleixner <tglx@linutronix.de>, Ingo Molnar <mingo@redhat.com>,
	Borislav Petkov <bp@alien8.de>, "H. Peter Anvin" <hpa@zytor.com>,
	x86@kernel.org, Nick Desaulniers <ndesaulniers@google.com>,
	Dmitry Golovin <dima@golovin.in>,
	clang-built-linux@googlegroups.com,
	Ard Biesheuvel <ardb@kernel.org>,
	Masahiro Yamada <masahiroy@kernel.org>,
	Daniel Kiper <daniel.kiper@oracle.com>,
	Kees Cook <keescook@chromium.org>, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 4/4] x86/boot: Check that there are no runtime relocations
Message-ID: <20200524233607.cihnsmxuaqoy7xi4@google.com>
References: <CAKwvOd=qB+EoJwfAYUA9Hg7f9op4Q4W+TDnht8pLRG5bPX=29Q@mail.gmail.com>
 <20200524212816.243139-5-nivedita@alum.mit.edu>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Disposition: inline
In-Reply-To: <20200524212816.243139-5-nivedita@alum.mit.edu>
X-Original-Sender: maskray@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=QeeaUABZ;       spf=pass
 (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::644
 as permitted sender) smtp.mailfrom=maskray@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Fangrui Song <maskray@google.com>
Reply-To: Fangrui Song <maskray@google.com>
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

On 2020-05-24, Arvind Sankar wrote:
>Add a linker script check that there are no runtime relocations, and
>remove the old one that tries to check via looking for specially-named
>sections in the object files.
>
>Drop the tests for -fPIE compiler option and -pie linker option, as they
>are available in all supported gcc and binutils versions (as well as
>clang and lld).
>
>Signed-off-by: Arvind Sankar <nivedita@alum.mit.edu>
>---
> arch/x86/boot/compressed/Makefile      | 28 +++-----------------------
> arch/x86/boot/compressed/vmlinux.lds.S | 11 ++++++++++
> 2 files changed, 14 insertions(+), 25 deletions(-)
>
>diff --git a/arch/x86/boot/compressed/Makefile b/arch/x86/boot/compressed/Makefile
>index d3e882e855ee..679a2b383bfe 100644
>--- a/arch/x86/boot/compressed/Makefile
>+++ b/arch/x86/boot/compressed/Makefile
>@@ -27,7 +27,7 @@ targets := vmlinux vmlinux.bin vmlinux.bin.gz vmlinux.bin.bz2 vmlinux.bin.lzma \
> 	vmlinux.bin.xz vmlinux.bin.lzo vmlinux.bin.lz4
>
> KBUILD_CFLAGS := -m$(BITS) -O2
>-KBUILD_CFLAGS += -fno-strict-aliasing $(call cc-option, -fPIE, -fPIC)
>+KBUILD_CFLAGS += -fno-strict-aliasing -fPIE
> KBUILD_CFLAGS += -DDISABLE_BRANCH_PROFILING
> cflags-$(CONFIG_X86_32) := -march=i386
> cflags-$(CONFIG_X86_64) := -mcmodel=small
>@@ -49,7 +49,7 @@ UBSAN_SANITIZE :=n
> KBUILD_LDFLAGS := -m elf_$(UTS_MACHINE)
> # Compressed kernel should be built as PIE since it may be loaded at any
> # address by the bootloader.
>-KBUILD_LDFLAGS += $(call ld-option, -pie) $(call ld-option, --no-dynamic-linker)
>+KBUILD_LDFLAGS += -pie $(call ld-option, --no-dynamic-linker)
> LDFLAGS_vmlinux := -T
>
> hostprogs	:= mkpiggy
>@@ -84,30 +84,8 @@ vmlinux-objs-$(CONFIG_ACPI) += $(obj)/acpi.o
> vmlinux-objs-$(CONFIG_EFI_STUB) += $(objtree)/drivers/firmware/efi/libstub/lib.a
> vmlinux-objs-$(CONFIG_EFI_MIXED) += $(obj)/efi_thunk_$(BITS).o
>
>-# The compressed kernel is built with -fPIC/-fPIE so that a boot loader
>-# can place it anywhere in memory and it will still run. However, since
>-# it is executed as-is without any ELF relocation processing performed
>-# (and has already had all relocation sections stripped from the binary),
>-# none of the code can use data relocations (e.g. static assignments of
>-# pointer values), since they will be meaningless at runtime. This check
>-# will refuse to link the vmlinux if any of these relocations are found.
>-quiet_cmd_check_data_rel = DATAREL $@
>-define cmd_check_data_rel
>-	for obj in $(filter %.o,$^); do \
>-		$(READELF) -S $$obj | grep -qF .rel.local && { \
>-			echo "error: $$obj has data relocations!" >&2; \
>-			exit 1; \
>-		} || true; \
>-	done
>-endef
>-
>-# We need to run two commands under "if_changed", so merge them into a
>-# single invocation.
>-quiet_cmd_check-and-link-vmlinux = LD      $@
>-      cmd_check-and-link-vmlinux = $(cmd_check_data_rel); $(cmd_ld)
>-
> $(obj)/vmlinux: $(vmlinux-objs-y) FORCE
>-	$(call if_changed,check-and-link-vmlinux)
>+	$(call if_changed,ld)
>
> OBJCOPYFLAGS_vmlinux.bin :=  -R .comment -S
> $(obj)/vmlinux.bin: vmlinux FORCE
>diff --git a/arch/x86/boot/compressed/vmlinux.lds.S b/arch/x86/boot/compressed/vmlinux.lds.S
>index d826ab38a8f9..0ac14feacb24 100644
>--- a/arch/x86/boot/compressed/vmlinux.lds.S
>+++ b/arch/x86/boot/compressed/vmlinux.lds.S
>@@ -11,9 +11,15 @@ OUTPUT_FORMAT(CONFIG_OUTPUT_FORMAT)
> #ifdef CONFIG_X86_64
> OUTPUT_ARCH(i386:x86-64)
> ENTRY(startup_64)
>+
>+#define REL .rela
>+
> #else
> OUTPUT_ARCH(i386)
> ENTRY(startup_32)
>+
>+#define REL .rel
>+
> #endif
>
> SECTIONS
>@@ -42,6 +48,9 @@ SECTIONS
> 		*(.rodata.*)
> 		_erodata = . ;
> 	}
>+	REL.dyn : {
>+		*(REL.*)
>+	}
> 	.got : {
> 		*(.got)
> 	}
>@@ -83,3 +92,5 @@ ASSERT(SIZEOF(.got.plt) == 0 || SIZEOF(.got.plt) == 0x18, "Unexpected GOT/PLT en
> #else
> ASSERT(SIZEOF(.got.plt) == 0 || SIZEOF(.got.plt) == 0xc, "Unexpected GOT/PLT entries detected!")
> #endif
>+
>+ASSERT(SIZEOF(REL.dyn) == 0, "Unexpected runtime relocations detected!")
>-- 
>2.26.2
>

`grep -qF .rel.local` from 98f78525371b55ccd1c480207ce10296c72fa340
may be incorrect.. None of these synthesized dynamic relocation sections is
called *.rel.local* ...
(it probably wanted to name .rel.data.rel.ro or .rel.data)


Reviewed-by: Fangrui Song <maskray@google.com>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200524233607.cihnsmxuaqoy7xi4%40google.com.
