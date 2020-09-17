Return-Path: <clang-built-linux+bncBDYJPJO25UGBBZWPR35QKGQEOO6SLBA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc3d.google.com (mail-oo1-xc3d.google.com [IPv6:2607:f8b0:4864:20::c3d])
	by mail.lfdr.de (Postfix) with ESMTPS id 4008226E35A
	for <lists+clang-built-linux@lfdr.de>; Thu, 17 Sep 2020 20:16:08 +0200 (CEST)
Received: by mail-oo1-xc3d.google.com with SMTP id n6sf1455626oos.12
        for <lists+clang-built-linux@lfdr.de>; Thu, 17 Sep 2020 11:16:08 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1600366567; cv=pass;
        d=google.com; s=arc-20160816;
        b=vMsacUIf+PqRlAKnOve1ftPRwudRCOvdk6XtCwU2XGWe3a8DgPB2Pt+q3nxYSau8za
         fpBKNxL6uei5IszMyoIPxsfoGULoEGyL3SAGemtgBjzB4360G6zQDNqCJ6dch8jWl/b5
         RPhcBB70p/naZm5uGLixiSDziK7kqImQDNexz8XZerIqYIoDBNrDfTkwME7+QTlBKxCa
         bgnNFmfvbUwFOMQVTvqgolNibjkzZduR0C21YYWT1KchG0/V7GuQZ4lJ6oWMnL5mWvZJ
         Qy2c+eIcJumtAhpvQHju958UwucDB0tYFCk55t+0R1TDrSijA3Ha5osvtmgwCOvJRnIi
         4vZA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=DqoZrPJHzvSfv4hP+JTqbqbRE6SuCdKQyxUvtkvEPs4=;
        b=br7iMIxnF+tocrZh/zT+L7EqlWLStBFBZttp8E6FXr84J7icYJVERPuuVKaU3uNWlx
         p8pmZ1z9lFMcgCEiEhyA0T6xUyNrkFwj0JVB3WzUFfm6hE1AN1hjSjBHdJrzc7cRIS4L
         AWXLpy0SRLKbVM1tuoW6c6F9ggvDX4bJZTCWljU9GM6682fsQsCTV+DsDDJsLM4SIGMk
         8EwwUfwJZUOcmmL+iEHXlXKiQu7R8h5UfYljCImEfKQi8xvpWkRkRjaKKgjcu+7J0nAw
         4J2cYXu2NxajoT/bUT9hfOPL4VkzJKOQ74yWWQRFEG3+5BIkZfZHADTRUcM1poExctVH
         ux4g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=vxxCO7Jr;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::642 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=DqoZrPJHzvSfv4hP+JTqbqbRE6SuCdKQyxUvtkvEPs4=;
        b=CUAnuZ4kcHPkP7xPmfQ7geGCjgP/xa+6DK9juaoZQrs+vyTni0IoDkb3PfD1BfiWkI
         AJ+H61KOcYSTL7WccVfUWcFMl+lj/yp+YLNPRNEoiLZv+GUcaYcX68zjd4jXein9+RYl
         l8N7AQd5jp82wfzze7XvL3YRrQ3B5Io7cFWvIRsQPX3UZKr9V8E6eRTmYAnSP1XFsQK9
         6QZVJJpWJoitEdNl7EhI6weCxlJDCgQYrtdrkKXBC8f/+1FpiNJQM8sKkKTBcmT1c7A8
         Mp+advETr27fVXfp2pQr2w1cjQrM9qd2s3rIgLbGm90Bs2KyPN/ElreN3PCkRXwiDcev
         Da8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=DqoZrPJHzvSfv4hP+JTqbqbRE6SuCdKQyxUvtkvEPs4=;
        b=i0REt71WmPDF0LKHE4Lelqgx3ThCt/BxJ4mTD50DiNss2fNNfaaYzoJYvyUlWQJREh
         bjKAD0cEzq346iet/R9eLosQH7bYD9/kYGd1yvw9sILtlFLJ7VvN1MNMFbRixsfhEsKn
         BhBEV3qsOGC6Rae4L6z0vC3eMuzj1CXJNnIwDaM18X1DDerHq1F4SBUEi9dnj393AsLz
         vik26LIAO3MlYX9aR6LYQVFzvQG2bgvadgMtgU8OQB2juTwz34Ix6oZRtospwq4/C3TS
         C6HpKUZChXggAVy4m1xDXbmtwJpiHFX/R0ZyYcHkepltQHDC6ZuM024kcMEtXTvLwp0m
         Ro4A==
X-Gm-Message-State: AOAM531zRDuI7PFptroY1mCivit2951k0Oo6knP4sbDQRqzBGLQZ6zBc
	llfd/88pHdn6DgJUBo2y1e0=
X-Google-Smtp-Source: ABdhPJx3cuiBJuReK5zcU/KMRE6tHPakQ+nXcT27rM0mIoapTg4lRXSIcUDdpo1HVRK8BLWfoGX/xQ==
X-Received: by 2002:aca:1108:: with SMTP id 8mr6825028oir.74.1600366566984;
        Thu, 17 Sep 2020 11:16:06 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:b88b:: with SMTP id i133ls671116oif.10.gmail; Thu, 17
 Sep 2020 11:16:06 -0700 (PDT)
X-Received: by 2002:a54:438f:: with SMTP id u15mr7220768oiv.162.1600366566605;
        Thu, 17 Sep 2020 11:16:06 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1600366566; cv=none;
        d=google.com; s=arc-20160816;
        b=H6wW9QrAWopitcc3OEb+Sjy//Du6DmwLALIJS77pHhY/xqSoC00/v1olcSO5PdZNkW
         GxcuxticJC/ZJxRaikXnLSAn8u/vvayZUjh/SD9rteQqtPhyfDXXVai2PSVDU0XCZRji
         teqUAaB/yZ8Pv3Lp1A7l18ZrKxWKb1jEvAGSymPRX6X+krY9oh6Ivtl2F7EBWiBa47mA
         w0LDGTpicBDfbpiU2v7/3zddKNls+sGZzG9K2lRYXXdS+oUVt79T2ikkRzlsOG2OBwbR
         wY9nCc7GgWHx8Xn2tR19WS3NtLE/7rjNEvwNSnoMlnEM9x8zHHAHouxFUKbQeSdxySlN
         DwCQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=pJlz1lyl7aTxHeTmVzs1SzNTrj8gWqaynH0CCR1cE3c=;
        b=jVJzLIE0McEl3rmpKLFAT0bYpqlikF7/STqyK5mlzHhVXD9BfKsFpOaoW0zzB8vbyF
         em1aN4s/ZsUmB8vFYNEvPI65KzIh+iZJUsu6M5RCpjxmfbYJmQt5gwzIn/EmZrmGAK9K
         yqTE5vsTFjz7tMK/olf0AnfthtWq7Nb7NM17rb1kwOJ7804/tKARejUAti+jciRArupd
         YW6OzBDp/zOqdqTRd6YXRGckdsr19dHAhoBQONf3fEa0+//YzwoUVmUMMaRxCITby8CW
         NuGxj+bkfHdKCO+zHceSjwP4vEWimQP2/Pw8fWrbxALnxXVLmpWpajmLmc8po66j9eKz
         Qp1g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=vxxCO7Jr;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::642 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x642.google.com (mail-pl1-x642.google.com. [2607:f8b0:4864:20::642])
        by gmr-mx.google.com with ESMTPS id u27si60828otg.5.2020.09.17.11.16.06
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 17 Sep 2020 11:16:06 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::642 as permitted sender) client-ip=2607:f8b0:4864:20::642;
Received: by mail-pl1-x642.google.com with SMTP id k13so1570327plk.3
        for <clang-built-linux@googlegroups.com>; Thu, 17 Sep 2020 11:16:06 -0700 (PDT)
X-Received: by 2002:a17:90a:e517:: with SMTP id t23mr9138243pjy.25.1600366565663;
 Thu, 17 Sep 2020 11:16:05 -0700 (PDT)
MIME-Version: 1.0
References: <20200917084905.1647262-1-ilie.halip@gmail.com>
In-Reply-To: <20200917084905.1647262-1-ilie.halip@gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Thu, 17 Sep 2020 11:15:54 -0700
Message-ID: <CAKwvOdkBPrdekTsMnhvN2OH-vk1eLU+ZC-1MJ5jgA2FDq7Ja3A@mail.gmail.com>
Subject: Re: [PATCH] objtool: ignore unreachable trap after call to noreturn functions
To: Ilie Halip <ilie.halip@gmail.com>
Cc: LKML <linux-kernel@vger.kernel.org>, Rong Chen <rong.a.chen@intel.com>, 
	Marco Elver <elver@google.com>, Philip Li <philip.li@intel.com>, Borislav Petkov <bp@alien8.de>, 
	kasan-dev <kasan-dev@googlegroups.com>, 
	"maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>, clang-built-linux <clang-built-linux@googlegroups.com>, 
	Josh Poimboeuf <jpoimboe@redhat.com>, Peter Zijlstra <peterz@infradead.org>, 
	Nathan Chancellor <natechancellor@gmail.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=vxxCO7Jr;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::642
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

On Thu, Sep 17, 2020 at 1:49 AM Ilie Halip <ilie.halip@gmail.com> wrote:
>
> With CONFIG_UBSAN_TRAP enabled, the compiler may insert a trap instruction
> after a call to a noreturn function. In this case, objtool warns that the
> ud2 instruction is unreachable.
>
> objtool silences similar warnings (trap after dead end instructions), so
> expand that check to include dead end functions.

Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
Tested-by: Nick Desaulniers <ndesaulniers@google.com>
Reported-by: kbuild test robot <lkp@intel.com>

Thanks for the patch, Ilie!  With this, a
defconfig+CONFIG_UBSAN+CONFIG_UBSAN_TRAP goes from 82 unreachable
instruction warnings from objtool to 0.

$ make LLVM=1 -j71 defconfig
$ make LLVM=1 -j71 menuconfig
<enable UBSAN and UBSAN_TRAP>
$ make LLVM=1 -j71 2> log.txt
$ grep warning: log.txt | cut -d ' ' -f 2- | sort | uniq -c | wc -l
82
$ b4 am https://lore.kernel.org/lkml/20200917084905.1647262-1-ilie.halip@gmail.com/
-o - | git am
$ make LLVM=1 -j71 clean
$ make LLVM=1 -j71 2> log.txt
$ grep warning: log.txt | cut -d ' ' -f 2- | sort | uniq -c | wc -l
0

>
> Cc: Nick Desaulniers <ndesaulniers@google.com>
> Cc: Rong Chen <rong.a.chen@intel.com>
> Cc: Marco Elver <elver@google.com>
> Cc: Philip Li <philip.li@intel.com>
> Cc: Borislav Petkov <bp@alien8.de>
> Cc: kasan-dev@googlegroups.com
> Cc: x86@kernel.org
> Cc: clang-built-linux@googlegroups.com
> BugLink: https://github.com/ClangBuiltLinux/linux/issues/1148
> Link: https://lore.kernel.org/lkml/CAKwvOdmptEpi8fiOyWUo=AiZJiX+Z+VHJOM2buLPrWsMTwLnyw@mail.gmail.com
> Suggested-by: Nick Desaulniers <ndesaulniers@google.com>
> Signed-off-by: Ilie Halip <ilie.halip@gmail.com>
> ---
>  tools/objtool/check.c | 10 +++++++---
>  1 file changed, 7 insertions(+), 3 deletions(-)
>
> diff --git a/tools/objtool/check.c b/tools/objtool/check.c
> index e034a8f24f46..eddf8bf16b05 100644
> --- a/tools/objtool/check.c
> +++ b/tools/objtool/check.c
> @@ -2612,9 +2612,10 @@ static bool is_ubsan_insn(struct instruction *insn)
>                         "__ubsan_handle_builtin_unreachable"));
>  }
>
> -static bool ignore_unreachable_insn(struct instruction *insn)
> +static bool ignore_unreachable_insn(struct objtool_file *file, struct instruction *insn)
>  {
>         int i;
> +       struct instruction *prev_insn;
>
>         if (insn->ignore || insn->type == INSN_NOP)
>                 return true;
> @@ -2639,8 +2640,11 @@ static bool ignore_unreachable_insn(struct instruction *insn)
>          * __builtin_unreachable().  The BUG() macro has an unreachable() after
>          * the UD2, which causes GCC's undefined trap logic to emit another UD2
>          * (or occasionally a JMP to UD2).
> +        * CONFIG_UBSAN_TRAP may also insert a UD2 after calling a __noreturn
> +        * function.
>          */
> -       if (list_prev_entry(insn, list)->dead_end &&
> +       prev_insn = list_prev_entry(insn, list);
> +       if ((prev_insn->dead_end || dead_end_function(file, prev_insn->call_dest)) &&
>             (insn->type == INSN_BUG ||
>              (insn->type == INSN_JUMP_UNCONDITIONAL &&
>               insn->jump_dest && insn->jump_dest->type == INSN_BUG)))
> @@ -2767,7 +2771,7 @@ static int validate_reachable_instructions(struct objtool_file *file)
>                 return 0;
>
>         for_each_insn(file, insn) {
> -               if (insn->visited || ignore_unreachable_insn(insn))
> +               if (insn->visited || ignore_unreachable_insn(file, insn))
>                         continue;
>
>                 WARN_FUNC("unreachable instruction", insn->sec, insn->offset);
> --
> 2.25.1
>


-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdkBPrdekTsMnhvN2OH-vk1eLU%2BZC-1MJ5jgA2FDq7Ja3A%40mail.gmail.com.
