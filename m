Return-Path: <clang-built-linux+bncBDSIZNM7U4BRBYMQRDWAKGQEPSATCUY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x240.google.com (mail-lj1-x240.google.com [IPv6:2a00:1450:4864:20::240])
	by mail.lfdr.de (Postfix) with ESMTPS id 2CC76B617D
	for <lists+clang-built-linux@lfdr.de>; Wed, 18 Sep 2019 12:35:14 +0200 (CEST)
Received: by mail-lj1-x240.google.com with SMTP id h18sf1114435ljm.16
        for <lists+clang-built-linux@lfdr.de>; Wed, 18 Sep 2019 03:35:14 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1568802913; cv=pass;
        d=google.com; s=arc-20160816;
        b=f11jD9wmOEyQ7zbEhUf14hD2oBjHfkiF5BHIAYDbjy80fWTpr1XJ4xj7BakBsXRrJ3
         rpFE/ZUQlsrOAE3HwCQZHEOD/s/P/LwdM1y3xG07GLyHnlhIf6IF2i6muhHo8sed865G
         XRZGMnqFm0EaeLYFK5JpcuQIEOC8SiAoexUspZ/+m8Xe8S92+0vi64PkC+NzOXYCzMuP
         MV2H5xoFlIYm8gZt+lijl+KcKAfSV7RCr/ZTEH1L5rdksim0gFU/Yga0USzQomphA+EA
         lTFFw1jn+xHlHuEF/2vDT7rGyoRNRs1B5Z1I8XgnAsjR3ScSGnVR+J/Ix5+MzaO4HdNt
         5npQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:mail-followup-to
         :message-id:subject:cc:to:from:date:sender:dkim-signature;
        bh=LfmQ1MLaVxhsA0Q22VG4pIsGTozvwWb9//Q9Gs2dlXM=;
        b=0VlIHNVbhSlP2+1yi6qS8uRLMpn/0F4ULOOVioN9udQRVUsloZoEsIZ5GgTBEpeEKS
         HdIU1pWJ6EZUgdz3aSupSdMn8u9yIiRvO4yBvN1elJIY20y7zI/CxbvB5ArIA7hPPRbF
         c8kxRtPWdS86M+sMc1FRECdSJ8lmlUYPsv7i7gYQndceS7r9Aks1tkLS/kg67rPyj7LG
         o9e857UzmsSAWW+u4+iiZTUvbh3BXHmUboe/G6y9JU3XKTK9Uq2hbpW4XIzPte04Liqt
         781bL4bhmDXux4MoiI0svC8R2fWSagGR1nlzAug9e2CiAY0V0f3EV3iFGHw120pi/Lrp
         qUww==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=WO9H67nV;
       spf=pass (google.com: domain of ivan.khoronzhuk@linaro.org designates 2a00:1450:4864:20::143 as permitted sender) smtp.mailfrom=ivan.khoronzhuk@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:mail-followup-to
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=LfmQ1MLaVxhsA0Q22VG4pIsGTozvwWb9//Q9Gs2dlXM=;
        b=VTjpRw1G7ePDj9rYoA7SJHC1kXZ1la7y1HwHpbQF9E7JHbxrQheKIPHXHLFPI1iBJ0
         Xtw3lHwDskFAMXCL4qLHucLbCUbttebQFrqtTkPabQ8+SU09h8eYtbj6clGI8XQbqdcj
         nkWtNHP0w0PHjwjGNLj03qVZBg64egAshCLtmJhVXFcYxuEBxCSAzrBwfF1TEPpm44Ei
         wU5nXV8zqwgNt7vGHETq/gqmaJgrVIjeL8HFrpD5THqOXrQfXiaoXeQN57Fm8im47whw
         rV8/6AMPvGdB1Y0CJFRX43zWdNYvwk9c8/HVCKeTUBhItDoLYIgeE4SuLb3Wmkz6dpum
         opYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :mail-followup-to:references:mime-version:content-disposition
         :in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=LfmQ1MLaVxhsA0Q22VG4pIsGTozvwWb9//Q9Gs2dlXM=;
        b=X8xTv0I5VsF0/DQDF4UBCyt9LLS3wUvrrD6+bT8sr0IvSHv0qpNOzgYHk8dreGQQcO
         ochzlWj9eg94cLUOFyIU2y3tFr3Rtbtb4EMJeSTOrD5wJaoK8RqDyDS/lgciRCAYlE3c
         EX2e0fVQmUhMnxIgnUUHFhq43lKyxn/4pjzBtQg8oEYJGPWMfnZ3spI441uGGB7wDt/Z
         Y0XjfZmdJ7DzTLQChIRCjko9y11ByUhJEwi0V4UHRl/9jVfTG8jjs9ysHbh5aWAbC36E
         oPjRc/K1JoxgLzldNAcUM1QpMIMIynhwuoAy2uK+jpFqyAB1UuZdF1yGOlZpm7+N4TCV
         htNg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVdc01dw5yzTBlpipUKghF0LzQY4CSBlIqsPg3pfIue39MGTMJ2
	OrsqMA2oeflFEPEv38KW5yE=
X-Google-Smtp-Source: APXvYqxs5RjTeL8luhNaTu/hfQFOPP/ZDhOyie7v8TF8F/plOz9+ry2VZwQBuPdZkD0Rl1BPV2F3hw==
X-Received: by 2002:a2e:6a13:: with SMTP id f19mr1737882ljc.17.1568802913591;
        Wed, 18 Sep 2019 03:35:13 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac2:559c:: with SMTP id v28ls636360lfg.10.gmail; Wed, 18 Sep
 2019 03:35:13 -0700 (PDT)
X-Received: by 2002:a19:8c1d:: with SMTP id o29mr1771675lfd.73.1568802913164;
        Wed, 18 Sep 2019 03:35:13 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1568802913; cv=none;
        d=google.com; s=arc-20160816;
        b=nUvJjjpatS0Ec0kP9A/F/bFxPqL7jPixkI/Jc8yNF4hiuBGJQnA9IPVk8JZUTcYC13
         VlvYkrZU4agcV1mGowh+34wu0cyOEdFsTvN+KTBzhldKvHTUUj89xwPjetWT+01F10/f
         FRQVCIW1JPG4UgnDJ3er56uBThHDD//mOKVetE89h82fokh1PJ7srb+TfY7DnrOmkvSV
         NHFfkZayTz8H6l8YF5MERzKPC7eWxa0ZGWMGlmrGbay5hN7kmQZsUa3g9z6e/XCi702V
         07zKInYOFcqgk0cee0HqiX8vQHj4ogGkojIOMoeByQIRKe3LodJiqIejSsSEfMjoJ/tk
         wYpw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :mail-followup-to:message-id:subject:cc:to:from:date:dkim-signature;
        bh=5IKevHxYE8kJAT6rh5UWN+J7usw4VjwCKVPryNseZJE=;
        b=xOMrlxPu8hQ1Q8e+3cDL2tyD0wJulb4CtsOh1tvLWRDX197metwtPf2bIKl5J+C2o1
         eUspH2FhEjuydoAiFg7egTN0mTrD6jeGiYW/mTpyO1MYQrXBXudZpICnSRS+EwpHA14A
         R8i7Dkv0ubEEVcTdATVsFlU86Uv2y12IZqxXAquyiH0lbWG/ur1q5i8Y2KT1P1YqcJUN
         Osv7Vxdk1gCUdnfFAnNRoDQj64YfnaQTEPorl1I9GdNYb9PTxefkQA94kVuafvgPVN5k
         FMV8KrZdh6ZNt8ky+nMWtN21XkjLl+H6KDfE5z63ZnHoOVazuCYtjlj72J1CPWUek6S7
         zaYw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=WO9H67nV;
       spf=pass (google.com: domain of ivan.khoronzhuk@linaro.org designates 2a00:1450:4864:20::143 as permitted sender) smtp.mailfrom=ivan.khoronzhuk@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: from mail-lf1-x143.google.com (mail-lf1-x143.google.com. [2a00:1450:4864:20::143])
        by gmr-mx.google.com with ESMTPS id e8si282817ljo.4.2019.09.18.03.35.12
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 18 Sep 2019 03:35:12 -0700 (PDT)
Received-SPF: pass (google.com: domain of ivan.khoronzhuk@linaro.org designates 2a00:1450:4864:20::143 as permitted sender) client-ip=2a00:1450:4864:20::143;
Received: by mail-lf1-x143.google.com with SMTP id 72so5310830lfh.6
        for <clang-built-linux@googlegroups.com>; Wed, 18 Sep 2019 03:35:12 -0700 (PDT)
X-Received: by 2002:a19:6a09:: with SMTP id u9mr1673963lfu.91.1568802912601;
        Wed, 18 Sep 2019 03:35:12 -0700 (PDT)
Received: from khorivan (168-200-94-178.pool.ukrtel.net. [178.94.200.168])
        by smtp.gmail.com with ESMTPSA id p9sm955453lji.107.2019.09.18.03.35.11
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Wed, 18 Sep 2019 03:35:11 -0700 (PDT)
Date: Wed, 18 Sep 2019 13:35:09 +0300
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
Subject: Re: [PATCH v3 bpf-next 09/14] samples: bpf: makefile: use own flags
 but not host when cross compile
Message-ID: <20190918103508.GC2908@khorivan>
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
 <20190916105433.11404-10-ivan.khoronzhuk@linaro.org>
 <CAEf4BzbuPnxAs0A=w60q0jTCy5pb2R-h0uEuT2tmvjsaj4DH4A@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Disposition: inline
In-Reply-To: <CAEf4BzbuPnxAs0A=w60q0jTCy5pb2R-h0uEuT2tmvjsaj4DH4A@mail.gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Original-Sender: ivan.khoronzhuk@linaro.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b=WO9H67nV;       spf=pass
 (google.com: domain of ivan.khoronzhuk@linaro.org designates
 2a00:1450:4864:20::143 as permitted sender) smtp.mailfrom=ivan.khoronzhuk@linaro.org;
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

On Tue, Sep 17, 2019 at 04:42:07PM -0700, Andrii Nakryiko wrote:
>On Mon, Sep 16, 2019 at 3:59 AM Ivan Khoronzhuk
><ivan.khoronzhuk@linaro.org> wrote:
>>
>> While compile natively, the hosts cflags and ldflags are equal to ones
>> used from HOSTCFLAGS and HOSTLDFLAGS. When cross compiling it should
>> have own, used for target arch. While verification, for arm, arm64 and
>> x86_64 the following flags were used alsways:
>>
>> -Wall
>> -O2
>> -fomit-frame-pointer
>> -Wmissing-prototypes
>> -Wstrict-prototypes
>>
>> So, add them as they were verified and used before adding
>> Makefile.target, but anyway limit it only for cross compile options as
>> for host can be some configurations when another options can be used,
>> So, for host arch samples left all as is, it allows to avoid potential
>> option mistmatches for existent environments.
>>
>> Signed-off-by: Ivan Khoronzhuk <ivan.khoronzhuk@linaro.org>
>> ---
>>  samples/bpf/Makefile | 9 +++++++++
>>  1 file changed, 9 insertions(+)
>>
>> diff --git a/samples/bpf/Makefile b/samples/bpf/Makefile
>> index 1579cc16a1c2..b5c87a8b8b51 100644
>> --- a/samples/bpf/Makefile
>> +++ b/samples/bpf/Makefile
>> @@ -178,8 +178,17 @@ CLANG_EXTRA_CFLAGS := $(ARM_ARCH_SELECTOR)
>>  TPROGS_CFLAGS += $(ARM_ARCH_SELECTOR)
>>  endif
>>
>> +ifdef CROSS_COMPILE
>> +TPROGS_CFLAGS += -Wall
>> +TPROGS_CFLAGS += -O2
>
>Specifying one arg per line seems like overkill, put them in one line?
Will combine.

>
>> +TPROGS_CFLAGS += -fomit-frame-pointer
>
>Why this one?
I've explained in commit msg. The logic is to have as much as close options
to have smiliar binaries. As those options are used before for hosts and kinda
cross builds - better follow same way.

>
>> +TPROGS_CFLAGS += -Wmissing-prototypes
>> +TPROGS_CFLAGS += -Wstrict-prototypes
>
>Are these in some way special that we want them in cross-compile mode only?
>
>All of those flags seem useful regardless of cross-compilation or not,
>shouldn't they be common? I'm a bit lost about the intent here...
They are common but split is needed to expose it at least. Also host for
different arches can have some own opts already used that shouldn't be present
for cross, better not mix it for safety.

>
>> +else
>>  TPROGS_LDLIBS := $(KBUILD_HOSTLDLIBS)
>>  TPROGS_CFLAGS += $(KBUILD_HOSTCFLAGS) $(HOST_EXTRACFLAGS)
>> +endif
>> +
>>  TPROGS_CFLAGS += -I$(objtree)/usr/include
>>  TPROGS_CFLAGS += -I$(srctree)/tools/lib/bpf/
>>  TPROGS_CFLAGS += -I$(srctree)/tools/testing/selftests/bpf/
>> --
>> 2.17.1
>>

-- 
Regards,
Ivan Khoronzhuk

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190918103508.GC2908%40khorivan.
