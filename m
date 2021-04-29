Return-Path: <clang-built-linux+bncBAABBHHEVOCAMGQE632CYLQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63a.google.com (mail-pl1-x63a.google.com [IPv6:2607:f8b0:4864:20::63a])
	by mail.lfdr.de (Postfix) with ESMTPS id B570936EF27
	for <lists+clang-built-linux@lfdr.de>; Thu, 29 Apr 2021 19:51:25 +0200 (CEST)
Received: by mail-pl1-x63a.google.com with SMTP id t6-20020a170902a5c6b02900e8dfb1a5d7sf29215587plq.3
        for <lists+clang-built-linux@lfdr.de>; Thu, 29 Apr 2021 10:51:25 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1619718684; cv=pass;
        d=google.com; s=arc-20160816;
        b=W/rES/56eBiO5xTllVaERil2Z/Jb6U0Rwlc3ETX6YH3nTFuUQFimMuo00P4YLO+TBL
         nkK0HZstemJgORTy7D2FeGzwdR71YGja+F1LsX726qVcdsxC2pRJhFWjj5CEgDk1TXoY
         qI5hyYgIqtz0+fj9e59ejO1Pup0LochiOAKiAfv/unUVWQ+wRnaoAE3BUNaUveuyLAjg
         k0G2Qf7wTaHgl1CytoaDes62ZHWFCBL5zIYB1HGrA6spv9fF1QUjbMh6heJT/q9KcfSd
         gCuZftQd9189G9brQcUnPPq/xytG1aJmbt5Jbs2iBgMgwe6693n++DxlHr9RSpSVACHu
         V6+A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=K60s+Q20eYpuUDFqjh6LbNsAyHybDy4K8oOCE/z+B9s=;
        b=0AM1OMYbgdrw940OToIH1y76j7pgRw8l1/4EOENVuFuhGsF7lTTALzBAOb2H79dqYc
         O8mTYQkG89NcI8dbW1NmQFMSDFIaYyG/7c7VQ5XHVyMfLFH3dqJWN62zTtZm+Nrm+3uw
         2ERsar6s/ZVRiQIWTyTbizWgH/wjbbNUgI09owMTHLjA4WNSfCw78dUN43aX21bQ9tSA
         E3dz1VeM3fpxmWzuTUx3Rr0l6cMHv9GiyAaXmZSudivyLxXBjwc7NEqclFOEPnswCONm
         YyLFTgpy8/iY1/HU+sgraEEEriFaQyAPiztj3e3KKw7XfwYcrhTGZVWDVX9CtMfxZ7Fv
         /uJw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=GdvgBm7E;
       spf=pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=arnd@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=K60s+Q20eYpuUDFqjh6LbNsAyHybDy4K8oOCE/z+B9s=;
        b=mLeHKX5/gIim/jnW+rk/Ui9/gdqd4iaMfHqZxeC67EW0d64Zav/09hfSMBpDvLjoX8
         rwNEjdOI9PDPyNtTq4j8K/7qbuCGT1y5gFEAWYWvydwyNtFRofyhPRyBsSRg+cPSMQf/
         +glsebSKpec0kdGKHSttYduDCpCkNTRf8HhcNm0Z42hflpx8jfABlTWLuTxkkiAUgQMB
         qxpoygqcviJf4ztUbKGxuaAl1OoX9pCAAlGmvNrcUdNvRtGJmKYwrrrUvk6J1Sszvh0Y
         ZMnrlNGbSqHAzckFicXaLt8jQqNQyFyibqTMuPkVsQ7LZA6R2hvlhELHZXrNnViKaqc4
         NltQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=K60s+Q20eYpuUDFqjh6LbNsAyHybDy4K8oOCE/z+B9s=;
        b=S3PXmv4ieplyDssvhGMApG2toAXZU5VQK335urrOe8/eyGA2OdNpEyTnBcs39GF0OF
         Lz05j47A2yXwNaKWFU0qCLR4NogLl662PMCOUvjDqZqLGBvyFXNiIZrIfaXj71GLOTu6
         xA/yrdeyYocRbFdi9VrRKfeqKKTIbHyIahs55oH447WUiy2oBNG9R6KivgHiUUV/Wt+J
         LW7Wwg6Q3BGoOQ1R2OBKQJNS01Wztm9sKLAQlO4SXfO0PSaTnS3f+5ySflhXBy/eCyQH
         teOVNqwlZhpCC60P9AgnaIxi6Ds6YqJqPB6VMdidVy8CIhih7B2QInXKRLgSOvQ9daNc
         MwOA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532axquxIpaxbuWhb6U32uwa9328yLyzCbwQW5RNCTFHejvNM+7Z
	tfZYNY2a4VNkfFx5ugPohb8=
X-Google-Smtp-Source: ABdhPJySPXeN/FAZ0H/wT18SNSlK92U7dXSS7zBeI7YTRRonhDJdHRJF2oujeewPRXua8rVFcEA93w==
X-Received: by 2002:a17:902:122:b029:e8:bde2:7f6c with SMTP id 31-20020a1709020122b02900e8bde27f6cmr746167plb.29.1619718684490;
        Thu, 29 Apr 2021 10:51:24 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:ba08:: with SMTP id s8ls1741983pjr.1.gmail; Thu, 29
 Apr 2021 10:51:24 -0700 (PDT)
X-Received: by 2002:a17:90a:488a:: with SMTP id b10mr1077448pjh.2.1619718684066;
        Thu, 29 Apr 2021 10:51:24 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1619718684; cv=none;
        d=google.com; s=arc-20160816;
        b=rYO38rx/QI9MRXuNo7Urw+uxDwDBxMA0O+XNZyMKEIj/6FpY3yMCMzV3HuruLdQX7A
         r7s4FYf3zts+tr0Pu+V7zEYJx1UjBBkWrpG7LfldtDA2RisdmhTlMsQGgZLlV3sQqQJU
         8zYxzUPc0rzJScW9SDJbNt4FNC/1OBZ6+dKMrUCcoGifs1wnDaaPVHcLV8feIiY24Caq
         y8q0ISUuk+KG9Hw0P/fvep4uoMRoV4seKGDJGBqsBQ4FkVp0s+ErLTj2RUuitQ1vXDHS
         SJCBdfAmcEMMjwveF+2oCRtBQJz3SccpBqlCH0EvD0kZhD8NyCxsScSHyKA3asev38AB
         KGvg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=M3axEcNW5HKQIB8bHQ31gkSwFasBbmL3ZP2hXMZOZ2Y=;
        b=bd3mVCzIrJFGBb2dpuRXWwDt1U1BKY3EvoWbz7knCVPE/gxY3H1XdVdyUa8ykznkeP
         luVlPZqOomppvYGgPN7sNA5m1FzFuFqjqfHyPR9Hzaq/XWuD8Qjpp5R0nl4y/jM28IsU
         YTIcYQWb5kZf3XLMtmrsA+sH/6aBJDzn3+uHPxcQDwsuZXsBlr8soge6+3los5WRxATE
         SSxpOfGdB3LZwpST/iCqiqeBPewAp4zcHwcUI9HV3Tmd2WpdnAZ8xeMSgXEvYftgD/3I
         SLt2AyqtBjbwtsxmSHIjIjw8hKExW35wjwYiAs/YUHdHfTwR6fH4L+IF3zEreLzfFjAN
         xEaw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=GdvgBm7E;
       spf=pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=arnd@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id 131si246139pfa.2.2021.04.29.10.51.24
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 29 Apr 2021 10:51:24 -0700 (PDT)
Received-SPF: pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id AFDA661450
	for <clang-built-linux@googlegroups.com>; Thu, 29 Apr 2021 17:51:23 +0000 (UTC)
Received: by mail-wr1-f44.google.com with SMTP id a4so67814558wrr.2
        for <clang-built-linux@googlegroups.com>; Thu, 29 Apr 2021 10:51:23 -0700 (PDT)
X-Received: by 2002:adf:d223:: with SMTP id k3mr1096320wrh.99.1619718682219;
 Thu, 29 Apr 2021 10:51:22 -0700 (PDT)
MIME-Version: 1.0
References: <20210429145752.3218324-1-arnd@kernel.org> <dff8cbd8-8c56-ae6e-ecc2-9ca183113ab2@arm.com>
In-Reply-To: <dff8cbd8-8c56-ae6e-ecc2-9ca183113ab2@arm.com>
From: Arnd Bergmann <arnd@kernel.org>
Date: Thu, 29 Apr 2021 19:50:46 +0200
X-Gmail-Original-Message-ID: <CAK8P3a3-XoDQ6BfTBUof5ST2H1_6JOL+rK-BQqWXAV0H5jMm9Q@mail.gmail.com>
Message-ID: <CAK8P3a3-XoDQ6BfTBUof5ST2H1_6JOL+rK-BQqWXAV0H5jMm9Q@mail.gmail.com>
Subject: Re: [PATCH] [v2] coresight: etm4x: avoid build failure with unrolled loops
To: Suzuki K Poulose <suzuki.poulose@arm.com>
Cc: Mathieu Poirier <mathieu.poirier@linaro.org>, 
	Alexander Shishkin <alexander.shishkin@linux.intel.com>, Nathan Chancellor <nathan@kernel.org>, 
	Nick Desaulniers <ndesaulniers@google.com>, Mike Leach <mike.leach@linaro.org>, 
	Leo Yan <leo.yan@linaro.org>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>, Qi Liu <liuqi115@huawei.com>, 
	Tingwei Zhang <tingwei@codeaurora.org>, coresight@lists.linaro.org, 
	Linux ARM <linux-arm-kernel@lists.infradead.org>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: arnd@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=GdvgBm7E;       spf=pass
 (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted
 sender) smtp.mailfrom=arnd@kernel.org;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=kernel.org
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

On Thu, Apr 29, 2021 at 7:37 PM Suzuki K Poulose <suzuki.poulose@arm.com> wrote:
> On 29/04/2021 15:57, Arnd Bergmann wrote:
> > From: Arnd Bergmann <arnd@arndb.de>
> >
> > clang-12 fails to build the etm4x driver with -fsanitize=array-bounds,
> > where it decides to unroll certain loops in a way that result in a
> > C variable getting put into an inline assembly
> >
> > <instantiation>:1:7: error: expected constant expression in '.inst' directive
> > .inst (0xd5200000|((((2) << 19) | ((1) << 16) | (((((((((((0x160 + (i * 4))))) >> 2))) >> 7) & 0x7)) << 12) | ((((((((((0x160 + (i * 4))))) >> 2))) & 0xf)) << 8) | (((((((((((0x160 + (i * 4))))) >> 2))) >> 4) & 0x7)) << 5)))|(.L__reg_num_x8))
> >        ^
> > drivers/hwtracing/coresight/coresight-etm4x-core.c:702:4: note: while in macro instantiation
> >                          etm4x_relaxed_read32(csa, TRCCNTVRn(i));
> >                          ^
> > drivers/hwtracing/coresight/coresight-etm4x.h:403:4: note: expanded from macro 'etm4x_relaxed_read32'
> >                   read_etm4x_sysreg_offset((offset), false)))
> >                   ^
> > drivers/hwtracing/coresight/coresight-etm4x.h:383:12: note: expanded from macro 'read_etm4x_sysreg_offset'
> >                          __val = read_etm4x_sysreg_const_offset((offset));       \
> >                                  ^
> > drivers/hwtracing/coresight/coresight-etm4x.h:149:2: note: expanded from macro 'read_etm4x_sysreg_const_offset'
> >          READ_ETM4x_REG(ETM4x_OFFSET_TO_REG(offset))
> >          ^
> > drivers/hwtracing/coresight/coresight-etm4x.h:144:2: note: expanded from macro 'READ_ETM4x_REG'
> >          read_sysreg_s(ETM4x_REG_NUM_TO_SYSREG((reg)))
> >          ^
> > arch/arm64/include/asm/sysreg.h:1108:15: note: expanded from macro 'read_sysreg_s'
> >          asm volatile(__mrs_s("%0", r) : "=r" (__val));                  \
> >                       ^
> > arch/arm64/include/asm/sysreg.h:1074:2: note: expanded from macro '__mrs_s'
> > "       mrs_s " v ", " __stringify(r) "\n"                      \
> >   ^
> >
> > This only happened in a few loops in which the array bounds sanitizer
> > added a special case for an array overflow that clang determined to be
> > possible, but any compiler is free to unroll any of the loops in the
> > same way that breaks the sysreg macros.
> >
> > Introduce helper functions that perform a sysreg access with a
> > non-constant register number and use them in each call that passes
> > a loop counter.
>
> You don't need to add this special helper. We have the exact
> infrastructure already. So these could simply be replaced with:
>
> csdev_access_xxx(csa, ...)
>
> see :
>
> include/linux/coresight.h

Ah, nice!

Do you mean replacing only the ones that use a nonconstant
offset, or all of them? I guess changing all would avoid some
really ugly magic macros, but the indirect function call and the
switch() adds a few cycles of overhead every time and the code
looks like it is micro-optimized for fast register access here.

      Arnd

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK8P3a3-XoDQ6BfTBUof5ST2H1_6JOL%2BrK-BQqWXAV0H5jMm9Q%40mail.gmail.com.
