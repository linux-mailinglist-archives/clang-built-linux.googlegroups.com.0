Return-Path: <clang-built-linux+bncBCQYFH77QIORB57VYTWQKGQESMR6WTY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x537.google.com (mail-pg1-x537.google.com [IPv6:2607:f8b0:4864:20::537])
	by mail.lfdr.de (Postfix) with ESMTPS id 88C35E2A19
	for <lists+clang-built-linux@lfdr.de>; Thu, 24 Oct 2019 07:47:37 +0200 (CEST)
Received: by mail-pg1-x537.google.com with SMTP id r25sf16925510pga.20
        for <lists+clang-built-linux@lfdr.de>; Wed, 23 Oct 2019 22:47:37 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1571896056; cv=pass;
        d=google.com; s=arc-20160816;
        b=kzoKe2JJ/YFo42rTuPvx2k1ykwnILK602pIieH3RyywFPJ1DBObroavhwA4K3hfhwg
         cTOsA6fqeMuYs/6jdmT81NDkJ40yxDgizYcwGkd7BpxSU/uOa+1l0GPpmAw5IFMgEean
         fWN6GvnxzU7ViAn4mlPX2ixeGYKvKzm0gukBODMHIr0U8o1nCsnGE8ZCDzIM+rKTbs/f
         YzIz13/XgWuQtVegIjwRzsJsvpXsqigXjD6bxwFryOj5oFgAv9wOlllZmB/zdDfZSGPg
         gcBTjBhR3cQ6EbtSqKh5HuWkfrXQhtMcwujBNOLUo9grf77NwODLSTDWZ1LBj8KQ19NX
         AwqA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:date:message-id:user-agent:cc:to
         :references:in-reply-to:from:subject:mime-version:dmarc-filter
         :sender:dkim-signature;
        bh=pB7CgxjnoM+4R9NqE4j/Jfs9do8ycqIKZecfvbvoKic=;
        b=QopVpcBEW9xLocuBE21dhCOCioSDcFYfVrJWPvTi0+KaQQchcR2srHcvon3twJSf9U
         ta/Gvlr+n2ixXJ0eqzUsG2YjnZ9PzKzXuwp1eLFv76KeODZeSe6wgmVkijOGocylbRUi
         CUqFZH96jABgaO09EF1BVxilKO4ctTcU+J/CzBiWR5sE+Avy2k1942iEgb6JkG/tjcw2
         YIeJhhdMq8bcrUacajaPYiUSlTV+eJCR6jhn0N8Uu4DRS7S6A9sqjiVKSCQaFQiWe38C
         AIOYB+S7CeUqIBGKt99h2Y58DJyy9MPY2ZchaU0qb96q5H2rIh0T+Sfy7tt4iJBLu6gf
         8r2g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@codeaurora.org header.s=default header.b=IYA6C2dA;
       dkim=pass header.i=@codeaurora.org header.s=default header.b="EN7O/Wmc";
       spf=pass (google.com: domain of kvalo@codeaurora.org designates 198.145.29.96 as permitted sender) smtp.mailfrom=kvalo@codeaurora.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:dmarc-filter:mime-version:subject:from:in-reply-to
         :references:to:cc:user-agent:message-id:date:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=pB7CgxjnoM+4R9NqE4j/Jfs9do8ycqIKZecfvbvoKic=;
        b=nsKw5U7HNLrAQQYbmqaBytzgwYE8gwGbyxsltsM95YHV/zMhiirHqNml7uFpbarH2V
         n/nXWktfINqzoG6/xgjfxeyoz0PaX07Fgcq40qIHCcfBBc36ggGt4swVg+tNb5AbfJSS
         RAOA73w95KjroAUMHzvkO74qHe0ToD2njcR0f0JwOdsKRujR7D2rcEQQ3s4ooVJ1EInx
         0TGdaRB55j4tmZqmYbqkEJ3ZggGXVDVQjjdbJHFHi+4B41HSwqjQY2pXAYjiIK+Dt3Tb
         JcGgioku6kZV+NAGVYSD/qxaUZ9p5zJX+6ScV3oHNumx28URH3QHUug/qhOEh2wUkZ3d
         wdow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:dmarc-filter:mime-version:subject:from
         :in-reply-to:references:to:cc:user-agent:message-id:date
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=pB7CgxjnoM+4R9NqE4j/Jfs9do8ycqIKZecfvbvoKic=;
        b=k2D1L0HHyhQjxRXlsh40w/xDy7tUjnU5s7EqDovLoRwSfOHpD5up1uNGZ5CIF8mKlK
         J9sgnQs41c7R7x+vUhTF10TxoFMEWizRrrL8zMCWsSw3bh9Wmx61aawVENHWi1L8NfbB
         /oNNHu0CBSwlRKn4xU/fV1b/PDNO4LSGe9onfcXCTq5zvjSbWWMUV4I7fGpuWva1cPi/
         PcRLnWi8zpEPuA3iiVT1vR4+tjsXNb9/IWIcWNPV0hmW2pzZ/Wv6z8Y3Sg1IazYlZIuJ
         YOWHs7+WrbsJMxzkiv0zFqxQBzyxIhC7hnJNp0FUSDI3W3hFudTC5kvxG+Wbsf0zxHmK
         u9tg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUE7Um6k8416Hp3alj8SKff9LhLarzA4tXkm0XlHsNOxQ8mYVDt
	KkHSyDR0ADN72XXiPDYVTho=
X-Google-Smtp-Source: APXvYqw7jDGlKnEU/2vPb5QttH5fX7VdXaYc5PDx0I6RmCrl5Vyz06Gucu/cu3azGnepyWW6JIIPBw==
X-Received: by 2002:a17:90a:a889:: with SMTP id h9mr4806581pjq.61.1571896055726;
        Wed, 23 Oct 2019 22:47:35 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a65:4b87:: with SMTP id t7ls1429423pgq.5.gmail; Wed, 23 Oct
 2019 22:47:35 -0700 (PDT)
X-Received: by 2002:a63:4b54:: with SMTP id k20mr14750077pgl.70.1571896055193;
        Wed, 23 Oct 2019 22:47:35 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1571896055; cv=none;
        d=google.com; s=arc-20160816;
        b=gJk3YuZq9iaxT2aWIyNeTmVkdBZAedAfDKUaluZaEM6JJ4CXNpGqSYkE6w42BnZ2vq
         e0UJ8vC6a4cXpiUFYTe/qPdwxLd44L81G5gDq/IS3WC0AQ4segk9khmaUlaKl2GQkqav
         FdQJDO26M08HLGuDXexn/njq02qGVTI4ty9az6/cHKMyJLUFflMZ2x4b0NJYmKn6uYUV
         hpNAkGkaVWGw4tGrZuQRbewLRuIce9ZDIMk05+3ZNDC1/wfLw8Mn/7Ju8wPbzrvuklj4
         jcLZfb54q69hWzK1pTX3jqnwG9FOO7W3PNTP0T1bpCQk5BzowV517QZg6kdGUZqyCutx
         isOA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=date:message-id:user-agent:cc:to:references:in-reply-to:from
         :subject:content-transfer-encoding:mime-version:dmarc-filter
         :dkim-signature:dkim-signature;
        bh=kjUnRTsfclGEjlCcXbRqPolQ7od55cZHK3bbxLdsyE0=;
        b=rcKzt5kkcBc7zkzRRUcIEkfatL3pJB6mkR5gTD1D9wY3tcVFzUmS33mgmJXsZj3Z7p
         Wv1tFDY0JCkBk2WJe+/8Jjr0p8GKQ+vducPCTkpp7JQyxpp4hI4KbHl9T8c+9Uen4ffK
         V6mMrnrrM50+Y2BrTiGwjgNk9D4GBRgR3NoyGpCe9CtgS31NPDzaDDgEam+PfAcWjpQC
         eBi6uoQ0uz1lZw9hmND3irUOEAnq4sP362GZsKcRxcy7dkRplrivH0YD6CwqQzBoVLj/
         y14lwN8kZWeI3eNKnwxkOgwf2Blyx0IzkhfuaFtOhdD+A+KFf5br534UjY1hFHNEbRZz
         CRow==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@codeaurora.org header.s=default header.b=IYA6C2dA;
       dkim=pass header.i=@codeaurora.org header.s=default header.b="EN7O/Wmc";
       spf=pass (google.com: domain of kvalo@codeaurora.org designates 198.145.29.96 as permitted sender) smtp.mailfrom=kvalo@codeaurora.org
Received: from smtp.codeaurora.org (smtp.codeaurora.org. [198.145.29.96])
        by gmr-mx.google.com with ESMTPS id b17si27414plz.1.2019.10.23.22.47.35
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 23 Oct 2019 22:47:35 -0700 (PDT)
Received-SPF: pass (google.com: domain of kvalo@codeaurora.org designates 198.145.29.96 as permitted sender) client-ip=198.145.29.96;
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
	id ED8DB60ECE; Thu, 24 Oct 2019 05:47:34 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	pdx-caf-mail.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.8 required=2.0 tests=ALL_TRUSTED,BAYES_00,
	DKIM_INVALID,DKIM_SIGNED,MISSING_DATE,MISSING_MID,SPF_NONE autolearn=no
	autolearn_force=no version=3.4.0
Received: from potku.adurom.net (unknown [88.114.240.156])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	(Authenticated sender: kvalo@smtp.codeaurora.org)
	by smtp.codeaurora.org (Postfix) with ESMTPSA id 5A92A60DA9;
	Thu, 24 Oct 2019 05:47:32 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 5A92A60DA9
Content-Type: text/plain; charset="UTF-8"
MIME-Version: 1.0
Subject: Re: [PATCH] rtlwifi: Remove unnecessary NULL check in rtl_regd_init
From: Kalle Valo <kvalo@codeaurora.org>
In-Reply-To: <20191023004703.39710-1-natechancellor@gmail.com>
References: <20191023004703.39710-1-natechancellor@gmail.com>
To: Nathan Chancellor <natechancellor@gmail.com>
Cc: Ping-Ke Shih <pkshih@realtek.com>, Larry Finger <Larry.Finger@lwfinger.net>,
 linux-wireless@vger.kernel.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com,
 Nathan Chancellor <natechancellor@gmail.com>
User-Agent: pwcli/0.0.0-git (https://github.com/kvalo/pwcli/) Python/2.7.12
Message-Id: <20191024054734.ED8DB60ECE@smtp.codeaurora.org>
Date: Thu, 24 Oct 2019 05:47:34 +0000 (UTC)
X-Original-Sender: kvalo@codeaurora.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@codeaurora.org header.s=default header.b=IYA6C2dA;       dkim=pass
 header.i=@codeaurora.org header.s=default header.b="EN7O/Wmc";       spf=pass
 (google.com: domain of kvalo@codeaurora.org designates 198.145.29.96 as
 permitted sender) smtp.mailfrom=kvalo@codeaurora.org
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

Nathan Chancellor <natechancellor@gmail.com> wrote:

> When building with Clang + -Wtautological-pointer-compare:
> 
> drivers/net/wireless/realtek/rtlwifi/regd.c:389:33: warning: comparison
> of address of 'rtlpriv->regd' equal to a null pointer is always false
> [-Wtautological-pointer-compare]
>         if (wiphy == NULL || &rtlpriv->regd == NULL)
>                               ~~~~~~~~~^~~~    ~~~~
> 1 warning generated.
> 
> The address of an array member is never NULL unless it is the first
> struct member so remove the unnecessary check. This was addressed in
> the staging version of the driver in commit f986978b32b3 ("Staging:
> rtlwifi: remove unnecessary NULL check").
> 
> While we are here, fix the following checkpatch warning:
> 
> CHECK: Comparison to NULL could be written "!wiphy"
> 35: FILE: drivers/net/wireless/realtek/rtlwifi/regd.c:389:
> +       if (wiphy == NULL)
> 
> Fixes: 0c8173385e54 ("rtl8192ce: Add new driver")
> Link:https://github.com/ClangBuiltLinux/linux/issues/750
> Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
> Acked-by: Ping-Ke Shih <pkshih@realtek.com>

Patch applied to wireless-drivers-next.git, thanks.

091c6e9c083f rtlwifi: Remove unnecessary NULL check in rtl_regd_init

-- 
https://patchwork.kernel.org/patch/11205577/

https://wireless.wiki.kernel.org/en/developers/documentation/submittingpatches

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191024054734.ED8DB60ECE%40smtp.codeaurora.org.
