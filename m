Return-Path: <clang-built-linux+bncBDYJPJO25UGBBXUO2LVAKGQELODN6IY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x438.google.com (mail-pf1-x438.google.com [IPv6:2607:f8b0:4864:20::438])
	by mail.lfdr.de (Postfix) with ESMTPS id C64078E060
	for <lists+clang-built-linux@lfdr.de>; Thu, 15 Aug 2019 00:12:47 +0200 (CEST)
Received: by mail-pf1-x438.google.com with SMTP id 6sf318936pfi.6
        for <lists+clang-built-linux@lfdr.de>; Wed, 14 Aug 2019 15:12:47 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1565820766; cv=pass;
        d=google.com; s=arc-20160816;
        b=X9zvFbqEtLZW4MTRwxZCCT8RTOeHlROlhZvz1VrzSUQ/65Nt+4vBSuiPkhwYnYGeb+
         cVAjcWi0X3KN9Mkc9fRx+F34l7wA2u5zprWe6qMtaqe74ZLVzpVcEmkLkqf1lWwgNR1U
         CJ3ihD1ymtM6rDMGMnai3XPHGdQbGcSwDMJpvocbiXeEfw3Y+gve3c3fh1AeKGKBZYTA
         9uJVSKBiowgKGYGB7sax0q3/7eYsEWZHFxgH5qCspvIINFJpL+VbRU5Gh31b1WUlV/ep
         nBz9OIdh0CnbT8GaQplWlnn239N12o+D6nRiSHtcvr7bfe0dKVYhiCltNE+oaIjrZs3Y
         mObw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=ETUf4BV0WHpc4jpHnJEPps0SewtOVTGGE6481JuCMM0=;
        b=jHxIGdcHGRPhjLpQieWHLD+ionYuCy7I3ABEoosIxf1SSi+5GTQNfPawtBT9CnsedY
         +BEF47v1dMMJI2fNNBH+QrdQk0ESWKUrKQO/IvB0PWrd+0KnB6t4L3ne3FZhTO4lAHqe
         CKsA5XkYfa4sN9Glkb7Cuxc4VArzK192OrU1seDpDn0ndCVD0GsLKDdKWRYU6LSFm1zm
         yG7m01fjPQXovO8AiS+wiPrH8nYQ2hZmy05hRiHfTj97iJDaOmesniAJg4rB1mpYSV3z
         Pr0WXr5vxPiT8qxRvHqCVsksorx8AvgMlDqQbRer6/wwS0NpDSUZGNFKBX2D2Bd1Rt5K
         gudA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=EXLXiKcw;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::444 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ETUf4BV0WHpc4jpHnJEPps0SewtOVTGGE6481JuCMM0=;
        b=GZtZx0nu3O1Cv+BLMGi3PThbpDliYxtWptYuewkh3p34U3V1WgyMXfZ5N3mmujNnhA
         LaQEiiwoU5ihdgVEndpn2VY0DQNt2G+vgwfeBZUyqe06uxlUqCbYvNShmzNNeCCr3rl9
         7GjDTr5VAufbMkAOsLU6Tn+y5eWIN6/jKWwICpJuVasmOpBcaBdj5E4BMhcw/1ojRkug
         rdR/7dd0Rb1Jc44oierTKzI6AWcnHGEjYfj9WoIHutb/JIshnzfNfAc8jTxGvhXQopdm
         vMpQ3SIFAPkslCGuf8dm6jbc2k/iY0RYV8e9W5eNeQHjFaQ/Acy8mQGPrfq4sM04uTwU
         +WAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ETUf4BV0WHpc4jpHnJEPps0SewtOVTGGE6481JuCMM0=;
        b=jkUHlBmc0zKc47FVTKGDx65TL8zRMQmZwDoAWar7XJwt7+qeHnv2OZk2KstKDWMyfR
         WMCPfSqj6B19L2oDjQakW2sLIDs6fYT7mQQaJJFMawYrzvUn6BtvzHTyoaJq95pfuTeG
         9g+eFsmHcaaeZjc42iOg9a0pzLpq348hAEAHqBJSycLSYvp1/oGQ1q5hKAnyL2xQjA9C
         B1idG0j1RrtPc7idSQ5yBFoCfJ9BEgiUcyC38IQzwiCASgUPCozHOjhhZQef6ukm27YA
         6wpiwIxssvW8Mi+bG5U6/kYJDKpm8okkzm/LWao3m2kvoVRK3Yz2SM5Bc5m3a7T57GJj
         o+pA==
X-Gm-Message-State: APjAAAVYyUANy9QTFyp6EHV1DuQtTMUCnLhiW+zw0IYTbhAeUBnGo8+A
	svPsqcMPfHvSON1/sgavw98=
X-Google-Smtp-Source: APXvYqwR03CKV9Dcc3UkDOaEXXGC7vtFWrnG3XEr0ZOk/vlh3qCnMlBvQeYZuWg4YwFsWQGoe8VYLg==
X-Received: by 2002:a63:e306:: with SMTP id f6mr1078237pgh.39.1565820766437;
        Wed, 14 Aug 2019 15:12:46 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:644a:: with SMTP id y71ls804837pfb.3.gmail; Wed, 14 Aug
 2019 15:12:46 -0700 (PDT)
X-Received: by 2002:a62:e901:: with SMTP id j1mr2226940pfh.189.1565820766150;
        Wed, 14 Aug 2019 15:12:46 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1565820766; cv=none;
        d=google.com; s=arc-20160816;
        b=pAb2Tier6YWQ/obPgW+WAUWf/9L+XdT+LIKzzTD5eOIm+RKwdfSKqUKKRXntZycAr7
         gYK1vZN/q8T5DidYtQEa1Chy8gtHCdpGZIsnGethuyhRbdE6J1i9rf7f4fLRQ83tHLr5
         M4ql49vIwZ6t/EzYCUiv+nOdyYhGp4BtoNjY+0FhaxwsbLPo6RGMUCsG/asDNm2oYCiD
         PQO5MngAiOVKFM6PXJDMhtmn9ynP7Pa/UxINg2/SO9hLYSeYOPTw1I7QDeNPepIs2JcB
         H0NTfEgglOsED4TiiSLA4wl3BsgD8Iq+h+5osA7OpvoJOEOV9OrNMHMzLXfg/05nLLHq
         A+9w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=pn4+TVeFCCrcFG61M/ievKm/DZAmwLymLPS9PLFRAC0=;
        b=er5n+E1FtsaZ9muWah/JjSsruhnaugkQpOUskTJkgnfYRUwDM1HQ9mc30j/XQ2Ti4h
         K/TgKiroYhgadsLmfy42p463PEBo8SqEDmXsIGia/YQZXrKjigFHtd1f5D/0Bi/FfKuA
         Vaklzcosxk+iGzYVqQ33ybR+3xCY7oz1fXJDwB5ZKzcblNUtphIyAsOHAYTu1AXJ2IX9
         EuTCJZ8ySl7FxwPN3BlICIu4ugSOxhQhkLcXy/gKWW/0/vmZlHrbTnALsR5qZFqrQmZc
         f1H5YbonOH0MA7nPX1TcxjT9mYRLEyhZyXh3sPQz6gIDHacBmfVthUUBq/JPdQB8AF6s
         gcUw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=EXLXiKcw;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::444 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x444.google.com (mail-pf1-x444.google.com. [2607:f8b0:4864:20::444])
        by gmr-mx.google.com with ESMTPS id z9si1494pjp.0.2019.08.14.15.12.46
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 14 Aug 2019 15:12:46 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::444 as permitted sender) client-ip=2607:f8b0:4864:20::444;
Received: by mail-pf1-x444.google.com with SMTP id 129so195744pfa.4
        for <clang-built-linux@googlegroups.com>; Wed, 14 Aug 2019 15:12:46 -0700 (PDT)
X-Received: by 2002:a62:cec4:: with SMTP id y187mr2208756pfg.84.1565820765370;
 Wed, 14 Aug 2019 15:12:45 -0700 (PDT)
MIME-Version: 1.0
References: <20190613184923.245935-1-nhuck@google.com> <27428324-129e-ee37-304a-0da2ed3810a0@linaro.org>
 <CAJkfWY4X-YwuansL1R5w0rQNmE_hVJZKrMBJmOLp9G2DJPkNow@mail.gmail.com>
In-Reply-To: <CAJkfWY4X-YwuansL1R5w0rQNmE_hVJZKrMBJmOLp9G2DJPkNow@mail.gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Wed, 14 Aug 2019 15:12:34 -0700
Message-ID: <CAKwvOdkEp=q+2B_iqqyHJLwwUaFH2jnO+Ey8t-hn=x4shTbdoA@mail.gmail.com>
Subject: Re: [PATCH] thermal: armada: Fix -Wshift-negative-value
To: Miquel Raynal <miquel.raynal@bootlin.com>, Daniel Lezcano <daniel.lezcano@linaro.org>, 
	rui.zhang@intel.com, edubezval@gmail.com
Cc: linux-pm@vger.kernel.org, LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Nathan Huckleberry <nhuck@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=EXLXiKcw;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::444
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

On Tue, Aug 13, 2019 at 10:28 AM 'Nathan Huckleberry' via Clang Built
Linux <clang-built-linux@googlegroups.com> wrote:
>
> Following up to see if this patch is going to be accepted.

Miquel is listed as the maintainer of this file in MAINTAINERS.
Miquel, can you please pick this up?  Otherwise Zhang, Eduardo, and
Daniel are listed as maintainers for drivers/thermal/.
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdkEp%3Dq%2B2B_iqqyHJLwwUaFH2jnO%2BEy8t-hn%3Dx4shTbdoA%40mail.gmail.com.
