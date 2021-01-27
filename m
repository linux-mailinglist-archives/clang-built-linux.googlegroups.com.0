Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBPN7Y6AAMGQEKUMSEGA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa39.google.com (mail-vk1-xa39.google.com [IPv6:2607:f8b0:4864:20::a39])
	by mail.lfdr.de (Postfix) with ESMTPS id 455113066A9
	for <lists+clang-built-linux@lfdr.de>; Wed, 27 Jan 2021 22:48:46 +0100 (CET)
Received: by mail-vk1-xa39.google.com with SMTP id g201sf795967vke.20
        for <lists+clang-built-linux@lfdr.de>; Wed, 27 Jan 2021 13:48:46 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1611784125; cv=pass;
        d=google.com; s=arc-20160816;
        b=PK+VKOx67ayB+wsASgUqCAjQISRg0kIzRxLEuTQho08prIO7C/EtFxYa4Sd2hzPw/H
         IMIN4ZLDsSafRHeHBRp4X92gMX+JX0dRalNzQTyIM0GhJ19WV9F8K4MFtiQBV9T1JGqQ
         N/l+lcV0+e2u1+o22liXZTI0hgGqAqCWzYIfIxLxwh5iWUwfogQYcGgw/QqSaRygFC4B
         M+76Ng/YkY6f1RYQJGG1FYp4j2HXGORhBR8JrYUEfjhZ0Z0ZI1A7P/Np/1jESAYCuuqg
         OsOJfHgVImRq3HffX2tz6fVF8JzXS73rthmf1KenaTabU5f0WxPFrltDH1k9HzGq6BUA
         YtVQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=HVQ+S46opSSEK3Vwb/atFqdZRxUhFSia5cUgyetflVQ=;
        b=r7RpNQFwheTJH0/ui/tLBZZYYn4MO0VYYPO2dUIuOGMDJlYbgJB3dpZ4ls0hIeGwot
         6MdQWBdqebDZHpVrZw5RxZN+GNtJc34zDwXG6/9D4Ws5xLS2mp2GTurJ0ZR2Sp1JPJp6
         0d+VW/Yfu2m0BNTvNnNZ65sD3+UNBwb5cF3OgS/DY9ktVfkvTIMHTBiRqfbr6KeR+eRJ
         g0InmUbAlvNGh9LhfxN2NbtS/6UibnvF26p3D/Qy0i6F15BHvReCCri7XyO24/Y8j6GS
         tRAPEG7w1a47wZOf7xDrwTW927Bh/+S0OXVBMbG6dJtlMI4Qi0165MC3rHbwkMQEcV98
         6XJQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=BgQF2Wo9;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=HVQ+S46opSSEK3Vwb/atFqdZRxUhFSia5cUgyetflVQ=;
        b=HK0RuSEO2HNK2iG8E1M9p12jnGMtvAPPFagqfeJg6f+62Nzya6zF+bD3mosve5hE4w
         YfBDVmx0Xe3WeaNzeDlObsAEurtkyZLUmOtM7ML3Ya0RyeCFfvJloyFRuKKV1tGciWd/
         lo7daYx6yrYeyQQf0H0yNnmmETaJoaSUbw2pbYKsS3/077TjP/uyytb0oEJ8UGoaKU/E
         oTTGx8xu1nBa1w7EEqPLQki9fN+dSWdK5stIVYW7iT2DmmohxHJEyJyx6FCiTB1RgqLf
         iStsq4uMgRzT468xAdPbElQhxF15IUb8vD0VZ1Sls2o3aq7kyEFNk+3lbtY+I1MTVIqd
         eOcA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=HVQ+S46opSSEK3Vwb/atFqdZRxUhFSia5cUgyetflVQ=;
        b=jnGQyyUNOeT7g6Lq2cbt4us9o9qu1MeDhxE/ngltXcIYa1hBCL4JAG7peJBD4eX0wF
         gydXDIWTs+zIjSCBCBZdEuQxvP/DZVBHvQgXukJzBu2EKBaTvhx24lXxnl8bvzZ2f1G1
         Qjs7jyQN+xmS/HLSam/wx8OGggZOrnfSKkfDT6Dg3clRJJs1G/oj/rFS/jV+SjGeY16j
         9oGvZak3Ae11v519W4wJTv9gpSFGW93ztOt5c9fR9pbCsTRJjTnQMt3f81JZapJObpnL
         AeOctcbBq7Lvc78JLg7OHX4f9e4iw/Jx+0r3OsvXGRMNj+Ia3pMKclVutiMcXH9hBniY
         UDng==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533Q/w+xDeJNzEVQrc5pAo5CcN+HTy3y4al5/ETuG7skOfAPFAoi
	RVC/9uVLY9Adc+MxCJQ+nLk=
X-Google-Smtp-Source: ABdhPJwEuz5FzGnQYdFP3SdOCeQCBc5687ii4DARWlitgUhtTZK/PjJ6FbyWsyDl4KjjTKB8aKsXxg==
X-Received: by 2002:a67:f152:: with SMTP id t18mr9305572vsm.52.1611784125172;
        Wed, 27 Jan 2021 13:48:45 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:f515:: with SMTP id u21ls477292vsn.2.gmail; Wed, 27 Jan
 2021 13:48:44 -0800 (PST)
X-Received: by 2002:a67:eac2:: with SMTP id s2mr10041822vso.22.1611784124788;
        Wed, 27 Jan 2021 13:48:44 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1611784124; cv=none;
        d=google.com; s=arc-20160816;
        b=RvU9MImOnJ9j/Wxel8+wcowZuLMhs0+kJz3z9yi1MXlkg2E8RpFIkDwnbqm4W1NujA
         vXqtdGrudFpNn6koVplVu+yQGFLkVTxUOb71PVNjVQkAWPqa4aswZVSH4ytwDMHNmWgs
         jzMsQOE/KbNmMVceQR4AiuNEx+TaK8+U+zBxRivqFOyL1xrcKAnk2HjA6HDoKDkOlB44
         2iyqEb1hr3d3RxQ5+Oj75kcy5g+CsuLqz3fmp25uSMvlew2SuAkDmMgCv3Qp6V3IkdgN
         xS9uGlSl8v5YePFGslwbP1tOlSr2otKRG8gOfO6/HKYIuYGt0DnT7+4CbqRvUA4f94pb
         xvdw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=gdeVJIriW+T3+Ni56aptjsLOov+eQEfCrcQXd2LT47s=;
        b=EmZ/7ZwkHwHSPUgmtR8WGunrdvG7PKYbud3+vti9AvG2IBpcDzmT/D0SEvEEJU1m3o
         WN9hU163Yxd64rnBAjJfhsNHoA2XiZdDSy6McaNSAMll/KatH9xNnXrxw7BJsFSiooCo
         DZIVDJEIPFFIecJDMu4gbS02xwuiHFeLezJ9IFT4dCGxN8k9KEMlQfmJwE6jX7Ymzxl4
         UkCFvR9QTp2p3d7ppz6KYQyRlmhw758Fe9X4ZAvgdNC53GBMlmhTix9PPT8h/wFmNiWj
         RYyUtKfk6KFsNldZD980GzzeTH37ISHEJEa+F3yhmTm5yUTUi2yRDkSoXvJPYIs568/p
         OZTQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=BgQF2Wo9;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id h123si198676vkg.0.2021.01.27.13.48.44
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 27 Jan 2021 13:48:44 -0800 (PST)
Received-SPF: pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 2F5B564DC4;
	Wed, 27 Jan 2021 21:48:43 +0000 (UTC)
Date: Wed, 27 Jan 2021 14:48:41 -0700
From: Nathan Chancellor <nathan@kernel.org>
To: ndesaulniers@google.com
Cc: android-llvm@google.com, clang-linux-fellowship@google.com,
	clang-built-linux@googlegroups.com
Subject: Re: Clang-Built Linux Meeting Notes - Jan 27, 2021
Message-ID: <20210127214841.GA1684067@localhost>
References: <000000000000304cc805b9e896d5@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <000000000000304cc805b9e896d5@google.com>
X-Original-Sender: nathan@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=BgQF2Wo9;       spf=pass
 (google.com: domain of nathan@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=nathan@kernel.org;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=kernel.org
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

On Wed, Jan 27, 2021 at 09:38:06PM +0000, ndesaulniers via Clang Built Linux wrote:
> Parsing bug Linus+Will
> https://reviews.llvm.org/D95408

https://lore.kernel.org/lkml/20210114175934.13070-1-will@kernel.org/
https://lore.kernel.org/linux-arm-kernel/20210120173612.20913-1-will@kernel.org/

> Fixed infinite loop observed on s390 build
> https://goto.google.com/llvm-cr/D94996

For us mere mortals :)

https://reviews.llvm.org/D94996

> Ubsan bug_on (need to chase these) allmodconfig failures

As far as I am aware, these are the three outstanding issues

https://github.com/ClangBuiltLinux/linux/issues/1213
https://lore.kernel.org/lkml/20210107223424.4135538-1-arnd@kernel.org/
https://lore.kernel.org/lkml/20201230154104.522605-1-arnd@kernel.org/

This one is fixed by destined for 5.12 it seems:

https://github.com/ClangBuiltLinux/linux/issues/1243

> Objtool arm64
> Requires a GCC plugin?
> https://lore.kernel.org/lkml/a3393eb3-03a5-e4dd-f40c-b801cc60778e@linux.microsoft.com/T/#m44b90dc4ff63f86e76ac4ee68710dfe61b69720e

https://lore.kernel.org/linux-arm-kernel/20210120173800.1660730-1-jthierry@redhat.com/

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210127214841.GA1684067%40localhost.
