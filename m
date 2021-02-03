Return-Path: <clang-built-linux+bncBCU4TIPXUUFRBLEP5SAAMGQE4PAWAKY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb39.google.com (mail-yb1-xb39.google.com [IPv6:2607:f8b0:4864:20::b39])
	by mail.lfdr.de (Postfix) with ESMTPS id 91A8E30E406
	for <lists+clang-built-linux@lfdr.de>; Wed,  3 Feb 2021 21:29:33 +0100 (CET)
Received: by mail-yb1-xb39.google.com with SMTP id v7sf897554ybl.15
        for <lists+clang-built-linux@lfdr.de>; Wed, 03 Feb 2021 12:29:33 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1612384172; cv=pass;
        d=google.com; s=arc-20160816;
        b=DLKrhgQkx8PFGgV0hNaqaeytscWk1OS1jxipG2/i0Wfwdh9slJYb7+a18SFb79hOUJ
         IBR6nThu3GZtVwgUK0VkRZEslQzpoSJR8lUsnMkIZIjHq+arh/XrqkHCAxlqs0JESBCo
         G0/P34+C3Tlj3XXr+y/ZEqtAffxIDevFRt7Xw8k9hrSkEvUlQQmS4SXrIxW8MekPgdLb
         b/FVC5Gy0w3gNtx/I8xSy9yj6Q8wqFmzWA+tpkRo9dhjcNd3ytroprUwv0T3xkL4+q57
         HtS4Ps5sbz664UDU21hqfUH1ow1/G2vOyaq/PvrU35duaouhDHuTQN9/zXwABEZq/q4X
         X0UA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=tWMRsIpxBVUFjJiyNKCBcvX1wELOUmleY/RGCv7V/nw=;
        b=Lv05lDEaH/raTN/iZaNsFGDllrDCSbIQJwr2xXdQQiH3YukiifU148fTzDwsQQ1tJw
         O6iUC2vi81aOTDe2pQDVolJms/33ebJZHQX43/WurmeNJjeVV7ysrD8JR6JyHtiZj6oN
         5XlMfMfKAsEVHxSHjD8IuO38AF/CQ8J+sEMnF18MMT1KQVhfdpJ16j0Tt/3reGhZdJ1z
         jhmmtXrMWBY7SEIyllttw5zUYUQAiL3nIkDHyaYJ7f6iXZCqtKP/BPRxo0J1NrRVFt05
         eZY+E5W5AVte0ap6e1b7jFAMRkcr7Jx0wovxtLY10aXwyyHhYKPIohq6KB7wcRVzRwbH
         OZyA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=AYhbt2+C;
       spf=pass (google.com: domain of ardb@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=ardb@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=tWMRsIpxBVUFjJiyNKCBcvX1wELOUmleY/RGCv7V/nw=;
        b=CIBQO+Hm8iwxd6ddtAU5605PT76pUAFWCtktCs6sLbQr3G2Ac+IITW0wnTCLEHdoQY
         PrupPsfJN6Dqzxdx+mti5WoB0in5bdtZQZ27fBP0PnFJf9X7gE3Ns/OqBCm8B3JBxy8M
         Zq3IOfNqiowMpalI6n9x1xoiGYgp7qFQql5oaaoVXRfAWNaqoOZHDMDVbqHIZ7pHGUCG
         Y3Nm6i660e7+Trmh3obSHu7lJgDf+surrup1f4IbIYrdk+R2RQDz1ocj2KmRLUenUKPW
         pZhUSHnPWRLGMit16bWOahASKJwJPBoWs5/N/FglzaHCNLsOhUk9C1HcP2GD9vJJZYo7
         UI/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=tWMRsIpxBVUFjJiyNKCBcvX1wELOUmleY/RGCv7V/nw=;
        b=YAeCMmv79YuwgA2jzqJnPxv0USnBMezRzjE3nve0O2PgjZh02ww6U/F4jg4ySQwigw
         20wjYNvKYBhQN7lPJaN2O8Dffl5ADxPOovlRDeLeRuI4Chnd+XwTC8RAfNrbA3ztVzeK
         IaElE4/33TajvLLfarFWJpxuGEFricKodJ8RitpJdYXhAIbTiWbcF6r7616JMV2KzZui
         qLe3d4uDnTxyiITLpERSDoXEQFuBPio/SFjfzeUomSmtYepetnMYT3S3Gd0Pl3psMmW7
         FCuS/CGbQoTNAaB9S8Rs/sjSdQ+eK23EJJI8vEMioiGXaQAAee/f4E9RU0kRCZexL2eT
         jgSg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533ZxuhuZcOMn7lJZH06ayAiUmiIxTo3QccFvBTO2Wsp1VgUd/ib
	FyJf+hwgbF4RVgGJ3KBMdIQ=
X-Google-Smtp-Source: ABdhPJxzxsKvYDb9HeBGCGhKgOpH6h8GCit1m71YwLnggKR+3+mzo6uvnci/gO1aROZeGLcaaCVong==
X-Received: by 2002:a25:89:: with SMTP id 131mr7423754yba.328.1612384172465;
        Wed, 03 Feb 2021 12:29:32 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:ff19:: with SMTP id c25ls1651554ybe.2.gmail; Wed, 03 Feb
 2021 12:29:32 -0800 (PST)
X-Received: by 2002:a25:9247:: with SMTP id e7mr6793721ybo.440.1612384172029;
        Wed, 03 Feb 2021 12:29:32 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1612384172; cv=none;
        d=google.com; s=arc-20160816;
        b=wrFFTrsBr05CY16PIEd4E8pt+ENmjW6oAUGusa2AKF2FxO1RZlkO1jZlyRYql+SAsv
         QDJVBP9uObcMoEZphygetitl0P7/AdTbCXgzWCooHCIIdETwx+An+lTdn4GMNLV61hfx
         tBCA05ilRXFCwD38EcTolkPK9DLBMHJPkgqUVtVz5k06j0lBdhTA7dSJBr0/5UWuRf5U
         8rvelvUJW4N+boXX1ljjwwoFKN1l3f0346fnoZry3Z/V7spt5kDlp+zR74OxtIKfIRpA
         Xl10zE4nSYXq6sZiH/z3YJOpgcs3FfVPe2AUh5OY0oZpwSQ3Ww/9G7UudpjwQnfgUWvu
         XO3g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=KS7rUX1i8ErazdscK2ZtsLerb9go7B2i8viwNJBfEtg=;
        b=GsQyajoPvMitlYVsDZfQRjipWxFjuntpwkW2tK9fjHEiJ4YgN4Et2MJv+JQtvCDXXp
         skCmzWjEp1XLrSWSK2lEq/RrVqTUs8IZJ5jucftSH5tluFthl6zZmlURPaFgBUMpYCIf
         J5XE1n+ToelenFBkbA3bx71I1grf1jOTyWT7a2YQkEBAa6ciOzjkI0k7/klOurqtV74O
         YHl3VyNdHs2j7T0Ds7NqNNSKkwjatvueYJnvzW5JO2SKwy3BZXA4KZCWS8VDbmQz1P6c
         WoL6g5TSXJKUnS2SejiutDzvrYxaCsE03KEnEGUxJsHXpd/TxKRnPXJQFjJ59/iOTTjs
         0cYw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=AYhbt2+C;
       spf=pass (google.com: domain of ardb@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=ardb@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id k12si204219ybf.5.2021.02.03.12.29.31
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 03 Feb 2021 12:29:32 -0800 (PST)
Received-SPF: pass (google.com: domain of ardb@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 90CFA64F95
	for <clang-built-linux@googlegroups.com>; Wed,  3 Feb 2021 20:29:30 +0000 (UTC)
Received: by mail-ot1-f43.google.com with SMTP id i30so1163519ota.6
        for <clang-built-linux@googlegroups.com>; Wed, 03 Feb 2021 12:29:30 -0800 (PST)
X-Received: by 2002:a05:6830:1158:: with SMTP id x24mr3126112otq.108.1612384169484;
 Wed, 03 Feb 2021 12:29:29 -0800 (PST)
MIME-Version: 1.0
References: <20210107223424.4135538-1-arnd@kernel.org> <YAHoB4ODvxSqNhsq@rani.riverdale.lan>
 <YAH6r3lak/F2wndp@rani.riverdale.lan> <CAMj1kXGZFZciN1_KruCr=g6GANNpRrCLR48b3q13+QfK481C7Q@mail.gmail.com>
 <20210118202409.GG30090@zn.tnic> <YAYAvBARSRSg8z8G@rani.riverdale.lan>
 <CAMj1kXHM98-iDYpAozaWEv-qxhZ0-CUMwSdG532x2d+55gXDhQ@mail.gmail.com> <20210203185148.GA1711888@localhost>
In-Reply-To: <20210203185148.GA1711888@localhost>
From: Ard Biesheuvel <ardb@kernel.org>
Date: Wed, 3 Feb 2021 21:29:18 +0100
X-Gmail-Original-Message-ID: <CAMj1kXFPOvkcw573wzKzMQOgT-nddFcAZo9M4Lk+idn_1UBbnA@mail.gmail.com>
Message-ID: <CAMj1kXFPOvkcw573wzKzMQOgT-nddFcAZo9M4Lk+idn_1UBbnA@mail.gmail.com>
Subject: Re: [PATCH] x86: efi: avoid BUILD_BUG_ON() for non-constant p4d_index
To: Nathan Chancellor <nathan@kernel.org>
Cc: Arvind Sankar <nivedita@alum.mit.edu>, Borislav Petkov <bp@alien8.de>, Arnd Bergmann <arnd@kernel.org>, 
	Thomas Gleixner <tglx@linutronix.de>, Ingo Molnar <mingo@redhat.com>, X86 ML <x86@kernel.org>, 
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
 header.i=@kernel.org header.s=k20201202 header.b=AYhbt2+C;       spf=pass
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

On Wed, 3 Feb 2021 at 19:51, Nathan Chancellor <nathan@kernel.org> wrote:
>
> On Wed, Jan 20, 2021 at 10:33:43AM +0100, Ard Biesheuvel wrote:
> > On Mon, 18 Jan 2021 at 22:42, Arvind Sankar <nivedita@alum.mit.edu> wrote:
> > >
> > > On Mon, Jan 18, 2021 at 09:24:09PM +0100, Borislav Petkov wrote:
> > > > > > > As a matter of fact, it seems like the four assertions could be combined
> > > > > > > into:
> > > > > > >       BUILD_BUG_ON((EFI_VA_END & P4D_MASK) != (MODULES_END & P4D_MASK));
> > > > > > >       BUILD_BUG_ON((EFI_VA_START & P4D_MASK) != (EFI_VA_END & P4D_MASK));
> > > > > > > instead of separately asserting they're the same PGD entry and the same
> > > > > > > P4D entry.
> > > > > > >
> > > > > > > Thanks.
> > > > > >
> > > > > > I actually don't quite get the MODULES_END check -- Ard, do you know
> > > > > > what that's for?
> > > > > >
> > > > >
> > > > > Maybe Boris remembers? He wrote the original code for the 'new' EFI
> > > > > page table layout.
> > > >
> > > > That was added by Kirill for 5-level pgtables:
> > > >
> > > >   e981316f5604 ("x86/efi: Add 5-level paging support")
> > >
> > > That just duplicates the existing pgd_index() check for the p4d_index()
> > > as well. It looks like the original commit adding
> > > efi_sync_low_kernel_mappings() used to copy upto the PGD entry including
> > > MODULES_END:
> > >   d2f7cbe7b26a7 ("x86/efi: Runtime services virtual mapping")
> > > and then Matt changed that when creating efi_mm:
> > >   67a9108ed4313 ("x86/efi: Build our own page table structures")
> > > to use EFI_VA_END instead but have a check that EFI_VA_END is in the
> > > same entry as MODULES_END.
> > >
> > > AFAICT, MODULES_END is only relevant as being something that happens to
> > > be in the top 512GiB, and -1ul would be clearer.
> > >
> > > >
> > > >  Documentation/x86/x86_64/mm.rst should explain the pagetable layout:
> > > >
> > > >    ffffff8000000000 | -512    GB | ffffffeeffffffff |  444 GB | ... unused hole
> > > >    ffffffef00000000 |  -68    GB | fffffffeffffffff |   64 GB | EFI region mapping space
> > > >    ffffffff00000000 |   -4    GB | ffffffff7fffffff |    2 GB | ... unused hole
> > > >    ffffffff80000000 |   -2    GB | ffffffff9fffffff |  512 MB | kernel text mapping, mapped to physical address 0
> > > >    ffffffff80000000 |-2048    MB |                  |         |
> > > >    ffffffffa0000000 |-1536    MB | fffffffffeffffff | 1520 MB | module mapping space
> > > >    ffffffffff000000 |  -16    MB |                  |         |
> > > >       FIXADDR_START | ~-11    MB | ffffffffff5fffff | ~0.5 MB | kernel-internal fixmap range, variable size and offset
> > > >
> > > > That thing which starts at -512 GB above is the last PGD on the
> > > > pagetable. In it, between -4G and -68G there are 64G which are the EFI
> > > > region mapping space for runtime services.
> > > >
> > > > Frankly I'm not sure what this thing is testing because the EFI VA range
> > > > is hardcoded and I can't imagine it being somewhere else *except* in the
> > > > last PGD.
> > >
> > > It's just so that someone doesn't just change the #define's for
> > > EFI_VA_END/START and think that it will work, I guess.
> > >
> > > Another reasonable option, for example, would be to reserve an entire
> > > PGD entry, allowing everything but the PGD level to be shared, and
> > > adding the EFI PGD to the pgd_list and getting rid of
> > > efi_sync_low_kernel_mappings() altogether. There aren't that many PGD
> > > entries still unused though, so this is probably not worth it.
> > >
> >
> > The churn doesn't seem to be worth it, tbh.
> >
> > So could we get rid of the complexity here, and only build_bug() on
> > the start address of the EFI region being outside the topmost p4d?
> > That should make the PGD test redundant as well.
>
> Was there ever a resolution to this conversation or a patch sent? I am
> still seeing the build failure that Arnd initially sent the patch for.
> x86_64 all{mod,yes}config with clang are going to ship broken in 5.11.
>

I think we have agreement on the approach but it is unclear who is
going to write the patch.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAMj1kXFPOvkcw573wzKzMQOgT-nddFcAZo9M4Lk%2Bidn_1UBbnA%40mail.gmail.com.
