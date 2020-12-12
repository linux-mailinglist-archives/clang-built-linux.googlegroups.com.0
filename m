Return-Path: <clang-built-linux+bncBC7M5BFO7YCRBWO22P7AKGQEABCYCBA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23e.google.com (mail-oi1-x23e.google.com [IPv6:2607:f8b0:4864:20::23e])
	by mail.lfdr.de (Postfix) with ESMTPS id D37962D87AF
	for <lists+clang-built-linux@lfdr.de>; Sat, 12 Dec 2020 17:18:34 +0100 (CET)
Received: by mail-oi1-x23e.google.com with SMTP id l185sf6198558oig.17
        for <lists+clang-built-linux@lfdr.de>; Sat, 12 Dec 2020 08:18:34 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1607789913; cv=pass;
        d=google.com; s=arc-20160816;
        b=vycu3fU7PTMoQ8yb9UKdosUyjx6g/Y6rNA+o4q2jHwvHY++ei6/P9DpFtR6PnXbyrG
         w/8pPE8LaW/5TxlzTPqTaLmMyXrglBQjXJScbq6QR70CPP6PDoAKQFYjzjzTzkgsP9W9
         LV/RyjPpSoP3SU+pq2PxgvHDTYB0/7sII4ekhysVDV4C2d6qT3sLgtdYBi31jl7J5g63
         kUaf3mGb6fi7stTmASOAYtNUpVy+URMFv4IPx4X7rDqJUXLLkqrG27Ck8HYuCnGFxqib
         OOIIy3SKBMZ9rC03DRWzstXrUyh2Nrsw84s4hKT9ey0N4Aaf2OmWBgr9hBi7i5wNgmIX
         LsLA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=wIFH+GRPyOHzEQMuMp9knzJW8XgSRyIxx4odz1r6Jxg=;
        b=qbO2m8Q+LkXeuJP1i0ggdp6ZZuZ6aqt/6FerSUIANxnCPGeTq242Wmzd7/86avSb2N
         sZCTvyYueEQTFrctNXWVjxrdAlzYA1QWhuCSoGFWbhDEIhyEtOeSa7DZKQJfLOLmeyZh
         +d6kxQSilvh4MlZ+sZ6BazDPfaE8w6+nJ2UXMxthYGDuLcNI/NYl8EZ4Nlf/3UGxIr9x
         dHP61SRwy5DlGD6e3IXeL+SBwwCMeqhmD0YYMRuXsLRANGfuRmuqK6Lh6fuCFu+IrUPi
         ApDXLiUWFSmLv2iHeh9AFbM2yxNeusXbCV6g3FvIs0SUd99YUKe4+Ej5is43sJY71TpA
         /uFg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@roeck-us.net header.s=default header.b=zw+Zgzt8;
       spf=softfail (google.com: domain of transitioning linux@roeck-us.net does not designate 69.89.23.142 as permitted sender) smtp.mailfrom=linux@roeck-us.net
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=wIFH+GRPyOHzEQMuMp9knzJW8XgSRyIxx4odz1r6Jxg=;
        b=ge3M4HzPqP3aNi4EKb72VLknVGN25RxypROmjY28oKcD5i2aoROPxtp5+W1Zm3PysZ
         5L/HD1sobm40RL/vATw/fv9Mgv7MCV8M+t8B5F6vly9HLo30fT3l6uGoGgOeAcghxtWZ
         lhUkyf5lo2/rx0ihVOJX2NTQpi/ot3i5Mmb24C6LguqsozyVQuGYJEK2E95dSsTE+HtN
         P9XC3fLHtIQV+GW5G9wAwJuDfcZ/Pk5v2XocWOgG631Rm5kjO/ic0eE20qzMWKoLZtRG
         SSQPslhQ4e5d89GQ/T8+vnVzf6bGGT+elf2aS7nuuUdhc3hkyGuoOSRHOsYnl3BCxx32
         qJhw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=wIFH+GRPyOHzEQMuMp9knzJW8XgSRyIxx4odz1r6Jxg=;
        b=FFGMd17loUTzLFJv43BK6YI+rP2WCbXaWOkJpGyfuBWxTxvR8TV/D0QUgQfQRJ7lso
         dylOrIWYx7/XudOYEpkUJgsmgbE3z3K6cKhtIKbG/baK/pRPMXViLPDAXTyuBdjmHCLG
         Y2yE/AwvPuE+9AHTRSb3UwlAJmTSfsX70xwadV2lBMfijDzJYrC9fb8dhDx0cfS263Rs
         CODevlJOXa6X57UuIfe3tR++NG7VuiVB21CoiAeUmT3PtV2fNgfeiXqkBDFuMroN1hea
         lE0z5+z+EY3r9HCo/n2zIcU36bIomssOs/lPGM0aiv+WeYVWxgRnuTlbr5PVJSRPiz63
         hFuA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532nsVEQeeihmu4RTPK8tAvJQcN0MYB3DgfkGoYhRwn4VJrgxzmX
	B4SJDCOFgejs4nnoMdEJoj4=
X-Google-Smtp-Source: ABdhPJzI3MT+SzRd95IyYg0Npk9IVEoOdS0rdSeyY1upEx9ARU+ntKN+eJ81D9vwzIYJjU2nDBkt4w==
X-Received: by 2002:aca:470e:: with SMTP id u14mr12914083oia.172.1607789913832;
        Sat, 12 Dec 2020 08:18:33 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a4a:e5d8:: with SMTP id r24ls833094oov.11.gmail; Sat, 12 Dec
 2020 08:18:33 -0800 (PST)
X-Received: by 2002:a05:6820:41:: with SMTP id v1mr14257688oob.41.1607789913425;
        Sat, 12 Dec 2020 08:18:33 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1607789913; cv=none;
        d=google.com; s=arc-20160816;
        b=nClHT45nnP2B3T1trV16ocJBgS/qrRDthy2V41ISLjkjz+LluX9EHBmeZLP2ekOYqA
         XT0JRlQIQbu+wop13ps38vWriOnAkEylrEIu6oTkmV4EBXTzCA4pa89niFAHRzkQ4QdS
         vsLI5VBBsY5pVV8jxp2apuzIfTbIX6qoz6bKIfwvjLvVoSIE90ZqNYRKWGLJx8++hS9D
         BrV3o8+ix9NrF8bnQNscQSmDXKDSD97yWIkYBUoiK4ipTfjknir3woW/1yMA1BsecLVh
         I4Qoq/i8P5RXue+cMSlt3FOP7B7uFRYKeVmKtBT4NKk7tQvDI9qNH4P+B7zOK3s1xER7
         b9xQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=ohfb6PS6heT9rthxIVaAwHdwPtLaCOLcj0Or4Jj88tE=;
        b=xUFTM1ZqP6+DZnrU4MXOtVb9wkwnSxRIQdpG8DEZqT4IXtwvNokVQcb2HXGz4/MzU/
         +oL5I6nGwo+8HmsYn6cyWalrV+Pq80ASVSUvci0ylYQH9qRhJrjo3YZ4XeUW9KG/o9eZ
         xAeWz64i0MdklNISQIiqPAtqQw+RH8x01/bEI6hQDiaSFzROkOISGwv2T1YkWDoZ0OY9
         crSrimitBWEfmTst0K6G/f0SZcukaREgLUiASK5WW6hSEJKcUheiBd2nYBKxKUwhrP7H
         rl2WMC1mUQszvDZqa2RyjvMNxPYICoaA7hAXGaU5k6z30Vbiay62JX5pFF462efI4+K1
         cY8Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@roeck-us.net header.s=default header.b=zw+Zgzt8;
       spf=softfail (google.com: domain of transitioning linux@roeck-us.net does not designate 69.89.23.142 as permitted sender) smtp.mailfrom=linux@roeck-us.net
Received: from gproxy4-pub.mail.unifiedlayer.com (gproxy4-pub.mail.unifiedlayer.com. [69.89.23.142])
        by gmr-mx.google.com with ESMTPS id u2si877276otg.1.2020.12.12.08.18.33
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 12 Dec 2020 08:18:33 -0800 (PST)
Received-SPF: softfail (google.com: domain of transitioning linux@roeck-us.net does not designate 69.89.23.142 as permitted sender) client-ip=69.89.23.142;
Received: from cmgw12.unifiedlayer.com (unknown [10.9.0.12])
	by gproxy4.mail.unifiedlayer.com (Postfix) with ESMTP id 1942B175B77
	for <clang-built-linux@googlegroups.com>; Sat, 12 Dec 2020 09:18:33 -0700 (MST)
Received: from bh-25.webhostbox.net ([208.91.199.152])
	by cmsmtp with ESMTP
	id o7bMk1VSueMJHo7bMk6cLC; Sat, 12 Dec 2020 09:18:33 -0700
X-Authority-Reason: nr=8
X-Authority-Analysis: v=2.3 cv=BPidUmYG c=1 sm=1 tr=0
 a=QNED+QcLUkoL9qulTODnwA==:117 a=2cfIYNtKkjgZNaOwnGXpGw==:17
 a=dLZJa+xiwSxG16/P+YVxDGlgEgI=:19 a=kj9zAlcOel0A:10:nop_charset_1
 a=zTNgK-yGK50A:10:nop_rcvd_month_year
 a=evQFzbml-YQA:10:endurance_base64_authed_username_1 a=VwQbUJbxAAAA:8
 a=UGG5zPGqAAAA:8 a=pGLkceISAAAA:8 a=1XWaLZrsAAAA:8 a=ekWyMdHfF5DymNlJAZQA:9
 a=CjuIK1q_8ugA:10:nop_charset_2 a=AjGcO6oz07-iQ99wixmX:22
 a=17ibUXfGiVyGqR_YBevW:22
Received: from 108-223-40-66.lightspeed.sntcca.sbcglobal.net ([108.223.40.66]:50122 helo=localhost)
	by bh-25.webhostbox.net with esmtpsa  (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.93)
	(envelope-from <linux@roeck-us.net>)
	id 1ko7bL-002w99-Rs; Sat, 12 Dec 2020 16:18:32 +0000
Date: Sat, 12 Dec 2020 08:18:31 -0800
From: Guenter Roeck <linux@roeck-us.net>
To: Masahiro Yamada <masahiroy@kernel.org>
Cc: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>,
	"Jason A . Donenfeld" <Jason@zx2c4.com>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Shuah Khan <shuah@kernel.org>, clang-built-linux@googlegroups.com,
	linux-kernel@vger.kernel.org, linux-kselftest@vger.kernel.org,
	netdev@vger.kernel.org, wireguard@lists.zx2c4.com
Subject: Re: [PATCH v3] Compiler Attributes: remove CONFIG_ENABLE_MUST_CHECK
Message-ID: <20201212161831.GA28098@roeck-us.net>
References: <20201128193335.219395-1-masahiroy@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20201128193335.219395-1-masahiroy@kernel.org>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - bh-25.webhostbox.net
X-AntiAbuse: Original Domain - googlegroups.com
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - roeck-us.net
X-BWhitelist: no
X-Source-IP: 108.223.40.66
X-Source-L: No
X-Exim-ID: 1ko7bL-002w99-Rs
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-Source-Sender: 108-223-40-66.lightspeed.sntcca.sbcglobal.net (localhost) [108.223.40.66]:50122
X-Source-Auth: guenter@roeck-us.net
X-Email-Count: 30
X-Source-Cap: cm9lY2s7YWN0aXZzdG07YmgtMjUud2ViaG9zdGJveC5uZXQ=
X-Local-Domain: yes
X-Original-Sender: linux@roeck-us.net
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@roeck-us.net header.s=default header.b=zw+Zgzt8;       spf=softfail
 (google.com: domain of transitioning linux@roeck-us.net does not designate
 69.89.23.142 as permitted sender) smtp.mailfrom=linux@roeck-us.net
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

On Sun, Nov 29, 2020 at 04:33:35AM +0900, Masahiro Yamada wrote:
> Revert commit cebc04ba9aeb ("add CONFIG_ENABLE_MUST_CHECK").
> 
> A lot of warn_unused_result warnings existed in 2006, but until now
> they have been fixed thanks to people doing allmodconfig tests.
> 
> Our goal is to always enable __must_check where appropriate, so this
> CONFIG option is no longer needed.
> 
> I see a lot of defconfig (arch/*/configs/*_defconfig) files having:
> 
>     # CONFIG_ENABLE_MUST_CHECK is not set
> 
> I did not touch them for now since it would be a big churn. If arch
> maintainers want to clean them up, please go ahead.
> 
> While I was here, I also moved __must_check to compiler_attributes.h
> from compiler_types.h
> 
> Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
> Acked-by: Jason A. Donenfeld <Jason@zx2c4.com>
> Acked-by: Nathan Chancellor <natechancellor@gmail.com>
> Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>

This patch results in:

arch/sh/kernel/cpu/sh4a/smp-shx3.c: In function 'shx3_prepare_cpus':
arch/sh/kernel/cpu/sh4a/smp-shx3.c:76:3: error: ignoring return value of 'request_irq' declared with attribute 'warn_unused_result'

when building sh:defconfig. Checking for calls to request_irq()
suggests that there will be other similar errors in various builds.
Reverting the patch fixes the problem.

Guenter

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201212161831.GA28098%40roeck-us.net.
