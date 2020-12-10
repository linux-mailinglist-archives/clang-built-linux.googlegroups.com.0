Return-Path: <clang-built-linux+bncBDYJPJO25UGBBXXBZL7AKGQEPJJJPVY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53c.google.com (mail-pg1-x53c.google.com [IPv6:2607:f8b0:4864:20::53c])
	by mail.lfdr.de (Postfix) with ESMTPS id 2DB492D6AF1
	for <lists+clang-built-linux@lfdr.de>; Fri, 11 Dec 2020 00:36:00 +0100 (CET)
Received: by mail-pg1-x53c.google.com with SMTP id o128sf5129216pga.2
        for <lists+clang-built-linux@lfdr.de>; Thu, 10 Dec 2020 15:36:00 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1607643358; cv=pass;
        d=google.com; s=arc-20160816;
        b=Rcb1VJ3/I/cgUT8YwQ7Bg0ouJrASfwniT9Jq0OQmZUlPyPXfFiNP/QbVqZ3GExTQ6D
         slh0+XGdT4goWwPDROd/uIhA7w+wge1VF/w/wXT6ueJJAqW4FohfdUZimJH80d6yw9Wt
         627XW6q34WchJXD6Pg07O8rKu0/6V/mThj5yJoNxyMkFFc8A7VHJeaGk/dyj4XUlvh7j
         9Mcqb/dY/Rl7jy8RpDztGAFvL8iQ0mXdrdJ5m/ol0aWDz1YLmoSrpmI3tFsLh40iF/eX
         Fxwp8uP2QIdExwEWvL6P3DYhbnmR9svRiychv4FrKZiB8zDlXUL68Ph5ZiDmJC7txUAs
         TGeQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=Q5sh0zPdeI/SGZk0RC0JCr1FXRrjxtWg6P9XzYoBIDw=;
        b=SOeeS8zZHbc363i2WANcMuv+gC7CGmgf0TZvJ+YqvNbOArAQyt3BRVnUBcX1ybqZsw
         mYW0xyrzucS/5cFiTbhlpq4BJd/Jn5OrzWr+seXm4o3hz3ANCnostaaDcW/oI/oT2AU+
         hxyq7ZZUbOiosx77E5ROTS9Lp2fE2lK8ftrBr5H0IfN8i18oswqUjFKELDFvRPJaTWJz
         XVd/4rnBYiz/ABBhruSdg0iNuC0nprZ3EqkyLuSy3F60usWzkNtj3zKpCQFPgB76Ho6F
         ugwb3SEUbMUP1+v/1ouhRb4mVF7bmjvvzzBPp41bhHbjvncXfjnLKM1eX8b8iIrqZnNc
         wcqQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=d7fqM8sM;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::432 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Q5sh0zPdeI/SGZk0RC0JCr1FXRrjxtWg6P9XzYoBIDw=;
        b=FJdH0p2NI8QnHEr4z7GpGyfGGew/4DJHrS934ThmksQLLcbO7tY9Kz4ACSUYp20CS2
         B+yxD8AO28+1sz4YBvRerB4Ok+qWcFXA7gDCK7TpeFCt/j/TSjETNrOc+AQF7RHSJ2Zw
         3LxwMVyd4+6L0UtqJGUC8ZLj4BHXp++INJtGwTeT3mw4IUKb9OHwPGmDcx4/MDgvTmBU
         RijffntqU9FuXmYWm1lZ24ZwH5b/NUvPpFdt/AzcQLiG5ClEjZChYsLMpzFZMxnTqvjw
         hWekbA7X77Hjnr3wNgov9xthZsnzMUkEZbxEmnZuaMzJmkJsdVyFLkpIhHuiFBJBQdTS
         Vb4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Q5sh0zPdeI/SGZk0RC0JCr1FXRrjxtWg6P9XzYoBIDw=;
        b=mqnGa2QV+c6wKIrYbnQBSwVAhGl1HNHdztdOkMQuGpWBJAq/ztJ37kvhvS3LoyQsVr
         5Xw92ft+7EagB6xQ0Zmq1BZgobqd8UHDbCx4SD2M7EWgDTpSeGMkHjJvw+d0H1uhDZBg
         ptvMoKudbl/2KP0+MToONQwhsu/0cla1v+ZKoqF0mPqiqup/cg5zpsIVeJFk9f3VZRuE
         HV+h5zxPIwI1Sm+pNLghzAV34wXKiIYLc+riMSttcAyZE3FleGJLQdWtoR9B2WZrH8ry
         /wfFOyMu++MNFmB2mdv5m0EprzPgGh9qDW/T0Vw2FHY9HNaifpAyqbcXVSfIQ/yms1IA
         Z7IA==
X-Gm-Message-State: AOAM532jJKmZCguSHh3XZg0V/9LH1UHUTvNXpOemkpxnTaUrqoHecu07
	27jab6Dfqt/ZUEoAmhpNbZo=
X-Google-Smtp-Source: ABdhPJwu7olXzf59A13qdehfaDCenhpCYHNgJIjmuqW+GczhH5Y/ZDJtO9MRd/OWR6bUEb2xoZSPYA==
X-Received: by 2002:a63:b908:: with SMTP id z8mr9021114pge.396.1607643358758;
        Thu, 10 Dec 2020 15:35:58 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a65:640f:: with SMTP id a15ls589636pgv.6.gmail; Thu, 10 Dec
 2020 15:35:58 -0800 (PST)
X-Received: by 2002:a63:3247:: with SMTP id y68mr8877734pgy.10.1607643358141;
        Thu, 10 Dec 2020 15:35:58 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1607643358; cv=none;
        d=google.com; s=arc-20160816;
        b=AezahNLDYS2n+OTU8TzkfC7CM7zmZJMeydXPKZIwob+nyyza60PJmfkkR1sRt/Hqq5
         INe9GUJKcxhypo+oUFbe0KGWOL2xE8UAZG4aqSh266rHC+ZKgvbadKeYA1bon9AiN3se
         yF0YIZeYhikTcSzTwGd7RsrUC9p0FkwUYaqBiJyiwMD96LCOxGAaJzS+GVuzq9p+pyiB
         IE+WxZcYEmuiwJ5Yl4NibQGXYCsW8mAeB44CkZfvbFmTFe9smtIPKjmAcDGJwjl9XKmr
         QGSyuM30wABpWgQgub05AWMnfnnrzCabzTrRjcL0knCUto6/+LOcbtCwT2wlBji539jE
         k8Ww==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=1zotw90XLqcDkM4QBjrD8+g+RUBTvH9SBYxyWQvLQNY=;
        b=I0zIxneYTRKhsO2pJ5m+LeTSoGtEUwOsK8DhuL86IzVZ+3MxJIHc/7XsnrtfucyRC3
         +NHOmGgAiZcshm8XT6eoX8cTEoVY0cH+Ac4vFXJXgK8pK7IzIalsrnrUEtZFAMzzNF7K
         5ephzvZL6FLBCrtaEjXLh3tPICGW+a9NGsIeWlU322BoYGdtCCUXU4ZQqmyW64c+fZ+v
         YeRbc/U1DrOuao/hWnLKaaSJ7jET5SbIN9sZqAvN2cOxXi7xZw3ys6KRZIf8WPZtD83K
         c0EFop6US7xhrFEet/Ri8eAwCaVtL0QaSNUZnR1ZoGKXo2PMpv19DsxCRvPT/j5fwGh4
         eajg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=d7fqM8sM;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::432 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x432.google.com (mail-pf1-x432.google.com. [2607:f8b0:4864:20::432])
        by gmr-mx.google.com with ESMTPS id z14si568493pjr.3.2020.12.10.15.35.58
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 10 Dec 2020 15:35:58 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::432 as permitted sender) client-ip=2607:f8b0:4864:20::432;
Received: by mail-pf1-x432.google.com with SMTP id t8so5695237pfg.8
        for <clang-built-linux@googlegroups.com>; Thu, 10 Dec 2020 15:35:58 -0800 (PST)
X-Received: by 2002:aa7:80c9:0:b029:197:6775:4a5b with SMTP id
 a9-20020aa780c90000b029019767754a5bmr8905715pfn.36.1607643357664; Thu, 10 Dec
 2020 15:35:57 -0800 (PST)
MIME-Version: 1.0
References: <CAK8P3a20LXgEQkYSpbFFrJs1mdg19W72dp3pbebH9Pkpib2g-g@mail.gmail.com>
In-Reply-To: <CAK8P3a20LXgEQkYSpbFFrJs1mdg19W72dp3pbebH9Pkpib2g-g@mail.gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Thu, 10 Dec 2020 15:35:45 -0800
Message-ID: <CAKwvOdn79V-jaTH0mEtKyc-O+=Hj22bGtjKkZ1jriY2YABj-Lw@mail.gmail.com>
Subject: Re: objtool crashes with some clang produced .o files
To: Arnd Bergmann <arnd@kernel.org>
Cc: Josh Poimboeuf <jpoimboe@redhat.com>, Peter Zijlstra <peterz@infradead.org>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=d7fqM8sM;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::432
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

On Thu, Dec 3, 2020 at 5:56 AM Arnd Bergmann <arnd@kernel.org> wrote:
>
> I see occasional randconfig builds failing on x86 with clang-11
> and clang-12 when objtool crashes with a segmentation fault.
>
> The simplest test case I managed to create is
>
> $ echo "__SCK__tp_func_cdev_update() { __SCT__tp_func_cdev_update(); }" > file.c
> $ clang-12 -c file.c -O2 -fno-asynchronous-unwind-tables
> $ ./tools/objtool/objtool orc generate  file.o
> Segmentation fault (core dumped)
> $ clang-12 -S file.c -O2 -fno-asynchronous-unwind-tables -o-
> .text
> .file "file.c"
> .globl __SCK__tp_func_cdev_update      # -- Begin function
> __SCK__tp_func_cdev_update
> .p2align 4, 0x90
> .type __SCK__tp_func_cdev_update,@function
> __SCK__tp_func_cdev_update:             # @__SCK__tp_func_cdev_update
> # %bb.0:
> xorl %eax, %eax
> jmp __SCT__tp_func_cdev_update      # TAILCALL
> .Lfunc_end0:
> .size __SCK__tp_func_cdev_update, .Lfunc_end0-__SCK__tp_func_cdev_update
>                                         # -- End function
> .ident "Ubuntu clang version
> 12.0.0-++20201129052612+ce134da4b18-1~exp1~20201129163253.238"
> .section ".note.GNU-stack","",@progbits
> .addrsig
>
> The behavior seems to depend on the specific symbol names, and it only happens
> for the integrated assembler, not the GNU assembler.
>
> Attaching both .o files for reference.

Thanks for the report.

(gdb) r orc generate file.o
Starting program: /android0/linux-next/tools/objtool/objtool orc generate file.o

Program received signal SIGSEGV, Segmentation fault.
0x000000000040d7d3 in elf_rebuild_rela_reloc_section (sec=0xc24e30,
nr=<optimized out>) at elf.c:880
880                     relocs[idx].r_info =
GELF_R_INFO(reloc->sym->idx, reloc->type);
(gdb) bt
#0  0x000000000040d7d3 in elf_rebuild_rela_reloc_section
(sec=0xc24e30, nr=<optimized out>) at elf.c:880
#1  elf_rebuild_reloc_section (elf=<optimized out>,
sec=sec@entry=0xc24e30) at elf.c:901
#2  0x00000000004049b6 in create_static_call_sections (file=0x41f478
<file>) at check.c:520
#3  check (file=0x41f478 <file>) at check.c:2918
#4  0x000000000040b97c in cmd_orc (argc=<optimized out>,
argv=0x7fffffffda98) at builtin-orc.c:47
#5  0x000000000040dce9 in handle_internal_command (argc=argc@entry=3,
argv=argv@entry=0x7fffffffda90) at objtool.c:128
#6  0x000000000040dbff in main (argc=3, argv=0x7fffffffda90) at objtool.c:151
(gdb) p reloc
$1 = (struct reloc *) 0xc24fd0
(gdb) p *reloc
$2 = {list = {next = 0xc25070, prev = 0xc24eb8}, hash = {next = 0x0,
pprev = 0xc25080}, {rela = {r_offset = 0, r_info = 0, r_addend = 0},
rel = {r_offset = 0, r_info = 0}},
  sec = 0xc24e30, sym = 0x0, offset = 0, type = 2, addend = 2, idx =
0, jump_table_start = false}

So reloc->sym was NULL.

(gdb) p *sec
$2 = {list = {next = 0x7ffff559e068, prev = 0xc23bf0}, hash = {next =
0x0, pprev = 0x7ffff65d60d8}, name_hash = {next = 0x0, pprev =
0x7ffff6dd6888}, sh = {sh_name = 147, sh_type = 4,
    sh_flags = 64, sh_addr = 0, sh_offset = 0, sh_size = 48, sh_link =
7, sh_info = 8, sh_addralign = 8, sh_entsize = 24}, symbol_tree =
{rb_node = 0x0}, symbol_list = {next = 0xc24ea8,
    prev = 0xc24ea8}, reloc_list = {next = 0xc24fd0, prev = 0xc25070},
base = 0xc23bf0, reloc = 0x0, sym = 0x0, data = 0xc23db0, name =
0xc24f60 ".rela.static_call_sites", idx = 9,
  len = 0, changed = true, text = false, rodata = false, noinstr = false}

So .rela.static_call_sites was the problematic section.

(gdb) b tools/objtool/check.c:475
(gdb) r orc generate file.o
Breakpoint 1, create_static_call_sections (file=0x41f478 <file>) at check.c:475
475                     reloc->sym = insn->sec->sym;
(gdb) p insn->sec->sym
$4 = (struct symbol *) 0x0
(gdb) p insn->sec->name
$5 = 0xc22d26 ".text"

So some instruction in .text that contained a relocation for, we could
not determine a symbol for?  I'm curious why we're even in this loop
though, since we didn't do anything related to static calls...is
`file->static_call_list` not populated correctly? Is the final else
case from `add_jump_destinations` perhaps being hit and adding nodes
to file->static_call_list incorrectly?
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdn79V-jaTH0mEtKyc-O%2B%3DHj22bGtjKkZ1jriY2YABj-Lw%40mail.gmail.com.
