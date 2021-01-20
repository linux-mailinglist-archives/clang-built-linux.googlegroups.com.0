Return-Path: <clang-built-linux+bncBDYJPJO25UGBB5NOUKAAMGQEV3O7XYY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3a.google.com (mail-io1-xd3a.google.com [IPv6:2607:f8b0:4864:20::d3a])
	by mail.lfdr.de (Postfix) with ESMTPS id AF49B2FDB2D
	for <lists+clang-built-linux@lfdr.de>; Wed, 20 Jan 2021 21:49:58 +0100 (CET)
Received: by mail-io1-xd3a.google.com with SMTP id t15sf7582299ioi.14
        for <lists+clang-built-linux@lfdr.de>; Wed, 20 Jan 2021 12:49:58 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1611175797; cv=pass;
        d=google.com; s=arc-20160816;
        b=IU/S1/43IZnbcIcDi4HWag19yZm59Y6ef3NyTGFASCZcFIoYWrjwGrCMdXIc++Lg0F
         jRAt8XAlHAAkxKpNYYXsrxAck/VrKmcpFOz+h2OeRLzDz82MvBcwA73NsVA049CiY69L
         BY5TJp7YoudI7nE+5ZY2pNm20mAJraHzEb7gaXWIzwoR4+Iz/V3V7wvb5pz0MD74T1vn
         pqRI5dDOxs5kAgZxfNdrO2DWyAixQNVx0N0T2EfW2QrK7bVKCyO4/OqDGoS5Ay0cD3Q5
         vQr+sG+t/XGpGUQowRBiR8OVil/S7zdG0mmUHrvMKqSNFmqQdi87lVZefRpCSlJ9GBLm
         ow7g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=EJDBixMBGMJfzsXfn3dati53WGaecQ8HipFHHjF1/iI=;
        b=oKpfEbBAkarFeOuSAs82qDjbHKiokpq8TA+n0O+osFivZiYU6rdVidzuWd24rSuGmn
         /2h0NxdV4w/oBjX7abXtG7kUEj3YitgwYPyl6edjH5KWTN+frF/AISuOQgEestKBkbNN
         cFolGWeNGyF2GjP5P0rXYONHbVlZDRdy2Xe4ozfg0sSo4n5J7iH9pbNFKX+nFIsxiH4K
         4ONBM5tb5fzcrNuUj92wPirUVul+CUuaqGYOvum1mQ/IWJZE9y7T9rHa/Li7PXtdGpAY
         fcQhtDBq+e1rTc2cKykKlKtgZ3nZg59w7oYpVtA2cp2Mlxi6MQppGB2RDYsKFrgEnO5t
         yrmg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=ZeLkkeFd;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::532 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=EJDBixMBGMJfzsXfn3dati53WGaecQ8HipFHHjF1/iI=;
        b=W3+oXcqYT4NGs1dp2dkhjD2roj82kpavADHL8d5DhsKRoXjL4p0nMnlEcNLfC+Kk+r
         XnbZkWSQi0YSqCpPIc1tGujZxpsWZ8VXu8a9T5+3QVtKH/sfUHUsXt8AC/q5PUln7T7u
         yb2rsLlPSEGh89QW/KEpu+vUxwT7/Z/CaQNYdTE/p8MTAztz44ctFh4nUPJVw0fl8qSD
         a0tHWQCoFv2dE93mlg0NbkCbKEjQ0/QgLXvQA9p9IqSfOm6U1b/VQXnEry9asAZX3/by
         fxx6IuTeg9PnP0BV8FnPM8/C3vS8nwLjGJ6yklmtg/uuEslPI0RjhohBptmJisHvlfAh
         GPyQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=EJDBixMBGMJfzsXfn3dati53WGaecQ8HipFHHjF1/iI=;
        b=mwWPlbX5FAKVwSXoelmZRGjCKtI25eXaPpsOCJ182yeV9Du5EEw8UlWn6vMQB9qwNa
         55fmkfheVhGM99ahxmQ1lKwt5nAmUW25hRSApptf7yQ9+Z7HWou/JfttZJGFkmGM09f7
         64HSv4dkkl+UUC108aX+Wxh3s2rhkYZQnw1Ddg0XCRHhiTi1X4UXgy3E+tFFULiohBtr
         PKiQ0cYs4FqnuCU/5ie98lGzfBqsxzI08zKHNOmYkEmeqey1N/2UfGDv+DffQ5NwfLBa
         f7c/h7Y0CWyeiWAWujQGC3oVnZyoCg2ij1ZD1xeRoEvcPKTvtyp68OrP2hO1fLq1Z0oF
         42bg==
X-Gm-Message-State: AOAM533JHOSDWHh9Qz61EKR8BDIjdKYa1GWJnMq4XY6PPEuQ/g6INqjh
	hv5hyHFAq87cly/aiZuWe4k=
X-Google-Smtp-Source: ABdhPJw0w4V3elTthbVmo0yWrgKaep3A9AoGfedtAO6pg1BxMM5Q1aeWXopS/8bQUkZcWKikWZRfYg==
X-Received: by 2002:a92:ac08:: with SMTP id r8mr9359761ilh.166.1611175797712;
        Wed, 20 Jan 2021 12:49:57 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a6b:7b4a:: with SMTP id m10ls1028860iop.0.gmail; Wed, 20 Jan
 2021 12:49:57 -0800 (PST)
X-Received: by 2002:a6b:d21a:: with SMTP id q26mr8239580iob.128.1611175797188;
        Wed, 20 Jan 2021 12:49:57 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1611175797; cv=none;
        d=google.com; s=arc-20160816;
        b=ovJL0bMQDy64Ls2//IXyPFrTAUCZSzLds0a/9LZu3Nn0L5LUeOaKzfBEVzj9dUWdaZ
         2Z/u1qs5hTIhTK1lb9fTIwh3Oas1sp3KwxBcdVX+iYV5GMV+MedsvyrCBaRZzGD2mqN6
         6haqLs3nXW1NeVz7Q9UTPY8j1wapqe60mClbZbwTCZ8+esEGrdZAvdhtekLzOoPdhHXD
         hfqnyiVSXBPbaHdRWoDTnUJPMrMK4E0IKrr0Hh9JaNz/FzTP0vGN4nolDnQko35XzaX0
         5sOPbq/OUcTVEPJN8nPmsDxyELMyYhffZbZC6FFiYqy71COSsRYpRz/dl9o9A2Ju4e5j
         zLDw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=2PCMK6LrtscTQFPFN7wgOBbSvS+vkpRY//2YUUy1EvQ=;
        b=o3EnmJ733kT7fylzuiVxiE3tBq7aDE55P6FT+BBfYi1XevkV4bKWoeOSQ9sRnuJZpN
         0JxwbTdowUp2uAWKyimWJIh9TaCV52jPGLv22uB20lnuf1NuelV/YNWWvJ0yDMYpw79w
         wl9YKCfidzS2wUcGWZD43XEebgf3FP04VBbeUE5ODbZuZQB7Rb2LeZExgbc1FrLjJcXr
         v7aeyFUIAYoNOF+N1mxM4AyrMgtf7S1twn4ZAoReTLC+Zs17oFpRQlaPzPLnw99txH0/
         C++c5iCUN9FNtIGsngVJynZw6PDgdaz3SAcGE+PGWQI+5uOVR17ORtjAiUbs0iNPWONq
         rFoQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=ZeLkkeFd;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::532 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x532.google.com (mail-pg1-x532.google.com. [2607:f8b0:4864:20::532])
        by gmr-mx.google.com with ESMTPS id c2si354247ilj.3.2021.01.20.12.49.57
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 20 Jan 2021 12:49:57 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::532 as permitted sender) client-ip=2607:f8b0:4864:20::532;
Received: by mail-pg1-x532.google.com with SMTP id n25so16052471pgb.0
        for <clang-built-linux@googlegroups.com>; Wed, 20 Jan 2021 12:49:57 -0800 (PST)
X-Received: by 2002:a62:7896:0:b029:1b6:7319:52a7 with SMTP id
 t144-20020a6278960000b02901b6731952a7mr11125746pfc.30.1611175796350; Wed, 20
 Jan 2021 12:49:56 -0800 (PST)
MIME-Version: 1.0
References: <2b2a556c-5050-abe4-32f6-72621624bd8f@intel.com>
In-Reply-To: <2b2a556c-5050-abe4-32f6-72621624bd8f@intel.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Wed, 20 Jan 2021 12:49:46 -0800
Message-ID: <CAKwvOdk_yB9esvxyuYQ9zdraiK41fm5ncbdzw4GvLnX8FXbShQ@mail.gmail.com>
Subject: Re: torture: Unknown symbol _GLOBAL_OFFSET_TABLE_ (err -2)
To: "Chen, Rong A" <rong.a.chen@intel.com>
Cc: Fangrui Song <i@maskray.me>, clang-built-linux <clang-built-linux@googlegroups.com>, 
	lkp <lkp@intel.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=ZeLkkeFd;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::532
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

https://github.com/ClangBuiltLinux/linux/issues/1250

On Fri, Dec 18, 2020 at 1:47 AM Chen, Rong A <rong.a.chen@intel.com> wrote:
>
> 0day found a regression on commit
> a084c0388e2a59b9556f2de0083333232da3f1d6 which causes the below issue:
>
>
> user  :notice: [   90.913529] 2020-12-17 22:53:55 modprobe locktorture
>
> kern  :warn  : [   90.925547] torture: Unknown symbol
> _GLOBAL_OFFSET_TABLE_ (err -2)
> user  :err   : [   90.980297] modprobe: ERROR: could not insert
> 'locktorture': Unknown symbol in module, or unknown parameter (see dmesg)
>
>
>
> commit a084c0388e2a59b9556f2de0083333232da3f1d6
> Author: Fangrui Song <i@maskray.me>
> Date:   Sat Dec 5 14:54:37 2020 -0800
>
>      [TargetMachine] Don't imply dso_local on function declarations in
> Reloc::Static model for ELF/wasm
>
>      clang/lib/CodeGen/CodeGenModule sets dso_local on applicable
> function declarations,
>      we don't need to duplicate the work in
> TargetMachine:shouldAssumeDSOLocal.
>      (Actually the long-term goal (started by r324535) is to drop
> TargetMachine::shouldAssumeDSOLocal.)
>
>      By not implying dso_local, we will respect
> dso_local/dso_preemptable specifiers
>      set by the frontend. This allows the proposed
> -fno-direct-access-external-data
>      option to work with -fno-pic and prevent a canonical PLT entry
> (SHN_UNDEF with non-zero st_value)
>      when taking the address of a function symbol.
>
>      This patch should be NFC in terms of the Clang emitted assembly
> because the case
>      we don't set dso_local is a case Clang sets dso_local. However,
> some tests don't
>      set dso_local on some function declarations and expose some
> differences. Most
>      tests have been fixed to be more robust in the previous commit.
>
> :040000 040000 930703e51e21ae9aea20ad64530d74ea05ea8f42
> 01c6ecbff5899804cdd30358c09dd36119859235 M      llvm
>
>
>
> git bisect start
> # bad: [eea67baf8706d82268d26e908cf5415c5af114ff] [llvm-profgen][NFC]
> Fix test failure by making unwinder's output deterministic
> git bisect bad eea67baf8706d82268d26e908cf5415c5af114ff
> # good: [175ebad958a0ebaf6c56c20ab30b9d4347742c29] DebugInfo: remove
> unnecessary mtriple from test/DebugInfo/X86/abstract_origin.ll
> git bisect good 175ebad958a0ebaf6c56c20ab30b9d4347742c29
> # good: [c4a04059026b98e8c23981f1195a61494a661cdb] Add `Operation*
> OpState::operator->()` to provide more convenient access to members of
> Operation.
> git bisect good c4a04059026b98e8c23981f1195a61494a661cdb
> # good: [ad923edfc1ce0c0b60e8270954c8d098aab3c3f8] [RISCV] Add support
> for printing pcrel immediates as absolute addresses in llvm-objdump
> git bisect good ad923edfc1ce0c0b60e8270954c8d098aab3c3f8
> # bad: [9fe1809f8cac141fdb5cf7e6e05ef1ea4818343c] [X86] Delete 3 unused
> declarations
> git bisect bad 9fe1809f8cac141fdb5cf7e6e05ef1ea4818343c
> # good: [8925d2347432b69d7e4b721a4ced85df0ad782b1] [BasicAA] Add recphi
> tests with nested loops (NFC)
> git bisect good 8925d2347432b69d7e4b721a4ced85df0ad782b1
> # bad: [ee607ed5c36efd8e0536ddbeab1f2025b0e5f045] [debugserver] Call
> posix_spawnattr_setarchpref_np throught the fn ptr.
> git bisect bad ee607ed5c36efd8e0536ddbeab1f2025b0e5f045
> # good: [68edf39ededf97a12602676f9cd537ed689151f0] [TargetMachine]
> Simplify shouldAssumeDSOLocal by processing ExternalSymbolSDNode early
> git bisect good 68edf39ededf97a12602676f9cd537ed689151f0
> # bad: [a084c0388e2a59b9556f2de0083333232da3f1d6] [TargetMachine] Don't
> imply dso_local on function declarations in Reloc::Static model for ELF/wasm
> git bisect bad a084c0388e2a59b9556f2de0083333232da3f1d6
> # good: [37f0c8df47d84ba311fc9a2c1884935ba8961e84] [X86] Emit @PLT for
> x86-64 and keep unadorned symbols for x86-32
> git bisect good 37f0c8df47d84ba311fc9a2c1884935ba8961e84
> # good: [bfda69416c6d0a76b40644b1b0cbc1cbca254a61] [BasicAA] Fix a bug
> with relational reasoning across iterations
> git bisect good bfda69416c6d0a76b40644b1b0cbc1cbca254a61
> # good: [6b6c3aaeacfdc4a482de4af41719b0a4b50aeadf] [test] Add explicit
> dso_local to function declarations in static relocation model tests
> git bisect good 6b6c3aaeacfdc4a482de4af41719b0a4b50aeadf
> # first bad commit: [a084c0388e2a59b9556f2de0083333232da3f1d6]
> [TargetMachine] Don't imply dso_local on function declarations in
> Reloc::Static model for ELF/wasm
>
> Best Regards,
> Rong Chen
>
> --
> You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/2b2a556c-5050-abe4-32f6-72621624bd8f%40intel.com.



-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdk_yB9esvxyuYQ9zdraiK41fm5ncbdzw4GvLnX8FXbShQ%40mail.gmail.com.
