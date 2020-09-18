Return-Path: <clang-built-linux+bncBD63HSEZTUIBBQNYST5QKGQEVCDPKDQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x839.google.com (mail-qt1-x839.google.com [IPv6:2607:f8b0:4864:20::839])
	by mail.lfdr.de (Postfix) with ESMTPS id EB6FE270743
	for <lists+clang-built-linux@lfdr.de>; Fri, 18 Sep 2020 22:44:50 +0200 (CEST)
Received: by mail-qt1-x839.google.com with SMTP id y53sf6203821qth.2
        for <lists+clang-built-linux@lfdr.de>; Fri, 18 Sep 2020 13:44:50 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1600461890; cv=pass;
        d=google.com; s=arc-20160816;
        b=f+Jn/nM1cdyuT2uvscU2+TbwwiS1Q3J/NEcf1tbO4QLZB2R6iKmK+ZXEOND9sEIQ01
         yAbBQYWivOzWefryIawCPl+S40uWSxES4E4St0e9gkzInm/DkAi1wmZvuRlnPit1ZbJH
         6xdq1QqH7b4PrUZzS/iUdusbo/yFEicZD9srk/gYcvg5Maa96TJTp4XkpBVbSKVGba7t
         y8ECBfo6QhjaktvjPq8iVSthMqT8WppexZQa1g9pYQSE4mmoF0ZEDOg9Jggwt+Hj/8kw
         9jVW7gL66AjaTMTB1LofqaKfF0+RDnnfnTupXQO0MWkSeSfKizvWCHZqGiHKGW66qt/Y
         qvCA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=R/WlOiLcIX+QC1eFg7bKOeHN4gJwrC8yZ7oKWotF2Tc=;
        b=hQGs/cQ/id1JoSzFsAwVzCve4wmk/qXwWNZ+YdnKZBy+HUnumBuWQnqmCajCcxs4X+
         8RXckRHNhabazu3tfKB7eULB2+G28atOI1mE9OFAp37hFfCK/OGQwdPU7KbPiEQy6Ga7
         ypCNJBO/O9tY9tIvjLHv7lhdGVLik72CDGkrXYxHgEwj8Z3lFB9D5Pa0Zn8kI5xbQze/
         EqTQMte3NsmmMPHzegONCziheP+a+2eyUSz8cJqxIVU0Yh5VAknqcgRbwzO0wnUiScIf
         Ri2xItgNU/fwlizlmor1bL6f/hllmd606sJkA6QMNIKJEyP6GWLXIc+FBnOiIJujjiaM
         qD/A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b="aeT/pHTJ";
       spf=pass (google.com: domain of ardb@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=ardb@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=R/WlOiLcIX+QC1eFg7bKOeHN4gJwrC8yZ7oKWotF2Tc=;
        b=dR+D+S4+JYkDFUUPCOYt0cNAjSBGRMsWwIQQ3ZJ0HWhOB4XZkB5cky+6ukPe8LcdzW
         knDpcmV169FSfYczC1YFt7L2cEqbPTOeKDT4/uyNndw3WVSp91JctZ4w8TMz4aFWnN3r
         sRlvGMY+Wj3FLQ1/FVQ3wljD6kJZXROhVSA74oPMYfjeJlpCp2wNRdcCHc8BLIjc90E/
         9fcgRW/KHoeqiCczwq2oKZgqISu7Dn8NX7u41GbFiQiSWhwt77dNG3C68rU84dxOKVFe
         Xo+fxKG7hPACmEu0oWScaPYdnmb1AiHdk1iNEChoHHR5qdmGq+s6qRc/5tz3+ld8zojr
         iHjQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=R/WlOiLcIX+QC1eFg7bKOeHN4gJwrC8yZ7oKWotF2Tc=;
        b=YHoHUjQxsDK9OxSaDz6I3M6QqtcGSs5TNHyOdNsI01q49JOJ8Telj2ZdXrKTK2BUVh
         4xgh8K16bVhpyQnSDExGlPHOeraf/plUsYdOjAYsbSsqWu2vNqbT38rDenNer1Bn7Q6k
         drurSU5ldD1VeVty1HMQ8RneKjFKlhcpkYif5RnVNpEGfcCKWx2JzcOs2OMHs7YPSy2u
         vKEsVbR3hiPtTSGC8KubbgZ+g27D8sdXKqWzlP/g2HVhrATfRXl7nXxMpNRQv5ZL3Tv5
         hp9y/4JtHKAOJeDHvn2kPEVrszD7yQm98pFDP86xNFkkRMhzf5Gr5tBct+8FdM1K3oxP
         XtPA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530ziznt0qWkZDpXRgLVXvQR/BaKRsZhF2QVDwnfYWh8zCML2tmh
	yPA9IHI6IfZvImX9ACjKHXQ=
X-Google-Smtp-Source: ABdhPJyPrhYIS2a658G3KbIuIsEDxU1HE5AEVgwepKnXUUB0fgYmBCYITkzVcFju2WotB75wuuRHCQ==
X-Received: by 2002:ae9:e914:: with SMTP id x20mr34019517qkf.163.1600461890055;
        Fri, 18 Sep 2020 13:44:50 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ad4:42b3:: with SMTP id e19ls1683469qvr.11.gmail; Fri, 18
 Sep 2020 13:44:49 -0700 (PDT)
X-Received: by 2002:ad4:4b34:: with SMTP id s20mr19246836qvw.51.1600461889619;
        Fri, 18 Sep 2020 13:44:49 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1600461889; cv=none;
        d=google.com; s=arc-20160816;
        b=NkK57wvUI2GvayxGqmptU5/R3lmtEXdZfCdQ+xc03P4fDgcqbv0BrIaFwGINSvTtG/
         A5X7qYaje8IOrecSxyGM0eYDFqVJorzdCu7A5VSRylwsd/ItfgJpaztY9hOyEtlrQx68
         2RLOLNbDF006ci3L5A0j34XJGLgpzoZpQEDlDHAhw7o0YPBEq/iOn7PQQyYvdslc1huy
         WyBbH3Im2FQXMDH3nZTYvkfa/eYJ+eLQTBVYTqP98/bcPDZtYtpDh5UaFKsRIsEF2aaU
         tOGkVdl5QOQ5gzn2gsJHROfy32YJj25b74YSRuKl2zdeygRM141HF5x9X99K/TiAPdnl
         R9aw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=rTMNdWW+k/SpwP2X8kp9ZNYrYAZnPcF5uTnGGqIGyIc=;
        b=MYmWlcyCv6SUsw03MS+6K2PnObkKKgNHHTpCQVmFaP9zmUzAFe5Htd4x9Wf5nToIrd
         UMDjroMBvBtRsls6DfHngGTdlYpvil4XpWJhvlgj5WCIXpvsnjHTh4lFHkfNpTst0efM
         swJ06ZlBbGW16FlP538s1XpBzPzKQu9Rep0oe9B0TvF9WyuILQBC3QcCIxLJiy1BsIVR
         WEhwgpkupxROUGvOJySZgdUFzQGmx6H0Eh4Wy0U6ficuYinSDkBUzwf/e/QAPjiIJ4Y6
         rNfT7ZSKOEGMGNEUyX0dGzLE1AuPdBemEjX2qcqkFuoLmXoL/mj+hxOGhU0vGYneXc/d
         EkjQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b="aeT/pHTJ";
       spf=pass (google.com: domain of ardb@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=ardb@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id q5si186751qkc.2.2020.09.18.13.44.49
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 18 Sep 2020 13:44:49 -0700 (PDT)
Received-SPF: pass (google.com: domain of ardb@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from mail-oi1-f172.google.com (mail-oi1-f172.google.com [209.85.167.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 31C862311B
	for <clang-built-linux@googlegroups.com>; Fri, 18 Sep 2020 20:44:48 +0000 (UTC)
Received: by mail-oi1-f172.google.com with SMTP id 185so8556521oie.11
        for <clang-built-linux@googlegroups.com>; Fri, 18 Sep 2020 13:44:48 -0700 (PDT)
X-Received: by 2002:a05:6808:8e5:: with SMTP id d5mr10746303oic.33.1600461887317;
 Fri, 18 Sep 2020 13:44:47 -0700 (PDT)
MIME-Version: 1.0
References: <20200914095706.3985-1-ardb@kernel.org> <CAKwvOdmSXm7cV3hB_Yp=DD0RwwDHtPzzDBU8Xj5kBREn3xqYdA@mail.gmail.com>
 <CAMj1kXGuFFUyT48EYvzFmjCP4QZi_Sk_GpBrBCaHjP7HKLhjBA@mail.gmail.com>
 <CAKwvOdmkNgi_+kfauTSLwtpVChipW851_KGJG+gBbhwRxJJORA@mail.gmail.com>
 <CAMj1kXHTkP7-8xscGZGXN_0Sq=BCSnt3zWqkcm8xdO11xmditA@mail.gmail.com>
 <CAKwvOd=G2Rr3StUJ=oWu1L4b5y615m+uYNW-Y5sis13uqBvrYQ@mail.gmail.com>
 <CAMj1kXHEpPc0MSoMrCxEkyb44AkLM2NJJGtOXLpr6kxBHS0vfA@mail.gmail.com>
 <CAKwvOd=Sq3XOquw4ACEi+cYCQp0-LW-JXoecFt+yy+jtmtuhiQ@mail.gmail.com>
 <CAMj1kXG9WBZb9WYCCng7CkJ+v8X=xHVhih274iuXMd5ua2nKPg@mail.gmail.com> <CAKwvOd=8QUQK6hCQaAGjX6o_jz_vgFewW6v+SPHZ7ZKi9LYcYw@mail.gmail.com>
In-Reply-To: <CAKwvOd=8QUQK6hCQaAGjX6o_jz_vgFewW6v+SPHZ7ZKi9LYcYw@mail.gmail.com>
From: Ard Biesheuvel <ardb@kernel.org>
Date: Fri, 18 Sep 2020 22:44:32 +0200
X-Gmail-Original-Message-ID: <CAMj1kXEM=bW6DdPDDeFOWi47O6JOu_czui9Y2BJfjiVdQ1CvOw@mail.gmail.com>
Message-ID: <CAMj1kXEM=bW6DdPDDeFOWi47O6JOu_czui9Y2BJfjiVdQ1CvOw@mail.gmail.com>
Subject: Re: [PATCH 00/12] ARM: use adr_l/ldr_l macros for PC-relative references
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: linux-efi <linux-efi@vger.kernel.org>, 
	Linux ARM <linux-arm-kernel@lists.infradead.org>, Russell King <linux@armlinux.org.uk>, 
	Linus Walleij <linus.walleij@linaro.org>, Nicolas Pitre <nico@fluxnic.net>, 
	Stefan Agner <stefan@agner.ch>, Peter Smith <Peter.Smith@arm.com>, Marc Zyngier <maz@kernel.org>, 
	Will Deacon <will@kernel.org>, clang-built-linux <clang-built-linux@googlegroups.com>, 
	Jian Cai <jiancai@google.com>, Nathan Chancellor <natechancellor@gmail.com>, 
	Masahiro Yamada <masahiroy@kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ardb@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b="aeT/pHTJ";       spf=pass
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

On Fri, 18 Sep 2020 at 22:03, Nick Desaulniers <ndesaulniers@google.com> wrote:
>
> On Wed, Sep 16, 2020 at 11:01 PM Ard Biesheuvel <ardb@kernel.org> wrote:
> >
> > On Thu, 17 Sep 2020 at 00:25, Nick Desaulniers <ndesaulniers@google.com> wrote:
> > > Also, it looks like the GCC build of milbeaut_m10v_defconfig fails to
> > > boot for me in QEMU; so maybe not just a Clang bug (or maybe, more
> > > than one bug).  (or maybe one of my command line params to QEMU is
> > > wrong).
> > >
> >
> > I understand that this is actually an existing issue in -next, but in
> > general, why would you expect to be able to boot
> > milbeaut_m10v_defconfig on anything other than a Milbeaut MV10
> > machine?
>
> We've been booting other configs in QEMU for a few years now, so I
> don't see why yet another config would hurt.  Maybe there's some
> hardware dependency, but I guess we'd find that out trying to boot it
> in QEMU.  If it boots in QEMU, I guess not booting on metal wasn't so
> bad?  Maybe this is considered an antipattern, but you can see how if
> we've been getting away with it for years then that would lead to such
> expectations.
>
> > (whatever it is) Or does QEMU emulate a milbeaut machine?
>
> $ qemu-system-arm -machine help
>
> doesn't print anything that looks like it, on initial glance.  Looks
> like a socionext part:
> https://www.socionext.com/en/pr/sn_pr20170105_01e.pdf
>
> > If
> > not, better to stick with configs that are intended to boot on the
> > QEMU machine emulation that you are using.
>
> I can see in our CI that we've been building+boot testing
> multi_v5_defconfig, aspeed_g5_defconfig, and multi_v7_defconfig for a
> while now without specifying any machine.  Is there a preferred
> machine we should be using for those?  (It looks like qemu supports
> ast2500-evb and ast2600-evb; is ARM1176 and ARMv6 core? Is that what
> aspeed_g5 uses? Why is virt versioned? Ahhhh!!!!)
>

Milbeaut's serial output is on a "socionext,milbeaut-usio-uart" UART,
and its defconfig does not include drivers for the PL011 or 8250/16550
UARTs that you typically find on other boards. So how on earth would
you expect to get any output at all if QEMU does not emulate this
exact machine?

In general, if you use QEMU/mach-virt, the only defconfigs you should
reasonably be testing are the ones that contain CONFIG_ARCH_VIRT=y.


> > Also, while I see the point of regression testing of -next, using it
> > as a base to test arbitrary series and then report failures against it
> > produces a lot of noise. -next is *not* a good base for development,
> > because you get everybody else's half baked crap as well.
>
> Ack.
>
> > When you
> > test my stuff, please use a known good base so we're not off on a
> > goose chase every time.
>
> Goose Chase?! gOoSe ChAsE?! *gestures broadly at...everything*
> Monsieur, here at the zoo, chasing the geese is not out of our
> purview.  It's preferable to cleaning up after the elephants.

:-)

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAMj1kXEM%3DbW6DdPDDeFOWi47O6JOu_czui9Y2BJfjiVdQ1CvOw%40mail.gmail.com.
