Return-Path: <clang-built-linux+bncBAABBC5D6SAAMGQEYCH6UAI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x839.google.com (mail-qt1-x839.google.com [IPv6:2607:f8b0:4864:20::839])
	by mail.lfdr.de (Postfix) with ESMTPS id 83EF83107F5
	for <lists+clang-built-linux@lfdr.de>; Fri,  5 Feb 2021 10:36:12 +0100 (CET)
Received: by mail-qt1-x839.google.com with SMTP id w3sf4748812qti.17
        for <lists+clang-built-linux@lfdr.de>; Fri, 05 Feb 2021 01:36:12 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1612517771; cv=pass;
        d=google.com; s=arc-20160816;
        b=lAl2bL/H0xcsSqyVvM4ZP/xr7DPNU9133Dxk2FvAnrMFGzws3k/NPi6BxfYYI7X94/
         9i6xgI83UctDU/kjhrOaZgSvmr5A3+LMhDv9ysFLO3ZKQkUro43+Yu6SRxIIZpaVYk/P
         8N92d1mkpXI8NE2UJ5YItVBMqWhWCPYTzQ+cVfgoEJreATbnjYL6ezBfWLV7tbKwNyCi
         mt3c7CcIgjjcTrv14oD46lA5As+cfMyjT11JKVSUHZgBFVT8wSmRUgl+NpyTR2UDAuZj
         DkgAsIIBcTM/C7nHhT47Ck1YMwwdJ50AkcUMFgE/wtbGQxcWz8Kp0n+5K9R7D3NXMeaE
         HifA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=C4i67hRovmY+DH5AVopxL783BXKYagcU/pMNG4w24eI=;
        b=fhXM3ODVAcbDL0VcHC2AJJRnCJqZvlLNgUtYwu/w5saoAokBEdhaOJHE6fwtsHSV8R
         54YSOpGefegIU73ePdSvuZsAtK4FL4agNqZmmtf6FZ+EqAYaB1QzI5XINcolqxMw8D38
         GLUzPIZlpw8SqLkMJ9BdHQILsgnsyLI63xBjekqZYC+Guh0DQao3MWi4Ag5WMqtFxRfg
         92U9fHELAZliU9vBPdC9I/tcmzKXiQousZsVhK6l1KSImw5V1rsK5ybFpyMvS4vIibvL
         dQ3mXid1+c/YrQ320CjOMEUc8Wj8BekuPH8xzkLrIjVu0o55WWZj4NAEUujOkkAUVkEP
         uYiQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of jianlin.lv@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=Jianlin.Lv@arm.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=arm.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=C4i67hRovmY+DH5AVopxL783BXKYagcU/pMNG4w24eI=;
        b=Oic3FKLQ5Nf6SD2QJTJaafv5P6pVVfEUVN/YweTPTBvPlb5ETLytqxuQST2il5zKnn
         PahU10SIt1fv7/wyj9AEgHTvLLEudVRUk4slGPeW2Tz2zSP0f3WG0HXuGVuBD0Len5d7
         NVMItNeZzEJZkA2d6ggZeORmaJqI8pYA1rXsO0DTo6EWD+a9XyhQieP91qvagCyuMogr
         O5/xDQgHv84U7DUyPQT4l6vdgH5ol1LQB6AaXZK3ja1F/64IdIkLPLa8ovE5WDHJDrs6
         RKfQcKfhyeWdvvUWCNtW/uDBNr4auybx6guQ/eY1ngnOrEtvNxu96FWQyn8XfeAKS0bY
         Md6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=C4i67hRovmY+DH5AVopxL783BXKYagcU/pMNG4w24eI=;
        b=S6EZvUf/wYbNF70xHUqniylbmRjwEZXvvpsq5fO/8Ye5Woc2vqG0iHyBlNkIJIL9wz
         drKcevKJ9smIITGB6gNiIcVsgTzl/eExj7Ia1GD3PPilbJA5wQTJ0Bi3DzM11o2g99rp
         sRlRDQ0AE/uU/PA8kHi0zzRy34klbiLuYosw0wNy3bQhbh7batOkkB/JqDIyZTYCg33r
         3mE+o2vhgnBZrxl1ReZxLHqpx6UUa00DT2s7/+whzDphyEqKjERPBPBYB+IsyIMl14BS
         iakdddZlkynopeTGDXKxOIl8NYGh+AK5x5jagcMFx02TuUeD1+aMms1QQKeqUVSPLUZ9
         YUAw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532uTKhfdBZwaWDMZ35+3csFjBcYvU8iRy1MMS5KzjJOvw5XMhJh
	XdtAVNbB+lkr+W8zMvx/5xk=
X-Google-Smtp-Source: ABdhPJzvUjL4tZXL8AFOxGDmC6Wsl5NmflWbMXCrWwV94BgCQIkLmiDOVQoUrKu+IdPGHeSKW2tEBw==
X-Received: by 2002:a37:5b06:: with SMTP id p6mr3603130qkb.382.1612517771350;
        Fri, 05 Feb 2021 01:36:11 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ad4:404f:: with SMTP id r15ls2041141qvp.6.gmail; Fri, 05 Feb
 2021 01:36:11 -0800 (PST)
X-Received: by 2002:a05:6214:1703:: with SMTP id db3mr3257856qvb.43.1612517771009;
        Fri, 05 Feb 2021 01:36:11 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1612517771; cv=none;
        d=google.com; s=arc-20160816;
        b=wRBqMPOyiiVCfa6IKHJlR3Of96/NYgniYntk0SCw/QMNUpP4qpNfR86tif14S+6LYJ
         i5zeljkJfPIdqnhaMi35FGbYQQR2OT54EYTyiUoCX5Rxdq81eU0g99j8qxMdKl8JjaQQ
         82A/w1LxV/UZCD+G5lm6Dl6qQ1U39qY2OwFKFMoc0R6G6ihFp5pPn8P7kQHw0TQ6RfIU
         3OiS+Bi7aj0V2xDWSmK0ZY0jU9XF7sPwpjHZEdVBr9b0rermLqlBblJaFA6cV5Va4Hon
         D+i/9HPGHf5JTACTmw/8OaM9EGhEQ/Ol8AQSK5hFZVtabhbsZotRouW+lkuCTBUZxdrv
         +3bA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from;
        bh=6O1inmGi+qH30KRMib3f/9BmJPTePEq10XLjeXSEn3U=;
        b=WnzSHslaoO/5okrCdi7fcf2O/jresIByg1JFQkKFcyIxujrDY9MrsfubxYFuHZMWhv
         k0vj98bGtEouAYNGiWbBlMUuMFMMIfP6/DGsMSyaLr2rxRKvYqVcXg8HjM7OWJhxeNmH
         YVT3psTekT7Ni0O3sV70UNq6uUissU67UVamk6eWEVjjNmFexMgnNoC/Z8uLPVMA61AW
         nVvjLjwfNaW0ay2+m90cHfA52YNjXXrkt+uqx0HDL2FhtcxDAENELrKrQWOF6IrbOcBR
         dlA3gBPgwUi+ZhhQfVDQDGdB/3ZdAu3tdWsNRzeMLXxHfo+eGR2t0XHE+f84o2kkD0KT
         Nfog==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of jianlin.lv@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=Jianlin.Lv@arm.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=arm.com
Received: from foss.arm.com (foss.arm.com. [217.140.110.172])
        by gmr-mx.google.com with ESMTP id f10si335516qko.5.2021.02.05.01.36.10
        for <clang-built-linux@googlegroups.com>;
        Fri, 05 Feb 2021 01:36:10 -0800 (PST)
Received-SPF: pass (google.com: domain of jianlin.lv@arm.com designates 217.140.110.172 as permitted sender) client-ip=217.140.110.172;
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 0C3C431B;
	Fri,  5 Feb 2021 01:36:10 -0800 (PST)
Received: from net-arm-thunderx2-02.shanghai.arm.com (net-arm-thunderx2-02.shanghai.arm.com [10.169.208.220])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id EBECC3F73B;
	Fri,  5 Feb 2021 01:36:04 -0800 (PST)
From: Jianlin Lv <Jianlin.Lv@arm.com>
To: peterz@infradead.org,
	mingo@redhat.com,
	acme@kernel.org,
	mark.rutland@arm.com,
	alexander.shishkin@linux.intel.com,
	jolsa@redhat.com,
	namhyung@kernel.org,
	natechancellor@gmail.com,
	ndesaulniers@google.com,
	mhiramat@kernel.org,
	fche@redhat.com,
	irogers@google.com,
	sumanthk@linux.ibm.com,
	adrian.hunter@intel.com
Cc: Jianlin.Lv@arm.com,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH] perf probe: fix kretprobe issue caused by GCC bug
Date: Fri,  5 Feb 2021 17:35:58 +0800
Message-Id: <20210205093558.3057814-1-Jianlin.Lv@arm.com>
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

The result of my investigation is that this GCC issue will only cause the
registration failure of the kretprobe event;
Other functions of perf probe will not be affected, such as line probe,
local variable probe, uprobe, etc.

A workaround solution is to traverse all the compilation units in
debuginfo for the retprobe event and check whether the DW_AT_producer
attribute valaue of each CUs contains substrings: "GNU" and
"-fpatchable-function-entry". If these two substrings are included,
then debuginfo will not be used to convert perf_probe_event.
Instead, map will be used to query the probe function address.

-grecord-gcc-switches causes the command-line options used to invoke the
compiler to be appended to the DW_AT_producer attribute in DWARF debugging
information.It is enabled by default.

A potential defect is that if -gno-record-gcc-switches option is enabled,
the command-line options will not be recorded in debuginfo. This workaround
solution will fail.
Assume that this situation may not happen for kernel compilation.

Signed-off-by: Jianlin Lv <Jianlin.Lv@arm.com>
---
 tools/perf/util/probe-event.c | 60 +++++++++++++++++++++++++++++++++++
 1 file changed, 60 insertions(+)

diff --git a/tools/perf/util/probe-event.c b/tools/perf/util/probe-event.c
index 8eae2afff71a..c0c1bcc59250 100644
--- a/tools/perf/util/probe-event.c
+++ b/tools/perf/util/probe-event.c
@@ -885,6 +885,60 @@ static int post_process_probe_trace_events(struct perf_probe_event *pev,
 	return ret;
 }
 
+/*
+ * Perf failed to add kretprobe event with debuginfo of vmlinux which is
+ * compiled by gcc with -fpatchable-function-entry option enabled.
+ * The same issue with kernel module. Refer to gcc issue: #98776
+ * This issue only cause the registration failure of kretprobe event,
+ * and it doesn't affect other perf probe functions.
+ * This workaround solution use map to query the probe function address
+ * for retprobe event.
+ * A potential defect is that if -gno-record-gcc-switches option is enabled,
+ * the command-line options will not be recorded in debuginfo. This workaround
+ * solution will fail.
+ */
+static bool retprobe_gcc_fpatchable_issue_workaround(struct debuginfo *dbg,
+		struct perf_probe_event *pev)
+{
+	Dwarf_Off off = 0, noff = 0;
+	size_t cuhl;
+	Dwarf_Die cu_die;
+	const char *producer = NULL;
+	Dwarf_Attribute attr;
+
+	if (!pev->point.retprobe)
+		return false;
+
+	/* Loop on CUs (Compilation Unit) */
+	while (!dwarf_nextcu(dbg->dbg, off, &noff, &cuhl, NULL, NULL, NULL)) {
+		/* Get the DIE(Debugging Information Entry) of this CU */
+		if (dwarf_offdie(dbg->dbg, off + cuhl, &cu_die) == NULL) {
+			off = noff;
+			continue;
+		}
+
+		/* Get information about the compiler that produced CUs */
+		if (dwarf_hasattr(&cu_die, DW_AT_producer)
+			&& dwarf_attr(&cu_die, DW_AT_producer, &attr)) {
+			producer = dwarf_formstring(&attr);
+			if (producer == NULL) {
+				off = noff;
+				continue;
+			}
+			/* Check that CU is compiled by GCC with
+			 * fpatchable-function-entry option enabled
+			 */
+			if (strstr(producer, "GNU") &&
+				strstr(producer, "-fpatchable-function-entry")) {
+				pr_debug("Workaround for gcc issue, find probe function addresses from map.\n");
+				return true;
+			}
+		}
+		off = noff;
+	}
+	return false;
+}
+
 /* Try to find perf_probe_event with debuginfo */
 static int try_to_find_probe_trace_events(struct perf_probe_event *pev,
 					  struct probe_trace_event **tevs)
@@ -902,6 +956,12 @@ static int try_to_find_probe_trace_events(struct perf_probe_event *pev,
 		return 0;
 	}
 
+	/* workaround for gcc #98776 issue */
+	if (retprobe_gcc_fpatchable_issue_workaround(dinfo, pev) && !need_dwarf) {
+		debuginfo__delete(dinfo);
+		return 0;
+	}
+
 	pr_debug("Try to find probe point from debuginfo.\n");
 	/* Searching trace events corresponding to a probe event */
 	ntevs = debuginfo__find_trace_events(dinfo, pev, tevs);
-- 
2.25.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210205093558.3057814-1-Jianlin.Lv%40arm.com.
