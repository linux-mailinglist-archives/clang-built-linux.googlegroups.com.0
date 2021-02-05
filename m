Return-Path: <clang-built-linux+bncBDYJPJO25UGBBOE462AAMGQEX7S3XIQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x539.google.com (mail-ed1-x539.google.com [IPv6:2a00:1450:4864:20::539])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D7F1310FD9
	for <lists+clang-built-linux@lfdr.de>; Fri,  5 Feb 2021 19:28:09 +0100 (CET)
Received: by mail-ed1-x539.google.com with SMTP id m16sf7450357edd.21
        for <lists+clang-built-linux@lfdr.de>; Fri, 05 Feb 2021 10:28:09 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1612549689; cv=pass;
        d=google.com; s=arc-20160816;
        b=z59SVpDdWB1ZPxYWHSMapkv2qWNQA3QusO/t1GMWVJ1gCFJlHkZE4iUf0cyj6rtT4f
         rnvXhlWPDpav+1yv29iq+lHyXnIhX+Oopw7P8SgFClPGmLcAor6y0iM26hz8QmF2HiaD
         sWWnPZNINNpitkzSaSQZfx7odmFsipFh8kknPZPmsJ+/Tpy4jCfyyrn/UvxbMQrynfXo
         x4/cTXwUEM1JYeQOlzbmBbEz2CDt0tAmfUB5oPcZGltikze+sZugChf9NiyERByBWWtQ
         JEPAETrpz1WqSc6HDZf068IgcAFwb9pKUdL9HJHpN0zhPtzq9edE1h4KEmGcae1v05to
         ks0A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=VQ6jvkX5f4JKLqC+Ih8QYrgceQs4P4KkaELGu9+BsUw=;
        b=YTQ2Bk7vRhldLvLWifmIHBtd6qJSsCA6Y5RgIotUfPwTXLHo0Os1huM12Vk1dHr5tF
         fbEO2xLn/I2m1Fnxp54dFh+WI/yttgMiaz6BDDTvfeJgDx3hHeuYg3Ev6KaBh71fPkNh
         fPXZe2IcN2XIBjhliykC6vHTY/buVO1xMNKivxU60aNV3111As7UN3YbKmWqno1lJJm5
         2OMQucyJepcAf6prPS2EaQyLSohHAja8V61nG7vZb/7vLNFWqoe/F2MDyOIjw3wYYxxG
         /8Pe6WHfadaIfVdpadNjoltY6wG61aaYtmm/dQTPNVb+bQp2rruil0m+i4Kl5H0mjC1c
         fMdQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=u5KwWnRg;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::12d as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=VQ6jvkX5f4JKLqC+Ih8QYrgceQs4P4KkaELGu9+BsUw=;
        b=lVdUpJpUPJqkHXQpM3JrfiRWOHVH13QL35sp50+70mSacp9IzJPLA2juv5H9n6MFhI
         +YU1uYS3LOFYBVFnzsGXRE80rtI4f3G7FGWkEAJqJ+9QkRudy6sJwdPmjmdwFEFqN5wy
         5LkwAZut5D1efuIJgvJTflNI749/OcaCnAK4RGkU+FbvhxZcCkzBlbQWv/aR7qDfBpXf
         8Y4L/Qsw+sZZsfgaUj0/4Yd/zBr9puWOoLjahuMD4fqO+z0V/j0w2uL+eGeP1+U30TAT
         xLzYid0HnhOc/xHIAMP1+HSlf6RXc5B9uwWvPIqQHDcJ5Hb3CtX0YzIiWt1l21Fh8R9f
         yfDw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=VQ6jvkX5f4JKLqC+Ih8QYrgceQs4P4KkaELGu9+BsUw=;
        b=LEnwixxDMDNyc+fhGSBPgJZWwgqp/G1aaiT/MxJDHWJ7JH9zZxOoboyWL5iixDKICC
         VHccPmzyHvRMprZHsK0aReKNJT6FGCZo8/iX2plztCZyLa2HH8xti98hegbYtUDeZXO3
         Aza41VW+knCHHnD/M2G3c+1yAF3dLAsxrLaDYZvgNS9O8aRZC9St7nuyg9KWX2j4WkBN
         v+T1b14UrKLmbHTbJzQFhf4TG9y1QTc970WPOM147ejyke80IaGDmkepmJAHSjpogMYS
         p8peRhwDydMuH6w1+rcl4yEiD4oBS1AiNjtYhRe4Msa43M6sX2nBuN6NabnCyA3ONE+c
         jCng==
X-Gm-Message-State: AOAM5313fg4ZW81So79XmJJTu8Jiv5bwx8OZrF6nt+NtWzE+GRnOmDED
	sEO8C9MfQ6lgHj02IFY+fTc=
X-Google-Smtp-Source: ABdhPJxgDHKHKOLD+q0NZwza2a+bjU2CdRPU78JDV+5XRmtmGe9X6UXySuMLMOegTlMC0Yq5gsPVqw==
X-Received: by 2002:a05:6402:1ad1:: with SMTP id ba17mr4925175edb.243.1612549689004;
        Fri, 05 Feb 2021 10:28:09 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:906:b209:: with SMTP id p9ls4978903ejz.4.gmail; Fri, 05
 Feb 2021 10:28:08 -0800 (PST)
X-Received: by 2002:a17:906:c00c:: with SMTP id e12mr5097957ejz.103.1612549688168;
        Fri, 05 Feb 2021 10:28:08 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1612549688; cv=none;
        d=google.com; s=arc-20160816;
        b=xfKSnvTqp5X2/oxfeFgsDttLx5UeTev2ZLlJMYRuCSayjrOh1693HGzE6ny+MHuSQX
         4tNWetl3ibUbh3un+aH9tU/bM0dAgt/ew6KTpQ5plb5kZdOl+IXtv1VDN4ijjAEcKN3m
         8wFSxtOZv7H5kcNVo8p6ULFJp4t0n+cNort9LSNQZXSSS3CTcBwfUXxHFFjXEeuAfOM3
         0zJvsp1ejV9sssoRoViD0be3181e+G4RrhSCp16SX5HEzpDG0MsKUpcvNsfO+ojssj07
         yw49NQzbgdfffCc+TAG17b4VwukCzxFXBYnoG/TGOZDbmwM89zFpnh89ZyZN6cLKs5pr
         rGSg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=vlQvi4zwrhYdmhWv9Vq2VVPj783HBaHFi1PsMzmm4d4=;
        b=e8saR026EMv8Z1JCDgwd0SIEDQ+QZ31vN02W1ZdDNw5eixWFmPq2Bpqnw5808YjbI7
         sZIfuuSj2i0ijh0lpJnAzw8YdU6NJ5h+Go0lX91iB+Jc2VTdiNjWRnxyBFaAdZYT0C1z
         dG/zDnYySOHiPt0yOJH9u/Tuv5iIeu/eZ8prV+vq6sYcdWUQkJQbNlqQ70Is6TpYtmU7
         LTfQxx80MUAH5XYFoI4Eln87DCpXGA0JOueC+7WsUX+J6GYahfIu7smBCG/2crcp90BE
         KfUqEYms3IUhreF4++evBsIFpdcsyVDcams6qXcy560mVt+/ile483mDlimxyT8LZIpz
         gYDQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=u5KwWnRg;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::12d as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-lf1-x12d.google.com (mail-lf1-x12d.google.com. [2a00:1450:4864:20::12d])
        by gmr-mx.google.com with ESMTPS id ce26si566233edb.2.2021.02.05.10.28.08
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 05 Feb 2021 10:28:08 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::12d as permitted sender) client-ip=2a00:1450:4864:20::12d;
Received: by mail-lf1-x12d.google.com with SMTP id v24so11230200lfr.7
        for <clang-built-linux@googlegroups.com>; Fri, 05 Feb 2021 10:28:08 -0800 (PST)
X-Received: by 2002:ac2:5e84:: with SMTP id b4mr3353569lfq.73.1612549687415;
 Fri, 05 Feb 2021 10:28:07 -0800 (PST)
MIME-Version: 1.0
References: <20210107223424.4135538-1-arnd@kernel.org> <YAHoB4ODvxSqNhsq@rani.riverdale.lan>
 <YAH6r3lak/F2wndp@rani.riverdale.lan> <CAMj1kXGZFZciN1_KruCr=g6GANNpRrCLR48b3q13+QfK481C7Q@mail.gmail.com>
 <20210118202409.GG30090@zn.tnic> <YAYAvBARSRSg8z8G@rani.riverdale.lan>
 <CAMj1kXHM98-iDYpAozaWEv-qxhZ0-CUMwSdG532x2d+55gXDhQ@mail.gmail.com>
 <20210203185148.GA1711888@localhost> <20210205103457.GC17488@zn.tnic>
In-Reply-To: <20210205103457.GC17488@zn.tnic>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Fri, 5 Feb 2021 10:27:54 -0800
Message-ID: <CAKwvOdnAoNrbAs2kLng-k3L8j4hGS5HtJUv3L-pVwi+5dARQfg@mail.gmail.com>
Subject: Re: [PATCH] x86: efi: avoid BUILD_BUG_ON() for non-constant p4d_index
To: Borislav Petkov <bp@alien8.de>
Cc: Nathan Chancellor <nathan@kernel.org>, Ard Biesheuvel <ardb@kernel.org>, 
	Arvind Sankar <nivedita@alum.mit.edu>, Arnd Bergmann <arnd@kernel.org>, 
	Thomas Gleixner <tglx@linutronix.de>, Ingo Molnar <mingo@redhat.com>, X86 ML <x86@kernel.org>, 
	Nathan Chancellor <natechancellor@gmail.com>, Arnd Bergmann <arnd@arndb.de>, 
	Darren Hart <dvhart@infradead.org>, Andy Shevchenko <andy@infradead.org>, 
	"H. Peter Anvin" <hpa@zytor.com>, linux-efi <linux-efi@vger.kernel.org>, 
	platform-driver-x86@vger.kernel.org, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	"Kirill A. Shutemov" <kirill.shutemov@linux.intel.com>, Kees Cook <keescook@chromium.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=u5KwWnRg;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::12d
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

On Fri, Feb 5, 2021 at 2:35 AM Borislav Petkov <bp@alien8.de> wrote:
>
> On Wed, Feb 03, 2021 at 11:51:48AM -0700, Nathan Chancellor wrote:
> > x86_64 all{mod,yes}config with clang are going to ship broken in 5.11.
>
> Dunno, it is still broken here even with those build assertions removed. And it
> ain't even an all{mod,yes}config - just my machine's config with
>
> CONFIG_ARCH_HAS_UBSAN_SANITIZE_ALL=y
> CONFIG_UBSAN=y
> # CONFIG_UBSAN_TRAP is not set
> CONFIG_CC_HAS_UBSAN_BOUNDS=y
> CONFIG_CC_HAS_UBSAN_ARRAY_BOUNDS=y
> CONFIG_UBSAN_BOUNDS=y
> CONFIG_UBSAN_ARRAY_BOUNDS=y
> CONFIG_UBSAN_SHIFT=y
> CONFIG_UBSAN_DIV_ZERO=y
> CONFIG_UBSAN_SIGNED_OVERFLOW=y
> CONFIG_UBSAN_UNSIGNED_OVERFLOW=y
> CONFIG_UBSAN_OBJECT_SIZE=y
> CONFIG_UBSAN_BOOL=y
> CONFIG_UBSAN_ENUM=y
> CONFIG_UBSAN_ALIGNMENT=y
> CONFIG_UBSAN_SANITIZE_ALL=y
> # CONFIG_TEST_UBSAN is not set
>
> and clang-10:
>
> lib/strncpy_from_user.o: warning: objtool: strncpy_from_user()+0x253: call to __ubsan_handle_add_overflow() with UACCESS enabled
> lib/strnlen_user.o: warning: objtool: strnlen_user()+0x244: call to __ubsan_handle_add_overflow() with UACCESS enabled
> ld: init/main.o: in function `kmalloc':
> /home/boris/kernel/linux/./include/linux/slab.h:557: undefined reference to `__ubsan_handle_alignment_assumption'
> ld: init/initramfs.o: in function `kmalloc':
> /home/boris/kernel/linux/./include/linux/slab.h:552: undefined reference to `__ubsan_handle_alignment_assumption'
> ld: init/initramfs.o: in function `kmalloc_large':
> /home/boris/kernel/linux/./include/linux/slab.h:481: undefined reference to `__ubsan_handle_alignment_assumption'
> ld: init/initramfs.o: in function `kmalloc':
> /home/boris/kernel/linux/./include/linux/slab.h:552: undefined reference to `__ubsan_handle_alignment_assumption'
> ld: /home/boris/kernel/linux/./include/linux/slab.h:552: undefined reference to `__ubsan_handle_alignment_assumption'
> ld: init/initramfs.o:/home/boris/kernel/linux/./include/linux/slab.h:552: more undefined references to `__ubsan_handle_alignment_assumption' follow
> ld: mm/mremap.o: in function `get_extent':
> /home/boris/kernel/linux/mm/mremap.c:355: undefined reference to `__compiletime_assert_327'

^ this one is https://lore.kernel.org/lkml/20201230154104.522605-1-arnd@kernel.org/.
Trying to get the last of these tracked down.  I think there were some
changes to UBSAN configs that weren't tested with clang before merged.

> ld: mm/rmap.o: in function `anon_vma_chain_alloc':
> /home/boris/kernel/linux/mm/rmap.c:136: undefined reference to `__ubsan_handle_alignment_assumption'
> ld: mm/rmap.o: in function `anon_vma_alloc':
> /home/boris/kernel/linux/mm/rmap.c:89: undefined reference to `__ubsan_handle_alignment_assumption'
> ld: mm/rmap.o: in function `anon_vma_chain_alloc':
> /home/boris/kernel/linux/mm/rmap.c:136: undefined reference to `__ubsan_handle_alignment_assumption'
> ld: /home/boris/kernel/linux/mm/rmap.c:136: undefined reference to `__ubsan_handle_alignment_assumption'
> ld: /home/boris/kernel/linux/mm/rmap.c:136: undefined reference to `__ubsan_handle_alignment_assumption'
> ld: mm/vmalloc.o:/home/boris/kernel/linux/mm/vmalloc.c:1213: more undefined references to `__ubsan_handle_alignment_assumption' follow
> make: *** [Makefile:1164: vmlinux] Error 1
>
> --
> Regards/Gruss,
>     Boris.
>
> https://people.kernel.org/tglx/notes-about-netiquette



-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdnAoNrbAs2kLng-k3L8j4hGS5HtJUv3L-pVwi%2B5dARQfg%40mail.gmail.com.
