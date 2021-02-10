Return-Path: <clang-built-linux+bncBAABBM7ZRWAQMGQE6XR26UA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x93d.google.com (mail-ua1-x93d.google.com [IPv6:2607:f8b0:4864:20::93d])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C5CB315F6E
	for <lists+clang-built-linux@lfdr.de>; Wed, 10 Feb 2021 07:27:00 +0100 (CET)
Received: by mail-ua1-x93d.google.com with SMTP id c46sf541140uad.1
        for <lists+clang-built-linux@lfdr.de>; Tue, 09 Feb 2021 22:27:00 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1612938419; cv=pass;
        d=google.com; s=arc-20160816;
        b=ZhodAvWd7KmJHFfSOkWqV83BTMrh9kn3yJvADtbSEOFOHNu7ZaDMOMJwv2k0trlFRt
         jf5GrxFVT4wcPlhvxQrvn24tsnrglPWU66VGfVhI/tM3ppMSsMFFM0nb3QQTGvp1HX9+
         BCRKpr+WHGwWmX3hZCqW7Q8UzAeRb9DCAESWcQEIrs8Fev1nDSVpLUr5BINSD/K0q1Xu
         myxD5d9Nyx8k68rS8WiuJYwmh22bNzV7F92y2+BMaMIjB/qQYRllNEHwJ0DNxt+rTne5
         /lkenxMLjQxrmQCbq9sx37ot3ES8RH/qGXqrLUdk8LoCnrQ2MdJNW9KlUy3nJ76FfiEu
         lN1w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=Bj5BxEVX4amubOpjdcVxMcs3sR3Bq9EX8Y5BIFgeTpI=;
        b=0LbI/ODopTHd2HH074YVbBJCMPmPYXRQSGWIU7EvHCPp+lHpraRRWs1VKvKez7tP8+
         tDOJRUaoS35+DSTzgOscBehdf3bCK8bRyD0CrVcmy4/DoLTvHfdpyLvQbi7Xzd39sFcq
         GYQqy4SZcxyiDB7rX2+EY6VAjsXVXZ3qAGiQdn9Jhp3rnMl+BsREyEPQLuCwfjf0b/Hk
         B/Mf7STPZkJ19xg6IkHGt09ywEVAVlWOqGeGxERrKOVIq4zJAAB8UWNj8ipguDHFXFra
         1doAKbbrcxKiZZaMaf4mOuhxFf2FqpXrsMaUJI5VDPqV7th9VQtD9iMmcO06K2L2R6+a
         a/Ww==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of jianlin.lv@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=Jianlin.Lv@arm.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=arm.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Bj5BxEVX4amubOpjdcVxMcs3sR3Bq9EX8Y5BIFgeTpI=;
        b=Q9tk/LQ2tu4EirxaiOwZbfIxpvq2Saqo718U5FYnLv1Vq3ieiZXEfeDZs6B3CW7chI
         /jZPji7Ui+aVPFy8vmS+L3yCAoKMNk1YB4Fr6WoHQ1AVLp+h1Et0L69ghDFkcqTObv8j
         MMr0Vt3ShPzPdymooXRleXfjpNvViSqurFw0rnOwcztCfBiuK3wKnmvuXgUregzmIumA
         Qje5lssCCdvmEGx7xtdIUzNKgGXBczlQgmBb/JW8HHQQAx7zSLVn/aa94e9v37lXG8qA
         z17zilhQjgY0E5RuW1+svcC6bdK+zt2B7a2gxIibWLP4WxNUpNRnHk+1f1yXsUqWEqiM
         f/6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Bj5BxEVX4amubOpjdcVxMcs3sR3Bq9EX8Y5BIFgeTpI=;
        b=Ak/ofyUfm6CAUBkMscerTk+n2HgzO8Y757s2PdMhtBCL9sxmRWFQZxeR1OGuVjMdaY
         n0xNgsZcUo2zKK8gdb5/t4JH/RREtUrSVqqzDr8h5Gz/1ZopqmI3VxNu9G1QO9jIGXFv
         WfrpaYicdavLirfVdf8316q2150OijjIWKF8MYOwiF9c/VKAbmF04zztD39TiQdgQrzk
         +T22p4ey016G3eGHvrGwtCGywPfDyzuDkNEdZGlOBHs3z8+mpr7M1wQUryS8IoVnkqJR
         +TeqnLiV9zNBulkrDlkcVqxdADjZO258YxXjnl6Rxygd+rpLpY1B5zNYQXbJBArpE+yB
         IOMw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532Rs5X6bF54MTtZHB/6lMLVIhf4fn6imCyhQh+KBlaeEmZDY4Ld
	spPBG2CSB4xib8SV9Ce2B/M=
X-Google-Smtp-Source: ABdhPJxqlDTIMEaV14xuuPqwexq9PmnszclHcY3DKtmKfM2m8PW9opeiL5QpgrcZnf+rVsFwk8PhAg==
X-Received: by 2002:a67:7f06:: with SMTP id a6mr675454vsd.25.1612938419359;
        Tue, 09 Feb 2021 22:26:59 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:bc14:: with SMTP id t20ls84320vsn.6.gmail; Tue, 09 Feb
 2021 22:26:59 -0800 (PST)
X-Received: by 2002:a05:6102:303b:: with SMTP id v27mr831452vsa.42.1612938418916;
        Tue, 09 Feb 2021 22:26:58 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1612938418; cv=none;
        d=google.com; s=arc-20160816;
        b=gyBhQKQt0cwJ9vRNxZcGjq01pIc9opBeZkn7aBhv+Puagxa5kdThfwgR7OCTVWv/Hv
         eJ483cVqh9XiLmObMrd6PLGNz0I738Fuy2baAQZN0As6s7hCFgd4rpyNYK+jQRoUSLIy
         xRpWtaQmcyR06kkcR84CYSJri30AVy7Eojt5PfMGf0R9EJ/B35EZAlbKi1Dse/Q+WGGz
         rxPDRp31knckFwpBE2Ir97P1cxXEXoCLms9ssoWMGOFaMPekkjGSvzHNbySMNKlYg32V
         JlU0pg+t4KL8E7zE2+2Zvgv7TONDwsmNQ2T4M/Ok0ZiYW0q2mC9WFL1BXXU2Yg8hQKp2
         2nVA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from;
        bh=LNECxiCqyZl438k1m/StYCkoVgeTPJmgYPo+2PjQdnA=;
        b=VZXvJ81p+cbP6EuO+4ACjJe5olXiTtyJ6us8giJAzF3KS1yr0eimbIU9IE3yhxZuiS
         9/kmk+f13yuaKC1fhOiDvUMBa6EU+KVkszvhg5vfO3sceGr0bDks+LGU1SMgwXwt5/bg
         Yhr0YJJ79cp20UUWRvLvktJWYcgtO1vGvrGuWyOxRn3IAWZc9/yUGKyTFbN/NXX1WJUk
         +98x+cGJriJaQ/1Bu23oCTpUctsEKBrjVzuLw9bjuno1nMxKjybTAsajVj32hpAJvo20
         OcGkfKNGe2FN5yapVCbyDWcLm1zl9R8WLBdZe9d8vK0EDKWXksTFPoKYVzmHT3oK5MA9
         heQg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of jianlin.lv@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=Jianlin.Lv@arm.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=arm.com
Received: from foss.arm.com (foss.arm.com. [217.140.110.172])
        by gmr-mx.google.com with ESMTP id n3si73900uad.0.2021.02.09.22.26.58
        for <clang-built-linux@googlegroups.com>;
        Tue, 09 Feb 2021 22:26:58 -0800 (PST)
Received-SPF: pass (google.com: domain of jianlin.lv@arm.com designates 217.140.110.172 as permitted sender) client-ip=217.140.110.172;
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 04818ED1;
	Tue,  9 Feb 2021 22:26:58 -0800 (PST)
Received: from net-arm-thunderx2-02.shanghai.arm.com (net-arm-thunderx2-02.shanghai.arm.com [10.169.208.215])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 33AA33F719;
	Tue,  9 Feb 2021 22:26:52 -0800 (PST)
From: Jianlin Lv <Jianlin.Lv@arm.com>
To: peterz@infradead.org,
	mingo@redhat.com,
	acme@kernel.org,
	mark.rutland@arm.com,
	alexander.shishkin@linux.intel.com,
	jolsa@redhat.com,
	namhyung@kernel.org,
	nathan@kernel.org,
	ndesaulniers@google.com,
	mhiramat@kernel.org,
	fche@redhat.com,
	irogers@google.com,
	sumanthk@linux.ibm.com
Cc: Jianlin.Lv@arm.com,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH v2] perf probe: fix kretprobe issue caused by GCC bug
Date: Wed, 10 Feb 2021 14:26:46 +0800
Message-Id: <20210210062646.2377995-1-Jianlin.Lv@arm.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-Original-Sender: jianlin.lv@arm.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of jianlin.lv@arm.com designates 217.140.110.172 as
 permitted sender) smtp.mailfrom=Jianlin.Lv@arm.com;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=arm.com
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

Perf failed to add kretprobe event with debuginfo of vmlinux which is
compiled by gcc with -fpatchable-function-entry option enabled.
The same issue with kernel module.

Issue:

  # perf probe  -v 'kernel_clone%return $retval'
  ......
  Writing event: r:probe/kernel_clone__return _text+599624 $retval
  Failed to write event: Invalid argument
    Error: Failed to add events. Reason: Invalid argument (Code: -22)

  # cat /sys/kernel/debug/tracing/error_log
  [156.75] trace_kprobe: error: Retprobe address must be an function entry
  Command: r:probe/kernel_clone__return _text+599624 $retval
                                        ^

  # llvm-dwarfdump  vmlinux |grep  -A 10  -w 0x00df2c2b
  0x00df2c2b:   DW_TAG_subprogram
                DW_AT_external  (true)
                DW_AT_name      ("kernel_clone")
                DW_AT_decl_file ("/home/code/linux-next/kernel/fork.c")
                DW_AT_decl_line (2423)
                DW_AT_decl_column       (0x07)
                DW_AT_prototyped        (true)
                DW_AT_type      (0x00dcd492 "pid_t")
                DW_AT_low_pc    (0xffff800010092648)
                DW_AT_high_pc   (0xffff800010092b9c)
                DW_AT_frame_base        (DW_OP_call_frame_cfa)

  # cat /proc/kallsyms |grep kernel_clone
  ffff800010092640 T kernel_clone
  # readelf -s vmlinux |grep -i kernel_clone
  183173: ffff800010092640  1372 FUNC    GLOBAL DEFAULT    2 kernel_clone

  # objdump -d vmlinux |grep -A 10  -w \<kernel_clone\>:
  ffff800010092640 <kernel_clone>:
  ffff800010092640:       d503201f        nop
  ffff800010092644:       d503201f        nop
  ffff800010092648:       d503233f        paciasp
  ffff80001009264c:       a9b87bfd        stp     x29, x30, [sp, #-128]!
  ffff800010092650:       910003fd        mov     x29, sp
  ffff800010092654:       a90153f3        stp     x19, x20, [sp, #16]

The entry address of kernel_clone converted by debuginfo is _text+599624
(0x92648), which is consistent with the value of DW_AT_low_pc attribute.
But the symbolic address of kernel_clone from /proc/kallsyms is
ffff800010092640.

This issue is found on arm64, -fpatchable-function-entry=2 is enabled when
CONFIG_DYNAMIC_FTRACE_WITH_REGS=y;
Just as objdump displayed the assembler contents of kernel_clone,
GCC generate 2 NOPs  at the beginning of each function.

kprobe_on_func_entry detects that (_text+599624) is not the entry address
of the function, which leads to the failure of adding kretprobe event.

---
kprobe_on_func_entry
->_kprobe_addr
->kallsyms_lookup_size_offset
->arch_kprobe_on_func_entry		// FALSE
---

The cause of the issue is that the first instruction in the compile unit
indicated by DW_AT_low_pc does not include NOPs.
This issue exists in all gcc versions that support
-fpatchable-function-entry option.

I have reported it to the GCC community:
https://gcc.gnu.org/bugzilla/show_bug.cgi?id=98776

Currently arm64 and PA-RISC may enable fpatchable-function-entry option.
The kernel compiled with clang does not have this issue.

FIX:

This GCC issue only cause the registration failure of the kretprobe event
which doesn't need debuginfo. So, stop using debuginfo for retprobe.
map will be used to query the probe function address.

Signed-off-by: Jianlin Lv <Jianlin.Lv@arm.com>
---
v2: stop using debuginfo for retprobe, and update changelog.
---
 tools/perf/util/probe-event.c | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/tools/perf/util/probe-event.c b/tools/perf/util/probe-event.c
index 8eae2afff71a..a59d3268adb0 100644
--- a/tools/perf/util/probe-event.c
+++ b/tools/perf/util/probe-event.c
@@ -894,6 +894,16 @@ static int try_to_find_probe_trace_events(struct perf_probe_event *pev,
 	struct debuginfo *dinfo;
 	int ntevs, ret = 0;
 
+	/* Workaround for gcc #98776 issue.
+	 * Perf failed to add kretprobe event with debuginfo of vmlinux which is
+	 * compiled by gcc with -fpatchable-function-entry option enabled. The
+	 * same issue with kernel module. The retprobe doesn`t need debuginfo.
+	 * This workaround solution use map to query the probe function address
+	 * for retprobe event.
+	 */
+	if (pev->point.retprobe)
+		return 0;
+
 	dinfo = open_debuginfo(pev->target, pev->nsi, !need_dwarf);
 	if (!dinfo) {
 		if (need_dwarf)
-- 
2.25.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210210062646.2377995-1-Jianlin.Lv%40arm.com.
