Return-Path: <clang-built-linux+bncBCP4ZTXNRIFBB364S6AAMGQEQTIK4HQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x140.google.com (mail-lf1-x140.google.com [IPv6:2a00:1450:4864:20::140])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E8B92FAB52
	for <lists+clang-built-linux@lfdr.de>; Mon, 18 Jan 2021 21:24:16 +0100 (CET)
Received: by mail-lf1-x140.google.com with SMTP id 140sf7101426lfm.23
        for <lists+clang-built-linux@lfdr.de>; Mon, 18 Jan 2021 12:24:16 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1611001455; cv=pass;
        d=google.com; s=arc-20160816;
        b=B79WbRQm1BeVgXepUmXZlpO7EtHE0zOyGlIyYbUXNCjl/M2437F9vbZ22XkXe9YV3p
         VqvikpNnPbQN+AlfzEI6ZGFWgRfWzJrhl1VnMbXDDRaFXRJUDNS1LQp6rhNynun+3Axv
         Tbd3NbUrAAEc2vBxGs7NS9ndFH34Sq75zwnOpEtaH8rl0Oefu/sfi0ca92VkdAHF42Ia
         GkOMT8wWLGPqdiU8dBRR1XncN6QAbpNIFkVWi9A/eQBrDDb1o+EPwRdUbWYnNhkf0roJ
         b99f5/kGg+wWeX5yQ7976r+tcgRYVanUJW1eu1BBoafwmBEkuNFUKXeIZttTHfmAh3DF
         DJSQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=OxF/87QGxykAxxc3TCa5P8DlKtGyY2Q975phS9GYT2k=;
        b=pw7DmvwoVjzIEvmDdVTd8nucx8jKciiREJ9WG0upXBXIGuml9B/W+nGb60dFWP5zG8
         6HPAJCoQVOhy5feRQRr+/dmVW9p7zyXEzZjA+IfNp1FrzYB3KPO9RmZFebvdt79c1Ke+
         qudtWcOLUPvggbt8YbhVyizZn09RNYJfnT0m/I9XKTU2CIGCrEt/lZFMXFAiT8iuMcKO
         o7EeQFBw2D+OhKGq2ip7eFQWXolnSsuIl8EgMdVgEbxuyuq3IRZe6RiybHcqYLRHMiHU
         BKo0zI3IbAA2PFxNGoaAUhPobnvPc0CEfOSuNhjGPq2J94GxKYJesc5w4GB7wYRgyf7d
         9JUA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@alien8.de header.s=dkim header.b=RtFIAxXo;
       spf=pass (google.com: domain of bp@alien8.de designates 5.9.137.197 as permitted sender) smtp.mailfrom=bp@alien8.de;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=alien8.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=OxF/87QGxykAxxc3TCa5P8DlKtGyY2Q975phS9GYT2k=;
        b=gn1kmdP7MXCPy4BrwNsYMeC1XpQ0q5H7oLk3wJwz3Ee0u8+/nFxiwii4d6yO7QZWgv
         mThofzpoIgsJCof8rZn7vxlIhCkXyz7/hZQDXxG/Qoei0/gmIAdY6a9/NEXaeN+oTJCr
         7uQexepxGnn9nJiDocERnMJVk+t8nhJwJ5N7QjYwSXNpcbPl//6KncGqq6NmFMcFSt2K
         RNMcIPpFKXkg8AzLhIfqbLOKqXqDKR3TYaC50pRhJZIUne2pucOyk88WX5mGoofzMQXk
         /VqtKm6EUzQPnKby+i2z4LpTZdzysvLp4k9g7v7Uek5c8uAhttOEryToRj61hASD1znr
         w3pg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=OxF/87QGxykAxxc3TCa5P8DlKtGyY2Q975phS9GYT2k=;
        b=U+5DZWxEgg2dYlUCJEGeyUr2QlE80ioLyY8Nankts9yuR00J2Kr5jKxlppEWyD6VKk
         at5bbiH7/ycgNjUcozhHHzwHuiDh/RKup9Y10yJ6/CmXKJuwyfBh72dSmrOmAxKpW+6P
         /olx9wFy7QMCtk6DiVRXZAwKPxB9uib/B5U9mqZAETb1BxlD76N9GSM4NpfA66IrP1N8
         qOljib4gpCWhNYqA4bBDQJxcHdJ8jG3fTkGyCNW6CA8i+5knIeGN/xQrV0jvDko9b8Iz
         LrA+eNnbweYxNnT0aEGAy46kJN9w/ly0bGFVj0cIbixeB0plXVuYHUQX+1G1IwlQp3W0
         NS+A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530Grn5mBRhnUgySJzCRjxf6RxD5KlC+jqAWni8wYlKynD8w4vVw
	qtju5I5/3Xmu8z7ApPq6rJQ=
X-Google-Smtp-Source: ABdhPJxI5d6pPf+IT1ns2ScYmbahBwcAaefP/0qY2Wbbu32UMYfBu2W181OzseKFN/E7OYxVMT5j6g==
X-Received: by 2002:a2e:b5a4:: with SMTP id f4mr499107ljn.407.1611001455802;
        Mon, 18 Jan 2021 12:24:15 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a19:6145:: with SMTP id m5ls58114lfk.2.gmail; Mon, 18 Jan
 2021 12:24:14 -0800 (PST)
X-Received: by 2002:a19:810:: with SMTP id 16mr346356lfi.233.1611001454852;
        Mon, 18 Jan 2021 12:24:14 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1611001454; cv=none;
        d=google.com; s=arc-20160816;
        b=vOXq4f+JU+qJ5HqTAwaKJtipf4uro+H/kftJ/QsJg4dNr7HsX2/sY4QpFeoutXwj4Q
         cyt0zig+jJ/PWhGND7oJ3KV0ixGZ0mhbuCJWleBavouHdON44zBcTfr9If3TEqrae7qP
         zDOKmuJltrN1aOMV/ADbKy3+Z4U2SXBznVq5QH+lxKiXuQ5CHZrFaQD0zmF/cfTlQ0hO
         oYNwqmx1l9760W+CoRH4G0Taxvr3x0/Hr2euhREUQNvNIuw8+wFfqgu/AXmBa5+iHiuK
         u1j9ev9YufqAjxFhaGS/ubl0W02d4QICcV8IH2GjQsoCx2H9J3w+HDMO4kc1OmDolGAD
         7dEg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=wg2C2nBbuOIoS8W3mFG5ELiW7MV2Ki338+OxxUJ5xdQ=;
        b=zQI2BP1k8mCMGmhl5HLcMJv1uew/wsheL8vWgfDDJjoSDjKbleABv+RN7Y8LhaLnlj
         KDkiMLoYiTmR5Jg2oXLkSvEgg7xJV9ZCXIh18Eva9+dN0rKxCh6PIWPYIgpiqeax9Lbe
         OxGnGigVG2J2OP6oGvjAMbg3386XRhgTZg9u2AasKr4QwO16PMl76teWEKvNYxLn048/
         Y7QmA2VSs5WEFkF9UkpK13Sz6UGgu4MqyYXHw3ZunLICxEx2wjNcPhr+zT7kc3YpbAu6
         cLfKs/5Wbh38yMJcqJrLSRLSOhWx/akTZao7Vgyyg8mW5AamyTq2ZxPGQfUPbd2Njtef
         fppA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@alien8.de header.s=dkim header.b=RtFIAxXo;
       spf=pass (google.com: domain of bp@alien8.de designates 5.9.137.197 as permitted sender) smtp.mailfrom=bp@alien8.de;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=alien8.de
Received: from mail.skyhub.de (mail.skyhub.de. [5.9.137.197])
        by gmr-mx.google.com with ESMTPS id q28si979007lfb.10.2021.01.18.12.24.14
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 18 Jan 2021 12:24:14 -0800 (PST)
Received-SPF: pass (google.com: domain of bp@alien8.de designates 5.9.137.197 as permitted sender) client-ip=5.9.137.197;
Received: from zn.tnic (p200300ec2f069f0062c4736095b963a8.dip0.t-ipconnect.de [IPv6:2003:ec:2f06:9f00:62c4:7360:95b9:63a8])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.skyhub.de (SuperMail on ZX Spectrum 128k) with ESMTPSA id E31721EC0283;
	Mon, 18 Jan 2021 21:24:13 +0100 (CET)
Date: Mon, 18 Jan 2021 21:24:09 +0100
From: Borislav Petkov <bp@alien8.de>
To: Ard Biesheuvel <ardb@kernel.org>
Cc: Arvind Sankar <nivedita@alum.mit.edu>, Arnd Bergmann <arnd@kernel.org>,
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
Message-ID: <20210118202409.GG30090@zn.tnic>
References: <20210107223424.4135538-1-arnd@kernel.org>
 <YAHoB4ODvxSqNhsq@rani.riverdale.lan>
 <YAH6r3lak/F2wndp@rani.riverdale.lan>
 <CAMj1kXGZFZciN1_KruCr=g6GANNpRrCLR48b3q13+QfK481C7Q@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAMj1kXGZFZciN1_KruCr=g6GANNpRrCLR48b3q13+QfK481C7Q@mail.gmail.com>
X-Original-Sender: bp@alien8.de
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@alien8.de header.s=dkim header.b=RtFIAxXo;       spf=pass
 (google.com: domain of bp@alien8.de designates 5.9.137.197 as permitted
 sender) smtp.mailfrom=bp@alien8.de;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=alien8.de
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

On Sat, Jan 16, 2021 at 05:34:27PM +0100, Ard Biesheuvel wrote:
> On Fri, 15 Jan 2021 at 21:27, Arvind Sankar <nivedita@alum.mit.edu> wrote:
> >
> > On Fri, Jan 15, 2021 at 02:07:51PM -0500, Arvind Sankar wrote:
> > > On Thu, Jan 07, 2021 at 11:34:15PM +0100, Arnd Bergmann wrote:
> > > > From: Arnd Bergmann <arnd@arndb.de>
> > > >
> > > > When 5-level page tables are enabled, clang triggers a BUILD_BUG_ON():
> > > >
> > > > x86_64-linux-ld: arch/x86/platform/efi/efi_64.o: in function `efi_sync_low_kernel_mappings':
> > > > efi_64.c:(.text+0x22c): undefined reference to `__compiletime_assert_354'
> > > >
> > > > Use the same method as in commit c65e774fb3f6 ("x86/mm: Make PGDIR_SHIFT
> > > > and PTRS_PER_P4D variable") and change it to MAYBE_BUILD_BUG_ON(),
> > > > so it only triggers for constant input.
> > > >
> > > > Link: https://github.com/ClangBuiltLinux/linux/issues/256
> > > > Signed-off-by: Arnd Bergmann <arnd@arndb.de>
> > > > ---
> > > >  arch/x86/platform/efi/efi_64.c | 4 ++--
> > > >  1 file changed, 2 insertions(+), 2 deletions(-)
> > > >
> > > > diff --git a/arch/x86/platform/efi/efi_64.c b/arch/x86/platform/efi/efi_64.c
> > > > index e1e8d4e3a213..62bb1616b4a5 100644
> > > > --- a/arch/x86/platform/efi/efi_64.c
> > > > +++ b/arch/x86/platform/efi/efi_64.c
> > > > @@ -137,8 +137,8 @@ void efi_sync_low_kernel_mappings(void)
> > > >      * As with PGDs, we share all P4D entries apart from the one entry
> > > >      * that covers the EFI runtime mapping space.
> > > >      */
> > > > -   BUILD_BUG_ON(p4d_index(EFI_VA_END) != p4d_index(MODULES_END));
> > > > -   BUILD_BUG_ON((EFI_VA_START & P4D_MASK) != (EFI_VA_END & P4D_MASK));
> > > > +   MAYBE_BUILD_BUG_ON(p4d_index(EFI_VA_END) != p4d_index(MODULES_END));
> > > > +   MAYBE_BUILD_BUG_ON((EFI_VA_START & P4D_MASK) != (EFI_VA_END & P4D_MASK));
> > > >
> > > >     pgd_efi = efi_pgd + pgd_index(EFI_VA_END);
> > > >     pgd_k = pgd_offset_k(EFI_VA_END);
> > > > --
> > > > 2.29.2
> > > >
> > >
> > > I think this needs more explanation as to why clang is triggering this.
> > > The issue mentions clang not inline p4d_index(), and I guess not
> > > performing inter-procedural analysis either?
> > >
> > > For the second assertion there, everything is always constant AFAICT:
> > > EFI_VA_START, EFI_VA_END and P4D_MASK are all constants regardless of
> > > CONFIG_5LEVEL.
> > >
> > > For the first assertion, it isn't technically constant, but if
> > > p4d_index() gets inlined, the compiler should be able to see that the
> > > two are always equal, even though ptrs_per_p4d is not constant:
> > >       EFI_VA_END >> 39 == MODULES_END >> 39
> > > so the masking with ptrs_per_p4d-1 doesn't matter for the comparison.
> > >
> > > As a matter of fact, it seems like the four assertions could be combined
> > > into:
> > >       BUILD_BUG_ON((EFI_VA_END & P4D_MASK) != (MODULES_END & P4D_MASK));
> > >       BUILD_BUG_ON((EFI_VA_START & P4D_MASK) != (EFI_VA_END & P4D_MASK));
> > > instead of separately asserting they're the same PGD entry and the same
> > > P4D entry.
> > >
> > > Thanks.
> >
> > I actually don't quite get the MODULES_END check -- Ard, do you know
> > what that's for?
> >
> 
> Maybe Boris remembers? He wrote the original code for the 'new' EFI
> page table layout.

That was added by Kirill for 5-level pgtables:

  e981316f5604 ("x86/efi: Add 5-level paging support")

 Documentation/x86/x86_64/mm.rst should explain the pagetable layout:

   ffffff8000000000 | -512    GB | ffffffeeffffffff |  444 GB | ... unused hole
   ffffffef00000000 |  -68    GB | fffffffeffffffff |   64 GB | EFI region mapping space
   ffffffff00000000 |   -4    GB | ffffffff7fffffff |    2 GB | ... unused hole
   ffffffff80000000 |   -2    GB | ffffffff9fffffff |  512 MB | kernel text mapping, mapped to physical address 0
   ffffffff80000000 |-2048    MB |                  |         |
   ffffffffa0000000 |-1536    MB | fffffffffeffffff | 1520 MB | module mapping space
   ffffffffff000000 |  -16    MB |                  |         |
      FIXADDR_START | ~-11    MB | ffffffffff5fffff | ~0.5 MB | kernel-internal fixmap range, variable size and offset

That thing which starts at -512 GB above is the last PGD on the
pagetable. In it, between -4G and -68G there are 64G which are the EFI
region mapping space for runtime services.

Frankly I'm not sure what this thing is testing because the EFI VA range
is hardcoded and I can't imagine it being somewhere else *except* in the
last PGD.

Lemme add Kirill for clarification.

-- 
Regards/Gruss,
    Boris.

https://people.kernel.org/tglx/notes-about-netiquette

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210118202409.GG30090%40zn.tnic.
