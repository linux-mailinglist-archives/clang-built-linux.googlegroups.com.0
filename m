Return-Path: <clang-built-linux+bncBD2INDP3VMPBBK7WWCAQMGQEHNMMAHQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3f.google.com (mail-io1-xd3f.google.com [IPv6:2607:f8b0:4864:20::d3f])
	by mail.lfdr.de (Postfix) with ESMTPS id C786031D231
	for <lists+clang-built-linux@lfdr.de>; Tue, 16 Feb 2021 22:37:48 +0100 (CET)
Received: by mail-io1-xd3f.google.com with SMTP id g16sf3645047ioc.11
        for <lists+clang-built-linux@lfdr.de>; Tue, 16 Feb 2021 13:37:48 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1613511467; cv=pass;
        d=google.com; s=arc-20160816;
        b=OkjWRW4vvM3WQq/9IF22EX2bs21Xs/7xvaUz+tSD87uOyc5i62yJYZ9sVPhdDPQDDd
         ZsG9pFofGDJe2Ne5j886IqRHr4toFEcFWOYEhg08OJyfx1UQwfW7tQSd0I4BTwQukhde
         5YskHOXvxHVE8c3S33OgRciEiCVxj4XTAxk0xEbnM23ly2AnT2HU2kvGFJAc/vO5WS8M
         91ARWMS57oDRaX/g6j+rIalSffmcInU30TDEyQRywLYQT82gCNoY1aXG5yA8qbzDeOOR
         8gJvBBheZ+7A2Zn9CQXcE/l5G090hJP2gNWH2MKD6xjjUSOnvJ/hWZ3Gp18zflSUjIo2
         27KA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:message-id:date:to:cc
         :from:subject:references:in-reply-to:mime-version:sender
         :dkim-signature;
        bh=TMHe1Gx/J5kETnrnrKSLq+sbuy0FLEWFCEt/YDbRh6Q=;
        b=xMORSE9ksh1/0lyjbSdk83LeLP940IKH3Cay5YSouvVB+epl/O5FBmJGCP7W7pHm1p
         Wiln6m34Jxe1OGbaNnPD6246FumHpjYK1JZpdPkSHKv5saWSf+/UwRBT5HXtLxrzNDpy
         ElHVzl2pQQ+vFALDDPyBBrEfQ4DTydD8eNSA24HDHH43CzB4bTtEwuzSA2+coezm9GCz
         da04usa/2G30G38zOAwjGMKDvn8G5sKjf74ve/clHZGj0CfFfqPtcueJLFDWVzyWoPO2
         BV1YYHT1HV9i0w3aMAc3D27OwkZHCqHyMPuFNx67R07KcAMUqeZfqPUI+U0Zl+i7K8w2
         OOdQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=ReRhDxqh;
       spf=pass (google.com: domain of swboyd@chromium.org designates 2607:f8b0:4864:20::102c as permitted sender) smtp.mailfrom=swboyd@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:in-reply-to:references:subject:from:cc:to:date
         :message-id:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=TMHe1Gx/J5kETnrnrKSLq+sbuy0FLEWFCEt/YDbRh6Q=;
        b=d0KeAgDH5eeGu/mDUeStQCoYYNfyDd5iUNaVAtegOBmWUyS9YnnfFOCnGGmIctHqWU
         xHJl2iIC/dM+d7XprkVFEh9fpAaVImOLCl9oHwH5Md3hgdPL2qsfeQKlKgol8tjOTXzO
         E2RK4iMjkzAJleTS8XrGyi9gZr0gLV2gj5CNJyLqyOvj/D5RpldL1FoWKZP+Vnbic+5g
         C8pijPJwLbBbTI0Lujr1NYIFzK5Awo5RTT8x3ZlLvLny+n57owvezuUxvs7Gi5cHCcoN
         VcZ1phTUR5aycvfP4MXHyUcMsEu0/PD5xhGxdmWy1Wb+C2k/ArWJZV6f2pEUwm2TDC6c
         OGPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:in-reply-to:references
         :subject:from:cc:to:date:message-id:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=TMHe1Gx/J5kETnrnrKSLq+sbuy0FLEWFCEt/YDbRh6Q=;
        b=trt8et3JnI8MJpiLtViDIkQTa2CrFFDKs+mJfsaRUTnrZ9AcaRibuOguqzU6Gt+ZUg
         x+WfR2opKAT9dBEQ4qGLP906BnI/0/Akatge1vBo2RglxB6PIZppQezh6qVWKZ+zS0O+
         x0C8IqbAxsogZ9Bno0NPBIWpqeVsXktV+sE5RTXW7rvoy9Y+2I2Ad6j+/JoN7EjJ/ml5
         nRrQVxlXH7eI8LN+iFPYOr086qCtynbe8ObQ59eVbiSWAzxh+RS08mNQ908i0Vidu8rX
         1OghD1r7sQsxq7BbMxaQ+SvR9mt9VFaSqFVwDPxN/5FQcq94r6BodnBuJ0lZ8edHAR60
         GNGQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5332V6CtB67q7jzsRBTeKZRc4Gy0JISDcAzQsnj7J0JvhVa3c3ER
	bE+y7N3AYhdetQZpt8+7yi8=
X-Google-Smtp-Source: ABdhPJyfxkzQ2wgb6bSWJJjXqI/49ZpChhcS0gf4PRudO3NsBIDQQcKwBjAhOhRpQ4G52Jxha7qxGQ==
X-Received: by 2002:a5d:9041:: with SMTP id v1mr18155820ioq.155.1613511467591;
        Tue, 16 Feb 2021 13:37:47 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5e:8216:: with SMTP id l22ls5338iom.9.gmail; Tue, 16 Feb
 2021 13:37:47 -0800 (PST)
X-Received: by 2002:a5d:9041:: with SMTP id v1mr18155809ioq.155.1613511467166;
        Tue, 16 Feb 2021 13:37:47 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1613511467; cv=none;
        d=google.com; s=arc-20160816;
        b=O8+jK4PVLOEJuWO8EI7eiFxu6FccmS2F3UjGtD5aH+Ps6AaoTBd6Wd1CxsP567fSaw
         I8FeDeVzmpml9G/dmVt6m1cuZ14I0Wo5ZR9UeRgni/2S2EGpxQwj29OrD/zZfIQ4FucL
         A4b87A9T3wvCnsm8ZfkqPhobKGp9Z4pHKJutKT5+ltgsfnsghjECYa78RmDyanCkOI0C
         JcVUYkgt/iufZmCXX0El2GPb7F0qHED722y0aWUZBkPAwKw263bbaU8ekDxapPWODkkP
         YH+xG3R/zinXQ/8A67Q0PaoaTl5YTbbvphQFD0YOSfhadfVrRY5RcVKdLcSnOU7KrrNN
         A5gg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:message-id:date:to:cc:from:subject:references
         :in-reply-to:content-transfer-encoding:mime-version:dkim-signature;
        bh=5c13cGmUbt4hYOZvHMgppB/+Rio5HpP/68H4KQeLHN0=;
        b=EuXgJsVu4ly6IsKwIva3mjElfyTGsulGBn+jsNjfax+8ueqnJf50JcJUk2MHDbp5M2
         oSaggyoD8SG0yUmpnewemtHbLXFd0tpR0d6nvUhwoXCEstL5GVAv52ycIJyZWqSY2HiO
         B2ahCxGA5R84DCAbAoeka1RKJsntNfHlyE5BjGLVC7VHMQEKlWcR6wiahLPEA/zPwGRu
         21knDbe63bd/tmM1GGDtwODmft3tvxBax/ZL4m8oq6Yk4I4TZz/p6PzmD8zcpwB4MKbM
         t4h8BzYNjmRXPXhEclUSv1TWZDMR6s5T6kisgQrczBE7ldnYDShn0zSpl7hpWkQ8gsSP
         HvkA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=ReRhDxqh;
       spf=pass (google.com: domain of swboyd@chromium.org designates 2607:f8b0:4864:20::102c as permitted sender) smtp.mailfrom=swboyd@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pj1-x102c.google.com (mail-pj1-x102c.google.com. [2607:f8b0:4864:20::102c])
        by gmr-mx.google.com with ESMTPS id d2si10591ila.5.2021.02.16.13.37.47
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 16 Feb 2021 13:37:47 -0800 (PST)
Received-SPF: pass (google.com: domain of swboyd@chromium.org designates 2607:f8b0:4864:20::102c as permitted sender) client-ip=2607:f8b0:4864:20::102c;
Received: by mail-pj1-x102c.google.com with SMTP id kr16so152982pjb.2
        for <clang-built-linux@googlegroups.com>; Tue, 16 Feb 2021 13:37:47 -0800 (PST)
X-Received: by 2002:a17:90a:1485:: with SMTP id k5mr1833899pja.103.1613511466714;
        Tue, 16 Feb 2021 13:37:46 -0800 (PST)
Received: from chromium.org ([2620:15c:202:201:e915:2799:f43d:3184])
        by smtp.gmail.com with ESMTPSA id y200sm23493674pfc.103.2021.02.16.13.37.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 16 Feb 2021 13:37:46 -0800 (PST)
Content-Type: text/plain; charset="UTF-8"
MIME-Version: 1.0
In-Reply-To: <20201211184633.3213045-6-samitolvanen@google.com>
References: <20201211184633.3213045-1-samitolvanen@google.com> <20201211184633.3213045-6-samitolvanen@google.com>
Subject: Re: [PATCH v9 05/16] kbuild: lto: merge module sections
From: Stephen Boyd <swboyd@chromium.org>
Cc: Josh Poimboeuf <jpoimboe@redhat.com>, Peter Zijlstra <peterz@infradead.org>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Paul E. McKenney <paulmck@kernel.org>, Kees Cook <keescook@chromium.org>, Nick Desaulniers <ndesaulniers@google.com>, clang-built-linux@googlegroups.com, kernel-hardening@lists.openwall.com, linux-arch@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-kbuild@vger.kernel.org, linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org, Sami Tolvanen <samitolvanen@google.com>
To: Masahiro Yamada <masahiroy@kernel.org>, Sami Tolvanen <samitolvanen@google.com>, Steven Rostedt <rostedt@goodmis.org>, Will Deacon <will@kernel.org>, <stable@vger.kernel.org>
Date: Tue, 16 Feb 2021 13:37:44 -0800
Message-ID: <161351146485.1254594.3592715065187730966@swboyd.mtv.corp.google.com>
User-Agent: alot/0.9.1
X-Original-Sender: swboyd@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=ReRhDxqh;       spf=pass
 (google.com: domain of swboyd@chromium.org designates 2607:f8b0:4864:20::102c
 as permitted sender) smtp.mailfrom=swboyd@chromium.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=chromium.org
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

Quoting Sami Tolvanen (2020-12-11 10:46:22)
> LLD always splits sections with LTO, which increases module sizes. This
> change adds linker script rules to merge the split sections in the final
> module.
> 
> Suggested-by: Nick Desaulniers <ndesaulniers@google.com>
> Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
> Reviewed-by: Kees Cook <keescook@chromium.org>
> ---

This patch fixes a warning I see on arm64 devices running the 5.10 LTS kernel.
Can we queue this to the stable tree once it lands in Linus' tree?

 sysfs: cannot create duplicate filename '/module/configs/sections/__patchable_function_entries'
 CPU: 3 PID: 4173 Comm: modprobe Not tainted 5.10.13 #10
 Hardware name: Google Lazor (rev3+) with KB Backlight (DT)
 Call trace:
  dump_backtrace+0x0/0x1c0
  show_stack+0x24/0x30
  dump_stack+0xc0/0x120
  sysfs_warn_dup+0x74/0x90
  sysfs_add_file_mode_ns+0x12c/0x178
  internal_create_group+0x264/0x36c
  sysfs_create_group+0x24/0x30
  add_sect_attrs+0x154/0x188
  mod_sysfs_setup+0x208/0x284
  load_module+0xff8/0x1158
  __arm64_sys_finit_module+0xb4/0xf0
  el0_svc_common+0xf4/0x1c0
  do_el0_svc_compat+0x2c/0x40
  el0_svc_compat+0x10/0x1c
  el0_sync_compat_handler+0xc0/0xf0
  el0_sync_compat+0x178/0x180

The problem is that the section __patchable_function_entries is present
twice in the kernel module I've compiled. I see that
__patchable_function_entries is used on arm64 now that we have commit
a1326b17ac03 ("module/ftrace: handle patchable-function-entry") combined
with commit 3b23e4991fb6 ("arm64: implement ftrace with regs").

This linker script change nicely combines the section into one instead
of two.

Before:

$ readelf -WS configs.ko 
There are 29 section headers, starting at offset 0xad78:

Section Headers:
  [Nr] Name              Type            Address          Off    Size   ES Flg Lk Inf Al
  [ 0]                   NULL            0000000000000000 000000 000000 00      0   0  0
  [ 1] .plt              NOBITS          0000000000000000 000040 000001 00  AX  0   0 16
  [ 2] .init.plt         NOBITS          0000000000000000 000040 000001 00  AX  0   0  1
  [ 3] .text.ftrace_trampoline NOBITS          0000000000000000 000040 000001 00  AX  0   0  1
  [ 4] .text             PROGBITS        0000000000000000 000040 00004c 00  AX  0   0  4
  [ 5] .rela.text        RELA            0000000000000000 00aa10 000078 18   I 26   4  8
  [ 6] __patchable_function_entries PROGBITS        0000000000000000 000090 000008 00 WAL  4   0  8
  [ 7] .rela__patchable_function_entries RELA            0000000000000000 00aa88 000018 18   I 26   6  8
  [ 8] .rodata           PROGBITS        0000000000000000 000098 009c98 00   A  0   0  8
  [ 9] .rela.rodata      RELA            0000000000000000 00aaa0 000030 18   I 26   8  8
  [10] .init.text        PROGBITS        0000000000000000 009d30 000068 00  AX  0   0  4
  [11] .rela.init.text   RELA            0000000000000000 00aad0 0000f0 18   I 26  10  8
  [12] __patchable_function_entries PROGBITS        0000000000000000 009d98 000008 00 WAL 10   0  8
  [13] .rela__patchable_function_entries RELA            0000000000000000 00abc0 000018 18   I 26  12  8
  [14] .exit.text        PROGBITS        0000000000000000 009da0 000028 00  AX  0   0  4
  [15] .rela.exit.text   RELA            0000000000000000 00abd8 000048 18   I 26  14  8
  [16] .modinfo          PROGBITS        0000000000000000 009dc8 0000b1 00   A  0   0  1
  [17] .rodata.str1.1    PROGBITS        0000000000000000 009e79 00000a 01 AMS  0   0  1
  [18] .comment          PROGBITS        0000000000000000 009e83 0000ce 01  MS  0   0  1
  [19] .note.Linux       NOTE            0000000000000000 009f54 000018 00   A  0   0  4
  [20] .gnu.linkonce.this_module PROGBITS        0000000000000000 009f80 000380 00  WA  0   0 64
  [21] .rela.gnu.linkonce.this_module RELA            0000000000000000 00ac20 000030 18   I 26  20  8
  [22] .note.gnu.build-id NOTE            0000000000000000 00a300 000024 00   A  0   0  4
  [23] .note.gnu.property NOTE            0000000000000000 00a328 000020 00   A  0   0  8
  [24] .note.GNU-stack   PROGBITS        0000000000000000 00a348 000000 00      0   0  1
  [25] .gnu_debuglink    PROGBITS        0000000000000000 00a348 000018 00      0   0  4
  [26] .symtab           SYMTAB          0000000000000000 00a360 0004f8 18     27  43  8
  [27] .strtab           STRTAB          0000000000000000 00a858 0001b1 00      0   0  1
  [28] .shstrtab         STRTAB          0000000000000000 00ac50 000128 00      0   0  1
Key to Flags:
  W (write), A (alloc), X (execute), M (merge), S (strings), I (info),
  L (link order), O (extra OS processing required), G (group), T (TLS),
  C (compressed), x (unknown), o (OS specific), E (exclude),
  p (processor specific)

After:

$ readelf -WS configs.ko 
There are 26 section headers, starting at offset 0xad40:
 
Section Headers:
  [Nr] Name              Type            Address          Off    Size   ES Flg Lk Inf Al
  [ 0]                   NULL            0000000000000000 000000 000000 00      0   0  0
  [ 1] __patchable_function_entries PROGBITS        0000000000000000 000040 000010 00 WAL  5   0  8
  [ 2] .rela__patchable_function_entries RELA            0000000000000000 00a9e0 000030 18   I 23   1  8
  [ 3] .rodata           PROGBITS        0000000000000000 000050 009ca2 00 AMS  0   0  8
  [ 4] .rela.rodata      RELA            0000000000000000 00aa10 000030 18   I 23   3  8
  [ 5] .text             PROGBITS        0000000000000000 009cf4 00004c 00  AX  0   0  4
  [ 6] .rela.text        RELA            0000000000000000 00aa40 000078 18   I 23   5  8
  [ 7] .plt              NOBITS          0000000000000000 009d40 000001 00  AX  0   0 16
  [ 8] .init.plt         NOBITS          0000000000000000 009d40 000001 00  AX  0   0  1
  [ 9] .text.ftrace_trampoline NOBITS          0000000000000000 009d40 000001 00  AX  0   0  1
  [10] .init.text        PROGBITS        0000000000000000 009d40 000068 00  AX  0   0  4
  [11] .rela.init.text   RELA            0000000000000000 00aab8 0000f0 18   I 23  10  8
  [12] .exit.text        PROGBITS        0000000000000000 009da8 000028 00  AX  0   0  4
  [13] .rela.exit.text   RELA            0000000000000000 00aba8 000048 18   I 23  12  8
  [14] .modinfo          PROGBITS        0000000000000000 009dd0 0000b1 00   A  0   0  1
  [15] .comment          PROGBITS        0000000000000000 009e81 0000ce 01  MS  0   0  1
  [16] .note.Linux       NOTE            0000000000000000 009f50 000018 00   A  0   0  4
  [17] .gnu.linkonce.this_module PROGBITS        0000000000000000 009f80 000380 00  WA  0   0 64
  [18] .rela.gnu.linkonce.this_module RELA            0000000000000000 00abf0 000030 18   I 23  17  8
  [19] .note.gnu.build-id NOTE            0000000000000000 00a300 000024 00   A  0   0  4
  [20] .note.gnu.property NOTE            0000000000000000 00a328 000020 00   A  0   0  8
  [21] .note.GNU-stack   PROGBITS        0000000000000000 00a348 000000 00      0   0  1
  [22] .gnu_debuglink    PROGBITS        0000000000000000 00a348 000018 00      0   0  4
  [23] .symtab           SYMTAB          0000000000000000 00a360 0004c8 18     24  41  8
  [24] .strtab           STRTAB          0000000000000000 00a828 0001b1 00      0   0  1
  [25] .shstrtab         STRTAB          0000000000000000 00ac20 000119 00      0   0  1
Key to Flags:
  W (write), A (alloc), X (execute), M (merge), S (strings), I (info),
  L (link order), O (extra OS processing required), G (group), T (TLS),
  C (compressed), x (unknown), o (OS specific), E (exclude),
  p (processor specific)

>  scripts/module.lds.S | 24 ++++++++++++++++++++++++
>  1 file changed, 24 insertions(+)
> 
> diff --git a/scripts/module.lds.S b/scripts/module.lds.S
> index 69b9b71a6a47..18d5b8423635 100644
> --- a/scripts/module.lds.S
> +++ b/scripts/module.lds.S
> @@ -23,6 +23,30 @@ SECTIONS {
>         .init_array             0 : ALIGN(8) { *(SORT(.init_array.*)) *(.init_array) }
>  
>         __jump_table            0 : ALIGN(8) { KEEP(*(__jump_table)) }
> +
> +       __patchable_function_entries : { *(__patchable_function_entries) }
> +
> +       /*
> +        * With CONFIG_LTO_CLANG, LLD always enables -fdata-sections and
> +        * -ffunction-sections, which increases the size of the final module.
> +        * Merge the split sections in the final binary.
> +        */
> +       .bss : {
> +               *(.bss .bss.[0-9a-zA-Z_]*)
> +               *(.bss..L*)
> +       }
> +
> +       .data : {
> +               *(.data .data.[0-9a-zA-Z_]*)
> +               *(.data..L*)
> +       }
> +
> +       .rodata : {
> +               *(.rodata .rodata.[0-9a-zA-Z_]*)
> +               *(.rodata..L*)
> +       }
> +
> +       .text : { *(.text .text.[0-9a-zA-Z_]*) }
>  }
>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/161351146485.1254594.3592715065187730966%40swboyd.mtv.corp.google.com.
