Return-Path: <clang-built-linux+bncBDYJPJO25UGBBMVUQSBAMGQEJBFCDFQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ej1-x63c.google.com (mail-ej1-x63c.google.com [IPv6:2a00:1450:4864:20::63c])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F12332D8A6
	for <lists+clang-built-linux@lfdr.de>; Thu,  4 Mar 2021 18:34:42 +0100 (CET)
Received: by mail-ej1-x63c.google.com with SMTP id gb19sf12498141ejc.11
        for <lists+clang-built-linux@lfdr.de>; Thu, 04 Mar 2021 09:34:42 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1614879282; cv=pass;
        d=google.com; s=arc-20160816;
        b=Izf1oJmugie3mXsMCUs3sfepE5Nc5u3nLCaxZN4FtVg7DLiBlGzTRTM6e3D++ZJH8z
         wXzPf3K0mcdX9bo4RiWPg/XSYftmyJrVJ52pypSFcYqouRRYAgH1B0LWCTA4hi2QGErc
         KOU7Do4YANgr4tDb7O9ts8eErgWGAxQfVVcLBgwh99u/oE4JcYros9Xj78BGrPybhenv
         /8i5d2TghpiJh8O6A+dbRL34UAdvU1gIKGBwB5ORwcI1v9GIxr2bb2kHWnO21Em3Gf/1
         ZfOsXn2oQqP6zlXxrnLgbBqlAqeQVnNbP24UnHOAgKIKaAhqY8eRbTf2N2G/x4yHF7N9
         JrBA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-transfer-encoding
         :cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=g6FtGNw/+vMd3Ydzy9PgKIKsTX6wJ1IdzhEjrwnjM4A=;
        b=xKVzZUY6xBo/dH4y0eqY66EAPqoy6CzghYzVyVEBExXFYdXlLH+HMGNvJcHmAluCZS
         s5N0enoEehXCF1Pxt5NmzpJZToYMsI5yRtry26lFagrq5eJmgIRfMDtQIQlVlK1VoDn9
         jVAoA+QpoBA5K4QeKl+zK6zUYO3o7xr7WuXDFb6mOi/EXwlw9UxK6UH7yFgcP0WfEz3r
         3JDLgOZVvxVp7GIqMDeblSUjVcmhMm/7iWTVFQDWyH2SiFizclUcnpwual2BSlASpdyp
         Nzyq/P6R8cXlAOIo7zOX6XiLTxim1rttsc/ger71Anfoix2dV0sSLQvyYoFfHb8SowFl
         ISPg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="ov8/nFem";
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::231 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=g6FtGNw/+vMd3Ydzy9PgKIKsTX6wJ1IdzhEjrwnjM4A=;
        b=Oe1KTpR4e2ZzZKB4C5JXLFg4eesOdaw4Y1fnG16Dg7glAYj086P7VXbQiS1oyUZh5G
         MnoiSH9NgXYjnqcwMdEZKJimluFxG+cKwVeNOQqzZpbwajBYTEly66k6FIAcB+yWB8wx
         nU2QNa4Eq3ahyEzIm7PrXrEyYxY3werlbGXgNtgOQxqLIIpA1EzLnwThkgFzdnbN8PTd
         6swN4RboodX+l65yaruF+5gNpPPkPPo6rcQeot3lJql8BqHT9f6SNeS/Ko2B7k/dnTNA
         cjLckKoo3ABmL2twH3v5J0bdfsSpW4Gxa2aOu3l3STIYPqRQeH2FdlBs1RAIg+UiaGB1
         gNYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=g6FtGNw/+vMd3Ydzy9PgKIKsTX6wJ1IdzhEjrwnjM4A=;
        b=N6WGM7gOTup0Sm/oeeq3WCJnV6TphGfSxblHr11b7DSORGRXTkqXmxjaPtF9bZQRtV
         o8oVFPtE3863VaeRpNzma22srxZYo6BBoqanuLKvjPKeQWsGTjEYJpSjVBY/MaHvoPgL
         lCYihycrgnK7yMbRafzTd9kVvEAEvZegCt8nVryCMLLtf3Mf5taoac+8l0mKV36hCYmx
         RX3ABsFz3joaMELhAJfhcFfktmTwpY3M9AHvrsZD3DzjO1ifWlcobKsa8w/oeqdS1n2S
         pZ1KOkR6uCXck5kw5Vfv0pahTQCflg40IFWb+e1OxnAcZF1ag6+F1M+nnGHM7Sd4Lmyi
         9zPg==
X-Gm-Message-State: AOAM531F1oE9TNTISY6NMg+IZ9LTd2emFgztTj+ZyjGGFEgVaiBc5hYb
	jhSFg2O4Twu8VqKbPqP6YxI=
X-Google-Smtp-Source: ABdhPJwtgcewj3ZKH+9cJx2jABxT7JF6fc5lnDY8PwYYc7VQYpvlKVO3lBYQfp1nCJkSw1eVDP5Azw==
X-Received: by 2002:a05:6402:5188:: with SMTP id q8mr5573642edd.89.1614879282333;
        Thu, 04 Mar 2021 09:34:42 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aa7:c653:: with SMTP id z19ls1298245edr.2.gmail; Thu, 04 Mar
 2021 09:34:41 -0800 (PST)
X-Received: by 2002:a05:6402:312b:: with SMTP id dd11mr5604516edb.149.1614879281375;
        Thu, 04 Mar 2021 09:34:41 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1614879281; cv=none;
        d=google.com; s=arc-20160816;
        b=eg1AmTZrQONw3MRv+dyEe0ROhP6WyjwdymuC1WWHDG9GESVtjhBriG8Y+Tfm03slY9
         b+wi+SdbiW15ui2WWfufW1CQfAWXCMNBSuZLyLDj4ff8BMB0N13hBsImRhDozIuFA8Y1
         dMDOLnJfQshQJU9C0AAUfWPFZW7OgfEqSkweq5RFE6gQboWx0VOEn/9zRef2kQxv/LT/
         K6TQEx2ZwEwoC3UtVMmxP9gXfma5LzZbANZcVlb5n74o6fLngGvxKGEd4A0UcVTNA1wx
         qJeSP4EFuNhTyYYMhA9T754lQE/ixHt03v0006i2nD7wlwNS6dOtDu/OOWePY5L+yOZO
         9ArQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=nhQUkZdRR30HOXaJaC3+WVNEIt/nPm3693Z/MPSB2r4=;
        b=lljGomztuWCS3fHf/b3Hred5utn0CT2EW8kvLked6Nk22slra8ns2PsC1sNJlEUS3C
         88eon9VFTp/FadUpCT03vDqeRRdEVZ4H+Emi+T3dTvcyWZvtA9bf8evFvJfe2PuQgpPy
         1kXExkghd9PfpX4zjyudnAtAACkWKAlyG6OCsD+Pe7n52a/5ihJknu2TBMPbA0WAc0vy
         FrHy0xDSXUbpyEBpPxrAjDLEwgVaUxh1Ns3Y2WqoNQgj2tf4jdOk4jxqS/NPe+BPTt/U
         PCteLitr+e/hy+msWWxWRV99y0QCxQEI3+MecoIfdU8eybyEEuPqxpVrDpA2JRR9MgiV
         Gv1w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="ov8/nFem";
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::231 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-lj1-x231.google.com (mail-lj1-x231.google.com. [2a00:1450:4864:20::231])
        by gmr-mx.google.com with ESMTPS id df17si5344edb.3.2021.03.04.09.34.41
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 04 Mar 2021 09:34:41 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::231 as permitted sender) client-ip=2a00:1450:4864:20::231;
Received: by mail-lj1-x231.google.com with SMTP id r23so34359300ljh.1
        for <clang-built-linux@googlegroups.com>; Thu, 04 Mar 2021 09:34:41 -0800 (PST)
X-Received: by 2002:a2e:868e:: with SMTP id l14mr2906875lji.479.1614879280871;
 Thu, 04 Mar 2021 09:34:40 -0800 (PST)
MIME-Version: 1.0
References: <YD9dUkGhlRT8vvcy@hirez.programming.kicks-ass.net> <20210303224653.2579656-1-joshdon@google.com>
In-Reply-To: <20210303224653.2579656-1-joshdon@google.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Thu, 4 Mar 2021 09:34:29 -0800
Message-ID: <CAKwvOdmijctJfM3gNfwEVjaQyp3LZkhnAwgsT7EBhsSBJyfLAA@mail.gmail.com>
Subject: Re: [PATCH v2] sched: Optimize __calc_delta.
To: Josh Don <joshdon@google.com>
Cc: Ingo Molnar <mingo@redhat.com>, Peter Zijlstra <peterz@infradead.org>, 
	Juri Lelli <juri.lelli@redhat.com>, Vincent Guittot <vincent.guittot@linaro.org>, 
	Dietmar Eggemann <dietmar.eggemann@arm.com>, Steven Rostedt <rostedt@goodmis.org>, 
	Ben Segall <bsegall@google.com>, Mel Gorman <mgorman@suse.de>, 
	Daniel Bristot de Oliveira <bristot@redhat.com>, Nathan Chancellor <nathan@kernel.org>, 
	LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Clement Courbet <courbet@google.com>, 
	Oleg Rombakh <olegrom@google.com>, Bill Wendling <morbo@google.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b="ov8/nFem";       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::231
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

On Wed, Mar 3, 2021 at 2:48 PM Josh Don <joshdon@google.com> wrote:
>
> From: Clement Courbet <courbet@google.com>
>
> A significant portion of __calc_delta time is spent in the loop
> shifting a u64 by 32 bits. Use `fls` instead of iterating.
>
> This is ~7x faster on benchmarks.
>
> The generic `fls` implementation (`generic_fls`) is still ~4x faster
> than the loop.
> Architectures that have a better implementation will make use of it. For
> example, on X86 we get an additional factor 2 in speed without dedicated
> implementation.
>
> On gcc, the asm versions of `fls` are about the same speed as the
> builtin. On clang, the versions that use fls are more than twice as
> slow as the builtin. This is because the way the `fls` function is
> written, clang puts the value in memory:
> https://godbolt.org/z/EfMbYe. This bug is filed at
> https://bugs.llvm.org/show_bug.cgi?id=3D49406.

Hi Josh, Thanks for helping get this patch across the finish line.
Would you mind updating the commit message to point to
https://bugs.llvm.org/show_bug.cgi?id=3D20197?

>
> ```
> name                                   cpu/op
> BM_Calc<__calc_delta_loop>             9.57ms =C2=B112%
> BM_Calc<__calc_delta_generic_fls>      2.36ms =C2=B113%
> BM_Calc<__calc_delta_asm_fls>          2.45ms =C2=B113%
> BM_Calc<__calc_delta_asm_fls_nomem>    1.66ms =C2=B112%
> BM_Calc<__calc_delta_asm_fls64>        2.46ms =C2=B113%
> BM_Calc<__calc_delta_asm_fls64_nomem>  1.34ms =C2=B115%
> BM_Calc<__calc_delta_builtin>          1.32ms =C2=B111%
> ```
>
> Signed-off-by: Clement Courbet <courbet@google.com>
> Signed-off-by: Josh Don <joshdon@google.com>
> ---
>  kernel/sched/fair.c  | 19 +++++++++++--------
>  kernel/sched/sched.h |  1 +
>  2 files changed, 12 insertions(+), 8 deletions(-)
>
> diff --git a/kernel/sched/fair.c b/kernel/sched/fair.c
> index 8a8bd7b13634..a691371960ae 100644
> --- a/kernel/sched/fair.c
> +++ b/kernel/sched/fair.c
> @@ -229,22 +229,25 @@ static void __update_inv_weight(struct load_weight =
*lw)
>  static u64 __calc_delta(u64 delta_exec, unsigned long weight, struct loa=
d_weight *lw)
>  {
>         u64 fact =3D scale_load_down(weight);
> +       u32 fact_hi =3D (u32)(fact >> 32);
>         int shift =3D WMULT_SHIFT;
> +       int fs;
>
>         __update_inv_weight(lw);
>
> -       if (unlikely(fact >> 32)) {
> -               while (fact >> 32) {
> -                       fact >>=3D 1;
> -                       shift--;
> -               }
> +       if (unlikely(fact_hi)) {
> +               fs =3D fls(fact_hi);
> +               shift -=3D fs;
> +               fact >>=3D fs;
>         }
>
>         fact =3D mul_u32_u32(fact, lw->inv_weight);
>
> -       while (fact >> 32) {
> -               fact >>=3D 1;
> -               shift--;
> +       fact_hi =3D (u32)(fact >> 32);
> +       if (fact_hi) {
> +               fs =3D fls(fact_hi);
> +               shift -=3D fs;
> +               fact >>=3D fs;
>         }
>
>         return mul_u64_u32_shr(delta_exec, fact, shift);
> diff --git a/kernel/sched/sched.h b/kernel/sched/sched.h
> index 10a1522b1e30..714af71cf983 100644
> --- a/kernel/sched/sched.h
> +++ b/kernel/sched/sched.h
> @@ -36,6 +36,7 @@
>  #include <uapi/linux/sched/types.h>
>
>  #include <linux/binfmts.h>
> +#include <linux/bitops.h>

This hunk of the patch is curious.  I assume that bitops.h is needed
for fls(); if so, why not #include it in kernel/sched/fair.c?
Otherwise this potentially hurts compile time for all TUs that include
kernel/sched/sched.h.

>  #include <linux/blkdev.h>
>  #include <linux/compat.h>
>  #include <linux/context_tracking.h>
> --
> 2.30.1.766.gb4fecdf3b7-goog
>


--=20
Thanks,
~Nick Desaulniers

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/CAKwvOdmijctJfM3gNfwEVjaQyp3LZkhnAwgsT7EBhsSBJyfLAA%40mai=
l.gmail.com.
