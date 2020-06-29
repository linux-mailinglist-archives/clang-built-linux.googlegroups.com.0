Return-Path: <clang-built-linux+bncBDYJPJO25UGBBV4N5H3QKGQEMFWONOI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x539.google.com (mail-pg1-x539.google.com [IPv6:2607:f8b0:4864:20::539])
	by mail.lfdr.de (Postfix) with ESMTPS id 06E5A20D5D5
	for <lists+clang-built-linux@lfdr.de>; Mon, 29 Jun 2020 21:54:01 +0200 (CEST)
Received: by mail-pg1-x539.google.com with SMTP id h2sf4544463pgc.19
        for <lists+clang-built-linux@lfdr.de>; Mon, 29 Jun 2020 12:54:00 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1593460439; cv=pass;
        d=google.com; s=arc-20160816;
        b=F8xNtv3e47VEAq034F5mugdr53q33EJiGymF5ngMDqPHhdKZvuwiaiwZnC1OpL4IDY
         sSTkIlP061ettM4r/2FlYdHB9pgjeihBoQ+0JmHobnEKuUGSLwxZIy7ohWP9G1ZyO8Gp
         U0tA1bifpUwD6eMTSqi/MxC5gT/+1FAvtwQOWTHGn79jzo1H6HRg9hqLhKDntJOzV58p
         j7Q0PmMza3uYFjdL7HyKMHijmf9A4jpszl72+MR2L77x3zUkdeeLDHTkHeVMFRXPayim
         XdhDKyuciAVG2Xe9BdAsrTWUspe66IXrTE4UnrVcw8InwyArjk++n2gNNsnrTAjExZV3
         uw2A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=ZZY1DZySM3TDOCwgqlFVBs9O6NfyOgDIB+Xhgiq17+o=;
        b=mK/YxlMLCUWwZ6BOzs24O9PPQbnXCj07RKN12ZXe6No4WawZUB1P7wi11JKLQ5tCj1
         S6V2LY2Dbq/fDnrA+zchZwk3PLBAl1bIFGGVYhRIOjx1GYAbMJySEjBmKxA6SNUjoU0w
         5M+N1QLrvA3LWUeYCFJ9wRgeTpatmC+KRzF2hAvQakhzanv+IZiUfKhpgLD0weozSa7J
         geiEYN3GpPg3nwOtgh93IjZM173xZkmFnQqbQ6/XwI0Gr3VghGAR0PkbiZ309TeTW8Ix
         2lZ7CEKMr4EwmSR3sU4mfsm+BLB4YJu6AeKhA+s3OOxvr7PdC0pF7OT26r9QImssSs7+
         p3Nw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=bRgfBWJh;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::442 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ZZY1DZySM3TDOCwgqlFVBs9O6NfyOgDIB+Xhgiq17+o=;
        b=ZFT+6RS3bo0CTTsOhrmuyR8NpKqaUXLUZX37uI6XPWnfnnpZbCQ0uKpgTRizXMcAza
         8NFhZHzLvf8qIGDqWJlxtnIYHz1mUsafSb5+laq8eW5ppgwEsWm4FcbSErKrAHBo7w+7
         awijp2sO2mQTct3osBjuZRW8F2TAd0zQcrTgyx6BC830lA1eK325yDOwVqZYQlE6updm
         vlD85sbU0UVI2HBbmCO0h9eVBisadZgHr0ebKDH/kfUAPF+aI9msL4zZHMVgGIVKywoT
         iPaeEn7g/lEpBzPeD0pvpSB35graTFUG6m1VL2KHcfX8Ysu06F/JbzYlrwDVoXSz7/X0
         Ab+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ZZY1DZySM3TDOCwgqlFVBs9O6NfyOgDIB+Xhgiq17+o=;
        b=tVF9p6NeA0MbC6d3QCkIh1tt4dcyJPpROkcPQCIZneOxRY3ioHchR8hCAH3X3BjHuw
         awWYN/Y4GetIm97j2pdb1vp4z46pKP+KHYbPJ0FOwB1g8pdIvwuueRLZ+yTtAlBjbwDj
         49mqlevYLmXgsKaYaffjBIJfzt69vobaCPwSnRf+vg3L/oyOpmmV7RTLjnIEkpGYt6bM
         sfgaC0M8JtagqAPD8nx0KgAz4eFXvtYsESHnR5jp7CPqg1uCJMa0olifuotl8N9Zz4ad
         7IUSPKrf81Fr5DapokysIZhtnm6hqzoMFIA2TO8omIUil9drCocWn1EW+4A4/MU9gwtj
         yzKQ==
X-Gm-Message-State: AOAM531kDbjHTGnE80Szjwjda0QCACFvb53ihlFQW14WtYwItvaFMRVP
	cZBjA4jM+KSEgXe85PPA6pY=
X-Google-Smtp-Source: ABdhPJxD21j6bK545FhHuehP+4xg0J95/MXYmcSNDMo8Q8i7HW8QfHMdU+ZBQ2+q+1eq2NUYHeSMhA==
X-Received: by 2002:a17:902:a717:: with SMTP id w23mr11244650plq.292.1593460439481;
        Mon, 29 Jun 2020 12:53:59 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:f450:: with SMTP id p16ls4813074pgk.5.gmail; Mon, 29 Jun
 2020 12:53:59 -0700 (PDT)
X-Received: by 2002:a63:f903:: with SMTP id h3mr12128244pgi.437.1593460439114;
        Mon, 29 Jun 2020 12:53:59 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1593460439; cv=none;
        d=google.com; s=arc-20160816;
        b=bv5Rj2Kzy3V+EXOKCW3LWvaDsoMLVODV143NiZvezbmTFsBfxd8GcK6dCGHZ4YsFZO
         UlHPt7R4/xORFshzJnI9uI5r8sHM1eFdQv4ZGX8SAiZNsYz/O3dAQRH39+1uYK4X/z02
         yzc042U+L+X8ydjrFEi/CMVoeewg35ie7YfD+DLFNI5gkMhQ2vJQzCqR0AX89FQub9Uq
         1zt2ClOKNul+abL5BOrjDG8o4xV5fUmfPUA0QIPMBtsdlAHUbdCT7Txr2FHB+9Lx9pJu
         q8eloGnW5SnmKETc71imj3p1iNeUionPOU8hOLC3mwHOWDpgUiGMg/URgfWu4HeB8c+y
         seog==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=zKRhn9sIaFaGEW3xbHkfNQIj02f8YddLObFXUqnNhu8=;
        b=HHXiwv3ArmcrOyqt16UWk1WkQ5wQqeJ3pCujZ+EbN8l0yMWbvTFwVCrsAqohH7lP8g
         iYBQHCp/VUkwsko98r4UCK5T7S0kfaDCSpgmRCIjo6dG4lxyjV+QMw7j9upf2nx+Lusb
         ldP9MlRxnktdHicXmZRW5wIP29d7bMvDuJIBk5/HYR0jCyyb9eFv/1TwRUVLKINn8Yr8
         1VIQn/ElDM7DUb+bal3WqFpEGhbQoEJBRaqdVfQyPI4dcmXPtcRQD1fItGShNmxxj0ai
         SptzDgzlyHqHf7yUAC2bN7yJhU84hNX/ebYqO4rH3dKVrwN6aI4DKryF2SKqlmMjMrDx
         lowg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=bRgfBWJh;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::442 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x442.google.com (mail-pf1-x442.google.com. [2607:f8b0:4864:20::442])
        by gmr-mx.google.com with ESMTPS id y20si23942plb.2.2020.06.29.12.53.59
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 29 Jun 2020 12:53:59 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::442 as permitted sender) client-ip=2607:f8b0:4864:20::442;
Received: by mail-pf1-x442.google.com with SMTP id u5so8348563pfn.7
        for <clang-built-linux@googlegroups.com>; Mon, 29 Jun 2020 12:53:59 -0700 (PDT)
X-Received: by 2002:a63:7e55:: with SMTP id o21mr11995677pgn.263.1593460438609;
 Mon, 29 Jun 2020 12:53:58 -0700 (PDT)
MIME-Version: 1.0
References: <20200629061840.4065483-1-keescook@chromium.org> <20200629061840.4065483-9-keescook@chromium.org>
In-Reply-To: <20200629061840.4065483-9-keescook@chromium.org>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 29 Jun 2020 12:53:47 -0700
Message-ID: <CAKwvOd=r6bsBfSZxVYrnbm1Utq==ApWBDjx+0Fxsm90Aq3Jghw@mail.gmail.com>
Subject: Re: [PATCH v4 08/17] arm64/mm: Remove needless section quotes
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
	Linux ARM <linux-arm-kernel@lists.infradead.org>, LKML <linux-kernel@vger.kernel.org>, 
	Joe Perches <joe@perches.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=bRgfBWJh;       spf=pass
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

On Sun, Jun 28, 2020 at 11:18 PM Kees Cook <keescook@chromium.org> wrote:
>
> Fix a case of needless quotes in __section(), which Clang doesn't like.
>
> Acked-by: Will Deacon <will@kernel.org>
> Signed-off-by: Kees Cook <keescook@chromium.org>

Yep, I remember bugs from this.  Probably should scan the kernel for
other instances of this.  +Joe for checkpatch.pl validation.
Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>

> ---
>  arch/arm64/mm/mmu.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/arch/arm64/mm/mmu.c b/arch/arm64/mm/mmu.c
> index 1df25f26571d..dce024ea6084 100644
> --- a/arch/arm64/mm/mmu.c
> +++ b/arch/arm64/mm/mmu.c
> @@ -42,7 +42,7 @@
>  u64 idmap_t0sz = TCR_T0SZ(VA_BITS);
>  u64 idmap_ptrs_per_pgd = PTRS_PER_PGD;
>
> -u64 __section(".mmuoff.data.write") vabits_actual;
> +u64 __section(.mmuoff.data.write) vabits_actual;
>  EXPORT_SYMBOL(vabits_actual);
>
>  u64 kimage_voffset __ro_after_init;
> --
> 2.25.1
>


-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOd%3Dr6bsBfSZxVYrnbm1Utq%3D%3DApWBDjx%2B0Fxsm90Aq3Jghw%40mail.gmail.com.
