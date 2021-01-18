Return-Path: <clang-built-linux+bncBDHYDDNWVUNRBR4JS6AAMGQEK2UOX7A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x540.google.com (mail-pg1-x540.google.com [IPv6:2607:f8b0:4864:20::540])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A9692FA774
	for <lists+clang-built-linux@lfdr.de>; Mon, 18 Jan 2021 18:26:33 +0100 (CET)
Received: by mail-pg1-x540.google.com with SMTP id s17sf13651270pgv.14
        for <lists+clang-built-linux@lfdr.de>; Mon, 18 Jan 2021 09:26:33 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1610990792; cv=pass;
        d=google.com; s=arc-20160816;
        b=rlctW6kVzbKWmOQsEmhzWF9Ss5T7KSZ/ra0O8XYGFlYodPyxsb6VmitVZfbf0hi1S7
         pCf+Rv9T+brB4lMqN+98yD1A8G0XG3Hr5Cytn3b5F4nMMSgNO0qyOhjtTwXGHc6yr/ze
         jvO1nyRhv/kqiBKwdHxPiTU0oJlyPEjv4x3/tqUbZ1eQzwGCM+KPYYhGmSQ2vUsBNlc2
         Xrnp2zXJSvCT+jmhwr+oFZ9ThclpFkxDErxNKkNBk+CWgm3+/rJrf480H0KBRBDzK7eU
         5MNJZEV6+r2mOqHTrxVjht8ymg0nXKlx6KDH2QAodX/flG1L66CmkQWm2e+PbTrWQyMh
         gFkw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :reply-to:in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=ngSuJLz56mlOJT3zb90DM0WXeU2lIJ9r+4cMoMZdeg8=;
        b=OmWGIK3EuL70Ey3pqxwpRNbgOEEZMoDlPJGRbkAE2WSa3vYtNUAvZospBI5HSUEUv4
         j8NroBm31Ah9cHS+ziIHOV/nVQGkZKmjRekO6HLU0ksjW4vaozxz1ikCoN142DyT4oq5
         gmwiLJ6ZnW5z6Us2jPEddUPm4J7pZwqL06rINEvvzA6YdY8YrOYnuWfRc2R5Ms3AzX96
         /718tdiUxGushCiIVG2yGBgoBJW82nJCFV1v7Q1EC8wnQGo3CgA7dplR6lc5O6RvM/nk
         ZOEG3QUL99LKoHxkCv32cgn34GARam5gwR1dpxIZ5WgL2i/mfeq/S0MegdB+BcpoWdvL
         x3Hw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=j9j46G0X;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d2b as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=ngSuJLz56mlOJT3zb90DM0WXeU2lIJ9r+4cMoMZdeg8=;
        b=WjsPkFn4RORpbATymavjYpvCWELfDD4nyWnqTeqbD2QMaSG+9q2Uc0ci+5DiJSgnJQ
         2CtIC3cku7XOlyhpdTus7CvZtKP4ropRu+arKqmKdwTLFjs82xb6OLQRvg2X2pl1vE+N
         ANTT99utgnNDYfIyouWS5ST8Hm8dzxxG7d9kdkmc4oEiLoaaSjE7IVbI3snT/RZ+f0I/
         5RQG1uVIt9CcojMGmRV6SS4sNY6t44MOFhOvBvzHAoXiSkrXS1Ns+Yhbu588PIwx6Evy
         gtfLOqH1kgctFaZMMLi08KX+cNixWtuS9ifIrb5bW4rUXkkhBEu0aTxtZp3k4tJUt4Xv
         UgXQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ngSuJLz56mlOJT3zb90DM0WXeU2lIJ9r+4cMoMZdeg8=;
        b=GdB2BF/yENCX9ughKqirhohXEsvnedSep5P+SCqpLuabhm8H8iOCqCdpCOSBPxmdiI
         X/0cySeNPShWp88ZChguQ4b913SbXm9UHKSIZ5juFDHfLptSjSPps+OTYx/lC9sV3QY8
         r10UOulKmm9z7WXmbjbDAN+eik2+kZ/sigXR+/MOgXlcRd02XJfBiknH//B9DGTVK6Ni
         UoFULFKdySj6rDOfS5/vFjJZ85ywXwgoVUyrpTyw9HqmbRCP8/8RPOFbCo+BB9C1YKgt
         W7sCekSrHVTpbdhhLLN68/xmMe4RhZI4xtYeeiUMfc9nVcMmTiaZHPvhNKQhkV6g63lC
         ViFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to
         :reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ngSuJLz56mlOJT3zb90DM0WXeU2lIJ9r+4cMoMZdeg8=;
        b=VCu/+Dosm1DzGJK9bKKfxHkhUC9e3lXKtZeougOCIlV9cTef9g8DaF8RJKibVCAHjM
         AXoRLvBLJFhP3GURcyD92gSOU+OBlN3vfvm0/zA/5jighIdKtHrfYMqnv0WjlpMciuqY
         p0a6uxECvGl+TWY/bO+BcSNchnX3/W7YMJtBROqlcWZ3pskvvv6uMo5Jepdt2ZMOc79u
         DFkQaWlhZZgKcbtvG6L1fyAn9WjA51WvUgaad8Cem2UzNjIymNNR9YDdFx5ZtI/qnviJ
         eK7+RlIfovg1DLt/11GqFnjR0++FLEKpiyuEnFDltz4Ympp65Ts41+vlYWS6MtyP+KaH
         9OGQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530xIXr2VuX2z1VBUZy7WItNPF++Wep8LtbmgjAi1WQ4/X4oL+pO
	+QNMGTLajeHcOe0Jr/0G+Q0=
X-Google-Smtp-Source: ABdhPJycMe+tUvjuvQK/SWbg+71yTaJy29NaBlK9m6nysWbF/H7o2ASFvxtz0K6LKXR0K1f2AYyDnA==
X-Received: by 2002:a17:902:6a87:b029:da:e253:dd6a with SMTP id n7-20020a1709026a87b02900dae253dd6amr241976plk.81.1610990791862;
        Mon, 18 Jan 2021 09:26:31 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:d713:: with SMTP id w19ls8436515ply.1.gmail; Mon, 18
 Jan 2021 09:26:31 -0800 (PST)
X-Received: by 2002:a17:90a:a502:: with SMTP id a2mr345181pjq.218.1610990791234;
        Mon, 18 Jan 2021 09:26:31 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1610990791; cv=none;
        d=google.com; s=arc-20160816;
        b=dLq9tAy/w89Fhzrh2dxN+Q2s6hRvDWLRTvCtcwPGlN3S4l7mGIudDR3DLnjYDMXlzU
         pP0H9gjxT6K/H4fxlIleQ1dDptpR2MyDeFPmJMk4GcGtKwpVYcDWFCxMyB+RBVj1h7tq
         xRmcLTus4pkkJ5tUEJEyV69LunT3Q8kcyXcb18vJnjsq7QMiuAutAqWhyL5oUzK4flSl
         bg8aL2sZ8GgdvvDFsufD+jT7Ms/jyYkqXeN1FVeCutVVKbV7Omi//pmk5NGb2CVVtpWP
         tliYa1i/HdydmLdrI0qPg73XYJ6pR4kh8a6qEzC+ztd6pJv88ul2QCy15JtJGWfwuoBh
         /3AA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:reply-to:in-reply-to:references
         :mime-version:dkim-signature;
        bh=/PCeIqOYxF8DBChe/FqeIpuGpAycN06Z+LtSWgqflkc=;
        b=QjBUEZU5vU7KwJVpbPts2HZiaBcqiVSb8cakEDkionTbvaEYcGbyDkw5rDbbfGoPzw
         A/kHvMI9tWRupRXv0IlVfx17czHEU3n9egPk305MwLRff9xud6vvxu54pb0pYCPk8AWJ
         Yt6rP4JR40XRMrpVBj0rM43luy+mN6MzTMEXpDaBfb66Nknu6Hgv/sp0jn0n/X1h8pOs
         qmipOkM9b0UAESLpudhhHRYvu/JtGoeYs+GbbeImfsAQr/zZOm9WJy3tdhTwkFIwkynF
         8kzBpuyPrPX+Nz9LJLpKg1ap4sHYjKt0MouK3l9z1FJ0MmvHuRRp7w0qZYWOnF+fVNYE
         K+Xg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=j9j46G0X;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d2b as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-io1-xd2b.google.com (mail-io1-xd2b.google.com. [2607:f8b0:4864:20::d2b])
        by gmr-mx.google.com with ESMTPS id o14si642pjt.0.2021.01.18.09.26.31
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 18 Jan 2021 09:26:31 -0800 (PST)
Received-SPF: pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d2b as permitted sender) client-ip=2607:f8b0:4864:20::d2b;
Received: by mail-io1-xd2b.google.com with SMTP id d81so19063474iof.3
        for <clang-built-linux@googlegroups.com>; Mon, 18 Jan 2021 09:26:31 -0800 (PST)
X-Received: by 2002:a92:d990:: with SMTP id r16mr290889iln.10.1610990790846;
 Mon, 18 Jan 2021 09:26:30 -0800 (PST)
MIME-Version: 1.0
References: <20210113061958.886723-1-morbo@google.com> <20210116094357.3620352-1-morbo@google.com>
 <CA+icZUUgTuD6fO_AZFs9KoRFS8FUmyhezvYeeoRX2dveG_ifDA@mail.gmail.com>
 <CAGG=3QXZTR_f9pKzAR=LrALmMzdDqsvWM_zrTXOb2PpiDGB-+A@mail.gmail.com>
 <CA+icZUWf05ek+DFsJNyBc-4cg0s6cVrn=rNJDyL4RJ6=fMO5NA@mail.gmail.com>
 <CA+icZUVD1AHaXYu4Ne8JhzmtMR5DReL4C=ZxKfA0hjLtbC79qQ@mail.gmail.com>
 <CA+icZUUTJbwmTYCDJhyRtif3BdsB_yzQ3bSdLR62EmttJf3Row@mail.gmail.com>
 <CA+icZUUfWR1v3GStn6t_6MYDmwTdJ_zDwBTe2jmQRg7aOA1Q2A@mail.gmail.com>
 <CA+icZUU-3i7Of71C6XaNmee7xD4y_DeoWJFvUHnMUyBaMN3Ywg@mail.gmail.com>
 <CA+icZUXmn15w=kSq2CZzQD5JggJw_9AEam=Sz13M0KpJ68MWZg@mail.gmail.com>
 <CA+icZUWUPCuLWCo=kuPr9YZ4-NZ3F8Fv1GzDXPbDevyWjaMrJg@mail.gmail.com>
 <CAGG=3QW+ayBzCxOusLyQ0-y5K5C_3hNXjara_pYOcxK8MseN9g@mail.gmail.com>
 <CA+icZUU1HihUFaEHzF69+01+Picg8aq6HAqHupxiRqyDGJ=Mpw@mail.gmail.com>
 <CA+icZUUuzA5JEXyVzKbVX+T3xeOdRAU6-mntbo+VwwTxqmN7LA@mail.gmail.com>
 <CAGG=3QWmOA+yM2GJF+cHUb7wUq6yiBpHasa-ry9OhAdvciDm6Q@mail.gmail.com> <CA+icZUVwbWDtGUzMEkitxYn2UvbZPnFTxfJyDOY46j6BTK0deQ@mail.gmail.com>
In-Reply-To: <CA+icZUVwbWDtGUzMEkitxYn2UvbZPnFTxfJyDOY46j6BTK0deQ@mail.gmail.com>
Reply-To: sedat.dilek@gmail.com
From: Sedat Dilek <sedat.dilek@gmail.com>
Date: Mon, 18 Jan 2021 18:26:19 +0100
Message-ID: <CA+icZUXa9wvSWe=21_gjAapoHpbgBmYzFpQjb=o_WRQgK+O4gA@mail.gmail.com>
Subject: Re: [PATCH v5] pgo: add clang's Profile Guided Optimization infrastructure
To: Bill Wendling <morbo@google.com>
Cc: Jonathan Corbet <corbet@lwn.net>, Masahiro Yamada <masahiroy@kernel.org>, 
	Linux Doc Mailing List <linux-doc@vger.kernel.org>, LKML <linux-kernel@vger.kernel.org>, 
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, 
	Clang-Built-Linux ML <clang-built-linux@googlegroups.com>, 
	Andrew Morton <akpm@linux-foundation.org>, Nathan Chancellor <natechancellor@gmail.com>, 
	Nick Desaulniers <ndesaulniers@google.com>, Sami Tolvanen <samitolvanen@google.com>, 
	Fangrui Song <maskray@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: sedat.dilek@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=j9j46G0X;       spf=pass
 (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d2b
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

On Mon, Jan 18, 2021 at 1:39 PM Sedat Dilek <sedat.dilek@gmail.com> wrote:
>
> On Mon, Jan 18, 2021 at 3:32 AM Bill Wendling <morbo@google.com> wrote:
> >
> > On Sun, Jan 17, 2021 at 4:27 PM Sedat Dilek <sedat.dilek@gmail.com> wrote:
> > >
> > > [ big snip ]
> >
> > [More snippage.]
> >
> > > [ CC Fangrui ]
> > >
> > > With the attached...
> > >
> > >    [PATCH v3] module: Ignore _GLOBAL_OFFSET_TABLE_ when warning for
> > > undefined symbols
> > >
> > > ...I was finally able to boot into a rebuild PGO-optimized Linux-kernel.
> > > For details see ClangBuiltLinux issue #1250 "Unknown symbol
> > > _GLOBAL_OFFSET_TABLE_ loading kernel modules".
> > >
> > Thanks for confirming that this works with the above patch.
> >
> > > @ Bill Nick Sami Nathan
> > >
> > > 1, Can you say something of the impact passing "LLVM_IAS=1" to make?
> >
> > The integrated assembler and this option are more-or-less orthogonal
> > to each other. One can still use the GNU assembler with PGO. If you're
> > having an issue, it may be related to ClangBuiltLinux issue #1250.
> >
> > > 2. Can you please try Nick's DWARF v5 support patchset v5 and
> > > CONFIG_DEBUG_INFO_DWARF5=y (see attachments)?
> > >
> > I know Nick did several tests with PGO. He may have looked into it
> > already, but we can check.
> >
>
> Reproducible.
>
> LLVM_IAS=1 + DWARF5 = Not bootable
>
> I will try:
>
> LLVM_IAS=1 + DWARF4
>

I was not able to boot into such a built Linux-kernel.

For me worked: DWARF2 and LLVM_IAS=1 *not* set.

Of course, this could be an issue with my system's LLVM/Clang.

Debian clang version
12.0.0-++20210115111113+45ef053bd709-1~exp1~20210115101809.3724

Can you give me a LLVM commit-id where you had success with LLVM_IAS=1
and especially CONFIG_DEBUG_INFO_DWARF5=y?
Success means I was able to boot in QEMU and/or bare metal.

Thanks.

Regards,
- Sedat -

>
> > > I would like to know what the impact of the Clang's Integrated
> > > Assembler and DWARF v5 are.
> > >
> > > I dropped both means...
> > >
> > > 1. Do not pass "LLVM_IAS=1" to make.
> > > 2. Use default DWARF v2 (with Nick's patchset: CONFIG_DEBUG_INFO_DWARF2=y).
> > >
> > > ...for a successfull build and boot on bare metal.
> > >
> >
> > [Next message]
> >
> > > On each rebuild I need to pass to make ...?
> > >
> > >   LLVM=1 -fprofile-use=vmlinux.profdata
> > >
> > Yes.
> >
> > > Did you try together with passing LLVM_IAS=1 to make?
> >
> > One of my tests was with the integrated assembler enabled. Are you
> > finding issues with it?
> >
> > The problem with using top-of-tree clang is that it's not necessarily
> > stable. You could try using the clang 11.x release (changing the
> > "CLANG_VERSION >= 120000" in kernel/pgo/Kconfig/ to "CLANG_VERSION >=
> > 110000").
> >
> > -bw

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CA%2BicZUXa9wvSWe%3D21_gjAapoHpbgBmYzFpQjb%3Do_WRQgK%2BO4gA%40mail.gmail.com.
