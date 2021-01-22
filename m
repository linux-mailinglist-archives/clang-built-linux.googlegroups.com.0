Return-Path: <clang-built-linux+bncBCS7XUWOUULBBM5DVKAAMGQES3E5YXY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33b.google.com (mail-ot1-x33b.google.com [IPv6:2607:f8b0:4864:20::33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A2432FFEA6
	for <lists+clang-built-linux@lfdr.de>; Fri, 22 Jan 2021 09:49:57 +0100 (CET)
Received: by mail-ot1-x33b.google.com with SMTP id u23sf1984096oth.22
        for <lists+clang-built-linux@lfdr.de>; Fri, 22 Jan 2021 00:49:56 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1611305396; cv=pass;
        d=google.com; s=arc-20160816;
        b=vV5R4GkGbEkiohduwlcrTghDrWTc19SSoqDsyYuoT1WJkZ11ntSZXEGH523lRGZ3wF
         2wLkUhpg6Dw1jHk9oA8YoMFN0GPIptPQqHDqV5ssR+DkHMeG2/KE3EHMCBSISUqrRDKd
         rjl56woX2L9ueDCDoCVl5YqjQK/si9InhGDX1O5I4ymyxE39eBDaRtcuHb3/lMr7llKc
         LLxTxvC4nHW+oECVmVvssB8PFLiHPlXw3je/5LoRraUhsMbHxV4d4S0BimoGWZnYm1Oj
         fBtgvG9iXszmu3u+h2JxA5VZKhWK/WVXne/Ry0XvWMLhyrpuEyYNNsDR1UV6SCHPzohH
         15yA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=kxkhinlH/TBhI1nBcnDZFoMXasL7GzCevRgReZ9jKs8=;
        b=PI/amKniRgUhF5f5Yd93b+v8A0Y68xmoors4XHJq+stcO/uDLYKXrsg5h+Ea/l1kiE
         9DXZ6cYcNjiQ4zgeFocNukJc1dwPrRUTK3RMd2445Amnop2Qv6eMxs0QDihyqsolwQbM
         2zGAgkR6WA3Bx4szG/5L4lNoggVOEJt6UWC+5ERmmgeCUeIkxqiIa7cE2SEQ3/JcwbtK
         FCeDtafgSsvN95f6qqlZcxBfe+O5z+Gk1+uDVd4Zn8IbiQSBBAfEWLKR/nOZX8ExrA8D
         LFpEOv4FApuR+YACb8X/XncKkCVdGAAZ5KBDuOUBhwJA+vJIKpWYEzXyreRB75SOWlO0
         IqPQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Q98YbcV2;
       spf=pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::1030 as permitted sender) smtp.mailfrom=maskray@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=kxkhinlH/TBhI1nBcnDZFoMXasL7GzCevRgReZ9jKs8=;
        b=qbD3FSDEluu2XKXHIdA4RKMCm6doXAJplJ0VNHcepoZl5SMRawCHfkKWEAlOIvqMwr
         /dk/k24jbue17MpCFNeDrQdZ4v7WTNUHCRE/h/TKZxHcD+NvQBGwDYgPLi073iiqIG0q
         hxzeDLCxygjNPJtzX/aWBENLPXE+2fBAzHX/qr33SlWGLVt/qyFERWHQJD3Uj0ClsAex
         vi6NltlWh1ExfDdSPWpvqSIbQNK8VB6IDeudv0vVblW1jzADq/xS9SXHh8gCLF/Wjo+r
         NVVJvt9NuWzfcCDYJbnuWw3SKSQaMxiwBjGDG1w7fFZcu2UudcVF3Z+878XQTQmiU+iG
         D4kw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=kxkhinlH/TBhI1nBcnDZFoMXasL7GzCevRgReZ9jKs8=;
        b=Mkhgzf925tDriUmpCkvBJZHppO0ozuRXpppOe/J7/a0CrOVgsqipSK83fNuqcE5tYZ
         HmZJvo+uebup0suwmpkUcZ5RQQEHTX67JktS4l5dzELvifzAVgJBJv27hZdHSUPetqul
         q2LZHHfQFEHjob5lP+AnKRj16KtoJ9AhCiL0w807yi6p+Cn67zjT0s6bGMZdRGfj3YyV
         cenUvDQgldQddNEbSPaQAQFCEdz6dWdMWzAkJ0N8KAYCzCV2bvguFS7eHlt3wu2iexv7
         Hi+p62zqqSvMhm74/IAxsMfMBTDUsZ7vc5DQMktw5FRh9o7U0pWN7eP9SrEMf4PbgBOA
         wYmA==
X-Gm-Message-State: AOAM531g6H+E39OQtxfP7U8vmA4TPxZbU8zdtlEjo2GRWWEx/4exkRlO
	O4rZGlTUOQPM2CS0pIZ8X0M=
X-Google-Smtp-Source: ABdhPJymiavX/FARqeY6IaOnMHXh8kzPYPJPN4eqwdHbmmJT84VG7GrIYaSe+sjiJIjkSo/oRMP1tQ==
X-Received: by 2002:a05:6830:796:: with SMTP id w22mr368742ots.297.1611305395872;
        Fri, 22 Jan 2021 00:49:55 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6830:1391:: with SMTP id d17ls650147otq.2.gmail; Fri, 22
 Jan 2021 00:49:55 -0800 (PST)
X-Received: by 2002:a05:6830:1d52:: with SMTP id p18mr2612128oth.27.1611305395449;
        Fri, 22 Jan 2021 00:49:55 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1611305395; cv=none;
        d=google.com; s=arc-20160816;
        b=zNwdUSORfQDlLVH1HVua7LLnG0Z3NeZwlwppW68lNdCAKRhx711dVkVecoXKc/bgy1
         Ie9kR8SgsOwnAETeGuLxDmF7LyEwTvs1jnW7n1TOL6nPgTO1nJUgVqkTgn+S8Aakg6+E
         1M3TdVjtiLNm4dLrOONmvxzkp+R8hb/1AYGoje3nThV38nCnxCtr7GPkvb6J9zE0C00p
         NlH7xqKWJ9VI/bjTq/13r2vZwyoI66BUZwROAfcc7BICu+Jt7bwMi6EU4QPq0n5p9TOi
         4ZcXGAGNmjsMFkBSqMLx5sGg8mmHVzoc2XZasSJ+ExbthcCWckj3oOm9ne9/Eglm2+jY
         /z6A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=vuYYxfHO/zPcYQBLEclWRDog1Ypxlh8KeuaA6+NsDvY=;
        b=pM7pfZUKTWqzGrgmdE3rW/H6sSdWfWIkU2w55SWKVQkCZDj7rwNXEFGoCX21FGx+uN
         bwDz17KpI/WILw2PskPQe4+devk2Au+sfhcOSH1H2y2VbwnXGQsyOdbltqtdlP9Gpcnr
         Yy2Sa+mNnkKhve5eqW6i7OLNrIor91mtujxpumrwJy98EEHzj+crJ46Wek5tcXhZgsoh
         XLBJ/J8qfaRT1PdgCI9R8nxW95cvjDkg/D3Rann86NVKbIMF0VJ4soWsEe0d0j4FjGim
         K0RATscUoMvSoX3aAhA/qlrBTd+fq83RZocS1OGhDb+cfEvic+xWY5DJlMbRv14KEoBv
         Q/kw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Q98YbcV2;
       spf=pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::1030 as permitted sender) smtp.mailfrom=maskray@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pj1-x1030.google.com (mail-pj1-x1030.google.com. [2607:f8b0:4864:20::1030])
        by gmr-mx.google.com with ESMTPS id s126si374813ooa.0.2021.01.22.00.49.55
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 22 Jan 2021 00:49:55 -0800 (PST)
Received-SPF: pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::1030 as permitted sender) client-ip=2607:f8b0:4864:20::1030;
Received: by mail-pj1-x1030.google.com with SMTP id cq1so3254797pjb.4
        for <clang-built-linux@googlegroups.com>; Fri, 22 Jan 2021 00:49:55 -0800 (PST)
X-Received: by 2002:a17:90a:da02:: with SMTP id e2mr4092438pjv.173.1611305394649;
 Fri, 22 Jan 2021 00:49:54 -0800 (PST)
MIME-Version: 1.0
References: <20210107185555.2781221-1-maskray@google.com> <20210114224819.1608929-1-maskray@google.com>
In-Reply-To: <20210114224819.1608929-1-maskray@google.com>
From: =?UTF-8?B?J0bEgW5nLXJ1w6wgU8OybmcnIHZpYSBDbGFuZyBCdWlsdCBMaW51eA==?= <clang-built-linux@googlegroups.com>
Date: Fri, 22 Jan 2021 00:49:43 -0800
Message-ID: <CAFP8O3JBkxYfQ+shsmu=8e1QE4Wza6vt69PaZGNegLKQS9b1DA@mail.gmail.com>
Subject: Re: [PATCH v3] x86: Treat R_386_PLT32 as R_386_PC32
To: Thomas Gleixner <tglx@linutronix.de>, Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>, 
	X86 ML <x86@kernel.org>
Cc: LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Arnd Bergmann <arnd@arndb.de>, 
	Nick Desaulniers <ndesaulniers@google.com>, Nathan Chancellor <natechancellor@gmail.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: maskray@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=Q98YbcV2;       spf=pass
 (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::1030
 as permitted sender) smtp.mailfrom=maskray@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: =?UTF-8?B?RsSBbmctcnXDrCBTw7JuZw==?= <maskray@google.com>
Reply-To: =?UTF-8?B?RsSBbmctcnXDrCBTw7JuZw==?= <maskray@google.com>
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

On Thu, Jan 14, 2021 at 2:48 PM Fangrui Song <maskray@google.com> wrote:
>
> This is similar to commit b21ebf2fb4cd ("x86: Treat R_X86_64_PLT32 as
> R_X86_64_PC32"), but for i386.  As far as Linux kernel is concerned,
> R_386_PLT32 can be treated the same as R_386_PC32.
>
> R_386_PC32/R_X86_64_PC32 are PC-relative relocation types with the
> requirement that the symbol address is significant.
> R_386_PLT32/R_X86_64_PLT32 are PC-relative relocation types without the
> address significance requirement.
>
> On x86-64, there is no PIC vs non-PIC PLT distinction and an
> R_X86_64_PLT32 relocation is produced for both `call/jmp foo` and
> `call/jmp foo@PLT` with newer (2018) GNU as/LLVM integrated assembler.
>
> On i386, there are 2 types of PLTs, PIC and non-PIC. Currently the
> convention is to use R_386_PC32 for non-PIC PLT and R_386_PLT32 for PIC
> PLT.
>
> clang-12 -fno-pic (since
> https://github.com/llvm/llvm-project/commit/a084c0388e2a59b9556f2de0083333232da3f1d6)
> can emit R_386_PLT32 for compiler generated function declarations as
> well to avoid a canonical PLT entry (st_shndx=0, st_value!=0) if the
> symbol turns out to be defined externally. GCC/GNU as will likely keep
> using R_386_PC32 because (1) the ABI is legacy (2) the change will drop
> a GNU ld non-default visibility ifunc for shared objects.
> https://sourceware.org/bugzilla/show_bug.cgi?id=27169
>
> Link: https://github.com/ClangBuiltLinux/linux/issues/1210
> Reported-by: Arnd Bergmann <arnd@arndb.de>
> Signed-off-by: Fangrui Song <maskray@google.com>
> Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
> Reviewed-by: Nathan Chancellor <natechancellor@gmail.com>
> Tested-by: Nick Desaulniers <ndesaulniers@google.com>
> Tested-by: Nathan Chancellor <natechancellor@gmail.com>
>
> ---
> Change in v2:
> * Improve commit message
> ---
> Change in v3:
> * Change the GCC link to the more relevant GNU as link.
> * Fix the relevant llvm-project commit id.
> ---
>  arch/x86/kernel/module.c | 1 +
>  arch/x86/tools/relocs.c  | 2 ++
>  2 files changed, 3 insertions(+)
>
> diff --git a/arch/x86/kernel/module.c b/arch/x86/kernel/module.c
> index 34b153cbd4ac..5e9a34b5bd74 100644
> --- a/arch/x86/kernel/module.c
> +++ b/arch/x86/kernel/module.c
> @@ -114,6 +114,7 @@ int apply_relocate(Elf32_Shdr *sechdrs,
>                         *location += sym->st_value;
>                         break;
>                 case R_386_PC32:
> +               case R_386_PLT32:
>                         /* Add the value, subtract its position */
>                         *location += sym->st_value - (uint32_t)location;
>                         break;
> diff --git a/arch/x86/tools/relocs.c b/arch/x86/tools/relocs.c
> index ce7188cbdae5..717e48ca28b6 100644
> --- a/arch/x86/tools/relocs.c
> +++ b/arch/x86/tools/relocs.c
> @@ -867,6 +867,7 @@ static int do_reloc32(struct section *sec, Elf_Rel *rel, Elf_Sym *sym,
>         case R_386_PC32:
>         case R_386_PC16:
>         case R_386_PC8:
> +       case R_386_PLT32:
>                 /*
>                  * NONE can be ignored and PC relative relocations don't
>                  * need to be adjusted.
> @@ -910,6 +911,7 @@ static int do_reloc_real(struct section *sec, Elf_Rel *rel, Elf_Sym *sym,
>         case R_386_PC32:
>         case R_386_PC16:
>         case R_386_PC8:
> +       case R_386_PLT32:
>                 /*
>                  * NONE can be ignored and PC relative relocations don't
>                  * need to be adjusted.
> --
> 2.30.0.296.g2bfb1c46d8-goog
>

Ping:)

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAFP8O3JBkxYfQ%2Bshsmu%3D8e1QE4Wza6vt69PaZGNegLKQS9b1DA%40mail.gmail.com.
