Return-Path: <clang-built-linux+bncBDSIZNM7U4BRBLNS6DVQKGQEWB7LDLY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x338.google.com (mail-wm1-x338.google.com [IPv6:2a00:1450:4864:20::338])
	by mail.lfdr.de (Postfix) with ESMTPS id 801EAB2879
	for <lists+clang-built-linux@lfdr.de>; Sat, 14 Sep 2019 00:33:17 +0200 (CEST)
Received: by mail-wm1-x338.google.com with SMTP id z3sf1769494wmk.7
        for <lists+clang-built-linux@lfdr.de>; Fri, 13 Sep 2019 15:33:17 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1568413997; cv=pass;
        d=google.com; s=arc-20160816;
        b=MmVMvnxC5LX8Tj2F0HRMzy4JL2d0gwQjbR1VaJpz/WsDiEFE9qXF1TQuE82dIlbNHR
         9J7uZtE44QMbrE1BaGJt9bVC7Fx6ZZt4nEXBTEPH7bNbKdfO1sRLxNBWnX5oXK7R1p6Z
         8Zt/Rd8XecZ+vmJ8KPD1MqH8YY/qoW4LJnx0fJmyUSOT10rMYs12mMpP0XEXv+PTQca7
         SlTlbmT7CQxyB8Rc/MgJikhuy1xQDGZj5KgT/hp6iBfq4aHnW4uf+fUJZoeAE3oMIjMU
         UrquDxhzw3FerDlZqFarsqM74CHnwDMb4sPZKbbHWgHeU1uYEgcdytz9SPIWhOCfnfL1
         wvBg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:mail-followup-to
         :message-id:subject:cc:to:from:date:sender:dkim-signature;
        bh=FalZuLQ5l8f8tx5ZgimHuUIy5oAuHE6KVoVjt4qvO0Y=;
        b=Qufw3IB9xJEJkyPPvsiRRZ24Otf/K0fscogzo3yLx3xLpF9sWHGqi1owIJmcxADlUt
         V6agsXOD/AhrNTGxBdH9ov3Gazlk0axiGgMCTk5nR/6rP+buOY9yDVl5Modt6k4jJX7Y
         AiZUfq2Xmgp9SmFv7urMJnbcYGoMkc0S2D4N8PzulyPde+7QXVq1oBhM+2Xuo1jClqOl
         miUPZkMItg9hUzVMAqZd+eCo4sw0kJ7YP1joIVeQSc7U0QaL5S7PuBWNSVH0+SHhcbjQ
         DMQU8hy72doF9NBks0lLZ/ypVIO3JOSbi5LCIo7YExNXQqpOSvCjAQ8IWetpN3ApDxVU
         8sXg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=yduZq7G9;
       spf=pass (google.com: domain of ivan.khoronzhuk@linaro.org designates 2a00:1450:4864:20::142 as permitted sender) smtp.mailfrom=ivan.khoronzhuk@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:mail-followup-to
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=FalZuLQ5l8f8tx5ZgimHuUIy5oAuHE6KVoVjt4qvO0Y=;
        b=I+gD0f7plqtNhFY1ZJ/r6sJcZPtUH4JjP6BgfTnQEKPdW1hO1HX7dHfQlCbMSy/Frp
         hN7pmcaoaU9B5ZTdeX0x51rHCAmi77dBJ7nvICG4o0fdwRbaYueh+5X45ZD0RKwoVQGI
         eXc4hF64QvuODJWIheaEKpz/fwfVnj1yR4r1fRN0g92EONGlFR47FlXvr+r9qA4Y4U5e
         kiW/2YWWHn/1EfZ1xp+V0GPu5eaY0tX0DHlx3L06UbLeXQdIQrx7PcakvIeLlOY40tHu
         /Kr2bBiDOHHFxDuOHuCdJCUAPwZHhhi7gF68WIdu2TKPDgN84VVABcZtAbZX7u5r53dC
         +BBQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :mail-followup-to:references:mime-version:content-disposition
         :in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=FalZuLQ5l8f8tx5ZgimHuUIy5oAuHE6KVoVjt4qvO0Y=;
        b=C6+4IDPGTNgjtHDjifwGarzMUqJzdSmQgWtr7rx909xAwwlE8xTL/jVBX+fNLEanh0
         jfpwt9Upmrw3gOT2I2YQXTX0ewH1Bmxtszhxm9/gBu2ae10PZvWWixera1EO2GYu7Xz1
         yil+YjI6kjgUrWNTyrzFqRziysdrQDmwHUfVB0h8XyGnYVZdSIxe6SSsV0nzhot96b27
         E6n/o2PLa6ZDxmF/rg1Z9kfriXs/BsaaaEtT/9KZ13nR9UxxHk1AFHwAcKGs2yB2N38F
         MrMjySf53MJFs3czGJMlihbcJWcT7xPvUCLe1f9F3QCjHyPvKfVar2SPQXaydKVWKHAc
         9vWQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAX5N5e3amXUKr+J6OleXpuc0Yqr3Gypl4dfbA+r6EcA7LbyRMSe
	XnIsJIe0zy8ahQEi4kwvnkw=
X-Google-Smtp-Source: APXvYqyBt5BdtyaD6tp+UIIyzWr4Et2tEXjaXCKlhqnM3fDalfg2G6g6/AY0FUJy+fhxz2lN81khdg==
X-Received: by 2002:a1c:a90b:: with SMTP id s11mr5464657wme.92.1568413997223;
        Fri, 13 Sep 2019 15:33:17 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5d:660f:: with SMTP id n15ls8861714wru.11.gmail; Fri, 13
 Sep 2019 15:33:16 -0700 (PDT)
X-Received: by 2002:adf:e2d0:: with SMTP id d16mr12250316wrj.245.1568413996804;
        Fri, 13 Sep 2019 15:33:16 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1568413996; cv=none;
        d=google.com; s=arc-20160816;
        b=VIEyx8eQ8Vaemep6exMHdnjFxyVvvXKRx4Y6SN6uxIQrZGZTIFZTX2XeQa7vIzMYPv
         TL5wzMa+ynDegFxOZY67PPTu6ne2dvhqHBREpqXDJUngOfjIK2AaXjGSZtLvsUdlEXNf
         8zZrQnUbd//gEQNZoBVZGdtgrF1x9zl5j1MJDXaerwAezJmiiLHfEKMNu/Qqei/vZNyL
         BXF3uqzmejcAzB0Zskvc+BZqDHsStcjuJS33XAetiR32L/UjfCu4KbPlcEdFJBv9PsuO
         k93wFW+CHMzcxv0n6Lnbl9Zz8gDeFyX8gumBQpEeiEf2xT9KrBvaNImM+AxMWi3oCnwT
         yITg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :mail-followup-to:message-id:subject:cc:to:from:date:dkim-signature;
        bh=ihmb3q/NdECGRR5zzEyyPCuHVNkS8lC17ByG/rKgfTs=;
        b=dXr7XdIuoazbWBfZFf1HtqANYsRBQFfHCAXOZ1y/kFD67GLKOUhb9hu3HaYHzTsKgR
         jk5/SPOGJkbAGLNih7Nuuw14YEWCqCnu/yksHJTq+uWwZ/rm6nXClZ8W3zB+N+g46KT3
         K4bk4YM0rH7B52Rp7D5NrVJbT9WbheqW8Ew+BtieTp5lYrx05NXZ9f88nxkMCp2qkOX7
         NLZ1Dhfv4qSJUMqeJE59R3B06kGtgQN4taFYK+OEkSoJlDCJ7KaiIUI4Oxb6jtnUCPeB
         3n6wxonHmhghdvNuEfIEnMkemV6sppbKHUZ3sXGVy916QDFRXt3igrGG4nLS5am4y+5G
         tjzw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=yduZq7G9;
       spf=pass (google.com: domain of ivan.khoronzhuk@linaro.org designates 2a00:1450:4864:20::142 as permitted sender) smtp.mailfrom=ivan.khoronzhuk@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: from mail-lf1-x142.google.com (mail-lf1-x142.google.com. [2a00:1450:4864:20::142])
        by gmr-mx.google.com with ESMTPS id 5si219397wmf.1.2019.09.13.15.33.16
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 13 Sep 2019 15:33:16 -0700 (PDT)
Received-SPF: pass (google.com: domain of ivan.khoronzhuk@linaro.org designates 2a00:1450:4864:20::142 as permitted sender) client-ip=2a00:1450:4864:20::142;
Received: by mail-lf1-x142.google.com with SMTP id t8so23221648lfc.13
        for <clang-built-linux@googlegroups.com>; Fri, 13 Sep 2019 15:33:16 -0700 (PDT)
X-Received: by 2002:a19:d6:: with SMTP id 205mr9338872lfa.144.1568413996212;
        Fri, 13 Sep 2019 15:33:16 -0700 (PDT)
Received: from khorivan (168-200-94-178.pool.ukrtel.net. [178.94.200.168])
        by smtp.gmail.com with ESMTPSA id r19sm6732884ljd.95.2019.09.13.15.33.15
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Fri, 13 Sep 2019 15:33:16 -0700 (PDT)
Date: Sat, 14 Sep 2019 01:33:13 +0300
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
Subject: Re: [PATCH bpf-next 10/11] libbpf: makefile: add C/CXX/LDFLAGS to
 libbpf.so and test_libpf targets
Message-ID: <20190913223313.GF26724@khorivan>
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
 <20190910103830.20794-11-ivan.khoronzhuk@linaro.org>
 <0ad42019-2614-b70c-f93e-527c136bba83@fb.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Disposition: inline
In-Reply-To: <0ad42019-2614-b70c-f93e-527c136bba83@fb.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Original-Sender: ivan.khoronzhuk@linaro.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b=yduZq7G9;       spf=pass
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

On Fri, Sep 13, 2019 at 09:43:22PM +0000, Yonghong Song wrote:
>
>
>On 9/10/19 11:38 AM, Ivan Khoronzhuk wrote:
>> In case of LDFLAGS and EXTRA_CC/CXX flags there is no way to pass them
>> correctly to build command, for instance when --sysroot is used or
>> external libraries are used, like -lelf, wich can be absent in
>> toolchain. This is used for samples/bpf cross-compiling allowing to
>> get elf lib from sysroot.
>>
>> Signed-off-by: Ivan Khoronzhuk <ivan.khoronzhuk@linaro.org>
>> ---
>>   samples/bpf/Makefile   |  8 +++++++-
>>   tools/lib/bpf/Makefile | 11 ++++++++---
>>   2 files changed, 15 insertions(+), 4 deletions(-)
>
>Could you separate this patch into two?
>One of libbpf and another for samples.
>
>The subject 'libbpf: ...' is not entirely accurate.
Yes, ofc.
But there is too many patches already, but better a lot of small
changes then couple huge.

>
>>
>> diff --git a/samples/bpf/Makefile b/samples/bpf/Makefile
>> index 79c9aa41832e..4edc5232cfc1 100644
>> --- a/samples/bpf/Makefile
>> +++ b/samples/bpf/Makefile
>> @@ -186,6 +186,10 @@ ccflags-y += -I$(srctree)/tools/perf
>>   ccflags-y += $(D_OPTIONS)
>>   ccflags-y += -Wall
>>   ccflags-y += -fomit-frame-pointer
>> +
>> +EXTRA_CXXFLAGS := $(ccflags-y)
>> +
>> +# options not valid for C++
>>   ccflags-y += -Wmissing-prototypes
>>   ccflags-y += -Wstrict-prototypes
>>
>> @@ -252,7 +256,9 @@ clean:
>>
>>   $(LIBBPF): FORCE
>>   # Fix up variables inherited from Kbuild that tools/ build system won't like
>> -	$(MAKE) -C $(dir $@) RM='rm -rf' LDFLAGS= srctree=$(BPF_SAMPLES_PATH)/../../ O=
>> +	$(MAKE) -C $(dir $@) RM='rm -rf' EXTRA_CFLAGS="$(PROGS_CFLAGS)" \
>> +		EXTRA_CXXFLAGS="$(EXTRA_CXXFLAGS)" LDFLAGS=$(PROGS_LDFLAGS) \
>> +		srctree=$(BPF_SAMPLES_PATH)/../../ O=
>>
>>   $(obj)/syscall_nrs.h:	$(obj)/syscall_nrs.s FORCE
>>   	$(call filechk,offsets,__SYSCALL_NRS_H__)
>> diff --git a/tools/lib/bpf/Makefile b/tools/lib/bpf/Makefile
>> index c6f94cffe06e..bccfa556ef4e 100644
>> --- a/tools/lib/bpf/Makefile
>> +++ b/tools/lib/bpf/Makefile
>> @@ -94,6 +94,10 @@ else
>>     CFLAGS := -g -Wall
>>   endif
>>
>> +ifdef EXTRA_CXXFLAGS
>> +  CXXFLAGS := $(EXTRA_CXXFLAGS)
>> +endif
>> +
>>   ifeq ($(feature-libelf-mmap), 1)
>>     override CFLAGS += -DHAVE_LIBELF_MMAP_SUPPORT
>>   endif
>> @@ -176,8 +180,9 @@ $(BPF_IN): force elfdep bpfdep
>>   $(OUTPUT)libbpf.so: $(OUTPUT)libbpf.so.$(LIBBPF_VERSION)
>>
>>   $(OUTPUT)libbpf.so.$(LIBBPF_VERSION): $(BPF_IN)
>> -	$(QUIET_LINK)$(CC) --shared -Wl,-soname,libbpf.so.$(LIBBPF_MAJOR_VERSION) \
>> -				    -Wl,--version-script=$(VERSION_SCRIPT) $^ -lelf -o $@
>> +	$(QUIET_LINK)$(CC) $(LDFLAGS) \
>> +		--shared -Wl,-soname,libbpf.so.$(LIBBPF_MAJOR_VERSION) \
>> +		-Wl,--version-script=$(VERSION_SCRIPT) $^ -lelf -o $@
>>   	@ln -sf $(@F) $(OUTPUT)libbpf.so
>>   	@ln -sf $(@F) $(OUTPUT)libbpf.so.$(LIBBPF_MAJOR_VERSION)
>>
>> @@ -185,7 +190,7 @@ $(OUTPUT)libbpf.a: $(BPF_IN)
>>   	$(QUIET_LINK)$(RM) $@; $(AR) rcs $@ $^
>>
>>   $(OUTPUT)test_libbpf: test_libbpf.cpp $(OUTPUT)libbpf.a
>> -	$(QUIET_LINK)$(CXX) $(INCLUDES) $^ -lelf -o $@
>> +	$(QUIET_LINK)$(CXX) $(CXXFLAGS) $(LDFLAGS) $(INCLUDES) $^ -lelf -o $@
>>
>>   $(OUTPUT)libbpf.pc:
>>   	$(QUIET_GEN)sed -e "s|@PREFIX@|$(prefix)|" \
>>

-- 
Regards,
Ivan Khoronzhuk

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190913223313.GF26724%40khorivan.
