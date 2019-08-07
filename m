Return-Path: <clang-built-linux+bncBAABB45MVDVAKGQE363T2GA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43c.google.com (mail-pf1-x43c.google.com [IPv6:2607:f8b0:4864:20::43c])
	by mail.lfdr.de (Postfix) with ESMTPS id 4265583E1C
	for <lists+clang-built-linux@lfdr.de>; Wed,  7 Aug 2019 02:08:21 +0200 (CEST)
Received: by mail-pf1-x43c.google.com with SMTP id z1sf56978915pfb.7
        for <lists+clang-built-linux@lfdr.de>; Tue, 06 Aug 2019 17:08:21 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1565136500; cv=pass;
        d=google.com; s=arc-20160816;
        b=DVawrHgdst59EhbSnElICXkAI3GD2SC3JSPuN/FaqK0VMgB7BuG0Hi9UT7zZgo5Alg
         ACpnwAlNjjGYYzKS3vlRwfjmGQAJ9CxhFl6rzPXY4aNNRNASPcRhudrMcwq86vyNYEhS
         2MWM2Q+cwnAc8vg3A7s/OF8XRGzoRUA4LQ4Z8eqYH+0JkNxTYkcFRnQqD40JkFQT0TVf
         DylrUVf4m+viwCkLqbwIAOnooAmqDRqQrcev4cOXmvq+RUgutpXQawPgbmxixMx2mOmR
         mhvPbQK86h4igS95VAEniMspUw+TMZgpVmfLpnHuOm219BMIBOTvhH97s7/bEasBQpJP
         6gbg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:subject:cc:to:from:date:sender:dkim-signature;
        bh=raT1dlHIyVa9ST6CTHCBXFN34YOPgkAiejMAlINifEU=;
        b=liR2IMwr/R12Owc34j/+AhY6IkFG8Wl+AaPKWI5UVoBkXsNvAQ09rCjnacRLrxU4Ox
         TVO0OyvDe5hUDKWRIOYOT7dvtYBVdqP6Rs0iU7yl/RkBzUjIrvqC/nuOu5D1I2MPJOx9
         JRSLnlUqnPVK1B9LXvNQqh2Muv9fjl2IsCtTPswbeQku5dlv42HBCvM7EhiBtFpjnu3X
         OBiNOH4xR3Hk3GU3DKyF1qi5ZFmj4wAG5IkZJ0jAzJLRVn8FTmqszuXU8Zk5hYqgEEI6
         6WZVzWOgUv1qFP2AdMRUMCUz13JsLSFYatQWgPu6/OnmT9d9++ASrOLyZhjUN6FcngW9
         CJ0Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=TAeG++7B;
       spf=pass (google.com: domain of mhiramat@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=mhiramat@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=raT1dlHIyVa9ST6CTHCBXFN34YOPgkAiejMAlINifEU=;
        b=AQLdQt5jIAvPaAwllqrG0a+uNCiT7m1pHkQ4oltqoifIsvWWqNJjnmf+j/MkCZjUQf
         BsgdOZ/ii3gUDkvfdt2+q2tDU65vzZPGX4f52O0JmeTLuJZBuTiliDbAibRp20qHbGzZ
         F2yg3rrgHdIpH2U9lllR6fGJmZHt9QS7CkNOey9YVO2CIBs2WiYQyqNBCCUGvlhhdYOj
         XSEM106LPtVBf8pDaQCQzsQTUtJup2YiHjQbZWZ7bx1QrYFjtTNM6T/BZd+hRnI/CtRL
         tzncHrD2SBHRcPfMMrW+aZz1eSSx6gpcTDBP0/c6Jq6j+/UWnGqlgfA4hhyngljqgIVL
         bdVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=raT1dlHIyVa9ST6CTHCBXFN34YOPgkAiejMAlINifEU=;
        b=JvEeLR3kcuyRS7LA6N2+FxbODtFjHhQuMhiXIU6/HFA6SGpMdk2S4dZ79q9di8RVXw
         DLsLt3Fow8hI3OvdnB6WriFe0+oF5/VXIOd67OHSPh7OT8j4GGIz7r2e4+E0kk0dhPVc
         6FWU9rI94frA2LarCGDN/BbNEbEtkGSMkWJiAA4/kncE5/umqfWNPqrX9PxJJC1ma5dM
         wtGBJVCaDvSJCXqVWkYCc9ao9km48gW6SeXivFD3SRQAHKS5Oc7oGZEBwWh5o4t7yy6J
         8gsp9YN7WMmWRiu1eNDu4x2MyotagV7HEuAsfvNvrkjcOmz8AfJ3/IS7iiJin81hg4zT
         h4/w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWXROqNLW7e+utqCGsQHg5xb2nWfoeJMnmTCkzUlwM9PcDpsdSH
	55zZgSF/ZHmLCMCjViHI7pE=
X-Google-Smtp-Source: APXvYqx+28X8Gl/KsD2Tmg/8zAWlWUF1Sw3aqV2+7ldmwDuV9aAlFUd9dzXdkYZlTN+0E2+jn4XCbA==
X-Received: by 2002:a63:6bc5:: with SMTP id g188mr5352949pgc.225.1565136499828;
        Tue, 06 Aug 2019 17:08:19 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:2cce:: with SMTP id s197ls2064081pfs.7.gmail; Tue, 06
 Aug 2019 17:08:19 -0700 (PDT)
X-Received: by 2002:a63:6ec1:: with SMTP id j184mr3850566pgc.232.1565136499503;
        Tue, 06 Aug 2019 17:08:19 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1565136499; cv=none;
        d=google.com; s=arc-20160816;
        b=kB8Oq9lEnbIt6KI4KlNvyygt9i3lYXNPGDX83hBbaCVKuG8Dj9yufjX96U4etgZbaD
         GO/LFeWB+h3qUvp8TYGj6baPVyqk8PxsO6+ijmbsXfwvVgk0sfADw8NN1uX6ltYsNy4l
         wJCNEFN/6NAH1E4vupvKBJPRFo/nbUWFZTyCeLyiSus7x+58B9mVA0J3y189wiLy+Vxb
         kmAR7S1SlWsmH71JZailD37cksqe2i7PwZgkGr1k4yVoJ0NBNT4O7c/3k2kNTbcAEDNo
         kUTFa46CXpaeq7HGKnvsQYrX5UOyIOWFYgA7ffz0MyBj09VQQu8Bz9anhkILk4XRbINv
         jIJg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=yXH4jCetKY4wtBXtVFGDv+xZetwaF+lbf0mQzLDVS1E=;
        b=oi4vEctaNmX4FVHdffd3kP+V9lWQndJ2LAcTobm38Xg+McDa4jCAMxtip3fNhzg0/B
         6ZGDjPKm8J+1p3KV4OW/cBZevdmot3Kk0r1y7UpO73ELfb+hHoWhNzowk/IAyWNiUlIa
         gVBwQsWXh3/Yqiwdl/n2HtR+E00qEW/qK8On7CCULoukzjqQRRzD9CIlJpCm1OXK+7ND
         NajyCA/PSs3cJbGUf50pYDQ9vvi7/Dp1n11AIuXZ53uzS6GGHNB6GJZJsY6VoWaDfnb5
         X790fomAZJFfqjL3zctEOy/sW9KuDN4vCMDpTb/vGzekKfo4j/zcc3tEzDEe9d43ECaB
         /TxA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=TAeG++7B;
       spf=pass (google.com: domain of mhiramat@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=mhiramat@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id q2si3126426pgq.3.2019.08.06.17.08.19
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 06 Aug 2019 17:08:19 -0700 (PDT)
Received-SPF: pass (google.com: domain of mhiramat@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from devnote2 (NE2965lan1.rev.em-net.ne.jp [210.141.244.193])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id ED7FA2089E;
	Wed,  7 Aug 2019 00:08:13 +0000 (UTC)
Date: Wed, 7 Aug 2019 09:08:11 +0900
From: Masami Hiramatsu <mhiramat@kernel.org>
To: Leo Yan <leo.yan@linaro.org>
Cc: Russell King <linux@armlinux.org.uk>, Oleg Nesterov <oleg@redhat.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>, Paul Mackerras
 <paulus@samba.org>, Michael Ellerman <mpe@ellerman.id.au>, Thomas Gleixner
 <tglx@linutronix.de>, Ingo Molnar <mingo@redhat.com>, Borislav Petkov
 <bp@alien8.de>, "H. Peter Anvin" <hpa@zytor.com>, x86@kernel.org, Arnd
 Bergmann <arnd@arndb.de>, Alexei Starovoitov <ast@kernel.org>, Daniel
 Borkmann <daniel@iogearbox.net>, Martin KaFai Lau <kafai@fb.com>, Song Liu
 <songliubraving@fb.com>, Yonghong Song <yhs@fb.com>, "Naveen N. Rao"
 <naveen.n.rao@linux.vnet.ibm.com>, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, linuxppc-dev@lists.ozlabs.org,
 linux-arch@vger.kernel.org, netdev@vger.kernel.org, bpf@vger.kernel.org,
 clang-built-linux@googlegroups.com
Subject: Re: [PATCH v2 0/3] arm/arm64: Add support for function error
 injection
Message-Id: <20190807090811.1e50eb3e1d5a7b85743748e7@kernel.org>
In-Reply-To: <20190806100015.11256-1-leo.yan@linaro.org>
References: <20190806100015.11256-1-leo.yan@linaro.org>
X-Mailer: Sylpheed 3.5.1 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: mhiramat@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=TAeG++7B;       spf=pass
 (google.com: domain of mhiramat@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=mhiramat@kernel.org;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=kernel.org
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

On Tue,  6 Aug 2019 18:00:12 +0800
Leo Yan <leo.yan@linaro.org> wrote:

> This small patch set is to add support for function error injection;
> this can be used to eanble more advanced debugging feature, e.g.
> CONFIG_BPF_KPROBE_OVERRIDE.
> 
> The patch 01/03 is to consolidate the function definition which can be
> suared cross architectures, patches 02,03/03 are used for enabling
> function error injection on arm64 and arm architecture respectively.
> 
> I tested on arm64 platform Juno-r2 and one of my laptop with x86
> architecture with below steps; I don't test for Arm architecture so
> only pass compilation.
> 
> - Enable kernel configuration:
>   CONFIG_BPF_KPROBE_OVERRIDE
>   CONFIG_BTRFS_FS
>   CONFIG_BPF_EVENTS=y
>   CONFIG_KPROBES=y
>   CONFIG_KPROBE_EVENTS=y
>   CONFIG_BPF_KPROBE_OVERRIDE=y
> 
> - Build samples/bpf on with Debian rootFS:
>   # cd $kernel
>   # make headers_install
>   # make samples/bpf/ LLC=llc-7 CLANG=clang-7
> 
> - Run the sample tracex7:
>   # dd if=/dev/zero of=testfile.img bs=1M seek=1000 count=1
>   # DEVICE=$(losetup --show -f testfile.img)
>   # mkfs.btrfs -f $DEVICE
>   # ./tracex7 testfile.img
>   [ 1975.211781] BTRFS error (device (efault)): open_ctree failed
>   mount: /mnt/linux-kernel/linux-cs-dev/samples/bpf/tmpmnt: mount(2) system call failed: Cannot allocate memory.
> 
> Changes from v1:
> * Consolidated the function definition into asm-generic header (Will);
> * Used APIs to access pt_regs elements (Will);
> * Fixed typos in the comments (Will).

This looks good to me.

Reviewed-by: Masami Hiramatsu <mhiramat@kernel.org>

Thank you!

> 
> 
> Leo Yan (3):
>   error-injection: Consolidate override function definition
>   arm64: Add support for function error injection
>   arm: Add support for function error injection
> 
>  arch/arm/Kconfig                           |  1 +
>  arch/arm/include/asm/ptrace.h              |  5 +++++
>  arch/arm/lib/Makefile                      |  2 ++
>  arch/arm/lib/error-inject.c                | 19 +++++++++++++++++++
>  arch/arm64/Kconfig                         |  1 +
>  arch/arm64/include/asm/ptrace.h            |  5 +++++
>  arch/arm64/lib/Makefile                    |  2 ++
>  arch/arm64/lib/error-inject.c              | 18 ++++++++++++++++++
>  arch/powerpc/include/asm/error-injection.h | 13 -------------
>  arch/x86/include/asm/error-injection.h     | 13 -------------
>  include/asm-generic/error-injection.h      |  6 ++++++
>  include/linux/error-injection.h            |  6 +++---
>  12 files changed, 62 insertions(+), 29 deletions(-)
>  create mode 100644 arch/arm/lib/error-inject.c
>  create mode 100644 arch/arm64/lib/error-inject.c
>  delete mode 100644 arch/powerpc/include/asm/error-injection.h
>  delete mode 100644 arch/x86/include/asm/error-injection.h
> 
> -- 
> 2.17.1
> 


-- 
Masami Hiramatsu <mhiramat@kernel.org>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190807090811.1e50eb3e1d5a7b85743748e7%40kernel.org.
