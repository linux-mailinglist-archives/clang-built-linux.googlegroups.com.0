Return-Path: <clang-built-linux+bncBDYJPJO25UGBBVFEU2CAMGQERRPYN3Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x238.google.com (mail-lj1-x238.google.com [IPv6:2a00:1450:4864:20::238])
	by mail.lfdr.de (Postfix) with ESMTPS id AFBDE36DD78
	for <lists+clang-built-linux@lfdr.de>; Wed, 28 Apr 2021 18:50:28 +0200 (CEST)
Received: by mail-lj1-x238.google.com with SMTP id y12-20020a2e7d0c0000b02900c014139dd1sf7580588ljc.4
        for <lists+clang-built-linux@lfdr.de>; Wed, 28 Apr 2021 09:50:28 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1619628628; cv=pass;
        d=google.com; s=arc-20160816;
        b=tJusbDjCNNefcWmjevsD1tSjpDD57W3bBq/ub1FKp/0zzkugEzlWfWRKaI7FUYPgYm
         00/eRHmtiqr0oldm9BN9v/asIvqU4TOigVRrs64WsEb41iGN4jyKAsUajyppfoUtHeKY
         8FztXSTHbvw9Ro6lNzvlHYVPa7oWN/rDPUOaDj/nTqHG4dlYxEgzxaU+xVMd+ylDmex3
         sHz/yXyGohVDfVgXdk+mpLYoRtMUpFSEl+iOW6ycDNZ+EJO24eyvPfERRzJcWH9pm9YN
         sS3FH/48JzLt3hbdyFIeMfhUO3VQEh6plPRPo438RviIY0JihcVGVsBBkzE+VrNHRUgI
         b/ag==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=QF1N8rseGJYZ0tP647nMs1lYZV1zRknUxVjN8dhfxGY=;
        b=O4xZj7vVZc3TdIk+herkYaYHEG5fojaiAtw3uQeJtXlP7+djQeXmPNxUfpkQZnA3a0
         HNNwSyavGso3hbrexhAANLjPHFKxALC3jaWmjkF/z5L8kmDS5B+a1LbWzbOXIuodu2Rb
         OEiYGp46FeVAMGxeGK3ERoqYYg9ayWqQ/TH5KnIH9g3OwvrSlqDwWGbPvoCpzT5Tx3p+
         aoVGsRFkeP7YV/8GFohr2uBLJ7nF5t4k9K/PYJcHNsspFxJZJskwvD2eQpEz+pF/JLKd
         mTVIzj6glb79w5wfaQkHEbreLznBhSRf6+m9w6k7VxMFrpF9Oy3GEK0zWAMQdxd5yjQS
         O3vQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=m28tan9Q;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::12f as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=QF1N8rseGJYZ0tP647nMs1lYZV1zRknUxVjN8dhfxGY=;
        b=FfG5x8s3jViwfMZyrF/b5Zb6Fs+0UiuaZSbsABM82cJz+cQAiIl6PLyXksI5UnePBm
         HhgWjz+TyVEv/IbB9zFFBUOCEH8h+XVGOQKnqZZca7zmvMrQOMogTjApM/xaQTkUhSkR
         UokJIPDyWNVJuoIbhk1OuGcej8wbDg7YelAWe8VHtI1cWYXSn4XXnf76C3jzeSgavK2n
         7nzojXb5ngOxfsXUvie1ZXWJFwwVS4eRqjZYf0cbhy9YbRybki8e/xHA87BhkCcJt5EG
         KhK4HRusqjV5/E9XQhQMenki+xKqNb1guTlIOcVfMyAhbkip94F7D2yjQgpNREU3m/mt
         EYqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=QF1N8rseGJYZ0tP647nMs1lYZV1zRknUxVjN8dhfxGY=;
        b=ikAfrWUNP9kHcdWhUv14tDtdcNGpVdRnUofSiqHwpNvOkniqWq61IktlkpjyzjCX02
         9goZTT7F4d0Kjw+X6wtZtPIfsfY1ZcfCQ59sfLd8rDOF6vfHMkqoqbwq3Kn2Hsb47SPM
         NZH4/tMQlveKFEHUanDQ3+q4yu+/ayLJjVGUjM43VE7Lc3oe8F6ywqsjZEqIrdOUUR/E
         yxChE6Pwrh90HsK44icTSNJD5GRd9FL6x85Ynv5W7spmd/icvU+LOAFPUD+76LFf70zt
         7L56/lqHk8CD/wbpDgTiY88jneeuyiUfeo8byLUUkZkP0k9vzfZYDJqvFnTG0ZZrhzFU
         qs2w==
X-Gm-Message-State: AOAM533w0sX9bUkjLDLEHCxucw5eNkVq4+I8gI9ik50YiPOrCNhdKIUl
	eFlQND1PaM7/kEdKDMA+Fgw=
X-Google-Smtp-Source: ABdhPJyfci+x7NlGOomFlU0GPkQclOSOLkpeMpQTFnTe1xV4exNv4Vx1oBdNpO1rDD9PNAXCM2Gd3A==
X-Received: by 2002:a2e:b4ef:: with SMTP id s15mr21216463ljm.458.1619628628238;
        Wed, 28 Apr 2021 09:50:28 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac2:5f9a:: with SMTP id r26ls212634lfe.2.gmail; Wed, 28 Apr
 2021 09:50:27 -0700 (PDT)
X-Received: by 2002:a05:6512:358b:: with SMTP id m11mr21873217lfr.179.1619628627241;
        Wed, 28 Apr 2021 09:50:27 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1619628627; cv=none;
        d=google.com; s=arc-20160816;
        b=u3Se1V3PRSn0RKmN6UHKTqWcOYTxQZBT4rweC6OiiHsrgTiBzlZoScG/N/+q83lWwq
         NRqcZNCy9n/Lx0Hb9zpOSXs8nMwWk0tm6f7tnw2c5sglLnviVq8d/O/M9E7fTlfMkch4
         hJihCD1vb/3h+3fuJbXOTIEl1ARepkzof5xmF604c7lBVjzWy1DwsiTEYCocfoGoG/54
         XmE7ruCqt/vSIL3k+b9w9I3y55rwRf0XY3lusVsQMm7BTtW30OUQBuLze2ljtD+sUANZ
         qyXa28S3fRVVNsJJF0Jh+HWxxVPgj80sJIskMouXqyi7rPgB5Ps3p32Mc1oBy7+HkPO4
         zDdw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=I/Euk3VuH6GEg6mejGpaOG697QfObGwoAgCrZCQcw1M=;
        b=zjZpxHdWJCTJjS3imuIaQb5XaRgNLFISN2osrJrxWsjvAo8cdPSvuf9BgO4+5StrZI
         HgOC4+CFXiloqhElZY81eW0BDczRdLkPGwE3YGsbcP/aDW8fZ4EMJXJSV4NTab4iATQJ
         xmkMk2iQz0OhS0TCbizp5ZjVqr8E0ctELyD9iTgsJPkD+7ggMXeJu1Q0o3j3IT2ktyr8
         OPy6DVjATvYBy7peRx884sY330xvrT876lezgmkToOQ0qj0cyZgYIbyk4KhfSUIogsmE
         0k4R499u027168TyZJ2/HLf4rmQMpcdd6tFiEMtbe0IQrGPklfVXBxZrav1J+QqXX1QQ
         1rGQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=m28tan9Q;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::12f as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-lf1-x12f.google.com (mail-lf1-x12f.google.com. [2a00:1450:4864:20::12f])
        by gmr-mx.google.com with ESMTPS id p18si25195lji.8.2021.04.28.09.50.27
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 28 Apr 2021 09:50:27 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::12f as permitted sender) client-ip=2a00:1450:4864:20::12f;
Received: by mail-lf1-x12f.google.com with SMTP id b23so17744040lfv.8
        for <clang-built-linux@googlegroups.com>; Wed, 28 Apr 2021 09:50:27 -0700 (PDT)
X-Received: by 2002:a05:6512:159:: with SMTP id m25mr22265066lfo.73.1619628626805;
 Wed, 28 Apr 2021 09:50:26 -0700 (PDT)
MIME-Version: 1.0
References: <CAKwvOdngSxXGYAykAbC=GLE_uWGap220=k1zOSxe1ntuC=0wjA@mail.gmail.com>
 <CAK8P3a2DCCjOq+sB+9sRM7XrtnkromCs_+znv3dehqLiYFDQag@mail.gmail.com>
 <025b01d7386f$78deed80$6a9cc880$@codeaurora.org> <CAKwvOdnyowwDnHXPyJc8-KZg9vKy8zFn7hErazVT30+sPO8TyA@mail.gmail.com>
 <034f01d73a9d$fc4ed420$f4ec7c60$@codeaurora.org> <028801d73c48$d6bd21b0$84376510$@codeaurora.org>
In-Reply-To: <028801d73c48$d6bd21b0$84376510$@codeaurora.org>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Wed, 28 Apr 2021 09:50:15 -0700
Message-ID: <CAKwvOd=7oHJKyb89OJ0xU22krAipZOhase8EovdvgqMqzPp=3A@mail.gmail.com>
Subject: Re: FW: ARCH=hexagon unsupported?
To: Brian Cain <bcain@codeaurora.org>
Cc: clang-built-linux <clang-built-linux@googlegroups.com>, sidneym@codeaurora.org
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=m28tan9Q;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::12f
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

On Wed, Apr 28, 2021 at 9:09 AM Brian Cain <bcain@codeaurora.org> wrote:
>
> > -----Original Message-----
> > From: Nick Desaulniers <ndesaulniers@google.com>
> > Sent: Friday, April 23, 2021 4:40 PM
> ...
> > We'd be first in line to help build test such a patch. Please consider
> > cc'ing myself and clang-built-linux@googlegroups.com when such a patch
> > is available externally.  Further, we have the CI ready and waiting to
> > add new architectures, even if it's just build testing. That would
> > have caught regressions like 8320514c91bea; we were down to 1 build
> > failure with
> > https://github.com/ClangBuiltLinux/linux/issues/759 last I looked
> > which was preventing us from adding Hexagon to any CI, but we must now
> > dig ourselves out of a slightly deeper hole now.
> >
> > Is this patch something you suspect will take quite some time to work
> > through internal review?
>
> These patches have completed their internal review.  I have pushed them to my tree at git://git.kernel.org/pub/scm/linux/kernel/git/bcain/linux using for-linus branch, up to commit 43810cfdd2e6af9c57c0975e1b920f2b18c484b6 :

Are you able to link these with lld? I see:

$ ARCH=hexagon CROSS_COMPILE=hexagon-linux-gnu make LLVM=1 LLVM_IAS=1
-j71 defconfig
$ ARCH=hexagon CROSS_COMPILE=hexagon-linux-gnu make LLVM=1 LLVM_IAS=1 -j71
...
  LD      .tmp_vmlinux.kallsyms1
ld.lld: error: vdso.c:(function vdso_init: .init.text+0x74):
relocation R_HEX_B22_PCREL out of range: 4010400 is not in [-2097152,
2097151]; references panic
>>> defined in kernel/built-in.a(panic.o)

ld.lld: error: cpu.c:(function cpuhp_threads_init: .init.text+0x4C):
relocation R_HEX_B22_PCREL out of range: 4009620 is not in [-2097152,
2097151]; references printk
>>> defined in kernel/built-in.a(printk/printk.o)
...
<many R_HEX_B22_PCREL out of range failures>

This is with llvm-project @ bdd68357901d.

(Looking at the builtins, I'm curious what are `:endloop0`, and `if`
like statements?)

>
> ~~~~
>
> commit 43810cfdd2e6af9c57c0975e1b920f2b18c484b6
> Author: Sid Manning <sidneym@codeaurora.org>
> Date:   Tue Oct 13 16:17:50 2020 -0500
>
>     Hexagon: add builtins to kernel
>
>     Add the compiler-rt builtins like memcpy to the hexagon kernel.
>
>     Signed-off-by: Sid Manning <sidneym@codeaurora.org>
>     Signed-off-by: Brian Cain <bcain@codeaurora.org>
>
> commit 19a75d4ece15d519036db9e52768e46ddc1dcecd
> Author: Sid Manning <sidneym@codeaurora.org>
> Date:   Mon Apr 26 22:38:31 2021 -0500
>
>     Hexagon: remove DEBUG from comet config
>
>     Remove CONFIG_DEBUG_INFO from comet configuration.
>
>     Signed-off-by: Sid Manning <sidneym@codeaurora.org>
>     Signed-off-by: Brian Cain <bcain@codeaurora.org>
>
> commit 4c8a34896e830ad02bf8cf4abe5b639e0de12938
> Author: Sid Manning <sidneym@codeaurora.org>
> Date:   Mon Apr 26 13:51:53 2021 -0500
>
>     Hexagon: change jumps to must-extend in futex_atomic_*
>
>     Cross-section jumps from .fixup section must be extended.
>
>     Signed-off-by: Sid Manning <sidneym@codeaurora.org>
>     Signed-off-by: Brian Cain <bcain@codeaurora.org>
>
> commit 9492ed9c4d146f2143f21b82aa8157a2787ad993
> Author: Sid Manning <sidneym@codeaurora.org>
> Date:   Fri Apr 23 15:06:58 2021 -0500
>
>     Hexagon: fix build errors
>
>     Fix type-o in ptrace.c.
>     Add missing include asm/hexagon_vm.h
>     Remove superfluous cast.
>     Replace 'p3_0' with 'preds'.
>
>     Signed-off-by: Sid Manning <sidneym@codeaurora.org>
>     Signed-off-by: Brian Cain <bcain@codeaurora.org>
>


-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOd%3D7oHJKyb89OJ0xU22krAipZOhase8EovdvgqMqzPp%3D3A%40mail.gmail.com.
