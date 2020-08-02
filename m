Return-Path: <clang-built-linux+bncBDYJPJO25UGBBOPRTD4QKGQEMN45Q7I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3f.google.com (mail-io1-xd3f.google.com [IPv6:2607:f8b0:4864:20::d3f])
	by mail.lfdr.de (Postfix) with ESMTPS id DDD6F235501
	for <lists+clang-built-linux@lfdr.de>; Sun,  2 Aug 2020 05:53:30 +0200 (CEST)
Received: by mail-io1-xd3f.google.com with SMTP id k10sf24087387ioh.22
        for <lists+clang-built-linux@lfdr.de>; Sat, 01 Aug 2020 20:53:30 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1596340409; cv=pass;
        d=google.com; s=arc-20160816;
        b=wI+2WFeIaeRrkUXlr5PyrM7Gnp4+BxA9LQ7S0XcK0/EwDVfpkkVKEkaPtmw/8hGYQs
         wMXBJY+0jlEB70hhKqxpOSxQCesuyAHHbTZr2NsTxYg1p+szN8Qn8CwSsxBZyZ8b66+P
         UHDj+lXtcUdRURp4Ex09kmItGSv3eDtfZ8gKLbE9ceYB0/dWjFQFwl16mVz5CVgCBQFE
         3Rp6VhDxJIhgKOW+fUCfiFTaLrccolOg8+czDJTAcY24NFpCUZ7VOe9bFEe99zqPSY2m
         C4g2XbmRs+foeqriOa1a2XjXiUmqGnmQe2+67mV/OFz6sU7Z5pQNcEHl+DrjyXWMnglA
         23eg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=3DlMA2tE8lkONj2bPWqqK193adP7+b3CxW5iuvS70b4=;
        b=FvU1qBOH1SkGAmlYFen0CDLo7fEdos3tE644ur0u57jo38GTnWL5vz97JxKXb2Htgd
         f3vMreeUnpgQxRmtKTeHG9XzYfb/kNwP4+g/tJvUYWI/04vMZ3Cym7s6X6CUKO6eipBd
         KFOGtRwdbza7KyDwshV8hCSqWkf2tOZYKxXt6GSuOJyQb0izCs9+Wko8PLSHslq4OySB
         kist+0ptD9bqZyAk7Q/DPAOCUrRrbX5/ifdLDxM0rJSIRfXCFTdNfFQ5njcNC4mCm2V0
         1gxVXIIqAV+aSHhtr6aQI1l4HegYKMhhMWiucfC813WJHV5mf5EjdihJOGMmq90rRL/G
         NRxQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=u15PzPSz;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::102a as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=3DlMA2tE8lkONj2bPWqqK193adP7+b3CxW5iuvS70b4=;
        b=P9JDstNnUgI+9dkGEaxZESbTTMdKwHEazWm7BqNab8wM+0NN1f+uTO5RRXXREZjM8q
         tD/+de6Y/TnaBq+NjDZu/aviTBDgzyLMysjc4ORDl5ya7WNq8Q9IqE/H2pOYZ9nJ9u6T
         zLGYjckzAc+gJdF9917/Wq80VB0OhEVfiJzePeDPCabjA6fnO+ixKFC4Di2H7K1DOYtW
         r2F18zpoEMF/1yaki5X//NB/KEFO/+tnekeX8mKCcyEQ5IVRpGWptbvBx8bQY21YGz5M
         FgetITnA7WSHlW6Lf8XadzRIkxpclgA3nkLJQBoPI+7igWBYhrC3MvE9BEjuiRUu8dbf
         9oIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=3DlMA2tE8lkONj2bPWqqK193adP7+b3CxW5iuvS70b4=;
        b=oJ/Q/mHUU0tvShJr8rK605h4jzmf8rbzf/S6vx/ouvjitxMYPgowMeqlSzOaYms4Ux
         u4WZOYSp9sDmHpXimBJvR5q5SzlkwC64xAWiiarceumXN0yHWc04/BlaJI6KTorw/yBb
         uUiI8oGI+oAHdGNywRxMaD9PNW/EpniobKZLFDe2qfx3NrL6LyJFjv2amB1QnUIeb/6K
         VjC1V0WXeWXw8X7VIIhNrF02s0XG/OTIYlQEsRTAe+ahGrCsjfGwjtKbLfi93keyOvH+
         UjK8EM1UUZ53xQbwzlG0Pg9G43rFPgkcwP0uNWHhqDGjiyX/0DVgJrSnRQOvQWumJCqs
         LvvQ==
X-Gm-Message-State: AOAM533ZvGPSn2HJ763612jn7ZUfClmsBtIpKHOJO5+/zQD8U+QotbB1
	85wo0Bz0q+khr/hzatygsrQ=
X-Google-Smtp-Source: ABdhPJy+X0Poir/ZhYxzCidcwraY4DZdRaV7HDyolIMf3IqEyKv3BVtppBsrGvSEcUdryekvFPbfoA==
X-Received: by 2002:a92:650e:: with SMTP id z14mr11076540ilb.207.1596340409670;
        Sat, 01 Aug 2020 20:53:29 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:ba4c:: with SMTP id o73ls3526775ili.11.gmail; Sat, 01
 Aug 2020 20:53:29 -0700 (PDT)
X-Received: by 2002:a92:d289:: with SMTP id p9mr11598929ilp.100.1596340409395;
        Sat, 01 Aug 2020 20:53:29 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1596340409; cv=none;
        d=google.com; s=arc-20160816;
        b=DL/luADLwYmHitQYnNi7A/139DcG5Iaftbx91WNenktGCeO9vi/JxgVK7100prJ6Zk
         GA/endNURYilTUevBZhitt5GC2sx73r2SF5NoYyLg1s7nEWTYSujntdsHITEtRmYTypC
         d1qUeeESp64NX/qCJZhqHn+BmZ8R95h7ABYvPOWjaERqpTIBJElz/bWT3cva+rF5Yir/
         KfABuC0SnzZh0n9wirpBATLVrmwNcog38ZlkQ40eKJQOrh99yoE0OI+cPDIyxhD2eoDp
         rvKEXkH+S9VNX9jwjuGCO4F1ln4NCJT+iOBM5XaacOSNPgcM4ey0476Py3h8CrT8R550
         JnmQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=FRVCiuq7LTAMcQn6HotfC/eB0uM2CVM3Qjv/4mk4T14=;
        b=umvrkbM13J5pAbD0MHg4puuheronpuaJhamipo35jSCbRZdbw1YOnRggJqHV1uFFIV
         C63oTpB2DWLqjEV+w+Oak1e9oP/heNBJprxz+d/1mlC/1UWJPej/tvtC5DMT+98sqX7M
         SPXtLlnszKQHkmcxsaGp5oYdnUSBh3o0olCdWoynDLFdB4AW8m1t9DxnOV50GPZKA31h
         G62mb9xoc7EhbzgdfFsgIOEY1IFo7Re78F4nItR8BjxSIdmKW80qHxgOA6DORua81rVH
         uLhyRvsEXEBKiTsboB1sGO2VVApYd090wYySABUgV+FG5sZYhCk9ipBsW3hRW+p7L1Aa
         THyA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=u15PzPSz;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::102a as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pj1-x102a.google.com (mail-pj1-x102a.google.com. [2607:f8b0:4864:20::102a])
        by gmr-mx.google.com with ESMTPS id j12si764233ilg.3.2020.08.01.20.53.29
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 01 Aug 2020 20:53:29 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::102a as permitted sender) client-ip=2607:f8b0:4864:20::102a;
Received: by mail-pj1-x102a.google.com with SMTP id 2so438895pjx.5
        for <clang-built-linux@googlegroups.com>; Sat, 01 Aug 2020 20:53:29 -0700 (PDT)
X-Received: by 2002:a17:902:cb91:: with SMTP id d17mr9525262ply.223.1596340408615;
 Sat, 01 Aug 2020 20:53:28 -0700 (PDT)
MIME-Version: 1.0
References: <CAKwvOd=um1y=Ax2hK5YYQBxbxLK4kiQuDs9fZsr77YyNR5r=Ww@mail.gmail.com>
In-Reply-To: <CAKwvOd=um1y=Ax2hK5YYQBxbxLK4kiQuDs9fZsr77YyNR5r=Ww@mail.gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Sat, 1 Aug 2020 20:53:17 -0700
Message-ID: <CAKwvOdm-KYMq=-FHG9tN9S5Bz6RF_rwmAkDcjLPOVYoF5b01jA@mail.gmail.com>
Subject: Re: plumbers session on CI and LLVM
To: Kevin Hilman <khilman@baylibre.com>, Chen Rong <rong.a.chen@intel.com>, 
	Philip Li <philip.li@intel.com>, Dan Rue <dan.rue@linaro.org>, 
	Mathieu Acher <mathieu.acher@irisa.fr>, Maxim Kuvyrkov <maxim.kuvyrkov@linaro.org>
Cc: kernelci@groups.io, clang-built-linux <clang-built-linux@googlegroups.com>, 
	Behan Webster <behanw@converseincode.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=u15PzPSz;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::102a
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

On Wed, Jul 8, 2020 at 12:24 PM Nick Desaulniers
<ndesaulniers@google.com> wrote:
>
> Hi Kevin and folks,
> I'm trying to put together a Micro Conference for plumbers focused on
> LLVM.  In particular, I'd like to have a session that focuses on
> Continuous Integration (KernelCI, 0day bot, tuxbuild, kernel
> configuration space, and LLVM buildbots).

Thanks for the positive feedback folks. We just got the notice that
the LLVM MC got approved for plumbers.
https://www.linuxplumbersconf.org/blog/2020/llvm-microconference-accepted-into-2020-linux-plumbers-conference/
https://www.linuxplumbersconf.org/event/7/page/80-accepted-microconferences
So reminder to buy your tickets for the conf if you have not done so already.
https://www.linuxplumbersconf.org/event/7/page/47-attend

I plan to host this subject in our MC.  We don't have a lot of the
details finalized quite yet, but the timing of the overall MC is going
to be tight.  I don't know yet which day our MC will be on yet and
will let you know as soon as I do, but in a rough sketch of the
proposed talks we can carve out 30 minutes to the subject.  I'm sure
that's not enough time for the subject material, but we don't plan on
having any other talks take longer since we're trying to fit quite a
few talks in.

I plan on hosting a small status update on what arch's build with
Clang, what's missing where, and what we're trying to do in the future
(hint: `make LLVM=1`).  Then we'll save the rest for open discussion.
--
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdm-KYMq%3D-FHG9tN9S5Bz6RF_rwmAkDcjLPOVYoF5b01jA%40mail.gmail.com.
