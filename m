Return-Path: <clang-built-linux+bncBDYJPJO25UGBB2PXS3VQKGQE6NZEU7I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x93c.google.com (mail-ua1-x93c.google.com [IPv6:2607:f8b0:4864:20::93c])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D9E49F6DA
	for <lists+clang-built-linux@lfdr.de>; Wed, 28 Aug 2019 01:25:30 +0200 (CEST)
Received: by mail-ua1-x93c.google.com with SMTP id 2sf36103uat.20
        for <lists+clang-built-linux@lfdr.de>; Tue, 27 Aug 2019 16:25:30 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1566948329; cv=pass;
        d=google.com; s=arc-20160816;
        b=0JxSC+c7RBt9YZbGU0pT1W0qOHilLRQeZ4XiDuNqfZ5Za8L9QbxB+5Y8gCkLXKlHx9
         8ZvXa2qAPGmpqQaoRQmMfHDI2j27ZbfarfGliHFqsI8i0EvSO2XXXMtV15hvtufocJY5
         Mv7lWWgizrujP98K303jke7PkkWJamV8+kxtzb5CQYyQkWXx0fRv0AEUWIRe0sttokZr
         pFtmGZnOFyywR+Y5Gi4UX1lWrQemp8UCBGGEVOQksF+u/PcDOAbyYYyk1O6arVc5MVRj
         ug5yE18AiU7o13ayzm7StwW5C+iI1zZusct/vvTbSMF/691rBhhJ8tFq9xmKNOq7uI2t
         axow==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=0HH37Grs7pdp4Epk3SPWcluGiw9XLFZm+13K49kDnJM=;
        b=MSUl6LgXLGHllJNbB5Pks1Qij21BXPvJPVqADq03DkGvcniqwZYa53GlbORh3X0aCS
         tLQQ0KWWfbkUre+KjW9TqtIxtwZSChzU7G2O4iDhB7MDk+200B/m0X+DHnDa1ma+nGXI
         LJ631R87dKZwWT9WaBfz4KZookuU/eqjAERPdZnfJvXjYgJqhyGzHr++JFOUi6zOhMLc
         tuYQeXSFK/+9cbDUUMZshtg+PLqtXxnH9fyhZIps8he2l9t9EoNlYdYWQNPy4bIc/QQw
         MLt+BfCohBzDmwuQ6kWwtYdV3PT28tTjmSE9cwoZfFoIrMoNE91aXJI+YbEEglsohGuW
         jGWw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="GWIVi50/";
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::543 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=0HH37Grs7pdp4Epk3SPWcluGiw9XLFZm+13K49kDnJM=;
        b=oLu1PD6/Lbc3C2yXt52W4J1DjcJdJ6LXtHhrlAU+4/Q1Xe02sogE9YqKfcSHwqx9bd
         XVsHxu8z+PWlpSBrzDWhAyYs1FGzShDfoyB0rT4gf/X5Z7Q7zYbZUmZtJVyAiaaXL8kF
         A8ZsUSNWfJesAq9lq2WfOKmdLVH+et2iAuPwWQhlGdbl/7sCw4e5PQhMcnVAvxRjb9/t
         oYqAHfmnqfp/x/qJU/ZYjVAaMPAWruHwgasYRpVbvotkbylCpscmaCc/S1L9Ncpy06SD
         WiqDE1w1NvlGvsuEswrdY/y87+dgBwW3xaeFNkCp7quIkGgs7pZwv6jFOX3opnY/lmIr
         Tt2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=0HH37Grs7pdp4Epk3SPWcluGiw9XLFZm+13K49kDnJM=;
        b=g2IyEjlcJgUjHyqFCKK346rLShce2+9EhA469b8Orwjq32fFwKOYodljswmmlrhmVX
         XWH/rAspaiVppETm5fFi5tlx8t86dGoFdkJEuFM3vGCeJZbHu2rBmqjWeBfWZydEe/rn
         QgHG4CNxUq/zcVuTi13lGn3gTlWW31S/PgSw4Tz8fdfVA0FNjbfhU3tk4xPDHpH6E5py
         NKBneUiJft2Fnf3p1azXZMvdO0DDZTFzOWjAWqSo5Vn4yX2jhOjXNrkG8O6kcOTpx6+K
         HWvOR/29sFJjBK/QGN0BL/9PhDPa/oJdEUmhxB1cvYzXvINWlDmtwrA1NWi7+0Y16Qd+
         U4fw==
X-Gm-Message-State: APjAAAUeaxyNZse8ReanbiogjwvD/u8zfK7TnC+Ug8q1YMm2O1eg6kun
	vmBBqny3gtTuEFNUlRHQU80=
X-Google-Smtp-Source: APXvYqwSWcJ3HXO78Jlr2TyCOY1RqhNhr15kLM4oYELXns7DTrPxsyvZ2sjOKHs4xqFHojFP8+HsFw==
X-Received: by 2002:ab0:248a:: with SMTP id i10mr451252uan.32.1566948329617;
        Tue, 27 Aug 2019 16:25:29 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:ff07:: with SMTP id v7ls98502vsp.12.gmail; Tue, 27 Aug
 2019 16:25:29 -0700 (PDT)
X-Received: by 2002:a67:c192:: with SMTP id h18mr808268vsj.40.1566948329409;
        Tue, 27 Aug 2019 16:25:29 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1566948329; cv=none;
        d=google.com; s=arc-20160816;
        b=ozmPka9+iB7/aJjORLEdPNZXxJBAp1QQMVfMpI/OLYO7OFhl36lUd9dp0VmCG7c8FT
         HYipBrBn0o9GFjUulGb4bF2pq8I7Enn2637di3T86EZdaO8lpF52NMmFOldxDKxZM1F6
         MJ0Flebg5qbW50MWI+mSTCz+DRVcAEYZDHEdIlN2LkbXzILHG9IvDRLrnvp9/yiCLlJe
         nL63maHJ1A23MhC9nWKyZ+vTExbG878kvDwTRN7kXBO20ct1Zoj2ePm7XDBWNf6K2jzE
         thKvsb73D1ugZsw1/Fjx+BhECh9TuGJ+Ts9sekPVHSu4c2SaNLMmIeCYuzSxari8HtBs
         9+DQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=C3Lh+/0FHXGNq2XvS9+HzZnHDnerotizKClAN2CZjKM=;
        b=mmdCjVPRI4mvLUFUzyzxWrUw5FoPYXgloharhuetip2ytrW5J1ii4c8JtGBbaoJoyX
         NL23UJNLCbRgBfRnkb4ayCCpPjMzNQ+Oje3UdaRDdnJigeD3QhfQBMQuVk5KO1yJwoxY
         LQW90hQ7ksSjU9452dziBSF01cw5hMMmuKUz/lbxbD+B0Ek+A3E7nXR5qSMN2nNO4FPP
         pPLfFaer8NxIuliGMIwgTExh+BvEJeLPBX0c2c6+oTjf72sKjCIqVllwmdTghu8ZR6Xd
         mDANFHWld1TO5nlDV7ORQrf3V5DGR6jYJTiOSBWlnfhCCPYmh/lx8YCvuRDqVrReCHSR
         5XKw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="GWIVi50/";
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::543 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x543.google.com (mail-pg1-x543.google.com. [2607:f8b0:4864:20::543])
        by gmr-mx.google.com with ESMTPS id v22si68608vsm.0.2019.08.27.16.25.29
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 27 Aug 2019 16:25:29 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::543 as permitted sender) client-ip=2607:f8b0:4864:20::543;
Received: by mail-pg1-x543.google.com with SMTP id k3so298067pgb.10
        for <clang-built-linux@googlegroups.com>; Tue, 27 Aug 2019 16:25:29 -0700 (PDT)
X-Received: by 2002:aa7:984a:: with SMTP id n10mr1197241pfq.3.1566948328083;
 Tue, 27 Aug 2019 16:25:28 -0700 (PDT)
MIME-Version: 1.0
References: <1566920867-27453-1-git-send-email-cai@lca.pw>
In-Reply-To: <1566920867-27453-1-git-send-email-cai@lca.pw>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 27 Aug 2019 16:25:16 -0700
Message-ID: <CAKwvOdmEZ6ADQyquRYmr+uNFXyZ0wpBZxNCrQnn8qaRZADzjRw@mail.gmail.com>
Subject: Re: [PATCH] mm: silence -Woverride-init/initializer-overrides
To: Qian Cai <cai@lca.pw>, Masahiro Yamada <yamada.masahiro@socionext.com>
Cc: Andrew Morton <akpm@linux-foundation.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Linux Memory Management List <linux-mm@kvack.org>, LKML <linux-kernel@vger.kernel.org>, 
	Mark Rutland <mark.rutland@arm.com>, Arnd Bergmann <arnd@arndb.de>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b="GWIVi50/";       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::543
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

On Tue, Aug 27, 2019 at 8:49 AM Qian Cai <cai@lca.pw> wrote:
>
> When compiling a kernel with W=1, there are several of those warnings
> due to arm64 override a field by purpose. Just disable those warnings
> for both GCC and Clang of this file, so it will help dig "gems" hidden
> in the W=1 warnings by reducing some noises.
>
> mm/init-mm.c:39:2: warning: initializer overrides prior initialization
> of this subobject [-Winitializer-overrides]
>         INIT_MM_CONTEXT(init_mm)
>         ^~~~~~~~~~~~~~~~~~~~~~~~
> ./arch/arm64/include/asm/mmu.h:133:9: note: expanded from macro
> 'INIT_MM_CONTEXT'
>         .pgd = init_pg_dir,
>                ^~~~~~~~~~~
> mm/init-mm.c:30:10: note: previous initialization is here
>         .pgd            = swapper_pg_dir,
>                           ^~~~~~~~~~~~~~
>
> Note: there is a side project trying to support explicitly allowing
> specific initializer overrides in Clang, but there is no guarantee it
> will happen or not.
>
> https://github.com/ClangBuiltLinux/linux/issues/639
>
> Signed-off-by: Qian Cai <cai@lca.pw>
> ---
>  mm/Makefile | 3 +++
>  1 file changed, 3 insertions(+)
>
> diff --git a/mm/Makefile b/mm/Makefile
> index d0b295c3b764..5a30b8ecdc55 100644
> --- a/mm/Makefile
> +++ b/mm/Makefile

Hi Qian, thanks for the patch.
Rather than disable the warning outright, and bury the disabling in a
directory specific Makefile, why not move it to W=2 in
scripts/Makefile.extrawarn?


I think even better would be to use pragma's to disable the warning in
mm/init.c.  Looks like __diag support was never ported for clang yet
from include/linux/compiler-gcc.h to include/linux/compiler-clang.h.

Then you could do:

 28 struct mm_struct init_mm = {
 29   .mm_rb    = RB_ROOT,
 30   .pgd    = swapper_pg_dir,
 31   .mm_users = ATOMIC_INIT(2),
 32   .mm_count = ATOMIC_INIT(1),
 33   .mmap_sem = __RWSEM_INITIALIZER(init_mm.mmap_sem),
 34   .page_table_lock =
__SPIN_LOCK_UNLOCKED(init_mm.page_table_lock),
 35   .arg_lock =  __SPIN_LOCK_UNLOCKED(init_mm.arg_lock),
 36   .mmlist   = LIST_HEAD_INIT(init_mm.mmlist),
 37   .user_ns  = &init_user_ns,
 38   .cpu_bitmap = { [BITS_TO_LONGS(NR_CPUS)] = 0},
__diag_push();
__diag_ignore(CLANG, 4, "-Winitializer-overrides")
 39   INIT_MM_CONTEXT(init_mm)
__diag_pop();
 40 };


I mean, the arm64 case is not a bug, but I worry about turning this
warning off.  I'd expect it to only warn once during an arm64 build,
so does the warning really detract from "W=1 gem finding?"

> @@ -21,6 +21,9 @@ KCOV_INSTRUMENT_memcontrol.o := n
>  KCOV_INSTRUMENT_mmzone.o := n
>  KCOV_INSTRUMENT_vmstat.o := n
>
> +CFLAGS_init-mm.o += $(call cc-disable-warning, override-init)

-Woverride-init isn't mentioned in the commit message, so not sure if
it's meant to ride along?

> +CFLAGS_init-mm.o += $(call cc-disable-warning, initializer-overrides)
> +

-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdmEZ6ADQyquRYmr%2BuNFXyZ0wpBZxNCrQnn8qaRZADzjRw%40mail.gmail.com.
