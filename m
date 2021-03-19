Return-Path: <clang-built-linux+bncBDDL3KWR4EBRBK5Q2KBAMGQEP4YPOPA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa3f.google.com (mail-vk1-xa3f.google.com [IPv6:2607:f8b0:4864:20::a3f])
	by mail.lfdr.de (Postfix) with ESMTPS id 03EC8341CD7
	for <lists+clang-built-linux@lfdr.de>; Fri, 19 Mar 2021 13:25:17 +0100 (CET)
Received: by mail-vk1-xa3f.google.com with SMTP id n196sf12824508vkn.23
        for <lists+clang-built-linux@lfdr.de>; Fri, 19 Mar 2021 05:25:16 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1616156716; cv=pass;
        d=google.com; s=arc-20160816;
        b=FAdjNB09Y4RGcbQbfSlfEI/vPsBb6PYBiqYRodg+w0WLGQ+0fAApz1WiSBeX+BJPjr
         coP2fN1v1eWdkWqNy8cU/Ddy433i892H3y9IhCfxJ36CSWg4k5uGzx8q57NA+xe4d3qD
         mlEc0uStPJTInSNiwcrXfxzUMGPr5OqR5JtXeoJ7kJcP55ROZbQFolB1Ef6F7MqnzlNe
         bYJydCbKHc5Jjc/WSka8F7lVyxYS+ktmGo3V1kqdnhjAEN67N+2uYTGzGA/Y7PK1NZXs
         wjwXLJH6Hev0127FpJX3j7JkMGSOmy3ILBEGvxGt+3Lc8FmDhdXO3n8ih+CgakOqPxFN
         Cu8A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=pHTG+q1DvipfdKZYwOpV23A3P/+sFH2efSs1zGOMvlA=;
        b=dCwVXVkf8rordlvCek51vt6htafytlFTsAq9lsBw8e0tqqRgyNnes4pwFDLTLDoBvf
         uqlsPNQTw2WX/1mrjXB5jbPQ8ISa////ONaMcPeRDd0kTAJwQX+ug3wfbrIkZO0ifnM3
         Zx6SOScHS1qwx7aYapQoJgmbc5nl57MmRN1caFS8V18gZaJ9mCNA5uKMFEd/lO31a19K
         sCTSyD/5ES+qESi5OzIvYoh3f7mkkBT5mqI87LluM3DHBDIBCQ/6mbQ0CVpnqo9wmlEg
         /DH0lBFcw8kLp1I4iCxhqPcQgwv6w5EdklNY6TN4/puDp1/tmhnobWoIgEr0NSdx+W73
         SAjw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of cmarinas@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=cmarinas@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=arm.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=pHTG+q1DvipfdKZYwOpV23A3P/+sFH2efSs1zGOMvlA=;
        b=FrGokosqa2PLOADzSCCABg5ehe6OpUoKmnpoPJQY59NYxwtzQw2CUiA610M6i1iJSf
         rZiEZekchhQVdYJ04khFng+uZlbUMJz4ihl6vzirwTkr4ftNZNGWV1QUn788dJTVHTtE
         HlHxOoM2bKv7dAdgPeAjDwCuF7k/J1ThwrfGAU15O/CtVulyZG1xbvFUQxRHAoRGPlyW
         VS/zEXYuTJmngR1oTrO6CX/gf3ZiiDygyNSqjqjDDP5P1VZrhIMgjmIo0aF71PLQ5oQZ
         LxZ6fqUgkMCTigZ70VCGzfR7x8dEWMDIafvLoZWrRk4WDS5g53YJs73vJZZcy0xC6qkh
         zFMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=pHTG+q1DvipfdKZYwOpV23A3P/+sFH2efSs1zGOMvlA=;
        b=ktVbuq1Iz4UQLjeaVHLEQqyLSgB22icca37L52vU8bK5EgSwIZlWHJNhg6oQ6gLSg+
         d7eZDaqC9szzojkKxgfY3Wbz5sabOPcuwF40NVMDLR61ug7Jwhe3mAZh1x1rDOXUyvgx
         1lnnCA6SiQ1Xg9YwZwDaBmaggbxMOweqZz98hpSmX9cCpE3yfk9U3722g5AhdlhlRg0l
         8TjZOpxCUg1X0c1D+n9CWNibF7xKVnIjpxz0Vhedd+9nGexwFyM8+jQWsCb/xga+fyd6
         lEaNo6DbEru3scbm3R8Kmm7lHovNe086oZfrD5SaGEMQE3Aw44xXiBpwbUI0pI05+I5L
         NryQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM53298ShrVShUwnsJv7nD7Esjw0wbIwJZCUDoBPBkeaQvYstkC+Jx
	RoPfF+Bj5HR6z+r1a3i6OHQ=
X-Google-Smtp-Source: ABdhPJzQkcpVfFBjho2jSwN4gtA0PTjE0xilN6CPmpVP3kyArItyGyHKpG0xl8w4L2AB6JbDwTjYZw==
X-Received: by 2002:a1f:9851:: with SMTP id a78mr2246982vke.3.1616156715950;
        Fri, 19 Mar 2021 05:25:15 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:2e09:: with SMTP id u9ls655834vsu.7.gmail; Fri, 19 Mar
 2021 05:25:15 -0700 (PDT)
X-Received: by 2002:a67:fc4b:: with SMTP id p11mr2468548vsq.3.1616156715313;
        Fri, 19 Mar 2021 05:25:15 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1616156715; cv=none;
        d=google.com; s=arc-20160816;
        b=OvhDPAqfKstKCXEtIUtBGDhEgMmNnR7UVcTlwfvYTAlSBbCuouPDWlPjxFeGJZhewz
         s08M8yRbtk0xV4erHcT+zwF+7I4pND2mg/0ekGRRLetV72nuPMxMGqTj0B1vRR0EsDvB
         /uMECxeI4A/ezEuWLAGQjkTIbKZyQVUMO3RzeW9Iudo17AFn2uuIUWpDqQSYFrqzjt+e
         GvC+pbjfJyiIpSiEoPi2F61oy/qo9gN9rGEeSWVQQvf1zoAL3gaHZpCbQsA1kXAsaN6k
         jMHFuX4B2K861Bck70OJduepLDoYH+gozcMqZ1N2mLTyWYWAaxv66dymCr+lPDRI96+X
         9A1Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=nUr9LVy52RmgiXwinBCnMVC8Jc2VK2ZU/TMRBqko/Ag=;
        b=c97ndZn+T2uDxx3Aq2uK9+s7AUxvKG75RlrkiiFUbZtEiTwnlNvtNkDpoQTJbzndtS
         AHvaL5R7CdH8qbbLVuouQqN2bXTShXFiqDzTnKDgi0O8hb6f8LjaeWKlV27+plfqq/pj
         tMIZ9P5DUlBkALN/x83aH/b68VEDK6c2V9gjeIJESMokfG7YodNyhKvIz4EnaBOJJCH0
         +LJAca21bWoiBAqpPgWjUtssoOAoqPBGVyonEwkxmWn1/ejvlC2ufPXHX2mzaky+HyOz
         7jNbtrwE/J4Oi0Htf6NSmsHxH9sj0DJJrHwQuIE1J3bxeD+c/QYvIqrpNs0uEfhS99aP
         IOog==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of cmarinas@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=cmarinas@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=arm.com
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id i18si348568ual.1.2021.03.19.05.25.15
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 19 Mar 2021 05:25:15 -0700 (PDT)
Received-SPF: pass (google.com: domain of cmarinas@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 2DADC64F6E;
	Fri, 19 Mar 2021 12:25:11 +0000 (UTC)
Date: Fri, 19 Mar 2021 12:25:08 +0000
From: Catalin Marinas <catalin.marinas@arm.com>
To: Arnd Bergmann <arnd@kernel.org>
Cc: Will Deacon <will@kernel.org>, Nathan Chancellor <nathan@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Kees Cook <keescook@chromium.org>, Mark Brown <broonie@kernel.org>,
	Vincenzo Frascino <vincenzo.frascino@arm.com>,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Kristina Martsenko <kristina.martsenko@arm.com>,
	Ionela Voinescu <ionela.voinescu@arm.com>,
	Mark Rutland <mark.rutland@arm.com>,
	Andrew Scull <ascull@google.com>,
	David Brazdil <dbrazdil@google.com>, Marc Zyngier <maz@kernel.org>,
	Ard Biesheuvel <ardb@kernel.org>,
	Linux ARM <linux-arm-kernel@lists.infradead.org>,
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Nicolas Pitre <nico@fluxnic.net>,
	Nicholas Piggin <npiggin@gmail.com>
Subject: Re: [PATCH] [RFC] arm64: enable HAVE_LD_DEAD_CODE_DATA_ELIMINATION
Message-ID: <20210319122506.GA6832@arm.com>
References: <20210225112122.2198845-1-arnd@kernel.org>
 <20210317143757.GD12269@arm.com>
 <20210317161838.GF12269@arm.com>
 <CAK8P3a0FeuGLYhiPx=GLdewu2P=Hix7cpVsbF05i5WO5T2XPvQ@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAK8P3a0FeuGLYhiPx=GLdewu2P=Hix7cpVsbF05i5WO5T2XPvQ@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: catalin.marinas@arm.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of cmarinas@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=cmarinas@kernel.org;       dmarc=fail (p=NONE
 sp=NONE dis=NONE) header.from=arm.com
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

On Thu, Mar 18, 2021 at 09:41:54AM +0100, Arnd Bergmann wrote:
> On Wed, Mar 17, 2021 at 5:18 PM Catalin Marinas <catalin.marinas@arm.com> wrote:
> >
> > On Wed, Mar 17, 2021 at 02:37:57PM +0000, Catalin Marinas wrote:
> > > On Thu, Feb 25, 2021 at 12:20:56PM +0100, Arnd Bergmann wrote:
> > > > diff --git a/arch/arm64/kernel/vmlinux.lds.S b/arch/arm64/kernel/vmlinux.lds.S
> > > > index bad2b9eaab22..926cdb597a45 100644
> > > > --- a/arch/arm64/kernel/vmlinux.lds.S
> > > > +++ b/arch/arm64/kernel/vmlinux.lds.S
> > > > @@ -217,7 +217,7 @@ SECTIONS
> > > >             INIT_CALLS
> > > >             CON_INITCALL
> > > >             INIT_RAM_FS
> > > > -           *(.init.altinstructions .init.bss .init.bss.*)  /* from the EFI stub */
> > > > +           *(.init.altinstructions .init.data.* .init.bss .init.bss.*)     /* from the EFI stub */
> > >
> > > INIT_DATA already covers .init.data and .init.data.*, so I don't think
> > > we need this change.
> >
> > Ah, INIT_DATA only covers init.data.* (so no dot in front). The above
> > is needed for the EFI stub.
> 
> I wonder if that is just a typo in INIT_DATA. Nico introduced it as part of
> 266ff2a8f51f ("kbuild: Fix asm-generic/vmlinux.lds.h for
> LD_DEAD_CODE_DATA_ELIMINATION"), so perhaps that should have
> been .init.data.* instead.

I think it was the other Nicholas ;) (with an 'h'). The vmlinux.lds.h
change indeed looks like a typo (it's been around since 4.18).

> > However, I gave this a quick try and under Qemu with -cpu max and -smp 2
> > (or more) it fails as below. I haven't debugged but the lr points to
> > just after the switch_to() call. Maybe some section got discarded and we
> > patched in the wrong instructions. It is fine with -cpu host or -smp 1.
> 
> Ah, interesting.
> 
> > -------------------8<------------------------
> > smp: Bringing up secondary CPUs ...
> > Detected PIPT I-cache on CPU1
> > CPU1: Booted secondary processor 0x0000000001 [0x000f0510]
> > Unable to handle kernel paging request at virtual address eb91d81ad2971160
> > Mem abort info:
> >   ESR = 0x86000004
> >   EC = 0x21: IABT (current EL), IL = 32 bits
> >   SET = 0, FnV = 0
> >   EA = 0, S1PTW = 0
> > [eb91d81ad2971160] address between user and kernel address ranges
> > Internal error: Oops: 86000004 [#1] PREEMPT SMP
> > Modules linked in:
> > CPU: 1 PID: 16 Comm: migration/1 Not tainted 5.12.0-rc3-00002-g128e977c1322 #1
> > Stopper: 0x0 <- 0x0
> > pstate: 60000085 (nZCv daIf -PAN -UAO -TCO BTYPE=--)
> > pc : 0xeb91d81ad2971160
> > lr : __schedule+0x230/0x6b8
> > sp : ffff80001009bd60
> > x29: ffff80001009bd60 x28: 0000000000000000
> > x27: ffff0000000a6760 x26: ffff0000000b7540
> > x25: 0080000000000000 x24: ffffd81ad3969000
> > x23: ffff0000000a6200 x22: 6ee0d81ad2971658
> > x21: ffff0000000a6200 x20: ffff000000080000
> > x19: ffff00007fbc6bc0 x18: 0000000000000030
> > x17: 0000000000000000 x16: 0000000000000000
> > x15: 00008952b30a9a9e x14: 0000000000000366
> > x13: 0000000000000192 x12: 0000000000000000
> > x11: 0000000000000003 x10: 00000000000009b0
> > x9 : ffff80001009bd30 x8 : ffff0000000a6c10
> > x7 : ffff00007fbc6cc0 x6 : 00000000fffedb30
> > x5 : 00000000ffffffff x4 : 0000000000000000
> > x3 : 0000000000000008 x2 : 0000000000000000
> > x1 : ffff0000000a6200 x0 : ffff0000000a3800
> > Call trace:
> >  0xeb91d81ad2971160
> >  schedule+0x70/0x108
> >  schedule_preempt_disabled+0x24/0x40
> >  __kthread_parkme+0x68/0xd0
> >  kthread+0x138/0x170
> >  ret_from_fork+0x10/0x30
> > Code: bad PC value
> > ---[ end trace af3481062ecef3e7 ]---
> 
> This looks like it has just returned from __schedule() to schedule()
> and is trying to return from that as well, through code like this:
> 
> .L562:
> // /git/arm-soc/kernel/sched/core.c:5159: }
>         ldp     x19, x20, [sp, 16]      //,,
>         ldp     x29, x30, [sp], 32      //,,,
>         hint    29 // autiasp
>         ret
> 
> It looks like pointer authentication gone wrong, which ended up
> with dereferencing the broken pointer in x22, and it explains why
> it only happens with -cpu max. Presumably this also only happens
> on secondary CPUs, so maybe the bit that initializes PAC on
> secondary CPUs got discarded?

I seems that the whole alternative instructions section is gone, so any
run-time code patching that the kernel does won't work. The kernel boots
with the diff below but I'm not convinced we don't miss anything else.
In some cases you get a linker warning about gc sections but not in this
case. Maybe we need some more asserts to ensure that certain sections
are not empty.

diff --git a/arch/arm64/kernel/vmlinux.lds.S b/arch/arm64/kernel/vmlinux.lds.S
index 11909782ee3e..036cc59033d3 100644
--- a/arch/arm64/kernel/vmlinux.lds.S
+++ b/arch/arm64/kernel/vmlinux.lds.S
@@ -203,7 +203,7 @@ SECTIONS
 	. = ALIGN(4);
 	.altinstructions : {
 		__alt_instructions = .;
-		*(.altinstructions)
+		KEEP(*(.altinstructions))
 		__alt_instructions_end = .;
 	}

Do we need a KEEP(.init.altinstructions) as well? 

BTW, the build fails with CONFIG_FUNCTION_TRACER enabled:

aarch64-linux-gnu-ld: init/main.o(__patchable_function_entries): error: need linked-to section for --gc-sections

-- 
Catalin

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210319122506.GA6832%40arm.com.
