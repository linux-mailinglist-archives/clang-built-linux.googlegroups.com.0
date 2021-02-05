Return-Path: <clang-built-linux+bncBCU4TIPXUUFRBQHF6SAAMGQENTSZH5A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x939.google.com (mail-ua1-x939.google.com [IPv6:2607:f8b0:4864:20::939])
	by mail.lfdr.de (Postfix) with ESMTPS id F4143310AB9
	for <lists+clang-built-linux@lfdr.de>; Fri,  5 Feb 2021 12:57:53 +0100 (CET)
Received: by mail-ua1-x939.google.com with SMTP id c1sf2305209uab.4
        for <lists+clang-built-linux@lfdr.de>; Fri, 05 Feb 2021 03:57:53 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1612526273; cv=pass;
        d=google.com; s=arc-20160816;
        b=En2VZ/7iYAKIa5De8dbH9p49L1efRRLaZad7wLItk8qpdXAKTDalfHOYUr7gdTZO5H
         SLTJdjL6asGZaqT3Nh+qiywuHOetWGxAxNjoxO3a4qFgC8mJk5CPf6+KuVLWnp29fq0t
         QiMNrCrD4I5mA73AWErqtUTtfADWYxDc4D1nUWZbcrHL9SI6UXOZldY1h1x9KTXvJc83
         t8brsngBHeha7ZdCwHm/UQ6syqq+EMDY/ilwfP6uTvTZ1NGf0T9VQ3ULb2qa2VvJ4ZY2
         3PIOs1NX/xygItp4FeAT5mQIUQAISN+2qk7QrEc3WIzAEUNFam+CTzB77caZoKQyljXH
         Kf9w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=iuOXAr/vfp4gQE33mMmg+8z2VsXg3USOpbt23yVIZLI=;
        b=KwbKZSCl7oKdyPRnD87Jbc87x0QG8RF58ExN2eeMh5gbhR36lLwOOlqhF8TxeOVbhH
         kidbp44IehDDjP1a08V6o6ghIuataA5360P81QfP5nFsy/flymodAP0rE4gjT9couabk
         DWJD6SC8xIAEaynnk+QCw/8bB3TngyGGL/4TRaYQ4ps0JZpUZN3GnFbvT/Bvq3W1Sp9t
         5Wx0XMdP2Gwcakh77o4k27Eli84Mu4qWA5GazlCnWatK1sik0dW1D5pJk6M/GDMZo0rE
         94INjXhE5iP7Ga6FJOZ4VfvYcLMkA5e4YPSIGnBFEohWVx891vQ1QvnWqc5ikDQSUnFh
         Emcg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=eglJi6jj;
       spf=pass (google.com: domain of ardb@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=ardb@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=iuOXAr/vfp4gQE33mMmg+8z2VsXg3USOpbt23yVIZLI=;
        b=HyYkgm1RP+f5eh8sILjBl8K0T4Hruwx4+x7QNWgy1Brj9B95MDkVX7hIMp6pvzv6yb
         1aj/Q3vUzZccWxzUJuRQBNbxEGMtrohi4wpDV/ST7ElkBUNajB0xP1T1GJgqi8G8lQaj
         HNDFKkP5xBd15zkOMWhIs1jplga63/VLHdmmHEon4C9VwOP3h8WO+UMxxacsT7BnpUwA
         dO5GgO/7bxdPAEjEmiJLKxgwFjerPXV9KCcdeaN53w7Dhg7LYhaIPAWhF1MenT2R3DSL
         PCYCtBtYb43+vyKjsk6xSXHVmFAsqrrFz8fhDc7a2AxnU0TtJ0NwwtnV/SDoJwXi3Wkw
         vplg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=iuOXAr/vfp4gQE33mMmg+8z2VsXg3USOpbt23yVIZLI=;
        b=CnOqEpbBwm0EOl7I0jz+gorakM+wdOKYg0H5WsfAWXu8ppffmpmdGxHTtVxl5Lkko5
         kZt0HrFtxJBr1jybFtP0NbDYDDBS3Lae0SwLnC/N0pgY8Hfx6gp/DJzNOGfSyxIEBSCJ
         LSPIGMYMeyodZzfsijKKt6oWKE8ffg7L8XslNSIdD5SHeqOASFzrKWrb68N9CdVpnQXJ
         /yzC2YL8joUJjYTU1I76X7XXhDVYvwNrTOTRDQFe+IBEOe4EE1VLlhCdx8u9j4bjcpPM
         d5m+B5pVWjmN+5DH0ikUn4SIbTjNO+lAix4ZV611ymQhwbFUnv95+t0b6d3B9LGbdtcz
         YAJA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531Oeipg2D1R3e3BkgiUpwoGBW7KrfRC7l9NmB1SpsTWO9/DTx8v
	/J1ME7pAcDtptB3p04jeg5M=
X-Google-Smtp-Source: ABdhPJzhKNloRA3yiiC+VvjV/ixMRUDah3cXzewhGFS3GKEVBUkktv2LT8+gwAcwk3Aq0aQr15/2QQ==
X-Received: by 2002:a67:2e81:: with SMTP id u123mr2939566vsu.40.1612526272817;
        Fri, 05 Feb 2021 03:57:52 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ab0:3916:: with SMTP id b22ls703400uaw.6.gmail; Fri, 05 Feb
 2021 03:57:52 -0800 (PST)
X-Received: by 2002:a9f:36cc:: with SMTP id p70mr2459237uap.137.1612526272376;
        Fri, 05 Feb 2021 03:57:52 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1612526272; cv=none;
        d=google.com; s=arc-20160816;
        b=gC3O0tk2rPCjAAbvsv+FER/W/Utma/v0LQLEN8D9Sf1OfZD4KTTHrOXyE/DL+PsUwH
         WchPsiu17MIowI485DHQZslxjQrdWgioS39Vhq+lSOcYpcMNsKDA3kGenlQWC7Bojt1q
         TDOjVrnET28Iq3Ai6IvrTbRJh4aRaO9rhyzheSDDa/UzRLkWuw6MVmkldkdUrUQuvMxJ
         l1qPyyfnb2CYsBOkZXOITsgl3y5a3k20BPcQcAic0sFZXg0EypYiopYO/rliqzE0mNE+
         IldXstQPlvM4SuX+sWMF73RnN0vbCETTF+YrSYb9IYOVF/F+3rxFSV2yhbECPgjq5FhW
         Ld5g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=SOiwW8I/hsVjC8fyD3u4ss/tHAk9Sz4OtjmJvEU2W5U=;
        b=jFzukVnbFSoryFsIEuU1zMHlEAw4HOCbZQYOcvZneHTFQDnC8+CA6Vzpc/SZNjWXVl
         Kv+OAglYwidVa3gCL1CUjWgNzIldqvEbUjglu9DVAreUHCjFgpD9T+2XzWHVCBwt8rsL
         NyCge2EjXji2SFdxETYAkbWprzRKBagN539mUm9m6hJo66nsQpGxvRjqL86My3l0EHa7
         M9iHu4wUpZKrNR29BK8UC649MmJt80BF2oyuXYGts/1poUmiuPfW2xGM3HKXhLQrKaSo
         uEzEEN4gtgjbCJPYaibAjhs//Qvd8bzJjhYC004D88oL3xcNBWlf/14A7G0NT4h2sDsg
         MQQw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=eglJi6jj;
       spf=pass (google.com: domain of ardb@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=ardb@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id q1si553415vsn.1.2021.02.05.03.57.52
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 05 Feb 2021 03:57:52 -0800 (PST)
Received-SPF: pass (google.com: domain of ardb@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id F053664FCE
	for <clang-built-linux@googlegroups.com>; Fri,  5 Feb 2021 11:57:50 +0000 (UTC)
Received: by mail-oi1-f173.google.com with SMTP id h192so7170521oib.1
        for <clang-built-linux@googlegroups.com>; Fri, 05 Feb 2021 03:57:50 -0800 (PST)
X-Received: by 2002:aca:ea0b:: with SMTP id i11mr2772699oih.33.1612526270014;
 Fri, 05 Feb 2021 03:57:50 -0800 (PST)
MIME-Version: 1.0
References: <CAMj1kXGZFZciN1_KruCr=g6GANNpRrCLR48b3q13+QfK481C7Q@mail.gmail.com>
 <20210118202409.GG30090@zn.tnic> <YAYAvBARSRSg8z8G@rani.riverdale.lan>
 <CAMj1kXHM98-iDYpAozaWEv-qxhZ0-CUMwSdG532x2d+55gXDhQ@mail.gmail.com>
 <20210203185148.GA1711888@localhost> <CAMj1kXFPOvkcw573wzKzMQOgT-nddFcAZo9M4Lk+idn_1UBbnA@mail.gmail.com>
 <20210204105155.GA32255@zn.tnic> <YBxqnosGDroAnpio@rani.riverdale.lan>
 <20210204221318.GI32255@zn.tnic> <YByMdh/qDEwreq6S@rani.riverdale.lan> <20210205113930.GD17488@zn.tnic>
In-Reply-To: <20210205113930.GD17488@zn.tnic>
From: Ard Biesheuvel <ardb@kernel.org>
Date: Fri, 5 Feb 2021 12:57:38 +0100
X-Gmail-Original-Message-ID: <CAMj1kXEpNuMyotUN5ojoFUjvAdx--OxqDqN030S2RmdONn3a6g@mail.gmail.com>
Message-ID: <CAMj1kXEpNuMyotUN5ojoFUjvAdx--OxqDqN030S2RmdONn3a6g@mail.gmail.com>
Subject: Re: [PATCH] x86/efi: Remove EFI PGD build time checks
To: Borislav Petkov <bp@alien8.de>
Cc: Arvind Sankar <nivedita@alum.mit.edu>, Nathan Chancellor <nathan@kernel.org>, 
	Arnd Bergmann <arnd@kernel.org>, Thomas Gleixner <tglx@linutronix.de>, Ingo Molnar <mingo@redhat.com>, 
	X86 ML <x86@kernel.org>, Nathan Chancellor <natechancellor@gmail.com>, 
	Nick Desaulniers <ndesaulniers@google.com>, Arnd Bergmann <arnd@arndb.de>, 
	Darren Hart <dvhart@infradead.org>, Andy Shevchenko <andy@infradead.org>, 
	"H. Peter Anvin" <hpa@zytor.com>, linux-efi <linux-efi@vger.kernel.org>, 
	platform-driver-x86@vger.kernel.org, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	"Kirill A. Shutemov" <kirill.shutemov@linux.intel.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ardb@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=eglJi6jj;       spf=pass
 (google.com: domain of ardb@kernel.org designates 198.145.29.99 as permitted
 sender) smtp.mailfrom=ardb@kernel.org;       dmarc=pass (p=NONE sp=NONE
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

On Fri, 5 Feb 2021 at 12:39, Borislav Petkov <bp@alien8.de> wrote:
>
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

Acked-by: Ard Biesheuvel <ardb@kernel.org>

> ---
>  arch/x86/platform/efi/efi_64.c | 19 -------------------
>  1 file changed, 19 deletions(-)
>
> diff --git a/arch/x86/platform/efi/efi_64.c b/arch/x86/platform/efi/efi_64.c
> index e1e8d4e3a213..8efd003540ca 100644
> --- a/arch/x86/platform/efi/efi_64.c
> +++ b/arch/x86/platform/efi/efi_64.c
> @@ -115,31 +115,12 @@ void efi_sync_low_kernel_mappings(void)
>         pud_t *pud_k, *pud_efi;
>         pgd_t *efi_pgd = efi_mm.pgd;
>
> -       /*
> -        * We can share all PGD entries apart from the one entry that
> -        * covers the EFI runtime mapping space.
> -        *
> -        * Make sure the EFI runtime region mappings are guaranteed to
> -        * only span a single PGD entry and that the entry also maps
> -        * other important kernel regions.
> -        */
> -       MAYBE_BUILD_BUG_ON(pgd_index(EFI_VA_END) != pgd_index(MODULES_END));
> -       MAYBE_BUILD_BUG_ON((EFI_VA_START & PGDIR_MASK) !=
> -                       (EFI_VA_END & PGDIR_MASK));
> -
>         pgd_efi = efi_pgd + pgd_index(PAGE_OFFSET);
>         pgd_k = pgd_offset_k(PAGE_OFFSET);
>
>         num_entries = pgd_index(EFI_VA_END) - pgd_index(PAGE_OFFSET);
>         memcpy(pgd_efi, pgd_k, sizeof(pgd_t) * num_entries);
>
> -       /*
> -        * As with PGDs, we share all P4D entries apart from the one entry
> -        * that covers the EFI runtime mapping space.
> -        */
> -       BUILD_BUG_ON(p4d_index(EFI_VA_END) != p4d_index(MODULES_END));
> -       BUILD_BUG_ON((EFI_VA_START & P4D_MASK) != (EFI_VA_END & P4D_MASK));
> -
>         pgd_efi = efi_pgd + pgd_index(EFI_VA_END);
>         pgd_k = pgd_offset_k(EFI_VA_END);
>         p4d_efi = p4d_offset(pgd_efi, 0);
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAMj1kXEpNuMyotUN5ojoFUjvAdx--OxqDqN030S2RmdONn3a6g%40mail.gmail.com.
