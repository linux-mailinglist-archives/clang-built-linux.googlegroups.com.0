Return-Path: <clang-built-linux+bncBD6LJ6GMUUPBBKV42TVAKGQEPRGQQ2I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x83f.google.com (mail-qt1-x83f.google.com [IPv6:2607:f8b0:4864:20::83f])
	by mail.lfdr.de (Postfix) with ESMTPS id 139DA8E783
	for <lists+clang-built-linux@lfdr.de>; Thu, 15 Aug 2019 10:56:12 +0200 (CEST)
Received: by mail-qt1-x83f.google.com with SMTP id l9sf1885668qtu.12
        for <lists+clang-built-linux@lfdr.de>; Thu, 15 Aug 2019 01:56:12 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1565859371; cv=pass;
        d=google.com; s=arc-20160816;
        b=ldZtSi1ljpdW6cXUOtroxnNVwiQfsz7CS9eXYXzA+EzG1+cfzWgahSd086hns+jcie
         PQ8LuTnaOUqQ/8onC3gq1Pk61uYenHE4n4JVWwQe5pHq4SKMkwvHMVeQnqHMGVR4qEgS
         J8CenHIBm8fWY1/8C9IcQ3U7q93BQMy7MHldtJa7aZEZ/09R4LwNsc/aC13KDfBSNDsU
         BmVMDb2zrYNTY9+rfM9vvQRiJFdFpvGoM61e3girQOZ3Wiw2G3Crw1C+o1voMdyJ2i3C
         +Wdw2IM3NNxlL52sAiCBdeXKIvFREAxfmEN5EzGVbL4oWNVzGXhuaqA97hNYg5UqO2ew
         bMeQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:organization:from
         :references:cc:to:subject:sender:dkim-signature;
        bh=c4be4k07VYjV2CTsy/IFG2cMiVdvKZMyf14EjdOe1hA=;
        b=iJYjK4Xu/5dKGyXmc4I4EB03F36LlRetaF41c3mpw4Ae73tVFEo0z6LK0uNWHxX/I9
         aa0nJAvSuJcFxDp1D7UOJ6ffIASNfdR7wa2dzPI8Rc7FTyCcmVKrklwfrytkzIvj0APH
         rt6TiiNz+WaQlyvFJWUENXFPBS+eO+QSIo93Bbpj6wXnbIbSMQ88QDGnXLOFznfqCiXR
         8nDaMn7uDnXCQ23CANQsLoyV05mIrf8KoaGSMM/eLz8F0Jwsld4+bcqaz0cTmUwwipYB
         RrtpYV87nxBcI8j61/G0PQxbdK9U1JwKVAFI/cZamoMN+CH5g+z9mqJQSd7nVh5Q8Y7o
         kt+A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of adrian.hunter@intel.com designates 192.55.52.43 as permitted sender) smtp.mailfrom=adrian.hunter@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:organization:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=c4be4k07VYjV2CTsy/IFG2cMiVdvKZMyf14EjdOe1hA=;
        b=G9ixGt9awzLi4gdn1zxpuC4ySvZLeMsQ/ct3yPz8DADtH9w013TBSRy5TDFawzLf1F
         qAhiv3ysKtUm0x8Hvr0PvkUfh+qMmHP6WXXmWs3HKvX1VrOULWJNfpHmSyY8PSEY0FYe
         QrzsfOHab2z47j6/WO7OUjeId/ODOgToAaTVL6/9n4fjqNfpRqGSDA5sipN8VcDtjNFp
         KXwldKTO861Iv9e9rcXyYdFe3UnI1emWkYrFAUJXLRzCEMcsKklwmuUl8rfEVjvhZSGL
         ZSxthgL3JsJ+HdrIx0ZcLSvmfi7+p0nSpEpSiBxKo4UhoVsuhdW/0o6iKyx5GRrksYst
         BbRg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from
         :organization:message-id:date:user-agent:mime-version:in-reply-to
         :content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=c4be4k07VYjV2CTsy/IFG2cMiVdvKZMyf14EjdOe1hA=;
        b=SF4ATED0cHbMzmDNY7VgxRsNZz3r8z3lH1sIP0nQOEi7OuqIkmzP6wk6wjnOeUy3OE
         9JcOXywhdJAxGNAMud4f72CDWW1bIsMCIGIdpvq5JgMY1QF50q8DlebgF9poCrNj4Oen
         REIbRBS7WTEkhbgVnO8oYPGqZBSbMXGtmnNLaeX1zOo/DbCv9x6tI23IhqNh4o4ufCR9
         Rz0A4ZX5kC/UhjWyDiR/tlvzPZtYziHQ8Wd7CqWApf8xDEEMVG8WbD0MFtNatSyfXJ9W
         3GORpz+JZ/WfyUoXf6g9j1hfR8j+iUcekVtFil74mVYPEB4AX4qW1BQpBzrtL50E5lMm
         VwIA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVJSaJ9PyB/I2BDmrxSbA6V6Stgguxsysq6AWwkSQ3WOMCnIQJM
	PzyYvsnA40zdomCV0lgPQNQ=
X-Google-Smtp-Source: APXvYqwy+XiHnBe1uZ7RIgb0p/rnrKPnKbHFMak+XqyxR/X2NJC+rVvA1Q98FkvQUNltIjgSIMTIZg==
X-Received: by 2002:ae9:e102:: with SMTP id g2mr3031100qkm.182.1565859370920;
        Thu, 15 Aug 2019 01:56:10 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:4594:: with SMTP id l20ls97629qtn.10.gmail; Thu, 15 Aug
 2019 01:56:10 -0700 (PDT)
X-Received: by 2002:ac8:138d:: with SMTP id h13mr3044992qtj.276.1565859370701;
        Thu, 15 Aug 2019 01:56:10 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1565859370; cv=none;
        d=google.com; s=arc-20160816;
        b=W+P0vRrvKrFDwbA+dI8XtyAA/1jN+0G4O1aRoJUmVDJLDK6i8VxA9bHdyf9cJ2/pWF
         +M8wEwuZFdQ/QzM+NGXknB8hcrxdt9Aupmqu+LVCTTYMhj7rbtsDfVITnSWRg8z3AjCf
         sMLpNO7UA5zM21juBKVcX0zgybxxjwGRK+5k0nVL/irMu71TdpMwDallYcyVTyYFYVnd
         bnNgp8EcL8BlGn9K2ss3ufc7Z+rDtvPJFOg/MdDplCwS3cOfL+7++4p5jjKpnX2nIXdn
         eBeVV6vD9tpFS0vqhpDDq9G6idSXo00S+eCcgpezlP7ljU6ME/lYsRfMC030znMTaLUT
         CPpA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:organization:from:references:cc:to
         :subject;
        bh=f8ohpBuaSLoZmm5dh38Zk6Kw38wS2I+LU+KsDku3yaM=;
        b=hEx32kI2w/cBq+zdkFTqHy5jYUzhFusTRlRxVMLOcQf8vK3dW8WBfPG6yEAXFolUo6
         j5Zs6JOHKME1EZieKSLq8SUMy4BrvEULfNEq9XsvrsBTnR2wDaeE6ymt+KUrO9PAzS3z
         /oDTakl1F1za1+MsOJtoDB/lelvNfxNnPnriRvoxA1EPil7gSyA+XfPoVoF6ukzVRTPT
         gRnw+ZkBoQEOr2U+vtbv7q/dhoA+fkLioD+035OkycazUqKAM8pze4H3MZH92Ke5q2RA
         rYZLlvjFjEORfDYjbZLw4DKyw5zI0gFBYuF9wMFr4oLdK5L+/FHvdwyNjul52nD0v4GB
         8YFQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of adrian.hunter@intel.com designates 192.55.52.43 as permitted sender) smtp.mailfrom=adrian.hunter@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga05.intel.com (mga05.intel.com. [192.55.52.43])
        by gmr-mx.google.com with ESMTPS id r68si27720qkb.1.2019.08.15.01.56.10
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 15 Aug 2019 01:56:10 -0700 (PDT)
Received-SPF: pass (google.com: domain of adrian.hunter@intel.com designates 192.55.52.43 as permitted sender) client-ip=192.55.52.43;
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
  by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 15 Aug 2019 01:56:08 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,388,1559545200"; 
   d="scan'208";a="181821709"
Received: from ahunter-desktop.fi.intel.com (HELO [10.237.72.122]) ([10.237.72.122])
  by orsmga006.jf.intel.com with ESMTP; 15 Aug 2019 01:56:03 -0700
Subject: Re: [PATCH v5] perf machine: arm/arm64: Improve completeness for
 kernel address space
To: Leo Yan <leo.yan@linaro.org>, Arnaldo Carvalho de Melo <acme@kernel.org>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 Jiri Olsa <jolsa@redhat.com>, Namhyung Kim <namhyung@kernel.org>,
 Alexei Starovoitov <ast@kernel.org>, Daniel Borkmann <daniel@iogearbox.net>,
 Martin KaFai Lau <kafai@fb.com>, Song Liu <songliubraving@fb.com>,
 Yonghong Song <yhs@fb.com>, linux-kernel@vger.kernel.org,
 netdev@vger.kernel.org, bpf@vger.kernel.org,
 clang-built-linux@googlegroups.com
Cc: Mathieu Poirier <mathieu.poirier@linaro.org>,
 Peter Zijlstra <peterz@infradead.org>,
 Suzuki Poulouse <suzuki.poulose@arm.com>, coresight@lists.linaro.org,
 linux-arm-kernel@lists.infradead.org
References: <20190815082521.16885-1-leo.yan@linaro.org>
From: Adrian Hunter <adrian.hunter@intel.com>
Organization: Intel Finland Oy, Registered Address: PL 281, 00181 Helsinki,
 Business Identity Code: 0357606 - 4, Domiciled in Helsinki
Message-ID: <d874e6b3-c115-6c8c-bb12-160cfd600505@intel.com>
Date: Thu, 15 Aug 2019 11:54:54 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190815082521.16885-1-leo.yan@linaro.org>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
X-Original-Sender: adrian.hunter@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of adrian.hunter@intel.com designates 192.55.52.43 as
 permitted sender) smtp.mailfrom=adrian.hunter@intel.com;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=intel.com
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

On 15/08/19 11:25 AM, Leo Yan wrote:
> Arm and arm64 architecture reserve some memory regions prior to the
> symbol '_stext' and these memory regions later will be used by device
> module and BPF jit.  The current code misses to consider these memory
> regions thus any address in the regions will be taken as user space
> mode, but perf cannot find the corresponding dso with the wrong CPU
> mode so we misses to generate samples for device module and BPF
> related trace data.
> 
> This patch parse the link scripts to get the memory size prior to start
> address and reduce this size from 'machine>->kernel_start', then can
> get a fixed up kernel start address which contain memory regions for
> device module and BPF.  Finally, machine__get_kernel_start() can reflect
> more complete kernel memory regions and perf can successfully generate
> samples.
> 
> The reason for parsing the link scripts is Arm architecture changes text
> offset dependent on different platforms, which define multiple text
> offsets in $kernel/arch/arm/Makefile.  This offset is decided when build
> kernel and the final value is extended in the link script, so we can
> extract the used value from the link script.  We use the same way to
> parse arm64 link script as well.  If fail to find the link script, the
> pre start memory size is assumed as zero, in this case it has no any
> change caused with this patch.
> 
> Below is detailed info for testing this patch:
> 
> - Install or build LLVM/Clang;
> 
> - Configure perf with ~/.perfconfig:
> 
>   root@debian:~# cat ~/.perfconfig
>   # this file is auto-generated.
>   [llvm]
>           clang-path = /mnt/build/llvm-build/build/install/bin/clang
>           kbuild-dir = /mnt/linux-kernel/linux-cs-dev/
>           clang-opt = "-g"
>           dump-obj = true
> 
>   [trace]
>           show_zeros = yes
>           show_duration = no
>           no_inherit = yes
>           show_timestamp = no
>           show_arg_names = no
>           args_alignment = 40
>           show_prefix = yes
> 
> - Run 'perf trace' command with eBPF event:
> 
>   root@debian:~# perf trace -e string \
>       -e $kernel/tools/perf/examples/bpf/augmented_raw_syscalls.c
> 
> - Read eBPF program memory mapping in kernel:
> 
>   root@debian:~# echo 1 > /proc/sys/net/core/bpf_jit_kallsyms
>   root@debian:~# cat /proc/kallsyms | grep -E "bpf_prog_.+_sys_[enter|exit]"
>   ffff00000008a0d0 t bpf_prog_e470211b846088d5_sys_enter  [bpf]
>   ffff00000008c6a4 t bpf_prog_29c7ae234d79bd5c_sys_exit   [bpf]
> 
> - Launch any program which accesses file system frequently so can hit
>   the system calls trace flow with eBPF event;
> 
> - Capture CoreSight trace data with filtering eBPF program:
> 
>   root@debian:~# perf record -e cs_etm/@tmc_etr0/ \
> 	--filter 'filter 0xffff00000008a0d0/0x800' -a sleep 5s
> 
> - Decode the eBPF program symbol 'bpf_prog_f173133dc38ccf87_sys_enter':
> 
>   root@debian:~# perf script -F,ip,sym
>   Frame deformatter: Found 4 FSYNCS
>                   0 [unknown]
>    ffff00000008a1ac bpf_prog_e470211b846088d5_sys_enter
>    ffff00000008a250 bpf_prog_e470211b846088d5_sys_enter
>                   0 [unknown]
>    ffff00000008a124 bpf_prog_e470211b846088d5_sys_enter
>                   0 [unknown]
>    ffff00000008a14c bpf_prog_e470211b846088d5_sys_enter
>    ffff00000008a13c bpf_prog_e470211b846088d5_sys_enter
>    ffff00000008a14c bpf_prog_e470211b846088d5_sys_enter
>                   0 [unknown]
>    ffff00000008a180 bpf_prog_e470211b846088d5_sys_enter
>                   0 [unknown]
>    ffff00000008a1ac bpf_prog_e470211b846088d5_sys_enter
>    ffff00000008a190 bpf_prog_e470211b846088d5_sys_enter
>    ffff00000008a1ac bpf_prog_e470211b846088d5_sys_enter
>    ffff00000008a250 bpf_prog_e470211b846088d5_sys_enter
>                   0 [unknown]
>    ffff00000008a124 bpf_prog_e470211b846088d5_sys_enter
>                   0 [unknown]
>    ffff00000008a14c bpf_prog_e470211b846088d5_sys_enter
>                   0 [unknown]
>    ffff00000008a180 bpf_prog_e470211b846088d5_sys_enter
>    [...]
> 
> Cc: Mathieu Poirier <mathieu.poirier@linaro.org>
> Cc: Alexander Shishkin <alexander.shishkin@linux.intel.com>
> Cc: Jiri Olsa <jolsa@redhat.com>
> Cc: Namhyung Kim <namhyung@kernel.org>
> Cc: Peter Zijlstra <peterz@infradead.org>
> Cc: Suzuki Poulouse <suzuki.poulose@arm.com>
> Cc: Adrian Hunter <adrian.hunter@intel.com>
> Cc: coresight@lists.linaro.org
> Cc: linux-arm-kernel@lists.infradead.org
> Signed-off-by: Leo Yan <leo.yan@linaro.org>
> ---
>  tools/perf/Makefile.config | 22 ++++++++++++++++++++++
>  tools/perf/util/machine.c  | 15 ++++++++++++++-
>  2 files changed, 36 insertions(+), 1 deletion(-)
> 
> diff --git a/tools/perf/Makefile.config b/tools/perf/Makefile.config
> index e4988f49ea79..d7ff839d8b20 100644
> --- a/tools/perf/Makefile.config
> +++ b/tools/perf/Makefile.config
> @@ -48,9 +48,20 @@ ifeq ($(SRCARCH),x86)
>    NO_PERF_REGS := 0
>  endif
>  
> +ARM_PRE_START_SIZE := 0
> +
>  ifeq ($(SRCARCH),arm)
>    NO_PERF_REGS := 0
>    LIBUNWIND_LIBS = -lunwind -lunwind-arm
> +  ifneq ($(wildcard $(srctree)/arch/$(SRCARCH)/kernel/vmlinux.lds),)
> +    # Extract info from lds:
> +    #   . = ((0xC0000000)) + 0x00208000;
> +    # ARM_PRE_START_SIZE := 0x00208000
> +    ARM_PRE_START_SIZE := $(shell egrep ' \. \= \({2}0x[0-9a-fA-F]+\){2}' \
> +      $(srctree)/arch/$(SRCARCH)/kernel/vmlinux.lds | \
> +      sed -e 's/[(|)|.|=|+|<|;|-]//g' -e 's/ \+/ /g' -e 's/^[ \t]*//' | \
> +      awk -F' ' '{printf "0x%x", $$2}' 2>/dev/null)
> +  endif
>  endif
>  
>  ifeq ($(SRCARCH),arm64)
> @@ -58,8 +69,19 @@ ifeq ($(SRCARCH),arm64)
>    NO_SYSCALL_TABLE := 0
>    CFLAGS += -I$(OUTPUT)arch/arm64/include/generated
>    LIBUNWIND_LIBS = -lunwind -lunwind-aarch64
> +  ifneq ($(wildcard $(srctree)/arch/$(SRCARCH)/kernel/vmlinux.lds),)
> +    # Extract info from lds:
> +    #  . = ((((((((0xffffffffffffffff)) - (((1)) << (48)) + 1) + (0)) + (0x08000000))) + (0x08000000))) + 0x00080000;
> +    # ARM_PRE_START_SIZE := (0x08000000 + 0x08000000 + 0x00080000) = 0x10080000
> +    ARM_PRE_START_SIZE := $(shell egrep ' \. \= \({8}0x[0-9a-fA-F]+\){2}' \
> +      $(srctree)/arch/$(SRCARCH)/kernel/vmlinux.lds | \
> +      sed -e 's/[(|)|.|=|+|<|;|-]//g' -e 's/ \+/ /g' -e 's/^[ \t]*//' | \
> +      awk -F' ' '{printf "0x%x", $$6+$$7+$$8}' 2>/dev/null)
> +  endif

So, that is not going to work if you take a perf.data file to a non-arm machine?

How come you cannot use kallsyms to get the information?

>  endif
>  
> +CFLAGS += -DARM_PRE_START_SIZE=$(ARM_PRE_START_SIZE)
> +
>  ifeq ($(SRCARCH),csky)
>    NO_PERF_REGS := 0
>  endif
> diff --git a/tools/perf/util/machine.c b/tools/perf/util/machine.c
> index f6ee7fbad3e4..e993f891bb82 100644
> --- a/tools/perf/util/machine.c
> +++ b/tools/perf/util/machine.c
> @@ -2687,13 +2687,26 @@ int machine__get_kernel_start(struct machine *machine)
>  	machine->kernel_start = 1ULL << 63;
>  	if (map) {
>  		err = map__load(map);
> +		if (err)
> +			return err;
> +
>  		/*
>  		 * On x86_64, PTI entry trampolines are less than the
>  		 * start of kernel text, but still above 2^63. So leave
>  		 * kernel_start = 1ULL << 63 for x86_64.
>  		 */
> -		if (!err && !machine__is(machine, "x86_64"))
> +		if (!machine__is(machine, "x86_64"))
>  			machine->kernel_start = map->start;
> +
> +		/*
> +		 * On arm/arm64, the kernel uses some memory regions which are
> +		 * prior to '_stext' symbol; to reflect the complete kernel
> +		 * address space, compensate these pre-defined regions for
> +		 * kernel start address.
> +		 */
> +		if (!strcmp(perf_env__arch(machine->env), "arm") ||
> +		    !strcmp(perf_env__arch(machine->env), "arm64"))
> +			machine->kernel_start -= ARM_PRE_START_SIZE;
>  	}
>  	return err;
>  }
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/d874e6b3-c115-6c8c-bb12-160cfd600505%40intel.com.
