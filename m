Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBPUV7L3AKGQE6Z24MVY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53d.google.com (mail-pg1-x53d.google.com [IPv6:2607:f8b0:4864:20::53d])
	by mail.lfdr.de (Postfix) with ESMTPS id 886961F1F64
	for <lists+clang-built-linux@lfdr.de>; Mon,  8 Jun 2020 21:00:17 +0200 (CEST)
Received: by mail-pg1-x53d.google.com with SMTP id x186sf13798708pgb.6
        for <lists+clang-built-linux@lfdr.de>; Mon, 08 Jun 2020 12:00:17 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1591642815; cv=pass;
        d=google.com; s=arc-20160816;
        b=tCfvRI3jNZhAFdfgHaZWc2/a6N52UujcynPLBbZcyAVi/VFPCtkUe5Flv3te+eGTzI
         Aa3aexsP7+xZaYCILeMZuIu87DlGgaGvnYj9e7qion4RIF/9xfTVu5e6TuE51rAVfaac
         nciG2hdJIL33+h3Mxjs3w5FF8NtDS6L5HqKR2zCVaA8ruV1FdNRvmCavbaO39WiUrEhT
         PJXkQ3iZ82coYqxB8pQb/qcMwQME1dlSY2M+T5+DLHhFyLn8mZzgTXTBf8ISuVsZI3u/
         HY9ghoUqBs/PHsxcI0g7VAG9vv3rcnXZ5ahGbKhF/eNaQb08YCC0BL64mHrMH8xcCSnH
         x6gw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=KCRWJ2yZEzP4xOPbRirZFho6A/DXAFqrJYbhEKPg7HE=;
        b=YaOIaA/McLj3Zr0PiT24/ac5hO+mZkkurcVZAjaU13/xYNuv0bTgKCMmulc0JAl3SQ
         /8zCnG4uroKtbq//RNGbQFykRQpQEDooWOfGdurR4G64S3MVmLhnO4UYrTTljHxCnSzS
         VeC7YY7SUNES77G1M8f8dr0caDS70kS23pHUdcsE9X1qAGM81X285IzzAilvTylEtmrp
         eNmNY2X3Cr1RmlAasBfs3kyk01Gwgw/99TufDU9uQUhMiP8PoBJoWKqSPVSeQYM1eaZz
         QavC16gBrreFdvFBV9XiEo2lbkAMV8tU/I4iyK9uAYw+jKQigKTuB9BxCncL/fJIZH3I
         86ag==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=OQllnKXy;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::642 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=KCRWJ2yZEzP4xOPbRirZFho6A/DXAFqrJYbhEKPg7HE=;
        b=Baoq76olSzXLShPbsEBtzv2jU4hvlnRo4qKaCmyvPO8ah1fvQHYpEze4v7rytGl2sh
         uwvi5rI3fcXrP8qgcnZmElpotZBxTpRYt0foYf22aYRZsuwj7i7N56SXvPoxb5K3bxTy
         gnPxM2D7QgFzs3ml+KH+FGxkIEKWoIKe7a23YzbBysbtLhrTwMpV91o9raOdpyOs2iRR
         VjRXWIxSNUMD/NbA6C7IA1ZDh/03pQyK71f/q3KDsm5ha4VLRt4YuFMNgyaEf58jpL2f
         fRbYva4LIfBWQlzhDnOXTMNFYlTmmj0vxv4mc92RmW2x6ZIvnQ7310BLH4CYh34hjmKE
         1Low==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=KCRWJ2yZEzP4xOPbRirZFho6A/DXAFqrJYbhEKPg7HE=;
        b=rpwADmdU5vfIe0mVYUHLNvQQRMbJ2erRINkmY/z6+Z1+5aj0Gdp4//RFKjSiDoWRAt
         lY84R1vY8/GiBGgI3I/bQgICLq6nrXAsCkg7+BgBvGP7w+aJPCF2m7/ZSiq+JXS9qpRA
         X6rCWTqkXQ7IFEDVKKRRa6Cbp6A50Ryhsnu4qsQObBY90q7enRIf2KiOt4h9A2yafnwL
         Fm5QudLAjUnGIAPMcbcwdxiJNcxWjBV0YbhGXBw3j/08cwwh4UIadsiMilw8n6oY2pbG
         s8nBJa3YdrazG0vHk25388AyCJSgmcgH9cVSByS0344aBjHSe1Bu6veuphH9J6m3LKUb
         9kVw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530ScGgq2jd0FXhSNphmrRxLsoaOWfs4Un/7K/hIB816K+L7aYZe
	bNi0lH96DvNqPqWDodJJMlo=
X-Google-Smtp-Source: ABdhPJxrXBIbgmPa1OA/ZpGR3Y6/Z+kfstmDsFqDwZkd6NEXpX9yB3C2rcOxjva5JU0XEUaHMtjK5w==
X-Received: by 2002:a17:902:8c84:: with SMTP id t4mr164345plo.315.1591642815082;
        Mon, 08 Jun 2020 12:00:15 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:384f:: with SMTP id h15ls4739020pgn.0.gmail; Mon, 08 Jun
 2020 12:00:14 -0700 (PDT)
X-Received: by 2002:a05:6a00:1589:: with SMTP id u9mr6639656pfk.201.1591642814589;
        Mon, 08 Jun 2020 12:00:14 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1591642814; cv=none;
        d=google.com; s=arc-20160816;
        b=l2T2/R2WD/zHWdknEqXYOcMaVQ4kHsei5COCgwhsUCz6Z4Afgv4FANXs3q0wErjdpN
         Kz53p+tpiEtj2X6Q1ruecQQUZ61imRs6NWztvkbk29B0m2RaUJGXg6ySeTU3LxSNebhK
         GDdI1Xeke8OkB6GR0L6pwKDV+n+h3Xhvo3FHf3gVMUssqUu1QeRUVYIXJ+zki8t0CELd
         6yxCd433pT2qrcC+UzX6UT7eMD+62R2XXKFaq7vqK2jPupIiuEnJvj3qZuGmR03wbt9k
         2X8VJVh+9ZStc8I4cf9dEm9Pfc3B6r3gpxFTsFLqk65x5twgz2yIRXMMzqPRLOdTaRSs
         7/7A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=o1g6czJz9uyGSzG+TlXDs+6TvCXn/pRZ6dFmlQhgI+4=;
        b=w7bY4bnFbJzlgP5YDvOOAuVnylIYlXVD5JCq66v/H2yox79D3wn7EsWX5EUCnC2BfD
         lFAIoH/V8Zjk4PF0fawq00Nz8vvIPN4XUrPVBdTWciACU8Am2ynrbFz1jAhN48nv3M0U
         u2mjxwjZiVbWGOUyNOj3OrDODI0rs5OTOBXEet7X28v0ERD5Z8cZ23stsWLXUBD0g+Eg
         vnhP8KONIONXFZ5xy1sTMYNOa2/uqxaWEUs5aQc7gxgL72upQu2bU6uXtyCpMDHr2sJO
         sF1m8+RsnS5ahWGSKYsGVsxpVgFB5RtWngSZvqeja1ddSYzv+OnUfT4tPqKXYgZavmHR
         8N2Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=OQllnKXy;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::642 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pl1-x642.google.com (mail-pl1-x642.google.com. [2607:f8b0:4864:20::642])
        by gmr-mx.google.com with ESMTPS id q1si6716pjj.0.2020.06.08.12.00.14
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 08 Jun 2020 12:00:14 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::642 as permitted sender) client-ip=2607:f8b0:4864:20::642;
Received: by mail-pl1-x642.google.com with SMTP id t7so7026030plr.0
        for <clang-built-linux@googlegroups.com>; Mon, 08 Jun 2020 12:00:14 -0700 (PDT)
X-Received: by 2002:a17:90b:310e:: with SMTP id gc14mr690238pjb.35.1591642813749;
        Mon, 08 Jun 2020 12:00:13 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id d2sm7874555pfc.7.2020.06.08.12.00.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 08 Jun 2020 12:00:12 -0700 (PDT)
Date: Mon, 8 Jun 2020 12:00:11 -0700
From: Kees Cook <keescook@chromium.org>
To: kernel test robot <rong.a.chen@intel.com>
Cc: clang-built-linux@googlegroups.com, LKP <lkp@lists.01.org>,
	"Linus, Torvalds," <torvalds@linux-foundation.org>,
	Andrew Morton <akpm@linux-foundation.org>,
	Linux Memory Management List <linux-mm@kvack.org>,
	linux-kernel@vger.kernel.org
Subject: Re: 0887a7ebc9 ("ubsan: add trap instrumentation option"): BUG:
 kernel hang in early-boot stage, last printk: early console in setup code
Message-ID: <202006081144.933995E4@keescook>
References: <20200608060407.GX12456@shao2-debian>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200608060407.GX12456@shao2-debian>
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=OQllnKXy;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::642
 as permitted sender) smtp.mailfrom=keescook@chromium.org;       dmarc=pass
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

On Mon, Jun 08, 2020 at 02:04:08PM +0800, kernel test robot wrote:
> The issue seems due to the lack of "-fsanitize-undefined-trap-on-error" in clang.

Hm? No, that's supported in Clang (at least as far back as Clang 9.)

> Greetings,
> 
> 0day kernel testing robot got the below dmesg and the first bad commit is
> 
> https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git master
> 
> commit 0887a7ebc97770c7870abf3075a2e8cd502a7f52
> Author:     Kees Cook <keescook@chromium.org>
> AuthorDate: Mon Apr 6 20:12:27 2020 -0700
> Commit:     Linus Torvalds <torvalds@linux-foundation.org>
> CommitDate: Tue Apr 7 10:43:44 2020 -0700
> 
>     ubsan: add trap instrumentation option

In the randconfig, I see CONFIG_UBSAN_TRAP is enabled with lots of other
UBSAN options. If you're not expecting the results, it's very likely the
false positives in UBSAN are going to do bad things. :) This is "working
as expected", as noted in the commit log quoted below.

>     
>     Patch series "ubsan: Split out bounds checker", v5.
>     
>     This splits out the bounds checker so it can be individually used.  This
>     is enabled in Android and hopefully for syzbot.  Includes LKDTM tests for
>     behavioral corner-cases (beyond just the bounds checker), and adjusts
>     ubsan and kasan slightly for correct panic handling.
>     
>     This patch (of 6):
>     
>     The Undefined Behavior Sanitizer can operate in two modes: warning
>     reporting mode via lib/ubsan.c handler calls, or trap mode, which uses
>     __builtin_trap() as the handler.  Using lib/ubsan.c means the kernel image
>     is about 5% larger (due to all the debugging text and reporting structures
>     to capture details about the warning conditions).  Using the trap mode,
>     the image size changes are much smaller, though at the loss of the
>     "warning only" mode.
>     
>     In order to give greater flexibility to system builders that want minimal
>     changes to image size and are prepared to deal with kernel code being
>     aborted and potentially destabilizing the system, this introduces
>     CONFIG_UBSAN_TRAP.  The resulting image sizes comparison:
>     
>        text    data     bss       dec       hex     filename
>     19533663   6183037  18554956  44271656  2a38828 vmlinux.stock
>     19991849   7618513  18874448  46484810  2c54d4a vmlinux.ubsan
>     19712181   6284181  18366540  44362902  2a4ec96 vmlinux.ubsan-trap
>     
>     CONFIG_UBSAN=y:      image +4.8% (text +2.3%, data +18.9%)
>     CONFIG_UBSAN_TRAP=y: image +0.2% (text +0.9%, data +1.6%)
>     
>     Additionally adjusts the CONFIG_UBSAN Kconfig help for clarity and removes
>     the mention of non-existing boot param "ubsan_handle".

If you're trying to _boot_ a randconfig, I suspect there are going to be
a lot of surprises with UBSAN (in any mode) enabled. Right now, likely the
least noisy of them all is UBSAN_BOUNDS, which was split out for fuzzers.

FWIW, the dmesg appears to be catching a NULL pointer dereference
(enabled via CONFIG_UBSAN_MISC):

[    0.047646] UBSAN: Undefined behaviour in drivers/acpi/acpica/tbfadt.c:459:37
[    0.047650] member access within null pointer of type 'struct acpi_table_fadt'
[    0.047655] CPU: 0 PID: 0 Comm: swapper Not tainted 5.6.0-11597-g7baf219982281 #1
[    0.047659] Call Trace:
[    0.047676]  dump_stack+0x88/0xb9
[    0.047684]  ? ubsan_prologue+0x21/0x46
[    0.047689]  ? ubsan_type_mismatch_common+0x188/0x19e
[    0.047695]  ? __ubsan_handle_type_mismatch_v1+0x45/0x4a
[    0.047701]  ? acpi_tb_create_local_fadt+0xaa/0x435
[    0.047706]  ? acpi_tb_parse_fadt+0x54/0xd4
[    0.047712]  ? acpi_tb_parse_root_table+0x192/0x1bf
[    0.047717]  ? acpi_table_init+0x3b/0x56
[    0.047721]  ? acpi_boot_table_init+0xf/0x6e
[    0.047726]  ? setup_arch+0x459/0x520
[    0.047732]  ? start_kernel+0x5e/0x3ba
[    0.047737]  ? secondary_startup_64+0xa4/0xb0

I'm not sure how ACPI defines acpi_gbl_FADT though? There's no
dereference...

459:         if (acpi_gbl_FADT.header.length <= ACPI_FADT_V2_SIZE) {


BTW, this report only contained 1 actual dmesg. There were two files with
dmesg file names, but one of them was the gzipped reproduction steps again.

-Kees

-- 
Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202006081144.933995E4%40keescook.
