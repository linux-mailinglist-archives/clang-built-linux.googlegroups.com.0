Return-Path: <clang-built-linux+bncBCD3NZ4T2IKRBXNA2D2QKGQEWFFE3CY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x839.google.com (mail-qt1-x839.google.com [IPv6:2607:f8b0:4864:20::839])
	by mail.lfdr.de (Postfix) with ESMTPS id C10B11C8CC1
	for <lists+clang-built-linux@lfdr.de>; Thu,  7 May 2020 15:42:54 +0200 (CEST)
Received: by mail-qt1-x839.google.com with SMTP id e44sf7185257qta.9
        for <lists+clang-built-linux@lfdr.de>; Thu, 07 May 2020 06:42:54 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1588858974; cv=pass;
        d=google.com; s=arc-20160816;
        b=YSaWE+/RgO2ko5wcXcGEAPe/OVMq+bAa8cFyRAWq6rhH1aFtrTzu3tillBazrTZuXd
         8rqrtRpKCH/K1l5YzZw/f/sA4zT0B+ifl8j+MKlVAovJgcV9SLA8nJICf2D8nRm6i7l3
         byMVkrOzMs0gxhpGIAPXXfUw93402ykbk8NOrPVT1XGYdgBtxMWTRNSt+FnzwD0cT6V/
         MgMdxeHQPzydI+URYHnmPZSYptM/pwee/GTUkMMLF48YjkUzdhKqa58ajpDadKhdNHmw
         Xtb7rMJFHwPmf+7FuqepKQOo9vQ4KOjOfJjbchpGLJKFSLBUnHrYIRaqTFo4qiJ7e/WW
         R62w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:to:cc:date:message-id:subject
         :mime-version:from:sender:dkim-signature;
        bh=7JyMDM9M8hyWT5RoXDH+hKsnZuAqV/5nWfD/ZvpcY8E=;
        b=gz11yrLSKoOIsJ8FmPcDmZ+Mg9IokGQ+xnU0D1YoTahjiW7ZNM3sCaWHmp4zGJAxNo
         FRFjSyQaEiuEQglx1VeSmN71snjvb5TeEWFopJFwqCAvlMACfwMkFrrOPoc1OE2m/0x9
         2P3aVkjfqk+g5TDomxZaLExHePCkLgi6tjRVD4d8j+JVz8p84he/82mWmGGHsiE1SwRP
         DJZrk83e4scTf7oVy0NlC2t2L+y9yuRswdQaGCGlBAXdxdHijfvB9Ud1avUzUVzCo0EN
         yjLHmtgyWVEKkfmRVqhethcrSuaTEIc/gOzArqWBg6+Zvx9yVda7LnAZ4ndGvVNuHcNi
         joPw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@lca.pw header.s=google header.b=WP0dPhEP;
       spf=pass (google.com: domain of cai@lca.pw designates 2607:f8b0:4864:20::843 as permitted sender) smtp.mailfrom=cai@lca.pw
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:mime-version:subject:message-id:date:cc:to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=7JyMDM9M8hyWT5RoXDH+hKsnZuAqV/5nWfD/ZvpcY8E=;
        b=hoBYUwHfZcKbUWw4MSKlo2XlpOg7dVxJd03K+Ls/hEriWMyPYKTFGh35qarCca0y3+
         rE5GS47szG97dAx55nBVsgJwZ6QKnXRECn8Xc94krW8FDl6D8iNZdTUkqY6YI6YZW14i
         SYzFh1M1xN1r3NZxIu2WMkryJEkQBirJeLhLq6T/7PaMK+FriIElfNoMJCRhhjxGDSXn
         pmh+GrQLQUnIOtstu5SUay5qdc4GiM2suJqaqL1WsxJXazndOBFxJPfzD1NMGF+8WHkb
         thz2+Sc8v0GJ75m40oWCwlb+hjJ/heYAXgHrD1sMvthqhrU7fFnlAcGhJ/nUruCL/96V
         C8Gg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:mime-version:subject:message-id:date
         :cc:to:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=7JyMDM9M8hyWT5RoXDH+hKsnZuAqV/5nWfD/ZvpcY8E=;
        b=th2t4hVWwA7qDmvtUaVAjog9uccEyW1yFqFh50v6yBfXG2kIrKFkoyYfTSZIjl4Ehe
         sBtp+mbYChfX/D93jzl2zDp4amrSxyXn45/p5ewy1T4wadPJn1+1inX7djp//ZdL3XoX
         SU9FQsxNeuM9bgK2KoswJD93LjsRnpQx5T/ZZJlAHfLfwbr5SRSYqdVHDV5uQQPVNAxz
         CX9VXovZpKLZcDcb0FtRfNLIVRAMFHjGHyETnnOu7UtqDQGiOeTZfav3WsD9UoT4VHh7
         191H96Dmi9vZD5LFIBksxAGr1wbIl5cyhJVIHv9/gK2JcanKHoRo3c/REZJnelSgrPVa
         xgUw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0PuYm6k7JiZffvDlvod6fvevn/4FInjJG2nBeUxv3ZNimG6G1so7S
	Ja5TI5yFlNzsy72B4Yo5zu0=
X-Google-Smtp-Source: APiQypLdaaRuozizco6FCUH1WQJheaXhwuzgf1TIf81Izenq9lpQC5f3oo5REM4RxjSe0QYfnQ4vPg==
X-Received: by 2002:a0c:fa81:: with SMTP id o1mr13497384qvn.52.1588858973801;
        Thu, 07 May 2020 06:42:53 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:891:: with SMTP id v17ls4322702qth.8.gmail; Thu, 07 May
 2020 06:42:53 -0700 (PDT)
X-Received: by 2002:ac8:7683:: with SMTP id g3mr14209425qtr.166.1588858973434;
        Thu, 07 May 2020 06:42:53 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1588858973; cv=none;
        d=google.com; s=arc-20160816;
        b=Yv4fqU73ka4SxvrGOL+mKBKCd8rdeiQAWc3wAgSMVUKOxo6IdQkoSI0bBW5/4xgcaY
         jVMHeuxoxQE+UKXNhSKYcDFU4gf/Qn+xnpejuZYy8XwIDXNmhcJPEn77AGt2wcUMniio
         tE+O4JKptn0XodU4LpaYJKrB5dJNT4s3tJJkIJVIu/b+MKpbQtHf+uUOlQJI8pPtt7yf
         urtobXZZTk1Pey5dgBqDtxdO6SUgjKUYoosHjShIjSYP8Ebr1wdgoiiiKJ02bFOut5OK
         2Nt00ZBdr42CwdKNhc9wsRvELToYYOYDISdo+r4bNIoQ/QiG2rLb2VrOQ8gwsHAQJUuJ
         bWBQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:cc:date:message-id:subject:mime-version
         :content-transfer-encoding:from:dkim-signature;
        bh=y7Cf25gWADp36Aj0ysti+9OMz9XuWPo8dtl90hKQjyg=;
        b=J0gYvk5pyuRuGytWSTadF6a5WdYbC+UWGyN69GcevlCr6WUQG9gNOAt4jrmOla0LVh
         FDLQTLnoazpZU/f4Yz9Fd1BMOWBSaHuDXijvN1wE8TJ1rwJiRxVx8S4G6UZta/H8Lujy
         gsroBrCePjgrHoaSJmpRivOR10wofFhbHRv2coLZD9aCsXxKnm2Hw3RXpHmfYx4gi0kT
         aTZOGaW3hEPDhLMGQ3Ffj/ALlPquKJOCtG65dNFFmRRqqCovvVXcNtgu+BL7vKusOMg5
         lvg/A6OeMwCjLpipjOpggHUP7H9tvDz3Fw65+IYKhxg1kZzoQy/r8rjvcw0BbpI9p76r
         noXQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@lca.pw header.s=google header.b=WP0dPhEP;
       spf=pass (google.com: domain of cai@lca.pw designates 2607:f8b0:4864:20::843 as permitted sender) smtp.mailfrom=cai@lca.pw
Received: from mail-qt1-x843.google.com (mail-qt1-x843.google.com. [2607:f8b0:4864:20::843])
        by gmr-mx.google.com with ESMTPS id h15si166252qtr.4.2020.05.07.06.42.53
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 07 May 2020 06:42:53 -0700 (PDT)
Received-SPF: pass (google.com: domain of cai@lca.pw designates 2607:f8b0:4864:20::843 as permitted sender) client-ip=2607:f8b0:4864:20::843;
Received: by mail-qt1-x843.google.com with SMTP id k12so359884qtm.4
        for <clang-built-linux@googlegroups.com>; Thu, 07 May 2020 06:42:53 -0700 (PDT)
X-Received: by 2002:aed:2bc1:: with SMTP id e59mr13896944qtd.313.1588858972273;
        Thu, 07 May 2020 06:42:52 -0700 (PDT)
Received: from [192.168.1.153] (pool-71-184-117-43.bstnma.fios.verizon.net. [71.184.117.43])
        by smtp.gmail.com with ESMTPSA id d6sm2908851qkj.72.2020.05.07.06.42.51
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 07 May 2020 06:42:51 -0700 (PDT)
From: Qian Cai <cai@lca.pw>
Content-Type: text/plain; charset="UTF-8"
Mime-Version: 1.0 (Mac OS X Mail 13.4 \(3608.80.23.2.2\))
Subject: Clang and UBSAN: member access within null pointer of type
Message-Id: <CA6078C3-3489-40E4-B756-A0AF6DB3A3A5@lca.pw>
Date: Thu, 7 May 2020 09:42:50 -0400
Cc: clang-built-linux@googlegroups.com,
 LKML <linux-kernel@vger.kernel.org>
To: Nick Desaulniers <ndesaulniers@google.com>,
 Nathan Chancellor <natechancellor@gmail.com>
X-Mailer: Apple Mail (2.3608.80.23.2.2)
X-Original-Sender: cai@lca.pw
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@lca.pw header.s=google header.b=WP0dPhEP;       spf=pass
 (google.com: domain of cai@lca.pw designates 2607:f8b0:4864:20::843 as
 permitted sender) smtp.mailfrom=cai@lca.pw
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

Running a Clang (9.0.1) build kernel with UBSAN generated a few warnings during boot,

[    0.000000] UBSAN: null-ptr-deref in drivers/acpi/acpica/tbfadt.c:459:37
[    0.000000] member access within null pointer of type 'struct acpi_table_fadt'
[    0.000000] CPU: 0 PID: 0 Comm: swapper Not tainted 5.7.0-rc4-next-20200507 #2
[    0.000000] Call trace:
[    0.000000]  dump_backtrace+0x0/0x22c
[    0.000000]  show_stack+0x28/0x34
[    0.000000]  dump_stack+0x104/0x194
[    0.000000]  handle_null_ptr_deref+0xdc/0x10c
[    0.000000]  __ubsan_handle_type_mismatch_v1+0x64/0x78
[    0.000000]  acpi_tb_create_local_fadt+0x104/0x6ec
[    0.000000]  acpi_tb_parse_fadt+0xa0/0x1a0
[    0.000000]  acpi_tb_parse_root_table+0x284/0x2ac
[    0.000000]  acpi_initialize_tables+0xb4/0xd0
[    0.000000]  acpi_table_init+0x68/0x88
[    0.000000]  acpi_boot_table_init+0x108/0x1a0
[    0.000000]  setup_arch+0xec/0x1f4
[    0.000000]  start_kernel+0x94/0x56c

[    0.000000] UBSAN: null-ptr-deref in arch/arm64/kernel/smp.c:596:6
[    0.000000] member access within null pointer of type 'struct acpi_madt_generic_interrupt'
[    0.000000] CPU: 0 PID: 0 Comm: swapper Not tainted 5.7.0-rc4-next-20200507 #2
[    0.000000] Call trace:
[    0.000000]  dump_backtrace+0x0/0x22c
[    0.000000]  show_stack+0x28/0x34
[    0.000000]  dump_stack+0x104/0x194
[    0.000000]  handle_null_ptr_deref+0xdc/0x10c
[    0.000000]  __ubsan_handle_type_mismatch_v1+0x64/0x78
[    0.000000]  acpi_parse_gic_cpu_interface+0x40/0xa8
[    0.000000]  acpi_parse_entries_array+0x1d4/0x2e8
[    0.000000]  acpi_table_parse_entries_array+0x11c/0x138
[    0.000000]  acpi_table_parse_madt+0x84/0xb0
[    0.000000]  acpi_parse_and_init_cpus+0x24/0x80
[    0.000000]  smp_init_cpus+0x38/0x17c
[    0.000000]  setup_arch+0x140/0x1f4
[    0.000000]  start_kernel+0x94/0x56c

[  255.388250] UBSAN: null-ptr-deref in ./fs/xfs/xfs_sysfs.h:37:23
[  255.394898] member access within null pointer of type 'struct xfs_kobj'
[  255.402346] CPU: 230 PID: 2364 Comm: modprobe Tainted: G             L    5.7.0-rc4-next-20200507 #2
[  255.412191] Hardware name: HPE Apollo 70             /C01_APACHE_MB         , BIOS L50_5.13_1.11 06/18/2019
[  255.422641] Call trace:
[  255.425811]  dump_backtrace+0x0/0x22c
[  255.430188]  show_stack+0x28/0x34
[  255.434225]  dump_stack+0x104/0x194
[  255.438441]  handle_null_ptr_deref+0xdc/0x10c
[  255.443511]  __ubsan_handle_type_mismatch_v1+0x64/0x78
[  255.450016]  init_module+0x130/0x1d4 [xfs]
[  255.454831]  do_one_initcall+0x6c/0x144
[  255.459383]  do_init_module+0x100/0x388
[  255.463931]  load_module+0x2518/0x2b9c
[  255.468404]  __se_sys_finit_module+0x144/0x150
[  255.473560]  __arm64_sys_finit_module+0x54/0x88
[  255.478804]  do_el0_svc+0x128/0x1dc
[  255.483010]  el0_sync_handler+0xd0/0x268
[  255.487655]  el0_sync+0x164/0x180
[  255.491782] ================================================================================
[  255.769799] ================================================================================
[  255.779164] UBSAN: null-ptr-deref in ./fs/xfs/xfs_sysfs.h:37:23
[  255.785816] member access within null pointer of type 'struct xfs_kobj'
[  255.793268] CPU: 132 PID: 2363 Comm: mount Tainted: G             L    5.7.0-rc4-next-20200507 #2
[  255.802854] Hardware name: HPE Apollo 70             /C01_APACHE_MB         , BIOS L50_5.13_1.11 06/18/2019
[  255.813306] Call trace:
[  255.816471]  dump_backtrace+0x0/0x22c
[  255.820849]  show_stack+0x28/0x34
[  255.824882]  dump_stack+0x104/0x194
[  255.829090]  handle_null_ptr_deref+0xdc/0x10c
[  255.834163]  __ubsan_handle_type_mismatch_v1+0x64/0x78
[  255.840665]  xfs_mountfs+0x310/0xc64 [xfs]
[  255.846071]  xfs_fc_fill_super+0x5cc/0x75c [xfs]
[  255.851411]  get_tree_bdev+0x24c/0x328
[  255.856463]  xfs_fc_get_tree+0x24/0x30 [xfs]
[  255.861453]  vfs_get_tree+0x54/0x158
[  255.865754]  do_mount+0x80c/0xaf0
[  255.869786]  __arm64_sys_mount+0xe0/0x18c
[  255.874510]  do_el0_svc+0x128/0x1dc
[  255.878720]  el0_sync_handler+0xd0/0x268
[  255.883357]  el0_sync+0x164/0x180

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CA6078C3-3489-40E4-B756-A0AF6DB3A3A5%40lca.pw.
