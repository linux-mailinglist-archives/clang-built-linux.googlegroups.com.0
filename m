Return-Path: <clang-built-linux+bncBD55JLOZ34EBBH4E4XZQKGQEQWV3DMQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x638.google.com (mail-pl1-x638.google.com [IPv6:2607:f8b0:4864:20::638])
	by mail.lfdr.de (Postfix) with ESMTPS id C349419019A
	for <lists+clang-built-linux@lfdr.de>; Tue, 24 Mar 2020 00:11:28 +0100 (CET)
Received: by mail-pl1-x638.google.com with SMTP id a8sf9412192plm.2
        for <lists+clang-built-linux@lfdr.de>; Mon, 23 Mar 2020 16:11:28 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1585005087; cv=pass;
        d=google.com; s=arc-20160816;
        b=T2ApFBCpN3QIivDcs5Hgtt56/fYAdPhkjxJ9KLCMMa668PvgeRnS50cLe3QcmYGN1B
         99TJeKEUmg4MyuDjg86x5rDEmRiabeLI+nZrrZ9+zS1z6+LT8ZvEgZCiTT94VqXvOhF5
         Do7vlAO5/egVlSSS4ovyXjh+KXu1DyiDhUlS6g163esfa/Okb6DD/iohhG26dxicTqQs
         4TMdVbNuS2BjN9j5ezQO2tWAYdFfg8zoi9Fe6AYsJ6zHVrX1+we5FrKcSY3PkczOY9P9
         SbNiSRQBEOVejhAepr3AT1gEw1v1tdRH2lKdUKUS+i0J6rLeZj/sbFdQ+R2YmuubifYJ
         h8VA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=qWzRgxBiRrOuOtXCRmDb19Bs/QGcKGUXJ8uEX9y9VyA=;
        b=MTLFAUyXRz4zaoFNUQE25+N3H61CJyQ+Uv2cE2NQ7iEL0oJwCarJwHAc+vXHXIVFcI
         8TOi/ibf/dYN+RmrcJrLEhwuHAA7fpdCqSGkveL4uBJbcoAIDa3FBGoY2iFQL7oTHOmC
         cQIhTTOXBP313ly3TlgRh8UqGqRA+cKYYTHr9E1xZ1Ax78NzFi5CiTcCX9Lw8RrzZqJ6
         d81Cab/twwRJIw5axQN2KFf8A0GyaiTDimAkoU6VuzpR70Jr6lQSJg0KGA3WZTIT1Iph
         aLmZk4rIaVohXzml3yO2/jelqo9ycnvegYyRDB4oSs5shLl/DEW5lArPbVXpS9s1uVXh
         bLdg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=ICeANoF0;
       spf=pass (google.com: domain of shuah@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=shuah@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=qWzRgxBiRrOuOtXCRmDb19Bs/QGcKGUXJ8uEX9y9VyA=;
        b=b/5E+eLUKgZljvxya5RBKNLQkVV/qeMOl2n9x56a3uTadieSDV5dgU52GEN1J7TpAH
         6tGTHEmPybniE3dTs+wsawD/TVgi8BVcf3iR5WEUsYeHh+iOWQpg+eY9Cn+HB//e8TCU
         laCbewaddspyf3F8DY3DcceiHPrcuDr+bKndFuR/OsBcxuvhw2gvg1lXImKjfXg+8yQi
         ezHMiUmM+AC79qLXFFCyWebFOK+kaGb3s/StLFQ+MmRR6v7IMCE46mClFZDVLrP640lI
         XjL0/X2bQOMaR9l8VmDe3vFxrPHgXnVZOFFV/JFampvhxutm1MiJ29oPoe9W3qJ+Hzrm
         7Pnw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=qWzRgxBiRrOuOtXCRmDb19Bs/QGcKGUXJ8uEX9y9VyA=;
        b=gzivrdUneCM9sZjl+5Yymi+9jJmRIL1N3iABB3eXaceP56/I0My1DKOaKTAmoyXwE5
         8+qxwTeDV7HpXhwpJ9re1VkE8orL3sOQloOss9ftqLkpgDznYRJ7P5MmYiwSRIpgdSbB
         hMmhMVs0FFFi3xQJMBsUS8GG+w5JY36zEck8e9vHelxWFspyiaGNSGuy2974uNZ25Tl5
         qTJZYuhKc1JPFLXMom5n520qjwhie2bU7BTatuBaZVaE2Xu6Sk6oDL5bCNR0ItAgVfrc
         EEJ4Rg0IzUa0AQVjrldymxGfQcdGXaQjUy7L48Xb+9W78IEOeHyX+mz5IBmwwGn2s1EF
         dcLw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ2jNGSJGA0fpHEgaIv5rkuVEIKV+ADDMhnmh9IW5duzpzglBvyd
	rDsN7ufINpfUl/LldwPgUn4=
X-Google-Smtp-Source: ADFU+vvFI/rQjY3axMv816YqoECVdMqhbjYNw0ZE1yPFw872d8fgsS+kTTR2PF5H2QO9s2oqo6FbHw==
X-Received: by 2002:a17:90a:1788:: with SMTP id q8mr1991442pja.120.1585005087352;
        Mon, 23 Mar 2020 16:11:27 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:fd82:: with SMTP id cx2ls846592pjb.1.canary-gmail;
 Mon, 23 Mar 2020 16:11:27 -0700 (PDT)
X-Received: by 2002:a17:902:8d8d:: with SMTP id v13mr24482917plo.260.1585005086895;
        Mon, 23 Mar 2020 16:11:26 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585005086; cv=none;
        d=google.com; s=arc-20160816;
        b=wrPPmwn1grz0vvozofRBI5gaXVSgxrYU5nLqI/VpVmk9TLU5Wwj+N/LbRg0cKQpDl3
         WPrLYm205/5rkm7n+ayY4NmPZSoH5YlN0a+a7UofhqXw5DeWPD1zZpSKkgAVYaUehLbA
         /sf11L08PB5XA7nlsgMIF0Q7uNw6jFUYhWnRawzIGs+6611drYxA8zKKqvwuXtUDF4OB
         Ki+Zqi0eDr7FXSZEWZyOtWhlooDz0YPSvV2Q6wIIGORSr016VrN1dgCk6UDbSNIn1msG
         9qsyl4mj6IffJ7ICV9uQixsXzC5Aypb2PAU5wd1yJqvNPfLQS/HtNWMW+AuA/AF8J0lC
         l06w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=vrsuE4HGGnWzmX19HGog9zzGQwEEebu8qlrr+SJqBMs=;
        b=m+y3Oc9vXTOh1GMH39+OfFfbcLdhXc68uFKSqKbBU3eratk4IoPmhYKaVCdvbgWOTh
         Z82rXrhYmrhQ6f98ubmLy4rGaqES5JPxRImZKISgpOexS61xhMaAKvkbpZvthtU2GLcb
         O5xlohjiTC1SjGUtrVj/hRQQ8AeVF8wj5dntS7s7C4wpDFptlWUIqzKmYzCW2Y9Ez6SR
         Z1UVoCFEfaWPDTsekokz5jL9ayx1DPa7BwblKhJyUAeSLYNbC6EY+k3B7du3nupoNLnu
         dfQWD7Na5kg+7ILeMS03174FZaRYl0ccfqmeNNX4ntkV3qBQySZt5V9QSqZV1UTm5iMK
         8Omg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=ICeANoF0;
       spf=pass (google.com: domain of shuah@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=shuah@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id 19si378722pgb.2.2020.03.23.16.11.26
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 23 Mar 2020 16:11:26 -0700 (PDT)
Received-SPF: pass (google.com: domain of shuah@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from [192.168.1.112] (c-24-9-64-241.hsd1.co.comcast.net [24.9.64.241])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 307EB20409;
	Mon, 23 Mar 2020 23:11:26 +0000 (UTC)
Subject: Re: [PATCH rebase v2] kunit: add --make_options
To: Brendan Higgins <brendanhiggins@google.com>, gthelen@google.com,
 natechancellor@gmail.com
Cc: linux-kselftest@vger.kernel.org, davidgow@google.com,
 kunit-dev@googlegroups.com, clang-built-linux@googlegroups.com,
 linux-kernel@vger.kernel.org, shuah <shuah@kernel.org>
References: <20200323190459.64737-1-brendanhiggins@google.com>
From: shuah <shuah@kernel.org>
Message-ID: <db463fea-3cd0-5e10-02b2-950782437dc8@kernel.org>
Date: Mon, 23 Mar 2020 17:11:25 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <20200323190459.64737-1-brendanhiggins@google.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
X-Original-Sender: shuah@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=ICeANoF0;       spf=pass
 (google.com: domain of shuah@kernel.org designates 198.145.29.99 as permitted
 sender) smtp.mailfrom=shuah@kernel.org;       dmarc=pass (p=NONE sp=NONE
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

On 3/23/20 1:04 PM, Brendan Higgins wrote:
> From: Greg Thelen <gthelen@google.com>
> 
> The kunit.py utility builds an ARCH=um kernel and then runs it.  Add
> optional --make_options flag to kunit.py allowing for the operator to
> specify extra build options.
> 
> This allows use of the clang compiler for kunit:
>    tools/testing/kunit/kunit.py run --defconfig \
>      --make_options CC=clang --make_options HOSTCC=clang
> 
> Signed-off-by: Greg Thelen <gthelen@google.com>
> Reviewed-by: Brendan Higgins <brendanhiggins@google.com>
> Reviewed-by: Nathan Chancellor <natechancellor@gmail.com>
> Tested-by: David Gow <davidgow@google.com>
> Signed-off-by: Brendan Higgins <brendanhiggins@google.com>
> ---

Thanks Brendan!

Applied for 5.7-rc1

thanks,
-- Shuah

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/db463fea-3cd0-5e10-02b2-950782437dc8%40kernel.org.
