Return-Path: <clang-built-linux+bncBCTYRDEG7MGBBZ7XW74AKGQEH7W5W6Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd39.google.com (mail-io1-xd39.google.com [IPv6:2607:f8b0:4864:20::d39])
	by mail.lfdr.de (Postfix) with ESMTPS id A7A5821F997
	for <lists+clang-built-linux@lfdr.de>; Tue, 14 Jul 2020 20:39:36 +0200 (CEST)
Received: by mail-io1-xd39.google.com with SMTP id f25sf11031976ioh.7
        for <lists+clang-built-linux@lfdr.de>; Tue, 14 Jul 2020 11:39:36 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1594751975; cv=pass;
        d=google.com; s=arc-20160816;
        b=kE4A/PDX4XaRE3rieBQ2s65dPFloTzTl94ic5lfEeobIEXCRV9SMUruUzGDiG74HnK
         0N5zVRcoyZ+hyjhXoEyJ8/Ak/YZRKCVdGTYolg1WjTE/mMPyA1Aj7iny95tW/UnJXLp/
         GH3wZxLzx4PkKeeT3DXnUzLXPE0Db5OkbSprfdMSUO63QG5mTRs2pHzyn5uYGBe4OncX
         4H4QUQVZgbc9bQ84f/do3GolxyG96XlDiidhlIJtLejUJqjagou/Cq38pp6XBKtzUhFn
         htlzBQsfW/fhU3h1BsrHV8hOf28m6ZKvy19gSMSb23TuVNNpKD258NVNLzG4MeFh6Gik
         IaXg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=lTOMdhH/6JkLnXxk99/9nQaV3ej2pHK1VuKaq7jafrY=;
        b=RC77hUv6zvPAO5qZnIDndxoFxJohXGtsVwvCmWNrtrzXUMjaowY3HJ9MGW17U28j7O
         H9D2AykhrohTrHn0UNtsYVfr+dBIsKtxFB2dSobTkMVq0Rfu8n/dWSTxML5rSPzbMbfo
         JZHYLS5XQZ/uJW7WToVssN707l60BXsSL1tvSCXHaOxY3eiWZfH0eZ0+2CswA6Mz+hRL
         es8L9iyh0wSUxTjnuxgOhsyk2Q7HYhPjdYNoO0ZARuji4pzlX5seweFnB+gohu6srVde
         L6l26e04XBj9XINMblLWM5XpuLE7aiuqDjxC8BhRdQV/vmXSSs9pi7lc7zFn8FZii8+7
         HTag==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=OHMy4vhl;
       spf=pass (google.com: domain of andrii.nakryiko@gmail.com designates 2607:f8b0:4864:20::843 as permitted sender) smtp.mailfrom=andrii.nakryiko@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=lTOMdhH/6JkLnXxk99/9nQaV3ej2pHK1VuKaq7jafrY=;
        b=hgjC7v8BFQ4QPD4M8UMxIEhP53qdjmFwNLQXaiV/K8Q+hrEaCZrgbA74fgqx7+xnhb
         gF50DWFovpvOBegc9Y9oL84Z4Dbf9xQ18jY63CXAKzUjfm5n1RwqFPZk17ka7vJVujiP
         cn1enq91EjWGPbHzkMaRGPnTWeSKgP/LoEmIudqi18WoF91Zqh83P5oL9z3PxL8rYjys
         vOoPf5MB9w0eRnLf4Ea3kToniDwqwV2VNRk9H4QaXoi0tle6Fb5TNoaL8uoC5EEKBENY
         aEUlqIFyBeCmsqRe0RAvDUT+MNmgji210Hb32Tm+hOc9/5uxWsP5pKc8sN8qBmVV4Sfz
         R92Q==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=lTOMdhH/6JkLnXxk99/9nQaV3ej2pHK1VuKaq7jafrY=;
        b=a6b+EikU9E1cklXtwEJa26w3XNoRQIuTBHvisrgKfxFbLbNK27kFvyD7rKJ8nclvmA
         5VrHKCfPb+z8BlwDemwUpjneqZIw2FevCQvs3h8lma9yQjAEAXLGJ+Hup+SdyEnC1BQm
         i2b9RHUXBmdz6xnPDpEbOsv1p+SZL93kBwpUpp/qUU+wD/S3glIqBGPrNBUtFhkbR7Cp
         4TbQzlmNywv6BRvJO1eS/ieKqIm2UH2+0eH2IztesGPwuj4e/m0veK7ZsdSGiPyEAR2J
         aMlgz1nIeYkQdCWQ6W2DOH91+1tJGQhyzVueo7DOVMl1HuudycoQauihtJ7SGvaJszii
         QuHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=lTOMdhH/6JkLnXxk99/9nQaV3ej2pHK1VuKaq7jafrY=;
        b=G77hk5iYp78f1RTOxGg7ySl+WsCYeTg+goYLrbLbtWlCE7r2t0FFj7x9uMFbdbl9AG
         Z6p98lFCymTb/13NHPTmEXpbRSVo1yCBG9oQu44FAS+EePhtIAWfXeSm8fI/1LCzPljx
         s0g6ETHYpwCY6t0zyFDJNYsxsG5QYYHxFORBbeCGQhSYtvYK6rT3/skRswjzUKogqHUm
         T9t8YTjuuHp6vxT6bI6YvPAaWn7W4wsWmixdePZyD0IgeK2cHvrroRY6dt1gZp7nIa74
         Vl7WqOoCoEz2wOzLgzQ81hroR7mUlcpbToGLn1H6pZAW6r4nNUX+/QiSTRWQ2bLyMq0Z
         xOHA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531IVlbrcw0Be+H84D2OLC1WMjQVHKdljhJOk9wrlYD8YmN7SMJl
	B3GWkgmmVAlSdbP9Q44DS7w=
X-Google-Smtp-Source: ABdhPJxmf1xXkr/L1KQ9xXJqWimmVFfIyy3/ujwO+01SrsQmH/VGLs4dErHzSkd1Rg+c/W7gPltelQ==
X-Received: by 2002:a5e:da06:: with SMTP id x6mr6345118ioj.196.1594751975592;
        Tue, 14 Jul 2020 11:39:35 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5d:8788:: with SMTP id f8ls2127151ion.9.gmail; Tue, 14 Jul
 2020 11:39:35 -0700 (PDT)
X-Received: by 2002:a6b:c897:: with SMTP id y145mr6211794iof.190.1594751975271;
        Tue, 14 Jul 2020 11:39:35 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1594751975; cv=none;
        d=google.com; s=arc-20160816;
        b=osaccjbtskVxbL1itGRa8JmWcMz10XnnJWOsQ/9Ia0Oedh69tZxE1Q13Gll5j+0yMU
         drkV4PDND2huesQ64sAjDK2yrzraFPMyrEt3+Psx48NIDRg2iF7SX6+mfppdD94e3IfV
         2/wk41XJxffjSwT4/VFUdU3jaMftMWUhmDoz8DXRQQj73pJyovZRNxvVkMKib/7hSVit
         i17snI7uG+kkek5kiUgEPpZZGFJFfnsQiUlPa9NUb6YOf3mTl+LTx8TRdQsM6o9q+HwB
         QGP3GSZoM+DOEYAKPNj2+MGndZ97m6p4IuNUHbmaOKcg7nflVtQy9ef+aKp3zt+tsrlA
         bvNg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=0dgImjyNhW5JDCTf6TF6OJolyi6XBwPEJBCGzeL/cw8=;
        b=APsF8HcYKRR+YOkpSCNytxxqrqftSEDIKQ2GiIfrxkIg/Syp7A0ApBYQ3hDgEdzo8t
         JI6g4sWjjVgYNOElfJrPie6enkPDaHnzCan1yBt+PAWVTAw3v4lcKFHbXu+Xp5hVdZ6g
         xf56eKs5n78QooYhZFcakYV7GtT9L1AhtdBQRaQbT8NEJ1Fzg1/9a8xshGlymflqUGvx
         /aXqxLh2E+6RIWL3u03sgk2d0WIEIXIgS3PodubCPc+JERsWmSgOQV1Tduj1qiwL78EJ
         WQqw8xVBoRZWr7A5P9R2MbOsM6eJZhB+/yzoiVk+kZyh0EV7sPFb+Ia1g5Yiegx1nx0B
         vp3A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=OHMy4vhl;
       spf=pass (google.com: domain of andrii.nakryiko@gmail.com designates 2607:f8b0:4864:20::843 as permitted sender) smtp.mailfrom=andrii.nakryiko@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-qt1-x843.google.com (mail-qt1-x843.google.com. [2607:f8b0:4864:20::843])
        by gmr-mx.google.com with ESMTPS id b17si12204iow.2.2020.07.14.11.39.35
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 14 Jul 2020 11:39:35 -0700 (PDT)
Received-SPF: pass (google.com: domain of andrii.nakryiko@gmail.com designates 2607:f8b0:4864:20::843 as permitted sender) client-ip=2607:f8b0:4864:20::843;
Received: by mail-qt1-x843.google.com with SMTP id o38so13631817qtf.6
        for <clang-built-linux@googlegroups.com>; Tue, 14 Jul 2020 11:39:35 -0700 (PDT)
X-Received: by 2002:aed:2cc5:: with SMTP id g63mr6029220qtd.59.1594751974709;
 Tue, 14 Jul 2020 11:39:34 -0700 (PDT)
MIME-Version: 1.0
References: <20200714040643.1135876-4-andriin@fb.com> <202007141403.f8tW3jcQ%lkp@intel.com>
In-Reply-To: <202007141403.f8tW3jcQ%lkp@intel.com>
From: Andrii Nakryiko <andrii.nakryiko@gmail.com>
Date: Tue, 14 Jul 2020 11:39:23 -0700
Message-ID: <CAEf4Bza318pOd_3D_8k-ta7hRaFbwiNYMqWb=mE+RFr-hdt+0w@mail.gmail.com>
Subject: Re: [PATCH v2 bpf-next 3/8] bpf, xdp: add bpf_link-based XDP
 attachment API
To: kernel test robot <lkp@intel.com>
Cc: Andrii Nakryiko <andriin@fb.com>, bpf <bpf@vger.kernel.org>, 
	Networking <netdev@vger.kernel.org>, Alexei Starovoitov <ast@fb.com>, 
	Daniel Borkmann <daniel@iogearbox.net>, David Ahern <dsahern@gmail.com>, kbuild-all@lists.01.org, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Kernel Team <kernel-team@fb.com>, 
	Andrey Ignatov <rdna@fb.com>, Takshak Chahande <ctakshak@fb.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: andrii.nakryiko@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=OHMy4vhl;       spf=pass
 (google.com: domain of andrii.nakryiko@gmail.com designates
 2607:f8b0:4864:20::843 as permitted sender) smtp.mailfrom=andrii.nakryiko@gmail.com;
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

On Mon, Jul 13, 2020 at 11:40 PM kernel test robot <lkp@intel.com> wrote:
>
> Hi Andrii,
>
> I love your patch! Yet something to improve:
>
> [auto build test ERROR on bpf-next/master]
>
> url:    https://github.com/0day-ci/linux/commits/Andrii-Nakryiko/BPF-XDP-link/20200714-120909
> base:   https://git.kernel.org/pub/scm/linux/kernel/git/bpf/bpf-next.git master
> config: x86_64-defconfig (attached as .config)
> compiler: clang version 11.0.0 (https://github.com/llvm/llvm-project 02946de3802d3bc65bc9f2eb9b8d4969b5a7add8)
> reproduce (this is a W=1 build):
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         # install x86_64 cross compiling tool for clang build
>         # apt-get install binutils-x86-64-linux-gnu
>         # save the attached .config to linux build tree
>         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=x86_64
>
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kernel test robot <lkp@intel.com>
>
> All errors (new ones prefixed by >>):
>
> >> net/core/dev.c:8717:18: error: field has incomplete type 'struct bpf_link'
>            struct bpf_link link;
>                            ^

This is all due to bpf_link-related API is conditionally defined only
#ifdef CONFIG_BPF_SYSCALL. I'm doing the same as is done for bpf_prog:
moving it outside of CONFIG_BPF_SYSCALL-only region and adding stubs
for generic API (init/settle/cleanup, inc/put, etc). Will add this as
a separate pre-patch in the v3.

>    include/net/netns/bpf.h:15:9: note: forward declaration of 'struct bpf_link'
>            struct bpf_link *links[MAX_NETNS_BPF_ATTACH_TYPE];
>                   ^

[...]

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAEf4Bza318pOd_3D_8k-ta7hRaFbwiNYMqWb%3DmE%2BRFr-hdt%2B0w%40mail.gmail.com.
