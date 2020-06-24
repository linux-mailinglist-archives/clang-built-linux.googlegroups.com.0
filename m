Return-Path: <clang-built-linux+bncBD63HSEZTUIBBMGEZ33QKGQE22PIGBI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43d.google.com (mail-pf1-x43d.google.com [IPv6:2607:f8b0:4864:20::43d])
	by mail.lfdr.de (Postfix) with ESMTPS id 701E3207BD9
	for <lists+clang-built-linux@lfdr.de>; Wed, 24 Jun 2020 20:57:54 +0200 (CEST)
Received: by mail-pf1-x43d.google.com with SMTP id p18sf2037177pfq.14
        for <lists+clang-built-linux@lfdr.de>; Wed, 24 Jun 2020 11:57:54 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1593025073; cv=pass;
        d=google.com; s=arc-20160816;
        b=pq44XhqnQeTBmNNjuGUN5qvaOYYH0VYc9VFlp5pWpnKw/3nVZdx9zw7IZ2cR/IqZLe
         Fm4BJo1bxzvxD1T+D405zbRF788iBEAys8L9MS7vZg0L5JwsZnZtdCwv7oGxiz5oYm94
         lCAiUpLMvkZkXsbS/kQ5X5W0yRs5/kxiYKNV03ZBtPCbDm0bTSGserMqhzWjSDSo79qO
         ZlGmdWk2B2Pu+ZpRkg+QNUrHdFACpoN6Yt6VVazKjODgHQrb1hQ8TjVjYRTsRfracdq0
         sn6slRXIXK/X/HcLL1jLGhHkwkC95G+MHNGU9WgcBnDWE/QCFUZ3GHpLFmdlvMGpId0D
         wNDg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=0aROy/hRPAd9fCNcKxBjrSg2uFgr7n1VUjrtY8wxxXM=;
        b=lV1Xp6bi/zlkfJIOyYTP8NphtcA3kRvAi2oYeA6+uXeKyiFkS/bhx8PyUdh7nZDgYS
         mWF4Cz9uveDNKPvwYi28mI/ss+j644X99JIxRkzmOI6qBPOMVvUr6Ce0R2EUxGWO1JVg
         oaFxekU4Ate36ZAQ0JVgRb8/CkLrwKoe7nvekB8etD3MZafNYIwTYBS6e0gSlvNmnlJ/
         qjBSJSbcRbCz3V0OONjcMvxK+fJVdBaXeMjCJQFU029xr3WdhA22y6YeK32j5ZUTHdRc
         Izt816SVmM6AGNIL0n4Q15puIXZRrtFLdMQGLxwFZzadx1o8lrp6NapX1yDr3DbV7zrH
         s74Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=ure8PVgT;
       spf=pass (google.com: domain of ardb@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=ardb@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=0aROy/hRPAd9fCNcKxBjrSg2uFgr7n1VUjrtY8wxxXM=;
        b=fcGUnwnchKcRkNaaqVLYLdQmrYOEktTlun3+uIkrd0wuWbYhRkG0RnC114xiPqoYAT
         a02qGU3V0K704tBBeBOZ9U+RZkg9XHy5eKP9vnOYCoO2cR+2Vjlv5fkXrzIYeNyGbq0a
         0LmLxFx0Yr76WcFAgUA2HK1lqO+ag6mGcrwgLl7UVJoIMjkfa4TwTR36edPzWYGc2EM+
         OiN2mcIm6/coSSOxDBTHUX/Rawww3nYYGsqTIn/+4p8FF+3JF04CT1yEwVwecsPgO1rk
         mRuCq5+s1/HwM3Ct/Q8ACQ+aLGny0RSPDXC3thYV91hcdjK9sotoYRrm7dmInlVDD3IE
         lrRA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=0aROy/hRPAd9fCNcKxBjrSg2uFgr7n1VUjrtY8wxxXM=;
        b=Fq7OZEuwl6tUfUWb2gTLEQfw0BL7AENNq1RvEL5Ohu+yH70QXAWxqYWekmgjkj/841
         08dREsMofLwd7sW9XRxPRVyZc7cGtMTOMV90xIp+oCk8VfY83+l454rbEqo43OrdppYY
         wv1F7gdKdVlZZKZ+myQxwJfnPK0iQeNL7/TCcWOxq9RGiu16YAi4gmwKB9ragIG8UeSa
         ZwRhIRH6P+6VGby5vbxwcret4H8ENhsHXuGjS2PhH6fM1/AQVela+ZzEet4Gn5qztmdZ
         5mIWkMJxFvBcw0TGW37W4B+F+GJMfdHRmMAQ0nAkDM/fETHoiMuj2Jkuu6ToCEhbkmiv
         4B/g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530TcP4V6871RcBtpXS2cuXuTKjqXVxyrcm7q8TX9ekPSPJqI5hb
	ICx58+uDvqd6Xh3ATMTUSNA=
X-Google-Smtp-Source: ABdhPJwT6HJ3wkh8ZxdUZ2ZLzPXsCbn+6x85HSCcBWkiRBE202fijisrvxJzKG07a1nY+gx1T8qZMw==
X-Received: by 2002:a62:ed02:: with SMTP id u2mr30229250pfh.283.1593025073063;
        Wed, 24 Jun 2020 11:57:53 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:86c3:: with SMTP id y3ls1145973pjv.0.gmail; Wed, 24
 Jun 2020 11:57:52 -0700 (PDT)
X-Received: by 2002:a17:90a:e7c2:: with SMTP id kb2mr9901336pjb.69.1593025072643;
        Wed, 24 Jun 2020 11:57:52 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1593025072; cv=none;
        d=google.com; s=arc-20160816;
        b=fZHW7NR7uwGkpbHI2w9OeS/EcgTubiCNXFr1d06LkJyp2aQBMMbcoq3SlxBrgdJNDL
         evYV6EiqXosLoK9fBTcIKhM8a2f0zlowFhMiaxohKQd0yprfuHQFPEnGer7ix4SN8PwP
         0yw601PDmJ5i8HQRC9xgESCVoIj2CbP1rrrnZlswmFMgjFtgREL1dUFrtlL28VrYn70U
         AgUMQmrwQyczi5EIbmOTx2rC80yzodeJcmXwjCXesqmjHGm2pf3Mk1wRphPr/9s+p0wz
         LQSItswBeUrFVYcFkRG3qZiTEL1sMYRg06dilHxnosibTtyxJLe5NoDhIpn900ya2QrD
         1D1w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=mbhkDDq6JZaFKSRcGFflIo33y/Uwb1vhgFLrkko6Pic=;
        b=bhwdOQXgLT120YkV2dnuWwbggJS8Ixp9Xl2OJm0vbZIVEU73nNPZ0Y3TtUyX/LTmXv
         gQYOVv5a+aF38jLvb4H7fwGV6Ej2gmG/H7w8r0G4AfwrGAOa+wDrpU2cZ6SU6G8DHiMt
         cg/iL2/ZUwmT4bZj2U/1syla7vFnTGmpep8r9Sxe9o+RPM0D0VVPCbk+UihsuL/9Y2Jr
         e9ZA89gid1Ov+t1tagOlzfLIYV9+Uey3T0vNSv0mWjC65Bg+RJdgg5E44wU1/YSjFd/b
         NjcNBt+WV6nnLfaiZgcL7dTBoWQsObL9Q9E0VWVUHWqeK8zm16UERbLE7P1PBCrkJhqY
         eldg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=ure8PVgT;
       spf=pass (google.com: domain of ardb@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=ardb@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id kb2si238508pjb.1.2020.06.24.11.57.52
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 24 Jun 2020 11:57:52 -0700 (PDT)
Received-SPF: pass (google.com: domain of ardb@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from mail-ot1-f45.google.com (mail-ot1-f45.google.com [209.85.210.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 4705D20A8B
	for <clang-built-linux@googlegroups.com>; Wed, 24 Jun 2020 18:57:52 +0000 (UTC)
Received: by mail-ot1-f45.google.com with SMTP id 64so2940032oti.5
        for <clang-built-linux@googlegroups.com>; Wed, 24 Jun 2020 11:57:52 -0700 (PDT)
X-Received: by 2002:a9d:688:: with SMTP id 8mr3612674otx.108.1593025071500;
 Wed, 24 Jun 2020 11:57:51 -0700 (PDT)
MIME-Version: 1.0
References: <20200624033142.cinvg6rbg252j46d@google.com> <202006232143.66828CD3@keescook>
 <20200624104356.GA6134@willie-the-truck> <CAMj1kXHBT4ei0xhyL4jD7=CNRsn1rh7w6jeYDLjVOv4na0Z38Q@mail.gmail.com>
 <202006240820.A3468F4@keescook> <CAMj1kXHck12juGi=E=P4hWP_8vQhQ+-x3vBMc3TGeRWdQ-XkxQ@mail.gmail.com>
 <202006240844.7BE48D2B5@keescook> <CAMj1kXHqBs44uukRSdFwA_hcmX_yKVfjqdv9RoPbbu-6Wz+RaA@mail.gmail.com>
 <20200624162919.GH25945@arm.com> <CAMj1kXE1zWCjVt8iS4fv2gQHzrTF6=Ggd16nm+4TNWAG3zSWAQ@mail.gmail.com>
 <20200624171613.GJ25945@arm.com> <CAMj1kXG+Xh=a1exFXuRJ9EYbT+0xnC=votGGX1dmzBgZgEaC-w@mail.gmail.com>
In-Reply-To: <CAMj1kXG+Xh=a1exFXuRJ9EYbT+0xnC=votGGX1dmzBgZgEaC-w@mail.gmail.com>
From: Ard Biesheuvel <ardb@kernel.org>
Date: Wed, 24 Jun 2020 20:57:40 +0200
X-Gmail-Original-Message-ID: <CAMj1kXFabTkfxMDT8zz1xbOpkuWQ2=1c37T3NeB0wvuCt4Op1A@mail.gmail.com>
Message-ID: <CAMj1kXFabTkfxMDT8zz1xbOpkuWQ2=1c37T3NeB0wvuCt4Op1A@mail.gmail.com>
Subject: Re: [PATCH v3 3/9] efi/libstub: Remove .note.gnu.property
To: Dave Martin <Dave.Martin@arm.com>
Cc: Mark Rutland <mark.rutland@arm.com>, linux-efi <linux-efi@vger.kernel.org>, 
	Catalin Marinas <catalin.marinas@arm.com>, Arvind Sankar <nivedita@alum.mit.edu>, 
	Will Deacon <will@kernel.org>, Nathan Chancellor <natechancellor@gmail.com>, 
	linux-arch <linux-arch@vger.kernel.org>, Fangrui Song <maskray@google.com>, 
	Masahiro Yamada <masahiroy@kernel.org>, X86 ML <x86@kernel.org>, 
	Russell King <linux@armlinux.org.uk>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Ingo Molnar <mingo@redhat.com>, 
	Borislav Petkov <bp@suse.de>, Kees Cook <keescook@chromium.org>, Arnd Bergmann <arnd@arndb.de>, 
	Thomas Gleixner <tglx@linutronix.de>, Peter Collingbourne <pcc@google.com>, 
	Linux ARM <linux-arm-kernel@lists.infradead.org>, 
	Nick Desaulniers <ndesaulniers@google.com>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, James Morse <james.morse@arm.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ardb@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=ure8PVgT;       spf=pass
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

On Wed, 24 Jun 2020 at 20:23, Ard Biesheuvel <ardb@kernel.org> wrote:
>
> On Wed, 24 Jun 2020 at 19:16, Dave Martin <Dave.Martin@arm.com> wrote:
> >
> > On Wed, Jun 24, 2020 at 06:40:48PM +0200, Ard Biesheuvel wrote:
> > > On Wed, 24 Jun 2020 at 18:29, Dave Martin <Dave.Martin@arm.com> wrote:
> > > >
> > > > On Wed, Jun 24, 2020 at 05:48:41PM +0200, Ard Biesheuvel wrote:
> > > > > On Wed, 24 Jun 2020 at 17:45, Kees Cook <keescook@chromium.org> wrote:
> > > > > >
> > > > > > On Wed, Jun 24, 2020 at 05:31:06PM +0200, Ard Biesheuvel wrote:
> > > > > > > On Wed, 24 Jun 2020 at 17:21, Kees Cook <keescook@chromium.org> wrote:
> > > > > > > >
> > > > > > > > On Wed, Jun 24, 2020 at 12:46:32PM +0200, Ard Biesheuvel wrote:
> > > > > > > > > I'm not sure if there is a point to having PAC and/or BTI in the EFI
> > > > > > > > > stub, given that it runs under the control of the firmware, with its
> > > > > > > > > memory mappings and PAC configuration etc.
> > > > > > > >
> > > > > > > > Is BTI being ignored when the firmware runs?
> > > > > > >
> > > > > > > Given that it requires the 'guarded' attribute to be set in the page
> > > > > > > tables, and the fact that the UEFI spec does not require it for
> > > > > > > executables that it invokes, nor describes any means of annotating
> > > > > > > such executables as having been built with BTI annotations, I think we
> > > > > > > can safely assume that the EFI stub will execute with BTI disabled in
> > > > > > > the foreseeable future.
> > > > > >
> > > > > > yaaaaaay. *sigh* How long until EFI catches up?
> > > > > >
> > > > > > That said, BTI shouldn't _hurt_, right? If EFI ever decides to enable
> > > > > > it, we'll be ready?
> > > > > >
> > > > >
> > > > > Sure. Although I anticipate that we'll need to set some flag in the
> > > > > PE/COFF header to enable it, and so any BTI opcodes we emit without
> > > > > that will never take effect in practice.
> > > >
> > > > In the meantime, it is possible to build all the in-tree parts of EFI
> > > > for BTI, and just turn it off for out-of-tree EFI binaries?
> > > >
> > >
> > > Not sure I understand the question. What do you mean by out-of-tree
> > > EFI binaries? And how would the firmware (which is out of tree itself,
> > > and is in charge of the page tables, vector table, timer interrupt etc
> > > when the EFI stub executes) distinguish such binaries from the EFI
> > > stub?
> >
> > I'm not an EFI expert, but I'm guessing that you configure EFI with
> > certain compiler flags and build it.
>
> 'EFI' is not something you build. It is a specification that describes
> how a conformant firmware implementation interfaces with a conformant
> OS.
>
> Sorry to be pedantic, but that is really quite relevant. By adhering
> to the EFI spec rigorously, we no longer have to care about who
> implements the opposite side, and how.
>
> So yes, of course there are ways to build the opposite side with BTI
> enabled, in a way that all its constituent pieces keep working as
> expected. A typical EDK2 based implementation of EFI consists of
> 50-100 individual PE/COFF executables that all get loaded, relocated
> and started like ordinary user space programs.
>
> What we cannot do, though, is invent our own Linux specific way of
> decorating the kernel's PE/COFF header with an annotation that
> instructs a Linux specific EFI loader when to enable the GP bit for
> the .text pages.
>
> > Possibly some standalone EFI
> > executables are built out of the same tree and shipped with the
> > firmware from the same build, but I'm speculating.  If not, we can just
> > run all EFI executables with BTI off.
> >
> > > > If there's no easy way to do this though, I guess we should wait for /
> > > > push for a PE/COFF flag to describe this properly.
> > > >
> > >
> > > Yeah good point. I will take this to the forum.
> >
> > In the interim, we could set the GP bit in EFI's page tables for the
> > executable code from the firmware image if we want this protection, but
> > turn it off in pages mapping the executable code of EFI executables.
> > This is better than nothing.
> >
>
> We need to distinguish between the EFI stub and the EFI runtime services here.
>
> The EFI stub consists of kernel code that executes in the context of
> the firmware, at which point the loader has no control whatsoever over
> page tables, vector tables, etc. This is the stage where the loading
> and starting of PE/COFF images takes place. If we want to enable BTI
> for code running in this context, we need PE/COFF annotations, as
> discussed above.
>
> The EFI runtime services are firmware code that gets invoked by the OS
> at runtime. Whether or not such code is emitted with BTI annotations
> is a separate matter (but should also be taken to the forum
> nonetheless), and does not need any changes at the PE/COFF level.
> However, for this code, I'd like the sandboxing to be much more
> rigorous than it is today, to the point where the security it provides

...  the security *bti* provides ...

> doesn't even matter deeply to the OS itself. (I had some patches a
> while ago that reused the KPTI infrastructure to unmap the entire
> kernel while EFI runtime services are in progress. There was also an
> intern in the team that implemented something similar on top of KVM)

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAMj1kXFabTkfxMDT8zz1xbOpkuWQ2%3D1c37T3NeB0wvuCt4Op1A%40mail.gmail.com.
