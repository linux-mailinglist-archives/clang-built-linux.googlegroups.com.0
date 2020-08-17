Return-Path: <clang-built-linux+bncBCMKZ3U34ENBBE4H5L4QKGQE5ZQBLBY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103a.google.com (mail-pj1-x103a.google.com [IPv6:2607:f8b0:4864:20::103a])
	by mail.lfdr.de (Postfix) with ESMTPS id 480D9246740
	for <lists+clang-built-linux@lfdr.de>; Mon, 17 Aug 2020 15:18:13 +0200 (CEST)
Received: by mail-pj1-x103a.google.com with SMTP id t13sf10888736pjd.0
        for <lists+clang-built-linux@lfdr.de>; Mon, 17 Aug 2020 06:18:13 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1597670292; cv=pass;
        d=google.com; s=arc-20160816;
        b=TrJsKKfgDMktqJ6EZsGNDpBGcBTGGVhUvwHh9bTBERns5glRsipsFJBziZ4DNCfPcc
         WaFADFOb9PeFt5Q67F5SSmLlT8doCno9nAhnOM2UOnnUs82V0kmONQQW1fpAuekCyNJ/
         U4fvIXvpm3mta1mh1gfzqcv6b/POwv0rxkFl8AhNgAXnP0tK81uThXJ/c2jPmsURNV7k
         JXyy2YHxzwhhb+jzCzzw4VPxpm4nUTQnLbF+wOuczWg5t5ZI3rDtQYKD7HGRJqXMAhMw
         JitVuwT3H7D3Bn1SKVlf89ioCK0ZXmqt3B016GalaMxYfHh+uAPSTnMObFrzqi8slrNg
         R7YQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :content-language:in-reply-to:mime-version:user-agent:date
         :message-id:references:cc:to:from:subject:sender:dkim-signature;
        bh=43owaZVP/Dyx1Wbvr4ObrsjGnkYKuork107Au2edPsI=;
        b=c4qwn2DhvzFhCIpcdz/d7KV2ETp4wob6Rpo4l1Crcl/mY1v1bRPrrVBtlT4ULKTu9O
         BIW9pboumGB9nvdJusuU7GbApLRImi58PgggHqh4q7BTCj3cMumsKQCbpsstejGIQhhv
         qB8UE4Hs/Lt5cITbFjxLDIshyY1R1eIJwfCSeHGypNeAlbEMZ/SCyVDyyiIqd2qCCuAW
         c+j5rUkkOtXwl6Nsv8YFwmW1a5vtGOtBuE8sygAfh0ryth13OfvuVZxdSa6Mz6bAi1eS
         ciHK/bDTUlT/qUNLCr6KLE2XDSZmR3hZauXJlKlZ2yCgCk8W+wtE/KhfXhebO1Q2T+1Y
         lFiw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lukasz.luba@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=lukasz.luba@arm.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:from:to:cc:references:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=43owaZVP/Dyx1Wbvr4ObrsjGnkYKuork107Au2edPsI=;
        b=hP0kwdthJjrhZV9hIsRPAe7hBeO+2huqYTzjp5cWN9zxyvSFQHRKlKL8qkpNMJtEZs
         Dl1gXhThzcAJHxjwXju9W6OSSUnubIu6Hj1RNy/3/gkJw5EGDQ6RQtqTHZHX8cwiMxe7
         hAzfyGlM4NaOkFWEiEK1C9qtCBnKUTc6LCWzxyAyyDjrxEFmjIojNfSf3bTLodyf3H8S
         qe95rMVZKnJlLrJvrLmiuRUEIwU7U+cZBByiYlR3L83e5ePQ2S5inVN+XHV0rm5aT3cD
         AFE1RfYaZ9Dv4nCH2Hb0i7+8+gPHeh/itgHvjDVi30Et7VnoI0dbnI5Tif7xaTLe+hWw
         NJVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:from:to:cc:references:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=43owaZVP/Dyx1Wbvr4ObrsjGnkYKuork107Au2edPsI=;
        b=TV2DA1Rs808vayiGUb4cSSrSvY3abvXKPb4kUA4c08hKJIBrkoaHvOhEolY1sSSg2O
         7T+V7bQ1IbE0WwCfHJQvSRzyTgk/faP/ma4liYFyb38UdIIp9UfS6xUDbD6Un4fBQE6m
         Dw7bVsxOavahJmZLfVikJyoVejj6JaenlCLuK+P/pRJCKxk3cK1RCXaHkjE5PuBbqCVk
         /bImcnaOW5j+MKCo+a8W6wdPIQTWXaJtWpnrPRqSHnWwT2bg9VBxIWtpFRbOns81bmkW
         TYBkzkOBniGzuhUYVLN0HFy08fY6SS3sSXIcjH2k5lWSn2yKrxJZO4UDFuQljODr5Xn/
         XELQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5335/Om6Ud8Zrv1mFsP7pP6Axkr0FvTObUnBHYtecGzaNT0ktXyB
	aIQE+BSiJVT+6vLn3aBDHCs=
X-Google-Smtp-Source: ABdhPJw3jvNa33arYDJYql4QzhgZaFvDGqtl5Dar13Uyx3ie4OSwwzPw0DlGHi1vXd+Keaeoc2QCzA==
X-Received: by 2002:a17:902:b708:: with SMTP id d8mr11355236pls.138.1597670291659;
        Mon, 17 Aug 2020 06:18:11 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:309:: with SMTP id 9ls6852939pje.2.canary-gmail;
 Mon, 17 Aug 2020 06:18:11 -0700 (PDT)
X-Received: by 2002:a17:902:6904:: with SMTP id j4mr11421675plk.198.1597670291066;
        Mon, 17 Aug 2020 06:18:11 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1597670291; cv=none;
        d=google.com; s=arc-20160816;
        b=KD2XgDaUs+k/A3fIMgTt2NMQaCGwRNtlg9OGV3F5JUAfJqvt28p99aqaAQhG0Sx1Nv
         TCzlU0MPKkbJ+5nYydYg2BzyLhBXzm6mTEdQ2BSBA4ULcvN2l77oLsyde1syxrfXoPQf
         Hdbfot1RSoDntWrHZ/4fay1SZow8LaQICjfe8qWDPx9YYUjAu4FlXjsFDqM5NFm3gyvP
         rYrb/x6nGPiA/QA+ljSHkwlbsOpVnJJs6MM2axD6wGxUCKWEOCrcqCA7UItcMvxOulmf
         Qpou5Q5wdPN5MIxLgyqd+2cyIHZPS4IWgFKzVAtHJQAaTGCiy2tF8NSj5OwFgELbS8Ar
         +RIA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:references:cc:to:from:subject;
        bh=kB9hK0su1GluQAOIfJarifGtMdtEPJr4lFFNZfli/OU=;
        b=NB2jzNH45DigrjqGoD166A1TvcjBlrB6sVESd/4HwyEIuWeuNDkiWESfBNbYPj8/F4
         E8O2EhdrtH0FS9kBJ0Q/OezZ5//3EbKc/Y52BT1IxF9vOThRHh6ThNKLOnOz9cwP54RI
         ZtMcbeJJEaB53bqWUfeZwsZcZRo2iD24xxWt52DY7Y9ezjsz7GhLjDxB91FtjHFrngmA
         i+qnoqrKGs07ypIcxVDWtoUyNVpsNFF6GQT38O3yoMm1Rf/2VZ7bfLGgSMvjA3w1x33E
         jO+6ZLGqjZBZ3dsqW/eGKkIVUknXtsxftqJkSdW+LyKlL2uTJxRpkB4uwfXJjH5LK/ir
         WnDw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lukasz.luba@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=lukasz.luba@arm.com
Received: from foss.arm.com (foss.arm.com. [217.140.110.172])
        by gmr-mx.google.com with ESMTP id v12si787577plz.3.2020.08.17.06.18.10
        for <clang-built-linux@googlegroups.com>;
        Mon, 17 Aug 2020 06:18:11 -0700 (PDT)
Received-SPF: pass (google.com: domain of lukasz.luba@arm.com designates 217.140.110.172 as permitted sender) client-ip=217.140.110.172;
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 0CF5130E;
	Mon, 17 Aug 2020 06:18:10 -0700 (PDT)
Received: from [10.37.12.68] (unknown [10.37.12.68])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id EEBAB3F66B;
	Mon, 17 Aug 2020 06:18:07 -0700 (PDT)
Subject: Re: include/linux/sched/topology.h:237:9: error: implicit declaration
 of function 'cpu_logical_map'
From: Lukasz Luba <lukasz.luba@arm.com>
To: kernel test robot <lkp@intel.com>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
 linux-kernel@vger.kernel.org, "Rafael J. Wysocki" <rjw@rjwysocki.net>,
 chenhc@lemote.com, jiaxun.yang@flygoat.com, tsbogend@alpha.franken.de,
 linux-mips@vger.kernel.org
References: <202008170623.tYjq1wEa%lkp@intel.com>
 <1bc8f16a-004b-0352-6675-2c1edeeb9823@arm.com>
Message-ID: <84239ee9-3f87-b254-29ad-ec8cc12d0190@arm.com>
Date: Mon, 17 Aug 2020 14:18:05 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <1bc8f16a-004b-0352-6675-2c1edeeb9823@arm.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable
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


Adding on CC MIPS list and maintainers.

On 8/17/20 10:03 AM, Lukasz Luba wrote:
>=20
>=20
> On 8/16/20 11:43 PM, kernel test robot wrote:
>> Hi Lukasz,
>>
>> FYI, the error/warning still remains.
>>
>> tree:  =20
>> https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git maste=
r
>> head:=C2=A0=C2=A0 9123e3a74ec7b934a4a099e98af6a61c2f80bbf5
>> commit: 1bc138c622959979eb547be2d3bbc6442a5c80b0 PM / EM: add support=20
>> for other devices than CPUs in Energy Model
>> date:=C2=A0=C2=A0 8 weeks ago
>> config: mips-randconfig-r001-20200817 (attached as .config)
>> compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project=20
>> ab9fc8bae805c785066779e76e7846aabad5609e)
>> reproduce (this is a W=3D1 build):
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 wget=20
>> https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross=
=20
>> -O ~/bin/make.cross
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 chmod +x ~/bin/make.cro=
ss
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 # install mips cross co=
mpiling tool for clang build
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 # apt-get install binut=
ils-mips-linux-gnu
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 git checkout 1bc138c622=
959979eb547be2d3bbc6442a5c80b0
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 # save the attached .co=
nfig to linux build tree
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 COMPILER_INSTALL_PATH=
=3D$HOME/0day COMPILER=3Dclang make.cross=20
>> ARCH=3Dmips
>>
>> If you fix the issue, kindly add following tag as appropriate
>> Reported-by: kernel test robot <lkp@intel.com>
>>
>> All errors (new ones prefixed by >>):
>>
>> =C2=A0=C2=A0=C2=A0 arch/mips/include/asm/sync.h:147:34: note: expanded f=
rom macro=20
>> '__SYNC_loongson3_war'
>> =C2=A0=C2=A0=C2=A0 # define __SYNC_loongson3_war=C2=A0=C2=A0 (1 << 31)
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0 ^
>> =C2=A0=C2=A0=C2=A0 In file included from arch/mips/kernel/asm-offsets.c:=
12:
>> =C2=A0=C2=A0=C2=A0 In file included from include/linux/compat.h:10:
>> =C2=A0=C2=A0=C2=A0 In file included from include/linux/time.h:74:
>> =C2=A0=C2=A0=C2=A0 In file included from include/linux/time32.h:13:
>> =C2=A0=C2=A0=C2=A0 In file included from include/linux/timex.h:65:
>> =C2=A0=C2=A0=C2=A0 In file included from arch/mips/include/asm/timex.h:1=
9:
>> =C2=A0=C2=A0=C2=A0 In file included from arch/mips/include/asm/cpu-type.=
h:12:
>> =C2=A0=C2=A0=C2=A0 In file included from include/linux/smp.h:15:
>> =C2=A0=C2=A0=C2=A0 include/linux/llist.h:222:9: warning: converting the =
result of=20
>> '<<' to a boolean always evaluates to true=20
>> [-Wtautological-constant-compare]
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 retur=
n xchg(&head->first, NULL);
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 ^
>> =C2=A0=C2=A0=C2=A0 arch/mips/include/asm/cmpxchg.h:102:7: note: expanded=
 from macro=20
>> 'xchg'
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 if=20
>> (!__SYNC_loongson3_war)=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0 \
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0 ^
>> =C2=A0=C2=A0=C2=A0 arch/mips/include/asm/sync.h:147:34: note: expanded f=
rom macro=20
>> '__SYNC_loongson3_war'
>> =C2=A0=C2=A0=C2=A0 # define __SYNC_loongson3_war=C2=A0=C2=A0 (1 << 31)
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0 ^
>> =C2=A0=C2=A0=C2=A0 In file included from arch/mips/kernel/asm-offsets.c:=
12:
>> =C2=A0=C2=A0=C2=A0 In file included from include/linux/compat.h:15:
>> =C2=A0=C2=A0=C2=A0 In file included from include/linux/socket.h:8:
>> =C2=A0=C2=A0=C2=A0 In file included from include/linux/uio.h:10:
>> =C2=A0=C2=A0=C2=A0 In file included from include/crypto/hash.h:11:
>> =C2=A0=C2=A0=C2=A0 In file included from include/linux/crypto.h:19:
>> =C2=A0=C2=A0=C2=A0 In file included from include/linux/slab.h:15:
>> =C2=A0=C2=A0=C2=A0 In file included from include/linux/gfp.h:9:
>> =C2=A0=C2=A0=C2=A0 include/linux/topology.h:119:9: error: implicit decla=
ration of=20
>> function 'cpu_logical_map' [-Werror,-Wimplicit-function-declaration]
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 retur=
n cpu_to_node(raw_smp_processor_id());
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 ^
>> =C2=A0=C2=A0=C2=A0 arch/mips/include/asm/mach-loongson64/topology.h:7:27=
: note:=20
>> expanded from macro 'cpu_to_node'
>> =C2=A0=C2=A0=C2=A0 #define cpu_to_node(cpu)=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0 (cpu_logical_map(cpu) >> 2)
>=20
>=20
> It looks like the energy_model.h causes this include on mips then some
> header is missing (probably smp.h from mips/asm).
> I will try to reproduce it and propose a fix.

I was wrong, the energy_model.h does not cause this issue. The issue is
already present in v5.8-rc2 (where there is no this EM commit).

I have reproduced in v5.8-rc2 with the .config from original email.
When I've fix this error:
"error: implicit declaration of function 'cpu_logical_map'"
new one showed up:
./include/linux/topology.h:210:9: error: use of undeclared identifier=20
'__node_cpumask'
         return cpumask_of_node(cpu_to_node(cpu));

                ^
another showed up:
./arch/mips/include/asm/mach-loongson64/topology.h:12:33: note: expanded=20
from macro 'cpumask_of_node'
#define cpumask_of_node(node)   (&__node_cpumask[node])

Then after a fix, the next one:
In file included from ./include/net/checksum.h:22:
./arch/mips/include/asm/checksum.h:195:9: error: unsupported inline asm:=20
input with type 'unsigned long' matching output with type '__wsum' (aka=20
'unsigned int')
         : "0" ((__force unsigned long)daddr),


Thomas, Jiaxun, Huacai are you aware of these issues? Maybe just this
randconfig triggers some awkward configuration?

Regards,
Lukasz

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/84239ee9-3f87-b254-29ad-ec8cc12d0190%40arm.com.
