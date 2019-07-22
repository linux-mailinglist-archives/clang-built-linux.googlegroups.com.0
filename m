Return-Path: <clang-built-linux+bncBDYJPJO25UGBBSHI3DUQKGQEBORDZXQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb40.google.com (mail-yb1-xb40.google.com [IPv6:2607:f8b0:4864:20::b40])
	by mail.lfdr.de (Postfix) with ESMTPS id BA21470C60
	for <lists+clang-built-linux@lfdr.de>; Tue, 23 Jul 2019 00:10:17 +0200 (CEST)
Received: by mail-yb1-xb40.google.com with SMTP id b78sf2658171ybg.20
        for <lists+clang-built-linux@lfdr.de>; Mon, 22 Jul 2019 15:10:17 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1563833416; cv=pass;
        d=google.com; s=arc-20160816;
        b=xuGnrYPRla3r4rirSuJ2+E73Qs4StHGM1r+cEl88uzi3CMvzqZMpkher63HoH54KBe
         AePm5qqnvz1eoL3yF+iftX0HSw+gbuUCqSv4mag18jnewsytcfttcHUMKc/gngL0r5Ob
         /nNY4kGlKnzNVmjwbifgP2EEcs3Hy1eJvBR19Q6mq1n87GPWz78SkH0x2CgdP7txJLHp
         ARi5JsWBLS3nyu6G2fOH0ca+hNHBC5lvP0TcbnP6/8oBgD2A4RhcOdxNYREs1UMY50Ih
         A9gC96Joax45vd7u1baJUe78NPnMOTSvW8HYM0lqKTrdqbK0NKntR6xi3Yq9yHQXgl5c
         2s6g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=hpH5fEz33/zfwRG+jtypGJLYZKeg6F4sBYwc6uBg7l4=;
        b=iUC4fj18Dh63YBhPIXNQfd82iur59dcOPtFQN/ZXWNwda3fLyy2KQLvyniMorHd6La
         wOvyceAv3Hm/8d39GYmNo9M+tEo6MI6ZZqPp/N80WBk+KeHc7ZCxWJssE9KGE+Fqmzo0
         v8j55VYQEFyJULxgUbBRO+PDrYseP84W0PSWFWcIL6McBZoQpDLpOwNwQY6CodBGGOk5
         irVEMZsEWjkmtZ0mg1XpQdyYacAFQfziFxhNweA/RaX+rncHH0EHHCAeukK8seXOhe71
         N9HWbU2qTnXpITk6nLB2IZK9Fe1lIuUPh7b8yf8SDNb5XtwlbneiFVlXUBEkX96nItlU
         /aEg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=dzmrcvvd;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::543 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=hpH5fEz33/zfwRG+jtypGJLYZKeg6F4sBYwc6uBg7l4=;
        b=c+a9fEElw+fpKwXhi4V20lx2jSLdmjdZqLu31Sm0LcXqDpvmAnY88q3DVJYJZHTxSm
         bwRcii0sKu4ZZDQ3GsU5qkebLEw/GDyYKcmXr3DUkR3qYF3RmsbBKcm6yl0o+kzSQvKi
         srcyTKh80IomOULR6dL466k0O0X7PyopCs+s8qWSLlojA6+Y6L5zWyYsaTTokUp4IIsH
         0QsAezPAO3vStbphWquNJ/GaWvuIt2UYadCzJvxt/vZwckWbctdnWiGt0Fu+tXEJj7TX
         jg3TLO3v1IkmwCkPWJkFj3oDnUfsDxaJ4fALLBkBAyRT2ApszP8Yfy5Hza/CgJnLFVFq
         HkRQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=hpH5fEz33/zfwRG+jtypGJLYZKeg6F4sBYwc6uBg7l4=;
        b=JtXkrg+lKVebSr4U3AvPawoJ61V3IyT298NmMJKgGgeRoG4ngAFCKKHG+15vkV6p88
         3u74MdUVEtYpM2YnnzkmSHqC1MhfCWJ/8J4T64JkjqRn/S15Gn179CWQWN64avndKrHB
         2bzlSc97NDiXd/a21zUxwcNh96g+PN1fjveCmYnHcnxEitrgU/WcjoQDcICHXV5SZveu
         hs2rJvSxOh0f3vqHoQKgGggQizgFhjgFqTuIiaBekKKJn2c/36XCcuG7IwFMZZdM2U+G
         d1rx89s5WOumzAy3GOdDW+xQCPY8I3nqmS8uo5ue36irzeu4algI8iWdnrlhvHwYF4dD
         Neag==
X-Gm-Message-State: APjAAAUvJXHb1TrL1qwHCPRA6O58FC1Vvh9EjXBosj9N6P5/Y6RPuVjB
	pCmtM/Zq4Pe95CAIja9NyQ0=
X-Google-Smtp-Source: APXvYqzXkSerqQXfmYbyy/2tjt28DAvKQnATM7Yg/3/fNL3L1Uiztz5vc1k1FIY32crANpYt5prPDQ==
X-Received: by 2002:a81:9844:: with SMTP id p65mr42350951ywg.127.1563833416655;
        Mon, 22 Jul 2019 15:10:16 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a81:a087:: with SMTP id x129ls4773160ywg.14.gmail; Mon, 22
 Jul 2019 15:10:16 -0700 (PDT)
X-Received: by 2002:a81:54c2:: with SMTP id i185mr44031078ywb.155.1563833416441;
        Mon, 22 Jul 2019 15:10:16 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1563833416; cv=none;
        d=google.com; s=arc-20160816;
        b=BukMdATY7wlgeS0nDOEUUUqCANnZ57c7HYk1tow0gfyY0oN/d3O8QrJxkwS4wFAmvt
         stX+fYN3gcSKG0jaeRhAmkpHK+brDz5LRqAXzj6Gco5uU7n6sv5H1GMhWk5M93FsqRWu
         d6ZeM/I7sZrNZjkO+BO3C8wphztgX6k7RPZYcRH33XYxJtXlUsq/C3bkEcozFhXc7WZ1
         1amNmc+AaqSfsT+uPiSF1KSNithBLMzC0isfWYb00PGHy9Vg21ke9CPnJoYuHcvbtvP7
         IdhPfuv3VVRFRBTgn5rFj2SZlpKwR09GZlXoDKDj9VOZlp+bBXW194wXYXvwx+uGiGbI
         sNnQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=krTygS594B1FZs0zxHGIhwRvOWSOgPOCJ7d+lzUap1c=;
        b=OFcxdYB3SB2UfuySGx+tZV6SpQDZoXaCiYWfz/tdl17UFXzUV9QIB7ei7rBFUB47On
         VLooRz1naCvkTNxcstSd9uCZIJsHjrNnp87OAHMZvHdIk28X5jAnDMpdPhklwHNzNpyS
         ALQ6TkzQTGJrNU3ejPd+XeB/957HeZ3lzHa/MV2BRooKtSxf0STmu2r8/s35bui0DtTc
         0S7lURuej4MdDVvvQdJQAM7oal4kWIpGXjzlQAri5YRCoKAkJ7GkGGtGGjdtLsuobAmp
         113rzkPqJBYbhhOsLfn+kRnEEfwS3SwmX1+QzXNClJZ+1sRyV412TAJbcJezjH/0sGaH
         RP3g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=dzmrcvvd;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::543 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x543.google.com (mail-pg1-x543.google.com. [2607:f8b0:4864:20::543])
        by gmr-mx.google.com with ESMTPS id f131si1122662ybf.5.2019.07.22.15.10.16
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
        Mon, 22 Jul 2019 15:10:16 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::543 as permitted sender) client-ip=2607:f8b0:4864:20::543;
Received: by mail-pg1-x543.google.com with SMTP id l21so18315921pgm.3
        for <clang-built-linux@googlegroups.com>; Mon, 22 Jul 2019 15:10:16 -0700 (PDT)
X-Received: by 2002:a65:5687:: with SMTP id v7mr74903566pgs.263.1563833415147;
 Mon, 22 Jul 2019 15:10:15 -0700 (PDT)
MIME-Version: 1.0
References: <20190722213250.238685-1-ndesaulniers@google.com> <20190722213250.238685-2-ndesaulniers@google.com>
In-Reply-To: <20190722213250.238685-2-ndesaulniers@google.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 22 Jul 2019 15:10:04 -0700
Message-ID: <CAKwvOdm3iyeJfuivhQJqXB9FfC0zHgrfgoN_qW4poEyfcw3C9A@mail.gmail.com>
Subject: Re: [PATCH v2 2/2] x86/purgatory: use CFLAGS_REMOVE rather than reset KBUILD_CFLAGS
To: Thomas Gleixner <tglx@linutronix.de>, Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>
Cc: Peter Zijlstra <peterz@infradead.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Vaibhav Rustagi <vaibhavrustagi@google.com>, "H. Peter Anvin" <hpa@zytor.com>, 
	"maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>, LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=dzmrcvvd;       spf=pass
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

On Mon, Jul 22, 2019 at 2:33 PM Nick Desaulniers
<ndesaulniers@google.com> wrote:
>
> KBUILD_CFLAGS is very carefully built up in the top level Makefile,
> particularly when cross compiling or using different build tools.
> Resetting KBUILD_CFLAGS via := assignment is an antipattern.
>
> The comment above the reset mentions that -pg is problematic.  Other
> Makefiles like arch/x86/xen/vdso/Makefile use
> `CFLAGS_REMOVE_file.o = -pg` when CONFIG_FUNCTION_TRACER is set. Prefer
> that pattern to wiping out all of the important KBUILD_CFLAGS then
> manually having to re-add them.
>
> Fixes: 8fc5b4d4121c ("purgatory: core purgatory functionality")
> Reported-by: Vaibhav Rustagi <vaibhavrustagi@google.com>
> Suggested-by: Peter Zijlstra <peterz@infradead.org>
> Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
> ---
> Rather than manually add -mno-sse, -mno-mmx, -mno-sse2, prefer to filter
> -pg flags.
>
>  arch/x86/purgatory/Makefile | 12 +++++++-----
>  1 file changed, 7 insertions(+), 5 deletions(-)
>
> diff --git a/arch/x86/purgatory/Makefile b/arch/x86/purgatory/Makefile
> index 91ef244026d2..56bcabca283f 100644
> --- a/arch/x86/purgatory/Makefile
> +++ b/arch/x86/purgatory/Makefile
> @@ -20,11 +20,13 @@ KCOV_INSTRUMENT := n
>
>  # Default KBUILD_CFLAGS can have -pg option set when FTRACE is enabled. That
>  # in turn leaves some undefined symbols like __fentry__ in purgatory and not
> -# sure how to relocate those. Like kexec-tools, use custom flags.
> -
> -KBUILD_CFLAGS := -fno-strict-aliasing -Wall -Wstrict-prototypes -fno-zero-initialized-in-bss -fno-builtin -ffreestanding -c -Os -mcmodel=large
> -KBUILD_CFLAGS += -m$(BITS)

Is purgatory/kexec supported for CONFIG_X86_32?  Should I be keeping
`-m$(BITS)`?  arch/x86/purgatory/Makefile mentions
`setup-x86_$(BITS).o` which I assume is broken as there is no
arch/x86/purgatory/setup-x86_32.S?

> -KBUILD_CFLAGS += $(call cc-option,-fno-PIE)
> +# sure how to relocate those.
> +ifdef CONFIG_FUNCTION_TRACER
> +CFLAGS_REMOVE_sha256.o = -pg
> +CFLAGS_REMOVE_purgatory.o = -pg
> +CFLAGS_REMOVE_string.o = -pg
> +CFLAGS_REMOVE_kexec-purgatory.o = -pg
> +endif
>
>  $(obj)/purgatory.ro: $(PURGATORY_OBJS) FORCE
>                 $(call if_changed,ld)
> --
> 2.22.0.657.g960e92d24f-goog
>


-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdm3iyeJfuivhQJqXB9FfC0zHgrfgoN_qW4poEyfcw3C9A%40mail.gmail.com.
