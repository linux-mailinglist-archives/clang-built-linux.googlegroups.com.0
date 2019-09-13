Return-Path: <clang-built-linux+bncBDSIZNM7U4BRB7VT6DVQKGQEFA2MCYI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x13c.google.com (mail-lf1-x13c.google.com [IPv6:2a00:1450:4864:20::13c])
	by mail.lfdr.de (Postfix) with ESMTPS id CEB2FB2883
	for <lists+clang-built-linux@lfdr.de>; Sat, 14 Sep 2019 00:36:46 +0200 (CEST)
Received: by mail-lf1-x13c.google.com with SMTP id x11sf1384064lfn.13
        for <lists+clang-built-linux@lfdr.de>; Fri, 13 Sep 2019 15:36:46 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1568414206; cv=pass;
        d=google.com; s=arc-20160816;
        b=EjMbX9UuxxWpDfcu1K3rLbxm9ecamBvgmiAA7S/2BQ3WYd3pqFLEehr6gEfQuefwT8
         2dQZpjHsyi1d9X/N0N7Td0lgpUDWS0/YxynMz2hH92gy81UpTqduUzBSkwnxB5kqP+ov
         BStBkkPWeRkXZukLI+sOOqtt9PBE0ks/5XfTh0k0Szl5/8atv6UfvmMMJ8LD3nqGCbmV
         PJnN3KefJPaKgYcUCcn+ejKAHew6Ogq9Dqrtd0spf8ZxCYEnzBT/I2Lyqhv/2HQF7nt8
         pcVIRFxGlnjt0PuJ7cgMoGuzRUEf+bI5N8ZoXv+S/IBYRlQN1qS4WjAcdc+SNJv7kwo4
         wpSw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:mail-followup-to
         :message-id:subject:cc:to:from:date:sender:dkim-signature;
        bh=fM6BAzHHAQiK1jVj3RU4vefCrjj21Zr8V/GwAv2bVJM=;
        b=cWPlVeVP8AdJ0MAHppHRSt0koeTUhCLpKSXxdJ4hEdv340Z2jddoEWJXhSmlyWIDyy
         myHf7FRjvPA6ln7ARD2H6qbefQnYLCT93SaoKFbAtab6gwMwnDUV1JCC8jkATM0ytqeI
         pbT2qZN2r6iFVjdK2A6J15AtcO4G8/djsokA24dE3wL+DAAqNEYdnIGfELNzEjTQEmwF
         sZ4wACS1Kbx0xJc81WIF4pJqboC2KrSImm4X4FUbiXPgyfJjMGAiUdEdpXzluCV45ryJ
         Ajh5qIGsVSfHO0oMHb+k/tFUoQ0crZJDOtm93+GMIOsd4AxjY1pUDwbf4VwIgjAyrhwq
         wwIQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=FQ8lqume;
       spf=pass (google.com: domain of ivan.khoronzhuk@linaro.org designates 2a00:1450:4864:20::242 as permitted sender) smtp.mailfrom=ivan.khoronzhuk@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:mail-followup-to
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=fM6BAzHHAQiK1jVj3RU4vefCrjj21Zr8V/GwAv2bVJM=;
        b=fLZ1x/pmPQe+9m4M+Idl7aSrTp2Imh3lSE7NGsTC5hh075vC/kEDN3j20MRA+iGIG7
         bfGpu5yNz1NivIeaR/ODJPzHw0FoIl94NqR289bmpm0Sq2105cmY0x8N1YXz+vjyGrKu
         3jE9VGgECN/Wkeh1D+ttvl8eJTlsXmlV2rcS0I/Al+K1VFQoJFUgNCjPtgDnZCIXMP2w
         Fe//xI+oFr9hape1hULGptZzl9eh1ZohjG6QItFQ8ELzByoW8A0PzBW77tnhakMRCqOb
         ixM6SB6jU+e92OfrovW59PEX6Cn4IHdamX8LRTenKCOX5PKFQa//hvQGF4WnpNuKciTs
         wHXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :mail-followup-to:references:mime-version:content-disposition
         :in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=fM6BAzHHAQiK1jVj3RU4vefCrjj21Zr8V/GwAv2bVJM=;
        b=k7xopWobmG4WoohbGz7PE0sQDuHOKy4fQcFzG2mHu/oHQwGl+Po5uMUi01IiNqUZPv
         8cGBce357o4P1ENT9ii891x+5BWIlvAgcDlNjfqghxnANUbfUf4HwG/8g2X6Pd8Gz2QN
         iOVSp4IOLNJ4eNKBKOPkofBlst8lBPS93ar38TSObVzteSGbDrwoa6H9QzTcWa1m5XfT
         vfikHiz9sHE8I3Frm0W6nkpirc7ysHxxrEB+qcKfsz0y1SzSh2fvRU9/PRGZPu/g3I/b
         rVRJGCwkn4cxxAhMhDAQ2OjJWar+ZjaDuczdhpr6q4XVH9ZwgaMb9dZUWoBJhrwkFJhd
         dI1Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAV9d5PzLqKN2a2YSyP+/XvGl1YOjbzxYjzLEzpz+HtbfPXXxy6U
	AEbW/3rpLmd7xdG9YrbnDgg=
X-Google-Smtp-Source: APXvYqzKtfO2dr7nxos3dv9dhu8b+6L1LMZDkZGqoeBMixlpGZK/VcvPMzuAsXCFM5CLHXzMd7KfLw==
X-Received: by 2002:a19:770a:: with SMTP id s10mr14782706lfc.30.1568414206445;
        Fri, 13 Sep 2019 15:36:46 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a19:5201:: with SMTP id m1ls1585975lfb.3.gmail; Fri, 13 Sep
 2019 15:36:46 -0700 (PDT)
X-Received: by 2002:a05:6512:49b:: with SMTP id v27mr31623180lfq.68.1568414206028;
        Fri, 13 Sep 2019 15:36:46 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1568414206; cv=none;
        d=google.com; s=arc-20160816;
        b=T8wbb/SU/J53yG7/bUlndppxk00hjXqOnncLQ/QUmV4fYD3P3LIS7KLrDCMqYOSlNQ
         8nwgFdWS6fsYEx59PLmU6uKjIh77TiQVGHO+Fu/bjRIAWvGDiReC+/wovvfoiKSXrO1m
         4trfGftAAo61rRI1FnSMaYIxWDgtziYkskbhiZhqSP4e8MzfwNfcdxIuQX6wBNo2c/Mi
         iqopSvDa1/dj/111EioBzzmSOSs5V6727F08+GzVtzg8PMgypF/Q0wq+6DwiUPGPaqkZ
         rU5JDMYhcjj4rjPsEXFwvgz7XFLngpsmExUuWwwdvOSOA/PNCG4HlNL/QS1rNPiy/vNv
         fMzw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :mail-followup-to:message-id:subject:cc:to:from:date:dkim-signature;
        bh=sfVAv/G3SBA3hh8aRouxiJvEsUEGrIoANWZewhhUKls=;
        b=qTxZlsO+HgOpD6u7SHqYym0o0aKGeDn/3+qqvEwBMyu6oM6hlAwDiJPDZbTzjy3243
         Re4SejMJCC3NuAdT6dT+9QBfnQHAtbGdUE6K/8gslp+PY3WgoHf+sFkV2xJ8Qqgfx/6K
         EYS9pB7s96CMGfrNcRCFAde+8qkZE68MdxOvcFhC293yUko5tVhe4JgNAY/U9j28OWVQ
         TpxMr2f+0DR3pjfcKaqd/WFmELLsZ7b4NZTyKc9aBLc2k7HRDNKmLLYZciqaoNByRHWU
         4mw7jYXSpMhM8Rgg8RuoXQHFoKYIioqfbf4XEqlvoUM0WgL1KtbmrwtkHAlmGf6KNFT6
         lZhg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=FQ8lqume;
       spf=pass (google.com: domain of ivan.khoronzhuk@linaro.org designates 2a00:1450:4864:20::242 as permitted sender) smtp.mailfrom=ivan.khoronzhuk@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: from mail-lj1-x242.google.com (mail-lj1-x242.google.com. [2a00:1450:4864:20::242])
        by gmr-mx.google.com with ESMTPS id x17si2240756ljh.0.2019.09.13.15.36.45
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 13 Sep 2019 15:36:45 -0700 (PDT)
Received-SPF: pass (google.com: domain of ivan.khoronzhuk@linaro.org designates 2a00:1450:4864:20::242 as permitted sender) client-ip=2a00:1450:4864:20::242;
Received: by mail-lj1-x242.google.com with SMTP id 7so28507356ljw.7
        for <clang-built-linux@googlegroups.com>; Fri, 13 Sep 2019 15:36:45 -0700 (PDT)
X-Received: by 2002:a2e:9081:: with SMTP id l1mr12064327ljg.33.1568414205743;
        Fri, 13 Sep 2019 15:36:45 -0700 (PDT)
Received: from khorivan (168-200-94-178.pool.ukrtel.net. [178.94.200.168])
        by smtp.gmail.com with ESMTPSA id h25sm8508971lfj.81.2019.09.13.15.36.44
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Fri, 13 Sep 2019 15:36:45 -0700 (PDT)
Date: Sat, 14 Sep 2019 01:36:43 +0300
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
Subject: Re: [PATCH bpf-next 11/11] samples: bpf: makefile: add sysroot
 support
Message-ID: <20190913223642.GG26724@khorivan>
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
 <20190910103830.20794-12-ivan.khoronzhuk@linaro.org>
 <e967744b-0286-d92f-9fc8-70f5759cc4a1@fb.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Disposition: inline
In-Reply-To: <e967744b-0286-d92f-9fc8-70f5759cc4a1@fb.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Original-Sender: ivan.khoronzhuk@linaro.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b=FQ8lqume;       spf=pass
 (google.com: domain of ivan.khoronzhuk@linaro.org designates
 2a00:1450:4864:20::242 as permitted sender) smtp.mailfrom=ivan.khoronzhuk@linaro.org;
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

On Fri, Sep 13, 2019 at 09:45:31PM +0000, Yonghong Song wrote:
>
>
>On 9/10/19 11:38 AM, Ivan Khoronzhuk wrote:
>> Basically it only enables that was added by previous couple fixes.
>> For sure, just make tools/include to be included after sysroot
>> headers.
>>
>> export ARCH=arm
>> export CROSS_COMPILE=arm-linux-gnueabihf-
>> make samples/bpf/ SYSROOT="path/to/sysroot"
>>
>> Sysroot contains correct libs installed and its headers ofc.
>> Useful when working with NFC or virtual machine.
>>
>> Signed-off-by: Ivan Khoronzhuk <ivan.khoronzhuk@linaro.org>
>> ---
>>   samples/bpf/Makefile   |  5 +++++
>>   samples/bpf/README.rst | 10 ++++++++++
>>   2 files changed, 15 insertions(+)
>>
>> diff --git a/samples/bpf/Makefile b/samples/bpf/Makefile
>> index 4edc5232cfc1..68ba78d1dbbe 100644
>> --- a/samples/bpf/Makefile
>> +++ b/samples/bpf/Makefile
>> @@ -177,6 +177,11 @@ ifeq ($(ARCH), arm)
>>   CLANG_EXTRA_CFLAGS := $(D_OPTIONS)
>>   endif
>>
>> +ifdef SYSROOT
>> +ccflags-y += --sysroot=${SYSROOT}
>> +PROGS_LDFLAGS := -L${SYSROOT}/usr/lib
>> +endif
>> +
>>   ccflags-y += -I$(objtree)/usr/include
>>   ccflags-y += -I$(srctree)/tools/lib/bpf/
>>   ccflags-y += -I$(srctree)/tools/testing/selftests/bpf/
>> diff --git a/samples/bpf/README.rst b/samples/bpf/README.rst
>> index 5f27e4faca50..786d0ab98e8a 100644
>> --- a/samples/bpf/README.rst
>> +++ b/samples/bpf/README.rst
>> @@ -74,3 +74,13 @@ samples for the cross target.
>>   export ARCH=arm64
>>   export CROSS_COMPILE="aarch64-linux-gnu-"
>>   make samples/bpf/ LLC=~/git/llvm/build/bin/llc CLANG=~/git/llvm/build/bin/clang
>> +
>> +If need to use environment of target board (headers and libs), the SYSROOT
>> +also can be set, pointing on FS of target board:
>> +
>> +export ARCH=arm64
>> +export CROSS_COMPILE="aarch64-linux-gnu-"
>> +make samples/bpf/ SYSROOT=~/some_sdk/linux-devkit/sysroots/aarch64-linux-gnu
>> +
>> +Setting LLC and CLANG is not necessarily if it's installed on HOST and have
>> +in its targets appropriate arch triple (usually it has several arches).
>
>You have very good description about how to build and test in cover
>letter. Could you include those instructions here as well? This will
>help keep a record so later people can try/test if needed.

I will try.
Thanks!!!

-- 
Regards,
Ivan Khoronzhuk

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190913223642.GG26724%40khorivan.
