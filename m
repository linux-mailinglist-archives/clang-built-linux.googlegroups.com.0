Return-Path: <clang-built-linux+bncBD4NDKWHQYDRB6HKSHVQKGQEVOR744I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x137.google.com (mail-lf1-x137.google.com [IPv6:2a00:1450:4864:20::137])
	by mail.lfdr.de (Postfix) with ESMTPS id EC41A9DA68
	for <lists+clang-built-linux@lfdr.de>; Tue, 27 Aug 2019 02:12:40 +0200 (CEST)
Received: by mail-lf1-x137.google.com with SMTP id z1sf695506lfe.9
        for <lists+clang-built-linux@lfdr.de>; Mon, 26 Aug 2019 17:12:40 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1566864760; cv=pass;
        d=google.com; s=arc-20160816;
        b=ZuXdxcH/hLLHvWR3ZfeB0pWrYZFvcRXxfiutH5Eyat6nUfQ8N4Mz10Vt2Ohbj9frUO
         63NvH66s7Xi8ysOi0Mpt+3fWsAcaMfAhpZxwZbdhwTPaCq+4Go14CcwXvvo3uB1vlwtm
         WGIlV4SbwAGMfcyi1Gnco+GBD0WEaZ0L+2RjAIMuoNu6hKAHMdpa0LsCtzD+bzfywgKw
         U6roHdyZ+zifQO19NBBTithtk1e6bYuD7jTwQTCmQ85t5ZfG0VZ4MlkG5hS5r7uBwRkt
         Ucla3SPqR7zTT9+s8KnvdWXQ5ETfX4rcUEuUBrvtgPt+dug5/rAIg+QWhb+PgehyjCUS
         mqDQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature:dkim-signature;
        bh=rp2zU0SyViS8fk0SZLx+qWtdYF+nurGeSYYmoN7PJP8=;
        b=VlAX5MqWQOZUx02N5bIoaHkRLOQzJANSaKhtjxe6L7ake5lyOhwqgCgfWoktqq8Uns
         ST3HkU2PHC26OyW8/2TTk10/uUQIcFHZabRcy1zBlSt8+tlDrm1IEBfMKlKSJsjefaRw
         524btCCS6vS+IMTbAwbZ7MdFpo/XxWGb523sugeaJfT+yvb+XuMDoRzu+xADG5jG2NL2
         chLv7WSeNuo6Dzt1NbPIoiePYzMg9TO8GREfMHHdb2p94/BAMaHv70z3RxZ+CqxjWAHv
         EKxxPlZghMSF4mrsy8NSbo5CqDO82VdQhBQOpC4NCZNLwTO8CkaOPxA6WuXHt8wveo0F
         6lxw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=PKzN5Duf;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::343 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=rp2zU0SyViS8fk0SZLx+qWtdYF+nurGeSYYmoN7PJP8=;
        b=tNHso1LtHMh8m/MWI/SNAHZ1CZr+UGVW/DMS7Aazbw/+kTRUt1N3PRzEqd7Up41eP+
         Xvm5PvxHGxbuO6GhYhlOWCFy91UHJntI2rlib11zW5C66zpPJdtNnUQ4mqvgiXN9QRLD
         8J8aj22MC99a2OnwZDwxu69oyMVRAufnHW9AW98GV/N5SqMSeg4iJ/9B4nlqr+DTlmHT
         h3Fw9vI7NGZLvxBjwgx4Pb0s2bwZutZA01WE68kKVe8Riy/Wb1CF1LfaJs1VMA58ydin
         oFAdlLNb8odzrtByl9gJr2aJQoc38yQTs98VAkOwUkUUIgoSLszBRjOOLFkADEYIMtxs
         +dZQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=rp2zU0SyViS8fk0SZLx+qWtdYF+nurGeSYYmoN7PJP8=;
        b=MtnXvGngZlO96EJE3273hFbIKOlB+GPZ8lq6AN7ihXFNwYziN/uPmeqciMtW74dBje
         xLJltk2u/Xi4KnW9bOWE2l8iuM0+AHeUaUTtYGj9ZGWXlVDFvHLEjaYjg8O/ew7Ue3Jc
         VQ7N+ICVPbdcQ6+GvpVWB0s7XjVUV09gWVNthUk7ZGQGPNosfLwF7NAQHzugdUuwQ5m0
         cblDo0G1dizh9MsF5ryKH8qaqbHYmJ99QRI68ohWcWHQDc6DMN9JEJbTuoDGOzRDp5xE
         7c9hTvnat8g1dXaaa6e+g8NxTGgfKn2gAtYLHcZbTqH/JylTEiQNlFN7JbFSYlQvWPIC
         1TDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=rp2zU0SyViS8fk0SZLx+qWtdYF+nurGeSYYmoN7PJP8=;
        b=OYyKzCi/hBlwozOapuRBaSvMMR7MXRHYcyv8NRrwNurpX4Hycw0HaOLlsPxBH6xcE1
         XY+OOmMiNGqxqb981fe6kMKokIBNbKeRFhdWJgOdXG0A9saEa6dajIZGXOBCGl2QpgVG
         ZY5pw1WFVssh6XjJND9plnFX5X3fMEfDpHV8BKccfBDbnwUl86rIHbN5bPRdLDrWK6bG
         feCvS2LW3/QXKGTTI945GoyAr58K7m/rQbHBdvIs11/P+YjeS8sPPCTFCTexqnvClIZd
         eHv7o8+zySpDfXd1Nm4taVw/hAzkkq9ZZXac6CQN6b7jtbjm2opRQXKAji/fhPKsQryN
         gYPw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWX6uY2Z9uNcBY3bP2DJC8AthguZxlHIn+dE/NRUTEVemU7iqf/
	zal1Qr7yak3caHwPSg21/Y0=
X-Google-Smtp-Source: APXvYqxw/WFRO96fWq/xpZrwSJGp7Mp3XLAUW1yxIt1PZ3qdxsAfxO48RE5tHoqtcpNDQFoRL/xLVg==
X-Received: by 2002:ac2:4552:: with SMTP id j18mr7972809lfm.122.1566864760501;
        Mon, 26 Aug 2019 17:12:40 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:3018:: with SMTP id w24ls2059252ljw.16.gmail; Mon, 26
 Aug 2019 17:12:40 -0700 (PDT)
X-Received: by 2002:a2e:3e18:: with SMTP id l24mr12236682lja.67.1566864760053;
        Mon, 26 Aug 2019 17:12:40 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1566864760; cv=none;
        d=google.com; s=arc-20160816;
        b=eDlk07PHpcq3nK3aS7XGeBMMEYQZIzX2i3kuxhQ+u3uxi3BbS5Vp/R5G+ny8X0a6P3
         xsWdYU5BJqKOPDIB/mS0XqewdZn9zRCPD8SCcZQfnHG1QEa0FkcFEwZtLSjkG7jbRGIH
         Y5/Cgrgg7Y1fNmDWzHGI+ZdatTs1x7NxzgPBLgoEca1jiEzI0ncG5hH6PK/HP/l+WHRS
         YrV40+CO1UOmAeSHkKszt6eG/CulOikWnz/5C3u4tQhJyA8BAtFhDozxA8THrz4aLCgO
         Q2Zxmf548vzmeG8xMWHMMdQQHaTLqfrZnj7h36Y1h92DCMNfv/aZjCcOgRLaczJUXLf6
         ezYA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=bB0HYsROX648Uz+NeihK0Ak7qHb0HK/01IOFw0GVKwo=;
        b=gyzHsSBHbvPcmnhMooSwLENawlv088nB/t63TSnmrFl9VODlWZ/HWg/E/XbEvBI2RY
         Q9eKv4twzO5ALeAMtgAMNlABXanTlfDlKCodSXo1nSBztBg6gznqZGqoy3AojHPCcJfh
         XV/bq6xtaFUciAjIuNIdONaVvot2+yrRFeoBGhnAsAy3YZBsl7WOwSn/Y27SjDvPeiRO
         i2RZndMVAiBheoUBM5le6ZitOsjdAszpSym5PlicWBe8DW9QNB62x5+6mdJLARZoiSFk
         G2wi+6FV1tgE2519NTt2x9elrbgHpS3QAMhbcuc5fEK7Arsevs01ElLikI0HAGr03thC
         8ulw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=PKzN5Duf;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::343 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-wm1-x343.google.com (mail-wm1-x343.google.com. [2a00:1450:4864:20::343])
        by gmr-mx.google.com with ESMTPS id b8si589048lfp.3.2019.08.26.17.12.40
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 26 Aug 2019 17:12:40 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::343 as permitted sender) client-ip=2a00:1450:4864:20::343;
Received: by mail-wm1-x343.google.com with SMTP id 10so1158561wmp.3
        for <clang-built-linux@googlegroups.com>; Mon, 26 Aug 2019 17:12:40 -0700 (PDT)
X-Received: by 2002:a1c:f106:: with SMTP id p6mr22529010wmh.148.1566864759283;
        Mon, 26 Aug 2019 17:12:39 -0700 (PDT)
Received: from archlinux-threadripper ([2a01:4f8:222:2f1b::2])
        by smtp.gmail.com with ESMTPSA id r17sm34516156wrg.93.2019.08.26.17.12.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 26 Aug 2019 17:12:38 -0700 (PDT)
Date: Mon, 26 Aug 2019 17:12:37 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Benjamin Herrenschmidt <benh@kernel.crashing.org>,
	Paul Mackerras <paulus@samba.org>,
	Michael Ellerman <mpe@ellerman.id.au>,
	Nick Desaulniers <ndesaulniers@google.com>
Cc: linuxppc-dev@lists.ozlabs.org, linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com, stable@vger.kernel.org
Subject: Re: [PATCH] powerpc: Avoid clang warnings around setjmp and longjmp
Message-ID: <20190827001237.GA117465@archlinux-threadripper>
References: <20190812023214.107817-1-natechancellor@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20190812023214.107817-1-natechancellor@gmail.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=PKzN5Duf;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2a00:1450:4864:20::343 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Sun, Aug 11, 2019 at 07:32:15PM -0700, Nathan Chancellor wrote:
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
>  CFLAGS_ptrace.o		+= -DUTS_MACHINE='"$(UTS_MACHINE)"'
>  
> -# Disable clang warning for using setjmp without setjmp.h header
> -CFLAGS_crash.o		+= $(call cc-disable-warning, builtin-requires-header)
> +# Avoid clang warnings about longjmp and setjmp built-ins (inclusion of setjmp.h and declaration of jmp_buf type)
> +CFLAGS_crash.o		+= $(call cc-disable-warning, builtin-requires-header) \
> +			   $(call cc-disable-warning, incomplete-setjmp-declaration)
>  
>  ifdef CONFIG_PPC64
>  CFLAGS_prom_init.o	+= $(NO_MINIMAL_TOC)
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
> +		    $(call cc-disable-warning, incomplete-setjmp-declaration)
>  
>  GCOV_PROFILE := n
>  KCOV_INSTRUMENT := n
> -- 
> 2.23.0.rc2
> 

Did any of the maintainers have any comment on this patch?

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190827001237.GA117465%40archlinux-threadripper.
