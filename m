Return-Path: <clang-built-linux+bncBCTYRDEG7MGBBKUY6KAAMGQEXAYWL7I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x939.google.com (mail-ua1-x939.google.com [IPv6:2607:f8b0:4864:20::939])
	by mail.lfdr.de (Postfix) with ESMTPS id A780831014F
	for <lists+clang-built-linux@lfdr.de>; Fri,  5 Feb 2021 01:07:07 +0100 (CET)
Received: by mail-ua1-x939.google.com with SMTP id v20sf1509936uau.9
        for <lists+clang-built-linux@lfdr.de>; Thu, 04 Feb 2021 16:07:07 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1612483626; cv=pass;
        d=google.com; s=arc-20160816;
        b=Bs7eAfELZyATPvYg2eOFlF0/R4O86rop8kQJZHWadnhXPg1bQNGY1hY84noEFwatLD
         ZBRkHhxpeo3nrrYns7aiXQ/OoegiUKD+ntmlGIYjgdrbZSc4NSOVT9w7VyJeBnCmJR7Q
         0g8JwcNLkUQWZoeFoamDbR/BewBucsJg5RTAIiWQ9IGsHcN8+/zLftYlrPtJH0WqsLaV
         Cr0jc6UtBzIBq7b2AlaPNdYssMVSTZMYyXvw8omRGnFCGfMcO4/qv9neXLePaLHG0uRM
         o5PNZdILQ9yP8lJWMy1gBSa4QptK536MlXWWGY9HlBwRccRK/pHrcd3ryTOaMAmL79ii
         Y5WA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=F1YIe72j7IrUEYg6GtEoQ3byXZHQEBdDz/YzZtmYI3I=;
        b=htwpucK4OY7YrWpSqmU7R7MtqBdJoAEOxjRqSpZ7DMuuacNqYrTEyulJD5vRb+Yc4L
         CMUukVuod9OqekOHlJJmAebf8xx0zDQ1OeFk7uwgVUR5IQKnFvIzb5aCaLs1bjIu310D
         nynXNwY8sFYrMxtBYgUuzsTn1gu5Fww/1+mxYW7HzSNjxaoFRmLm3r09TKPZqSs/7qW2
         /uctdCoC9W/fZy0bmLqa/VaVO7vE+hhjIKsRE/5V1wDlVjItLqIXkQ7A47OH6OkOjkRA
         Ka0bJURPHV2P/20Lw0MrmCT8PMqQoY7BdrEssv4mtv6Y3NQzV1KmXFsKocAXh+/JJORP
         NUHA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=p+DkXGgF;
       spf=pass (google.com: domain of andrii.nakryiko@gmail.com designates 2607:f8b0:4864:20::b35 as permitted sender) smtp.mailfrom=andrii.nakryiko@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=F1YIe72j7IrUEYg6GtEoQ3byXZHQEBdDz/YzZtmYI3I=;
        b=jSHfdq4seBC2QRYLE1oR8O/7lD9F9PWMIE9sZP7o/PWS9ml9AS/XEkv1yoOWc/26wg
         wKFCZfQXjxXtFlRwn1PHui0OawHsFr/h8N/IaSY7uIUajOnh3j59S0T9LfIpQMth5VSs
         XMuB6HUQrSk+3EmlKsR2v61s9wJOOoZ79h1fTychAlN18vr4oZnEehn/5G1HOtQNawaS
         iInfmUPse3SqN8V64LgDj2CIg3OplyDbggr9Aylqh5+XzrLi+x6EYmU9+MqWrE+XWT2X
         PFhzkbK49flPMYd4/bVhaMEFQBvXQcpRYPkNa69X7tZ1oiqxPRVMTKccQFjTIGZ3ojtH
         7qLw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=F1YIe72j7IrUEYg6GtEoQ3byXZHQEBdDz/YzZtmYI3I=;
        b=sU2Dggku+4llkFwyCowTlswZbZ86FJTVAf7RmW/aY0QUtSn8CyEvOr2/4lSAeu+7Gc
         8Dyb3Wq863b7vXyq+k+a4JBnpXcfLg2VCZGcvCvNPjDdLzjdKnzG9QXdwpXroPMa5R1g
         JkCm9XLo/bv98bXmn7HmwM74FpqPUwuq706ZUZsXBCTOSZW3RIsUHkmPecY+dWejPttN
         ULHWDs9NVrVL4X8ABiIriyTNFWwq7+fgGOghsBU9U6blFqdpPFZphmEKedN080DOwP7/
         9ueJA8tRwPyT5J+a4QoJxyQBIbgKr+fd+4Sn4LG/3yBgl/n2fFuwGA3X822rkM9DK1RK
         9mtw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=F1YIe72j7IrUEYg6GtEoQ3byXZHQEBdDz/YzZtmYI3I=;
        b=qgczodVvEnLPkmM8wZxqv9D3aOENQF3lGaP/9EnaR7An6RZVkZFztJd4Q4TWvR5wfE
         h7I0Pr3eiAx/serpsU5h1FK4+zCfY9G8GVQ/YgqxvZiA35bt9/ms0Ds/fzYLNa0BA/3z
         B1l/5h9o4vl3gTXVydgTpmiwrp4G79PZsySBAisdW5r4T/WYIOwG6MqrLUU3VMm3ZpNt
         8iXy8y9j0a7z0yXke82ZMDwWr8hXJLkjv+OHiBy1hSunv5fERz57shAyJpc896+TF204
         RFHw4DEIpkB9H7m4WiO7RopfZ8klyypskW9QnQnEe8z+K0YmBCxGbpYIchqB0ALN7DWR
         pymA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532qGFbKk46enfW91JM0KwwKkVKaIsK1xjczTYD1VXImMdropahv
	T7cL0kg8Y5/M6G8Lt8Xub2k=
X-Google-Smtp-Source: ABdhPJx6ToESyMr0hkSc8WCsU/Cg8PkoorN3HC9q9LpZpypJalHik9f0zfU8bKVS4qPTAL1cSJbMjw==
X-Received: by 2002:a67:c89b:: with SMTP id v27mr1430679vsk.5.1612483626674;
        Thu, 04 Feb 2021 16:07:06 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ab0:6c44:: with SMTP id q4ls598013uas.7.gmail; Thu, 04 Feb
 2021 16:07:06 -0800 (PST)
X-Received: by 2002:ab0:3c91:: with SMTP id a17mr1512787uax.9.1612483626266;
        Thu, 04 Feb 2021 16:07:06 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1612483626; cv=none;
        d=google.com; s=arc-20160816;
        b=fmDeQfM6dSl/OhcuBnL1cgVj/Mq6JjxvLc5wxEZHDOQO5zeqTNo5YMTHhckeVxCEPB
         6Em4ZCbbv+yFisZnxNn+XKVO4E7N1ooeiYqGfHdStAkr8G5VE44oCOvHwDUw9niDkJWU
         lS/VwCMs3gvxjNbht241NGy38jJv3HF06dlGvOHqVUFKpzOtoomr5Eguq6I3yn6SCmZu
         B4s32RIaQaYWXonOqZRqLwToOUoYybYg59rXnJGQL2m/qbcuSMowA5S4Upx6zdqVv9Mv
         4/eLTTMbZPzU6RwU8BpJDLCku6LcjYUreKqBNqysu0Ndf4wa+UlkTkTvKw1vXBKy7L0S
         bRkw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=e0sgC2TF0wHMn4MJ2bgqkKriGF103yjqQdzbw+Nspgg=;
        b=itb4O4z/dv9sAwGoKQ/0StMsP2lrdeQBn03dCZ2aAXsxAcbJxN8wCd1g8aQ9OvmMiu
         oZemf4TzqJtbtfg2jYpWwEexwjFudtzybNwbXvnX1rqpFgJSJo836GOXiTvd6stdofLF
         ADoOlVbo65ibqMlSqCNTmdQSi1ZMusrIv+h+uRS+/mhNeCCD9km/CzG/JRSOrIPp2irb
         4JkiZ97aAWCMW9n7N68tO55nAxxhzFVoCAyr6ToQA6Z/K1Bm6jy7hJg75NTeAlyna3bZ
         BVO5Q/rqfPuHdGs3v/z/D0KBKwJzApph8pW4KnSDNyJroV5PrIT9DB58/0O3u7ilP/kx
         KqgQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=p+DkXGgF;
       spf=pass (google.com: domain of andrii.nakryiko@gmail.com designates 2607:f8b0:4864:20::b35 as permitted sender) smtp.mailfrom=andrii.nakryiko@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-yb1-xb35.google.com (mail-yb1-xb35.google.com. [2607:f8b0:4864:20::b35])
        by gmr-mx.google.com with ESMTPS id q1si460966vsn.1.2021.02.04.16.07.06
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 04 Feb 2021 16:07:06 -0800 (PST)
Received-SPF: pass (google.com: domain of andrii.nakryiko@gmail.com designates 2607:f8b0:4864:20::b35 as permitted sender) client-ip=2607:f8b0:4864:20::b35;
Received: by mail-yb1-xb35.google.com with SMTP id y4so4978514ybk.12
        for <clang-built-linux@googlegroups.com>; Thu, 04 Feb 2021 16:07:06 -0800 (PST)
X-Received: by 2002:a25:da4d:: with SMTP id n74mr2707506ybf.347.1612483625908;
 Thu, 04 Feb 2021 16:07:05 -0800 (PST)
MIME-Version: 1.0
References: <20210115210616.404156-1-ndesaulniers@google.com>
 <CA+icZUVp+JNq89uc_DyWC6zh5=kLtUr7eOxHizfFggnEVGJpqw@mail.gmail.com>
 <7354583d-de40-b6b9-6534-a4f4c038230f@fb.com> <CAKwvOd=5iR0JONwDb6ypD7dzzjOS3Uj0CjcyYqPF48eK4Pi90Q@mail.gmail.com>
 <12b6c2ca-4cf7-4edd-faf2-72e3cb59c00e@fb.com> <20210117201500.GO457607@kernel.org>
 <CAKwvOdmniAMZD0LiFdr5N8eOwHqNFED2Pd=pwOFF2Y8eSRXUHA@mail.gmail.com>
 <CAEf4Bzbn1app3LZ1oah5ARn81j5RMNxRRHPVAkeY3h_0q7+7fg@mail.gmail.com>
 <CAKwvOdmrVdxbEHdOFA8x+Q2yDWOfChZzBc6nR3rdaM8R3LsxfQ@mail.gmail.com>
 <CAEf4Bzbs5sDTB6w1D4LpKLGjY5sCCUnRUsU84Ccn8DoL352j1g@mail.gmail.com> <CAKwvOdk-4_Pt=DKFokDpG8L58xj4J-=PPrgSLEZnYs7VJu1jZA@mail.gmail.com>
In-Reply-To: <CAKwvOdk-4_Pt=DKFokDpG8L58xj4J-=PPrgSLEZnYs7VJu1jZA@mail.gmail.com>
From: Andrii Nakryiko <andrii.nakryiko@gmail.com>
Date: Thu, 4 Feb 2021 16:06:55 -0800
Message-ID: <CAEf4Bza8yrmq5_Crg9XHA6e+fxfQDRQ-tRDGBzPT5ww4YNuhWw@mail.gmail.com>
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
 header.i=@gmail.com header.s=20161025 header.b=p+DkXGgF;       spf=pass
 (google.com: domain of andrii.nakryiko@gmail.com designates
 2607:f8b0:4864:20::b35 as permitted sender) smtp.mailfrom=andrii.nakryiko@gmail.com;
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

On Thu, Feb 4, 2021 at 4:04 PM Nick Desaulniers <ndesaulniers@google.com> wrote:
>
> Moving a bunch of folks + lists to BCC.
>
> On Thu, Feb 4, 2021 at 3:54 PM Andrii Nakryiko
> <andrii.nakryiko@gmail.com> wrote:
> >
> > On Wed, Feb 3, 2021 at 7:13 PM Nick Desaulniers <ndesaulniers@google.com> wrote:
> > >
> > > On Wed, Feb 3, 2021 at 6:58 PM Andrii Nakryiko
> > > <andrii.nakryiko@gmail.com> wrote:
> > > >
> > > > On Wed, Feb 3, 2021 at 5:31 PM Nick Desaulniers <ndesaulniers@google.com> wrote:
> > > > >
> > > > > On Sun, Jan 17, 2021 at 12:14 PM Arnaldo Carvalho de Melo
> > > > > <acme@kernel.org> wrote:
> > > > > >
> > > > > > Em Fri, Jan 15, 2021 at 03:43:06PM -0800, Yonghong Song escreveu:
> > > > > > >
> > > > > > >
> > > > > > > On 1/15/21 3:34 PM, Nick Desaulniers wrote:
> > > > > > > > On Fri, Jan 15, 2021 at 3:24 PM Yonghong Song <yhs@fb.com> wrote:
> > > > > > > > >
> > > > > > > > >
> > > > > > > > >
> > > > > > > > > On 1/15/21 1:53 PM, Sedat Dilek wrote:
> > > > > > > > > > En plus, I encountered breakage with GCC v10.2.1 and LLVM=1 and
> > > > > > > > > > CONFIG_DEBUG_INFO_DWARF4.
> > > > > > > > > > So might be good to add a "depends on !DEBUG_INFO_BTF" in this combination.
> > > > > > > >
> > > > > > > > Can you privately send me your configs that repro? Maybe I can isolate
> > > > > > > > it to a set of configs?
> > > > > > > >
> > > > > > > > >
> > > > > > > > > I suggested not to add !DEBUG_INFO_BTF to CONFIG_DEBUG_INFO_DWARF4.
> > > > > > > > > It is not there before and adding this may suddenly break some users.
> > > > > > > > >
> > > > > > > > > If certain combination of gcc/llvm does not work for
> > > > > > > > > CONFIG_DEBUG_INFO_DWARF4 with pahole, this is a bug bpf community
> > > > > > > > > should fix.
> > > > > > > >
> > > > > > > > Is there a place I should report bugs?
> > > > > > >
> > > > > > > You can send bug report to Arnaldo Carvalho de Melo <acme@kernel.org>,
> > > > > > > dwarves@vger.kernel.org and bpf@vger.kernel.org.
> > > > > >
> > > > > > I'm coming back from vacation, will try to read the messages and see if
> > > > > > I can fix this.
> > > > >
> > > > > IDK about DWARF v4; that seems to work for me.  I was previously observing
> > > > > https://bugzilla.redhat.com/show_bug.cgi?id=1922698
> > > > > with DWARF v5.  I just re-pulled the latest pahole, rebuilt, and no
> > > > > longer see that warning.
> > > > >
> > > > > I now observe a different set.  I plan on attending "BPF office hours
> > > > > tomorrow morning," but if anyone wants a sneak peak of the errors and
> > > > > how to reproduce:
> > > > > https://gist.github.com/nickdesaulniers/ae8c9efbe4da69b1cf0dce138c1d2781
> > > > >
> > > >
> > > > Is there another (easy) way to get your patch set without the b4 tool?
> > > > Is your patch set present in some patchworks instance, so that I can
> > > > download it in mbox format, for example?
> > >
> > > $ wget https://lore.kernel.org/lkml/20210130004401.2528717-2-ndesaulniers@google.com/raw
> > > -O - | git am
> > > $ wget https://lore.kernel.org/lkml/20210130004401.2528717-3-ndesaulniers@google.com/raw
> > > -O - | git am
> > >
> > > If you haven't tried b4 yet, it's quite nice.  Hard to go back.  Lore
> > > also has mbox.gz links.  Not sure about patchwork.
> > >
> >
> > Ok, I managed to apply that on linux-next, but I can't get past this:
> >
> > ld.lld: error: undefined symbol: pa_trampoline_start
> > >>> referenced by arch/x86/realmode/rm/header.o:(real_mode_header)
>
> Thanks for testing and the report. Do you have a .config you can send
> me to reproduce?
>

I followed your steps exactly, used olddefconfig. I've build with both
latest clang master and llvmorg-12.0.0-rc1 tag. This might be
something with my environment, I don't know.

> >
> > ld.lld: error: undefined symbol: pa_trampoline_header
> > >>> referenced by arch/x86/realmode/rm/header.o:(real_mode_header)
> >
> > ld.lld: error: undefined symbol: pa_trampoline_pgd
> > >>> referenced by arch/x86/realmode/rm/header.o:(real_mode_header)
> > >>> referenced by trampoline_64.S:142 (/data/users/andriin/linux/arch/x86/realmode/rm/trampoline_64.S:142)
> > >>>               arch/x86/realmode/rm/trampoline_64.o:(startup_32)
> >
> > ld.lld: error: undefined symbol: pa_wakeup_start
> > >>> referenced by arch/x86/realmode/rm/header.o:(real_mode_header)
> >
> > ld.lld: error: undefined symbol: pa_wakeup_header
> > >>> referenced by arch/x86/realmode/rm/header.o:(real_mode_header)
> >
> > ld.lld: error: undefined symbol: pa_machine_real_restart_asm
> > >>> referenced by arch/x86/realmode/rm/header.o:(real_mode_header)
> >
> > ld.lld: error: undefined symbol: pa_startup_32
> > >>> referenced by trampoline_64.S:77 (/data/users/andriin/linux/arch/x86/realmode/rm/trampoline_64.S:77)
> > >>>               arch/x86/realmode/rm/trampoline_64.o:(trampoline_start)
> >
> > ld.lld: error: undefined symbol: pa_tr_flags
> > >>> referenced by trampoline_64.S:124 (/data/users/andriin/linux/arch/x86/realmode/rm/trampoline_64.S:124)
> > >>>               arch/x86/realmode/rm/trampoline_64.o:(startup_32)
> >
> > ld.lld: error: undefined symbol: pa_tr_cr4
> > >>> referenced by trampoline_64.S:138 (/data/users/andriin/linux/arch/x86/realmode/rm/trampoline_64.S:138)
> > >>>               arch/x86/realmode/rm/trampoline_64.o:(startup_32)
> >
> > ld.lld: error: undefined symbol: pa_tr_efer
> > >>> referenced by trampoline_64.S:146 (/data/users/andriin/linux/arch/x86/realmode/rm/trampoline_64.S:146)
> > >>>               arch/x86/realmode/rm/trampoline_64.o:(startup_32)
> > >>> referenced by trampoline_64.S:147 (/data/users/andriin/linux/arch/x86/realmode/rm/trampoline_64.S:147)
> > >>>               arch/x86/realmode/rm/trampoline_64.o:(startup_32)
> >
> > ld.lld: error: undefined symbol: pa_startup_64
> > >>> referenced by trampoline_64.S:161 (/data/users/andriin/linux/arch/x86/realmode/rm/trampoline_64.S:161)
> > >>>               arch/x86/realmode/rm/trampoline_64.o:(startup_32)
> >
> > ld.lld: error: undefined symbol: pa_tr_gdt
> > >>> referenced by arch/x86/realmode/rm/trampoline_64.o:(tr_gdt)
> > >>> referenced by reboot.S:28 (/data/users/andriin/linux/arch/x86/realmode/rm/reboot.S:28)
> > >>>               arch/x86/realmode/rm/reboot.o:(machine_real_restart_asm)
> >
> > ld.lld: error: undefined symbol: pa_machine_real_restart_paging_off
> > >>> referenced by reboot.S:34 (/data/users/andriin/linux/arch/x86/realmode/rm/reboot.S:34)
> > >>>               arch/x86/realmode/rm/reboot.o:(machine_real_restart_asm)
> >
> > ld.lld: error: undefined symbol: pa_machine_real_restart_idt
> > >>> referenced by reboot.S:47 (/data/users/andriin/linux/arch/x86/realmode/rm/reboot.S:47)
> > >>>               arch/x86/realmode/rm/reboot.o:(machine_real_restart_asm)
> >
> > ld.lld: error: undefined symbol: pa_machine_real_restart_gdt
> > >>> referenced by reboot.S:54 (/data/users/andriin/linux/arch/x86/realmode/rm/reboot.S:54)
> > >>>               arch/x86/realmode/rm/reboot.o:(machine_real_restart_asm)
> > >>> referenced by arch/x86/realmode/rm/reboot.o:(machine_real_restart_gdt)
> >
> > ld.lld: error: undefined symbol: pa_wakeup_gdt
> > >>> referenced by arch/x86/realmode/rm/wakeup_asm.o:(wakeup_gdt)
> >   CC      arch/x86/mm/numa_64.o
> >   CC      arch/x86/mm/amdtopology.o
> >   HOSTCC  arch/x86/entry/vdso/vdso2c
> > make[4]: *** [arch/x86/realmode/rm/realmode.elf] Error 1
> > make[3]: *** [arch/x86/realmode/rm/realmode.bin] Error 2
> > make[2]: *** [arch/x86/realmode] Error 2
> > make[2]: *** Waiting for unfinished jobs....
> >
> >
> > Hopefully Arnaldo will have better luck.
> >
> >
> >
> > > >
> > > > >
> > > > > (FWIW: some other folks are hitting issues now with kernel's lack of
> > > > > DWARF v5 support: https://bugzilla.redhat.com/show_bug.cgi?id=1922707)
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAEf4Bza8yrmq5_Crg9XHA6e%2BfxfQDRQ-tRDGBzPT5ww4YNuhWw%40mail.gmail.com.
