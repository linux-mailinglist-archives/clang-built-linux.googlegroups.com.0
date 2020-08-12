Return-Path: <clang-built-linux+bncBC7JPD5NQEBBB5MS2H4QKGQEBEILBYQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103f.google.com (mail-pj1-x103f.google.com [IPv6:2607:f8b0:4864:20::103f])
	by mail.lfdr.de (Postfix) with ESMTPS id 351DC242FB2
	for <lists+clang-built-linux@lfdr.de>; Wed, 12 Aug 2020 21:56:39 +0200 (CEST)
Received: by mail-pj1-x103f.google.com with SMTP id s60sf3823484pjc.1
        for <lists+clang-built-linux@lfdr.de>; Wed, 12 Aug 2020 12:56:39 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1597262198; cv=pass;
        d=google.com; s=arc-20160816;
        b=kjwC4/NZGYVtk59ud8F0Rh+CwefOnczQFki4Vyys+BVfpGTdc4SMVohxyd/tf445PG
         TAlhh+JxG73OpMFvoR9tgUlvgQENzga9J2wiroKzXhf+go6WCOBgMpVlNHtX/rATF/9M
         zPtB1EHJ6ImDF142Zt7DHF+6hcaebSo5xI2pIZk7PeCYdEKgVM+7rwA2H02/kRWsNVOX
         FXAYcVHNj0Ls3jUGxh4I2BaUZKAEtKHGoCo0ch5tR76DsoN5bcaSN1raJmL0CD1nAZd5
         lrKby4jcmu0V9zjze7pO+3+vH55UPlnUEGJFtSuO7oLy272fusZ5Wj2k1nseOjyqVdIl
         QkOw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=1wJYQT9gTAVjEn0ip/Wm2PLFvOZXTAfTivm0ehRTMpg=;
        b=RB353B87h4NWXn6K9uX8oOXfjsF6Sf9Unh5M6//0IVkEpK7+BWH0gf9RnTqsZJYNgJ
         ImCYARHsYGiTej6+R3gs9XA/3/CY6hxhwVutQXFwitmEd6OWQ2k0IMRi+ef1re8FxWRT
         joVyKwHa4t/DIubSBPqz6qPlpgrVUT8m9e6IpxPQRntKxH1dLBxrHQk/nfQltr4Og29u
         L54Fbf9K81+6+nVXJYSIayvxHJAP6hObBTavscG08g3OELzhcd5V+H/cimYZ4T9pk6aX
         NYIk/lrS3w+L8gDAC0Algk7Fw/wO77rWBQJjaNWA5clhFLWXZV3l96thKKPKDFeP14cL
         a+ZQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=m3Weqppl;
       spf=pass (google.com: domain of nhuck@google.com designates 2607:f8b0:4864:20::743 as permitted sender) smtp.mailfrom=nhuck@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=1wJYQT9gTAVjEn0ip/Wm2PLFvOZXTAfTivm0ehRTMpg=;
        b=dfZMKepnLyaP/tBZx4h8X+9iBjwYZ/z/1MkEUQLQS9pv1DNqYJDu11W4qm+hYcfbb/
         9YwgSfW7prM+B+SmFXrliDDSkNHnFgXS4AKOpKQtZJAnV2BJq2UdWR+Pf967UNTuF+VR
         9ymlh5AR4X6vglO5TqJNYdmvxtJwtkcacsiRkHC1WBBn13reTfSx4cwxKEaZFKuFL4xF
         4sr+Ijk+XYD0A+yfOzyuh4Cv4/04835YLzkmCtZueA+JubJ4UuNVX+z/dptvJO1Avnje
         We9nysL+ft78xEHGWahCloqhofxDPmAIRLufkxV8QOH1Dbvv2xEysmnokEueJG2TYfBX
         wKDQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=1wJYQT9gTAVjEn0ip/Wm2PLFvOZXTAfTivm0ehRTMpg=;
        b=B8zEehMvYtBxZdVjS1aR7KfWg2/vMmH8kTb92sRMOqXah+Ah8r0njB4idvk65tN8gw
         6DYNnL1tIzD7jD7MkAsoPKgYvGpHGGIzZuBFf75Q97nLNV1wcxqH6mldiVnGp5m4Irgy
         EYLCqXdXUS+1uAtYJzwn7q7gzuDIj9MMjDHPJb9nHz+vZIcRV8W0ZL3CG17emRtkjBG0
         e1gVRqv5gUb7sfSo628KlRJ3P74oyNyio1pfjKhrVi4X/L94Hth3tBbIijMVa/eyqDgu
         LkEuAo7Pt68H6az2VKyVKtC7vEtP29k4uvVvEswsyt4SkhPzFqgilytNGRh+SUEGv2JP
         dzRQ==
X-Gm-Message-State: AOAM533hLitXQ9nfCu76pXdXWYqysoisiUj0QukNTbcgbopUsHHjYct1
	ajfnPO75RVpnlY7F8QHPykw=
X-Google-Smtp-Source: ABdhPJyPMbYWd9nISFdw8XdG3X31k8fDW//qEkr2BmAi59W6CCirJavuOeGCnln/1nvPwcW1W7Iyeg==
X-Received: by 2002:a17:90a:c208:: with SMTP id e8mr1607759pjt.73.1597262197829;
        Wed, 12 Aug 2020 12:56:37 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:7e0a:: with SMTP id z10ls1162339pfc.8.gmail; Wed, 12 Aug
 2020 12:56:37 -0700 (PDT)
X-Received: by 2002:a63:3ec2:: with SMTP id l185mr676709pga.365.1597262197455;
        Wed, 12 Aug 2020 12:56:37 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1597262197; cv=none;
        d=google.com; s=arc-20160816;
        b=iSDNf8v/B84Jcz5n1Hcowe39sAGE3IGEW7zJTmHIYFu1bQ13s9yjzbSP/IcY3dWrb6
         EwUd65+5bfuyY/JvUDdjto12Ba+yk6NRPtVGNv9Wr1OC8tmLME9YYRlPU2rewEnTwfW4
         p305jaD+oFUyIY1bIazE2Cejur9P5edENfeq2cr+nAs3gajN9QssuROxCN3mn53d3hhB
         pVOSLPFvwLISJliefbVeyHdQQ8XYDJHtsUj6n0mQocwLMsUoQoziYJCvOJhLIaFKLG2D
         QNUIvELKpPcwga2KZxcUry+pqsh9uyt2Uzbd8iS4XPmDCYbFmE9eFmET4HW8RHev3due
         cGdA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=wWaTeN8Ytl2katk+bZVElXkZxt9E6gO+CzcMFpZntSQ=;
        b=YoQ+So6nXNqkEexA/ZtTHIkB9S6JnenE8ZJnNHmbZNrNNu9SnGWVouZFiRioLf81Ix
         BpGp5hLTBYLqak34yL/0Jg2YCvVDJR4+ffFiMJrio4YJRexMdSYuZdIw8BbTjHM5Ro5j
         4OH7hDSEYQhu6seIURSV0aRGBeXvF03mkd2h1C8QtFJtgEsogpCpTGp6iRdeQ45Az9pJ
         NQN6J7cUa3U5dH888cEdcgGGdG3lKgYv1i/M7W4JmKKRUENtYos4m9Z4tTMkfdL2nNu4
         BbUjlYakjpDjGNnkQ2hH+bG3fquQQzxEL8at5GnxnTA4eCUbH0MJ74zH3itX6wu3YNGb
         6uCw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=m3Weqppl;
       spf=pass (google.com: domain of nhuck@google.com designates 2607:f8b0:4864:20::743 as permitted sender) smtp.mailfrom=nhuck@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-qk1-x743.google.com (mail-qk1-x743.google.com. [2607:f8b0:4864:20::743])
        by gmr-mx.google.com with ESMTPS id kr1si286032pjb.2.2020.08.12.12.56.37
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 12 Aug 2020 12:56:37 -0700 (PDT)
Received-SPF: pass (google.com: domain of nhuck@google.com designates 2607:f8b0:4864:20::743 as permitted sender) client-ip=2607:f8b0:4864:20::743;
Received: by mail-qk1-x743.google.com with SMTP id 2so3181490qkf.10
        for <clang-built-linux@googlegroups.com>; Wed, 12 Aug 2020 12:56:37 -0700 (PDT)
X-Received: by 2002:a37:a354:: with SMTP id m81mr1537714qke.277.1597262196294;
 Wed, 12 Aug 2020 12:56:36 -0700 (PDT)
MIME-Version: 1.0
References: <20200812173958.2307251-1-masahiroy@kernel.org>
In-Reply-To: <20200812173958.2307251-1-masahiroy@kernel.org>
From: "'Nathan Huckleberry' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Wed, 12 Aug 2020 14:56:24 -0500
Message-ID: <CAJkfWY6vhW9kNK-t+2vZQ7Rhn3HedykvT2du7AfO0_9oUAXvjw@mail.gmail.com>
Subject: Re: [PATCH 0/3] kbuild: clang-tidy
To: Masahiro Yamada <masahiroy@kernel.org>
Cc: Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, 
	Nick Desaulniers <ndesaulniers@google.com>, Tom Roeder <tmroeder@google.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	"David S. Miller" <davem@davemloft.net>, Mauro Carvalho Chehab <mchehab+huawei@kernel.org>, 
	Michal Marek <michal.lkml@markovi.net>, Rob Herring <robh@kernel.org>, 
	LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: nhuck@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=m3Weqppl;       spf=pass
 (google.com: domain of nhuck@google.com designates 2607:f8b0:4864:20::743 as
 permitted sender) smtp.mailfrom=nhuck@google.com;       dmarc=pass (p=REJECT
 sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Nathan Huckleberry <nhuck@google.com>
Reply-To: Nathan Huckleberry <nhuck@google.com>
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

On Wed, Aug 12, 2020 at 12:40 PM Masahiro Yamada <masahiroy@kernel.org> wrote:
>
>
> I improved gen_compile_commands.py in the first two patches,
> then rebased Nathan's v7 [1] on top of them.
> To save time, I modified the Makefile part.
> No change for run-clang-tools.py
>
> I am not sure if the new directory, scripts/clang-tools/,
> is worth creating only for 2 files, but I do not have
> a strong opinion about it.
>
> "make clang-tidy" should work in-tree build,
> out-of-tree build (O=), and external module build (M=).
> Tests and reviews are appreciated.
>
> "make clang-tidy" worked for me.
>
> masahiro@oscar:~/workspace/linux-kbuild$ make -j24 CC=clang clang-tidy
>   DESCEND  objtool
>   CALL    scripts/atomic/check-atomics.sh
>   CALL    scripts/checksyscalls.sh
>   CHK     include/generated/compile.h
>   GEN     compile_commands.json
>   CHECK   compile_commands.json
>
> But "make clang-analyzer" just sprinkled the following error:
>
>   Error: no checks enabled.
>   USAGE: clang-tidy [options] <source0> [... <sourceN>]
>
> I built clang-tidy from the latest source.
> I had no idea how to make it work...

How are you building clang-tidy? The clang static-analyzer may not
have been built.
I believe the static analyzer is built as a part of clang, not as a
part of clang-tools-extra.

I use this command to build.
cmake -DCMAKE_BUILD_TYPE="release"
-DLLVM_TARGETS_TO_BUILD="X86;AArch64;ARM;RISCV"
-DLLVM_ENABLE_PROJECTS="clang;clang-tools-extra;lld;llvm-as"
-DLLVM_ENABLE_LLD=1 -G "Ninja" ../llvm

Adding clang to the list of -DLLVM_ENABLE_PROJECTS will build the
static analyzer.
-DCLANG_ENABLE_STATIC_ANALYZER=1 might also work, but I haven't tested it.

I tested the patchset and both clang-tidy and clang-analyzer work for me.

>
> [1] https://patchwork.kernel.org/patch/11687833/
>
>
>
> Masahiro Yamada (2):
>   gen_compile_commands: parse only the first line of .*.cmd files
>   gen_compile_commands: wire up build rule to Makefile
>
> Nathan Huckleberry (1):
>   Makefile: Add clang-tidy and static analyzer support to makefile
>
>  MAINTAINERS                                 |   1 +
>  Makefile                                    |  45 +++++-
>  scripts/clang-tools/gen_compile_commands.py | 117 +++++++++++++++
>  scripts/clang-tools/run-clang-tools.py      |  74 ++++++++++
>  scripts/gen_compile_commands.py             | 151 --------------------
>  5 files changed, 233 insertions(+), 155 deletions(-)
>  create mode 100755 scripts/clang-tools/gen_compile_commands.py
>  create mode 100755 scripts/clang-tools/run-clang-tools.py
>  delete mode 100755 scripts/gen_compile_commands.py
>
> --
> 2.25.1
>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAJkfWY6vhW9kNK-t%2B2vZQ7Rhn3HedykvT2du7AfO0_9oUAXvjw%40mail.gmail.com.
