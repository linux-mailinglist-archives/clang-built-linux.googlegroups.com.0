Return-Path: <clang-built-linux+bncBCS6NPVSS4JBB2WFTTXQKGQET6QM7WQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa37.google.com (mail-vk1-xa37.google.com [IPv6:2607:f8b0:4864:20::a37])
	by mail.lfdr.de (Postfix) with ESMTPS id 90B451121B9
	for <lists+clang-built-linux@lfdr.de>; Wed,  4 Dec 2019 04:07:23 +0100 (CET)
Received: by mail-vk1-xa37.google.com with SMTP id w131sf2333909vkd.0
        for <lists+clang-built-linux@lfdr.de>; Tue, 03 Dec 2019 19:07:23 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1575428842; cv=pass;
        d=google.com; s=arc-20160816;
        b=OkLWFw2YF17DI2T1E0oT8wvbYHXOpKzze55f0QqtIWX/l6GIWIjp73lZtlTljDMYdV
         M3IMSccnzoX9MvsqKVxVN2IRvKjlADM6foLvE6vOg8MMmJXVgxD6+u08HE3bGvVFJ0ZA
         L14NdWsLKc2Qy5f75l3D7d5JBZKpsEon3t4zVscrtk2IX4qFF6AxboATQqDNboSTpPOI
         9ft2j3CZbPNiA4o9QbBVwhMxb3Xai8RwbFsFOydkGrATIH50wChu3YXkQshEKFxAYnvk
         jf9GTF6XI9sBD/edHDQpxYMyoTah+7eSBUHFgtwfzyq4R+pYEquzdmxE/0EsU/KERik8
         BjYA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:user-agent:references
         :message-id:in-reply-to:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=vsD7qd9isvxfdeVCvHZ0bvGJyBaDY99WrJHJvG0NtxE=;
        b=INVAs3uXaALkt6ha7JePK9f/M2qU0FWLnHcrD9Yxm3Nx8kg0CS6NGXbG6OaNxeids/
         q/neNTBR/h1mHB3MbWpws60UPuJ18KkTGoRtQy5VczJNmDrKQyRcdboOH+qBZwqQYkli
         W9vvoMMRIu2DXE7yRpD7dJJ8DBHu2w5EM3oatUsicVeAhQItPbAey0j9xrFfVaWYRRHu
         Lb4iLIJxFIekRs2ZsJnXQ8+xPx/4Fsakuv4bxgkzWc0Zv3/mMTRG5BSBTGPIJ0wTiyZX
         XG+N9LkkMZE4P62FD3cKG1HFLM7ZZU48yWaAa3SwPmUGmY5VSdO7rVODc09Hsn/VUvzd
         bzXA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@pobox.com header.s=sasl header.b=CABelTWk;
       dkim=temperror (no key for signature) header.i=@fluxnic.net header.s=2016-12.pbsmtp header.b=ZqUz3GeK;
       spf=pass (google.com: domain of nico@fluxnic.net designates 173.228.157.52 as permitted sender) smtp.mailfrom=nico@fluxnic.net
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:in-reply-to:message-id:references
         :user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=vsD7qd9isvxfdeVCvHZ0bvGJyBaDY99WrJHJvG0NtxE=;
        b=Vm5Rv5yHt/Pqn2n1+dE1mnD25V2OTYTWGm6KIvunNNed1kFDWAET4/VfMEoteryjN3
         ryayCIXeoq+yY9tR3VaCR8EvKWUBghnWRCkrtXfUCHErXCLl4f305kwnxrn+/M19DS0E
         tkw/ZRaz+AhDGNHUDyUeNsmOmCQNFe5IHYTuMY7eu78ilTbg6i2wFEVl35vj3pLfam+O
         yJ0J8a5uFNPFKRJAtIVNwM/OEfKa+G/OxneziwM/svlWzBKdP4wYBfdCVGWP6mTc2KQ2
         d5AoVUyA1hJCLRo2QGJWvaCqgrI4xKkcsNTLfbYLgfgdr0vnj3iuzzpFUwcDsRz+HkdI
         7NRA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:in-reply-to
         :message-id:references:user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=vsD7qd9isvxfdeVCvHZ0bvGJyBaDY99WrJHJvG0NtxE=;
        b=AdUEToe4/2cxSCzdx8ytUWb1XU3y1JrTQJCScc6IoD1GIXz8+WjeyA3+uxPQmyVwpm
         NjxQ2VJsXVfHzRE4izO89Pd3oNDvD2oNVpS/mUYodm0m3k/1ff7iNT/jd0YmTAo8796o
         O6RCOBi1stqxCR761qPx659KEzvNEstf0RZUjBXgO1L7xhL2UQsuJm+Z1Bz0gDuaotZE
         fWR9eX9fBp+6+yOc71juH0a3xEtmHiCJ3i2Cmwd3nrWLVjj79Bc3LuTOwS4dj+z30CNq
         th3PiuZNshQLEg+ZeCIIqkTRb+EL0h4QHzP7REvf6SUoZVusLpv3Tvq4bZmlaeZjBgly
         fnUQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXXfk9AQIacvsvFLrj7IwyrdZvueLnX92Vhc0Uk14AyREb0I2jJ
	1x+iuYJDyQlRX94hN5RCVkg=
X-Google-Smtp-Source: APXvYqwd10tSO64L8VoF0NHHuX3c9Zy4q8AEHGO0EkX3Y3TpTRmMMkGCPVCWLfzVnGkoMX/JM+W+tw==
X-Received: by 2002:a67:d88b:: with SMTP id f11mr365861vsj.212.1575428842360;
        Tue, 03 Dec 2019 19:07:22 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:c107:: with SMTP id d7ls464125vsj.16.gmail; Tue, 03 Dec
 2019 19:07:21 -0800 (PST)
X-Received: by 2002:a67:6d03:: with SMTP id i3mr386323vsc.56.1575428841943;
        Tue, 03 Dec 2019 19:07:21 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1575428841; cv=none;
        d=google.com; s=arc-20160816;
        b=UrC+ktt0rFHQ7t8KmWq+6e5hTxXwXzH/8OET12FHYaW1jNMobLS7/oWHwJ/jpMLT9p
         nkVj0C1/ELegpRwWX2YDr7aG8XDRrOsP1KcaHTuFRV+doBmPx0aiAm8fOPxxPEh11y+w
         OkJXk4+WypN6iDTXLo0suZFjt0XZ/C+na3w8vg8L3tuOexxtccz6u088ITEvkjnRfKsD
         LsPHb89C+yUUBPyNo5Y+vDCgMm/S9wWDMddRu3Inne1wuUh1yvOLQBpfisuwso1S+eQJ
         DYEcb1A3osS8CQcI2jdUSsi2JT9K75tJp99mCkg6U+/Kmx3hNWrf6LcR0JBDX5dBJnK9
         /TBw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:dkim-signature:dkim-signature;
        bh=5WOG3NzKs0U1/5ZDqShHWDkbk09ehHD5DTd/XocGZjk=;
        b=zPQzCtPLqV+gzC3uRx+7gJgUwMItcSw9ascIIJT9IYSTfdjmNjUdA/L8/sDF0iwj+3
         PYJ9nL8Jshm1gKwOQhJW7JM4WGIJHx2n0syBgNNO+ClOaX3KFvw6t5O3Ev/CR6ARPoR3
         mgXcIK4Od6ETf5OWhyHzOSCDIQVnYs6xtZolk28qQgEscFYB0FRwVgTJXtplhgZt9qTc
         nsyV0pkNwDtkCkXAnOcaLJ7Tgd2yFlzUgkZ5evgvYH5/AdUbAQHMYhWV/kV9BYqAeZhG
         303kg0MbobqZNLkE8FDouk2lQkXOk8qnmtVdS0PnZQav/wsK9fS2KYkIt80BECVEd9dz
         SqNw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@pobox.com header.s=sasl header.b=CABelTWk;
       dkim=temperror (no key for signature) header.i=@fluxnic.net header.s=2016-12.pbsmtp header.b=ZqUz3GeK;
       spf=pass (google.com: domain of nico@fluxnic.net designates 173.228.157.52 as permitted sender) smtp.mailfrom=nico@fluxnic.net
Received: from pb-smtp20.pobox.com (pb-smtp20.pobox.com. [173.228.157.52])
        by gmr-mx.google.com with ESMTPS id j9si374301vki.3.2019.12.03.19.07.21
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 03 Dec 2019 19:07:21 -0800 (PST)
Received-SPF: pass (google.com: domain of nico@fluxnic.net designates 173.228.157.52 as permitted sender) client-ip=173.228.157.52;
Received: from pb-smtp20.pobox.com (unknown [127.0.0.1])
	by pb-smtp20.pobox.com (Postfix) with ESMTP id 6C080B78C0;
	Tue,  3 Dec 2019 22:07:20 -0500 (EST)
	(envelope-from nico@fluxnic.net)
Received: from pb-smtp20.sea.icgroup.com (unknown [127.0.0.1])
	by pb-smtp20.pobox.com (Postfix) with ESMTP id 52EDEB78BF;
	Tue,  3 Dec 2019 22:07:20 -0500 (EST)
	(envelope-from nico@fluxnic.net)
Received: from yoda.home (unknown [24.203.50.76])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by pb-smtp20.pobox.com (Postfix) with ESMTPSA id 2AFCCB78BE;
	Tue,  3 Dec 2019 22:07:17 -0500 (EST)
	(envelope-from nico@fluxnic.net)
Received: from xanadu.home (xanadu.home [192.168.2.2])
	by yoda.home (Postfix) with ESMTPSA id 521B52DA0206;
	Tue,  3 Dec 2019 22:07:15 -0500 (EST)
Date: Tue, 3 Dec 2019 22:07:15 -0500 (EST)
From: Nicolas Pitre <nico@fluxnic.net>
To: Nick Desaulniers <ndesaulniers@google.com>
cc: Manoj Gupta <manojgupta@google.com>, 
    Nathan Chancellor <natechancellor@gmail.com>, 
    Russell King - ARM Linux <linux@armlinux.org.uk>, 
    clang-built-linux <clang-built-linux@googlegroups.com>, 
    Kees Cook <keescook@chromium.org>, "# 3.4.x" <stable@vger.kernel.org>, 
    Linux ARM <linux-arm-kernel@lists.infradead.org>, 
    LKML <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH] arm: explicitly place .fixup in .text
In-Reply-To: <CAKwvOdmAFp=p=z8bhaRHf8uRhUBKpoAYtissyLTk5DC8f-=BUw@mail.gmail.com>
Message-ID: <nycvar.YSQ.7.76.1912032147340.17114@knanqh.ubzr>
References: <20191122185522.20582-1-ndesaulniers@google.com> <nycvar.YSQ.7.76.1911291614480.8537@knanqh.ubzr> <CAKwvOdmAFp=p=z8bhaRHf8uRhUBKpoAYtissyLTk5DC8f-=BUw@mail.gmail.com>
User-Agent: Alpine 2.21 (LFD 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Pobox-Relay-ID: 2D9A5A48-1643-11EA-92BA-B0405B776F7B-78420484!pb-smtp20.pobox.com
X-Original-Sender: nico@fluxnic.net
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@pobox.com header.s=sasl header.b=CABelTWk;       dkim=temperror (no
 key for signature) header.i=@fluxnic.net header.s=2016-12.pbsmtp
 header.b=ZqUz3GeK;       spf=pass (google.com: domain of nico@fluxnic.net
 designates 173.228.157.52 as permitted sender) smtp.mailfrom=nico@fluxnic.net
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

On Tue, 3 Dec 2019, Nick Desaulniers wrote:

> On Fri, Nov 29, 2019 at 1:33 PM Nicolas Pitre <nico@fluxnic.net> wrote:
> >
> > On Fri, 22 Nov 2019, Nick Desaulniers wrote:
> >
> > > From: Kees Cook <keescook@chromium.org>
> > >
> > > There's an implicit dependency on the section ordering of the orphaned
> > > section .fixup that can break arm_copy_from_user if the linker places
> > > the .fixup section before the .text section. Since .fixup is not
> > > explicitly placed in the existing ARM linker scripts, the linker is free
> > > to order it anywhere with respect to the rest of the sections.
> > >
> > > Multiple users from different distros (Raspbian, CrOS) reported kernel
> > > panics executing seccomp() syscall with Linux kernels linked with LLD.
> > >
> > > Documentation/x86/exception-tables.rst alludes to the ordering
> > > dependency. The relevant quote:
> > >
> > > ```
> > > NOTE:
> > > Due to the way that the exception table is built and needs to be ordered,
> > > only use exceptions for code in the .text section.  Any other section
> > > will cause the exception table to not be sorted correctly, and the
> > > exceptions will fail.
> > >
> > > Things changed when 64-bit support was added to x86 Linux. Rather than
> > > double the size of the exception table by expanding the two entries
> > > from 32-bits to 64 bits, a clever trick was used to store addresses
> > > as relative offsets from the table itself. The assembly code changed
> > > from::
> > >
> > >     .long 1b,3b
> > >   to:
> > >           .long (from) - .
> > >           .long (to) - .
> > >
> > > and the C-code that uses these values converts back to absolute addresses
> > > like this::
> > >
> > >         ex_insn_addr(const struct exception_table_entry *x)
> > >         {
> > >                 return (unsigned long)&x->insn + x->insn;
> > >         }
> > > ```
> > >
> > > Since the addresses stored in the __ex_table are RELATIVE offsets and
> > > not ABSOLUTE addresses, ordering the fixup anywhere that's not
> > > immediately preceding .text causes the relative offset of the faulting
> > > instruction to be wrong, causing the wrong (or no) address of the fixup
> > > handler to looked up in __ex_table.
> >
> > This explanation makes no sense.
> >
> > The above is valid only when ARCH_HAS_RELATIVE_EXTABLE is defined. On
> > ARM32 it is not, nor would it make sense to be.
> 
> Hmm...I thought that was the smoking gun. From the description in
> Documentation, I thought they meant that exception table entry lookup
> was changed to be homogeneous for 32b AND 64b arch's, but as you point
> out they're not.  Now with the reference to ARCH_HAS_RELATIVE_EXTABLE,
> I know to look through:
> include/asm-generic/extable.h
> include/linux/extable.h
> lib/extable.c
> kernel/extable.c
> arch/arm/mm/extable.c
> arch/arm/mm/fault.c (__do_kernel_fault() calls fixup_exception(),
> which is of interest).
> 
> Looks like the exception table is sorted by address of faulting
> instruction, then binary searched when an exception occurs.  Seems the
> exception table is like an array of pairs of addresses (address of
> faulting instruction from the get_user() call, address of fixup
> handler) (when !ARCH_HAS_RELATIVE_EXTABLE), IIUC.

Exact. And those are absolute addresses.

To save on memory footprint, this table was made into relative addresses 
on 64-bit targets with the restriction that the relative offsets have to 
fit in a 32-bit value and not be negative. On 32-bit targets there is no 
point using relative addresses as the absolute addresses use only 32 
bits already, and then we don't have to compute the absolute address at 
run time.

> Reviewing the logs from the bugreport
> (https://bugs.chromium.org/p/chromium/issues/detail?id=1020633#c44)
> indeed the error string looks like the error message from
> __do_kernel_fault() in arch/arm/mm/fault.c where a call to
> fixup_exceptions() in arch/arm/mm/extable returned 1 because the call
> to search_exception_tables() in kernel/extable.c returned NULL.
> 
> So I was right that `no address of the fixup handler to (be) looked up
> in __ex_table`, but not quite right about *why* it fails to be looked
> up.
> 
> search_exception_tables() in kernel/extable.c calls 3 functions:
> 1. search_kernel_exception_table()
> 2. search_module_extables()
> 3. search_bpf_extables()
> 
> So the next question is which one of the above should have found the
> exception table entry, and why did it not when LLD placed the orphaned
> .fixup section BEFORE .text?  All three of the above do some
> processing on the address but in the end all call search_extable().
> 
> I really don't think kernel modules are involved.
> 
> Since we're observing the fault via a call to seccomp(), which IIUC
> takes a BPF program when setting a filter (SECCOMP_SET_MODE_FILTER),
> I'm curious to look into search_bpf_extables() first.  Maybe
> constructing a BPF program involves insertion of special exception
> handler?  Looks like bpf programs are stored in an rb_tree called
> bpf_tree.  They have an auxiliary field that contains a pointer to an
> exception table entry.  "Auxiliary" makes it sounds optional, and the
> only assignment I can find to this field is in
> arch/x86/net/bpf_jit_comp.c, so I doubt it's relevant for arm.  It
> also just looks like it's zero initialized (bpf_prog_alloc_no_stats()
> in kernel/bpf/core.c) for arch generic code.
> 
> That leaves just search_kernel_exception_table().  I wonder if it
> fails because we put garbage entries in, or sorted it improperly?

Well, if you can reproduce the issue (would be very helpful) then you 
can add some printk to log search_exception_tables() and figure out for 
sure actually which category is involved here. Unlike with user space, 
kernel exceptions are relatively rare events and they shouldn't flood 
your log.

> Oh, and messing around with grep, it looks like entries to the
> exception table can be sorted at build time rather than boot time via
> CONFIG_BUILDTIME_EXTABLE_SORT?
> 
> I don't see the pr_notice from sort_main_extable() (kernel/extable.c
> called from start_kernel() in init/main.c) in the bugreports:
> https://bugs.chromium.org/p/chromium/issues/attachmentText?aid=421842
> https://github.com/ClangBuiltLinux/linux/issues/282
> (But IIRC, the log level may not be set to display these).
> 
> CONFIG_BUILDTIME_EXTABLE_SORT is selected by arch/arm/Kconfig if
> CONFIG_MMU, which I highly suspect is already selected for the above
> two reports. (Would an arm32 based chromebook not have an MMU? I doubt
> it.)
> 
> So there may be an ordering dependency in scripts/sortextable.{c|h}?
> Neither mention `fixup`.
> 
> Will continue debugging more tomorrow or later this week, but please
> stop me if any of the above is also incorrect.  Some ideas for further
> experiments:
> - scripts/check_extable.sh sounds like some kind of validator.
> Manoj/Nathan, I wonder if you linked the problematic kernel with LLD
> than ran `./scripts/check_extable.sh vmlinux` if it would warn? Dunno
> about all those command line flags though.
> - if we apply a similar diff to the patch I posted, but force .fixup
> to be before .text for BFD (as LLD is placing the orphaned section
> currently), relinked with BFD and could reproduce the issue, that
> seems like proof about the implicit section ordering.
> ```
> diff --git a/arch/arm/kernel/vmlinux.lds.S b/arch/arm/kernel/vmlinux.lds.S
> index 319ccb10846a..adfb5297f359 100644
> --- a/arch/arm/kernel/vmlinux.lds.S
> +++ b/arch/arm/kernel/vmlinux.lds.S
> @@ -58,6 +58,7 @@ SECTIONS
>  #ifdef CONFIG_ARM_MPU
>         . = ALIGN(PMSAv8_MINALIGN);
>  #endif
> +       .fixup : { *(.fixup) }
>         .text : {                       /* Real text segment            */
>                 _stext = .;             /* Text and read-only data      */
>                 ARM_TEXT
> ```
> 
> -- 
> Thanks,
> ~Nick Desaulniers
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/nycvar.YSQ.7.76.1912032147340.17114%40knanqh.ubzr.
