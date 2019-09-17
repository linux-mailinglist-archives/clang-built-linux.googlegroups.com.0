Return-Path: <clang-built-linux+bncBCTYRDEG7MGBBDGYQXWAKGQEZYB7JZI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yw1-xc3c.google.com (mail-yw1-xc3c.google.com [IPv6:2607:f8b0:4864:20::c3c])
	by mail.lfdr.de (Postfix) with ESMTPS id F1B77B5883
	for <lists+clang-built-linux@lfdr.de>; Wed, 18 Sep 2019 01:28:13 +0200 (CEST)
Received: by mail-yw1-xc3c.google.com with SMTP id l63sf4020532ywg.21
        for <lists+clang-built-linux@lfdr.de>; Tue, 17 Sep 2019 16:28:13 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1568762892; cv=pass;
        d=google.com; s=arc-20160816;
        b=docgy45N9wApB8zLQoex6E79A7r//IVL37S16JZGk6F2QwQ8M/czBYVy4fP0Bw6kS6
         ZGbdBTC7wIJ4DZEa1sC2txofTIjleNzn/KVvoWL/mZ0750zDOHWOzE0R5IDYsxH7rWX0
         KLXOEm3j7VknG7c4cIyNnM1A2tVF4Dnyat9RIM4iwKveJPrI/KueEAYvYHsKKbdqHxeN
         AW5Oa4PeBI39sAHUe1gx4fBQ6ftk+O5+R5ZJM4jYfK99vULa8DdX2rO8FW9+mvk9MHNe
         Kg571LSsBH88BP9+YLRsSKCjkAn2XEz5mb4zv8gcMfx92OjtZo/DrZ9GK2pKIQJCF1q6
         Vw1g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=PeUwRwmF2sKc6urKw8MFD6h1KrNp8oxI98T4U0eDNZE=;
        b=CaDBUCe9nGScLISnfHQgGRqJPrbDYf5/e+as1crPOyl+MAXqL8oJczIaNODqvybJeY
         A5PSdiK5Ko4KycyFmXYZOprAvsYBRSZI8ovUHcI7U5im3Sb4KBg+gqPoxxNgo9xfSrtd
         XdhyJygBOu6tRnWQFFCfuBiWDIgEbZw0uiuEiW0YFOlmF/U9Ycr2BatEV5/s+u6UoBML
         D/hFwe+cyAFoTe1LeT5vNUYYTlhNE32tXGT/oV+OrlozakvFYamMSlq2FWunzRQNE/OA
         pGg+fZOgHu0jr2Oyph/MbUYNezDaV0bZ4X2zrsL/UhCuwXHJwHJemll5lCWBtEJUYhR/
         EWPg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=GCQCKVVF;
       spf=pass (google.com: domain of andrii.nakryiko@gmail.com designates 2607:f8b0:4864:20::842 as permitted sender) smtp.mailfrom=andrii.nakryiko@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=PeUwRwmF2sKc6urKw8MFD6h1KrNp8oxI98T4U0eDNZE=;
        b=a3VPrBX8qqGKzbFOh19MyYSDYT4izkjmBYH+tu3s/uPC1iNxQhP9/lUle8x75vhKN0
         QH0DpGbCdqgTb9KE+cR8QfcyffvbYEygUaw6dzwMvOxAA3qIRY5fWanX6o1zomwg8vp+
         mKjoA69y++CJ7za+qqqOpEx/zR9VjTrULX7Re4Xx3SfpZtDlYgJNlaRCNaX9uYCZCiMU
         l4B9zSgnt3oGdBtv3tJLJiUwP6J89uS4BTQumO6xXbEJocgVGS3ILb8WlBTdonA5mcGF
         OJOcxkbY9PYTP+JChPyIfXI4RUOmBD2fGYy7pvtWhCAyOITu0+4mqdushMeU40Uin0eS
         UJCw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=PeUwRwmF2sKc6urKw8MFD6h1KrNp8oxI98T4U0eDNZE=;
        b=bDLcrM3RuW0bdfAQ3jSu62lCRTOGygpB/ctYjyo4BsIPPI8QFAAwZvqthbbrgJ1BG1
         5FUDRTpYbskWABAfIr0SW6wyo5DUbSokiGQz3uUoO3JQV/plWutvCZ+95TDDoMwHxckW
         gGzfI261bcBpBB4ENMVmqrP2CvhBnYzCuUtBLydvG3CHvayE5+tc6u36Dk9tjruKLIu0
         AV9Y7w2GOyPfjKqSJqYLD2YN/mQhMHPqdyC7F8FW4H13N9LlBjTZJxfaySJlAb1Povo6
         xakUOc0FjMYDjJYsuxB49ztmF6wZSb4NGR31L5zF3FfSCngrzLKY5UI+ZY0VEoky0Hj7
         9DAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=PeUwRwmF2sKc6urKw8MFD6h1KrNp8oxI98T4U0eDNZE=;
        b=uieHDHieeU1/2kEyWfinke6oDKtUqUPsVQsyu15uRl6059iRbMJoJJj5J/HuzwHAp2
         +RFKG1Qnxd5y8V4OyEnX6WzDQ2e0x0NiooBcFmwMyOGrzHAYzzq4bm1cVBYl189f9IO7
         ZHNVUBfEF0IqzRWVKI8XQzPI7wAj2hnKK1q3B/Ypn6MQbzVw7zheRZRn27fMTt6JTVHM
         pZsekyX6ENq5CiyhKW3Taaz/05ftR43woWgjjcs9Y93a04GCavlX2ATkaOBnNZG8P9eQ
         Ip4aPmaIJ1B8Y4GE43KErlx5Z3hwd3irWFAemhtOmzT+SGHDYrJqkjXokuKF/Va6nymg
         /mfQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXU9I9WBMFxRMPXi36afbC3XqEZrxMypaEG7+CqSXuIba3Cb6bv
	EYCyXuMnkwUHNQms/8gArRk=
X-Google-Smtp-Source: APXvYqx43xIAHwhfqXxnECL9xLq8+3oDedhFT1cAKqxSzQNvl4BN+SqAnUuKBX/Dt0cbv9fzU8q7dQ==
X-Received: by 2002:a25:7396:: with SMTP id o144mr750398ybc.355.1568762892604;
        Tue, 17 Sep 2019 16:28:12 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a0d:eb43:: with SMTP id u64ls888684ywe.8.gmail; Tue, 17 Sep
 2019 16:28:12 -0700 (PDT)
X-Received: by 2002:a0d:ef07:: with SMTP id y7mr960182ywe.376.1568762892331;
        Tue, 17 Sep 2019 16:28:12 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1568762892; cv=none;
        d=google.com; s=arc-20160816;
        b=c+GEwks84UJqiZwpZf98qFQPCjic5USdVzBAfImVgP255wtk14ktTKp+JeEByA+cO5
         p+6agqZSfhRQUX1ZsWkZGqJ5a3OTQaCLVtEA6yrVnqqAqFC78PokA4v7FfZL2NfEVB+w
         KAUzt19svJMfNdgp+s7myZucQl71d49EYeomkPV9sDkxpt3CeyJDti1qu5NkLNf6cYUv
         rUqxtIRL7AFYxSkIHP+6g5hXCLc1mGwlNYMy+uXj3d/75tLJb6XVMEF4+ASWrl1QPGIi
         JXVnxgj+d3MR2OpWMCCGi2B5OyZC/MdiNK1Jq1yH7hH+bYreAVo1LqA4cCDnnqf5FvCj
         P9ug==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=QObwZDgaxtl27tWC1JznlGz6uTSM/Q0uCMiJ7OYqwWA=;
        b=iso12J8RxG+a8c4I1KRx2/AZ3P7+IzYk1V8HUfJM79CcbZqjrHtKdxQxYd+fAX/nL+
         4/aNoC4KkaKwWshBVg4s/mU5xjHLha9YEQVEsSFO5fPzB4sePwM4MmGhglVL2D+DpoGP
         VDMGXGFxD/CCWoADlaOdxZZU3bSUp5NkKPfSjuGYln/4NmIU4lFNF5npD/HV/ZyUroNT
         r9IbU5/K8WSXZsj+ovledus73a4iHi8iXIXtWr1RKFV3jZYpiHoXjo9AsoIdvLnwFVr8
         dEKlq+68XXxy1zwvTw5xoSIxlTcMU/TCdRTxocUU453vjBL6l6Uz/pwIJ1rgdI1KMWbg
         wzJA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=GCQCKVVF;
       spf=pass (google.com: domain of andrii.nakryiko@gmail.com designates 2607:f8b0:4864:20::842 as permitted sender) smtp.mailfrom=andrii.nakryiko@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-qt1-x842.google.com (mail-qt1-x842.google.com. [2607:f8b0:4864:20::842])
        by gmr-mx.google.com with ESMTPS id m17si448538ybm.2.2019.09.17.16.28.12
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 17 Sep 2019 16:28:12 -0700 (PDT)
Received-SPF: pass (google.com: domain of andrii.nakryiko@gmail.com designates 2607:f8b0:4864:20::842 as permitted sender) client-ip=2607:f8b0:4864:20::842;
Received: by mail-qt1-x842.google.com with SMTP id c21so6569040qtj.12
        for <clang-built-linux@googlegroups.com>; Tue, 17 Sep 2019 16:28:12 -0700 (PDT)
X-Received: by 2002:a0c:88f0:: with SMTP id 45mr1082154qvo.78.1568762891894;
 Tue, 17 Sep 2019 16:28:11 -0700 (PDT)
MIME-Version: 1.0
References: <20190916105433.11404-1-ivan.khoronzhuk@linaro.org> <20190916105433.11404-9-ivan.khoronzhuk@linaro.org>
In-Reply-To: <20190916105433.11404-9-ivan.khoronzhuk@linaro.org>
From: Andrii Nakryiko <andrii.nakryiko@gmail.com>
Date: Tue, 17 Sep 2019 16:28:01 -0700
Message-ID: <CAEf4BzYFoJJk+WM51YT7NwCxQpy117DAMmgiJ1YbqaW9UUWpEg@mail.gmail.com>
Subject: Re: [PATCH v3 bpf-next 08/14] samples: bpf: makefile: base target
 programs rules on Makefile.target
To: Ivan Khoronzhuk <ivan.khoronzhuk@linaro.org>
Cc: Alexei Starovoitov <ast@kernel.org>, Daniel Borkmann <daniel@iogearbox.net>, Yonghong Song <yhs@fb.com>, 
	"David S. Miller" <davem@davemloft.net>, Jakub Kicinski <jakub.kicinski@netronome.com>, 
	Jesper Dangaard Brouer <hawk@kernel.org>, john fastabend <john.fastabend@gmail.com>, 
	open list <linux-kernel@vger.kernel.org>, Networking <netdev@vger.kernel.org>, 
	bpf <bpf@vger.kernel.org>, clang-built-linux@googlegroups.com, 
	sergei.shtylyov@cogentembedded.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: andrii.nakryiko@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=GCQCKVVF;       spf=pass
 (google.com: domain of andrii.nakryiko@gmail.com designates
 2607:f8b0:4864:20::842 as permitted sender) smtp.mailfrom=andrii.nakryiko@gmail.com;
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

On Mon, Sep 16, 2019 at 3:58 AM Ivan Khoronzhuk
<ivan.khoronzhuk@linaro.org> wrote:
>

Please don't prepend "samples: bpf: makefile:" to patches,
"samples/bpf: " is a typical we've used for BPF samples changes.


> The main reason for that - HOSTCC and CC have different aims.
> HOSTCC is used to build programs running on host, that can
> cross-comple target programs with CC. It was tested for arm and arm64
> cross compilation, based on linaro toolchain, but should work for
> others.
>
> So, in order to split cross compilation (CC) with host build (HOSTCC),
> lets base samples on Makefile.target. It allows to cross-compile
> samples/bpf programs with CC while auxialry tools running on host
> built with HOSTCC.
>
> Signed-off-by: Ivan Khoronzhuk <ivan.khoronzhuk@linaro.org>
> ---
>  samples/bpf/Makefile | 135 ++++++++++++++++++++++---------------------
>  1 file changed, 69 insertions(+), 66 deletions(-)
>
> diff --git a/samples/bpf/Makefile b/samples/bpf/Makefile
> index 9d923546e087..1579cc16a1c2 100644
> --- a/samples/bpf/Makefile
> +++ b/samples/bpf/Makefile
> @@ -4,55 +4,53 @@ BPF_SAMPLES_PATH ?= $(abspath $(srctree)/$(src))
>  TOOLS_PATH := $(BPF_SAMPLES_PATH)/../../tools
>
>  # List of programs to build
> -hostprogs-y := test_lru_dist
> -hostprogs-y += sock_example
> -hostprogs-y += fds_example
> -hostprogs-y += sockex1
> -hostprogs-y += sockex2
> -hostprogs-y += sockex3
> -hostprogs-y += tracex1
> -hostprogs-y += tracex2
> -hostprogs-y += tracex3
> -hostprogs-y += tracex4
> -hostprogs-y += tracex5
> -hostprogs-y += tracex6
> -hostprogs-y += tracex7
> -hostprogs-y += test_probe_write_user
> -hostprogs-y += trace_output
> -hostprogs-y += lathist
> -hostprogs-y += offwaketime
> -hostprogs-y += spintest
> -hostprogs-y += map_perf_test
> -hostprogs-y += test_overhead
> -hostprogs-y += test_cgrp2_array_pin
> -hostprogs-y += test_cgrp2_attach
> -hostprogs-y += test_cgrp2_sock
> -hostprogs-y += test_cgrp2_sock2
> -hostprogs-y += xdp1
> -hostprogs-y += xdp2
> -hostprogs-y += xdp_router_ipv4
> -hostprogs-y += test_current_task_under_cgroup
> -hostprogs-y += trace_event
> -hostprogs-y += sampleip
> -hostprogs-y += tc_l2_redirect
> -hostprogs-y += lwt_len_hist
> -hostprogs-y += xdp_tx_iptunnel
> -hostprogs-y += test_map_in_map
> -hostprogs-y += per_socket_stats_example
> -hostprogs-y += xdp_redirect
> -hostprogs-y += xdp_redirect_map
> -hostprogs-y += xdp_redirect_cpu
> -hostprogs-y += xdp_monitor
> -hostprogs-y += xdp_rxq_info
> -hostprogs-y += syscall_tp
> -hostprogs-y += cpustat
> -hostprogs-y += xdp_adjust_tail
> -hostprogs-y += xdpsock
> -hostprogs-y += xdp_fwd
> -hostprogs-y += task_fd_query
> -hostprogs-y += xdp_sample_pkts
> -hostprogs-y += ibumad
> -hostprogs-y += hbm
> +tprogs-y := test_lru_dist
> +tprogs-y += sock_example
> +tprogs-y += fds_example
> +tprogs-y += sockex1
> +tprogs-y += sockex2
> +tprogs-y += sockex3
> +tprogs-y += tracex1
> +tprogs-y += tracex2
> +tprogs-y += tracex3
> +tprogs-y += tracex4
> +tprogs-y += tracex5
> +tprogs-y += tracex6
> +tprogs-y += tracex7
> +tprogs-y += test_probe_write_user
> +tprogs-y += trace_output
> +tprogs-y += lathist
> +tprogs-y += offwaketime
> +tprogs-y += spintest
> +tprogs-y += map_perf_test
> +tprogs-y += test_overhead
> +tprogs-y += test_cgrp2_array_pin
> +tprogs-y += test_cgrp2_attach
> +tprogs-y += test_cgrp2_sock
> +tprogs-y += test_cgrp2_sock2
> +tprogs-y += xdp1
> +tprogs-y += xdp2
> +tprogs-y += xdp_router_ipv4
> +tprogs-y += test_current_task_under_cgroup
> +tprogs-y += trace_event
> +tprogs-y += sampleip
> +tprogs-y += tc_l2_redirect
> +tprogs-y += lwt_len_hist
> +tprogs-y += xdp_tx_iptunnel
> +tprogs-y += test_map_in_map
> +tprogs-y += xdp_redirect_map
> +tprogs-y += xdp_redirect_cpu
> +tprogs-y += xdp_monitor
> +tprogs-y += xdp_rxq_info
> +tprogs-y += syscall_tp
> +tprogs-y += cpustat
> +tprogs-y += xdp_adjust_tail
> +tprogs-y += xdpsock
> +tprogs-y += xdp_fwd
> +tprogs-y += task_fd_query
> +tprogs-y += xdp_sample_pkts
> +tprogs-y += ibumad
> +tprogs-y += hbm
>
>  # Libbpf dependencies
>  LIBBPF = $(TOOLS_PATH)/lib/bpf/libbpf.a
> @@ -111,7 +109,7 @@ ibumad-objs := bpf_load.o ibumad_user.o $(TRACE_HELPERS)
>  hbm-objs := bpf_load.o hbm.o $(CGROUP_HELPERS)
>
>  # Tell kbuild to always build the programs
> -always := $(hostprogs-y)
> +always := $(tprogs-y)
>  always += sockex1_kern.o
>  always += sockex2_kern.o
>  always += sockex3_kern.o
> @@ -170,21 +168,6 @@ always += ibumad_kern.o
>  always += hbm_out_kern.o
>  always += hbm_edt_kern.o
>
> -KBUILD_HOSTCFLAGS += -I$(objtree)/usr/include
> -KBUILD_HOSTCFLAGS += -I$(srctree)/tools/lib/bpf/
> -KBUILD_HOSTCFLAGS += -I$(srctree)/tools/testing/selftests/bpf/
> -KBUILD_HOSTCFLAGS += -I$(srctree)/tools/lib/ -I$(srctree)/tools/include
> -KBUILD_HOSTCFLAGS += -I$(srctree)/tools/perf
> -
> -HOSTCFLAGS_bpf_load.o += -Wno-unused-variable
> -
> -KBUILD_HOSTLDLIBS              += $(LIBBPF) -lelf
> -HOSTLDLIBS_tracex4             += -lrt
> -HOSTLDLIBS_trace_output        += -lrt
> -HOSTLDLIBS_map_perf_test       += -lrt
> -HOSTLDLIBS_test_overhead       += -lrt
> -HOSTLDLIBS_xdpsock             += -pthread
> -
>  ifeq ($(ARCH), arm)
>  # Strip all except -D__LINUX_ARM_ARCH__ option needed to handle linux
>  # headers when arm instruction set identification is requested.
> @@ -192,9 +175,27 @@ ARM_ARCH_SELECTOR = $(shell echo "$(KBUILD_CFLAGS) " | \
>                     sed 's/[[:blank:]]/\n/g' | sed '/^-D__LINUX_ARM_ARCH__/!d')
>
>  CLANG_EXTRA_CFLAGS := $(ARM_ARCH_SELECTOR)
> -KBUILD_HOSTCFLAGS := $(ARM_ARCH_SELECTOR)
> +TPROGS_CFLAGS += $(ARM_ARCH_SELECTOR)
>  endif
>
> +TPROGS_LDLIBS := $(KBUILD_HOSTLDLIBS)

Please group TPROGS_LDLIBS definition together with the one below,
there doesn't seem to be a reason to split them this way.

But also, it's kind of weird to use host libraries as cross-compiled
libraries as well. Is that intentional?

> +TPROGS_CFLAGS += $(KBUILD_HOSTCFLAGS) $(HOST_EXTRACFLAGS)

Same here, is it right to use HOSTCFLAGS and HOST_EXTRACFLAGS as a
base for cross-compiled cflags?

> +TPROGS_CFLAGS += -I$(objtree)/usr/include
> +TPROGS_CFLAGS += -I$(srctree)/tools/lib/bpf/
> +TPROGS_CFLAGS += -I$(srctree)/tools/testing/selftests/bpf/
> +TPROGS_CFLAGS += -I$(srctree)/tools/lib/
> +TPROGS_CFLAGS += -I$(srctree)/tools/include
> +TPROGS_CFLAGS += -I$(srctree)/tools/perf
> +
> +TPROGCFLAGS_bpf_load.o += -Wno-unused-variable
> +
> +TPROGS_LDLIBS                  += $(LIBBPF) -lelf
> +TPROGLDLIBS_tracex4            += -lrt
> +TPROGLDLIBS_trace_output       += -lrt
> +TPROGLDLIBS_map_perf_test      += -lrt
> +TPROGLDLIBS_test_overhead      += -lrt
> +TPROGLDLIBS_xdpsock            += -pthread
> +
>  # Allows pointing LLC/CLANG to a LLVM backend with bpf support, redefine on cmdline:
>  #  make samples/bpf/ LLC=~/git/llvm/build/bin/llc CLANG=~/git/llvm/build/bin/clang
>  LLC ?= llc
> @@ -285,6 +286,8 @@ $(obj)/hbm_out_kern.o: $(src)/hbm.h $(src)/hbm_kern.h
>  $(obj)/hbm.o: $(src)/hbm.h
>  $(obj)/hbm_edt_kern.o: $(src)/hbm.h $(src)/hbm_kern.h
>
> +-include $(BPF_SAMPLES_PATH)/Makefile.target
> +
>  # asm/sysreg.h - inline assembly used by it is incompatible with llvm.
>  # But, there is no easy way to fix it, so just exclude it since it is
>  # useless for BPF samples.
> --
> 2.17.1
>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAEf4BzYFoJJk%2BWM51YT7NwCxQpy117DAMmgiJ1YbqaW9UUWpEg%40mail.gmail.com.
