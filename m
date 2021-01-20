Return-Path: <clang-built-linux+bncBD63HSEZTUIBBA7ST6AAMGQEED2AW6Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63d.google.com (mail-pl1-x63d.google.com [IPv6:2607:f8b0:4864:20::63d])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C9A92FCD7C
	for <lists+clang-built-linux@lfdr.de>; Wed, 20 Jan 2021 10:33:57 +0100 (CET)
Received: by mail-pl1-x63d.google.com with SMTP id c5sf16120490plr.4
        for <lists+clang-built-linux@lfdr.de>; Wed, 20 Jan 2021 01:33:57 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1611135236; cv=pass;
        d=google.com; s=arc-20160816;
        b=uni0/xnCp8mlvHpqU8xQSCT6Bzp0/xZauqigNE9v2VmVLxC6yyFgawZ/jh/+OMIq/g
         VhIUEOUXFeJjQmHPEX0gpgGDc8HPtg72Bog9e/M6j7Y9ew9wPumxeRAZghZ7YAU5Dzqe
         3AqMopOK1/gHUGTzxV0FGRN11MJlxVBuho01ZE390iGDNAyj1sFsQbR9R1nDvBEzNQxb
         AOo9ahs3MdTtfoT7gqSiX7MXSXVBnQuAmqDZZp7XsaxVuXaUjo2D8+wpB5k1Q+Jbhr4o
         Z77kl+1nHqakAGBrBvkEIe1UI+VxRa20opdpTVoFvVxRaJ25SN5/C2GdwjYSWdqNEdYP
         wn7w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=Pz238dxU/bbfAaLBBZgDqR8a911xzVNpIZ25r0CeDC8=;
        b=Zwa1u2wDoQnWIbZS/0107ZonJFp3YgmxtB8Bt66a6989mpFwVroPE5JKZ6FYUq4tGH
         S3+/WQXr7i3TZEnS8EoQSZcpvYlpGsws5tB024IrnLp8Nyq92IcsRnwplupMKNHGSOFU
         qMPRJhBmnq8/iI664hpRnA5ECQg84zIH9XaLORNiB8cWXq8Jrfp0su0H2pv1xa8nFvce
         Eu9i6QzOt3r9ALn3qa1zs5vEv8EMmp/pU0dmmFbk1OY2QpQrxNOIjYNk6tOWgL+qr7iO
         HGBOyS26IXf1UMJoJgq4lyKlb9lx36uI2eP9zIzROT/4XptTEZo8lDugJbqMPSTK69Us
         bNXA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=CCjy0SVb;
       spf=pass (google.com: domain of ardb@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=ardb@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Pz238dxU/bbfAaLBBZgDqR8a911xzVNpIZ25r0CeDC8=;
        b=l8shKHBgTNSYwojq+MJ+UszDiWOHFAD/qXlvHtJ+EcxWgOHik+YVgZC134b2MasFXr
         CUCjcg4P2a9M6HE6nEQybFrO+Y5wZd9JqnpY0VLMp4lqscTuSisDwQi4+hSPLuDPZadQ
         +F46KsW2qJa8UofYv6JEH5DrLXFGE43gD0PTWhV1SdoBIe/0zkZTQNJLWnRi5+iCP0nk
         GtppTOcFRj8fTZPSZX57Wrb++kgetXGlyjVavUggb7a3FqdY7dggjWhmBeXQB/amCtNZ
         S5Ec4WekJyV3QP8rid7d4DsMVcXh8tz1vPKyj1espC2sW+duvBn4XIm5k3vQQqIJERaj
         aNiw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Pz238dxU/bbfAaLBBZgDqR8a911xzVNpIZ25r0CeDC8=;
        b=guL/eDEUO6BBkjUQIOAKQIyzxaqaDKaAc+/+vMJDiZ/koGJ6y/cGzWoHh6iHWVQejF
         7gFuvRdHr+JivPBGKOx4Ro8lO1ebL724IycJvoNteIHXIqkpPMW559l4O1H7Jf5J/AAA
         szqYbG/RKYFt51jZ8vBRQwL++OiWEgJ5yzNBF7vLmIwe/vTEyR3eXwQarVcQL7aeBY2J
         7WPGnQZHYM5D//MtRAs9Y82OGKJ77XGCx1dyFB6+08n+Hs2kNrsF8yekFpSvlt86hqUE
         fMryiZV0MRpLQQVAwmBuP63IiwGS0YbFlV+jci0kbnnhgh6iSy7AePHr9WSmJvtxujWs
         DabQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532zR/yzW4gPcxZgOJhHjQQQ+eyQjLjghsnE5LEad2MEbWOvYcKt
	MV0Qn7U03r8KBDZRR16+NVw=
X-Google-Smtp-Source: ABdhPJxLI7CLqTkPVqtng5kcvCsVDKHujQn1N485qEIBO8AvZSi8U0rsKsMRp7btf30npiv1tZiE2w==
X-Received: by 2002:a17:902:e84e:b029:de:45bf:1296 with SMTP id t14-20020a170902e84eb02900de45bf1296mr9213005plg.49.1611135236119;
        Wed, 20 Jan 2021 01:33:56 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aa7:9286:: with SMTP id j6ls9150637pfa.7.gmail; Wed, 20 Jan
 2021 01:33:55 -0800 (PST)
X-Received: by 2002:a63:d246:: with SMTP id t6mr8508935pgi.283.1611135235537;
        Wed, 20 Jan 2021 01:33:55 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1611135235; cv=none;
        d=google.com; s=arc-20160816;
        b=V7yOZ+RjfYN7euHY6TwcH5+FacQ4KQchykxN4nYFpwRvM/8uQtb/6QNhUpJTfeMrbC
         e/AUC67SHjKS9RXwgDroyU6g9lgyb9D0L3A3ZGXenyu+CneB0tU6wqTnzSqDGu5L3nuz
         gTnO/2uIegrDPI0/i7lGWioSL/6+6WOmjutzFLMB95mLrQ8imglz5SrjhXZqJYyzUdWq
         q5tMXjn70Jn3wbIeSLuZe6cqfHsCF9LFtbPZ75YE/VIeKg7Oyq4mCScmPuokHmtnR9iK
         Mzv0E9yXtlcWiQTctm/D90YoMcdZPtaI8P6QPZdnyotQs0wdgIxoy/lWMGOUHJlodKbP
         111g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=lF5TRUlxO0/lcaCIviV9+0NlF5loPXJ3PpB7tlHczWw=;
        b=xBAzSsd6Ta2eYD6HdS1SJ+li3J1lze1h5YhW2wYXw7T93qoZ30hyztbj2qRYleH5FZ
         4CFxGu3U45kr/AkhaU4tMPL4UJ2P6aSP+VNAb710nEHKnJhvoECx1EdLn0E1iEbFqj/H
         oOhpqi2oByLthdN/DEqc5Hl0yoCH05zn+a7gXH0yXBVswlXoOtkjLmJ1Qc/Mkf2veZ+e
         2V/wREbh07DL1DYCxzjZAAwhpmUndO3YmvXGEkAXEOjRqa5Hub4pC0NSysHnkAAKyVS3
         JbYdhX51biV5p0tShmLa+WvhHKbozUk7yKW+OZjo2Q82PPVvro3pn2og8QPM5jv4etJ2
         CG0w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=CCjy0SVb;
       spf=pass (google.com: domain of ardb@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=ardb@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id t22si141051pjg.2.2021.01.20.01.33.55
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 20 Jan 2021 01:33:55 -0800 (PST)
Received-SPF: pass (google.com: domain of ardb@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 0AEED23158
	for <clang-built-linux@googlegroups.com>; Wed, 20 Jan 2021 09:33:55 +0000 (UTC)
Received: by mail-ot1-f45.google.com with SMTP id 63so323601oty.0
        for <clang-built-linux@googlegroups.com>; Wed, 20 Jan 2021 01:33:55 -0800 (PST)
X-Received: by 2002:a05:6830:1614:: with SMTP id g20mr656140otr.77.1611135234286;
 Wed, 20 Jan 2021 01:33:54 -0800 (PST)
MIME-Version: 1.0
References: <20210107223424.4135538-1-arnd@kernel.org> <YAHoB4ODvxSqNhsq@rani.riverdale.lan>
 <YAH6r3lak/F2wndp@rani.riverdale.lan> <CAMj1kXGZFZciN1_KruCr=g6GANNpRrCLR48b3q13+QfK481C7Q@mail.gmail.com>
 <20210118202409.GG30090@zn.tnic> <YAYAvBARSRSg8z8G@rani.riverdale.lan>
In-Reply-To: <YAYAvBARSRSg8z8G@rani.riverdale.lan>
From: Ard Biesheuvel <ardb@kernel.org>
Date: Wed, 20 Jan 2021 10:33:43 +0100
X-Gmail-Original-Message-ID: <CAMj1kXHM98-iDYpAozaWEv-qxhZ0-CUMwSdG532x2d+55gXDhQ@mail.gmail.com>
Message-ID: <CAMj1kXHM98-iDYpAozaWEv-qxhZ0-CUMwSdG532x2d+55gXDhQ@mail.gmail.com>
Subject: Re: [PATCH] x86: efi: avoid BUILD_BUG_ON() for non-constant p4d_index
To: Arvind Sankar <nivedita@alum.mit.edu>
Cc: Borislav Petkov <bp@alien8.de>, Arnd Bergmann <arnd@kernel.org>, Thomas Gleixner <tglx@linutronix.de>, 
	Ingo Molnar <mingo@redhat.com>, X86 ML <x86@kernel.org>, 
	Nathan Chancellor <natechancellor@gmail.com>, Nick Desaulniers <ndesaulniers@google.com>, 
	Arnd Bergmann <arnd@arndb.de>, Darren Hart <dvhart@infradead.org>, 
	Andy Shevchenko <andy@infradead.org>, "H. Peter Anvin" <hpa@zytor.com>, 
	linux-efi <linux-efi@vger.kernel.org>, platform-driver-x86@vger.kernel.org, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	"Kirill A. Shutemov" <kirill.shutemov@linux.intel.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ardb@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=CCjy0SVb;       spf=pass
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

On Mon, 18 Jan 2021 at 22:42, Arvind Sankar <nivedita@alum.mit.edu> wrote:
>
> On Mon, Jan 18, 2021 at 09:24:09PM +0100, Borislav Petkov wrote:
> > > > > As a matter of fact, it seems like the four assertions could be combined
> > > > > into:
> > > > >       BUILD_BUG_ON((EFI_VA_END & P4D_MASK) != (MODULES_END & P4D_MASK));
> > > > >       BUILD_BUG_ON((EFI_VA_START & P4D_MASK) != (EFI_VA_END & P4D_MASK));
> > > > > instead of separately asserting they're the same PGD entry and the same
> > > > > P4D entry.
> > > > >
> > > > > Thanks.
> > > >
> > > > I actually don't quite get the MODULES_END check -- Ard, do you know
> > > > what that's for?
> > > >
> > >
> > > Maybe Boris remembers? He wrote the original code for the 'new' EFI
> > > page table layout.
> >
> > That was added by Kirill for 5-level pgtables:
> >
> >   e981316f5604 ("x86/efi: Add 5-level paging support")
>
> That just duplicates the existing pgd_index() check for the p4d_index()
> as well. It looks like the original commit adding
> efi_sync_low_kernel_mappings() used to copy upto the PGD entry including
> MODULES_END:
>   d2f7cbe7b26a7 ("x86/efi: Runtime services virtual mapping")
> and then Matt changed that when creating efi_mm:
>   67a9108ed4313 ("x86/efi: Build our own page table structures")
> to use EFI_VA_END instead but have a check that EFI_VA_END is in the
> same entry as MODULES_END.
>
> AFAICT, MODULES_END is only relevant as being something that happens to
> be in the top 512GiB, and -1ul would be clearer.
>
> >
> >  Documentation/x86/x86_64/mm.rst should explain the pagetable layout:
> >
> >    ffffff8000000000 | -512    GB | ffffffeeffffffff |  444 GB | ... unused hole
> >    ffffffef00000000 |  -68    GB | fffffffeffffffff |   64 GB | EFI region mapping space
> >    ffffffff00000000 |   -4    GB | ffffffff7fffffff |    2 GB | ... unused hole
> >    ffffffff80000000 |   -2    GB | ffffffff9fffffff |  512 MB | kernel text mapping, mapped to physical address 0
> >    ffffffff80000000 |-2048    MB |                  |         |
> >    ffffffffa0000000 |-1536    MB | fffffffffeffffff | 1520 MB | module mapping space
> >    ffffffffff000000 |  -16    MB |                  |         |
> >       FIXADDR_START | ~-11    MB | ffffffffff5fffff | ~0.5 MB | kernel-internal fixmap range, variable size and offset
> >
> > That thing which starts at -512 GB above is the last PGD on the
> > pagetable. In it, between -4G and -68G there are 64G which are the EFI
> > region mapping space for runtime services.
> >
> > Frankly I'm not sure what this thing is testing because the EFI VA range
> > is hardcoded and I can't imagine it being somewhere else *except* in the
> > last PGD.
>
> It's just so that someone doesn't just change the #define's for
> EFI_VA_END/START and think that it will work, I guess.
>
> Another reasonable option, for example, would be to reserve an entire
> PGD entry, allowing everything but the PGD level to be shared, and
> adding the EFI PGD to the pgd_list and getting rid of
> efi_sync_low_kernel_mappings() altogether. There aren't that many PGD
> entries still unused though, so this is probably not worth it.
>

The churn doesn't seem to be worth it, tbh.

So could we get rid of the complexity here, and only build_bug() on
the start address of the EFI region being outside the topmost p4d?
That should make the PGD test redundant as well.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAMj1kXHM98-iDYpAozaWEv-qxhZ0-CUMwSdG532x2d%2B55gXDhQ%40mail.gmail.com.
