Return-Path: <clang-built-linux+bncBCF5XGNWYQBRB34G5D3QKGQEV3HR65I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x73f.google.com (mail-qk1-x73f.google.com [IPv6:2607:f8b0:4864:20::73f])
	by mail.lfdr.de (Postfix) with ESMTPS id CABEC20CF54
	for <lists+clang-built-linux@lfdr.de>; Mon, 29 Jun 2020 17:06:24 +0200 (CEST)
Received: by mail-qk1-x73f.google.com with SMTP id g12sf12403995qko.19
        for <lists+clang-built-linux@lfdr.de>; Mon, 29 Jun 2020 08:06:24 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1593443183; cv=pass;
        d=google.com; s=arc-20160816;
        b=tEPZmsny58G+fSGEJ/RF2zaNiskx6ey4WHfKwJ8Tw30qc6w5M6ajIHfwUsgXAdsOVl
         4qhGk8YM+MChqph06ko4BmejHD8paoFsONa/m3pE9v0RSBjkxYtdHEUWgVAaXiP6hNTO
         XwHUQvkU4Anr0h7p5F9x0HcSt+ghnVutz1gBHth83FPjtwt+2y0+J1p8IncJE8C8Bael
         N8q2NM5NLbpHijPfPaxK/MUe0nHd8bW9o4J0VPDWWCShe9WM++yxNCRkuUQPkVnunYru
         /y2817QPIQryB3/UlOBGlbrjOm22hvUphXnJ3MH+kVNP8ydiDzpV6KYzvitnxbMNEw9b
         TjOw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=bHTLDGpyUkyeFPqHy7zjzirPaTva/S/AYJgSEDldCZE=;
        b=0eODfhzc4Ew/5xHufEQ9QpoKGQq3LuTSEJeceA2iYoul7ZaEBAeq0Z4dJYlF1NpbdT
         f8f1vtmFUDqGcO2eUmSFBTLr8iulfha5wvMUZBPVTXOyvfe8qaY1dCeZ5tEeIN0/mZua
         GLI6PLyzpFYPjofWkSq+v59c5Fnqy9R8rNj2H2H6E7MI9ESf65VknGBaP7eUYMmL12QR
         g/MIygdCrZ5yQx2BPnimzJKn4R2ZsxQknAjXmdI5yJl65QVOj/UcDX7S28HWI1WA4655
         JVrlfOHrgajdyk+LJYvBLWWXorBViCvV16Epd/wLq2jQhTBwkUHYA5YnQLVyWb378Z2b
         1YBA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=GFdIes0N;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::444 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=bHTLDGpyUkyeFPqHy7zjzirPaTva/S/AYJgSEDldCZE=;
        b=PWrRo5sj6UOl71AgVWFot9cCB6wAxWtS/962ikV5B5QCT2yu1sJpMAvv9UxAkHW0G7
         6s5tqpj4V4GGqLDPaXikBnugON8AK59TeTElc0iwE98t79FTACSmg5voAbtyiKT6Ee0O
         RinCgfqCfcl4R/gN4pDQjT5hKVcB4avLVsEQVvSBmspghPqo1AFOCdOrMbNljt3K+k6H
         oI0A8J0RD/B+3G7AiN68Vw0L4vfCnqm+Au6DJeEY06aqtEZ7sJcSV5x3qW5WCIcIZ47H
         xoGGAZ05coVFZc/mbQkm/01osFHztTQtpNYAYtHyAmI1PEKHXv65c0yF3SSOkmskHM3c
         Fbhw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=bHTLDGpyUkyeFPqHy7zjzirPaTva/S/AYJgSEDldCZE=;
        b=f9DrJWlbNZ/yJdo+LE3aXUzvSLsdyW8i26hEm2OScwz8wGu09XcfJ1eJZ0F/Uw6HpV
         CDltCukKVMfbGePxnacI6g2DknptJASJZ9CoMJSis6V+e3ccYGNyDoTMjSUnMbaeKqdG
         zXfEih+5JGU/VIr6KUYjW9jCKNa/BG0mUGe6sy6z8uHc6er//OrsiE7Y1qj/ZlytKJK7
         Ouj1E/qD6rywdBiRSquMjipqVoSrjvzxa9aIjUG77DjhFN8WSyGp8zCcm8DMQ8/PANX5
         ZLCmYVTvnYxoCLvg3pnVHjX5/tM7Vy4E+uv2xppMDLw1JSjGkTQvYpp49Vzpxno0yvrk
         9kQA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530wjSDOCnzHNiLi1Oykp/8cMZSbvXVLT7H3AAcYorqqnkmDDvg5
	8GWoP1iVB6mTD7xq16x1JrE=
X-Google-Smtp-Source: ABdhPJyA84RU05EqoR9p+IjFFKEB+t7iIFKin2Gx+zg6YvEmUw/Pa52CBlaNB4bvIvdvOdubiSlakw==
X-Received: by 2002:a0c:aed6:: with SMTP id n22mr15828588qvd.70.1593443183781;
        Mon, 29 Jun 2020 08:06:23 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a37:4c8a:: with SMTP id z132ls8108619qka.6.gmail; Mon, 29
 Jun 2020 08:06:23 -0700 (PDT)
X-Received: by 2002:a37:9046:: with SMTP id s67mr15711737qkd.275.1593443183400;
        Mon, 29 Jun 2020 08:06:23 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1593443183; cv=none;
        d=google.com; s=arc-20160816;
        b=PaOa0Oxx3awtqTdgVKixvB8PM8jOuF0/82SHgrxKVN5cJZ97hw1sc6Aw2AJMP9ZSir
         hzMiMO780vt9HgZaJBXdvCvtqv82ILeXAmaBTZB/CG2NWL0xwjFI66j8f0lmVxlsfU7K
         O2Q4EO5mBaUMkjsf3udR1zWzgozypSc2oYpVK+5zvACxgWOiTWHTvl64fYCBLzR21hL4
         +Pxv7R1HMfMcNwT1NdDRJ07MFwMrJWzR4T1adEeVv4bBMV1nqZ6ckQoE1noxBtrwbRbD
         V1MjvUdL2MpkmhcD7c1mIbw0DxyxU9Cfk3uzvkDaoW0V73R5YpVOHyrB/HOmQoS9pOrI
         yAfg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=3uYMGufQeinwe5TzCeKKQc4KuZ3gyDOI7a8/HUZ8hi0=;
        b=AgZxkPsaM7Fqnu5pKDx7rrZEJhmsTRuGa0tO+ZYovkzQNJSNoBBKysTECvaZ6uiVNn
         /p4NIyxe6Z0FrR89SgX/Y0RrydOHBqkvfB+JEH+S0+LJe/N9DIJgUuCKUiQzEcznUm2U
         HIe+MNcgT+L+xGk4nVS72UepkTYQ+C/2Dun6vVWh+x5AiLnE+th6xrtM8dJdMdwSOOPW
         M23kg4ojNrw8wX+r8e5YAJIvEyZsL/D9GtYOezVfb+JkR7weV2dJHYlFVB6rNA10iGaK
         ZJswpeBzs2HBhIoJgezB89HU4anM1D/yL+3bkWOauKmr1CALAMXEOi4+DncO5et8P3eO
         VS8A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=GFdIes0N;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::444 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pf1-x444.google.com (mail-pf1-x444.google.com. [2607:f8b0:4864:20::444])
        by gmr-mx.google.com with ESMTPS id f2si2538qkk.3.2020.06.29.08.06.23
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 29 Jun 2020 08:06:23 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::444 as permitted sender) client-ip=2607:f8b0:4864:20::444;
Received: by mail-pf1-x444.google.com with SMTP id j12so8013635pfn.10
        for <clang-built-linux@googlegroups.com>; Mon, 29 Jun 2020 08:06:23 -0700 (PDT)
X-Received: by 2002:a63:e017:: with SMTP id e23mr10765487pgh.125.1593443182549;
        Mon, 29 Jun 2020 08:06:22 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id f23sm244869pja.8.2020.06.29.08.06.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 29 Jun 2020 08:06:21 -0700 (PDT)
Date: Mon, 29 Jun 2020 08:06:20 -0700
From: Kees Cook <keescook@chromium.org>
To: Ard Biesheuvel <ardb@kernel.org>
Cc: Will Deacon <will@kernel.org>, Dave Martin <Dave.Martin@arm.com>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Mark Rutland <mark.rutland@arm.com>,
	Peter Collingbourne <pcc@google.com>,
	James Morse <james.morse@arm.com>, Borislav Petkov <bp@suse.de>,
	Thomas Gleixner <tglx@linutronix.de>,
	Ingo Molnar <mingo@redhat.com>,
	Russell King <linux@armlinux.org.uk>,
	Masahiro Yamada <masahiroy@kernel.org>,
	Arvind Sankar <nivedita@alum.mit.edu>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Arnd Bergmann <arnd@arndb.de>, X86 ML <x86@kernel.org>,
	linux-arch <linux-arch@vger.kernel.org>,
	linux-efi <linux-efi@vger.kernel.org>,
	Linux ARM <linux-arm-kernel@lists.infradead.org>,
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH v4 05/17] ctype: Work around Clang
 -mbranch-protection=none bug
Message-ID: <202006290806.3BDE2A8@keescook>
References: <20200629061840.4065483-1-keescook@chromium.org>
 <20200629061840.4065483-6-keescook@chromium.org>
 <CAMj1kXE+toCd=Bx-zw7D9bvDRNB2aPn5-_7CY7MOKcVGA-azVg@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAMj1kXE+toCd=Bx-zw7D9bvDRNB2aPn5-_7CY7MOKcVGA-azVg@mail.gmail.com>
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=GFdIes0N;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::444
 as permitted sender) smtp.mailfrom=keescook@chromium.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=chromium.org
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

On Mon, Jun 29, 2020 at 10:15:47AM +0200, Ard Biesheuvel wrote:
> On Mon, 29 Jun 2020 at 08:18, Kees Cook <keescook@chromium.org> wrote:
> >
> > In preparation for building efi/libstub with -mbranch-protection=none
> > (EFI does not support branch protection features[1]), add no-op code
> > to work around a Clang bug that emits an unwanted .note.gnu.property
> > section for object files without code[2].
> >
> > [1] https://lore.kernel.org/lkml/CAMj1kXHck12juGi=E=P4hWP_8vQhQ+-x3vBMc3TGeRWdQ-XkxQ@mail.gmail.com
> > [2] https://bugs.llvm.org/show_bug.cgi?id=46480
> >
> > Cc: Ard Biesheuvel <ardb@kernel.org>
> > Cc: Will Deacon <will@kernel.org>
> > Cc: Dave Martin <Dave.Martin@arm.com>
> > Cc: clang-built-linux@googlegroups.com
> > Signed-off-by: Kees Cook <keescook@chromium.org>
> > ---
> >  lib/ctype.c | 10 ++++++++++
> >  1 file changed, 10 insertions(+)
> >
> > diff --git a/lib/ctype.c b/lib/ctype.c
> > index c819fe269eb2..21245ed57d90 100644
> > --- a/lib/ctype.c
> > +++ b/lib/ctype.c
> > @@ -36,3 +36,13 @@ _L,_L,_L,_L,_L,_L,_L,_L,_L,_L,_L,_L,_L,_L,_L,_L,     /* 224-239 */
> >  _L,_L,_L,_L,_L,_L,_L,_P,_L,_L,_L,_L,_L,_L,_L,_L};      /* 240-255 */
> >
> >  EXPORT_SYMBOL(_ctype);
> > +
> > +/*
> > + * Clang will generate .note.gnu.property sections for object files
> > + * without code, even in the presence of -mbranch-protection=none.
> > + * To work around this, define an unused static function.
> > + * https://bugs.llvm.org/show_bug.cgi?id=46480
> > + */
> > +#ifdef CONFIG_CC_IS_CLANG
> > +void __maybe_unused __clang_needs_code_here(void) { }
> > +#endif
> > --
> > 2.25.1
> >
> 
> I take it we don't need this horrible hack if we build the EFI stub
> with branch protections and filter out the .note.gnu.property section
> explicitly?
> 
> Sorry to backpedal, but that is probably a better approach after all,
> given that the instructions don't hurt, and we will hopefully be able
> to arm them once UEFI (as well as PE/COFF) gets around to describing
> this in a way that both the firmware and the OS can consume.

How does this look?


commit 051ef0b75a386c3fe2f216d16246468147a48c5b
Author: Kees Cook <keescook@chromium.org>
Date:   Tue Jun 23 18:02:56 2020 -0700

    efi/libstub: Disable -mbranch-protection
    
    In preparation for adding --orphan-handling=warn to more architectures,
    disable -mbranch-protection, as EFI does not yet support it[1].  This was
    noticed due to it producing unwanted .note.gnu.property sections (prefixed
    with .init due to the objcopy build step).
    
    However, we must also work around a bug in Clang where the section is
    still emitted for code-less object files[2], so also remove the section
    during the objcopy.
    
    [1] https://lore.kernel.org/lkml/CAMj1kXHck12juGi=E=P4hWP_8vQhQ+-x3vBMc3TGeRWdQ-XkxQ@mail.gmail.com
    [2] https://bugs.llvm.org/show_bug.cgi?id=46480
    
    Cc: Ard Biesheuvel <ardb@kernel.org>
    Cc: Arvind Sankar <nivedita@alum.mit.edu>
    Cc: Atish Patra <atish.patra@wdc.com>
    Cc: linux-efi@vger.kernel.org
    Signed-off-by: Kees Cook <keescook@chromium.org>

diff --git a/drivers/firmware/efi/libstub/Makefile b/drivers/firmware/efi/libstub/Makefile
index 75daaf20374e..f9f1922f8f28 100644
--- a/drivers/firmware/efi/libstub/Makefile
+++ b/drivers/firmware/efi/libstub/Makefile
@@ -18,7 +18,8 @@ cflags-$(CONFIG_X86)		+= -m$(BITS) -D__KERNEL__ \
 # arm64 uses the full KBUILD_CFLAGS so it's necessary to explicitly
 # disable the stackleak plugin
 cflags-$(CONFIG_ARM64)		:= $(subst $(CC_FLAGS_FTRACE),,$(KBUILD_CFLAGS)) \
-				   -fpie $(DISABLE_STACKLEAK_PLUGIN)
+				   -fpie $(DISABLE_STACKLEAK_PLUGIN) \
+				   $(call cc-option,-mbranch-protection=none)
 cflags-$(CONFIG_ARM)		:= $(subst $(CC_FLAGS_FTRACE),,$(KBUILD_CFLAGS)) \
 				   -fno-builtin -fpic \
 				   $(call cc-option,-mno-single-pic-base)
@@ -66,6 +67,12 @@ lib-$(CONFIG_X86)		+= x86-stub.o
 CFLAGS_arm32-stub.o		:= -DTEXT_OFFSET=$(TEXT_OFFSET)
 CFLAGS_arm64-stub.o		:= -DTEXT_OFFSET=$(TEXT_OFFSET)
 
+# Even when -mbranch-protection=none is set, Clang will generate a
+# .note.gnu.property for code-less object files (like lib/ctype.c),
+# so work around this by explicitly removing the unwanted section.
+# https://bugs.llvm.org/show_bug.cgi?id=46480
+STUBCOPY_FLAGS-y		+= --remove-section=.note.gnu.property
+
 #
 # For x86, bootloaders like systemd-boot or grub-efi do not zero-initialize the
 # .bss section, so the .bss section of the EFI stub needs to be included in the

-- 
Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202006290806.3BDE2A8%40keescook.
