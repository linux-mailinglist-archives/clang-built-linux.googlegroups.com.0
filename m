Return-Path: <clang-built-linux+bncBAABBO6DYCAAMGQEOPRNK2I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103a.google.com (mail-pj1-x103a.google.com [IPv6:2607:f8b0:4864:20::103a])
	by mail.lfdr.de (Postfix) with ESMTPS id A1091303FA6
	for <lists+clang-built-linux@lfdr.de>; Tue, 26 Jan 2021 15:05:48 +0100 (CET)
Received: by mail-pj1-x103a.google.com with SMTP id j11sf1880166pjw.1
        for <lists+clang-built-linux@lfdr.de>; Tue, 26 Jan 2021 06:05:48 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1611669947; cv=pass;
        d=google.com; s=arc-20160816;
        b=g4izOY+4W1kGAJbL/b6UGh1sVzIa3csodF/KWxen0UQSXPgSLEe4SpkxoYXUVVU5C/
         5xmU9gsaQVF7oAIsFaf52jLxUB6felld7uDxl6uITN3P50Dg9+DpmouH8tKf2zGrMbOF
         sFERTa0hm/BXHj5JyALPf7FlAX7ojT8GCciyjBFMP1wYT8ztLUmiN7QZLaGe+GUeDi9h
         CdY1sNeKWHRgRtdcogfNLmr5IdBS4ciU2vYJ9PWl3zVZTkoEQn3dH5guHSwMaLuF5acD
         ZNw09uY/DzGFsYN5SZv3ZT6NCcGWl5runBuQKZ+4OBhEKz6M3JSch6tXF9Fl6cTpqxAD
         rbKw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:message-id:date:subject:cc:to:from
         :mime-version:sender:dkim-signature;
        bh=bWJCX6srWqBycd4RSjNSh6vj5vzz5dkC9+kxMRKzvvU=;
        b=ZNyINiIhFH+NcvbxYLIyiCklcXmDTvvCUopJs1QfIa5d42JVdSSlZcPw9vkzOnVJu3
         jPw7/LVm/WZFCstvtOfqnRZCCtOqpgP/oAtMvZYOcRH1YYcQpSnB0jjcjmUXv4q97or6
         GR6qDw+ioNEowpMZcD+9xN3wcZDUgISqvGLasDZjQ3MFq661quUMFcK3fDbm2jvtqsd3
         8PghgZW8midHOeR8ydw/eMJbY5+z/qvdHbMHYT2/rHYxc3pkkgX9L1om7bQzzsJxWLHB
         kbYU6BVMVzNxA/xqsV7rSfCJ9gttm2d/k6aBkvYN4nSpImpWO87NvhKCvkUdtSX19n1Y
         WNRQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of yangtiezhu@loongson.cn designates 114.242.206.163 as permitted sender) smtp.mailfrom=yangtiezhu@loongson.cn
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:to:cc:subject:date:message-id
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=bWJCX6srWqBycd4RSjNSh6vj5vzz5dkC9+kxMRKzvvU=;
        b=Hn7M2GQ+Uy7ozMSRwJiR/Fro1aPVIYFqsWLALrcHzS73rDyhMHs4Hq4QSKCMV9zR+n
         IEnsKe7iNYGb5yK47+304JQPuzkOXaxyYcWmlClp7JUVHxzAj3nf2hWpJ/uhtTUIX7YB
         NbFkeY/Olq0tzMdT/RfHXAJ+9fPfCBmXVjAmvaohJXxQ83HGgSqfu015uE2yWvs/gn3Q
         5E1hlVvQWUZQeitd9HFf/1jgS2K3UAcxt4GC6ovDLtoC0DuOe//KcP0HsgTdU+itrROt
         TbSGUlT9ynfk5MBojtfUlFtTs30YT98j1R1gGs7TrJNooAXfESZbMNCaaZw4HBPpazC7
         HsVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:cc:subject:date
         :message-id:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=bWJCX6srWqBycd4RSjNSh6vj5vzz5dkC9+kxMRKzvvU=;
        b=RVQ7KQhJHoONqmOgfgeEooNlKRY9LhAKjZaKdwcKJ+x8Q5zcjPzu7MDrXIQUnGw/1C
         Yx5FTRRYn1I/oHBg4GpthEm+xZAJQ11he9+8ks4GVVLzc8mZiYHYfm4DVVcIpNjyI6Bq
         Y6BUa6TrS5jhe19NsoV8fTv/ik/0ddvt+Qv5Od4bJnwqPwxvxGSKCZ+pSizNw5E93xRj
         I1JmWeeALn+XNmmOQYI2krOXiOjnVpjn2U0uisc/ydhEmFJBQeHja6hF8lQQC/rLWSB4
         T4HnrydrqumkUb1JDv3+VlA/WqoWS/XwWHuZSdCNB0f6ZGcxarJ0LhZ6ZEVAzkcb/EmN
         cgiw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530HvKAaWunQK2II+KQBRfr3QMLxnG/Zy6YOSKb4Pd3hKq8mskhK
	KYYcomMaEAWBgFN5ti+VfFM=
X-Google-Smtp-Source: ABdhPJwYdfOP9LSHikSmgyj+nEL6kakSOdEzeM+672XQj6RsM0Deo3j+dNPkEWlhgESPiyj47IE4Zg==
X-Received: by 2002:a17:90a:d09:: with SMTP id t9mr6614736pja.139.1611669947351;
        Tue, 26 Jan 2021 06:05:47 -0800 (PST)
MIME-Version: 1.0
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aa7:9386:: with SMTP id t6ls6077051pfe.1.gmail; Tue, 26 Jan
 2021 06:05:46 -0800 (PST)
X-Received: by 2002:a63:4e63:: with SMTP id o35mr5701454pgl.291.1611669946820;
        Tue, 26 Jan 2021 06:05:46 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1611669946; cv=none;
        d=google.com; s=arc-20160816;
        b=Xd9ENyT+IpKEEMvYFci57TKUMRKBjumU+IPZf3wvs7jO40vWcSqwitlw59h/P+Q5Gb
         9lGqYl4po3RS8n6DbRpNQMw04vpx6NU2ByZt5QKew97QQ0k6fp7AfVkecoJXwDCSdWlp
         rIRtCyjt/RMG5PByh5eZHIESpDuP49p9VgzcMYNdcWYRArkHKzAosSG44p4cZaINg9fz
         BlxVHwyiE0nucmkQ67yXH2V3ws1jaB3ED2wsHjk3Vm5l7VucPHIJs11m5+w7i3ijWlZr
         WSE1YGLoPCuCtJMUDPXPL8aSeacICxRoNZQQF+0yKGVgK0nH+DKZBGnqMmVlCc3mUO4V
         P2kA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from;
        bh=UuF43E8EnUln3vZwwElZft3nZO7UMfmCg0Zs0Yp3vQE=;
        b=rDhkJqK71Cmfg67KIgtPbvY0pfByIq+aSmkYCbnlMUaMIUPZRDaWwJgKclTtFPkSC4
         ezA5j5I66pYbMIFeLF9hCsIXIf5bvpU/PKIMm+tdatlUYx5KnjylNRVNc/h4h3CX75m2
         xeBYHDWgyX+eLtvGN2z+hzbCx3Hz6aVWEYTHZQUYuDJWuWSinopt6rMPqMLcSh7RphdQ
         Y+mdYE2osjSMWgMeJll8uU+KwDVTZvu5RCvNsKyfv+4F+2vWbvmY8nTJHQwAgVAzqwLu
         wq8kk1vRQcQPJapxVpfbbjwVSpvK+bZadwMXYT3LUBktIVrYA6MJYBq418GrxULgOmlS
         jjlw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of yangtiezhu@loongson.cn designates 114.242.206.163 as permitted sender) smtp.mailfrom=yangtiezhu@loongson.cn
Received: from loongson.cn (mail.loongson.cn. [114.242.206.163])
        by gmr-mx.google.com with ESMTP id j11si1152233pgm.4.2021.01.26.06.05.44
        for <clang-built-linux@googlegroups.com>;
        Tue, 26 Jan 2021 06:05:46 -0800 (PST)
Received-SPF: pass (google.com: domain of yangtiezhu@loongson.cn designates 114.242.206.163 as permitted sender) client-ip=114.242.206.163;
Received: from linux.localdomain (unknown [113.200.148.30])
	by mail.loongson.cn (Coremail) with SMTP id AQAAf9AxRb2nIRBg_DsNAA--.17412S2;
	Tue, 26 Jan 2021 22:05:28 +0800 (CST)
From: Tiezhu Yang <yangtiezhu@loongson.cn>
To: Alexei Starovoitov <ast@kernel.org>,
	Daniel Borkmann <daniel@iogearbox.net>,
	Andrii Nakryiko <andrii@kernel.org>,
	Martin KaFai Lau <kafai@fb.com>,
	Song Liu <songliubraving@fb.com>,
	Yonghong Song <yhs@fb.com>,
	John Fastabend <john.fastabend@gmail.com>,
	KP Singh <kpsingh@kernel.org>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Nick Desaulniers <ndesaulniers@google.com>
Cc: netdev@vger.kernel.org,
	bpf@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	linux-mips@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Xuefeng Li <lixuefeng@loongson.cn>
Subject: [PATCH bpf-next] samples/bpf: Add include dir for MIPS Loongson64 to fix build errors
Date: Tue, 26 Jan 2021 22:05:25 +0800
Message-Id: <1611669925-25315-1-git-send-email-yangtiezhu@loongson.cn>
X-Mailer: git-send-email 2.1.0
X-CM-TRANSID: AQAAf9AxRb2nIRBg_DsNAA--.17412S2
X-Coremail-Antispam: 1UD129KBjvJXoWxGrW5Aw1UCFy7uFyxAFWUurg_yoWrXFyDpa
	1Duw1kWF45WryUAFn8Ar1Ik3y3Jw45G3yjvFy5W34jv3ZIgFyfJrsakr15Gr1ktF4qva18
	Kry3WrWagr1UZw7anT9S1TB71UUUUUUqnTZGkaVYY2UrUUUUjbIjqfuFe4nvWSU5nxnvy2
	9KBjDU0xBIdaVrnRJUUUvK14x267AKxVW8JVW5JwAFc2x0x2IEx4CE42xK8VAvwI8IcIk0
	rVWrJVCq3wAFIxvE14AKwVWUJVWUGwA2ocxC64kIII0Yj41l84x0c7CEw4AK67xGY2AK02
	1l84ACjcxK6xIIjxv20xvE14v26r1j6r1xM28EF7xvwVC0I7IYx2IY6xkF7I0E14v26r4j
	6F4UM28EF7xvwVC2z280aVAFwI0_GcCE3s1l84ACjcxK6I8E87Iv6xkF7I0E14v26rxl6s
	0DM2AIxVAIcxkEcVAq07x20xvEncxIr21l5I8CrVACY4xI64kE6c02F40Ex7xfMcIj6xII
	jxv20xvE14v26r1j6r18McIj6I8E87Iv67AKxVWxJVW8Jr1lOx8S6xCaFVCjc4AY6r1j6r
	4UM4x0Y48IcxkI7VAKI48JM4x0x7Aq67IIx4CEVc8vx2IErcIFxwACI402YVCY1x02628v
	n2kIc2xKxwCY02Avz4vE14v_Xryl42xK82IYc2Ij64vIr41l4I8I3I0E4IkC6x0Yz7v_Jr
	0_Gr1lx2IqxVAqx4xG67AKxVWUJVWUGwC20s026x8GjcxK67AKxVWUGVWUWwC2zVAF1VAY
	17CE14v26r4a6rW5MIIYrxkI7VAKI48JMIIF0xvE2Ix0cI8IcVAFwI0_Jr0_JF4lIxAIcV
	C0I7IYx2IY6xkF7I0E14v26r4j6F4UMIIF0xvE42xK8VAvwI8IcIk0rVWrZr1j6s0DMIIF
	0xvEx4A2jsIE14v26r1j6r4UMIIF0xvEx4A2jsIEc7CjxVAFwI0_Gr0_Gr1UYxBIdaVFxh
	VjvjDU0xZFpf9x0JUWlksUUUUU=
X-CM-SenderInfo: p1dqw3xlh2x3gn0dqz5rrqw2lrqou0/
X-Original-Sender: yangtiezhu@loongson.cn
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of yangtiezhu@loongson.cn designates 114.242.206.163 as
 permitted sender) smtp.mailfrom=yangtiezhu@loongson.cn
Content-Type: text/plain; charset="UTF-8"
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

There exists many build errors when make M=samples/bpf on the Loongson
platform, this issue is MIPS related, x86 compiles just fine.

Here are some errors:

  CLANG-bpf  samples/bpf/sockex2_kern.o
In file included from samples/bpf/sockex2_kern.c:2:
In file included from ./include/uapi/linux/in.h:24:
In file included from ./include/linux/socket.h:8:
In file included from ./include/linux/uio.h:8:
In file included from ./include/linux/kernel.h:11:
In file included from ./include/linux/bitops.h:32:
In file included from ./arch/mips/include/asm/bitops.h:19:
In file included from ./arch/mips/include/asm/barrier.h:11:
./arch/mips/include/asm/addrspace.h:13:10: fatal error: 'spaces.h' file not found
         ^~~~~~~~~~
1 error generated.

  CLANG-bpf  samples/bpf/sockex2_kern.o
In file included from samples/bpf/sockex2_kern.c:2:
In file included from ./include/uapi/linux/in.h:24:
In file included from ./include/linux/socket.h:8:
In file included from ./include/linux/uio.h:8:
In file included from ./include/linux/kernel.h:11:
In file included from ./include/linux/bitops.h:32:
In file included from ./arch/mips/include/asm/bitops.h:22:
In file included from ./arch/mips/include/asm/cpu-features.h:13:
In file included from ./arch/mips/include/asm/cpu-info.h:15:
In file included from ./include/linux/cache.h:6:
./arch/mips/include/asm/cache.h:12:10: fatal error: 'kmalloc.h' file not found
         ^~~~~~~~~~~
1 error generated.

  CLANG-bpf  samples/bpf/sockex2_kern.o
In file included from samples/bpf/sockex2_kern.c:2:
In file included from ./include/uapi/linux/in.h:24:
In file included from ./include/linux/socket.h:8:
In file included from ./include/linux/uio.h:8:
In file included from ./include/linux/kernel.h:11:
In file included from ./include/linux/bitops.h:32:
In file included from ./arch/mips/include/asm/bitops.h:22:
./arch/mips/include/asm/cpu-features.h:15:10: fatal error: 'cpu-feature-overrides.h' file not found
         ^~~~~~~~~~~~~~~~~~~~~~~~~
1 error generated.

$ find arch/mips/include/asm -name spaces.h | sort
arch/mips/include/asm/mach-ar7/spaces.h
...
arch/mips/include/asm/mach-generic/spaces.h
...
arch/mips/include/asm/mach-loongson64/spaces.h
...
arch/mips/include/asm/mach-tx49xx/spaces.h

$ find arch/mips/include/asm -name kmalloc.h | sort
arch/mips/include/asm/mach-generic/kmalloc.h
arch/mips/include/asm/mach-ip32/kmalloc.h
arch/mips/include/asm/mach-tx49xx/kmalloc.h

$ find arch/mips/include/asm -name cpu-feature-overrides.h | sort
arch/mips/include/asm/mach-ath25/cpu-feature-overrides.h
...
arch/mips/include/asm/mach-generic/cpu-feature-overrides.h
...
arch/mips/include/asm/mach-loongson64/cpu-feature-overrides.h
...
arch/mips/include/asm/mach-tx49xx/cpu-feature-overrides.h

In the arch/mips/Makefile, there exists the following board-dependent
options:

include arch/mips/Kbuild.platforms
cflags-y += -I$(srctree)/arch/mips/include/asm/mach-generic

So we can do the similar things in samples/bpf/Makefile, just add
platform specific and generic include dir for MIPS Loongson64 to
fix the build errors.

Signed-off-by: Tiezhu Yang <yangtiezhu@loongson.cn>
---
 samples/bpf/Makefile | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/samples/bpf/Makefile b/samples/bpf/Makefile
index 362f314..45ceca4 100644
--- a/samples/bpf/Makefile
+++ b/samples/bpf/Makefile
@@ -185,6 +185,10 @@ endif
 
 ifeq ($(ARCH), mips)
 TPROGS_CFLAGS += -D__SANE_USERSPACE_TYPES__
+ifdef CONFIG_MACH_LOONGSON64
+BPF_EXTRA_CFLAGS += -I$(srctree)/arch/mips/include/asm/mach-loongson64
+BPF_EXTRA_CFLAGS += -I$(srctree)/arch/mips/include/asm/mach-generic
+endif
 endif
 
 TPROGS_CFLAGS += -Wall -O2
-- 
2.1.0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/1611669925-25315-1-git-send-email-yangtiezhu%40loongson.cn.
