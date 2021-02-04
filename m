Return-Path: <clang-built-linux+bncBCU4TIPXUUFRBCNH56AAMGQEFIQHOHI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x537.google.com (mail-pg1-x537.google.com [IPv6:2607:f8b0:4864:20::537])
	by mail.lfdr.de (Postfix) with ESMTPS id 31A7230F156
	for <lists+clang-built-linux@lfdr.de>; Thu,  4 Feb 2021 11:59:23 +0100 (CET)
Received: by mail-pg1-x537.google.com with SMTP id z6sf1947917pgg.17
        for <lists+clang-built-linux@lfdr.de>; Thu, 04 Feb 2021 02:59:23 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1612436362; cv=pass;
        d=google.com; s=arc-20160816;
        b=ndRFS0BLvaomFWOOHOF7HERXS4Pc6YqbQHtExVmjVPk3TXJMI883e/+JWTDd/mTbZp
         s658nH6wIieT5dT8oEjDvGrPJ/GBQM/O0gOwZ9lkuPdMob9aAvFrdm7DCjUc6dXekLJu
         JtzqD9Cw0UbHdjP6VwdEdyfYK6v/ABXnN5NUsle9O/nNZegeRt85Owb8VEXOyjljeQwO
         /vUSE0kXYCGUNvzeogc6GqQCSBuUBWQaIsvHSv9yXHUcp9kKvHrPrX+GIj9m/qMObZKa
         j3sxZ8LjcnUi/W+NOZR2u4loAFdYNTcCn9UbKBkxIeNXEguoYkNcQgUb6kQ8c//cFkYI
         vZXQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=3cb3DbPb3m7NLUoYvfc+2NzANfnhUXDJwSexKgzamAM=;
        b=U7mfLi5JaM1Gf/aC81E3d11b05qkwW89xayuxSgQ+V1duil2FEsNHgN3RwuF67stZf
         s4M9V9+QIzBz0VqfrJwE4ml3jzYDYYkls9km6d+ACy0vNFnvrLrl4ozNY9rWO6IL4AYJ
         FX4PYGdXrT5nq71v8IJGQLhBdX6DP0TObaGb144qfr4mZg+6xAmx237LxqsXjlsd126w
         QLGhWb48FFqHwgIOwVLlO/zo/cIUiELgimh9jdSj+TBDFTTpPAOjilcpz5udqwTC/PNo
         E7DpurzEhNzHWOAoav3logyCLvYtBUWHGKPUcypdB/2Qjvf3VctwArQ3p7wNzve+QXED
         f4dg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=JAA4iEQs;
       spf=pass (google.com: domain of ardb@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=ardb@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=3cb3DbPb3m7NLUoYvfc+2NzANfnhUXDJwSexKgzamAM=;
        b=QnP8dFBCKyKV3d0djq4D5V5WqI0uqh9zz1Rb7eRUo4qDQiadAy5kL1kQOl62f1jX6T
         U8u1PrQoXhyBPcBSfGgLch3ZAtlMpgDCR0RZhryhJo4MV4y1j4VP8f8+vmkV67x8bWeF
         8Pb1wSstD+TXvPFWmACyd6R/Ham+qQ823rDoORNAgE4pXa+NbGIorLnbduaZYzIseL+s
         iVP0ZrRL+AfOHZ4uPanqMclFbRb4f5coumd85mo8DK38hp066QF1ohWQwPPMpYTDucGU
         0UfUss2QmjrMpiuMnMKovgHu6WQUiFoasBj70TeXjZ/wM7y+OQierPLQR/2ZvhzcRswF
         AvNg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=3cb3DbPb3m7NLUoYvfc+2NzANfnhUXDJwSexKgzamAM=;
        b=Hg6Wr1keD4Ix40xUVNYTBbi8B9AFqLmkBz588cvaSxwcmcBZb01q2IXOnc1bZRaXGw
         GMJbGbHAbiIgGYX9Q/YxrQiixetCXRX3q+ocfRAGGA9+zUK9L3B2RWxET7A9Rjp/7IOt
         kdXhNWqquzLQNQ5fRgCmPu0x3hLHphg8KKjmPIKN5yoMLV6mNaHvzUswy2684+ByQNFM
         K/IAq0aoXHTZOeSZxeSU2YoedwDIjXtA+2DJxkyCQ8FnSZNcR9qXXJesBeqTUHqW6zGI
         usKqQqVpHUELjIrBNp2QEVpqoRqxY1YecBuG+EgzuM/13V9o2sRDi9FM6gApiGMaZdc7
         urWA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532x0M4n66UwGh4WJ/9IajQOUZZ7Mmg/Plx49iMD8Sb6KBUN9QkW
	ADkjuSHKt+qInFH+IQFF3U8=
X-Google-Smtp-Source: ABdhPJxQ0xHHvaxXWZ0Nd9h5iOuXfXsdyYvSjOjNSPrhP4EAND8c5KxpUMpPxxnzCoMRFnz8irr8fA==
X-Received: by 2002:a65:6715:: with SMTP id u21mr5235697pgf.312.1612436361933;
        Thu, 04 Feb 2021 02:59:21 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:f683:: with SMTP id l3ls2575599plg.4.gmail; Thu, 04
 Feb 2021 02:59:21 -0800 (PST)
X-Received: by 2002:a17:90a:5513:: with SMTP id b19mr7956442pji.99.1612436361186;
        Thu, 04 Feb 2021 02:59:21 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1612436361; cv=none;
        d=google.com; s=arc-20160816;
        b=pfFRwEc+fwtu7QTfV5/4NWfZUFC7b7l/76mMLGIzMR7iDJsYqkctcAR2XU7v29nhOh
         sfIFIfZwojgysA/zpWIydNFrU6aQe9Z65VRsgahtNkZedmVnP8m9ThCSqp9x7iAm45L7
         kJQp0NvZmwLOJGVHgSu/H6Me0JK6AmRRA8tG+H9miImsh5slyIZQtbQbHBhAKxxmVIBM
         wELcPBVFqJCJkkPqX0fbFbMNoow61LViVS68ITarND7RvS3fYcbj+S9Lli4C30PrQ1Go
         7EckMjtySUUHnu851XsNZ4xDZn2UuX10XndQmH0Dmlq68jBefhuhTTAxS6woa3MHo1e+
         +n9w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=UXUD6EWR/qgE8rG662QIKhDzNr1MtWDENMPpkds4F9k=;
        b=O+GLyLGr83g3Opaxnn+t4FoYaSEC6Lo+pGS0x8zTLZTSnT0isPFPDNR0FFYkS0iPI/
         33BBPIwCMDLSIe6iOlrXc2U4VpgnUm/TWyVG18P/iYYfgCjSIePL28hsxjnTXfUE4YpM
         8H7yHc0c8fGSVnv2ehmdhra/QxfLv3TZYqhnX9OnTRf0Aeo3yR1P8/ylzmd/YYDOCUIn
         fS+VbWu1b9UVURakQk90l0pd6M4FTqZWNFPXMeRuDiuvOHovgC/+4Kx/4Y/kE7u1udU2
         1yM/K6FDHbVxBHUB32kLQcxgDPgQTiIhVH6y9I8ycQeYl7+C4WBN5Nx83H+wXIUlwuFY
         yu2w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=JAA4iEQs;
       spf=pass (google.com: domain of ardb@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=ardb@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id i10si267073pfa.6.2021.02.04.02.59.21
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 04 Feb 2021 02:59:21 -0800 (PST)
Received-SPF: pass (google.com: domain of ardb@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 94D8C64F6C
	for <clang-built-linux@googlegroups.com>; Thu,  4 Feb 2021 10:59:20 +0000 (UTC)
Received: by mail-oi1-f170.google.com with SMTP id k25so3216839oik.13
        for <clang-built-linux@googlegroups.com>; Thu, 04 Feb 2021 02:59:20 -0800 (PST)
X-Received: by 2002:aca:b6c1:: with SMTP id g184mr4797190oif.47.1612436359805;
 Thu, 04 Feb 2021 02:59:19 -0800 (PST)
MIME-Version: 1.0
References: <20210107223424.4135538-1-arnd@kernel.org> <YAHoB4ODvxSqNhsq@rani.riverdale.lan>
 <YAH6r3lak/F2wndp@rani.riverdale.lan> <CAMj1kXGZFZciN1_KruCr=g6GANNpRrCLR48b3q13+QfK481C7Q@mail.gmail.com>
 <20210118202409.GG30090@zn.tnic> <YAYAvBARSRSg8z8G@rani.riverdale.lan>
 <CAMj1kXHM98-iDYpAozaWEv-qxhZ0-CUMwSdG532x2d+55gXDhQ@mail.gmail.com>
 <20210203185148.GA1711888@localhost> <CAMj1kXFPOvkcw573wzKzMQOgT-nddFcAZo9M4Lk+idn_1UBbnA@mail.gmail.com>
 <20210204105155.GA32255@zn.tnic>
In-Reply-To: <20210204105155.GA32255@zn.tnic>
From: Ard Biesheuvel <ardb@kernel.org>
Date: Thu, 4 Feb 2021 11:59:08 +0100
X-Gmail-Original-Message-ID: <CAMj1kXGBUKA-LFsdBh19yqAOF8x=tYPff6Bw2Zxg31Oe9mGOQg@mail.gmail.com>
Message-ID: <CAMj1kXGBUKA-LFsdBh19yqAOF8x=tYPff6Bw2Zxg31Oe9mGOQg@mail.gmail.com>
Subject: Re: [PATCH] x86: efi: avoid BUILD_BUG_ON() for non-constant p4d_index
To: Borislav Petkov <bp@alien8.de>
Cc: Nathan Chancellor <nathan@kernel.org>, Arvind Sankar <nivedita@alum.mit.edu>, 
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
 header.i=@kernel.org header.s=k20201202 header.b=JAA4iEQs;       spf=pass
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

On Thu, 4 Feb 2021 at 11:52, Borislav Petkov <bp@alien8.de> wrote:
>
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

+1 for just removing them

> ---
> diff --git a/arch/x86/include/asm/pgtable_64_types.h b/arch/x86/include/asm/pgtable_64_types.h
> index 91ac10654570..b6be19c09841 100644
> --- a/arch/x86/include/asm/pgtable_64_types.h
> +++ b/arch/x86/include/asm/pgtable_64_types.h
> @@ -156,8 +156,8 @@ extern unsigned int ptrs_per_p4d;
>  #define CPU_ENTRY_AREA_PGD     _AC(-4, UL)
>  #define CPU_ENTRY_AREA_BASE    (CPU_ENTRY_AREA_PGD << P4D_SHIFT)
>
> -#define EFI_VA_START           ( -4 * (_AC(1, UL) << 30))
> -#define EFI_VA_END             (-68 * (_AC(1, UL) << 30))
> +#define EFI_VA_START           ( -4UL * (_AC(1, UL) << 30))
> +#define EFI_VA_END             (-68UL * (_AC(1, UL) << 30))
>
>  #define EARLY_DYNAMIC_PAGE_TABLES      64
>
> diff --git a/arch/x86/platform/efi/efi_64.c b/arch/x86/platform/efi/efi_64.c
> index e1e8d4e3a213..56fdc0bbb554 100644
> --- a/arch/x86/platform/efi/efi_64.c
> +++ b/arch/x86/platform/efi/efi_64.c
> @@ -123,9 +123,7 @@ void efi_sync_low_kernel_mappings(void)
>          * only span a single PGD entry and that the entry also maps
>          * other important kernel regions.
>          */
> -       MAYBE_BUILD_BUG_ON(pgd_index(EFI_VA_END) != pgd_index(MODULES_END));
> -       MAYBE_BUILD_BUG_ON((EFI_VA_START & PGDIR_MASK) !=
> -                       (EFI_VA_END & PGDIR_MASK));
> +       MAYBE_BUILD_BUG_ON((EFI_VA_START & PGDIR_MASK) != PGDIR_MASK);
>
>         pgd_efi = efi_pgd + pgd_index(PAGE_OFFSET);
>         pgd_k = pgd_offset_k(PAGE_OFFSET);
> @@ -137,8 +135,7 @@ void efi_sync_low_kernel_mappings(void)
>          * As with PGDs, we share all P4D entries apart from the one entry
>          * that covers the EFI runtime mapping space.
>          */
> -       BUILD_BUG_ON(p4d_index(EFI_VA_END) != p4d_index(MODULES_END));
> -       BUILD_BUG_ON((EFI_VA_START & P4D_MASK) != (EFI_VA_END & P4D_MASK));
> +       BUILD_BUG_ON((EFI_VA_START & P4D_MASK) != P4D_MASK);
>
>         pgd_efi = efi_pgd + pgd_index(EFI_VA_END);
>         pgd_k = pgd_offset_k(EFI_VA_END);
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAMj1kXGBUKA-LFsdBh19yqAOF8x%3DtYPff6Bw2Zxg31Oe9mGOQg%40mail.gmail.com.
