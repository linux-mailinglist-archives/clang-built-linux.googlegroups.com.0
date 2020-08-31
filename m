Return-Path: <clang-built-linux+bncBCR5PSMFZYORBQVWWH5AKGQETFWYFVQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103b.google.com (mail-pj1-x103b.google.com [IPv6:2607:f8b0:4864:20::103b])
	by mail.lfdr.de (Postfix) with ESMTPS id 364742571BF
	for <lists+clang-built-linux@lfdr.de>; Mon, 31 Aug 2020 04:07:00 +0200 (CEST)
Received: by mail-pj1-x103b.google.com with SMTP id a6sf2174479pjd.1
        for <lists+clang-built-linux@lfdr.de>; Sun, 30 Aug 2020 19:07:00 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1598839618; cv=pass;
        d=google.com; s=arc-20160816;
        b=pfCZ7bq0HmE9Bg++E+3mDtbsg/3WhbNrTO9aSJJBrA/S3OPibVU/5E+0ObbpcFcmq7
         0kAQLIDrZFVo7BPeWKg4cNQLhxAQLhti3mxHhOVKcTsJwOvapbaDpUTauXCHMkpwFT7n
         u/3faSeOlOg6OsiWaDL8cJFpog5Xq6Jz9tW9m6LBOMr6MR5RUSP/sfyFLgYzwUB46w5c
         JwL+TAUXySIEMgX8j20pNPcQw+PKm42qgNjE/HTi8tSgoj5aEvnLPKTYmu/ohEJhTnm9
         uW0uGCBrhQw6H+qUCbqhREdvftwOeFF0LiuWMWy8rw0fN+/o6q6iUCzeNJFFnKnb7SKt
         iUmQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :references:in-reply-to:subject:cc:to:from:sender:dkim-signature;
        bh=T8N5CB4+Bt4/DEAF49y10hvB8e2Iym7bU3t0doJbwJA=;
        b=bLyQOX0T+OgvvWKmYxBEZMK3cjApZ77zU7k9M/4aC9iEW5C1KRMW4D9Uax2j2enuv3
         YZyOrulJSub0aF3D4hwqsXVwjuNiX0jLuRB/XdzpuT8Bi+NcN3RzJ8ymxODIx1WFjQqV
         42NnG5BePeeXGh1Vsc9EaXWmHnFLEvSj4iBP2K/dfgC6zwV9e4MDMiKTgmvSh8xjFxom
         do2dgDVeIodK+rVgwXw2p6OlIF2Lq4LmXKHnifR5f3H5oqhy923BpBQPnPdaOUdNvdTo
         9ZqbycizKxJyFwZREQ7ywY84nCW1Y5Te280zGqfDHl7PwjNCJVjDLy3r4cxACypBHRZ0
         D8SA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@ellerman.id.au header.s=201909 header.b=hVZekuxT;
       spf=pass (google.com: domain of mpe@ellerman.id.au designates 2401:3900:2:1::2 as permitted sender) smtp.mailfrom=mpe@ellerman.id.au
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:in-reply-to:references:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=T8N5CB4+Bt4/DEAF49y10hvB8e2Iym7bU3t0doJbwJA=;
        b=e+DFV5Q12bCO7DKItgRNvcPB+Q2khmXOc+LEldqzUDEv0r6QvHmLkLFMkm9zJ7FoiA
         WfPopEkjwoDAftiVG7h8sKmm4GefwWFEwAI/De2nq1vKcsdZaVX2PsWMN/T/mrQoVnsj
         cjgr3xHRLF7TIdeQs6ttk+va+M++szZ8shacq5qzRGiaS16JpGkwmq4N1KpMRrn2yWBg
         rKNkAZuMlmLrgJVkLX0clz73zrYHw2QZ8GU+ZPcQayGRKNPl9Kk1KypZUTQozBoXAThj
         35+NbS8MOmT+nfWmkEX75DrL0N8Uu+mVuS3MrjKsJ+Yt6fWgFPj0HtjIcw+n+AmaK41u
         IKpg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:in-reply-to:references
         :date:message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=T8N5CB4+Bt4/DEAF49y10hvB8e2Iym7bU3t0doJbwJA=;
        b=iCl8QJVfOj21cGrwC5TOBBpIonvQJ0DhRnsGIRRyaagi6jy79vjnUetpcP+gIBWgWi
         OwOU1vKVCjIsJ+QdmDyfXknmGZzVDv9GkLA+xwwfkVRyrPBL/MRU3UMDAHNLFZepiuZl
         fdBZJgAkd6E8lfoREcnAe7nAUR6GL/ZTbwKrg467QswPXTAMTHL20QnT/fkhRgRUqkne
         McqB3TrhZlEpgKc+wu5k2qdI8XtmP9L5qCm8wARTtg6KVunAmmLpnX84ipwXtpo8MFBR
         z6C6xqzyHrI3BENN6X28XBUqelUoDmZKc6XlDB+7+o3hFZwEoK7k3Y7Y5ZV9FQvDBuOo
         3p9g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5330Ams6TrWZ4i5SO0ExNIOhaXVRt1V/Wb++gyayL6wbEebLl3br
	UU6bJSmFQ4Q+PZy9kZehvBk=
X-Google-Smtp-Source: ABdhPJxpdPZ/urnRtCOjWMlOCwMGd6Iv10JKONLfq2728qMgdWifnI9C9dESg14UOwRAYZQ0kg2YIA==
X-Received: by 2002:a17:90b:70e:: with SMTP id s14mr742015pjz.206.1598839618638;
        Sun, 30 Aug 2020 19:06:58 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90b:384f:: with SMTP id nl15ls2478438pjb.0.canary-gmail;
 Sun, 30 Aug 2020 19:06:58 -0700 (PDT)
X-Received: by 2002:a17:90a:e16:: with SMTP id v22mr8900905pje.124.1598839618171;
        Sun, 30 Aug 2020 19:06:58 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1598839618; cv=none;
        d=google.com; s=arc-20160816;
        b=oECutpor7/DwAXL7pJy0Ivz1sp+WW3p8QMCid2QPh7tmWL1gQj4fRl5PL++d85f8k7
         PKwbuGMqogbzsnNKwN8u/rYuJ+HNpVxSuV6DNlcq01q7o+X4tSpu3myKZbQ11qMqBCsQ
         o4S+Dn5Zrs/W/tyu8kHpwwtbmZIAkMPZmhTUFLrMU6F6/e4pcEM6wkvAvToaFZVMtIWZ
         wQdypqmQ8cT2irkzQ2TqPYGJoI9XW/EvDdPTEx/fzvUYmvOW9ngFj5QwpiWUxb2+JL28
         VR5m+D/GAeC2oF5zm6+qGShQ2al6L6YGhhhdVdfovGyLYkD9MWMXSqBDtLPiOApkZQCj
         +Cgg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
         :from:dkim-signature;
        bh=lhnt5chMrbIoyHgUZcskIBftXHiKtuy+PSqkC7Kw8G0=;
        b=invWw/2xEdwn7oLBn7yHZwRQMLPLhMr7TmsBi3GgRFGc3RiLAhThkA5WgdLZO5sfj/
         8E8igpbwYav962AKgHuBJZy2vdZYYnk4aEXIy6sKSGT6k9zDAjRI1G8WKIfGexRNIvFD
         VEGvPQrUxFNNG9L7ox/M+QINUD2mMXxIXjHBAXuaj7x9ulwSHXdhn14fsqyDk5JJk8DH
         pZ9fqO/Pma6Z7dN0pCyixTw7oMCZSmNhP3IvIZ3/AvJWSrW/s8WqAP2GP0hohNqv3HsK
         UwrTeH6fE1svJ+V3F4ypONVUYPWZrCwzZKLSIhkvCPVScU0jUqtY0SqMN8S5Qs1LETNr
         FFiA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ellerman.id.au header.s=201909 header.b=hVZekuxT;
       spf=pass (google.com: domain of mpe@ellerman.id.au designates 2401:3900:2:1::2 as permitted sender) smtp.mailfrom=mpe@ellerman.id.au
Received: from ozlabs.org (bilbo.ozlabs.org. [2401:3900:2:1::2])
        by gmr-mx.google.com with ESMTPS id t6si253460pjq.2.2020.08.30.19.06.57
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 30 Aug 2020 19:06:58 -0700 (PDT)
Received-SPF: pass (google.com: domain of mpe@ellerman.id.au designates 2401:3900:2:1::2 as permitted sender) client-ip=2401:3900:2:1::2;
Received: from authenticated.ozlabs.org (localhost [127.0.0.1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (P-256) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by mail.ozlabs.org (Postfix) with ESMTPSA id 4Bftqd3npBz9sTK;
	Mon, 31 Aug 2020 12:06:53 +1000 (AEST)
From: Michael Ellerman <mpe@ellerman.id.au>
To: Nick Desaulniers <ndesaulniers@google.com>, Kees Cook <keescook@chromium.org>
Cc: kbuild-all@lists.01.org, clang-built-linux <clang-built-linux@googlegroups.com>, Andrew Morton <akpm@linux-foundation.org>, Linux Memory Management List <linux-mm@kvack.org>, kernel test robot <lkp@intel.com>
Subject: Re: [linux-next:master 3345/3539] ld.lld: warning: drivers/built-in.a(nvme/host/hwmon.o):(.data..compoundliteral) is being placed in '.data..compoundliteral'
In-Reply-To: <CAKwvOdnAOE+NCOg3r732UbaQaW474h-zBdKhBZoYRw=yyM1GZA@mail.gmail.com>
References: <202008270229.SO2NVhto%lkp@intel.com> <CAKwvOdnAOE+NCOg3r732UbaQaW474h-zBdKhBZoYRw=yyM1GZA@mail.gmail.com>
Date: Mon, 31 Aug 2020 12:06:52 +1000
Message-ID: <871rjn36wz.fsf@mpe.ellerman.id.au>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: mpe@ellerman.id.au
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@ellerman.id.au header.s=201909 header.b=hVZekuxT;       spf=pass
 (google.com: domain of mpe@ellerman.id.au designates 2401:3900:2:1::2 as
 permitted sender) smtp.mailfrom=mpe@ellerman.id.au
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

Nick Desaulniers <ndesaulniers@google.com> writes:
> On Wed, Aug 26, 2020 at 11:21 AM kernel test robot <lkp@intel.com> wrote:
>>
>> tree:   https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git master
>> head:   f37be72473a007d5d66c52f6cdf43fc8c0961f95
>> commit: 5934637641c863cc2c1765a0d01c5b6f53ecc4fc [3345/3539] lib/string.c: implement stpcpy
>> config: powerpc64-randconfig-r001-20200826 (attached as .config)
>> compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project 7cfcecece0e0430937cf529ce74d3a071a4dedc6)
>> reproduce (this is a W=1 build):
>>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>>         chmod +x ~/bin/make.cross
>>         # install powerpc64 cross compiling tool for clang build
>>         # apt-get install binutils-powerpc64-linux-gnu
>>         git checkout 5934637641c863cc2c1765a0d01c5b6f53ecc4fc
>>         # save the attached .config to linux build tree
>>         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=powerpc64
>>
>> If you fix the issue, kindly add following tag as appropriate
>> Reported-by: kernel test robot <lkp@intel.com>
>>
>> All warnings (new ones prefixed by >>):
>>
>>    ld.lld: warning: kernel/built-in.a(trace/trace_syscalls.o):(.data..compoundliteral) is being placed in '.data..compoundliteral'
>
> We probably need to add `.data..compoundliteral*` to the ppc linker scripts?

Sure looks like it.

Any idea what it is? Can we just fold them into .data ?

cheers

>> >> ld.lld: warning: drivers/built-in.a(nvme/host/hwmon.o):(.data..compoundliteral) is being placed in '.data..compoundliteral'
>> >> ld.lld: warning: drivers/built-in.a(nvme/host/hwmon.o):(.data..compoundliteral.13) is being placed in '.data..compoundliteral.13'
>>    ld.lld: warning: drivers/built-in.a(nvme/host/hwmon.o):(.data..compoundliteral.14) is being placed in '.data..compoundliteral.14'
>>    ld.lld: warning: drivers/built-in.a(nvme/host/hwmon.o):(.data..compoundliteral.15) is being placed in '.data..compoundliteral.15'
>>    ld.lld: warning: drivers/built-in.a(media/tuners/tuner-types.o):(.data..compoundliteral) is being placed in '.data..compoundliteral'
>>    ld.lld: warning: drivers/built-in.a(media/tuners/tuner-types.o):(.data..compoundliteral.79) is being placed in '.data..compoundliteral.79'
>>    ld.lld: warning: drivers/built-in.a(power/supply/power_supply_hwmon.o):(.data..compoundliteral) is being placed in '.data..compoundliteral'
>>    ld.lld: warning: drivers/built-in.a(power/supply/power_supply_hwmon.o):(.data..compoundliteral.3) is being placed in '.data..compoundliteral.3'
>>    ld.lld: warning: drivers/built-in.a(power/supply/power_supply_hwmon.o):(.data..compoundliteral.4) is being placed in '.data..compoundliteral.4'
>>    ld.lld: warning: drivers/built-in.a(power/supply/power_supply_hwmon.o):(.data..compoundliteral.5) is being placed in '.data..compoundliteral.5'
>>    ld.lld: warning: drivers/built-in.a(power/supply/power_supply_hwmon.o):(.data..compoundliteral.6) is being placed in '.data..compoundliteral.6'
>>    ld.lld: warning: drivers/built-in.a(power/supply/power_supply_hwmon.o):(.data..compoundliteral.7) is being placed in '.data..compoundliteral.7'
>> >> ld.lld: warning: drivers/built-in.a(hwmon/w83773g.o):(.data..compoundliteral) is being placed in '.data..compoundliteral'
>> >> ld.lld: warning: drivers/built-in.a(hwmon/w83773g.o):(.data..compoundliteral.6) is being placed in '.data..compoundliteral.6'
>>    ld.lld: warning: drivers/built-in.a(hwmon/w83773g.o):(.data..compoundliteral.7) is being placed in '.data..compoundliteral.7'
>>    ld.lld: warning: drivers/built-in.a(hwmon/w83773g.o):(.data..compoundliteral.8) is being placed in '.data..compoundliteral.8'
>>    ld.lld: warning: drivers/built-in.a(hwmon/adm1177.o):(.data..compoundliteral) is being placed in '.data..compoundliteral'
>>    ld.lld: warning: drivers/built-in.a(hwmon/adm1177.o):(.data..compoundliteral.9) is being placed in '.data..compoundliteral.9'
>>    ld.lld: warning: drivers/built-in.a(hwmon/adm1177.o):(.data..compoundliteral.10) is being placed in '.data..compoundliteral.10'
>>    ld.lld: warning: drivers/built-in.a(hwmon/adm1177.o):(.data..compoundliteral.11) is being placed in '.data..compoundliteral.11'
>>    ld.lld: warning: drivers/built-in.a(hwmon/adt7411.o):(.data..compoundliteral) is being placed in '.data..compoundliteral'
>>    ld.lld: warning: drivers/built-in.a(hwmon/adt7411.o):(.data..compoundliteral.4) is being placed in '.data..compoundliteral.4'
>>    ld.lld: warning: drivers/built-in.a(hwmon/adt7411.o):(.data..compoundliteral.5) is being placed in '.data..compoundliteral.5'
>>    ld.lld: warning: drivers/built-in.a(hwmon/adt7411.o):(.data..compoundliteral.6) is being placed in '.data..compoundliteral.6'
>> >> ld.lld: warning: drivers/built-in.a(hwmon/axi-fan-control.o):(.data..compoundliteral) is being placed in '.data..compoundliteral'
>> >> ld.lld: warning: drivers/built-in.a(hwmon/axi-fan-control.o):(.data..compoundliteral.12) is being placed in '.data..compoundliteral.12'
>>    ld.lld: warning: drivers/built-in.a(hwmon/axi-fan-control.o):(.data..compoundliteral.13) is being placed in '.data..compoundliteral.13'
>>    ld.lld: warning: drivers/built-in.a(hwmon/axi-fan-control.o):(.data..compoundliteral.14) is being placed in '.data..compoundliteral.14'
>>    ld.lld: warning: drivers/built-in.a(hwmon/axi-fan-control.o):(.data..compoundliteral.15) is being placed in '.data..compoundliteral.15'
>>    ld.lld: warning: drivers/built-in.a(hwmon/axi-fan-control.o):(.data..compoundliteral.16) is being placed in '.data..compoundliteral.16'
>> >> ld.lld: warning: drivers/built-in.a(hwmon/lochnagar-hwmon.o):(.data..compoundliteral) is being placed in '.data..compoundliteral'
>> >> ld.lld: warning: drivers/built-in.a(hwmon/lochnagar-hwmon.o):(.data..compoundliteral.16) is being placed in '.data..compoundliteral.16'
>>    ld.lld: warning: drivers/built-in.a(hwmon/lochnagar-hwmon.o):(.data..compoundliteral.17) is being placed in '.data..compoundliteral.17'
>>    ld.lld: warning: drivers/built-in.a(hwmon/lochnagar-hwmon.o):(.data..compoundliteral.18) is being placed in '.data..compoundliteral.18'
>>    ld.lld: warning: drivers/built-in.a(hwmon/lochnagar-hwmon.o):(.data..compoundliteral.19) is being placed in '.data..compoundliteral.19'
>>    ld.lld: warning: drivers/built-in.a(hwmon/lochnagar-hwmon.o):(.data..compoundliteral.20) is being placed in '.data..compoundliteral.20'
>>    ld.lld: warning: drivers/built-in.a(hwmon/lochnagar-hwmon.o):(.data..compoundliteral.21) is being placed in '.data..compoundliteral.21'
>>    ld.lld: warning: drivers/built-in.a(hwmon/lochnagar-hwmon.o):(.data..compoundliteral.22) is being placed in '.data..compoundliteral.22'
>>    ld.lld: warning: drivers/built-in.a(hwmon/lm75.o):(.data..compoundliteral) is being placed in '.data..compoundliteral'
>>    ld.lld: warning: drivers/built-in.a(hwmon/lm75.o):(.data..compoundliteral.7) is being placed in '.data..compoundliteral.7'
>>    ld.lld: warning: drivers/built-in.a(hwmon/lm75.o):(.data..compoundliteral.8) is being placed in '.data..compoundliteral.8'
>>    ld.lld: warning: drivers/built-in.a(hwmon/lm75.o):(.data..compoundliteral.9) is being placed in '.data..compoundliteral.9'
>>    ld.lld: warning: drivers/built-in.a(hwmon/lm75.o):(.data..compoundliteral.10) is being placed in '.data..compoundliteral.10'
>>    ld.lld: warning: drivers/built-in.a(hwmon/lm75.o):(.data..compoundliteral.11) is being placed in '.data..compoundliteral.11'
>>    ld.lld: warning: drivers/built-in.a(hwmon/lm75.o):(.data..compoundliteral.12) is being placed in '.data..compoundliteral.12'
>>    ld.lld: warning: drivers/built-in.a(hwmon/lm75.o):(.data..compoundliteral.13) is being placed in '.data..compoundliteral.13'
>>    ld.lld: warning: drivers/built-in.a(hwmon/lm75.o):(.data..compoundliteral.14) is being placed in '.data..compoundliteral.14'
>>    ld.lld: warning: drivers/built-in.a(hwmon/lm75.o):(.data..compoundliteral.15) is being placed in '.data..compoundliteral.15'
>>    ld.lld: warning: drivers/built-in.a(hwmon/lm75.o):(.data..compoundliteral.16) is being placed in '.data..compoundliteral.16'
>>    ld.lld: warning: drivers/built-in.a(hwmon/lm75.o):(.data..compoundliteral.17) is being placed in '.data..compoundliteral.17'
>>    ld.lld: warning: drivers/built-in.a(hwmon/lm75.o):(.data..compoundliteral.18) is being placed in '.data..compoundliteral.18'
>>    ld.lld: warning: drivers/built-in.a(hwmon/lm75.o):(.data..compoundliteral.19) is being placed in '.data..compoundliteral.19'
>>    ld.lld: warning: drivers/built-in.a(hwmon/lm75.o):(.data..compoundliteral.20) is being placed in '.data..compoundliteral.20'
>>    ld.lld: warning: drivers/built-in.a(hwmon/lm75.o):(.data..compoundliteral.21) is being placed in '.data..compoundliteral.21'
>>    ld.lld: warning: drivers/built-in.a(hwmon/lm75.o):(.data..compoundliteral.22) is being placed in '.data..compoundliteral.22'
>>    ld.lld: warning: drivers/built-in.a(hwmon/lm75.o):(.data..compoundliteral.23) is being placed in '.data..compoundliteral.23'
>>    ld.lld: warning: drivers/built-in.a(hwmon/lm75.o):(.data..compoundliteral.24) is being placed in '.data..compoundliteral.24'
>>    ld.lld: warning: drivers/built-in.a(hwmon/lm75.o):(.data..compoundliteral.25) is being placed in '.data..compoundliteral.25'
>>    ld.lld: warning: drivers/built-in.a(hwmon/lm75.o):(.data..compoundliteral.26) is being placed in '.data..compoundliteral.26'
>>    ld.lld: warning: drivers/built-in.a(hwmon/lm75.o):(.data..compoundliteral.27) is being placed in '.data..compoundliteral.27'
>>    ld.lld: warning: drivers/built-in.a(hwmon/lm75.o):(.data..compoundliteral.28) is being placed in '.data..compoundliteral.28'
>>    ld.lld: warning: drivers/built-in.a(hwmon/lm75.o):(.data..compoundliteral.29) is being placed in '.data..compoundliteral.29'
>>    ld.lld: warning: drivers/built-in.a(hwmon/lm75.o):(.data..compoundliteral.30) is being placed in '.data..compoundliteral.30'
>>    ld.lld: warning: drivers/built-in.a(hwmon/lm75.o):(.data..compoundliteral.31) is being placed in '.data..compoundliteral.31'
>>    ld.lld: warning: drivers/built-in.a(hwmon/lm75.o):(.data..compoundliteral.32) is being placed in '.data..compoundliteral.32'
>>    ld.lld: warning: drivers/built-in.a(hwmon/lm75.o):(.data..compoundliteral.33) is being placed in '.data..compoundliteral.33'
>>    ld.lld: warning: drivers/built-in.a(hwmon/lm75.o):(.data..compoundliteral.34) is being placed in '.data..compoundliteral.34'
>>    ld.lld: warning: drivers/built-in.a(hwmon/lm95245.o):(.data..compoundliteral) is being placed in '.data..compoundliteral'
>>    ld.lld: warning: drivers/built-in.a(hwmon/lm95245.o):(.data..compoundliteral.5) is being placed in '.data..compoundliteral.5'
>>    ld.lld: warning: drivers/built-in.a(hwmon/lm95245.o):(.data..compoundliteral.6) is being placed in '.data..compoundliteral.6'
>>    ld.lld: warning: drivers/built-in.a(hwmon/lm95245.o):(.data..compoundliteral.7) is being placed in '.data..compoundliteral.7'
>>    ld.lld: warning: drivers/built-in.a(hwmon/ltc2947-core.o):(.data..compoundliteral) is being placed in '.data..compoundliteral'
>>    ld.lld: warning: drivers/built-in.a(hwmon/ltc2947-core.o):(.data..compoundliteral.24) is being placed in '.data..compoundliteral.24'
>>    ld.lld: warning: drivers/built-in.a(hwmon/ltc2947-core.o):(.data..compoundliteral.25) is being placed in '.data..compoundliteral.25'
>>    ld.lld: warning: drivers/built-in.a(hwmon/ltc2947-core.o):(.data..compoundliteral.26) is being placed in '.data..compoundliteral.26'
>>    ld.lld: warning: drivers/built-in.a(hwmon/ltc2947-core.o):(.data..compoundliteral.27) is being placed in '.data..compoundliteral.27'
>>    ld.lld: warning: drivers/built-in.a(hwmon/ltc2947-core.o):(.data..compoundliteral.28) is being placed in '.data..compoundliteral.28'
>>    ld.lld: warning: drivers/built-in.a(hwmon/ltc2947-core.o):(.data..compoundliteral.29) is being placed in '.data..compoundliteral.29'
>>    ld.lld: warning: drivers/built-in.a(hwmon/ltc2947-core.o):(.data..compoundliteral.30) is being placed in '.data..compoundliteral.30'
>>    ld.lld: warning: drivers/built-in.a(hwmon/max6650.o):(.data..compoundliteral) is being placed in '.data..compoundliteral'
>>    ld.lld: warning: drivers/built-in.a(hwmon/max6650.o):(.data..compoundliteral.15) is being placed in '.data..compoundliteral.15'
>>    ld.lld: warning: drivers/built-in.a(hwmon/max6650.o):(.data..compoundliteral.16) is being placed in '.data..compoundliteral.16'
>>    ld.lld: warning: drivers/built-in.a(hwmon/max6650.o):(.data..compoundliteral.17) is being placed in '.data..compoundliteral.17'
>>    ld.lld: warning: net/built-in.a(ipv6/addrlabel.o):(.data..compoundliteral) is being placed in '.data..compoundliteral'
>>    ld.lld: warning: net/built-in.a(ipv6/addrlabel.o):(.data..compoundliteral.3) is being placed in '.data..compoundliteral.3'
>>    ld.lld: warning: net/built-in.a(ipv6/addrlabel.o):(.data..compoundliteral.4) is being placed in '.data..compoundliteral.4'
>>    ld.lld: warning: net/built-in.a(ipv6/addrlabel.o):(.data..compoundliteral.5) is being placed in '.data..compoundliteral.5'
>>    ld.lld: warning: net/built-in.a(ipv6/addrlabel.o):(.data..compoundliteral.6) is being placed in '.data..compoundliteral.6'
>>    ld.lld: warning: net/built-in.a(ipv6/addrlabel.o):(.data..compoundliteral.7) is being placed in '.data..compoundliteral.7'
>>    ld.lld: warning: net/built-in.a(ipv6/addrlabel.o):(.data..compoundliteral.8) is being placed in '.data..compoundliteral.8'
>>    ld.lld: warning: net/built-in.a(ipv6/addrconf_core.o):(.data..compoundliteral) is being placed in '.data..compoundliteral'
>>    ld.lld: warning: <internal>:(.symtab) is being placed in '.symtab'
>>    ld.lld: warning: <internal>:(.shstrtab) is being placed in '.shstrtab'
>>    ld.lld: warning: <internal>:(.strtab) is being placed in '.strtab'
>>    ld.lld: warning: kernel/built-in.a(trace/trace_syscalls.o):(.data..compoundliteral) is being placed in '.data..compoundliteral'
>> >> ld.lld: warning: drivers/built-in.a(nvme/host/hwmon.o):(.data..compoundliteral) is being placed in '.data..compoundliteral'
>> >> ld.lld: warning: drivers/built-in.a(nvme/host/hwmon.o):(.data..compoundliteral.13) is being placed in '.data..compoundliteral.13'
>>    ld.lld: warning: drivers/built-in.a(nvme/host/hwmon.o):(.data..compoundliteral.14) is being placed in '.data..compoundliteral.14'
>>    ld.lld: warning: drivers/built-in.a(nvme/host/hwmon.o):(.data..compoundliteral.15) is being placed in '.data..compoundliteral.15'
>>    ld.lld: warning: drivers/built-in.a(media/tuners/tuner-types.o):(.data..compoundliteral) is being placed in '.data..compoundliteral'
>>    ld.lld: warning: drivers/built-in.a(media/tuners/tuner-types.o):(.data..compoundliteral.79) is being placed in '.data..compoundliteral.79'
>>    ld.lld: warning: drivers/built-in.a(power/supply/power_supply_hwmon.o):(.data..compoundliteral) is being placed in '.data..compoundliteral'
>>    ld.lld: warning: drivers/built-in.a(power/supply/power_supply_hwmon.o):(.data..compoundliteral.3) is being placed in '.data..compoundliteral.3'
>>    ld.lld: warning: drivers/built-in.a(power/supply/power_supply_hwmon.o):(.data..compoundliteral.4) is being placed in '.data..compoundliteral.4'
>>    ld.lld: warning: drivers/built-in.a(power/supply/power_supply_hwmon.o):(.data..compoundliteral.5) is being placed in '.data..compoundliteral.5'
>>    ld.lld: warning: drivers/built-in.a(power/supply/power_supply_hwmon.o):(.data..compoundliteral.6) is being placed in '.data..compoundliteral.6'
>>    ld.lld: warning: drivers/built-in.a(power/supply/power_supply_hwmon.o):(.data..compoundliteral.7) is being placed in '.data..compoundliteral.7'
>> >> ld.lld: warning: drivers/built-in.a(hwmon/w83773g.o):(.data..compoundliteral) is being placed in '.data..compoundliteral'
>> >> ld.lld: warning: drivers/built-in.a(hwmon/w83773g.o):(.data..compoundliteral.6) is being placed in '.data..compoundliteral.6'
>>    ld.lld: warning: drivers/built-in.a(hwmon/w83773g.o):(.data..compoundliteral.7) is being placed in '.data..compoundliteral.7'
>>    ld.lld: warning: drivers/built-in.a(hwmon/w83773g.o):(.data..compoundliteral.8) is being placed in '.data..compoundliteral.8'
>>    ld.lld: warning: drivers/built-in.a(hwmon/adm1177.o):(.data..compoundliteral) is being placed in '.data..compoundliteral'
>>    ld.lld: warning: drivers/built-in.a(hwmon/adm1177.o):(.data..compoundliteral.9) is being placed in '.data..compoundliteral.9'
>>    ld.lld: warning: drivers/built-in.a(hwmon/adm1177.o):(.data..compoundliteral.10) is being placed in '.data..compoundliteral.10'
>>    ld.lld: warning: drivers/built-in.a(hwmon/adm1177.o):(.data..compoundliteral.11) is being placed in '.data..compoundliteral.11'
>>    ld.lld: warning: drivers/built-in.a(hwmon/adt7411.o):(.data..compoundliteral) is being placed in '.data..compoundliteral'
>>    ld.lld: warning: drivers/built-in.a(hwmon/adt7411.o):(.data..compoundliteral.4) is being placed in '.data..compoundliteral.4'
>>    ld.lld: warning: drivers/built-in.a(hwmon/adt7411.o):(.data..compoundliteral.5) is being placed in '.data..compoundliteral.5'
>>    ld.lld: warning: drivers/built-in.a(hwmon/adt7411.o):(.data..compoundliteral.6) is being placed in '.data..compoundliteral.6'
>> >> ld.lld: warning: drivers/built-in.a(hwmon/axi-fan-control.o):(.data..compoundliteral) is being placed in '.data..compoundliteral'
>> >> ld.lld: warning: drivers/built-in.a(hwmon/axi-fan-control.o):(.data..compoundliteral.12) is being placed in '.data..compoundliteral.12'
>>    ld.lld: warning: drivers/built-in.a(hwmon/axi-fan-control.o):(.data..compoundliteral.13) is being placed in '.data..compoundliteral.13'
>>    ld.lld: warning: drivers/built-in.a(hwmon/axi-fan-control.o):(.data..compoundliteral.14) is being placed in '.data..compoundliteral.14'
>>    ld.lld: warning: drivers/built-in.a(hwmon/axi-fan-control.o):(.data..compoundliteral.15) is being placed in '.data..compoundliteral.15'
>>    ld.lld: warning: drivers/built-in.a(hwmon/axi-fan-control.o):(.data..compoundliteral.16) is being placed in '.data..compoundliteral.16'
>> >> ld.lld: warning: drivers/built-in.a(hwmon/lochnagar-hwmon.o):(.data..compoundliteral) is being placed in '.data..compoundliteral'
>> >> ld.lld: warning: drivers/built-in.a(hwmon/lochnagar-hwmon.o):(.data..compoundliteral.16) is being placed in '.data..compoundliteral.16'
>>    ld.lld: warning: drivers/built-in.a(hwmon/lochnagar-hwmon.o):(.data..compoundliteral.17) is being placed in '.data..compoundliteral.17'
>>    ld.lld: warning: drivers/built-in.a(hwmon/lochnagar-hwmon.o):(.data..compoundliteral.18) is being placed in '.data..compoundliteral.18'
>>    ld.lld: warning: drivers/built-in.a(hwmon/lochnagar-hwmon.o):(.data..compoundliteral.19) is being placed in '.data..compoundliteral.19'
>>    ld.lld: warning: drivers/built-in.a(hwmon/lochnagar-hwmon.o):(.data..compoundliteral.20) is being placed in '.data..compoundliteral.20'
>>    ld.lld: warning: drivers/built-in.a(hwmon/lochnagar-hwmon.o):(.data..compoundliteral.21) is being placed in '.data..compoundliteral.21'
>>    ld.lld: warning: drivers/built-in.a(hwmon/lochnagar-hwmon.o):(.data..compoundliteral.22) is being placed in '.data..compoundliteral.22'
>>    ld.lld: warning: drivers/built-in.a(hwmon/lm75.o):(.data..compoundliteral) is being placed in '.data..compoundliteral'
>>    ld.lld: warning: drivers/built-in.a(hwmon/lm75.o):(.data..compoundliteral.7) is being placed in '.data..compoundliteral.7'
>>    ld.lld: warning: drivers/built-in.a(hwmon/lm75.o):(.data..compoundliteral.8) is being placed in '.data..compoundliteral.8'
>>    ld.lld: warning: drivers/built-in.a(hwmon/lm75.o):(.data..compoundliteral.9) is being placed in '.data..compoundliteral.9'
>>    ld.lld: warning: drivers/built-in.a(hwmon/lm75.o):(.data..compoundliteral.10) is being placed in '.data..compoundliteral.10'
>>    ld.lld: warning: drivers/built-in.a(hwmon/lm75.o):(.data..compoundliteral.11) is being placed in '.data..compoundliteral.11'
>>    ld.lld: warning: drivers/built-in.a(hwmon/lm75.o):(.data..compoundliteral.12) is being placed in '.data..compoundliteral.12'
>>    ld.lld: warning: drivers/built-in.a(hwmon/lm75.o):(.data..compoundliteral.13) is being placed in '.data..compoundliteral.13'
>>    ld.lld: warning: drivers/built-in.a(hwmon/lm75.o):(.data..compoundliteral.14) is being placed in '.data..compoundliteral.14'
>>    ld.lld: warning: drivers/built-in.a(hwmon/lm75.o):(.data..compoundliteral.15) is being placed in '.data..compoundliteral.15'
>>    ld.lld: warning: drivers/built-in.a(hwmon/lm75.o):(.data..compoundliteral.16) is being placed in '.data..compoundliteral.16'
>>    ld.lld: warning: drivers/built-in.a(hwmon/lm75.o):(.data..compoundliteral.17) is being placed in '.data..compoundliteral.17'
>>    ld.lld: warning: drivers/built-in.a(hwmon/lm75.o):(.data..compoundliteral.18) is being placed in '.data..compoundliteral.18'
>>    ld.lld: warning: drivers/built-in.a(hwmon/lm75.o):(.data..compoundliteral.19) is being placed in '.data..compoundliteral.19'
>>    ld.lld: warning: drivers/built-in.a(hwmon/lm75.o):(.data..compoundliteral.20) is being placed in '.data..compoundliteral.20'
>>    ld.lld: warning: drivers/built-in.a(hwmon/lm75.o):(.data..compoundliteral.21) is being placed in '.data..compoundliteral.21'
>>    ld.lld: warning: drivers/built-in.a(hwmon/lm75.o):(.data..compoundliteral.22) is being placed in '.data..compoundliteral.22'
>>    ld.lld: warning: drivers/built-in.a(hwmon/lm75.o):(.data..compoundliteral.23) is being placed in '.data..compoundliteral.23'
>>    ld.lld: warning: drivers/built-in.a(hwmon/lm75.o):(.data..compoundliteral.24) is being placed in '.data..compoundliteral.24'
>>    ld.lld: warning: drivers/built-in.a(hwmon/lm75.o):(.data..compoundliteral.25) is being placed in '.data..compoundliteral.25'
>>    ld.lld: warning: drivers/built-in.a(hwmon/lm75.o):(.data..compoundliteral.26) is being placed in '.data..compoundliteral.26'
>>    ld.lld: warning: drivers/built-in.a(hwmon/lm75.o):(.data..compoundliteral.27) is being placed in '.data..compoundliteral.27'
>>    ld.lld: warning: drivers/built-in.a(hwmon/lm75.o):(.data..compoundliteral.28) is being placed in '.data..compoundliteral.28'
>>    ld.lld: warning: drivers/built-in.a(hwmon/lm75.o):(.data..compoundliteral.29) is being placed in '.data..compoundliteral.29'
>>    ld.lld: warning: drivers/built-in.a(hwmon/lm75.o):(.data..compoundliteral.30) is being placed in '.data..compoundliteral.30'
>>    ld.lld: warning: drivers/built-in.a(hwmon/lm75.o):(.data..compoundliteral.31) is being placed in '.data..compoundliteral.31'
>>    ld.lld: warning: drivers/built-in.a(hwmon/lm75.o):(.data..compoundliteral.32) is being placed in '.data..compoundliteral.32'
>>    ld.lld: warning: drivers/built-in.a(hwmon/lm75.o):(.data..compoundliteral.33) is being placed in '.data..compoundliteral.33'
>>    ld.lld: warning: drivers/built-in.a(hwmon/lm75.o):(.data..compoundliteral.34) is being placed in '.data..compoundliteral.34'
>>    ld.lld: warning: drivers/built-in.a(hwmon/lm95245.o):(.data..compoundliteral) is being placed in '.data..compoundliteral'
>>    ld.lld: warning: drivers/built-in.a(hwmon/lm95245.o):(.data..compoundliteral.5) is being placed in '.data..compoundliteral.5'
>>    ld.lld: warning: drivers/built-in.a(hwmon/lm95245.o):(.data..compoundliteral.6) is being placed in '.data..compoundliteral.6'
>>    ld.lld: warning: drivers/built-in.a(hwmon/lm95245.o):(.data..compoundliteral.7) is being placed in '.data..compoundliteral.7'
>>    ld.lld: warning: drivers/built-in.a(hwmon/ltc2947-core.o):(.data..compoundliteral) is being placed in '.data..compoundliteral'
>>    ld.lld: warning: drivers/built-in.a(hwmon/ltc2947-core.o):(.data..compoundliteral.24) is being placed in '.data..compoundliteral.24'
>>    ld.lld: warning: drivers/built-in.a(hwmon/ltc2947-core.o):(.data..compoundliteral.25) is being placed in '.data..compoundliteral.25'
>>    ld.lld: warning: drivers/built-in.a(hwmon/ltc2947-core.o):(.data..compoundliteral.26) is being placed in '.data..compoundliteral.26'
>>    ld.lld: warning: drivers/built-in.a(hwmon/ltc2947-core.o):(.data..compoundliteral.27) is being placed in '.data..compoundliteral.27'
>>    ld.lld: warning: drivers/built-in.a(hwmon/ltc2947-core.o):(.data..compoundliteral.28) is being placed in '.data..compoundliteral.28'
>>    ld.lld: warning: drivers/built-in.a(hwmon/ltc2947-core.o):(.data..compoundliteral.29) is being placed in '.data..compoundliteral.29'
>>    ld.lld: warning: drivers/built-in.a(hwmon/ltc2947-core.o):(.data..compoundliteral.30) is being placed in '.data..compoundliteral.30'
>>    ld.lld: warning: drivers/built-in.a(hwmon/max6650.o):(.data..compoundliteral) is being placed in '.data..compoundliteral'
>>    ld.lld: warning: drivers/built-in.a(hwmon/max6650.o):(.data..compoundliteral.15) is being placed in '.data..compoundliteral.15'
>>    ld.lld: warning: drivers/built-in.a(hwmon/max6650.o):(.data..compoundliteral.16) is being placed in '.data..compoundliteral.16'
>>    ld.lld: warning: drivers/built-in.a(hwmon/max6650.o):(.data..compoundliteral.17) is being placed in '.data..compoundliteral.17'
>>    ld.lld: warning: net/built-in.a(ipv6/addrlabel.o):(.data..compoundliteral) is being placed in '.data..compoundliteral'
>>    ld.lld: warning: net/built-in.a(ipv6/addrlabel.o):(.data..compoundliteral.3) is being placed in '.data..compoundliteral.3'
>>    ld.lld: warning: net/built-in.a(ipv6/addrlabel.o):(.data..compoundliteral.4) is being placed in '.data..compoundliteral.4'
>>    ld.lld: warning: net/built-in.a(ipv6/addrlabel.o):(.data..compoundliteral.5) is being placed in '.data..compoundliteral.5'
>>    ld.lld: warning: net/built-in.a(ipv6/addrlabel.o):(.data..compoundliteral.6) is being placed in '.data..compoundliteral.6'
>>    ld.lld: warning: net/built-in.a(ipv6/addrlabel.o):(.data..compoundliteral.7) is being placed in '.data..compoundliteral.7'
>>    ld.lld: warning: net/built-in.a(ipv6/addrlabel.o):(.data..compoundliteral.8) is being placed in '.data..compoundliteral.8'
>>    ld.lld: warning: net/built-in.a(ipv6/addrconf_core.o):(.data..compoundliteral) is being placed in '.data..compoundliteral'
>>    ld.lld: warning: <internal>:(.symtab) is being placed in '.symtab'
>>    ld.lld: warning: <internal>:(.shstrtab) is being placed in '.shstrtab'
>>    ld.lld: warning: <internal>:(.strtab) is being placed in '.strtab'
>>    ld.lld: warning: kernel/built-in.a(trace/trace_syscalls.o):(.data..compoundliteral) is being placed in '.data..compoundliteral'
>> >> ld.lld: warning: drivers/built-in.a(nvme/host/hwmon.o):(.data..compoundliteral) is being placed in '.data..compoundliteral'
>> >> ld.lld: warning: drivers/built-in.a(nvme/host/hwmon.o):(.data..compoundliteral.13) is being placed in '.data..compoundliteral.13'
>>    ld.lld: warning: drivers/built-in.a(nvme/host/hwmon.o):(.data..compoundliteral.14) is being placed in '.data..compoundliteral.14'
>>    ld.lld: warning: drivers/built-in.a(nvme/host/hwmon.o):(.data..compoundliteral.15) is being placed in '.data..compoundliteral.15'
>>    ld.lld: warning: drivers/built-in.a(media/tuners/tuner-types.o):(.data..compoundliteral) is being placed in '.data..compoundliteral'
>>    ld.lld: warning: drivers/built-in.a(media/tuners/tuner-types.o):(.data..compoundliteral.79) is being placed in '.data..compoundliteral.79'
>>    ld.lld: warning: drivers/built-in.a(power/supply/power_supply_hwmon.o):(.data..compoundliteral) is being placed in '.data..compoundliteral'
>>    ld.lld: warning: drivers/built-in.a(power/supply/power_supply_hwmon.o):(.data..compoundliteral.3) is being placed in '.data..compoundliteral.3'
>>    ld.lld: warning: drivers/built-in.a(power/supply/power_supply_hwmon.o):(.data..compoundliteral.4) is being placed in '.data..compoundliteral.4'
>>    ld.lld: warning: drivers/built-in.a(power/supply/power_supply_hwmon.o):(.data..compoundliteral.5) is being placed in '.data..compoundliteral.5'
>>    ld.lld: warning: drivers/built-in.a(power/supply/power_supply_hwmon.o):(.data..compoundliteral.6) is being placed in '.data..compoundliteral.6'
>>    ld.lld: warning: drivers/built-in.a(power/supply/power_supply_hwmon.o):(.data..compoundliteral.7) is being placed in '.data..compoundliteral.7'
>> >> ld.lld: warning: drivers/built-in.a(hwmon/w83773g.o):(.data..compoundliteral) is being placed in '.data..compoundliteral'
>> >> ld.lld: warning: drivers/built-in.a(hwmon/w83773g.o):(.data..compoundliteral.6) is being placed in '.data..compoundliteral.6'
>>    ld.lld: warning: drivers/built-in.a(hwmon/w83773g.o):(.data..compoundliteral.7) is being placed in '.data..compoundliteral.7'
>>    ld.lld: warning: drivers/built-in.a(hwmon/w83773g.o):(.data..compoundliteral.8) is being placed in '.data..compoundliteral.8'
>>    ld.lld: warning: drivers/built-in.a(hwmon/adm1177.o):(.data..compoundliteral) is being placed in '.data..compoundliteral'
>>    ld.lld: warning: drivers/built-in.a(hwmon/adm1177.o):(.data..compoundliteral.9) is being placed in '.data..compoundliteral.9'
>>    ld.lld: warning: drivers/built-in.a(hwmon/adm1177.o):(.data..compoundliteral.10) is being placed in '.data..compoundliteral.10'
>>    ld.lld: warning: drivers/built-in.a(hwmon/adm1177.o):(.data..compoundliteral.11) is being placed in '.data..compoundliteral.11'
>>    ld.lld: warning: drivers/built-in.a(hwmon/adt7411.o):(.data..compoundliteral) is being placed in '.data..compoundliteral'
>>    ld.lld: warning: drivers/built-in.a(hwmon/adt7411.o):(.data..compoundliteral.4) is being placed in '.data..compoundliteral.4'
>>    ld.lld: warning: drivers/built-in.a(hwmon/adt7411.o):(.data..compoundliteral.5) is being placed in '.data..compoundliteral.5'
>>    ld.lld: warning: drivers/built-in.a(hwmon/adt7411.o):(.data..compoundliteral.6) is being placed in '.data..compoundliteral.6'
>>    ld.lld: warning: drivers/built-in.a(hwmon/axi-fan-control.o):(.data..compoundliteral) is being placed in '.data..compoundliteral'
>>    ld.lld: warning: drivers/built-in.a(hwmon/axi-fan-control.o):(.data..compoundliteral.12) is being placed in '.data..compoundliteral.12'
>>    ld.lld: warning: drivers/built-in.a(hwmon/axi-fan-control.o):(.data..compoundliteral.13) is being placed in '.data..compoundliteral.13'
>>    ld.lld: warning: drivers/built-in.a(hwmon/axi-fan-control.o):(.data..compoundliteral.14) is being placed in '.data..compoundliteral.14'
>>    ld.lld: warning: drivers/built-in.a(hwmon/axi-fan-control.o):(.data..compoundliteral.15) is being placed in '.data..compoundliteral.15'
>>    ld.lld: warning: drivers/built-in.a(hwmon/axi-fan-control.o):(.data..compoundliteral.16) is being placed in '.data..compoundliteral.16'
>>    ld.lld: warning: drivers/built-in.a(hwmon/lochnagar-hwmon.o):(.data..compoundliteral) is being placed in '.data..compoundliteral'
>>    ld.lld: warning: drivers/built-in.a(hwmon/lochnagar-hwmon.o):(.data..compoundliteral.16) is being placed in '.data..compoundliteral.16'
>>    ld.lld: warning: drivers/built-in.a(hwmon/lochnagar-hwmon.o):(.data..compoundliteral.17) is being placed in '.data..compoundliteral.17'
>>    ld.lld: warning: drivers/built-in.a(hwmon/lochnagar-hwmon.o):(.data..compoundliteral.18) is being placed in '.data..compoundliteral.18'
>>    ld.lld: warning: drivers/built-in.a(hwmon/lochnagar-hwmon.o):(.data..compoundliteral.19) is being placed in '.data..compoundliteral.19'
>>    ld.lld: warning: drivers/built-in.a(hwmon/lochnagar-hwmon.o):(.data..compoundliteral.20) is being placed in '.data..compoundliteral.20'
>>    ld.lld: warning: drivers/built-in.a(hwmon/lochnagar-hwmon.o):(.data..compoundliteral.21) is being placed in '.data..compoundliteral.21'
>>    ld.lld: warning: drivers/built-in.a(hwmon/lochnagar-hwmon.o):(.data..compoundliteral.22) is being placed in '.data..compoundliteral.22'
>>    ld.lld: warning: drivers/built-in.a(hwmon/lm75.o):(.data..compoundliteral) is being placed in '.data..compoundliteral'
>>    ld.lld: warning: drivers/built-in.a(hwmon/lm75.o):(.data..compoundliteral.7) is being placed in '.data..compoundliteral.7'
>>    ld.lld: warning: drivers/built-in.a(hwmon/lm75.o):(.data..compoundliteral.8) is being placed in '.data..compoundliteral.8'
>>    ld.lld: warning: drivers/built-in.a(hwmon/lm75.o):(.data..compoundliteral.9) is being placed in '.data..compoundliteral.9'
>>    ld.lld: warning: drivers/built-in.a(hwmon/lm75.o):(.data..compoundliteral.10) is being placed in '.data..compoundliteral.10'
>>    ld.lld: warning: drivers/built-in.a(hwmon/lm75.o):(.data..compoundliteral.11) is being placed in '.data..compoundliteral.11'
>>    ld.lld: warning: drivers/built-in.a(hwmon/lm75.o):(.data..compoundliteral.12) is being placed in '.data..compoundliteral.12'
>>    ld.lld: warning: drivers/built-in.a(hwmon/lm75.o):(.data..compoundliteral.13) is being placed in '.data..compoundliteral.13'
>>    ld.lld: warning: drivers/built-in.a(hwmon/lm75.o):(.data..compoundliteral.14) is being placed in '.data..compoundliteral.14'
>>    ld.lld: warning: drivers/built-in.a(hwmon/lm75.o):(.data..compoundliteral.15) is being placed in '.data..compoundliteral.15'
>>    ld.lld: warning: drivers/built-in.a(hwmon/lm75.o):(.data..compoundliteral.16) is being placed in '.data..compoundliteral.16'
>>    ld.lld: warning: drivers/built-in.a(hwmon/lm75.o):(.data..compoundliteral.17) is being placed in '.data..compoundliteral.17'
>>    ld.lld: warning: drivers/built-in.a(hwmon/lm75.o):(.data..compoundliteral.18) is being placed in '.data..compoundliteral.18'
>>    ld.lld: warning: drivers/built-in.a(hwmon/lm75.o):(.data..compoundliteral.19) is being placed in '.data..compoundliteral.19'
>>    ld.lld: warning: drivers/built-in.a(hwmon/lm75.o):(.data..compoundliteral.20) is being placed in '.data..compoundliteral.20'
>>    ld.lld: warning: drivers/built-in.a(hwmon/lm75.o):(.data..compoundliteral.21) is being placed in '.data..compoundliteral.21'
>>    ld.lld: warning: drivers/built-in.a(hwmon/lm75.o):(.data..compoundliteral.22) is being placed in '.data..compoundliteral.22'
>>    ld.lld: warning: drivers/built-in.a(hwmon/lm75.o):(.data..compoundliteral.23) is being placed in '.data..compoundliteral.23'
>>    ld.lld: warning: drivers/built-in.a(hwmon/lm75.o):(.data..compoundliteral.24) is being placed in '.data..compoundliteral.24'
>>    ld.lld: warning: drivers/built-in.a(hwmon/lm75.o):(.data..compoundliteral.25) is being placed in '.data..compoundliteral.25'
>>    ld.lld: warning: drivers/built-in.a(hwmon/lm75.o):(.data..compoundliteral.26) is being placed in '.data..compoundliteral.26'
>>    ld.lld: warning: drivers/built-in.a(hwmon/lm75.o):(.data..compoundliteral.27) is being placed in '.data..compoundliteral.27'
>>    ld.lld: warning: drivers/built-in.a(hwmon/lm75.o):(.data..compoundliteral.28) is being placed in '.data..compoundliteral.28'
>>    ld.lld: warning: drivers/built-in.a(hwmon/lm75.o):(.data..compoundliteral.29) is being placed in '.data..compoundliteral.29'
>>    ld.lld: warning: drivers/built-in.a(hwmon/lm75.o):(.data..compoundliteral.30) is being placed in '.data..compoundliteral.30'
>>    ld.lld: warning: drivers/built-in.a(hwmon/lm75.o):(.data..compoundliteral.31) is being placed in '.data..compoundliteral.31'
>>    ld.lld: warning: drivers/built-in.a(hwmon/lm75.o):(.data..compoundliteral.32) is being placed in '.data..compoundliteral.32'
>>    ld.lld: warning: drivers/built-in.a(hwmon/lm75.o):(.data..compoundliteral.33) is being placed in '.data..compoundliteral.33'
>>    ld.lld: warning: drivers/built-in.a(hwmon/lm75.o):(.data..compoundliteral.34) is being placed in '.data..compoundliteral.34'
>>    ld.lld: warning: drivers/built-in.a(hwmon/lm95245.o):(.data..compoundliteral) is being placed in '.data..compoundliteral'
>>    ld.lld: warning: drivers/built-in.a(hwmon/lm95245.o):(.data..compoundliteral.5) is being placed in '.data..compoundliteral.5'
>>    ld.lld: warning: drivers/built-in.a(hwmon/lm95245.o):(.data..compoundliteral.6) is being placed in '.data..compoundliteral.6'
>>    ld.lld: warning: drivers/built-in.a(hwmon/lm95245.o):(.data..compoundliteral.7) is being placed in '.data..compoundliteral.7'
>>    ld.lld: warning: drivers/built-in.a(hwmon/ltc2947-core.o):(.data..compoundliteral) is being placed in '.data..compoundliteral'
>>    ld.lld: warning: drivers/built-in.a(hwmon/ltc2947-core.o):(.data..compoundliteral.24) is being placed in '.data..compoundliteral.24'
>>    ld.lld: warning: drivers/built-in.a(hwmon/ltc2947-core.o):(.data..compoundliteral.25) is being placed in '.data..compoundliteral.25'
>>    ld.lld: warning: drivers/built-in.a(hwmon/ltc2947-core.o):(.data..compoundliteral.26) is being placed in '.data..compoundliteral.26'
>>    ld.lld: warning: drivers/built-in.a(hwmon/ltc2947-core.o):(.data..compoundliteral.27) is being placed in '.data..compoundliteral.27'
>>    ld.lld: warning: drivers/built-in.a(hwmon/ltc2947-core.o):(.data..compoundliteral.28) is being placed in '.data..compoundliteral.28'
>>    ld.lld: warning: drivers/built-in.a(hwmon/ltc2947-core.o):(.data..compoundliteral.29) is being placed in '.data..compoundliteral.29'
>>    ld.lld: warning: drivers/built-in.a(hwmon/ltc2947-core.o):(.data..compoundliteral.30) is being placed in '.data..compoundliteral.30'
>>    ld.lld: warning: drivers/built-in.a(hwmon/max6650.o):(.data..compoundliteral) is being placed in '.data..compoundliteral'
>>    ld.lld: warning: drivers/built-in.a(hwmon/max6650.o):(.data..compoundliteral.15) is being placed in '.data..compoundliteral.15'
>>    ld.lld: warning: drivers/built-in.a(hwmon/max6650.o):(.data..compoundliteral.16) is being placed in '.data..compoundliteral.16'
>>    ld.lld: warning: drivers/built-in.a(hwmon/max6650.o):(.data..compoundliteral.17) is being placed in '.data..compoundliteral.17'
>>    ld.lld: warning: net/built-in.a(ipv6/addrlabel.o):(.data..compoundliteral) is being placed in '.data..compoundliteral'
>>    ld.lld: warning: net/built-in.a(ipv6/addrlabel.o):(.data..compoundliteral.3) is being placed in '.data..compoundliteral.3'
>>    ld.lld: warning: net/built-in.a(ipv6/addrlabel.o):(.data..compoundliteral.4) is being placed in '.data..compoundliteral.4'
>>    ld.lld: warning: net/built-in.a(ipv6/addrlabel.o):(.data..compoundliteral.5) is being placed in '.data..compoundliteral.5'
>>    ld.lld: warning: net/built-in.a(ipv6/addrlabel.o):(.data..compoundliteral.6) is being placed in '.data..compoundliteral.6'
>>    ld.lld: warning: net/built-in.a(ipv6/addrlabel.o):(.data..compoundliteral.7) is being placed in '.data..compoundliteral.7'
>>    ld.lld: warning: net/built-in.a(ipv6/addrlabel.o):(.data..compoundliteral.8) is being placed in '.data..compoundliteral.8'
>>    ld.lld: warning: net/built-in.a(ipv6/addrconf_core.o):(.data..compoundliteral) is being placed in '.data..compoundliteral'
>>    ld.lld: warning: <internal>:(.symtab) is being placed in '.symtab'
>>    ld.lld: warning: <internal>:(.shstrtab) is being placed in '.shstrtab'
>>    ld.lld: warning: <internal>:(.strtab) is being placed in '.strtab'
>>
>> ---
>> 0-DAY CI Kernel Test Service, Intel Corporation
>> https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
>
>
>
> -- 
> Thanks,
> ~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/871rjn36wz.fsf%40mpe.ellerman.id.au.
