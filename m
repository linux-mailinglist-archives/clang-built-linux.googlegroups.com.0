Return-Path: <clang-built-linux+bncBDVIHK4E4ILBBG45UCAAMGQE4E5YX5A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x239.google.com (mail-lj1-x239.google.com [IPv6:2a00:1450:4864:20::239])
	by mail.lfdr.de (Postfix) with ESMTPS id A76A32FCEBA
	for <lists+clang-built-linux@lfdr.de>; Wed, 20 Jan 2021 12:06:04 +0100 (CET)
Received: by mail-lj1-x239.google.com with SMTP id s18sf6451634ljp.7
        for <lists+clang-built-linux@lfdr.de>; Wed, 20 Jan 2021 03:06:04 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1611140764; cv=pass;
        d=google.com; s=arc-20160816;
        b=D0YSbc5FXB3SNXN1243j0n+BmIUOYPeX7Qj9QWa9v08W26uiJrx2wx3S+4FoRc4QPC
         U4tDT5amoAgJR6xDlFvhp4fqFC0OBzz0d42btvicFFi7cvIzL2liEw5/NP8G1spJCzhC
         4n/1CbABqQiewkEp/zJYZO8INmAWO4ooTKwhbN6kZlZmh0+qKbe5W+0thSdmsMtCxyFZ
         0EH2S26KgJeH3tHy9+jsr6j8qvz/uThKwp8GvMpYPId/oBRwYD9hGsYmdlexMSRQkGcX
         6TeXwfGEIOSmrUgPSa1ucnNYwmXOcJD+oAFKsvEDj2ak8V7NmZkgS2V5/4wvoyQJsXHi
         MGEw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=Af4dYLRASOrUzl3N47hpgfwbfI5h9Cczqmm6NagKh9Y=;
        b=WmzLbzBcbd8GaXwyQ49CU4SQ7o/PeikLv5aqUnDPaMxBhkgnBTXbluwviV+BI8hRK2
         G1M6NgU9nS0dZa5ricJd3zdtSPKZmw2J26PYz/BL/EGvDTG0tnd9dAbDHNInPKU08k4E
         debnCQ+St33yJyLam7nHh/7Hp8e0pLoB5VjqH9nD65NSTjBYfAZf6RUyy+cTIDLeEXRe
         OUOGEFSAPXCI7yYrzzOp15LeCfOZEr9Nbh/FpTJ+/AFq48yg6A23ujKKDngSu4FLLk04
         jtXJ8Y/1sbAuXXvuT7+aFuI5m+XY0VKYNUHvi+K6mEcHxaZPCd9E9iYX8FoKgxvOFUvF
         8SWA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@shutemov-name.20150623.gappssmtp.com header.s=20150623 header.b=j0j2tuot;
       spf=neutral (google.com: 2a00:1450:4864:20::22b is neither permitted nor denied by best guess record for domain of kirill@shutemov.name) smtp.mailfrom=kirill@shutemov.name
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Af4dYLRASOrUzl3N47hpgfwbfI5h9Cczqmm6NagKh9Y=;
        b=jWUI43ZX+3Uo7tiG5Bbyi/TvvWS1C6Q+WYI5+O4kYT/X2Fec5kDxaVze0VbJUIzWRl
         fHCIJRcns3AN81/PKxAaXR3DKpBEZu8Q8/idPigFftHSSpKzWnS0taT+GtjoOLh3609u
         H7oTlRswcazQDjzO+ID4EBjKvla1tjNLoYDaVIqLS2/v6P2815WzSHeAxGaP+bt91uZ0
         wvUzEqqYuQxnYs2aeUrssge7K53VgcYijSsjd8rz5+qIRzfUWJ+kBLJPXGitQ+Hp+HAg
         6JYcsI9Gg5ebDaRptqeysLjTIacbzk5gkVANGRqLEIFUQdU4P+41khH0u8uWyPIQNpRR
         SSOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=Af4dYLRASOrUzl3N47hpgfwbfI5h9Cczqmm6NagKh9Y=;
        b=NKGp+/XT/ywO8m4Kw2Unl9dx5B/MxunMieSXvnrc1t+gg4qHIyLDZcYZAUtg7LFTQV
         VAJDAX01kpnok0ow88G2JlM9UGv6lR4mPiS1CMjcEH7HsQS+uEEFTtQWhLtPkZBKhEmc
         dAiUL2Km912eovf8hzSsH5o4mT+dCSWOsNGcfN0JGQ0todqwY7ZaC50HYjXxCOYbIT4V
         M+RrbxLElbMp4Pt5U4HkxAM7pVNXIlszRozn6VrhK3XRYTxxn5Uj+yXWFFDjMUx7J/np
         ZsnlKzw4fJZ2l8z4KUYCUh5tx7AgVQHMg2rQYTb3AuaJlxXqxKKteD7TOqAFuuCjOhpZ
         RAfA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533/5JdwjzkQW/nk6mZjT6a/VRfITE7qF4YHnIF4vWoQlLVQFwYP
	HrbfZkSvKpquxAtwxCM0Awo=
X-Google-Smtp-Source: ABdhPJw3hpkmHq2qPsQVv/hd6PbqLq6LpnpjkeTOmEeNzrWLRYQ7y/KLO7ehL0GrRPEWxhYXK5LW3g==
X-Received: by 2002:a2e:2c09:: with SMTP id s9mr4164644ljs.20.1611140764237;
        Wed, 20 Jan 2021 03:06:04 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:5816:: with SMTP id m22ls4024641ljb.4.gmail; Wed, 20 Jan
 2021 03:06:03 -0800 (PST)
X-Received: by 2002:a2e:9b8a:: with SMTP id z10mr4061553lji.126.1611140763231;
        Wed, 20 Jan 2021 03:06:03 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1611140763; cv=none;
        d=google.com; s=arc-20160816;
        b=tk+JbcpkCFFWhmkYzd+NyXtTG5O9XjQyuD6wrdeNmqNq3TOi7hSlbcIWegjthUGXb0
         JFkIOGGj1UAbDOkdPBS3s6VzxBOYwonsoT9SsX1Ckl1CnLrBr6hxncbEtWgwk32bmnnK
         3jbAbGB+N4rQJg0wAqqEEQGrsQCyZsk1IrQIzAsAnScfcsCVKgr14VBlxUZI05RBbvaS
         Tf5ptgoyOWbHoWcEBqDh587G2mAoEqoxzxkcWKXg1yetpNkJZtE57WJmoyaRfE/I4Sk1
         uUXC2zhcqdGA7xtJpkETVzCLUI75AwnrsaQbYvbl+pRu2cSxbfdxiGfQYXp/FkbSicyr
         wojg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=e1Mh46vTv3FVcofbpZz88mBZexF8yUI1mlf2fsLkouw=;
        b=UUS1iU/xliJlwI/PG80jEFDlcT72M+bqfuw5lLpIlKGuuKXcOrNbJmA7RBn6HbXX8C
         P9rTmGvRRa9oM34dPw/3n3j1Q2m3D7PJXHDT3nQlOWJyDLfqnq8m0JLxL7NnDbxXRqCi
         /n7N02a0Xymjc64/Qo3HiR08aPy3c+25qflxh2wxY8CU1dEvgoLPYLbCsbK6H1DfQ8jW
         YJ7NdTG9c4FUue5ek0x2eiqrmcXIXAnrub1RmJ1FHKvqY4HakoycfQ4ElTvdbXODrzGb
         U4+a7mbbEp2cSoP80MrGwZSDFE7ybDXWWALyA20DB8Lnxzy3OdK2cOcysSOodSYLtnOY
         7o4A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@shutemov-name.20150623.gappssmtp.com header.s=20150623 header.b=j0j2tuot;
       spf=neutral (google.com: 2a00:1450:4864:20::22b is neither permitted nor denied by best guess record for domain of kirill@shutemov.name) smtp.mailfrom=kirill@shutemov.name
Received: from mail-lj1-x22b.google.com (mail-lj1-x22b.google.com. [2a00:1450:4864:20::22b])
        by gmr-mx.google.com with ESMTPS id u24si97609lfo.1.2021.01.20.03.06.03
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 20 Jan 2021 03:06:03 -0800 (PST)
Received-SPF: neutral (google.com: 2a00:1450:4864:20::22b is neither permitted nor denied by best guess record for domain of kirill@shutemov.name) client-ip=2a00:1450:4864:20::22b;
Received: by mail-lj1-x22b.google.com with SMTP id b10so25558335ljp.6
        for <clang-built-linux@googlegroups.com>; Wed, 20 Jan 2021 03:06:03 -0800 (PST)
X-Received: by 2002:a2e:8645:: with SMTP id i5mr3310189ljj.7.1611140762858;
        Wed, 20 Jan 2021 03:06:02 -0800 (PST)
Received: from box.localdomain ([86.57.175.117])
        by smtp.gmail.com with ESMTPSA id q3sm178375ljp.108.2021.01.20.03.06.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 20 Jan 2021 03:06:01 -0800 (PST)
Received: by box.localdomain (Postfix, from userid 1000)
	id AA3C5101448; Wed, 20 Jan 2021 14:06:04 +0300 (+03)
Date: Wed, 20 Jan 2021 14:06:04 +0300
From: "Kirill A. Shutemov" <kirill@shutemov.name>
To: Arvind Sankar <nivedita@alum.mit.edu>
Cc: Arnd Bergmann <arnd@kernel.org>, Ard Biesheuvel <ardb@kernel.org>,
	Thomas Gleixner <tglx@linutronix.de>,
	Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>,
	x86@kernel.org, Nathan Chancellor <natechancellor@gmail.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Arnd Bergmann <arnd@arndb.de>, Darren Hart <dvhart@infradead.org>,
	Andy Shevchenko <andy@infradead.org>,
	"H. Peter Anvin" <hpa@zytor.com>, linux-efi@vger.kernel.org,
	platform-driver-x86@vger.kernel.org, linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: Re: [PATCH] x86: efi: avoid BUILD_BUG_ON() for non-constant p4d_index
Message-ID: <20210120110604.bms6yjoiluojj4x4@box>
References: <20210107223424.4135538-1-arnd@kernel.org>
 <YAHoB4ODvxSqNhsq@rani.riverdale.lan>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <YAHoB4ODvxSqNhsq@rani.riverdale.lan>
X-Original-Sender: kirill@shutemov.name
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@shutemov-name.20150623.gappssmtp.com header.s=20150623
 header.b=j0j2tuot;       spf=neutral (google.com: 2a00:1450:4864:20::22b is
 neither permitted nor denied by best guess record for domain of
 kirill@shutemov.name) smtp.mailfrom=kirill@shutemov.name
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

On Fri, Jan 15, 2021 at 02:07:51PM -0500, Arvind Sankar wrote:
> On Thu, Jan 07, 2021 at 11:34:15PM +0100, Arnd Bergmann wrote:
> > From: Arnd Bergmann <arnd@arndb.de>
> > 
> > When 5-level page tables are enabled, clang triggers a BUILD_BUG_ON():
> > 
> > x86_64-linux-ld: arch/x86/platform/efi/efi_64.o: in function `efi_sync_low_kernel_mappings':
> > efi_64.c:(.text+0x22c): undefined reference to `__compiletime_assert_354'
> > 
> > Use the same method as in commit c65e774fb3f6 ("x86/mm: Make PGDIR_SHIFT
> > and PTRS_PER_P4D variable") and change it to MAYBE_BUILD_BUG_ON(),
> > so it only triggers for constant input.
> > 
> > Link: https://github.com/ClangBuiltLinux/linux/issues/256
> > Signed-off-by: Arnd Bergmann <arnd@arndb.de>
> > ---
> >  arch/x86/platform/efi/efi_64.c | 4 ++--
> >  1 file changed, 2 insertions(+), 2 deletions(-)
> > 
> > diff --git a/arch/x86/platform/efi/efi_64.c b/arch/x86/platform/efi/efi_64.c
> > index e1e8d4e3a213..62bb1616b4a5 100644
> > --- a/arch/x86/platform/efi/efi_64.c
> > +++ b/arch/x86/platform/efi/efi_64.c
> > @@ -137,8 +137,8 @@ void efi_sync_low_kernel_mappings(void)
> >  	 * As with PGDs, we share all P4D entries apart from the one entry
> >  	 * that covers the EFI runtime mapping space.
> >  	 */
> > -	BUILD_BUG_ON(p4d_index(EFI_VA_END) != p4d_index(MODULES_END));
> > -	BUILD_BUG_ON((EFI_VA_START & P4D_MASK) != (EFI_VA_END & P4D_MASK));
> > +	MAYBE_BUILD_BUG_ON(p4d_index(EFI_VA_END) != p4d_index(MODULES_END));
> > +	MAYBE_BUILD_BUG_ON((EFI_VA_START & P4D_MASK) != (EFI_VA_END & P4D_MASK));
> >  
> >  	pgd_efi = efi_pgd + pgd_index(EFI_VA_END);
> >  	pgd_k = pgd_offset_k(EFI_VA_END);
> > -- 
> > 2.29.2
> > 
> 
> I think this needs more explanation as to why clang is triggering this.
> The issue mentions clang not inline p4d_index(), and I guess not
> performing inter-procedural analysis either?
> 
> For the second assertion there, everything is always constant AFAICT:
> EFI_VA_START, EFI_VA_END and P4D_MASK are all constants regardless of
> CONFIG_5LEVEL.

Back in the days BUILD_BUG_ON() false-triggered on GCC-4.8 as well. 

-- 
 Kirill A. Shutemov

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210120110604.bms6yjoiluojj4x4%40box.
