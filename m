Return-Path: <clang-built-linux+bncBCS7XUWOUULBBVWPXCBQMGQEKEIAW7Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd37.google.com (mail-io1-xd37.google.com [IPv6:2607:f8b0:4864:20::d37])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DE5B357715
	for <lists+clang-built-linux@lfdr.de>; Wed,  7 Apr 2021 23:44:56 +0200 (CEST)
Received: by mail-io1-xd37.google.com with SMTP id w8sf16274964iox.13
        for <lists+clang-built-linux@lfdr.de>; Wed, 07 Apr 2021 14:44:56 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1617831895; cv=pass;
        d=google.com; s=arc-20160816;
        b=jfsyvpLYDpLF6fRkwbpXjTq1jBHwtb9bscGmU/C8YvEm3OF1M1stvIPWm8CK0DGXIh
         6HXOkAi06K6VMG4Vijlp2TyDHQpxTy+Lelfws2UZEGZKE4t51yqIjNn6wgY5eiDh2uAS
         PB6o1GYr/YRjVTGuNJuzV2F7RIOD/uPw1RH0vk/CU66UEqWEjEMXEsQpn2UBD4Qv16JP
         vi1su3vKKuI8kpHB8Kdb+M9ueS6TzNEQw0FBX4P5bvG+2SJ40F36T2XbXhoNJFReBZfL
         X/3p0CYyeHtr6C51TTl2zZPeMPdT0LA3Ptjd19SjlyExf5oANPDDTF+UmujzAvDTLb2o
         AG9g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-transfer-encoding
         :cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=IGcyyikSk7AICjRSgRtGECJTIVZmevKKzG6SqLYwo8o=;
        b=p30zPGMF4v7WFBQGQlPIQu6HpKbUYzb7i4E0+Jc5tNBKsGUeMDdTAI6QkylsMJIRuZ
         lsB+YT3p4L8fHYo1cwUjK6HWfol1jUwMuEYXHR+TiPF1bcQjHMfHD1YobT+luPp48Ii9
         h7IdqRur0D68QeDsbXc5oBOwRbx823VjGoRihhODANt6A2M1D2wTTg+vQKSQgYDYScU4
         v8zFLpLvLPhMHIeuCBdwkLntyXV6J8xCd/oOyT1mXackeuuTWFPJ7EHn9OJbFbfcQa2o
         BtOf2y+lTtxMK8xsV0GJsaWiCZGUOwfbMAFOgb46aILz5IpB/eugY5T4/zP60qj9dRcb
         uF+Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=En0QuuXp;
       spf=pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::52a as permitted sender) smtp.mailfrom=maskray@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=IGcyyikSk7AICjRSgRtGECJTIVZmevKKzG6SqLYwo8o=;
        b=bihANNV8/Ov8HUPi64+HA2EG3mNhRTq4Kxoc+ptCyjrzGC/ADlDwk6Nkfn4NJVqWTp
         DrZ0iORCUgtmg02CJeZTsou5tK/PDt0EHnpW+bD0EsoQhrVIKSA+LGZyXBz+eoHmqwll
         YjShIfA30M49617ZSTiZs3gkGixSt2hpC2k+AiNBhuGQxG+nU2CDdGCoLdSOZw6K5p9J
         5GUrOsjWZn8fpQ/p5dxEW2SrMtqPyWha5F7zc0YX1bKz4YRcUBqek1L10PJGqjrTmCIs
         YF7sN1LIusU/tmZGSGFFdivJQLpsqTzEXLE3adTmx707q+IO6Q57qqzu7nRRWFnDT4fR
         GKsA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=IGcyyikSk7AICjRSgRtGECJTIVZmevKKzG6SqLYwo8o=;
        b=cCIDyLOWumC0LQSkJhAptC2otcA9/6s9wLX5tVsUCcNsoeoPCo36Rz/XTBm2xT6cAC
         FoDUOJ7DUd/lFA0UBPepeyM6Cjl6U3ftjuNdLQfcGlXbmUVDcxqFdZVm1ZI9oWdEwaLn
         tfan9F2UupTHuRkMbeQhvCFfJ7wwtK57ZdRIFKxBoEycSPl/dp/8TgpkqFk2L3waQaWZ
         TksZBv7pXgaU8nD0Bd88k2ikqiVqOziErRw7ZtEZC8z88pwfNNlsD7CXzwcYkkQP6pNG
         WTTf4sOkzamByrCMgoV62MrBss/HIFGosXGIGckqYnz6C54YTihHgNJvC6ST9uSlEP7n
         jppw==
X-Gm-Message-State: AOAM530RH0ELmR76U6d3pV805gHtevYbMKDoWH/DSWVkIRrVYshhtGRm
	khEz+13GNQdcLGN/2W6K+nU=
X-Google-Smtp-Source: ABdhPJwADK+/ry41WZhjwk6SHxqH3J4ivleBD+/fz+fyWEGoMFan5WGSEk6FAxbEc/yBCLlctwCQbg==
X-Received: by 2002:a6b:ec08:: with SMTP id c8mr3959073ioh.55.1617831894827;
        Wed, 07 Apr 2021 14:44:54 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a02:a38d:: with SMTP id y13ls379325jak.1.gmail; Wed, 07 Apr
 2021 14:44:54 -0700 (PDT)
X-Received: by 2002:a02:b890:: with SMTP id p16mr5502443jam.138.1617831894509;
        Wed, 07 Apr 2021 14:44:54 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617831894; cv=none;
        d=google.com; s=arc-20160816;
        b=MqZjoQ3M9iC2Cbrd4GsSqT+dBn7tYlU2Q0cf/I8h5bWI32CfIrI2G3Oq83tL3ejeD1
         Gx9p/ShXDtVswXQOWSobZMgDATzW+TXt0PtwXibvwjpRMxbCPiVXx7s/iT/2eVLrEf6e
         f+Q2BlcfYq0WgSmt/R/2CWTRhR66ph2T/W3PhwOxA295i1mqqGKPFaOngGQF475ocQ6I
         Wzp/QLnNCrGk0t6ixzbho7mtJjm80nzogPu7xhCIZ659k4ZfTpfR2iH75vwPUgFD4FdK
         XjRkRsuyja1V6BE98R1Lip3t5eK04NQzCnR588GSHzAaGz5FMk7XZeDSPmFaneDEu5XX
         t4Sw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=t32TPFN7dNcai01TfPFUtOMBnlxLIFARiDUKaGnE5/w=;
        b=EMZZu2UDt0iAH3/shgwYdYfc9ztYYFJb+f2UFxM7KdCulWfbY/tswbkmCxTnkvKQZL
         Dz4nZU/6v/zfhJCCJKnGUScQv+4gujwllTMOdwSoL3e4nUDXqquhz8n/lfnTmCikRc5U
         AaRrQJJXS6XREqdbA5Ccn528NtXLWL3cbnG3OQAUuNSClIjFgk1wZskMI6JTeLx8VyOA
         547x/phHxBMaLWXjlW1BtjTj4YpSVtyOD7v9RpSLDyiHsXJEqCslgZqxxCL8UvEBgvp2
         We8EU/8+bnbSH8sv3aQiApbaH46DuLetctUo31yhsTfGbKbGvAMrSjSVFHvJhLMOmt7R
         v1cA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=En0QuuXp;
       spf=pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::52a as permitted sender) smtp.mailfrom=maskray@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x52a.google.com (mail-pg1-x52a.google.com. [2607:f8b0:4864:20::52a])
        by gmr-mx.google.com with ESMTPS id 12si932107ilz.1.2021.04.07.14.44.54
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 07 Apr 2021 14:44:54 -0700 (PDT)
Received-SPF: pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::52a as permitted sender) client-ip=2607:f8b0:4864:20::52a;
Received: by mail-pg1-x52a.google.com with SMTP id w10so8552029pgh.5
        for <clang-built-linux@googlegroups.com>; Wed, 07 Apr 2021 14:44:54 -0700 (PDT)
X-Received: by 2002:a62:6451:0:b029:23f:6ea1:293f with SMTP id
 y78-20020a6264510000b029023f6ea1293fmr4670336pfb.53.1617831893704; Wed, 07
 Apr 2021 14:44:53 -0700 (PDT)
MIME-Version: 1.0
References: <20210111081821.3041587-1-morbo@google.com> <20210407211704.367039-1-morbo@google.com>
 <202104071419.AA35EEAF@keescook>
In-Reply-To: <202104071419.AA35EEAF@keescook>
From: =?UTF-8?B?J0bEgW5nLXJ1w6wgU8OybmcnIHZpYSBDbGFuZyBCdWlsdCBMaW51eA==?= <clang-built-linux@googlegroups.com>
Date: Wed, 7 Apr 2021 14:44:41 -0700
Message-ID: <CAFP8O3LUGkxwxShp3cc_XwcLotp1aoKxH9E-tyWL+37+RBNbeg@mail.gmail.com>
Subject: Re: [PATCH v9] pgo: add clang's Profile Guided Optimization infrastructure
To: Kees Cook <keescook@chromium.org>, Bill Wendling <morbo@google.com>
Cc: Masahiro Yamada <masahiroy@kernel.org>, Jonathan Corbet <corbet@lwn.net>, 
	Linux Doc Mailing List <linux-doc@vger.kernel.org>, LKML <linux-kernel@vger.kernel.org>, 
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Andrew Morton <akpm@linux-foundation.org>, Nathan Chancellor <natechancellor@gmail.com>, 
	Nick Desaulniers <ndesaulniers@google.com>, Sami Tolvanen <samitolvanen@google.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: maskray@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=En0QuuXp;       spf=pass
 (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::52a
 as permitted sender) smtp.mailfrom=maskray@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: =?UTF-8?B?RsSBbmctcnXDrCBTw7JuZw==?= <maskray@google.com>
Reply-To: =?UTF-8?B?RsSBbmctcnXDrCBTw7JuZw==?= <maskray@google.com>
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

On Wed, Apr 7, 2021 at 2:22 PM Kees Cook <keescook@chromium.org> wrote:
>
> On Wed, Apr 07, 2021 at 02:17:04PM -0700, 'Bill Wendling' via Clang Built=
 Linux wrote:
> > From: Sami Tolvanen <samitolvanen@google.com>
> >
> > Enable the use of clang's Profile-Guided Optimization[1]. To generate a
> > profile, the kernel is instrumented with PGO counters, a representative
> > workload is run, and the raw profile data is collected from
> > /sys/kernel/debug/pgo/profraw.
> >
> > The raw profile data must be processed by clang's "llvm-profdata" tool
> > before it can be used during recompilation:
> >
> >   $ cp /sys/kernel/debug/pgo/profraw vmlinux.profraw
> >   $ llvm-profdata merge --output=3Dvmlinux.profdata vmlinux.profraw
> >
> > Multiple raw profiles may be merged during this step.
> >
> > The data can now be used by the compiler:
> >
> >   $ make LLVM=3D1 KCFLAGS=3D-fprofile-use=3Dvmlinux.profdata ...
> >
> > This initial submission is restricted to x86, as that's the platform we
> > know works. This restriction can be lifted once other platforms have
> > been verified to work with PGO.
> >
> > Note that this method of profiling the kernel is clang-native, unlike
> > the clang support in kernel/gcov.
> >
> > [1] https://clang.llvm.org/docs/UsersManual.html#profile-guided-optimiz=
ation
> >
> > Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
> > Co-developed-by: Bill Wendling <morbo@google.com>
> > Signed-off-by: Bill Wendling <morbo@google.com>
> > Tested-by: Nick Desaulniers <ndesaulniers@google.com>
> > Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
> > Reviewed-by: Fangrui Song <maskray@google.com>
>
> Thanks for sending this again! I'm looking forward to using it.

Yay. Quite excited about that:)

> Masahiro and Andrew, unless one of you would prefer to take this in your
> tree, I figure I can snag it to send to Linus.
>
> Anyone else have feedback?

I have carefully compared the implementation and the original
implementation in llvm-project/compiler-rt.
This looks great.
Also very happy about the cleaner include/asm-generic/vmlinux.lds.h now.

Just adding a note here for folks who may want to help test the
not-yet-common option LD_DEAD_CODE_DATA_ELIMINATION.
--gc-sections may not work perfectly with some advanced PGO features
before Clang 13 (not broken but probably just in an inferior state).
There were some upstream changes in this area recently and I think as
of my https://reviews.llvm.org/D97649 things should be perfect with GC
now.
This does not deserve any comment without more testing, though.

Thanks for already carrying my Reviewed-by tag.

> Thanks!
>
> -Kees
>
> --
> Kees Cook



--=20
=E5=AE=8B=E6=96=B9=E7=9D=BF

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/CAFP8O3LUGkxwxShp3cc_XwcLotp1aoKxH9E-tyWL%2B37%2BRBNbeg%4=
0mail.gmail.com.
