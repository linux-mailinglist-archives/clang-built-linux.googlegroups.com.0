Return-Path: <clang-built-linux+bncBDYJPJO25UGBBAUG4WCQMGQEAV2CX7A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ej1-x638.google.com (mail-ej1-x638.google.com [IPv6:2a00:1450:4864:20::638])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FFE539AC34
	for <lists+clang-built-linux@lfdr.de>; Thu,  3 Jun 2021 23:00:51 +0200 (CEST)
Received: by mail-ej1-x638.google.com with SMTP id b10-20020a170906194ab02903ea7d084cd3sf2449167eje.1
        for <lists+clang-built-linux@lfdr.de>; Thu, 03 Jun 2021 14:00:51 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1622754051; cv=pass;
        d=google.com; s=arc-20160816;
        b=cv94RC7FJOPczCyoWQ8KtTjCOLkrBe4xDF2I2Mt4gHciQQR/vp4kLxM4R4IqP6uG7f
         pQyiSKlY8mom/Pqb9RIgT0Xt2hrhx8Ic9ipFxYKTa8CqA1Q6IyIiyBTtWJPaeXtz5tfY
         mUdbZezuvgIYlPmUsMqABnQ4jZ1vUm5AIJcoUk/mcgBSABGnPLDh+tOhGlyeteDQo/yh
         7TB8fgdpN0D+zouMsZd2VCtCLxhCbCQpaq3cVkspeTsO89+TbA8EcHgwSSJTNrB1wh10
         JpQjO3XbauEIptqIc9DTkgRblh+J4iHPBVtFJ4GTC10CUFymzR4evBdqzqDiYQ5A+DAI
         VzEA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=jabBR5AUgfNoTLC9K7awJ2pQFNt3jaG650mDD4xL8wM=;
        b=cU4JUjYZae6t8pvLELyqS2/19a6+u0Aqd889Whaun3fGh0lARI6IzMkDUdX3E/ERSi
         1gHupjCOS1A013K2aMZVuuDjuUNimbBK1Cd48z5KwEYwg8cjuorZq67LnaL/QlnlVmNY
         VREJVo23RF7HiwWjx1S8Ek2fK1UgtV+v5mRklcbOuSgW/N1pN7z/5bE+LePwoIjEbHqo
         90iOXFwL9CTTdB5+kHbUuCNOIAfygW73me1YLTblGqKhezHeHVz7SD/N4fpFHO1O4TYb
         oO3M30jYvcYdgRcYeYLoeJ2O4HBOh7Yij7hjaHmJwgfsHfnrKg9JR6lUjx6J54XPlCVY
         Y7yw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=dm5CMlsG;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::12a as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=jabBR5AUgfNoTLC9K7awJ2pQFNt3jaG650mDD4xL8wM=;
        b=NUea00xqrgD0g7OwmRrMFZR9G02e9vvzHwsLomXJ8bpF/fXXAjY5smk8+CTco1AStE
         6+6GhaJzzHGrBNosofKnnJNIsOEkLr4k58Ej4ozGfUC0bd/6Wh43EWHhrdhA2IFwiz3K
         VypVaA8hEO9t3H3orlecfMY9lt3+7nro43gDsMlm14h0vSMS5jLAXWRmW/nx79dRdHY9
         w0iIX+Myg9t01D5j7TJsMqp7zau0gJ90H2pYX1zyyZ6lEdyuX6lGOKLSt8meeGzt6lz/
         otqTHpwLz4I1U9WwAVFZj5m2WGlqg5v3iOEC2kq/UgiM+FOLLOVhU2G/7WyZEMNGgn3d
         +upw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=jabBR5AUgfNoTLC9K7awJ2pQFNt3jaG650mDD4xL8wM=;
        b=o5g6J7xLbXPqmSzh6xYtUz/ynMlFDjQ6tgzh5eO3ACVfHUpxyRnubFvIC0Sh87m3IO
         SlpQmifVPNsLyvqaGjsriBzLcoENTTVI/C/G4w2uTw9+ugzOwAGHO3fjV2NEhUd7QGHO
         gZg/VMx+geCBCeyScK1STRgntXJuCnnNHE4iObax0map7dlm4oJce/g6PyQSBiveVUT0
         sW+YM2GsFok2HuSiBmuttC3ZAJmxhCfQm3/k2bx1QRAsXx4bakwzXbvfnNebrkVAtZoZ
         TtsWG+Rq9g1KKaf5CZG0N1kND/K5GwGgvjIhvNCj4ojrcZSYPNj3/6V1EvzNM80TYCi6
         nh4w==
X-Gm-Message-State: AOAM533HyeZzV5iH72Jph7cfjT6AzE00VWg1KomAkKjuYNpoFD84hWaE
	kXG8tsA20bU3khPVKkHxbrw=
X-Google-Smtp-Source: ABdhPJz/XfRzcKMRqqp/XrbE5BM6pQUh/ma6FFSltQwrBYbEpPsAJiU17paQjuQ3QzAOVqRoIDBmBQ==
X-Received: by 2002:a17:906:7188:: with SMTP id h8mr1051531ejk.529.1622754050946;
        Thu, 03 Jun 2021 14:00:50 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6402:1c97:: with SMTP id cy23ls3915436edb.0.gmail; Thu,
 03 Jun 2021 14:00:49 -0700 (PDT)
X-Received: by 2002:aa7:c6c8:: with SMTP id b8mr1259808eds.213.1622754049906;
        Thu, 03 Jun 2021 14:00:49 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1622754049; cv=none;
        d=google.com; s=arc-20160816;
        b=Fdef5rcCGdOTfr2KznP7LS+IZaTjPtWJ0rgli46lHBu+VU6It/Zg/ejoozAf4AyZTq
         4ftn0FotkBVRYllTsbcPBWH7M+UF3msMJ6arzDcHfDD+R1ydTi6i/CJc+wwVcFZU2h41
         MIGR83fmPPtS6zqsl45u4y7KZnUZSj73oyXuOjXNNYU56kpE2G5Ur4WtfIEDiJ8AECga
         5MijHa2wxVQV2Str3zRRYj8G01AigwfmQo6Hx79ZQiBPsB4JHgCqhSWYIqeV/gVlJTQQ
         2Wk5n92jM9IuqC/iA1omPYMrPkLEAwAWp72BYyEtAnf+eF69lPPt9DuIFQo1bIPrT3jo
         NgUg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=XHl84Rjlmz5z7CisG4GhOYojkJVrwSv3e0lfWz8f8SI=;
        b=robyI+D/S1dBI3/WaEkVb9aTGMTlR3Qxk0TXqGeh1mahuvh/Ar1FgxcBqBNwoR6CZk
         FRPCyykkiuQ0orjn2jBJp3pyrYv91MBhVwQa/f6vjP8QJK/RriS62Oygb1VXmZbmnDRV
         +ny8gnb1Dr3XKt9XTyxz3/+P+AwiEezvFA42I9H5FxNBTNxjQ6AYu8ljHbCWkU9IjVNb
         lTwiANenFAdJiH72B8+DhCwYH3GlYf+w494ON48sInbxOM+HJ+bnZwSnEtxyTneyEwNs
         h4tfml/k++jM0jgcHW1sRoaG4AilV7ouZlfuu0+41D2ug+yJiqwpnd4pL2hRvkjK5Q3s
         IjCQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=dm5CMlsG;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::12a as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-lf1-x12a.google.com (mail-lf1-x12a.google.com. [2a00:1450:4864:20::12a])
        by gmr-mx.google.com with ESMTPS id r21si266915ejo.0.2021.06.03.14.00.49
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 03 Jun 2021 14:00:49 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::12a as permitted sender) client-ip=2a00:1450:4864:20::12a;
Received: by mail-lf1-x12a.google.com with SMTP id i10so10885620lfj.2
        for <clang-built-linux@googlegroups.com>; Thu, 03 Jun 2021 14:00:49 -0700 (PDT)
X-Received: by 2002:ac2:430f:: with SMTP id l15mr519767lfh.297.1622754049413;
 Thu, 03 Jun 2021 14:00:49 -0700 (PDT)
MIME-Version: 1.0
References: <20210603133853.5383-1-jarmo.tiitto@gmail.com> <CAKwvOd=ygrySyMkJuGwyG7OPCOrTagcFn02RfEKANvhhuZJdOA@mail.gmail.com>
 <f06200fd-4ce5-e976-20ec-d2ea9d734b3c@kernel.org>
In-Reply-To: <f06200fd-4ce5-e976-20ec-d2ea9d734b3c@kernel.org>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Thu, 3 Jun 2021 14:00:38 -0700
Message-ID: <CAKwvOdna4oLBQXsN_PfSik+zUkEuR3_ZLAHgZixr7qFtuPW4Gg@mail.gmail.com>
Subject: Re: [PATCH v2 1/1] pgo: Fix allocate_node() v2
To: Nathan Chancellor <nathan@kernel.org>
Cc: Jarmo Tiitto <jarmo.tiitto@gmail.com>, Sami Tolvanen <samitolvanen@google.com>, 
	Bill Wendling <wcw@google.com>, Kees Cook <keescook@chromium.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, LKML <linux-kernel@vger.kernel.org>, 
	Bill Wendling <morbo@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=dm5CMlsG;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::12a
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

On Thu, Jun 3, 2021 at 1:52 PM Nathan Chancellor <nathan@kernel.org> wrote:
>
> On 6/3/2021 1:50 PM, Nick Desaulniers wrote:
> > On Thu, Jun 3, 2021 at 6:41 AM Jarmo Tiitto <jarmo.tiitto@gmail.com> wrote:
> >>
> >> Based on Kees and others feedback here is v2 patch
> >> that clarifies why the current checks in allocate_node()
> >> are flawed. I did fair amount of KGDB time on it.
> >
> > Kees can probably cut it when merging, but the above paragraph might
> > be better "below the fold" below next time (doesn't necessitate a v3).
> >
> >>
> >> When clang instrumentation eventually calls allocate_node()
> >> the struct llvm_prf_data *p argument tells us from what section
> >> we should reserve the vnode: It either points into vmlinux's
> >> core __llvm_prf_data section or some loaded module's
> >> __llvm_prf_data section.
> >>
> >> But since we don't have access to corresponding
> >> __llvm_prf_vnds section(s) for any module, the function
> >> should return just NULL and ignore any profiling attempts
> >> from modules for now.
> >>
> >> Signed-off-by: Jarmo Tiitto <jarmo.tiitto@gmail.com>
> >> ---
> >
> > ^ ie. here. If you put text between the `---` and the diffstat, git
> > just discards it when applying. It's a good way to hide commentary
> > just meant for reviewers when sending a patch.
> >
> >
> >>   kernel/pgo/instrument.c | 21 ++++++++++++---------
> >>   1 file changed, 12 insertions(+), 9 deletions(-)
> >>
> >> diff --git a/kernel/pgo/instrument.c b/kernel/pgo/instrument.c
> >> index 0e07ee1b17d9..afe9982b07a3 100644
> >> --- a/kernel/pgo/instrument.c
> >> +++ b/kernel/pgo/instrument.c
> >> @@ -23,6 +23,7 @@
> >>   #include <linux/export.h>
> >>   #include <linux/spinlock.h>
> >>   #include <linux/types.h>
> >> +#include <asm-generic/sections.h>
> >>   #include "pgo.h"
> >>
> >>   /*
> >> @@ -55,17 +56,19 @@ void prf_unlock(unsigned long flags)
> >>   static struct llvm_prf_value_node *allocate_node(struct llvm_prf_data *p,
> >>                                                   u32 index, u64 value)
> >>   {
> >> -       if (&__llvm_prf_vnds_start[current_node + 1] >= __llvm_prf_vnds_end)
> >> -               return NULL; /* Out of nodes */
> >> -
> >> -       current_node++;
> >> -
> >> -       /* Make sure the node is entirely within the section */
> >> -       if (&__llvm_prf_vnds_start[current_node] >= __llvm_prf_vnds_end ||
> >> -           &__llvm_prf_vnds_start[current_node + 1] > __llvm_prf_vnds_end)
> >> +       const int max_vnds = prf_vnds_count();
> >
> > Sorry, where was prf_vnds_count() defined? I don't see it in
> > linux-next, but I'm also not sure which tree has
> > 5d0cda65918279ada060417c5fecb7e86ccb3def.
>
> It is generated via the __DEFINE_PRF_SIZE macro in kernel/pgo/pgo.h.

Thanks, it kills me when I can't find something with grep. I wonder if
language servers more modern than ctags have figured this out yet.

Patch looks fine to me then.
Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>

>
> >> +       /* Check that p is within vmlinux __llvm_prf_data section.
> >> +        * If not, don't allocate since we can't handle modules yet.
> >> +        */
> >> +       if (!memory_contains(__llvm_prf_data_start,
> >> +               __llvm_prf_data_end, p, sizeof(*p)))
> >>                  return NULL;
> >>
> >> -       return &__llvm_prf_vnds_start[current_node];
> >> +       if (WARN_ON_ONCE(current_node >= max_vnds))
> >> +               return NULL; /* Out of nodes */
> >> +
> >> +       /* reserve vnode for vmlinux */
> >> +       return &__llvm_prf_vnds_start[current_node++];
> >>   }
> >>
> >>   /*
> >>
> >> base-commit: 5d0cda65918279ada060417c5fecb7e86ccb3def
> >> --
> >> 2.31.1
> >>
> >
> >
> > --
> > Thanks,
> > ~Nick Desaulniers
> >
>
> --
> You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/f06200fd-4ce5-e976-20ec-d2ea9d734b3c%40kernel.org.



-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdna4oLBQXsN_PfSik%2BzUkEuR3_ZLAHgZixr7qFtuPW4Gg%40mail.gmail.com.
