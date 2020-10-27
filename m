Return-Path: <clang-built-linux+bncBCQJP74GSUDRBFN7376AKGQEJZHG5ZI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3b.google.com (mail-yb1-xb3b.google.com [IPv6:2607:f8b0:4864:20::b3b])
	by mail.lfdr.de (Postfix) with ESMTPS id BAE1F29A6F2
	for <lists+clang-built-linux@lfdr.de>; Tue, 27 Oct 2020 09:51:34 +0100 (CET)
Received: by mail-yb1-xb3b.google.com with SMTP id o135sf645712ybc.16
        for <lists+clang-built-linux@lfdr.de>; Tue, 27 Oct 2020 01:51:34 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1603788693; cv=pass;
        d=google.com; s=arc-20160816;
        b=aejLAjQdiRbNA1roIFuCf+cbSrxd+rCMtEkVaFWn7l1AHAS0hIeU8WD8daaYwcCoEa
         ymAs6N1ksusIUeeowzhtfTK6bDKF67LqI9FgfS7prw80/b3V+C8RIC4ExbWaDY+xkfsU
         dpc7iBM2u4gnlZpyjZDFuySCNVLnjBlXqg5cGmZhFKzZ582gFcTfXzvzF5TwacbcH+zz
         q5Nvoj1uoBHqmbBfo6enWetun7DuKqkTKDfDbnVvoL/mr9hddrX9l3oxkyEL8DLNrg2m
         V9Tukxgp3YxgG1tRyReD+T5Sc5aW+0Z3V81I/qN/S7M+DyjIUx+agGhQd1SQTnT9Ylt4
         8dZg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=TYLzWZ0tEv8NGxGExYnfEN3EZdA2sdPr6db6mPo8E9o=;
        b=uhjJxVdp40APZpc5h5TDVnwcNmH60IPqVKaIHYhKQhGMoksg1Z6diiGA2hVNDb5ih/
         f18g+8kQZLWXXkQYs/EqIlkG7GvqfvWVJq0XnEjw+YkiuHRBHi8r5MNpGYCItbCqVg7+
         BB2v+NZ6I47qC+It6DWl03fPelhOmRjQ5ndPpRuK5Hb0KpI7HgK/WykniTaP9X5YWzx3
         tyRx8ZInFx0ZlYbx8FTbEZLUmUAP6Zu2pj4nhE1vqoElN11R53dj2tDsKm4WJDBpdMNe
         +G4xaFxb1co+yoHf7XnoBLcz4cEydYQvBZAqkpY+OgEQUg40GMPq7fptAIFfnpJPU6CW
         gSjA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of geert.uytterhoeven@gmail.com designates 209.85.167.193 as permitted sender) smtp.mailfrom=geert.uytterhoeven@gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=TYLzWZ0tEv8NGxGExYnfEN3EZdA2sdPr6db6mPo8E9o=;
        b=RK4KP9aIQu/NjvImROpGByTrXexea7aFYyFFryUNuQMvfu6rU26QOt5Os7npMK9Wvc
         IabHACP6H/8um7D52jjImIg5aXCyrq8ERxQPLkRHgR+yVm5C3CMIZFa1FP5Q0J+H155Q
         UhoABw5NT1dhBZpNDGZrRzeIGQ8Z3kP9w7fgat9ypC6rq/swXggZfLy+uX6LZLvXmDmV
         6CGvy2Fc3WxbZKSXQ1PmwwUpShavVRrYIK/Hkm9nSmdb/O9CCggfVhavRfxRGE0/nhd0
         V7xhMolFLjaoJn+qGuoIbOzLnL3pKUjR83sH5YuslTYuwWr9Q3stDuLDX7XhhdR0T73U
         ItVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=TYLzWZ0tEv8NGxGExYnfEN3EZdA2sdPr6db6mPo8E9o=;
        b=I3spoRN/GFoLIEf+wdhjhHG2GxffgcabtG5NEqmMVT/s7zjyoDal5R114Ci9fzp50k
         JBHrQyspWtPjfxIQkcJu79ZLt8zY3kqmdVEjq4jDl4MR4IQfZBaIBWG6w4hmsNOKvjsO
         Bcl5c1gsOy006KMcoo514ZaPzgAwM5ztSOn74ciGALlGg6u6Gp8FnRcNPIEKUYyy/LkK
         GptGMwcKWV9uXdjToNpCT0tWJc11v5XTeENudT23ZJcx4tgrWrmW0cn+0noQKwOFVPou
         CKLXElr/VxBUbPoLKF0Re7bFLQeF1dUDVh4PiLXR/oUxTVzzNsIbiwm3qm5u30vH2nPr
         cqvg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531j9m+j3URO04HRDwdAUycCFJYw+kutiLhyPVY+frBsI1+EEniw
	HGoLtbcmN0e0S9kuyanu/bk=
X-Google-Smtp-Source: ABdhPJz76LLi/EPV9VagEQuWbGcOXXmkT199rLA1AG6fyIcpeoZVnukJ/Ww1t8yUIKrtRlAmWK/eZA==
X-Received: by 2002:a25:244c:: with SMTP id k73mr1707745ybk.96.1603788693560;
        Tue, 27 Oct 2020 01:51:33 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:df0d:: with SMTP id w13ls433927ybg.11.gmail; Tue, 27 Oct
 2020 01:51:33 -0700 (PDT)
X-Received: by 2002:a25:24c7:: with SMTP id k190mr1756208ybk.483.1603788693051;
        Tue, 27 Oct 2020 01:51:33 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1603788693; cv=none;
        d=google.com; s=arc-20160816;
        b=VJxIVwVv0oNhLxzc8HzI0o+b+0TrHbw2k+FdXEO+GYH/JhSjSNbYTyrFUuMs4C13/6
         7CSwbMqqbD2G/qGpnxZaqUchNoGG1k7PvSLqI6cqGH5QjksTjUyZi3je50ze4ch/Fxp4
         eib1sXyaBMdgl0VmXh5yrqoyRrJlEzJBcH7zC/8/GOGd7BewfR1R77xEJLqpFSYVJc9I
         BLJM7K6fzFUT4zx5blpAajQqb307IZW82APTILYQ1gkajr6f7xA6fPc2PPQ6eYkyZFDT
         LXtLAfVyOB9AkSxma+R5kjB5XBlUobr2ZZ09Zn/FyAwoimj3pAyJuU1ujuCOIgGchqRh
         gSPA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version;
        bh=QuQazVJddiiMcHpJSWJ6P15wkN0uJ4Rr3unxje95N5k=;
        b=oWRUamb7ZWOsgMuFHgmOdWyYf9eGxYvtuFJhU178KKLuRVHT7P1BEWABV5yJJkJI+y
         QPEX59VCA4Lnks/wYBAGHzz2mL0o7lV4RX0uWCJ5/vx6lGL3IESnjTcv1glWPYpMvgCB
         vzfYdBb3S42yQuyL3KLHu1PwWM3EX0mjHMNZl0Abo2XNJuv9xvdUOU4b2Em2TJNxV/DO
         9Mr6qH8QUOfUapcBj0k4s3AK0t+qp1oE1tecnk7RS3/bHbTsAfpMv7XILn/cTXm0kk1/
         lB7VbzF51hzxInvFCAoZ73noJhAn5LzMiOwkeCB3mYZA9YnAvub8XA+nzXkx3eKxqugr
         sF2w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of geert.uytterhoeven@gmail.com designates 209.85.167.193 as permitted sender) smtp.mailfrom=geert.uytterhoeven@gmail.com
Received: from mail-oi1-f193.google.com (mail-oi1-f193.google.com. [209.85.167.193])
        by gmr-mx.google.com with ESMTPS id t12si58717ybp.2.2020.10.27.01.51.32
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 27 Oct 2020 01:51:32 -0700 (PDT)
Received-SPF: pass (google.com: domain of geert.uytterhoeven@gmail.com designates 209.85.167.193 as permitted sender) client-ip=209.85.167.193;
Received: by mail-oi1-f193.google.com with SMTP id x203so513585oia.10
        for <clang-built-linux@googlegroups.com>; Tue, 27 Oct 2020 01:51:32 -0700 (PDT)
X-Received: by 2002:aca:f40c:: with SMTP id s12mr663393oih.153.1603788692533;
 Tue, 27 Oct 2020 01:51:32 -0700 (PDT)
MIME-Version: 1.0
References: <20200821194310.3089815-1-keescook@chromium.org>
 <20200821194310.3089815-14-keescook@chromium.org> <CAMuHMdUg0WJHEcq6to0-eODpXPOywLot6UD2=GFHpzoj_hCoBQ@mail.gmail.com>
 <CAMuHMdUw9KwC=EVB60yjg7mA7Fg-efOiKE7577p+uEdGJVS2OQ@mail.gmail.com>
 <CAMuHMdUJFEt3LxWHk73AsLDGhjzBvJGAML76UAxeGzb4zOf96w@mail.gmail.com>
 <CAMj1kXHXk3BX6mz6X_03sj_pSLj9Ck-=1S57tV3__N9JQOcDEw@mail.gmail.com> <CAMuHMdV4jKccjKkoj38EFC-5yN99pBvthFyrX81EG4GpassZwA@mail.gmail.com>
In-Reply-To: <CAMuHMdV4jKccjKkoj38EFC-5yN99pBvthFyrX81EG4GpassZwA@mail.gmail.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Tue, 27 Oct 2020 09:51:21 +0100
Message-ID: <CAMuHMdWXB+DB4gZoU6g8a0aw3hEdE_FSv9MEJF0M8X63WThkcA@mail.gmail.com>
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
 (google.com: domain of geert.uytterhoeven@gmail.com designates 209.85.167.193
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

On Mon, Oct 26, 2020 at 6:43 PM Geert Uytterhoeven <geert@linux-m68k.org> wrote:
> On Mon, Oct 26, 2020 at 6:39 PM Ard Biesheuvel <ardb@kernel.org> wrote:
> > On Mon, 26 Oct 2020 at 17:01, Geert Uytterhoeven <geert@linux-m68k.org> wrote:
> > > On Mon, Oct 26, 2020 at 2:29 PM Geert Uytterhoeven <geert@linux-m68k.org> wrote:
> > > > On Mon, Oct 26, 2020 at 1:29 PM Geert Uytterhoeven <geert@linux-m68k.org> wrote:
> > > > > On Fri, Aug 21, 2020 at 9:56 PM Kees Cook <keescook@chromium.org> wrote:
> > > > > > In preparation for warning on orphan sections, discard
> > > > > > unwanted non-zero-sized generated sections, and enforce other
> > > > > > expected-to-be-zero-sized sections (since discarding them might hide
> > > > > > problems with them suddenly gaining unexpected entries).
> > > > > >
> > > > > > Suggested-by: Ard Biesheuvel <ardb@kernel.org>
> > > > > > Signed-off-by: Kees Cook <keescook@chromium.org>
> > > > >
> > > > > This is now commit be2881824ae9eb92 ("arm64/build: Assert for unwanted
> > > > > sections") in v5.10-rc1, and is causing the following error with
> > > > > renesas_defconfig[1]:
> > > > >
> > > > >     aarch64-linux-gnu-ld: warning: orphan section `.eh_frame' from
> > > > > `kernel/bpf/core.o' being placed in section `.eh_frame'
> > > > >     aarch64-linux-gnu-ld: Unexpected GOT/PLT entries detected!
> > > > >     aarch64-linux-gnu-ld: Unexpected run-time procedure linkages detected!
> > > > >
> > > > > I cannot reproduce this with the standard arm64 defconfig.
> > > > >
> > > > > I bisected the error to the aforementioned commit, but understand this
> > > > > is not the real reason.  If I revert this commit, I still get:
> > > > >
> > > > >     aarch64-linux-gnu-ld: warning: orphan section `.got.plt' from
> > > > > `arch/arm64/kernel/head.o' being placed in section `.got.plt'
> > > > >     aarch64-linux-gnu-ld: warning: orphan section `.plt' from
> > > > > `arch/arm64/kernel/head.o' being placed in section `.plt'
> > > > >     aarch64-linux-gnu-ld: warning: orphan section `.data.rel.ro' from
> > > > > `arch/arm64/kernel/head.o' being placed in section `.data.rel.ro'
> > > > >     aarch64-linux-gnu-ld: warning: orphan section `.eh_frame' from
> > > > > `kernel/bpf/core.o' being placed in section `.eh_frame'
> > > > >
> > > > > I.e. including the ".eh_frame" warning. I have tried bisecting that
> > > > > warning (i.e. with be2881824ae9eb92 reverted), but that leads me to
> > > > > commit b3e5d80d0c48c0cc ("arm64/build: Warn on orphan section
> > > > > placement"), which is another red herring.
> > > >
> > > > kernel/bpf/core.o is the only file containing an eh_frame section,
> > > > causing the warning.
> > > > If I compile core.c with "-g" added, like arm64 defconfig does, the
> > > > eh_frame section is no longer emitted.
> > > >
> > > > Hence setting CONFIG_DEBUG_INFO=y, cfr. arm64 defconfig, the warning
> > > > is gone, but I'm back to the the "Unexpected GOT/PLT entries" below...
> > > >
> > > > > Note that even on plain be2881824ae9eb92, I get:
> > > > >
> > > > >     aarch64-linux-gnu-ld: Unexpected GOT/PLT entries detected!
> > > > >     aarch64-linux-gnu-ld: Unexpected run-time procedure linkages detected!
> > > > >
> > > > > The parent commit obviously doesn't show that (but probably still has
> > > > > the problem).
> > >
> > > Reverting both
> > > b3e5d80d0c48c0cc ("arm64/build: Warn on orphan section placement")
> > > be2881824ae9eb92 ("arm64/build: Assert for unwanted sections")
> > > seems to solve my problems, without any ill effects?
> > >
> >
> > I cannot reproduce the issue here with my distro GCC+binutils (Debian 8.3.0)
> >
> > The presence of .data.rel.ro and .got.plt sections suggests that the
> > toolchain is using -fpie and/or -z relro to build shared objects
> > rather than a fully linked bare metal binary.
> >
> > Which toolchain are you using? Does adding -fno-pie to the compiler
>
> gcc version 9.3.0 (Ubuntu 9.3.0-17ubuntu1~20.04)  from Ubuntu 20.04LTS.
>
> > command line and/or adding -z norelro to the linker command line make
> > any difference?
>
> I'll give that a try later...

Adding -fno-pie to KBUILD_AFLAGS and KBUILD_CFLAGS doesn't
make a difference.

Same for adding -z norelno to the final link command:

    aarch64-linux-gnu-ld: warning: -z norelno ignored
    aarch64-linux-gnu-ld: warning: orphan section `.eh_frame' from
`kernel/bpf/core.o' being placed in section `.eh_frame'
    aarch64-linux-gnu-ld: Unexpected GOT/PLT entries detected!
    aarch64-linux-gnu-ld: Unexpected run-time procedure linkages detected!

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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAMuHMdWXB%2BDB4gZoU6g8a0aw3hEdE_FSv9MEJF0M8X63WThkcA%40mail.gmail.com.
