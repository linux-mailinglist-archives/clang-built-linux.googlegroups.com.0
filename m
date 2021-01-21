Return-Path: <clang-built-linux+bncBDHYDDNWVUNRBW4HVCAAMGQEMEVOJWQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3e.google.com (mail-io1-xd3e.google.com [IPv6:2607:f8b0:4864:20::d3e])
	by mail.lfdr.de (Postfix) with ESMTPS id B327B2FF822
	for <lists+clang-built-linux@lfdr.de>; Thu, 21 Jan 2021 23:44:44 +0100 (CET)
Received: by mail-io1-xd3e.google.com with SMTP id p77sf5829738iod.17
        for <lists+clang-built-linux@lfdr.de>; Thu, 21 Jan 2021 14:44:44 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1611269083; cv=pass;
        d=google.com; s=arc-20160816;
        b=sCcVrHUxxqyYEKmRZ90XeQUU+HHcfPocUROP+7DBCvAWDiAgeg/g8DZV7OGThLgCaw
         QVc3yH+b1kQGez3WPLG15eCeTdu68DFatirZO5ONhsWr1VB3khfTXU4QCAF6L0Rkg7qD
         1K7+eByx7iJ4Ae0crroDMX0tBGz6IBfvV3xX9kFnEr4K22AAzrq5lgAMX7eyQto6KIwx
         gvI3GaiONEAZuGwT46GHnN6y4Isq/kJJ2AQsL9bcJpcvD5GqK2OgzChezY/mIjf9//3X
         n6ERB2+9VfmN8f3EHf9ttMulKQvIoBO3XS+AJmR6362kVqypT3/FcAQZGKyxjIWnrUtS
         8bDg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :reply-to:in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=4Y1iEZPprDRKmGiahE34I0fOGf1HTD9mROJxdT2AmHw=;
        b=R1MOOHD4yWZdtlvQLHaKDeeOwNqzCRm0R+NwTWIFBJly6YyMAVNyOMgCcxYonZREGK
         F5fTJH+8vvHbf7cgcn15DYi4M43fZNk5JzoW9j9eR0fHZNSgSW6YjuGaoQin99vUV0NL
         V9L8tFqRg6iveeJFjkBGcgcMXkSX9hnVmY8p9atfCCCecMmVdRJG04o/XqdlMBmYtXdJ
         I6UlNlQk3kHvDrbItog9bUGLfVk9HJ3QTJT97wYcVyIvYVOfOE/ylsGnx1mT/80cQN9G
         qsjVAPumBqycyRKGwjj6yjCXG1oMiBtnlsrCg9tyHkuOHu5hTXvi1VEgiL86Nmwv4kBs
         JpiA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=u1Qb7yOF;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d31 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=4Y1iEZPprDRKmGiahE34I0fOGf1HTD9mROJxdT2AmHw=;
        b=Qcx5xEpwCoNnaZOtdm5dMKFEdJK7XkFabIvbp+DVTx+3XnaZcuYwMhgeeI4fYIYk1n
         VM8qihavODLl52YpFdoaRSg9SefXSFQKmRdVaOsLFaaw8BiTqCFteCnULmb0mfEF5A1S
         BK7P/4RUqcoBM/x4GbvpIvgS0p7S7fPOYp9iNEhYP7IZZjm7FLmILDd0dw0sNCuSrHFT
         DXVxlYk2rcZfELZB9OUzW0PbLIi1+0XVbspR8WWDWUvOVTAyz3hjWpl88RhpV8baO4EV
         9g7aTygJvNACFvSgDIeLjf155HLMSEXXhbxHz+RkRrwNBSXa98EX6J5QwlKg9vhV1tN+
         gkhw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=4Y1iEZPprDRKmGiahE34I0fOGf1HTD9mROJxdT2AmHw=;
        b=rDFy4RLFrfIhpjL+S+Znop/fEfYJ+RQ5yNIrMleSiMdMWAj8Kc0dFYXND/BbstUlVW
         YQ6QPdacijqiihVyM8IKsrmOSSQ32spJuOz1KEbM73YN7b1/FWfBbGF0fr/otV077v3H
         NGe+I3u8iDx/IEVIsFlEDxztyEMZ1Ct6aaEsmhluc5Ma3/YuKfF8hwOkIIvgEcF0Fl4Q
         FrpmsLbw0LHNsiEImFLpriANorpzU8+jBxvcp9X/N/Zfqw1NDQodQO71wcwqc4m3NpXR
         bbz78GK8ci20+GZSfkgPxT9fmfyD6pc2Rv4JJvKc2TI1YlhGsf02BnTK5z+hf3ClxXuh
         W/YQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to
         :reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=4Y1iEZPprDRKmGiahE34I0fOGf1HTD9mROJxdT2AmHw=;
        b=RclqVyrRjMEXhVYJP51HY52tudrN+Veop1hVB9Uedu9wqq+4GUy0q6mhqnWfsY8QBx
         mepFHR84nuZe/7Vc6ytC0+nfFR+b7xnA4pDVVUH1jALCfzc1c97kqu9WyGZ/a4//0zHH
         YMKqaiy0ggpeReiwK2ftQHqwQbEZMGkStjoaCqWoAM3OxSAfdaM7PYwNmvKpEz2edwOU
         oHPH2Z7/R7h/mwIk1PH8Wvqn+B69DmcV7b52BwbLrO71NZVqcGaU18qNUD1np9Csqa0w
         FpGgPlLjQWRq3JVOjMSMp6NE+Xjzs6hIuW3VRZ2ddTUtb8A9gWESIo5CPPMLZyxzc4uH
         MdfA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531Bn2fixv70v1ypXIu8WjtBubF2ETufemXxqNY6h4fPnz5SWtI2
	RahVlk1NKfJnYen5JMEuREM=
X-Google-Smtp-Source: ABdhPJwqMgKpe+t4XOfydQI3esRdIDlX40LZ5Tfu8k0U5r69Wdis5z+eF96xIhE3/XjVaC+XS2U7iQ==
X-Received: by 2002:a92:8751:: with SMTP id d17mr1685802ilm.243.1611269083792;
        Thu, 21 Jan 2021 14:44:43 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6638:13c5:: with SMTP id i5ls463174jaj.1.gmail; Thu, 21
 Jan 2021 14:44:43 -0800 (PST)
X-Received: by 2002:a05:6638:248:: with SMTP id w8mr1231142jaq.51.1611269083291;
        Thu, 21 Jan 2021 14:44:43 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1611269083; cv=none;
        d=google.com; s=arc-20160816;
        b=d47bE0IHvb++WWaBIoSUG2DnFjdZHtVYV33zBl8XobRPkr6hVoC/9CtWOBEEGRJMBt
         xVekv7Pq9hsqmJZDgo+YxAAEfkUxR6Z756GjsFXi+TsScQVwWG0F8mzp1a/1+HOUzjxs
         oWOGst5efIjx3YYr/fjh8O2IOdtV3puWphvrpgu7TgOpSdpI/YazkALrCrCoXeNtiMmF
         BVEYx4IY/yArQguurRhdFbvTHncBDeWXBFtua3BSLV59McKBi1jrHv/G4dqMehQ4o4Kg
         zPDXxB2EfrtmovN/Eqhk1QqW+8NAUNwOcmuFQM2XAKL6h3zM+keS5Vp8k0No3npZH5SV
         NK0A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:reply-to:in-reply-to:references
         :mime-version:dkim-signature;
        bh=HvccmrfS5SgOEYdUs1blncI3hgFwaeqGnzFVcQFt3dc=;
        b=nPRXiqK6ww9FzcNb5GBY0TSnLNdQQApIf99JNdef34rYcMQBoJ2HwxjZa+a0KwQcMA
         vxqzb2xQ5FWR53PnsW7Fri3K73FYj0ABYc894bRQfrIoBhVrt7Drlkr6iaKZST6hlBiK
         YrSIp4lXcVvGuaRySITdLfUQHUkSxpxtHgh2rmUXDrYLLOvBVGlpadCIfzz5YSp8tp6w
         2jaBJe1SP4fPkEfnaVGoIzqiUTc/SOqsmTnn/G7IZPs3SrKOrBb/2NSzVy55i1d1zg/a
         7ykZKRo2P34OjHKBjka8Sq/JaGDxriefAeL0jXJ8DCr9nUMttKY/sYxw5nC0uIrjTXAc
         9WqQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=u1Qb7yOF;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d31 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-io1-xd31.google.com (mail-io1-xd31.google.com. [2607:f8b0:4864:20::d31])
        by gmr-mx.google.com with ESMTPS id c2si567810ilj.3.2021.01.21.14.44.43
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 21 Jan 2021 14:44:43 -0800 (PST)
Received-SPF: pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d31 as permitted sender) client-ip=2607:f8b0:4864:20::d31;
Received: by mail-io1-xd31.google.com with SMTP id h11so7356979ioh.11
        for <clang-built-linux@googlegroups.com>; Thu, 21 Jan 2021 14:44:43 -0800 (PST)
X-Received: by 2002:a6b:6a0e:: with SMTP id x14mr1296225iog.57.1611269083021;
 Thu, 21 Jan 2021 14:44:43 -0800 (PST)
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
 <CAGG=3QWmOA+yM2GJF+cHUb7wUq6yiBpHasa-ry9OhAdvciDm6Q@mail.gmail.com>
 <CA+icZUVwbWDtGUzMEkitxYn2UvbZPnFTxfJyDOY46j6BTK0deQ@mail.gmail.com>
 <CA+icZUXa9wvSWe=21_gjAapoHpbgBmYzFpQjb=o_WRQgK+O4gA@mail.gmail.com>
 <CAGG=3QUcaY1wzJhBD4ZGhPSNPik-kL0PuoE1SJqkFJEM_mkGYA@mail.gmail.com> <CA+icZUU+OWW46CVq4Co-y7hckGjoV5bbqxS-G+HDqUDci_AzHw@mail.gmail.com>
In-Reply-To: <CA+icZUU+OWW46CVq4Co-y7hckGjoV5bbqxS-G+HDqUDci_AzHw@mail.gmail.com>
Reply-To: sedat.dilek@gmail.com
From: Sedat Dilek <sedat.dilek@gmail.com>
Date: Thu, 21 Jan 2021 23:44:31 +0100
Message-ID: <CA+icZUV17FxhopdQhDCW6vBaSfgU-86vAE5QpoaW1iLxtsg5HA@mail.gmail.com>
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
 header.i=@gmail.com header.s=20161025 header.b=u1Qb7yOF;       spf=pass
 (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d31
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

On Thu, Jan 21, 2021 at 3:03 AM Sedat Dilek <sedat.dilek@gmail.com> wrote:
>
> On Mon, Jan 18, 2021 at 10:56 PM Bill Wendling <morbo@google.com> wrote:
> >
> > On Mon, Jan 18, 2021 at 9:26 AM Sedat Dilek <sedat.dilek@gmail.com> wrote:
> > >
> > > On Mon, Jan 18, 2021 at 1:39 PM Sedat Dilek <sedat.dilek@gmail.com> wrote:
> > > >
> > > > On Mon, Jan 18, 2021 at 3:32 AM Bill Wendling <morbo@google.com> wrote:
> > > > >
> > > > > On Sun, Jan 17, 2021 at 4:27 PM Sedat Dilek <sedat.dilek@gmail.com> wrote:
> > > > > >
> > > > > > [ big snip ]
> > > > >
> > > > > [More snippage.]
> > > > >
> > > > > > [ CC Fangrui ]
> > > > > >
> > > > > > With the attached...
> > > > > >
> > > > > >    [PATCH v3] module: Ignore _GLOBAL_OFFSET_TABLE_ when warning for
> > > > > > undefined symbols
> > > > > >
> > > > > > ...I was finally able to boot into a rebuild PGO-optimized Linux-kernel.
> > > > > > For details see ClangBuiltLinux issue #1250 "Unknown symbol
> > > > > > _GLOBAL_OFFSET_TABLE_ loading kernel modules".
> > > > > >
> > > > > Thanks for confirming that this works with the above patch.
> > > > >
> > > > > > @ Bill Nick Sami Nathan
> > > > > >
> > > > > > 1, Can you say something of the impact passing "LLVM_IAS=1" to make?
> > > > >
> > > > > The integrated assembler and this option are more-or-less orthogonal
> > > > > to each other. One can still use the GNU assembler with PGO. If you're
> > > > > having an issue, it may be related to ClangBuiltLinux issue #1250.
> > > > >
> > > > > > 2. Can you please try Nick's DWARF v5 support patchset v5 and
> > > > > > CONFIG_DEBUG_INFO_DWARF5=y (see attachments)?
> > > > > >
> > > > > I know Nick did several tests with PGO. He may have looked into it
> > > > > already, but we can check.
> > > > >
> > > >
> > > > Reproducible.
> > > >
> > > > LLVM_IAS=1 + DWARF5 = Not bootable
> > > >
> > > > I will try:
> > > >
> > > > LLVM_IAS=1 + DWARF4
> > > >
> > >
> > > I was not able to boot into such a built Linux-kernel.
> > >
> > PGO will have no effect on debugging data. If this is an issue with
> > DWARF, then it's likely orthogonal to the PGO patch.
> >
> > > For me worked: DWARF2 and LLVM_IAS=1 *not* set.
> > >
> > > Of course, this could be an issue with my system's LLVM/Clang.
> > >
> > > Debian clang version
> > > 12.0.0-++20210115111113+45ef053bd709-1~exp1~20210115101809.3724
> > >
> > Please use the official clang 11.0.1 release
> > (https://releases.llvm.org/download.html), modifying the
> > kernel/pgo/Kconfig as I suggested above. The reason we specify clang
> > 12 for the minimal version is because of an issue that was recently
> > fixed.
> >
>
> I downgraded to clang-11.1.0-rc1.
> ( See attachment. )
>
> Doing the first build with PGO enabled plus DWARF5 and LLVM_IAS=1 works.
>
> But again after generating vmlinux.profdata and doing the PGO-rebuild
> - the resulting Linux-kernel does NOT boot in QEMU or on bare metal.
> With GNU/as I can boot.
>
> So this is independent of DWARF v4 or DWARF v5 (LLVM_IAS=1 and DWARF
> v2 is not allowed).
> There is something wrong (here) with passing LLVM_IAS=1 to make when
> doing the PGO-rebuild.
>
> Can someone please verify and confirm that the PGO-rebuild with
> LLVM_IAS=1 boots or boots not?
>
> Thanks.
>
> - Sedat -
>
> > > Can you give me a LLVM commit-id where you had success with LLVM_IAS=1
> > > and especially CONFIG_DEBUG_INFO_DWARF5=y?
> > > Success means I was able to boot in QEMU and/or bare metal.
> > >
> > The DWARF5 patch isn't in yet, so I don't want to rely upon it too much.
> >

I passed LLVM_IAS=1 with KAFLAGS=-fprofile-use=vmlinux.profdata:

/usr/bin/perf_5.10 stat make V=1 -j4 HOSTCC=clang HOSTCXX=clang++
HOSTLD=ld.lld CC=clang LD=ld.lld PAHOLE=/opt/paho
le/bin/pahole LOCALVERSION=-2-amd64-clang11-pgo KBUILD_VERBOSE=1
KBUILD_BUILD_HOST=iniza KBUILD_BUILD_USER=sedat.dilek@gmail.com
KBUILD_BUILD_TIMESTAMP=2021-01-21 bind
eb-pkg KDEB_PKGVERSION=5.11.0~rc4-2~bullseye+dileks1 LLVM=1
KCFLAGS=-fprofile-use=vmlinux.profdata LLVM_IAS=1
KAFLAGS=-fprofile-use=vmlinux.profdata

The resulting Linux-kernel does not boot.

But I see in the build-log these warnings:

warning: arch/x86/platform/efi/quirks.c: Function control flow change
detected (hash mismatch) efi_arch_mem_reserve Hash = 73770966985
[-Wbackend-plugin]
warning: arch/x86/platform/efi/efi.c: Function control flow change
detected (hash mismatch) efi_attr_is_visible Hash = 57959232386
[-Wbackend-plugin]
warning: arch/x86/boot/compressed/string.c: Function control flow
change detected (hash mismatch) memcmp Hash = 12884901887
[-Wbackend-plugin]
warning: arch/x86/boot/compressed/string.c: Function control flow
change detected (hash mismatch) bcmp Hash = 12884901887
[-Wbackend-plugin]
warning: arch/x86/boot/compressed/string.c: Function control flow
change detected (hash mismatch) strcmp Hash = 44149752232
[-Wbackend-plugin]
warning: arch/x86/boot/compressed/string.c: Function control flow
change detected (hash mismatch) strnlen Hash = 29212902728
[-Wbackend-plugin]
warning: arch/x86/boot/compressed/string.c: Function control flow
change detected (hash mismatch) simple_strtoull Hash =
288230479369728480 [-Wbackend-plugin]
warning: arch/x86/boot/compressed/string.c: Function control flow
change detected (hash mismatch) strstr Hash = 76464046323
[-Wbackend-plugin]
warning: arch/x86/boot/compressed/string.c: Function control flow
change detected (hash mismatch) strchr Hash = 30948479515
[-Wbackend-plugin]
warning: arch/x86/boot/compressed/string.c: Function control flow
change detected (hash mismatch) kstrtoull Hash = 288230543187488006
[-Wbackend-plugin]

What does "Function control flow change detected (hash mismatch)" mean?
Related with my boot problems?

- Sedat -

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CA%2BicZUV17FxhopdQhDCW6vBaSfgU-86vAE5QpoaW1iLxtsg5HA%40mail.gmail.com.
