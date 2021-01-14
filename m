Return-Path: <clang-built-linux+bncBC2ORX645YPRBZO4QKAAMGQEB3OO65Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63a.google.com (mail-pl1-x63a.google.com [IPv6:2607:f8b0:4864:20::63a])
	by mail.lfdr.de (Postfix) with ESMTPS id BE15B2F6C83
	for <lists+clang-built-linux@lfdr.de>; Thu, 14 Jan 2021 21:49:42 +0100 (CET)
Received: by mail-pl1-x63a.google.com with SMTP id l11sf3891164plt.2
        for <lists+clang-built-linux@lfdr.de>; Thu, 14 Jan 2021 12:49:42 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1610657381; cv=pass;
        d=google.com; s=arc-20160816;
        b=rs87H1djiEJZjwTfWY3s04kh93o0W11MIc6tLt3TWRjRdiOPNaAcZjyCCyQNhUm+/Q
         VG3WW6GbVkIZvElC2kBbQL6o1eaIp5aj0Tq0ch2BFQKgLUY5g7qSqbtJ/V4n86zSSCyt
         SCaZoEqXbDt0QIG5WxrI0WB8IbMyE8TKDahr7ruq++SWaq4zSugtVgeWMxuRuBum1sxC
         mFtUN0Pz+GkRJZQaiXvPvI8uRS379juVJtwt6qLyIL/rzT6FjKSb31BzHoTDXppn7FBn
         0DBI5bxIhhC74su4Llp1zh+ClGX+KUuxZ245e7Aj5rD1+kHwzOrtPRHwHNHvs+4YgeTf
         935w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=75P9mlto2iS8ZEZzyPy4rHZwSLBGu4LQOqnVFiMDaZI=;
        b=XgOexoRUB/u6GmbZ3SfCnS1gIwJdV82qiZCitzH0GFTCowaBGOeMoFiPfM0x/byfhl
         rCV6fbtUuK7O0B7ajDw/+feAsTC3C29+bmc6Ym1WYZaIS4joNen+k6mkOza1sM3K6DLN
         DRW9JihvicuO8qKRK6SKxDnf8wtP8iWfYoJmD2hR7S0vvinKisMWfLHn9qXs2N5tRtqd
         HLaJoOQgI/GNWWmNx3VTA8XPICYk5+xfdBsEcQOnMnTzKfVo9VlyaPjR5cbWtiNclkUX
         tr7ms9ljVFF8tbRa9kndeUS8SSz2Su3xXVEMMKyIgVKNIM6ETQpc0Df028GadIwmwiFC
         tM1g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=GhZhw78k;
       spf=pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::92e as permitted sender) smtp.mailfrom=samitolvanen@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=75P9mlto2iS8ZEZzyPy4rHZwSLBGu4LQOqnVFiMDaZI=;
        b=bZlx0dw/Cb+9ykrb28w0EUOae/LcB5nRBRMWrQFzv72FsRsnF4roFIpO+7xE6pQC1I
         7wDJkh8kCNj6xaE9gDWou/LrtkTTUN3OYip5qTlIOsc/DzJ9Y38wXDTShjmigN7ToRe/
         dwHEp/P5JJERoY+i3kHkbxgT46kQrKIU7rPnfAdNmErCo0pfcF2tjttQT5TzG0E0Z61y
         9hT5+urqLJd4MlnMhr5DWDy4omfuvm0O3J7F0iEc06THKAX3zf0imnnpRj8re9Aw365w
         DdFoAA+eHKgrxEY1naSrhc7ZdWvVmyKXy24IBIOCWCRkHD4GuZwwMUhPPtQf7EnQUQkK
         3eQw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=75P9mlto2iS8ZEZzyPy4rHZwSLBGu4LQOqnVFiMDaZI=;
        b=mdVBP4I1HNhdcEvZIPdDQk1ZfowiUr2q8O2s4xvTV2y3BBuncGqiFxlcXiKLhP41n1
         6kmBaMcPZhhlpHFB16yD8IOGWtVHzgAXjmK7q6JkINokv1W/I1rCyRpHRaDjcRjF0a+2
         OILyP2BYfCideWxxKfuJJNPRalUla6F8OG004hULYdjyGKhp1vUt0LTLhfJ1I5K0L2eF
         dQKlEKfF0LOPQne0GGjdyF9mEo6vm0J23nH24YX3Q8S/6n9PGOpnvq3WjS5PLdVInes/
         OM5jEZ76DPFBaQWOK4KiG5zY+UjfSWZRQ1RSOYMyInzS0LtF2mBpB+SfQs8M9p6mzS61
         Q2YA==
X-Gm-Message-State: AOAM5330CjqUEqvg9juriGsu4t+XXCSM5O3AkbDn2rLiI4k2nJ0V/Sxa
	CFEgRujh+NO8R4Lymqh1ZJc=
X-Google-Smtp-Source: ABdhPJxgVBDUW4QOS+fEJ4pSaLAbTeq0Y57MaIhEhdgNpTxPQ4fMgIoXLzDdl6fcXOG8uDLTwNf8EQ==
X-Received: by 2002:a17:902:7592:b029:dc:3c87:1c63 with SMTP id j18-20020a1709027592b02900dc3c871c63mr9045354pll.47.1610657381504;
        Thu, 14 Jan 2021 12:49:41 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:7583:: with SMTP id j3ls3240964pll.0.gmail; Thu, 14
 Jan 2021 12:49:41 -0800 (PST)
X-Received: by 2002:a17:902:6ac2:b029:de:3560:391e with SMTP id i2-20020a1709026ac2b02900de3560391emr8672669plt.60.1610657380903;
        Thu, 14 Jan 2021 12:49:40 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1610657380; cv=none;
        d=google.com; s=arc-20160816;
        b=s/hZg8LU8BDJbiNY30uOAHpqGuoNaJo3JShAfsHo7Inzvt7MqqXrMVGzRrYQmPsrSE
         xUwUla4qZNDAYL0xcIEa29cdtMyd17J89s60u3cYT4OYTIQys66egvP73BZa6vr23hdz
         WSJLx1k9GxXpuD5/4pWADRSMr7JPonPcmh5XlYjnftPc9gfcbwGOZmAYNXqNj5ioJdJa
         UqfAt808LNZkEaK8gDRSRbRSIGkSxbQZCskeUC7MVihGoiPk6jUW0a4NDNuKvMjpXm+q
         gFch+DE9MgLYqjImnGrrwjT4IvBnaZYxH2cnPS17vsUw0xd8zNoAfUt9a9i0omBqJguf
         YyMg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=Pq7cIHZcRnyEqiZAtQ5+glIa6NXZ+uZ8K3ZIE+5W9aY=;
        b=vOsdFxO4opQU9rsc8VQDG6R+4O8iyTXFzrguNBxMruOTRo8I7M/Py6YmrsmmGJBrka
         WNAO1Nkb/rXpKLn0xNTgCYckkQSxKP02aowi8onbqTJ79TiJdWI2qqY8rLb2oOcqTR17
         2S5eCwjBNYgurcv2SOTQQ3NPcLweV5uPbn3+yJUp3WIZtsG8RCfmZJR6kehrJz10qeXd
         KfkYxfET2pPpAcWESML0HwhcEV5kbhq7/1yOCGSs7y1HW94I/tsPqn8bx0oAvh9tif/i
         JFkPCxG7hXTH8uvJ890VDq8Q8JH1f5UQrDjL+Jtwe1/PDbXz2W1reEpfHpfioQ8u9iTI
         3GXg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=GhZhw78k;
       spf=pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::92e as permitted sender) smtp.mailfrom=samitolvanen@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-ua1-x92e.google.com (mail-ua1-x92e.google.com. [2607:f8b0:4864:20::92e])
        by gmr-mx.google.com with ESMTPS id d22si464726pgb.1.2021.01.14.12.49.40
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 14 Jan 2021 12:49:40 -0800 (PST)
Received-SPF: pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::92e as permitted sender) client-ip=2607:f8b0:4864:20::92e;
Received: by mail-ua1-x92e.google.com with SMTP id n18so2201709ual.9
        for <clang-built-linux@googlegroups.com>; Thu, 14 Jan 2021 12:49:40 -0800 (PST)
X-Received: by 2002:ab0:2388:: with SMTP id b8mr7503434uan.122.1610657379762;
 Thu, 14 Jan 2021 12:49:39 -0800 (PST)
MIME-Version: 1.0
References: <cover.1610652862.git.jpoimboe@redhat.com> <c1889131d5de558e58700ba559e7d8606fe9c680.1610652862.git.jpoimboe@redhat.com>
In-Reply-To: <c1889131d5de558e58700ba559e7d8606fe9c680.1610652862.git.jpoimboe@redhat.com>
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Thu, 14 Jan 2021 12:49:28 -0800
Message-ID: <CABCJKudFxiYbuHN+NVJ76QfHCky80nvsb_J08THmMmmHuy0vLA@mail.gmail.com>
Subject: Re: [PATCH 12/21] objtool: Add CONFIG_CFI_CLANG support
To: Josh Poimboeuf <jpoimboe@redhat.com>
Cc: X86 ML <x86@kernel.org>, LKML <linux-kernel@vger.kernel.org>, 
	Peter Zijlstra <peterz@infradead.org>, Sedat Dilek <sedat.dilek@gmail.com>, 
	Kees Cook <keescook@chromium.org>, Nick Desaulniers <ndesaulniers@google.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Miroslav Benes <mbenes@suse.cz>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: samitolvanen@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=GhZhw78k;       spf=pass
 (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::92e
 as permitted sender) smtp.mailfrom=samitolvanen@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Sami Tolvanen <samitolvanen@google.com>
Reply-To: Sami Tolvanen <samitolvanen@google.com>
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

Hi Josh,

On Thu, Jan 14, 2021 at 11:41 AM Josh Poimboeuf <jpoimboe@redhat.com> wrote:
>
> The upcoming CONFIG_CFI_CLANG support uses -fsanitize=cfi, the
> non-canonical version of which hijacks function entry by changing
> function relocation references to point to an intermediary jump table.
>
> For example:
>
>   Relocation section '.rela.discard.func_stack_frame_non_standard' at offset 0x37e018 contains 6 entries:
>       Offset             Info             Type               Symbol's Value  Symbol's Name + Addend
>   0000000000000000  0002944700000002 R_X86_64_PC32          00000000000023f0 do_suspend_lowlevel + 0
>   0000000000000008  0003c11900000001 R_X86_64_64            0000000000000008 xen_cpuid$e69bc59f4fade3b6f2b579b3934137df.cfi_jt + 0
>   0000000000000010  0003980900000001 R_X86_64_64            0000000000000060 machine_real_restart.cfi_jt + 0
>   0000000000000018  0003962b00000001 R_X86_64_64            0000000000000e18 kretprobe_trampoline.cfi_jt + 0
>   0000000000000020  000028f300000001 R_X86_64_64            0000000000000000 .rodata + 12
>   0000000000000028  000349f400000001 R_X86_64_64            0000000000000018 __crash_kexec.cfi_jt + 0
>
>   0000000000000060 <machine_real_restart.cfi_jt>:
>     60: e9 00 00 00 00          jmpq   65 <machine_real_restart.cfi_jt+0x5>
>                         61: R_X86_64_PLT32      machine_real_restart-0x4
>     65: cc                      int3
>     66: cc                      int3
>     67: cc                      int3
>
> This breaks objtool vmlinux validation in many ways, including static
> call site detection and the STACK_FRAME_NON_STANDARD() macro.
>
> Fix it by converting those relocations' symbol references back to their
> original non-jump-table versions.  Note this doesn't change the actual
> relocations in the object itself, it just changes objtool's view of
> them.
>
> Reported-by: Sedat Dilek <sedat.dilek@gmail.com>
> Signed-off-by: Josh Poimboeuf <jpoimboe@redhat.com>
> ---
>  tools/objtool/elf.c | 28 ++++++++++++++++++++++++++++
>  tools/objtool/elf.h |  2 +-
>  2 files changed, 29 insertions(+), 1 deletion(-)
>
> diff --git a/tools/objtool/elf.c b/tools/objtool/elf.c
> index 292f015f7ec6..e357dc34cd7a 100644
> --- a/tools/objtool/elf.c
> +++ b/tools/objtool/elf.c
> @@ -382,6 +382,11 @@ static int read_sections(struct elf *elf)
>                 }
>                 sec->len = sec->sh.sh_size;
>
> +               /* Detect -fsanitize=cfi related sections */
> +               if (!strcmp(sec->name, ".text.__cfi_check") ||
> +                   !strncmp(sec->name, ".text..L.cfi.jumptable", 22))
> +                       sec->cfi_jt = true;
> +
>                 list_add_tail(&sec->list, &elf->sections);
>                 elf_hash_add(elf->section_hash, &sec->hash, sec->idx);
>                 elf_hash_add(elf->section_name_hash, &sec->name_hash, str_hash(sec->name));
> @@ -614,6 +619,29 @@ static int read_relocs(struct elf *elf)
>                                 return -1;
>                         }
>
> +                       /*
> +                        * Deal with -fsanitize=cfi (CONFIG_CFI_CLANG), which
> +                        * hijacks function entry by arbitrarily changing a lot
> +                        * of relocation symbol references to refer to an
> +                        * intermediate jump table.  Undo that conversion so
> +                        * objtool can make sense of things.
> +                        */
> +                       if (reloc->sym->sec->cfi_jt) {
> +                               struct symbol *func, *sym;
> +
> +                               if (sym->type == STT_SECTION)
> +                                       sym = find_func_by_offset(sym->sec,
> +                                                                 reloc->addend);

Clang points out that sym is uninitialized here. Should these be
reloc->sym instead?

Sami

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CABCJKudFxiYbuHN%2BNVJ76QfHCky80nvsb_J08THmMmmHuy0vLA%40mail.gmail.com.
