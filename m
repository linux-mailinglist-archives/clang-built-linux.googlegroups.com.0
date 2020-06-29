Return-Path: <clang-built-linux+bncBD63HSEZTUIBBYMH5D3QKGQE3E3CIWQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3d.google.com (mail-yb1-xb3d.google.com [IPv6:2607:f8b0:4864:20::b3d])
	by mail.lfdr.de (Postfix) with ESMTPS id 7BA4920CF56
	for <lists+clang-built-linux@lfdr.de>; Mon, 29 Jun 2020 17:08:18 +0200 (CEST)
Received: by mail-yb1-xb3d.google.com with SMTP id 186sf18883021yby.19
        for <lists+clang-built-linux@lfdr.de>; Mon, 29 Jun 2020 08:08:18 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1593443297; cv=pass;
        d=google.com; s=arc-20160816;
        b=zENmpNl1HM7nRp0y6gXRs+NAIbTGtZI+AQCZG7iHvtq0BrNh8cKn2Gv6/Aue9eeNGe
         wrOxYxhtKDpTkeAmP2dgCXDLUrbtfElGM4cp5vca6D5rcKR87B8+0VSwc3hxgyyEXKVS
         WsdcQqbU6ZtWQPQ1jNiCk3utYsEwptStuxoMCMCd8s58IE7Qu7PCKdkB5Oho7sJ6k28R
         sYx8IMYkY03URrE/Sfgw2VEtuTcksgW0drJPYFperxl4grnl971z0mrsMiUe5PK9kxwP
         Mfyp2g4O3WGx5IKSLlTAx5eE1/dB83Rft2w5tg7VOk6GEpijnZxTJbkwx0W7ls9xc8Xh
         2cxw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=Cp9ShywV6gfJpZBCVDr7whZmoHVvXBObNbWu5JXFSYY=;
        b=b7ikJosbJI0wHpirXU8MaMq3fB/ffitHwrZvLCNsgl2y1/4qZor/pRrPOdcxThDZB4
         4EgWKHkLxSn+jbBAX44rjHhq8LHahmovj2JOB95OxjWDPJns7MDp4RIsyuuByJaWR2p4
         O6Cb/P3agSUEQBNJM49nOlnEn1hF8iv5/SIsJnhdAUmSe7YL8q2QRE2IGC/cVWuH4IrD
         Gey1FDf9GyC1sP2iNLsgVo0aOGMQoACbv2DtCEtpX6wJFMjQcJbji9dYa7YsmQJiVbgA
         Tyi2vq0GxU/2V5pu0DcCJVQAkd211hQINx9IL2Uk/vuFLAWaUjF8/0/3IEx0Y2T5GK1D
         z4vA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=CqbNccPL;
       spf=pass (google.com: domain of ardb@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=ardb@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Cp9ShywV6gfJpZBCVDr7whZmoHVvXBObNbWu5JXFSYY=;
        b=sO/jZU4lsurwY8x1AWuStzzPoLCqb9BN55M3rfu8KPm3DgA+RKu+ZyrQdCZeaFD6z8
         MAAtK4IgilJ2aQDLv6NkxxpOgckY4qn8gXWpYHZF9WBbhxdlgR/x12pnRVJi10Rpbz+5
         DwZLrXqzn30t5PqWaU2Y1y13gF6A9cVLFVUbZbTO3BOzTFYZNpbrDqpxWQKgYYTrIF6h
         R3UxKr7kFv31sSNpb/6tzKwEEu8Bz7yXRkupfRNUp079m+r2MmUihOInUMrSX1PWv2pl
         oq/dUteu3ierzELxdKZe1GNE1Jcfo8OdovHgYBFGPtzZuKtE0PRzwUTpDfGe6zL1WI8B
         pd4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Cp9ShywV6gfJpZBCVDr7whZmoHVvXBObNbWu5JXFSYY=;
        b=AZx4133+axyH1e9R+ZI2Rc4gso1ePueq96ryi2McAsbVGe1IcdwvngbGH7nq0c3W2J
         rIpiYN5eBhuCkzae3POlXRXgMOuoBm8AJiChkEoqTfgOLsWT2hTicF0oXEm88q/ebzzm
         h4BWklwDhGGuzf7Bal9/T+Rk0BFZ656jMCjBsXF5z/bahmkZh9gVBLB5jtfkR8I9nJ1b
         4QgHQV8l55mTGiWxVYeQykeqPRmy/e7foamwnul/GH31heyfk0CIa5eeMNQWFJqQvk1S
         Mc7tDmrJJkbwVX8YA0yLsmuDiJ2jyIDfhWFYVPaKEax2ddw4ZZoYSNBPLrym0JlwhTfD
         iRDQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533+cTcpXgPz6ZR4mmMO02ynTqu/5VVrMcudZyBKaGOPLAdGjxlx
	u31cVDLqIZjaQMgiLOTtnWY=
X-Google-Smtp-Source: ABdhPJwv7xuZb2TFcRhYwfdCCUA5rDhrWnW9YybRJsfKL8UE98DnIvF6vIT0B2fDI6Q6w914yykOTQ==
X-Received: by 2002:a25:83d1:: with SMTP id v17mr25827445ybm.48.1593443297292;
        Mon, 29 Jun 2020 08:08:17 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:6602:: with SMTP id a2ls6205541ybc.0.gmail; Mon, 29 Jun
 2020 08:08:16 -0700 (PDT)
X-Received: by 2002:a05:6902:50b:: with SMTP id x11mr29019957ybs.71.1593443296886;
        Mon, 29 Jun 2020 08:08:16 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1593443296; cv=none;
        d=google.com; s=arc-20160816;
        b=Yz0NgprKiZGFCKOaALN2w63uK322/SUhquTl2zXl6dxRfdOJGW42zsNYeV84IZiNkc
         NBNqtar7WSicITonDnVvXCWiTsTksDVxMVoa9dRVV2uEIpe6xapm51bNIyRtTFAssFgv
         /eWJyYsTYxuiZqWO0ZB3tCocbD5gc2ilNteXGAi+mIcCJLvAhfyGT/oxqAJmwQvzyhtJ
         vnSTSKi7wWaqZCTZ7l0T1mVTStmNJWwsQtoXIZL9QrWCW9QfpVUYzp+jr5mktxH7Xyek
         AX86+7gndscdqrteIFrVR8jNasy97xEYmv9psb0aKdMujMx/eN/Q+vgEciBHOETUlrIQ
         MY9g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=k5r0lj7wJFWBQ63gII9JGS33s5j8G+1sDb15+jnex6c=;
        b=kkHIVhkJhaC9wrF7ZM9JFTejifHgHrMQOThmhpmB1oll7coKcmBPIRF4h7ezG2DQtj
         8gkhpOH/dcQAq+6sttMG3qfKzu6+RcWEBQQ158NP8PYe5Gx4bcxRy3WdBt7/3OXxRvK0
         frbhzCMBhBloS+6i86ilT/UsHgmrwY1luz+TlF1MggdU07yAYTiLDaXyaLAbHE9y6rsk
         2XjOIInrmQeW8W1ujMIsvqgvCMr/aI88qEW+/8oHuG+zu1YD/okm+EQbdXNk93kui+v1
         I0mavtT0hcW3kEPvLaDU9e1urwEkVwnEt+DsO6ugfeZcl2oPL1o+Xh5H1NATkWLDdpAP
         YDRA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=CqbNccPL;
       spf=pass (google.com: domain of ardb@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=ardb@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id l126si840ybf.4.2020.06.29.08.08.16
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 29 Jun 2020 08:08:16 -0700 (PDT)
Received-SPF: pass (google.com: domain of ardb@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from mail-oi1-f180.google.com (mail-oi1-f180.google.com [209.85.167.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 799C723ECE
	for <clang-built-linux@googlegroups.com>; Mon, 29 Jun 2020 15:08:15 +0000 (UTC)
Received: by mail-oi1-f180.google.com with SMTP id 12so8135030oir.4
        for <clang-built-linux@googlegroups.com>; Mon, 29 Jun 2020 08:08:15 -0700 (PDT)
X-Received: by 2002:aca:b241:: with SMTP id b62mr11815740oif.47.1593443294721;
 Mon, 29 Jun 2020 08:08:14 -0700 (PDT)
MIME-Version: 1.0
References: <20200629061840.4065483-1-keescook@chromium.org>
 <20200629061840.4065483-6-keescook@chromium.org> <CAMj1kXE+toCd=Bx-zw7D9bvDRNB2aPn5-_7CY7MOKcVGA-azVg@mail.gmail.com>
 <202006290806.3BDE2A8@keescook>
In-Reply-To: <202006290806.3BDE2A8@keescook>
From: Ard Biesheuvel <ardb@kernel.org>
Date: Mon, 29 Jun 2020 17:08:03 +0200
X-Gmail-Original-Message-ID: <CAMj1kXHij8M5_kvh6EDaFa8ksbDBxqdaWGtR=-QnXhF7YosK6g@mail.gmail.com>
Message-ID: <CAMj1kXHij8M5_kvh6EDaFa8ksbDBxqdaWGtR=-QnXhF7YosK6g@mail.gmail.com>
Subject: Re: [PATCH v4 05/17] ctype: Work around Clang -mbranch-protection=none
 bug
To: Kees Cook <keescook@chromium.org>
Cc: Will Deacon <will@kernel.org>, Dave Martin <Dave.Martin@arm.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Catalin Marinas <catalin.marinas@arm.com>, Mark Rutland <mark.rutland@arm.com>, 
	Peter Collingbourne <pcc@google.com>, James Morse <james.morse@arm.com>, Borislav Petkov <bp@suse.de>, 
	Thomas Gleixner <tglx@linutronix.de>, Ingo Molnar <mingo@redhat.com>, 
	Russell King <linux@armlinux.org.uk>, Masahiro Yamada <masahiroy@kernel.org>, 
	Arvind Sankar <nivedita@alum.mit.edu>, Nick Desaulniers <ndesaulniers@google.com>, 
	Nathan Chancellor <natechancellor@gmail.com>, Arnd Bergmann <arnd@arndb.de>, X86 ML <x86@kernel.org>, 
	linux-arch <linux-arch@vger.kernel.org>, linux-efi <linux-efi@vger.kernel.org>, 
	Linux ARM <linux-arm-kernel@lists.infradead.org>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ardb@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=CqbNccPL;       spf=pass
 (google.com: domain of ardb@kernel.org designates 198.145.29.99 as permitted
 sender) smtp.mailfrom=ardb@kernel.org;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=kernel.org
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

On Mon, 29 Jun 2020 at 17:06, Kees Cook <keescook@chromium.org> wrote:
>
> On Mon, Jun 29, 2020 at 10:15:47AM +0200, Ard Biesheuvel wrote:
> > On Mon, 29 Jun 2020 at 08:18, Kees Cook <keescook@chromium.org> wrote:
> > >
> > > In preparation for building efi/libstub with -mbranch-protection=none
> > > (EFI does not support branch protection features[1]), add no-op code
> > > to work around a Clang bug that emits an unwanted .note.gnu.property
> > > section for object files without code[2].
> > >
> > > [1] https://lore.kernel.org/lkml/CAMj1kXHck12juGi=E=P4hWP_8vQhQ+-x3vBMc3TGeRWdQ-XkxQ@mail.gmail.com
> > > [2] https://bugs.llvm.org/show_bug.cgi?id=46480
> > >
> > > Cc: Ard Biesheuvel <ardb@kernel.org>
> > > Cc: Will Deacon <will@kernel.org>
> > > Cc: Dave Martin <Dave.Martin@arm.com>
> > > Cc: clang-built-linux@googlegroups.com
> > > Signed-off-by: Kees Cook <keescook@chromium.org>
> > > ---
> > >  lib/ctype.c | 10 ++++++++++
> > >  1 file changed, 10 insertions(+)
> > >
> > > diff --git a/lib/ctype.c b/lib/ctype.c
> > > index c819fe269eb2..21245ed57d90 100644
> > > --- a/lib/ctype.c
> > > +++ b/lib/ctype.c
> > > @@ -36,3 +36,13 @@ _L,_L,_L,_L,_L,_L,_L,_L,_L,_L,_L,_L,_L,_L,_L,_L,     /* 224-239 */
> > >  _L,_L,_L,_L,_L,_L,_L,_P,_L,_L,_L,_L,_L,_L,_L,_L};      /* 240-255 */
> > >
> > >  EXPORT_SYMBOL(_ctype);
> > > +
> > > +/*
> > > + * Clang will generate .note.gnu.property sections for object files
> > > + * without code, even in the presence of -mbranch-protection=none.
> > > + * To work around this, define an unused static function.
> > > + * https://bugs.llvm.org/show_bug.cgi?id=46480
> > > + */
> > > +#ifdef CONFIG_CC_IS_CLANG
> > > +void __maybe_unused __clang_needs_code_here(void) { }
> > > +#endif
> > > --
> > > 2.25.1
> > >
> >
> > I take it we don't need this horrible hack if we build the EFI stub
> > with branch protections and filter out the .note.gnu.property section
> > explicitly?
> >
> > Sorry to backpedal, but that is probably a better approach after all,
> > given that the instructions don't hurt, and we will hopefully be able
> > to arm them once UEFI (as well as PE/COFF) gets around to describing
> > this in a way that both the firmware and the OS can consume.
>
> How does this look?
>
>
> commit 051ef0b75a386c3fe2f216d16246468147a48c5b
> Author: Kees Cook <keescook@chromium.org>
> Date:   Tue Jun 23 18:02:56 2020 -0700
>
>     efi/libstub: Disable -mbranch-protection
>
>     In preparation for adding --orphan-handling=warn to more architectures,
>     disable -mbranch-protection, as EFI does not yet support it[1].  This was
>     noticed due to it producing unwanted .note.gnu.property sections (prefixed
>     with .init due to the objcopy build step).
>
>     However, we must also work around a bug in Clang where the section is
>     still emitted for code-less object files[2], so also remove the section
>     during the objcopy.
>
>     [1] https://lore.kernel.org/lkml/CAMj1kXHck12juGi=E=P4hWP_8vQhQ+-x3vBMc3TGeRWdQ-XkxQ@mail.gmail.com
>     [2] https://bugs.llvm.org/show_bug.cgi?id=46480
>
>     Cc: Ard Biesheuvel <ardb@kernel.org>
>     Cc: Arvind Sankar <nivedita@alum.mit.edu>
>     Cc: Atish Patra <atish.patra@wdc.com>
>     Cc: linux-efi@vger.kernel.org
>     Signed-off-by: Kees Cook <keescook@chromium.org>
>
> diff --git a/drivers/firmware/efi/libstub/Makefile b/drivers/firmware/efi/libstub/Makefile
> index 75daaf20374e..f9f1922f8f28 100644
> --- a/drivers/firmware/efi/libstub/Makefile
> +++ b/drivers/firmware/efi/libstub/Makefile
> @@ -18,7 +18,8 @@ cflags-$(CONFIG_X86)          += -m$(BITS) -D__KERNEL__ \
>  # arm64 uses the full KBUILD_CFLAGS so it's necessary to explicitly
>  # disable the stackleak plugin
>  cflags-$(CONFIG_ARM64)         := $(subst $(CC_FLAGS_FTRACE),,$(KBUILD_CFLAGS)) \
> -                                  -fpie $(DISABLE_STACKLEAK_PLUGIN)
> +                                  -fpie $(DISABLE_STACKLEAK_PLUGIN) \
> +                                  $(call cc-option,-mbranch-protection=none)
>  cflags-$(CONFIG_ARM)           := $(subst $(CC_FLAGS_FTRACE),,$(KBUILD_CFLAGS)) \
>                                    -fno-builtin -fpic \
>                                    $(call cc-option,-mno-single-pic-base)
> @@ -66,6 +67,12 @@ lib-$(CONFIG_X86)            += x86-stub.o
>  CFLAGS_arm32-stub.o            := -DTEXT_OFFSET=$(TEXT_OFFSET)
>  CFLAGS_arm64-stub.o            := -DTEXT_OFFSET=$(TEXT_OFFSET)
>
> +# Even when -mbranch-protection=none is set, Clang will generate a
> +# .note.gnu.property for code-less object files (like lib/ctype.c),
> +# so work around this by explicitly removing the unwanted section.
> +# https://bugs.llvm.org/show_bug.cgi?id=46480
> +STUBCOPY_FLAGS-y               += --remove-section=.note.gnu.property
> +
>  #
>  # For x86, bootloaders like systemd-boot or grub-efi do not zero-initialize the
>  # .bss section, so the .bss section of the EFI stub needs to be included in the
>


Looks fine

Acked-by: Ard Biesheuvel <ardb@kernel.org>

if you want to keep it with the set, or I can take it as a EFI fix.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAMj1kXHij8M5_kvh6EDaFa8ksbDBxqdaWGtR%3D-QnXhF7YosK6g%40mail.gmail.com.
