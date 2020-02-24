Return-Path: <clang-built-linux+bncBDYJPJO25UGBBC7M2DZAKGQEHQ3RLTI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43d.google.com (mail-pf1-x43d.google.com [IPv6:2607:f8b0:4864:20::43d])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C3B916B118
	for <lists+clang-built-linux@lfdr.de>; Mon, 24 Feb 2020 21:46:05 +0100 (CET)
Received: by mail-pf1-x43d.google.com with SMTP id q1sf7380393pfg.2
        for <lists+clang-built-linux@lfdr.de>; Mon, 24 Feb 2020 12:46:05 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1582577163; cv=pass;
        d=google.com; s=arc-20160816;
        b=GQysDn1PLjj9CSmDTXF3utCGzb8B6T9o94m3JYc7z7vw26U0okIPpBZ2zwfBa0RbkS
         /64HBZ+gfpkgZdvYJIfa3BxzrZF/1vqCaFEolOuNUkMPvqzokVrPbGmMeEeje2MXE5d7
         eta7mcHiFhgRO9N/rBhEFgIosw3AFUQsFaOBQIaVmo5kyK6hQCurNvhon1lM4zlj62fV
         1UBJk7TfaEpzaeM2NDSbLTM9dAQFm4Yn2WbJqdjKT8OVtHTIRxebMQRd9IpKg8UQ33Sg
         u9a/mXxVykz2/VcNmE452Af/fdSPJYhvcp0KxIv71h1O0494UF1knNaw+JWI08CcvON7
         XOaQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=guq/IMWg8bCRTjveb6LE/BIdUqn4RFHDw1SPb/K+lXQ=;
        b=mwNquMkqmV655lMvMt3Exx+EpMXcMpRt+U7AueE2/JU88ThteipJFd228QPLNx3Wqm
         WTdXYqDAJhhKuGb1qlcH6GbnkBJ5Z3SKUNZK8ZZfn94haLHgMozmmRkVYZCvcWOXRCz0
         nCdyLtcDP/2LGlQ1tGCq2h3eIi9far93Eep4TTFDM3pjxfcrBmLnLcDwAWyWAVpUkD1p
         DulcyAlmkVwmyjIcObTf3n3mdrH9MJ1Evh/eojhr4cYFCO/tRW4KbC1C6H2vp3VHgjdL
         UTDbc8gPW/p01E2cAQyvmFe4QO7Nrhj21EjGLLKR8XHmp+cXMc/3ArobhL5YmtmUe/gp
         Srhw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=ZRHSZE7c;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=guq/IMWg8bCRTjveb6LE/BIdUqn4RFHDw1SPb/K+lXQ=;
        b=VHqMJ+Xff7f++G1eGGTEMAiQP+u8FmAGekUJrv1e8bseU+qJPhrShiwxxSY4o3feKd
         Ybt2Lb9JvAjpkpnYrzZPsXRioT3piZWYDpYJOq0s+TiTw/rTHGJ4g3FQnWUddX9vd15j
         kUuN2/9nIsFXlkOJd0WDRdOx6lIKEep08DPZ9sKBz0Jx0ttA5l4p6KS7d7Hm4fGO6SKj
         esdDZ+TtNcBkJCC9li/dcOnLBHblpRxnC5lXhuiCINkY8YnRZhRWT69cozx01K10D7Bf
         f3KTViEZiq5fxD5QUkB9iKVBJ0Wi0ejZ5Z/ZJ/X4iiKJe5t0n82S0mKCYhPEhYvy3Fiu
         mnTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=guq/IMWg8bCRTjveb6LE/BIdUqn4RFHDw1SPb/K+lXQ=;
        b=Baa5qU1dGvmJ8J7l+5cPcaUA/hNXSJ5+VTw0lw32zxMtUJI2IVITDdmtBp0Y/4z011
         hDdXg6n5yMgR8NM7pKXcKIns0ubTo2IDZKMNc/zFvb+5K4J5U97jgnfseywm2yV3B5eM
         nF2zMnEsev4X/YuKGwVQ3Kc7W5q/rob7YSevXVuYAFfx4PexOkrhcz8InAE7FB+A9okG
         xkXNQ3vBA4WafwD+y6+kXyqoNIQ4X38AjHe8bAB4QRdOTgT2x9yV8ZYyMR2sHPjoWilk
         XviXRMLG+G7G/iJsHZoWfgR64yElzWnc4goiTAUe9JeFIJ2TAxoPcMiQX1eYkfxUuLzF
         kK1A==
X-Gm-Message-State: APjAAAX1vFt0fWJc8VPkHlt97x1HNiJaZJ9/LdkBeiZ67+SQ61Fj5TtP
	PNvmX9WRu33nUB68H8zCrZ0=
X-Google-Smtp-Source: APXvYqz1lLNChbLM5IkJIqD5ZGXcIjexfIJQkCzC/ESqdJc8A+iPUoyz9krgfX7SBUi99dFwoGsxIA==
X-Received: by 2002:a17:90a:d78f:: with SMTP id z15mr1086431pju.36.1582577163606;
        Mon, 24 Feb 2020 12:46:03 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:7c94:: with SMTP id x142ls3464754pfc.3.gmail; Mon, 24
 Feb 2020 12:46:03 -0800 (PST)
X-Received: by 2002:a63:4a47:: with SMTP id j7mr54437141pgl.196.1582577163166;
        Mon, 24 Feb 2020 12:46:03 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1582577163; cv=none;
        d=google.com; s=arc-20160816;
        b=qwVPc2kfBib8IT9ihZ2MEkzJab+REtdt4GP3dwpCCUFB4l5eaT8PeQkjl333jOhWUB
         d/odlJIk/84W1cB8oAn+SIdyJu0Sy+usOEyy3e4USBlC4hQfmOw1b1F80tEaM/tbsMPl
         /wHXBYTdJwaAfGNXb91ot86IBDkxEteHWWD6bGVTJyhN1Z3YmtmLVXogafxEpywNPpbU
         53gFE+1Vmm1bVgmaAmzaHzqyRhuGvZgyiUcl4ciNylrKFo7cjIvFWWdbahJDy6NnrqIl
         xotlsALeUC2XhxW2mlxzBwboVOZnKrFVxg7rk+plf/HkYDX/c1nDghitpM0kLcJBGsYe
         TC9g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=MEUjVJOmmnH8Vpry0d5ts1AnA+rtuK/pfVKzn69oCns=;
        b=vlm16AGZv/OtG6pszVyPKOOE4KjtJAwecLqIbtITkcf4JyqHkivBgBekm4wrc71J6L
         dXPVntvkKD4QRgShBIU1hCWcVTC0j0Bfwt3u90utfhsDJZGe8PZDhM/PlAKUtbwNiHAJ
         mPQ1hJsRNfILP586SNVL043UKLiR9SrKChzTRljfhchR0MyhquPR5IYkqDdjEUoHhdBD
         MuYGL+SEtt0gp3QkS71hBa67IQcV1Phww/04fYCTf2KAC1G1VL2XZ9PFApZrieChMvE3
         0B+aVSMOv2VeCTmIk7uITkQ1278EeZ8wN6N/3rou1B1Kg2f5jurxirNBTvAQUqn6jXkB
         MwYw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=ZRHSZE7c;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x443.google.com (mail-pf1-x443.google.com. [2607:f8b0:4864:20::443])
        by gmr-mx.google.com with ESMTPS id r18si828495pfc.2.2020.02.24.12.46.03
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 24 Feb 2020 12:46:03 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::443 as permitted sender) client-ip=2607:f8b0:4864:20::443;
Received: by mail-pf1-x443.google.com with SMTP id k29so5935744pfp.13
        for <clang-built-linux@googlegroups.com>; Mon, 24 Feb 2020 12:46:03 -0800 (PST)
X-Received: by 2002:a62:37c7:: with SMTP id e190mr53707489pfa.165.1582577162505;
 Mon, 24 Feb 2020 12:46:02 -0800 (PST)
MIME-Version: 1.0
References: <20200222235709.GA3786197@rani.riverdale.lan> <20200223193715.83729-3-nivedita@alum.mit.edu>
In-Reply-To: <20200223193715.83729-3-nivedita@alum.mit.edu>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 24 Feb 2020 12:45:51 -0800
Message-ID: <CAKwvOdmqM5aHnDCyL62gmWV5wFrKwAEdkHq+HPnvp3ZYA=dtbg@mail.gmail.com>
Subject: Re: [PATCH 2/2] arch/x86: Drop unneeded linker script discard of .eh_frame
To: Arvind Sankar <nivedita@alum.mit.edu>
Cc: Borislav Petkov <bp@alien8.de>, Nathan Chancellor <natechancellor@gmail.com>, 
	Thomas Gleixner <tglx@linutronix.de>, Ingo Molnar <mingo@redhat.com>, "H. Peter Anvin" <hpa@zytor.com>, 
	"maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>, LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Michael Matz <matz@suse.de>, 
	Fangrui Song <maskray@google.com>, Kees Cook <keescook@chromium.org>, 
	Andy Lutomirski <luto@kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=ZRHSZE7c;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::443
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

On Sun, Feb 23, 2020 at 11:37 AM Arvind Sankar <nivedita@alum.mit.edu> wrote:
>
> Now that we don't generate .eh_frame sections for the files in setup.elf
> and realmode.elf, the linker scripts don't need the /DISCARD/ any more.
>
> Also remove the one in the main kernel linker script, since there are no
> .eh_frame sections already.

Yep, we could go even further and validate the object files post link
such that $(READELF) reported no .eh_frame section, suggesting the use
of -fno-asynchronous-unwind-tables in KBUILD_CFLAGS.

>
> Signed-off-by: Arvind Sankar <nivedita@alum.mit.edu>
> ---
>  arch/x86/boot/setup.ld              | 1 -
>  arch/x86/kernel/vmlinux.lds.S       | 3 ---
>  arch/x86/realmode/rm/realmode.lds.S | 1 -
>  3 files changed, 5 deletions(-)
>
> diff --git a/arch/x86/boot/setup.ld b/arch/x86/boot/setup.ld
> index 3da1c37c6dd5..24c95522f231 100644
> --- a/arch/x86/boot/setup.ld
> +++ b/arch/x86/boot/setup.ld
> @@ -52,7 +52,6 @@ SECTIONS
>         _end = .;
>
>         /DISCARD/       : {
> -               *(.eh_frame)
>                 *(.note*)
>         }
>
> diff --git a/arch/x86/kernel/vmlinux.lds.S b/arch/x86/kernel/vmlinux.lds.S
> index e3296aa028fe..54f7b9f46446 100644
> --- a/arch/x86/kernel/vmlinux.lds.S
> +++ b/arch/x86/kernel/vmlinux.lds.S
> @@ -412,9 +412,6 @@ SECTIONS
>         DWARF_DEBUG
>
>         DISCARDS
> -       /DISCARD/ : {
> -               *(.eh_frame)
> -       }
>  }

grepping for eh_frame in arch/x86/ there's a comment in
arch/x86/include/asm/dwarf2.h:
 40 #ifndef BUILD_VDSO
 41   /*
 42    * Emit CFI data in .debug_frame sections, not .eh_frame
sections.
 43    * The latter we currently just discard since we don't do DWARF
 44    * unwinding at runtime.  So only the offline DWARF information is
 45    * useful to anyone.  Note we should not use this directive if
 46    * vmlinux.lds.S gets changed so it doesn't discard .eh_frame.
 47    */
 48   .cfi_sections .debug_frame

add via:
commit 7b956f035a9ef ("x86/asm: Re-add parts of the manual CFI infrastructure")

https://sourceware.org/binutils/docs/as/CFI-directives.html#g_t_002ecfi_005fsections-section_005flist
is the manual's section on .cfi_sections directives, and states `The
default if this directive is not used is .cfi_sections .eh_frame.`.
So the comment is slightly stale since we're no longer explicitly
discarding .eh_frame in arch/x86/kernel/vmlinux.lds.S, rather
preventing the generation via -fno-asynchronous-unwind-tables in
KBUILD_CFLAGS (across a few different Makefiles).  Would you mind also
updating the comment in arch/x86/include/asm/dwarf2.h in a V2? The
rest of this patch LGTM.

>
>
> diff --git a/arch/x86/realmode/rm/realmode.lds.S b/arch/x86/realmode/rm/realmode.lds.S
> index 64d135d1ee63..63aa51875ba0 100644
> --- a/arch/x86/realmode/rm/realmode.lds.S
> +++ b/arch/x86/realmode/rm/realmode.lds.S
> @@ -71,7 +71,6 @@ SECTIONS
>         /DISCARD/ : {
>                 *(.note*)
>                 *(.debug*)
> -               *(.eh_frame*)
>         }
>
>  #include "pasyms.h"
> --
> 2.24.1
>


-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdmqM5aHnDCyL62gmWV5wFrKwAEdkHq%2BHPnvp3ZYA%3Ddtbg%40mail.gmail.com.
