Return-Path: <clang-built-linux+bncBDYJPJO25UGBBV6Z5D3QKGQEEJLRAMI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33d.google.com (mail-ot1-x33d.google.com [IPv6:2607:f8b0:4864:20::33d])
	by mail.lfdr.de (Postfix) with ESMTPS id B720820D081
	for <lists+clang-built-linux@lfdr.de>; Mon, 29 Jun 2020 20:03:04 +0200 (CEST)
Received: by mail-ot1-x33d.google.com with SMTP id d2sf11993060otk.9
        for <lists+clang-built-linux@lfdr.de>; Mon, 29 Jun 2020 11:03:04 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1593453783; cv=pass;
        d=google.com; s=arc-20160816;
        b=aQqFBfniNg2sCc95EJaJEeRbk7Sy6KZlF7R3Ap/zvciXXAMLYZaMj87FwAfMCMavVB
         tnSnIskiaaW9H6NGY4a5ahHw3YdQlvI5piEOjR0Ynbpc08OX8fkEVTOzmAZ3gt113ag1
         vHxmIc3nNTmJ61LrFc7Fpo01VrMrKY+feOW8cYIpQsV2tW83dp9ocOG/D1ThD1wBc/1I
         W4WZAF/EP8nPw+sWOqwNJKTURvcIXZ00g+uYN33gxSjrGONQqbfeU4XvUz4/DugW6NQS
         RoADd1ihh9Ub2b2o9hFPNBGQOF45rsghtrcXHehGWaDq+xWmZil9YoOqfo+MWp1w5+o4
         6buA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=u5y5BRc7uzQKWbB/fnnbKom0cNXOYgQNe7QkaXcMph0=;
        b=fHVuZ25/xPJvlHKNuvvmRXprdAucVgh45+2I8p7xR7QmDxWSMNoRPg/7Op46VpWiOq
         TtJHRugL0X1vDqGRc1BA2bFXNtzNlwY/O2Wfva8JWTzjlhO9BU7N3/PYJaxhz9IZhsll
         /CPJpTkrBE/lT3KIXjc2o23u1WWJzSTjHbQnU6PD9+xVMZ2SV70S/2DomNpo+HHh5Ysq
         0QRWmoZ74tYh4R3/in4+bE8Qy0eyLZXc/VnAFTcbj2HlO5oup+nwlDwGiolQXmJGqwa6
         p5xnofuc+iYRX+wosSgNOONNcRlglkU8zh8aDyqr+fCUtG8hcP5oSXnvKL7YKm1BkeIx
         tYZg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=r13LcPYk;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::442 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=u5y5BRc7uzQKWbB/fnnbKom0cNXOYgQNe7QkaXcMph0=;
        b=XX/hMUrJGywAxvbwWCsoc1wPwg8Mb54YwlAEIwtTzPVQw0hROqaJ7heY2F7hfSP9cS
         O0pJx9bNJ9psM3IbZxytziXCeeMkic3Nu/gfkjJoS2khkWgdxdedqLeip1l792XV68x/
         SluSUZm1FC2yjxhYZgSk3nY6sOL1Uqj9EGApXD69zhiu4I+Kt8bDAtInlLjNQwPG4d/w
         /6F14ZCRRl0jyp4z3T/dpnqT1EBc+gPSkTf+17MojH4FrpXj2apxrEvvCxuYMRUaA3D4
         F4Y2kwHrK1j2k+p+JzNdOV9nwVAD8UTgADBXANfIM8SgOjEj7UlC3bwli1X0xTNMxE/Q
         LQdQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=u5y5BRc7uzQKWbB/fnnbKom0cNXOYgQNe7QkaXcMph0=;
        b=DybWJvIstpA6ffTd3PL2kjNz8ALexF7pfKvCZtQg3xP1JLA7/KNNP1Z0EpI8TlSJKs
         /JfjDZZBTjHdsBzqsvcHKV8P00pkKDSlI1nsuVxvu1Qms4sidoFGAumsOHJVt/SMxD+5
         hm0e5ZIEBZuzQNkakrNNMyBrDxFqrbGnfRYST/SbPf+AxxcenCEfmOK3SFBQKQlW/Q/q
         fPPOjibcQcJtpG9TLQ+0zHbvPrq4OJb9NBAMGuTHd2VzxRdT6QG7Cb/C4Em9g/db5yh7
         5cKJzjlvyj5bua6rNXHdw2tR+hsbIk+h61puDLBLn0yLvVq7Msiqcn/8OhgqYSgIzbTu
         ofOA==
X-Gm-Message-State: AOAM530yFw3bfh88lB0uKZYCZDKxehBqrYdDxkqObFgCdALjgoOV9Ze0
	A7YWpF1aQqB0XXNZ6Dnu8ZY=
X-Google-Smtp-Source: ABdhPJzsFPDRC6Lt7BdGWBBh/1TUVSDUAfh9mKh9pinP6yyur5kYJr/u/gjrFl1zHWNnR0bZYqS0iA==
X-Received: by 2002:aca:f583:: with SMTP id t125mr9116606oih.102.1593453783322;
        Mon, 29 Jun 2020 11:03:03 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6830:1e4d:: with SMTP id e13ls382848otj.5.gmail; Mon, 29
 Jun 2020 11:03:03 -0700 (PDT)
X-Received: by 2002:a9d:4812:: with SMTP id c18mr10040908otf.98.1593453782997;
        Mon, 29 Jun 2020 11:03:02 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1593453782; cv=none;
        d=google.com; s=arc-20160816;
        b=F0MqKTiD7EMela/cAqNA4zrwzt6eDW4KZzxQACp0N4arRXrtDh0cBLQn3eyIjBhAQ1
         8IEoQbbh/rvkt3F31UUMoLNHZNF0UcZ7f66k2fGOIQg11dheZR1Dv2kw7r83oOYWk8m+
         vRGrg/ZOIm/qbC3NGFzvOAPjaJgSFVZb7kx/Ok1NXsKYtkSEeFeClMaEdzCXJpwzpTiy
         UOf4VtUtdVisDxz1TBaKSTlsL1ozex58fLioRZKAEugFdvSb0AYZeXIg5Lvmc0tYfmp8
         lI881pfx0IAtP81ZRw8vQEHiK93W7ayh8y7UaAD4Od9BDy9qtOHmJJAolZ9z7BLnaSXn
         +yKg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=jcOa7nLCMvwvBvn+lXefiaEhY1cnw7datfi9VffahTk=;
        b=xzqKKq678rId0igt/gtF1Jt80Uixp1FJbYmojq0RAzPJKVylA5SCATtFEuoXM/sxzb
         VmAUM8t0o1xGHjwwSP3jJVE+pCbfYhFu4+g3Wqdjyxw2ZpivUzKQtggG2K4eW1hoh0cB
         XivlZOpxtEZPNlFjtwvaswHT32q0HzhrmkGZdiM0SXAPMp8UcbwNnzImJQXqHuxouQwZ
         RqNq1CG6YvS09/mwkKzQ4bPIoxLOjWeIaz5kgcL4LvVf9VDS94d4bNa5Abx+8oETopJh
         xCahHhstKAHzqQgGRiUyyvY0e+UaFM1KIUbNBgv13ylz2Z43bIp36MFXdvykswnYf3jX
         XVEw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=r13LcPYk;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::442 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x442.google.com (mail-pf1-x442.google.com. [2607:f8b0:4864:20::442])
        by gmr-mx.google.com with ESMTPS id j2si28929otr.0.2020.06.29.11.03.02
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 29 Jun 2020 11:03:02 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::442 as permitted sender) client-ip=2607:f8b0:4864:20::442;
Received: by mail-pf1-x442.google.com with SMTP id j12so8213244pfn.10
        for <clang-built-linux@googlegroups.com>; Mon, 29 Jun 2020 11:03:02 -0700 (PDT)
X-Received: by 2002:a05:6a00:15ca:: with SMTP id o10mr15661788pfu.169.1593453782335;
 Mon, 29 Jun 2020 11:03:02 -0700 (PDT)
MIME-Version: 1.0
References: <20200629061840.4065483-1-keescook@chromium.org>
 <20200629061840.4065483-6-keescook@chromium.org> <CAMj1kXE+toCd=Bx-zw7D9bvDRNB2aPn5-_7CY7MOKcVGA-azVg@mail.gmail.com>
 <202006290806.3BDE2A8@keescook>
In-Reply-To: <202006290806.3BDE2A8@keescook>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 29 Jun 2020 11:02:51 -0700
Message-ID: <CAKwvOd=DMfmvfiEX7KDPLs75SbNz+LAGSwC3V_=LgGH3kjtE=g@mail.gmail.com>
Subject: Re: [PATCH v4 05/17] ctype: Work around Clang -mbranch-protection=none
 bug
To: Kees Cook <keescook@chromium.org>
Cc: Ard Biesheuvel <ardb@kernel.org>, Will Deacon <will@kernel.org>, Dave Martin <Dave.Martin@arm.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Catalin Marinas <catalin.marinas@arm.com>, Mark Rutland <mark.rutland@arm.com>, 
	Peter Collingbourne <pcc@google.com>, James Morse <james.morse@arm.com>, Borislav Petkov <bp@suse.de>, 
	Thomas Gleixner <tglx@linutronix.de>, Ingo Molnar <mingo@redhat.com>, 
	Russell King <linux@armlinux.org.uk>, Masahiro Yamada <masahiroy@kernel.org>, 
	Arvind Sankar <nivedita@alum.mit.edu>, Nathan Chancellor <natechancellor@gmail.com>, 
	Arnd Bergmann <arnd@arndb.de>, X86 ML <x86@kernel.org>, linux-arch <linux-arch@vger.kernel.org>, 
	linux-efi <linux-efi@vger.kernel.org>, 
	Linux ARM <linux-arm-kernel@lists.infradead.org>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, Daniel Kiss <daniel.kiss@arm.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=r13LcPYk;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::442
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

On Mon, Jun 29, 2020 at 8:06 AM Kees Cook <keescook@chromium.org> wrote:
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

This is definitely better than the empty function.  Though a patch is
posted for fixing this in LLVM. Assuming that lands before this, we
might not actually need this workaround?

arch/arm64/Kconfig
1625 config ARM64_BTI_KERNEL
...
1633   # https://reviews.llvm.org/rGb8ae3fdfa579dbf366b1bb1cbfdbf8c51db7fa55
1634   depends on !CC_IS_CLANG || CLANG_VERSION >= 100001

So if Daniel's patch lands AND is backported into the clang 10.0.1
release, then we might not need to carry this workaround?  Either way,

Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>

> +
>  #
>  # For x86, bootloaders like systemd-boot or grub-efi do not zero-initialize the
>  # .bss section, so the .bss section of the EFI stub needs to be included in the
>
> --
> Kees Cook

-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOd%3DDMfmvfiEX7KDPLs75SbNz%2BLAGSwC3V_%3DLgGH3kjtE%3Dg%40mail.gmail.com.
