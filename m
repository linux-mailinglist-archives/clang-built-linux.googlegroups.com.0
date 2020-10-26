Return-Path: <clang-built-linux+bncBCQJP74GSUDRBYEV3T6AKGQEPDRRQEY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x1039.google.com (mail-pj1-x1039.google.com [IPv6:2607:f8b0:4864:20::1039])
	by mail.lfdr.de (Postfix) with ESMTPS id 3DBF0299429
	for <lists+clang-built-linux@lfdr.de>; Mon, 26 Oct 2020 18:44:02 +0100 (CET)
Received: by mail-pj1-x1039.google.com with SMTP id w3sf1651582pjt.6
        for <lists+clang-built-linux@lfdr.de>; Mon, 26 Oct 2020 10:44:02 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1603734240; cv=pass;
        d=google.com; s=arc-20160816;
        b=PPjsjYL8nfbTuKO+gQysQyxhqW5GvCb7vp54iHrVmC5l0AJSUKPGCwx+ypkgQPMMfF
         jSzGI1vveUBRxOLP36A+yITJIWoCkAKPDTmNptQUG0Cp8r/yKEXmQfqQuEsHch4AT42Y
         XLPs6nYzNt2lTtCMpj9z9wjrXlFbMOYI4l5VXF0asWk39m5jHfaXH+Imrfub+IQHAd4P
         O+F6iSBFWCIfgGuGsrZ0KDmN3bVJGQPfCv3pwlndK1I6/LZx79LGohRXO+9eKL4hYt5b
         X4BxSX9DbpU29K8+nnVZsLhfqQ7MKwWb/d7UDf1Iif0pmnBTH9VL7cVJ70YJjCIQkDq9
         WcEg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=OmXGtcJ7kYcYqHdfzRVZIXl0woddE5uKQ6ljTktTA94=;
        b=darRetyFf0GRfmiK2NV9Rh+9MIkzTpUjM3Oz05JmRHVKRakgbCJ5izcU2VyCTmdIP/
         SnnSXZ5ducxLgZyxlBN93Qwq9+KYyOVbTQcnNGVeGModFGhp1sfQBusVgZTEEOLqt7I4
         ZqiAYzUAHCnzqkjdH4OezNJXoqRPUeX+dfP+deZ9Ix1m6pK+1ESAlYWx7+onKxqsu8rY
         /0dV8sWsLztsR5TU0gKU2kFd2o+5gH7Vh8WiQ0Wagmzx3qswaDODs+hYl06JeeAjJj5o
         exvyMZnXK0IeBptvwGsYDdb5najUblvwKVqkQKuQ/dyfVFjY9rKXYfj3sFsYN2A8FeAy
         DegA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of geert.uytterhoeven@gmail.com designates 209.85.210.66 as permitted sender) smtp.mailfrom=geert.uytterhoeven@gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=OmXGtcJ7kYcYqHdfzRVZIXl0woddE5uKQ6ljTktTA94=;
        b=gVHkKzl1RXBO+/HJsEs4ugm37197a7rL4KKEoPIMgT0wS3X4q0ac2wK1vsKFvEWaMh
         bTEyZzt+NlNBX9wEFddCxU3bqBOwSZHhb38WZZe5me+x33GL3N9fi4AnWOiWy5imwqXu
         NWgOsbdJ45t+IpSD0F05NM4ZOLwHps8646koBSAYvaYBLpm3lQmB4wWcpkelOk4BHOET
         /8FpyxA/b67L6+xYWheuiCvI7ZcHV2rUUuQHCmuRuE5PJEnFu2tLCSk7cpWPOqi3vmZL
         purI/CnRCuS1bPT5tPfgVjgzurzddOwMvJuPlvPPMM2lJOW4la9KBn9oqAOMtUV4qDtu
         +OCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=OmXGtcJ7kYcYqHdfzRVZIXl0woddE5uKQ6ljTktTA94=;
        b=dtEldoNi/9Bou363hX+O12011HORA8cqPi0o852mIeYAy7zLS1wTjXHfiGE4K2tCbb
         kRRkksI0dnMDhKnRPiRPzx6WczRt4l2hFfhzS+CnqYVw49a/yEN4igvrylpRiHRSvWVX
         JO0to2wyeq1vgVqcgJSixVVTrzwfci9N3ZWiJxc5zKW2WHsGgJcr3odSH5gZiboMKYCZ
         aK+WGjc1KrpN9lrLckwKXEm280noJubdALQhwidhaU5NE9Z5RKjFFcyuZG7JdVQV6n3Y
         BlSNwmwX6BCb+cWr9PHmAfqqh+hIRsF8OZ9WDYo8LgLTtCTxmI4IkVy0CkTY11UsnKhy
         YawA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533Ph6pCJAEagdoWyHvUvORi+b/HCgpDq7Q9uhHW0Jcr028rSzRZ
	8Iuc8csNzNQ79PJBWoIBEcM=
X-Google-Smtp-Source: ABdhPJz4IKH6MLaRCM7npcLnvOjyXsodHKmVmuNssnxBc+CQ1PS1dGtU11KjPXeFxAhKY1XYUg99DA==
X-Received: by 2002:a62:8047:0:b029:156:5edb:f650 with SMTP id j68-20020a6280470000b02901565edbf650mr13223771pfd.34.1603734240716;
        Mon, 26 Oct 2020 10:44:00 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:ae08:: with SMTP id q8ls3427848pff.0.gmail; Mon, 26 Oct
 2020 10:44:00 -0700 (PDT)
X-Received: by 2002:a63:1924:: with SMTP id z36mr17405067pgl.354.1603734240024;
        Mon, 26 Oct 2020 10:44:00 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1603734240; cv=none;
        d=google.com; s=arc-20160816;
        b=fx5aQqRvgvb6BM/febPVrP1OX0DLihSJgmKUZKkEI+KpLEz/KVCkRcm261RXBR8Gnn
         gYtQ0huNp91qhzf+wGgBk2pBuTh/JWyPvz1LX/WDTCabFr9ZMKB6O3aNcqvdkJpzCFIG
         pcmB0M4IvRst02HFh99/C9JO3K3U35U5YIepGCAdVeLk2A45X78H+K67v2/yigC8ZwWi
         x3Zzndr9zLU5vBFSvbY0gZ7KUbmmaZbum0nAqIcLRG7UhUENAzAWyMkD+iaHugjPhVzS
         ZlYYMj/UmNjHyCwPcatjLAiNR0Knaq8pOYz9kj1YAW00dsr6V/U1ivhyN08Lw9FnQ9HI
         wylg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version;
        bh=aJz+oRM1+RYdgp0O1S9wfW6IBH+e5jFShHd2j276EOc=;
        b=G7Smy++zUHdmRYCGJ/rfarSBgyUYxhQxktQvNl9e6FP+7RDEDxgxi60Xx/Lsb21oLk
         Yt3/1XufqiSz3K+9z5OhonVcLbAiVqq3cR0HGPmHjrN1TYkZgyWdooAL/I9cIx3X/QsA
         Odz/w4xsDaSQWuAc176T1jVeYIl83jEuxv6rOMslJuq3ow8L9TYIdSFFB+RnGS2zjJw6
         O2RXQpCGiTvsUaBB8a45OpEoQ2+1FqdTn9Bbw04acPd953DUw4Bvk9jsFmvC4qSVmZC0
         N0w+LaT69Oj6KWw0JNE0ORFRQvCa+mlcxruxz4bfEN/zDLRjFtX104nF0AGENhhClil6
         KreA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of geert.uytterhoeven@gmail.com designates 209.85.210.66 as permitted sender) smtp.mailfrom=geert.uytterhoeven@gmail.com
Received: from mail-ot1-f66.google.com (mail-ot1-f66.google.com. [209.85.210.66])
        by gmr-mx.google.com with ESMTPS id f189si603994pgc.4.2020.10.26.10.43.59
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 26 Oct 2020 10:43:59 -0700 (PDT)
Received-SPF: pass (google.com: domain of geert.uytterhoeven@gmail.com designates 209.85.210.66 as permitted sender) client-ip=209.85.210.66;
Received: by mail-ot1-f66.google.com with SMTP id m22so8762563ots.4
        for <clang-built-linux@googlegroups.com>; Mon, 26 Oct 2020 10:43:59 -0700 (PDT)
X-Received: by 2002:a9d:5e14:: with SMTP id d20mr11681972oti.107.1603734239191;
 Mon, 26 Oct 2020 10:43:59 -0700 (PDT)
MIME-Version: 1.0
References: <20200821194310.3089815-1-keescook@chromium.org>
 <20200821194310.3089815-14-keescook@chromium.org> <CAMuHMdUg0WJHEcq6to0-eODpXPOywLot6UD2=GFHpzoj_hCoBQ@mail.gmail.com>
 <CAMuHMdUw9KwC=EVB60yjg7mA7Fg-efOiKE7577p+uEdGJVS2OQ@mail.gmail.com>
 <CAMuHMdUJFEt3LxWHk73AsLDGhjzBvJGAML76UAxeGzb4zOf96w@mail.gmail.com> <CAMj1kXHXk3BX6mz6X_03sj_pSLj9Ck-=1S57tV3__N9JQOcDEw@mail.gmail.com>
In-Reply-To: <CAMj1kXHXk3BX6mz6X_03sj_pSLj9Ck-=1S57tV3__N9JQOcDEw@mail.gmail.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Mon, 26 Oct 2020 18:43:48 +0100
Message-ID: <CAMuHMdV4jKccjKkoj38EFC-5yN99pBvthFyrX81EG4GpassZwA@mail.gmail.com>
Subject: Re: [PATCH v6 13/29] arm64/build: Assert for unwanted sections
To: Ard Biesheuvel <ardb@kernel.org>
Cc: Kees Cook <keescook@chromium.org>, Ingo Molnar <mingo@kernel.org>, 
	Catalin Marinas <catalin.marinas@arm.com>, Mark Rutland <mark.rutland@arm.com>, 
	Peter Collingbourne <pcc@google.com>, James Morse <james.morse@arm.com>, Borislav Petkov <bp@suse.de>, 
	Ingo Molnar <mingo@redhat.com>, Russell King <linux@armlinux.org.uk>, 
	Masahiro Yamada <masahiroy@kernel.org>, Arvind Sankar <nivedita@alum.mit.edu>, 
	Nick Desaulniers <ndesaulniers@google.com>, Nathan Chancellor <natechancellor@gmail.com>, 
	Arnd Bergmann <arnd@arndb.de>, "the arch/x86 maintainers" <x86@kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Linux-Arch <linux-arch@vger.kernel.org>, linux-efi <linux-efi@vger.kernel.org>, 
	Linux ARM <linux-arm-kernel@lists.infradead.org>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, 
	Linux-Renesas <linux-renesas-soc@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: geert@linux-m68k.org
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of geert.uytterhoeven@gmail.com designates 209.85.210.66
 as permitted sender) smtp.mailfrom=geert.uytterhoeven@gmail.com
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

Hi Ard,

On Mon, Oct 26, 2020 at 6:39 PM Ard Biesheuvel <ardb@kernel.org> wrote:
> On Mon, 26 Oct 2020 at 17:01, Geert Uytterhoeven <geert@linux-m68k.org> wrote:
> > On Mon, Oct 26, 2020 at 2:29 PM Geert Uytterhoeven <geert@linux-m68k.org> wrote:
> > > On Mon, Oct 26, 2020 at 1:29 PM Geert Uytterhoeven <geert@linux-m68k.org> wrote:
> > > > On Fri, Aug 21, 2020 at 9:56 PM Kees Cook <keescook@chromium.org> wrote:
> > > > > In preparation for warning on orphan sections, discard
> > > > > unwanted non-zero-sized generated sections, and enforce other
> > > > > expected-to-be-zero-sized sections (since discarding them might hide
> > > > > problems with them suddenly gaining unexpected entries).
> > > > >
> > > > > Suggested-by: Ard Biesheuvel <ardb@kernel.org>
> > > > > Signed-off-by: Kees Cook <keescook@chromium.org>
> > > >
> > > > This is now commit be2881824ae9eb92 ("arm64/build: Assert for unwanted
> > > > sections") in v5.10-rc1, and is causing the following error with
> > > > renesas_defconfig[1]:
> > > >
> > > >     aarch64-linux-gnu-ld: warning: orphan section `.eh_frame' from
> > > > `kernel/bpf/core.o' being placed in section `.eh_frame'
> > > >     aarch64-linux-gnu-ld: Unexpected GOT/PLT entries detected!
> > > >     aarch64-linux-gnu-ld: Unexpected run-time procedure linkages detected!
> > > >
> > > > I cannot reproduce this with the standard arm64 defconfig.
> > > >
> > > > I bisected the error to the aforementioned commit, but understand this
> > > > is not the real reason.  If I revert this commit, I still get:
> > > >
> > > >     aarch64-linux-gnu-ld: warning: orphan section `.got.plt' from
> > > > `arch/arm64/kernel/head.o' being placed in section `.got.plt'
> > > >     aarch64-linux-gnu-ld: warning: orphan section `.plt' from
> > > > `arch/arm64/kernel/head.o' being placed in section `.plt'
> > > >     aarch64-linux-gnu-ld: warning: orphan section `.data.rel.ro' from
> > > > `arch/arm64/kernel/head.o' being placed in section `.data.rel.ro'
> > > >     aarch64-linux-gnu-ld: warning: orphan section `.eh_frame' from
> > > > `kernel/bpf/core.o' being placed in section `.eh_frame'
> > > >
> > > > I.e. including the ".eh_frame" warning. I have tried bisecting that
> > > > warning (i.e. with be2881824ae9eb92 reverted), but that leads me to
> > > > commit b3e5d80d0c48c0cc ("arm64/build: Warn on orphan section
> > > > placement"), which is another red herring.
> > >
> > > kernel/bpf/core.o is the only file containing an eh_frame section,
> > > causing the warning.
> > > If I compile core.c with "-g" added, like arm64 defconfig does, the
> > > eh_frame section is no longer emitted.
> > >
> > > Hence setting CONFIG_DEBUG_INFO=y, cfr. arm64 defconfig, the warning
> > > is gone, but I'm back to the the "Unexpected GOT/PLT entries" below...
> > >
> > > > Note that even on plain be2881824ae9eb92, I get:
> > > >
> > > >     aarch64-linux-gnu-ld: Unexpected GOT/PLT entries detected!
> > > >     aarch64-linux-gnu-ld: Unexpected run-time procedure linkages detected!
> > > >
> > > > The parent commit obviously doesn't show that (but probably still has
> > > > the problem).
> >
> > Reverting both
> > b3e5d80d0c48c0cc ("arm64/build: Warn on orphan section placement")
> > be2881824ae9eb92 ("arm64/build: Assert for unwanted sections")
> > seems to solve my problems, without any ill effects?
> >
>
> I cannot reproduce the issue here with my distro GCC+binutils (Debian 8.3.0)
>
> The presence of .data.rel.ro and .got.plt sections suggests that the
> toolchain is using -fpie and/or -z relro to build shared objects
> rather than a fully linked bare metal binary.
>
> Which toolchain are you using? Does adding -fno-pie to the compiler

gcc version 9.3.0 (Ubuntu 9.3.0-17ubuntu1~20.04)  from Ubuntu 20.04LTS.

> command line and/or adding -z norelro to the linker command line make
> any difference?

I'll give that a try later...

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAMuHMdV4jKccjKkoj38EFC-5yN99pBvthFyrX81EG4GpassZwA%40mail.gmail.com.
