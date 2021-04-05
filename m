Return-Path: <clang-built-linux+bncBCINP4E57QHBBD5TVGBQMGQEQBNAGVY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x240.google.com (mail-lj1-x240.google.com [IPv6:2a00:1450:4864:20::240])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B8EC353A34
	for <lists+clang-built-linux@lfdr.de>; Mon,  5 Apr 2021 02:28:00 +0200 (CEST)
Received: by mail-lj1-x240.google.com with SMTP id 3sf3226805ljf.2
        for <lists+clang-built-linux@lfdr.de>; Sun, 04 Apr 2021 17:28:00 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1617582479; cv=pass;
        d=google.com; s=arc-20160816;
        b=um/UnaI++NfO/33ywRKhUrPFB51aDZx+ESSA66dTrpJlrOTVdA8A+6UFzTmxUmGBWB
         EDJx38Uz48z9/2X9Cw88I0z1HBb6NcMqb8Rzi+/jUXbrMFMf2Bl93jUB9dBkN3HUbD7I
         lpyMr64JTFqkAEPOrsaoXdL352Z5fHvULaLOpHqDrPSzEX+AnhPwDcd20FzeDUIl9zV1
         hNJZI/nnRSnLfYtPbEB+j8w3ZUvP+HAHLI8rpC3dVxCaxVF4a9cGpdfM255wSnif8lro
         r4r0v14NVwB7Y355lVen8xecaD41qTQ5eKYhaOGdC+RvTFX+xMHrn2r6YSnysLJa22zK
         8h/w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=7YpDiyn8q6xcEJMOA0JmfL3OXm0BqYe1ONbVNzoIVNg=;
        b=RkzZCIAL5vpPwNnZ932BKUatyjWjcJzpR+bS1UFk1O5as130Zx1Llvo0C/G+Iw6QEW
         CbO2fZOtL91pvzrSnPblN5c6pHLY8boAeTGhLAXOgDY+b2b8UC2RR/+qxIfB77cZqWDs
         YU1yzTjSIwV/A8Xw84fcPSA++wFHSHzsbpdsa8l792S367m+0JNc0A6TIyrhPAvW8Y3v
         sZrG8v2MUfI9834cwyrJEDGwhu8pKwtohJvCo9cXJBZ/h2b8ZR6G/sY+HYT496uR3kIN
         u/aX2DvcFWuXQdYHNYECY7KTFtnyyBatBEeppoYmcjXidNQIOhjwDfTo8pW5hz/m+mxv
         OBvw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=B6aS04Pj;
       spf=pass (google.com: domain of vipinsh@google.com designates 2a00:1450:4864:20::134 as permitted sender) smtp.mailfrom=vipinsh@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=7YpDiyn8q6xcEJMOA0JmfL3OXm0BqYe1ONbVNzoIVNg=;
        b=SpNRpOlmDLIigaIr17eGaWSikT3ANAOk1OFzomOhq4wSaMX0kswih4KNVaMySP6GOj
         VIwRfWjEB6uRMbL7IO5wMgLTWEbrfyQBxz9VHrXHYkUvdgysgckVtdnkh1+1wXhBhyuI
         CrI58JUTAkowbJkandQg+VhBLwbPo7X9OoYpCgHr7XPVk0rreELgwInxk62UgqikFlKB
         /WA8mS4ABiByg0ZXwZZXK8zuaj9aIw734auOjzW3mtWc1JGS7Tw8TDhTDwDcoU0k8zP4
         dHK8IJOByR6nRUjSg6biZw72kLjc/rYgVYTVddGOQ9Ct20xtQ/YdBHgQeFGB9QmCKxu1
         XI2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=7YpDiyn8q6xcEJMOA0JmfL3OXm0BqYe1ONbVNzoIVNg=;
        b=mq9qfxpT2mq64wzpvU9TNAiFYY/Qt8ez7M/Gek+AgCK+aLe1kLCC+aGoni0PnzHgG0
         Uwll/jx2SBz4eCXvxXmplOsv4xTSs2X4evwrppDWsEwui84r7EMYiCpzmQAYQKEylcnJ
         DCRKNyRVTTRFozz3bL1RvLc3SlMqEkne9k6fTaQejDSvHh7wwESBepGwT1FD24HOHhYA
         8RhQjhHHSnbcvRfe93i8x3mc0P4k+oelJutdHmkwL9QLb2YMCgRhkez+YLLtGBnpvTgL
         uLLZan2YCY5IAwwM3H7jPOyQOnoqhysGWOeec1JASOMzIhugNai0b+QbKA84BnlkWFh6
         rgig==
X-Gm-Message-State: AOAM531ClSQNUsPbCL1+w7a0QYRnuFS7jR+6ta5RqExwQFMgOPO1aopL
	4s/vlD+ugDMTkg6DKEFl93I=
X-Google-Smtp-Source: ABdhPJyAKckNIees8/s1efVzkuD26GRstFQrDRlhmxoi7JyqZCHu/b/R9rRU0vOmDdqSRaTZMkmPXg==
X-Received: by 2002:a05:6512:1026:: with SMTP id r6mr16627137lfr.598.1617582479620;
        Sun, 04 Apr 2021 17:27:59 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac2:58f8:: with SMTP id v24ls4029437lfo.2.gmail; Sun, 04 Apr
 2021 17:27:58 -0700 (PDT)
X-Received: by 2002:a19:ab09:: with SMTP id u9mr16476956lfe.324.1617582478597;
        Sun, 04 Apr 2021 17:27:58 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617582478; cv=none;
        d=google.com; s=arc-20160816;
        b=GW3DjqEKk0UYhKcFuaqSzc7W5CcTAQKyqjFUf3D/oBPfz4eT/SDkGQTjM9aGgKEM5L
         yaHMrS0G6PSe68FfxlrXBze6c796U3gdBk0AogWPKY7Dc/ijo94A8vW7FqyWTrXFpmth
         NSG85xsZA6m0oakDWz0ADERgu2g3b3vrBsuBS0D/+/bp4+AmKTHJZ+BbkgOfhgezvXCr
         Z61nkGeYcrmMkNFC8vUetXLmBmlYoVp2gH8SK7IT0jqWR4UBcpvVtQC9uR++uEQ7wiAB
         OPFxuytjvH+V0xe58cpSdwAZaAebVKd3Fm9ljZNXLms4tc/zV2z4fT5R36QO9x868Arx
         xcZA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=ZF918p7w2NV7GDL6H66e14qUO918kYzYBoimRTX60mw=;
        b=A/UWvv3PqVaao465syNr/eHjQHqcLYc/YacBYyNILUBjYqEC9ivhH4yrStmYNe4coD
         8ITj1Uenf1MlrAaIEyFCXUm2zvs4FBVddivuPlB+1R63D/1WIvIsonGw0JcT65qcGIwm
         gavlzAay++YzeiUGyLxYg2oBil/1vQnY46aYccHu99nazvtL4hlIIUB3+T0CZECjPeqn
         hpfknG2QqlZiIB+OLX7xUhXWbxn92rKKle4Y9sY0d/9DxN95r0qIUy9xsnJpP+Is5CMZ
         DYspPDsgRrVPWD63TISlSGNVVgWg2W3ooTBOY5uRH/4oiGj6uQ5NqEKNv4KmwA8p7hVh
         TwCQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=B6aS04Pj;
       spf=pass (google.com: domain of vipinsh@google.com designates 2a00:1450:4864:20::134 as permitted sender) smtp.mailfrom=vipinsh@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-lf1-x134.google.com (mail-lf1-x134.google.com. [2a00:1450:4864:20::134])
        by gmr-mx.google.com with ESMTPS id v26si1342222lfo.2.2021.04.04.17.27.58
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 04 Apr 2021 17:27:58 -0700 (PDT)
Received-SPF: pass (google.com: domain of vipinsh@google.com designates 2a00:1450:4864:20::134 as permitted sender) client-ip=2a00:1450:4864:20::134;
Received: by mail-lf1-x134.google.com with SMTP id v15so15192695lfq.5
        for <clang-built-linux@googlegroups.com>; Sun, 04 Apr 2021 17:27:58 -0700 (PDT)
X-Received: by 2002:a19:e210:: with SMTP id z16mr14970547lfg.576.1617582478196;
 Sun, 04 Apr 2021 17:27:58 -0700 (PDT)
MIME-Version: 1.0
References: <202104050523.t4Om6TmY-lkp@intel.com> <YGo+f3XoA4CtRAPt@mtj.duckdns.org>
In-Reply-To: <YGo+f3XoA4CtRAPt@mtj.duckdns.org>
From: "'Vipin Sharma' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Sun, 4 Apr 2021 17:27:41 -0700
Message-ID: <CAHVum0d1A7pbVEOy8U6iCXCtf8YOfAEkAXwhhyFgkxXHFPGjFQ@mail.gmail.com>
Subject: Re: [cgroup:for-next 3/3] include/linux/misc_cgroup.h:98:15: warning:
 no previous prototype for function 'misc_cg_res_total_usage'
To: Tejun Heo <tj@kernel.org>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com, 
	cgroups@vger.kernel.org, David Rientjes <rientjes@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: vipinsh@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=B6aS04Pj;       spf=pass
 (google.com: domain of vipinsh@google.com designates 2a00:1450:4864:20::134
 as permitted sender) smtp.mailfrom=vipinsh@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Vipin Sharma <vipinsh@google.com>
Reply-To: Vipin Sharma <vipinsh@google.com>
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

On Sun, Apr 4, 2021 at 3:32 PM Tejun Heo <tj@kernel.org> wrote:
>
> Applied the following patch to cgroup/for-5.13.
>
> Thanks.
> ----- 8< -----
> From dd3f4e4972f146a685930ccfed95e4e1d13d952a Mon Sep 17 00:00:00 2001
> From: Tejun Heo <tj@kernel.org>
> Date: Sun, 4 Apr 2021 18:29:37 -0400
> Subject: [PATCH] cgroup: misc: mark dummy misc_cg_res_total_usage() static
>  inline
>
> The dummy implementation was missing static inline triggering the following
> compile warning on llvm.
>
>    In file included from arch/x86/kvm/svm/sev.c:17:
> >> include/linux/misc_cgroup.h:98:15: warning: no previous prototype for function 'misc_cg_res_total_usage' [-Wmissing-prototypes]
>    unsigned long misc_cg_res_total_usage(enum misc_res_type type)
>                  ^
>    include/linux/misc_cgroup.h:98:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
>    unsigned long misc_cg_res_total_usage(enum misc_res_type type)
>    ^
>    static
>    1 warning generated.
>
> Add it.
>
> Signed-off-by: Tejun Heo <tj@kernel.org>
> Reported-by: kernel test robot <lkp@intel.com>
> ---
>  include/linux/misc_cgroup.h | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/include/linux/misc_cgroup.h b/include/linux/misc_cgroup.h
> index c5af592481c0..da2367e2ac1e 100644
> --- a/include/linux/misc_cgroup.h
> +++ b/include/linux/misc_cgroup.h
> @@ -95,7 +95,7 @@ static inline void put_misc_cg(struct misc_cg *cg)
>
>  #else /* !CONFIG_CGROUP_MISC */
>
> -unsigned long misc_cg_res_total_usage(enum misc_res_type type)
> +static inline unsigned long misc_cg_res_total_usage(enum misc_res_type type)
>  {
>         return 0;
>  }
> --
> 2.31.1
>

Thanks for the quick patch Tejun. Sorry about the issue.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAHVum0d1A7pbVEOy8U6iCXCtf8YOfAEkAXwhhyFgkxXHFPGjFQ%40mail.gmail.com.
