Return-Path: <clang-built-linux+bncBCIO53XE7YHBBQEBTCAAMGQEI2MLGDQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x339.google.com (mail-ot1-x339.google.com [IPv6:2607:f8b0:4864:20::339])
	by mail.lfdr.de (Postfix) with ESMTPS id EC7262FACE0
	for <lists+clang-built-linux@lfdr.de>; Mon, 18 Jan 2021 22:42:25 +0100 (CET)
Received: by mail-ot1-x339.google.com with SMTP id p24sf2020078otl.10
        for <lists+clang-built-linux@lfdr.de>; Mon, 18 Jan 2021 13:42:25 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1611006144; cv=pass;
        d=google.com; s=arc-20160816;
        b=E3nCM7JCaNhTkbRPqaJIkvKd7IGNLJPziU6zIsh+Xb43OghHu7ZGhqfsByrHAhvjnl
         MB2sIXOsbytsnJNroGeK7HxvK0ASjVRjZxi9W4/j17wSd/Vblr9V+E85cDw6HgH1K2jG
         3d3L4XDdwcAwZ4pyAifiw1aF4sXpPvXMafSkswbmW31trVkt6SWsGa+HzAzUQmUcgeeG
         /cZZeIcyJlcsG7ft/mzWT4YblLG8jaPdq38CREEqTC+eWvMloegcNYMEMNiSkStQ4lA+
         9stceO0UbjAtfT2PUyBd6jTtKeRi3DeOhUaUQUNoh8KUJW6JLhuYtO59eFOHz+fc1fS4
         xsng==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:date:from:sender
         :dkim-signature;
        bh=VJVBMz56fzUQKTwmXkaUNrYMacouucrXkURGiyKeR0Y=;
        b=y049bxaf0tuW/iIGq2Zm/6H9mLbloyKpR4uumE0Gm186032DYYCJHunEzDnPeLqegh
         7lCYe48f2G9Kj7HbRD8A9TN2o8kvy1kHr9h3H9o6JgGNzXPVdwv2iZQ0QN/g7zdOp3lW
         a2q2i751ZW/re9hNKtXIepXDTpXo8peIDAYW60MZLBp5ItZi8MpG48Dnh+JiisMQOzua
         ZhMlXxj/Fq0/wcDOIBRuQCutMpny/cS/yQXq0YQd1ArCybk0ytffB0AKCFxRY7SJSumn
         t5uITQ9CxGTf/7taXqy2NJioQMSfuuwwRmym5vq2O3C6TfcaveNnNa75ObnUmudQzKJo
         f9kw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="hYi/lsRj";
       spf=pass (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::f36 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=sender:from:date:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=VJVBMz56fzUQKTwmXkaUNrYMacouucrXkURGiyKeR0Y=;
        b=kEzDssfDb5Wl7X/RoOufrN6+dI9vR6HikXviU2OfU1XFSIRtf5zlX9M8uOd2OIB1Iz
         lginKSYMIU8XcZFf/ehlD9nXDHcKfOL9jdbsBLkO3U4/2DgzpChPY/yEn+xiC/ST5iTz
         OwV+kwJrOjuio0iIK+AOgyy9Jjbvk/mQ1inSnmX3hN2+/UlX5H4JaHIp2GxlBYXtqxwO
         VIlPspESHbEHIxfm24wu8eOuMEavFVVL8kdTtEY+MuUBUu5uiRzKOUh3CKixR36zDCrD
         Ow7ZW26ZrbwuAeVQdpSb8iujz4YTt8OhuYwtIJutk1OzAnERqPA8oHi3E+Sv6ZtGT2cB
         DxyA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:from:date:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=VJVBMz56fzUQKTwmXkaUNrYMacouucrXkURGiyKeR0Y=;
        b=pawEZfrGuWWPK66lWEp3A15YX15uQOKWItfBQw6du1oA/WFvtMeLQ8sxZctoykw0tD
         8JohNqCS6f/06V7YLVCkiksGiAfmXDqfcfsIBrlLLxuY5PA6d9A4vlQVf76GynSlQ3yb
         /GGhl9rvmhC1w/C+yDjt5PEC0lDOXtSGU5/BgI0sZ+SKvXxVbNRTv9hd+krCgSSxnInA
         0v2fOi6B4IC2Rq9FzED+JCTdJoosAtz2wNDQot9p6uFSEWqVrHx+9zG3dJhQ5Bxhk+wP
         hM0G5iyCnI0CKtutV0DV9orKa4/2EoG0VeqxVfdjIskIoXNVDPNSG65p1jfiXDP0xD3R
         Jzdw==
X-Gm-Message-State: AOAM531ZBCX+ipULi0GWU5EHnx/sOoavc+7gzW0cf0V4rZ/mCLEDtLkv
	/i9NUn09uW5BjFXHYwILNBU=
X-Google-Smtp-Source: ABdhPJw5nwoOmdT4FoARuN+83d2HVUL7HhzhmO/2HT4CqpNvectZAbNZwnEP4DApcuBzSdlVN0U2CA==
X-Received: by 2002:aca:f283:: with SMTP id q125mr782632oih.59.1611006144803;
        Mon, 18 Jan 2021 13:42:24 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:3d36:: with SMTP id a51ls5003708otc.3.gmail; Mon, 18 Jan
 2021 13:42:24 -0800 (PST)
X-Received: by 2002:a9d:6a1:: with SMTP id 30mr1146607otx.242.1611006144333;
        Mon, 18 Jan 2021 13:42:24 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1611006144; cv=none;
        d=google.com; s=arc-20160816;
        b=AyzTh0gpqXfj2j6vB1TheiVgRSJl58C6wLGGDdfkYpBCHhvTUxlKbDJuWHx4GHHNx9
         SzLxl+LqXUM0IdiZd1xB2QdrPYkMzyqRmdMFXm37biSOguLU4cLlVZxBnHtLyuZSL8v4
         WLcQakup2RGX/G8NjnN9h6RnmtMS/lurLWtJ4Ru/xHk51dfVQYD4khe/LLv7z+2d/kSI
         Qm7LpLHrEwM07t9OU/BtJLYS6VcAxryf00rowgXUJej6AgFCq/y+r+GMD/DWIpT7aq/W
         xo0HiVk6rVtNA1OAkRB/+VdSSC3qJo/i4udTNGs5eeNPa0w+L6FNlQ8u4fzp+NhPP4X1
         PyWw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:date:from:sender:dkim-signature;
        bh=7WHZONqXFgXEk6ISoZzpiq15kU0W8eyDeH2IAM8jdzk=;
        b=ilPHi1aMkgRNPD4BeA67IG1jmtqTTQC9UZWSGK3Q2fAmyPgN2irm1RR4ZTAMLv8eT/
         Bt82zg39Ju4nlYmFMJjFN5V5OhcohEA/m2aE3cpPA4HSG+rLNNURSoaAISowApRvExuI
         9IV944P6DdTZMK3KI7kzmgn+Dtf/5Ev0lg5nBmXbzbD64KWurmDecTXqeufIWZe5Zjh5
         +8Mopg9lG136iiWhDXQvMAvQQYzWDLUCHmPJcv3hgjGP+byNhiPP6WUN9akq/MIeqnVj
         GT1+tHebgbDuCayZfpXPwG0tHjDBujilRXKsNWi+e2ojmlYm9arebz6Mi4Q3IpeGv6sq
         1hdg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="hYi/lsRj";
       spf=pass (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::f36 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
Received: from mail-qv1-xf36.google.com (mail-qv1-xf36.google.com. [2607:f8b0:4864:20::f36])
        by gmr-mx.google.com with ESMTPS id x20si2130670oot.1.2021.01.18.13.42.24
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 18 Jan 2021 13:42:24 -0800 (PST)
Received-SPF: pass (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::f36 as permitted sender) client-ip=2607:f8b0:4864:20::f36;
Received: by mail-qv1-xf36.google.com with SMTP id a13so8229151qvv.0
        for <clang-built-linux@googlegroups.com>; Mon, 18 Jan 2021 13:42:24 -0800 (PST)
X-Received: by 2002:ad4:59d2:: with SMTP id el18mr1664166qvb.35.1611006143640;
        Mon, 18 Jan 2021 13:42:23 -0800 (PST)
Received: from rani.riverdale.lan ([2001:470:1f07:5f3::b55f])
        by smtp.gmail.com with ESMTPSA id h75sm11354276qke.130.2021.01.18.13.42.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 18 Jan 2021 13:42:22 -0800 (PST)
Sender: Arvind Sankar <niveditas98@gmail.com>
From: Arvind Sankar <nivedita@alum.mit.edu>
Date: Mon, 18 Jan 2021 16:42:20 -0500
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
Message-ID: <YAYAvBARSRSg8z8G@rani.riverdale.lan>
References: <20210107223424.4135538-1-arnd@kernel.org>
 <YAHoB4ODvxSqNhsq@rani.riverdale.lan>
 <YAH6r3lak/F2wndp@rani.riverdale.lan>
 <CAMj1kXGZFZciN1_KruCr=g6GANNpRrCLR48b3q13+QfK481C7Q@mail.gmail.com>
 <20210118202409.GG30090@zn.tnic>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20210118202409.GG30090@zn.tnic>
X-Original-Sender: nivedita@alum.mit.edu
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b="hYi/lsRj";       spf=pass
 (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::f36
 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
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

On Mon, Jan 18, 2021 at 09:24:09PM +0100, Borislav Petkov wrote:
> > > > As a matter of fact, it seems like the four assertions could be combined
> > > > into:
> > > >       BUILD_BUG_ON((EFI_VA_END & P4D_MASK) != (MODULES_END & P4D_MASK));
> > > >       BUILD_BUG_ON((EFI_VA_START & P4D_MASK) != (EFI_VA_END & P4D_MASK));
> > > > instead of separately asserting they're the same PGD entry and the same
> > > > P4D entry.
> > > >
> > > > Thanks.
> > >
> > > I actually don't quite get the MODULES_END check -- Ard, do you know
> > > what that's for?
> > >
> > 
> > Maybe Boris remembers? He wrote the original code for the 'new' EFI
> > page table layout.
> 
> That was added by Kirill for 5-level pgtables:
> 
>   e981316f5604 ("x86/efi: Add 5-level paging support")

That just duplicates the existing pgd_index() check for the p4d_index()
as well. It looks like the original commit adding
efi_sync_low_kernel_mappings() used to copy upto the PGD entry including
MODULES_END:
  d2f7cbe7b26a7 ("x86/efi: Runtime services virtual mapping")
and then Matt changed that when creating efi_mm:
  67a9108ed4313 ("x86/efi: Build our own page table structures")
to use EFI_VA_END instead but have a check that EFI_VA_END is in the
same entry as MODULES_END.

AFAICT, MODULES_END is only relevant as being something that happens to
be in the top 512GiB, and -1ul would be clearer.

> 
>  Documentation/x86/x86_64/mm.rst should explain the pagetable layout:
> 
>    ffffff8000000000 | -512    GB | ffffffeeffffffff |  444 GB | ... unused hole
>    ffffffef00000000 |  -68    GB | fffffffeffffffff |   64 GB | EFI region mapping space
>    ffffffff00000000 |   -4    GB | ffffffff7fffffff |    2 GB | ... unused hole
>    ffffffff80000000 |   -2    GB | ffffffff9fffffff |  512 MB | kernel text mapping, mapped to physical address 0
>    ffffffff80000000 |-2048    MB |                  |         |
>    ffffffffa0000000 |-1536    MB | fffffffffeffffff | 1520 MB | module mapping space
>    ffffffffff000000 |  -16    MB |                  |         |
>       FIXADDR_START | ~-11    MB | ffffffffff5fffff | ~0.5 MB | kernel-internal fixmap range, variable size and offset
> 
> That thing which starts at -512 GB above is the last PGD on the
> pagetable. In it, between -4G and -68G there are 64G which are the EFI
> region mapping space for runtime services.
> 
> Frankly I'm not sure what this thing is testing because the EFI VA range
> is hardcoded and I can't imagine it being somewhere else *except* in the
> last PGD.

It's just so that someone doesn't just change the #define's for
EFI_VA_END/START and think that it will work, I guess.

Another reasonable option, for example, would be to reserve an entire
PGD entry, allowing everything but the PGD level to be shared, and
adding the EFI PGD to the pgd_list and getting rid of
efi_sync_low_kernel_mappings() altogether. There aren't that many PGD
entries still unused though, so this is probably not worth it.

> 
> Lemme add Kirill for clarification.
> 
> -- 
> Regards/Gruss,
>     Boris.
> 
> https://people.kernel.org/tglx/notes-about-netiquette

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/YAYAvBARSRSg8z8G%40rani.riverdale.lan.
