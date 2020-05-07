Return-Path: <clang-built-linux+bncBDYJPJO25UGBBV5H2H2QKGQE7ALUWGI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103e.google.com (mail-pj1-x103e.google.com [IPv6:2607:f8b0:4864:20::103e])
	by mail.lfdr.de (Postfix) with ESMTPS id 06CA31C9950
	for <lists+clang-built-linux@lfdr.de>; Thu,  7 May 2020 20:30:49 +0200 (CEST)
Received: by mail-pj1-x103e.google.com with SMTP id c18sf6950011pjo.2
        for <lists+clang-built-linux@lfdr.de>; Thu, 07 May 2020 11:30:48 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1588876247; cv=pass;
        d=google.com; s=arc-20160816;
        b=wPp+gV3ngDKjLkJEocOsHUiHQrj11eTc6xpusL+asWiKMZSVlZoMfeSrrj/ZGKYiqD
         fp+W8eCiBErX6foypC51sDWmbRchHJrA9Bn9dvcgjd1fCk6oMjW6ft5aSQNzF8Gceyx0
         N+YdR7aGo/f43+n04Hcm42lkPhikA5C9NC0BP7cXSJamiUJAk/udaNI+uap+oY3ZVG9B
         mnrmyg0MQuzT4wF+CCiopLX5rgIe8MRPGOp+7mgHs33vhzjlFroJFMCi/0PkTKO92SpJ
         anXpSuRPVk0XShp5q/pqOB+MtsfQJcG6wd4e68SCVp370toRErjXinbYPiHRotPN5Ca5
         55Xw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=QCF0j0xZmLPntJhw42UZFvjl10d+FCOEDIaQmL6SzJw=;
        b=qV/W0ye6yFzIzqfNSbBdSzaYkrsiTI4g6k8eWrv53UmBKeyvKw4hO+l3rJ3hSFvf9w
         cFOsU6rJswj31d6S/m03Z34XKrUsLxDW+qpu3PXUYjaqS6qffag2GjPQ5IazaOuZGZaL
         5xvBaN6Trhk7U+9Jjv3/INVz7rGNaiiH8w6/EYPXV9KyX0mYFU7xx8i9jQrbd8HWRgpI
         vRyjjL+ZKXrtKzotOtpOpKjnwqtuEdoDzwmHSLLWpsrCpdHr20S9CpfrXuZO8sfev0E2
         9eVVheSA6C50vl4nx/RwNBbOkJJUJLQfIh1DPLXagyNID146m8BTnrEMgmS6YZxjZbS4
         vyjQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=AZtgNyXC;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1044 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=QCF0j0xZmLPntJhw42UZFvjl10d+FCOEDIaQmL6SzJw=;
        b=sCHWMp7qmaGD3tOivLFSe6zsXTYozhufRDVexdzhk91OASuU+MPbzNCEUC4+o9kE54
         hHy5r2cYNJbUPsbBz2D3gLkNWYAXczoH8+tBQwcnFQqXkX6IOfzkdfVoUZJkV0RA1TAa
         YS0QUVN+EM/QgHr9yNKY4SiQnNV/KmkkiYeQl7fAhTrcyS1p4UsBpI4ElF/3ojzT1AqG
         mz7Mpvqu7b3tf0OLC1w9AoQHn+5E6nN0q4N4/5c8nFFizKcK3qLx+U/0kF6IWAVoOkoq
         3Oj182ktMQweff5Q+KOyMp//6SyiJyc1xL7+M1AanwOfxy+/HaUivEU7uIN0lFaMkB93
         dyZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=QCF0j0xZmLPntJhw42UZFvjl10d+FCOEDIaQmL6SzJw=;
        b=p0UpaG6Vb1La74y645B+s4xp5OgL2wwfzH/5OP3RxFrTw4lGJHpDzyWrzgGgUuOvKU
         xVM4TbBYdAezJj+Anqjd/wzaxJXZs/u2mNENlz2qekKJs5SxS67CzLSZh/jkipnTdjcG
         P0m+FiU3aTD8eNSXLS2bqvZMyY1V0tPGWH0VWDAZwnG07wSrktWrNbfNNuOvXl7J6Nu8
         gFtHUapyatDqiSMaBPaHK575GFqSVYH56LNlnDI8KouHgPHgmxc7/p2rf7jj08wU3QEY
         PuDGjDtD2F1Xg7rCangaqy2dyLaSpzu4ltrirZFe6IzfDt1yX9wGuZo7M8HOh1tKsRo1
         OzDw==
X-Gm-Message-State: AGi0PuYpQ/5+cCSXh/GTP7FvxOB0IaHvgobQZrlYtwqTTuvdsRVC9TAG
	+cH6Mr/05PgjF5KxAFcq41M=
X-Google-Smtp-Source: APiQypL5JX61wBc7LE5A+q6Oa78ABEwb8ieSG0hRQRBoT/UMO930YdQ2FfOb9wWmtr0MAmWs56C9+w==
X-Received: by 2002:a17:90a:64cc:: with SMTP id i12mr1543460pjm.65.1588876247714;
        Thu, 07 May 2020 11:30:47 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:3c5d:: with SMTP id i29ls4491219pgn.2.gmail; Thu, 07 May
 2020 11:30:47 -0700 (PDT)
X-Received: by 2002:a63:33ca:: with SMTP id z193mr12995312pgz.210.1588876247210;
        Thu, 07 May 2020 11:30:47 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1588876247; cv=none;
        d=google.com; s=arc-20160816;
        b=lQwlP2g9IGSXA/+AgoMH1ONFr4HkGaaWh05PJVobBrqDcHMkwpcrSvDfqWT1hD7p2G
         DaSbx7GW9oNqudFZ9q2qpuVxNCyzvSoPjgG9iXLymDNxmN3+UjMGLPdC7MV7BLYGF9i5
         udNd3mzWqYB+clkPw2FLEvtoLghQTrhlLG3GCj4x+SuxqETUiIbeDVwdMD7vNmCzNewq
         0WSSF7Bq6LPvyKdckWnpcYz1MgyyCufXX22/0ffZggzU+gs5o1Ki6VYnY04dp8N7trFx
         kd28ZHu7gkOwSsPnStrH5EaxjHOr8dR9+G0nY1JElcOnP5UTRKvY2c/m1NlHqmL/Y93C
         S+MA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=R9h9q1Cl5L9jBOGkjpl3YKNQYZ81ZJlVZdV6ucpz6gk=;
        b=Thl5kCfAI0Jn34bHqbIBEQ8sFChwwMp5Biz6X16Tfuxv1kXC5NjpHtmJMnwFOWaeos
         X5LdUBb6DFwOUv6MmCw7HVmz49EPVe5FAd4thmc6f/7IBGISVMex7JHyV+CUrjO96Bo6
         y5Fawc7d54b9RMQDhBFW0xIk315fQOfYcDJP8JrHRYwzKGMIrd8e90OljLpt6qp2i+fu
         qc2o2CIR2L6bHDZMemu3bNrPMQMej5X86sU9em68HpPlnHi1FJ7A2dGnwk7N++fRaDP9
         nC5P224tbD2qGR3MnrE0nd0IzaQXT+IlUG5VejBTfcmptE3vQSWeRHfd7oFr7SSmnjbL
         xBDQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=AZtgNyXC;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1044 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pj1-x1044.google.com (mail-pj1-x1044.google.com. [2607:f8b0:4864:20::1044])
        by gmr-mx.google.com with ESMTPS id s65si613627pfc.3.2020.05.07.11.30.47
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 07 May 2020 11:30:47 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1044 as permitted sender) client-ip=2607:f8b0:4864:20::1044;
Received: by mail-pj1-x1044.google.com with SMTP id a7so3008660pju.2
        for <clang-built-linux@googlegroups.com>; Thu, 07 May 2020 11:30:47 -0700 (PDT)
X-Received: by 2002:a17:90a:6d03:: with SMTP id z3mr1563529pjj.32.1588876246349;
 Thu, 07 May 2020 11:30:46 -0700 (PDT)
MIME-Version: 1.0
References: <CA6078C3-3489-40E4-B756-A0AF6DB3A3A5@lca.pw>
In-Reply-To: <CA6078C3-3489-40E4-B756-A0AF6DB3A3A5@lca.pw>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Thu, 7 May 2020 11:30:34 -0700
Message-ID: <CAKwvOdmMjwoTZFSp2DnzeKePxgczfOJyOH_T-vyzHGcm5cFXgA@mail.gmail.com>
Subject: Re: Clang and UBSAN: member access within null pointer of type
To: Qian Cai <cai@lca.pw>
Cc: Nathan Chancellor <natechancellor@gmail.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, LKML <linux-kernel@vger.kernel.org>, 
	Will Deacon <will@kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=AZtgNyXC;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1044
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

On Thu, May 7, 2020 at 6:42 AM Qian Cai <cai@lca.pw> wrote:
>
> Running a Clang (9.0.1) build kernel with UBSAN generated a few warnings during boot,

Very cool, these reports are so nice! They hand you everything on a
silver platter.  Thanks for testing/sending!  Let's take a look.

>
> [    0.000000] UBSAN: null-ptr-deref in drivers/acpi/acpica/tbfadt.c:459:37
> [    0.000000] member access within null pointer of type 'struct acpi_table_fadt'
> [    0.000000] CPU: 0 PID: 0 Comm: swapper Not tainted 5.7.0-rc4-next-20200507 #2
> [    0.000000] Call trace:
> [    0.000000]  dump_backtrace+0x0/0x22c
> [    0.000000]  show_stack+0x28/0x34
> [    0.000000]  dump_stack+0x104/0x194
> [    0.000000]  handle_null_ptr_deref+0xdc/0x10c
> [    0.000000]  __ubsan_handle_type_mismatch_v1+0x64/0x78
> [    0.000000]  acpi_tb_create_local_fadt+0x104/0x6ec

ok so acpi_tb_create_local_fadt() dereferenced a `null pointer of type
'struct acpi_table_fadt'` in null-ptr-deref in
drivers/acpi/acpica/tbfadt.c:459.

That line number doesn't line up with linux-next; which tree was this?
 That will probably help track these down faster.

> [    0.000000]  acpi_tb_parse_fadt+0xa0/0x1a0
> [    0.000000]  acpi_tb_parse_root_table+0x284/0x2ac
> [    0.000000]  acpi_initialize_tables+0xb4/0xd0
> [    0.000000]  acpi_table_init+0x68/0x88
> [    0.000000]  acpi_boot_table_init+0x108/0x1a0
> [    0.000000]  setup_arch+0xec/0x1f4
> [    0.000000]  start_kernel+0x94/0x56c
>
> [    0.000000] UBSAN: null-ptr-deref in arch/arm64/kernel/smp.c:596:6
> [    0.000000] member access within null pointer of type 'struct acpi_madt_generic_interrupt'
> [    0.000000] CPU: 0 PID: 0 Comm: swapper Not tainted 5.7.0-rc4-next-20200507 #2
> [    0.000000] Call trace:
> [    0.000000]  dump_backtrace+0x0/0x22c
> [    0.000000]  show_stack+0x28/0x34
> [    0.000000]  dump_stack+0x104/0x194
> [    0.000000]  handle_null_ptr_deref+0xdc/0x10c
> [    0.000000]  __ubsan_handle_type_mismatch_v1+0x64/0x78
> [    0.000000]  acpi_parse_gic_cpu_interface+0x40/0xa8
> [    0.000000]  acpi_parse_entries_array+0x1d4/0x2e8
> [    0.000000]  acpi_table_parse_entries_array+0x11c/0x138
> [    0.000000]  acpi_table_parse_madt+0x84/0xb0
> [    0.000000]  acpi_parse_and_init_cpus+0x24/0x80
> [    0.000000]  smp_init_cpus+0x38/0x17c
> [    0.000000]  setup_arch+0x140/0x1f4
> [    0.000000]  start_kernel+0x94/0x56c
>
> [  255.388250] UBSAN: null-ptr-deref in ./fs/xfs/xfs_sysfs.h:37:23
> [  255.394898] member access within null pointer of type 'struct xfs_kobj'
> [  255.402346] CPU: 230 PID: 2364 Comm: modprobe Tainted: G             L    5.7.0-rc4-next-20200507 #2
> [  255.412191] Hardware name: HPE Apollo 70             /C01_APACHE_MB         , BIOS L50_5.13_1.11 06/18/2019
> [  255.422641] Call trace:
> [  255.425811]  dump_backtrace+0x0/0x22c
> [  255.430188]  show_stack+0x28/0x34
> [  255.434225]  dump_stack+0x104/0x194
> [  255.438441]  handle_null_ptr_deref+0xdc/0x10c
> [  255.443511]  __ubsan_handle_type_mismatch_v1+0x64/0x78
> [  255.450016]  init_module+0x130/0x1d4 [xfs]
> [  255.454831]  do_one_initcall+0x6c/0x144
> [  255.459383]  do_init_module+0x100/0x388
> [  255.463931]  load_module+0x2518/0x2b9c
> [  255.468404]  __se_sys_finit_module+0x144/0x150
> [  255.473560]  __arm64_sys_finit_module+0x54/0x88
> [  255.478804]  do_el0_svc+0x128/0x1dc
> [  255.483010]  el0_sync_handler+0xd0/0x268
> [  255.487655]  el0_sync+0x164/0x180
> [  255.491782] ================================================================================
> [  255.769799] ================================================================================
> [  255.779164] UBSAN: null-ptr-deref in ./fs/xfs/xfs_sysfs.h:37:23
> [  255.785816] member access within null pointer of type 'struct xfs_kobj'
> [  255.793268] CPU: 132 PID: 2363 Comm: mount Tainted: G             L    5.7.0-rc4-next-20200507 #2
> [  255.802854] Hardware name: HPE Apollo 70             /C01_APACHE_MB         , BIOS L50_5.13_1.11 06/18/2019
> [  255.813306] Call trace:
> [  255.816471]  dump_backtrace+0x0/0x22c
> [  255.820849]  show_stack+0x28/0x34
> [  255.824882]  dump_stack+0x104/0x194
> [  255.829090]  handle_null_ptr_deref+0xdc/0x10c
> [  255.834163]  __ubsan_handle_type_mismatch_v1+0x64/0x78
> [  255.840665]  xfs_mountfs+0x310/0xc64 [xfs]
> [  255.846071]  xfs_fc_fill_super+0x5cc/0x75c [xfs]
> [  255.851411]  get_tree_bdev+0x24c/0x328
> [  255.856463]  xfs_fc_get_tree+0x24/0x30 [xfs]
> [  255.861453]  vfs_get_tree+0x54/0x158
> [  255.865754]  do_mount+0x80c/0xaf0
> [  255.869786]  __arm64_sys_mount+0xe0/0x18c
> [  255.874510]  do_el0_svc+0x128/0x1dc
> [  255.878720]  el0_sync_handler+0xd0/0x268
> [  255.883357]  el0_sync+0x164/0x180



-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdmMjwoTZFSp2DnzeKePxgczfOJyOH_T-vyzHGcm5cFXgA%40mail.gmail.com.
