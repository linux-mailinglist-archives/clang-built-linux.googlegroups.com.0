Return-Path: <clang-built-linux+bncBCP4ZTXNRIFBBT5IXOAAMGQE4VNIIPA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x43a.google.com (mail-wr1-x43a.google.com [IPv6:2a00:1450:4864:20::43a])
	by mail.lfdr.de (Postfix) with ESMTPS id D4F1A30263F
	for <lists+clang-built-linux@lfdr.de>; Mon, 25 Jan 2021 15:23:11 +0100 (CET)
Received: by mail-wr1-x43a.google.com with SMTP id z9sf1641826wro.11
        for <lists+clang-built-linux@lfdr.de>; Mon, 25 Jan 2021 06:23:11 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1611584591; cv=pass;
        d=google.com; s=arc-20160816;
        b=dPrJCfNBcHr9NATUnqCRhckPYdnlWtKCZSh4wo7Gby8vmGS16h/os/RFlE3Oz5rTTA
         LwwvNe2EAMucLgFsRteiALKn6e+vVZOZCjZpFT5uJd7zPrVwhMHVAOlwr7Rk7ZktJpVc
         8vHm18xBVar3b4xOa8GFPnY8H9n2htFn857ap0rGAvR8ZrczkIwkYXhMZMnviZRckkQT
         uUt0YW1HY/KVaYsL8IrrXpQFHaGkvJVHBON/PL/d0tESP+F2mpzIMYU8+y5TkrjfgWIK
         bMMIKnlYltap0NIo+ag0dj3JSeylljwM2rdkk3b0o1Ik5KXbE6hJjmNW4ocW20mFA591
         BlSQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=R5OMv9LVmKu+brjoey0WHvNEilLJ1nStIZqEmBaI2w0=;
        b=M1cyp0v04F+UFeAQoFgGLxICE1PS9XW0Os1gLc0kBGVHozpX+piMRCEPH3llhJBSnw
         4Nnh0m7oqyT9OxWv8IXoDtGu4MdrVKKpbl93CJcBNf72VtZoOltg+EfJ6U2RT5v2ZsP0
         RikNAfSDr9dSCfCnbBRqkeTTXAnmyHmhDDTWh7qzdcD3I6fWjLBUNNO/482kaxzKP38W
         gG0+oOKmyvkwMeTEGwItgZ6DNayFcrfqjeaobZ4qUIo3QsZmOSW6EO4XJ3Q1dcL16ENx
         JiB8RNswJBzsjXAfU4SpWe6RuyPJT2aKQ3gEHb7RK2uX+GQtqWtAoWW3dnsrieaWbAym
         g4xA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@alien8.de header.s=dkim header.b=jxm2GLMn;
       spf=pass (google.com: domain of bp@alien8.de designates 2a01:4f8:190:11c2::b:1457 as permitted sender) smtp.mailfrom=bp@alien8.de;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=alien8.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=R5OMv9LVmKu+brjoey0WHvNEilLJ1nStIZqEmBaI2w0=;
        b=jmE348/xv5k4iA+6xiKlF9/aWPRurmtCj8k6dRVfMHA2J4Yjs1LFmk1+eT2sHu4MyN
         QuvpWxUp6n3MnVvqByRkwqKUP/2aTACGqAoMJTMSunsbPkjv1NkVhBip0O6S11ALjZs9
         B6ZFyr99GPnqYXrdz9Br7q18SlouFbL/9J8Nuq3eF2IiFblagOMt6c+NufgFF/q7h0so
         pH0WAHizLDC4rYwhbI09+1Ufvf335Id31F15Xs0Ssgq1W9t79IhoknwCZpxfbIehTZXB
         +ZY1aEF/j1QCa+650a7/u7fowkb+8caXLAVs3ILKRKPeiol/127G/hymd+LT907lEdZx
         i0NA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=R5OMv9LVmKu+brjoey0WHvNEilLJ1nStIZqEmBaI2w0=;
        b=nEN8DCbG9CcgG3/cybLNiFbIPrxp07xdRar2Qfn9+SmP570Uzi9LU4dxPQ3205YH+1
         sPE6kJyOq2zQJMBeUrl/65TRAtiPzzjTHc/z8D5R6f6FQ95LI5akIqcfGQ3VCmScbr2I
         aKLb7if6b6o3DI5Darq9gVwhXKi7/uG5c5hFLxYX2qIPRodIzkCQZ14Dw/Ja7pb0hAYM
         FeNin+SGz5bJFTSI2GMhHrx4XqLb4WtNUdZJrhxA9Ns3QCg2/6jCp56NJIVOMr1/iGZE
         3ieIgMb/AzJNQyPSHvkr6IzFXs4Iys88/pzPq4SncxWw1oAcIfu0MnUiN10WU6M1N5Lh
         CsDQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531vo35mwXZdyPFdtzcJPWGaIIQ2NCox5bDAPQL21BTZHk7Js1/b
	exHdsM4RJmsvNP3Ickre5dQ=
X-Google-Smtp-Source: ABdhPJyPuvsInwQ1AxEU1TsucUDJD8jKMpvVlzOE+p+HyamPzL24EXh52KjVVyomw6jeuljwXt/AJg==
X-Received: by 2002:a1c:a406:: with SMTP id n6mr354022wme.53.1611584591638;
        Mon, 25 Jan 2021 06:23:11 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1c:60c2:: with SMTP id u185ls171676wmb.2.gmail; Mon, 25 Jan
 2021 06:23:10 -0800 (PST)
X-Received: by 2002:a05:600c:2281:: with SMTP id 1mr381830wmf.150.1611584590869;
        Mon, 25 Jan 2021 06:23:10 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1611584590; cv=none;
        d=google.com; s=arc-20160816;
        b=U9h2lM0C4mv8Y+THZtRDsIQ2jFqcaANfApXkLZ4CvIIkh8rI7Da4DopKfS4fdKbVez
         IZqBWXZPtiu+WdpxNUrgKMqHfxu06PWK45d6Q/iT2iKt0iJdO9gSMp2quGpRcJvq78Ho
         KpV6SWH+yQtuLDu4GrsP1dZAWa/wKjVM5iKNKM7KPH/p6BDWMhHvwRvb1gWM1zEuunfy
         xMfkl152ho6zJCBtnDEPa0FTgq0+127NHg7eOXQGNHIaORkGxc9KxIrze/WmBLPDOzK8
         NAZX154+gmJJHbKT9qAyuOl0RHufr8Qn5zvJunSce6PHS5/P4KWVaa+G4hROWhbDjvGH
         rk1A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=KvaGodOg8sDLe0fDG3u7guV4sdl96juKUdVwNDOmutg=;
        b=HVIbes5J97yJimNMiUajnv29nWgmJDUoiHu7+ECziYLWWC+bjl/Z56x8nOChCeWetK
         lQJpVkDePgc0XXmdeSbPx6UWaMRi/2pcgltI1rsTykEJq4Hzjk5O8ILNQUgQNfYFPwai
         JRZe2XqzoavWkVSnVCnJ4BJLyJTzHtUjOq3vXR0HznVZCuvPknbMi/w9DvditGcaUjvv
         zaXDbJIvMO3TnNp4+UdXZxh/vYNtZOa3F8T9R46BCXDJyAjyWu7I2TiHczYwO1KsR7eK
         +D9laR3gYOxYoKX/bUwml8l0tgI4uS2FMp8EKJppv7wrYAn5uh+MJW8ZXxnlAiqOmU4o
         Rwfw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@alien8.de header.s=dkim header.b=jxm2GLMn;
       spf=pass (google.com: domain of bp@alien8.de designates 2a01:4f8:190:11c2::b:1457 as permitted sender) smtp.mailfrom=bp@alien8.de;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=alien8.de
Received: from mail.skyhub.de (mail.skyhub.de. [2a01:4f8:190:11c2::b:1457])
        by gmr-mx.google.com with ESMTPS id h10si72wmq.4.2021.01.25.06.23.10
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 25 Jan 2021 06:23:10 -0800 (PST)
Received-SPF: pass (google.com: domain of bp@alien8.de designates 2a01:4f8:190:11c2::b:1457 as permitted sender) client-ip=2a01:4f8:190:11c2::b:1457;
Received: from zn.tnic (p200300ec2f09db0060c9c38025ffa6e4.dip0.t-ipconnect.de [IPv6:2003:ec:2f09:db00:60c9:c380:25ff:a6e4])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.skyhub.de (SuperMail on ZX Spectrum 128k) with ESMTPSA id 936861EC04F2;
	Mon, 25 Jan 2021 15:23:08 +0100 (CET)
Date: Mon, 25 Jan 2021 15:23:02 +0100
From: Borislav Petkov <bp@alien8.de>
To: Fangrui Song <maskray@google.com>
Cc: Thomas Gleixner <tglx@linutronix.de>, Ingo Molnar <mingo@redhat.com>,
	x86@kernel.org, linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com, Arnd Bergmann <arnd@arndb.de>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Michael Matz <matz@suse.de>
Subject: Re: [PATCH v3] x86: Treat R_386_PLT32 as R_386_PC32
Message-ID: <20210125142302.GA23070@zn.tnic>
References: <20210107185555.2781221-1-maskray@google.com>
 <20210114224819.1608929-1-maskray@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20210114224819.1608929-1-maskray@google.com>
X-Original-Sender: bp@alien8.de
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@alien8.de header.s=dkim header.b=jxm2GLMn;       spf=pass
 (google.com: domain of bp@alien8.de designates 2a01:4f8:190:11c2::b:1457 as
 permitted sender) smtp.mailfrom=bp@alien8.de;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=alien8.de
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

It's a good thing I have a toolchain guy who can explain to me what you
guys are doing because you need to start writing those commit messages
for !toolchain developers.

On Thu, Jan 14, 2021 at 02:48:19PM -0800, Fangrui Song wrote:
> This is similar to commit b21ebf2fb4cd ("x86: Treat R_X86_64_PLT32 as
> R_X86_64_PC32"), but for i386.  As far as Linux kernel is concerned,
> R_386_PLT32 can be treated the same as R_386_PC32.
> 
> R_386_PC32/R_X86_64_PC32 are PC-relative relocation types with the
> requirement that the symbol address is significant.
> R_386_PLT32/R_X86_64_PLT32 are PC-relative relocation types without the
> address significance requirement.

I was told what "significant" means in that context and while it is
clear to you, I'm pretty sure it is not clear to kernel developers who
haven't looked at toolchains in depth. So please elaborate.

> On x86-64, there is no PIC vs non-PIC PLT distinction and an
> R_X86_64_PLT32 relocation is produced for both `call/jmp foo` and
> `call/jmp foo@PLT` with newer (2018) GNU as/LLVM integrated assembler.

Also, please explain in short why LLVM is generating R_X86_64_PLT32
relocs now? I.e., is it the same reason as why binutils does that?

I.e., mentioning the big picture of things would help as to why you're
doing this.

> On i386, there are 2 types of PLTs, PIC and non-PIC. Currently the
> convention is to use R_386_PC32 for non-PIC PLT and R_386_PLT32 for PIC
> PLT.

Convention in general or convention for LLVM?

> clang-12 -fno-pic (since
> https://github.com/llvm/llvm-project/commit/a084c0388e2a59b9556f2de0083333232da3f1d6)
> can emit R_386_PLT32 for compiler generated function declarations as
> well to avoid a canonical PLT entry (st_shndx=0, st_value!=0) if the
> symbol turns out to be defined externally. GCC/GNU as will likely keep
> using R_386_PC32 because (1) the ABI is legacy (2) the change will drop
> a GNU ld non-default visibility ifunc for shared objects.
> https://sourceware.org/bugzilla/show_bug.cgi?id=27169

Not sure how useful this paragraph is for kernel developers...

> Link: https://github.com/ClangBuiltLinux/linux/issues/1210
> Reported-by: Arnd Bergmann <arnd@arndb.de>
> Signed-off-by: Fangrui Song <maskray@google.com>
> Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
> Reviewed-by: Nathan Chancellor <natechancellor@gmail.com>
> Tested-by: Nick Desaulniers <ndesaulniers@google.com>
> Tested-by: Nathan Chancellor <natechancellor@gmail.com>
> 
> ---
> Change in v2:
> * Improve commit message
> ---
> Change in v3:
> * Change the GCC link to the more relevant GNU as link.
> * Fix the relevant llvm-project commit id.
> ---
>  arch/x86/kernel/module.c | 1 +
>  arch/x86/tools/relocs.c  | 2 ++
>  2 files changed, 3 insertions(+)
> 
> diff --git a/arch/x86/kernel/module.c b/arch/x86/kernel/module.c
> index 34b153cbd4ac..5e9a34b5bd74 100644
> --- a/arch/x86/kernel/module.c
> +++ b/arch/x86/kernel/module.c
> @@ -114,6 +114,7 @@ int apply_relocate(Elf32_Shdr *sechdrs,
>  			*location += sym->st_value;
>  			break;
>  		case R_386_PC32:
> +		case R_386_PLT32:
>  			/* Add the value, subtract its position */
>  			*location += sym->st_value - (uint32_t)location;
>  			break;
> diff --git a/arch/x86/tools/relocs.c b/arch/x86/tools/relocs.c
> index ce7188cbdae5..717e48ca28b6 100644
> --- a/arch/x86/tools/relocs.c
> +++ b/arch/x86/tools/relocs.c
> @@ -867,6 +867,7 @@ static int do_reloc32(struct section *sec, Elf_Rel *rel, Elf_Sym *sym,
>  	case R_386_PC32:
>  	case R_386_PC16:
>  	case R_386_PC8:
> +	case R_386_PLT32:
>  		/*
>  		 * NONE can be ignored and PC relative relocations don't
>  		 * need to be adjusted.

That comment might need adjustment.

> @@ -910,6 +911,7 @@ static int do_reloc_real(struct section *sec, Elf_Rel *rel, Elf_Sym *sym,
>  	case R_386_PC32:
>  	case R_386_PC16:
>  	case R_386_PC8:
> +	case R_386_PLT32:
>  		/*
>  		 * NONE can be ignored and PC relative relocations don't
>  		 * need to be adjusted.

Ditto.

-- 
Regards/Gruss,
    Boris.

https://people.kernel.org/tglx/notes-about-netiquette

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210125142302.GA23070%40zn.tnic.
