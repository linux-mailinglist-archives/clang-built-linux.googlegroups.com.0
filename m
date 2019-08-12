Return-Path: <clang-built-linux+bncBC5KPPH4YUKRBH6VYXVAKGQENWPXM3A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x43e.google.com (mail-wr1-x43e.google.com [IPv6:2a00:1450:4864:20::43e])
	by mail.lfdr.de (Postfix) with ESMTPS id C3B4589FC2
	for <lists+clang-built-linux@lfdr.de>; Mon, 12 Aug 2019 15:33:19 +0200 (CEST)
Received: by mail-wr1-x43e.google.com with SMTP id x2sf50278407wru.22
        for <lists+clang-built-linux@lfdr.de>; Mon, 12 Aug 2019 06:33:19 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1565616799; cv=pass;
        d=google.com; s=arc-20160816;
        b=R9xFv+mXrD/VG9Uu7C1Bjb9G+84bqmNAzf8Q2Bj0PReJSwDsrUiND4zztCgkWfWYKM
         d14ZpAzvqI8F1i7jzfb/JJt7PuPs9zqsk2xksW7Sff8bcaoGBziRl3g2oSqClpGCLi74
         zteIkRNemLT/lbwYjRb8uT9mj+UnRgCrD4hSprIpJolgLRzLDqEY+zW9tbrOS9qtXmRj
         ilOZNwBeHB1+rQb2+fxHFkOQIiWaCUHeRUC6kppK7pwj6S3pOkOFbfaPxj/NNJB2kM/f
         VD++bfczOgzLlTaC/Ji0dT/Kcu9WvCawSiqLyAPoYXnoUtMYMMjKwCPRkASSCC5GGthj
         TvpQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=h3D6m31hRFIoKh+DxOECxd2rhlsTYxtO7Q1gPdycUsk=;
        b=Y4aLpNP8qAu9kpAhga+7O/7xzaKjaEt/J6LYsC3uQpugWfYzBYKzRhWxUUyxnCaMlg
         4BgiD7Rb4+vFhc8G9t7RF/hxjaOmmhJM2Lv0R9zZrmvqFdirzwJjSIbWkKsPkbq/udQG
         l+XAGezouNDyQdJBzeJLEq+3LQuzy7eTLlPLRUmYea72oNeoL1fEvawTmLEH5o3kuRSt
         9QawUnKw1BLL2YVQbi/RfXb7gxA6i1/tGPTLSBnH9U6hUuMb9yaurfPaBJBTKgcuRG0M
         4ooV6A7IFWg/UzNsUPIJOXV8Nd4waNdK18qqtkKorVVFd6Sj0aaAyzhKV1L2Hx3f1Lja
         IpBw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of guillaume.tucker@collabora.com designates 2a00:1098:0:82:1000:25:2eeb:e3e3 as permitted sender) smtp.mailfrom=guillaume.tucker@collabora.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=h3D6m31hRFIoKh+DxOECxd2rhlsTYxtO7Q1gPdycUsk=;
        b=rlFFup93nY6JC3RYQxrjSKnsvYniWJ9tED1p00Wp1yZT8SL0JZZWBH/01ebJrPYonb
         SfIjnZVdP77qNk+Fmd7i0xelQhF4q6n09XmrDiOF3qH7NL1CIxAJpeWSm52V+ITgyzuR
         Tj+q97CRacR2KttWKJ0uK6IY5HDSkvdlzR7Nt18PV4wNp/+VoUvCpIxwgK/APJsfiviG
         o9ScavIBJi+pNT9qoicrDBr2VfXZVkm1HNk9Lwx8Sy8VrughhrziPrXohtnwz7Vy7xoE
         vJvRZpuf0RQX4y2IE266KTMBmSkOmxc58cXCPtkYNqdaNNVmjUWDNzrb1C99KcpOxYjx
         1AWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=h3D6m31hRFIoKh+DxOECxd2rhlsTYxtO7Q1gPdycUsk=;
        b=ONdzlidB1ahd0jb0Mm1cwobylT6e8ueaO2KfqjeC8lstxUEmpusSkHWjEktEN1V8Ol
         RfvPDyR7rOVKW0XFPcHrYga1YvyMy8z0FaN8heb/DsXV8hy8zt+XfOuOanHv297ZYXbD
         p4tr6CVbBRze2xVoeiZ/SNvtTg9LyUtN9GVMO3IJfBdY69yUYr8ndkYW/QzffOGaX34R
         oFHIT+xjcc8u9Rt8gdm14NMR6QQZMpsUbTqIebvXXK0hsTxFcN/5aMiyLbq1Yyp7Pm8K
         1h4LA1aK1JmjIL+x3BFJJhHHu7OGXUiGwmbbZEDD9d9SFRHWSBjq3mRFV6pra+YBxu2N
         0KSQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVm/XxU6KdWHwdyp/nQ2QHwFTpceLcxHXcwHLIYRc9TprRfnKUO
	KNk9i6Ii7MfqFbzCLlNFFio=
X-Google-Smtp-Source: APXvYqwEA4KNTWnlnPDJw9J5mUIC6O7lxPOHAlwERTcPyYlaKPoat4kz0sIFhLlXiWR19njW/z84mA==
X-Received: by 2002:a05:600c:225a:: with SMTP id a26mr29281673wmm.81.1565616799423;
        Mon, 12 Aug 2019 06:33:19 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1c:5411:: with SMTP id i17ls4675556wmb.2.canary-gmail; Mon,
 12 Aug 2019 06:33:18 -0700 (PDT)
X-Received: by 2002:a1c:7c06:: with SMTP id x6mr5204531wmc.133.1565616798837;
        Mon, 12 Aug 2019 06:33:18 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1565616798; cv=none;
        d=google.com; s=arc-20160816;
        b=dUFvuZxjAsKrPj4lcrSCkaPaIPbm7pi6/W5U8u2gUTJHLijytghmHZnKCI5BNI5YHi
         BLYAQ9xT5l84td4VhHtb+zs7NWVvdKIBvJ0YsEw5GwIIJ3p06/EZ8A0T223WUT7I1+i3
         AYy96s8HTLBwVZd8F1cvNBoA1ELiJwQQRDoXUPc9LqkZrJoxb7N01MqnTC+gik7/LPAV
         oF1Hr9H5UklOTsP4yRfE7TXV+Fx8j5gGZ8tgXZOVDTdzZqZsgtxIp8NgTJd570tvV7aj
         FzboaJPqslZnNdL1zJTvMiz+7V8EvXo72NNErxpGmNTNz/XpEz9d848qiIL5gI1EqzyH
         p6tQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject;
        bh=cK7uoL/jkhHUdo2N2s/IZmD40lX+YPwCJLQddRCfwqI=;
        b=oZrygK/I3ENiBoJ3tPzu6k90fDbBX3zn2Bn9xJ18Id03hFjdXURWwJemh/pYbU2vL+
         s1TdSzwDPtc1oz8jAOS1ThYWPw50AFsaqRTaLIQX2dNiEqL9WahBgF/HFcX/iQcA1S2j
         Uo+sIT9fEuLvv2LhIL+a5qdVW0zzqdUTNCYd1tmaMRw+hjSqdBy/t3BNUsiQ31Bxu3Lf
         2Oix0cCITpzlfvIcffEcV/0myeHsyK7nSpxuW/d8HXAw/wlAO67RjMcPyk6slnUoJEsO
         EN5DJLC85a3rPRF/GeLN2l6NsEl0l0ubFikpveRNL1Rr2bO/ZGp6HCXAU/vRB27XQ18N
         TKiQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of guillaume.tucker@collabora.com designates 2a00:1098:0:82:1000:25:2eeb:e3e3 as permitted sender) smtp.mailfrom=guillaume.tucker@collabora.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=collabora.com
Received: from bhuna.collabora.co.uk (bhuna.collabora.co.uk. [2a00:1098:0:82:1000:25:2eeb:e3e3])
        by gmr-mx.google.com with ESMTPS id g7si2223wmk.0.2019.08.12.06.33.18
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Mon, 12 Aug 2019 06:33:18 -0700 (PDT)
Received-SPF: pass (google.com: domain of guillaume.tucker@collabora.com designates 2a00:1098:0:82:1000:25:2eeb:e3e3 as permitted sender) client-ip=2a00:1098:0:82:1000:25:2eeb:e3e3;
Received: from [127.0.0.1] (localhost [127.0.0.1])
	(Authenticated sender: gtucker)
	with ESMTPSA id A91A628A2F1
Subject: Re: [PATCH RFC 1/1] kbuild: enable overriding the compiler using the
 environment
To: Nathan Chancellor <natechancellor@gmail.com>,
 Nick Desaulniers <ndesaulniers@google.com>
Cc: Masahiro Yamada <yamada.masahiro@socionext.com>,
 Michal Marek <michal.lkml@markovi.net>, Mark Brown <broonie@kernel.org>,
 Guenter Roeck <linux@roeck-us.net>,
 clang-built-linux <clang-built-linux@googlegroups.com>,
 Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
 kernel@collabora.com
References: <cover.1565297255.git.guillaume.tucker@collabora.com>
 <3885ccdcbdbe83eb367e8344584df944adc76e34.1565297255.git.guillaume.tucker@collabora.com>
 <CAKwvOdmOdJspcO8jqUhqR63-MOWkV3ZrVcCO6u=HG6peov8Htw@mail.gmail.com>
 <20190809051552.GA44466@archlinux-threadripper>
From: Guillaume Tucker <guillaume.tucker@collabora.com>
Message-ID: <b2ac60fb-94f7-1273-e1a3-825172c3cc00@collabora.com>
Date: Mon, 12 Aug 2019 15:33:08 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190809051552.GA44466@archlinux-threadripper>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
X-Original-Sender: guillaume.tucker@collabora.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of guillaume.tucker@collabora.com designates
 2a00:1098:0:82:1000:25:2eeb:e3e3 as permitted sender) smtp.mailfrom=guillaume.tucker@collabora.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=collabora.com
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

On 09/08/2019 07:15, Nathan Chancellor wrote:
> On Thu, Aug 08, 2019 at 03:42:32PM -0700, 'Nick Desaulniers' via Clang Built Linux wrote:
>> On Thu, Aug 8, 2019 at 2:07 PM Guillaume Tucker
>> <guillaume.tucker@collabora.com> wrote:
>>>
>>> Only use gcc/g++ for HOSTCC, HOSTCXX and CC by default if they are not
>>> already defined in the environment.  This fixes cases such as building
>>> host tools with clang without having gcc installed.
>>>
>>> The issue was initially hit when running merge_config.sh with clang
>>> only as it failed to build "HOSTCC scripts/basic/fixdep".
>>
>> Thanks for the patch.  I don't quite follow the exact error.
>>
>> When building with Clang, I usually do:
>>
>> $ make CC=clang HOSTCC=clang ...
>>
>> are you trying to fix the case where you do:
>>
>> $ make CC=clang ...
>> <no HOSTCC set>
>> when GCC is not installed?  Because if so, I think it would be easier
>> to just specify HOSTCC=clang, but maybe I'm misunderstanding the
>> issue?
> 
> As I understand it,
> 
> $ make CC=clang HOSTCC=clang
> 
> works fine. What doesn't currently work is:
> 
> $ export CC=clang
> $ export HOSTCC=clang
> $ make
> 
> This is problematic because there is no way for CC, HOSTCC, and HOSTCXX
> to be passed to make within scripts/kconfig/merge_config.sh.
> 
> A quick test before and after the patch:
> 
> $ ( export HOSTCC=clang; make -j$(nproc) O=out defconfig V=1 )
> ...
>   gcc -Wp,-MD,scripts/kconfig/.conf.o.d -Wall -Wmissing-prototypes...
>   gcc -Wp,-MD,scripts/kconfig/.confdata.o.d -Wall -Wmissing-prototypes...
> ...
> $ ( export HOSTCC=clang; make -j$(nproc) O=out defconfig V=1 )
> ...
>   clang -Wp,-MD,scripts/kconfig/.conf.o.d -Wall -Wmissing-prototypes -Wstrict-prototypes...
>   clang -Wp,-MD,scripts/kconfig/.confdata.o.d -Wall -Wmissing-prototypes -Wstrict-prototypes...
> ...
> 
> Reviewed-by: Nathan Chancellor <natechancellor@gmail.com>
> Tested-by: Nathan Chancellor <natechancellor@gmail.com>

Thanks for the review.

> I wonder if all variable should be converted to that scheme or just the
> ones that are needed in this instance. I also wonder if this will cause

This is what Mark also asked.  If we want to use ?= then I can
send another patch to cover all the other variables.  It also
makes sense to be able to choose an alternative linker, in
particular LLVM's ld.lld was brought up recently in some KernelCI
discussions.

> any issues with people who define these variables in their environment
> already; if so, maybe merge_config.sh should be updated to support
> passing CC, HOSTCC, and HOSTCXX to make.

I think the reason for the RFC essentially boils down to this.
On the other hand, if someone exports HOSTCC or CC to use some
specific compiler, they would expect it to be used.  It would
seem like a bit strange to export one value for a variable and
then pass another one to make (i.e. "export CC=gcc; make
CC=clang").  Also, passing all the variables to make in
merge_config.sh as well as any other place where this may happen
is likely to be rather error-prone and hard to maintain, say if
new variables get introduced in the Makefile or if some new
scripts start calling make.

So I'll prepare a new patch using the ?= approach.  Meanwhile
we'll see if someone can find a good reason why this can actually
be problematic.

Best wishes,
Guillaume

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/b2ac60fb-94f7-1273-e1a3-825172c3cc00%40collabora.com.
