Return-Path: <clang-built-linux+bncBCUY5FXDWACRBW5V7H3QKGQEWEY5S6Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x33b.google.com (mail-wm1-x33b.google.com [IPv6:2a00:1450:4864:20::33b])
	by mail.lfdr.de (Postfix) with ESMTPS id D5424212F45
	for <lists+clang-built-linux@lfdr.de>; Fri,  3 Jul 2020 00:08:27 +0200 (CEST)
Received: by mail-wm1-x33b.google.com with SMTP id t18sf31811795wmj.5
        for <lists+clang-built-linux@lfdr.de>; Thu, 02 Jul 2020 15:08:27 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1593727707; cv=pass;
        d=google.com; s=arc-20160816;
        b=SYnkus9eeflhMuMj/ihklZWSjuNlkCgucMsz8dUfGpLAutIZa7ldwGkLggBQYx9lG9
         4zruz9gZNMJrh3p7PlzjV6aodxW+ZF2sLCZgiP1GglfHBEDDZf1zLy7QuMTnSXIF/tBD
         lQc4g2f9bIHCPfDiC7324Bfw5AibsQOStpFDR+CvuQ205ZUPyN+NP/gKmZX1FLCC+V1m
         nndy7FjjQUyqYxD0mjLXmL0NqrpsXcgT0674PVwf06DmmfFAauSH/TjfAUoLCWvsIrAl
         pje6gUVDz887o+7ZZAUlxhO2tj4fp7NChDmTYmAIv0+aQuu1uLYx+LTdOEg+tgEe7+AT
         Nxpg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=k1VKEpjIErnb/2C5+qkJB8VFYbQ62XU/yal7UJRaByA=;
        b=HMv/TZRTz9qu1C4CELF1Qb6ifgnItFxtJPAGSvlDaaxLlAaSY3o00TniOiiJqDfF0j
         Q595NT27AWJ3EQVxglvjw4va/41ITD+NHlNX39ncvHcgJn62xuO6K9ffKIoLOd/yIpzO
         vPwx5o5VWIbsSh5chR40hsdj1WDGHB1PfjoaEkXsaQWp3ECq1cqfXYAMUcQafQrQD+Fj
         byJ6B17Kddn0m6s19fLGaxXt0cuebPCk4u34/meHhRnWp4+/JNt8gImITulyEI/Ubuc6
         dfoVaTaOZYgQ6KedbAnSbVP/d1/DOBkaF6WmNqikGSS7nGZt+rvSB9VqU+ekq7nU7Jo0
         6loA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="GRo6/3RT";
       spf=pass (google.com: domain of alexei.starovoitov@gmail.com designates 2a00:1450:4864:20::241 as permitted sender) smtp.mailfrom=alexei.starovoitov@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=k1VKEpjIErnb/2C5+qkJB8VFYbQ62XU/yal7UJRaByA=;
        b=nkEffEdfO6tn4aKvEOWS+8wO38mwdllXx8aNdNdZ6lMo0+iUUGyo21j97un8g8muLA
         EJxK7f4rpLP3EcSXkKYq8zl6Fv/m7zerJfUfOvjpIXjiFMjLlxvbdYUAE22KMMN3/dNk
         ZWv5QfJhXVChYgpTsizsZRpldCKdl4KeLPnoI/q/iNzeo1aFsdPkLLl0RBJop3SlxrhH
         eXHBS/0VJ85dnUhC+8uaFrdarCs55vojuF1JSo4FsvMEeqxb7UaQYpdsIxBn5Z/9YXrg
         3FCYZCSK5ioO7W06BquqywFmoArcxyG0hUS1etI3kIWl6p2hz3NmaqsBoDoCQru/3yTJ
         vkvg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=k1VKEpjIErnb/2C5+qkJB8VFYbQ62XU/yal7UJRaByA=;
        b=pPVZEB3o5xQxRO+3GKFzWdVxlPVdawGaaNzC6OOsD5/w7CSp7kSVvDw5oKiIsTsJFB
         t6Ke3l0Lj9Snm37/clxmFIJ4MRHzlyYOIS0oRNUeWDfqR8H/+oRxwSpZHjdlGTWTjrFH
         p6ee2skrgXEIuV2ILY3PJk5lGDC/UwomV5Dy5iwdXYxfWeqfghhuNVPDXdcc5EDT5i2s
         jqimQH665N5AjFT1xHqTEGkraDxC7R0m5zVoyopI0q5zorgViXihkAFQSWAv9JDz4N0L
         6hVhD8KtwIh+3QJ2aF/aCR4ZgoTmE6J1UwSB3jsoyoY7zCu0wKB+xGJqgbEiZl6H+XO4
         aVVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=k1VKEpjIErnb/2C5+qkJB8VFYbQ62XU/yal7UJRaByA=;
        b=ogrUJnu9CzYvbtURmqBbHdMQ4d5dVCytJyEZk3lRS3blMMFSvO7IW+Ay9pI+J7pyZS
         TURdpsAnvzbvhyLOLbc3Ez6B/HHazCvmFAMMll8GOklm8OtYBM4drafhEwBRrU7l/G0A
         f5D+4qJxgbK2cmbXv1bpLwWEuHiCXjFDkepPWoIxUYycBdAcInNKUB/8A99qro6PUUyG
         HH5uxb2BKdAwNkdYEMb9xeZZDe2czhpQpF8xXWX3JEC8x76yvcDkI837BlE820wU91kn
         AlVPNu9s19PenV0WPaNyrcKJ4QkExliwRuQNjX5ypIHBuKQvTtJKFBlH1YKA3Djt7XEc
         5OjA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531UbSmouoShEOUIiv8dCrTHmBI50hCx3pYkzmz6AmD8wRNRm3Mq
	4pkCUif0xz7Ajoa+9oM+uUg=
X-Google-Smtp-Source: ABdhPJzipSBVPWp26MJaf2LSNepHQ7MwH+iPMROyVbn/gUFpHw+/x9YpyJzwFMlxd3Fl6HJ9Vdjakg==
X-Received: by 2002:a05:6000:100c:: with SMTP id a12mr36524174wrx.81.1593727707604;
        Thu, 02 Jul 2020 15:08:27 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1c:7311:: with SMTP id d17ls3717926wmb.0.canary-gmail; Thu,
 02 Jul 2020 15:08:27 -0700 (PDT)
X-Received: by 2002:a7b:c043:: with SMTP id u3mr35718507wmc.185.1593727707008;
        Thu, 02 Jul 2020 15:08:27 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1593727707; cv=none;
        d=google.com; s=arc-20160816;
        b=RejDLSSibU1aMNfv/6FKpZE+Dfb1B+IE+3Q9guooYXkQtryGrAwn110GnIi5cMeJP7
         oeBSFtqsBsMOVySwsODjAtjSnkFqJrNIkl1+AGKtyeIM2CZfXPQZjTWv4+OaZVqDsBb8
         wyAb56fhctzw3dHl5s/ClGsLqgq3zo7f+lylsifY4tZt3hhYPNgTA+QXGriAmBc3dJnE
         L2sPgjx9fjfiKT1XWASD66UUHG7VDSzPGIIpySzUulNRSTsugELDjQiuNYYbbWp22Qka
         9X0WzLDrc6klJ5tjDSiYJd0rjEQt7IFU/5VUvLT6/WSajwvIgLEkRWwc0tnAJdZFdKv9
         +akA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=pMXE/ed0LRKYFy6HR57Jhz9YDNt4zj5IC6v7ESyPZA4=;
        b=fF0Qn5b3RCG/gCoBJn0nIVg6wJtUeizo3/wcWxZ/W4EeKC0oBAG63C3VTR2MfYTcJQ
         cuIh4t4y115VMRPsbnCa8mkL2YrMC8EeLJPdzV3pTfuq33WaXGQVyNVKdN2i2OmkzXQt
         s1K9KtGxvW9ZhegMWdxTKZqiKA585fOmNmkHMW1XV06eRcOKBGD+uk8oIAxO2hlgIqvN
         83fRwUcshW0h8sPQOqreYyTJZP9Y7iUm+klVR1CUNM4DCGdQtfVI5o5k1+L4GtLq7dNs
         MQS/Cz/3/9fZZjjYXDs35loG6htJYqLbjSLZkIxkYg41VyQW0wtRCB9G9XhIvE2WDZaE
         h8rA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="GRo6/3RT";
       spf=pass (google.com: domain of alexei.starovoitov@gmail.com designates 2a00:1450:4864:20::241 as permitted sender) smtp.mailfrom=alexei.starovoitov@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-lj1-x241.google.com (mail-lj1-x241.google.com. [2a00:1450:4864:20::241])
        by gmr-mx.google.com with ESMTPS id u17si559859wrq.1.2020.07.02.15.08.26
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 02 Jul 2020 15:08:27 -0700 (PDT)
Received-SPF: pass (google.com: domain of alexei.starovoitov@gmail.com designates 2a00:1450:4864:20::241 as permitted sender) client-ip=2a00:1450:4864:20::241;
Received: by mail-lj1-x241.google.com with SMTP id h22so27042953lji.9
        for <clang-built-linux@googlegroups.com>; Thu, 02 Jul 2020 15:08:26 -0700 (PDT)
X-Received: by 2002:a05:651c:284:: with SMTP id b4mr6962623ljo.283.1593727706473;
 Thu, 02 Jul 2020 15:08:26 -0700 (PDT)
MIME-Version: 1.0
References: <20200702200516.13324-1-grandmaster@al2klimov.de>
In-Reply-To: <20200702200516.13324-1-grandmaster@al2klimov.de>
From: Alexei Starovoitov <alexei.starovoitov@gmail.com>
Date: Thu, 2 Jul 2020 15:08:15 -0700
Message-ID: <CAADnVQKaL7cX2oCFLU7MW+CMf4ySbJf3tC3YqajDxgbuPCY-Cg@mail.gmail.com>
Subject: Re: [PATCH] Replace HTTP links with HTTPS ones: BPF (Safe dynamic
 programs and tools)
To: "Alexander A. Klimov" <grandmaster@al2klimov.de>
Cc: Jonathan Corbet <corbet@lwn.net>, Alexei Starovoitov <ast@kernel.org>, 
	Daniel Borkmann <daniel@iogearbox.net>, Martin KaFai Lau <kafai@fb.com>, Song Liu <songliubraving@fb.com>, 
	Yonghong Song <yhs@fb.com>, Andrii Nakryiko <andriin@fb.com>, John Fastabend <john.fastabend@gmail.com>, 
	KP Singh <kpsingh@chromium.org>, "David S. Miller" <davem@davemloft.net>, 
	Jakub Kicinski <kuba@kernel.org>, Jesper Dangaard Brouer <hawk@kernel.org>, 
	Alexey Kuznetsov <kuznet@ms2.inr.ac.ru>, Hideaki YOSHIFUJI <yoshfuji@linux-ipv6.org>, 
	Thomas Gleixner <tglx@linutronix.de>, Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>, 
	X86 ML <x86@kernel.org>, "H. Peter Anvin" <hpa@zytor.com>, Steven Rostedt <rostedt@goodmis.org>, 
	Shuah Khan <shuah@kernel.org>, Stanislav Fomichev <sdf@google.com>, 
	Quentin Monnet <quentin@isovalent.com>, Andrey Ignatov <rdna@fb.com>, 
	"open list:DOCUMENTATION" <linux-doc@vger.kernel.org>, Network Development <netdev@vger.kernel.org>, 
	bpf <bpf@vger.kernel.org>, LKML <linux-kernel@vger.kernel.org>, 
	"open list:KERNEL SELFTEST FRAMEWORK" <linux-kselftest@vger.kernel.org>, 
	Clang-Built-Linux ML <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: alexei.starovoitov@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b="GRo6/3RT";       spf=pass
 (google.com: domain of alexei.starovoitov@gmail.com designates
 2a00:1450:4864:20::241 as permitted sender) smtp.mailfrom=alexei.starovoitov@gmail.com;
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

On Thu, Jul 2, 2020 at 1:05 PM Alexander A. Klimov
<grandmaster@al2klimov.de> wrote:
>
> Rationale:
> Reduces attack surface on kernel devs opening the links for MITM
> as HTTPS traffic is much harder to manipulate.
>
> Deterministic algorithm:
> For each file:
>   If not .svg:
>     For each line:
>       If doesn't contain `\bxmlns\b`:
>         For each link, `\bhttp://[^# \t\r\n]*(?:\w|/)`:
>           If both the HTTP and HTTPS versions
>           return 200 OK and serve the same content:
>             Replace HTTP with HTTPS.
>
> Signed-off-by: Alexander A. Klimov <grandmaster@al2klimov.de>
> ---
>  Continuing my work started at 93431e0607e5.
>
>  If there are any URLs to be removed completely or at least not HTTPSified:
>  Just clearly say so and I'll *undo my change*.
>  See also https://lkml.org/lkml/2020/6/27/64
>
>  If there are any valid, but yet not changed URLs:
>  See https://lkml.org/lkml/2020/6/26/837
>
>  Documentation/bpf/bpf_devel_QA.rst          | 4 ++--
>  Documentation/bpf/index.rst                 | 2 +-
>  Documentation/networking/af_xdp.rst         | 2 +-
>  Documentation/networking/filter.rst         | 2 +-
>  arch/x86/net/bpf_jit_comp.c                 | 2 +-
>  include/linux/bpf.h                         | 2 +-
>  include/linux/bpf_verifier.h                | 2 +-
>  include/uapi/linux/bpf.h                    | 2 +-
>  kernel/bpf/arraymap.c                       | 2 +-
>  kernel/bpf/core.c                           | 2 +-
>  kernel/bpf/disasm.c                         | 2 +-
>  kernel/bpf/disasm.h                         | 2 +-
>  kernel/bpf/hashtab.c                        | 2 +-
>  kernel/bpf/helpers.c                        | 2 +-
>  kernel/bpf/syscall.c                        | 2 +-
>  kernel/bpf/verifier.c                       | 2 +-
>  kernel/trace/bpf_trace.c                    | 2 +-
>  lib/test_bpf.c                              | 2 +-
>  net/core/filter.c                           | 2 +-
>  samples/bpf/lathist_kern.c                  | 2 +-
>  samples/bpf/lathist_user.c                  | 2 +-
>  samples/bpf/sockex3_kern.c                  | 2 +-
>  samples/bpf/tracex1_kern.c                  | 2 +-
>  samples/bpf/tracex2_kern.c                  | 2 +-
>  samples/bpf/tracex3_kern.c                  | 2 +-
>  samples/bpf/tracex3_user.c                  | 2 +-
>  samples/bpf/tracex4_kern.c                  | 2 +-
>  samples/bpf/tracex4_user.c                  | 2 +-
>  samples/bpf/tracex5_kern.c                  | 2 +-
>  tools/include/uapi/linux/bpf.h              | 2 +-
>  tools/lib/bpf/bpf.c                         | 2 +-
>  tools/lib/bpf/bpf.h                         | 2 +-
>  tools/testing/selftests/bpf/test_maps.c     | 2 +-
>  tools/testing/selftests/bpf/test_verifier.c | 2 +-
>  34 files changed, 35 insertions(+), 35 deletions(-)

Nacked-by: Alexei Starovoitov <ast@kernel.org>

Pls don't touch anything bpf related with such changes.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAADnVQKaL7cX2oCFLU7MW%2BCMf4ySbJf3tC3YqajDxgbuPCY-Cg%40mail.gmail.com.
