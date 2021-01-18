Return-Path: <clang-built-linux+bncBAABBFNISWAAMGQEXVDK7LY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23a.google.com (mail-oi1-x23a.google.com [IPv6:2607:f8b0:4864:20::23a])
	by mail.lfdr.de (Postfix) with ESMTPS id E48C72F9BDA
	for <lists+clang-built-linux@lfdr.de>; Mon, 18 Jan 2021 10:25:42 +0100 (CET)
Received: by mail-oi1-x23a.google.com with SMTP id b11sf5197804oib.23
        for <lists+clang-built-linux@lfdr.de>; Mon, 18 Jan 2021 01:25:42 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1610961942; cv=pass;
        d=google.com; s=arc-20160816;
        b=OXOk8M1Xkm5IVCk+5VnqaFgpfURTZu1kfPeVG1XREdWlwEjtO3m4IsCjL59H/7dIQE
         9EPU5EFeb/mKY+ZLwNg5rXS7jygTizVkxdJ7Pi6dRmx+BnOcahHM4j08rXFS0fqsTOUL
         1KyC/sTU5w0DZylqZBSRCUX9c6qQ/E9/QreDG96xsbnL/O+B+I24O6zn2S7u82tBCcnS
         4HPrbFZgYIBwgYJ9fKzxssKU8+uCmf4WYhTPGV5s4iPS5cfRe8IuaRe9kcJTa/KXQks5
         fJiyVqRlbfzx9SqZpLq5eEQvxgyOjJswKL322908p9O9W9uidKWUx5f+LuW1bnVlue2L
         mTYQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:mime-version:user-agent
         :date:message-id:from:cc:references:to:subject:sender:dkim-signature;
        bh=FIBVjcjskRKYWuFrZuE2itPnzuYRFFxSxPO4Az4DfrU=;
        b=pYSHQz5pgNIgZJN3veRiBvwAFC70o0p+YzSn+ssu8DSWOYgZCh+Jo5UatJmSqE+nAO
         Deoje2eE20emvxyA3KR44ODOUJXjPFysgSspzZexIhefhn8jvlXquhAwCr5v5mWTP4mw
         kbHme9MQmSYUEbdlHpmA/CM2S3rYVXI1X//r76EbfTEEEkF1EsuD6OUvdjEbvSFnoPZf
         d9WUbJyhziSuAHvB7VmRDQKG8vbEPEPYsxyP8YkNnFDPl+CzUR4deG20V2GfQY/ZvasA
         Mj7VV3hS3S7FGBIG0NICjkrn7ENh4qSf9ni9gZaX4AsvS4xIqrSWj3T/cakW+OPi2xOE
         wj7g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of yangtiezhu@loongson.cn designates 114.242.206.163 as permitted sender) smtp.mailfrom=yangtiezhu@loongson.cn
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:references:cc:from:message-id:date:user-agent
         :mime-version:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=FIBVjcjskRKYWuFrZuE2itPnzuYRFFxSxPO4Az4DfrU=;
        b=BGw1CeGdAvRQTpBaZC7QFoQV6BI7FVCkfkewSsAX+n90mHsVhixrtPyft4M46tzXWB
         nRWzJUmIvAzYU2JIwT/OU2frS7/ErtjBCbqK1WDV/+EFt0Hu46M0CaBsI+zytwi2/alt
         8s3x7Y8EBZKNKxnnJpgPtTsqDiZNpiKQFhA3Lq7d58ifvc/try/l2ekntB7ODOUdnwlI
         2Z47IPh3AIyx5F52+UwmmwOktmcxWOEntFaISu/vgwc+aEvyQvLCYHsuAyCiIolPZf3V
         Gt84Q8xLGLOUt8yUFxAjsMS9m4ANmMYdP2rzADmfK2a70wC/AhyTcfo3y2dJLpHaEROu
         NmXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:references:cc:from:message-id
         :date:user-agent:mime-version:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=FIBVjcjskRKYWuFrZuE2itPnzuYRFFxSxPO4Az4DfrU=;
        b=J8pQTJafDcjKBxN0q1YS8D2Py0aql3xrYgsq79CTf9ix1rBBHdxhhmYIvvm3qJ4LbB
         5gXmD5wxuJLoyID/XCsDw2be/b97kaxU72koDCq5jxJUzldJW2JV6P/fs0tp/zvezoXc
         1Te+nA7Na6vSTyWJ+gmsVLFCoCN+f9ok/wIivjWQkrXCNR7o2JT8wACeQc0SugARztTD
         dlha63XYxyWd5ebt8S8l9OziX/see2kLujUzHs7aL7aVb+yrwP4YRqe2reVw/KasoDOB
         4ojMDOTTe7BtBW01nJLH3OUDSFz18pkSWpn/amdedSIlr5aG0tQkXIxnIoDN6mwbLQoO
         vedA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533YK/bxS9wbrVux/ht62ngQCo/1m6e4MZL2lUwJop3FEb6VkpB6
	c0j8LI8Zdq/2sctbXUp1Gyk=
X-Google-Smtp-Source: ABdhPJxQbRHvlh8ZGpuG9/MaRbpW185VR3UmVFHYd+6CCzCTqWUsA7/izbp/3bk7qw8r9DeGEJ5s5w==
X-Received: by 2002:a9d:7a48:: with SMTP id z8mr9904842otm.53.1610961941912;
        Mon, 18 Jan 2021 01:25:41 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:7508:: with SMTP id q8ls79489oic.4.gmail; Mon, 18 Jan
 2021 01:25:41 -0800 (PST)
X-Received: by 2002:aca:ded4:: with SMTP id v203mr12317870oig.148.1610961941271;
        Mon, 18 Jan 2021 01:25:41 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1610961941; cv=none;
        d=google.com; s=arc-20160816;
        b=tcokqLxV4Fa/uOp8j85KsYsT42/TZQEYIanYNa0fbMTIAEBrCNlD3R+XYrk18gLsm9
         Ub5ErrBR2EB0Yzqx48WTlOQHbkGYgqaIzTej5xOJB1HHLi8Q1bsrGCLF3Z1ujMQapG1D
         Afj9TBJNCQ40dr4qg+kHnJnoBbfEisX4sBfpR0CS19vqqkglmIzKszs4H6NFlL/smRwV
         iu8+54i/8LJGxSzHMLXXQiglnSeCjU6aXT9x/meRhmpcYu3WeCB8J73CNj35FfYTJAwW
         sa9nEc6GvzmwyJ7EVDXOkkTTUjk5gJwDghXlolAAm0CixdASiHogEGO7531rqU8nFftZ
         /kLw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:in-reply-to:mime-version:user-agent:date
         :message-id:from:cc:references:to:subject;
        bh=pVJ/2kAXp80yGaaJ9tEyByCdYDYWCg2HhIUEH5Fl9II=;
        b=xQoKu19idvjVxdZW9dFXuaDwjeYVgXhKpCwHLXqE385cr0NsUBUirOaBMjnM1XeDyp
         pHhkLtcsuJXJTc5c8YX46+DnW9Y2I6xUmLguNM2A7Lbz39P3rdpomzW9zrLT2zRpGa7h
         exOrRm6Ux4kZfY+HjoCX3BTPUqZ3DMmLhQc3qc0r84jZZ9UZjuFbFa4ep9Um0w8rAi7t
         1bM4rpIv/kABt3K6zHHpRZgjqoWiEB4/b0OZTYky6e0mBacvUrMHDJiKSp4oJb2k5CC7
         e9OtKvW65AhMeR1J2nZlBC6Tnpzm9Gtnw0XbkD3aMPDqQWbusuZycBWxHv06pe4EiKqw
         BzCA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of yangtiezhu@loongson.cn designates 114.242.206.163 as permitted sender) smtp.mailfrom=yangtiezhu@loongson.cn
Received: from loongson.cn (mail.loongson.cn. [114.242.206.163])
        by gmr-mx.google.com with ESMTP id s126si1279545ooa.0.2021.01.18.01.25.40
        for <clang-built-linux@googlegroups.com>;
        Mon, 18 Jan 2021 01:25:40 -0800 (PST)
Received-SPF: pass (google.com: domain of yangtiezhu@loongson.cn designates 114.242.206.163 as permitted sender) client-ip=114.242.206.163;
Received: from [10.130.0.135] (unknown [113.200.148.30])
	by mail.loongson.cn (Coremail) with SMTP id AQAAf9DxSL4PVAVguK4GAA--.10639S3;
	Mon, 18 Jan 2021 17:25:36 +0800 (CST)
Subject: Re: [PATCH 2/2] compiler.h: Include asm/rwonce.h under ARM64 and
 ALPHA to fix build errors
To: Yonghong Song <yhs@fb.com>,
 Luc Van Oostenryck <luc.vanoostenryck@gmail.com>,
 Alexei Starovoitov <ast@kernel.org>, Daniel Borkmann <daniel@iogearbox.net>,
 Andrii Nakryiko <andrii@kernel.org>, Martin KaFai Lau <kafai@fb.com>,
 Song Liu <songliubraving@fb.com>, John Fastabend <john.fastabend@gmail.com>,
 KP Singh <kpsingh@kernel.org>, Nathan Chancellor <natechancellor@gmail.com>,
 Nick Desaulniers <ndesaulniers@google.com>
References: <1610535453-2352-1-git-send-email-yangtiezhu@loongson.cn>
 <1610535453-2352-3-git-send-email-yangtiezhu@loongson.cn>
 <33050fcc-a4a0-af2e-6fba-dca248f5f23b@fb.com>
Cc: linux-sparse@vger.kernel.org, netdev@vger.kernel.org,
 bpf@vger.kernel.org, clang-built-linux@googlegroups.com,
 linux-mips@vger.kernel.org, linux-kernel@vger.kernel.org,
 Xuefeng Li <lixuefeng@loongson.cn>,
 Sergei Shtylyov <sergei.shtylyov@gmail.com>,
 kernel test robot <lkp@intel.com>
From: Tiezhu Yang <yangtiezhu@loongson.cn>
Message-ID: <5663510d-2aa5-c1f2-d0c8-5313cc2a4a18@loongson.cn>
Date: Mon, 18 Jan 2021 17:25:35 +0800
User-Agent: Mozilla/5.0 (X11; Linux mips64; rv:45.0) Gecko/20100101
 Thunderbird/45.4.0
MIME-Version: 1.0
In-Reply-To: <33050fcc-a4a0-af2e-6fba-dca248f5f23b@fb.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
X-CM-TRANSID: AQAAf9DxSL4PVAVguK4GAA--.10639S3
X-Coremail-Antispam: 1UD129KBjvJXoW7uw1rtF4UCF4xKw1xJr13Jwb_yoW8GFWxpF
	4DZr4kKrZ8Wry5JrsYvr12kr43A39xGrW5tF97W348Z3WIqFy7GanYgwn8CF4xWanIqFWI
	k3W2gry3Jw4jv37anT9S1TB71UUUUUUqnTZGkaVYY2UrUUUUjbIjqfuFe4nvWSU5nxnvy2
	9KBjDU0xBIdaVrnRJUUUB014x267AKxVW5JVWrJwAFc2x0x2IEx4CE42xK8VAvwI8IcIk0
	rVWrJVCq3wAFIxvE14AKwVWUJVWUGwA2ocxC64kIII0Yj41l84x0c7CEw4AK67xGY2AK02
	1l84ACjcxK6xIIjxv20xvE14v26ryj6F1UM28EF7xvwVC0I7IYx2IY6xkF7I0E14v26F4j
	6r4UJwA2z4x0Y4vEx4A2jsIE14v26F4UJVW0owA2z4x0Y4vEx4A2jsIEc7CjxVAFwI0_Gc
	CE3s1le2I262IYc4CY6c8Ij28IcVAaY2xG8wAqx4xG64xvF2IEw4CE5I8CrVC2j2WlYx0E
	2Ix0cI8IcVAFwI0_Jr0_Jr4lYx0Ex4A2jsIE14v26r4j6F4UMcvjeVCFs4IE7xkEbVWUJV
	W8JwACjcxG0xvEwIxGrwACjI8F5VA0II8E6IAqYI8I648v4I1lFIxGxcIEc7CjxVA2Y2ka
	0xkIwI1lc7I2V7IY0VAS07AlzVAYIcxG8wCY02Avz4vE14v_GFWl42xK82IYc2Ij64vIr4
	1l4I8I3I0E4IkC6x0Yz7v_Jr0_Gr1lx2IqxVAqx4xG67AKxVWUJVWUGwC20s026x8GjcxK
	67AKxVWUGVWUWwC2zVAF1VAY17CE14v26r4a6rW5MIIYrxkI7VAKI48JMIIF0xvE2Ix0cI
	8IcVAFwI0_Jr0_JF4lIxAIcVC0I7IYx2IY6xkF7I0E14v26r4j6F4UMIIF0xvE42xK8VAv
	wI8IcIk0rVWrJr0_WFyUJwCI42IY6I8E87Iv67AKxVWUJVW8JwCI42IY6I8E87Iv6xkF7I
	0E14v26r4j6r4UJbIYCTnIWIevJa73UjIFyTuYvjfU83kuDUUUU
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

On 01/14/2021 01:14 AM, Yonghong Song wrote:
> I do not think this fix is correct. x86 does not define its own
> rwonce.h and still compiles fine.
>
> As noted in the above, we have include/asm-generic/rwonce.h.
> Once you do a proper build, you will have rwonce.h in arch
> generated directory like
>
> -bash-4.4$ find . -name rwonce.h
> ./include/asm-generic/rwonce.h
> ./arch/alpha/include/asm/rwonce.h
> ./arch/arm64/include/asm/rwonce.h
> ./arch/x86/include/generated/asm/rwonce.h
>
> for mips, it should generated in 
> arch/mips/include/generated/asm/rwonce.h. Please double check why this 
> does not happen.

Hi Yonghong,

Thank you very much for your reply.
You are right, this patch is meaningless.

I find this build error when make M=samples/bpf after make clean,
so the ./arch/mips/include/generated/asm/rwonce.h is not exist.

After rebuild the kernel, this header file can be found when make
M=samples/bpf due to samples/bpf/Makefile contains $LINUXINCLUDE.

$ find . -name rwonce.h
./include/asm-generic/rwonce.h
./arch/arm64/include/asm/rwonce.h
./arch/mips/include/generated/asm/rwonce.h
./arch/alpha/include/asm/rwonce.h
$ cat ./arch/mips/include/generated/asm/rwonce.h
#include <asm-generic/rwonce.h>


Hi Sergei and kernel test robot,

Thank you for your suggestion and report,
please ignore this patch, sorry for the noise.

Thanks,
Tiezhu

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/5663510d-2aa5-c1f2-d0c8-5313cc2a4a18%40loongson.cn.
