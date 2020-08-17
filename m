Return-Path: <clang-built-linux+bncBCMKZ3U34ENBBA4Q5H4QKGQEQ5JJBWY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x940.google.com (mail-ua1-x940.google.com [IPv6:2607:f8b0:4864:20::940])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F0AD2461D4
	for <lists+clang-built-linux@lfdr.de>; Mon, 17 Aug 2020 11:04:05 +0200 (CEST)
Received: by mail-ua1-x940.google.com with SMTP id u66sf553526uau.17
        for <lists+clang-built-linux@lfdr.de>; Mon, 17 Aug 2020 02:04:05 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1597655044; cv=pass;
        d=google.com; s=arc-20160816;
        b=Ep615MUO9L6mDy83B/pGPxlidApHaxavGOwdSYBp2i9/zlt6Z/yoIhwNJwiv5zJOzB
         KZegyAMWbenu6eZm52vudD8kHtWSUDFJzidpUN6o1i5nLmIr2NuvkeFu+aWiMicdUyUm
         SCok4jJzCQ6oMzvLEIUY/YapYjgQdtyBy61LFR/hZlCuo7O6U2sPF8giIL93fyN8FdhN
         Tpg61m7nwe7zgRt6hpV1MJ/AIWTEpyeAnpvz3nvhmZWNza9dypGRZPPtPpIbwW0bxtP4
         HNQ4aJZJVDhTXpXDPBxeK/4YhXoMShxSWl2rrZdFpVQx2xOHlMvXaSLqpAS9XPtWHnj3
         giGQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=p2ffefEHktpJQFp/k+4LxANg8c8uPkoGFQAwz1VXGd0=;
        b=ky5uzcuvQ52KqaQk8R3f8WWgNPE4LbGmmUEyD/W3hDTA/3ofBT7mXajg7Gie7WR13p
         DmRAvXpjWdxvtYeHqVBzQvTjc7VQ3Rt3qAL62Jx5++lS1kSPHSqWXyAtWRsTI+dRB9Tc
         7tnV/4m2YAClNgECcg7aLbIkcQkMjLYrMqmpuNljmL/ZYeICjXk/80Aqtoz/2gXfkgVV
         SgTloVP8RTyceAuPGdQAzP3S8mlONrAUEYjnVP6pW/sIMdBo26JYOLlvWfLFWrExyT0+
         08RxOKLJm87xiI+CxmitaF/v1jsIhWzKcGBO04PzvanzKomXLNtngs7+UO56zRP6nEsK
         fdKQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lukasz.luba@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=lukasz.luba@arm.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=p2ffefEHktpJQFp/k+4LxANg8c8uPkoGFQAwz1VXGd0=;
        b=lwj2ZlXhJRNA4hd4ZA3QT9B8KQfQ2pVWVKDrAIfjfRtRkMOB6XqZT0bB+bxljXc1eH
         oVtDJZZ8eGkIgFq7+OsbyyZ48ZEy6okrOEckyj/+n4CHhy2kgWsvKabaq6fZdzKFWkqD
         AXTB9l2cG/iS1TqopqglSFdwGF/vSjJ2qQ0W3lUvayU5AAZsQwKrsdMxi9gpBSIetdE2
         krPka12Cw5mxtpaN9oFe0wwmWxDfSpKjPt1xMKBRliHrF107BvD34eyQDsktYygwswIC
         JtzFosXGCSSuRa6v5txc1pVP3Kuhe+mCCqH3hl32+WCmJlCNh16YGJ5+elW0ThVflB1m
         fL1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=p2ffefEHktpJQFp/k+4LxANg8c8uPkoGFQAwz1VXGd0=;
        b=ir9UDRhrNP8B0Maywp4VZzWOCZ5jIyf3djSBMekhiEwdjCGfS+smR1+eOD1qd3hFQk
         kASITuxzU3t7OBek4yvwt+I9bmJtkgdZlUUuDj3apBwAv1Jv3mJbAegdpu05I4ewA094
         qj7tClr3IoW0E0DQVz/Aplg1LPCO/mOfpcuwc8PVQD1DVZ84FevYnqv2wV2rmYsUhmUX
         j871M9B7RzNBTm27nIqXaoJURK3GRNDYHm5oRLCMU9XIObqtDareIvVOX3gNu3pDWhQj
         Qv4aphcoDXj81LxEOxlHg13zq19E0ItsrUPAgxQUkMKtWBV8MRQ7jH9u4mSwUKEFm+Ee
         I11g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532mexJl4hF1CDXhFPb929GSP7ewRtENONebtlE2sZ3qy9gY+Sw7
	QXXyMXwTUF2giNW7kJhF9jM=
X-Google-Smtp-Source: ABdhPJzwuSv81atjJ2Eqlc205FrLt9zeLPRDyVme77/egFwzYkFscJU7Qqm6oYgVZYcUdxkrefITow==
X-Received: by 2002:ab0:164f:: with SMTP id l15mr6842030uae.112.1597655044142;
        Mon, 17 Aug 2020 02:04:04 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:e40e:: with SMTP id d14ls1771731vsf.5.gmail; Mon, 17 Aug
 2020 02:04:03 -0700 (PDT)
X-Received: by 2002:a67:7782:: with SMTP id s124mr7647651vsc.112.1597655043618;
        Mon, 17 Aug 2020 02:04:03 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1597655043; cv=none;
        d=google.com; s=arc-20160816;
        b=NMnWx0DIns/yHAAG86cGgUQXzUOp93t9Isiiu4fQWq9lZJUwRS22vu1nECaWV+cebS
         tUVnMsIyKT8wB0VFdjt4xadhQugx0JUo+kQuPaRU+ZJoODV86WkgK8OKg1IbLpWVjSar
         skoycdkcHFQUTBx50oZ5Z3dDgJvEF9EEBPFuhKc9JmXiO1iat/FCY+A1Qx7THOIqAt4B
         blviOhWr7iMSzuFZj+xkv2FXzJfb60nCGJ6+vGlKpXTC9tpp7dr28Vaz/tw30JH8S7pL
         Bqw1hRYGzUOkOdHvD63K4wASpFHt1o1Grc/QMP7N/Nq+7vDhLB2puMPv7QRM6e/JrfOy
         Ueew==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject;
        bh=sHFUWLncdSBxP+Le51i8dCFOhdpryhNbZYIU2kyQ9GY=;
        b=BcF6vu8aMeFc0bKXMszLWtpc0owFvbMj8iEY+2OT86QDTqPxjrZSK2p1KEN7DbFXL0
         qkZXvH/AXxgreN6H5+5fiTzcIBBOyFMZFvelXyCVxNvKb10xoRTBlxryYaSbL6z9n+v4
         OKDv23Lpoqkgq9mKRn/NkJbxVMAhuVtuY6da9pD4lFEiKTjHerk+q4bKGEymZ10NPzjq
         leoSV0NkbqehiaYw4LY7hE1DnVajO6Y+2p52te5SFFnSRlHJyKHIymlcXJl8IOBTSoui
         2zuZHjpM7eJ49rMKPEbl45zELG52SW28YsliP9S/gRvcammwMIs84e7E8vPYYDMZBxUR
         h9xQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lukasz.luba@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=lukasz.luba@arm.com
Received: from foss.arm.com (foss.arm.com. [217.140.110.172])
        by gmr-mx.google.com with ESMTP id q1si1229564ual.0.2020.08.17.02.04.03
        for <clang-built-linux@googlegroups.com>;
        Mon, 17 Aug 2020 02:04:03 -0700 (PDT)
Received-SPF: pass (google.com: domain of lukasz.luba@arm.com designates 217.140.110.172 as permitted sender) client-ip=217.140.110.172;
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id A72C631B;
	Mon, 17 Aug 2020 02:04:02 -0700 (PDT)
Received: from [10.37.12.68] (unknown [10.37.12.68])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 741203F6CF;
	Mon, 17 Aug 2020 02:04:01 -0700 (PDT)
Subject: Re: include/linux/sched/topology.h:237:9: error: implicit declaration
 of function 'cpu_logical_map'
To: kernel test robot <lkp@intel.com>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
 linux-kernel@vger.kernel.org, "Rafael J. Wysocki" <rjw@rjwysocki.net>
References: <202008170623.tYjq1wEa%lkp@intel.com>
From: Lukasz Luba <lukasz.luba@arm.com>
Message-ID: <1bc8f16a-004b-0352-6675-2c1edeeb9823@arm.com>
Date: Mon, 17 Aug 2020 10:03:59 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <202008170623.tYjq1wEa%lkp@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
X-Original-Sender: lukasz.luba@arm.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lukasz.luba@arm.com designates 217.140.110.172 as
 permitted sender) smtp.mailfrom=lukasz.luba@arm.com
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



On 8/16/20 11:43 PM, kernel test robot wrote:
> Hi Lukasz,
> 
> FYI, the error/warning still remains.
> 
> tree:   https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git master
> head:   9123e3a74ec7b934a4a099e98af6a61c2f80bbf5
> commit: 1bc138c622959979eb547be2d3bbc6442a5c80b0 PM / EM: add support for other devices than CPUs in Energy Model
> date:   8 weeks ago
> config: mips-randconfig-r001-20200817 (attached as .config)
> compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project ab9fc8bae805c785066779e76e7846aabad5609e)
> reproduce (this is a W=1 build):
>          wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>          chmod +x ~/bin/make.cross
>          # install mips cross compiling tool for clang build
>          # apt-get install binutils-mips-linux-gnu
>          git checkout 1bc138c622959979eb547be2d3bbc6442a5c80b0
>          # save the attached .config to linux build tree
>          COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=mips
> 
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kernel test robot <lkp@intel.com>
> 
> All errors (new ones prefixed by >>):
> 
>     arch/mips/include/asm/sync.h:147:34: note: expanded from macro '__SYNC_loongson3_war'
>     # define __SYNC_loongson3_war   (1 << 31)
>                                        ^
>     In file included from arch/mips/kernel/asm-offsets.c:12:
>     In file included from include/linux/compat.h:10:
>     In file included from include/linux/time.h:74:
>     In file included from include/linux/time32.h:13:
>     In file included from include/linux/timex.h:65:
>     In file included from arch/mips/include/asm/timex.h:19:
>     In file included from arch/mips/include/asm/cpu-type.h:12:
>     In file included from include/linux/smp.h:15:
>     include/linux/llist.h:222:9: warning: converting the result of '<<' to a boolean always evaluates to true [-Wtautological-constant-compare]
>             return xchg(&head->first, NULL);
>                    ^
>     arch/mips/include/asm/cmpxchg.h:102:7: note: expanded from macro 'xchg'
>             if (!__SYNC_loongson3_war)                                      \
>                  ^
>     arch/mips/include/asm/sync.h:147:34: note: expanded from macro '__SYNC_loongson3_war'
>     # define __SYNC_loongson3_war   (1 << 31)
>                                        ^
>     In file included from arch/mips/kernel/asm-offsets.c:12:
>     In file included from include/linux/compat.h:15:
>     In file included from include/linux/socket.h:8:
>     In file included from include/linux/uio.h:10:
>     In file included from include/crypto/hash.h:11:
>     In file included from include/linux/crypto.h:19:
>     In file included from include/linux/slab.h:15:
>     In file included from include/linux/gfp.h:9:
>     include/linux/topology.h:119:9: error: implicit declaration of function 'cpu_logical_map' [-Werror,-Wimplicit-function-declaration]
>             return cpu_to_node(raw_smp_processor_id());
>                    ^
>     arch/mips/include/asm/mach-loongson64/topology.h:7:27: note: expanded from macro 'cpu_to_node'
>     #define cpu_to_node(cpu)        (cpu_logical_map(cpu) >> 2)


It looks like the energy_model.h causes this include on mips then some
header is missing (probably smp.h from mips/asm).
I will try to reproduce it and propose a fix.


>                                      ^
>     In file included from arch/mips/kernel/asm-offsets.c:12:
>     In file included from include/linux/compat.h:15:
>     In file included from include/linux/socket.h:8:
>     In file included from include/linux/uio.h:10:
>     In file included from include/crypto/hash.h:11:
>     In file included from include/linux/crypto.h:19:
>     In file included from include/linux/slab.h:15:
>     In file included from include/linux/gfp.h:9:
>     include/linux/topology.h:176:9: error: implicit declaration of function 'cpu_logical_map' [-Werror,-Wimplicit-function-declaration]
>             return cpu_to_node(cpu);
>                    ^
>     arch/mips/include/asm/mach-loongson64/topology.h:7:27: note: expanded from macro 'cpu_to_node'
>     #define cpu_to_node(cpu)        (cpu_logical_map(cpu) >> 2)
>                                      ^
>     In file included from arch/mips/kernel/asm-offsets.c:12:
>     In file included from include/linux/compat.h:15:
>     In file included from include/linux/socket.h:8:
>     In file included from include/linux/uio.h:10:
>     In file included from include/crypto/hash.h:11:
>     In file included from include/linux/crypto.h:19:
>     In file included from include/linux/slab.h:15:
>     In file included from include/linux/gfp.h:9:
>     include/linux/topology.h:210:25: error: implicit declaration of function 'cpu_logical_map' [-Werror,-Wimplicit-function-declaration]
>             return cpumask_of_node(cpu_to_node(cpu));
>                                    ^
>     arch/mips/include/asm/mach-loongson64/topology.h:7:27: note: expanded from macro 'cpu_to_node'
>     #define cpu_to_node(cpu)        (cpu_logical_map(cpu) >> 2)
>                                      ^
>     In file included from arch/mips/kernel/asm-offsets.c:15:
>     In file included from include/linux/mm.h:32:
>     In file included from include/linux/pgtable.h:6:
>     arch/mips/include/asm/pgtable.h:210:3: warning: converting the result of '<<' to a boolean always evaluates to true [-Wtautological-constant-compare]
>                     cmpxchg64(&buddy->pte, 0, _PAGE_GLOBAL);
>                     ^
>     arch/mips/include/asm/cmpxchg.h:220:2: note: expanded from macro 'cmpxchg64'
>             cmpxchg((ptr), (o), (n));                                       \
>             ^
>     arch/mips/include/asm/cmpxchg.h:194:7: note: expanded from macro 'cmpxchg'
>             if (!__SYNC_loongson3_war)                                      \
>                  ^
>     arch/mips/include/asm/sync.h:147:34: note: expanded from macro '__SYNC_loongson3_war'
>     # define __SYNC_loongson3_war   (1 << 31)
>                                        ^
>     In file included from arch/mips/kernel/asm-offsets.c:15:
>     In file included from include/linux/mm.h:32:
>     In file included from include/linux/pgtable.h:6:
>     arch/mips/include/asm/pgtable.h:210:3: warning: converting the result of '<<' to a boolean always evaluates to true [-Wtautological-constant-compare]
>     arch/mips/include/asm/cmpxchg.h:220:2: note: expanded from macro 'cmpxchg64'
>             cmpxchg((ptr), (o), (n));                                       \
>             ^
>     arch/mips/include/asm/cmpxchg.h:204:7: note: expanded from macro 'cmpxchg'
>             if (!__SYNC_loongson3_war)                                      \
>                  ^
>     arch/mips/include/asm/sync.h:147:34: note: expanded from macro '__SYNC_loongson3_war'
>     # define __SYNC_loongson3_war   (1 << 31)
>                                        ^
>     In file included from arch/mips/kernel/asm-offsets.c:17:
>     In file included from include/linux/suspend.h:5:
>     In file included from include/linux/swap.h:9:
>     In file included from include/linux/memcontrol.h:22:
>     In file included from include/linux/writeback.h:14:
>     In file included from include/linux/blk-cgroup.h:23:
>     In file included from include/linux/blkdev.h:11:
>     In file included from include/linux/genhd.h:36:
>     In file included from include/linux/device.h:16:
>     In file included from include/linux/energy_model.h:10:
>>> include/linux/sched/topology.h:237:9: error: implicit declaration of function 'cpu_logical_map' [-Werror,-Wimplicit-function-declaration]
>             return cpu_to_node(task_cpu(p));
>                    ^
>     arch/mips/include/asm/mach-loongson64/topology.h:7:27: note: expanded from macro 'cpu_to_node'
>     #define cpu_to_node(cpu)        (cpu_logical_map(cpu) >> 2)
>                                      ^
>     In file included from arch/mips/kernel/asm-offsets.c:24:
>     include/linux/kvm_host.h:332:9: warning: converting the result of '<<' to a boolean always evaluates to true [-Wtautological-constant-compare]
>             return cmpxchg(&vcpu->mode, IN_GUEST_MODE, EXITING_GUEST_MODE);
>                    ^
>     arch/mips/include/asm/cmpxchg.h:194:7: note: expanded from macro 'cmpxchg'
>             if (!__SYNC_loongson3_war)                                      \
>                  ^
>     arch/mips/include/asm/sync.h:147:34: note: expanded from macro '__SYNC_loongson3_war'
>     # define __SYNC_loongson3_war   (1 << 31)
>                                        ^
>     In file included from arch/mips/kernel/asm-offsets.c:24:
>     include/linux/kvm_host.h:332:9: warning: converting the result of '<<' to a boolean always evaluates to true [-Wtautological-constant-compare]
>     arch/mips/include/asm/cmpxchg.h:204:7: note: expanded from macro 'cmpxchg'
>             if (!__SYNC_loongson3_war)                                      \
>                  ^
>     arch/mips/include/asm/sync.h:147:34: note: expanded from macro '__SYNC_loongson3_war'
>     # define __SYNC_loongson3_war   (1 << 31)
>                                        ^
>     arch/mips/kernel/asm-offsets.c:26:6: warning: no previous prototype for function 'output_ptreg_defines' [-Wmissing-prototypes]
>     void output_ptreg_defines(void)
>          ^
>     arch/mips/kernel/asm-offsets.c:26:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
>     void output_ptreg_defines(void)
>     ^
>     static
>     arch/mips/kernel/asm-offsets.c:78:6: warning: no previous prototype for function 'output_task_defines' [-Wmissing-prototypes]
>     void output_task_defines(void)
>          ^
>     arch/mips/kernel/asm-offsets.c:78:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
>     void output_task_defines(void)
>     ^
>     static
>     arch/mips/kernel/asm-offsets.c:93:6: warning: no previous prototype for function 'output_thread_info_defines' [-Wmissing-prototypes]
>     void output_thread_info_defines(void)
>          ^
>     arch/mips/kernel/asm-offsets.c:93:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
>     void output_thread_info_defines(void)
>     ^
>     static
>     arch/mips/kernel/asm-offsets.c:110:6: warning: no previous prototype for function 'output_thread_defines' [-Wmissing-prototypes]
>     void output_thread_defines(void)
>          ^
>     arch/mips/kernel/asm-offsets.c:110:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
>     void output_thread_defines(void)
>     ^
>     static
>     arch/mips/kernel/asm-offsets.c:181:6: warning: no previous prototype for function 'output_mm_defines' [-Wmissing-prototypes]
>     void output_mm_defines(void)
>          ^
>     arch/mips/kernel/asm-offsets.c:181:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
>     void output_mm_defines(void)
>     ^
>     static
>     arch/mips/kernel/asm-offsets.c:242:6: warning: no previous prototype for function 'output_sc_defines' [-Wmissing-prototypes]
>     void output_sc_defines(void)
>          ^
>     arch/mips/kernel/asm-offsets.c:242:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
>     void output_sc_defines(void)
>     ^
>     static
>     arch/mips/kernel/asm-offsets.c:255:6: warning: no previous prototype for function 'output_signal_defined' [-Wmissing-prototypes]
>     void output_signal_defined(void)
>          ^
>     arch/mips/kernel/asm-offsets.c:255:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
>     void output_signal_defined(void)
>     ^
>     static
>     arch/mips/kernel/asm-offsets.c:322:6: warning: no previous prototype for function 'output_pbe_defines' [-Wmissing-prototypes]
>     void output_pbe_defines(void)
>          ^
>     arch/mips/kernel/asm-offsets.c:322:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
>     void output_pbe_defines(void)
>     ^
>     static
>     22 warnings and 4 errors generated.
>     make[2]: *** [scripts/Makefile.build:114: arch/mips/kernel/asm-offsets.s] Error 1
>     make[2]: Target 'missing-syscalls' not remade because of errors.
>     make[1]: *** [arch/mips/Makefile:397: archprepare] Error 2
>     make[1]: Target 'prepare' not remade because of errors.
>     make: *** [Makefile:185: __sub-make] Error 2
>     make: Target 'prepare' not remade because of errors.
> 
> # https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=1bc138c622959979eb547be2d3bbc6442a5c80b0
> git remote add linus https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git
> git fetch --no-tags linus master
> git checkout 1bc138c622959979eb547be2d3bbc6442a5c80b0
> vim +/cpu_logical_map +237 include/linux/sched/topology.h
> 
> 36a0df85d2e85e1 Thara Gopinath 2020-02-21  234
> ee6a3d19f15b9b1 Ingo Molnar    2017-02-06  235  static inline int task_node(const struct task_struct *p)
> ee6a3d19f15b9b1 Ingo Molnar    2017-02-06  236  {
> ee6a3d19f15b9b1 Ingo Molnar    2017-02-06 @237  	return cpu_to_node(task_cpu(p));
> ee6a3d19f15b9b1 Ingo Molnar    2017-02-06  238  }
> ee6a3d19f15b9b1 Ingo Molnar    2017-02-06  239
> 
> :::::: The code at line 237 was first introduced by commit
> :::::: ee6a3d19f15b9b10075481088b8d4537f286d7b4 sched/headers: Remove the <linux/topology.h> include from <linux/sched.h>
> 
> :::::: TO: Ingo Molnar <mingo@kernel.org>
> :::::: CC: Ingo Molnar <mingo@kernel.org>
> 
> ---
> 0-DAY CI Kernel Test Service, Intel Corporation
> https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/1bc8f16a-004b-0352-6675-2c1edeeb9823%40arm.com.
