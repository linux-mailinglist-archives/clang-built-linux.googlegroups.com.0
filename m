Return-Path: <clang-built-linux+bncBDYJPJO25UGBBIG32GAAMGQEZSQJHUI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x438.google.com (mail-pf1-x438.google.com [IPv6:2607:f8b0:4864:20::438])
	by mail.lfdr.de (Postfix) with ESMTPS id C7A21308E3B
	for <lists+clang-built-linux@lfdr.de>; Fri, 29 Jan 2021 21:18:41 +0100 (CET)
Received: by mail-pf1-x438.google.com with SMTP id 143sf6589986pfx.5
        for <lists+clang-built-linux@lfdr.de>; Fri, 29 Jan 2021 12:18:41 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1611951520; cv=pass;
        d=google.com; s=arc-20160816;
        b=doDPtVN6ftgHcwwo5VkbNmXQhdcGv7tS9Z/weizilagX1wyjryusnmG7Y93aBydTM8
         eQ2NEhHINK5Uou9uXEpc3XCvii/ifZWQgqpOXH5nPv0AJ2KJpRlwhMQz9bbkXRm/L9tl
         iGMkGdNZgHLv89gHxCP+gMbx/K8gqDuzLxN9WGJ3p4a6S1h7yAMp2Tm1bJtl3y/08LFm
         SpY4Fo00OA5npEVDZ/SgR4LP/SGahF0/8QuILbf1iwsGSS5QmIxODCD3d0Nu+ZEgE7jQ
         8ih5y61i+9s1EcnLY1nqRCHE7wPi4LFBBRA2u04tgXrzMqAdcC6zvmGqhyospFSTiobh
         LzPA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=MPkp0znqzc86+i+r4WZQV3iHN2rTUTBtUdT4VPKF6t0=;
        b=BeJ/X9fKoq2EO1WzhLp6QABzUUqra92FTOHr/nJZv320ZGXa9ZvwGQk6rxStZZ4k6x
         /4iWIS3s9iXOicH7e0eIlKj9SysyXU53Jeq/dmGnou9MStNrdtvQDjOdlxTIG0yqzPB8
         lT33t+8bwybrngcQ7/+II23P+Mdvc/xoTgg6lnzviZVhr5Rg2wekAp1Zs0V98DpZL2XE
         FezEbpXYYF7afnovFMzwZJ1hud1ovibQHzQH/sDYT5kAmwcgIjlLzTv6GGUnb6KlNERH
         Q99mj8bA2a9bbr1Doi4xAlStJCS3UI8hBnCQJ/PvJJAagmxr4Xhj31+2zRJLumRRFQL/
         oZhQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=qjZfIVZ7;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::52c as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=MPkp0znqzc86+i+r4WZQV3iHN2rTUTBtUdT4VPKF6t0=;
        b=q+ipCArk6Ag76l7GjSR2YYSUAyG4qeY4hDT6GniLjdDTP48OdXytDxZfmxgnBKem1c
         p+iPfWh2haTsn1pHkZH4Om28g69Iq/PY9fo/coiUgbb4Dk8FbctnRwHjb1A7HbZldYaF
         PXCCRrUHbU2PaflRxxPtfNFE/PMGuPO2syfSuodMj53+GxfxdYGUSzFCKYd/vMiyShK/
         2iPuM3fi483GNPo38wfWRQms5EoB8CdyfR+JFONAVcwYVDOYkvUcLybil9qZr9l3/GfS
         2Y2lzpC66PqRJO5w3ouLN5Btpp+lyb/osdQSauZt995PjHfRaiDjTc50t/gay0hFsyQJ
         tBBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=MPkp0znqzc86+i+r4WZQV3iHN2rTUTBtUdT4VPKF6t0=;
        b=OLTv16j+KVMtMvXKQrXhlAysf3bOzxJIM80PnpzazJsY5lUISP0zrucR+BTqod6E+T
         qBhCBfp9il1PrI7S+BZk22HJVJMgkO2kAjWvlK66d+/7kkUy6uttCnzA7ZbZO0eC9iBN
         wzpxWZokiW9YxROFJdh8Kq/rbwDKbYO19y7Px3afgKzS7KJhLzlwZq5elnG0TYNzN+ZC
         VJucD38qnkBQRB4NyAse8DspPfI0Nqi/dyQa+2f19NioIiAPO9erGrQzCNzzXmZcxZeX
         SYrwoyGcW3j8lj68pBG3qoWh/h+xxT9F6N3Pvobgd7GNviRbYc5DpMSqsR4jKLFBINFS
         MKmQ==
X-Gm-Message-State: AOAM531ThcElDuy9v0zZN4HxhYpgqi2LyAjNu6CGBCwhobnDIzvrskdb
	yfc6jkUPjzG80DCotO/dOj8=
X-Google-Smtp-Source: ABdhPJxt9uhyUiA2mt1CoxtSzKqWA+o1EVrHg0ZGS/pcPfR3/nzIjkgGrLJLYrK9dD3xJsN8+Al6ZQ==
X-Received: by 2002:a17:902:9009:b029:dc:52a6:575 with SMTP id a9-20020a1709029009b02900dc52a60575mr5487445plp.57.1611951520557;
        Fri, 29 Jan 2021 12:18:40 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:92d5:: with SMTP id o204ls4042487pfd.6.gmail; Fri, 29
 Jan 2021 12:18:40 -0800 (PST)
X-Received: by 2002:a63:5a4c:: with SMTP id k12mr6398275pgm.95.1611951519983;
        Fri, 29 Jan 2021 12:18:39 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1611951519; cv=none;
        d=google.com; s=arc-20160816;
        b=IkxrU+KuUM3VidsvVxRRQ0XWLPY1EG74Ld3s82VToiBTcUhe+UsF3dY7ybCmcWnV6w
         36TPBLpLcTdHdWKILzN6oBw3MSmT/XBSKSwCLBH/WmTxuougxgEhlSEG//Qwm3tnSVYJ
         VfXYdQ8qKwdbN2cHIVlnn3eeV7kVt8dklP1abdEdyrbcdymvjX5BGR7ubQGEsIlg2th7
         frysYxegYucErRStQYl4VgzPCTK+lYXPlXXiFwFtVCpeJ+uNerWrmL7XxPv7DVROXNil
         1kMwqjtoQIhdZRCCrMI72KnRumnM+37574Ayv8JO2jXpT7j5/sFGd1MA2QD8bTJccJ9e
         9opw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=qbueXA+6LAKEqi7EcdFvbT4ApZuFRwx0fLMBh/SPQ68=;
        b=XoBDy3wlcAi+8C2ubiWgiaN7oI7KbOrdB5L0tgt1WwDT6jfVRWPfhqYw/SoQJqXdR1
         l64LqhRYDSYtUMO5idcwyvcM0eLNKEtyZV8GaqflaWCnGc1ioCzJBe/WebeLy0xjqb2h
         Jso1oMOWvMcRsz8SShUUEQ1Ggblfl5d21oojUSOhF3ZLyJtWE7ixLAaGwLo46IKAj7tW
         MPSJGP751Ei2isqC3kbwxwc4BcsH875l8FZMy1WORgL7UX/NLsl8qiWRkFRFXZJGo+Gl
         HVSj0VtQJ4MK45HIoA9pIUKcOmvtQs6M3TAPk+iVEaQUgdrNDkw4t1YrDvrr8n7eUraz
         GrJQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=qjZfIVZ7;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::52c as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x52c.google.com (mail-pg1-x52c.google.com. [2607:f8b0:4864:20::52c])
        by gmr-mx.google.com with ESMTPS id o14si533923pgm.3.2021.01.29.12.18.39
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 29 Jan 2021 12:18:39 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::52c as permitted sender) client-ip=2607:f8b0:4864:20::52c;
Received: by mail-pg1-x52c.google.com with SMTP id z21so7426366pgj.4
        for <clang-built-linux@googlegroups.com>; Fri, 29 Jan 2021 12:18:39 -0800 (PST)
X-Received: by 2002:a62:838d:0:b029:1ba:9b85:2eac with SMTP id
 h135-20020a62838d0000b02901ba9b852eacmr6012038pfe.36.1611951519350; Fri, 29
 Jan 2021 12:18:39 -0800 (PST)
MIME-Version: 1.0
References: <20210129201116.2658179-1-nathan@kernel.org>
In-Reply-To: <20210129201116.2658179-1-nathan@kernel.org>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Fri, 29 Jan 2021 12:18:28 -0800
Message-ID: <CAKwvOdkoivL4+HjXi4aKQbQ7R2J_oKBcMKrSsdxuOGLpseQZcw@mail.gmail.com>
Subject: Re: [PATCH] vmlinux.lds.h: Define SANTIZER_DISCARDS with CONFIG_GCOV_KERNEL=y
To: Nathan Chancellor <nathan@kernel.org>
Cc: Arnd Bergmann <arnd@arndb.de>, Kees Cook <keescook@chromium.org>, 
	LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, kernel test robot <lkp@intel.com>, 
	Fangrui Song <maskray@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=qjZfIVZ7;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::52c
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

On Fri, Jan 29, 2021 at 12:11 PM Nathan Chancellor <nathan@kernel.org> wrote:
>
> clang produces .eh_frame sections when CONFIG_GCOV_KERNEL is enabled,
> even when -fno-asynchronous-unwind-tables is in KBUILD_CFLAGS:
>
> $ make CC=clang vmlinux
> ...
> ld: warning: orphan section `.eh_frame' from `init/main.o' being placed in section `.eh_frame'
> ld: warning: orphan section `.eh_frame' from `init/version.o' being placed in section `.eh_frame'
> ld: warning: orphan section `.eh_frame' from `init/do_mounts.o' being placed in section `.eh_frame'
> ld: warning: orphan section `.eh_frame' from `init/do_mounts_initrd.o' being placed in section `.eh_frame'
> ld: warning: orphan section `.eh_frame' from `init/initramfs.o' being placed in section `.eh_frame'
> ld: warning: orphan section `.eh_frame' from `init/calibrate.o' being placed in section `.eh_frame'
> ld: warning: orphan section `.eh_frame' from `init/init_task.o' being placed in section `.eh_frame'
> ...
>
> $ rg "GCOV_KERNEL|GCOV_PROFILE_ALL" .config
> CONFIG_GCOV_KERNEL=y
> CONFIG_ARCH_HAS_GCOV_PROFILE_ALL=y
> CONFIG_GCOV_PROFILE_ALL=y
>
> This was already handled for a couple of other options in
> commit d812db78288d ("vmlinux.lds.h: Avoid KASAN and KCSAN's unwanted
> sections") and there is an open LLVM bug for this issue. Take advantage
> of that section for this config as well so that there are no more orphan
> warnings.
>
> Link: https://bugs.llvm.org/show_bug.cgi?id=46478
> Link: https://github.com/ClangBuiltLinux/linux/issues/1069
> Reported-by: kernel test robot <lkp@intel.com>
> Signed-off-by: Nathan Chancellor <nathan@kernel.org>

Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>

I suspect we're going to need to add module level attributes in LLVM
IR for these options, then check those when synthesizing new function
definitions within LLVM.  At least we'll be able to point to this file
and say "hey, this is a general problem in LLVM, and here are 3
specific cases now where it's a problem."  Not a large problem, but
would help us save some bytes in the final object.  LLVM is not
producing data in this section for all code, just these synthesized
routines.

> ---
>  include/asm-generic/vmlinux.lds.h | 5 +++--
>  1 file changed, 3 insertions(+), 2 deletions(-)
>
> diff --git a/include/asm-generic/vmlinux.lds.h b/include/asm-generic/vmlinux.lds.h
> index b2b3d81b1535..f753fd449436 100644
> --- a/include/asm-generic/vmlinux.lds.h
> +++ b/include/asm-generic/vmlinux.lds.h
> @@ -988,12 +988,13 @@
>  #endif
>
>  /*
> - * Clang's -fsanitize=kernel-address and -fsanitize=thread produce
> + * Clang's -fsanitize=kernel-address, -fsanitize=thread,
> + * and -fprofile-arcs -ftest-coverage produce unwanted
>   * unwanted sections (.eh_frame and .init_array.*), but
>   * CONFIG_CONSTRUCTORS wants to keep any .init_array.* sections.
>   * https://bugs.llvm.org/show_bug.cgi?id=46478
>   */
> -#if defined(CONFIG_KASAN_GENERIC) || defined(CONFIG_KCSAN)
> +#if defined(CONFIG_KASAN_GENERIC) || defined(CONFIG_KCSAN) || defined(CONFIG_GCOV_KERNEL)
>  # ifdef CONFIG_CONSTRUCTORS
>  #  define SANITIZER_DISCARDS                                           \
>         *(.eh_frame)
>
> base-commit: bec4c2968fce2f44ce62d05288a633cd99a722eb
> --
> 2.30.0
>


-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdkoivL4%2BHjXi4aKQbQ7R2J_oKBcMKrSsdxuOGLpseQZcw%40mail.gmail.com.
