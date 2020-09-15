Return-Path: <clang-built-linux+bncBD6K324WS4FBB2UBQP5QKGQEF22ZP5Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x239.google.com (mail-lj1-x239.google.com [IPv6:2a00:1450:4864:20::239])
	by mail.lfdr.de (Postfix) with ESMTPS id EDCB326A645
	for <lists+clang-built-linux@lfdr.de>; Tue, 15 Sep 2020 15:26:02 +0200 (CEST)
Received: by mail-lj1-x239.google.com with SMTP id s22sf1069553ljp.15
        for <lists+clang-built-linux@lfdr.de>; Tue, 15 Sep 2020 06:26:02 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1600176362; cv=pass;
        d=google.com; s=arc-20160816;
        b=xP3Z/fh0/iHTiMFbwa5TjWfweUhzruCMFhVHqqsjeAy6cxYlocWgXzafmcP+23rujv
         uws6JbgqJActv/5rqugh1Xx9fm5lATkdvdh/kMQra2K0eWP8zmi+w8WiT60WA3Y/Gj7o
         nRHnUdsZ0eHogKJ4YPHqOYqotcU57RGLd5oljyzsnEDM+GKBaV6weTJxHbnG7OuBlJaE
         sPduhIVhuhDdmpznMMPbrKKJWsNJHBsrGopCx0zdEnROzj+CixF+8KAOwfyHMxjDPLJI
         yseF/Cz1F/Bh9Vr+CpoaLmqYftKqfDUpqIrcn3d1XjyjehFnAycMPFftFui9h+gkie+H
         ybLQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=W/yiiUDGVHPZCujEOyW8xLnad9NAiP9CgBpV/0oKTu8=;
        b=GQNT6pqBmQF7dcIaHt/5qUs/gD6AupigGh7fBPVLcZmsokL6w/d2CewOHfE/uuO1PQ
         G/4YgZiCxRnvKJncIvsyqpVoJju3Q8bqX6uIOXkJaqNQxTFiikmURXR7E/xFvPKsrHB3
         YVonP6idJ+kCCgS7dxsxiQKzOeUwW1Rwxx0f0G9jV0aDuX8j9bIn0qX4JZmB42hRjwmJ
         8+rt/l9/g706So+slzUj2B/CQqVil/D9EXt4n7kJpTPIUNT9yL5aQypEOeY7lQLhqRbh
         RlF78Rnvhk9Hj9EoZeDLG5udPtLhwUgytlmj1lHTJN3kYNbxmBzAcx4fWDcIeNPuir9q
         0IiA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="Zq/tYciP";
       spf=pass (google.com: domain of georgepope@google.com designates 2a00:1450:4864:20::343 as permitted sender) smtp.mailfrom=georgepope@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=W/yiiUDGVHPZCujEOyW8xLnad9NAiP9CgBpV/0oKTu8=;
        b=aylHb8+pwtTVjxJraUC+TQ5BsJ3J0HKuqgC1Xu8lQ6Q0m4faRbn9EwMlEx2aVP6j4s
         QSPojhdwNqTl4vK6zSUEn7/3h3phCqURBbPbXkDDSqFS5OJShu4u1rSZE4xr4WDnrRkL
         X9/1NJB90MdnutGdtBKsihIRIZSmJObEzgRxsO+OpB9ZirDBotk+fWowuyedez0hEFJ9
         gqgQiCBrjxbrD+ymrDOJ4V8N40TL9JfHHixyVzD1TiY/RQP3DrAZR6NHvSd6AJGzeqsg
         BXcrTamkT9SP/bSwNwdWXbrTORWZp8Hf/b+e/+74I+XOiUL4dukkLnRJNzMFGYxSZBWd
         eopA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=W/yiiUDGVHPZCujEOyW8xLnad9NAiP9CgBpV/0oKTu8=;
        b=liZJtWvjTN0v6yv4fTYqvdy5SmybjX21k4X2cZ1pjyMEVUOZchFD0G57STt4zrNguk
         PH0JWMiqNHYMx7Ob/4o2JCTalz+5JMShYWNnSMIcnRSBmLovIUR2f1mplvt1m5tY3Pcz
         tqymYjMXMGCs8yNLNV46DJ0E9TkTvblKXVKJ7hXC8RnL42Ar8A+Zfalg7iPxAW4SZO64
         b+cZsgpXxt35wdAU2ZDZOs0W++rkYgxsGqapEw7z+Ce3Uph9nV6k3r1uQfdYEAxxsil8
         dfgJwgrTAfraYCqqE2a6hVg3mqzEMSGRZaA+lu3RBrcI9svG8bKeBaxzn62utGFxZERM
         0hsQ==
X-Gm-Message-State: AOAM531Q0lDmRPBXsGEO1qLPpp0UAOrT09Sh84U6jWz1QEvpGVN44E4M
	OR4xKml6+B/Fdbt36AqlVgc=
X-Google-Smtp-Source: ABdhPJx7j4WDxJRy6sR/IKh6RoVYKYHz1jkRzGfKkdcTl9l3aPx2HpNJ+whTyJYL2Enw3jrdttTugQ==
X-Received: by 2002:ac2:4a73:: with SMTP id q19mr6798136lfp.569.1600176362480;
        Tue, 15 Sep 2020 06:26:02 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac2:544e:: with SMTP id d14ls1202663lfn.2.gmail; Tue, 15 Sep
 2020 06:26:01 -0700 (PDT)
X-Received: by 2002:a19:103:: with SMTP id 3mr301922lfb.452.1600176361379;
        Tue, 15 Sep 2020 06:26:01 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1600176361; cv=none;
        d=google.com; s=arc-20160816;
        b=uQN9kvhixFum34zceknUIrqIlqbzNZAcB2Af4dNbkN4h7fCavh61nYA97EDhJQ6pdi
         4IeEZu0pBDOKnUcMcypAFZeNdOae+Lc8NSdk/+XF+lbwgJFzg43lv6kpurukQJuTXc/6
         3rTo7kOLVhDpCxodIk8WOeBV2nbOgON5jHXxfwU8WZr5RvunZ5dn6/RiLjRJ9CPktTuh
         BbTfuTSX6oBJdZ7aEKstwsMyeKW1lw0Tll4lMiqAriU47vJlfIb36xjQpi/AlLa7w/kZ
         tbeUMMdCedLAPQUPE/M8ENL48dRXBsXvVEevQzc3u+0++ueuMgMZdpI5Duef3/Gmkikp
         o2vQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=2yNDf9GHL0dKoxvbJXMEZsmuBxqjSPWbFWnBQ+bsVx4=;
        b=tnx+80tCFRFHrYNBg67YfYvugL+hrNjVFN7/lw3bvBGRP6VGXqGQaLD69m8TrYpwk7
         dlVjF326UTIFeW503DmsD71uUTxR3xe+yBWPruV8qIsDuRpJGirLayH2dHoXDBP/oHsI
         Mly4m+yuo3v6HFEYay/Uxql9jU6Gtn1JsSQYuA7W9HxssMn0PWNX4uwKl52DGm/Lwl+s
         zRV8RaPnfyJ0CsAahMe/43tVweuzHubNZ4FC/fx1LL+S+up0344D8pRmH1NiIBhCC5RG
         VK/DRTvzW3MjGcZ2WVlBE3aD5HM8adqldA+bwzsRSk5cc2kOxi6hYZxuNwabiTGHN1Ug
         WKtQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="Zq/tYciP";
       spf=pass (google.com: domain of georgepope@google.com designates 2a00:1450:4864:20::343 as permitted sender) smtp.mailfrom=georgepope@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-wm1-x343.google.com (mail-wm1-x343.google.com. [2a00:1450:4864:20::343])
        by gmr-mx.google.com with ESMTPS id 138si319423lfb.12.2020.09.15.06.26.01
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 15 Sep 2020 06:26:01 -0700 (PDT)
Received-SPF: pass (google.com: domain of georgepope@google.com designates 2a00:1450:4864:20::343 as permitted sender) client-ip=2a00:1450:4864:20::343;
Received: by mail-wm1-x343.google.com with SMTP id w2so3382732wmi.1
        for <clang-built-linux@googlegroups.com>; Tue, 15 Sep 2020 06:26:01 -0700 (PDT)
X-Received: by 2002:a05:600c:204e:: with SMTP id p14mr4555612wmg.182.1600176360601;
        Tue, 15 Sep 2020 06:26:00 -0700 (PDT)
Received: from google.com (49.222.77.34.bc.googleusercontent.com. [34.77.222.49])
        by smtp.gmail.com with ESMTPSA id s67sm25882497wmf.38.2020.09.15.06.25.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 15 Sep 2020 06:26:00 -0700 (PDT)
Date: Tue, 15 Sep 2020 13:25:58 +0000
From: "'George Popescu' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: maz@kernel.org, catalin.marinas@arm.com, will@kernel.org,
	masahiroy@kernel.org, michal.lkml@markovi.net
Cc: linux-arm-kernel@lists.infradead.org, kvmarm@lists.cs.columbia.edu,
	linux-kernel@vger.kernel.org, linux-kbuild@vger.kernel.org,
	clang-built-linux@googlegroups.com, james.morse@arm.com,
	julien.thierry.kdev@gmail.com, suzuki.poulose@arm.com,
	natechancellor@gmail.com, ndesaulniers@google.com,
	dbrazdil@google.com, broonie@kernel.org, maskray@google.com,
	ascull@google.com, keescook@chromium.org, akpm@linux-foundation.org,
	dvyukov@google.com, elver@google.com, tglx@linutronix.de,
	arnd@arndb.de
Subject: Re: [PATCH 05/14] KVM: arm64: Define a buffer that can pass UBSan
 data from hyp/nVHE to kernel
Message-ID: <20200915132558.GA1948537@google.com>
References: <20200914172750.852684-1-georgepope@google.com>
 <20200914172750.852684-6-georgepope@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200914172750.852684-6-georgepope@google.com>
X-Original-Sender: georgepope@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b="Zq/tYciP";       spf=pass
 (google.com: domain of georgepope@google.com designates 2a00:1450:4864:20::343
 as permitted sender) smtp.mailfrom=georgepope@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: George Popescu <georgepope@google.com>
Reply-To: George Popescu <georgepope@google.com>
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

On Mon, Sep 14, 2020 at 05:27:41PM +0000, George-Aurelian Popescu wrote:
> From: George Popescu <georgepope@google.com>
 Just realized that with UBSAN disabled this code won't compile. Sorry
 for that. Had to add the two lines of code below:
> Store data, which is collected from UBSan handlers that lives inside hyp/nVHE,
> into the kvm_ubsan_buffer.
> This buffer is designed to store only UBSan data because it should not be
> preoccupied by other mechanisms data structures and functionalities.
> 
> Map the buffer and the write index before switching the control to
> hyp/nVHE.
> 
> Map the kernel .data region to read the compile time generated UBSan struct's
> data from hyp/nVHE.
> 
> Signed-off-by: George Popescu <georgepope@google.com>
> ---
>  arch/arm64/include/asm/kvm_asm.h   |  3 +++
>  arch/arm64/include/asm/kvm_host.h  |  6 +++++
>  arch/arm64/include/asm/kvm_ubsan.h | 17 +++++++++++++
>  arch/arm64/kvm/Makefile            |  4 ++++
>  arch/arm64/kvm/arm.c               | 38 +++++++++++++++++++++++++++++-
>  arch/arm64/kvm/hyp/hyp-entry.S     |  4 ++++
>  arch/arm64/kvm/hyp/nvhe/ubsan.c    | 24 ++++++++++++++++++-
>  arch/arm64/kvm/kvm_ubsan_buffer.c  | 32 +++++++++++++++++++++++++
>  8 files changed, 126 insertions(+), 2 deletions(-)
>  create mode 100644 arch/arm64/include/asm/kvm_ubsan.h
>  create mode 100644 arch/arm64/kvm/kvm_ubsan_buffer.c
> 
> diff --git a/arch/arm64/include/asm/kvm_asm.h b/arch/arm64/include/asm/kvm_asm.h
> index 200bb8d0a720..9d4a77f08ffd 100644
> --- a/arch/arm64/include/asm/kvm_asm.h
> +++ b/arch/arm64/include/asm/kvm_asm.h
> @@ -63,6 +63,9 @@
>  #define CHOOSE_VHE_SYM(sym)	sym
>  #define CHOOSE_NVHE_SYM(sym)	kvm_nvhe_sym(sym)
>  
> +#define this_cpu_ptr_nvhe(sym)		this_cpu_ptr(&kvm_nvhe_sym(sym))
> +#define per_cpu_ptr_nvhe(sym, cpu)	per_cpu_ptr(&kvm_nvhe_sym(sym), cpu)
> +
>  #ifndef __KVM_NVHE_HYPERVISOR__
>  /*
>   * BIG FAT WARNINGS:
> diff --git a/arch/arm64/include/asm/kvm_host.h b/arch/arm64/include/asm/kvm_host.h
> index adc8957e9321..337fd2d0f976 100644
> --- a/arch/arm64/include/asm/kvm_host.h
> +++ b/arch/arm64/include/asm/kvm_host.h
> @@ -494,8 +494,14 @@ u64 __kvm_call_hyp(void *hypfn, ...);
>  		__kvm_call_hyp(kvm_ksym_ref_nvhe(f), ##__VA_ARGS__);	\
>  	})
>  
> +#ifdef CONFIG_UBSAN
> +extern void __kvm_check_ubsan_buffer(void);
 #else
 static inline void __kvm_check_ubsan_buffer(void){}
> +#endif
> +
>  #define __kvm_arm_check_debug_buffer()					\
>  {									\
> +	if (IS_ENABLED(CONFIG_UBSAN))					\
> +		__kvm_check_ubsan_buffer();				\
>  }
>  
>  /*
> diff --git a/arch/arm64/include/asm/kvm_ubsan.h b/arch/arm64/include/asm/kvm_ubsan.h
> new file mode 100644
> index 000000000000..af607a796376
> --- /dev/null
> +++ b/arch/arm64/include/asm/kvm_ubsan.h
> @@ -0,0 +1,17 @@
> +/* SPDX-License-Identifier: GPL-2.0-only */
> +/*
> + * Copyright 2020 Google LLC
> + * Author: George Popescu <georgepope@google.com>
> + */
> +
> +#ifdef CONFIG_UBSAN
> +#include <ubsan.h>
> +
> +
> +#define UBSAN_MAX_TYPE 6
> +#define KVM_UBSAN_BUFFER_SIZE 1000
> +
> +struct kvm_ubsan_info {
> +	int type;
> +};
> +#endif
> diff --git a/arch/arm64/kvm/Makefile b/arch/arm64/kvm/Makefile
> index 99977c1972cc..92f06cb5b3df 100644
> --- a/arch/arm64/kvm/Makefile
> +++ b/arch/arm64/kvm/Makefile
> @@ -24,4 +24,8 @@ kvm-y := $(KVM)/kvm_main.o $(KVM)/coalesced_mmio.o $(KVM)/eventfd.o \
>  	 vgic/vgic-mmio-v3.o vgic/vgic-kvm-device.o \
>  	 vgic/vgic-its.o vgic/vgic-debug.o
>  
> +CFLAGS_kvm_ubsan_buffer.o += -I $(srctree)/lib/
> +CFLAGS_arm.o += -I $(srctree)/lib
> +
> +kvm-$(CONFIG_UBSAN) += kvm_ubsan_buffer.o
>  kvm-$(CONFIG_KVM_ARM_PMU)  += pmu-emul.o
> diff --git a/arch/arm64/kvm/arm.c b/arch/arm64/kvm/arm.c
> index b588c3b5c2f0..eff57069e103 100644
> --- a/arch/arm64/kvm/arm.c
> +++ b/arch/arm64/kvm/arm.c
> @@ -42,10 +42,17 @@
>  #include <kvm/arm_pmu.h>
>  #include <kvm/arm_psci.h>
>  
> +#include <asm/kvm_debug_buffer.h>
> +#include <asm/kvm_ubsan.h>
> +
>  #ifdef REQUIRES_VIRT
>  __asm__(".arch_extension	virt");
>  #endif
>  
> +#ifdef CONFIG_UBSAN
> +DECLARE_KVM_DEBUG_BUFFER(struct kvm_ubsan_info, kvm_ubsan_buff, KVM_UBSAN_BUFFER_SIZE);
> +#endif
> +
>  DEFINE_PER_CPU(kvm_host_data_t, kvm_host_data);
>  static DEFINE_PER_CPU(unsigned long, kvm_arm_hyp_stack_page);
>  
> @@ -1519,7 +1526,15 @@ static int init_hyp_mode(void)
>  		kvm_err("Cannot map bss section\n");
>  		goto out_err;
>  	}
> -
> +#ifdef CONFIG_UBSAN
> +	/* required by ubsan to access the handlers structures fields */
> +	err = create_hyp_mappings(kvm_ksym_ref(_data),
> +				  kvm_ksym_ref(__end_once), PAGE_HYP_RO);
> +	if (err) {
> +		kvm_err("Cannot map data section\n");
> +		goto out_err;
> +	}
> +#endif
>  	err = kvm_map_vectors();
>  	if (err) {
>  		kvm_err("Cannot map vectors\n");
> @@ -1552,6 +1567,27 @@ static int init_hyp_mode(void)
>  		}
>  	}
>  
> +#ifdef CONFIG_UBSAN
> +	for_each_possible_cpu(cpu) {
> +		/* map the write index */
> +		struct kvm_ubsan_info *buff;
> +		unsigned long *wr_ind;
> +
> +		wr_ind = per_cpu_ptr_nvhe(kvm_ubsan_buff_wr_ind, cpu);
> +		err = create_hyp_mappings(wr_ind, wr_ind + 1, PAGE_HYP);
> +		if (err) {
> +			kvm_err("Cannot map the busan buffer write index: %d\n", err);
> +			goto out_err;
> +		}
> +		buff = per_cpu_ptr(kvm_nvhe_sym(kvm_ubsan_buff), cpu);
> +		err = create_hyp_mappings(buff, buff + KVM_UBSAN_BUFFER_SIZE, PAGE_HYP);
> +		if (err) {
> +			kvm_err("Cannot map the ubsan buffer: %d\n", err);
> +			goto out_err;
> +		}
> +	}
> +#endif
> +
>  	err = hyp_map_aux_data();
>  	if (err)
>  		kvm_err("Cannot map host auxiliary data: %d\n", err);
> diff --git a/arch/arm64/kvm/hyp/hyp-entry.S b/arch/arm64/kvm/hyp/hyp-entry.S
> index 8df0082b9ccf..bcdbab4d2e43 100644
> --- a/arch/arm64/kvm/hyp/hyp-entry.S
> +++ b/arch/arm64/kvm/hyp/hyp-entry.S
> @@ -14,6 +14,7 @@
>  #include <asm/kvm_asm.h>
>  #include <asm/kvm_mmu.h>
>  #include <asm/mmu.h>
> +#include <asm/kvm_debug_buffer.h>
>  
>  .macro save_caller_saved_regs_vect
>  	/* x0 and x1 were saved in the vector entry */
> @@ -74,6 +75,9 @@ el1_sync:				// Guest trapped into EL2
>  	cmp	x0, #HVC_STUB_HCALL_NR
>  	b.hs	1f
>  
> +#ifdef CONFIG_UBSAN
> +	clear_kvm_debug_buffer kvm_ubsan_buff_wr_ind, x4, x5, x6
> +#endif
>  	/*
>  	 * Compute the idmap address of __kvm_handle_stub_hvc and
>  	 * jump there. Since we use kimage_voffset, do not use the
> diff --git a/arch/arm64/kvm/hyp/nvhe/ubsan.c b/arch/arm64/kvm/hyp/nvhe/ubsan.c
> index a5db6b61ceb2..a43c9646e1e8 100644
> --- a/arch/arm64/kvm/hyp/nvhe/ubsan.c
> +++ b/arch/arm64/kvm/hyp/nvhe/ubsan.c
> @@ -3,9 +3,31 @@
>   * Copyright 2020 Google LLC
>   * Author: George Popescu <georgepope@google.com>
>   */
> +#include <linux/bitops.h>
>  #include <linux/ctype.h>
>  #include <linux/types.h>
> -#include <ubsan.h>
> +#include <linux/percpu-defs.h>
> +#include <linux/kvm_host.h>
> +#include <asm/kvm_arm.h>
> +#include <asm/kvm_asm.h>
> +#include <asm/kvm_ubsan.h>
> +#include <asm/kvm_debug_buffer.h>
> +#include <kvm/arm_pmu.h>
> +
> +DEFINE_KVM_DEBUG_BUFFER(struct kvm_ubsan_info, kvm_ubsan_buff, KVM_UBSAN_BUFFER_SIZE);
> +
> +static inline struct kvm_ubsan_info *kvm_ubsan_buffer_next_slot(void)
> +{
> +	struct kvm_ubsan_info *res;
> +	struct kvm_ubsan_info *buff;
> +	unsigned long *buff_ind;
> +	unsigned long buff_size = KVM_UBSAN_BUFFER_SIZE;
> +	unsigned int struct_size = sizeof(struct kvm_ubsan_info);
> +
> +	init_kvm_debug_buffer(kvm_ubsan_buff, struct kvm_ubsan_info, buff, buff_ind);
> +	res = kvm_debug_buffer_next_slot(buff, buff_ind, struct_size, buff_size);
> +	return res;
> +}
>  
>  void __ubsan_handle_add_overflow(void *_data, void *lhs, void *rhs) {}
>  
> diff --git a/arch/arm64/kvm/kvm_ubsan_buffer.c b/arch/arm64/kvm/kvm_ubsan_buffer.c
> new file mode 100644
> index 000000000000..28dcf19b5706
> --- /dev/null
> +++ b/arch/arm64/kvm/kvm_ubsan_buffer.c
> @@ -0,0 +1,32 @@
> +// SPDX-License-Identifier: GPL-2.0-only
> +/*
> + * Copyright 2020 Google LLC
> + * Author: George Popescu <georgepope@google.com>
> + */
> +
> +#include <linux/ctype.h>
> +#include <linux/types.h>
> +#include <asm/kvm_debug_buffer.h>
> +#include <asm/kvm_arm.h>
> +#include <asm/kvm_asm.h>
> +#include <kvm/arm_pmu.h>
> +
> +#include <ubsan.h>
> +#include <asm/kvm_ubsan.h>
> +
> +DECLARE_KVM_DEBUG_BUFFER(struct kvm_ubsan_info, kvm_ubsan_buff, KVM_UBSAN_BUFFER_SIZE);
> +
> +
> +void __kvm_check_ubsan_buffer(void)
> +{
> +	unsigned long *write_ind;
> +	unsigned long it;
> +	struct kvm_ubsan_info *slot;
> +
> +	init_kvm_debug_buffer(kvm_ubsan_buff, struct kvm_ubsan_info, slot, write_ind);
> +	for_each_kvm_debug_buffer_slot(slot, write_ind, it) {
> +		/* check ubsan data */
> +		slot->type = 0;
> +	}
> +}
> +
> -- 
> 2.28.0.618.gf4bc123cb7-goog
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200915132558.GA1948537%40google.com.
