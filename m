Return-Path: <clang-built-linux+bncBDHYDDNWVUNRBJOYY74AKGQEVCATYLA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x838.google.com (mail-qt1-x838.google.com [IPv6:2607:f8b0:4864:20::838])
	by mail.lfdr.de (Postfix) with ESMTPS id 3873F22430C
	for <lists+clang-built-linux@lfdr.de>; Fri, 17 Jul 2020 20:21:26 +0200 (CEST)
Received: by mail-qt1-x838.google.com with SMTP id c5sf6821534qtv.20
        for <lists+clang-built-linux@lfdr.de>; Fri, 17 Jul 2020 11:21:26 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1595010085; cv=pass;
        d=google.com; s=arc-20160816;
        b=PntGg5z/IRaOkcK6i/GQJqpaYg7fdTTys2Kt17kCDWf8Bz52Oe6BD+n54+GidmzcBI
         TYzJIGeo+dMzD00nyMUrwm+X7+au830BTX+rBheMrkngQWLyVyiqi20xCED/Evu4gj00
         LbyR8wVV4uoiAJJX2QN2DzRLVDgEPOZJ5vAzcchyfnjastEvgQQllG7KYS6Zs/HBgUuZ
         ZI7eNaufqbdGjOuGqNxcjY+exjAZfGkYsbYTQBxtHi56oSZvUMxjahZ2NC2ahYZ43+cX
         CA0eLmdN8wsiOlxRtf96BzhrlTIIay/AQgxph4B0YflcK/X3QEIpXhfvXfbTJ7A0+hM9
         aZdg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :reply-to:in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=RGXqSMl+xMHwa8+nLPbTFNaDuWWub1eIEWtOwR0RrjU=;
        b=suKAXhyuuFPgh+7JKRYcpJc+e7tJ6iux0+QG52zBTwtnzL7zqZHeJhOZQGrCAGa8Lx
         b7nazRTOZFSAsgqoI2E4V+X2EIO1i/ryoBbbF3+yXHfQoyjmJcJRNKqWprRP/dHdS9Si
         abXC0sVoBMbFC8XbHi88Gu8ewFPtmPrAYDjnswBlQziOvDFnyV2a2AA64wajLI1NFY61
         Y1SEDUoF+Xmqy2FtOelwcm275427Nm0KsQ0L6iX+DAUf2+Lw6b1IO/ldK+TDXMdJ9c+L
         QmQEv+k6Sx8gELYXPFtJ/Sb9TJ0MzdUM+IINw3nwHKAHGAfVEw2JONUQAV1yGO6DIrJM
         Bk6A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=i+B1FN5s;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d42 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=RGXqSMl+xMHwa8+nLPbTFNaDuWWub1eIEWtOwR0RrjU=;
        b=n9tWff8VcFT3DvB1yUxrarJyn9M/H4SliH9GKw/xxrXwY4goc692Y4WH4qjFLyCgfJ
         oXAFUFfmWAaeZLltC/SYyTU7z6tOZf45Ksap4leRpx0sT4zmwpuRkJXOqMPCAhX9H+bH
         hjo8pPSU2R5RzGP0OaIswHhCkf4ksMaIIsTsSn3D2fu9T9Jja4vqcF5czAOEZEVzaE+B
         2F0IvFiWEn43dSZNDQ1emgtA5lwH9Gi9XmgBTGJCe9bnCPJyyZXc40Rhkr2e1fMmJnd9
         KzE7/sir/ql/bHCxcYnnjHVuo4ocQfmtunz+I2mTcAM7Ij5DWGiVphH/QVMRPuDlJA8W
         d15Q==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=RGXqSMl+xMHwa8+nLPbTFNaDuWWub1eIEWtOwR0RrjU=;
        b=EbZa15qPqmD479JPIk3LGXMJaGWcwhtddwlskJSyoKXtOXlZps3uW8coDu40lhiCsU
         OefJJ9aeZSwx33t2aUenFi6pQkN3bI1xkH5qoFa0oNklNPY4X2Ne9hvT39jFFQX+rm5+
         BI2A1YuNdINu47n89d8Tk1btFS1hKLqKg0BiaVdGHdAq31qK2ANoJevtepZxarQkvJuA
         p6ihqJCduSpNBT+s6nG0CfO5E3vNoKZ8flOxTn+JdxEZyUeAKj84xhyiOZZD1mD5hB3T
         MabREvU5DUdt+HJOdTS7HXanFkuaXsdirmJWYGzGiGnzvLLAHhdzQzGkzbeATdY6fK5s
         IUgA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to
         :reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=RGXqSMl+xMHwa8+nLPbTFNaDuWWub1eIEWtOwR0RrjU=;
        b=VTgEnk87RCwIV2Vd4tFaeFTtmyGnDFrwHMqlTS0m/pAaGm2cz38qibg8OnemI0UA+2
         Da86m4m/hXdzbqW7tH3qF3tUWkldEC7wE4SihGBwdRLunLyss22MQKutwyzvtBsF8hek
         gQ+yt9RdmW6H33vFEQBQJaxPXFiOfoncuWuu6RTBaGQ0DkLxvj8FEuEzIQ3PiOqTdt2n
         kr2MstLkP74H2egQzB8IL4eA5UQ30Ib+FzujR38lWfTs3pnuXNRTvpe+TylE9dIlEgEs
         TfygXT8x2cbvj8WMOyNZ7KEe2sjHz+RLoLTuJ+7oQA7cIIzzrDjBNBNKkPUNK96tkKiM
         X+NQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530Walp4XgLa4wpXg4WW1/bBXIoZ9G7EFN+0bvXgnrcp192W4nXR
	2uX10z3D5P6eJp6m9RycGcU=
X-Google-Smtp-Source: ABdhPJxsc9AwGp3DBF8vl+DZky6OP18WhuV1cRiPALHBgMhv3QgCNx2WvVWLKjUH8QOLd754yaVvkg==
X-Received: by 2002:aed:35d8:: with SMTP id d24mr12248611qte.246.1595010085210;
        Fri, 17 Jul 2020 11:21:25 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a0c:c987:: with SMTP id b7ls87240qvk.1.gmail; Fri, 17 Jul
 2020 11:21:24 -0700 (PDT)
X-Received: by 2002:ad4:57c7:: with SMTP id y7mr10573135qvx.124.1595010084815;
        Fri, 17 Jul 2020 11:21:24 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1595010084; cv=none;
        d=google.com; s=arc-20160816;
        b=MTh1w9EgblFREvB0Z3zinfyI36U0ifltHjTonZBjyXjm1rapF0BeDL/LUUCRvunPfO
         vS8HPX3Ae8B7216kjaYKP20eC8oU3EnW7TmDvJpradA0aENufdIFbkTY4mnEridO/Oh0
         ClhLK6exOVs7SYdKhIRoVZoY+/UAZy5b/A9YQfyd0Hg/oSOKDkjLtYHG8AnYXKSc3Bm8
         Qb5Tfc3qleNJqXBYJh8zXKxynfMVj3Aorl/DUjig+n8nfxdNzxeO+30olGXzOyqmzLKC
         T0eV+gVDIMiU3PaZHL/GtBcewK8Zfu2tn0/e530tqzASlY+SmkMYA1RvwprKPGEHgv6r
         t3tQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:reply-to:in-reply-to:references
         :mime-version:dkim-signature;
        bh=3BZIZFFWoflh+aCDXlOZJ2oTKuNvfj+cVytvkYsY/sw=;
        b=rMtrojaU2cWYWeAVStSnTUTnX04zOmS1pWL8c/Ja8V/JHNdarhitzANdqZkqhZCUBX
         HR0VJUBoz25xtHS/SL0qNyMsJc8kFvASdKV8suLD7GVEuPz7armrNDjkgAakh4Si0tXc
         Qxow8gZszrmyznxsAZfJ77UbTcs/uakl6U6IjjakxvsCspV+Uequzw1Wa/OIJmbSYx70
         pGOwew5pP0gy+ASlWnTGwrFuoe++KBiF/rWx8bxCXWSlt5l4SMTMqQGIglgEKyBwY5Cl
         am5chgcZhYNKUx2wjQ2LDuEP3OyLw17PomZdWk3EXmoM0/xZkar4MPQzziy6duoEFENs
         S9CQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=i+B1FN5s;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d42 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-io1-xd42.google.com (mail-io1-xd42.google.com. [2607:f8b0:4864:20::d42])
        by gmr-mx.google.com with ESMTPS id f2si525848qkk.3.2020.07.17.11.21.24
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 17 Jul 2020 11:21:24 -0700 (PDT)
Received-SPF: pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d42 as permitted sender) client-ip=2607:f8b0:4864:20::d42;
Received: by mail-io1-xd42.google.com with SMTP id d18so11396747ion.0
        for <clang-built-linux@googlegroups.com>; Fri, 17 Jul 2020 11:21:24 -0700 (PDT)
X-Received: by 2002:a5e:9309:: with SMTP id k9mr10687234iom.135.1595010084329;
 Fri, 17 Jul 2020 11:21:24 -0700 (PDT)
MIME-Version: 1.0
References: <20200714023836.2310569-1-nivedita@alum.mit.edu>
 <20200715004133.1430068-1-nivedita@alum.mit.edu> <20200717134654.GA3187880@rani.riverdale.lan>
 <CAKwvOdnTbatx8VB-rJSzyFPwfYnkMYK28yLBn1G+hUu8dyfYRA@mail.gmail.com>
In-Reply-To: <CAKwvOdnTbatx8VB-rJSzyFPwfYnkMYK28yLBn1G+hUu8dyfYRA@mail.gmail.com>
Reply-To: sedat.dilek@gmail.com
From: Sedat Dilek <sedat.dilek@gmail.com>
Date: Fri, 17 Jul 2020 20:21:12 +0200
Message-ID: <CA+icZUUxE=+yq-NPitRBwJ-92cqEP6TXdf=kRiLTN09UQUAi2Q@mail.gmail.com>
Subject: Re: [PATCH v5 0/7] x86/boot: Remove run-time relocations from
 compressed kernel
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Arvind Sankar <nivedita@alum.mit.edu>, Thomas Gleixner <tglx@linutronix.de>, 
	Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>, "H. Peter Anvin" <hpa@zytor.com>, 
	"maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>, Fangrui Song <maskray@google.com>, Dmitry Golovin <dima@golovin.in>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Ard Biesheuvel <ardb@kernel.org>, 
	Masahiro Yamada <masahiroy@kernel.org>, Kees Cook <keescook@chromium.org>, 
	Nathan Chancellor <natechancellor@gmail.com>, Arnd Bergmann <arnd@arndb.de>, 
	"H . J . Lu" <hjl@sourceware.org>, LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: sedat.dilek@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=i+B1FN5s;       spf=pass
 (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d42
 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Fri, Jul 17, 2020 at 8:17 PM Nick Desaulniers
<ndesaulniers@google.com> wrote:
>
> On Fri, Jul 17, 2020 at 6:46 AM Arvind Sankar <nivedita@alum.mit.edu> wrote:
> >
> > On Tue, Jul 14, 2020 at 08:41:26PM -0400, Arvind Sankar wrote:
> > > The compressed kernel currently contains bogus run-time relocations in
> > > the startup code in head_{32,64}.S, which are generated by the linker,
> > > but must not actually be processed at run-time.
> > >
> > > This generates warnings when linking with the BFD linker, and errors
> > > with LLD, which defaults to erroring on run-time relocations in read-only
> > > sections. It also requires the -z noreloc-overflow hack for the 64-bit
> > > kernel, which prevents us from linking it as -pie on an older BFD linker
> > > (<= 2.26) or on LLD, because the locations that are to be apparently
> > > relocated are only 32-bits in size and so cannot really have
> > > R_X86_64_RELATIVE relocations.
> > >
> > > This series aims to get rid of these relocations. I've build- and
> > > boot-tested with combinations of clang/gcc-10 with lld/bfd-2.34, and
> > > gcc-4.9.0 with bfd-2.24, skipping clang on 32-bit because it currently
> > > has other issues [0].
> > >
> >
> > Hi Thomas, Ingo, Borislav, would you be able to take a look over this
> > series in time for 5.9?
>
> Hi Arvind, thanks for the series; I'm behind on testing.  When I try
> to apply this series on top of linux-next, I get a collision in
> drivers/firmware/efi/libstub/Makefile:27 when applying "0002
> x86/boot/compressed: Force hidden visibility for all symbol
> references". Would you mind refreshing the series to avoid that
> collision?
>

I guess taking a Linux-next release as a new base is not a good idea.
With the next Linux-next release... new troubles.
Please, keep the base on recent Linux v5.8-rcX.

- Sedat -

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CA%2BicZUUxE%3D%2Byq-NPitRBwJ-92cqEP6TXdf%3DkRiLTN09UQUAi2Q%40mail.gmail.com.
