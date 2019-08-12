Return-Path: <clang-built-linux+bncBDYJPJO25UGBBCGHY3VAKGQE4ZKAL3Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x839.google.com (mail-qt1-x839.google.com [IPv6:2607:f8b0:4864:20::839])
	by mail.lfdr.de (Postfix) with ESMTPS id C18518A4BE
	for <lists+clang-built-linux@lfdr.de>; Mon, 12 Aug 2019 19:36:09 +0200 (CEST)
Received: by mail-qt1-x839.google.com with SMTP id q9sf18029041qtp.20
        for <lists+clang-built-linux@lfdr.de>; Mon, 12 Aug 2019 10:36:09 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1565631368; cv=pass;
        d=google.com; s=arc-20160816;
        b=NU8QUMZ4Nb5UEwCuExrCULqZWf8OFGMnVKGRTaP/GPkfs1Y5YufTomjos+n99ObOwC
         4dSbAOA7tdRT+9JSOfCd2x+TlFwREy2YfhIRtfmJpLcP+kdi8pHJl7mEdnR9cLEOQanK
         1n2O9pue5LeywdKikCoTMjMs9WcITGefhQ5IahRdej54JQFDW7zVdafmBulU74YQpovj
         tQezkofceI+HEprq/VUTDoNEOp/ujpn0FXMD5lDmlA8UKBSScwy4iReJSKEqNtOIR9GC
         y60lYappJ6IScDaxmSVau3UhPHFlZ6PurYR3rBo4sqmr/GN0mHFvK7e+YyoVMaOg9cud
         xjmA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=DzgCiWG7AI9htGbIiX+yLmbqDo9sqJITmsENbLa4G4A=;
        b=blgurQGImS2W5Svl0FqxD//JNSPBcESiI8QjhTjOQ5qvXMJqI4qt1cxpSCxgu34Xm7
         dEhVcPCcDCBGngFu7/PTbnar+pfpxFpkMdUFe5K9OpvQYp/Z7f0tQS6a6x3JdU8s8swF
         llCnIM1GVQFWMUpIQNzq/KNBD2sVt51wIZ+M27uEtj+OmS6BTFS55zu5l+2BRerzMpcI
         gdD1/9KNu5Jr1i66WPBDWBRhcHgO+ZHDc+Zx98H8VMTuIyvSlSrJfkGTmk798FyBeEHq
         Z5oxqzzAE7u0v1T/36GRJuw4izMv8rywpDJElynZk3ygtMN8FWAGlbaExCj2a220kUol
         Wkfg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=RsNkwjci;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=DzgCiWG7AI9htGbIiX+yLmbqDo9sqJITmsENbLa4G4A=;
        b=i7mddI3FHRiORLijoF5x43/gkTOQ1JgBFrIJwCX4EDW+JBJ4Twfm8kSt8q14bGsL6m
         DgY210eXv9cO8vSUz4xvMY/cUQKl/FaLhNIGeVCbD6tva8XshqYUFKKsnnPhUXGTN1RL
         6iiXXbTRvYqVEFgK2w/7AdEbvBiJm/n/bV79Y6UyvrbsUX+nwVVp99nmaJ9o/ppMVxa8
         uQcmlS7Npx9ywdd02/CxXvZEsy6450izS/XeKKuFtWfhbtt1GPibUAGUUtIixL5w3lss
         wwry6BhAiqYSwxe2rLSczzjPfhqg50B0Tk/GDV4F+BN8UwbmmU7td48KJrc3ls2tu6G9
         Uwcw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=DzgCiWG7AI9htGbIiX+yLmbqDo9sqJITmsENbLa4G4A=;
        b=cDRg7cgZWOhoKb2e9YUfbhgNkjOwvX+kKJgLXeQts7IVdgUGwyl32lrOf87nO+U/4r
         Lu+oN3bVwCvwYEGWSs2Cpi+OZzalVVJv7px4A/wyn6OKlr39M6mRzjN/8STyehB/6uG7
         mem04wMyPEUzwTBYc66vJDcdHB6z05tKBELI6yNXoUKvgkxhFJ6QBegBA7Xk2i0QENJ6
         LRjvVguNeJK2+zfCu8rtU3woNhKUuiwXF+HaeeMeqxQpJJXOOVYMdEEfjNVdhntzl2zM
         OFjZkY0jbsNedNn+Hw6+vBn6MKtsRvxeWF874uJtEcE7s3DhITMHWSr3ZR7CGZmSqyok
         1UmQ==
X-Gm-Message-State: APjAAAVLBaEGHQenfGogcJZDoFJIU4ayS4VPUfMh8eEYtf1R/JvHGuhQ
	zJ0UiFTc2oYYzDwyyHQELbU=
X-Google-Smtp-Source: APXvYqw/4B6UECz5HrCeXl21Dof81qWgjDGyhzWPwGvlIw2YBBkrM0OAroXphpOv6lQs3GDG+rhBFw==
X-Received: by 2002:aed:3091:: with SMTP id 17mr27235679qtf.290.1565631368822;
        Mon, 12 Aug 2019 10:36:08 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:294d:: with SMTP id z13ls5012287qtz.11.gmail; Mon, 12
 Aug 2019 10:36:08 -0700 (PDT)
X-Received: by 2002:ac8:71c4:: with SMTP id i4mr10506729qtp.245.1565631368605;
        Mon, 12 Aug 2019 10:36:08 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1565631368; cv=none;
        d=google.com; s=arc-20160816;
        b=LHC9r7hGPDqjQnPO36ICzataONJDLR1ukz0VBJatU+un3iA+V8olNGxBhv1QcanXHb
         zagDiD0pAkmeZh1UiuaBeLZXUlzCoWasWMDQDZXsTrdzdcG0V5/mCILwl7ofP5hhcOw6
         PmhmHyApb1X8FEB6/VRgL9B2hFPINz+1fNa0P4PvRumD86yzcVuPYM92xqKyFyMGQeph
         4Zt7CdMpct/FxyGhNI+Xmm+klJSYmBE9yLYqemBs//V+qU8JeKYqfBmPOF5cmX400ZfG
         2hCVPI96LTYWma1kmlSpnxzeJGsfWU+v0i42sufs13jqYqo5rf7x9jVYARaRNZQ4r2Iq
         lC6g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=oZi4p9sU++IMNyLOoMu4O4MSpldoBC3la4O/D+JmVeE=;
        b=gv+ZorrON21Lo/A9bFW3mCpz4+lO/YWfRoxhkMpxgNFfqS902EZbtTTvmbomnhJ4/C
         48xO4VAqsr7IB6tBnf/eU7AHuyRfREeNr4Y/duri1mETMXl8bqKdgmaJ7UGz315uD3K0
         /p4QhuP0mdRfV17Oedegzi8ijvAifBz+AYIP0um5l7X10q8QdlsUN/z9x2VdATQkrE4W
         XuBBQIibh1YuZeCXCsdCqAjeGu47lkcT3vSuxFthGsBaUD7CwcpRc4ftLBqmcHtT8kp3
         eK9VDDnhVv7hHAzt2jmhiI6ZrX+nI3y52h9ncmobMY8PVFpenmdBZXjmSTpMiTjA2AjB
         CdTA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=RsNkwjci;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x544.google.com (mail-pg1-x544.google.com. [2607:f8b0:4864:20::544])
        by gmr-mx.google.com with ESMTPS id u47si808522qte.3.2019.08.12.10.36.08
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
        Mon, 12 Aug 2019 10:36:08 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::544 as permitted sender) client-ip=2607:f8b0:4864:20::544;
Received: by mail-pg1-x544.google.com with SMTP id n190so9029607pgn.0
        for <clang-built-linux@googlegroups.com>; Mon, 12 Aug 2019 10:36:08 -0700 (PDT)
X-Received: by 2002:a63:f94c:: with SMTP id q12mr30736518pgk.10.1565631367302;
 Mon, 12 Aug 2019 10:36:07 -0700 (PDT)
MIME-Version: 1.0
References: <20190812023214.107817-1-natechancellor@gmail.com>
In-Reply-To: <20190812023214.107817-1-natechancellor@gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 12 Aug 2019 10:35:56 -0700
Message-ID: <CAKwvOd=RzY2bkOOYUrvNSxZxz6B2VPn2siXA8pRFc9EP-W77qQ@mail.gmail.com>
Subject: Re: [PATCH] powerpc: Avoid clang warnings around setjmp and longjmp
To: Nathan Chancellor <natechancellor@gmail.com>
Cc: Benjamin Herrenschmidt <benh@kernel.crashing.org>, Paul Mackerras <paulus@samba.org>, 
	Michael Ellerman <mpe@ellerman.id.au>, linuxppc-dev <linuxppc-dev@lists.ozlabs.org>, 
	LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, "# 3.4.x" <stable@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=RsNkwjci;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::544
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

On Sun, Aug 11, 2019 at 7:42 PM Nathan Chancellor
<natechancellor@gmail.com> wrote:
>
> Commit aea447141c7e ("powerpc: Disable -Wbuiltin-requires-header when
> setjmp is used") disabled -Wbuiltin-requires-header because of a warning
> about the setjmp and longjmp declarations.
>
> r367387 in clang added another diagnostic around this, complaining that
> there is no jmp_buf declaration.
>
> In file included from ../arch/powerpc/xmon/xmon.c:47:
> ../arch/powerpc/include/asm/setjmp.h:10:13: error: declaration of
> built-in function 'setjmp' requires the declaration of the 'jmp_buf'
> type, commonly provided in the header <setjmp.h>.
> [-Werror,-Wincomplete-setjmp-declaration]
> extern long setjmp(long *);
>             ^
> ../arch/powerpc/include/asm/setjmp.h:11:13: error: declaration of
> built-in function 'longjmp' requires the declaration of the 'jmp_buf'
> type, commonly provided in the header <setjmp.h>.
> [-Werror,-Wincomplete-setjmp-declaration]
> extern void longjmp(long *, long);
>             ^
> 2 errors generated.
>
> Take the same approach as the above commit by disabling the warning for
> the same reason, we provide our own longjmp/setjmp function.
>
> Cc: stable@vger.kernel.org # 4.19+
> Link: https://github.com/ClangBuiltLinux/linux/issues/625
> Link: https://github.com/llvm/llvm-project/commit/3be25e79477db2d31ac46493d97eca8c20592b07
> Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>

Thanks for the patch, Nathan.
Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>

> ---
>
> It may be worth using -fno-builtin-setjmp and -fno-builtin-longjmp
> instead as it makes it clear to clang that we are not using the builtin
> longjmp and setjmp functions, which I think is why these warnings are
> appearing (at least according to the commit that introduced this waring).
>
> Sample patch:
> https://github.com/ClangBuiltLinux/linux/issues/625#issuecomment-519251372
>
> However, this is the most conservative approach, as I have already had
> someone notice this error when building LLVM with PGO on tip of tree
> LLVM.
>
>  arch/powerpc/kernel/Makefile | 5 +++--
>  arch/powerpc/xmon/Makefile   | 5 +++--
>  2 files changed, 6 insertions(+), 4 deletions(-)
>
> diff --git a/arch/powerpc/kernel/Makefile b/arch/powerpc/kernel/Makefile
> index ea0c69236789..44e340ed4722 100644
> --- a/arch/powerpc/kernel/Makefile
> +++ b/arch/powerpc/kernel/Makefile
> @@ -5,8 +5,9 @@
>
>  CFLAGS_ptrace.o                += -DUTS_MACHINE='"$(UTS_MACHINE)"'
>
> -# Disable clang warning for using setjmp without setjmp.h header
> -CFLAGS_crash.o         += $(call cc-disable-warning, builtin-requires-header)
> +# Avoid clang warnings about longjmp and setjmp built-ins (inclusion of setjmp.h and declaration of jmp_buf type)
> +CFLAGS_crash.o         += $(call cc-disable-warning, builtin-requires-header) \
> +                          $(call cc-disable-warning, incomplete-setjmp-declaration)
>
>  ifdef CONFIG_PPC64
>  CFLAGS_prom_init.o     += $(NO_MINIMAL_TOC)
> diff --git a/arch/powerpc/xmon/Makefile b/arch/powerpc/xmon/Makefile
> index f142570ad860..53f341391210 100644
> --- a/arch/powerpc/xmon/Makefile
> +++ b/arch/powerpc/xmon/Makefile
> @@ -1,8 +1,9 @@
>  # SPDX-License-Identifier: GPL-2.0
>  # Makefile for xmon
>
> -# Disable clang warning for using setjmp without setjmp.h header
> -subdir-ccflags-y := $(call cc-disable-warning, builtin-requires-header)
> +# Avoid clang warnings about longjmp and setjmp built-ins (inclusion of setjmp.h and declaration of jmp_buf type)
> +subdir-ccflags-y := $(call cc-disable-warning, builtin-requires-header) \
> +                   $(call cc-disable-warning, incomplete-setjmp-declaration)
>
>  GCOV_PROFILE := n
>  KCOV_INSTRUMENT := n
> --
> 2.23.0.rc2
>


-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOd%3DRzY2bkOOYUrvNSxZxz6B2VPn2siXA8pRFc9EP-W77qQ%40mail.gmail.com.
