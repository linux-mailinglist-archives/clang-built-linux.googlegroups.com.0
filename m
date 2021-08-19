Return-Path: <clang-built-linux+bncBCQYFH77QIORBA5V7GEAMGQETZQJEOI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-f57.google.com (mail-pj1-f57.google.com [209.85.216.57])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E33A3F1A30
	for <lists+clang-built-linux@lfdr.de>; Thu, 19 Aug 2021 15:20:05 +0200 (CEST)
Received: by mail-pj1-f57.google.com with SMTP id v9-20020a17090a7c09b02901778a2a8fd6sf6214341pjf.3
        for <lists+clang-built-linux@lfdr.de>; Thu, 19 Aug 2021 06:20:04 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629379203; cv=pass;
        d=google.com; s=arc-20160816;
        b=XUU6gqzbWAaViV76eG+D8D3GgIeXkl3A4sF0HxAADXs20Izrk+N8el3Hal6/xELD3b
         g20P+XN46T7yU3ZIwXa9EmSs6Um1RUVfAD6IkptCvMDF6TTIVFeIvidIb5nS/+JJiHNF
         nizbLa0J3zEDcxwN60V+L1jb1T9hNgLA+fShOgw1Ejrvyi2da0ZWbHJkIFJn8XED8H9o
         PEurpja/Unpjeb4zMf0ED0gc8Q1UGT3XDFcq43kMt8UsFFjjZNcGUMa/IyuDbjGV/dVE
         Z/M8a+Vcz/vxA6OmrRz1yz2qn7utKjSuhZbBhwj/xRr9imRQ4M8V88cLw7sa1RitwvRe
         1eyw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:user-agent:message-id
         :in-reply-to:date:references:subject:cc:to:from:dmarc-filter:sender;
        bh=JaI9wUVex/yN5ZkpWOtU/roAkCNsbDD1A8Yl9O12pIY=;
        b=gP8qDSxb/ic4pemPlMcHBH9J1UWm+bNpPl2eTgzHWkvs686vAgRBim6NR2tFpJ9qTu
         Q7Rkx1WSDoqxTDY8JJGVB17a4UHHuzdPiNcNXQejSzjAprtbsMRNnJauve2thd76m2Hn
         qPnLXgu1tIb8YpQfRSw3uZub8rXzG8APLhspMUUH6ml4kP82l92OherKretD2ZWXElq0
         QiJlC3HMlIl4p8xUZS2uTSp7K1sbJBK2wuVQ2DR71kVdFfCHV4EZgfHAzP00lMKQ3fbx
         IgDOOwFtFEqS85Z5nzMFVZLw2kqOIPpIPumyZthwoo3FVlXABw0NhYJzAQik7sQHq1WU
         HnjQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@mg.codeaurora.org header.s=smtp header.b=kOGaBHj5;
       spf=pass (google.com: domain of bounce+a1e0a8.be9e4a-clang-built-linux=googlegroups.com@mg.codeaurora.org designates 198.61.254.9 as permitted sender) smtp.mailfrom="bounce+a1e0a8.be9e4a-clang-built-linux=googlegroups.com@mg.codeaurora.org"
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:dmarc-filter:from:to:cc:subject
         :references:date:in-reply-to:message-id:user-agent:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=JaI9wUVex/yN5ZkpWOtU/roAkCNsbDD1A8Yl9O12pIY=;
        b=US6lUeCuE1Vmr4GdzxumHjwLSCxHE3daTL0ydO5oD445yBftiyd8IAo5dKBMg8yDd/
         mDqLtAuc4Or7TcnwmDeMoIN4j/2UgkOrwhjQ8l/vxiX5Hxs+JGE30MTu26fe2P1foJO+
         oOkdJIkCxc0x4bQPdNks9vyTYXbv86DJ3CB9tqR/lVrmQ2Ebko8VqfpLAj1F2a9W58aM
         tagEgWO9VIenCH1xlc/hEHoWeYiH2l80XbluvXe5RHAEKoMSPNsWHeiAWbGcukAFcxCD
         JavsOeTNSBSuxEJC52iUgkUX1CScvRul1Wlw9kvQIxpUM9n8/+k4BsFlSazLjKijwsGb
         himw==
X-Gm-Message-State: AOAM533OPV9b1Kj+VWNNwZSHYyxbH7n9FtLU4yxTagDA4j3Iqb4HZAdK
	JlwnMjevQmH8w7QHyn41qQA=
X-Google-Smtp-Source: ABdhPJxplerZ2xLNjyByxf5BL3cYb1JpPitTPW+pbmgy4z2BpvmHEIx+bTn8EhQmGXvwSgfERESsng==
X-Received: by 2002:a62:8283:0:b0:3e0:f3f3:839d with SMTP id w125-20020a628283000000b003e0f3f3839dmr14495350pfd.37.1629379203485;
        Thu, 19 Aug 2021 06:20:03 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:656:: with SMTP id 83ls2623093pgg.9.gmail; Thu, 19 Aug
 2021 06:20:02 -0700 (PDT)
X-Received: by 2002:a63:f804:: with SMTP id n4mr13913047pgh.341.1629379202895;
        Thu, 19 Aug 2021 06:20:02 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629379202; cv=none;
        d=google.com; s=arc-20160816;
        b=YbfPAbIJkYFP3YO9xEYAK30PlwLX8dlT/Y93vaZ/m8nQBL4CTXyJMmgaLrYfhaoBRy
         ZT4fNJHzVv9+9Hi3oASFkFKcyCe8cfigvKftqp5PSPtKKkqilSXFrWPSJYcGLQut/12K
         jv7vfzxku1II4/l/MhvEI5NNJxnufvPsirmHGlfDOcxKfHQQL9697HO87GE699k2FG8O
         mOaXO7tywJOBOYsUKYLOXtptWcPTsWKTGYEneMDL/GjN8W5hfenOy/lNWcULDr1B4Tc5
         jQ7PHWQUAd5NTnLL937Y5/Wiz1N6xPZ9xaJNkNEmHoK9260wBXUb8gwdEe+wYp90GTPe
         wiQQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:message-id:in-reply-to:date:references
         :subject:cc:to:from:dmarc-filter:sender:dkim-signature;
        bh=l4dT+tFYjcxU/834O3TlS8Kbm5D9Je72nne0F+3BpO8=;
        b=KD7xJzeetdzjeLKFRxBXca/XkxNjzDiz1Jl0q2uwBQ2HISJ6WTPfnMass55iVbSmql
         Vj1Iosq2OgP6XL1NxHS+Uc+wro2AGpgzZ8D0ygfDNJIIEnpHPwKSuJSetzEDeIq6ZmyX
         2T5GL+XUWeoozqj2aefNWuqDCowwJIO1o9erpYvaEphJ9qRl80RBMlKrMsBOI2IAStfi
         9OZQD4m+qd2xnnd+ObXc6fUKipjniYCg2vkgSDGK27HHysIwl5vcNTcPnWxc8Aayehzf
         YYzJeOo/VKI5a4B94XLZ+vbonnzaOpIS9h4HDdmksORCjPu/I5zrai/oRut5zTsgoZDG
         pDIg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@mg.codeaurora.org header.s=smtp header.b=kOGaBHj5;
       spf=pass (google.com: domain of bounce+a1e0a8.be9e4a-clang-built-linux=googlegroups.com@mg.codeaurora.org designates 198.61.254.9 as permitted sender) smtp.mailfrom="bounce+a1e0a8.be9e4a-clang-built-linux=googlegroups.com@mg.codeaurora.org"
Received: from so254-9.mailgun.net (so254-9.mailgun.net. [198.61.254.9])
        by gmr-mx.google.com with UTF8SMTPS id q2si182567pfl.0.2021.08.19.06.19.57
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 19 Aug 2021 06:20:02 -0700 (PDT)
Received-SPF: pass (google.com: domain of bounce+a1e0a8.be9e4a-clang-built-linux=googlegroups.com@mg.codeaurora.org designates 198.61.254.9 as permitted sender) client-ip=198.61.254.9;
X-Mailgun-Sending-Ip: 198.61.254.9
X-Mailgun-Sid: WyIyMWUwOCIsICJjbGFuZy1idWlsdC1saW51eEBnb29nbGVncm91cHMuY29tIiwgImJlOWU0YSJd
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171]) by
 smtp-out-n03.prod.us-east-1.postgun.com with SMTP id
 611e5a749507ca1a345ec048 (version=TLS1.2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256); Thu, 19 Aug 2021 13:19:48
 GMT
Sender: kvalo=codeaurora.org@mg.codeaurora.org
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
	id 40FE0C4360C; Thu, 19 Aug 2021 13:19:47 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=2.0 tests=ALL_TRUSTED,BAYES_00,SPF_FAIL
	autolearn=no autolearn_force=no version=3.4.0
Received: from tynnyri.adurom.net (tynnyri.adurom.net [51.15.11.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	(Authenticated sender: kvalo)
	by smtp.codeaurora.org (Postfix) with ESMTPSA id 2682CC4338F;
	Thu, 19 Aug 2021 13:19:42 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 smtp.codeaurora.org 2682CC4338F
From: Kalle Valo <kvalo@codeaurora.org>
To: Kees Cook <keescook@chromium.org>
Cc: linux-kernel@vger.kernel.org,  "David S. Miller" <davem@davemloft.net>,  Jakub Kicinski <kuba@kernel.org>,  ath11k@lists.infradead.org,  linux-wireless@vger.kernel.org,  netdev@vger.kernel.org,  "Gustavo A. R. Silva" <gustavoars@kernel.org>,  Greg Kroah-Hartman <gregkh@linuxfoundation.org>,  Andrew Morton <akpm@linux-foundation.org>,  dri-devel@lists.freedesktop.org,  linux-staging@lists.linux.dev,  linux-block@vger.kernel.org,  linux-kbuild@vger.kernel.org,  clang-built-linux@googlegroups.com,  Rasmus Villemoes <linux@rasmusvillemoes.dk>,  linux-hardening@vger.kernel.org
Subject: Re: [PATCH v2 45/63] ath11k: Use memset_startat() for clearing queue descriptors
References: <20210818060533.3569517-1-keescook@chromium.org>
	<20210818060533.3569517-46-keescook@chromium.org>
Date: Thu, 19 Aug 2021 16:19:37 +0300
In-Reply-To: <20210818060533.3569517-46-keescook@chromium.org> (Kees Cook's
	message of "Tue, 17 Aug 2021 23:05:15 -0700")
Message-ID: <87eeapbmhi.fsf@tynnyri.adurom.net>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/26.1 (gnu/linux)
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: kvalo@codeaurora.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@mg.codeaurora.org header.s=smtp header.b=kOGaBHj5;       spf=pass
 (google.com: domain of bounce+a1e0a8.be9e4a-clang-built-linux=googlegroups.com@mg.codeaurora.org
 designates 198.61.254.9 as permitted sender) smtp.mailfrom="bounce+a1e0a8.be9e4a-clang-built-linux=googlegroups.com@mg.codeaurora.org"
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

Kees Cook <keescook@chromium.org> writes:

> In preparation for FORTIFY_SOURCE performing compile-time and run-time
> field bounds checking for memset(), avoid intentionally writing across
> neighboring fields.
>
> Use memset_startat() so memset() doesn't get confused about writing
> beyond the destination member that is intended to be the starting point
> of zeroing through the end of the struct. Additionally split up a later
> field-spanning memset() so that memset() can reason about the size.
>
> Cc: Kalle Valo <kvalo@codeaurora.org>
> Cc: "David S. Miller" <davem@davemloft.net>
> Cc: Jakub Kicinski <kuba@kernel.org>
> Cc: ath11k@lists.infradead.org
> Cc: linux-wireless@vger.kernel.org
> Cc: netdev@vger.kernel.org
> Signed-off-by: Kees Cook <keescook@chromium.org>

To avoid conflicts I prefer taking this via my ath tree.

-- 
https://patchwork.kernel.org/project/linux-wireless/list/

https://wireless.wiki.kernel.org/en/developers/documentation/submittingpatches

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/87eeapbmhi.fsf%40tynnyri.adurom.net.
