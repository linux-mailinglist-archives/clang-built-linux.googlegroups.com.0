Return-Path: <clang-built-linux+bncBAABBD53X34AKGQEZ2HTOIA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb40.google.com (mail-yb1-xb40.google.com [IPv6:2607:f8b0:4864:20::b40])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BF282218BF
	for <lists+clang-built-linux@lfdr.de>; Thu, 16 Jul 2020 02:21:36 +0200 (CEST)
Received: by mail-yb1-xb40.google.com with SMTP id p22sf5043249ybg.21
        for <lists+clang-built-linux@lfdr.de>; Wed, 15 Jul 2020 17:21:36 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1594858895; cv=pass;
        d=google.com; s=arc-20160816;
        b=RmrxCK8IV6ScsSwagJ+/LWykNd6zR3ggxzZPQbQYAyvcYsigjM0mer+ZkWmM+enjXY
         Gnsu+NQQODMSIT9v/cZNfKe+ryXBxmyqlTfhqiiJCHhS1FZbkM0QQaAx/zydCQ5i/pig
         b5l2PZ7RLt+g9zI4xWLu+brfgSfDvMHSGFpWDlAvyHGX0dDW3hw80cpW941pgSLiUlxc
         9DhKQrsnm9P5cA1doexAVFoK1j+62pFIr194/N8SL5jYFxOJaEBxr1xr93Dl3tIQnpu6
         82KS+pVO4j5NLDRhU/D6ukKaoxhdzo6Qw3rHLzCoAhZ5axHmVOg9CGJFgoOFHGjyOs1r
         mGZw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:message-id:date:to:cc
         :from:subject:references:in-reply-to:mime-version:sender
         :dkim-signature;
        bh=d4tt1pKhwvE4dYK0s+BleJdkq7taUq3Sa703bRM01lI=;
        b=Kl2Msu5qxIkvtvt+ebp1d8nmghseizusetHvdIagIxAWEXt3ilvaNMP8lQ/WV7pdtQ
         M+PrdJFLgHvV0/DGz5e52UpFYB6HoGBIvuqktakXCW6ETMmGNfNh8fJ7BVX/ivpRUcYp
         Elro92G2oKOOEWVXGi3aDraJ0GmnTOvIadXypPSYiI1NGongsWHmTK0BnBpZ4tnr37lZ
         M5iDPZmmG1JwL93/jGMG6AQDEEAwedmo6M90Li8/ZObr7MoSpEtYhrXZT52pIBJExnmt
         MbU3KRMH8pdbot6QQezdQAMhQN+X2SELKGO1+MqCeUaPA2U/MxoSaNgzY/ssJkz+c7Fl
         /0ug==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=NMnBE9eX;
       spf=pass (google.com: domain of sboyd@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sboyd@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:in-reply-to:references:subject:from:cc:to:date
         :message-id:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=d4tt1pKhwvE4dYK0s+BleJdkq7taUq3Sa703bRM01lI=;
        b=J61Pl3IrtzTZdv9nrJPDt177iK+q2GHnE5KavEghkYJ4vwFZcWQUTWWvE6bVM2rKC6
         N1YbJpZFbl+5Os4E91tzEGPpO5UQ1323LMgL+mm4B9Z8WBqS/hwQzPDug8UJi67gi9kG
         OU3Rq7QmkLtDjLlP+SXpIyeHuKlZTo3IoDj1IxkpHdqny9IDUUnwhh547mEZy4Oe9/2S
         yTnCd6ri/c0nrUkRyiasD3a0HJzOt1C/NGi0dPzw8Xbx0UE/M2RXVi90kPPGNwfpbTGJ
         m1+YYZmCvvX1jnWibCAxwr+9ri4OnPUWAInTsZ3LDeaewNZcrRUtMdHI2ZwzzRSP6dCo
         1QMA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:in-reply-to:references
         :subject:from:cc:to:date:message-id:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=d4tt1pKhwvE4dYK0s+BleJdkq7taUq3Sa703bRM01lI=;
        b=ijT+dn47qspt9FHEPQHDBp48qC7+V+kIkqSSxiJuMWeJXR/n3Ii5apxmBNuDJ/CzaW
         gMm5w9qw/zjySGRo3BJjGhjSqaoZGPvE1FY0hlsy53hN7//OCRnS0aQZmpkRBZNU/+iL
         FCeMAU8JxQFDk02Lxxl7HWXTewNtYxABo7oACDW+gSZz4y7yOqhDOY7wmP8PqZ4ISolR
         XorAjghb30XP/9I6Bxxp1qoHI8oG+NbDyceJANOrKEzgWNj4uehEK7QWjOv3X6cuLXsK
         /EXzzcy4OeqhMn3gyLWfu1wMGglgKUIFFgZ52hdgIN1LUKS/KfdN4FaL6f3IJ79Fw7qR
         /AKQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530rl8skumGpogQUttyZd68XVBHWOi2YBgwZ+GxfEkobgcK7isNK
	HASv3dsO8a3PDwABNmyYKN8=
X-Google-Smtp-Source: ABdhPJwTPxwyWtDcevOW9+CZ83Ym2hW2b9jqqVfxw6X7P55MhUGwAoN+jWkX5ueqzmvnxrvXf0I77g==
X-Received: by 2002:a25:c657:: with SMTP id k84mr2730940ybf.293.1594858895163;
        Wed, 15 Jul 2020 17:21:35 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:aa48:: with SMTP id s66ls1604638ybi.3.gmail; Wed, 15 Jul
 2020 17:21:34 -0700 (PDT)
X-Received: by 2002:a25:d297:: with SMTP id j145mr2775310ybg.18.1594858894870;
        Wed, 15 Jul 2020 17:21:34 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1594858894; cv=none;
        d=google.com; s=arc-20160816;
        b=m3vMYIbGDgw90mcBUUfRAQvh0FRFa5wY4lyV7zz4ZW19Mp3/vTjrDEh/xATF6Dy+zC
         oQkCxu2PCsFtT8Ukre5MUJimtSkPYuX5moSPAWvR3jRJ1hZElMAbz8IGkBaUxBbqlj90
         Vin4QpYGoD68jGX++EwqjC/aUJ21CbYOzbV0ANbQAMmWdmsGKfuod6yA6k0mow2HOlD3
         VAmvFQp2kxTwyRyiVPvxXNQ081PJOD7uIqgNXnt3VlR04eXHzMLYaQtrD8+GkdZMcOt5
         ZhNQfvsjqL8pI8/dPeY0q0SvH1dGz5AM45ia2ltmklL3PxDWMX19qpxT0AFSAQOxQucd
         hpUQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:message-id:date:to:cc:from:subject:references
         :in-reply-to:content-transfer-encoding:mime-version:dkim-signature;
        bh=Vt4ogd1MXqn4WliMWsvNhwy7fFbOEakTp/toAzORy7A=;
        b=zIl8NxXrdaW/aKXATMU5Dr8rRyJIWX15R/XZelI5yys9kNkvYeT6Vs/elY2BCiNEx3
         GQcbQir2GZ5RvPhGMilgipOQBb7sjCK7pX2iWIfKcDH3Tj9ffD/xImimHzsD5rpF9/5V
         fFJ6jGxGeDUy3ODyGaWA0xWBtqFfmVTFyCj9ZPyyPy0mSiqoTkiina0ZUWfK3KFOX2L5
         Io5lFflUbsclqfakicWD4MnNy3cdvYfiMEDiUwOQ5KmoPYq+hWuYM33lOP89NYkoZh1T
         Q/sZgIc9TBAz/BzE1MJyRrT82sC1oXZz4bBFKlLv/kcDgFnjy1ATf2PiEi/W0CWFdXS5
         MHxA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=NMnBE9eX;
       spf=pass (google.com: domain of sboyd@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sboyd@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id h3si310600ybp.2.2020.07.15.17.21.34
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 15 Jul 2020 17:21:34 -0700 (PDT)
Received-SPF: pass (google.com: domain of sboyd@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from kernel.org (unknown [104.132.0.74])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id BCFC2206F5;
	Thu, 16 Jul 2020 00:21:33 +0000 (UTC)
Content-Type: text/plain; charset="UTF-8"
MIME-Version: 1.0
In-Reply-To: <f304b312-8034-5838-4ffc-e0fcbe8136b1@codeaurora.org>
References: <202007121820.EgK6NAy4%lkp@intel.com> <f304b312-8034-5838-4ffc-e0fcbe8136b1@codeaurora.org>
Subject: Re: [clk:clk-qcom 13/14] drivers/clk/qcom/gcc-ipq8074.c:4610:30: warning: initializer overrides prior initialization of this subobject
From: Stephen Boyd <sboyd@kernel.org>
Cc: kbuild-all@lists.01.org, Selvam Sathappan Periakaruppan <speriaka@codeaurora.org>, clang-built-linux@googlegroups.com, linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
To: Sivaprakash Murugesan <sivaprak@codeaurora.org>, kernel test robot <lkp@intel.com>
Date: Wed, 15 Jul 2020 17:21:32 -0700
Message-ID: <159485889297.1987609.17837106237884387966@swboyd.mtv.corp.google.com>
User-Agent: alot/0.9
X-Original-Sender: sboyd@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=NMnBE9eX;       spf=pass
 (google.com: domain of sboyd@kernel.org designates 198.145.29.99 as permitted
 sender) smtp.mailfrom=sboyd@kernel.org;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=kernel.org
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

Quoting Sivaprakash Murugesan (2020-07-12 22:47:22)
> Hi Stephen,
> 
> I see that you already applied this patch on clk-next,
> 
> shall I provide the fix as incremental patch?

Yes.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/159485889297.1987609.17837106237884387966%40swboyd.mtv.corp.google.com.
