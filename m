Return-Path: <clang-built-linux+bncBDHYDDNWVUNRBM6LQSAAMGQEMOQHETY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x339.google.com (mail-ot1-x339.google.com [IPv6:2607:f8b0:4864:20::339])
	by mail.lfdr.de (Postfix) with ESMTPS id 537D22F7200
	for <lists+clang-built-linux@lfdr.de>; Fri, 15 Jan 2021 06:18:45 +0100 (CET)
Received: by mail-ot1-x339.google.com with SMTP id 5sf2797505oth.4
        for <lists+clang-built-linux@lfdr.de>; Thu, 14 Jan 2021 21:18:45 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1610687924; cv=pass;
        d=google.com; s=arc-20160816;
        b=Fto1sj2o6Q9nF+zBmABPwKMTQIEKdsBvZMd6a5jETsM2Swsg03Hmt8odJKEbgC/2tn
         QKYkLvzZh/mXSAFpUmJwen2f8irjyEUzZtjCEaGhgGlmfIZ+99JyIvcKeQPM9xjekC13
         s3fWed1/fetbC6kVqjk3TBnjUPcK5+vUdJbrjPCjgRQJGVrO44PWHYukm2dexQICxEsV
         F007rVA+6FeFagXMWi35NznfSEiWLcBQ7d7yCB5GDpXsgQfXD5f0gtERrVUD1xN4DB76
         QfH5Y1cEOfzzT0V42BcvzCst6LQb23n9bA1n7Uy0cgUpckBmiL4EHclisoCbsWysSdP7
         rHIg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :reply-to:in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=BXP+8KgFQSCteNKhpbxIwcN1AxZsqfXBqTgELd63xx8=;
        b=dFnyJ8ifuRWt1cmYWWFNbtO8m2fBSDr0J0YFWj4+rfSBsCEKhQjIL6wN0SFoJirhE/
         FnX0flbCRdvdLL+XL+OjqDqSaVqSF++sCSCo/+R48nrXIHIpOXu3t2cOtYji8VXLmkbO
         KfiX5yPpN8ZTejX0OUxWuD19G7GeIAu4MSSWMd3uJG/UqnBMc6C/9vzZt7FtNe7K1ptA
         Sj0Fzk75r9muzERGGwLRxKoxzhadBTHmoWhNASsXNRVIAgjwP3+IDPn3piQ3oDCF01ga
         ckutc4VF6hpO2oghZHdaIPb4orbyssYBTopEX1H5VRQ7LxIkZ244SJAS0/mJK4nxwvaa
         IN/w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=LntmyLiI;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d30 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=BXP+8KgFQSCteNKhpbxIwcN1AxZsqfXBqTgELd63xx8=;
        b=tLf9h8nEZMJeyVmHB0rk8uPtXwcOWmV53AnuYEgsgeOTmrFYYqqAgEJKQ/ed+qEFSl
         Gs+SPXDr/J13eyxJDci3bAzi3p0RO0nixTOVMwe3IFtXxohIRlye3s6j90r7Oe5nJO0H
         aHYVBh5zNG9k9eThG0PdVPXjs5L0rETyf9xA1CbMev1gXKh2xvqh8YWXDrIyF2yaxIbu
         PBVyAHrP3ln7NSwek5o2ZGUyC3YtKfQ+IOmoStPQzkUg1TPetYONnztTngMrwWm51k4D
         imNxvYXOCsJ1vIRMxF0Q3M17o17ip35zjN4Fth8Om4U9iOFXYMAtc7hk8r+YQCKgMoLl
         8WlQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=BXP+8KgFQSCteNKhpbxIwcN1AxZsqfXBqTgELd63xx8=;
        b=JjnR5RqQ/xIanq2EGs93bOyL+ZMvbvCKwFUw0PwTvwjR1fynZ0Oz+R7OJVkOnZJIi9
         /hn4kpuh5fp+ZWsaEe+bPpne0CMvmxGXLZHLFYLbIqN87IepaE/QcbUW3PDlhw5QuMne
         cuDReTeFhRPIxD7ozvYbmDabfRxWy1AEH1iwo5bLvI0ilmLf40y3flHWIXX5fo55plqB
         0whxIUNJupbBNMTGPpStgwgkkW8rsu6zv0Nlp3rtUhsqUTib/gR2aCfkQVD0PxiU6pcs
         kcxJmqQ4b6RDJN7h/e1ZmsiwKqCRpTUrueeo/xf3prJ8gWiH8Nv/q5W6WmrgyMleZu/c
         o6uA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to
         :reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=BXP+8KgFQSCteNKhpbxIwcN1AxZsqfXBqTgELd63xx8=;
        b=g/qoRFsLP/jBPSWz8e5Ez7F4QoXb5T51yyjlXaG7lhJPx8t5yEZHlQ4zGOR65hDzFg
         yGMJDOLIZfKqbsvAqEEICyn4wC/eEm0evz7rjS0eGBNohvl3gwMmD3U7QCVWtyQ3YVsP
         ruawVazRSJsqRAO/qXsoKqYtXytMOMAK5Mx1vP/vY8a+cU8EXdq6ayTxSYv5jVW2UVnJ
         Y4IAk8x+dLO5eHDkexvaeZqigy1BH6f+D2LjglGUbKJIXBZTX5vJDXSAgAH8UbO+MiGf
         SJwZoGC/4yW6MYtWEL11N0BYUT5hmtg4/l4Y4eJPOqyOtjCtc3rbVOkd8zkAZYM81J+v
         niwQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5334NqbU7MPHGX8jP/jP2XcK2MeOyqG/42AWOKbsyeQnwxIMldZm
	q80rImfocmOPQfIqCVlOfiY=
X-Google-Smtp-Source: ABdhPJy0pWr1Kd+rQwyrEcQ0pwxutKjzOLORzWIb3+T1QyKVQMnY24ViacvHhbAgReUE+tTr4OANlg==
X-Received: by 2002:a05:6830:1c24:: with SMTP id f4mr6899905ote.108.1610687924003;
        Thu, 14 Jan 2021 21:18:44 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6830:18f1:: with SMTP id d17ls1954478otf.6.gmail; Thu,
 14 Jan 2021 21:18:43 -0800 (PST)
X-Received: by 2002:a05:6830:1c34:: with SMTP id f20mr6939413ote.147.1610687923577;
        Thu, 14 Jan 2021 21:18:43 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1610687923; cv=none;
        d=google.com; s=arc-20160816;
        b=IbhbspjK34TtsuLf2yKMGLeRDIt/QkTWpRDb1CHOMrPDsCVAIL+W3LhuH4RjfGNx5A
         PUP+7fBWJCthMitiH0nAndS2ZGGzb6qHhHLYOopcw7VE4MHG5SqKZ+PmM4sFLk2iaCo7
         AUFBThUNnB2rKQYQM41un8LQxsSmOgwcjLxiX66rnqqxIL8agen/XAaVUlbZFOT5XKPl
         FpmGOyFMY7VJDlKC5c+ZSdPP28RdOuokVzsnwkftv9zynkOQr42nYYaYv0BYacnzUnb0
         6SqPiiXm9QyzpFN94w9H+g0CJ7XH2DrUHymTci+B0TwB3nqaeq6HJZY0cgjIwEBPwtBe
         U7cw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:reply-to:in-reply-to:references
         :mime-version:dkim-signature;
        bh=Bchw14XUJHyY/yDFEjYPzsWChE/JAge8nOTF2q3cH9M=;
        b=i0jrFyq3Qz6/vDzji7kcwQHgtcai1EsXShCt6i3FbIHFAFXzztLHuLZZAk55PH0wIY
         R8W75CqHvbOxF3xYOsTF6DNIMkw716bgItPrMZJ643EDTdaSbGk9IPVCoIUtOneHEVes
         zzNocVwTMT751u4yNuZsdiFKcWAbzl29Kc8AiwXfJZzP3QMU2INbEKjeU85hMfS9MhFU
         pCPbICDQJA1tToLx2nE38hUCVXr/+1VGXFWtJZlJT6q7lNj9fKPm4vRLCzBj16/fl57d
         eWBnpFBe6FZC6UW4Q8c90bI3j9G/hznhs3CsHBV1ynhI0npfeusem2m3TjzjkdlgzBUl
         ZZGA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=LntmyLiI;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d30 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-io1-xd30.google.com (mail-io1-xd30.google.com. [2607:f8b0:4864:20::d30])
        by gmr-mx.google.com with ESMTPS id x20si743233oot.1.2021.01.14.21.18.43
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 14 Jan 2021 21:18:43 -0800 (PST)
Received-SPF: pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d30 as permitted sender) client-ip=2607:f8b0:4864:20::d30;
Received: by mail-io1-xd30.google.com with SMTP id d9so15981057iob.6
        for <clang-built-linux@googlegroups.com>; Thu, 14 Jan 2021 21:18:43 -0800 (PST)
X-Received: by 2002:a05:6e02:eb0:: with SMTP id u16mr9369433ilj.209.1610687923176;
 Thu, 14 Jan 2021 21:18:43 -0800 (PST)
MIME-Version: 1.0
References: <cover.1610652862.git.jpoimboe@redhat.com> <CA+icZUV1a-DEf-dTm8MyyBbp_VYmW5WwJPF9DQb=yJHPykJASQ@mail.gmail.com>
In-Reply-To: <CA+icZUV1a-DEf-dTm8MyyBbp_VYmW5WwJPF9DQb=yJHPykJASQ@mail.gmail.com>
Reply-To: sedat.dilek@gmail.com
From: Sedat Dilek <sedat.dilek@gmail.com>
Date: Fri, 15 Jan 2021 06:18:31 +0100
Message-ID: <CA+icZUUrHcGZk=rLvAfRKGDyyqfxD1b3zsbZ+dvz4OWm+yznEg@mail.gmail.com>
Subject: Re: [PATCH 00/21] objtool: vmlinux.o and CLANG LTO support
To: Josh Poimboeuf <jpoimboe@redhat.com>
Cc: x86@kernel.org, linux-kernel@vger.kernel.org, 
	Peter Zijlstra <peterz@infradead.org>, Sami Tolvanen <samitolvanen@google.com>, 
	Kees Cook <keescook@chromium.org>, Nick Desaulniers <ndesaulniers@google.com>, 
	Clang-Built-Linux ML <clang-built-linux@googlegroups.com>, Miroslav Benes <mbenes@suse.cz>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: sedat.dilek@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=LntmyLiI;       spf=pass
 (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d30
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

On Fri, Jan 15, 2021 at 5:51 AM Sedat Dilek <sedat.dilek@gmail.com> wrote:
>
> On Thu, Jan 14, 2021 at 8:40 PM Josh Poimboeuf <jpoimboe@redhat.com> wrote:
> >
> > Add support for proper vmlinux.o validation, which will be needed for
> > Sami's upcoming x86 LTO set.  (And vmlinux validation is the future for
> > objtool anyway, for other reasons.)
> >
> > This isn't 100% done -- most notably, crypto still needs to be supported
> > -- but I think this gets us most of the way there.
> >
> > This can also be found at
> >
> >   git://git.kernel.org/pub/scm/linux/kernel/git/jpoimboe/linux.git objtool-vmlinux
> >
> > And for more testing it can be combined with Sami's x86 LTO patches:
> >
> >   https://github.com/samitolvanen/linux clang-lto
> >
> >
> >
> > Josh Poimboeuf (21):
> >   objtool: Fix seg fault in BT_FUNC() with fake jump
> >   objtool: Fix error handling for STD/CLD warnings
> >   objtool: Fix retpoline detection in asm code
> >   objtool: Fix ".cold" section suffix check for newer versions of GCC
> >   objtool: Support retpoline jump detection for vmlinux.o
> >   x86/ftrace: Add UNWIND_HINT_FUNC annotation for ftrace_stub
> >   objtool: Assume only ELF functions do sibling calls
> >   objtool: Add asm version of STACK_FRAME_NON_STANDARD
> >   objtool: Combine UNWIND_HINT_RET_OFFSET and UNWIND_HINT_FUNC
> >   objtool: Add xen_start_kernel() to noreturn list
> >   objtool: Move unsuffixed symbol conversion to a helper function
> >   objtool: Add CONFIG_CFI_CLANG support
> >   x86/xen: Support objtool validation in xen-asm.S
> >   x86/xen: Support objtool vmlinux.o validation in xen-head.S
> >   x86/xen/pvh: Convert indirect jump to retpoline
> >   x86/ftrace: Support objtool vmlinux.o validation in ftrace_64.S
> >   x86/acpi: Convert indirect jump to retpoline
> >   x86/acpi: Support objtool validation in wakeup_64.S
> >   x86/power: Convert indirect jumps to retpolines
> >   x86/power: Move restore_registers() to top of the file
> >   x86/power: Support objtool validation in hibernate_asm_64.S
> >
> >  arch/x86/include/asm/unwind_hints.h |  13 +---
> >  arch/x86/kernel/acpi/Makefile       |   1 -
> >  arch/x86/kernel/acpi/wakeup_64.S    |   5 +-
> >  arch/x86/kernel/ftrace_64.S         |   8 +--
> >  arch/x86/lib/retpoline.S            |   2 +-
> >  arch/x86/platform/pvh/head.S        |   3 +-
> >  arch/x86/power/Makefile             |   1 -
> >  arch/x86/power/hibernate_asm_64.S   | 105 ++++++++++++++--------------
> >  arch/x86/xen/Makefile               |   1 -
> >  arch/x86/xen/xen-asm.S              |  29 +++++---
> >  arch/x86/xen/xen-head.S             |   5 +-
> >  include/linux/objtool.h             |  13 +++-
> >  tools/include/linux/objtool.h       |  13 +++-
> >  tools/objtool/arch/x86/decode.c     |   4 +-
> >  tools/objtool/arch/x86/special.c    |   2 +-
> >  tools/objtool/check.c               |  91 +++++++++++++-----------
> >  tools/objtool/check.h               |  12 +++-
> >  tools/objtool/elf.c                 |  87 +++++++++++++++++------
> >  tools/objtool/elf.h                 |   2 +-
> >  19 files changed, 241 insertions(+), 156 deletions(-)
> >
> > --
> > 2.29.2
> >
>
> I tried this series on top of clang-cfi and it segfaults here.
>
> + info OBJTOOL vmlinux.o
> + [  != silent_ ]
> + printf   %-7s %s\n OBJTOOL vmlinux.o
>  OBJTOOL vmlinux.o
> + tools/objtool/objtool orc generate --duplicate --mcount --vmlinux
> --no-fp --no-unreachable --retpoline --uaccess vmlinux.o
> Segmentation fault
> + on_exit
> + [ 139 -ne 0 ]
> + cleanup
> + rm -f .btf.*
> + rm -f .tmp_System.map
> + rm -f .tmp_initcalls.lds
> + rm -f .tmp_symversions.lds
> + rm -f .tmp_vmlinux*
> + rm -f System.map
> + rm -f vmlinux
> + rm -f vmlinux.o
> make[3]: *** [Makefile:1213: vmlinux] Error 139
>

I did:

$ git diff scripts/link-vmlinux.sh
diff --git a/scripts/link-vmlinux.sh b/scripts/link-vmlinux.sh
index 2d0b28758aa5..cd0948bd29ea 100755
--- a/scripts/link-vmlinux.sh
+++ b/scripts/link-vmlinux.sh
@@ -142,7 +142,8 @@ objtool_link()
                       objtoolopt="${objtoolopt} --uaccess"
               fi
               info OBJTOOL ${1}
-               tools/objtool/objtool ${objtoolcmd} ${objtoolopt} ${1}
+               info OBJTOOL SEGFAULTS
+               ##tools/objtool/objtool ${objtoolcmd} ${objtoolopt} ${1}
       fi
}

To save the vmlinux* files and archived them in case you want me to look at it.
Give me clear instructions, Thanks.

- Sedat -

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CA%2BicZUUrHcGZk%3DrLvAfRKGDyyqfxD1b3zsbZ%2Bdvz4OWm%2ByznEg%40mail.gmail.com.
