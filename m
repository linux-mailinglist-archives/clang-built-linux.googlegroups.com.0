Return-Path: <clang-built-linux+bncBCIO53XE7YHBBIWV6GAAMGQECAONB7Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3c.google.com (mail-io1-xd3c.google.com [IPv6:2607:f8b0:4864:20::d3c])
	by mail.lfdr.de (Postfix) with ESMTPS id B2CB030FF74
	for <lists+clang-built-linux@lfdr.de>; Thu,  4 Feb 2021 22:44:03 +0100 (CET)
Received: by mail-io1-xd3c.google.com with SMTP id x7sf4181033ion.12
        for <lists+clang-built-linux@lfdr.de>; Thu, 04 Feb 2021 13:44:03 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1612475042; cv=pass;
        d=google.com; s=arc-20160816;
        b=IfxWBxNT2kivDGCMo1ZtMuowiy8bMNqTxkWiOtH4dZDIrJ0gSQgJZ4fuPcDmCWGJM3
         mlZoiFB2KuEIkOcvXksh6giV41PWgBCn1u8PQ/QeKJjETlGIblkeK99PVPzvGtutYIIu
         xQhnIjWiezurinObNH+jGiwIaCznWqM+mtrZ0Xw8AJoG7TfkMphKDlaJfLhL5pOqF9wf
         zveRAK6kQ3hUd64RgRx2kY1L+WcgmRZPP63FslQpUilPYO806vNLzHFOT13cCDGX768y
         +YS8Njjle8zSXWxqD7IIC9/1A7HIsxzbS5m6t7CDBBsqq2+PK45usM7M2ZFb/IvmQo55
         5CZA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=24SLpuOggBl2dCe+qaSINq3hIqTDhQkT6r6rmSE8AVY=;
        b=vnL/96w+O6r4lqWXLJYaARracPZF/myL/s4dHvRoqv7a79KGzJGB1lhsIcmdKa9nxB
         fhC1Aif4yxHTGVnOGMost57iyVdnzcRvyLEkant0Bjbdrom16961Pn8xYMKarvvxwQVR
         N+rmrTzI8HDHKEFazol0iEn2lRLrS+tKLlg+NNdtfsY5pTlJ8klEQe095y1/fVAsVtwT
         g3meTZpAnJ5/54C3ev2lA/FeTsbEA3MiKPb1z1zMY0molflAQG/3bwvagZjLl+ewQuYm
         wqBbqpel6gZaAKrRZDje11qso98Ul3YeJKYfBBUe0rmcxDMGk/51yaUy/boHCrTLHGBm
         nNXg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of niveditas98@gmail.com designates 209.85.219.47 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=24SLpuOggBl2dCe+qaSINq3hIqTDhQkT6r6rmSE8AVY=;
        b=Q4TjwmNB0TLPFrYD5Sk8P3z46FTAgUnLVRt/e9SGElFRbEk5y7NXoJtRh+X+q0Di+c
         XdVSRhgM27xYUu3bG8i4CUpWAiph4GFqd3vbnMeU2vp5hAoFTfNRyESuqR5aQL88wTmF
         g0+OVk8fAzQ7BRY7U91aWAJotd1UdSiKaYBwU8wtBJ85V7wXFfedvqR5TXYt3yRV6lSt
         JgMFC5eQiXiRLdj1EN/QbBzFGbbOOKI208hDrFArlKMGUAb+URfDc4e53h3uDDiJQ1VD
         UQXaqdjYV61TnQEewfSUe9D7cCXyc83vW3cfZnqw2Rz3dKIIB0gVdaYwc+ny70zfmy5o
         okcg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=24SLpuOggBl2dCe+qaSINq3hIqTDhQkT6r6rmSE8AVY=;
        b=r5KNr76eEWKbw6Q6T1LC9BlECNrsYPsMEHA7R9FqJNN/Pam566/qgxB09N/PnSHLve
         qHNFDOJxYhikV9nxhZvd/hPar4UFc1AoxzVi1VnddJt79SPZOnUupVnLr7r3w8LSZOdt
         Ip2oSsLJBnV895Eg59vsSLKutzY2jFjMdAZwMTyPCCmj8kBfA7e7sBnXaquo8a91MRU0
         0OuUYbZj1fh4pkOSWLSpffY5xvExRYfPWi0XS4z7u7PA2n8plz7MsO4uctNQAm7lITvl
         +g9aelB+3AzQGzfaQYYjT4jSiUbVHUMAMY1Jte+1oyFwdGNkvNlJybXUs/5T+h6tp/JJ
         A1pA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533ybFYn1rPXE/0lCjjVYh4vggeLntl5QMgoHOido6WASkecLGGm
	LirBXPBcgNPugJM6PLFOaJM=
X-Google-Smtp-Source: ABdhPJyqu8lXO/rEO3zcVXGplofjqDu8U+Pf5VdD57ZzBgIvXNJj0+ounLZYpYNEUs0wAl7+9sq7fQ==
X-Received: by 2002:a02:6a50:: with SMTP id m16mr1539815jaf.129.1612475042516;
        Thu, 04 Feb 2021 13:44:02 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6638:13c5:: with SMTP id i5ls928438jaj.1.gmail; Thu, 04
 Feb 2021 13:44:01 -0800 (PST)
X-Received: by 2002:a05:6638:35ac:: with SMTP id v44mr1568126jal.103.1612475041908;
        Thu, 04 Feb 2021 13:44:01 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1612475041; cv=none;
        d=google.com; s=arc-20160816;
        b=epFuFIcQoZILbHlHdYV4HYtcRhrE+yc36SvJmwfNKsjtOs6IebBVD/ZWJWiuUOVF7N
         VlirUony3JQfreJxrztW0GMOl6piOeqmz14RzsrcOg1kL1DZpSw7GyvXS7UnQXOnqL5Z
         DmCHy+TmlI+DOxZaPkjVC91BEbckc8B1OOmV2r8U42iIQRqgLzbnSP7RH0q69QiGY4t1
         kn4I8Ska8jLPhcLI0WDDhqnL2nFzf9dPttvbPSxiL5T+/NssrxcRv3BPhTNIY4aFCmB2
         898JfYgV4E5FDTIIQFIDx1jnM0IRj4Sa4BXBH2uiYqMl1kVAVFt0WIPsOzTB9Mjt1/21
         1KWg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date;
        bh=pKT1129goorIBDoVw07+oNDIAL0ruSPyAoYmTeYA4JM=;
        b=azF5Qc2ddPDnDFVK8YvGqEhutfuHPV/4XoZeeTk91kVTLIvbW7CgUfvvYquntSdcDO
         HeRb3A04eBnUKljrHzknRtWNHwjwQAZg7avP05RndipNSNiBGMrjTmQZktooFT0aXUfA
         34ErbPJNgd9gNY06H74Q7+A7i1vdk01L9HLgYIv1ReIktbyVKmbCJ+KNemWBMKZyR5C9
         cymEAtERmdzgPaZZAJESMgWcWO9+fC9QtWEHHZHBmmBiyDFHRWU3zGdyvRMNXe7faVNK
         Y/Iu6KYMik77af9XqdLolY8Tg98O3UClds1iVAee/jz9bCvaKyAz+50y5LnIeoei6wTs
         we/Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of niveditas98@gmail.com designates 209.85.219.47 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
Received: from mail-qv1-f47.google.com (mail-qv1-f47.google.com. [209.85.219.47])
        by gmr-mx.google.com with ESMTPS id y6si248611ill.1.2021.02.04.13.44.01
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 04 Feb 2021 13:44:01 -0800 (PST)
Received-SPF: pass (google.com: domain of niveditas98@gmail.com designates 209.85.219.47 as permitted sender) client-ip=209.85.219.47;
Received: by mail-qv1-f47.google.com with SMTP id r13so2478383qvm.11
        for <clang-built-linux@googlegroups.com>; Thu, 04 Feb 2021 13:44:01 -0800 (PST)
X-Received: by 2002:a05:6214:a4f:: with SMTP id ee15mr1429073qvb.10.1612475041219;
        Thu, 04 Feb 2021 13:44:01 -0800 (PST)
Received: from rani.riverdale.lan ([2001:470:1f07:5f3::b55f])
        by smtp.gmail.com with ESMTPSA id p22sm6267413qkk.128.2021.02.04.13.43.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 04 Feb 2021 13:44:00 -0800 (PST)
Date: Thu, 4 Feb 2021 16:43:58 -0500
From: Arvind Sankar <nivedita@alum.mit.edu>
To: Borislav Petkov <bp@alien8.de>
Cc: Ard Biesheuvel <ardb@kernel.org>, Nathan Chancellor <nathan@kernel.org>,
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
Subject: Re: [PATCH] x86: efi: avoid BUILD_BUG_ON() for non-constant p4d_index
Message-ID: <YBxqnosGDroAnpio@rani.riverdale.lan>
References: <20210107223424.4135538-1-arnd@kernel.org>
 <YAHoB4ODvxSqNhsq@rani.riverdale.lan>
 <YAH6r3lak/F2wndp@rani.riverdale.lan>
 <CAMj1kXGZFZciN1_KruCr=g6GANNpRrCLR48b3q13+QfK481C7Q@mail.gmail.com>
 <20210118202409.GG30090@zn.tnic>
 <YAYAvBARSRSg8z8G@rani.riverdale.lan>
 <CAMj1kXHM98-iDYpAozaWEv-qxhZ0-CUMwSdG532x2d+55gXDhQ@mail.gmail.com>
 <20210203185148.GA1711888@localhost>
 <CAMj1kXFPOvkcw573wzKzMQOgT-nddFcAZo9M4Lk+idn_1UBbnA@mail.gmail.com>
 <20210204105155.GA32255@zn.tnic>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20210204105155.GA32255@zn.tnic>
X-Original-Sender: nivedita@alum.mit.edu
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of niveditas98@gmail.com designates 209.85.219.47 as
 permitted sender) smtp.mailfrom=niveditas98@gmail.com
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

On Thu, Feb 04, 2021 at 11:51:55AM +0100, Borislav Petkov wrote:
> On Wed, Feb 03, 2021 at 09:29:18PM +0100, Ard Biesheuvel wrote:
> > I think we have agreement on the approach but it is unclear who is
> > going to write the patch.
> 
> How's that below?
> 
> And frankly, I'd even vote for removing those assertions altogether. If
> somehow the EFI pgd lands somewhere else, the kernel will crash'n'burn
> spectacularly and quickly so it's not like we won't catch it...

Removing altogether should be fine, but see below if we don't.

> 
> ---
> diff --git a/arch/x86/include/asm/pgtable_64_types.h b/arch/x86/include/asm/pgtable_64_types.h
> index 91ac10654570..b6be19c09841 100644
> --- a/arch/x86/include/asm/pgtable_64_types.h
> +++ b/arch/x86/include/asm/pgtable_64_types.h
> @@ -156,8 +156,8 @@ extern unsigned int ptrs_per_p4d;
>  #define CPU_ENTRY_AREA_PGD	_AC(-4, UL)
>  #define CPU_ENTRY_AREA_BASE	(CPU_ENTRY_AREA_PGD << P4D_SHIFT)
>  
> -#define EFI_VA_START		( -4 * (_AC(1, UL) << 30))
> -#define EFI_VA_END		(-68 * (_AC(1, UL) << 30))
> +#define EFI_VA_START		( -4UL * (_AC(1, UL) << 30))
> +#define EFI_VA_END		(-68UL * (_AC(1, UL) << 30))

This doesn't have any effect right? And the reason for the _AC() stuff
in there is to allow the #define to be used in assembler -- this
particular one isn't, but it makes no sense to use the UL suffix as well
as _AC() in the same macro.

>  
>  #define EARLY_DYNAMIC_PAGE_TABLES	64
>  
> diff --git a/arch/x86/platform/efi/efi_64.c b/arch/x86/platform/efi/efi_64.c
> index e1e8d4e3a213..56fdc0bbb554 100644
> --- a/arch/x86/platform/efi/efi_64.c
> +++ b/arch/x86/platform/efi/efi_64.c
> @@ -123,9 +123,7 @@ void efi_sync_low_kernel_mappings(void)
>  	 * only span a single PGD entry and that the entry also maps
>  	 * other important kernel regions.
>  	 */
> -	MAYBE_BUILD_BUG_ON(pgd_index(EFI_VA_END) != pgd_index(MODULES_END));
> -	MAYBE_BUILD_BUG_ON((EFI_VA_START & PGDIR_MASK) !=
> -			(EFI_VA_END & PGDIR_MASK));
> +	MAYBE_BUILD_BUG_ON((EFI_VA_START & PGDIR_MASK) != PGDIR_MASK);

This check is superfluous. Just do the P4D one.

>  
>  	pgd_efi = efi_pgd + pgd_index(PAGE_OFFSET);
>  	pgd_k = pgd_offset_k(PAGE_OFFSET);
> @@ -137,8 +135,7 @@ void efi_sync_low_kernel_mappings(void)
>  	 * As with PGDs, we share all P4D entries apart from the one entry
>  	 * that covers the EFI runtime mapping space.
>  	 */
> -	BUILD_BUG_ON(p4d_index(EFI_VA_END) != p4d_index(MODULES_END));
> -	BUILD_BUG_ON((EFI_VA_START & P4D_MASK) != (EFI_VA_END & P4D_MASK));
> +	BUILD_BUG_ON((EFI_VA_START & P4D_MASK) != P4D_MASK);

This should check EFI_VA_END instead of EFI_VA_START, and maybe throw in
a BUG_ON if EFI_VA_END >= EFI_VA_START.

>  
>  	pgd_efi = efi_pgd + pgd_index(EFI_VA_END);
>  	pgd_k = pgd_offset_k(EFI_VA_END);
> 
> 
> -- 
> Regards/Gruss,
>     Boris.
> 
> https://people.kernel.org/tglx/notes-about-netiquette

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/YBxqnosGDroAnpio%40rani.riverdale.lan.
