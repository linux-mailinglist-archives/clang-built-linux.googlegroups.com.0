Return-Path: <clang-built-linux+bncBDSIZNM7U4BRB54R6DVQKGQEBYYLSMA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x340.google.com (mail-wm1-x340.google.com [IPv6:2a00:1450:4864:20::340])
	by mail.lfdr.de (Postfix) with ESMTPS id 0ECA5B272A
	for <lists+clang-built-linux@lfdr.de>; Fri, 13 Sep 2019 23:24:08 +0200 (CEST)
Received: by mail-wm1-x340.google.com with SMTP id f10sf1818774wmh.8
        for <lists+clang-built-linux@lfdr.de>; Fri, 13 Sep 2019 14:24:08 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1568409847; cv=pass;
        d=google.com; s=arc-20160816;
        b=hNnwnjgV3675yA9WMkspYNYWgwduCx8+NDoDjJbecXw9CLQMbrBNTYGbXiVc95Q5yF
         Yk9FUMq/2VfNmO99NfLwGdTilonlYsrMKE8dj9SKzcUZgzCY2Cq7F09e46m2jwI/0J+v
         nxywtnJiiMa94KcANZ7vss6zzRmBxL+z+J0ib67idTzhhNEFX7pzA0Qm+SyG73geDrQM
         tYVkYxicnrm0u2JufncbUVDlkqv2OUCjaR21z5ORyWd59zQ3ve3TWXCmS9tiWHyxvUuG
         Xkz2NjYKz6LZTYz/XN0NAGvqnSvF9RQaCxzDxztYjGCQudaxuFhzXl2Gbf/h1TomPpaM
         QqbA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:mail-followup-to
         :message-id:subject:cc:to:from:date:sender:dkim-signature;
        bh=5YNMpFvWvE4qiDgG+ciBTRk9hBYLRQPA2vEvOcj0UbQ=;
        b=bREBcE1JwZjv1mOvUqDfMI/eZGbjOcKlht3d3BshGnXN1snbf1FAWHAzbA/mW/jD39
         de5/NtN7DN3/bcs3Ygytnw9HbUlOt9tuT18qAfC3dC/HR4CHRShqN6EqM1k+is+Lezw+
         FUJAAQdbGYOOewHGeIoKmuD4VM3g2ht/ZLnCibP932HJIFZOL2C9qBGuIrI6ywUNQJsN
         MbQ+kqDN4XoB4tiqLU+WaUrLKe4BrA1Y4Vz1t01Ufpq3MlUB60KOElN2EFoDtWpssrA5
         qhaQU+moX5v4mzMiLJptrlRWjFXh0sK+pxFEcNQLh97LPO4t/LGFS6vOSoZvL5mOZu56
         O7Cg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=vXIy2wUt;
       spf=pass (google.com: domain of ivan.khoronzhuk@linaro.org designates 2a00:1450:4864:20::144 as permitted sender) smtp.mailfrom=ivan.khoronzhuk@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:mail-followup-to
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=5YNMpFvWvE4qiDgG+ciBTRk9hBYLRQPA2vEvOcj0UbQ=;
        b=PJUEUC/5oNPePedM8TPh3hUE3Nt4AmO8Tw1fpvRXSwcMUUXOIZ08rlHJXmDS2NTtXy
         GPSzoND5+37p0Jd4XrX63iuizxFqTresRRXUSX0rCv3o5TcUZDHz/DDhVgKN9syx7IuJ
         Tm4NGplNf1mXVKjhabgPMDfHVvbB3j1ArJwPayTWNChwR9BSQBLPeWO4JLMnX8k1BmKb
         qcdfkW9754sGWDUeBZAaOJCY19pUEmfNizfck82PxxkkHhcQyU8Xlo73F/0kfqkoNfBk
         hco2R1qtbP/UM9glEkqXphtBMI9kmb9Gw4sM7QkMk2r8qvLjKDsHrLSmVY7kJq7LICR5
         Rm/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :mail-followup-to:references:mime-version:content-disposition
         :in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=5YNMpFvWvE4qiDgG+ciBTRk9hBYLRQPA2vEvOcj0UbQ=;
        b=ag9fL341OMXOFnRhpjR2xP2qACGWlPkvTBQWfP1+gqhVv86eg8/eotTDOWR0MjFuOT
         7CkrBe1/Lo56e9VzJzeXvyO0XxyKUaICwiNZF/7pPQFuv1Op/y7BIeeh2YHakP4QfRzK
         7dTXbo6wVw5ersWwgBEiIAow7z7MR9e9GEyYrvB6IJJYCFbOp1PKDWDuPUSGpFCeEG+O
         Qa/zt49j+ZWRiKjRa/eYk4HXrVa20AduwjRc4oeF004uQrjYYUh0LwX8Gx9+/rk5pZDr
         Gm6oVfntbPav49qMEvHqPo29n7V+uRjfRJWBzVBlb7xaLYXbhh2CbJoFOWoZ8ygbHkhH
         +jLQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUa4GIDf2v4yvmCNb2076GfH2ho2skodHfvK0jdHpqpg/o392mp
	+GkRujMRnlb4KNR3ZvkD7kQ=
X-Google-Smtp-Source: APXvYqzFMRCdFyxnvwOjr0zlNZ2cx+aSP5FpzDDElRYH7jXqffbRXfXkqO7u4tuSjSHUYebO5X5xIQ==
X-Received: by 2002:a05:6000:1632:: with SMTP id v18mr44405899wrb.61.1568409847675;
        Fri, 13 Sep 2019 14:24:07 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:adf:f5c1:: with SMTP id k1ls1889441wrp.0.gmail; Fri, 13 Sep
 2019 14:24:07 -0700 (PDT)
X-Received: by 2002:adf:b3c1:: with SMTP id x1mr33805300wrd.33.1568409847292;
        Fri, 13 Sep 2019 14:24:07 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1568409847; cv=none;
        d=google.com; s=arc-20160816;
        b=kTme2I2or4xqXlUhGB2Qa+XXXi5MNgN/bbboJ49dAwQkVjxthSW403FRPNX0MPWQJ9
         aLGsCewTN1xJ5mMKWTWFBXUTWwTWZnKis10vUuPlusZ/aIy/I2t0SM8Fh/sbOLnbGPXm
         QONgh1uC4hwfkYhvZrc7IRYAvlpXmoL47xVYpwsYPDrRtVENqwye9WcVMHD8nSgC7UDW
         44W+DaLgPge1HlfMPe6y7ZkyYwU8S/mZ/389p04dLWfbXau4QY+FoMdJtxBu/AaCrslE
         Dd1eTUDN7T2Eq6SLi7iYkXQidV6GhsVkiTHKH9etkFeZvMDfSQEncJEwGLzGKBJ6ha1a
         dCfg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :mail-followup-to:message-id:subject:cc:to:from:date:dkim-signature;
        bh=M7RhwXkvx5UdXmM9G4lNP2WF3fIHiZECXKfzifEwcp4=;
        b=wsisijDgysEvZoNoGAYBZfBWKqDg5r+L8zlafv0VsNLUJJVodW9eYhxRhqIGQNZZE8
         NPPzoHuG9AI/D1RkC7ruLgc9/zUvSPblUxBSWv9ZKedB7hCpXh+k2YvIIfZsT94sOYW8
         NhlIqs9Nv2TuF5a0zFhEnA/JUyj5l5bMYwsTo0BT6xiv/+B0qc9PTys2t8NWM53BgY/M
         qSL9CbfPsF3Aj1UAKAxJi+JP2dGT6aqw9/EOG5/3SusSXMObpTtlhK2COWNKrYMajH2b
         ydvrFQruUw/shddee8HEnGTEZv3z+VT3+iw7UGKqFzuSOZBoFprJwb1+4YIhJJNwCbT4
         CphQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=vXIy2wUt;
       spf=pass (google.com: domain of ivan.khoronzhuk@linaro.org designates 2a00:1450:4864:20::144 as permitted sender) smtp.mailfrom=ivan.khoronzhuk@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: from mail-lf1-x144.google.com (mail-lf1-x144.google.com. [2a00:1450:4864:20::144])
        by gmr-mx.google.com with ESMTPS id m1si151031wrs.0.2019.09.13.14.24.07
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 13 Sep 2019 14:24:07 -0700 (PDT)
Received-SPF: pass (google.com: domain of ivan.khoronzhuk@linaro.org designates 2a00:1450:4864:20::144 as permitted sender) client-ip=2a00:1450:4864:20::144;
Received: by mail-lf1-x144.google.com with SMTP id t8so23123228lfc.13
        for <clang-built-linux@googlegroups.com>; Fri, 13 Sep 2019 14:24:07 -0700 (PDT)
X-Received: by 2002:a19:4a10:: with SMTP id x16mr34910188lfa.126.1568409846959;
        Fri, 13 Sep 2019 14:24:06 -0700 (PDT)
Received: from khorivan (168-200-94-178.pool.ukrtel.net. [178.94.200.168])
        by smtp.gmail.com with ESMTPSA id p8sm6619563ljn.93.2019.09.13.14.24.05
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Fri, 13 Sep 2019 14:24:06 -0700 (PDT)
Date: Sat, 14 Sep 2019 00:24:04 +0300
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
Subject: Re: [PATCH bpf-next 05/11] samples: bpf: makefile: use D vars from
 KBUILD_CFLAGS to handle headers
Message-ID: <20190913212402.GB26724@khorivan>
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
 <20190910103830.20794-6-ivan.khoronzhuk@linaro.org>
 <97ca4228-145a-2449-b4ba-8e79380a54f4@fb.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Disposition: inline
In-Reply-To: <97ca4228-145a-2449-b4ba-8e79380a54f4@fb.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Original-Sender: ivan.khoronzhuk@linaro.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b=vXIy2wUt;       spf=pass
 (google.com: domain of ivan.khoronzhuk@linaro.org designates
 2a00:1450:4864:20::144 as permitted sender) smtp.mailfrom=ivan.khoronzhuk@linaro.org;
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

On Fri, Sep 13, 2019 at 09:12:01PM +0000, Yonghong Song wrote:
>
>
>On 9/10/19 11:38 AM, Ivan Khoronzhuk wrote:
>> The kernel headers are reused from samples bpf, and autoconf.h is not
>> enough to reflect complete arch configuration for clang. But CLANG-bpf
>> cmds are sensitive for assembler part taken from linux headers and -D
>> vars, usually used in CFLAGS, should be carefully added for each arch.
>> For that, for CLANG-bpf, lets filter them only for arm arch as it
>> definitely requires __LINUX_ARM_ARCH__ to be set, but ignore for
>> others till it's really needed. For arm, -D__LINUX_ARM_ARCH__ is min
>> version used as instruction set selector. In another case errors
>> like "SMP is not supported" for arm and bunch of other errors are
>> issued resulting to incorrect final object.
>>
>> Later D_OPTIONS can be used for gcc part.
>> ---
>>   samples/bpf/Makefile | 9 +++++++++
>>   1 file changed, 9 insertions(+)
>>
>> diff --git a/samples/bpf/Makefile b/samples/bpf/Makefile
>> index 8ecc5d0c2d5b..6492b7e65c08 100644
>> --- a/samples/bpf/Makefile
>> +++ b/samples/bpf/Makefile
>> @@ -185,6 +185,15 @@ HOSTLDLIBS_map_perf_test	+= -lrt
>>   HOSTLDLIBS_test_overhead	+= -lrt
>>   HOSTLDLIBS_xdpsock		+= -pthread
>>
>> +# Strip all expet -D options needed to handle linux headers
>> +# for arm it's __LINUX_ARM_ARCH__ and potentially others fork vars
>> +D_OPTIONS = $(shell echo "$(KBUILD_CFLAGS) " | sed 's/[[:blank:]]/\n/g' | \
>> +	sed '/^-D/!d' | tr '\n' ' ')
>> +
>> +ifeq ($(ARCH), arm)
>> +CLANG_EXTRA_CFLAGS := $(D_OPTIONS)
>> +endif
>
>Do you need this for native compilation?
Yes, native "arm" also requires it.

>
>so arm64 compilation does not need this?
yes, now only arm

>If only -D__LINUX_ARM_ARCH__ is needed, maybe just
>with
>    CLANG_EXTRA_CFLAGS := -D__LINUX_ARM_ARCH__
Value also needed: -D__LINUX_ARM_ARCH_=7 or -D__LINUX_ARM_ARCH_=6
So, need retrieve it.

>Otherwise, people will wonder whether this is needed for
>other architectures. Or just do
>    CLANG_EXTRA_CFLAGS := $(D_OPTIONS)
>for all cross compilation?
arm, cross and native requires it.

Will do this:

# Strip all expet -D options needed to handle linux headers
# for arm it's __LINUX_ARM_ARCH__ and potentially others fork vars
ifeq ($(ARCH), arm)
D_OPTIONS = $(shell echo "$(KBUILD_CFLAGS) " | sed 's/[[:blank:]]/\n/g' | \
	sed '/^-D/!d' | tr '\n' ' ')
endif

CLANG_EXTRA_CFLAGS := $(D_OPTIONS)



>
>> +
>>   # Allows pointing LLC/CLANG to a LLVM backend with bpf support, redefine on cmdline:
>>   #  make samples/bpf/ LLC=~/git/llvm/build/bin/llc CLANG=~/git/llvm/build/bin/clang
>>   LLC ?= llc
>>

-- 
Regards,
Ivan Khoronzhuk

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190913212402.GB26724%40khorivan.
