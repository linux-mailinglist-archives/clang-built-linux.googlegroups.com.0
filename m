Return-Path: <clang-built-linux+bncBDYJPJO25UGBBQ6SW2AQMGQEQ5GZRZY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x23c.google.com (mail-lj1-x23c.google.com [IPv6:2a00:1450:4864:20::23c])
	by mail.lfdr.de (Postfix) with ESMTPS id EDEA731E313
	for <lists+clang-built-linux@lfdr.de>; Thu, 18 Feb 2021 00:39:47 +0100 (CET)
Received: by mail-lj1-x23c.google.com with SMTP id s18sf190161ljp.7
        for <lists+clang-built-linux@lfdr.de>; Wed, 17 Feb 2021 15:39:47 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1613605187; cv=pass;
        d=google.com; s=arc-20160816;
        b=g6mkfoccosm44UhoM+Qnk6/GyzkN112WLQbDuvFiN/EkSnVcxeKrxl9d1fJQTcTrOH
         QQsvIKimWx2JMBo9/9oACcUY3qjuiA7SBtfWq7Lm5DmzcJAUDNErvLDCQWF9TXYu/S7X
         PLXofg71x6SZnwxhrnlHYbkWSDEep03cUTC4tD7vsdweit/6Ww+dnAV7nIgm7zZxde8q
         rSatpDvuZbyfTIlNPmYlHLmMYL0y0uRBTqvr3k82hCq5Cz4JBWcqiGkHzUVXvtVFIimJ
         2NNfmZHHN7CMHy9L7O31ALKLkxcv+LI8Ny6S7IzLRkBNFvwze4XLrckLhCIn2PkKGD6j
         qt2w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=MY/0PvzNKaKDN2oiDN+eUMuRKYxvHmyP8jVNN+4h0Fo=;
        b=e9kpLU+Ql7WkH2t+QMH6bxqN2gecaIFdP++9KMxw8wqOihFId/EEEi3q0/xXfG0tW/
         XuZ1zjgyWmFcL8ejLm32U52+0D/3sGwqXQ9w6uXB0liQczB0PwHAYO7Tey+3Z4RRRg5p
         xdPn4t0fTCsWmBCmxNcXGojaVAIIINs+MM/CnCoafkXouuHiekOwo5VJ42WNjlXurh2S
         ZHtRfSI/uWJjRrgvux+tBHndEMWM31svNXGkNCRmx9YHmGaddyCFCGkGLMapBpabGIa9
         hdo2JrQphljpnDYBOv8CDJtqSqGN2RnFDJ7iZLcFBLslCnrML6hmDhQvXtLVyHyC0Tgp
         95tg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="Q/oHA+0J";
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::129 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=MY/0PvzNKaKDN2oiDN+eUMuRKYxvHmyP8jVNN+4h0Fo=;
        b=I3OaRurH2F+odJ4eGDRPvrxTosRn5AUCjsBs6Jof0Nrul3OufDd8jZZ6y2pwd8F7Yh
         pOeFgzBOaZ62oCHaD6zMMu3Pt8vL1fcSWvrtrBTQOhlsOoaPAt/sujkXoroaFrh/oRmA
         CY0fVd62N8bVkg8LDiS7SumZbWiaZLzk3/kwgwUvPryOij4RizVIcaxeUcMkoFbjoRh/
         ElXGzxPW0L6A6qAviiIff36/xPI5fWlZ6550kSwElLfLRQnT66moSabSnq/UmQ5vIWyi
         h/LIz0cvMhAsnQg2Z90XUK0FExr9ifi+a1GRfpSolNNJ4Fk9jcyke/IUgEU010h3w/Nq
         mJ0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=MY/0PvzNKaKDN2oiDN+eUMuRKYxvHmyP8jVNN+4h0Fo=;
        b=ASD6og5fewhn0C7cAWaW9T5I3tvzxX3d9nlu6jjFJAqv4319CorVzbEmiKtXgaL8aj
         1YBsuMI0cXmTIk2JJkcbEyW02JN4ItG5lLvMHmZoYtNvBMKOIfVGNB2fku5bVss0udYC
         z0CCHmdK1rScbavTa9zvCxq1Of/WJmjQaRGRvRIHU0I5MTWh37fgB03+pgLZCYu07p+N
         cb129Yf7eSgGIywKZYjjr42qKqimvI0lk0+1osNhu78TXDxxj7E6wfYC83tyBB8Df4ml
         cMmGRvh+PL1Ux/ZdrZi29yyPLp0Bii9NB2MxJOhu5zDHejKpIMOgr16hYGV9/V1t7ran
         EFLw==
X-Gm-Message-State: AOAM532+50ceUUzUOgDyDTT4LplDipGaEjg2bIXe5OXSLcdUrEg0kKxi
	zdHi9WK2W76CtlnK9XHcfjU=
X-Google-Smtp-Source: ABdhPJyG02hDcuJFOv3o+LNzfFlvQ2TlSxXr1ENEB0+fAPQGie9qCkesQY17W0x5X7k2yhN2hksgtg==
X-Received: by 2002:a05:651c:1196:: with SMTP id w22mr959884ljo.42.1613605187394;
        Wed, 17 Feb 2021 15:39:47 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6512:6d4:: with SMTP id u20ls2656980lff.1.gmail; Wed, 17
 Feb 2021 15:39:46 -0800 (PST)
X-Received: by 2002:a19:3f93:: with SMTP id m141mr756390lfa.423.1613605186410;
        Wed, 17 Feb 2021 15:39:46 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1613605186; cv=none;
        d=google.com; s=arc-20160816;
        b=KGyjyF+A5rvkn1mmZGO+etZKPNNPemQG5mea0yEME49TpAI89br0/Vc702cIIoZaD4
         jRCAuBKmPKYRiFIPhyiQHx7iYvPxqQxpbJv7qnaByFJueC4cVJmFt1nO0PaUF1ErCoN1
         bxBoOLexGzIxyLqci0Zqm7G49WX9ZFwPbIXnTTVGF6yRqghtbReYCOzT003qyGycd56p
         W3W7Vt5hx1H/hZU0uwKZ+Coy5x4Lo+g5Yu8RQz6QWIS0P0RbP70R9LLK8h4I1X13/QGM
         cFh5a9YZM6RDHfmJwWDLatLA8ExGvKO04ADblj0EbA2eEorKXI8zy4ug2SWnUPHwX/bc
         bLXw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=teFskEaebZ19i1Z7EB6SGi++FZfsO3CkwFyMngYGBik=;
        b=wzQgCeLFg6FIpnd9QjuegZxNWw55MeZT1LC70RlK++ITYbBYkusHwD56m92do8yu6X
         Xlrpc1cfVuhselpqHN/3MJooaMYju25e8N33mT7cImKU09L5p701M/nXo2rtikcVC8Q2
         F7hJjLgiAEoUxJvFxGQs6Ov91kfnhwTo7WDmmajQQTGxc7Rq4Rd33Jxecf+UsNynZRRf
         Fe3UM063jKli9ceE9srYxqEXJ91hJvqM6siSTJkseUaDTeb2fXQpchowW6CP08XJyT6E
         FWwVLqNhJEiiS5ry2xTjedUOcG9pkrF4PgqO1VpyINa7Tu1LawbHzhTVYYSyi/eFfAtb
         Aaxw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="Q/oHA+0J";
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::129 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-lf1-x129.google.com (mail-lf1-x129.google.com. [2a00:1450:4864:20::129])
        by gmr-mx.google.com with ESMTPS id d25si159036lji.8.2021.02.17.15.39.46
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 17 Feb 2021 15:39:46 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::129 as permitted sender) client-ip=2a00:1450:4864:20::129;
Received: by mail-lf1-x129.google.com with SMTP id z11so1055623lfb.9
        for <clang-built-linux@googlegroups.com>; Wed, 17 Feb 2021 15:39:46 -0800 (PST)
X-Received: by 2002:a05:6512:12c1:: with SMTP id p1mr835669lfg.374.1613605185945;
 Wed, 17 Feb 2021 15:39:45 -0800 (PST)
MIME-Version: 1.0
References: <20210216103026.323157-1-Jianlin.Lv@arm.com>
In-Reply-To: <20210216103026.323157-1-Jianlin.Lv@arm.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Wed, 17 Feb 2021 15:39:35 -0800
Message-ID: <CAKwvOd=yYx=c=5TR6BY3nPUTQpn5tvSuD7X-KwZyGq5gTwA73g@mail.gmail.com>
Subject: Re: [PATCH v3] perf probe: fix kretprobe issue caused by GCC bug
To: Jianlin Lv <Jianlin.Lv@arm.com>
Cc: Peter Zijlstra <peterz@infradead.org>, Ingo Molnar <mingo@redhat.com>, 
	Arnaldo Carvalho de Melo <acme@kernel.org>, Mark Rutland <mark.rutland@arm.com>, 
	Alexander Shishkin <alexander.shishkin@linux.intel.com>, Jiri Olsa <jolsa@redhat.com>, 
	Namhyung Kim <namhyung@kernel.org>, Nathan Chancellor <nathan@kernel.org>, 
	Masami Hiramatsu <mhiramat@kernel.org>, fche@redhat.com, Ian Rogers <irogers@google.com>, 
	sumanthk@linux.ibm.com, iecedge@gmail.com, 
	LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b="Q/oHA+0J";       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::129
 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Nick Desaulniers <ndesaulniers@google.com>
Reply-To: Nick Desaulniers <ndesaulniers@google.com>
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

On Tue, Feb 16, 2021 at 2:30 AM Jianlin Lv <Jianlin.Lv@arm.com> wrote:
>
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
> ->arch_kprobe_on_func_entry             // FALSE
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

Thank you for taking the time to check and verify with Clang. I appreciate it!

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
>         struct debuginfo *dinfo;
>         int ntevs, ret = 0;
>
> +       /* Workaround for gcc #98776 issue.
> +        * Perf failed to add kretprobe event with debuginfo of vmlinux which is
> +        * compiled by gcc with -fpatchable-function-entry option enabled. The
> +        * same issue with kernel module. The retprobe doesn`t need debuginfo.
> +        * This workaround solution use map to query the probe function address
> +        * for retprobe event.
> +        */
> +       if (pev->point.retprobe)
> +               return 0;
> +
>         dinfo = open_debuginfo(pev->target, pev->nsi, !need_dwarf);
>         if (!dinfo) {
>                 if (need_dwarf)
> --
> 2.25.1
>


-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOd%3DyYx%3Dc%3D5TR6BY3nPUTQpn5tvSuD7X-KwZyGq5gTwA73g%40mail.gmail.com.
