Return-Path: <clang-built-linux+bncBDYJPJO25UGBBU426KAAMGQEOJWBOBQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33b.google.com (mail-ot1-x33b.google.com [IPv6:2607:f8b0:4864:20::33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 4942E310163
	for <lists+clang-built-linux@lfdr.de>; Fri,  5 Feb 2021 01:12:04 +0100 (CET)
Received: by mail-ot1-x33b.google.com with SMTP id v24sf2562583ott.17
        for <lists+clang-built-linux@lfdr.de>; Thu, 04 Feb 2021 16:12:04 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1612483923; cv=pass;
        d=google.com; s=arc-20160816;
        b=LyIutkdw8kjtKG8+5/029t+amPzs8L0Ex/MX/kAiZUoGhh+7kbeTPNUdj8iykc1gne
         IIVyIJl5CIxO97j2cLq6hNGvMrqI1nAOH0z9u80LEB19joKw3XPftkezdRzgdGv3hXBL
         12KoPU1V81vzmAaJ6c6x1wJevKE4j9dSPodWx0d+O9myaveY8Uud10XTT6JaRq785+MF
         nFCU7jX67v6cnBhe9UaFa1Wfz/kn7iqVlMSuABXgMlA8+SKu1rKspByVAKpB3FFY4QOw
         aXv9TmO0BjOHmwj+ozQ522VtCSta+SDNP1MuT3doYJzJqURTkwSvMfzBwwQUiiQIxnMD
         mo9Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=iqAKvTuD3jVHBEG7ovmOUVbfmWYG552J03obUHymSow=;
        b=FvndQ+39LEy2UwBPDYin2iaivEDVpcn+XjhZrFf0l6f4pPcncBnPYytQINk5D0xDg/
         XPHKZNVek6rwIuV80MGCAZrMwLHDJZ6RdYT3zCsMai/YK8ggsrSgUWMqwWRzpTAcMuzY
         Exk69n7umocfRbF8bl24J1RcS7ebKCeFabmAH1kJ0dgFM6zKvs3KyAL/2vY4ouUUOdhA
         5XxgIBu5eJICOG2SxCt/mLydKwIlvzQCglWrCF9BTe8Fcbt+yLW2krBgziYbBz1JpG01
         zuzI0aUeA6OkBMzihkAzIY5nWE0YRzMOKPkY7PbUCamb0At1TOmhCMvsacSgGfoYddiV
         WGAA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=YI7xZcUx;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::52b as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=iqAKvTuD3jVHBEG7ovmOUVbfmWYG552J03obUHymSow=;
        b=jH6aDbAXDXGkZdqLIfYtdQ03n9s8L56NkeqC3pm35EahXWV2Y0/hCSnuUOXwCwwhiy
         jKRC88Bb9Yk6nQeSJ/2aH7BIESVc6yWnhmtUKgGs0Ni8IkpDXegRjtd+YDRqlizh36a2
         hjPnsAAQvxjB46VXqBbf5Nn/K4N2uyj3E+IHgRcRvcr4GHSaNQXNY6+/rmVihHHYCKnP
         KlJr5YlRhzxyR83KiI0nIKFyrTdC52xLVeJNexwlPoDGDCLQzwm7gIxdAIBNKzGGrJcw
         bHNx51dbW5Oa58bIMs/lRHdfN4Y8rcCN1Y5nX+wn2BJzXKAEzpDPCOcJD7oCJ/fM2pND
         Zf4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=iqAKvTuD3jVHBEG7ovmOUVbfmWYG552J03obUHymSow=;
        b=Hx2Au5z2H7k7NwilEuMw3yao/ZWKV6kDjE3A/ahi/kuiSfxNr7uRmRHtCwlQEYSTL+
         9Wv3FADu1e1Jr1v1EtukxY3RgcxrPUfqRIrM6EtI0jW1StOF21wWMjEToEtFuE+TfcPx
         gRCdXr15gtNE8QELopkVVGsst/P9y6JVzl7y/i2wSrV01Nkby0PzeCaAhrXBQbf3Luqs
         5h1dQPKfLR9VKA1maT1Ow67W/UmdQeTKmn53rTz3dh37irNNs744EUAVs7xFvFBszWnF
         Wlu8sHNuSXVPCIJkauLUQgbKKbJnhNJXio+1foWm7OHU7YV3J2ncrJjuw+01i5dcGrtL
         Qk7w==
X-Gm-Message-State: AOAM533DsHBYsxrvKrsKhey9/IpZY8AHUNyDmn1tSwuj9oOHVZYNDFjC
	Clyo9gV9Y/oODJrh+8ZM6p8=
X-Google-Smtp-Source: ABdhPJy35sehhwQ7xFv0B/HkAWZrDYF3ZRsNzeIO8ok6yqNGHI6MLpUmb9UZ3rzQKJAzj6VeTBd+HQ==
X-Received: by 2002:aca:5a57:: with SMTP id o84mr1445876oib.0.1612483923221;
        Thu, 04 Feb 2021 16:12:03 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:504c:: with SMTP id e73ls1734771oib.9.gmail; Thu, 04 Feb
 2021 16:12:02 -0800 (PST)
X-Received: by 2002:a05:6808:bd2:: with SMTP id o18mr1378934oik.7.1612483922789;
        Thu, 04 Feb 2021 16:12:02 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1612483922; cv=none;
        d=google.com; s=arc-20160816;
        b=By0UupsszUlI1dsR9ws5I0UWiXuwJyjZ5LqzviyYCbG0WsRU6E/Wb32ppKFLGFQOef
         LICsUAGdSCn0olaDyC/kSrGcSjAK+96/+3U18nTpSoRvuT7hXcz8v6E5BRH+imkkDIlI
         4JDRstve8hVgu/d1aU0Zto0O40QnuTMd1HE0D7q9+G+IzmXhOjqUafGee+YAvOstD6Mz
         wAnqLndjjgUeUx8KJyXjEz1xtrnquqTsgyQaFwvpjDulsxwdgw31GIZsrtol0O9VpYUA
         GdHraExbQ84uCDVLbe2kgKFT31p75txr1AjNpakgWhdV+MrytxLsj39nmypZPCv5xU/l
         Rzmg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=MpdFauSXVsiLvu4pXiR9tEezIR4W+MJLHz/acfLTf+s=;
        b=rbIh/7kNi4DMGKvQ5/u9ps5F2jXUR3hwfuGaCNd7o++OnC7zEJfIyuPhOUDNwWgIPg
         yePC2Xyz/IIi46HiXRfxctW/VreF8cfDISrUBOVthu72t0v1Jkgy3U4JaEZohFKzw3ug
         ettilj7pzUtIIcSwzsOSt2YLWiC4W6gil+CejcR/E4Rm2/4GNxVhFE3u4pbwJQJy5VXy
         ggdm0gSAvZuSU6LfZkL45ouCv28HeTT9zNnBZcApoorl4BRE9j4cikF3QMJN6Uti3XDO
         zGJqphlx3IzADx2blyQVgR3adPSI9/WiuZFZE7gXg6lv2hxPowh2MODbhwhNtxND0WUu
         iwnw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=YI7xZcUx;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::52b as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x52b.google.com (mail-pg1-x52b.google.com. [2607:f8b0:4864:20::52b])
        by gmr-mx.google.com with ESMTPS id e206si259515oib.3.2021.02.04.16.12.02
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 04 Feb 2021 16:12:02 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::52b as permitted sender) client-ip=2607:f8b0:4864:20::52b;
Received: by mail-pg1-x52b.google.com with SMTP id b21so3279666pgk.7
        for <clang-built-linux@googlegroups.com>; Thu, 04 Feb 2021 16:12:02 -0800 (PST)
X-Received: by 2002:aa7:9f5a:0:b029:1d4:fa02:a044 with SMTP id
 h26-20020aa79f5a0000b02901d4fa02a044mr1689799pfr.30.1612483922117; Thu, 04
 Feb 2021 16:12:02 -0800 (PST)
MIME-Version: 1.0
References: <20210115210616.404156-1-ndesaulniers@google.com>
 <CA+icZUVp+JNq89uc_DyWC6zh5=kLtUr7eOxHizfFggnEVGJpqw@mail.gmail.com>
 <7354583d-de40-b6b9-6534-a4f4c038230f@fb.com> <CAKwvOd=5iR0JONwDb6ypD7dzzjOS3Uj0CjcyYqPF48eK4Pi90Q@mail.gmail.com>
 <12b6c2ca-4cf7-4edd-faf2-72e3cb59c00e@fb.com> <20210117201500.GO457607@kernel.org>
 <CAKwvOdmniAMZD0LiFdr5N8eOwHqNFED2Pd=pwOFF2Y8eSRXUHA@mail.gmail.com>
 <CAEf4Bzbn1app3LZ1oah5ARn81j5RMNxRRHPVAkeY3h_0q7+7fg@mail.gmail.com>
 <CAKwvOdmrVdxbEHdOFA8x+Q2yDWOfChZzBc6nR3rdaM8R3LsxfQ@mail.gmail.com>
 <CAEf4Bzbs5sDTB6w1D4LpKLGjY5sCCUnRUsU84Ccn8DoL352j1g@mail.gmail.com>
 <CAKwvOdk-4_Pt=DKFokDpG8L58xj4J-=PPrgSLEZnYs7VJu1jZA@mail.gmail.com> <CAEf4Bza8yrmq5_Crg9XHA6e+fxfQDRQ-tRDGBzPT5ww4YNuhWw@mail.gmail.com>
In-Reply-To: <CAEf4Bza8yrmq5_Crg9XHA6e+fxfQDRQ-tRDGBzPT5ww4YNuhWw@mail.gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Thu, 4 Feb 2021 16:11:50 -0800
Message-ID: <CAKwvOdk7vkep157q4q4EamkdYWMLYzwM_7PYW1rdy=BFQye66w@mail.gmail.com>
Subject: Re: [PATCH v5 0/3] Kbuild: DWARF v5 support
To: Andrii Nakryiko <andrii.nakryiko@gmail.com>
Cc: Arnaldo Carvalho de Melo <acme@kernel.org>, Yonghong Song <yhs@fb.com>, Andrii Nakryiko <andrii@kernel.org>, 
	Jiri Olsa <jolsa@kernel.org>, Sedat Dilek <sedat.dilek@gmail.com>, 
	Nathan Chancellor <natechancellor@gmail.com>, 
	Clang-Built-Linux ML <clang-built-linux@googlegroups.com>, Fangrui Song <maskray@google.com>, 
	bpf <bpf@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=YI7xZcUx;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::52b
 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Nick Desaulniers <ndesaulniers@google.com>
Reply-To: Nick Desaulniers <ndesaulniers@google.com>
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

On Thu, Feb 4, 2021 at 4:07 PM Andrii Nakryiko
<andrii.nakryiko@gmail.com> wrote:
>
> On Thu, Feb 4, 2021 at 4:04 PM Nick Desaulniers <ndesaulniers@google.com> wrote:
> >
> > Moving a bunch of folks + lists to BCC.
> >
> > On Thu, Feb 4, 2021 at 3:54 PM Andrii Nakryiko
> > <andrii.nakryiko@gmail.com> wrote:
> > >
> > > On Wed, Feb 3, 2021 at 7:13 PM Nick Desaulniers <ndesaulniers@google.com> wrote:
> > > >
> > > > On Wed, Feb 3, 2021 at 6:58 PM Andrii Nakryiko
> > > > <andrii.nakryiko@gmail.com> wrote:
> > > > >
> > > > > On Wed, Feb 3, 2021 at 5:31 PM Nick Desaulniers <ndesaulniers@google.com> wrote:
> > > > > >
> > > > > > On Sun, Jan 17, 2021 at 12:14 PM Arnaldo Carvalho de Melo
> > > > > > <acme@kernel.org> wrote:
> > > > > > >
> > > > > > > Em Fri, Jan 15, 2021 at 03:43:06PM -0800, Yonghong Song escreveu:
> > > > > > > >
> > > > > > > >
> > > > > > > > On 1/15/21 3:34 PM, Nick Desaulniers wrote:
> > > > > > > > > On Fri, Jan 15, 2021 at 3:24 PM Yonghong Song <yhs@fb.com> wrote:
> > > > > > > > > >
> > > > > > > > > >
> > > > > > > > > >
> > > > > > > > > > On 1/15/21 1:53 PM, Sedat Dilek wrote:
> > > > > > > > > > > En plus, I encountered breakage with GCC v10.2.1 and LLVM=1 and
> > > > > > > > > > > CONFIG_DEBUG_INFO_DWARF4.
> > > > > > > > > > > So might be good to add a "depends on !DEBUG_INFO_BTF" in this combination.
> > > > > > > > >
> > > > > > > > > Can you privately send me your configs that repro? Maybe I can isolate
> > > > > > > > > it to a set of configs?
> > > > > > > > >
> > > > > > > > > >
> > > > > > > > > > I suggested not to add !DEBUG_INFO_BTF to CONFIG_DEBUG_INFO_DWARF4.
> > > > > > > > > > It is not there before and adding this may suddenly break some users.
> > > > > > > > > >
> > > > > > > > > > If certain combination of gcc/llvm does not work for
> > > > > > > > > > CONFIG_DEBUG_INFO_DWARF4 with pahole, this is a bug bpf community
> > > > > > > > > > should fix.
> > > > > > > > >
> > > > > > > > > Is there a place I should report bugs?
> > > > > > > >
> > > > > > > > You can send bug report to Arnaldo Carvalho de Melo <acme@kernel.org>,
> > > > > > > > dwarves@vger.kernel.org and bpf@vger.kernel.org.
> > > > > > >
> > > > > > > I'm coming back from vacation, will try to read the messages and see if
> > > > > > > I can fix this.
> > > > > >
> > > > > > IDK about DWARF v4; that seems to work for me.  I was previously observing
> > > > > > https://bugzilla.redhat.com/show_bug.cgi?id=1922698
> > > > > > with DWARF v5.  I just re-pulled the latest pahole, rebuilt, and no
> > > > > > longer see that warning.
> > > > > >
> > > > > > I now observe a different set.  I plan on attending "BPF office hours
> > > > > > tomorrow morning," but if anyone wants a sneak peak of the errors and
> > > > > > how to reproduce:
> > > > > > https://gist.github.com/nickdesaulniers/ae8c9efbe4da69b1cf0dce138c1d2781
> > > > > >
> > > > >
> > > > > Is there another (easy) way to get your patch set without the b4 tool?
> > > > > Is your patch set present in some patchworks instance, so that I can
> > > > > download it in mbox format, for example?
> > > >
> > > > $ wget https://lore.kernel.org/lkml/20210130004401.2528717-2-ndesaulniers@google.com/raw
> > > > -O - | git am
> > > > $ wget https://lore.kernel.org/lkml/20210130004401.2528717-3-ndesaulniers@google.com/raw
> > > > -O - | git am
> > > >
> > > > If you haven't tried b4 yet, it's quite nice.  Hard to go back.  Lore
> > > > also has mbox.gz links.  Not sure about patchwork.
> > > >
> > >
> > > Ok, I managed to apply that on linux-next, but I can't get past this:
> > >
> > > ld.lld: error: undefined symbol: pa_trampoline_start
> > > >>> referenced by arch/x86/realmode/rm/header.o:(real_mode_header)
> >
> > Thanks for testing and the report. Do you have a .config you can send
> > me to reproduce?
> >
>
> I followed your steps exactly, used olddefconfig. I've build with both
> latest clang master and llvmorg-12.0.0-rc1 tag. This might be
> something with my environment, I don't know.

Perhaps, but "olddefconfig" is not reproducible for anyone else, ever.
Please send me your .config that produced the errors.

>
> > >
> > > ld.lld: error: undefined symbol: pa_trampoline_header
> > > >>> referenced by arch/x86/realmode/rm/header.o:(real_mode_header)
> > >
> > > ld.lld: error: undefined symbol: pa_trampoline_pgd
> > > >>> referenced by arch/x86/realmode/rm/header.o:(real_mode_header)
> > > >>> referenced by trampoline_64.S:142 (/data/users/andriin/linux/arch/x86/realmode/rm/trampoline_64.S:142)
> > > >>>               arch/x86/realmode/rm/trampoline_64.o:(startup_32)
> > >
> > > ld.lld: error: undefined symbol: pa_wakeup_start
> > > >>> referenced by arch/x86/realmode/rm/header.o:(real_mode_header)
> > >
> > > ld.lld: error: undefined symbol: pa_wakeup_header
> > > >>> referenced by arch/x86/realmode/rm/header.o:(real_mode_header)
> > >
> > > ld.lld: error: undefined symbol: pa_machine_real_restart_asm
> > > >>> referenced by arch/x86/realmode/rm/header.o:(real_mode_header)
> > >
> > > ld.lld: error: undefined symbol: pa_startup_32
> > > >>> referenced by trampoline_64.S:77 (/data/users/andriin/linux/arch/x86/realmode/rm/trampoline_64.S:77)
> > > >>>               arch/x86/realmode/rm/trampoline_64.o:(trampoline_start)
> > >
> > > ld.lld: error: undefined symbol: pa_tr_flags
> > > >>> referenced by trampoline_64.S:124 (/data/users/andriin/linux/arch/x86/realmode/rm/trampoline_64.S:124)
> > > >>>               arch/x86/realmode/rm/trampoline_64.o:(startup_32)
> > >
> > > ld.lld: error: undefined symbol: pa_tr_cr4
> > > >>> referenced by trampoline_64.S:138 (/data/users/andriin/linux/arch/x86/realmode/rm/trampoline_64.S:138)
> > > >>>               arch/x86/realmode/rm/trampoline_64.o:(startup_32)
> > >
> > > ld.lld: error: undefined symbol: pa_tr_efer
> > > >>> referenced by trampoline_64.S:146 (/data/users/andriin/linux/arch/x86/realmode/rm/trampoline_64.S:146)
> > > >>>               arch/x86/realmode/rm/trampoline_64.o:(startup_32)
> > > >>> referenced by trampoline_64.S:147 (/data/users/andriin/linux/arch/x86/realmode/rm/trampoline_64.S:147)
> > > >>>               arch/x86/realmode/rm/trampoline_64.o:(startup_32)
> > >
> > > ld.lld: error: undefined symbol: pa_startup_64
> > > >>> referenced by trampoline_64.S:161 (/data/users/andriin/linux/arch/x86/realmode/rm/trampoline_64.S:161)
> > > >>>               arch/x86/realmode/rm/trampoline_64.o:(startup_32)
> > >
> > > ld.lld: error: undefined symbol: pa_tr_gdt
> > > >>> referenced by arch/x86/realmode/rm/trampoline_64.o:(tr_gdt)
> > > >>> referenced by reboot.S:28 (/data/users/andriin/linux/arch/x86/realmode/rm/reboot.S:28)
> > > >>>               arch/x86/realmode/rm/reboot.o:(machine_real_restart_asm)
> > >
> > > ld.lld: error: undefined symbol: pa_machine_real_restart_paging_off
> > > >>> referenced by reboot.S:34 (/data/users/andriin/linux/arch/x86/realmode/rm/reboot.S:34)
> > > >>>               arch/x86/realmode/rm/reboot.o:(machine_real_restart_asm)
> > >
> > > ld.lld: error: undefined symbol: pa_machine_real_restart_idt
> > > >>> referenced by reboot.S:47 (/data/users/andriin/linux/arch/x86/realmode/rm/reboot.S:47)
> > > >>>               arch/x86/realmode/rm/reboot.o:(machine_real_restart_asm)
> > >
> > > ld.lld: error: undefined symbol: pa_machine_real_restart_gdt
> > > >>> referenced by reboot.S:54 (/data/users/andriin/linux/arch/x86/realmode/rm/reboot.S:54)
> > > >>>               arch/x86/realmode/rm/reboot.o:(machine_real_restart_asm)
> > > >>> referenced by arch/x86/realmode/rm/reboot.o:(machine_real_restart_gdt)
> > >
> > > ld.lld: error: undefined symbol: pa_wakeup_gdt
> > > >>> referenced by arch/x86/realmode/rm/wakeup_asm.o:(wakeup_gdt)
> > >   CC      arch/x86/mm/numa_64.o
> > >   CC      arch/x86/mm/amdtopology.o
> > >   HOSTCC  arch/x86/entry/vdso/vdso2c
> > > make[4]: *** [arch/x86/realmode/rm/realmode.elf] Error 1
> > > make[3]: *** [arch/x86/realmode/rm/realmode.bin] Error 2
> > > make[2]: *** [arch/x86/realmode] Error 2
> > > make[2]: *** Waiting for unfinished jobs....
> > >
> > >
> > > Hopefully Arnaldo will have better luck.
> > >
> > >
> > >
> > > > >
> > > > > >
> > > > > > (FWIW: some other folks are hitting issues now with kernel's lack of
> > > > > > DWARF v5 support: https://bugzilla.redhat.com/show_bug.cgi?id=1922707)
> > > >
> > > >
> > > > --
> > > > Thanks,
> > > > ~Nick Desaulniers
> >
> >
> >
> > --
> > Thanks,
> > ~Nick Desaulniers



-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdk7vkep157q4q4EamkdYWMLYzwM_7PYW1rdy%3DBFQye66w%40mail.gmail.com.
