Return-Path: <clang-built-linux+bncBDSIZNM7U4BRBBMGRDWAKGQEXORXFBQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x337.google.com (mail-wm1-x337.google.com [IPv6:2a00:1450:4864:20::337])
	by mail.lfdr.de (Postfix) with ESMTPS id B781FB6126
	for <lists+clang-built-linux@lfdr.de>; Wed, 18 Sep 2019 12:12:21 +0200 (CEST)
Received: by mail-wm1-x337.google.com with SMTP id k67sf778696wmf.3
        for <lists+clang-built-linux@lfdr.de>; Wed, 18 Sep 2019 03:12:21 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1568801541; cv=pass;
        d=google.com; s=arc-20160816;
        b=WxrHAWxASrSMQIZV/ZoQG9Yp9eZvD+LbLGUKjikytBEl4rjFpLdGWBeruYj2iSgLYa
         MsoGGbNfm9EjSHOy8cCyVWrFIA8dS0a7zBSMSnizIsLqktGiSr9FeLV4ivNv0Rg5jjqS
         a+EDxHokOv0wDasxZe4hsWBzoRb3iU2xoK5sepKKCtNzhHEjCtUML/yNatLiUchOg7UM
         nNF5gpgax5JaZK46izgriSkNjqK6/c6lw9EgPcMs7TcPLWz0I27KABfd4Z5Hvt1fex3W
         n1U95rjdN+gk5rIPqIUZ4VbWKni/EU41Qm64hxBdparXOG2RGQLgx30wW5JgacjNE0bH
         LlnQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:mail-followup-to
         :message-id:subject:cc:to:from:date:sender:dkim-signature;
        bh=y4ujfTj3S3NmxtSJB9+Z68DVNugxsiSKWQWdl1IDgRs=;
        b=eRFVFFzDk0E0TOma6YQdQRCjf/JbDqcw3VD+ojiY02h+EmhzPch15GeeUx1Y+95iGd
         1KzZR+FyPQkgqgnCtgVeIRmMHxadDNMZfBh+S0wo/WshMpBQXQpusA2MnkWnZgTZmPhS
         dSMRw0nWyZGpOVS6s3q9UVSl1k1jOhDks30w6mYcSypZzevWKjUpvYED2uXi5N1j4Vje
         8Pytzm835eF/V5XISOjjY90lk4zVBzOxuImCwjumMLlmeBMMUEMvvlVerefhdXFq8B9K
         FNj2+gYR8ziQLRLFX5H5j6+ZqZw5J2VAYpxemHgL6JtcDZOrlgznwmW3k/cBZ9v8stDv
         x0kQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=cFV6lZrP;
       spf=pass (google.com: domain of ivan.khoronzhuk@linaro.org designates 2a00:1450:4864:20::144 as permitted sender) smtp.mailfrom=ivan.khoronzhuk@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:mail-followup-to
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=y4ujfTj3S3NmxtSJB9+Z68DVNugxsiSKWQWdl1IDgRs=;
        b=nKGi9Kho31l6CNTRgmbq9ZzMq9rUlzY4duBe9+5RzA4Y1YQASwaBN5lXrLLVJtm+8v
         A/x/sRP+tZn6k4y442x7lzTz7Lp79reWCCze/Hm0AiCJ210DtY1CnPCKUxZZfRRVUHmV
         weEvEu4j8sp/wU7PeX8khft3gDrBpKbDmEnqq4dBv8JBZik0S2ApG54kQutckMG2WcOZ
         s0MlKgiT4BXnm0K6yx9m/dKh53YoY4/nBLXkSzDxcJs6peA+0pywKx/cS1V74m+QB8Vj
         6fQnLey1YJ8N6nrbCAiJJVIUTkM4mwcdX22kLTmdIrf1pnnAw1NvrR6j5FKIiCjuWMFf
         WTFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :mail-followup-to:references:mime-version:content-disposition
         :in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=y4ujfTj3S3NmxtSJB9+Z68DVNugxsiSKWQWdl1IDgRs=;
        b=NVLuGvZ7f1xQe476oZ6kNSJmY44eDm7k0F4BhGg29enfiFpXx1nY+4K2dvJNBy5Xn0
         g2uxUniHjHmNiSS4pWV2tg/wcuYaQGqqUcGoljolv3/ALX6+yKwsttC1o4StwClvHau0
         yqDOHkT/M7QiF4glRS40M6tZvuyPf90yVkvCtKGkrX1NPWtvg1ghcZjjPj4YhRFBARV6
         MnpKLpynkNTXrO0TAvcfSsLuDYk77q9MIRg9oyMrW0oneJRN3vu3Y3Oby40R4Q4xv076
         amuWH0H5aJWdjbFWUixwwAz7hldanGvoxsvFMRfI4IqHb8rM3HFZRWQLuvLA6ugEwCSq
         BPTQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAW9nGVooapjJygWkpA1mWf8KP/pdpvk2g5DuKkbAQVXN5XJSkxb
	aXVd0sBnuRR5/yPTZwrsBBA=
X-Google-Smtp-Source: APXvYqz5sllEBNhQrdV2It8eYQoqhF+zDdluK2QBLHzogSbzSKWDrJ9TCxcOyNOE8lFQFOzXd45E3g==
X-Received: by 2002:a1c:9e46:: with SMTP id h67mr2236008wme.48.1568801541390;
        Wed, 18 Sep 2019 03:12:21 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1c:ed12:: with SMTP id l18ls713063wmh.0.gmail; Wed, 18 Sep
 2019 03:12:20 -0700 (PDT)
X-Received: by 2002:a7b:c7d4:: with SMTP id z20mr2213969wmk.49.1568801540834;
        Wed, 18 Sep 2019 03:12:20 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1568801540; cv=none;
        d=google.com; s=arc-20160816;
        b=jdXTFPbzK2L1cX968nDTV5kPr7Vmp2PtdD9QYHx43b9nlt2yKxGSN6RljcjfQGNiJP
         Iv4FYsZrRefUtszy+8I0lud/dKvMw1FYY438bDvoyNocC8JIwq510fG7qQgkNFSjeIuA
         wY03puFBYpaVARQdX1pU0sSSiKhxpZCyWCVx70nKtCNZNn5jX9vug7rMkxKc9bWLbcGu
         4zxoZBH/tsudzuQBJZJ9oy7fxopIyOB2rCw6BbuqSKiAm4IRaqwT5lTq93nxg3fTvsgR
         DQVpOYe3fnBtxIKs5FzYuPDzXbYRlGaekh/jf5tcBju9+WAw6UkFG5BmtYG0wNK7xm4K
         zygQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :mail-followup-to:message-id:subject:cc:to:from:date:dkim-signature;
        bh=JzNHZht1bd6w8WtrKX6lmZo1NhKQxsQQoKxRAfLfPag=;
        b=SZLrnU/sRZGS7w5PgWFQqQbT9NUEYRrRBSFg2yVHRsoXGdnGBusPjsnSwTGlrLyP5U
         va99Fok9JSWH3QHQU0uCtUvfQb2KvYP1WQmCkvGbXTwmZpZlDmYmMKMpRrd7Y/erD+2z
         oEt1UI5qDst425MNbVFDeRYsXJdtOeidutB4UpeCrk6AKyuUNjydZaELdCzFj/10MfWD
         1m3K8snIS4KLBec6kYSOVnJgDJYwFVM2YRWgik70p+R7imyMOc2x+I9LRfrEJ/38Eq3l
         Qv1pzJbeWwQnnGt1+gG0UGle2qGB0mNA+xlGlXzNrN3Iqnze7BRWIP5+lKI7fFuZSslh
         JfWA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=cFV6lZrP;
       spf=pass (google.com: domain of ivan.khoronzhuk@linaro.org designates 2a00:1450:4864:20::144 as permitted sender) smtp.mailfrom=ivan.khoronzhuk@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: from mail-lf1-x144.google.com (mail-lf1-x144.google.com. [2a00:1450:4864:20::144])
        by gmr-mx.google.com with ESMTPS id q137si84379wme.3.2019.09.18.03.12.20
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 18 Sep 2019 03:12:20 -0700 (PDT)
Received-SPF: pass (google.com: domain of ivan.khoronzhuk@linaro.org designates 2a00:1450:4864:20::144 as permitted sender) client-ip=2a00:1450:4864:20::144;
Received: by mail-lf1-x144.google.com with SMTP id t8so5202940lfc.13
        for <clang-built-linux@googlegroups.com>; Wed, 18 Sep 2019 03:12:20 -0700 (PDT)
X-Received: by 2002:ac2:4308:: with SMTP id l8mr1641108lfh.25.1568801540147;
        Wed, 18 Sep 2019 03:12:20 -0700 (PDT)
Received: from khorivan (168-200-94-178.pool.ukrtel.net. [178.94.200.168])
        by smtp.gmail.com with ESMTPSA id 77sm951751ljf.85.2019.09.18.03.12.18
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Wed, 18 Sep 2019 03:12:19 -0700 (PDT)
Date: Wed, 18 Sep 2019 13:12:17 +0300
From: Ivan Khoronzhuk <ivan.khoronzhuk@linaro.org>
To: Andrii Nakryiko <andrii.nakryiko@gmail.com>
Cc: Alexei Starovoitov <ast@kernel.org>,
	Daniel Borkmann <daniel@iogearbox.net>, Yonghong Song <yhs@fb.com>,
	"David S. Miller" <davem@davemloft.net>,
	Jakub Kicinski <jakub.kicinski@netronome.com>,
	Jesper Dangaard Brouer <hawk@kernel.org>,
	john fastabend <john.fastabend@gmail.com>,
	open list <linux-kernel@vger.kernel.org>,
	Networking <netdev@vger.kernel.org>, bpf <bpf@vger.kernel.org>,
	clang-built-linux@googlegroups.com,
	sergei.shtylyov@cogentembedded.com
Subject: Re: [PATCH v3 bpf-next 07/14] samples: bpf: add makefile.target for
 separate CC target build
Message-ID: <20190918101216.GA2908@khorivan>
Mail-Followup-To: Andrii Nakryiko <andrii.nakryiko@gmail.com>,
	Alexei Starovoitov <ast@kernel.org>,
	Daniel Borkmann <daniel@iogearbox.net>, Yonghong Song <yhs@fb.com>,
	"David S. Miller" <davem@davemloft.net>,
	Jakub Kicinski <jakub.kicinski@netronome.com>,
	Jesper Dangaard Brouer <hawk@kernel.org>,
	john fastabend <john.fastabend@gmail.com>,
	open list <linux-kernel@vger.kernel.org>,
	Networking <netdev@vger.kernel.org>, bpf <bpf@vger.kernel.org>,
	clang-built-linux@googlegroups.com,
	sergei.shtylyov@cogentembedded.com
References: <20190916105433.11404-1-ivan.khoronzhuk@linaro.org>
 <20190916105433.11404-8-ivan.khoronzhuk@linaro.org>
 <CAEf4Bzaidog3n0YP6F5dL2rCrHtKCOBXS0as7usymk8Twdro4w@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Disposition: inline
In-Reply-To: <CAEf4Bzaidog3n0YP6F5dL2rCrHtKCOBXS0as7usymk8Twdro4w@mail.gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Original-Sender: ivan.khoronzhuk@linaro.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b=cFV6lZrP;       spf=pass
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

On Tue, Sep 17, 2019 at 04:19:40PM -0700, Andrii Nakryiko wrote:
>On Mon, Sep 16, 2019 at 3:58 AM Ivan Khoronzhuk
><ivan.khoronzhuk@linaro.org> wrote:
>>
>> The makefile.target is added only and will be used in
>
>typo: Makefile
>
>> sample/bpf/Makefile later in order to switch cross-compiling on CC
>
>on -> to
>
>> from HOSTCC environment.
>>
>> The HOSTCC is supposed to build binaries and tools running on the host
>> afterwards, in order to simplify build or so, like "fixdep" or else.
>> In case of cross compiling "fixdep" is executed on host when the rest
>> samples should run on target arch. In order to build binaries for
>> target arch with CC and tools running on host with HOSTCC, lets add
>> Makefile.target for simplicity, having definition and routines similar
>> to ones, used in script/Makefile.host. This allows later add
>> cross-compilation to samples/bpf with minimum changes.
>>
>> The tprog stands for target programs built with CC.
>
>Why tprog? Could we just use prog: hostprog vs prog.
Prev. version was with prog, but Yonghong Song found it ambiguous.
As prog can be bpf also. So, decision was made to follow logic:
* target prog - non bpf progs
* bpf prog = bpf prog, that can be later smth similar, providing build options
  for each bpf object separately.

Details here:
https://lkml.org/lkml/2019/9/13/1037

>
>>
>> Makefile.target contains only stuff needed for samples/bpf, potentially
>> can be reused later and now needed only for unblocking tricky
>> samples/bpf cross compilation.
>>
>> Signed-off-by: Ivan Khoronzhuk <ivan.khoronzhuk@linaro.org>
>> ---
>>  samples/bpf/Makefile.target | 75 +++++++++++++++++++++++++++++++++++++
>>  1 file changed, 75 insertions(+)
>>  create mode 100644 samples/bpf/Makefile.target
>>
>> diff --git a/samples/bpf/Makefile.target b/samples/bpf/Makefile.target
>> new file mode 100644
>> index 000000000000..fb6de63f7d2f
>> --- /dev/null
>> +++ b/samples/bpf/Makefile.target
>> @@ -0,0 +1,75 @@
>> +# SPDX-License-Identifier: GPL-2.0
>> +# ==========================================================================
>> +# Building binaries on the host system
>> +# Binaries are not used during the compilation of the kernel, and intendent
>
>typo: intended
>
>> +# to be build for target board, target board can be host ofc. Added to build
>
>What's ofc, is it "of course"?
yes, ofc )

>
>> +# binaries to run not on host system.
>> +#
>> +# Sample syntax (see Documentation/kbuild/makefiles.rst for reference)
>> +# tprogs-y := xsk_example
>> +# Will compile xdpsock_example.c and create an executable named xsk_example
>
>You mix references to xsk_example and xdpsock_example, which is very
>confusing. I'm guessing you meant to use xdpsock_example consistently.
Oh, yes. Thanks.

>
>> +#
>> +# tprogs-y    := xdpsock
>> +# xdpsock-objs := xdpsock_1.o xdpsock_2.o
>> +# Will compile xdpsock_1.c and xdpsock_2.c, and then link the executable
>> +# xdpsock, based on xdpsock_1.o and xdpsock_2.o
>> +#
>> +# Inherited from scripts/Makefile.host
>
>"Inspired by" or "Derived from" would be probably more appropriate term :)
I will replace with "Derived from", looks better.

>
>> +#
>> +__tprogs := $(sort $(tprogs-y))
>> +
>> +# C code
>> +# Executables compiled from a single .c file
>> +tprog-csingle  := $(foreach m,$(__tprogs), \
>> +                       $(if $($(m)-objs),,$(m)))
>> +
>> +# C executables linked based on several .o files
>> +tprog-cmulti   := $(foreach m,$(__tprogs),\
>> +                       $(if $($(m)-objs),$(m)))
>> +
>> +# Object (.o) files compiled from .c files
>> +tprog-cobjs    := $(sort $(foreach m,$(__tprogs),$($(m)-objs)))
>> +
>> +tprog-csingle  := $(addprefix $(obj)/,$(tprog-csingle))
>> +tprog-cmulti   := $(addprefix $(obj)/,$(tprog-cmulti))
>> +tprog-cobjs    := $(addprefix $(obj)/,$(tprog-cobjs))
>> +
>> +#####
>> +# Handle options to gcc. Support building with separate output directory
>> +
>> +_tprogc_flags   = $(TPROGS_CFLAGS) \
>> +                 $(TPROGCFLAGS_$(basetarget).o)
>> +
>> +# $(objtree)/$(obj) for including generated headers from checkin source files
>> +ifeq ($(KBUILD_EXTMOD),)
>> +ifdef building_out_of_srctree
>> +_tprogc_flags   += -I $(objtree)/$(obj)
>> +endif
>> +endif
>> +
>> +tprogc_flags    = -Wp,-MD,$(depfile) $(_tprogc_flags)
>> +
>> +# Create executable from a single .c file
>> +# tprog-csingle -> Executable
>> +quiet_cmd_tprog-csingle        = CC  $@
>> +      cmd_tprog-csingle        = $(CC) $(tprogc_flags) $(TPROGS_LDFLAGS) -o $@ $< \
>> +               $(TPROGS_LDLIBS) $(TPROGLDLIBS_$(@F))
>> +$(tprog-csingle): $(obj)/%: $(src)/%.c FORCE
>> +       $(call if_changed_dep,tprog-csingle)
>> +
>> +# Link an executable based on list of .o files, all plain c
>> +# tprog-cmulti -> executable
>> +quiet_cmd_tprog-cmulti = LD  $@
>> +      cmd_tprog-cmulti = $(CC) $(tprogc_flags) $(TPROGS_LDFLAGS) -o $@ \
>> +                         $(addprefix $(obj)/,$($(@F)-objs)) \
>> +                         $(TPROGS_LDLIBS) $(TPROGLDLIBS_$(@F))
>> +$(tprog-cmulti): $(tprog-cobjs) FORCE
>> +       $(call if_changed,tprog-cmulti)
>> +$(call multi_depend, $(tprog-cmulti), , -objs)
>> +
>> +# Create .o file from a single .c file
>> +# tprog-cobjs -> .o
>> +quiet_cmd_tprog-cobjs  = CC  $@
>> +      cmd_tprog-cobjs  = $(CC) $(tprogc_flags) -c -o $@ $<
>> +$(tprog-cobjs): $(obj)/%.o: $(src)/%.c FORCE
>> +       $(call if_changed_dep,tprog-cobjs)
>> --
>> 2.17.1
>>
>
>tprogs is quite confusing, but overall looks good to me.
I tend to leave it as tprogs, unless it's going to be progs and agreed with
Yonghong.

It follows logic:
- tprogs for bins
- bpfprogs or bojs or bprogs (could be) for bpf obj

-- 
Regards,
Ivan Khoronzhuk

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190918101216.GA2908%40khorivan.
