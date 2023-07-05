Return-Path: <clang-built-linux+bncBAABBD5ESSSQMGQE6VV6VEY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oa1-x39.google.com (mail-oa1-x39.google.com [IPv6:2001:4860:4864:20::39])
	by mail.lfdr.de (Postfix) with ESMTPS id ABA78747D43
	for <lists+clang-built-linux@lfdr.de>; Wed,  5 Jul 2023 08:47:44 +0200 (CEST)
Received: by mail-oa1-x39.google.com with SMTP id 586e51a60fabf-1a67eee53e3sf6507293fac.0
        for <lists+clang-built-linux@lfdr.de>; Tue, 04 Jul 2023 23:47:44 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1688539663; cv=pass;
        d=google.com; s=arc-20160816;
        b=S5TrWVr+/viv9EWJTF3aDqiPX7eRrlNe2IfL3sHO6ofcslcJ5cGAh/79Mrr5J7EeQc
         HWXrDd2iBw+AXI43SgiFwtrYTAV0uKPVW+m3Dr+/H0zvphl2YM1J7ImyU8KrxtfU0Xrx
         S+ONGEg3XQ67vZt51ugjy1dIpwuNJaVGkRNF22sUxrrMbKgA1+BNJM/zx8KdqPOB0IEg
         Qe7iDqK8+PPNFGGeoAawSy8vnBwNxprqpApGCAJHDOyU4YMYc3aO4WP9vMtTEgb00L7O
         S7/KhGaDLKSBZiBeQISzUEdSNVRz5MtMaySHciH2jinzWZlUQQ5hzQJo7kW1nNsFzKcK
         A6mQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:message-id
         :date:subject:cc:to:from:dkim-signature;
        bh=FFxia11xjAJsjhsDXhrsALAwyrZZsNK+j4qK+wSPAO8=;
        fh=0aO6IHdmIGEeyblc5BGLyqLApWOzZ3sYXY88uRTc9UQ=;
        b=uL/vzG/b/KZroT+wqLxbQvZL7dWPr5p3T3wg1rLvJHeTkAnpI4p9sRUjiTwHnkrDHZ
         Z8KyCSDFnbpMO3z7eweHmQPoyiZr1jLyYgY2106vUedqeoLoP7hsvOO6sLxWTLhcDet8
         RawdkrQhyeuKHEW5pzMV6QV+CMqToOgyzPrvKUFRm8I1wva6dPKHPCeI5oP34UT7gG5X
         abZDt3+kd/j5e6JePPazXcnn8vYndxXFBlAZgcO4feh/qLT+lWci4jnmkBzepl3+Ggc1
         VEQkdEa2IKHyo47HrgLEoIMgqZwUCjUmXUF7P1PE2c643wI1hWju7ooMD4nZDcOHakbO
         yoLA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lihuafei1@huawei.com designates 45.249.212.188 as permitted sender) smtp.mailfrom=lihuafei1@huawei.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=huawei.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20221208; t=1688539663; x=1691131663;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=FFxia11xjAJsjhsDXhrsALAwyrZZsNK+j4qK+wSPAO8=;
        b=s4gyIt5TGHGKhuodSPDew3r9Da1DFT68YVxYArBIko5fybla3aQbLCwO9dO27foE3D
         olf5KFSTe0AqVaWkACJIsiTSNT4i6nBG0RQSYRfssxFzGtSrXAr30AkQR8Qs/b6KFWhX
         8BwuFh0mkqWJbyVd2q9gtbKVMU65R8Y6svebDoFHL7l4pPtgfz891Yndh+WPgiiT9SQw
         fnLjHIIMdWo4K+SQ0kgO70ss/9rCpTHAUK4ii4OLA436dCN/RjcEzW5BUsAGcuBZkW35
         CR6bGjuV/BMdiRvnbWdu9leysaE0NJCEhLjYRFQ0xC+9hd0FGfNtB2RVCKmk1FI0of0Z
         Y+Lw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1688539663; x=1691131663;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :message-id:date:subject:cc:to:from:x-beenthere:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=FFxia11xjAJsjhsDXhrsALAwyrZZsNK+j4qK+wSPAO8=;
        b=NpJKfNYP9cMCl6Lh15eFm+yn2PELveAMwgFZs1OB9SRG6VQj7HLcrM2wffakeiQSuo
         9hurNGZi5ZZOf1tSBlDyBDek1DMxTsmKK3IzJeOZBc6t56l+3XZpI6JMYEy+rH0fBVX9
         OEyLAqLdsEbbhkjUn/K2HLDirVIEV9DR9Vxn98SY4I/7gFo/vHk1k6Kuns2P5b49Rty/
         5vw+3OS0lsnt/pH7TnZDQOXsI+elCm5+SWmcF0g5C3kNLaNc6iE31/+USL39S8X58HKb
         uAE1heTzmn92FgfDcKMr8Z8gVfRZceaKgKVxHMZev61IUI1h7ujTRAr2JaK8NUQRO2JD
         evGA==
X-Gm-Message-State: AC+VfDzk6n8Lpt78LHitocTG0MnXWGBmvrIe3zL99c/Z3zUaeEJBHgFC
	DhngTke7oir64i8oL8Dn/Dk=
X-Google-Smtp-Source: APBJJlF8jqkgK66tbEUgBbArILR+ViVBvBx3DC+RKK4R+RTnd6Itr1O1vLz0UvunfmoBRKqZtA1qxQ==
X-Received: by 2002:a05:6871:205:b0:1b0:451e:5392 with SMTP id t5-20020a056871020500b001b0451e5392mr16991420oad.20.1688539663382;
        Tue, 04 Jul 2023 23:47:43 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6871:d12:b0:1b0:67ac:3bbb with SMTP id
 vh18-20020a0568710d1200b001b067ac3bbbls2254054oab.0.-pod-prod-05-us; Tue, 04
 Jul 2023 23:47:43 -0700 (PDT)
X-Received: by 2002:a05:6871:8a4:b0:1b3:dccc:401a with SMTP id r36-20020a05687108a400b001b3dccc401amr4305181oaq.2.1688539663047;
        Tue, 04 Jul 2023 23:47:43 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1688539663; cv=none;
        d=google.com; s=arc-20160816;
        b=VEp27SPzqfbcB4J/bUwWK1ZGM6vScS1a1UWawYD0VNdO/CqrIUbogvDMo4ZL+BRSgH
         3rHG6O9NEHydXE7XJ2XPPgiolPNUCiSQUa+tUz1BOmGH5QHWC00ZI0N+n3j7GFtXpf9u
         QLyE5D3tug0PKqmUflgzIN1XZHED04rWHCiHMh44RUQ3ZyzrZKzREV+2eCHQQlJ/DV28
         u7skIYCP5mGWVe0BooiJUY8PC+mqmsC7Givck+862g6V9nULG0tFTBQoDyUj6HpCT1GM
         Vu3IE477EVvnOh5xEHFfGuts9oEsPUMn0/fieM/ANZnqokWpsdEQi7QvvJPXCrhxhBsR
         7IwQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from;
        bh=rMQjGSxinTWlzatwEdgI7ZzIiQjAR1gq3hAgUjv+1Zg=;
        fh=Gx/Xd3SuR7wfzTJCm4fH9mYLv4JUXxtCS0BsHUQzeiY=;
        b=MElpusYJ+U+OKr02mEj3s35t3ppMFH+3MSwr1ZJIXco8sc7Fj0q5czFzVMKpNEWahN
         dN1zgP4JBSgaSiM6OcHqYDQ00/AD7H4jfKMfwGeMRCchyv0Q+tk8n8OpkJsrfru2Q+bY
         Kt09IWj913AY0ud5feoQjuIu7iyCk3l9XAIC98YACg/RBvW9HwJFzu8YmdE+gJ8jApaA
         N9T2QRkxKMZc0jpzTM5HtbInEXuSmj3akYybA0A4BXp0pb/tN/asvkXgyd7QIRTF9vxl
         8cttv0Q3VCR+Zco9fnwLZIIKbjjth2075EA54VR7BzHNTBYYYxa3x1VnarobHGRqGBuR
         u0tw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lihuafei1@huawei.com designates 45.249.212.188 as permitted sender) smtp.mailfrom=lihuafei1@huawei.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=huawei.com
Received: from szxga02-in.huawei.com (szxga02-in.huawei.com. [45.249.212.188])
        by gmr-mx.google.com with ESMTPS id ug13-20020a0568714d0d00b001b3caa6f8adsi212256oab.2.2023.07.04.23.47.42
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 04 Jul 2023 23:47:43 -0700 (PDT)
Received-SPF: pass (google.com: domain of lihuafei1@huawei.com designates 45.249.212.188 as permitted sender) client-ip=45.249.212.188;
Received: from kwepemi500019.china.huawei.com (unknown [172.30.72.55])
	by szxga02-in.huawei.com (SkyGuard) with ESMTP id 4Qwqrp1gTbzMq8h;
	Wed,  5 Jul 2023 14:44:26 +0800 (CST)
Received: from ubuntu1804.huawei.com (10.67.174.174) by
 kwepemi500019.china.huawei.com (7.221.188.117) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Wed, 5 Jul 2023 14:47:39 +0800
From: "'Li Huafei' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: <stable@vger.kernel.org>
CC: <gregkh@linuxfoundation.org>, <mhiramat@kernel.org>, <tglx@linutronix.de>,
	<mingo@redhat.com>, <bp@alien8.de>, <x86@kernel.org>, <hpa@zytor.com>,
	<sashal@kernel.org>, <peterz@infradead.org>, <linux-kernel@vger.kernel.org>,
	<xukuohai@huawei.com>, <natechancellor@gmail.com>, <ndesaulniers@google.com>,
	<rostedt@goodmis.org>, <weiyongjun1@huawei.com>, <gustavoars@kernel.org>,
	<namit@vmware.com>, <laijs@linux.alibaba.com>,
	<clang-built-linux@googlegroups.com>, <lihuafei1@huawei.com>
Subject: [PATCH 5.10 0/9] x86/kprobes: Fix kprobe debug exception handling logic
Date: Wed, 5 Jul 2023 14:46:44 +0800
Message-ID: <20230705064653.226811-1-lihuafei1@huawei.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Originating-IP: [10.67.174.174]
X-ClientProxiedBy: dggems702-chm.china.huawei.com (10.3.19.179) To
 kwepemi500019.china.huawei.com (7.221.188.117)
X-CFilter-Loop: Reflected
X-Original-Sender: lihuafei1@huawei.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lihuafei1@huawei.com designates 45.249.212.188 as
 permitted sender) smtp.mailfrom=lihuafei1@huawei.com;       dmarc=pass
 (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=huawei.com
X-Original-From: Li Huafei <lihuafei1@huawei.com>
Reply-To: Li Huafei <lihuafei1@huawei.com>
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

We found an issue with null pointer access due to kprobe debug exception
error handling on 5.10, and I proposed a separate fix patch for 5.10,
see [1]. But as Greg gave advice, we always choose to backport relevant
patches from upstream to fix issues with stable kernels, so I made this
patch set.

The main one we need to backport is patch 5, which uses int3 instead of
debug trap for single-stepping, thus avoiding the problems we
encountered with kprobe debug exception error handling. Patches 1-4 are
pre-patches, and patches 6-9 are fixes for patch 5. The major
modifications are patch 2 and patch 5. Patch 2 optimizes
resume_execution() to avoid repeated instruction decoding, and patch 5
uses int3 instead of debug trap, and as Masami said in the commit
message this patch will change some behavior of kprobe, but it has
almost no effect on the actual usage.

Please let me know if there are any problems, thanks!

[1] https://lore.kernel.org/lkml/20230630020845.227939-1-lihuafei1@huawei.com/

Gustavo A. R. Silva (1):
  kprobes/x86: Fix fall-through warnings for Clang

Masami Hiramatsu (5):
  x86/kprobes: Do not decode opcode in resume_execution()
  x86/kprobes: Retrieve correct opcode for group instruction
  x86/kprobes: Identify far indirect JMP correctly
  x86/kprobes: Use int3 instead of debug trap for single-step
  x86/kprobes: Fix to identify indirect jmp and others using range case

Masami Hiramatsu (Google) (1):
  x86/kprobes: Update kcb status flag after singlestepping

Nadav Amit (1):
  x86/kprobes: Fix JNG/JNLE emulation

Wei Yongjun (1):
  x86/kprobes: Move 'inline' to the beginning of the kprobe_is_ss()
    declaration

 arch/x86/include/asm/kprobes.h |  24 +-
 arch/x86/kernel/kprobes/core.c | 639 ++++++++++++++++++++-------------
 arch/x86/kernel/traps.c        |   3 -
 3 files changed, 409 insertions(+), 257 deletions(-)

-- 
2.17.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20230705064653.226811-1-lihuafei1%40huawei.com.
