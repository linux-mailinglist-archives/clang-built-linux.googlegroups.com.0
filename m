Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBSPB5OAAMGQEB566VMY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa3c.google.com (mail-vk1-xa3c.google.com [IPv6:2607:f8b0:4864:20::a3c])
	by mail.lfdr.de (Postfix) with ESMTPS id E255E30E2CE
	for <lists+clang-built-linux@lfdr.de>; Wed,  3 Feb 2021 19:51:54 +0100 (CET)
Received: by mail-vk1-xa3c.google.com with SMTP id b28sf99473vko.23
        for <lists+clang-built-linux@lfdr.de>; Wed, 03 Feb 2021 10:51:54 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1612378314; cv=pass;
        d=google.com; s=arc-20160816;
        b=NtJi0G5mSqAm5q8AwRINKWfflRT4522j0y5WVrL9ksHd8YkKMBIP79PGjEZPzix27D
         hTO592BVRkkAQpebxoTwnxd2T33kwKT5qLm6BjIPDLw0b6eU4KGRNfJYgCGlvKL75lgJ
         FFMsLfwuSq91JqGgbrJ+pcFPqxhqlV4IvTDL93rTyGO3qHpPx6NbU78TOB496NMX++Sg
         Nj8ndXM8i2NsE71kWTFlIsIqCq0H7jGCsIk/SIBsGxgxhrhbl3vnlYbGYgFoCJe4zk7S
         SgU5JLUBhqBWZW8uljJeen2W/CwvjQxtbCjqP9PvVK2883T9Fm0mUmpQzY9NmgaoDtRT
         r4gA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=3dFtIgjKvLec1sHLFZB0I70rdfzA9FbwVuY4NYbsqAc=;
        b=DApxQAqj59j+LDkE6DWyY0MczatvjRgQax876zP36JC9ar8ENmQ1rqpcYG6RnQBmIM
         1PmmgB9EGA63uCP/RBGlsUXPWO1dvNhYoy9gHhlYqN/uRqPt3//R8R3ddL5OAG65+5t1
         S39ky+1Zc6QrIS39lkE9EFRQp4aUFkgkeBntAOS2H7y0ymXRZT1/Keh84NG5Km7qCVhi
         cxo5fWb6w6JdQFqHBWJdT27aVXV51BvtbWYzGgTaS2MiyWeEJp5eDnw5+XBVHrSjSndo
         qsjZJaPNnfVjoqz/dxutdHiR+G8ctGiW3/gFHzNa8nxHCiCrjoIA6QN4dQmSMQ0ONpV8
         NVNA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b="bY/Ya/8j";
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=3dFtIgjKvLec1sHLFZB0I70rdfzA9FbwVuY4NYbsqAc=;
        b=EZhGVKbxj3rdbLFps3raOliKewqhLvrvICg8x7dMDWc77r5KY+SsREWEwoMpo4t59g
         ovy9tzzRiykppF2ILi7MGJCNHmUBPE8F/rjAZKdATW8WXdwCkX61l/lJaOsUUBKAOoAI
         CL7+XIVefVa5Hhys7x33/1l/hYpqp/Tx+sY6cIhwnvXDxjDt98uc7IX97fuUtVXkdqHs
         Y2l3PIQ7gdFsS2vjjVTLFUrApfhaTJHODayq6NkdzPph8Y2UeeiOhfW2XGfaST9e41zj
         RfbQ0GprXNlrwZQvmvldCSW1Ws+LAPMUSalFKlWiog3pEuvetgZ37FG3TbOcj+jfnwLI
         5cwg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=3dFtIgjKvLec1sHLFZB0I70rdfzA9FbwVuY4NYbsqAc=;
        b=LP+kFK4afixLH1tOjKGPf1w2IIBugGvhD6H23F65e8waBWGcA31m4zl3tlllQqFIz2
         JHFOQg27OM9K1Wb6iot4/yiT30KiMuTzO5Q6OOM9Ulifx8A5y4le30q7AlLgZAxYDCjo
         uSzgoB5SspTvV8mGsxazy8ZkFRzhT/uYRn0sTE329YKoWeYV2Qinqaw2JwdDrcltE0BY
         3E3GH0DzZOoUNLC0HnzvL0vBCVLN4xPcJB/7BO3T+voZesN+Ms1a/EWR6WF2X0aOIwTF
         wTRiA0pkYE7r2P3igigLkDb2KJYlMoDhlw0wdgf1qTkn+xgahKdcGY/iq9pqLQcyF32c
         UxQw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533ft+Zqi6n2MSwP36WU4TPGygkBSMTvMxt4U1CiyrPhi0islNvm
	UJ2dHo+RJ4wEp8ppdf3RFfo=
X-Google-Smtp-Source: ABdhPJw0ywmvt0z7J5wJZuDfg8jRwWwoPUR5B/U9hXxZr5uk759IA8h7mlrkNSPPAuzvjCnEmFkqRg==
X-Received: by 2002:a67:a85:: with SMTP id 127mr2689346vsk.16.1612378313791;
        Wed, 03 Feb 2021 10:51:53 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6122:486:: with SMTP id o6ls172423vkn.3.gmail; Wed, 03
 Feb 2021 10:51:53 -0800 (PST)
X-Received: by 2002:a1f:a78c:: with SMTP id q134mr2862284vke.17.1612378313251;
        Wed, 03 Feb 2021 10:51:53 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1612378313; cv=none;
        d=google.com; s=arc-20160816;
        b=Akx3kBjS203Svz3RDVoWxwgPrnR2omRKHbQoMkSy8tAIjPgcZUjqu8TZip9JV/UgQi
         rSvPGTtOUr6En+Q7A4gaycxeZCkAsQAEVlJNBJH180crLu55Bq5g0IGLMZV5qxiXIWAW
         pdz+MsukwchMSBMMX99/2QMFGYOig/zvouTNdmJFY2b8aYU48dbsfh31sh9TH5IbDWK7
         I4geG9mbW9PaYB7KgH7Pp3A30rYk4O0aRt8xnIC2PKfA3nyUKiap3ETvykJ/rXx1uznD
         sId/hYJO4pR2/Ms+sP/5FMxsiJEkLi3IMan1e61koWXnr9pbmOyB54QZsgvA3KlpTysi
         2Fng==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=vb4zVkh2yIGSmLl2TvIxQwxLbEaUjpQ/NnvsSmfa04E=;
        b=oI+5q+Ai3z3wKoFqQkVGAl3N/ftcbiZ0xpZz12aPivyu2lsNep+TwRSk1Ki4VQU9YM
         1mYC4ShajIR1PZfLjz5fMmiw4u6JdT43qnIAQ2FMiwJq5fPsRf3z/YfYGb7K3EDwZ6jQ
         8F4Tb2a285IXyL+TStyzuBOHsdIb9J3f/5vI+fEsq4CUQ4kAMKaoVIIvXHlpx96vlvV4
         XKmKHC/7ryyxWh4ZJLZHeVFgPVeZ8f/3JpNcj7jXNb1WH3iQOOcd8prunY6dS7qigk4N
         7VoTBa/l52UIHu4qysvwjJY6gAb/IHhbZrdygvsuZTiO2D2mW01dg4ydGbRj4CZyh48C
         zFkQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b="bY/Ya/8j";
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id c4si170562vkh.1.2021.02.03.10.51.53
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 03 Feb 2021 10:51:53 -0800 (PST)
Received-SPF: pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 8608864DF2;
	Wed,  3 Feb 2021 18:51:50 +0000 (UTC)
Date: Wed, 3 Feb 2021 11:51:48 -0700
From: Nathan Chancellor <nathan@kernel.org>
To: Ard Biesheuvel <ardb@kernel.org>
Cc: Arvind Sankar <nivedita@alum.mit.edu>, Borislav Petkov <bp@alien8.de>,
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
Message-ID: <20210203185148.GA1711888@localhost>
References: <20210107223424.4135538-1-arnd@kernel.org>
 <YAHoB4ODvxSqNhsq@rani.riverdale.lan>
 <YAH6r3lak/F2wndp@rani.riverdale.lan>
 <CAMj1kXGZFZciN1_KruCr=g6GANNpRrCLR48b3q13+QfK481C7Q@mail.gmail.com>
 <20210118202409.GG30090@zn.tnic>
 <YAYAvBARSRSg8z8G@rani.riverdale.lan>
 <CAMj1kXHM98-iDYpAozaWEv-qxhZ0-CUMwSdG532x2d+55gXDhQ@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAMj1kXHM98-iDYpAozaWEv-qxhZ0-CUMwSdG532x2d+55gXDhQ@mail.gmail.com>
X-Original-Sender: nathan@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b="bY/Ya/8j";       spf=pass
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

On Wed, Jan 20, 2021 at 10:33:43AM +0100, Ard Biesheuvel wrote:
> On Mon, 18 Jan 2021 at 22:42, Arvind Sankar <nivedita@alum.mit.edu> wrote:
> >
> > On Mon, Jan 18, 2021 at 09:24:09PM +0100, Borislav Petkov wrote:
> > > > > > As a matter of fact, it seems like the four assertions could be combined
> > > > > > into:
> > > > > >       BUILD_BUG_ON((EFI_VA_END & P4D_MASK) != (MODULES_END & P4D_MASK));
> > > > > >       BUILD_BUG_ON((EFI_VA_START & P4D_MASK) != (EFI_VA_END & P4D_MASK));
> > > > > > instead of separately asserting they're the same PGD entry and the same
> > > > > > P4D entry.
> > > > > >
> > > > > > Thanks.
> > > > >
> > > > > I actually don't quite get the MODULES_END check -- Ard, do you know
> > > > > what that's for?
> > > > >
> > > >
> > > > Maybe Boris remembers? He wrote the original code for the 'new' EFI
> > > > page table layout.
> > >
> > > That was added by Kirill for 5-level pgtables:
> > >
> > >   e981316f5604 ("x86/efi: Add 5-level paging support")
> >
> > That just duplicates the existing pgd_index() check for the p4d_index()
> > as well. It looks like the original commit adding
> > efi_sync_low_kernel_mappings() used to copy upto the PGD entry including
> > MODULES_END:
> >   d2f7cbe7b26a7 ("x86/efi: Runtime services virtual mapping")
> > and then Matt changed that when creating efi_mm:
> >   67a9108ed4313 ("x86/efi: Build our own page table structures")
> > to use EFI_VA_END instead but have a check that EFI_VA_END is in the
> > same entry as MODULES_END.
> >
> > AFAICT, MODULES_END is only relevant as being something that happens to
> > be in the top 512GiB, and -1ul would be clearer.
> >
> > >
> > >  Documentation/x86/x86_64/mm.rst should explain the pagetable layout:
> > >
> > >    ffffff8000000000 | -512    GB | ffffffeeffffffff |  444 GB | ... unused hole
> > >    ffffffef00000000 |  -68    GB | fffffffeffffffff |   64 GB | EFI region mapping space
> > >    ffffffff00000000 |   -4    GB | ffffffff7fffffff |    2 GB | ... unused hole
> > >    ffffffff80000000 |   -2    GB | ffffffff9fffffff |  512 MB | kernel text mapping, mapped to physical address 0
> > >    ffffffff80000000 |-2048    MB |                  |         |
> > >    ffffffffa0000000 |-1536    MB | fffffffffeffffff | 1520 MB | module mapping space
> > >    ffffffffff000000 |  -16    MB |                  |         |
> > >       FIXADDR_START | ~-11    MB | ffffffffff5fffff | ~0.5 MB | kernel-internal fixmap range, variable size and offset
> > >
> > > That thing which starts at -512 GB above is the last PGD on the
> > > pagetable. In it, between -4G and -68G there are 64G which are the EFI
> > > region mapping space for runtime services.
> > >
> > > Frankly I'm not sure what this thing is testing because the EFI VA range
> > > is hardcoded and I can't imagine it being somewhere else *except* in the
> > > last PGD.
> >
> > It's just so that someone doesn't just change the #define's for
> > EFI_VA_END/START and think that it will work, I guess.
> >
> > Another reasonable option, for example, would be to reserve an entire
> > PGD entry, allowing everything but the PGD level to be shared, and
> > adding the EFI PGD to the pgd_list and getting rid of
> > efi_sync_low_kernel_mappings() altogether. There aren't that many PGD
> > entries still unused though, so this is probably not worth it.
> >
> 
> The churn doesn't seem to be worth it, tbh.
> 
> So could we get rid of the complexity here, and only build_bug() on
> the start address of the EFI region being outside the topmost p4d?
> That should make the PGD test redundant as well.

Was there ever a resolution to this conversation or a patch sent? I am
still seeing the build failure that Arnd initially sent the patch for.
x86_64 all{mod,yes}config with clang are going to ship broken in 5.11.

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210203185148.GA1711888%40localhost.
