Return-Path: <clang-built-linux+bncBCTYRDEG7MGBBUES6KAAMGQEYYIFN4A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x83c.google.com (mail-qt1-x83c.google.com [IPv6:2607:f8b0:4864:20::83c])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A88D310125
	for <lists+clang-built-linux@lfdr.de>; Fri,  5 Feb 2021 00:54:57 +0100 (CET)
Received: by mail-qt1-x83c.google.com with SMTP id g14sf3886228qtu.13
        for <lists+clang-built-linux@lfdr.de>; Thu, 04 Feb 2021 15:54:57 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1612482896; cv=pass;
        d=google.com; s=arc-20160816;
        b=nRVI2Lwu+r+8cqWTdUkzjAEuf5lmeSu0GJmx4+aSNqjzGFCO+AaP3gVFq5R+g7Co/Z
         bFR7KSgxUivov1jHm92vi8I2/BjOx5/pXIQSJnRJkuRjNE3UmeKdCHKTWEaDdFP1fkFV
         5MygxdxU1OxoCWtQ8ecKyIfFtv0e2s202Za8f7hF7XBqK8050DH+PVeCdeDLu2c1gdGb
         7CFGsLv47CawBwrPDMgCvJukX9pqLdfLjd3wYsnUjTRKeFZ9gUB4CaZSfIq9uYh/1nV0
         Pxahq6y8ROVr7I9OSD9x646hj3Cy8ikau5BXRSp3oQz1lub/txg4ult8eLK8piK33vfP
         389g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=Gxgadi6QBsaTP7aov1NUSZP1OdWTSUBhFQuSxTp5Ssc=;
        b=KpWtmE0aI4NgadcEDCj6dwfWMaV/KbIyEobQYswIJ6fuWdI/QSNzPt2zmor/4AXGrK
         q4hWAXGpY/1wA4ROtX1o31WmfLLuj+NGxvL2sO9/wb1y4yFe2zskhhkGcizar9trYxDo
         v7r3OoxSc6o7bkCzsB/01iL39G2H+yeq5znpBVb3fmU6OsfnwREwQ7MzWax2d6Uz3Za+
         HLnYKAHpZto9AOLEdW6F6LYH1zTVP42GE6Rqy9rNQ6eAN3Cyp7uAwXpH5yp/obdToPsL
         dX3bumoFpcX/HBHRgZKkc9WJiDtwhupllqWTp2t7h/kbAIPS4tQVI6mapCJ3mui/WjOv
         7wuA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=NR+kNaW7;
       spf=pass (google.com: domain of andrii.nakryiko@gmail.com designates 2607:f8b0:4864:20::b29 as permitted sender) smtp.mailfrom=andrii.nakryiko@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Gxgadi6QBsaTP7aov1NUSZP1OdWTSUBhFQuSxTp5Ssc=;
        b=dn1EHye/RaGmFsvux9OAExAi0tqAtJSiNLkYpviR96BRcTO3FR6Busga6r6Rl+Gx1c
         mj+F9FLlqx6xe6ECPI+JcNCInG+BbZc2BuzABOWEk3/hzC33qeRv4psKRinIQ2v3e9SQ
         nxDlJ11jLz/b7kdLfZmyI7/YNVZSOtWpBSwN8fp3tc0PEx2LjJEFD2SUSfVhEF0vXk8u
         zmHK4tskho5mgxZMyuIqCRnuUG+WyYf0xjDs6qrzNwlJBCYNQc4q2UBmJaxF6Km3xfB9
         VXM05PV1m2Qmh5xfT1cO7XXmMkfMTxHFuOG1NeujtV6fsV2IexObX+fbv3Odb9TUbWSf
         LtyQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Gxgadi6QBsaTP7aov1NUSZP1OdWTSUBhFQuSxTp5Ssc=;
        b=kbQTLaSMhQFPEa9eSd1MAIhdrC6Ysej6Rw55ES19A/zupeQM0KcUN/eC0GolLX8hNB
         agWz4sjj3fzMg08g2AJR/m2RjRMk3wuhQClN8mjePgrJ2Ib83fcdasuXi2kiz2HPqXqg
         2VoL3zN1h8yBFxihWoPkxw+NDBWunAgoMT9v936lToQgTPgTCBNnaDlerE3Dqwv3xQGO
         rZIyreali0304u0lEN54gGv7XF0kTMPpYuZIRZQp6C62yh+DtOg9nVZ5lhbZKa7kkP2n
         5CTvZ88qOxCqK08LBhil20PbfZqfz3sgS574fL/G8ipZRvfnizH0HiVIHLoKbmV6ACTX
         wEuw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Gxgadi6QBsaTP7aov1NUSZP1OdWTSUBhFQuSxTp5Ssc=;
        b=SM95n9ydwPVPNYTu6k9ukhYyXnLbbfzwCbRhlh9pMh35FVrt4z788G0XlupuNPDlwn
         FewTFpBMjOF8AWqY5uzjZbK/JHIoQcqOUehT5wfvBPphtN0UppCxwSJx5vdyq1SMwOLA
         DCYHwvhMMPFv7GJP+ouUNwMBsM1d1oaRkib/gkB2NiFndHgv7UqPojkB4TZiFgc7VAZX
         P5OhB8dimUeBV9P7cvy6ff5jyBjeo46f9MFSTU9LMB1bRH9j3A9X6O534CUQ4lhMMLWt
         pvWEDVHog4zX+xOAClGbwqwFxAUvHiV6YIvh9bMN7Jxx69t09dYeIlLlr9L/Rq5g7e4F
         oaeA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5321OclpmdSNjyAjXS0kojSp8NdqlT3A33wxjBERxAzf0N65zcAT
	QXDFqAYs390aWfgpyNb3BHY=
X-Google-Smtp-Source: ABdhPJxo3jqW1BTfc48xVlJQSxSpTZstH74FemjAuUI0A3iC0/KjsbYIQzR0qHoe5ZX5HOtoXc+ibQ==
X-Received: by 2002:a37:345:: with SMTP id 66mr1715130qkd.358.1612482896234;
        Thu, 04 Feb 2021 15:54:56 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:622a:4cc:: with SMTP id q12ls2813058qtx.0.gmail; Thu, 04
 Feb 2021 15:54:55 -0800 (PST)
X-Received: by 2002:ac8:1245:: with SMTP id g5mr2012026qtj.320.1612482895879;
        Thu, 04 Feb 2021 15:54:55 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1612482895; cv=none;
        d=google.com; s=arc-20160816;
        b=AZF6SROvF95Y1fEYL3sA8iQ4IpnrpBdE1ws4LChJqlB+fBiSN5efVNS2UbsFfAEy9R
         gJ74VG7sFAqFLiW2j5+NVTx0cOOat119BWUXPjQ5JCPICwMGDD8WSiGlAFeCqdTPq+OZ
         iwUwhXSjUkYQS0+MvXJLo6Hb2xqwyjLoqxjY1DTTPLNfksXhGlrTPq3r80OkO6Fm1evV
         yg3RaFO+nM4y2c3wuiJgao3c2UP+CCcjJP2fjrJzsPoxBACyKwURIWKgia6S8ygRPmFe
         he2kgDypSYfC+kaa1nBJ1thEcWADXRrXs4KKH5yIHaGyxjjINq1EiXufkClA19ZfDm/L
         J4tA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=0xnEJ/+ZJd9DS4gn/VKHMcY13sD+e64WV8SaUBqyM+Q=;
        b=WlsnRzCW5s64zRGSf4pYBe13FTsSHHh4/JW8cmX97/syrs/LogycjowX6+75U2HB9u
         D9lEKL6OGGCWCnvIGtiSEGA9MBrjjhPcH35T4Qe7KI6b/8IO/t0WWCK3pz7B0DkwKPCY
         My9QVKzy8BwGdCrpotYdZXq6iue88pELjrqHwXjjA/eyC17cKqUldgKxYvu+75hTGqEs
         AuY4let6bS+9rulCNz7kutBMLKfmzlprM4OlmV1DuvzKtVpMEASVbJWgfNJwpVQPHkpt
         wrt2m5F6ZzTu9dSij0ri1MnL3BxnOR76zQV5R9F00EZG+avAtjnxgbw5cDk46orjv8ex
         wYlg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=NR+kNaW7;
       spf=pass (google.com: domain of andrii.nakryiko@gmail.com designates 2607:f8b0:4864:20::b29 as permitted sender) smtp.mailfrom=andrii.nakryiko@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-yb1-xb29.google.com (mail-yb1-xb29.google.com. [2607:f8b0:4864:20::b29])
        by gmr-mx.google.com with ESMTPS id p6si349937qti.1.2021.02.04.15.54.55
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 04 Feb 2021 15:54:55 -0800 (PST)
Received-SPF: pass (google.com: domain of andrii.nakryiko@gmail.com designates 2607:f8b0:4864:20::b29 as permitted sender) client-ip=2607:f8b0:4864:20::b29;
Received: by mail-yb1-xb29.google.com with SMTP id r2so4961752ybk.11
        for <clang-built-linux@googlegroups.com>; Thu, 04 Feb 2021 15:54:55 -0800 (PST)
X-Received: by 2002:a25:9882:: with SMTP id l2mr2328044ybo.425.1612482895541;
 Thu, 04 Feb 2021 15:54:55 -0800 (PST)
MIME-Version: 1.0
References: <20210115210616.404156-1-ndesaulniers@google.com>
 <CA+icZUVp+JNq89uc_DyWC6zh5=kLtUr7eOxHizfFggnEVGJpqw@mail.gmail.com>
 <7354583d-de40-b6b9-6534-a4f4c038230f@fb.com> <CAKwvOd=5iR0JONwDb6ypD7dzzjOS3Uj0CjcyYqPF48eK4Pi90Q@mail.gmail.com>
 <12b6c2ca-4cf7-4edd-faf2-72e3cb59c00e@fb.com> <20210117201500.GO457607@kernel.org>
 <CAKwvOdmniAMZD0LiFdr5N8eOwHqNFED2Pd=pwOFF2Y8eSRXUHA@mail.gmail.com>
 <CAEf4Bzbn1app3LZ1oah5ARn81j5RMNxRRHPVAkeY3h_0q7+7fg@mail.gmail.com> <CAKwvOdmrVdxbEHdOFA8x+Q2yDWOfChZzBc6nR3rdaM8R3LsxfQ@mail.gmail.com>
In-Reply-To: <CAKwvOdmrVdxbEHdOFA8x+Q2yDWOfChZzBc6nR3rdaM8R3LsxfQ@mail.gmail.com>
From: Andrii Nakryiko <andrii.nakryiko@gmail.com>
Date: Thu, 4 Feb 2021 15:54:44 -0800
Message-ID: <CAEf4Bzbs5sDTB6w1D4LpKLGjY5sCCUnRUsU84Ccn8DoL352j1g@mail.gmail.com>
Subject: Re: [PATCH v5 0/3] Kbuild: DWARF v5 support
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Arnaldo Carvalho de Melo <acme@kernel.org>, Yonghong Song <yhs@fb.com>, Andrii Nakryiko <andrii@kernel.org>, 
	Jiri Olsa <jolsa@kernel.org>, Sedat Dilek <sedat.dilek@gmail.com>, 
	Masahiro Yamada <masahiroy@kernel.org>, Nathan Chancellor <natechancellor@gmail.com>, 
	Andrew Morton <akpm@linux-foundation.org>, LKML <linux-kernel@vger.kernel.org>, 
	Clang-Built-Linux ML <clang-built-linux@googlegroups.com>, 
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, linux-arch <linux-arch@vger.kernel.org>, 
	Jakub Jelinek <jakub@redhat.com>, Fangrui Song <maskray@google.com>, Caroline Tice <cmtice@google.com>, 
	Nick Clifton <nickc@redhat.com>, dwarves@vger.kernel.org, bpf <bpf@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: andrii.nakryiko@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=NR+kNaW7;       spf=pass
 (google.com: domain of andrii.nakryiko@gmail.com designates
 2607:f8b0:4864:20::b29 as permitted sender) smtp.mailfrom=andrii.nakryiko@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Wed, Feb 3, 2021 at 7:13 PM Nick Desaulniers <ndesaulniers@google.com> wrote:
>
> On Wed, Feb 3, 2021 at 6:58 PM Andrii Nakryiko
> <andrii.nakryiko@gmail.com> wrote:
> >
> > On Wed, Feb 3, 2021 at 5:31 PM Nick Desaulniers <ndesaulniers@google.com> wrote:
> > >
> > > On Sun, Jan 17, 2021 at 12:14 PM Arnaldo Carvalho de Melo
> > > <acme@kernel.org> wrote:
> > > >
> > > > Em Fri, Jan 15, 2021 at 03:43:06PM -0800, Yonghong Song escreveu:
> > > > >
> > > > >
> > > > > On 1/15/21 3:34 PM, Nick Desaulniers wrote:
> > > > > > On Fri, Jan 15, 2021 at 3:24 PM Yonghong Song <yhs@fb.com> wrote:
> > > > > > >
> > > > > > >
> > > > > > >
> > > > > > > On 1/15/21 1:53 PM, Sedat Dilek wrote:
> > > > > > > > En plus, I encountered breakage with GCC v10.2.1 and LLVM=1 and
> > > > > > > > CONFIG_DEBUG_INFO_DWARF4.
> > > > > > > > So might be good to add a "depends on !DEBUG_INFO_BTF" in this combination.
> > > > > >
> > > > > > Can you privately send me your configs that repro? Maybe I can isolate
> > > > > > it to a set of configs?
> > > > > >
> > > > > > >
> > > > > > > I suggested not to add !DEBUG_INFO_BTF to CONFIG_DEBUG_INFO_DWARF4.
> > > > > > > It is not there before and adding this may suddenly break some users.
> > > > > > >
> > > > > > > If certain combination of gcc/llvm does not work for
> > > > > > > CONFIG_DEBUG_INFO_DWARF4 with pahole, this is a bug bpf community
> > > > > > > should fix.
> > > > > >
> > > > > > Is there a place I should report bugs?
> > > > >
> > > > > You can send bug report to Arnaldo Carvalho de Melo <acme@kernel.org>,
> > > > > dwarves@vger.kernel.org and bpf@vger.kernel.org.
> > > >
> > > > I'm coming back from vacation, will try to read the messages and see if
> > > > I can fix this.
> > >
> > > IDK about DWARF v4; that seems to work for me.  I was previously observing
> > > https://bugzilla.redhat.com/show_bug.cgi?id=1922698
> > > with DWARF v5.  I just re-pulled the latest pahole, rebuilt, and no
> > > longer see that warning.
> > >
> > > I now observe a different set.  I plan on attending "BPF office hours
> > > tomorrow morning," but if anyone wants a sneak peak of the errors and
> > > how to reproduce:
> > > https://gist.github.com/nickdesaulniers/ae8c9efbe4da69b1cf0dce138c1d2781
> > >
> >
> > Is there another (easy) way to get your patch set without the b4 tool?
> > Is your patch set present in some patchworks instance, so that I can
> > download it in mbox format, for example?
>
> $ wget https://lore.kernel.org/lkml/20210130004401.2528717-2-ndesaulniers@google.com/raw
> -O - | git am
> $ wget https://lore.kernel.org/lkml/20210130004401.2528717-3-ndesaulniers@google.com/raw
> -O - | git am
>
> If you haven't tried b4 yet, it's quite nice.  Hard to go back.  Lore
> also has mbox.gz links.  Not sure about patchwork.
>

Ok, I managed to apply that on linux-next, but I can't get past this:

ld.lld: error: undefined symbol: pa_trampoline_start
>>> referenced by arch/x86/realmode/rm/header.o:(real_mode_header)

ld.lld: error: undefined symbol: pa_trampoline_header
>>> referenced by arch/x86/realmode/rm/header.o:(real_mode_header)

ld.lld: error: undefined symbol: pa_trampoline_pgd
>>> referenced by arch/x86/realmode/rm/header.o:(real_mode_header)
>>> referenced by trampoline_64.S:142 (/data/users/andriin/linux/arch/x86/realmode/rm/trampoline_64.S:142)
>>>               arch/x86/realmode/rm/trampoline_64.o:(startup_32)

ld.lld: error: undefined symbol: pa_wakeup_start
>>> referenced by arch/x86/realmode/rm/header.o:(real_mode_header)

ld.lld: error: undefined symbol: pa_wakeup_header
>>> referenced by arch/x86/realmode/rm/header.o:(real_mode_header)

ld.lld: error: undefined symbol: pa_machine_real_restart_asm
>>> referenced by arch/x86/realmode/rm/header.o:(real_mode_header)

ld.lld: error: undefined symbol: pa_startup_32
>>> referenced by trampoline_64.S:77 (/data/users/andriin/linux/arch/x86/realmode/rm/trampoline_64.S:77)
>>>               arch/x86/realmode/rm/trampoline_64.o:(trampoline_start)

ld.lld: error: undefined symbol: pa_tr_flags
>>> referenced by trampoline_64.S:124 (/data/users/andriin/linux/arch/x86/realmode/rm/trampoline_64.S:124)
>>>               arch/x86/realmode/rm/trampoline_64.o:(startup_32)

ld.lld: error: undefined symbol: pa_tr_cr4
>>> referenced by trampoline_64.S:138 (/data/users/andriin/linux/arch/x86/realmode/rm/trampoline_64.S:138)
>>>               arch/x86/realmode/rm/trampoline_64.o:(startup_32)

ld.lld: error: undefined symbol: pa_tr_efer
>>> referenced by trampoline_64.S:146 (/data/users/andriin/linux/arch/x86/realmode/rm/trampoline_64.S:146)
>>>               arch/x86/realmode/rm/trampoline_64.o:(startup_32)
>>> referenced by trampoline_64.S:147 (/data/users/andriin/linux/arch/x86/realmode/rm/trampoline_64.S:147)
>>>               arch/x86/realmode/rm/trampoline_64.o:(startup_32)

ld.lld: error: undefined symbol: pa_startup_64
>>> referenced by trampoline_64.S:161 (/data/users/andriin/linux/arch/x86/realmode/rm/trampoline_64.S:161)
>>>               arch/x86/realmode/rm/trampoline_64.o:(startup_32)

ld.lld: error: undefined symbol: pa_tr_gdt
>>> referenced by arch/x86/realmode/rm/trampoline_64.o:(tr_gdt)
>>> referenced by reboot.S:28 (/data/users/andriin/linux/arch/x86/realmode/rm/reboot.S:28)
>>>               arch/x86/realmode/rm/reboot.o:(machine_real_restart_asm)

ld.lld: error: undefined symbol: pa_machine_real_restart_paging_off
>>> referenced by reboot.S:34 (/data/users/andriin/linux/arch/x86/realmode/rm/reboot.S:34)
>>>               arch/x86/realmode/rm/reboot.o:(machine_real_restart_asm)

ld.lld: error: undefined symbol: pa_machine_real_restart_idt
>>> referenced by reboot.S:47 (/data/users/andriin/linux/arch/x86/realmode/rm/reboot.S:47)
>>>               arch/x86/realmode/rm/reboot.o:(machine_real_restart_asm)

ld.lld: error: undefined symbol: pa_machine_real_restart_gdt
>>> referenced by reboot.S:54 (/data/users/andriin/linux/arch/x86/realmode/rm/reboot.S:54)
>>>               arch/x86/realmode/rm/reboot.o:(machine_real_restart_asm)
>>> referenced by arch/x86/realmode/rm/reboot.o:(machine_real_restart_gdt)

ld.lld: error: undefined symbol: pa_wakeup_gdt
>>> referenced by arch/x86/realmode/rm/wakeup_asm.o:(wakeup_gdt)
  CC      arch/x86/mm/numa_64.o
  CC      arch/x86/mm/amdtopology.o
  HOSTCC  arch/x86/entry/vdso/vdso2c
make[4]: *** [arch/x86/realmode/rm/realmode.elf] Error 1
make[3]: *** [arch/x86/realmode/rm/realmode.bin] Error 2
make[2]: *** [arch/x86/realmode] Error 2
make[2]: *** Waiting for unfinished jobs....


Hopefully Arnaldo will have better luck.



> >
> > >
> > > (FWIW: some other folks are hitting issues now with kernel's lack of
> > > DWARF v5 support: https://bugzilla.redhat.com/show_bug.cgi?id=1922707)
>
>
> --
> Thanks,
> ~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAEf4Bzbs5sDTB6w1D4LpKLGjY5sCCUnRUsU84Ccn8DoL352j1g%40mail.gmail.com.
