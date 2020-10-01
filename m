Return-Path: <clang-built-linux+bncBCRKVNO2ZYFRBVPJ235QKGQE6NKAF3I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x33a.google.com (mail-wm1-x33a.google.com [IPv6:2a00:1450:4864:20::33a])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DE8A27FDB7
	for <lists+clang-built-linux@lfdr.de>; Thu,  1 Oct 2020 12:52:06 +0200 (CEST)
Received: by mail-wm1-x33a.google.com with SMTP id l26sf774623wmg.7
        for <lists+clang-built-linux@lfdr.de>; Thu, 01 Oct 2020 03:52:06 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1601549526; cv=pass;
        d=google.com; s=arc-20160816;
        b=CbtV2GIIdwnkR9z+mjGZdz8B+evWXOjdCJ+JEieGJ0fYdEpOXcVOoSaobbByI0eqLs
         EZVC/f5M/HOjW5y4EV+o+TVCtqaVNyqavdjdy6iOBPNg1QZy1pl+T0AODcGx5mMkCJEP
         AN/uGN0AtnMEJZnXFUavjFDInSLoQ/iOLCTyK8voa8wJFnhZUmOGshIYHft9X+KkhxuV
         B2w44iLiMa+eRWQ6Bh8+YnomrAz1leCcVST+GAb7f2Pr0VPzPgmvwF74MwChhTQDGdVl
         S3jx8+/4xpgzl4ucqhJFbJjy21xTypvUmjkXVnPBT9aBAF4ewME++ZsMeMSTsuiX4vb2
         9/2g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=YUi0TBnedE6VDCMb4d9bfadDEQxzGBOChH9yfpyBgPY=;
        b=BlVDO5F3HtWMyN6moPLjQixfdwyrsgvHLAbgkPIluFYIjUsexrQpcJpd40dhYMoB4y
         3t8/Yo3TwxKkfbCNFR0HXb2NBnQVhMTnoZVvZ39AcRbKQu9PlsSF/iskYM66A+D//lgr
         8HEKt2Z4H/BBD8R4rTIs/x48e7yVsOZWOuXlOn2zOmT6bGA/+5visA844VWzVsuMdKLL
         +XOmxfmlx2hybE1/oa5x/tZtkt9ue8QShoU71tIa3p6W8+wHA9ksLA822SrpIfRPRJ/6
         uii5Z5V7n22OeeegmriPl7S9vKbzZQlz9YyerOYTF1ZTzbNVhq1lcPpfKO5kplgMCHJy
         7ENA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="peG/ZBsE";
       spf=pass (google.com: domain of ascull@google.com designates 2a00:1450:4864:20::441 as permitted sender) smtp.mailfrom=ascull@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=YUi0TBnedE6VDCMb4d9bfadDEQxzGBOChH9yfpyBgPY=;
        b=bTX9/1YG7UzlGyz5tTywAETKYyUgxuXM9eZUL0Q6JNzFKEPjsiVvczmhe9vPTGyoMF
         Sar6ndIoqsO+T8Tju3b14y6Hub28su0BEWRwrOe4v9PfL7EHg1RYQ2y04wC4aCA87X/t
         2hurh6E6rcorFN76c8bC1Cv34tZOp8B58vf+pLoa22wKj7T+4zBq69r3y1Uu9JNqBu8u
         PfOXx5GLTb31gMw+BbOmII4bt8kZoFzzKk/mVpYAs/hX+1AV/Me+6/W28KZFvuAceZJv
         GMYYhHnF9u9ztdpoaP3Kf7J4w1OZdnnMvEZjbqYGKq+a2r7Y0ctKxjZ1BAVbLRRuFIIo
         hN+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=YUi0TBnedE6VDCMb4d9bfadDEQxzGBOChH9yfpyBgPY=;
        b=h/ak2B0FuLeTM8X0SVh6c4qvLIxJG+S0LcRuW/E6FWcl4lWUb/dcj6tsAQ76E5SNlP
         TNCcRFVKmHrsZ2Hk9xY0gBHyMHq359cRmV+edqeuhMY4MsprFuul3TW1YdkUptlX+VnI
         ungNXRczdSkI5PTafWV0+xQizpAKPCgnN7nshz9erkaJ17qOHmSRHaXF/2Mi9lXdW8+D
         rrEOv0KhqhZp4YiR//T7O4LXh3bLfCq/2iNewlAPeEJqWO4f+pEzAN/8OY71/g6xGN0j
         xyghGNVNAefKzp6pXmBdw0lmA6LwdbTJAVVJDtRb7KfFkD6nbLQCA4wjzkhJ218EtEfn
         75sQ==
X-Gm-Message-State: AOAM531UHNeRa76ghJ9f2ovT1lpwDQFvtDTgXep0UKJWbq55R+htmXK1
	8K48otXl2bDwWbbKRqUfMfg=
X-Google-Smtp-Source: ABdhPJyXvxYZwgRuROpXkExUayB7XQ0ekOFfTOJwPt514oFM9roIi1aO+XrHhHCpEhhp3I7FkqMfpg==
X-Received: by 2002:a7b:c111:: with SMTP id w17mr8075870wmi.28.1601549526162;
        Thu, 01 Oct 2020 03:52:06 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6000:8:: with SMTP id h8ls354184wrx.3.gmail; Thu, 01 Oct
 2020 03:52:05 -0700 (PDT)
X-Received: by 2002:a05:6000:11c5:: with SMTP id i5mr8339292wrx.18.1601549525147;
        Thu, 01 Oct 2020 03:52:05 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1601549525; cv=none;
        d=google.com; s=arc-20160816;
        b=oHi0tPCGW2V/bz+aLztLFOLRYcFIli2Q2bahunVuwng00/7IMV8pVXCdFedaTzpUQb
         1JxtC3LOToxwPB/HLD72DlrDeB20cueAcO1G9py8N3cEAMmmqzjHpuES1sUnBCD1wZuw
         P2UjP4CJPR3C6MngKskAPGl2lgZacrVKXAK+aIP0OoA0InGrshMKzyuEhTSumKbLsvpS
         tYDqoJ0xVvS4gziXFmEODGODiGJekGcFhW92Ih/4Cy3lNTfIk4XSBavOmPFZYUckG4fu
         +TXngwfNFT6yhgh3ZOUQE5xdaFq8ZhYNcVa+WD1mIFE/lhmKJI61BKz0R3KzxKm6kle5
         ZruQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=k2N0J/M9yplh3qBJTgm1trDqAWsQTbieqBVpcxzeRPI=;
        b=i8R3CBTg4ba6C6lgYPRJEFhxW04xbSZtWr6Uv2NHcZV/bB0YFxhfyioBnMtQDNlfuK
         p6ZbA9MWU614Y9/uZPD3cweY3J5j8GJXSJNLq+Ge+TFv1rnGBz/YOHHaE8Q5mq2KZsGc
         g7dozExQ1gvTYePvnqkjgL6p+o7I3LE9SALREcfEUv+EKwO9hsW4Mt4k2HpQBZvmkhc4
         pmmEcLTvUIW53kmMz8/xdogmnwh+llUrYsHK0A4tJBFh8LeWc1R+G5tvWtXUO8rCJWpb
         qPEvgxZSSYzfe3xHdBc0zrkmQMdYhfAaP4WGlGBB8kzeDrij7o/Z2XcgXde55zolXpBa
         h2Eg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="peG/ZBsE";
       spf=pass (google.com: domain of ascull@google.com designates 2a00:1450:4864:20::441 as permitted sender) smtp.mailfrom=ascull@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-wr1-x441.google.com (mail-wr1-x441.google.com. [2a00:1450:4864:20::441])
        by gmr-mx.google.com with ESMTPS id b1si123311wmj.1.2020.10.01.03.52.05
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 01 Oct 2020 03:52:05 -0700 (PDT)
Received-SPF: pass (google.com: domain of ascull@google.com designates 2a00:1450:4864:20::441 as permitted sender) client-ip=2a00:1450:4864:20::441;
Received: by mail-wr1-x441.google.com with SMTP id w5so5121241wrp.8
        for <clang-built-linux@googlegroups.com>; Thu, 01 Oct 2020 03:52:05 -0700 (PDT)
X-Received: by 2002:adf:f2d0:: with SMTP id d16mr7896961wrp.332.1601549524567;
        Thu, 01 Oct 2020 03:52:04 -0700 (PDT)
Received: from google.com ([2a00:79e0:d:109:4a0f:cfff:fe4a:6363])
        by smtp.gmail.com with ESMTPSA id i33sm9151325wri.79.2020.10.01.03.52.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 01 Oct 2020 03:52:03 -0700 (PDT)
Date: Thu, 1 Oct 2020 11:51:59 +0100
From: "'Andrew Scull' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: George-Aurelian Popescu <georgepope@google.com>
Cc: maz@kernel.org, catalin.marinas@arm.com, will@kernel.org,
	masahiroy@kernel.org, michal.lkml@markovi.net,
	linux-arm-kernel@lists.infradead.org, kvmarm@lists.cs.columbia.edu,
	linux-kernel@vger.kernel.org, linux-kbuild@vger.kernel.org,
	clang-built-linux@googlegroups.com, james.morse@arm.com,
	julien.thierry.kdev@gmail.com, suzuki.poulose@arm.com,
	natechancellor@gmail.com, ndesaulniers@google.com,
	dbrazdil@google.com, broonie@kernel.org, maskray@google.com,
	keescook@chromium.org, akpm@linux-foundation.org,
	dvyukov@google.com, elver@google.com, tglx@linutronix.de,
	arnd@arndb.de
Subject: Re: [PATCH 05/14] KVM: arm64: Define a buffer that can pass UBSan
 data from hyp/nVHE to kernel
Message-ID: <20201001105159.GB541087@google.com>
References: <20200914172750.852684-1-georgepope@google.com>
 <20200914172750.852684-6-georgepope@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200914172750.852684-6-georgepope@google.com>
X-Original-Sender: ascull@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b="peG/ZBsE";       spf=pass
 (google.com: domain of ascull@google.com designates 2a00:1450:4864:20::441 as
 permitted sender) smtp.mailfrom=ascull@google.com;       dmarc=pass (p=REJECT
 sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Andrew Scull <ascull@google.com>
Reply-To: Andrew Scull <ascull@google.com>
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
> 
> Store data, which is collected from UBSan handlers that lives inside hyp/nVHE,
> into the kvm_ubsan_buffer.
> This buffer is designed to store only UBSan data because it should not be
> preoccupied by other mechanisms data structures and functionalities.
> 
> Map the buffer and the write iqndex before switching the control to
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

The header should have an inclusion guard as well.

> +#include <ubsan.h>

Is it possible to only include this from within kvm_ubsan_buffer.c
similar to how lib/ubsan.c keeps it self contained? Then export
function for things like mapping it up to hyp?

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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201001105159.GB541087%40google.com.
