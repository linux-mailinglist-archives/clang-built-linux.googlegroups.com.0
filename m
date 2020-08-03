Return-Path: <clang-built-linux+bncBCR5PSMFZYORBQWOT34QKGQEK5YKJUA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vs1-xe3a.google.com (mail-vs1-xe3a.google.com [IPv6:2607:f8b0:4864:20::e3a])
	by mail.lfdr.de (Postfix) with ESMTPS id A1E8C239F59
	for <lists+clang-built-linux@lfdr.de>; Mon,  3 Aug 2020 07:57:23 +0200 (CEST)
Received: by mail-vs1-xe3a.google.com with SMTP id x20sf6825352vsp.7
        for <lists+clang-built-linux@lfdr.de>; Sun, 02 Aug 2020 22:57:23 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1596434242; cv=pass;
        d=google.com; s=arc-20160816;
        b=DINfrPlLbG2LxtVkFMDWJUqGlOh1eYCOpGzEUUiRNG23+p6VzYXZnkz4k865MCExPS
         FcZIJvQAtuFPxjRjGgrNC7BRauPziHYO4B9oxhhbVp5ooI2NTjQbpTVJhLG00qTl4qLU
         v9Rr43DAZrlee2rkn6Xcp31n7Eufk18CNaTjcA3bhRlHlpthh0C3qfhu/R7WHLxaZoa8
         CEea2Dj2ueqDJWob7Rf47lY99Hdn48/4Xyt7hkzDlK8WWF8IeZ0Ekxm0nxfz9kjsQZgp
         6RD+J4BvU7Kdux21+PMUb4TX2yTjCv82rk2eXoF5kU1y598cIbKHRUedledOnGfjHmnz
         RkYQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :references:in-reply-to:subject:cc:to:from:sender:dkim-signature;
        bh=7Yqcn7Y23396Ie9y7F0XWZu4ae3vgVz0gRRuWyf1tK8=;
        b=YRAs/Bp8qSw5LfBPjToPTC9ozIo4KazQ7cmf7vfjVsUWShhcbSwpjxkcm20LXGUVyd
         eiNbwnD0837V7jJUI/IwpIzqFviLT1paPzzPuO5LYX3I0mwK9NlFesP5Ngs9ldKdeHCs
         y12fbH8hCEoG3PsF2V3PbTro/aNunYZ3gxxeGr7uUzdZXQlb8lQAO5blTrISjy8HN+6X
         G4RXk218kX0uePmZ/t56vWHBuqiyZcvkRlWoyP4e6574YQMbgXgpod+/4aWSoFmF0Qwd
         mTVrYf5RA14hzjnQde/8rUqVQSwoodb/PYH4NC1EvNcWcHPHHPvx7LZai5rFez0rIoiq
         brBg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@ellerman.id.au header.s=201909 header.b=a7mlrlG8;
       spf=pass (google.com: domain of mpe@ellerman.id.au designates 2401:3900:2:1::2 as permitted sender) smtp.mailfrom=mpe@ellerman.id.au
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:in-reply-to:references:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=7Yqcn7Y23396Ie9y7F0XWZu4ae3vgVz0gRRuWyf1tK8=;
        b=RoMbqm1GD0YSJxvFD9cd+LwCulEaL4ll2pE9MN2FIy5jrO+cYF2MMmhlqDfcYpjozm
         /WvygMsXOrLyVW1/XCbjmmbUItI23fT2ZyxuusldApJ/DYf+eSamIyBYu0zvWtnodXhs
         Zks9qj60wpqEVV2XZx2W9bATlG3OOvkPVwUdybICaDud0KAHzYHcAHZB2kgR4Jxek4c+
         wWMpzh7Gd0ekObCS5D+fKcoBHsfP4k4ABCByWPbTnEJ/NPrVdquq/1R/47GsJwRCqokW
         hojXs9kZdd6nB4BsI1WbQZ3VboOcZe0ifJEMBghcwsOmGa5ZYDB+DvtZjF8oKFLJlOnG
         padg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:in-reply-to:references
         :date:message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=7Yqcn7Y23396Ie9y7F0XWZu4ae3vgVz0gRRuWyf1tK8=;
        b=MU8cMAUWCRqPrFHyuK/f2icMjY1fe9N1G+Za/jk1/5mmFcdVb1x9sk9WTCLt+JxWRp
         lYHws7Bd2YHKBjnFJ4uwUi0yAZwb/yaopyNnMfK4dvgOGAreNnF6E8S87DPVwmQfTZRF
         LxsqgvuJEag9d/n3KzwDmZfzhDePHjPYkzYpRvPeKa/nvlLvr9ZZeHQnBjFloIwYNlAO
         Sc39C1P9fVZOpgKrpHH7o+kBhEmmdLL9sr3PsLqfm7zHJf1rB6qUOJPgIAZpK17VEcHs
         qa745MUhbwEBxlUKTr2zm+v8QIs1pvqeJQ2VQ+Ok8E5PSToh2GH+YRBwxPR6LWq7NLXM
         vRNg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5334qW6U1TFd37K23ZIuLWFiQLhRdXRKkeaIYEHCEyhE5ZHfJy7Y
	TS5TD7urWvTXlmEKLtWZDSM=
X-Google-Smtp-Source: ABdhPJyxBj0+JdtHJm3Fj6BD/mZ8fa202/GKNOws5lUTk/9R207un6UWG6RNhE7ClViM/G8xY76RMQ==
X-Received: by 2002:a1f:de81:: with SMTP id v123mr9967264vkg.92.1596434242284;
        Sun, 02 Aug 2020 22:57:22 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6102:31a5:: with SMTP id d5ls1723102vsh.4.gmail; Sun, 02
 Aug 2020 22:57:22 -0700 (PDT)
X-Received: by 2002:a67:334e:: with SMTP id z75mr72390vsz.146.1596434241940;
        Sun, 02 Aug 2020 22:57:21 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1596434241; cv=none;
        d=google.com; s=arc-20160816;
        b=zuFhbWBD4nHoHU9SmeGjBw9c4EgbwBsMBygjl8sKyJAc1If7RRvDRCi2i7LZY6iWeT
         yFOvpRcFz0c44uhtdr8HRDgFVBN+3wJeJmZEY5FK+f7Fv9pV0vIwY0xHKMkutCD4E82v
         KlXr8hW6lZ7GQp5M4NiG6Zf85VpCbDDOvCQVZmb+Upqqj74VFXPne5J0i/cGYu+U2HfO
         dLwlGl2iy2FqKQRilhUwVS7GUuXpWUyU4q85DY61UZUzNPUlvdqETzGJQWeRuWaXaJ3P
         X2TKWDl0QKBgxWGva8/Qudsi7oAXz1Pqzkge44b9WvuXI1Ll2vAxDTFlBY8Ub3Nx4IgF
         TSfg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
         :from:dkim-signature;
        bh=a937DOTmpA6P0raq2UNN38ZadWAp1RYe6W0/Q7RSs9I=;
        b=a+Zs/sF8mIje5ft0MjDQEUw+lVeQ4dX9VU4FjF5i4wF7TSMG7U6cdL0zjHe1fhnyk8
         v7n9+kk7RL8BD7WLHHcYfT1JF987YlthyjLOsMdce4V5x3z1i5sERzV9hePWg52pL3sh
         BOTDK0T64MkfthhIZiotE14Yfl3Vx/DGwccwDtflAGzO44G8+w1c3Wt1qtXQse3HO5ZM
         2/dtVsNbi9QgysnnkDyG3yB8DUdJvfu4opimQ+FvTqOIBs7dm6hfqzUQBlMHkptmKjWt
         EkDkEmqEy7LVSlVL5gy4zm2BFqE/S3qXosTutAf6neAt1Ree0ttkfdXp/qAJd8Tiom4V
         TC8g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ellerman.id.au header.s=201909 header.b=a7mlrlG8;
       spf=pass (google.com: domain of mpe@ellerman.id.au designates 2401:3900:2:1::2 as permitted sender) smtp.mailfrom=mpe@ellerman.id.au
Received: from ozlabs.org (bilbo.ozlabs.org. [2401:3900:2:1::2])
        by gmr-mx.google.com with ESMTPS id x6si680977vko.1.2020.08.02.22.57.20
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 02 Aug 2020 22:57:21 -0700 (PDT)
Received-SPF: pass (google.com: domain of mpe@ellerman.id.au designates 2401:3900:2:1::2 as permitted sender) client-ip=2401:3900:2:1::2;
Received: from authenticated.ozlabs.org (localhost [127.0.0.1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (P-256) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by mail.ozlabs.org (Postfix) with ESMTPSA id 4BKnGN4mkNz9sTb;
	Mon,  3 Aug 2020 15:57:16 +1000 (AEST)
From: Michael Ellerman <mpe@ellerman.id.au>
To: Nathan Chancellor <natechancellor@gmail.com>
Cc: Oliver O'Halloran <oohall@gmail.com>, linuxppc-dev@lists.ozlabs.org, clang-built-linux@googlegroups.com, Segher Boessenkool <segher@kernel.crashing.org>
Subject: Re: [PATCH v2 15/16] powerpc/powernv/sriov: Make single PE mode a per-BAR setting
In-Reply-To: <20200803044609.GB195@Ryzen-9-3900X.localdomain>
References: <20200722065715.1432738-1-oohall@gmail.com> <20200722065715.1432738-15-oohall@gmail.com> <20200801061823.GA1203340@ubuntu-n2-xlarge-x86> <87r1sp19ag.fsf@mpe.ellerman.id.au> <20200803044609.GB195@Ryzen-9-3900X.localdomain>
Date: Mon, 03 Aug 2020 15:57:11 +1000
Message-ID: <87k0yg1dc8.fsf@mpe.ellerman.id.au>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: mpe@ellerman.id.au
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@ellerman.id.au header.s=201909 header.b=a7mlrlG8;       spf=pass
 (google.com: domain of mpe@ellerman.id.au designates 2401:3900:2:1::2 as
 permitted sender) smtp.mailfrom=mpe@ellerman.id.au
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

Nathan Chancellor <natechancellor@gmail.com> writes:
> On Sun, Aug 02, 2020 at 11:12:23PM +1000, Michael Ellerman wrote:
>> Nathan Chancellor <natechancellor@gmail.com> writes:
>> > On Wed, Jul 22, 2020 at 04:57:14PM +1000, Oliver O'Halloran wrote:
>> >> Using single PE BARs to map an SR-IOV BAR is really a choice about what
>> >> strategy to use when mapping a BAR. It doesn't make much sense for this to
>> >> be a global setting since a device might have one large BAR which needs to
>> >> be mapped with single PE windows and another smaller BAR that can be mapped
>> >> with a regular segmented window. Make the segmented vs single decision a
>> >> per-BAR setting and clean up the logic that decides which mode to use.
>> >> 
>> >> Signed-off-by: Oliver O'Halloran <oohall@gmail.com>
>> >> ---
>> >> v2: Dropped unused total_vfs variables in pnv_pci_ioda_fixup_iov_resources()
>> >>     Dropped bar_no from pnv_pci_iov_resource_alignment()
>> >>     Minor re-wording of comments.
>> >> ---
>> >>  arch/powerpc/platforms/powernv/pci-sriov.c | 131 ++++++++++-----------
>> >>  arch/powerpc/platforms/powernv/pci.h       |  11 +-
>> >>  2 files changed, 73 insertions(+), 69 deletions(-)
>> >> 
>> >> diff --git a/arch/powerpc/platforms/powernv/pci-sriov.c b/arch/powerpc/platforms/powernv/pci-sriov.c
>> >> index ce8ad6851d73..76215d01405b 100644
>> >> --- a/arch/powerpc/platforms/powernv/pci-sriov.c
>> >> +++ b/arch/powerpc/platforms/powernv/pci-sriov.c
>> >> @@ -260,42 +256,40 @@ void pnv_pci_ioda_fixup_iov(struct pci_dev *pdev)
>> >>  resource_size_t pnv_pci_iov_resource_alignment(struct pci_dev *pdev,
>> >>  						      int resno)
>> >>  {
>> >> -	struct pnv_phb *phb = pci_bus_to_pnvhb(pdev->bus);
>> >>  	struct pnv_iov_data *iov = pnv_iov_get(pdev);
>> >>  	resource_size_t align;
>> >>  
>> >> +	/*
>> >> +	 * iov can be null if we have an SR-IOV device with IOV BAR that can't
>> >> +	 * be placed in the m64 space (i.e. The BAR is 32bit or non-prefetch).
>> >> +	 * In that case we don't allow VFs to be enabled since one of their
>> >> +	 * BARs would not be placed in the correct PE.
>> >> +	 */
>> >> +	if (!iov)
>> >> +		return align;
>> >> +	if (!iov->vfs_expanded)
>> >> +		return align;
>> >> +
>> >> +	align = pci_iov_resource_size(pdev, resno);
>> 
>> That's, oof.
>> 
>> > I am not sure if it has been reported yet but clang points out that
>> > align is initialized after its use:
>> >
>> > arch/powerpc/platforms/powernv/pci-sriov.c:267:10: warning: variable 'align' is uninitialized when used here [-Wuninitialized]
>> >                 return align;
>> >                        ^~~~~
>> > arch/powerpc/platforms/powernv/pci-sriov.c:258:23: note: initialize the variable 'align' to silence this warning
>> >         resource_size_t align;
>> >                              ^
>> >                               = 0
>> > 1 warning generated.
>> 
>> But I can't get gcc to warn about it?
>> 
>> It produces some code, so it's not like the whole function has been
>> elided or something. I'm confused.
>
> -Wmaybe-uninitialized was disabled in commit 78a5255ffb6a ("Stop the
> ad-hoc games with -Wno-maybe-initialized") upstream so GCC won't warn on
> stuff like this anymore.

Seems so. Just that there's no "maybe" here, it's very uninitialised.

> I would assume the function should still be generated since those checks
> are relevant, just the return value is bogus.

Yeah, just sometimes missing warnings boil down to the compiler eliding
whole sections of code, if it can convince itself they're unreachable.

AFAICS there's nothing weird going on here that should confuse GCC, it's
about as straight forward as it gets.

Actually I can reproduce it with:

$ cat > test.c <<EOF
int foo(void *p)
{
        unsigned align;

        if (!p)
                return align;

        return 0;
}
EOF

$ gcc -Wall -Wno-maybe-uninitialized -c test.c
$

No warning.

But I guess that's behaving as documented. The compiler can't prove that
foo() will be called with p == NULL, so it doesn't warn.

cheers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/87k0yg1dc8.fsf%40mpe.ellerman.id.au.
