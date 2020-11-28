Return-Path: <clang-built-linux+bncBCLI747UVAFRBLU2RH7AKGQEKLHLSRI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf3c.google.com (mail-qv1-xf3c.google.com [IPv6:2607:f8b0:4864:20::f3c])
	by mail.lfdr.de (Postfix) with ESMTPS id 8EA712C6F8B
	for <lists+clang-built-linux@lfdr.de>; Sat, 28 Nov 2020 14:14:23 +0100 (CET)
Received: by mail-qv1-xf3c.google.com with SMTP id 12sf2805348qvk.23
        for <lists+clang-built-linux@lfdr.de>; Sat, 28 Nov 2020 05:14:23 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1606569262; cv=pass;
        d=google.com; s=arc-20160816;
        b=x1yt8XBsvUoV2yefydKumRjpdnwm/UurG3ldCMdpWHYyGpu8TFAv88i/i4Z2aEHjDd
         Tbp6IbOuy8blaGshL1/2RTXQkX7Exnlbm6ZVG2ZJJT+lcCMbHnoqxP9RiunIKI4mdQWZ
         NHbZkZvE+DSbFNg1TTbOw2lY7DC/G5uvrvbXIeGILhksWIuuA+u/1oU2e6ls0/ABHxuY
         WbhISHhafyXh+GkUyfqD97b0VBGVwX6vIxSZu8HjBqgVjPSDVgQQ3LmWledDIOWMjMcq
         SY2b6kmmESC2zsB+eRTdeTl1Nn+kEHJ+E65tZRJ0s5xNFi5Lvci3qOJYyhtDxoVP/Xnv
         4laA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=gM/7wo2RiwpRRSnEqDg1nroHC/5cb51Giddt/tV3Xgs=;
        b=eGKjrW6ES/wPcLGiHy1gYBn8gqfklXiQnxhDk6OG8zCKFl7+QBWVG6cwUpptSurU5l
         fp8RPBL9OFNdZcaUy00vG0gv0sGn9jc1Qf57Q8qMKrdESPcwiehKl6wA3PFr/8sQkLTP
         z5Dc2QxFkci622ObDa4B7FZzsUNCiFYifVLTnD0SF+7lQjdkMopnbXmBnTbhyTHQnDfP
         DRUL1c7r/mcS9DDqsKUjwhzUiIz7zo2KfEwRB2mPIHhv8jaBQMDm3xPqAvg3lODbTmXm
         l8Rt+ZZLGdGTjPt/jERecNDxkehP0XiVTgxodZ+s+tpuaKw1iF2/Uo3Afu9ikuaHehkW
         mH7A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@zx2c4.com header.s=mail header.b=Yc0hZL6j;
       spf=pass (google.com: domain of jason@zx2c4.com designates 192.95.5.64 as permitted sender) smtp.mailfrom=Jason@zx2c4.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=zx2c4.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=gM/7wo2RiwpRRSnEqDg1nroHC/5cb51Giddt/tV3Xgs=;
        b=ABNCYP8qAn1u+sM058pPJhvXUSUcmUWFW6ZDzDeZ7vltQOx/GlY+xBcDwX/NSauDX4
         wZBLJhnRTnw0Yv01nUvT2YpHxCXt1ZAL0NvWRDYxnhOeo/+FY6wXqf/QkCOxSV87fs5H
         vZx7NO7vpDfYitVZ563IbDKWviod4RQF64HKTBorpnH6Tj2HT2Bhaurc6JYcEDEKD5Sl
         Q5kLlTKn0HcX4HbsKeE81eeA+LJYpLNdedT5yq/i8NDDOfU3dJMquX+BHCLdIWXwCR/8
         SfMA9s7fl44fAcU0dfyrAvCa8jJUh6d+3mDq+aG9EU5GCLBaqyMJNo7vEU0mr7zL7GDR
         ioUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=gM/7wo2RiwpRRSnEqDg1nroHC/5cb51Giddt/tV3Xgs=;
        b=WDLBOrUL1kZ+29htdYUm64gcyFKL/2yj8eUvXT9Z652AOiBtlGKPWBfCHpaISeZ1Ij
         RSGgNEZ0tA3Owwnzm7xGmFD2QTNueegpm7+wc8ybnWmWN54hNv4V3+SCDZ8WBFi/p/uH
         2hi+q/TecCwOZI7hGhSbJvZu/dGE6FYO0PhEEclczV5Ur2zvNRByP6o8VmIar29k2vN4
         vR7lCEhlckGU5F1u3uw+28T/mExs75Qaf2LioSzpi9yI/UCbbmYT8FK5Z+SEvh45pfYF
         UMdQUGjGFoCyJ0yXcHR94/G6fhJsNJE2ydPbUmNmE9Vgk9t+lNf1xy0H5mvWN590xTo0
         NWMw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532bteNz+IM/pHQ5lNwKk/rJNvqd+BQ0pmKgLiFl/fh2dyUa+IoD
	2cvs1C8nA64OngmAtLhIfxY=
X-Google-Smtp-Source: ABdhPJyFvtsPRa30hQQlIjaR104HOTjKkfckCV8goHYnSan/hNUWpOXgHpvXvuzhBfCnkGVWNxh6MQ==
X-Received: by 2002:ad4:470d:: with SMTP id k13mr13111281qvz.40.1606569262486;
        Sat, 28 Nov 2020 05:14:22 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:620a:572:: with SMTP id p18ls3688123qkp.0.gmail; Sat, 28
 Nov 2020 05:14:22 -0800 (PST)
X-Received: by 2002:a37:c4d:: with SMTP id 74mr14185994qkm.161.1606569262049;
        Sat, 28 Nov 2020 05:14:22 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1606569262; cv=none;
        d=google.com; s=arc-20160816;
        b=tvME/ocf/4AY9M/PsWnANBSvufrvbLnue9WFDE+IW4cP1xdoPu4g7foMEehVGgtP/t
         a+Cu7QqNkFJ9rRroZn79vlihMUlhAcZa43yWDE+T2Sccfh2CjFb/cxeNaCHYzE60tTrM
         XqSlOagnoDkUZga7EqRi0lmI9uxVCw4Kyuxh2xrxQw4ZG3nloXOLR39WPes2jm3JPWPh
         lVgiY5jJNU6CXZMTPRVxaZ37SxnAIwMEi46o8xaIIpznZNdAn+JxAh4Bxev9NnYP89Hg
         /RNb1hfDLkMjDDizDlx3qiWKSfwuYkkXjvR+/6piMJOR7z3i+nXmdDfl3NgbUDfubMmH
         0dlA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=fwT0TTe0/0Dx/+i6TeAvW6eB3yyOufTPUySrSEq+UDI=;
        b=SK3nSsyymIATqq+Ntk8O+qxOL/jy8CE9+432+hi6u1lgwz2gTTXhYCP3YYQ1N+o40k
         0b6ZeYI1+y6zy+4ZpgXt/xrSp5+RlqXd7BKKe87sdGfbGzPBb/mYedL4jTRtzZ/faaTi
         KCofY/g3OI2ls8OmmZYVDRP2+wEnqE+QK0FMZHc4fDhvcnnU4DbkIRzzMAPCSXjRPubU
         kEG3675NHsE+fN6Yw72PIvp3of4MV0E1DnFraGr/bNx7bgV/M484k2aoa21wYrCAhT/h
         gqp6tOSKRDdShWzHn2/kErZquOxtJlPAjVYLqnvMdlE6pFH0KRPJXLSn19yEQ58hU3+X
         ktvA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@zx2c4.com header.s=mail header.b=Yc0hZL6j;
       spf=pass (google.com: domain of jason@zx2c4.com designates 192.95.5.64 as permitted sender) smtp.mailfrom=Jason@zx2c4.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=zx2c4.com
Received: from mail.zx2c4.com (mail.zx2c4.com. [192.95.5.64])
        by gmr-mx.google.com with ESMTPS id k54si536892qtk.4.2020.11.28.05.14.21
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 28 Nov 2020 05:14:21 -0800 (PST)
Received-SPF: pass (google.com: domain of jason@zx2c4.com designates 192.95.5.64 as permitted sender) client-ip=192.95.5.64;
Received: by mail.zx2c4.com (ZX2C4 Mail Server) with ESMTP id 4b006dd6
	for <clang-built-linux@googlegroups.com>;
	Sat, 28 Nov 2020 13:09:04 +0000 (UTC)
Received: by mail.zx2c4.com (ZX2C4 Mail Server) with ESMTPSA id 59201079 (TLSv1.3:TLS_AES_256_GCM_SHA384:256:NO)
	for <clang-built-linux@googlegroups.com>;
	Sat, 28 Nov 2020 13:09:04 +0000 (UTC)
Received: by mail-yb1-f172.google.com with SMTP id k65so6993330ybk.5
        for <clang-built-linux@googlegroups.com>; Sat, 28 Nov 2020 05:14:20 -0800 (PST)
X-Received: by 2002:a5b:2c6:: with SMTP id h6mr14695421ybp.306.1606569259874;
 Sat, 28 Nov 2020 05:14:19 -0800 (PST)
MIME-Version: 1.0
References: <20201128084639.149153-1-masahiroy@kernel.org>
In-Reply-To: <20201128084639.149153-1-masahiroy@kernel.org>
From: "Jason A. Donenfeld" <Jason@zx2c4.com>
Date: Sat, 28 Nov 2020 14:14:09 +0100
X-Gmail-Original-Message-ID: <CAHmME9o7uLRRD91nAie48nM=ogNuV9-cwwQcW1dSVSXhjCfWsw@mail.gmail.com>
Message-ID: <CAHmME9o7uLRRD91nAie48nM=ogNuV9-cwwQcW1dSVSXhjCfWsw@mail.gmail.com>
Subject: Re: [PATCH v2] Compiler Attributes: remove CONFIG_ENABLE_MUST_CHECK
To: Masahiro Yamada <masahiroy@kernel.org>
Cc: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>, 
	Nathan Chancellor <natechancellor@gmail.com>, Nick Desaulniers <ndesaulniers@google.com>, 
	Shuah Khan <shuah@kernel.org>, clang-built-linux <clang-built-linux@googlegroups.com>, 
	LKML <linux-kernel@vger.kernel.org>, linux-kselftest@vger.kernel.org, 
	Netdev <netdev@vger.kernel.org>, WireGuard mailing list <wireguard@lists.zx2c4.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: jason@zx2c4.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@zx2c4.com header.s=mail header.b=Yc0hZL6j;       spf=pass
 (google.com: domain of jason@zx2c4.com designates 192.95.5.64 as permitted
 sender) smtp.mailfrom=Jason@zx2c4.com;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=zx2c4.com
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

On Sat, Nov 28, 2020 at 9:48 AM Masahiro Yamada <masahiroy@kernel.org> wrote:
>
> Revert commit cebc04ba9aeb ("add CONFIG_ENABLE_MUST_CHECK").
>
> A lot of warn_unused_result wearings existed in 2006, but until now
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

For the wireguard test harness change:

Acked-by: Jason A. Donenfeld <Jason@zx2c4.com>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAHmME9o7uLRRD91nAie48nM%3DogNuV9-cwwQcW1dSVSXhjCfWsw%40mail.gmail.com.
