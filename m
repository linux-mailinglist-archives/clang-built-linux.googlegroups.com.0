Return-Path: <clang-built-linux+bncBDHYDDNWVUNRBE6Q5PVAKGQEXFQYNLI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x43a.google.com (mail-wr1-x43a.google.com [IPv6:2a00:1450:4864:20::43a])
	by mail.lfdr.de (Postfix) with ESMTPS id 62C1794C72
	for <lists+clang-built-linux@lfdr.de>; Mon, 19 Aug 2019 20:18:59 +0200 (CEST)
Received: by mail-wr1-x43a.google.com with SMTP id t9sf5671978wrx.9
        for <lists+clang-built-linux@lfdr.de>; Mon, 19 Aug 2019 11:18:59 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1566238739; cv=pass;
        d=google.com; s=arc-20160816;
        b=hrDEf1BTE85qwpB57+JJX8LdSDt4c1ciemAxPC6yTuvlgwr8kLISVrJmxhCiFOvf8W
         rSYHVO+8hSJbJEIn7vEIuV4BkkiHOPwqkk7AO58FfJdURW5kfEsx6RDQOWaJakoEoAUh
         1Bx3DEKzpbzsaFgeMXF067A4KQIn0Jmj3fJw64eQV2MbYf0a27O5Hag9/EG6jVTAJvMX
         RWJgnuPvtnmnxmZ53sYrVtLl28uaGSoDCkSFfZX0BwZiosbxmxzhtwPqzBfjIir0ZXAj
         /3IF4B4kt8nshD+59elTU7OSt7/td1RYaanyeQGLH8Y9YYYzcgpT3nMCYq2Y/TxjKTNX
         GaoQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :reply-to:in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=l0xMYKmFceHPK8JhJXLbCCJYGplJHV46rZZpwgDQLqM=;
        b=AuJK2I4kQxaaW0Ux/5WxUg/IWUUsrsv3KsJfMGDhjBIlwpUpBUK+9avYZIZtHb3gMQ
         oIhprL+RtQqxSXTs2I49ScpLdB5NRrfsqOs5RUV48072mPfy+N5eIgtnVhvdxP7kY49c
         bPlD84k2vceF4+GgGgoonozZd1QmK+GpaFg2phDkmlAAxGoTCE6aUIU59Fbi72o050qq
         rbhErYjmAASeXPYq0r4CIcgeytTBhRZMgYeo3MGsUAwKj4JSz37XG3WF4E+qVz8Jz+QY
         m5030YjfljVzy/PS2FtdRM7dSp1Sjhtu9tCIAzDCzdXOORttr8c6mFsAB7vlXO34JoeA
         aQPQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=j1fmQiO0;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2a00:1450:4864:20::343 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=l0xMYKmFceHPK8JhJXLbCCJYGplJHV46rZZpwgDQLqM=;
        b=XHDwHKluHwweGNI5itwBamRk7bm8+NBycROh91XvZxPnfuybAEUBhURYkdHdqoe/QD
         1rkhzhzH9XESfxtbzpDOjTwwszwl83HhcgMYhyTuxEi0t1bMDNiat2BehDnXiecu+dny
         du94WZZQ0J2AWDvA/excbSuruIzf59tCzPwsz4r2Wfchg/p+WY6FNQtyS126rLr3KlZP
         36iYETS4rjMVLme9f99kfD1KGrIsJlB9G5vE8p06oYduJVygk+W4DF/T7u8DuSlFEPC5
         Ww3t54XjQlQ4C/Uj4n/wQ4gKUX4Gl5aE1TI9b2dmAaKIV1cr47rkj5q22bKKsh293lFv
         JOKQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=l0xMYKmFceHPK8JhJXLbCCJYGplJHV46rZZpwgDQLqM=;
        b=blU7S9vMt10kK4ait66uwdjZbpUdsst/HnpIOBJBCgHa257WNdygtJCNSZfOgv3o7w
         NXgDWpgNp8cRHZY/cVPKwwPMzDhOvtkSyF6U3TAN/3c9wv4x7BFwVJhA6rN/FuCOtrKT
         eqfCwMgU/sUOvo0iFg+612JFs28G+zkq3nDhA7ztnuaBK9M1zvjn8sNInlXEpGngJDZF
         JDj/tZo6q+rl2BvRwLquvYsuMljIjI1d0QSBXOWZebGbooZXPYAwYjYfEnLMiWx4ihOS
         Z+uD2e7CzYHBB0MqGI5Z/5LkXtPTwIRkBV08QbkuNkgSwGs6CX28FfpXhwh9I/fTmHpf
         tD6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to
         :reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=l0xMYKmFceHPK8JhJXLbCCJYGplJHV46rZZpwgDQLqM=;
        b=SPnA0MhOqoc8uXmmKbOC+TXmkhhFfMsFx2ikGCEJdA4cEiIhz7mzS5v+4lOSpFKjll
         cnaaLgRAN/yBwOkhRaSwxUGj/Ky8l76uRLMRrgOTWnAIG22CCuknaKaUoSUXFjJGVTXW
         BQzLGLiF0GEMdxo/ujrBIhg8cyAwN9EiiQhBMJykg0fYvt7pzOXjvVUYBcQ3FYCeZ4Yb
         O5bVhiOyEpN/ooH8er8nFOa9l2XoOB1rrgCzAbig7JBf0eYQPmR9tbxZnAy5/tllj2Nr
         CaM0gd37mwfeaEV/WZpKfiOb6V1zy4AT7LddtwVdkzKaTuOlVW1IjlZpMIWWeGOP6+eH
         5n3w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAW46tcesrd5YHx8qqsyyGgdoter7zCnTSuhFT2tsePQmeMw6rP/
	xM9AxbeSndwLk2E6mFhy8b4=
X-Google-Smtp-Source: APXvYqzN8FFLXArqLeleM+ygqDazPib/f10tsIct72ULJCkSkzGAk0SVMVPsbrsyxFSnVyRVZ/4nOA==
X-Received: by 2002:adf:f287:: with SMTP id k7mr29477250wro.183.1566238739067;
        Mon, 19 Aug 2019 11:18:59 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5d:5506:: with SMTP id b6ls4789666wrv.4.gmail; Mon, 19 Aug
 2019 11:18:58 -0700 (PDT)
X-Received: by 2002:a5d:50cb:: with SMTP id f11mr29185735wrt.277.1566238738563;
        Mon, 19 Aug 2019 11:18:58 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1566238738; cv=none;
        d=google.com; s=arc-20160816;
        b=X77KnIFVJ3Ix1D7+N8CoBLUudddX02kbBL7iJ+HlSwU/2lgMi23MfTxXdt3avRVr67
         xkOlsRPA+KT6kgxeq1FkrX84KcdByPiz6MsrW1XdcQpXVlk7RKFvK4CJ+DsruAefv5nE
         Zbu4cnAcMFkR8lDI6EAerwIFhn1FSOjBzbP+dNrPa6Gytrz79CxhkRPiRHqUvmEQG7DI
         JuEn4/v32Cr+hFRtoygPlsDTweE91v5OW8B41WnngypUngxoS3ve0kpxQO+L8WRb8y52
         g96QOCJ9Zy+jzOC6ZLuvKeJjc5HrLqCPkJqPNgi3SjJWoF0/pJyJZnT/4yyq8Xl4gBBi
         I2tA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:reply-to:in-reply-to:references
         :mime-version:dkim-signature;
        bh=aYP4CxwTGVmvnAPlZJ47p188K02c/ZLyHLr+oQjpd00=;
        b=OCZIfry5GjJc76lI/pMr8fCpO9QbVrmKe8j4by2mlp7y9UCt6xaXUHbBTusC9kJ16C
         Awrk8kwCVBikeJSfRBNRIPxvK4niEtwBkKfOfAP5GNP5zb/wcptTthK7QMw9QgzjadVP
         jLebRYR3o7I21HjdQv6i1PfqFM2zVx46wxxIeLHJfOhQoUJb2wx8oh648fXXvOUx1Zva
         Wr7RT2YlSkyaBYdU4shEgN5btRQyukpx19eTu8Cof23skAtMcAshZAOm77+1JHf2I4Xh
         4ZFCg0zyPMlPdariGtWKoo00WszKD8nzANvTMBDu5LPry37HbHOGOJH3IOxFuDPHsx50
         y2Tg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=j1fmQiO0;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2a00:1450:4864:20::343 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-wm1-x343.google.com (mail-wm1-x343.google.com. [2a00:1450:4864:20::343])
        by gmr-mx.google.com with ESMTPS id l9si561996wmc.0.2019.08.19.11.18.58
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 19 Aug 2019 11:18:58 -0700 (PDT)
Received-SPF: pass (google.com: domain of sedat.dilek@gmail.com designates 2a00:1450:4864:20::343 as permitted sender) client-ip=2a00:1450:4864:20::343;
Received: by mail-wm1-x343.google.com with SMTP id p74so388022wme.4
        for <clang-built-linux@googlegroups.com>; Mon, 19 Aug 2019 11:18:58 -0700 (PDT)
X-Received: by 2002:a7b:cf21:: with SMTP id m1mr23089980wmg.150.1566238737678;
 Mon, 19 Aug 2019 11:18:57 -0700 (PDT)
MIME-Version: 1.0
References: <20190812215052.71840-1-ndesaulniers@google.com> <20190812215052.71840-17-ndesaulniers@google.com>
In-Reply-To: <20190812215052.71840-17-ndesaulniers@google.com>
Reply-To: sedat.dilek@gmail.com
From: Sedat Dilek <sedat.dilek@gmail.com>
Date: Mon, 19 Aug 2019 20:18:44 +0200
Message-ID: <CA+icZUVXP9D+EtXrNSTUPBdYKhkQBX-+CUP6ocg4cLRpFcfP9Q@mail.gmail.com>
Subject: Re: [PATCH 00/16] treewide: prefer __section from compiler_attributes.h
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: akpm@linux-foundation.org, jpoimboe@redhat.com, yhs@fb.com, 
	Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>, 
	Clang-Built-Linux ML <clang-built-linux@googlegroups.com>, Alexei Starovoitov <ast@kernel.org>, 
	Daniel Borkmann <daniel@iogearbox.net>, Martin KaFai Lau <kafai@fb.com>, Song Liu <songliubraving@fb.com>, 
	netdev@vger.kernel.org, bpf@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: sedat.dilek@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=j1fmQiO0;       spf=pass
 (google.com: domain of sedat.dilek@gmail.com designates 2a00:1450:4864:20::343
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

On Mon, Aug 12, 2019 at 11:53 PM Nick Desaulniers
<ndesaulniers@google.com> wrote:
>
> GCC unescapes escaped string section names while Clang does not. Because
> __section uses the `#` stringification operator for the section name, it
> doesn't need to be escaped.
>
> This fixes an Oops observed in distro's that use systemd and not
> net.core.bpf_jit_enable=1, when their kernels are compiled with Clang.
>
> Instead, we should:
> 1. Prefer __section(.section_name_no_quotes).
> 2. Only use __attribute__((__section(".section"))) when creating the
> section name via C preprocessor (see the definition of __define_initcall
> in arch/um/include/shared/init.h).
>
> This antipattern was found with:
> $ grep -e __section\(\" -e __section__\(\" -r
>
> See the discussions in:
> https://bugs.llvm.org/show_bug.cgi?id=42950
> https://marc.info/?l=linux-netdev&m=156412960619946&w=2
>
> Nick Desaulniers (16):
>   s390/boot: fix section name escaping
>   arc: prefer __section from compiler_attributes.h
>   parisc: prefer __section from compiler_attributes.h
>   um: prefer __section from compiler_attributes.h
>   sh: prefer __section from compiler_attributes.h
>   ia64: prefer __section from compiler_attributes.h
>   arm: prefer __section from compiler_attributes.h
>   mips: prefer __section from compiler_attributes.h
>   sparc: prefer __section from compiler_attributes.h
>   powerpc: prefer __section and __printf from compiler_attributes.h
>   x86: prefer __section from compiler_attributes.h
>   arm64: prefer __section from compiler_attributes.h
>   include/asm-generic: prefer __section from compiler_attributes.h
>   include/linux: prefer __section from compiler_attributes.h
>   include/linux/compiler.h: remove unused KENTRY macro
>   compiler_attributes.h: add note about __section
>

Hi Nick,

thanks for this patchset and the nice section names cleanup and simplification.

I have tested 5 relevant patches for my x86-64 Debian/buster system.

Patchset "for-5.3/x86-section-name-escaping" (5 patches):

compiler_attributes.h: add note about __section
include/linux/compiler.h: remove unused KENTRY macro
include/linux: prefer __section from compiler_attributes.h
include/asm-generic: prefer __section from compiler_attributes.h
x86: prefer __section from compiler_attributes.h

Toolchain: LLVM/Clang compiler and LLD linker version 9.0.0-rc2 (from
Debian/experimental)

I can boot on bare metal.

$ cat /proc/version
Linux version 5.3.0-rc5-1-amd64-cbl-asmgoto
(sedat.dilek@gmail.com@iniza) (clang version 9.0.0-+rc2-1~exp1
(tags/RELEASE_900/rc2)) #1~buster+dileks1 SMP 2019-08-19

I have sent by Tested-by to the single patches.

Have a nice day,
- Sedat -

>  arch/arc/include/asm/linkage.h        |  8 +++----
>  arch/arc/include/asm/mach_desc.h      |  3 +--
>  arch/arm/include/asm/cache.h          |  2 +-
>  arch/arm/include/asm/mach/arch.h      |  4 ++--
>  arch/arm/include/asm/setup.h          |  2 +-
>  arch/arm64/include/asm/cache.h        |  2 +-
>  arch/arm64/kernel/smp_spin_table.c    |  2 +-
>  arch/ia64/include/asm/cache.h         |  2 +-
>  arch/mips/include/asm/cache.h         |  2 +-
>  arch/parisc/include/asm/cache.h       |  2 +-
>  arch/parisc/include/asm/ldcw.h        |  2 +-
>  arch/powerpc/boot/main.c              |  3 +--
>  arch/powerpc/boot/ps3.c               |  6 ++----
>  arch/powerpc/include/asm/cache.h      |  2 +-
>  arch/powerpc/kernel/btext.c           |  2 +-
>  arch/s390/boot/startup.c              |  2 +-
>  arch/sh/include/asm/cache.h           |  2 +-
>  arch/sparc/include/asm/cache.h        |  2 +-
>  arch/sparc/kernel/btext.c             |  2 +-
>  arch/um/kernel/um_arch.c              |  6 +++---
>  arch/x86/include/asm/cache.h          |  2 +-
>  arch/x86/include/asm/intel-mid.h      |  2 +-
>  arch/x86/include/asm/iommu_table.h    |  5 ++---
>  arch/x86/include/asm/irqflags.h       |  2 +-
>  arch/x86/include/asm/mem_encrypt.h    |  2 +-
>  arch/x86/kernel/cpu/cpu.h             |  3 +--
>  include/asm-generic/error-injection.h |  2 +-
>  include/asm-generic/kprobes.h         |  5 ++---
>  include/linux/cache.h                 |  6 +++---
>  include/linux/compiler.h              | 31 ++++-----------------------
>  include/linux/compiler_attributes.h   | 10 +++++++++
>  include/linux/cpu.h                   |  2 +-
>  include/linux/export.h                |  2 +-
>  include/linux/init_task.h             |  4 ++--
>  include/linux/interrupt.h             |  5 ++---
>  include/linux/sched/debug.h           |  2 +-
>  include/linux/srcutree.h              |  2 +-
>  37 files changed, 62 insertions(+), 83 deletions(-)
>
> --
> 2.23.0.rc1.153.gdeed80330f-goog
>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CA%2BicZUVXP9D%2BEtXrNSTUPBdYKhkQBX-%2BCUP6ocg4cLRpFcfP9Q%40mail.gmail.com.
