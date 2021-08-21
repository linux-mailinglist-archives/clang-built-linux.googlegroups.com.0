Return-Path: <clang-built-linux+bncBCQYFH77QIORBSNFQOEQMGQEBGSO6MA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-f56.google.com (mail-oo1-f56.google.com [209.85.161.56])
	by mail.lfdr.de (Postfix) with ESMTPS id 05DBE3F3A2A
	for <lists+clang-built-linux@lfdr.de>; Sat, 21 Aug 2021 12:17:47 +0200 (CEST)
Received: by mail-oo1-f56.google.com with SMTP id y10-20020a4ab40a0000b0290285068c6fc0sf6020500oon.1
        for <lists+clang-built-linux@lfdr.de>; Sat, 21 Aug 2021 03:17:46 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629541065; cv=pass;
        d=google.com; s=arc-20160816;
        b=ScPmk3DgzRRe3Sfqk/kN3Pb1JXtpDtptBO/33g3M6EzyoMznf+rdOJ7Yo+jqNVi8mv
         LbDmKbdphorTvgawi289wcTN2mgiqrPSNK7qECKhC/C/gnQgg+0g9XMIcSq1APnHrIsM
         1aiHHMfkHYBfaijwJ492YeCJc2HE5IU9oAqlCjnPqsL9uQ7tqfGL+5df5Kcq6nHocaGP
         VyURJd+5AhaF64HGiW6r4+vFiaSFn7WtWXY9DTqaZuwjVVCVc0SJcjfPNPtbfaAW6WzV
         6K35Ab3ABQzIVYNi7aaPD+TW2C7Xa04UqUNoSV42qrGMn/WcTLaOHVutSKOozGHMy5lf
         HEng==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:user-agent:message-id
         :in-reply-to:date:references:subject:cc:to:from:dmarc-filter:sender;
        bh=FL72ArU08yNKg0sOLajsda7jqh8Qb1YaDsf9ZftSiA0=;
        b=iYzCXSrghXcm10gC64DrhLFRpNFoq4DqoKmin+rUQGUf/sl/OcwhbrkmVevJqD/+re
         JYMa2nPs/Mp6WsZuAckzDb1UqcMrJCXHDuONiXEKi3BhhP6euNDNVFywqeubZD9qyE0h
         vN7H7OBf7h9nplEnO2pi47PjZrMj9xcIUBlxAanrgMMxnIjRVfAkCAfs5vLHagaDSyeD
         j3m1LtUgwQg6a8brgjgkpUmIzXB23cXJ/Mnb4OnlzbKlPtWkAzWC+xi8ZZy0HI+4BdLB
         z04/gbywa7TPmFD5eEZ8m42uRxQKASecNMIIHtEYOpDKfq/XjUYccfU8BwMKnRhFS2an
         JHJA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@mg.codeaurora.org header.s=smtp header.b=TlbOroZV;
       spf=pass (google.com: domain of bounce+a1e0a8.be9e4a-clang-built-linux=googlegroups.com@mg.codeaurora.org designates 69.72.43.7 as permitted sender) smtp.mailfrom="bounce+a1e0a8.be9e4a-clang-built-linux=googlegroups.com@mg.codeaurora.org"
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:dmarc-filter:from:to:cc:subject
         :references:date:in-reply-to:message-id:user-agent:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=FL72ArU08yNKg0sOLajsda7jqh8Qb1YaDsf9ZftSiA0=;
        b=nTEY9gRjMOcAMAoIe2BnUd6PMZEikGiN3WxozgIXJtmQFwDDFk6h/OIeOKNj/xXpUK
         avSca0h3EhhtqKBiKlSSASFFvpobSI5n/+ktPgZ5KhEg+1e4Q6rKY46LeVi0+J+84Khs
         iFSrtnXlPgApJIWHbmlCrdaRlCY8sA7pIs2AGZlSeyguy0UfqNC9cmnJ7Bn6IRhf2Y8H
         PVR31TGUJmv6v7jthyBK8eONWstx1/lEJbzPqscFcB6OZyEpRlsxf1u+Q3P/bAEnMwc2
         K4met6WuUINWA8dhT6uauErf8reN2NFbJPTSCVcBeObd2+9lAkNASSj0J/mt35z8lSnx
         Eovg==
X-Gm-Message-State: AOAM5332gVsxSz5hCWK1tFWMuDirA7S9ZnoRVBLpf2A4U62n6zzhhGr/
	mQr3sdrV+QnwIBSAf0RsTuw=
X-Google-Smtp-Source: ABdhPJz6uh9wwX9Z8JRmMSryQqRiFOVixsgxukb/V6YBHp7d7iF4Sscqr5Awzb01T3IKy7zQeQeWzw==
X-Received: by 2002:a9d:c04:: with SMTP id 4mr19582100otr.180.1629541065849;
        Sat, 21 Aug 2021 03:17:45 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6808:2186:: with SMTP id be6ls2933512oib.8.gmail; Sat,
 21 Aug 2021 03:17:45 -0700 (PDT)
X-Received: by 2002:a05:6808:642:: with SMTP id z2mr6031164oih.26.1629541065480;
        Sat, 21 Aug 2021 03:17:45 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629541065; cv=none;
        d=google.com; s=arc-20160816;
        b=NB1pDqSvNLdkw9DmZl8H+dTLMSwcSRWg7pvN2YZPR3l7KglpSy2eoqtlzoG5X0R9Np
         v0RQ9wNy9W/AGfZaSIMaqL0R7iwm2xCAaaKI2aukcoVzwOBb4shbJkhbUlmMrWyKxl5O
         onJ82lSXf9OedtBQXbPPIkayxGvdSI0zzVRlyMAkq6pPE0Aa6s0A1u9o8GD4Q3NhHqOj
         0D2L3kdLA2Y3Rl3IDw4Jw7KsuXNmeT2YCSiW6D8o1USLBBMnmPcGz7Hu/mq5bo9hKcMf
         Rld4YYDDeC+Wl1ypPInpyJ+K9Km4ngiqM1cfTziSn8R1FIQpk/1G5fb6iu3ohtOoRznD
         tXoQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:message-id:in-reply-to:date:references
         :subject:cc:to:from:dmarc-filter:sender:dkim-signature;
        bh=UpM1DyTEkig259V+pL57ps65feNkTSUqUFyxt1prq3Y=;
        b=OvyLUxAGo55WdguaEMrWVMU5VRrBqV7fWyJ82m5NnejdPVQI7IR4xZtIqkQiDer6VA
         2WUC6RAfOipDS0NzJoyWmIh3n/pKybUoC7VG34V83cQbrPP6iQ8mG0TDJ0pADFZAZjFg
         AM5t9DL3DpuLVM6V58q81sPGsWP6/GvjyMYzj5a3l9LlgdTfRXvPIgVKK7xCAtkJKruz
         22t2UACURQOtFJ4MhOGsDCGK0yTlOVRH1v/xQNfVWtKhzfbKc2Xzo/OBWnlEuuT/7FYN
         wjZeNW5reA5VEXzKg3fYdZnQ8z0QYPkLrntnpS9wV87Kj3Zl7dUN0o4mATA/Ky82hDKs
         Vb/A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@mg.codeaurora.org header.s=smtp header.b=TlbOroZV;
       spf=pass (google.com: domain of bounce+a1e0a8.be9e4a-clang-built-linux=googlegroups.com@mg.codeaurora.org designates 69.72.43.7 as permitted sender) smtp.mailfrom="bounce+a1e0a8.be9e4a-clang-built-linux=googlegroups.com@mg.codeaurora.org"
Received: from m43-7.mailgun.net (m43-7.mailgun.net. [69.72.43.7])
        by gmr-mx.google.com with UTF8SMTPS id bf14si163903oib.0.2021.08.21.03.17.45
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 21 Aug 2021 03:17:45 -0700 (PDT)
Received-SPF: pass (google.com: domain of bounce+a1e0a8.be9e4a-clang-built-linux=googlegroups.com@mg.codeaurora.org designates 69.72.43.7 as permitted sender) client-ip=69.72.43.7;
X-Mailgun-Sending-Ip: 69.72.43.7
X-Mailgun-Sid: WyIyMWUwOCIsICJjbGFuZy1idWlsdC1saW51eEBnb29nbGVncm91cHMuY29tIiwgImJlOWU0YSJd
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171]) by
 smtp-out-n05.prod.us-west-2.postgun.com with SMTP id
 6120d2c81ea75edcc35fc233 (version=TLS1.2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256); Sat, 21 Aug 2021 10:17:44
 GMT
Sender: kvalo=codeaurora.org@mg.codeaurora.org
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
	id B70FAC4360D; Sat, 21 Aug 2021 10:17:44 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=2.0 tests=ALL_TRUSTED,BAYES_00,SPF_FAIL
	autolearn=no autolearn_force=no version=3.4.0
Received: from tykki (tynnyri.adurom.net [51.15.11.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	(Authenticated sender: kvalo)
	by smtp.codeaurora.org (Postfix) with ESMTPSA id 1ED37C4338F;
	Sat, 21 Aug 2021 10:17:39 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 smtp.codeaurora.org 1ED37C4338F
From: Kalle Valo <kvalo@codeaurora.org>
To: Kees Cook <keescook@chromium.org>
Cc: linux-kernel@vger.kernel.org,  "David S. Miller" <davem@davemloft.net>,  Jakub Kicinski <kuba@kernel.org>,  ath11k@lists.infradead.org,  linux-wireless@vger.kernel.org,  netdev@vger.kernel.org,  "Gustavo A. R. Silva" <gustavoars@kernel.org>,  Greg Kroah-Hartman <gregkh@linuxfoundation.org>,  Andrew Morton <akpm@linux-foundation.org>,  dri-devel@lists.freedesktop.org,  linux-staging@lists.linux.dev,  linux-block@vger.kernel.org,  linux-kbuild@vger.kernel.org,  clang-built-linux@googlegroups.com,  Rasmus Villemoes <linux@rasmusvillemoes.dk>,  linux-hardening@vger.kernel.org
Subject: Re: [PATCH v2 45/63] ath11k: Use memset_startat() for clearing queue descriptors
References: <20210818060533.3569517-1-keescook@chromium.org>
	<20210818060533.3569517-46-keescook@chromium.org>
	<87eeapbmhi.fsf@tynnyri.adurom.net> <202108190923.30FD4FC6E@keescook>
Date: Sat, 21 Aug 2021 13:17:36 +0300
In-Reply-To: <202108190923.30FD4FC6E@keescook> (Kees Cook's message of "Thu,
	19 Aug 2021 09:25:01 -0700")
Message-ID: <87pmu7t83j.fsf@codeaurora.org>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/26.1 (gnu/linux)
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: kvalo@codeaurora.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@mg.codeaurora.org header.s=smtp header.b=TlbOroZV;       spf=pass
 (google.com: domain of bounce+a1e0a8.be9e4a-clang-built-linux=googlegroups.com@mg.codeaurora.org
 designates 69.72.43.7 as permitted sender) smtp.mailfrom="bounce+a1e0a8.be9e4a-clang-built-linux=googlegroups.com@mg.codeaurora.org"
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

> On Thu, Aug 19, 2021 at 04:19:37PM +0300, Kalle Valo wrote:
>> Kees Cook <keescook@chromium.org> writes:
>> 
>> > In preparation for FORTIFY_SOURCE performing compile-time and run-time
>> > field bounds checking for memset(), avoid intentionally writing across
>> > neighboring fields.
>> >
>> > Use memset_startat() so memset() doesn't get confused about writing
>> > beyond the destination member that is intended to be the starting point
>> > of zeroing through the end of the struct. Additionally split up a later
>> > field-spanning memset() so that memset() can reason about the size.
>> >
>> > Cc: Kalle Valo <kvalo@codeaurora.org>
>> > Cc: "David S. Miller" <davem@davemloft.net>
>> > Cc: Jakub Kicinski <kuba@kernel.org>
>> > Cc: ath11k@lists.infradead.org
>> > Cc: linux-wireless@vger.kernel.org
>> > Cc: netdev@vger.kernel.org
>> > Signed-off-by: Kees Cook <keescook@chromium.org>
>> 
>> To avoid conflicts I prefer taking this via my ath tree.
>
> The memset helpers are introduced as part of this series, so that makes
> things more difficult. Do you want me to create a branch with the
> helpers that you can merge?

Is this patch really worth the extra complexity? Why can't I apply this
ath11k patch after the helpers have landed Linus' tree? That would be
very simple.

-- 
https://patchwork.kernel.org/project/linux-wireless/list/

https://wireless.wiki.kernel.org/en/developers/documentation/submittingpatches

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/87pmu7t83j.fsf%40codeaurora.org.
