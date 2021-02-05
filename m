Return-Path: <clang-built-linux+bncBDYJPJO25UGBBHUW62AAMGQEK2H67NA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x239.google.com (mail-lj1-x239.google.com [IPv6:2a00:1450:4864:20::239])
	by mail.lfdr.de (Postfix) with ESMTPS id EFEEF310FA8
	for <lists+clang-built-linux@lfdr.de>; Fri,  5 Feb 2021 19:14:54 +0100 (CET)
Received: by mail-lj1-x239.google.com with SMTP id a22sf5954721ljq.4
        for <lists+clang-built-linux@lfdr.de>; Fri, 05 Feb 2021 10:14:54 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1612548894; cv=pass;
        d=google.com; s=arc-20160816;
        b=FuC8cJBAazFwzM1eF7blQ/jCEGQbR7+TG6/+9squ8Cw05GDrfGcEEfiyDwyb1Yctbu
         F6zZ3L7KszaRw57CWPyKtisD+COzYauWdot2GDUSuBSjO58AcaQ/RMRnZr9AaSJPdlhn
         Tk0xt4lIncP5qY49H0gzIpyPmSzrHttj26Rv4e2TeSey/qp5kZevqN4Qp8QNV03dYFD+
         shPs9484DUc5G6TUy8CdMC0YZetVTN9piPqv4fDrF2J464+bzwUetWGAX+71KPUhO/Va
         0WkDPJY/gIojFDagmQ9fYntBFfb0qkdJNeGP8TOtV8+bQonDA0Aw7UZbADyue0MZV8Oj
         6mtg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=Ao3xnmS20gSbo/jYCilUnVm74vj0G5ra5iid88GFtJI=;
        b=jpg5i6kLX6sIhYabXrfTu2J4GBSCfconY/QCYx4RBkr1Rh97814ZhuWuilEG10BfvZ
         2e8Y8P4eqw72qO3cgMKg1M+HKowWOAU4vNR9yd8tQ3l8hccl7KMCiseFyJXOqt04J4U+
         u/Dxg7MPrfMvF3QepoKvylAeel10PApw/Svl26KzopYxRdjeXJChnGy0bOsG/7EQc2Bm
         tU2QUD7ra1/RF8Ic7z4/5hc4lbGCNHFBfJeKeiQtCTHhox/qnE8aL3/lUneCYncz6mZF
         U7SekqSCZ1/PrHKJ80s5lYggA5fw1hLqmTeL787ZDmP8j8paad48u5f2mGszu1VkiM4/
         /wgQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=pqEFA3lI;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::132 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Ao3xnmS20gSbo/jYCilUnVm74vj0G5ra5iid88GFtJI=;
        b=rPufRYvM0ZYIFjts87sK603mCgW/k4BFz6wdKdxgHCA52kr0gpriMui6YfoUE892KL
         MriHlBuXUjJH54hvLR+aesGIMzmxRXFfIpTiDLmnq1Zigj/RWaCFDxpAsTzzDJA1mCyb
         lFx8PT7TjJE9IhmLahpbtW+Z9xUgXiB9wY99UbMnpzaQOI65UBqRkwhnoS+lJo/L7LwX
         W4b4mZngoGgOOEn/Ss3rJnpRo7JYf0sQ5708PQ6IMTjbcMwLPy2ftEQmKS5CwSvU8Y/1
         kqGR0d6Cm3phWVV4nxm1doIoDenfxYqZL/bhymfWV0NFSsQMWsDx5FecduVnASDlV0/f
         O8jQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Ao3xnmS20gSbo/jYCilUnVm74vj0G5ra5iid88GFtJI=;
        b=W0Z6PPqnUiEdRxDv0KxC7zmgMqDpwXXzvsTL/h9et7vQFV1TBuP2ynps46xYvPh0Ab
         6iNVkQUBuPmy8LoS2ThQva6811wk3LLcKo77a7p2p9wBsZSoAQojj6+FnsyzrEUp5Zo9
         Z4+IItZqHeo+hQdgzLhiLjKHYmp2fxiqE8xFeCc1NdtQXfqYc0AMglFzTD9M+ggUa/w3
         HnGAVd06rPNCHd7PEJKV/TSLmXMLoNnopnBBkEl9IIXXTHMFg79JvmU9lyS5bjwr4SEw
         GyFyNFDvfsP/lJXhnHPu+6BMDB8QkNJgVWHOwTsI1dNG+ECoSa2rtJGx5w4L2QH84/Sx
         jYIA==
X-Gm-Message-State: AOAM533b1cZNP/nKzBzv5A53HGINRyeTq0xTgWhtqHNzvxY5Z+akXhN3
	HnsN3Qo0aKFn+/G10oTJxYQ=
X-Google-Smtp-Source: ABdhPJzGhIEEn2unEU1SoXmghITeJF7B6l2dHylhY3NSPsI+d9R3g8bc8KOqW4wu088ZqtRjLY3WCg==
X-Received: by 2002:a2e:6f05:: with SMTP id k5mr3256508ljc.400.1612548894491;
        Fri, 05 Feb 2021 10:14:54 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac2:5519:: with SMTP id j25ls236849lfk.2.gmail; Fri, 05 Feb
 2021 10:14:53 -0800 (PST)
X-Received: by 2002:a19:240a:: with SMTP id k10mr3232223lfk.442.1612548893490;
        Fri, 05 Feb 2021 10:14:53 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1612548893; cv=none;
        d=google.com; s=arc-20160816;
        b=EuPkWyCje4dXD0oN8F6O0+29+67xz/ZPPR7BC7CVQZGIQhdADInaAAc9w1Loa4SLh1
         DfKNqJnini7R83fZImblDFphTz8TG+rdfhXU5BoDNUKhOVZ9U5L7uUEUxk9TY8/d8cOC
         OzL1SIo4HWe9jARwA0NNy6L6XrNPWqn6wQr+goUmxgFHxzk2jhaj/krXttU8sVZ6Fmpx
         /YzxtEOxAPFJ30e3y/7bYqNjycelOkjriimTIEmhUrKR5bkXMpEL0jHRbMnU5pNX0JGD
         of5MNnS3kP3bji5L43gcvURNInzbh57j14I3jXt95fJmjnSCZhxfrlS43PClJyaxj1DX
         PoMg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=YriR2p78K/vHHtzWx/ItCRdYg1dmwwp3GdKREBar06I=;
        b=kRoTEX1TI/SJhCIHQ1ngtO245+O1n9dCeNYr5baONGWmcYdKuBApjOWIXC/5BzrwEM
         ifdAXXIckN1g6MfRX1ekOdFZcePdlEoPteaoPi1VL6sZexG+SRnrenVAjP693rawLW8B
         uADo1Nj8gh0vyzLpbt3gz58eCuvUpj83mxgr69zq6VzDxDEOui/afKPlMjYSuYbmdhyz
         RyYiIMZxbVu88wJv1l4H13y8dv4liCzuZgq2ac0xnJC6F+udy0DCIKSEjVvitTO1xATX
         +COKmZqYMtUik5kegrzRYHScUvysd1HziHb9X/QFxrJQpDrmaa0s1T0Gxh6W9GB8QJYJ
         Y2KA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=pqEFA3lI;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::132 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-lf1-x132.google.com (mail-lf1-x132.google.com. [2a00:1450:4864:20::132])
        by gmr-mx.google.com with ESMTPS id u15si450581ljj.5.2021.02.05.10.14.53
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 05 Feb 2021 10:14:53 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::132 as permitted sender) client-ip=2a00:1450:4864:20::132;
Received: by mail-lf1-x132.google.com with SMTP id v5so8983882lft.13
        for <clang-built-linux@googlegroups.com>; Fri, 05 Feb 2021 10:14:53 -0800 (PST)
X-Received: by 2002:ac2:5622:: with SMTP id b2mr3121608lff.297.1612548892948;
 Fri, 05 Feb 2021 10:14:52 -0800 (PST)
MIME-Version: 1.0
References: <CAMj1kXGZFZciN1_KruCr=g6GANNpRrCLR48b3q13+QfK481C7Q@mail.gmail.com>
 <20210118202409.GG30090@zn.tnic> <YAYAvBARSRSg8z8G@rani.riverdale.lan>
 <CAMj1kXHM98-iDYpAozaWEv-qxhZ0-CUMwSdG532x2d+55gXDhQ@mail.gmail.com>
 <20210203185148.GA1711888@localhost> <CAMj1kXFPOvkcw573wzKzMQOgT-nddFcAZo9M4Lk+idn_1UBbnA@mail.gmail.com>
 <20210204105155.GA32255@zn.tnic> <YBxqnosGDroAnpio@rani.riverdale.lan>
 <20210204221318.GI32255@zn.tnic> <YByMdh/qDEwreq6S@rani.riverdale.lan> <20210205113930.GD17488@zn.tnic>
In-Reply-To: <20210205113930.GD17488@zn.tnic>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Fri, 5 Feb 2021 10:14:40 -0800
Message-ID: <CAKwvOdkyk_AejhxhasBggxYtSJi+3T-tjCExe+nAM5iJJ5_1aQ@mail.gmail.com>
Subject: Re: [PATCH] x86/efi: Remove EFI PGD build time checks
To: Borislav Petkov <bp@alien8.de>
Cc: Arvind Sankar <nivedita@alum.mit.edu>, Ard Biesheuvel <ardb@kernel.org>, 
	Nathan Chancellor <nathan@kernel.org>, Arnd Bergmann <arnd@kernel.org>, 
	Thomas Gleixner <tglx@linutronix.de>, Ingo Molnar <mingo@redhat.com>, X86 ML <x86@kernel.org>, 
	Nathan Chancellor <natechancellor@gmail.com>, Arnd Bergmann <arnd@arndb.de>, 
	Darren Hart <dvhart@infradead.org>, Andy Shevchenko <andy@infradead.org>, 
	"H. Peter Anvin" <hpa@zytor.com>, linux-efi <linux-efi@vger.kernel.org>, 
	platform-driver-x86@vger.kernel.org, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	"Kirill A. Shutemov" <kirill.shutemov@linux.intel.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=pqEFA3lI;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::132
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

On Fri, Feb 5, 2021 at 3:39 AM Borislav Petkov <bp@alien8.de> wrote:
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

Thanks, this fixes the failed assertion for me.

Tested-by: Nick Desaulniers <ndesaulniers@google.com>

(https://lore.kernel.org/lkml/20201230154104.522605-1-arnd@kernel.org/
is needed to finish a build of that configuration; going to chase that
next)

(consider applying Arvind's+Ard's suggested by tag)

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
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdkyk_AejhxhasBggxYtSJi%2B3T-tjCExe%2BnAM5iJJ5_1aQ%40mail.gmail.com.
