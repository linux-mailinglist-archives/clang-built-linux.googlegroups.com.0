Return-Path: <clang-built-linux+bncBDGIXFWLTIHBBNPJR2AQMGQER65YVQQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23f.google.com (mail-oi1-x23f.google.com [IPv6:2607:f8b0:4864:20::23f])
	by mail.lfdr.de (Postfix) with ESMTPS id E46153163BC
	for <lists+clang-built-linux@lfdr.de>; Wed, 10 Feb 2021 11:25:58 +0100 (CET)
Received: by mail-oi1-x23f.google.com with SMTP id a203sf708370oib.12
        for <lists+clang-built-linux@lfdr.de>; Wed, 10 Feb 2021 02:25:58 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1612952757; cv=pass;
        d=google.com; s=arc-20160816;
        b=lsXauJD6LpJO5IahlZRNOFMsXe2sa/kXWF6f0oUpqcYiIW0je/5ih9ekGXN00Iws/G
         4abUci40a/IMXCifWV+Hb8lW6i17kjaSA+g/pMCk8Hc5K1P+30sn+WehQzAB21FOnpDl
         VHPi85MZZFbLb4Kduz49ACWfitcgLk7hSlihdLJsEu/tAREmMaEJfj5TQGTVg9Dr0Z5K
         3rWnV+CjXeI/nvMjuIZDQJ808/hO6OoCEw5dqKTWTceeeF3+5BgsF5iQ/n2esYagr7EX
         1DLkkvqSbhFBuEid7KW4dyCCV3PcRQZWUdK1jB/2DpHLdD1ephWN4uCRtzeC/t1dfz7v
         w+hg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:subject:cc:to:from:date:sender:dkim-signature;
        bh=vxeEK+OB3gZgVwQO8tBGuWEtzFy6ivHjY9CyLvv/jXo=;
        b=ThdfOSUap0MKOQAC9spN6CnS5xF13Ufvm8ZakzRACCEHDC+PEnDgf5pPFPjabJA0h6
         mkj/Hj7/hQ1epFA/cK6ONiz60K4p1sJZlk/rYHTHdIx0Tiv1YmKFUfZtYIL8TiHajGtS
         Xhxw5WNLGSPmQ2+a8e9e4Yk3mkuc6IL02+NFnjHFti710A9yyGKpfWhOT/CT5nMHTfRq
         R+apj/dg5mA1pV2Nm93ryHlFFhZqM7A+FWte8A/xsm5P00NwrZva+FvpfYWZNRdr+qdu
         8+qxocGjHIIeRCjdygDvO9EbZ6uHJE41XA3rJwME+nMvGu5QX3qO1xT53RC7qRg6KL6s
         XgRg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=cL1+uDJs;
       spf=pass (google.com: domain of mhiramat@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=mhiramat@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=vxeEK+OB3gZgVwQO8tBGuWEtzFy6ivHjY9CyLvv/jXo=;
        b=Vc2waGVc7hJPBzXSnrwe/ruxVNVsP4I9rzfl8ygJv/JG5L/nN1as+zpf/dluzx886b
         VMFOUsiMNUktIU4jSiSXWi6UYr9zBosTFNa94Fh/7b9PVLRR6xDyINeI4HEQVtmclS0/
         3iyJgIUKQyJ9k5s4yuEBIO8+ytAVRo9hZKqPTUaeoYCj5mYOMVfEeMbW7h1DFqHIKknT
         Ew41EbHMr3oxLkIdUwzBLtgfTzfuXpPXQELn5eTJzJzo38SGJawN4fs7fJMA6Yxlb3k6
         UyqH7ceVsvTXfvdQ9v6je6MSdNP/1Hyg5eeNYwCWUXDyF0ggDug9q7VJ8HkgktAPS2Kr
         Amsg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=vxeEK+OB3gZgVwQO8tBGuWEtzFy6ivHjY9CyLvv/jXo=;
        b=LyI1/ww5mMTRzYuPnPkEYDpa65nJnQERY0QsY9XdxjQJQvuaLEPIz+cj7oaE0n/jZZ
         /wuGQ87g1QgIH6UP6SQYqfeOv8cxBOVvehgFDF3v8IIoJdVfOXCZrBfhMHphlI4rwPEj
         RijcqM1C8gzS57hwDJwLk8lafbDXZ5wPxhX4Fn5hTEkSa/ZirmQLAz6an3FJPcDylQGk
         e70z4YxLWOQO6iq2mMS5Z3rLvcOMsYDjfB+tx/9DHU2xBscbtyHOISpvcgHvlVzaQR+h
         urSf4xmFRHkKS1NAcpx7U6GQxMu2H6x3lvB4lKKlj1dpnsiYK9RNhaR2YxFMaCbJg2dW
         R+Ow==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532+qbiJOmkz0VgEOnu5Iim25zqnLIgRqPx5H1/GmFvqOsujPJ+k
	GEEFO/67HPu8MmA1X99GXw0=
X-Google-Smtp-Source: ABdhPJwg7UMt4NnnnXwEIGiKSG0wd+hWMO5lKzAjosuVIyuam4ogYT4KjeHurJsYytHdYuIdjwiBMQ==
X-Received: by 2002:aca:3d85:: with SMTP id k127mr1611789oia.157.1612952757694;
        Wed, 10 Feb 2021 02:25:57 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:7249:: with SMTP id p70ls447627oic.5.gmail; Wed, 10 Feb
 2021 02:25:57 -0800 (PST)
X-Received: by 2002:aca:6701:: with SMTP id z1mr1480740oix.93.1612952757252;
        Wed, 10 Feb 2021 02:25:57 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1612952757; cv=none;
        d=google.com; s=arc-20160816;
        b=gmc89vL7z1py59OvewkLUDSt9QtpOYxrGttUQPxmumZMuA5W49VovVeInkgLRPVr83
         +584h9OxQDieGnRyJ5QIRtx3a5aprJLVIEVHM27gyIiHYnzAnp3ZD6edj3ItwHTAUk1u
         WykjU2ykCZpmMbzyicDBhddNuW9xFKLBVmqIKvdCiPXanfhm3JsSMejujsvY9mTqZ/SS
         JioYgnalJBV1wHMBBPcGvQCjIhji1u16fIoe4CfM5/a/sp2Yz8Q1mNf1WDed/iu7O9Q+
         8FtilZb5wp9ZRL2w+S6xsOzg9FS5zbshhjAk1A1sUHXoBufN2Dp4Fje22KdVXrHgCdIo
         vJjw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=+25YAqlJCZjk3Gl2wv3AOxv9u27TL8MzkxprjPdjZ0E=;
        b=g0cgpBibZNnjaTrLdaBn44VeHHIcptbtu0VOlZlAxZRER2fV8/hi9qiHeTnKNyetk3
         oESmfwIcHcKvLFX465STCZcIGLxbfQzuW73h4bjrjje5q4WIjxHgJAv8M2Frjtr7s8iC
         X6opwlMQ5YuPYwy9MIzIhJZ3cUGySGBrtBMQADQLIHFk76u0aLErwYuj7P2P5LKr1/T9
         Q8thxA4bpZaUrI6vEhTa/Y2U6Kq1LNShzpeYTLK6ZZK6UaLa1cqLnxkdeibA5Bc1MkAP
         z4/I/krKCVcQ/Lww7QNfm7sQ5lgS3s4RhcnIBZApx07W+uGbPl/3a1v2ll+etoPpvOrp
         l0rg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=cL1+uDJs;
       spf=pass (google.com: domain of mhiramat@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=mhiramat@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id m7si104594otq.5.2021.02.10.02.25.57
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 10 Feb 2021 02:25:57 -0800 (PST)
Received-SPF: pass (google.com: domain of mhiramat@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id E742864E37;
	Wed, 10 Feb 2021 10:25:52 +0000 (UTC)
Date: Wed, 10 Feb 2021 19:25:49 +0900
From: Masami Hiramatsu <mhiramat@kernel.org>
To: Jianlin Lv <Jianlin.Lv@arm.com>
Cc: peterz@infradead.org, mingo@redhat.com, acme@kernel.org,
 mark.rutland@arm.com, alexander.shishkin@linux.intel.com, jolsa@redhat.com,
 namhyung@kernel.org, nathan@kernel.org, ndesaulniers@google.com,
 fche@redhat.com, irogers@google.com, sumanthk@linux.ibm.com,
 linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com
Subject: Re: [PATCH v2] perf probe: fix kretprobe issue caused by GCC bug
Message-Id: <20210210192549.dedff88ac7adb610529f7f5c@kernel.org>
In-Reply-To: <20210210062646.2377995-1-Jianlin.Lv@arm.com>
References: <20210210062646.2377995-1-Jianlin.Lv@arm.com>
X-Mailer: Sylpheed 3.7.0 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: mhiramat@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=cL1+uDJs;       spf=pass
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

On Wed, 10 Feb 2021 14:26:46 +0800
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
> 
> Currently arm64 and PA-RISC may enable fpatchable-function-entry option.
> The kernel compiled with clang does not have this issue.
> 
> FIX:
> 
> This GCC issue only cause the registration failure of the kretprobe event
> which doesn't need debuginfo. So, stop using debuginfo for retprobe.
> map will be used to query the probe function address.

Looks good to me.

Acked-by: Masami Hiramatsu <mhiramat@kernel.org>

Thanks!

> 
> Signed-off-by: Jianlin Lv <Jianlin.Lv@arm.com>
> ---
> v2: stop using debuginfo for retprobe, and update changelog.
> ---
>  tools/perf/util/probe-event.c | 10 ++++++++++
>  1 file changed, 10 insertions(+)
> 
> diff --git a/tools/perf/util/probe-event.c b/tools/perf/util/probe-event.c
> index 8eae2afff71a..a59d3268adb0 100644
> --- a/tools/perf/util/probe-event.c
> +++ b/tools/perf/util/probe-event.c
> @@ -894,6 +894,16 @@ static int try_to_find_probe_trace_events(struct perf_probe_event *pev,
>  	struct debuginfo *dinfo;
>  	int ntevs, ret = 0;
>  
> +	/* Workaround for gcc #98776 issue.
> +	 * Perf failed to add kretprobe event with debuginfo of vmlinux which is
> +	 * compiled by gcc with -fpatchable-function-entry option enabled. The
> +	 * same issue with kernel module. The retprobe doesn`t need debuginfo.
> +	 * This workaround solution use map to query the probe function address
> +	 * for retprobe event.
> +	 */
> +	if (pev->point.retprobe)
> +		return 0;
> +
>  	dinfo = open_debuginfo(pev->target, pev->nsi, !need_dwarf);
>  	if (!dinfo) {
>  		if (need_dwarf)
> -- 
> 2.25.1
> 


-- 
Masami Hiramatsu <mhiramat@kernel.org>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210210192549.dedff88ac7adb610529f7f5c%40kernel.org.
