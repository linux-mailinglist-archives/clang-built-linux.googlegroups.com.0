Return-Path: <clang-built-linux+bncBD63HSEZTUIBBHMEZ33QKGQE37G4WBA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33b.google.com (mail-ot1-x33b.google.com [IPv6:2607:f8b0:4864:20::33b])
	by mail.lfdr.de (Postfix) with ESMTPS id E9345207952
	for <lists+clang-built-linux@lfdr.de>; Wed, 24 Jun 2020 18:41:02 +0200 (CEST)
Received: by mail-ot1-x33b.google.com with SMTP id t10sf1676291otl.19
        for <lists+clang-built-linux@lfdr.de>; Wed, 24 Jun 2020 09:41:02 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1593016862; cv=pass;
        d=google.com; s=arc-20160816;
        b=FdyLvTr9W7JVUJ0GQEja6ZMN6q5/RD9aQuANSpbWgpBvJeuDsAVCrPulVD2QyjPlNz
         Se208a+EJIQZBSXRdaQ1cMHJsNpWWf1rBfdSmXoOe+bvAAFteH/qcYSYQw6wjKOFBnFK
         v6d72OLLDGFpo4NaqLFwgP6m7nr8puJKiWP0Jm5Fd1dbQndqzwcEWXAyiD35+TSXuKVF
         aYTeztpUR49XdDHcG52jIqa5QnAaM9W8TBd0Qt27CPg8qYL55n2j6y/Dm/Kcm2csqhAO
         wUaA56otBGUQsjzJHRXNF4pguvZjzWRb6gxty0MG/+NWxH/E4M9NqjfTwCezh7w5YTiT
         1C2w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=obKPctF0Kdmtjd0h0+cwjU8G4N1HDzZI4FBz0whTrsE=;
        b=p3vZAPNAyrEz6KWhGVnK5mckK3ykHvmlSj/eLpb3MmRkm7FzKjAciYktfM8Uj9vl/X
         XTaOJkig0PM8GbzC+j9XogAy89nS4BVzNP8gunLizhcp0y8ugDef3Ssizb0xPiatlZj7
         IRdlqktWUfkRRoWhidZ+opX/Yz4ScgCoFH1kPQM269vT9G7qmY3S4fKYT0FSdYHXdjc5
         yjG9EDmSIPH2ZM5YKGAkbgp1UGLRE+W+CDUlvPW+xTOJw+9Qm8fvLGFrVC/xCeah3oKu
         zFQmabz7nGP8o1MyfYReBBWLJQKRRQLzG4tMmvlvHtEt4ULU5pMGvjdKqOrJoYCOWwZG
         me2g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=bZztcT5W;
       spf=pass (google.com: domain of ardb@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=ardb@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=obKPctF0Kdmtjd0h0+cwjU8G4N1HDzZI4FBz0whTrsE=;
        b=dqFQnx4EsTYLZh+UNrbLlS3GxpCq46UlaR38V6y2aXwxKZ3pujMVLXeobD/DY6HSQf
         E2/b9upQdouCV9IQMKQHEjqYcGbB6ApboQt/fNhS0+nTQKvs2ilBqBY10v6WkYNDShNY
         vpUjCklQ/zXxra1eG6NF1I+1aoOUxIuwjnzyN9GuHGNPmGjubm67DSQ4AemkNGkB9SOE
         H9WL8DC27+WKmJHM4zcC3Ov8Ai31zPg42gtiM7IOjG2Ubz5wJma7fag+HMt62znR5z/t
         /zCl7TVdlt2F7BxzU+BHY1ec+4dBRI60es0SFJaKAsbiQVsqA9maCWluXsdPjfRZbvzx
         Nf6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=obKPctF0Kdmtjd0h0+cwjU8G4N1HDzZI4FBz0whTrsE=;
        b=r6vZx5SuGpDYsQaKqf11swOXn2pl+Dyizl6cbR3ocRFx0BBUL6sCyE59UYD/WW1Dih
         PHqEVMcbr7c1Iiiz33ptA/Li3HKrzHWDkvg97IPnhc0nna4zl4YwXlAqlH+8yih9n56h
         ao8SNzOncEo9GLYCaPYaPeoqOl/6ZaXZchXpA1eLe9mgazhZMejgS1uE6i7I2z+7CJMb
         uUiUz8N9lgf76U1+ptzdeevYzrgG9OOO/ai2CHvRJd7OLK50oiIX/FvzaQxp/02xXO9I
         Mi8nxFhIHCny3y+kRb5g4RuwJgoSe5p2PeGCrHrQS8NIrhVDKpMzR3qByAQ9/gOsACxH
         0sSQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531P7IIzMjMof1jkVFC3wuATl1Ud0MovFswNTM/hrQnMR6CRmKib
	Px21UuHiS4lr/PS22JNsi2Y=
X-Google-Smtp-Source: ABdhPJzmcKs3QGhpLvZHfPbv1+akM5dBuX1oj7LmXj6aorP5G+wnPoyUpy0UvduVyCV9T9iDsjHHdA==
X-Received: by 2002:a9d:6013:: with SMTP id h19mr24179682otj.50.1593016861872;
        Wed, 24 Jun 2020 09:41:01 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:5788:: with SMTP id l130ls531315oib.2.gmail; Wed, 24 Jun
 2020 09:41:01 -0700 (PDT)
X-Received: by 2002:aca:f5c7:: with SMTP id t190mr21297630oih.157.1593016861574;
        Wed, 24 Jun 2020 09:41:01 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1593016861; cv=none;
        d=google.com; s=arc-20160816;
        b=nfx7OqErB6g12HZRAj/T7FA9lkAUYwC5YXGDDUTReBeArCyaLTB1Ows0HXhsG2ffXy
         122S6fde8wgDTYoCQTWGTQg+pyxBfkuSeG4F2KKTYHS3TTs6NzMam/KrmF8tYmr34IHm
         6hQbmUDNIW3lq1Nz7TkqDEAHo6vlacMrrq3HI3NJ3EORf9EArCxuRvWvtn1IVRehG51g
         REA0+RsQIhOesBwlwNB6W9EsGlTzh0gce3hq72n3Z3kjkZEzVpG+JaQ2z/Cq0lOIt1rQ
         Uki/gZ6Q8j3r0aawPB7Gl8NxiNUemzos3CzCg+MWIuaee7gSqcYv/HIzae8G5M+SG91A
         vr7w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=uvjYsXkxFUGkhiFTCWXt307TvMmTMTKMKbqCMztuBls=;
        b=XrYjSSJJ/ME+fAMUvmdjCwo0XE+Ezj3mszc44dVF4gy82EfOhu68zcDAIE+h6MmaTk
         nV15WauRmRHRNHlMvSuRS5pVaVQIgnpFt3xy4gZsOKSblnE084ODvxoJWdg9nr8pcpKh
         pzNR7iubBFp7RXB2XMoods/KSCvo8xQ8seTBJB5fzG4FPnOddTzpGmEmHOqVr/D7H7pw
         bxoTPiQurUQ1VZGtJqn3H9dBKMeh6ezN27CYznh3NynXpsuOD62Or1Bj+nU4x49tsw8T
         9c4CCm/PsfCvzLHmHioPqalq9xioP/jWH4Wq3OjRnUrP0raR04lRPMhmhdumE67GEAth
         wITw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=bZztcT5W;
       spf=pass (google.com: domain of ardb@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=ardb@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id n6si498658oor.1.2020.06.24.09.41.01
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 24 Jun 2020 09:41:01 -0700 (PDT)
Received-SPF: pass (google.com: domain of ardb@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from mail-oi1-f182.google.com (mail-oi1-f182.google.com [209.85.167.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 90C86212CC
	for <clang-built-linux@googlegroups.com>; Wed, 24 Jun 2020 16:41:00 +0000 (UTC)
Received: by mail-oi1-f182.google.com with SMTP id w17so1685346oie.6
        for <clang-built-linux@googlegroups.com>; Wed, 24 Jun 2020 09:41:00 -0700 (PDT)
X-Received: by 2002:aca:b241:: with SMTP id b62mr19900869oif.47.1593016859864;
 Wed, 24 Jun 2020 09:40:59 -0700 (PDT)
MIME-Version: 1.0
References: <20200624014940.1204448-1-keescook@chromium.org>
 <20200624014940.1204448-4-keescook@chromium.org> <20200624033142.cinvg6rbg252j46d@google.com>
 <202006232143.66828CD3@keescook> <20200624104356.GA6134@willie-the-truck>
 <CAMj1kXHBT4ei0xhyL4jD7=CNRsn1rh7w6jeYDLjVOv4na0Z38Q@mail.gmail.com>
 <202006240820.A3468F4@keescook> <CAMj1kXHck12juGi=E=P4hWP_8vQhQ+-x3vBMc3TGeRWdQ-XkxQ@mail.gmail.com>
 <202006240844.7BE48D2B5@keescook> <CAMj1kXHqBs44uukRSdFwA_hcmX_yKVfjqdv9RoPbbu-6Wz+RaA@mail.gmail.com>
 <20200624162919.GH25945@arm.com>
In-Reply-To: <20200624162919.GH25945@arm.com>
From: Ard Biesheuvel <ardb@kernel.org>
Date: Wed, 24 Jun 2020 18:40:48 +0200
X-Gmail-Original-Message-ID: <CAMj1kXE1zWCjVt8iS4fv2gQHzrTF6=Ggd16nm+4TNWAG3zSWAQ@mail.gmail.com>
Message-ID: <CAMj1kXE1zWCjVt8iS4fv2gQHzrTF6=Ggd16nm+4TNWAG3zSWAQ@mail.gmail.com>
Subject: Re: [PATCH v3 3/9] efi/libstub: Remove .note.gnu.property
To: Dave Martin <Dave.Martin@arm.com>
Cc: Kees Cook <keescook@chromium.org>, Mark Rutland <mark.rutland@arm.com>, 
	linux-arch <linux-arch@vger.kernel.org>, linux-efi <linux-efi@vger.kernel.org>, 
	Arnd Bergmann <arnd@arndb.de>, Fangrui Song <maskray@google.com>, Peter Collingbourne <pcc@google.com>, 
	Catalin Marinas <catalin.marinas@arm.com>, Masahiro Yamada <masahiroy@kernel.org>, X86 ML <x86@kernel.org>, 
	Nick Desaulniers <ndesaulniers@google.com>, Russell King <linux@armlinux.org.uk>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Arvind Sankar <nivedita@alum.mit.edu>, 
	Ingo Molnar <mingo@redhat.com>, James Morse <james.morse@arm.com>, 
	Thomas Gleixner <tglx@linutronix.de>, Borislav Petkov <bp@suse.de>, Will Deacon <will@kernel.org>, 
	Nathan Chancellor <natechancellor@gmail.com>, Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ardb@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=bZztcT5W;       spf=pass
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

On Wed, 24 Jun 2020 at 18:29, Dave Martin <Dave.Martin@arm.com> wrote:
>
> On Wed, Jun 24, 2020 at 05:48:41PM +0200, Ard Biesheuvel wrote:
> > On Wed, 24 Jun 2020 at 17:45, Kees Cook <keescook@chromium.org> wrote:
> > >
> > > On Wed, Jun 24, 2020 at 05:31:06PM +0200, Ard Biesheuvel wrote:
> > > > On Wed, 24 Jun 2020 at 17:21, Kees Cook <keescook@chromium.org> wrote:
> > > > >
> > > > > On Wed, Jun 24, 2020 at 12:46:32PM +0200, Ard Biesheuvel wrote:
> > > > > > I'm not sure if there is a point to having PAC and/or BTI in the EFI
> > > > > > stub, given that it runs under the control of the firmware, with its
> > > > > > memory mappings and PAC configuration etc.
> > > > >
> > > > > Is BTI being ignored when the firmware runs?
> > > >
> > > > Given that it requires the 'guarded' attribute to be set in the page
> > > > tables, and the fact that the UEFI spec does not require it for
> > > > executables that it invokes, nor describes any means of annotating
> > > > such executables as having been built with BTI annotations, I think we
> > > > can safely assume that the EFI stub will execute with BTI disabled in
> > > > the foreseeable future.
> > >
> > > yaaaaaay. *sigh* How long until EFI catches up?
> > >
> > > That said, BTI shouldn't _hurt_, right? If EFI ever decides to enable
> > > it, we'll be ready?
> > >
> >
> > Sure. Although I anticipate that we'll need to set some flag in the
> > PE/COFF header to enable it, and so any BTI opcodes we emit without
> > that will never take effect in practice.
>
> In the meantime, it is possible to build all the in-tree parts of EFI
> for BTI, and just turn it off for out-of-tree EFI binaries?
>

Not sure I understand the question. What do you mean by out-of-tree
EFI binaries? And how would the firmware (which is out of tree itself,
and is in charge of the page tables, vector table, timer interrupt etc
when the EFI stub executes) distinguish such binaries from the EFI
stub?


> If there's no easy way to do this though, I guess we should wait for /
> push for a PE/COFF flag to describe this properly.
>

Yeah good point. I will take this to the forum.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAMj1kXE1zWCjVt8iS4fv2gQHzrTF6%3DGgd16nm%2B4TNWAG3zSWAQ%40mail.gmail.com.
