Return-Path: <clang-built-linux+bncBDYJPJO25UGBBFEFTOEQMGQEBRSCTEQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x13e.google.com (mail-lf1-x13e.google.com [IPv6:2a00:1450:4864:20::13e])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BD723F7E5F
	for <lists+clang-built-linux@lfdr.de>; Thu, 26 Aug 2021 00:22:13 +0200 (CEST)
Received: by mail-lf1-x13e.google.com with SMTP id d21-20020a05651233d500b003cd423f70efsf235015lfg.23
        for <lists+clang-built-linux@lfdr.de>; Wed, 25 Aug 2021 15:22:13 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629930133; cv=pass;
        d=google.com; s=arc-20160816;
        b=CXsza/nWO/KGXThp4rHcYyqKLCNRHC8bp1FFV42wXPCyPUIaPK+gsSvHoNGY+v1Er4
         0sNaLvrp2mV4XO6WhaWC1leTmfaGWNIVJnXpauz0xZz2iQNUS4Jt7W53XpPfCod0yRon
         w7/VM3hdFeGF+7fsYqEjRWrXg8/oXIjVhYnLr3Uffdrapw/VyEsuuyLTA6GtfF3e4ebO
         Md455eIqTTc8X3D8SrssG+VbSaehE3WX3sMEjYEkLISXTHbPhaJDtXF20/nUxFwMLcy7
         TX9OqpVISvlGe1Ar3EQE7B0Pl4BZTHUTjgA6lttkv3QiSrRoGME+yB0tDABHng6ShJul
         S5Uw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=x/EEQuhANB9Fi2TkTOZ+y36YS1ZsV1t1zHmcR8ogTts=;
        b=jQx6ppOmCa3J7Td6c1LRunTF0M2OAKGatNgoMcno9aY7XKT/mQoGI04C0vbt406dgE
         f6aHzVUsqhGIh2nZPtHP5BSsNmZox2SQWTV3a1fRwHIb3xDoQbgFLmHI/Z/mWio0VwD6
         E3nFWV+zbN0tp8bv87CaAuMhalTgRmBK99EU7A6X6rKzGWHmqil6rWYFI19trzB7MjTh
         C5eVjDUc59oFt4MV3d9Lo2Wvtf07QKmNnB8bg+LFBv/VEWua059KaSoJtXe+D2rIKK75
         SBdbdNjpJNOpPhtkTNOr8fWs6DYoIqSirUL/8nLp74DngL6bj7o9nBZYmdEvDpeyLhzq
         OntA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=d1LVjQOW;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::235 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=x/EEQuhANB9Fi2TkTOZ+y36YS1ZsV1t1zHmcR8ogTts=;
        b=jL9qIyJCchi/J+LXmlg1VWEDxvzpQ76+sYEsn3CHAW5GJ8Lk2kFeNp9sw7a3751OhB
         j9QABCNgPjcgVZ6WqDinUgjN7Ky9zwQJHDaUSStaigCvcCoGscjW4kOo7d3JXRiJt10j
         /W8ftHgkkSAYSYnGlKrOaSwpwhEF5WtkuwAG6X6+stN9FK2ZvJtFZ44KjdJVFpkrhWA2
         8g79QCCwG0DEhKmI6UKZhzzbcUbA6NSquTa3SPGPQla66wQlrzJhw1Mp/AzAc9rgNuVp
         uSqs9C07q3Q2yEQE+plbHjKwKgy1LnTvdCg7+8NXBTBLKhBtt/gQdJe1ZMLEOtcXKkA5
         cZKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=x/EEQuhANB9Fi2TkTOZ+y36YS1ZsV1t1zHmcR8ogTts=;
        b=tDLQ/k+wpyZH52MrUNjNA6AxlL7DrQJEgzzr2sVLsT2n73SAfW8m2uKvv3c/yrO26d
         bBFXgWGOTRp8Bh5WLTQbcarrbOTrvW0+d65A3A1Z18rtdCG7dhHhesSdgxVsRDUBi8hY
         3yyibo0swJoGBqEpIQ6rG86a+9e0+u0VbNyNRCwiBuBtiqw2ASSxEuAFfvfsJV2HPuCE
         4KmtYiSnZBhZHh+vNmePvLndDTYmNXUh2We4au+JCAVZRGt7J+1DmM0UvLjpc0jAaSQH
         +FKLx+ALC1s/d7WZlDf+/5sfHnErOgb86cRXZeAqnvythHoM4QFfsCEaCFiIsOs4SaNx
         D5eQ==
X-Gm-Message-State: AOAM531IS0jWITo4yMYoCriFeHUIk6H7hj0CbWpWp97SiC+eXgUJLdMk
	r9REZPiM9kkGV/FhqI3Oplc=
X-Google-Smtp-Source: ABdhPJwBokzpORe/jjfki9uKF4fr1f0ewTvciyA8Zk1UGehp0IckHeJY3jxXBTX4zT2mtZs/+tM+4g==
X-Received: by 2002:a05:6512:1686:: with SMTP id bu6mr281160lfb.168.1629930132941;
        Wed, 25 Aug 2021 15:22:12 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:9d43:: with SMTP id y3ls728408ljj.4.gmail; Wed, 25 Aug
 2021 15:22:12 -0700 (PDT)
X-Received: by 2002:a2e:9455:: with SMTP id o21mr376178ljh.103.1629930132059;
        Wed, 25 Aug 2021 15:22:12 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629930132; cv=none;
        d=google.com; s=arc-20160816;
        b=QdZB8/GToJw0cy5UEAKOytj3zEEXhjaTTTMMgTCmSPSDMxycmjOccLt4AlSGnEPj1q
         h3/J0GzWiybsp6213JEOozbnav+JtKjPSL7c2dGndDCe84qRgbLuKW0KVYXtPLwKrc8t
         f2DDfXoVV5dVNxbH9tEBMF+SBpgjUPf3vOssjCjWGTAOzpxQgEwzfHDv2rp7jiggv+2m
         qBaBlK2NHa0lbCCLC64cbdMMZHHfk6WztdkY80qNqNFUNSBbVvhWNFidykzq0gsgbUiY
         +BiM828MfW39Su423TQSTTii6fM56eCxLbqv/wZanIz7Co//quhF4r7eD9Rlen4mouLA
         Cuew==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=YBo/yuwYCnpEEKpqJMVcO5vlkbx1VJXFEaT8Qj6ZnyE=;
        b=u2bzw4j+kPiv+HVS/oPzFJSO/fT4Uq1nD2/XBnSiqaXAjgLq0iqz8rEFR2jNYBUdVX
         BVDyK1HBK0YTlxqd9LYYoBNnfdDuD+dQJLIPxfjDeDY96KVkFpSHzWM8eFIOcYi/gd+d
         xK1U33LdZ0gkL6kJUVU1CIAadHimA/zQR8D9MO/LlpX0NbUmYQyuNznlK/F5528qGeLO
         0FCJgMJY1HjopwK+/aDzLavwcsfd1D61ixEnX1rosC1BFeOnHD1n9+s3Mrl4umtuz9fl
         l9lw3bBSs/VA3nMO1R40NlCdCVdJ+qnU/cG5LawYoQPipbwqqqk8rFNUotjtdMcpteKW
         lfow==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=d1LVjQOW;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::235 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-lj1-x235.google.com (mail-lj1-x235.google.com. [2a00:1450:4864:20::235])
        by gmr-mx.google.com with ESMTPS id h13si66446ljj.7.2021.08.25.15.22.12
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 25 Aug 2021 15:22:12 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::235 as permitted sender) client-ip=2a00:1450:4864:20::235;
Received: by mail-lj1-x235.google.com with SMTP id i28so1304966ljm.7
        for <clang-built-linux@googlegroups.com>; Wed, 25 Aug 2021 15:22:12 -0700 (PDT)
X-Received: by 2002:a2e:a367:: with SMTP id i7mr383718ljn.244.1629930131530;
 Wed, 25 Aug 2021 15:22:11 -0700 (PDT)
MIME-Version: 1.0
References: <20210822021542.2-1-caihuoqing@baidu.com>
In-Reply-To: <20210822021542.2-1-caihuoqing@baidu.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Wed, 25 Aug 2021 15:22:00 -0700
Message-ID: <CAKwvOd=VaVqUg_JJyWNz+69d91gpTphKMVF_YatspZdT1D2yzA@mail.gmail.com>
Subject: Re: [PATCH] gcov: clang: Remove repeated verbose license text
To: Cai Huoqing <caihuoqing@baidu.com>
Cc: oberpar@linux.ibm.com, nathan@kernel.org, linux-kernel@vger.kernel.org, 
	clang-built-linux@googlegroups.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=d1LVjQOW;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::235
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

On Sat, Aug 21, 2021 at 7:16 PM Cai Huoqing <caihuoqing@baidu.com> wrote:
>
> remove it because SPDX-License-Identifier is already used

Sure.
Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>

>
> Signed-off-by: Cai Huoqing <caihuoqing@baidu.com>
> ---
>  kernel/gcov/clang.c | 10 ----------
>  1 file changed, 10 deletions(-)
>
> diff --git a/kernel/gcov/clang.c b/kernel/gcov/clang.c
> index cbb0bed958ab..b97a922b36b7 100644
> --- a/kernel/gcov/clang.c
> +++ b/kernel/gcov/clang.c
> @@ -3,16 +3,6 @@
>   * Copyright (C) 2019 Google, Inc.
>   * modified from kernel/gcov/gcc_4_7.c
>   *
> - * This software is licensed under the terms of the GNU General Public
> - * License version 2, as published by the Free Software Foundation, and
> - * may be copied, distributed, and modified under those terms.
> - *
> - * This program is distributed in the hope that it will be useful,
> - * but WITHOUT ANY WARRANTY; without even the implied warranty of
> - * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> - * GNU General Public License for more details.
> - *
> - *
>   * LLVM uses profiling data that's deliberately similar to GCC, but has a
>   * very different way of exporting that data.  LLVM calls llvm_gcov_init() once
>   * per module, and provides a couple of callbacks that we can use to ask for
> --
> 2.25.1
>


-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOd%3DVaVqUg_JJyWNz%2B69d91gpTphKMVF_YatspZdT1D2yzA%40mail.gmail.com.
