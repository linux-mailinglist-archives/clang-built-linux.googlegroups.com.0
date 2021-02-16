Return-Path: <clang-built-linux+bncBAABBUV5V2AQMGQEQJ6X6JA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103c.google.com (mail-pj1-x103c.google.com [IPv6:2607:f8b0:4864:20::103c])
	by mail.lfdr.de (Postfix) with ESMTPS id A03E831C8D1
	for <lists+clang-built-linux@lfdr.de>; Tue, 16 Feb 2021 11:30:44 +0100 (CET)
Received: by mail-pj1-x103c.google.com with SMTP id 19sf9965149pjk.7
        for <lists+clang-built-linux@lfdr.de>; Tue, 16 Feb 2021 02:30:44 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1613471442; cv=pass;
        d=google.com; s=arc-20160816;
        b=qiE4165WA5HCiYHelK1vlz8ktJ0h1tGhsFQmmMA6NDMDO5I3+M5nmI7AAKfiNAso/M
         IQKiN2PPtXApWZq6lY62aVkwCvMbzDlQiqocB2WCbMYUNZyVuEAc9UnQdpeE4Tp9slas
         OL2RgJnBz0NvCcQWmBVnzsZ7ZT5o7YGzjdnCqUxQIkPLcFXkUVWYBp0FHs5+YS1to+RH
         H8+nsBr2hTYL89ORwfB/ncr7l3BiCmO7WTN5bLUDlPwOPyt0grq6j/XcqaXf2xfbAq1B
         p9WgVWYoGfoxWZNY901B/eq7/BN/Gn8adDJeAvgyMudAbzxS7zWywsEQxnPbejfkDOdx
         aW1A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=S0BJYNqaneKne/K+nF/kOW0z4fWVsdIYI1ZYnGDkOL0=;
        b=VNN89uX500zVRIX+h9+d6dmsRv0PyLRtesn/xarGPqPGM/xa5gw2QjT2ZX3LVAPYRa
         NDbWBLOEP6rJxMiGjedfJY7x8+Gf1QhXJW5qH+i7iR9OPJVsFux+HOjw7cYRcoemBWSE
         ay8t1TfcmEAotK+VFhvqQoH3Ma3mKJtr0Aq8rLMlNBKh4BQKC4BCeFHpFbciiIwzc5b+
         ddQKH6QVkU8nqyJgLZnalSwV7FgaLSl2FUtuD+i+xDr5yBaCuhw6jkrjqjNMGvINQl6x
         6IfGVFZzoE4+HnhKmZExhKkd/uKX7FuBgBWb1fecXNCBYWB0wPxA9vc1qjKCRWPEf0pG
         0jvQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of jianlin.lv@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=Jianlin.Lv@arm.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=arm.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=S0BJYNqaneKne/K+nF/kOW0z4fWVsdIYI1ZYnGDkOL0=;
        b=aoMSXfcXeu95KHFOX0aMGdFs9mMYFqypmTEu7gcZxPoV4n9QKeutqvE1jnqJ0pkLJ/
         WQjG6CoWBnp+hPujOXgRAlqyB9QxZ1dwGGatbgNVrcI4zxgb54ri2rF/3CUDWIKh6XKR
         SgoybuSJaQXZ9ws86PuIiV1xg8pJ+JEy5XmGPjSOvIjE4pCD/+Gk1DYeYUtMrAo55dHw
         uFjpeah31c30Am7Xkzf5hVqd9qnTcj4IudHmzOYrsvTgcSwrZJ8otponHztoJ9/r98m2
         PQDhTxwRaEkFdspT+tZvK6hpFjC5i/DIrUBBVC+dNQK25BtkHW4XFCt6gPmnY697o7Ab
         tryQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=S0BJYNqaneKne/K+nF/kOW0z4fWVsdIYI1ZYnGDkOL0=;
        b=KT4KduLbHM63Q4FhJvAsBhrOYtQlnKW4jOcnzRgx57qQivQzwNE+2cHIGr7BtWWYJn
         IPD9wM3y5/hrQfOqa7i5G45DbFfSZGql3bjGqLeyTejeN9NdZLHGxaaXhHJmJDlO8yLb
         SFihNVzQoRvTKHGxQcsZwcGArnBtEh0o1cypDdYeCoX6SjchM7UkdtWuDWJYOD3F5toM
         U/OT6im4swU5G8ee0eAtrP6DcMCp604yiN49VL5n4mvci8Ms/DlYMjqHkd5hNFUqskAN
         rS0QMU7CDWrMUMk7VzrKor02oC3EzVOkLUgVKoldxup6hE5MACfRSuUeVftXxRR82LRO
         eXtA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531cSmmbON6bYn7bF255rjd4OJ/w//PV3Eaf8dWz2gE/8d5hdr72
	tWs4rZYtDy1o5lO2UoWHDr0=
X-Google-Smtp-Source: ABdhPJxRZMB4C4a+AUKV+gX2UrWS6jrUvv9/zil2MrSGK3emGMyyN10sXcgUeJXLGmICXVp2zALKKg==
X-Received: by 2002:a63:ed42:: with SMTP id m2mr19209106pgk.95.1613471442179;
        Tue, 16 Feb 2021 02:30:42 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6a00:15c8:: with SMTP id o8ls7588599pfu.8.gmail; Tue, 16
 Feb 2021 02:30:41 -0800 (PST)
X-Received: by 2002:a63:1d45:: with SMTP id d5mr18723092pgm.52.1613471441086;
        Tue, 16 Feb 2021 02:30:41 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1613471441; cv=none;
        d=google.com; s=arc-20160816;
        b=otv5coCF2IKs2hdRoy0zDmNtT1/QGFYc6HHCqMgQpdat8iZdA2h5ysMwn7aP7622T6
         wodNsJo4N+vUbLOZM6OxZh+BUv0rzu/zRL9nnjTKXjmB0bu8nRVfGRV6vOBpHiouEw4P
         MUeQ/dut7CJh6/+Lz/sxKLKmCX5tZELuafdqziviMnPIIk+nWL8ywxYqYSoh3T+OL1mE
         RGUCBqkHQeuK2dXyFbCV85IsSmqoOp/XDrGGnK4Kn5x1zZsjZlRuDKgrMI7F+/XT83BK
         HAK0NeNoIxcvxMOLmpb1VyzgLDsWHNpFOdVKTlqtVjNV/iEz99bsBUxTUIbWlEN8UG2a
         UHgg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from;
        bh=OK1iTeIP9B3ah/l/2+AgtEbO5ATDTeFiNrJVeZ9itLk=;
        b=fYuPbyCVLsp5bWatb2e4bILp0FixY6Im8Fcde7Ca5tXFgzhaHh+y9dTb7ylSwwEZPj
         cHnljP6bQ98oGF0UX7vzybeaSwWPnBf4x9AGjmlKfLO0F4mEVoQgYB8HA8oWNIzD3oMi
         LpeSIv3W0RSvO1N6AaXWe5a1+ZwVcERLeABIWU1atSGP7B/mJEDuYZN50E7Lbx9gP4Mn
         6EjIcwn1Qhe3Amj9Drg3SKThflnfdAwyNqKcn3zOUmRQCYEzdSQZcViw4mCyeK8o8WR7
         bveQaaJmt4sK5gcz7eEA9m8K3qaSi7IQCP7RqrK6DLAQ4zeov4iSel/aXWb3jgADCQ08
         o9iQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of jianlin.lv@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=Jianlin.Lv@arm.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=arm.com
Received: from foss.arm.com (foss.arm.com. [217.140.110.172])
        by gmr-mx.google.com with ESMTP id g22si69242pfu.6.2021.02.16.02.30.40
        for <clang-built-linux@googlegroups.com>;
        Tue, 16 Feb 2021 02:30:41 -0800 (PST)
Received-SPF: pass (google.com: domain of jianlin.lv@arm.com designates 217.140.110.172 as permitted sender) client-ip=217.140.110.172;
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 2476D1FB;
	Tue, 16 Feb 2021 02:30:40 -0800 (PST)
Received: from net-arm-thunderx2-02.shanghai.arm.com (net-arm-thunderx2-02.shanghai.arm.com [10.169.208.215])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 0E23B3F73B;
	Tue, 16 Feb 2021 02:30:34 -0800 (PST)
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
	iecedge@gmail.com,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH v3] perf probe: fix kretprobe issue caused by GCC bug
Date: Tue, 16 Feb 2021 18:30:26 +0800
Message-Id: <20210216103026.323157-1-Jianlin.Lv@arm.com>
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

kprobe_on_func_entry
->_kprobe_addr
->kallsyms_lookup_size_offset
->arch_kprobe_on_func_entry		// FALSE

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
v3: Update changelog, fixed misuse of --- marker.
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210216103026.323157-1-Jianlin.Lv%40arm.com.
