Return-Path: <clang-built-linux+bncBDGIXFWLTIHBB5G6QSAQMGQE7Y5XWFI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vs1-xe37.google.com (mail-vs1-xe37.google.com [IPv6:2607:f8b0:4864:20::e37])
	by mail.lfdr.de (Postfix) with ESMTPS id 81C6131325E
	for <lists+clang-built-linux@lfdr.de>; Mon,  8 Feb 2021 13:32:53 +0100 (CET)
Received: by mail-vs1-xe37.google.com with SMTP id i189sf2477179vsi.15
        for <lists+clang-built-linux@lfdr.de>; Mon, 08 Feb 2021 04:32:53 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1612787572; cv=pass;
        d=google.com; s=arc-20160816;
        b=UKdTpfoxGwXi7dQVvCQYXpjhh1tuc8pZLQ4vUf/jOj4CdCD+wo2CjTf1DaSd7ukm++
         2j/FN23PU44bWRcR35MqlTwwwRZiiQsQUhA+coCmVZZHk9Z3jvr4jEOKjrSrfwVtQM5H
         GmI+02KEO46d0QwAdc0hFw/qBEy7zllYFvM2ofLiRI3A56SDgiTMDXHJ3Ib5B/SH/rcp
         8eUqEDGS1vu3lRhH7UK4Z3tMmFDcN2FeywFWPGGOIIO7VcCXcb/2VcQJY/apfiiw2oM5
         xgDNZHi9nk/e5cwsEGzt0QXjT1tJ35i8ftOFExDDUA81IIvk8m9FDVtyoR+EH+XZ2Sk9
         XICw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:subject:cc:to:from:date:sender:dkim-signature;
        bh=GTJa4NJtDDl1eUOnvZ5yKPHIpPZGKdD5LKFhSHMFhJU=;
        b=d6GasbYoqztplL3f7MAsspFOdiMEziJpk6EXzSUIuQuF2nrRGt6Xe1ayuVGxafLnVG
         Y1OYAhM0zC56ZTT2u/P9NMexm68r7Oq1aOSz8eWAkJwPWopXBy8XGX/byk0w9NQLHvDh
         zX4+nTl4pSZjfE6icS4LmLcr9/B/IoZZewZsLX2h0NnnNz/aIhk1nDKx/xAL8MzeUqv1
         pLjEpxah/WFkmZTXmWp7V0U2Jx1qOA1nq0TMCDL5kZVosR/4TwOL2Vderm/jo5/0LGTG
         ZE6HeYwHfZ5uBwIeMzssOEVUlpigBkZWSE2aScUGRAuia+X1PVzeG9GYV++ZGJoVlYMw
         9E4A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b="hFWxnV/Q";
       spf=pass (google.com: domain of mhiramat@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=mhiramat@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=GTJa4NJtDDl1eUOnvZ5yKPHIpPZGKdD5LKFhSHMFhJU=;
        b=B7Cd7d3XVZyApc3/smDiI50r5iwv1+mDH9QaloYDd1cFE6CZydiwkkxOcYahkzovCR
         mn8FKV+us3+9aywkj47uLoIL2NyolNAHeU1czWEpWGE3V7ZCEuyok5/7M1Ynt2YEZWNL
         ktex/RxYkcj4WErqagA/JECAUUyHD3UnO99+R8xQLAfteMN3wdnDyFq0B+Sxn6zVeD/p
         r68gvwpckCFqYFq5TRJwLBBoZ3/rKKRu94w+u0JkMXnOQMJSpPY/JRoawD6xFrodfbDG
         MRqqelk4iw9fGnGBwXjEfP28xO3k1eeWe6+V8SMPwAMPtQFH07vqxztVZnL7LHEz+gj+
         8McA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=GTJa4NJtDDl1eUOnvZ5yKPHIpPZGKdD5LKFhSHMFhJU=;
        b=jEZZPGZ8AX9jp9cm7tE4nW0qSyWlnQg5LV54moDgCOcB34JGYojEblMHUjswLK7APV
         zW3tHulUpe/RorerjpML29oUAzagQOslNmK135dcd2zMD3ZwMfkjEdlF7a61x7ZA+9IK
         nLp9MuB4QpXuXZa1nYJ4OuTyoinJkLhBuw6yibxZwdF9vA+iI3xS1QuVsHL4riP+oLzX
         sXnQ2+v3LEJXTdffyEDDs4jp+dubE1Rx73Tb1V9Ykn/0nIRP/pWQ15foZZAGU9wWpxNo
         e4oA7rjxdgggmlIZNHjF6BEH5tqlbXpiGExXzXIKOrMMKZs5N5dA7FyhGXvt05I39Qv3
         OmUg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533HJj1SAf7cISXatIkcshZtvhZPFVyPDIOZjPJwsFn8rB9sBjrp
	PBhSw43QdC8yhMFrUDF7kOc=
X-Google-Smtp-Source: ABdhPJzxBdaakX+yyqk6vjjBvdxumyQ+Z13FHUHf87htqgvFsLDMsMFpBHWyu9gQYv0C1FTl+dTDWw==
X-Received: by 2002:a05:6122:1213:: with SMTP id v19mr9795383vkc.9.1612787572216;
        Mon, 08 Feb 2021 04:32:52 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9f:2106:: with SMTP id 6ls1281692uab.2.gmail; Mon, 08 Feb
 2021 04:32:51 -0800 (PST)
X-Received: by 2002:a9f:280a:: with SMTP id c10mr10114645uac.7.1612787571750;
        Mon, 08 Feb 2021 04:32:51 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1612787571; cv=none;
        d=google.com; s=arc-20160816;
        b=pc21KZe/a6wFq4kBMn1p1eSQ8WgIanMV1N+tDaHkp1f8QNEQouPbVsQtSFloRiC/p3
         RMdFEckkwizaKTtsCc2KCk5ZJdRr7o/1oXk+ORoOSRZJSxghQYp8DZ9h6VjeCGQOGwyj
         5W/Tcbu/BUhRkVjeiBU237sEg9awXT+88JBtLZwfRll8ACzwtmngJ1AsX4QVjGh85m7Y
         Ypd/icb1PMYuioqG7lQlqTRJNZqGmzSLUTSmevnlxCuWiu0PvgnLKFugd5vZvozoKrCk
         WhO/iteu/r0JZQ+e8S7XvkMOH9uR5g75ehnVKoZ7pGkui3e4Dpb4RZ7AC/ZBU0Uaov/v
         h7cw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=mrDmNNY0gfcCLcrSacXY69Yz5f3veV3H22QjqX+FUCU=;
        b=G1OeT8TKG8TQ4Au+eZsgdH2BqdNEwklYPY9xmkP+fPIK0NzbBkNYqSlkhc2lnazr/Q
         itLlyPHDZ5gmjF0lFXUCTl/VzIViZcF1iqPen/LkMk0AV1CGOcwGRAZxOI0soITgVqzL
         yEifp1HRQSZQrP8+SzQiYOBebpLahj4e/UVuF5mx2ES5r5HhmDWHufO8RggDhSNzFRlh
         afq3ySZ5Mk/IcFOcdXBdmsxyUauQCJyt0lMbAC3dAIqDJjDC+qXVdNbQhxTR3Nv8Ct97
         R20jsb18Uk789mMZ03dLeKQFyH7ixxPJjiZpKdPIay6P1QMEku48TfQnfslXB/LRFq4q
         DPcg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b="hFWxnV/Q";
       spf=pass (google.com: domain of mhiramat@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=mhiramat@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id k21si233160uan.1.2021.02.08.04.32.51
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 08 Feb 2021 04:32:51 -0800 (PST)
Received-SPF: pass (google.com: domain of mhiramat@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 7494A64E37;
	Mon,  8 Feb 2021 12:32:47 +0000 (UTC)
Date: Mon, 8 Feb 2021 21:32:45 +0900
From: Masami Hiramatsu <mhiramat@kernel.org>
To: Jianlin Lv <Jianlin.Lv@arm.com>
Cc: peterz@infradead.org, mingo@redhat.com, acme@kernel.org,
 mark.rutland@arm.com, alexander.shishkin@linux.intel.com, jolsa@redhat.com,
 namhyung@kernel.org, natechancellor@gmail.com, ndesaulniers@google.com,
 fche@redhat.com, irogers@google.com, sumanthk@linux.ibm.com,
 adrian.hunter@intel.com, linux-kernel@vger.kernel.org,
 clang-built-linux@googlegroups.com
Subject: Re: [PATCH] perf probe: fix kretprobe issue caused by GCC bug
Message-Id: <20210208213245.c302a2263a0816d705af974c@kernel.org>
In-Reply-To: <20210205093558.3057814-1-Jianlin.Lv@arm.com>
References: <20210205093558.3057814-1-Jianlin.Lv@arm.com>
X-Mailer: Sylpheed 3.7.0 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: mhiramat@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b="hFWxnV/Q";       spf=pass
 (google.com: domain of mhiramat@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=mhiramat@kernel.org;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=kernel.org
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

Hi Jianlin,

On Fri,  5 Feb 2021 17:35:58 +0800
Jianlin Lv <Jianlin.Lv@arm.com> wrote:

> Perf failed to add kretprobe event with debuginfo of vmlinux which is
> compiled by gcc with -fpatchable-function-entry option enabled.
> The same issue with kernel module.
> 
> Issue:
> 
>   # perf probe  -v 'kernel_clone%return $retval'
>   ......
>   Writing event: r:probe/kernel_clone__return _text+599624 $retval
>   Failed to write event: Invalid argument
>     Error: Failed to add events. Reason: Invalid argument (Code: -22)
> 
>   # cat /sys/kernel/debug/tracing/error_log
>   [156.75] trace_kprobe: error: Retprobe address must be an function entry
>   Command: r:probe/kernel_clone__return _text+599624 $retval
>                                         ^
> 
>   # llvm-dwarfdump  vmlinux |grep  -A 10  -w 0x00df2c2b
>   0x00df2c2b:   DW_TAG_subprogram
>                 DW_AT_external  (true)
>                 DW_AT_name      ("kernel_clone")
>                 DW_AT_decl_file ("/home/code/linux-next/kernel/fork.c")
>                 DW_AT_decl_line (2423)
>                 DW_AT_decl_column       (0x07)
>                 DW_AT_prototyped        (true)
>                 DW_AT_type      (0x00dcd492 "pid_t")
>                 DW_AT_low_pc    (0xffff800010092648)
>                 DW_AT_high_pc   (0xffff800010092b9c)
>                 DW_AT_frame_base        (DW_OP_call_frame_cfa)
> 
>   # cat /proc/kallsyms |grep kernel_clone
>   ffff800010092640 T kernel_clone
>   # readelf -s vmlinux |grep -i kernel_clone
>   183173: ffff800010092640  1372 FUNC    GLOBAL DEFAULT    2 kernel_clone
> 
>   # objdump -d vmlinux |grep -A 10  -w \<kernel_clone\>:
>   ffff800010092640 <kernel_clone>:
>   ffff800010092640:       d503201f        nop
>   ffff800010092644:       d503201f        nop
>   ffff800010092648:       d503233f        paciasp
>   ffff80001009264c:       a9b87bfd        stp     x29, x30, [sp, #-128]!
>   ffff800010092650:       910003fd        mov     x29, sp
>   ffff800010092654:       a90153f3        stp     x19, x20, [sp, #16]
> 
> The entry address of kernel_clone converted by debuginfo is _text+599624
> (0x92648), which is consistent with the value of DW_AT_low_pc attribute.
> But the symbolic address of kernel_clone from /proc/kallsyms is
> ffff800010092640.

Oh, I had faced similar bug for fentry.
3d918a12a1b3 ("perf probe: Find fentry mcount fuzzed parameter location")
GCC dwarf generator tends to skip this kind of function entry information...

> 
> This issue is found on arm64, -fpatchable-function-entry=2 is enabled when
> CONFIG_DYNAMIC_FTRACE_WITH_REGS=y;
> Just as objdump displayed the assembler contents of kernel_clone,
> GCC generate 2 NOPs  at the beginning of each function.
> 
> kprobe_on_func_entry detects that (_text+599624) is not the entry address
> of the function, which leads to the failure of adding kretprobe event.
> 
> ---
> kprobe_on_func_entry
> ->_kprobe_addr
> ->kallsyms_lookup_size_offset
> ->arch_kprobe_on_func_entry		// FALSE
> ---
> 
> The cause of the issue is that the first instruction in the compile unit
> indicated by DW_AT_low_pc does not include NOPs.
> This issue exists in all gcc versions that support
> -fpatchable-function-entry option.
> 
> I have reported it to the GCC community:
> https://gcc.gnu.org/bugzilla/show_bug.cgi?id=98776

Thanks for reporting it!

> Currently arm64 and PA-RISC may enable fpatchable-function-entry option.
> The kernel compiled with clang does not have this issue.
> 
> FIX:
> 
> The result of my investigation is that this GCC issue will only cause the
> registration failure of the kretprobe event;
> Other functions of perf probe will not be affected, such as line probe,
> local variable probe, uprobe, etc.

Hmm, it can affects the perf probe with local variables with ftrace
infrastructure.

Now the debuginfo (dwarf_entrypc(DIE)) will return the actual symbol address
+offset (offset depends on -fpatchable-function-entry). In this case,
if perf-probe put a probe on a function entry, it will be a bit shifted.
So, the probe always uses SW break instead of ftrace...Ah, ok...I recalled.
Before discussing it, I need to restart the kprobe on ftrace for arm64.
It has been discussed last year, but stopped.

> A workaround solution is to traverse all the compilation units in
> debuginfo for the retprobe event and check whether the DW_AT_producer
> attribute valaue of each CUs contains substrings: "GNU" and
> "-fpatchable-function-entry". If these two substrings are included,
> then debuginfo will not be used to convert perf_probe_event.
> Instead, map will be used to query the probe function address.

Hmm, actually, the return probe doesn't need debuginfo since it has
no information of the local variables when the function returns (of course
usually all local variables are gone at that point). In that case you can
just stop using debuginfo for return probe.
(for the future work, it should support recording the contents of
 "pointer passing" arguments at return probe, but currently it is not
 supported yet. So this must be done in another series.)

e.g.
$ ./perf probe -D "eventfd_signal%return ctx->count"
Semantic error :You can't specify local variable for kretprobe.

So, this should work.

diff --git a/tools/perf/util/probe-event.c b/tools/perf/util/probe-event.c
index 8eae2afff71a..10c88885dcd4 100644
--- a/tools/perf/util/probe-event.c
+++ b/tools/perf/util/probe-event.c
@@ -894,6 +894,9 @@ static int try_to_find_probe_trace_events(struct perf_probe_event *pev,
 	struct debuginfo *dinfo;
 	int ntevs, ret = 0;
 
+	if (pev->point.retprobe)
+		return 0;
+
 	dinfo = open_debuginfo(pev->target, pev->nsi, !need_dwarf);
 	if (!dinfo) {
 		if (need_dwarf)

Thank you,


> 
> -grecord-gcc-switches causes the command-line options used to invoke the
> compiler to be appended to the DW_AT_producer attribute in DWARF debugging
> information.It is enabled by default.
> 
> A potential defect is that if -gno-record-gcc-switches option is enabled,
> the command-line options will not be recorded in debuginfo. This workaround
> solution will fail.
> Assume that this situation may not happen for kernel compilation.
> 
> Signed-off-by: Jianlin Lv <Jianlin.Lv@arm.com>
> ---
>  tools/perf/util/probe-event.c | 60 +++++++++++++++++++++++++++++++++++
>  1 file changed, 60 insertions(+)
> 
> diff --git a/tools/perf/util/probe-event.c b/tools/perf/util/probe-event.c
> index 8eae2afff71a..c0c1bcc59250 100644
> --- a/tools/perf/util/probe-event.c
> +++ b/tools/perf/util/probe-event.c
> @@ -885,6 +885,60 @@ static int post_process_probe_trace_events(struct perf_probe_event *pev,
>  	return ret;
>  }
>  
> +/*
> + * Perf failed to add kretprobe event with debuginfo of vmlinux which is
> + * compiled by gcc with -fpatchable-function-entry option enabled.
> + * The same issue with kernel module. Refer to gcc issue: #98776
> + * This issue only cause the registration failure of kretprobe event,
> + * and it doesn't affect other perf probe functions.
> + * This workaround solution use map to query the probe function address
> + * for retprobe event.
> + * A potential defect is that if -gno-record-gcc-switches option is enabled,
> + * the command-line options will not be recorded in debuginfo. This workaround
> + * solution will fail.
> + */
> +static bool retprobe_gcc_fpatchable_issue_workaround(struct debuginfo *dbg,
> +		struct perf_probe_event *pev)
> +{
> +	Dwarf_Off off = 0, noff = 0;
> +	size_t cuhl;
> +	Dwarf_Die cu_die;
> +	const char *producer = NULL;
> +	Dwarf_Attribute attr;
> +
> +	if (!pev->point.retprobe)
> +		return false;
> +
> +	/* Loop on CUs (Compilation Unit) */
> +	while (!dwarf_nextcu(dbg->dbg, off, &noff, &cuhl, NULL, NULL, NULL)) {
> +		/* Get the DIE(Debugging Information Entry) of this CU */
> +		if (dwarf_offdie(dbg->dbg, off + cuhl, &cu_die) == NULL) {
> +			off = noff;
> +			continue;
> +		}
> +
> +		/* Get information about the compiler that produced CUs */
> +		if (dwarf_hasattr(&cu_die, DW_AT_producer)
> +			&& dwarf_attr(&cu_die, DW_AT_producer, &attr)) {
> +			producer = dwarf_formstring(&attr);
> +			if (producer == NULL) {
> +				off = noff;
> +				continue;
> +			}
> +			/* Check that CU is compiled by GCC with
> +			 * fpatchable-function-entry option enabled
> +			 */
> +			if (strstr(producer, "GNU") &&
> +				strstr(producer, "-fpatchable-function-entry")) {
> +				pr_debug("Workaround for gcc issue, find probe function addresses from map.\n");
> +				return true;
> +			}
> +		}
> +		off = noff;
> +	}
> +	return false;
> +}
> +
>  /* Try to find perf_probe_event with debuginfo */
>  static int try_to_find_probe_trace_events(struct perf_probe_event *pev,
>  					  struct probe_trace_event **tevs)
> @@ -902,6 +956,12 @@ static int try_to_find_probe_trace_events(struct perf_probe_event *pev,
>  		return 0;
>  	}
>  
> +	/* workaround for gcc #98776 issue */
> +	if (retprobe_gcc_fpatchable_issue_workaround(dinfo, pev) && !need_dwarf) {
> +		debuginfo__delete(dinfo);
> +		return 0;
> +	}
> +
>  	pr_debug("Try to find probe point from debuginfo.\n");
>  	/* Searching trace events corresponding to a probe event */
>  	ntevs = debuginfo__find_trace_events(dinfo, pev, tevs);
> -- 
> 2.25.1
> 


-- 
Masami Hiramatsu <mhiramat@kernel.org>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210208213245.c302a2263a0816d705af974c%40kernel.org.
