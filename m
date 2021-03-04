Return-Path: <clang-built-linux+bncBAABB7VQQGBAMGQE47XEJ2A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3f.google.com (mail-io1-xd3f.google.com [IPv6:2607:f8b0:4864:20::d3f])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E66332CB28
	for <lists+clang-built-linux@lfdr.de>; Thu,  4 Mar 2021 04:48:16 +0100 (CET)
Received: by mail-io1-xd3f.google.com with SMTP id r10sf20385502iod.20
        for <lists+clang-built-linux@lfdr.de>; Wed, 03 Mar 2021 19:48:16 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1614829695; cv=pass;
        d=google.com; s=arc-20160816;
        b=0BWkNeinpvF1VZ14wRaGDd6FdmWvRgOYBlrnsmt8XZGSulcBLSc90wLwufiniZ4bam
         o5vWWiklcuGoOyk8Yocbgsc0ORJXoq4xalMtL2KSo4d9izF/MXoBYid2t0oHdH27E7wK
         8aYWgmCVCc0dplnEHbCgX3jYf15IxgmyhN5xqREspp+6WRrkR5dGgox9GlLc4dtNFllx
         7h0NYK2qM58yUfPxE+5XvwzG+H7e4wViXgIYnXG4OIXW1IBKmfo27SExMvp9rDPSF/TW
         F2BrLMwJcWzN+h8YOW5DcPkKxt9Y5CMb7NHaRU2c0VZ39FqR9/oNAzcwv+EKPmCX0f05
         9VmQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:mime-version:user-agent
         :date:message-id:from:cc:references:to:subject:sender:dkim-signature;
        bh=m1g4im5gMVllNQBgBDCy+IXLDjDT0sMpOz2YgyXKUK4=;
        b=ME8AyG147lf4+Oz94DBUE1MVILVCfuUEMGIwp7fbr2s1zliln0snYEgBBHEsXBLXJT
         EKytyc913Yi4Fu0vJxx7wQphdUwo6aPPpPOS6izd7N7XtiSW4X1jcy5Dj3n5U5JnyezK
         oNOJLzgj0q9n4sQ82+zylHz4p6B/drfmS5wNBW3bARoCc7QnN+htKTZ6D/uEi5Kt/iSW
         CgvqhD6hi7WUI/cYTJt2L/RPNdrGWpgjFEA/CRQnqNbalv+ZNN44FK05o8YS48CDT+hj
         gGf6K5YSAQpGxsl40xePmAayE+y8dzqFdPXRSXmzjbgNdpgpYCM+vukITwv7lsD6Fs8U
         BcDA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of yangtiezhu@loongson.cn designates 114.242.206.163 as permitted sender) smtp.mailfrom=yangtiezhu@loongson.cn
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:references:cc:from:message-id:date:user-agent
         :mime-version:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=m1g4im5gMVllNQBgBDCy+IXLDjDT0sMpOz2YgyXKUK4=;
        b=PIz7AooP5pJBzl+YpRsvxdlt5XxsUVXo0WaZe+UIbRI4DMfJaOvtBohPLOEmfGY1FY
         wUWNULAjGQzlPeAZOV4fSxpmym1bqyfGYxtPAlpHhCZ89FcU0ZzvaYWn3rCEyT+6OznY
         WpkBJxIO+f8G6vjOpjgJe8vrfPxYinxWXIBM7hS3At6hBIrqUovd7JSK6OBwUZv44ea2
         0A/tl+22D8taURDIy92MGb5RLDlc1QMA6qNRNCG4GdVsJ+eWK7LLECbeV0M4iifP1SZ5
         rv8Uv4l89J9OOPpPKcNnG0KRjlgoldhyE7xXPfDdHRb3YLPvwDRs5Ix0VyQwFi1lO55M
         8i2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:references:cc:from:message-id
         :date:user-agent:mime-version:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=m1g4im5gMVllNQBgBDCy+IXLDjDT0sMpOz2YgyXKUK4=;
        b=HeTMP4FZLLlgjq9YiyN7ZrmLIgPt3R3G3YG8sLm4v/WydN8a548WHMBUY+nNVFbFLY
         XDR+b/kWYGbYYHxLModiAL+RxkF6pWSrKi4CBmhImVBwJuZbOMwmlWtHEWxyewnJ3iWL
         M+qL+T2KUWl3JxvkD6gLokq10hY0ZwMfTamBDkQeqZRRGDNaXZGo6Z+ke9t5YnaC3F3b
         jAVb8gN+MzxWABL5uHtn+yC08xx3btNX+4nMWcJNkFbAJTUk1QFOr++IV43idHF/f9vo
         uN9LcRaQ2ZCwuAF8ahAJFehM4FUCAww0jeRlO4LXq8D11rc3bOSUbFwxzUGqDjLl6lOW
         er2A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531q7Vn54Fi2DepPZF9sAHgqvuJ9gPFA2KIaYJnc/Mwd55g2/GMU
	oyvsUCPcYgjWWZrO5x1G3II=
X-Google-Smtp-Source: ABdhPJz10jB7kjBzjulIwUl/rj7+CKUk8TY/vsMxToKamFheHQZgKLVKveLIO4cu57mLscSf714A0g==
X-Received: by 2002:a92:de4c:: with SMTP id e12mr2370988ilr.63.1614829695300;
        Wed, 03 Mar 2021 19:48:15 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5d:9914:: with SMTP id x20ls754144iol.7.gmail; Wed, 03 Mar
 2021 19:48:14 -0800 (PST)
X-Received: by 2002:a05:6602:722:: with SMTP id g2mr2069756iox.1.1614829694689;
        Wed, 03 Mar 2021 19:48:14 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1614829694; cv=none;
        d=google.com; s=arc-20160816;
        b=WjFQ8/XF80tRsIGRhcXKpZsetIj+EL6NpYIMViJTSfSnwFQ5pK+526dQWgK+nskgHf
         XgD0ua8ICoDwvQBo85EfZr6ZFBsP4gTIrjAyl6uPIFXM2B1acfdwIPGDyrlulxBuDnfo
         jU/D6iaSgI7kAk32QYd+JnRzvuLfqYWQSs/DLCJYFyEdNVAnEBpbs52CEzU37yQQBFZN
         PyT+decNKvA1nTA2204trCMmBewr3wD6Aq6H6HXv9JR75kd2NCRM3dTaB0LYwrHu1nJn
         Et9xUor0y9S6VlpiyKSknu4bf7c9OU6n9QsQDhzdXLRj5X0QSEHHAkRggfA41Ju+oK8e
         J4Yg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:in-reply-to:mime-version:user-agent:date
         :message-id:from:cc:references:to:subject;
        bh=n2PXHui5P5lORK8TeVob+icX675B9NCHxvX4tikdLvU=;
        b=nVq3sPw93vGfdRADP8vZFqpeB/23TjpQj3f+MU/DaNrDuS/dd7DzIdxtY71wyNZnNu
         LIHpTW9beEUcdrtmGESa4sfm66pl6W98w191e4b/i8Af/NatebSn9Azrc3Qu81W75XAA
         GwFmdv20kvID1eDhot6H7lpZJ7LU34R4BFlC3dLCJwEJHJc4dpZ+jZatEJPiJjnZC9d6
         N+UWvgnhEr2jzfatNEtY9Wugne3CUom1Nr20wEGFzP+0T5HuXZv1ugoulsuoeP3nRIrg
         K65grzFY7j20AURylkPtR0rhXVIFR7ixBwtpKEze34QFuEDHIRjbWnIE9GP+XPcNUB1o
         w1Ag==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of yangtiezhu@loongson.cn designates 114.242.206.163 as permitted sender) smtp.mailfrom=yangtiezhu@loongson.cn
Received: from loongson.cn (mail.loongson.cn. [114.242.206.163])
        by gmr-mx.google.com with ESMTP id d2si1263046ila.5.2021.03.03.19.48.13
        for <clang-built-linux@googlegroups.com>;
        Wed, 03 Mar 2021 19:48:14 -0800 (PST)
Received-SPF: pass (google.com: domain of yangtiezhu@loongson.cn designates 114.242.206.163 as permitted sender) client-ip=114.242.206.163;
Received: from [10.130.0.135] (unknown [113.200.148.30])
	by mail.loongson.cn (Coremail) with SMTP id AQAAf9Dxn9d5WEBgaCQUAA--.8873S3;
	Thu, 04 Mar 2021 11:48:09 +0800 (CST)
Subject: Re: [PATCH] MIPS: Add comment about CONFIG_MIPS32_O32 in
 loongson3_defconfig when build with Clang
To: Nathan Chancellor <nathan@kernel.org>
References: <1614820544-10686-1-git-send-email-yangtiezhu@loongson.cn>
 <20210304020244.pza6xd4ixziysrom@archlinux-ax161>
Cc: Thomas Bogendoerfer <tsbogend@alpha.franken.de>,
 Nick Desaulniers <ndesaulniers@google.com>, linux-mips@vger.kernel.org,
 linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com,
 Xuefeng Li <lixuefeng@loongson.cn>
From: Tiezhu Yang <yangtiezhu@loongson.cn>
Message-ID: <958c5df5-76aa-9161-9519-07a03ee864a0@loongson.cn>
Date: Thu, 4 Mar 2021 11:48:09 +0800
User-Agent: Mozilla/5.0 (X11; Linux mips64; rv:45.0) Gecko/20100101
 Thunderbird/45.4.0
MIME-Version: 1.0
In-Reply-To: <20210304020244.pza6xd4ixziysrom@archlinux-ax161>
Content-Type: text/plain; charset="UTF-8"; format=flowed
X-CM-TRANSID: AQAAf9Dxn9d5WEBgaCQUAA--.8873S3
X-Coremail-Antispam: 1UD129KBjvJXoW7Kw18JrWUWr1kJF4UKr1UAwb_yoW8WFykp3
	95K3Wktr1DWF45GFWDArykWr9Yq3sxt3yqyasY93s0qFyDWFykWr9Ykwn3uryUArsFy34F
	gFZ3W34UJa1Iy3JanT9S1TB71UUUUUUqnTZGkaVYY2UrUUUUjbIjqfuFe4nvWSU5nxnvy2
	9KBjDU0xBIdaVrnRJUUUvG14x267AKxVW8JVW5JwAFc2x0x2IEx4CE42xK8VAvwI8IcIk0
	rVWrJVCq3wAFIxvE14AKwVWUJVWUGwA2ocxC64kIII0Yj41l84x0c7CEw4AK67xGY2AK02
	1l84ACjcxK6xIIjxv20xvE14v26ryj6F1UM28EF7xvwVC0I7IYx2IY6xkF7I0E14v26F4j
	6r4UJwA2z4x0Y4vEx4A2jsIE14v26r4UJVWxJr1l84ACjcxK6I8E87Iv6xkF7I0E14v26r
	xl6s0DM2AIxVAIcxkEcVAq07x20xvEncxIr21l5I8CrVACY4xI64kE6c02F40Ex7xfMcIj
	6xIIjxv20xvE14v26r1j6r18McIj6I8E87Iv67AKxVWUJVW8JwAm72CE4IkC6x0Yz7v_Jr
	0_Gr1lF7xvr2IY64vIr41lF7I21c0EjII2zVCS5cI20VAGYxC7Mxk0xIA0c2IEe2xFo4CE
	bIxvr21lc2xSY4AK67AK6r48MxAIw28IcxkI7VAKI48JMxC20s026xCaFVCjc4AY6r1j6r
	4UMI8I3I0E5I8CrVAFwI0_Jr0_Jr4lx2IqxVCjr7xvwVAFwI0_JrI_JrWlx4CE17CEb7AF
	67AKxVWUAVWUtwCIc40Y0x0EwIxGrwCI42IY6xIIjxv20xvE14v26r1j6r1xMIIF0xvE2I
	x0cI8IcVCY1x0267AKxVWUJVW8JwCI42IY6xAIw20EY4v20xvaj40_WFyUJVCq3wCI42IY
	6I8E87Iv67AKxVWUJVW8JwCI42IY6I8E87Iv6xkF7I0E14v26r4j6r4UJbIYCTnIWIevJa
	73UjIFyTuYvjfUnQ6pDUUUU
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

On 03/04/2021 10:02 AM, Nathan Chancellor wrote:
> On Thu, Mar 04, 2021 at 09:15:44AM +0800, Tiezhu Yang wrote:
>> When build kernel with Clang [1]:
>>
>> $ make CC=clang loongson3_defconfig
>> $ make CC=clang

[snip]

> I think this might be a better solution. I know that I personally never
> read defconfig files if a build fails.
>
> If CONFIG_MIPS32_O32 is broken with clang and the MIPS backend
> maintainer has said that it will not be supported due to lack of
> resources, then the config should not even be selectable in my opinion.
>
> Cheers,
> Nathan
>
> diff --git a/arch/mips/Kconfig b/arch/mips/Kconfig
> index d89efba3d8a4..ed35318a759d 100644
> --- a/arch/mips/Kconfig
> +++ b/arch/mips/Kconfig
> @@ -3315,6 +3315,8 @@ config SYSVIPC_COMPAT
>   config MIPS32_O32
>   	bool "Kernel support for o32 binaries"
>   	depends on 64BIT
> +	# https://bugs.llvm.org/show_bug.cgi?id=38063
> +	depends on $(success,$(CC) $(CLANG_FLAGS) -march=mips64 -o32 -c -x c /dev/null -o /dev/null)
>   	select ARCH_WANT_OLD_COMPAT_IPC
>   	select COMPAT
>   	select MIPS32_COMPAT

Hi Nathan,

Thank you very much for your reply and suggestion, maybe the following
change is simple, clear and better? If yes, I will send v2 later.

diff --git a/arch/mips/Kconfig b/arch/mips/Kconfig
index 3a38d27..f6ba59f 100644
--- a/arch/mips/Kconfig
+++ b/arch/mips/Kconfig
@@ -3318,6 +3318,8 @@ config SYSVIPC_COMPAT
  config MIPS32_O32
         bool "Kernel support for o32 binaries"
         depends on 64BIT
+       # https://bugs.llvm.org/show_bug.cgi?id=38063
+       depends on !CC_IS_CLANG
         select ARCH_WANT_OLD_COMPAT_IPC
         select COMPAT
         select MIPS32_COMPAT

Thanks,
Tiezhu

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/958c5df5-76aa-9161-9519-07a03ee864a0%40loongson.cn.
