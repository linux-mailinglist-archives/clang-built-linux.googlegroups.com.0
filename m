Return-Path: <clang-built-linux+bncBCQYFH77QIORBEM45D3AKGQEEYJQI6A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-f57.google.com (mail-pj1-f57.google.com [209.85.216.57])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B8981EF3E9
	for <lists+clang-built-linux@lfdr.de>; Fri,  5 Jun 2020 11:19:15 +0200 (CEST)
Received: by mail-pj1-f57.google.com with SMTP id ge4sf4208534pjb.7
        for <lists+clang-built-linux@lfdr.de>; Fri, 05 Jun 2020 02:19:15 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1591348754; cv=pass;
        d=google.com; s=arc-20160816;
        b=Kq8EmpTKp0CWmS0cxW6u4HXWGVRrEs4u69qMhoTGSWG0im7Xx49DXcaKU5U1KSpStR
         Gj/a5JtKGIQ2vJzTKDKTLvSu9MLLSMl/6O4zGl8vCYobBgCGrnoUyoUjfCEsSqGBHWiv
         YvHYOrmtRyi5wayZ/HeTT4TcIMLVVRmihznzjgNTgm0plRz/HIHyonttL4zGy3YmpqQn
         I3bXP45lTWRhwSS+UivKXgV+rJQJfULE8kx38xJm0S8Wcg+J3NYTgRw8m3gSvfIKXsZC
         m63JbODiO8tJ5d+PeQCBMcrQJWugcE8kJ/ogqPzIk2poTPkpq3yRO22wk1aNOVv9Z4hw
         FQQw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:user-agent:message-id
         :in-reply-to:date:references:subject:cc:to:from:dmarc-filter:sender;
        bh=q/7GnL8Mcwjt2oDsIUswBR7qta6Wnangjm+kWE+uLT4=;
        b=F/XYqeF8URcVP4wzm538n5vNsmaufT4/2V1ys/a3UdmMjWw0gjqsfzZ2iHPuBJuIRz
         5lSp78PecKFRnpCEpEOWGmC5xCENhZitVOABiiuzHHs0rpV6xdfg69v8yfm3ghW64oL5
         q9RA2WMD6dD8EJ27DjnADek/NIAcaU7vkBQM0DILd1yneYJcbY23YS/A06dZRxyzpq5a
         SAOVkKVhvAPJJ7kDZmsB38klaxm2YQ4Ihabm+VN1is700J8+sOPOOIP6JwxA/YvqfszU
         3D5GZEckeLiiLqJgNq71PUPHT4QygYxdREhZE00fz7qEyxcPSMhRErhKWQqiJSdizQsF
         hSbw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@mg.codeaurora.org header.s=smtp header.b=abZgt8Rm;
       spf=pass (google.com: domain of bounce+a1e0a8.be9e4a-clang-built-linux=googlegroups.com@mg.codeaurora.org designates 69.72.43.7 as permitted sender) smtp.mailfrom="bounce+a1e0a8.be9e4a-clang-built-linux=googlegroups.com@mg.codeaurora.org"
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:dmarc-filter:from:to:cc:subject
         :references:date:in-reply-to:message-id:user-agent:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=q/7GnL8Mcwjt2oDsIUswBR7qta6Wnangjm+kWE+uLT4=;
        b=Na+2Mc2lzKbW4jVjwNydUNcEMBJ/S1A8opjKTjlg9xE+pLrDKuKHzGzPO9oJbTLdVd
         luBRxCKZ+vhCkfaOp6RiPgF4id+UgmsXG6NST7NqtE5pnelpXufvz5LyY3duCMjYFN30
         ikpUpmI/gLCNtyCYCvmTB7AaJp9buoW9jCL5G59vh1qaWeQWIgWB1+ZtM1HMrm8lklsU
         4HSQ+Hjy1tLu143mwkgTb1tTYqEXSFfmRDJrbYqnT+C6XWy0aY008ZvkM4PnJKvsfhB6
         m0NZsYCsuQ6Poo2rNT1NpjJmn1Jdbfsc+HmWQHtiKnGHc9fMYwaGTtYoRn+VLOxDIRrz
         5Y6g==
X-Gm-Message-State: AOAM532/Oz0NtQRE4PNsBYrkeM/GL0AVHecbZ/XSo53SVhBxxdLge9YW
	5mBtvz/A2OaU8JewSFP1AUc=
X-Google-Smtp-Source: ABdhPJyfGvrBc0FY7CNqHIea1kCsOWzHgwgn9tHLFiiWJ2/PnJHIi2qIAAQBEkWH+2u/0PB4fRNqHw==
X-Received: by 2002:a17:90a:bf13:: with SMTP id c19mr1834773pjs.186.1591348753851;
        Fri, 05 Jun 2020 02:19:13 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:b219:: with SMTP id x25ls2462805pge.8.gmail; Fri, 05 Jun
 2020 02:19:13 -0700 (PDT)
X-Received: by 2002:aa7:9052:: with SMTP id n18mr9060789pfo.319.1591348753425;
        Fri, 05 Jun 2020 02:19:13 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1591348753; cv=none;
        d=google.com; s=arc-20160816;
        b=0OEyywJvzdT3Y0jxjW2VZJ9qcZjGA5pxJjnwYjYFc0JokJmC+B/yAPTUWXa9rc6+of
         rpXCguoQOCtTdVqGFxn21tuqP83/UkRuKeTc00hgtCf/Wx7jNio9okKy6222k5ZUyRQ/
         iUm0WxZ9wxvWQngl/ku6Y8EQaB8nSDwldWpe60yfcq4pxq+jSJQuffDRw03gWm4uq0Hc
         a+XBShhp2sS34Fqp2gPXnbWPFaHr1wE2zxzZ9G1KRVRcNoUWRh2O4g5qKCIexaxt4r+c
         4g2qwtUohDUSfteWTsfWKmZpIwTRQx/aHW2NXzHnHqN0gGCLD3CemFuCbCHYvVzv5+/2
         cX3A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:message-id:in-reply-to:date:references
         :subject:cc:to:from:dmarc-filter:sender:dkim-signature;
        bh=rOuMTfuZSakOmsFGGhwcSiyz0vHtYC8PrlCFy1ZsKyw=;
        b=eb72LzBUB6w66/gHH1VX2hexJMF8VU0UQBC3XgS/JQom55A9GLKvwZAxrSiIFJ1vHZ
         +vqc4s7xG+9vOse6ih4hMG9lO2pGPD2o1VamYapLXPNQqCQy54WiFDBefx/fvJd8s07H
         TTeBeZva04YT1xThu4Y6js8n5O3WH83cWUK0iCg3QP8lldH4yYB4ZJNWh0R5CN8jV7lc
         V6gHfPxyWfTncnjxJEl/aXrGHCtvKlLybcEAEMxt4qGhts3y9X+XWwI9zJCqO+N+5E3C
         eFRgTyRZ8XQcNyA6TV8+TJoId4s28AG/tUFeAOhKGayrRjVHqM9eAvzsU+azgSx9M9XM
         U4ig==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@mg.codeaurora.org header.s=smtp header.b=abZgt8Rm;
       spf=pass (google.com: domain of bounce+a1e0a8.be9e4a-clang-built-linux=googlegroups.com@mg.codeaurora.org designates 69.72.43.7 as permitted sender) smtp.mailfrom="bounce+a1e0a8.be9e4a-clang-built-linux=googlegroups.com@mg.codeaurora.org"
Received: from m43-7.mailgun.net (m43-7.mailgun.net. [69.72.43.7])
        by gmr-mx.google.com with UTF8SMTPS id x14si685650pjt.2.2020.06.05.02.19.08
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 05 Jun 2020 02:19:13 -0700 (PDT)
Received-SPF: pass (google.com: domain of bounce+a1e0a8.be9e4a-clang-built-linux=googlegroups.com@mg.codeaurora.org designates 69.72.43.7 as permitted sender) client-ip=69.72.43.7;
X-Mailgun-Sending-Ip: 69.72.43.7
X-Mailgun-Sid: WyIyMWUwOCIsICJjbGFuZy1idWlsdC1saW51eEBnb29nbGVncm91cHMuY29tIiwgImJlOWU0YSJd
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171]) by
 smtp-out-n08.prod.us-east-1.postgun.com with SMTP id
 5eda0df544a25e0052193e8d (version=TLS1.2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256); Fri, 05 Jun 2020 09:18:45
 GMT
Sender: kvalo=codeaurora.org@mg.codeaurora.org
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
	id ED767C4339C; Fri,  5 Jun 2020 09:18:44 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.0
Received: from tynnyri.adurom.net (tynnyri.adurom.net [51.15.11.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	(Authenticated sender: kvalo)
	by smtp.codeaurora.org (Postfix) with ESMTPSA id B846EC43387;
	Fri,  5 Jun 2020 09:18:40 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org B846EC43387
From: Kalle Valo <kvalo@codeaurora.org>
To: Kees Cook <keescook@chromium.org>
Cc: linux-kernel@vger.kernel.org,  Linus Torvalds <torvalds@linux-foundation.org>,  Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>,  Alexander Potapenko <glider@google.com>,  Joe Perches <joe@perches.com>,  Andy Whitcroft <apw@canonical.com>,  x86@kernel.org,  drbd-dev@lists.linbit.com,  linux-block@vger.kernel.org,  b43-dev@lists.infradead.org,  netdev@vger.kernel.org,  linux-wireless@vger.kernel.org,  linux-ide@vger.kernel.org,  linux-clk@vger.kernel.org,  linux-spi@vger.kernel.org,  linux-mm@kvack.org,  clang-built-linux@googlegroups.com
Subject: Re: [PATCH 04/10] rtlwifi: rtl8192cu: Remove uninitialized_var() usage
References: <20200603233203.1695403-1-keescook@chromium.org>
	<20200603233203.1695403-5-keescook@chromium.org>
Date: Fri, 05 Jun 2020 12:18:22 +0300
In-Reply-To: <20200603233203.1695403-5-keescook@chromium.org> (Kees Cook's
	message of "Wed, 3 Jun 2020 16:31:57 -0700")
Message-ID: <87h7vpg9b5.fsf@tynnyri.adurom.net>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/26.1 (gnu/linux)
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: kvalo@codeaurora.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@mg.codeaurora.org header.s=smtp header.b=abZgt8Rm;       spf=pass
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

> Using uninitialized_var() is dangerous as it papers over real bugs[1]
> (or can in the future), and suppresses unrelated compiler warnings (e.g.
> "unused variable"). If the compiler thinks it is uninitialized, either
> simply initialize the variable or make compiler changes. As a precursor
> to removing[2] this[3] macro[4], just initialize this variable to NULL,
> and avoid sending garbage by returning.
>
> [1] https://lore.kernel.org/lkml/20200603174714.192027-1-glider@google.com/
> [2] https://lore.kernel.org/lkml/CA+55aFw+Vbj0i=1TGqCR5vQkCzWJ0QxK6CernOU6eedsudAixw@mail.gmail.com/
> [3] https://lore.kernel.org/lkml/CA+55aFwgbgqhbp1fkxvRKEpzyR5J8n1vKT1VZdz9knmPuXhOeg@mail.gmail.com/
> [4] https://lore.kernel.org/lkml/CA+55aFz2500WfbKXAx8s67wrm9=yVJu65TpLgN_ybYNv0VEOKA@mail.gmail.com/
>
> Signed-off-by: Kees Cook <keescook@chromium.org>

To which tree should this go? If something else than wireless-drivers
tree:

Acked-by: Kalle Valo <kvalo@codeaurora.org>

But let me know if you want me to take this.

-- 
https://wireless.wiki.kernel.org/en/developers/documentation/submittingpatches

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/87h7vpg9b5.fsf%40tynnyri.adurom.net.
