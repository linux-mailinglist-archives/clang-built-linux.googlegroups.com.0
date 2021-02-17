Return-Path: <clang-built-linux+bncBDGIXFWLTIHBBZU5WSAQMGQEW2DP24Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43c.google.com (mail-pf1-x43c.google.com [IPv6:2607:f8b0:4864:20::43c])
	by mail.lfdr.de (Postfix) with ESMTPS id AC6CC31D99C
	for <lists+clang-built-linux@lfdr.de>; Wed, 17 Feb 2021 13:41:12 +0100 (CET)
Received: by mail-pf1-x43c.google.com with SMTP id t7sf10532296pfq.6
        for <lists+clang-built-linux@lfdr.de>; Wed, 17 Feb 2021 04:41:12 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1613565671; cv=pass;
        d=google.com; s=arc-20160816;
        b=GnhTK6nFAjHibTw4QlSJKTRZyH++0cdr5UYaZ9VLlBZnibfVe8JIWKLsknoukAd5+c
         Va+Gv5kSMK8hM36UEYp7Q4GYpxamrpST7W/ExLZYzivo9Hk3zkT4xOEwrKAsveBAxjr5
         WG6wuy5kPSQm/Omel/NgeVGKVPs7kSC1x/V3IKcSrfdYvsIT8dQgRBMAcAMQLqyc3rQ1
         HIizDvZg+V+HcgaxElLyOF3I+MqMKyB2WU2qmmf++bFyyTwxw5zqZEiYL1jm8fCPWeDH
         6/nxUCxkRwC+PREPfzuPsFsxG/LZcUMZCJ/omk1GGpU2Rlc5nmbjDcqoaBBKCdNgYytA
         cXwg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:subject:cc:to:from:date:sender:dkim-signature;
        bh=a0Rzmd0Ohqptl0bXs80IA+deAMVVOw3WZO4PukaxP40=;
        b=uqWjmOS5s6OHv5TKF0N3P6yaCIrk5+CeCApZLfU7rXYpUzAkzK/v6fymDMXQ7V+wSY
         aaPvVLYG6K+Qbqr366DXje9h7+CeYi7c307eFxL+IEyOhn7V4CEZyjV0alrQCIHO9yXK
         oWNAK3RghMPdBN63qHZ5hH9GwZr3gV6ioZKuB5lKoaooLwgSZEOnqdQQG8v0s8BtzJYv
         ThWPzZFvxPrqaA9JVcjykepOGeyV1hkXX++imG8I/wpMx9nTumiwTb1DnwMi0bZ7kmIt
         ++fNZN5S+kQ/wO9ExYPA6XK+E08BUNSS1efkVnaUt9sIf+RlWagoGw6MWy9Nutn/oCoW
         Rp/A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=FebzngLc;
       spf=pass (google.com: domain of mhiramat@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=mhiramat@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=a0Rzmd0Ohqptl0bXs80IA+deAMVVOw3WZO4PukaxP40=;
        b=D/hsmxoaO0FwZJ9zJgqJtVXKXFG6l+XkrcpF9ZR6zTL6J9V1aNNAlHfkiPSWv584G1
         ntqyHpak/Z698sctQjdxjYmCHrnm9rVHnk7tDTvcg1/3RYT30rvOtBWI/bUEWo3bDYKk
         7drIdMu1FWleJiGYYZBrqpRCZR1exRU+HiD8jAq8uZQuLoQ9K26wps96xAmOWY24C251
         vMPZ4v7V7ETHFG/lKsbN2l9lFBCXDlXnwUbnKAaD3nhpcyDWtnemcwb7MTX9m0bYB9uu
         uld2YKYLO9HfRJ2m/tmSJc7GWsCYGtTPupkXv7QcCteZcVlbX5Kp7Po803sbrdXLMpn5
         Na7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=a0Rzmd0Ohqptl0bXs80IA+deAMVVOw3WZO4PukaxP40=;
        b=iWSRRtF/zZWEcwPxTNBr9VcdbHrE/ttEgMHXhOqN/vE1PtH67X1UU467CpIGb6jOVM
         V41eCprNZOAJEBdxtLOpOjQxKXxlUDpjsfsmTBiUFrS4sxoymJFRLclE2pwjswteEM/X
         2pVq0011CFm5ehGKCXFYWBYxyGtbUckxrk/SwKWT7Fxhq/l+vVBCTX+AFClXTXPMqW2V
         BhGqCPYCT7ah/ruWoxxjydHS1F3c5jLlA6VJnRMEP4Cc5PqzO7jcgrkyvz2gHLH8m2qA
         6FQWCIP9/YpMrhX4rliw497qZHVfswp/4+v1ccmdDemzNm1VFjCvyRA6Py2SmzwISfyC
         N+JQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531m0/KnY7gqQuNiEsJv/fmP2ALoqr8YDCFIgRKJjHMUDqzoxfVm
	V+4vqCR3AiLixEjs6uIm/DI=
X-Google-Smtp-Source: ABdhPJwL6QvXFPWpAzLlPhYcCZTD8IZVLc4RI/MGQcTP9IyVOSOyZ1hZUlrJizu9NKhHasO//N+sBQ==
X-Received: by 2002:a17:902:bb87:b029:e1:d1f:2736 with SMTP id m7-20020a170902bb87b02900e10d1f2736mr24041152pls.1.1613565670916;
        Wed, 17 Feb 2021 04:41:10 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:511a:: with SMTP id f26ls776501pgb.9.gmail; Wed, 17 Feb
 2021 04:41:10 -0800 (PST)
X-Received: by 2002:a63:ea4b:: with SMTP id l11mr23365383pgk.61.1613565670193;
        Wed, 17 Feb 2021 04:41:10 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1613565670; cv=none;
        d=google.com; s=arc-20160816;
        b=mViBcYxydDrEZD8YCtrVDy8BqKqFBw6HbOcnIyfzCOlnqeceHx+iWbP2tuhr/MXonD
         TFzxhn4E5eAMp0DscYAt24DaR+ElOmc3LUxGvVXUrm+YRL/eylK9zHb0Ut1kS0nkddst
         HwwF++mKVz1DKQrPCiYLYRU10jZwMeOcnIx5g6Oh5zIcWRxHIZQDLOXsK/W0UmSImVDf
         PN5BBT4fCCeQMIMYZr1GHiSLYl903NfMnQIWAdDSOhYgz6QDq+4SB8SfEUlxR7vOAiM5
         qZock6cifo8t6xhtYSL6zPr0JLsOb4yeoyb2Imonx0b09AAqhVU96592ekKDSgo/mfpD
         9MkA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=KSWcz4rxcb+UWzFTFzDp97ROJeHfR7fqI0WXIOML4oQ=;
        b=NFvprqqsdlwUfRbDOVGIqil7N/R3/gbSBvR+VWBUSoHZT3wrkVyd/bkE0wsaOs/cAW
         dJwcrvqbRCro04hIpOqF2mEsd+9ACBw9ddKobYq9pi4DVoRJFbeT+qHqxClQAx2EBiN9
         uQRNwhOFZM9mJ9pRS6bha3x/0Tr/OHgmJgyhPf+bVuN1G15rfhJPK1a8GkUmuCjemuF4
         ycOCT0Smms//as96idl0GR7GkEJ04N3qryBMazBJiiSWHdM/2R8p1uds3H4qIowDneha
         onJ23toYuxA0kg/9OkInTsKaVNQtQWay0i+QYN3Aur4yLjYxKmOS31mXH9yxo74IbG1J
         qlJw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=FebzngLc;
       spf=pass (google.com: domain of mhiramat@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=mhiramat@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id p10si98385plq.0.2021.02.17.04.41.09
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 17 Feb 2021 04:41:09 -0800 (PST)
Received-SPF: pass (google.com: domain of mhiramat@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 855CC64E42;
	Wed, 17 Feb 2021 12:41:06 +0000 (UTC)
Date: Wed, 17 Feb 2021 21:40:58 +0900
From: Masami Hiramatsu <mhiramat@kernel.org>
To: Jianlin Lv <Jianlin.Lv@arm.com>
Cc: peterz@infradead.org, mingo@redhat.com, acme@kernel.org,
 mark.rutland@arm.com, alexander.shishkin@linux.intel.com, jolsa@redhat.com,
 namhyung@kernel.org, nathan@kernel.org, ndesaulniers@google.com,
 fche@redhat.com, irogers@google.com, sumanthk@linux.ibm.com,
 iecedge@gmail.com, linux-kernel@vger.kernel.org,
 clang-built-linux@googlegroups.com
Subject: Re: [PATCH v3] perf probe: fix kretprobe issue caused by GCC bug
Message-Id: <20210217214058.0307cf0ac87f4feb58ab5e4d@kernel.org>
In-Reply-To: <20210216103026.323157-1-Jianlin.Lv@arm.com>
References: <20210216103026.323157-1-Jianlin.Lv@arm.com>
X-Mailer: Sylpheed 3.7.0 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: mhiramat@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=FebzngLc;       spf=pass
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

On Tue, 16 Feb 2021 18:30:26 +0800
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
> kprobe_on_func_entry
> ->_kprobe_addr
> ->kallsyms_lookup_size_offset
> ->arch_kprobe_on_func_entry		// FALSE
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
> 
> Signed-off-by: Jianlin Lv <Jianlin.Lv@arm.com>

Looks good to me.

Acked-by: Masami Hiramatsu <mhiramat@kernel.org>

Thank you!

> ---
> v2: stop using debuginfo for retprobe, and update changelog.
> v3: Update changelog, fixed misuse of --- marker.
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210217214058.0307cf0ac87f4feb58ab5e4d%40kernel.org.
