Return-Path: <clang-built-linux+bncBDHYDDNWVUNRBCUFVCAAMGQE6KFUZFA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23d.google.com (mail-oi1-x23d.google.com [IPv6:2607:f8b0:4864:20::23d])
	by mail.lfdr.de (Postfix) with ESMTPS id 31F7E2FF810
	for <lists+clang-built-linux@lfdr.de>; Thu, 21 Jan 2021 23:39:07 +0100 (CET)
Received: by mail-oi1-x23d.google.com with SMTP id b11sf1423488oib.23
        for <lists+clang-built-linux@lfdr.de>; Thu, 21 Jan 2021 14:39:07 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1611268746; cv=pass;
        d=google.com; s=arc-20160816;
        b=c3jdjnfG+gOi1WprY3fZwKqfuMhoGz5nd/m+afNM62UlmYIl8QmoMleVRvaDqu3lXL
         I+y2GKoknxfN+8dgFDPgj6RzrlLJlBoKBsRJg5AOo8FDmDiNHfD032Fr6DSGDMIlLp/M
         gxdPZaPTY7gmWgA9LjNt+rbrYRXa2GdeF69bWriJIS79GM4o3bpi2+k75AapG3f0ee7X
         J8wLP4P/TlMIIj7AhWNK0Wq/EtPx75L301aC+eVJMxjN9kvLJuFOoskgPPcSOuuXFNMA
         T26zd5nk7OOeeU8gNo47UyJ2kJhJMF6QH5S0PlU4n5FgUMRwJPPVJy831UZ96cb9w2ZP
         CffA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :reply-to:in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=sw2H4vmLPnf8MXFGGsQewqFHlEZzK0Sp3Q/g5vw9AUU=;
        b=teuC8GMpIOjjJEqxLHlCWci+RXCbSqKBKfNsXi9YD+orr2kzeeremsjbkrudHmgQDp
         UAE7yACjPwqzW6ROE7oMlLW2ieni1uv07CyplggkadE1A+PaQNNPHp40RT3D2YlDLncq
         v2SL3tGJuWbl9I1gWNIFFA1LxfiEqGBjncO7v3CbdNa1MdwoYQ1D1DFL56y0qodEIwGE
         2/K6QAKmE9U+UgmTUarqdyzB4T3sc6EHXJPqnWOepdasDYaBN4Ccqi3cpjcdPdHLH9D6
         6obpFMA3r25XiqeuS9lQtexOYhgxjdj+ONxjFXPwBzJPw8H+ldU57B3gZ+kgZoi2ZCnU
         rpxQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=VpDkjP0R;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d29 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=sw2H4vmLPnf8MXFGGsQewqFHlEZzK0Sp3Q/g5vw9AUU=;
        b=ePwKcCLDJa423Dnxw4CYHA2BsIkx5QPpGfKXKQ83XqJWqAekdlwhsi0O+69w8XLw45
         qfwcSuHSdP2Zjo0ELqsafnVa+uQsER6vs7P/72r1THly7XWbg6i7PxcDnCSG/u3+IR7A
         VNhczAaKE1Wzx/6I/OpMO3ZNcfNYs6Y4ArC2dJ5XWp0thGXz8FvvXAJ2hy1BdVXBhdJx
         ngy4Mza6k2rhCjXMMl384t4hwJlQEEp3VWqer5LKDRCMnExypXK1TWVBK+i8RIRyfHpX
         7EEZlDpQqjTEQ5KzLkvo9qruimFwerE0vHHQE6s9943fL2winkaTDhBVzfDloRKNTWe2
         1bow==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=sw2H4vmLPnf8MXFGGsQewqFHlEZzK0Sp3Q/g5vw9AUU=;
        b=sumMKck63b2//RT9JO18FnUStCRfk1bkrRXRVEbrrWkC1qW2mx4ilwXdwPyAa3ICy+
         z+bhKlrZLB7F9kHCr8jz8OmQD7DFrwQaSLISkvpsuC/yfMQeXEJLrjkSFpHzmt04luje
         Rut7HQfaoNbTi5y7gCdmmQ/4zUbv5QYxhjvLxCqY2Gmzeuke9C4aQu9gzyx4y0JTjR0B
         gNF8mPL2n+lKBy4MBFsPwyoxXALudIAUUH0cHriFOaFkR1N1gH9wUEQMJaQ50abl6zdn
         eOJMl4uDTyMIHpxTZB0bvUoH9G+j/8QAsXrswIPYXCckF7YvGK7BU4HObAr8ExM6/qdl
         DGhQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to
         :reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=sw2H4vmLPnf8MXFGGsQewqFHlEZzK0Sp3Q/g5vw9AUU=;
        b=eolTCd9d31bI5tA9bcr592ptTh6j818WY0wH/vGGJdVz6R14qzqH2e+uRh7ZaiCuzX
         aAarBldCvyMnpIIz4jLKOn4fQWRUKe0Bta4Z7Xu69plSG7CJpCGxvKTzKXc/UkV+5yNc
         D3QmgKWyBDAJcPUHGTfBK5olqHhGj6idKjNmyUoKFykokjaWNcQBk5xcD/v2vodCKpF0
         4ttZusUNTmx/rmfAuH+tqXwGOKd+/hP8xHRraXRiWl/9jKI8IarJWgNiSee5uLHsDOpp
         S0IL8+q6WuZuRGO+CMsUPFUMCxyKRPDD85XGyOwIt4pK3uFY2eMCOk+8SodngjR487gs
         YGYA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531uw4PXXQ0wk3ytbnQBag9ZQZAZU5/fEYT5hXyPM06Cly50hDsy
	QUOQ/URJynWnyrzimowdcLY=
X-Google-Smtp-Source: ABdhPJy6/QTK1C2WgNZv0f8/3Ki7SpHZ6lmaSI9W4tREmh17TglcULFEzuzuxURwEiSoANMbMWspXw==
X-Received: by 2002:a4a:9608:: with SMTP id q8mr1494120ooi.79.1611268746208;
        Thu, 21 Jan 2021 14:39:06 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:52c5:: with SMTP id g188ls795120oib.8.gmail; Thu, 21 Jan
 2021 14:39:05 -0800 (PST)
X-Received: by 2002:aca:6256:: with SMTP id w83mr1331019oib.170.1611268745746;
        Thu, 21 Jan 2021 14:39:05 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1611268745; cv=none;
        d=google.com; s=arc-20160816;
        b=Q7gOtiOlczvWiCmfkfXOwTCEu356hzkh0TZZedEnbQn8I6swHtfm92X9wvfd3yrxin
         ZcX1dvMkWUZj8aeR152KWYOrr6KKDoZN9xuepzGpTfHZpAG4IrHDkhuqu7jpMnDyXuml
         DAwjO0egsb7mEXI6cKkc8CSAdbngdLlBAif4SV7jhxQegcLhFAPHRmRCzEV9PAbY8g16
         1KVjX5B8jbnDerS3OgQwucuE3d/jEVsrOSKxX7R6KwPBZt9dg+M7sDkR6p1q07vD9OIH
         K/09fC5xEV/EUe4RrfJL+nVL2Kd1o/F3A1RGUtbDHFFVaB9xJft3X4dXtiZcolaM7Fvy
         CCqA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:reply-to:in-reply-to:references
         :mime-version:dkim-signature;
        bh=hm2msTaf5VzRjPCAA+w+1MuBzYiewjiIsmSAGwC1ATw=;
        b=HGCYWL3Eb7km4HUhycctW26mGDb4bdOFwEmjS5uyMANBJCMvgjWSViA168p0qUQ22C
         Rw61p9GnuHHtd0d34PM1d7uR5p8I6k0agykeV5OqS49LXZhEbMisYFdUZfzqnaBOIMs5
         49ylKCCW46xyHi8BELhxB1OAZ1SK1ziJ+y82skkCUW6t9/65HtzIsI/B4tO8tnl21jjk
         B7mQSvmAUT/HSdWnw7/kQEfO13LuKgq8YGh3ewr7jSpR40d4CNCI5d8WFPBL8n4NYBEm
         sRVrYg2cXFMKlVwxoEB5PRPRHB+IDnBHDB5pjGNpMJGifVxTEQWPtnAeKVMXc6DHrFHG
         D2ew==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=VpDkjP0R;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d29 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-io1-xd29.google.com (mail-io1-xd29.google.com. [2607:f8b0:4864:20::d29])
        by gmr-mx.google.com with ESMTPS id e6si211325oie.2.2021.01.21.14.39.05
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 21 Jan 2021 14:39:05 -0800 (PST)
Received-SPF: pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d29 as permitted sender) client-ip=2607:f8b0:4864:20::d29;
Received: by mail-io1-xd29.google.com with SMTP id n2so7381545iom.7
        for <clang-built-linux@googlegroups.com>; Thu, 21 Jan 2021 14:39:05 -0800 (PST)
X-Received: by 2002:a05:6602:2f93:: with SMTP id u19mr1341198iow.110.1611268745483;
 Thu, 21 Jan 2021 14:39:05 -0800 (PST)
MIME-Version: 1.0
References: <cover.1611263461.git.jpoimboe@redhat.com>
In-Reply-To: <cover.1611263461.git.jpoimboe@redhat.com>
Reply-To: sedat.dilek@gmail.com
From: Sedat Dilek <sedat.dilek@gmail.com>
Date: Thu, 21 Jan 2021 23:38:54 +0100
Message-ID: <CA+icZUU6QBeahDWpgYPjkf_OmRC+4T4SAnCg=iObNq9+CGT6jA@mail.gmail.com>
Subject: Re: [PATCH v2 00/20] objtool: vmlinux.o and CLANG LTO support
To: Josh Poimboeuf <jpoimboe@redhat.com>
Cc: x86@kernel.org, linux-kernel@vger.kernel.org, 
	Peter Zijlstra <peterz@infradead.org>, Sami Tolvanen <samitolvanen@google.com>, 
	Kees Cook <keescook@chromium.org>, Nick Desaulniers <ndesaulniers@google.com>, 
	Clang-Built-Linux ML <clang-built-linux@googlegroups.com>, Miroslav Benes <mbenes@suse.cz>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: sedat.dilek@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=VpDkjP0R;       spf=pass
 (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d29
 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Thu, Jan 21, 2021 at 10:29 PM Josh Poimboeuf <jpoimboe@redhat.com> wrote:
>
> v2:
> - fix commit description for why xen hypervisor page contents don't
>   matter [Juergen]
> - annotate indirect jumps as safe instead of converting them to
>   retpolines [Andrew, Juergen]
> - drop patch 1 - fake jumps no longer exist
> - add acks
>
> Based on tip/objtool/core.
>
>
> Add support for proper vmlinux.o validation, which will be needed for
> Sami's upcoming x86 LTO set.  (And vmlinux validation is the future for
> objtool anyway, for other reasons.)
>
> This isn't 100% done -- most notably, crypto still needs to be supported
> -- but I think this gets us most of the way there.
>
> This can also be found at
>
>   git://git.kernel.org/pub/scm/linux/kernel/git/jpoimboe/linux.git objtool-vmlinux
>

Should this be s/objtool-vmlinux/objtool-vmlinux-v2 ?

- Sedat -

> And for more testing it can be combined with Sami's x86 LTO patches:
>
>   https://github.com/samitolvanen/linux clang-lto
>
>
> Josh Poimboeuf (20):
>   objtool: Fix error handling for STD/CLD warnings
>   objtool: Fix retpoline detection in asm code
>   objtool: Fix ".cold" section suffix check for newer versions of GCC
>   objtool: Support retpoline jump detection for vmlinux.o
>   x86/ftrace: Add UNWIND_HINT_FUNC annotation for ftrace_stub
>   objtool: Assume only ELF functions do sibling calls
>   objtool: Add asm version of STACK_FRAME_NON_STANDARD
>   objtool: Combine UNWIND_HINT_RET_OFFSET and UNWIND_HINT_FUNC
>   objtool: Add xen_start_kernel() to noreturn list
>   objtool: Move unsuffixed symbol conversion to a helper function
>   objtool: Add CONFIG_CFI_CLANG support
>   x86/xen: Support objtool validation in xen-asm.S
>   x86/xen: Support objtool vmlinux.o validation in xen-head.S
>   x86/xen/pvh: Annotate indirect branch as safe
>   x86/ftrace: Support objtool vmlinux.o validation in ftrace_64.S
>   x86/acpi: Annotate indirect branch as safe
>   x86/acpi: Support objtool validation in wakeup_64.S
>   x86/power: Annotate indirect branches as safe
>   x86/power: Move restore_registers() to top of the file
>   x86/power: Support objtool validation in hibernate_asm_64.S
>
>  arch/x86/include/asm/unwind_hints.h   |  13 +---
>  arch/x86/kernel/acpi/Makefile         |   1 -
>  arch/x86/kernel/acpi/wakeup_64.S      |   4 +
>  arch/x86/kernel/ftrace_64.S           |   8 +-
>  arch/x86/lib/retpoline.S              |   2 +-
>  arch/x86/platform/pvh/head.S          |   2 +
>  arch/x86/power/Makefile               |   1 -
>  arch/x86/power/hibernate_asm_64.S     | 103 +++++++++++++-------------
>  arch/x86/xen/Makefile                 |   1 -
>  arch/x86/xen/xen-asm.S                |  29 +++++---
>  arch/x86/xen/xen-head.S               |   5 +-
>  include/linux/objtool.h               |  13 +++-
>  tools/include/linux/objtool.h         |  13 +++-
>  tools/objtool/arch/x86/decode.c       |   4 +-
>  tools/objtool/arch/x86/special.c      |   2 +-
>  tools/objtool/check.c                 |  89 ++++++++++++----------
>  tools/objtool/elf.c                   |  88 ++++++++++++++++------
>  tools/objtool/include/objtool/check.h |  12 ++-
>  tools/objtool/include/objtool/elf.h   |   2 +-
>  19 files changed, 240 insertions(+), 152 deletions(-)
>
> --
> 2.29.2
>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CA%2BicZUU6QBeahDWpgYPjkf_OmRC%2B4T4SAnCg%3DiObNq9%2BCGT6jA%40mail.gmail.com.
