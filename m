Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBW5J62AAMGQENEEZHOI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa3d.google.com (mail-vk1-xa3d.google.com [IPv6:2607:f8b0:4864:20::a3d])
	by mail.lfdr.de (Postfix) with ESMTPS id B6972311071
	for <lists+clang-built-linux@lfdr.de>; Fri,  5 Feb 2021 19:56:28 +0100 (CET)
Received: by mail-vk1-xa3d.google.com with SMTP id m20sf1837532vkk.16
        for <lists+clang-built-linux@lfdr.de>; Fri, 05 Feb 2021 10:56:28 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1612551387; cv=pass;
        d=google.com; s=arc-20160816;
        b=evbSvDlv7oyTyR7UcwGZUbgbvtl5iq9p5wFnzaytDJM236RkgclEKcC8pGRHR9gej3
         MqC9lSfPYLydyElw27lbN4Eb+i8aVGN7TJG4QRvjvHT6vXuWM0MAGZATU6TBL/npJ7+J
         eSPeca7ZSzXyfLA8HG+WY7yaCNHHda2yaHRmGuw6LsPI3E/02k15r1xNZzSbrx/aNo8u
         xt7X3teIelcsj5JRomNoKI5Ku2Jjdl2tYx84zvk337Two0bymHloIwpp0FpzBtvg0c4+
         RnaKMwlpuOH56qcDmCooMGUHZxcLXt119D7+lSgn2X0DEQSyFBt1mqb3ju1T71XhTRmD
         AdWQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=+Inlb1Shq1Lhy2GYojTQazjFzOaW1NUIfncu5Foiofk=;
        b=hklmcIyV4VxDRrzig3jOeWCUaMz3/1Kbppuxh+N+qUhYvW6Zfg4X3O06Ztubd4IDUp
         WTw7ePvO70dMkpMmEeg2pE6Xq//hFnYGRBLxWhYoYTzsw/RAYZHrVIEMkzkD44WPTsZN
         nAUOY3l9x+vgVetg0AtH23xUqdtJfKQlnl+bEz96cL3NcN+EUAuTCEnOtWMU012yvwKU
         ikBhOir+F3R2kihgsKzh9pE5dJusXFMJkiezn0pXHaH8md26lWG36xcO/kOnTlZtW9CD
         OViVNf59AkE5CXwqKcI+xiZglwNMe39sggDjMlk3Mx8suzr9piGQjcCsYvicgZkVEIxH
         T8ig==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=f2VckE1Z;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=+Inlb1Shq1Lhy2GYojTQazjFzOaW1NUIfncu5Foiofk=;
        b=L5Ltc9/7HiUxZ+mZmdfP0wAlZfv46zHUVxrrpG6p/A4xDMEEz+kjKlAwv2xEpWEuuc
         cR0jLx3XSlJr4FsU6Jc9hxy/2krlYVncK1n1W+btSsv9Jwqr9Sb9SwcEpRc0DTfOD3vW
         cR7c+mgELG/HkurwisqofqxFvyGc3WUrf78DaM6siXLT3SAPnFDTL5XM7DzUvtX/b2di
         MvRiiXuwcN2bc9I00u8v6EIixlDeFHN0DfHOp18SJx0sCdyWrreDUaazVm7s+I++Qezn
         Jodn8Fkf2W09FYNEtSxygRzWqyHRpNhcD1rzIxU4E6y5sIXjwNUM36aWISogm/AdBzPW
         1o/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=+Inlb1Shq1Lhy2GYojTQazjFzOaW1NUIfncu5Foiofk=;
        b=KLfUGRwcIpRuUQ2J7SUr/ros3BJ0al0ckZ1UdANS1f91os6BfWhPQEtdMXFhk7vqHJ
         HNeReSYyvFpNTT0Nxf4wfO51BmQKn6fdljtaXhQDmyfXNiFrzPrnGGz2CI7d4t1IOfUD
         ijt4+tfXKO76Z25w9FnFfU+u5QYmtt2U/NJfsptDUWVnBUvyHY8UmO2yqLLb3h8oNfPN
         DV8DXkPjKl0XrbfjNc1eZXkxG6tb/2fmxDP/QFB6DdYxRIXSbYRbySyDG4iUC8afFTkk
         c2BzJIw/ap8d1dE9d7vzqr1EgDAHd+a8oH3xxQ6BOlCZuD7LCe6OyTCFBHCrRVxJkNmE
         NpMQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530IzZ78q0w++j1qIVpq6yO2qoEjOJW7LkUF6wE+k3s+FvsEpCFT
	ehVd0m/LOkz4qk8JYP3SUBU=
X-Google-Smtp-Source: ABdhPJy+iThvc9KQ/8s3nWHmssQ0LdMEX9Xqh321uFcv4/XiG69L7brrgKQKN5uXtYFaTl4KZ73Clw==
X-Received: by 2002:a05:6102:21cd:: with SMTP id r13mr4260364vsg.5.1612551387791;
        Fri, 05 Feb 2021 10:56:27 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:f515:: with SMTP id u21ls1314441vsn.2.gmail; Fri, 05 Feb
 2021 10:56:27 -0800 (PST)
X-Received: by 2002:a67:d786:: with SMTP id q6mr4124534vsj.1.1612551387310;
        Fri, 05 Feb 2021 10:56:27 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1612551387; cv=none;
        d=google.com; s=arc-20160816;
        b=skbL9QqKerAUuK94R0HtTloR2lJjIdHPBAVH9oY/7B9EAwSAQF2ReVxOgHJAUoX50h
         q5Gmv4ltLVS/Ic/fwsd1ps2YEvuE4kNojfq02WiSzVkteWGAqG+INe9dPs0fVDqv2Dlz
         rlFfxtBupWVrlmI/yYf52DXzSmiJRjp5pYf3LXqkcv1zVjKz08Yv1VQllVjbkGX0L6Nd
         lHH/SfvrXJgKcuWlq5iDQOxhXUlyv/SLOZ1mz4Vhfw7ZfIonhUTaYm2iBQQxMpD+vQFQ
         A4pbF27c+W/7nEAdaAzEFJPEk2fLXt5JcpDll6PKeAAs8QGuuun7Yj+qtAdMuwDS58Ce
         mqYA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=OaBe2Y5K6+ZrnaBdt0JGSH1TmRHDR6qgnD7WB5F65hc=;
        b=l3MFTU6L80sSnxnTKd56mSNi1s0P/cfsc5M4e42cD0rTam8AOvTKzELtuZeqZv46Ix
         CFt+2pT8VzGFMzMKNVS8+zr8G3IA6gC++wChI4rtHTJkg+6KoTrkWmRJX0xGacM3j029
         Dg6efF8vywHa07CFOGfGqD8SkhxEcxp7Xu80eODR3gzO/gHLPkXIeXyuAcuiBzIgb0ch
         TBwdMRPbd3a0Nrb2LK6waC2uMgqbqE5aZxMWE1EdBaxvcLjDpmSwLXFBtGAsnMfm41H3
         NIbg5PD1yWoGdoPM4mxwBv5Op/z5xpQro6bxyJb8I6HpetYve4yVkXuZEqEkE7s6yo0b
         fLTA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=f2VckE1Z;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id y127si419366vsc.0.2021.02.05.10.56.27
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 05 Feb 2021 10:56:27 -0800 (PST)
Received-SPF: pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 7C40E64DDD;
	Fri,  5 Feb 2021 18:56:24 +0000 (UTC)
Date: Fri, 5 Feb 2021 11:56:22 -0700
From: Nathan Chancellor <nathan@kernel.org>
To: Borislav Petkov <bp@alien8.de>
Cc: Arvind Sankar <nivedita@alum.mit.edu>, Ard Biesheuvel <ardb@kernel.org>,
	Arnd Bergmann <arnd@kernel.org>,
	Thomas Gleixner <tglx@linutronix.de>,
	Ingo Molnar <mingo@redhat.com>, X86 ML <x86@kernel.org>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Arnd Bergmann <arnd@arndb.de>, Darren Hart <dvhart@infradead.org>,
	Andy Shevchenko <andy@infradead.org>,
	"H. Peter Anvin" <hpa@zytor.com>,
	linux-efi <linux-efi@vger.kernel.org>,
	platform-driver-x86@vger.kernel.org,
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	"Kirill A. Shutemov" <kirill.shutemov@linux.intel.com>
Subject: Re: [PATCH] x86/efi: Remove EFI PGD build time checks
Message-ID: <20210205185622.GA461042@localhost>
References: <20210118202409.GG30090@zn.tnic>
 <YAYAvBARSRSg8z8G@rani.riverdale.lan>
 <CAMj1kXHM98-iDYpAozaWEv-qxhZ0-CUMwSdG532x2d+55gXDhQ@mail.gmail.com>
 <20210203185148.GA1711888@localhost>
 <CAMj1kXFPOvkcw573wzKzMQOgT-nddFcAZo9M4Lk+idn_1UBbnA@mail.gmail.com>
 <20210204105155.GA32255@zn.tnic>
 <YBxqnosGDroAnpio@rani.riverdale.lan>
 <20210204221318.GI32255@zn.tnic>
 <YByMdh/qDEwreq6S@rani.riverdale.lan>
 <20210205113930.GD17488@zn.tnic>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20210205113930.GD17488@zn.tnic>
X-Original-Sender: nathan@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=f2VckE1Z;       spf=pass
 (google.com: domain of nathan@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=nathan@kernel.org;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=kernel.org
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

On Fri, Feb 05, 2021 at 12:39:30PM +0100, Borislav Petkov wrote:
> From: Borislav Petkov <bp@suse.de>
> 
> With CONFIG_X86_5LEVEL, CONFIG_UBSAN and CONFIG_UBSAN_UNSIGNED_OVERFLOW
> enabled, clang fails the build with
> 
>   x86_64-linux-ld: arch/x86/platform/efi/efi_64.o: in function `efi_sync_low_kernel_mappings':
>   efi_64.c:(.text+0x22c): undefined reference to `__compiletime_assert_354'
> 
> which happens due to -fsanitize=unsigned-integer-overflow being enabled:
> 
>   -fsanitize=unsigned-integer-overflow: Unsigned integer overflow, where
>   the result of an unsigned integer computation cannot be represented
>   in its type. Unlike signed integer overflow, this is not undefined
>   behavior, but it is often unintentional. This sanitizer does not check
>   for lossy implicit conversions performed before such a computation
>   (see -fsanitize=implicit-conversion).
> 
> and that fires when the (intentional) EFI_VA_START/END defines overflow
> an unsigned long, leading to the assertion expressions not getting
> optimized away (on GCC they do)...
> 
> However, those checks are superfluous: the runtime services mapping
> code already makes sure the ranges don't overshoot EFI_VA_END as the
> EFI mapping range is hardcoded. On each runtime services call, it is
> switched to the EFI-specific PGD and even if mappings manage to escape
> that last PGD, this won't remain unnoticed for long.
> 
> So rip them out.
> 
> See https://github.com/ClangBuiltLinux/linux/issues/256 for more info.
> 
> Reported-by: Arnd Bergmann <arnd@arndb.de>
> Link: http://lkml.kernel.org/r/20210107223424.4135538-1-arnd@kernel.org
> Signed-off-by: Borislav Petkov <bp@suse.de>

Reviewed-by: Nathan Chancellor <nathan@kernel.org>
Tested-by: Nathan Chancellor <nathan@kernel.org>

> ---
>  arch/x86/platform/efi/efi_64.c | 19 -------------------
>  1 file changed, 19 deletions(-)
> 
> diff --git a/arch/x86/platform/efi/efi_64.c b/arch/x86/platform/efi/efi_64.c
> index e1e8d4e3a213..8efd003540ca 100644
> --- a/arch/x86/platform/efi/efi_64.c
> +++ b/arch/x86/platform/efi/efi_64.c
> @@ -115,31 +115,12 @@ void efi_sync_low_kernel_mappings(void)
>  	pud_t *pud_k, *pud_efi;
>  	pgd_t *efi_pgd = efi_mm.pgd;
>  
> -	/*
> -	 * We can share all PGD entries apart from the one entry that
> -	 * covers the EFI runtime mapping space.
> -	 *
> -	 * Make sure the EFI runtime region mappings are guaranteed to
> -	 * only span a single PGD entry and that the entry also maps
> -	 * other important kernel regions.
> -	 */
> -	MAYBE_BUILD_BUG_ON(pgd_index(EFI_VA_END) != pgd_index(MODULES_END));
> -	MAYBE_BUILD_BUG_ON((EFI_VA_START & PGDIR_MASK) !=
> -			(EFI_VA_END & PGDIR_MASK));
> -
>  	pgd_efi = efi_pgd + pgd_index(PAGE_OFFSET);
>  	pgd_k = pgd_offset_k(PAGE_OFFSET);
>  
>  	num_entries = pgd_index(EFI_VA_END) - pgd_index(PAGE_OFFSET);
>  	memcpy(pgd_efi, pgd_k, sizeof(pgd_t) * num_entries);
>  
> -	/*
> -	 * As with PGDs, we share all P4D entries apart from the one entry
> -	 * that covers the EFI runtime mapping space.
> -	 */
> -	BUILD_BUG_ON(p4d_index(EFI_VA_END) != p4d_index(MODULES_END));
> -	BUILD_BUG_ON((EFI_VA_START & P4D_MASK) != (EFI_VA_END & P4D_MASK));
> -
>  	pgd_efi = efi_pgd + pgd_index(EFI_VA_END);
>  	pgd_k = pgd_offset_k(EFI_VA_END);
>  	p4d_efi = p4d_offset(pgd_efi, 0);
> -- 
> 2.29.2
> 
> -- 
> Regards/Gruss,
>     Boris.
> 
> https://people.kernel.org/tglx/notes-about-netiquette

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210205185622.GA461042%40localhost.
