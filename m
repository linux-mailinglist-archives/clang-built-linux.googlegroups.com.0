Return-Path: <clang-built-linux+bncBDGNVC4WY4BRBQGQQ2EAMGQECQZHSEA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x638.google.com (mail-pl1-x638.google.com [IPv6:2607:f8b0:4864:20::638])
	by mail.lfdr.de (Postfix) with ESMTPS id 27B683D9596
	for <lists+clang-built-linux@lfdr.de>; Wed, 28 Jul 2021 20:56:02 +0200 (CEST)
Received: by mail-pl1-x638.google.com with SMTP id g12-20020a1709026b4cb029012c0d2e483csf2696105plt.5
        for <lists+clang-built-linux@lfdr.de>; Wed, 28 Jul 2021 11:56:02 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1627498560; cv=pass;
        d=google.com; s=arc-20160816;
        b=P3YNaogmHS5hk/dVT8ggEd/M9o7CAPIBW4qSm8s/dDLtWa8wgIdkqGz5qfB/gejanc
         LJ32XHaPzkyFFPOSU46JwTBVO2V/gxIvRgWsAwTkZxGxharNV5DFoo6YaL5SY0dw7ilo
         8T+brzJH99VzcQQ6GnGDUTvh+d89WVSFhrnL/Qdt2gHYHSbkIZjxsd+D22sGtMHdHX8/
         NG4/gBPHr/yVCTPen1fFRfwoKNfbCCr8Dx0WzFytvf8mLmcwtil4Krm0sJppanjunNo4
         YICm6UXThZ2gjzHepnmX4o4Yf66Zi/Oqn2kwRTGgmMDbpILlxnxHOJ9ND0jptPA+ILzk
         OV+g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :references:in-reply-to:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=ZFoEWsSOa3zw4Vde7gGEl55jKaaVOhdyzN7U0hVJvSw=;
        b=XldO4EaA+eZnyCvAnbexyieJOxvN63siY8IgfewtHZ8xYOv71R6Zf7bqFqXTAsImrC
         zVT9zL7otOV2/7yZsgPnkmnQJzLAp/DrTvxiMblwduT6VVfo8QA4tBBRqACOSnZOgJtp
         N0wbl+N8vrxDZXLR5BzzrVDRRC9x4eXIA4SZlLvj0w2kcSQr9J9wb7NVgWRChlq0spVx
         S2kiDUNkoDBuUBNDP2dMsk9qb8pwIxRQK3vQz2LUfdSGVBFti26AIlIe+673j6mD6D01
         8ULErGVnqJ2nUzNx4s93Nd6b3MzKdjSwzPre+OP2gfqq3J9i2smHqTTmCYL5C392jMCp
         xFtg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=SmUnU1tP;
       spf=pass (google.com: domain of stas.yakovlev@gmail.com designates 2607:f8b0:4864:20::12f as permitted sender) smtp.mailfrom=stas.yakovlev@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:in-reply-to:references:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ZFoEWsSOa3zw4Vde7gGEl55jKaaVOhdyzN7U0hVJvSw=;
        b=kh2gbBIRObTUlyH+Vag2maD0iay4CWZZfDDTPWS9XbSj7day7y0+cPY2EuvEaQQzEH
         7eb+V9VXX083f6gxgMPII9dquSCxLY1hSeQx/S1sPEydOc1sb0ueV2GWxWDK+SwxHGiM
         WwesiiIxovweIGrv0kxaUYOV4vCjhqik1loQiQxlt/JR4agRhN3VKM7GvjS8lof1hD9R
         Ch4qaCAtGuAouOl3Et0vjrHa0+upWj07fORKnJqCOerqOZbFqx8GK+z76StqasPDeBFl
         mHy7pWBowysGvoQjntVy7i23J8lYWFXI5Bi/wVsOit30gqogirLgAJqfmVvZEvlzbT6V
         pB+w==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ZFoEWsSOa3zw4Vde7gGEl55jKaaVOhdyzN7U0hVJvSw=;
        b=YWhA2QVnJRD2X9PaY3PkdH1WJUiVXXrPtrKE1nuwbdWZfwrUd4RvJkp8zt8yv+VtUJ
         /CdNuKJ7lpHHWho50s/Pmw8mkKcmHi1Mi9Iremf+dWuJCvaA+vvrOgAl2WVt57dbFRGe
         cXmgFA+Bn7036VnqOzKxkrIO6KgXi2hSLNZ8F/HbAGpzxuioaAekxVvSu9/JuRETI+3H
         LonKM+2h/128S6ugJVjdj9kOOFB7EdHt9zKBPV6MSHl9ZzV1U3JBsIz+CpZxdicvpSC3
         FG8O5UqyQ9qgTPWLdsb2j5Uydt/0Zjl/kcx+ix1ZytMs3yfceshR0WqSMEaelGyNqwbH
         50vg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:in-reply-to:references:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ZFoEWsSOa3zw4Vde7gGEl55jKaaVOhdyzN7U0hVJvSw=;
        b=FCkcTNpltr6u6ryK/c6LcQ2sdqGNGb/DKKoHyouYG3xHWrOmI0aK+s43seX6PkIh74
         P+XXuD8kCxBcLZf5OH+0vhU9QNTqs8ydTwLPkLZOiphV9aXUlm0G9sq/8rCHfF01NVhG
         1rflQIXOOkbBdmy4YPEVJHjbWlvtEWRk/AA+AWUZa5n+ZT1r6hg7rgiukV8V1fhS2BA6
         mx2Br4bdWsUQIx6ZYyIfi5MysVFPrTWwGdqpyeUSS/vCPN6qAM8UN5wepQCarBod6Ja1
         KCw7vtUedxq4VAcARPvOicSGb8e6/5bicH2M7qlaaXeD+aeTA2aNesGu6u8MhOcfleEs
         nW6w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531Z71D3pkebMqieeYdk58BnaFYD0FoaeNfCvEXBdWDLH8UnZdgj
	wfGKOV69zJvHvjad+6ag3Nw=
X-Google-Smtp-Source: ABdhPJyib7BAD3oJo3bmYX6xHP7W05KEm45GgwzaJBrvVP7MRYZuYAvaf4SbegCbJOhNdn2VQH+Sqw==
X-Received: by 2002:a62:1b58:0:b029:33a:e814:312d with SMTP id b85-20020a621b580000b029033ae814312dmr1265279pfb.62.1627498560416;
        Wed, 28 Jul 2021 11:56:00 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:903:1203:: with SMTP id l3ls1621062plh.9.gmail; Wed, 28
 Jul 2021 11:55:59 -0700 (PDT)
X-Received: by 2002:a17:90b:4b08:: with SMTP id lx8mr1192973pjb.66.1627498559751;
        Wed, 28 Jul 2021 11:55:59 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1627498559; cv=none;
        d=google.com; s=arc-20160816;
        b=SDK3E+QbL7od1i16Glkx2gz56CI3l1ft/ank427EbZZFn106RPqe5uv8+VboZyac1m
         Kcqi1PDzXbyw6dzR56IsynXsdhtuk8JBb6AuKpcLB5EDlDTqn8kdaF6pfJmUBEBS51sA
         0lHF+V6lXXciMGGotZYrPcgF5Aay9NK7W2bPoyAI7XFz2X5RtAzESYUga75WolwagA/N
         PYLvaL1yYA30/UG4KrTheZ63FLKOVUf9Go/+hAGINf5P2gI8A+umZoufTnNk896YADny
         3D/Mnn8//B7z+yGRzBthm5T8EiN2P6gi6IiodVCLp8vFWa38Ix24+1oz622j50uwZFsG
         2ZQg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:references:in-reply-to
         :mime-version:dkim-signature;
        bh=pg9Oc8FexJdwg++WGxFIyzfbO7HtZXQu4+lhfbZZJSA=;
        b=B/gyrCBHGYTbV5CqVzcK0ArOOCReUetUnyfgZjdEXVxLB1G7to1fk1lNrKyPRBfVOE
         M+81UCidDa/e2/pbh618ePZ60y72sOYbvWTIBlLrwfdK0JXwZOJv2E1IPPqatEGTe3HU
         fnH5JmDbQ7rTyeaPvGf/2hRKBD7w48pnCPUQKVqag6785GP53qXA3csJYJjXgP5P89nw
         h7lkluJg48/90AnICKglqtnnl1i2u2YmFcbbLZLyXtGTtk73l/N7t82GsepLlN/6Pf4B
         9X5ccrXbVDqM+tIzgMXj+7jAJ1eQb87fWG+su7vMhOgGGLSN9yK8CiQ514wBu+EWq5Xh
         5pIg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=SmUnU1tP;
       spf=pass (google.com: domain of stas.yakovlev@gmail.com designates 2607:f8b0:4864:20::12f as permitted sender) smtp.mailfrom=stas.yakovlev@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-il1-x12f.google.com (mail-il1-x12f.google.com. [2607:f8b0:4864:20::12f])
        by gmr-mx.google.com with ESMTPS id 136si42316pfz.2.2021.07.28.11.55.59
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 28 Jul 2021 11:55:59 -0700 (PDT)
Received-SPF: pass (google.com: domain of stas.yakovlev@gmail.com designates 2607:f8b0:4864:20::12f as permitted sender) client-ip=2607:f8b0:4864:20::12f;
Received: by mail-il1-x12f.google.com with SMTP id z3so3400974ile.12
        for <clang-built-linux@googlegroups.com>; Wed, 28 Jul 2021 11:55:59 -0700 (PDT)
X-Received: by 2002:a05:6e02:dcd:: with SMTP id l13mr851205ilj.300.1627498559514;
 Wed, 28 Jul 2021 11:55:59 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a05:6e04:29b:0:0:0:0 with HTTP; Wed, 28 Jul 2021 11:55:58
 -0700 (PDT)
In-Reply-To: <20210727205855.411487-16-keescook@chromium.org>
References: <20210727205855.411487-1-keescook@chromium.org> <20210727205855.411487-16-keescook@chromium.org>
From: Stanislav Yakovlev <stas.yakovlev@gmail.com>
Date: Wed, 28 Jul 2021 22:55:58 +0400
Message-ID: <CA++WF2M464stM5Cb8EpX+ecda5yymSZ0Z8PFPFEoqZ_iFhaScQ@mail.gmail.com>
Subject: Re: [PATCH 15/64] ipw2x00: Use struct_group() for memcpy() region
To: Kees Cook <keescook@chromium.org>
Cc: linux-hardening@vger.kernel.org, 
	"Gustavo A. R. Silva" <gustavoars@kernel.org>, Keith Packard <keithpac@amazon.com>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Andrew Morton <akpm@linux-foundation.org>, 
	linux-kernel@vger.kernel.org, linux-wireless@vger.kernel.org, 
	netdev@vger.kernel.org, dri-devel@lists.freedesktop.org, 
	linux-staging@lists.linux.dev, linux-block@vger.kernel.org, 
	linux-kbuild@vger.kernel.org, clang-built-linux@googlegroups.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: stas.yakovlev@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=SmUnU1tP;       spf=pass
 (google.com: domain of stas.yakovlev@gmail.com designates 2607:f8b0:4864:20::12f
 as permitted sender) smtp.mailfrom=stas.yakovlev@gmail.com;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On 28/07/2021, Kees Cook <keescook@chromium.org> wrote:
> In preparation for FORTIFY_SOURCE performing compile-time and run-time
> field array bounds checking for memcpy(), memmove(), and memset(),
> avoid intentionally writing across neighboring fields.
>
> Use struct_group() in struct libipw_qos_information_element around
> members qui, qui_type, qui_subtype, version, and ac_info, so they can be
> referenced together. This will allow memcpy() and sizeof() to more easily
> reason about sizes, improve readability, and avoid future warnings about
> writing beyond the end of qui.
>
> "pahole" shows no size nor member offset changes to struct
> libipw_qos_information_element.
>
> Additionally corrects the size in libipw_read_qos_param_element() as
> it was testing the wrong structure size (it should have been struct
> libipw_qos_information_element, not struct libipw_qos_parameter_info).
>
> Signed-off-by: Kees Cook <keescook@chromium.org>
> ---
>  drivers/net/wireless/intel/ipw2x00/libipw.h    | 12 +++++++-----
>  drivers/net/wireless/intel/ipw2x00/libipw_rx.c |  8 ++++----
>  2 files changed, 11 insertions(+), 9 deletions(-)
>

Acked-by: Stanislav Yakovlev <stas.yakovlev@gmail.com>

Looks fine, thanks!

Stanislav.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CA%2B%2BWF2M464stM5Cb8EpX%2Becda5yymSZ0Z8PFPFEoqZ_iFhaScQ%40mail.gmail.com.
