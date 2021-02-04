Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBEMQ6GAAMGQE3WWPDLA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x339.google.com (mail-ot1-x339.google.com [IPv6:2607:f8b0:4864:20::339])
	by mail.lfdr.de (Postfix) with ESMTPS id 313DA30FC57
	for <lists+clang-built-linux@lfdr.de>; Thu,  4 Feb 2021 20:16:35 +0100 (CET)
Received: by mail-ot1-x339.google.com with SMTP id t1sf2214137otp.13
        for <lists+clang-built-linux@lfdr.de>; Thu, 04 Feb 2021 11:16:35 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1612466194; cv=pass;
        d=google.com; s=arc-20160816;
        b=iIwrg74bdMchVOEGxQ0pDwe4ydRRxCfCJKoGgkUfwNw6XKDHeOsLRyd0xfTpo14pYe
         9gbtCkPVjDLsyxIL/9Xwi68ya7rNY1jLxwq7Hj9ONrEwFzZtqS6xa+kF1JZZMh5TyYtE
         4Q0TLI5swxuovoaDbaBF2RKiyBtgw1O3PV7UpxX01Iw9+OXQaHrlnpmdekyiadMj6XqL
         NewNbocpGeAmGiRd2Y2ZuzNMx002Ff+HWEDFHkg3q465NZtTAu21bsUlfUBV+IrHdKQu
         4t/KGCgZSoYjluK/x4MhUuN+1JZz4XNU2d2cFXKFR0/J8S7ahIIrEiKXiTORgiFRSxUt
         iNwg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=Fo/Ep00PZfs29Hz42Ke5VMQ0Cy8I53/LDRDQvkbdkGQ=;
        b=seHm88lSr2z8J++/UiYUhWhgGupgAkb7dIBuz490jnGFSuj7IDlFzSVY1IIVdWCyN0
         Y7w5mAW/ahx7vGUsgPmrYUBaxt7R7/AdCplaRiVq0RpVxbLuCw6Nb2D1eLUZOm+Z0wCx
         bzmZvewxciFh0ItA/ub18+2xF1Q9CYp1nObmpj39m2//oJ9tnds32E5I/vJaQn96VNPv
         KC2iQipotHIJJCXBEKxsEeDN3QJhQrgN0Yo/REnK9odr88GQVPjaWnl7gVJo3ZDPruvZ
         GW7VFTGV1FeJWjApIJ5frDhvExcY3Gh32wlrMNCkYdMWjQF46I2rBhsauBTEIwAjTR5w
         pFEw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=KBQdU9Of;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Fo/Ep00PZfs29Hz42Ke5VMQ0Cy8I53/LDRDQvkbdkGQ=;
        b=Og/n6f/n2B0/Pd/kqKCT9pLnoKyvGFw1ceCsvuln3DtoaSmGgHd36hitmZHbPPXzIz
         sNNS3wQ1UnGpPUaoALs3WCg2melFHo9RHnzOx6h9RpsE6nOEDRnNOPatlPWBKsE61Ejy
         4z7h7fE6ZyvAPev60j7tbd0ty16KeLuyVZ4myFdqD25Hc+oPaRI/kZdVHwWO8U2toN7W
         n0xOUrFPOYoDSktWTWET5W9Q0qXUL4pPAXCvz7rKMsh3WZuUgZ0mw+hIRVwfD8a3n+Ww
         qf0USH9H48YHO0NTSfCu592X9HJu8CPkARg/SiZYg9XyxlyrIinWywPAQVRCKAaSZ2/5
         MhBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=Fo/Ep00PZfs29Hz42Ke5VMQ0Cy8I53/LDRDQvkbdkGQ=;
        b=ULh6HHX+8p0lZwJqbt/ibtCrggHKcCf6VyutMBYnKxTjphUfm58sLoBMlckn3mGnfo
         m3h3qJnVcK1p3mw5D8T668CfIwetwH+in9kbq1IZPYYprN82fTpjk08XFRssXX6r5QxW
         utFswvVABbdn8QxayJZoW7qjI++l2i06WmM9mYx+y/8wYfBO3XnVkW3yZrvmn53VJ7m3
         WXxVTTLoecou5WGfDK1mr0eMIQYIJmub2zMwqewVYXUnK1NkdfxjGPOC496DVu/NJLuw
         oJVsIz6ESJ/HMKH4XyWJ6hcdJsL4smQMVeS6qAnZIU4SqR4VTnuIReURD/xYjF6Tp+4r
         I9vA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531oS27TT+mcJ5dXiWx/cegO5/1A4Fkxi9LVAhknBrfVpbWi1o2F
	7Y71QldpcY2yKoQFx/gSy5k=
X-Google-Smtp-Source: ABdhPJzFvLcnAcvGRneeiJtA2MLxgqXrYZcSrF0zMntlf2OdDErKLMU9sYGAqe4Wlvl+8HsgAvB1fw==
X-Received: by 2002:a05:6808:8cb:: with SMTP id k11mr695543oij.22.1612466193925;
        Thu, 04 Feb 2021 11:16:33 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6830:1e31:: with SMTP id t17ls1628140otr.3.gmail; Thu,
 04 Feb 2021 11:16:33 -0800 (PST)
X-Received: by 2002:a9d:469:: with SMTP id 96mr672852otc.165.1612466193454;
        Thu, 04 Feb 2021 11:16:33 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1612466193; cv=none;
        d=google.com; s=arc-20160816;
        b=sCIs5AQoBdzeUtNaQ/Iof0dWZ2NtMN6a1VphlluBQSK6Pg1oiaVOUTR/lzQsjgfoib
         Omu009oLoriak93+z77K7L27wZzIOhsM8eXiwLDsnBP+j37mD/Ko0o7kwBs8Do6bJbzN
         iwMRddPtePe2rYtbJf/r0vVQ7kpB0VosgUvONs82aEk55DqBT25P/NbHRi6VSEvzCikl
         w/b2g05G7IhFVZhQ2C/NpuumIG5HtEvOMtejf9ll/NmSNHsk8EbadJRZE4WDUjtmxEqm
         LXSyLeMRLOESCrab36mEyHg7YmFcek20EYYrOvHzV6u0f0xViYmA4uCYGEKBkSouvKTF
         372w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=Q1f0Xc1X8UgZZWqiIMuWyB6AWmbTXpSLZVvTN+c1Bjk=;
        b=qs900P06ZRW4jY1qXk+ySY7IXj5DvaBvYsInsW/bZcQS2KL9y+2eZIlJCBGzHlUhfp
         v8UIm52QGZQzxVH7814AY/KdRh1/zXRysSb7H2Xzd6K3c4uFyoPtd8e+hWzES0qyy9Ux
         ArrCXDgDEiu1eGoqMKNhQQ8H890Uo4IpSXIUKvHihaUJLd5pmjGWqWOLyZJ4ZpfbAAK9
         DvFfeuUPrDI354l/qCdOnQ7ptqz3KRXkyv14JylYIUztTx36bHSpbS0aSXmRzuII4ipy
         MbHB+nP4aheSMrOk4v2FON+h3aqqySJwsilJSaBG1iw9gJuY/BPrzRJdtNg2h6OsDXla
         /Qfg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=KBQdU9Of;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id m26si404880otk.1.2021.02.04.11.16.33
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 04 Feb 2021 11:16:33 -0800 (PST)
Received-SPF: pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 18E0E64DF0;
	Thu,  4 Feb 2021 19:16:31 +0000 (UTC)
Date: Thu, 4 Feb 2021 12:16:28 -0700
From: Nathan Chancellor <nathan@kernel.org>
To: Borislav Petkov <bp@alien8.de>
Cc: Ard Biesheuvel <ardb@kernel.org>, Arvind Sankar <nivedita@alum.mit.edu>,
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
Message-ID: <20210204191628.GC2991903@localhost>
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
X-Original-Sender: nathan@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=KBQdU9Of;       spf=pass
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
> 
> ---

This resolves the issue initially reported in this thread. Obviously
removing the assertions will do that as well. Feel free to carry
forward

Tested-by: Nathan Chancellor <nathan@kernel.org>

on a patch if you send it out.

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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210204191628.GC2991903%40localhost.
