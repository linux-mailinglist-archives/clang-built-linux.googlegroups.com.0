Return-Path: <clang-built-linux+bncBAABBKMJYOAAMGQEA6AXD5I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x93c.google.com (mail-ua1-x93c.google.com [IPv6:2607:f8b0:4864:20::93c])
	by mail.lfdr.de (Postfix) with ESMTPS id 689AC304F04
	for <lists+clang-built-linux@lfdr.de>; Wed, 27 Jan 2021 02:40:59 +0100 (CET)
Received: by mail-ua1-x93c.google.com with SMTP id z24sf33348uao.0
        for <lists+clang-built-linux@lfdr.de>; Tue, 26 Jan 2021 17:40:59 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1611711658; cv=pass;
        d=google.com; s=arc-20160816;
        b=0NgpGatF+nTpZJ0CjNWLQNcmYP24atjik/P+MBp3OSi75Br3Qnq2DNYyAutWAOyF8o
         D4XcoqidzLzY86+c+ubI5FeP+ZiDXUd+3rphjcCSunmax1ZhHGCgS67qBVP9y4GONwsG
         Tb7Ctlb5lqCkviklZndhwfGb8ylwxRT7+qrduNykGVNs5o/4nyZ6KDg2OiSdxnrAo4aU
         DGXiWfhEC0DZUluy8fD1VGaxxEf3cV3WwvlXvRPodZx++dCvVSlqLG1Ri63ZJ8znMxv0
         c3NcFooJuZ88mIn7M1hrT17dAyNQz3WQ0gZROKR48qzKJTIkp2BrCHE5erdjGzs2E8G1
         zbMw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:mime-version:user-agent
         :date:message-id:from:cc:references:to:subject:sender:dkim-signature;
        bh=KKDDWwBAmcESCc+mXRTrE9NAmCDqjvLWhEHO85USsmo=;
        b=NCebZonJfwNAOOd6RycFBkO2DD7wWV9aB6gDfY145MW2vYmPThR4wdBQFBhe6kM7xW
         ahatji+lM43AVXw250P68C+/PxtOBbHQZxpr8u3+NTDVjpRArj2QpHJdfTkIdX0HeMs6
         vqwrXfnEH/kUEF9TM3ab7WD9qTQLUtk9t9IWcWhnatHhlBtznhkvamRKJAvXatCHx6tA
         zCR0sUJ65gBDYashrofOhEMB1lR+1KsYp5SE60dQx2vJynzrJ/BukdHFcGjVasrkYilJ
         Z0wKzcSRSH0QgGRtGJ/5Xo1F4CzIiPKC5fAaJgPRq8aBGQJfV8mE1P9HQkZHBPXcN8VF
         SwRA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of yangtiezhu@loongson.cn designates 114.242.206.163 as permitted sender) smtp.mailfrom=yangtiezhu@loongson.cn
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:references:cc:from:message-id:date:user-agent
         :mime-version:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=KKDDWwBAmcESCc+mXRTrE9NAmCDqjvLWhEHO85USsmo=;
        b=C0wdKYBMbd/TjxU//Chekzg8etHe8UrbQzbCULaPXU3HL3jFFdc8x4aMuIzymjOZOk
         fdu1CxcOqR/eb/WJwTklYSTnEL5s+1sICXDRcq6+GcS3smmkYhk9VPCbMpxyefg3ifME
         BfvYwvo7muP3TW2HBaGbGNHU6/wmfk0d+Rn5lKLbxFxW8jZ0aZDPKS1ewmiFV2aSS6Bz
         KSPuK8bJT6sijRDQgldwRx0ATWwDSmUlKrhFwGs5jI4P7L0Q9+1Ryb+Ws96n44aJwkDr
         hJ4wL1UZVHlc7ZkC977kCzXKjtc6MbcewFp0mj05keRcbRo6NBv5rbCS3iNxY8T8DFOi
         MpqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:references:cc:from:message-id
         :date:user-agent:mime-version:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=KKDDWwBAmcESCc+mXRTrE9NAmCDqjvLWhEHO85USsmo=;
        b=HGRFZ04Sq7t8NdD9K6F1+pzN3Z7V7qyAORkRSmvEUApP+g1EWC3X8LO1GrZoa4QQSe
         VcAx5VCbwAkhvfiCIJbsdV0//FZgECUFhWjYhTYlnuy5n5ytsW76FZ+WWZe3HCTherMF
         gsWIvaZorvidL7MQoRSq7tv9/+BkE1RwhJVd4OQ5qPQL33rYrsrp5ARaupEh7Rw8TvfV
         iyHy/XI4auM4j/xqpe7pIzG/EgnZzEvF/R+b5B3EquMFsapFqIBU2M/PffOEaLYrg0ZC
         FMK9TL70Sbb/h5n7xUjJMxA79AM6XotQ6CtG8ZZNLdbn37dyiH1H3nLaeAaN0F2gJses
         QKUg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531DaXIXe+I4EQ0eXIfOY7+HNFDYnk5V+Uv3s+6urBtzderrDK97
	/CeSMkuH3mntfVFaP6rXQd0=
X-Google-Smtp-Source: ABdhPJxPit0k5fXzmcBMC522f+jmMAzdXA3AoSddSxXjzBuIPssCkT6ufI/gWfLD5EaE7knAhNsViQ==
X-Received: by 2002:ab0:6507:: with SMTP id w7mr6553411uam.93.1611711658275;
        Tue, 26 Jan 2021 17:40:58 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:fb19:: with SMTP id d25ls77723vsr.11.gmail; Tue, 26 Jan
 2021 17:40:57 -0800 (PST)
X-Received: by 2002:a05:6102:526:: with SMTP id m6mr7338638vsa.2.1611711657424;
        Tue, 26 Jan 2021 17:40:57 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1611711657; cv=none;
        d=google.com; s=arc-20160816;
        b=QntPAaEGS7NmGDluC3WxdM3EbMliSZrTW9tAJJrrn56fhAZgnHHNpRSbbdz6zKY/wx
         a9fPqU5ionOxgKMzG9WwWTvS+SyDb2bj2DKuB6wJzJY52VfRZ2tsI3eCvBQyXUUIu1GF
         NYzLpegbKhmHc1v6YjZdiKfDoD3OYpgP/qrl5ewMNcW42tylkEdQIpYUNhWHYL2nGBG7
         7o2pgaroEE0kZJA9lx+0xC+ehdXU9srccxhuoLfSQebboWyytCKyKRfY39oyve1tsnsq
         /cwt4Asm2brB6WhdKn/xCtF/yjqUiRfFVTB94vmukoQWTjxzf/m/XwQycmnUHJbhA+8I
         lkrw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:in-reply-to:mime-version:user-agent:date
         :message-id:from:cc:references:to:subject;
        bh=E51EImlSwcF/7zt4rUQWqfLNBanwrzODwr7CNcqVZSw=;
        b=jCNYeMdBGv5EOU9UEbMXk3hEVO7SgEMJCQESthZuH08Fwkg9qq23QmL8RhO5suFILt
         zjDQUzSBzQDbZqVPQCnnSpuGNwGH1Sm9IsJSnZK77u2zmUaQOmxeXMGx9/t95D0soOa7
         e5jpMOIdD1vOoxRvVJCHobmhpD0Y/egmDsClrDQMdBPX3Z2q6k1BS6XcT/c4zP4pC7Mv
         V3zkZ7djoVSuUJj/cpBBqKODwjXbNa8BUnhSBjvtJrPP9prttcm6tverSO+3xpPzxN0/
         j7SKi5op7N8FSn+JD/3vy2I5ZkLuWQceQxVud6/qHo9gHu9Sx5ggsAjIpkRRlkG/Fn1N
         xFUQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of yangtiezhu@loongson.cn designates 114.242.206.163 as permitted sender) smtp.mailfrom=yangtiezhu@loongson.cn
Received: from loongson.cn (mail.loongson.cn. [114.242.206.163])
        by gmr-mx.google.com with ESMTP id h123si32283vkg.0.2021.01.26.17.40.56
        for <clang-built-linux@googlegroups.com>;
        Tue, 26 Jan 2021 17:40:57 -0800 (PST)
Received-SPF: pass (google.com: domain of yangtiezhu@loongson.cn designates 114.242.206.163 as permitted sender) client-ip=114.242.206.163;
Received: from [10.130.0.135] (unknown [113.200.148.30])
	by mail.loongson.cn (Coremail) with SMTP id AQAAf9DxS+ShxBBgWooNAA--.21016S3;
	Wed, 27 Jan 2021 09:40:50 +0800 (CST)
Subject: Re: [PATCH bpf-next] samples/bpf: Add include dir for MIPS Loongson64
 to fix build errors
To: Daniel Borkmann <daniel@iogearbox.net>,
 Alexei Starovoitov <ast@kernel.org>, Andrii Nakryiko <andrii@kernel.org>,
 Martin KaFai Lau <kafai@fb.com>, Song Liu <songliubraving@fb.com>,
 Yonghong Song <yhs@fb.com>, John Fastabend <john.fastabend@gmail.com>,
 KP Singh <kpsingh@kernel.org>, Nathan Chancellor <natechancellor@gmail.com>,
 Nick Desaulniers <ndesaulniers@google.com>
References: <1611669925-25315-1-git-send-email-yangtiezhu@loongson.cn>
 <67891f2f-a374-54fb-e6e5-44145190934f@iogearbox.net>
Cc: netdev@vger.kernel.org, bpf@vger.kernel.org,
 clang-built-linux@googlegroups.com, linux-mips@vger.kernel.org,
 linux-kernel@vger.kernel.org, Xuefeng Li <lixuefeng@loongson.cn>
From: Tiezhu Yang <yangtiezhu@loongson.cn>
Message-ID: <add50f8c-7592-75ec-ffb2-84c4280f2fc7@loongson.cn>
Date: Wed, 27 Jan 2021 09:40:49 +0800
User-Agent: Mozilla/5.0 (X11; Linux mips64; rv:45.0) Gecko/20100101
 Thunderbird/45.4.0
MIME-Version: 1.0
In-Reply-To: <67891f2f-a374-54fb-e6e5-44145190934f@iogearbox.net>
Content-Type: text/plain; charset="UTF-8"; format=flowed
X-CM-TRANSID: AQAAf9DxS+ShxBBgWooNAA--.21016S3
X-Coremail-Antispam: 1UD129KBjvJXoWxXFyxXrW5ZFW7WFyfWr13XFb_yoW5XrWfpa
	n3uanrKrWUXry5GayxCryUWr4Yy398G3yYgFWrWr45Aa4qqasagr4ktrW5urZ3GryIya1S
	yr9xKF98GF1kZ37anT9S1TB71UUUUUUqnTZGkaVYY2UrUUUUjbIjqfuFe4nvWSU5nxnvy2
	9KBjDU0xBIdaVrnRJUUUBY14x267AKxVW5JVWrJwAFc2x0x2IEx4CE42xK8VAvwI8IcIk0
	rVWrJVCq3wAFIxvE14AKwVWUJVWUGwA2ocxC64kIII0Yj41l84x0c7CEw4AK67xGY2AK02
	1l84ACjcxK6xIIjxv20xvE14v26F1j6w1UM28EF7xvwVC0I7IYx2IY6xkF7I0E14v26r4U
	JVWxJr1l84ACjcxK6I8E87Iv67AKxVW8Jr0_Cr1UM28EF7xvwVC2z280aVCY1x0267AKxV
	WxJr0_GcWle2I262IYc4CY6c8Ij28IcVAaY2xG8wAqx4xG64xvF2IEw4CE5I8CrVC2j2Wl
	Yx0E2Ix0cI8IcVAFwI0_Jr0_Jr4lYx0Ex4A2jsIE14v26r1j6r4UMcvjeVCFs4IE7xkEbV
	WUJVW8JwACjcxG0xvEwIxGrwACjI8F5VA0II8E6IAqYI8I648v4I1lFIxGxcIEc7CjxVA2
	Y2ka0xkIwI1lc7I2V7IY0VAS07AlzVAYIcxG8wCY02Avz4vE14v_KwCF04k20xvY0x0EwI
	xGrwCFx2IqxVCFs4IE7xkEbVWUJVW8JwC20s026c02F40E14v26r1j6r18MI8I3I0E7480
	Y4vE14v26r106r1rMI8E67AF67kF1VAFwI0_GFv_WrylIxkGc2Ij64vIr41lIxAIcVC0I7
	IYx2IY67AKxVWUJVWUCwCI42IY6xIIjxv20xvEc7CjxVAFwI0_Gr0_Cr1lIxAIcVCF04k2
	6cxKx2IYs7xG6rW3Jr0E3s1lIxAIcVC2z280aVAFwI0_Jr0_Gr1lIxAIcVC2z280aVCY1x
	0267AKxVW8JVW8JrUvcSsGvfC2KfnxnUUI43ZEXa7VUb9mitUUUUU==
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

On 01/27/2021 12:01 AM, Daniel Borkmann wrote:
> On 1/26/21 3:05 PM, Tiezhu Yang wrote:
>> There exists many build errors when make M=samples/bpf on the Loongson
>> platform, this issue is MIPS related, x86 compiles just fine.
>>
>> Here are some errors:
> [...]
>>
>> So we can do the similar things in samples/bpf/Makefile, just add
>> platform specific and generic include dir for MIPS Loongson64 to
>> fix the build errors.
>
> Your patch from [0] said ...
>
>   There exists many build warnings when make M=samples/bpf on the 
> Loongson
>   platform, this issue is MIPS related, x86 compiles just fine.
>
>   Here are some warnings:
>   [...]
>
>   With #ifndef __SANE_USERSPACE_TYPES__  in tools/include/linux/types.h,
>   the above error has gone and this ifndef change does not hurt other
>   compilations.
>
> ... which ave the impression that all the issues were fixed. What else
> is needed aside from this patch here? More samples/bpf fixes coming? If
> yes, please all submit them as a series instead of individual ones.

Hi Daniel,

Thanks for your reply.

This is the last samples/bpf patch to fix the obvious build issues when
make M=samples/bpf on the MIPS Loongson64 platform.

There is another MIPS patch to fix the following build error when make
M=samples/bpf, but it seems a common and known issue when build MIPS
kernel used with clang [1]:

./arch/mips/include/asm/checksum.h:161:9: error: unsupported inline asm: 
input with type 'unsigned long' matching output with type '__wsum' (aka 
'unsigned int')
         : "0" ((__force unsigned long)daddr),
                ^~~~~~~~~~~~~~~~~~~~~~~~~~~~
1 error generated.

Because these two patches are independent, this one is bpf-next related,
the other one is mips-next related, so I submit them sepearately.

[1] 
https://lore.kernel.org/linux-mips/CAG_fn=W0JHf8QyUX==+rQMp8PoULHrsQCa9Htffws31ga8k-iw@mail.gmail.com/

Thanks,
Tiezhu

>
>  [0] 
> https://git.kernel.org/pub/scm/linux/kernel/git/bpf/bpf-next.git/commit/?id=190d1c921ad0862da14807e1670f54020f48e889
>
>> Signed-off-by: Tiezhu Yang <yangtiezhu@loongson.cn>
>> ---
>>   samples/bpf/Makefile | 4 ++++
>>   1 file changed, 4 insertions(+)
>>
>> diff --git a/samples/bpf/Makefile b/samples/bpf/Makefile
>> index 362f314..45ceca4 100644
>> --- a/samples/bpf/Makefile
>> +++ b/samples/bpf/Makefile
>> @@ -185,6 +185,10 @@ endif
>>     ifeq ($(ARCH), mips)
>>   TPROGS_CFLAGS += -D__SANE_USERSPACE_TYPES__
>> +ifdef CONFIG_MACH_LOONGSON64
>> +BPF_EXTRA_CFLAGS += -I$(srctree)/arch/mips/include/asm/mach-loongson64
>> +BPF_EXTRA_CFLAGS += -I$(srctree)/arch/mips/include/asm/mach-generic
>> +endif
>>   endif
>>     TPROGS_CFLAGS += -Wall -O2
>>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/add50f8c-7592-75ec-ffb2-84c4280f2fc7%40loongson.cn.
