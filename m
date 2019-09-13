Return-Path: <clang-built-linux+bncBDSIZNM7U4BRB6NO6DVQKGQERROVJLY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x13f.google.com (mail-lf1-x13f.google.com [IPv6:2a00:1450:4864:20::13f])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B408B284F
	for <lists+clang-built-linux@lfdr.de>; Sat, 14 Sep 2019 00:26:02 +0200 (CEST)
Received: by mail-lf1-x13f.google.com with SMTP id y27sf1874247lfg.21
        for <lists+clang-built-linux@lfdr.de>; Fri, 13 Sep 2019 15:26:02 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1568413562; cv=pass;
        d=google.com; s=arc-20160816;
        b=qI38pXDNKcbItnzwt1MkuCifIh/QtBDMV3Pw90dSp7ei8xE2Mq9M+KMVbUuJG2FMQl
         tH8dCMpwhC3CHuE+qP58N1zZg0UmirREwF1GmtUHroSeHgOqFeKsHS+gxepZlbQDXesQ
         qfOUujDNCu3w2/NpgOkUtHeg8VRV8yb+TMHs84rR6+jhbmiqRor8M1HREEQbNmAxOLEF
         GY+JDlZ+LpZAi1UpDsB5xC5XLBfxRWlL1c+YEhrboTMaOJ1kL81CbDDhiaA27gxZToMG
         J4WJSP0wpv4IL4bt/GIOrr4suu74dEimblm7LbiCTS/YoFTH27OIJKpkq3o8rFTjFTb1
         gUEw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:mail-followup-to
         :message-id:subject:cc:to:from:date:sender:dkim-signature;
        bh=igdnnJazUP9PkTJP4etkU04qIVU3R9KHbrqUG8PWEEc=;
        b=K5fA5rUTbKX1kZ9DNDjEcMoXgsr6H6BvFbUlIbg0Hz/9vLiJqnbOyZshQ/j5RQA1j3
         JZyTuCsugfDWRi5kwjgXwG1cjC24vNl7kViMLXwHC8Yx+C8h3sLppp20lXyjh//7nU/T
         K3WLU2WNWFDQPFwHh81MoN0Gf346xwZ5RElZ8EucbDpSpypefFjuiQICLIJyWUuklIrp
         gzp/IbvE5bRTiWUSJniH0DkRGqC44vkFRS9ip4kTUeIsNdxC2gTwEBGpuPKGzke5eKzU
         V3QrtkoV33UwFMeHaA4Fykx0T0XBxfgVlJpdZwE16HXzGMVeMq5hJwUnZc8QdouzFnFx
         tY6Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=YwEtvPh3;
       spf=pass (google.com: domain of ivan.khoronzhuk@linaro.org designates 2a00:1450:4864:20::142 as permitted sender) smtp.mailfrom=ivan.khoronzhuk@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:mail-followup-to
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=igdnnJazUP9PkTJP4etkU04qIVU3R9KHbrqUG8PWEEc=;
        b=HGktGX93afhrv+rv7i7bG+ZH8bMiyt8KO10DXoKwdQIBR9D2qRWdGn3GQXJazXrhrm
         PEs0H6qZYz9GA+jJJplpdvsMRnIApLzA9c/z4OaHyu8Cv9P8LSG5RS8wV5gnS+WVADaa
         1y/7JDlkrx7xL2e17TY9FzlMDoZsGwe+9aLkOoukKrjgUu34tYzJUBRGjUgkHXgY3ISK
         zvQJzzLTvj0NePqOhR4ccbwlKdFmGSIsEwR0bdjUiuz71jAT9YZTsrhERP4lcKw443Er
         jPl/BkMHemISYIWKBUAt1mwfcaCta9bamPxkawCDYdmGK30uWzg5mAJbcS1esxPkQ1xa
         NyOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :mail-followup-to:references:mime-version:content-disposition
         :in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=igdnnJazUP9PkTJP4etkU04qIVU3R9KHbrqUG8PWEEc=;
        b=j+dFAijUYZx4GSx/THwTHmBEh684DCR5XDrdRKlaxD2tzq3ceeTIMAmFLPX56/PX5S
         kUMS9D7Sn1eaojhnR/doZZ4CG5CZQfdCGj3d0WEBZps9qOm/jWObGN7WzxgWBuEwTWOe
         oZMyPS6layKmJWRqqY6Lt8SyguO8K1H+k+wxe6gGgPl46JhzYk+mwNbQBmLscEiq9ID4
         DZFYpzUcQGIhEWpUYngy9Bm5IerqHr0wrPqrOI2xcKfMDjpiCOtyOarRlZbUkmhqbuo9
         QwyJCHXbXBHRBX2JIR+X2qq7N5MHiQvtjyAoKJhfDeUQGFXvYdoaJFqFxNuIFZWCX6Zi
         8wmg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXS6ZGQ24L8CusPOcAXM04vabeRkqG/iTDIp2y8SnsNBkkrM4M2
	P1ZBQl9sNE8pjOsxdfK3DXo=
X-Google-Smtp-Source: APXvYqzp3JcwBw+y9Gt6pseau7nZpbX10zeAvOm2hXsO33Alok0kprxT/wEi+xjrUXQKej7PL449KQ==
X-Received: by 2002:a19:f111:: with SMTP id p17mr32432121lfh.187.1568413561963;
        Fri, 13 Sep 2019 15:26:01 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a19:5f55:: with SMTP id a21ls3069166lfj.0.gmail; Fri, 13 Sep
 2019 15:26:01 -0700 (PDT)
X-Received: by 2002:ac2:5611:: with SMTP id v17mr10703570lfd.87.1568413561530;
        Fri, 13 Sep 2019 15:26:01 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1568413561; cv=none;
        d=google.com; s=arc-20160816;
        b=tkfoD3kOFcGVJTzRjtDFQNHPG71kXvQEBAxIBkBGgDHr6LJOe5KZIWBcAHQUesSJny
         IghKaZ4hAPAfc84kLKyXg92THPiiv6f2W9PMDBxZMRs6hGnh0G1f3m65iijRDfmqbrAU
         ndnWfgQH3CwqyE+JhYjWPXG/wGe0E9uqVPqMFgvKTq1ZFjcKSA1eW8bfClhvq2bGSS+7
         lHj2WdVQHkkn98dXlLOXbi4FHCFgxwiTqTVtToV/9Out4F+Hx7e/W6oqiuWnLIoDRQIU
         ckwkKqfhk0KAEVKg7E5MHOwKgh9IGrOMoXoeRdpRv/TBcR7aWc4Fy0+jX1VrAJVIqtiS
         Ug9A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :mail-followup-to:message-id:subject:cc:to:from:date:dkim-signature;
        bh=h/ZsG9TiksBOb3vTyStnE+gAds3+4twuqY6gy9FAaAE=;
        b=ypOVWmgSK3BLi7ZgO+qy1V9eQPhMC0CspulXWx/r3IsQTNuBDeJVepMkVju2i5EVfz
         1kdUdAtEDKrBq7kN98Iq8+BXu3fspXAspr7EAuUZEOs/asSEq44hv0gzHjbW6Hivw7+X
         KLUAs/wCkl+f1+rroyCFnk6kq7QdRPohqfdaFAQZ8RpQAglv3MBASjx2kU0cZmSqWdTY
         yeNL2C16AUA/pCr2LFdtY9J19N9L1Yl7md6UXOXQtLs0jT6AM8vBTMCzYfMui2zY5gKO
         Q6Aoq9CYHtBnXWrW2CMhrxDCscnPOX8aWVxTX8IqopsgJdWBnP3pT9VVRy/fchLJwtXE
         9KMw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=YwEtvPh3;
       spf=pass (google.com: domain of ivan.khoronzhuk@linaro.org designates 2a00:1450:4864:20::142 as permitted sender) smtp.mailfrom=ivan.khoronzhuk@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: from mail-lf1-x142.google.com (mail-lf1-x142.google.com. [2a00:1450:4864:20::142])
        by gmr-mx.google.com with ESMTPS id d3si1651965lfq.1.2019.09.13.15.26.01
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 13 Sep 2019 15:26:01 -0700 (PDT)
Received-SPF: pass (google.com: domain of ivan.khoronzhuk@linaro.org designates 2a00:1450:4864:20::142 as permitted sender) client-ip=2a00:1450:4864:20::142;
Received: by mail-lf1-x142.google.com with SMTP id c195so8381345lfg.9
        for <clang-built-linux@googlegroups.com>; Fri, 13 Sep 2019 15:26:01 -0700 (PDT)
X-Received: by 2002:ac2:5ec1:: with SMTP id d1mr31448979lfq.83.1568413561225;
        Fri, 13 Sep 2019 15:26:01 -0700 (PDT)
Received: from khorivan (168-200-94-178.pool.ukrtel.net. [178.94.200.168])
        by smtp.gmail.com with ESMTPSA id r8sm7173068lfm.71.2019.09.13.15.26.00
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Fri, 13 Sep 2019 15:26:00 -0700 (PDT)
Date: Sat, 14 Sep 2019 01:25:58 +0300
From: Ivan Khoronzhuk <ivan.khoronzhuk@linaro.org>
To: Yonghong Song <yhs@fb.com>
Cc: "ast@kernel.org" <ast@kernel.org>,
	"daniel@iogearbox.net" <daniel@iogearbox.net>,
	"davem@davemloft.net" <davem@davemloft.net>,
	"jakub.kicinski@netronome.com" <jakub.kicinski@netronome.com>,
	"hawk@kernel.org" <hawk@kernel.org>,
	"john.fastabend@gmail.com" <john.fastabend@gmail.com>,
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
	"netdev@vger.kernel.org" <netdev@vger.kernel.org>,
	"bpf@vger.kernel.org" <bpf@vger.kernel.org>,
	"clang-built-linux@googlegroups.com" <clang-built-linux@googlegroups.com>
Subject: Re: [PATCH bpf-next 08/11] samples: bpf: makefile: base progs build
 on makefile.progs
Message-ID: <20190913222552.GE26724@khorivan>
Mail-Followup-To: Yonghong Song <yhs@fb.com>,
	"ast@kernel.org" <ast@kernel.org>,
	"daniel@iogearbox.net" <daniel@iogearbox.net>,
	"davem@davemloft.net" <davem@davemloft.net>,
	"jakub.kicinski@netronome.com" <jakub.kicinski@netronome.com>,
	"hawk@kernel.org" <hawk@kernel.org>,
	"john.fastabend@gmail.com" <john.fastabend@gmail.com>,
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
	"netdev@vger.kernel.org" <netdev@vger.kernel.org>,
	"bpf@vger.kernel.org" <bpf@vger.kernel.org>,
	"clang-built-linux@googlegroups.com" <clang-built-linux@googlegroups.com>
References: <20190910103830.20794-1-ivan.khoronzhuk@linaro.org>
 <20190910103830.20794-9-ivan.khoronzhuk@linaro.org>
 <dd4cd83f-7e35-ad07-8a53-d34c13c074a5@fb.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Disposition: inline
In-Reply-To: <dd4cd83f-7e35-ad07-8a53-d34c13c074a5@fb.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Original-Sender: ivan.khoronzhuk@linaro.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b=YwEtvPh3;       spf=pass
 (google.com: domain of ivan.khoronzhuk@linaro.org designates
 2a00:1450:4864:20::142 as permitted sender) smtp.mailfrom=ivan.khoronzhuk@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
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

On Fri, Sep 13, 2019 at 09:41:25PM +0000, Yonghong Song wrote:
>
>
>On 9/10/19 11:38 AM, Ivan Khoronzhuk wrote:
>> The main reason for that - HOSTCC and CC have different aims.
>> It was tested for arm cross compilation, based on linaro toolchain,
>> but should work for others.
>>
>> In order to split cross compilation (CC) with host build (HOSTCC),
>> lets base bpf samples on Makefile.progs. It allows to cross-compile
>> samples/bpf progs with CC while auxialry tools running on host built
>> with HOSTCC.
>
>I got a compilation failure with the following error
>
>$ make samples/bpf/
>   ...
>   LD  samples/bpf/hbm
>   CC      samples/bpf/syscall_nrs.s
>gcc: error: -pg and -fomit-frame-pointer are incompatible
>make[2]: *** [samples/bpf/syscall_nrs.s] Error 1
>make[1]: *** [samples/bpf/] Error 2
>make: *** [sub-make] Error 2
>
>Could you take a look?
Yes, sure.
Ilias also observer this, interesting that on my setup for cross and
native build on arm and arm64 doesn't have this error. Now I see log
and know how to proceed, I will fix it, maybe by using another var
for cflags.

Despite of it, just to be sure in order to avoid smth like this at least
for native build, I will add one more patch like:

"
    samples: bpf: makefile: don't use host cflags when cross compile

    While compile natively, the hosts cflags and ldflags are equal to ones
    used from HOSTCFLAGS and HOSTLDFLAGS. When cross compiling it should
    have own, used for target arch. While verification, for arm, arm64 and
    x86_64 the following flags were used alsways:

    -Wall
    -O2
    -fomit-frame-pointer
    -Wmissing-prototypes
    -Wstrict-prototypes

    So, add them as they were verified and used before adding
    Makefile.progs, but anyway limit it only for cross compile options as
    for host can be some configurations when another options can be used,
    So, for host arch samples left all as is, it allows to avoid potential
    option mistmatches for existent environments.
"

+ifdef CROSS_COMPILE
+ccflags-y += -Wall
+ccflags-y += -O2
+ccflags-y += -fomit-frame-pointer
+ccflags-y += -Wmissing-prototypes
+ccflags-y += -Wstrict-prototypes
+else
+ccflags-y += $(KBUILD_HOSTCFLAGS) $(HOST_EXTRACFLAGS)
+PROGS_LDLIBS := $(KBUILD_HOSTLDLIBS)
+endif

>
>>
>> Signed-off-by: Ivan Khoronzhuk <ivan.khoronzhuk@linaro.org>
>> ---
>>   samples/bpf/Makefile | 138 +++++++++++++++++++++++--------------------
>>   1 file changed, 73 insertions(+), 65 deletions(-)
>>
>> diff --git a/samples/bpf/Makefile b/samples/bpf/Makefile
>> index f5dbf3d0c5f3..625a71f2e9d2 100644
>> --- a/samples/bpf/Makefile
>> +++ b/samples/bpf/Makefile
>> @@ -4,55 +4,53 @@ BPF_SAMPLES_PATH ?= $(abspath $(srctree)/$(src))
>>   TOOLS_PATH := $(BPF_SAMPLES_PATH)/../../tools
>>
>>   # List of programs to build
>> -hostprogs-y := test_lru_dist
>> -hostprogs-y += sock_example
>> -hostprogs-y += fds_example
>> -hostprogs-y += sockex1
>> -hostprogs-y += sockex2
>> -hostprogs-y += sockex3
>> -hostprogs-y += tracex1
>> -hostprogs-y += tracex2
>> -hostprogs-y += tracex3
>> -hostprogs-y += tracex4
>> -hostprogs-y += tracex5
>> -hostprogs-y += tracex6
>> -hostprogs-y += tracex7
>> -hostprogs-y += test_probe_write_user
>> -hostprogs-y += trace_output
>> -hostprogs-y += lathist
>> -hostprogs-y += offwaketime
>> -hostprogs-y += spintest
>> -hostprogs-y += map_perf_test
>> -hostprogs-y += test_overhead
>> -hostprogs-y += test_cgrp2_array_pin
>> -hostprogs-y += test_cgrp2_attach
>> -hostprogs-y += test_cgrp2_sock
>> -hostprogs-y += test_cgrp2_sock2
>> -hostprogs-y += xdp1
>> -hostprogs-y += xdp2
>> -hostprogs-y += xdp_router_ipv4
>> -hostprogs-y += test_current_task_under_cgroup
>> -hostprogs-y += trace_event
>> -hostprogs-y += sampleip
>> -hostprogs-y += tc_l2_redirect
>> -hostprogs-y += lwt_len_hist
>> -hostprogs-y += xdp_tx_iptunnel
>> -hostprogs-y += test_map_in_map
>> -hostprogs-y += per_socket_stats_example
>> -hostprogs-y += xdp_redirect
>> -hostprogs-y += xdp_redirect_map
>> -hostprogs-y += xdp_redirect_cpu
>> -hostprogs-y += xdp_monitor
>> -hostprogs-y += xdp_rxq_info
>> -hostprogs-y += syscall_tp
>> -hostprogs-y += cpustat
>> -hostprogs-y += xdp_adjust_tail
>> -hostprogs-y += xdpsock
>> -hostprogs-y += xdp_fwd
>> -hostprogs-y += task_fd_query
>> -hostprogs-y += xdp_sample_pkts
>> -hostprogs-y += ibumad
>> -hostprogs-y += hbm
>> +progs-y := test_lru_dist
>> +progs-y += sock_example
>> +progs-y += fds_example
>> +progs-y += sockex1
>> +progs-y += sockex2
>> +progs-y += sockex3
>> +progs-y += tracex1
>> +progs-y += tracex2
>> +progs-y += tracex3
>> +progs-y += tracex4
>> +progs-y += tracex5
>> +progs-y += tracex6
>> +progs-y += tracex7
>> +progs-y += test_probe_write_user
>> +progs-y += trace_output
>> +progs-y += lathist
>> +progs-y += offwaketime
>> +progs-y += spintest
>> +progs-y += map_perf_test
>> +progs-y += test_overhead
>> +progs-y += test_cgrp2_array_pin
>> +progs-y += test_cgrp2_attach
>> +progs-y += test_cgrp2_sock
>> +progs-y += test_cgrp2_sock2
>> +progs-y += xdp1
>> +progs-y += xdp2
>> +progs-y += xdp_router_ipv4
>> +progs-y += test_current_task_under_cgroup
>> +progs-y += trace_event
>> +progs-y += sampleip
>> +progs-y += tc_l2_redirect
>> +progs-y += lwt_len_hist
>> +progs-y += xdp_tx_iptunnel
>> +progs-y += test_map_in_map
>> +progs-y += xdp_redirect_map
>> +progs-y += xdp_redirect_cpu
>> +progs-y += xdp_monitor
>> +progs-y += xdp_rxq_info
>> +progs-y += syscall_tp
>> +progs-y += cpustat
>> +progs-y += xdp_adjust_tail
>> +progs-y += xdpsock
>> +progs-y += xdp_fwd
>> +progs-y += task_fd_query
>> +progs-y += xdp_sample_pkts
>> +progs-y += ibumad
>> +progs-y += hbm
>>
>>   # Libbpf dependencies
>>   LIBBPF = $(TOOLS_PATH)/lib/bpf/libbpf.a
>> @@ -111,7 +109,7 @@ ibumad-objs := bpf_load.o ibumad_user.o $(TRACE_HELPERS)
>>   hbm-objs := bpf_load.o hbm.o $(CGROUP_HELPERS)
>>
>>   # Tell kbuild to always build the programs
>> -always := $(hostprogs-y)
>> +always := $(progs-y)
>>   always += sockex1_kern.o
>>   always += sockex2_kern.o
>>   always += sockex3_kern.o
>> @@ -170,21 +168,6 @@ always += ibumad_kern.o
>>   always += hbm_out_kern.o
>>   always += hbm_edt_kern.o
>>
>> -KBUILD_HOSTCFLAGS += -I$(objtree)/usr/include
>> -KBUILD_HOSTCFLAGS += -I$(srctree)/tools/lib/bpf/
>> -KBUILD_HOSTCFLAGS += -I$(srctree)/tools/testing/selftests/bpf/
>> -KBUILD_HOSTCFLAGS += -I$(srctree)/tools/lib/ -I$(srctree)/tools/include
>> -KBUILD_HOSTCFLAGS += -I$(srctree)/tools/perf
>> -
>> -HOSTCFLAGS_bpf_load.o += -Wno-unused-variable
>> -
>> -KBUILD_HOSTLDLIBS		+= $(LIBBPF) -lelf
>> -HOSTLDLIBS_tracex4		+= -lrt
>> -HOSTLDLIBS_trace_output	+= -lrt
>> -HOSTLDLIBS_map_perf_test	+= -lrt
>> -HOSTLDLIBS_test_overhead	+= -lrt
>> -HOSTLDLIBS_xdpsock		+= -pthread
>> -
>>   # Strip all expet -D options needed to handle linux headers
>>   # for arm it's __LINUX_ARM_ARCH__ and potentially others fork vars
>>   D_OPTIONS = $(shell echo "$(KBUILD_CFLAGS) " | sed 's/[[:blank:]]/\n/g' | \
>> @@ -194,6 +177,29 @@ ifeq ($(ARCH), arm)
>>   CLANG_EXTRA_CFLAGS := $(D_OPTIONS)
>>   endif
>>
>> +ccflags-y += -I$(objtree)/usr/include
>> +ccflags-y += -I$(srctree)/tools/lib/bpf/
>> +ccflags-y += -I$(srctree)/tools/testing/selftests/bpf/
>> +ccflags-y += -I$(srctree)/tools/lib/
>> +ccflags-y += -I$(srctree)/tools/include
>> +ccflags-y += -I$(srctree)/tools/perf
>> +ccflags-y += $(D_OPTIONS)
>> +ccflags-y += -Wall
>> +ccflags-y += -fomit-frame-pointer
>> +ccflags-y += -Wmissing-prototypes
>> +ccflags-y += -Wstrict-prototypes
>> +
>> +PROGS_CFLAGS := $(ccflags-y)
>> +
>> +PROGCFLAGS_bpf_load.o += -Wno-unused-variable
>> +
>> +PROGS_LDLIBS			:= $(LIBBPF) -lelf
>> +PROGLDLIBS_tracex4		+= -lrt
>> +PROGLDLIBS_trace_output		+= -lrt
>> +PROGLDLIBS_map_perf_test	+= -lrt
>> +PROGLDLIBS_test_overhead	+= -lrt
>> +PROGLDLIBS_xdpsock		+= -pthread
>> +
>>   # Allows pointing LLC/CLANG to a LLVM backend with bpf support, redefine on cmdline:
>>   #  make samples/bpf/ LLC=~/git/llvm/build/bin/llc CLANG=~/git/llvm/build/bin/clang
>>   LLC ?= llc
>> @@ -284,6 +290,8 @@ $(obj)/hbm_out_kern.o: $(src)/hbm.h $(src)/hbm_kern.h
>>   $(obj)/hbm.o: $(src)/hbm.h
>>   $(obj)/hbm_edt_kern.o: $(src)/hbm.h $(src)/hbm_kern.h
>>
>> +-include $(BPF_SAMPLES_PATH)/Makefile.prog
>> +
>>   # asm/sysreg.h - inline assembly used by it is incompatible with llvm.
>>   # But, there is no easy way to fix it, so just exclude it since it is
>>   # useless for BPF samples.
>>

-- 
Regards,
Ivan Khoronzhuk

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190913222552.GE26724%40khorivan.
