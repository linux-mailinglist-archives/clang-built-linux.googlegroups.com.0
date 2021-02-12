Return-Path: <clang-built-linux+bncBDZ7JWMQ2EGBBUPITOAQMGQEGFZ7MMY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb37.google.com (mail-yb1-xb37.google.com [IPv6:2607:f8b0:4864:20::b37])
	by mail.lfdr.de (Postfix) with ESMTPS id 46C5931A6EC
	for <lists+clang-built-linux@lfdr.de>; Fri, 12 Feb 2021 22:34:11 +0100 (CET)
Received: by mail-yb1-xb37.google.com with SMTP id u3sf986709ybj.13
        for <lists+clang-built-linux@lfdr.de>; Fri, 12 Feb 2021 13:34:11 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1613165650; cv=pass;
        d=google.com; s=arc-20160816;
        b=ZD0uNCZapuMEo5KYwRfe3ZZmKbF1BUPLvmEG8TLBLTOuWyNJ7lDuIqLLYBZrPPlcjb
         yhOlDyVcK9STLQ0w4vMN4E7LwiaqKR+hAmx+rqZ45D90lg7uSuwPa3Tj9eCrkJcY8OpW
         2kOIjWhZXeEf+DhM0+Y5WUVTR4uSV12dx43YoaRp5UQ5j2fPYf5LWrmMMJ/DIQ8En6dA
         TtoyfnK7r1gvQw9re8R8dWdDa5zctwPdDPtQCB6Aq2pyV6x4eVlIQi/RXS17VofsLWus
         fD+3gf5lRdXZCpF5wFBcAvVSskbsoxo1bdUFjsfuaMUO+84SPXzJH+Bi6DQGPRT64LGF
         12JQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=bc0HRZ0ZZZ2xPWdCBApTvK2c+St20+wwFnAV0C+ujPE=;
        b=TeH3HB+0GHFCvDre8QilGcJxtuFfaLram3NI9m3G9oJXtsL5DSUodpsK3gCatoWyTx
         Pepb9Fovd3bbAg4WWMcoUx58NpvwifwoMVi9D2YHEF5EbKltSos/1A/AqJCv58zbaDEP
         ZA2YAPO/z37Vytzv3Ma823I1m9oxE0dE4Wd0vhn21BNfGx9IhLEygkxmoS6JLOGX5wCx
         AdL2HxqZ8NU4tmxeggpBh7qycRmhhMP141np+L1+taLnzNJHPhchN6WRi1c9I2hYYc9y
         nPPd8CNJ8CCVNh481Q3lTLQSI6dOU85ec3YcDsEuTUrQnlwpWYEquDPkpNxl/lkLCp3I
         9f3A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=I+ZnPspG;
       spf=pass (google.com: domain of acme@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=acme@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=bc0HRZ0ZZZ2xPWdCBApTvK2c+St20+wwFnAV0C+ujPE=;
        b=Sqes5CXSOSJWPxlBo/cATQFpa1jAZfjUzU5zquQUO5VskQ4iXod+0PZ4l/iZkQYVYu
         9GW0fmFCC4p2TqV+Qziot3W192KDRN0b+MfeFg9Hb55mASkln9JeAPZo9IyNrE+K2k8n
         fxt37JHMj78fWYQ3BvjJaCO4GDgn63bbVyu3UllHhm1olFtIdCo8ZzsNfZnqE9IGpRGy
         BH0lVGbYA3B+y/4Gqg8dvUxtxu8TfjG0X2AJ5rnMawhBgiWQCDH39rk0NERApBhIHkIX
         9xrzkfotMF+G/x34e9awyC6IZEj3P3zhcT4n9UdmdZfHSdMUsLg/pxf9xqEuqDDm/IEF
         icrQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=bc0HRZ0ZZZ2xPWdCBApTvK2c+St20+wwFnAV0C+ujPE=;
        b=EW4Gr14yo3ON/SDzMGVXOrbZ5I9ZlcwyoifZri3A8zy9xgwqsDWlXN5yfcf48lupwU
         iR1Zv54jgK0HZ69/acpffIX5hWr9Tc7ZtRp/0p4WMRgefMzLhPlLPst0OJV3XQMHDO8E
         3fbocl4D51gS6KVCyaL+is5t6avS+8lOWTtzfolE3Y3IV8e/F8/MIlZjJI3vxU4rKhc6
         YYe4Fqm04IuSV1AVYVtIN5QXHc17oNFuWxtNRYEuZ5/hTgIXDeCrCxoF1birrDKP/4Zv
         Oy8QZSPPDHWh3uozAY6bFIo0VAdLJV/ImGq//kZ9nLRF10B4NYgs+CxMkvw+UzWvCSQL
         VR8g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532vd0X0WtQzlOwNxkfN6kjSC4rsVgW2wG3IjOyF+V7vqoS4AZAW
	wLOOLY/JLuTe7YSMJs41bAo=
X-Google-Smtp-Source: ABdhPJxsBjfExW3F8EtXUq1rBLR2VwHRIsgRHyDQu96xMfZs2/udI1vT08f7CW5+rZE+Ubhoco5gDw==
X-Received: by 2002:a25:3805:: with SMTP id f5mr6368832yba.27.1613165650002;
        Fri, 12 Feb 2021 13:34:10 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:d907:: with SMTP id q7ls421420ybg.3.gmail; Fri, 12 Feb
 2021 13:34:09 -0800 (PST)
X-Received: by 2002:a25:b9c7:: with SMTP id y7mr7029877ybj.458.1613165649400;
        Fri, 12 Feb 2021 13:34:09 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1613165649; cv=none;
        d=google.com; s=arc-20160816;
        b=fpYrFsctLfn+CJkdn3naJr0ttYpdvTA1VHIAJBSPTva4Hca3P4ExfRV7UYG52igxhA
         D6zBvuP48si+LEwLWUDmXOWfvEp+1LFHPsnURbF8HeX726bajhcEfmbidx8wWoq6F8yl
         PZLMCv/fVbeFyPhzd16oYO6pL7f92gRalUJZ8uKvLc91PXqrNb61bjGVlNUrUifwz5Yw
         ZDLkboOgWAbs67QSDSmxP4FZhZR/hm1/6Qy6djYM6WS96J26YAMPoKSYtnnJoKDTO3hc
         NNFjI7ihB/rw0PuD8YIE6IAk7Uz9eYMdIDrToplZAQZMRTebiRIbkf14qPqCBQWQBy1E
         KFUA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=q5J4QuBpN0D7eLrcr7Vvy5FpV1NYwKhG34o4oGnxwMs=;
        b=mO4M4qaiJ0oe5RTof+8l57K9MpsYyz2rHp0veM+9EvyzoXE9uthmkcZHFNKa8iDQ/Z
         qMd2tMWWVPZ/NTWpr4OaZh4AX2MyK5Qt55Aqd37npFYEWBXSyphqsoiLGrraiS0GyHc4
         vcUGF2mjUUCxVFumRYjXsskKUuKJ6w0WV/msST9xRbgz6tjmbD9St6fqzOajadIko3T2
         YxLmAZrevIiWno52FH9ufadXctKAZcbcq10v8NF4HfBS1d6gGO1qxhXCc+sdxYzRCGLG
         38mw0bbOyO66Kg1g9H1ku0nfEwbTDpqHlYSfXt/fJ0Ctlz0aDYga32yaMwbxxC/2HiBP
         1qGw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=I+ZnPspG;
       spf=pass (google.com: domain of acme@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=acme@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id c10si770979ybf.1.2021.02.12.13.34.09
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 12 Feb 2021 13:34:09 -0800 (PST)
Received-SPF: pass (google.com: domain of acme@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id E663964E31;
	Fri, 12 Feb 2021 21:34:07 +0000 (UTC)
Received: by quaco.ghostprotocols.net (Postfix, from userid 1000)
	id 6A0A940513; Fri, 12 Feb 2021 18:34:05 -0300 (-03)
Date: Fri, 12 Feb 2021 18:34:05 -0300
From: Arnaldo Carvalho de Melo <acme@kernel.org>
To: Jianlin Lv <Jianlin.Lv@arm.com>
Cc: peterz@infradead.org, mingo@redhat.com, mark.rutland@arm.com,
	alexander.shishkin@linux.intel.com, jolsa@redhat.com,
	namhyung@kernel.org, nathan@kernel.org, ndesaulniers@google.com,
	mhiramat@kernel.org, fche@redhat.com, irogers@google.com,
	sumanthk@linux.ibm.com, linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: Re: [PATCH v2] perf probe: fix kretprobe issue caused by GCC bug
Message-ID: <20210212213405.GM1398414@kernel.org>
References: <20210210062646.2377995-1-Jianlin.Lv@arm.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20210210062646.2377995-1-Jianlin.Lv@arm.com>
X-Url: http://acmel.wordpress.com
X-Original-Sender: acme@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=I+ZnPspG;       spf=pass
 (google.com: domain of acme@kernel.org designates 198.145.29.99 as permitted
 sender) smtp.mailfrom=acme@kernel.org;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=kernel.org
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

Em Wed, Feb 10, 2021 at 02:26:46PM +0800, Jianlin Lv escreveu:
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

Please don't use --- at the start of a line, it is used to separate from
the patch itself, later down your message.

It causes this:

[acme@five perf]$ am /wb/1.patch
Traceback (most recent call last):
  File "/home/acme/bin/ksoff.py", line 180, in <module>
    sign_msg(sys.stdin, sys.stdout)
  File "/home/acme/bin/ksoff.py", line 142, in sign_msg
    sob.remove(last_sob[0])
TypeError: 'NoneType' object is not subscriptable
[acme@five perf]$

I'm fixing this by removing that --- markers
 
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

- Arnaldo

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210212213405.GM1398414%40kernel.org.
