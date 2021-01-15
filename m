Return-Path: <clang-built-linux+bncBDHYDDNWVUNRB4OJQ6AAMGQESMAQ4FQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23b.google.com (mail-oi1-x23b.google.com [IPv6:2607:f8b0:4864:20::23b])
	by mail.lfdr.de (Postfix) with ESMTPS id E3D622F84D2
	for <lists+clang-built-linux@lfdr.de>; Fri, 15 Jan 2021 19:54:42 +0100 (CET)
Received: by mail-oi1-x23b.google.com with SMTP id n9sf4823059oic.15
        for <lists+clang-built-linux@lfdr.de>; Fri, 15 Jan 2021 10:54:42 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1610736882; cv=pass;
        d=google.com; s=arc-20160816;
        b=zpgu9ZDbS9mrLQEkpvLhi9HhEObIYf67lZPBzVYHu1tq71f76Pp108hmK+yjejvN8r
         nfSJNYOKXRIDjc5pM2w7lsmpZzncv9RATIwYW5nBej7/u9wlrdHba0ZogwdWcY3d+YWd
         IK+XvWEd7JD22YEoL8kAatGkSelaAfuktRBooFdVdMFPV6gJQt/L8ducVuad4bxyv0Tu
         qvsLOwyRzAZSNQbgjWUUV39GjOm0c6utHFtnLuwMexIuqGaYe8CJqy9ubODjawKBtO7x
         ih1BFVH8mypyVReHc1VOMw8uzevjieAiJkV+FDnrtRiAsp3fIVNHcIMvWk65+ir2LHJU
         IJiA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :reply-to:in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=NehNVR/Lgnv/qgJqHP2Rqn9ESURFtyjdQsji1tuJiII=;
        b=uNKJuiLi867hwbVQOc20qo46qIyw7SXQwe2XTunWj0FQPWOmX2/MCo3APn0BDw0fHn
         QVOz5SsVUVSIMHAQwEOalmCOULSRTDE0thVxeQKUTqz00kw89XKjTM/gvA40suOuyw2q
         +LpcrndEN8GrN4eeGmXvWZ7v9/DzU+WvDHwkmw8jZZ+rJME1BHJhIcefKc247pUeitvD
         rsy9N1Yc648rMyniewmREqLhW3sZcJo/+LEJ6Csc/Yc+1ir3YDa1WxYdtF/eU7u3Y6NJ
         oNvazDQdcoBt0bPa/mWRUUbyu0Ia14oiuOhM0rIPh4NP/pBxSCXISgHSekYxcb1w+VwV
         n4Fg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="Dhji8v/U";
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d2a as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=NehNVR/Lgnv/qgJqHP2Rqn9ESURFtyjdQsji1tuJiII=;
        b=Tdyj+s1iBcyhhzXHGwd79/kmIVvTDdg8QsrL2um+FCgZXEAe9IjpGF1/GomOj1x96x
         9i26HWuA8V3HzHMafBTwJpS7R5uZu5qNoETozP+eBCTSMEzLwv5y1K+ByVTn32HAWV8k
         ssXegUP9ZvU4EGxLsla9Y2icBST4codlfuNDT3YLr/iEuv4jNOi2XPjRUk0c5o+SVnrN
         L97NZ5MB+ShwNfcWd5EWmvzBY1yRAsPa+dbp1FXdU8FJ1Now/bXd08OMs4VsD+mkLRc7
         r0cNztBsXCVZclYMQpf9DL0OxiuNm8N+8ScHR0/6wU0lIt98ryXxG9XH7jV4OS/dmdgI
         7Bgw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=NehNVR/Lgnv/qgJqHP2Rqn9ESURFtyjdQsji1tuJiII=;
        b=gz37sftpCOQcIbpVzBi2JTjZXsAjnLhOhVDZxp5FExWSdmySleNGKwt89bj3uW5eeF
         9fVoBk6ZGq/cFeJsoR+YVKv+a24RuTrF/QeKIL+OyE14XTqmkp+OmERLFvEc33Zj0ueU
         LUZAAu7Fk3ZVcXw8yw74jPFS9cJrwLtceYDWmdNMEICe0c1OeQEdIMHVzY2Wi8b6bFpO
         UyVyojg6Unz5Pjd8S/PcG4McTuQ0XHmPmfZcWFVquY5QkX0fv29/j7cKjzaVeCkQsf5h
         alSTaoGz15IEhphC5wVszahVJeGy3DiWFs33BNHuO4iqYLdxuZLOlxRs5/t7zQ9pIUSz
         kfGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to
         :reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=NehNVR/Lgnv/qgJqHP2Rqn9ESURFtyjdQsji1tuJiII=;
        b=M33QZQKK1OgP0KyhdZr0gabFRPkRv9fJIBojjdkUAqf9AUuB5Bb+4/OPteREg3qH5N
         rGn+SvqPbBF3ccMdKTkXHiLn1K3/C9lM3qf8YMS1102oSXL2+OwwdoppdTcUO7BZHKnw
         AcS/cY2JG34EjlIJFn1ZfqXlCUmaGRFUZcHEKiikfx1kJSMsiVTngv1ZhXpC2W0ju9yd
         QhdPzk3hN5vk3UHuNO2TF3PWh455gK3XLsl6/vcatjDvljHG5vKhlNIssogoXa0L7kN1
         u+WHnKDNi50KMXfbZpdG6PVCN40E/FPThgjR42WmY9M/u+ARC/kYLShrQHRj0q2965Mf
         lXGA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533xk9D7XlN3nLUwtvYYC73JoG1iRDVdx1g/WLQcorJk1v/LTJ/k
	D67Gvz+2sEWENhrAlPiwJdY=
X-Google-Smtp-Source: ABdhPJzAFX7FV+IccvyQgKtrAVHRpaUN82NU4RNm/x89bKhhIoTMlkPF4OVNhaVNIyhNpgQR2DEndw==
X-Received: by 2002:a05:6830:1210:: with SMTP id r16mr9425888otp.343.1610736881832;
        Fri, 15 Jan 2021 10:54:41 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6830:714:: with SMTP id y20ls2520612ots.9.gmail; Fri, 15
 Jan 2021 10:54:41 -0800 (PST)
X-Received: by 2002:a9d:19c9:: with SMTP id k67mr9350719otk.292.1610736881353;
        Fri, 15 Jan 2021 10:54:41 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1610736881; cv=none;
        d=google.com; s=arc-20160816;
        b=LNsDd4CXC14hf28XpVsHUV1ww5RxHTvYkHXr2vZRPB1XN37f3xRS8v4O3sexCOrHTq
         uP2WHgv7tbcRmnH33i+KNcTrDJ8XQBPXEyVehpoIKrlWpHWROnZSG2jFQrX0V05KIsgb
         RONoTgog1cGc1CHoCsu2fznQUkOqVeTwOc1LqprumdVNvIaICqgZkjXdWwyQT8DllV09
         fiBs5/0DC99ZgU2d63jIyVMh5iGbPdm0ZhzQyp+DS9gHRdXcsvQjiuVWDm0N6MCa2zsm
         HQ0LAZhTEONgjKRbLg29LH05+k+/7DFLrPEtNWj//6pfdvC/KRXKTxZLf5aqb6MT8iBX
         ozCw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:reply-to:in-reply-to:references
         :mime-version:dkim-signature;
        bh=7pZUbPfwwD451/2l6V1LBJEu16otJzJKTy46A17yRac=;
        b=BlfocGGAV3auo2lQX/xGxYziEhai5QbNsMCTdm4jsWURl3kZUxE10zPCxhQ9/Tb/vh
         LJjZsczFOjkytW7dVSwrkarLEG/TOncoJEPeKBVTzK8HIudMRP5TAVMlvm1DNSNTYQVD
         3cmH6htQNR/LpCzODa6csYnAk/p5SsR4wLQyzWjmH2IZnaa8ie9aZMxvM7ceMH19WHGJ
         HmT4cilDfSmidbavN6n8zZYXCqav09rCt2It7mFsv7mE/razEud3MkBgSz32RxXPFzLO
         f+eZkEvzX8mVQQ59QQQmzc8jUk1eot3B9/pFKHq8w+7EzBdR18oiKZLZ5Dv8QwlZBLrI
         uh+Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="Dhji8v/U";
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d2a as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-io1-xd2a.google.com (mail-io1-xd2a.google.com. [2607:f8b0:4864:20::d2a])
        by gmr-mx.google.com with ESMTPS id a33si682017ooj.2.2021.01.15.10.54.41
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 15 Jan 2021 10:54:41 -0800 (PST)
Received-SPF: pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d2a as permitted sender) client-ip=2607:f8b0:4864:20::d2a;
Received: by mail-io1-xd2a.google.com with SMTP id d13so16885924ioy.4
        for <clang-built-linux@googlegroups.com>; Fri, 15 Jan 2021 10:54:41 -0800 (PST)
X-Received: by 2002:a05:6602:2b01:: with SMTP id p1mr9491944iov.156.1610736880992;
 Fri, 15 Jan 2021 10:54:40 -0800 (PST)
MIME-Version: 1.0
References: <cover.1610652862.git.jpoimboe@redhat.com> <CA+icZUV1a-DEf-dTm8MyyBbp_VYmW5WwJPF9DQb=yJHPykJASQ@mail.gmail.com>
 <CA+icZUVc0M3Ydf=SKSV2MhDmdb49nGSrN-9TjYvjL25vmDHaeQ@mail.gmail.com>
In-Reply-To: <CA+icZUVc0M3Ydf=SKSV2MhDmdb49nGSrN-9TjYvjL25vmDHaeQ@mail.gmail.com>
Reply-To: sedat.dilek@gmail.com
From: Sedat Dilek <sedat.dilek@gmail.com>
Date: Fri, 15 Jan 2021 19:54:29 +0100
Message-ID: <CA+icZUUzN96qSudFCJETNAu6-cq1NKfgngh1PM7nxv=FUPuVBQ@mail.gmail.com>
Subject: Re: [PATCH 00/21] objtool: vmlinux.o and CLANG LTO support
To: Josh Poimboeuf <jpoimboe@redhat.com>
Cc: x86@kernel.org, linux-kernel@vger.kernel.org, 
	Peter Zijlstra <peterz@infradead.org>, Sami Tolvanen <samitolvanen@google.com>, 
	Kees Cook <keescook@chromium.org>, Nick Desaulniers <ndesaulniers@google.com>, 
	Clang-Built-Linux ML <clang-built-linux@googlegroups.com>, Miroslav Benes <mbenes@suse.cz>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: sedat.dilek@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b="Dhji8v/U";       spf=pass
 (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d2a
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

On Fri, Jan 15, 2021 at 4:30 PM Sedat Dilek <sedat.dilek@gmail.com> wrote:
>
> On Fri, Jan 15, 2021 at 5:51 AM Sedat Dilek <sedat.dilek@gmail.com> wrote:
> >
> > On Thu, Jan 14, 2021 at 8:40 PM Josh Poimboeuf <jpoimboe@redhat.com> wrote:
> > >
> > > Add support for proper vmlinux.o validation, which will be needed for
> > > Sami's upcoming x86 LTO set.  (And vmlinux validation is the future for
> > > objtool anyway, for other reasons.)
> > >
> > > This isn't 100% done -- most notably, crypto still needs to be supported
> > > -- but I think this gets us most of the way there.
> > >
> > > This can also be found at
> > >
> > >   git://git.kernel.org/pub/scm/linux/kernel/git/jpoimboe/linux.git objtool-vmlinux
> > >
> > > And for more testing it can be combined with Sami's x86 LTO patches:
> > >
> > >   https://github.com/samitolvanen/linux clang-lto
> > >
> > >
> > >
> > > Josh Poimboeuf (21):
> > >   objtool: Fix seg fault in BT_FUNC() with fake jump
> > >   objtool: Fix error handling for STD/CLD warnings
> > >   objtool: Fix retpoline detection in asm code
> > >   objtool: Fix ".cold" section suffix check for newer versions of GCC
> > >   objtool: Support retpoline jump detection for vmlinux.o
> > >   x86/ftrace: Add UNWIND_HINT_FUNC annotation for ftrace_stub
> > >   objtool: Assume only ELF functions do sibling calls
> > >   objtool: Add asm version of STACK_FRAME_NON_STANDARD
> > >   objtool: Combine UNWIND_HINT_RET_OFFSET and UNWIND_HINT_FUNC
> > >   objtool: Add xen_start_kernel() to noreturn list
> > >   objtool: Move unsuffixed symbol conversion to a helper function
> > >   objtool: Add CONFIG_CFI_CLANG support
> > >   x86/xen: Support objtool validation in xen-asm.S
> > >   x86/xen: Support objtool vmlinux.o validation in xen-head.S
> > >   x86/xen/pvh: Convert indirect jump to retpoline
> > >   x86/ftrace: Support objtool vmlinux.o validation in ftrace_64.S
> > >   x86/acpi: Convert indirect jump to retpoline
> > >   x86/acpi: Support objtool validation in wakeup_64.S
> > >   x86/power: Convert indirect jumps to retpolines
> > >   x86/power: Move restore_registers() to top of the file
> > >   x86/power: Support objtool validation in hibernate_asm_64.S
> > >
> > >  arch/x86/include/asm/unwind_hints.h |  13 +---
> > >  arch/x86/kernel/acpi/Makefile       |   1 -
> > >  arch/x86/kernel/acpi/wakeup_64.S    |   5 +-
> > >  arch/x86/kernel/ftrace_64.S         |   8 +--
> > >  arch/x86/lib/retpoline.S            |   2 +-
> > >  arch/x86/platform/pvh/head.S        |   3 +-
> > >  arch/x86/power/Makefile             |   1 -
> > >  arch/x86/power/hibernate_asm_64.S   | 105 ++++++++++++++--------------
> > >  arch/x86/xen/Makefile               |   1 -
> > >  arch/x86/xen/xen-asm.S              |  29 +++++---
> > >  arch/x86/xen/xen-head.S             |   5 +-
> > >  include/linux/objtool.h             |  13 +++-
> > >  tools/include/linux/objtool.h       |  13 +++-
> > >  tools/objtool/arch/x86/decode.c     |   4 +-
> > >  tools/objtool/arch/x86/special.c    |   2 +-
> > >  tools/objtool/check.c               |  91 +++++++++++++-----------
> > >  tools/objtool/check.h               |  12 +++-
> > >  tools/objtool/elf.c                 |  87 +++++++++++++++++------
> > >  tools/objtool/elf.h                 |   2 +-
> > >  19 files changed, 241 insertions(+), 156 deletions(-)
> > >
> > > --
> > > 2.29.2
> > >
> >
> > I tried this series on top of clang-cfi and it segfaults here.
> >
> > + info OBJTOOL vmlinux.o
> > + [  != silent_ ]
> > + printf   %-7s %s\n OBJTOOL vmlinux.o
> >  OBJTOOL vmlinux.o
> > + tools/objtool/objtool orc generate --duplicate --mcount --vmlinux
> > --no-fp --no-unreachable --retpoline --uaccess vmlinux.o
> > Segmentation fault
> > + on_exit
> > + [ 139 -ne 0 ]
> > + cleanup
> > + rm -f .btf.*
> > + rm -f .tmp_System.map
> > + rm -f .tmp_initcalls.lds
> > + rm -f .tmp_symversions.lds
> > + rm -f .tmp_vmlinux*
> > + rm -f System.map
> > + rm -f vmlinux
> > + rm -f vmlinux.o
> > make[3]: *** [Makefile:1213: vmlinux] Error 139
> >
>
> I re-tried with the latest clang-lto Git and switched to Debian's LLVM-11.0.1.
> This build was successful.
> No objtool-vmlinux warnings observed.
>
> In the next step I try with my selfmade LLVM-11.1.0-rc1 (to see if it's broken).
>

Good, my selfmade LLVM-11.1.0-rc1 is not broken with clang-lto.

+ info OBJTOOL vmlinux.o
+ [  != silent_ ]
+ printf   %-7s %s\n OBJTOOL vmlinux.o
 OBJTOOL vmlinux.o
+ tools/objtool/objtool orc generate --duplicate --mcount --vmlinux
--no-fp --no-unreachable --retpoline --uaccess vmlinux.o
+ make -f ./scripts/Makefile.modpost MODPOST_VMLINUX=1
 scripts/mod/modpost -m    -o vmlinux.symvers vmlinux.o
+ info MODINFO modules.builtin.modinfo

Josh and Sami, any idea what's going on with clang-cfi an this patchset?

Thanks.

Regards,
- Sedat -

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CA%2BicZUUzN96qSudFCJETNAu6-cq1NKfgngh1PM7nxv%3DFUPuVBQ%40mail.gmail.com.
