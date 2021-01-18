Return-Path: <clang-built-linux+bncBAABB5P5SOAAMGQEBOQLSCQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x83a.google.com (mail-qt1-x83a.google.com [IPv6:2607:f8b0:4864:20::83a])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A8B62F9829
	for <lists+clang-built-linux@lfdr.de>; Mon, 18 Jan 2021 04:22:31 +0100 (CET)
Received: by mail-qt1-x83a.google.com with SMTP id b8sf14010701qtr.18
        for <lists+clang-built-linux@lfdr.de>; Sun, 17 Jan 2021 19:22:31 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1610940149; cv=pass;
        d=google.com; s=arc-20160816;
        b=JwY//m9EzBzWINX4Euvba962/uJwIkINKgmVThA4KMeF0qu1EDal1ntjrTWYQcCzvr
         XF66C83zo4dmX0a9C7NFLKhQnFXal77lbP7wVrEgpXQ9JRYxDVHb+dKmlfauxtC9AHR1
         kANjtZLpZM2n6lVsZ6fL7OpquKE9xbVCXdhgPuRFfc73pquNItLI8GEwtMYRhGt2nglP
         hbgxXwt8pOodUwhY2CaX8gZ0Bn4vmMDZNhucu8RdIOXSrQLOYViJdrOV6DNdR6aGJHhY
         SObCv29spBCE07duKCgiiF/zw/cBunV6yTzBizC1CFI1qGkJtm9wz37C41qxXz+15wur
         P53w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:mime-version:user-agent
         :date:message-id:from:cc:references:to:subject:sender:dkim-signature;
        bh=u48wzQCrA/Y3BYM0boWnBW+g1liirHoho95wcnYeZmg=;
        b=w5FPAEN1TzEbMeX0kmwUuLXm2faVpM0364L6nfrv9wnI8EKuourV/CyxVIuqAKZgGs
         bJIb2lWpWhAGgGzbCZgcUVxxmNV6hk6GMd/lSEaSyo+KmSU/NOwXTlb/TxKe7+Qk44SN
         3YrbyAJyGHRwWNPnF6QId2ZK88OYMl64HRn9kfvGw8KmurX3c+iS3VDEJPWxQL/yCtrI
         viXSJj8/lVDfE+Y8kRRpjVb/vZTwV8uDEdS1gGCPocS/62dn4HlAmWUx5KBrC+Hc/ipM
         DY4hPLMCunYHRs+7oVu9EpTpWOxfDOMmeW6VjpKDALW9Pyc4SywkFxbi3u0eDWeVui40
         PYpA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of yangtiezhu@loongson.cn designates 114.242.206.163 as permitted sender) smtp.mailfrom=yangtiezhu@loongson.cn
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:references:cc:from:message-id:date:user-agent
         :mime-version:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=u48wzQCrA/Y3BYM0boWnBW+g1liirHoho95wcnYeZmg=;
        b=UIV09dPvEsjiv8dW2FkqiPsuqRG14zN7jX7edgzY7JAIFIw5qJMJJUsPiHM54ur4g8
         j6iXgRyS0/jy62o5VQnhNb+E0X8zvsO2iaRouu/sW0WeetX7WYQL6utowmXVb26+Ceaz
         Uy2H5ubIIklavQPAtOjcxCIaSaqhJ/wp9i0jYcf9fHw8vqzNWUzS79VoMqDBpNO1IRXk
         Eg4V+Md2N5oyFKdmDhayFMZGmYX1acZbNFLEZ6U7EE2466K1XARB+xCHz5XSgToCA4xg
         Dqt2xjz6OL/sjQxLEi+l4FcZH+c/3XqKA34fbQBrGsoN2V+asg298pwSiLjvh2YeBDHV
         RlqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:references:cc:from:message-id
         :date:user-agent:mime-version:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=u48wzQCrA/Y3BYM0boWnBW+g1liirHoho95wcnYeZmg=;
        b=QvJ9cWKCPqlSdvj7JBbpMa4rnDLCFomy/sZjwr+9qu2FGw1WbXpx7VG+wC7ua0mfzp
         /YxqTsCpa2x2xn8alfYm4DCN1CTSAsN4Hn7xqOvfYaYNVKKcRJU5yXGDpApG3HHz22lZ
         NUjozEVVTJ2pBL0BNdwVVqmM3ZwF+h3VVlI61+RdsNlhSHZ+yDLOnyAROskvEmXvf9aY
         /VC7Q0hT3Ns+VbYK1TfXokavhqD5GECGuRWE+08TFqgzjgS3ZctciOseZAh7EZpSTDKV
         cNEit7+K62f+GUXPl/A+KQDkrpqDX2T+QJFeZUWcQfFeSzXUhYi8sHKEtlYoqWOwhc/e
         1XAw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM53254ae+tyvCpFq2Tenc4xj+3Lbqv+4pmnnJJcrIWlRRPV9ec6wp
	muXnfphF5UdaHi9fOFZaLDU=
X-Google-Smtp-Source: ABdhPJxu4znqQdL934GCW99pnpq4ghlVPF9kihYbwHzI0LdZDdjypB4WR+ZEYx3ZhGddrysUQ2kYeQ==
X-Received: by 2002:a37:4394:: with SMTP id q142mr22673253qka.113.1610940149453;
        Sun, 17 Jan 2021 19:22:29 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:44c7:: with SMTP id b7ls584871qto.6.gmail; Sun, 17 Jan
 2021 19:22:29 -0800 (PST)
X-Received: by 2002:ac8:76d7:: with SMTP id q23mr5966254qtr.76.1610940149077;
        Sun, 17 Jan 2021 19:22:29 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1610940149; cv=none;
        d=google.com; s=arc-20160816;
        b=TFrFURuCQ6sPckXTPTgCNQoAW5iFvFDrPpaI9uifJp2iX3s4n6z3FT04TeGTdxcmoV
         kugZlGtVyJlveZU3tCU0i4lx8oqlDJy0CSqjJ/KgyoLPV7SD2N4BDBeMWkNSeGSV0u6P
         syLaYcvDHNgRxaTohQ7bEf7aqTBR1y0mHOUm/fIZLSrQgvLqex3YMZSdWbb6Y6KuJzly
         9jGr6T9vMYuRo8K9MoyqTSAijIDQb3Z55Zg0c7T4w/L117yjquZIJKVj/r3A6SG+97PW
         m8zvrw4YLcpAbUnAJuQodGKRWX8xiT9wGMmrlfHIUJKYRMfMtiFYxNJ0Gs/SALkdYRc4
         itwA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:in-reply-to:mime-version:user-agent:date
         :message-id:from:cc:references:to:subject;
        bh=gsnBZ5RJCgB/csle4YjCucZVGkkMJ9/kr+ex17sQTXw=;
        b=Bc24uj4R0k0wIQImXgPxc6MHsEwJcBRohBE5xFxnSPUDbFaTtP50kXOlH/3T/HUP4a
         YbiOM3rwWNB6VVkaBm1w9UEOnY3yurEaKqc1VrCwO15RSVka9wozvJJv/XUHhPFs0GtX
         SctJx/EjywiW4qtxaBCKGZIa6iQevTVqi8zg4aa14NcytgW6505t0r+/08/de+icmAT6
         AKpxoqZ2jG+6jQxWGelxlduZxHi/mdE4QwT4WvcbXq3ngzXVX5GV/MaAYri76IafKB+r
         3owjgF5ERqFYp9fYj6YjvahalQhNw932/f5bCvcTpLdGKwRooj94shWUiPIB+BgmZr15
         FX6w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of yangtiezhu@loongson.cn designates 114.242.206.163 as permitted sender) smtp.mailfrom=yangtiezhu@loongson.cn
Received: from loongson.cn (mail.loongson.cn. [114.242.206.163])
        by gmr-mx.google.com with ESMTP id q66si1002346qkd.3.2021.01.17.19.22.27
        for <clang-built-linux@googlegroups.com>;
        Sun, 17 Jan 2021 19:22:28 -0800 (PST)
Received-SPF: pass (google.com: domain of yangtiezhu@loongson.cn designates 114.242.206.163 as permitted sender) client-ip=114.242.206.163;
Received: from [10.130.0.135] (unknown [113.200.148.30])
	by mail.loongson.cn (Coremail) with SMTP id AQAAf9DxaL7s_gRgPYQGAA--.10491S3;
	Mon, 18 Jan 2021 11:22:21 +0800 (CST)
Subject: Re: [PATCH bpf 1/2] samples/bpf: Set flag __SANE_USERSPACE_TYPES__
 for MIPS to fix build warnings
To: Yonghong Song <yhs@fb.com>,
 Luc Van Oostenryck <luc.vanoostenryck@gmail.com>,
 Alexei Starovoitov <ast@kernel.org>, Daniel Borkmann <daniel@iogearbox.net>,
 Andrii Nakryiko <andrii@kernel.org>, Martin KaFai Lau <kafai@fb.com>,
 Song Liu <songliubraving@fb.com>, John Fastabend <john.fastabend@gmail.com>,
 KP Singh <kpsingh@kernel.org>, Nathan Chancellor <natechancellor@gmail.com>,
 Nick Desaulniers <ndesaulniers@google.com>
References: <1610535453-2352-1-git-send-email-yangtiezhu@loongson.cn>
 <1610535453-2352-2-git-send-email-yangtiezhu@loongson.cn>
 <e3eb5919-4573-4576-e6aa-bd8ff56409ed@fb.com>
Cc: linux-sparse@vger.kernel.org, netdev@vger.kernel.org,
 bpf@vger.kernel.org, clang-built-linux@googlegroups.com,
 linux-mips@vger.kernel.org, linux-kernel@vger.kernel.org,
 Xuefeng Li <lixuefeng@loongson.cn>
From: Tiezhu Yang <yangtiezhu@loongson.cn>
Message-ID: <f077bcae-97be-fc7f-c3fa-c6026bfe25d2@loongson.cn>
Date: Mon, 18 Jan 2021 11:22:20 +0800
User-Agent: Mozilla/5.0 (X11; Linux mips64; rv:45.0) Gecko/20100101
 Thunderbird/45.4.0
MIME-Version: 1.0
In-Reply-To: <e3eb5919-4573-4576-e6aa-bd8ff56409ed@fb.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
X-CM-TRANSID: AQAAf9DxaL7s_gRgPYQGAA--.10491S3
X-Coremail-Antispam: 1UD129KBjvJXoWxAFyfur4fWrW5KF1xZF1rCrg_yoW5uF47pa
	1vkay8CF4DCry3GFW2yr12vr1fX3yfG34jgFykWryjyF1agas2qr4kGrWa9rn7ur4Iy3y2
	9FyagFy5AFyrXrJanT9S1TB71UUUUUUqnTZGkaVYY2UrUUUUjbIjqfuFe4nvWSU5nxnvy2
	9KBjDU0xBIdaVrnRJUUUBY14x267AKxVW5JVWrJwAFc2x0x2IEx4CE42xK8VAvwI8IcIk0
	rVWrJVCq3wAFIxvE14AKwVWUJVWUGwA2ocxC64kIII0Yj41l84x0c7CEw4AK67xGY2AK02
	1l84ACjcxK6xIIjxv20xvE14v26r4j6ryUM28EF7xvwVC0I7IYx2IY6xkF7I0E14v26F4j
	6r4UJwA2z4x0Y4vEx4A2jsIE14v26r4UJVWxJr1l84ACjcxK6I8E87Iv6xkF7I0E14v26F
	4UJVW0owAS0I0E0xvYzxvE52x082IY62kv0487Mc02F40EFcxC0VAKzVAqx4xG6I80ewAv
	7VC0I7IYx2IY67AKxVWUJVWUGwAv7VC2z280aVAFwI0_Gr0_Cr1lOx8S6xCaFVCjc4AY6r
	1j6r4UM4x0Y48IcVAKI48JM4x0x7Aq67IIx4CEVc8vx2IErcIFxwACI402YVCY1x02628v
	n2kIc2xKxwCYjI0SjxkI62AI1cAE67vIY487MxkIecxEwVAFwVW8GwCF04k20xvY0x0EwI
	xGrwCFx2IqxVCFs4IE7xkEbVWUJVW8JwC20s026c02F40E14v26r1j6r18MI8I3I0E7480
	Y4vE14v26r106r1rMI8E67AF67kF1VAFwI0_GFv_WrylIxkGc2Ij64vIr41lIxAIcVC0I7
	IYx2IY67AKxVWUJVWUCwCI42IY6xIIjxv20xvEc7CjxVAFwI0_Gr0_Cr1lIxAIcVCF04k2
	6cxKx2IYs7xG6rW3Jr0E3s1lIxAIcVC2z280aVAFwI0_Jr0_Gr1lIxAIcVC2z280aVCY1x
	0267AKxVW8JVW8JrUvcSsGvfC2KfnxnUUI43ZEXa7VUUCeHPUUUUU==
X-CM-SenderInfo: p1dqw3xlh2x3gn0dqz5rrqw2lrqou0/
X-Original-Sender: yangtiezhu@loongson.cn
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of yangtiezhu@loongson.cn designates 114.242.206.163 as
 permitted sender) smtp.mailfrom=yangtiezhu@loongson.cn
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

On 01/14/2021 01:12 AM, Yonghong Song wrote:
>
>
> On 1/13/21 2:57 AM, Tiezhu Yang wrote:
>> MIPS needs __SANE_USERSPACE_TYPES__ before <linux/types.h> to select
>> 'int-ll64.h' in arch/mips/include/uapi/asm/types.h and avoid compile
>> warnings when printing __u64 with %llu, %llx or %lld.
>
> could you mention which command produces the following warning?

make M=samples/bpf

>
>>
>>      printf("0x%02x : %llu\n", key, value);
>>                       ~~~^          ~~~~~
>>                       %lu
>>     printf("%s/%llx;", sym->name, addr);
>>                ~~~^               ~~~~
>>                %lx
>>    printf(";%s %lld\n", key->waker, count);
>>                ~~~^                 ~~~~~
>>                %ld
>>
>> Signed-off-by: Tiezhu Yang <yangtiezhu@loongson.cn>
>> ---
>>   samples/bpf/Makefile        | 4 ++++
>>   tools/include/linux/types.h | 3 +++
>>   2 files changed, 7 insertions(+)
>>
>> diff --git a/samples/bpf/Makefile b/samples/bpf/Makefile
>> index 26fc96c..27de306 100644
>> --- a/samples/bpf/Makefile
>> +++ b/samples/bpf/Makefile
>> @@ -183,6 +183,10 @@ BPF_EXTRA_CFLAGS := $(ARM_ARCH_SELECTOR)
>>   TPROGS_CFLAGS += $(ARM_ARCH_SELECTOR)
>>   endif
>>   +ifeq ($(ARCH), mips)
>> +TPROGS_CFLAGS += -D__SANE_USERSPACE_TYPES__
>> +endif
>> +
>
> This change looks okay based on description in
> arch/mips/include/uapi/asm/types.h
>
> '''
> /*
>  * We don't use int-l64.h for the kernel anymore but still use it for
>  * userspace to avoid code changes.
>  *
>  * However, some user programs (e.g. perf) may not want this. They can
>  * flag __SANE_USERSPACE_TYPES__ to get int-ll64.h here.
>  */
> '''
>
>>   TPROGS_CFLAGS += -Wall -O2
>>   TPROGS_CFLAGS += -Wmissing-prototypes
>>   TPROGS_CFLAGS += -Wstrict-prototypes
>> diff --git a/tools/include/linux/types.h b/tools/include/linux/types.h
>> index 154eb4e..e9c5a21 100644
>> --- a/tools/include/linux/types.h
>> +++ b/tools/include/linux/types.h
>> @@ -6,7 +6,10 @@
>>   #include <stddef.h>
>>   #include <stdint.h>
>>   +#ifndef __SANE_USERSPACE_TYPES__
>>   #define __SANE_USERSPACE_TYPES__    /* For PPC64, to get LL64 types */
>> +#endif
>
> What problem this patch fixed?

If add "TPROGS_CFLAGS += -D__SANE_USERSPACE_TYPES__" in
samples/bpf/Makefile, it appears the following error:

Auto-detecting system features:
...                        libelf: [ on  ]
...                          zlib: [ on  ]
...                           bpf: [ OFF ]

BPF API too old
make[3]: *** [Makefile:293: bpfdep] Error 1
make[2]: *** [Makefile:156: all] Error 2

With #ifndef __SANE_USERSPACE_TYPES__  in tools/include/linux/types.h,
the above error has gone.

> If this header is used, you can just
> change comment from "PPC64" to "PPC64/MIPS", right?

If include <linux/types.h> in the source files which have compile warnings
when printing __u64 with %llu, %llx or %lld, it has no effect due to 
actually
it includes usr/include/linux/types.h instead of 
tools/include/linux/types.h,
this is because the include-directories in samples/bpf/Makefile are searched
in the order, -I./usr/include is in the front of -I./tools/include.

So I think define __SANE_USERSPACE_TYPES__ for MIPS in samples/bpf/Makefile
is proper, at the same time, add #ifndef __SANE_USERSPACE_TYPES__ in
tools/include/linux/types.h can avoid build error and have no side effect.

I will send v2 later with mention in the commit message that this is
mips related.

Thanks,
Tiezhu

>
>> +
>>   #include <asm/types.h>
>>   #include <asm/posix_types.h>
>>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/f077bcae-97be-fc7f-c3fa-c6026bfe25d2%40loongson.cn.
