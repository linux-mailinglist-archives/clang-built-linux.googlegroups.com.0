Return-Path: <clang-built-linux+bncBAABBZFEZSBAMGQELZ5LMCQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63e.google.com (mail-pl1-x63e.google.com [IPv6:2607:f8b0:4864:20::63e])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E7A834011C
	for <lists+clang-built-linux@lfdr.de>; Thu, 18 Mar 2021 09:42:14 +0100 (CET)
Received: by mail-pl1-x63e.google.com with SMTP id h6sf18818735plr.23
        for <lists+clang-built-linux@lfdr.de>; Thu, 18 Mar 2021 01:42:14 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1616056933; cv=pass;
        d=google.com; s=arc-20160816;
        b=xEI+cFIzNHxWdjerIsPIl/Chf+McuhEC6joYwjEJAlr3hfE0eiL+JyLeI49RH/1xzB
         kqUYSyb0bKnjrCkOwMyNA0WUrVl/5LT3EhxJRyQuKbQk+4x7Lxdsf0WFeUAupj4ZNlet
         s69NxebMfyaDST00Vn+k2pp0Z/wV7wjSK9OQI3+3WNqN4AqBXRzkXtdYnZbyy3KEeglj
         +fKwwm7I4oGgr/TGm0jHO5JnKtwT6pbNZm9YImesjXyywEIxLtLyU5zu58CiqGXrCfzL
         eppmsE+Y/xC5OErABU3j+a58FB7mhP0onyTop0u5ObAjF+bEajxCATqQNEcZfbBR85WN
         cGYw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=JQtwPjf8/15SoE8fPO/soIjsaGuY1L7ySCztzw75c7s=;
        b=h6kvrdLRYGN4LFCsPiUSvpCLneM9A1O+xRjokliuJbE9GmICk85w95n3hgLjI/YOBH
         1TV52lsBgix77rK9gYaEpGbq9lDNjEFGSn2W8/C3HuG0BZObp8/rkd8sgHosZNgmP7nP
         vk4oeDNPei9NCCshrLwhNwHeqU4Q2iXhR9b38befWgOIVhnfKhGZ6/tCX9BDOn1YbkS9
         HkgBS9T63NGcldFu405Dcj5ICsNGdDzkGkGlrbAi17GtTVWvz52rkCOyHVQjyqWa0Cdi
         QFmalAEILA5WSgqxZFvSw57OiedeO4RHdGY8y77qPAf/YWVGK1H2mDiqtmAcDgW8+kzm
         XSIw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=Hk4WvS+g;
       spf=pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=arnd@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=JQtwPjf8/15SoE8fPO/soIjsaGuY1L7ySCztzw75c7s=;
        b=h7TKTmQOm637iAkFRo9gHMieC7yMm0pwX4nW2y9ci8qnL0blK3eCdhGzRNHtoLopFm
         /nRugcVYLtsOvu/07gcZAVgdMuy/gMZIZVsV01NkmrJqdjpLhvEV5XGYwTqN6WSdDvdw
         LgD7vmC4tBl26nypTJdAn3U5jeTzzuI7SYya+PVMM42JLO+364I4G5zKUBmVM5hSgnc+
         r9P00xKjt0d0NGeS7mlNEKuVz0PRCDD1SY/vJXTzTpmGsakoRhQGW08Qcpw80fnrxCZg
         C1m6ykK/rLgIptky2bZ4YydVZCZvw3SqnCRdAZwdHqXMB9VhW/NHyCw+bPgYTZinDaVa
         kRNg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=JQtwPjf8/15SoE8fPO/soIjsaGuY1L7ySCztzw75c7s=;
        b=TR/UYw6HxOnEmzos/GUByV5odPuP8fEoilm0ztCn/kgSJdGI3sx2QxYyBKjGb76lC3
         wsbDof4Oak4aosvIaRPP8fyRQ8x/TKOm2QWFgbJ5pfU2zJ3lyISyPPkxceVcgQ+CgrzL
         22iczV6Y4DCVa/dFwexzdIZXUfYDEBaDD4CKKZLz2o2LEXXzDusCXBbT1ghEuT3ZaMdT
         H4pnWopTit3duDc/dvXdddxXq9Ya+yWh84PU4kuAAZ2TY5Xn02wjgh2JBO38M62jwEDT
         KkJ9RqKlR+K5zKdztDJS5KKAFcIFc1pGLnZOWFhPW1Dp77GFKTbPt2ExTuyViSiY/JHY
         8a8g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532EOk6GU555j7HlWIOgDGF7qSeyHMB3iUM0xhkk9VgjgWgWbZh+
	PWTpGWN8Kd1bJyh4YhpD7lw=
X-Google-Smtp-Source: ABdhPJyrctB43niKi52cPUPiWUx8aRzbrS5OMEXwTyTIWiTp41NqGepOZ5jN46I2/8xhL845cYVOhQ==
X-Received: by 2002:aa7:81cb:0:b029:1ee:5346:8f1d with SMTP id c11-20020aa781cb0000b02901ee53468f1dmr3108525pfn.4.1616056932867;
        Thu, 18 Mar 2021 01:42:12 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a65:68d7:: with SMTP id k23ls547189pgt.11.gmail; Thu, 18 Mar
 2021 01:42:12 -0700 (PDT)
X-Received: by 2002:a63:374e:: with SMTP id g14mr5964477pgn.56.1616056932434;
        Thu, 18 Mar 2021 01:42:12 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1616056932; cv=none;
        d=google.com; s=arc-20160816;
        b=rMHgw3egZ694oy5qFZE2d5mUP6rS78ViQzlA00JUlscGt4VNdejL6nxxyoH0heZX/E
         iCkQTd3pnf+QDCVtldgHJNwi+wbmhzbeTv/f7JQc7hM01bOgwa2X0zx3/FbTFxuaIFv9
         2gsR9spbMNgfVcpj/pb3UvvFLZhPE0xtpj2u49OaOFRhRHbRPamU+kUPsmb2HJsVOUFd
         UqPUXrH6yWnCHiwJDrkU1dseTysgWEjcvEOygyNhLre1wUVx6pM1NXzMUgDlTdPcIOMk
         4yrJ4+8xQNHLQE0UvfMJg35Ze141xR/jElxsaNP8WmceiS77RoODUEoKt1vPAdfjqcGl
         EW4w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=X9NK/U4OZBZNXffxs6wT05jN0spDcJWQ6jbBoiED0gk=;
        b=m4GoVtFrRsYNKsgdFpiDVZjGrqLEEkb6rlFulZi2FHl67X8qnznM9oU4Na47KUviFz
         fhI4y4phHN13P6o+0Witfyz2HjfiIDLwixJVvpsGGWhHeohte0ewYNbdyPru3RigUXBV
         A0mdLpfsh4DN8ATeKP+ghmPf7ACA20b102b5FaDpMgvRHv0bZc6tGlEu1WCqcrBXfedb
         kN5uWu87UaFRajCOkPr7Pnkj3DaiXqdwNik9/fFow438QtySlWMQu9pv9ot7NxGK57n9
         ufqAzbHRyk6i7k/BIgBcSLJ7XkB9xYCtxHlJreXHSR0e2p7EhFe7cQgbXe962LPz52oK
         WTqg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=Hk4WvS+g;
       spf=pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=arnd@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id h7si83806plr.3.2021.03.18.01.42.12
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 18 Mar 2021 01:42:12 -0700 (PDT)
Received-SPF: pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 0DB4464F18
	for <clang-built-linux@googlegroups.com>; Thu, 18 Mar 2021 08:42:12 +0000 (UTC)
Received: by mail-oi1-f181.google.com with SMTP id m13so747385oiw.13
        for <clang-built-linux@googlegroups.com>; Thu, 18 Mar 2021 01:42:12 -0700 (PDT)
X-Received: by 2002:a05:6808:3d9:: with SMTP id o25mr2273961oie.4.1616056931403;
 Thu, 18 Mar 2021 01:42:11 -0700 (PDT)
MIME-Version: 1.0
References: <20210225112122.2198845-1-arnd@kernel.org> <20210317143757.GD12269@arm.com>
 <20210317161838.GF12269@arm.com>
In-Reply-To: <20210317161838.GF12269@arm.com>
From: Arnd Bergmann <arnd@kernel.org>
Date: Thu, 18 Mar 2021 09:41:54 +0100
X-Gmail-Original-Message-ID: <CAK8P3a0FeuGLYhiPx=GLdewu2P=Hix7cpVsbF05i5WO5T2XPvQ@mail.gmail.com>
Message-ID: <CAK8P3a0FeuGLYhiPx=GLdewu2P=Hix7cpVsbF05i5WO5T2XPvQ@mail.gmail.com>
Subject: Re: [PATCH] [RFC] arm64: enable HAVE_LD_DEAD_CODE_DATA_ELIMINATION
To: Catalin Marinas <catalin.marinas@arm.com>
Cc: Will Deacon <will@kernel.org>, Nathan Chancellor <nathan@kernel.org>, 
	Nick Desaulniers <ndesaulniers@google.com>, Kees Cook <keescook@chromium.org>, 
	Mark Brown <broonie@kernel.org>, Vincenzo Frascino <vincenzo.frascino@arm.com>, 
	Geert Uytterhoeven <geert+renesas@glider.be>, Kristina Martsenko <kristina.martsenko@arm.com>, 
	Ionela Voinescu <ionela.voinescu@arm.com>, Mark Rutland <mark.rutland@arm.com>, 
	Andrew Scull <ascull@google.com>, David Brazdil <dbrazdil@google.com>, Marc Zyngier <maz@kernel.org>, 
	Ard Biesheuvel <ardb@kernel.org>, Linux ARM <linux-arm-kernel@lists.infradead.org>, 
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Nicolas Pitre <nico@fluxnic.net>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: arnd@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=Hk4WvS+g;       spf=pass
 (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted
 sender) smtp.mailfrom=arnd@kernel.org;       dmarc=pass (p=NONE sp=NONE
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

On Wed, Mar 17, 2021 at 5:18 PM Catalin Marinas <catalin.marinas@arm.com> wrote:
>
> On Wed, Mar 17, 2021 at 02:37:57PM +0000, Catalin Marinas wrote:
> > On Thu, Feb 25, 2021 at 12:20:56PM +0100, Arnd Bergmann wrote:
> > > diff --git a/arch/arm64/kernel/vmlinux.lds.S b/arch/arm64/kernel/vmlinux.lds.S
> > > index bad2b9eaab22..926cdb597a45 100644
> > > --- a/arch/arm64/kernel/vmlinux.lds.S
> > > +++ b/arch/arm64/kernel/vmlinux.lds.S
> > > @@ -217,7 +217,7 @@ SECTIONS
> > >             INIT_CALLS
> > >             CON_INITCALL
> > >             INIT_RAM_FS
> > > -           *(.init.altinstructions .init.bss .init.bss.*)  /* from the EFI stub */
> > > +           *(.init.altinstructions .init.data.* .init.bss .init.bss.*)     /* from the EFI stub */
> >
> > INIT_DATA already covers .init.data and .init.data.*, so I don't think
> > we need this change.
>
> Ah, INIT_DATA only covers init.data.* (so no dot in front). The above
> is needed for the EFI stub.

I wonder if that is just a typo in INIT_DATA. Nico introduced it as part of
266ff2a8f51f ("kbuild: Fix asm-generic/vmlinux.lds.h for
LD_DEAD_CODE_DATA_ELIMINATION"), so perhaps that should have
been .init.data.* instead.

> However, I gave this a quick try and under Qemu with -cpu max and -smp 2
> (or more) it fails as below. I haven't debugged but the lr points to
> just after the switch_to() call. Maybe some section got discarded and we
> patched in the wrong instructions. It is fine with -cpu host or -smp 1.

Ah, interesting.

> -------------------8<------------------------
> smp: Bringing up secondary CPUs ...
> Detected PIPT I-cache on CPU1
> CPU1: Booted secondary processor 0x0000000001 [0x000f0510]
> Unable to handle kernel paging request at virtual address eb91d81ad2971160
> Mem abort info:
>   ESR = 0x86000004
>   EC = 0x21: IABT (current EL), IL = 32 bits
>   SET = 0, FnV = 0
>   EA = 0, S1PTW = 0
> [eb91d81ad2971160] address between user and kernel address ranges
> Internal error: Oops: 86000004 [#1] PREEMPT SMP
> Modules linked in:
> CPU: 1 PID: 16 Comm: migration/1 Not tainted 5.12.0-rc3-00002-g128e977c1322 #1
> Stopper: 0x0 <- 0x0
> pstate: 60000085 (nZCv daIf -PAN -UAO -TCO BTYPE=--)
> pc : 0xeb91d81ad2971160
> lr : __schedule+0x230/0x6b8
> sp : ffff80001009bd60
> x29: ffff80001009bd60 x28: 0000000000000000
> x27: ffff0000000a6760 x26: ffff0000000b7540
> x25: 0080000000000000 x24: ffffd81ad3969000
> x23: ffff0000000a6200 x22: 6ee0d81ad2971658
> x21: ffff0000000a6200 x20: ffff000000080000
> x19: ffff00007fbc6bc0 x18: 0000000000000030
> x17: 0000000000000000 x16: 0000000000000000
> x15: 00008952b30a9a9e x14: 0000000000000366
> x13: 0000000000000192 x12: 0000000000000000
> x11: 0000000000000003 x10: 00000000000009b0
> x9 : ffff80001009bd30 x8 : ffff0000000a6c10
> x7 : ffff00007fbc6cc0 x6 : 00000000fffedb30
> x5 : 00000000ffffffff x4 : 0000000000000000
> x3 : 0000000000000008 x2 : 0000000000000000
> x1 : ffff0000000a6200 x0 : ffff0000000a3800
> Call trace:
>  0xeb91d81ad2971160
>  schedule+0x70/0x108
>  schedule_preempt_disabled+0x24/0x40
>  __kthread_parkme+0x68/0xd0
>  kthread+0x138/0x170
>  ret_from_fork+0x10/0x30
> Code: bad PC value
> ---[ end trace af3481062ecef3e7 ]---

This looks like it has just returned from __schedule() to schedule()
and is trying to return from that as well, through code like this:

.L562:
// /git/arm-soc/kernel/sched/core.c:5159: }
        ldp     x19, x20, [sp, 16]      //,,
        ldp     x29, x30, [sp], 32      //,,,
        hint    29 // autiasp
        ret

It looks like pointer authentication gone wrong, which ended up
with dereferencing the broken pointer in x22, and it explains why
it only happens with -cpu max. Presumably this also only happens
on secondary CPUs, so maybe the bit that initializes PAC on
secondary CPUs got discarded?

        Arnd

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK8P3a0FeuGLYhiPx%3DGLdewu2P%3DHix7cpVsbF05i5WO5T2XPvQ%40mail.gmail.com.
