Return-Path: <clang-built-linux+bncBCTYRDEG7MGBBLE56KAAMGQE7PYVLUY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43d.google.com (mail-pf1-x43d.google.com [IPv6:2607:f8b0:4864:20::43d])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DEB2310173
	for <lists+clang-built-linux@lfdr.de>; Fri,  5 Feb 2021 01:17:50 +0100 (CET)
Received: by mail-pf1-x43d.google.com with SMTP id t22sf3599911pfc.9
        for <lists+clang-built-linux@lfdr.de>; Thu, 04 Feb 2021 16:17:49 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1612484268; cv=pass;
        d=google.com; s=arc-20160816;
        b=BU//XFwybrmQSXBqqqozPdm2Cgcz7dJ0xtxW4lahww76L6lR2t5aB21dqv2fAFmL27
         tFf1ZMUdrQU9iKnfJtMOcWpOlDoB53HavC07VbwV5V9xEWSD+fjEgc4uQJIydSgIB99Q
         wo9gOYAf+vPZZBYP48nV9Z9olgyGdggcEskTaevDKKrwEFNGc78CKp0W9lpET0Xeu0Ul
         c1tAGYMYUgzyfkWjWq69whXb+t9xtLqLqPHQVs8zq/D00fNyn2CHH/Ph6IAVR1i3+htL
         oLGs4vv0geLuyLyCKqH0xNZjM5OjZkFC51SFRkvWURJ5osG1A/jAMXW/dA8oB3f4xQ7U
         XJtA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=ygI+orlpIVUF31k0R/ijqdPXqiX1rxWVaq6Oz18Cli8=;
        b=V2J3jMZf74l3QDkCPOFAgLqMw5RmF894hYFrOc5gP4T+/z40O02NH1rzH6uDToTsTy
         PTilG9d+GRTksm+hEt6MhfYriK3R3WXYzgxa186bNjccEOp1FYTFMYqZvpPWOE/G5Unn
         rnKDeXnhlP7wB2cCdRh1FZFDhE4NRXSpdSsoln6pmDSZktYI4PypftSi8KN02lXafGUA
         WmaaUT7KN2552ivzJqG2zP+CQoMDbNnxRLw20pOzFmnCY3zfsCkv+I2uq8TkzWAw7ltn
         ZCT0TJCN2FtjEg6zZuU5GawOnPCrM0zeGNMIWhEhzaDyhE7Ldv4rhropqWimbKQpAYVj
         HLQA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=SE3CK1Yc;
       spf=pass (google.com: domain of andrii.nakryiko@gmail.com designates 2607:f8b0:4864:20::b2a as permitted sender) smtp.mailfrom=andrii.nakryiko@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ygI+orlpIVUF31k0R/ijqdPXqiX1rxWVaq6Oz18Cli8=;
        b=e3jDRvdnHo0i9BsLajywMFAMO9mIX0yQ8LFF/gKxPxRtFHnUA0Z3Ks8Ty182tZd8dB
         5AKrpp+XjRYwMqXEydFw3YpafNCPTUOFAmM0+33jeT8TdQNC18FItmiCPPB0kd9GVxLQ
         t8xVnJ8bNMAcBc50EYctTC4ZPnYPE5pem4FnvoXML5qONn9i33Sgwvu7BgkdvLS52UQj
         ksbuSIz/ii5+Xz6vJaxbPzwhuHqLqc9q53AV+nO2cjV7gw0ZvETraAuY/sIR7Sk5viMI
         Wun+q+zLRQ6Un/WX+C9Id1yvMxf9Y2zyxvXLKhc8G0MhV3pdGeTPqkkvTcoFwUI7J/cC
         6ssQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ygI+orlpIVUF31k0R/ijqdPXqiX1rxWVaq6Oz18Cli8=;
        b=FttkUETkL1dDfz4U5JddItNw7YhPKmrbyYbO3cih+h8a1xeYsE1kUQpJNSmC0WYnc1
         udDo00B8d3zNJ6Q1mB3qVBKbTLk1wIk4ZKY3CjxevLxuCg4wzR4nU+qt0xaaRKT9pjNy
         Kq9udYnGm/r7lfOKC1pvydtNyi6ogB3F6g8fVMSg+nO5G1ZsCZaDOduSdEmv3E/jeWpc
         yHPJohMeYS0Op3UGt1RoGeVZrWIOtEyXgPHeMajHyQBEAPDhq0TJP7p86es/sTZv8lNk
         IZsZvffn5KtORm/Jen/fQmBhgjsk62ze3ftMiZNNtXt7bvbWPqThzsSGxxKBh/Sf+Tgv
         WEgw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ygI+orlpIVUF31k0R/ijqdPXqiX1rxWVaq6Oz18Cli8=;
        b=BjMXjFjtrHAfseCclhvaW8ETDnR78xcQdzAZD+TiW0B94bZbiZxCK1SnmgUsW3Pl8/
         lbzwWkdL5QnQi6+wbphkQ8IAlZWno62Oz4UdFDwuJbo0+eOtLDFVKoPeld07BdFQPsHs
         tkvKgj79jH54190Xyj0vJ0cOsHBzBCgjPQB4nq6rD9j8o/KkzLOxo3KZ/Db2qKCRsExv
         fENJecOgcZ9PEP0VAr/kEWd5P0/dn/Utzb3FCHwZ6MttUzn/7RC558FggsBfjbtWwjfs
         DsdfSuOgO1x2OfRtxhMCH/Ts2ADD3DD7KWZQNqH9Dcu8LRAq3ol7yg3OB08y8E9j0JTZ
         kyVg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532SmUmlxK8RMJXUi9DzahBXG+zeB9T8Vdy1nrSXexIt1paZIdMT
	0sS+94sbbGGeYK+6UTT2RxI=
X-Google-Smtp-Source: ABdhPJx3fzYZ6BGOJ3GDtAGYAHQxKWUEz8m4TJAO0hB5lODBU7AWVMxGlKR93NrW7hP0Rm0Wo4B7ZA==
X-Received: by 2002:a65:58c4:: with SMTP id e4mr1497676pgu.151.1612484268419;
        Thu, 04 Feb 2021 16:17:48 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:903:2311:: with SMTP id d17ls3414621plh.6.gmail; Thu, 04
 Feb 2021 16:17:47 -0800 (PST)
X-Received: by 2002:a17:90a:5513:: with SMTP id b19mr1460915pji.99.1612484267662;
        Thu, 04 Feb 2021 16:17:47 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1612484267; cv=none;
        d=google.com; s=arc-20160816;
        b=m43dmSTvpJvM4r1RrwE4qouqkGSDTu63BjvEj7Vtbzw4e5dOSNlgBibXnIWuHhm35t
         wTLU4Qy895+HDyZotAwxGs6MGDdZmJX71HYPOTPmuvlQv0iRTpNT3Rr6GPJ21zYjOdWE
         OCxaw/d5TmegGOyfIibKrJIgxlKas+mnRJlpMDL8EaF01IgsdAh5IKwwgVbf6mlqDN8n
         Qf5EuFxDB4vourQHaGo8+R7ZWlyjnDyzXRhkJzEIJdCaDhCJdLq9NHXp5MJPzxSFQ74v
         bLdhkx/8W5Q3GSbhmzsri5qChX7I81aYr3tswnH3utygcUvu/9e5W2iMvg0PV/hpg1IX
         2WJg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=ckFhZ6j+ffpkEQ1oMJBSYsREswTRxfIcdVWdZkICZM4=;
        b=razV9bngPrbX0EZF7zhI213iFyT1DFaa8ZKHARXX074Z3C4Sa/juHSVyTCnfUZqGNy
         vraL0MjzGB2cDj7jGxdUWp7Q9/qE/IY7IPAWGkvCeZg5QjVcwx3aV2ztbFV6bac0PoOT
         BlHush6l0vHBGUndrULzwe6sEdXGDmSfdMcdUsFj/xEdVSV1IWJ5tN05NK1LVyWJ2eKL
         eWNlfzfUy+hX3S0VLgMbbs3RHHpjvbApgzVcHqcH7ltBKSKdStmdwsAVO+crPy3ssQHv
         OK0H0IkMKpeulWD8iQMqQL4unJpPrt1d+4lmL/Iwot+hdIkmzTMltOpgQZhR0aqmB1gb
         0O8g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=SE3CK1Yc;
       spf=pass (google.com: domain of andrii.nakryiko@gmail.com designates 2607:f8b0:4864:20::b2a as permitted sender) smtp.mailfrom=andrii.nakryiko@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-yb1-xb2a.google.com (mail-yb1-xb2a.google.com. [2607:f8b0:4864:20::b2a])
        by gmr-mx.google.com with ESMTPS id i10si398694pfa.6.2021.02.04.16.17.47
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 04 Feb 2021 16:17:47 -0800 (PST)
Received-SPF: pass (google.com: domain of andrii.nakryiko@gmail.com designates 2607:f8b0:4864:20::b2a as permitted sender) client-ip=2607:f8b0:4864:20::b2a;
Received: by mail-yb1-xb2a.google.com with SMTP id i6so5044786ybq.5
        for <clang-built-linux@googlegroups.com>; Thu, 04 Feb 2021 16:17:47 -0800 (PST)
X-Received: by 2002:a25:da4d:: with SMTP id n74mr2756907ybf.347.1612484266843;
 Thu, 04 Feb 2021 16:17:46 -0800 (PST)
MIME-Version: 1.0
References: <20210115210616.404156-1-ndesaulniers@google.com>
 <CA+icZUVp+JNq89uc_DyWC6zh5=kLtUr7eOxHizfFggnEVGJpqw@mail.gmail.com>
 <7354583d-de40-b6b9-6534-a4f4c038230f@fb.com> <CAKwvOd=5iR0JONwDb6ypD7dzzjOS3Uj0CjcyYqPF48eK4Pi90Q@mail.gmail.com>
 <12b6c2ca-4cf7-4edd-faf2-72e3cb59c00e@fb.com> <20210117201500.GO457607@kernel.org>
 <CAKwvOdmniAMZD0LiFdr5N8eOwHqNFED2Pd=pwOFF2Y8eSRXUHA@mail.gmail.com>
 <CAEf4Bzbn1app3LZ1oah5ARn81j5RMNxRRHPVAkeY3h_0q7+7fg@mail.gmail.com>
 <CAKwvOdmrVdxbEHdOFA8x+Q2yDWOfChZzBc6nR3rdaM8R3LsxfQ@mail.gmail.com>
 <CAEf4Bzbs5sDTB6w1D4LpKLGjY5sCCUnRUsU84Ccn8DoL352j1g@mail.gmail.com>
 <CAKwvOdk-4_Pt=DKFokDpG8L58xj4J-=PPrgSLEZnYs7VJu1jZA@mail.gmail.com>
 <CAEf4Bza8yrmq5_Crg9XHA6e+fxfQDRQ-tRDGBzPT5ww4YNuhWw@mail.gmail.com> <CAKwvOdk7vkep157q4q4EamkdYWMLYzwM_7PYW1rdy=BFQye66w@mail.gmail.com>
In-Reply-To: <CAKwvOdk7vkep157q4q4EamkdYWMLYzwM_7PYW1rdy=BFQye66w@mail.gmail.com>
From: Andrii Nakryiko <andrii.nakryiko@gmail.com>
Date: Thu, 4 Feb 2021 16:17:35 -0800
Message-ID: <CAEf4Bzb-dyTkYaQK_hzFdf6akd5SnBCR8Kt-k2ygrXRM1BmwTw@mail.gmail.com>
Subject: Re: [PATCH v5 0/3] Kbuild: DWARF v5 support
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Arnaldo Carvalho de Melo <acme@kernel.org>, Yonghong Song <yhs@fb.com>, Andrii Nakryiko <andrii@kernel.org>, 
	Jiri Olsa <jolsa@kernel.org>, Sedat Dilek <sedat.dilek@gmail.com>, 
	Nathan Chancellor <natechancellor@gmail.com>, 
	Clang-Built-Linux ML <clang-built-linux@googlegroups.com>, Fangrui Song <maskray@google.com>, 
	bpf <bpf@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: andrii.nakryiko@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=SE3CK1Yc;       spf=pass
 (google.com: domain of andrii.nakryiko@gmail.com designates
 2607:f8b0:4864:20::b2a as permitted sender) smtp.mailfrom=andrii.nakryiko@gmail.com;
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

On Thu, Feb 4, 2021 at 4:12 PM Nick Desaulniers <ndesaulniers@google.com> wrote:
>
> On Thu, Feb 4, 2021 at 4:07 PM Andrii Nakryiko
> <andrii.nakryiko@gmail.com> wrote:
> >
> > On Thu, Feb 4, 2021 at 4:04 PM Nick Desaulniers <ndesaulniers@google.com> wrote:
> > >
> > > Moving a bunch of folks + lists to BCC.
> > >
> > > On Thu, Feb 4, 2021 at 3:54 PM Andrii Nakryiko
> > > <andrii.nakryiko@gmail.com> wrote:
> > > >
> > > > On Wed, Feb 3, 2021 at 7:13 PM Nick Desaulniers <ndesaulniers@google.com> wrote:
> > > > >
> > > > > On Wed, Feb 3, 2021 at 6:58 PM Andrii Nakryiko
> > > > > <andrii.nakryiko@gmail.com> wrote:
> > > > > >
> > > > > > On Wed, Feb 3, 2021 at 5:31 PM Nick Desaulniers <ndesaulniers@google.com> wrote:
> > > > > > >
> > > > > > > On Sun, Jan 17, 2021 at 12:14 PM Arnaldo Carvalho de Melo
> > > > > > > <acme@kernel.org> wrote:
> > > > > > > >
> > > > > > > > Em Fri, Jan 15, 2021 at 03:43:06PM -0800, Yonghong Song escreveu:
> > > > > > > > >
> > > > > > > > >
> > > > > > > > > On 1/15/21 3:34 PM, Nick Desaulniers wrote:
> > > > > > > > > > On Fri, Jan 15, 2021 at 3:24 PM Yonghong Song <yhs@fb.com> wrote:
> > > > > > > > > > >
> > > > > > > > > > >
> > > > > > > > > > >
> > > > > > > > > > > On 1/15/21 1:53 PM, Sedat Dilek wrote:
> > > > > > > > > > > > En plus, I encountered breakage with GCC v10.2.1 and LLVM=1 and
> > > > > > > > > > > > CONFIG_DEBUG_INFO_DWARF4.
> > > > > > > > > > > > So might be good to add a "depends on !DEBUG_INFO_BTF" in this combination.
> > > > > > > > > >
> > > > > > > > > > Can you privately send me your configs that repro? Maybe I can isolate
> > > > > > > > > > it to a set of configs?
> > > > > > > > > >
> > > > > > > > > > >
> > > > > > > > > > > I suggested not to add !DEBUG_INFO_BTF to CONFIG_DEBUG_INFO_DWARF4.
> > > > > > > > > > > It is not there before and adding this may suddenly break some users.
> > > > > > > > > > >
> > > > > > > > > > > If certain combination of gcc/llvm does not work for
> > > > > > > > > > > CONFIG_DEBUG_INFO_DWARF4 with pahole, this is a bug bpf community
> > > > > > > > > > > should fix.
> > > > > > > > > >
> > > > > > > > > > Is there a place I should report bugs?
> > > > > > > > >
> > > > > > > > > You can send bug report to Arnaldo Carvalho de Melo <acme@kernel.org>,
> > > > > > > > > dwarves@vger.kernel.org and bpf@vger.kernel.org.
> > > > > > > >
> > > > > > > > I'm coming back from vacation, will try to read the messages and see if
> > > > > > > > I can fix this.
> > > > > > >
> > > > > > > IDK about DWARF v4; that seems to work for me.  I was previously observing
> > > > > > > https://bugzilla.redhat.com/show_bug.cgi?id=1922698
> > > > > > > with DWARF v5.  I just re-pulled the latest pahole, rebuilt, and no
> > > > > > > longer see that warning.
> > > > > > >
> > > > > > > I now observe a different set.  I plan on attending "BPF office hours
> > > > > > > tomorrow morning," but if anyone wants a sneak peak of the errors and
> > > > > > > how to reproduce:
> > > > > > > https://gist.github.com/nickdesaulniers/ae8c9efbe4da69b1cf0dce138c1d2781
> > > > > > >
> > > > > >
> > > > > > Is there another (easy) way to get your patch set without the b4 tool?
> > > > > > Is your patch set present in some patchworks instance, so that I can
> > > > > > download it in mbox format, for example?
> > > > >
> > > > > $ wget https://lore.kernel.org/lkml/20210130004401.2528717-2-ndesaulniers@google.com/raw
> > > > > -O - | git am
> > > > > $ wget https://lore.kernel.org/lkml/20210130004401.2528717-3-ndesaulniers@google.com/raw
> > > > > -O - | git am
> > > > >
> > > > > If you haven't tried b4 yet, it's quite nice.  Hard to go back.  Lore
> > > > > also has mbox.gz links.  Not sure about patchwork.
> > > > >
> > > >
> > > > Ok, I managed to apply that on linux-next, but I can't get past this:
> > > >
> > > > ld.lld: error: undefined symbol: pa_trampoline_start
> > > > >>> referenced by arch/x86/realmode/rm/header.o:(real_mode_header)
> > >
> > > Thanks for testing and the report. Do you have a .config you can send
> > > me to reproduce?
> > >
> >
> > I followed your steps exactly, used olddefconfig. I've build with both
> > latest clang master and llvmorg-12.0.0-rc1 tag. This might be
> > something with my environment, I don't know.
>
> Perhaps, but "olddefconfig" is not reproducible for anyone else, ever.
> Please send me your .config that produced the errors.
>

Sorry, I meant defconfig + enable DWARF5 and BTF + then olddefconfig.
But I can send you config still a bit later.

> >
> > > >
> > > > ld.lld: error: undefined symbol: pa_trampoline_header
> > > > >>> referenced by arch/x86/realmode/rm/header.o:(real_mode_header)
> > > >
> > > > ld.lld: error: undefined symbol: pa_trampoline_pgd
> > > > >>> referenced by arch/x86/realmode/rm/header.o:(real_mode_header)
> > > > >>> referenced by trampoline_64.S:142 (/data/users/andriin/linux/arch/x86/realmode/rm/trampoline_64.S:142)
> > > > >>>               arch/x86/realmode/rm/trampoline_64.o:(startup_32)
> > > >
> > > > ld.lld: error: undefined symbol: pa_wakeup_start
> > > > >>> referenced by arch/x86/realmode/rm/header.o:(real_mode_header)
> > > >
> > > > ld.lld: error: undefined symbol: pa_wakeup_header
> > > > >>> referenced by arch/x86/realmode/rm/header.o:(real_mode_header)
> > > >
> > > > ld.lld: error: undefined symbol: pa_machine_real_restart_asm
> > > > >>> referenced by arch/x86/realmode/rm/header.o:(real_mode_header)
> > > >
> > > > ld.lld: error: undefined symbol: pa_startup_32
> > > > >>> referenced by trampoline_64.S:77 (/data/users/andriin/linux/arch/x86/realmode/rm/trampoline_64.S:77)
> > > > >>>               arch/x86/realmode/rm/trampoline_64.o:(trampoline_start)
> > > >
> > > > ld.lld: error: undefined symbol: pa_tr_flags
> > > > >>> referenced by trampoline_64.S:124 (/data/users/andriin/linux/arch/x86/realmode/rm/trampoline_64.S:124)
> > > > >>>               arch/x86/realmode/rm/trampoline_64.o:(startup_32)
> > > >
> > > > ld.lld: error: undefined symbol: pa_tr_cr4
> > > > >>> referenced by trampoline_64.S:138 (/data/users/andriin/linux/arch/x86/realmode/rm/trampoline_64.S:138)
> > > > >>>               arch/x86/realmode/rm/trampoline_64.o:(startup_32)
> > > >
> > > > ld.lld: error: undefined symbol: pa_tr_efer
> > > > >>> referenced by trampoline_64.S:146 (/data/users/andriin/linux/arch/x86/realmode/rm/trampoline_64.S:146)
> > > > >>>               arch/x86/realmode/rm/trampoline_64.o:(startup_32)
> > > > >>> referenced by trampoline_64.S:147 (/data/users/andriin/linux/arch/x86/realmode/rm/trampoline_64.S:147)
> > > > >>>               arch/x86/realmode/rm/trampoline_64.o:(startup_32)
> > > >
> > > > ld.lld: error: undefined symbol: pa_startup_64
> > > > >>> referenced by trampoline_64.S:161 (/data/users/andriin/linux/arch/x86/realmode/rm/trampoline_64.S:161)
> > > > >>>               arch/x86/realmode/rm/trampoline_64.o:(startup_32)
> > > >
> > > > ld.lld: error: undefined symbol: pa_tr_gdt
> > > > >>> referenced by arch/x86/realmode/rm/trampoline_64.o:(tr_gdt)
> > > > >>> referenced by reboot.S:28 (/data/users/andriin/linux/arch/x86/realmode/rm/reboot.S:28)
> > > > >>>               arch/x86/realmode/rm/reboot.o:(machine_real_restart_asm)
> > > >
> > > > ld.lld: error: undefined symbol: pa_machine_real_restart_paging_off
> > > > >>> referenced by reboot.S:34 (/data/users/andriin/linux/arch/x86/realmode/rm/reboot.S:34)
> > > > >>>               arch/x86/realmode/rm/reboot.o:(machine_real_restart_asm)
> > > >
> > > > ld.lld: error: undefined symbol: pa_machine_real_restart_idt
> > > > >>> referenced by reboot.S:47 (/data/users/andriin/linux/arch/x86/realmode/rm/reboot.S:47)
> > > > >>>               arch/x86/realmode/rm/reboot.o:(machine_real_restart_asm)
> > > >
> > > > ld.lld: error: undefined symbol: pa_machine_real_restart_gdt
> > > > >>> referenced by reboot.S:54 (/data/users/andriin/linux/arch/x86/realmode/rm/reboot.S:54)
> > > > >>>               arch/x86/realmode/rm/reboot.o:(machine_real_restart_asm)
> > > > >>> referenced by arch/x86/realmode/rm/reboot.o:(machine_real_restart_gdt)
> > > >
> > > > ld.lld: error: undefined symbol: pa_wakeup_gdt
> > > > >>> referenced by arch/x86/realmode/rm/wakeup_asm.o:(wakeup_gdt)
> > > >   CC      arch/x86/mm/numa_64.o
> > > >   CC      arch/x86/mm/amdtopology.o
> > > >   HOSTCC  arch/x86/entry/vdso/vdso2c
> > > > make[4]: *** [arch/x86/realmode/rm/realmode.elf] Error 1
> > > > make[3]: *** [arch/x86/realmode/rm/realmode.bin] Error 2
> > > > make[2]: *** [arch/x86/realmode] Error 2
> > > > make[2]: *** Waiting for unfinished jobs....
> > > >
> > > >
> > > > Hopefully Arnaldo will have better luck.
> > > >
> > > >
> > > >
> > > > > >
> > > > > > >
> > > > > > > (FWIW: some other folks are hitting issues now with kernel's lack of
> > > > > > > DWARF v5 support: https://bugzilla.redhat.com/show_bug.cgi?id=1922707)
> > > > >
> > > > >
> > > > > --
> > > > > Thanks,
> > > > > ~Nick Desaulniers
> > >
> > >
> > >
> > > --
> > > Thanks,
> > > ~Nick Desaulniers
>
>
>
> --
> Thanks,
> ~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAEf4Bzb-dyTkYaQK_hzFdf6akd5SnBCR8Kt-k2ygrXRM1BmwTw%40mail.gmail.com.
