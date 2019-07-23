Return-Path: <clang-built-linux+bncBDR5N7WPRQGRBMU23TUQKGQE7B7ZA5Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd39.google.com (mail-io1-xd39.google.com [IPv6:2607:f8b0:4864:20::d39])
	by mail.lfdr.de (Postfix) with ESMTPS id 529C37195C
	for <lists+clang-built-linux@lfdr.de>; Tue, 23 Jul 2019 15:35:48 +0200 (CEST)
Received: by mail-io1-xd39.google.com with SMTP id x24sf47243493ioh.16
        for <lists+clang-built-linux@lfdr.de>; Tue, 23 Jul 2019 06:35:48 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1563888947; cv=pass;
        d=google.com; s=arc-20160816;
        b=YUYbJH8UIxtkh38ElEK3p75uGOuYQXX+uPgrHbhGxWBgoNzOQDVfWXz3IFIX/vCQ2b
         nOfAG7x1ej2V24MFFvPgILWSkj2xnZhZTbGvge6Jot2oodSPk/47rY34leaKGGz6dIB7
         21Iko6f2plgt9XJDxrGs/9uLTqw2paVt+eK6rYzZKi8vJVkSDRdsP14s+iHfdkj21M8C
         0FdE0cvVfbGwboSuXKOU4MJ9BTe9r2gYmsfxUsKly2llV4KszWlfVUlC546NLdWDZgot
         x/gI1QK6RLThMmJu4/LBl6YkVzK/9pJd4mQKRNWyeC9yJtizScyIZRUkXrPESFLYeaXf
         3koQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=pzQjC3eT3wC2ClA5VhaZatS2aehGJfZ/Jj48hifyQLQ=;
        b=vlEMgYDQn61OXWrQL4z4gXt70QWWUUiGzk+GXU2vtBGt2yU9GXmELPNAO08U+91Zzk
         +kl43c4Yn0G6nfj5acIsHyvFccW1khihcFRCXOXSuWSp79TNYuPDrgFlupA3gHMfEgz7
         oLj7MYTxkq03FWZHEHlTxer8oyPneqdlVPAIvsdG1KJuDZ4hypIcgWE/AEDnlkb+eMUv
         f6+sDv/vFAkRTdlXvP7ID0mfZMAMSynX4ySfg+GkZ7/0JucJY75UmcbGI64Bsz7eMKmA
         puUIqKzdDynXsHFy+6NHF7VLv2iNntbWrByDjndKFmy4KYOsrj3WL+9Cf85WA1HC3H19
         Buag==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel-dk.20150623.gappssmtp.com header.s=20150623 header.b=y4uhVeOB;
       spf=pass (google.com: domain of axboe@kernel.dk designates 2607:f8b0:4864:20::541 as permitted sender) smtp.mailfrom=axboe@kernel.dk
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=pzQjC3eT3wC2ClA5VhaZatS2aehGJfZ/Jj48hifyQLQ=;
        b=WlBcWuxM1vrahsy/qnCez848TN7+Sro3ehCGmCnkqJPsP/ECgmzlLeRbIiqmpJEjV8
         y+y9/1inbm382wewEzvR1JJh1HoQxWNO1WUeny9GnkruQtZuvGcYkr46gJQc/2NxMLtP
         jfSWk/1hHtkqA1Qo9VIYR5VzlGiMolD7z9nN4zM6kiGjVfjwJLwAzBCbRIy+KIzjEYB/
         aNPXUCiv5Dxf0Hys8jqwMQ3WX83bDnH7zmHezV7k4h4UkhgTMspL0MyO6XLRb1588yl5
         NujnraXKI++01Rp2C2B8/cY3WHaxeIN54JBAEZufsD93f2orhPlrT2eHOHG+eZAVn6vu
         XXdg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=pzQjC3eT3wC2ClA5VhaZatS2aehGJfZ/Jj48hifyQLQ=;
        b=iPdtyCkT2ssd1m7k3JZetxmYK52XWvUn2tAckdJg3orK+mYiwe8CsJ21qn34bwldQa
         S6ecr4lpFlFkNDT+d82/43U2+2mwZjwU7kjZnhCkjQLqxmtf86rSYSTysbxyY8aUhOWD
         4oKTiAuXg51mMbMbTW795TMPi2pyQNw14ODciLBNjBvEuSw2/raDy8sRX+SwwvOR2WIz
         2vLm6zXu9+t3LAOWv1iBQe6OSxrkpclGv02dWGu+B8cZ+h/eYDyGQXgf+GYNFfQJn7G1
         wMKll2rmp4DTSrHrcmysYTmqP3bJXSUFVed4Eon1hII7Mp5N744rTaLlS7AhO4yHnR+4
         mYQw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUFrl8ODuJiAelcyYKSYm+ri8dTQ3tG2ZPrPCJrMj3YIBvv5zBr
	LbJq8zl4+GjmV55raIKUEAo=
X-Google-Smtp-Source: APXvYqzXYmIiRt06zR+mim7ypNGP0FAd8mMMAKAVWpx/jS7fEvoWD0hUstCweZBWjz+c2Y5ysVPyUw==
X-Received: by 2002:a6b:c9d8:: with SMTP id z207mr68137790iof.184.1563888946863;
        Tue, 23 Jul 2019 06:35:46 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a02:294b:: with SMTP id p72ls5814693jap.6.gmail; Tue, 23 Jul
 2019 06:35:46 -0700 (PDT)
X-Received: by 2002:a02:9a0f:: with SMTP id b15mr59360702jal.32.1563888946545;
        Tue, 23 Jul 2019 06:35:46 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1563888946; cv=none;
        d=google.com; s=arc-20160816;
        b=1IeNHfb19FkSxzZX163ZLLnmxQyxhLCcLSxgIjBu6FyluJmjXL9syyntxppPlLAcNE
         cnpzC/56tzysKc9qP5ADc/pooMWdtRLm9PJGTNS5dnisnNCrgwxYY7dSKtmNF2WvooOT
         YAph58vvT1GsgOJZLR342ZakjoIkTNEfHVCG8+Ee5YalpDbmeXskrhDb9PyFVBHSjPVs
         UkHfYPI/9RHxa84hThdWJs2EBKc1BnMycWK3vBlcuMtxiSQRsLhmfpKwsCbSf2XKO26O
         RUlWr/CQ3513BGf4Rp01eliGZCqRmlDeEExSHKhQH9CTot485HQ4Ib6vtyKLcctx1o1K
         O/ug==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=U/rIdHk59Y26MP5OXK9CvV9HfQIDnItcRiOtBbdSbMQ=;
        b=CsI1iQUvsttQkAwkOVI1mWGQuCjtIj4uZl9YRrxti1J8UB/s2XAbnyAaoEXtbxPHcP
         4sooNqwsGo0LuVL5f4JUxdzYISrhzHMB26lDrrhGu0E/7EBoeWaHCRUhW+IM88IMtirj
         BUnqWl5dixS71H2rCurMuPSpkwaijaRTym/sAfyV5Gtyn8laLvvsQnCq7avb4+iOYVAE
         VuniHE1366kzVkQvz7Fuic+NZRipUlqqW+gE7sd4J528CRYIU49yvyg5mnsWGO6HsVc8
         wFSCzhwQ6zRLkl9yuxl7/HxEI/HmAll1e+5z/44hE1Rb0zPiazCy4R5zaosxQpQBjDyQ
         TNVA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel-dk.20150623.gappssmtp.com header.s=20150623 header.b=y4uhVeOB;
       spf=pass (google.com: domain of axboe@kernel.dk designates 2607:f8b0:4864:20::541 as permitted sender) smtp.mailfrom=axboe@kernel.dk
Received: from mail-pg1-x541.google.com (mail-pg1-x541.google.com. [2607:f8b0:4864:20::541])
        by gmr-mx.google.com with ESMTPS id m190si1639319iof.3.2019.07.23.06.35.46
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
        Tue, 23 Jul 2019 06:35:46 -0700 (PDT)
Received-SPF: pass (google.com: domain of axboe@kernel.dk designates 2607:f8b0:4864:20::541 as permitted sender) client-ip=2607:f8b0:4864:20::541;
Received: by mail-pg1-x541.google.com with SMTP id i18so19454259pgl.11
        for <clang-built-linux@googlegroups.com>; Tue, 23 Jul 2019 06:35:46 -0700 (PDT)
X-Received: by 2002:a65:654f:: with SMTP id a15mr74534244pgw.73.1563888945184;
        Tue, 23 Jul 2019 06:35:45 -0700 (PDT)
Received: from [192.168.1.121] (66.29.164.166.static.utbb.net. [66.29.164.166])
        by smtp.gmail.com with ESMTPSA id bo20sm32429908pjb.23.2019.07.23.06.35.42
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 23 Jul 2019 06:35:44 -0700 (PDT)
Subject: Re: [PATCH] [v2] drbd: dynamically allocate shash descriptor
To: Arnd Bergmann <arnd@arndb.de>,
 Philipp Reisner <philipp.reisner@linbit.com>,
 Lars Ellenberg <lars.ellenberg@linbit.com>
Cc: Roland Kammerer <roland.kammerer@linbit.com>,
 Herbert Xu <herbert@gondor.apana.org.au>, Eric Biggers
 <ebiggers@google.com>, Kees Cook <keescook@chromium.org>,
 drbd-dev@lists.linbit.com, linux-block@vger.kernel.org,
 linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com
References: <20190722122647.351002-1-arnd@arndb.de>
From: Jens Axboe <axboe@kernel.dk>
Message-ID: <2675f963-6d67-7802-4f8a-eab423688419@kernel.dk>
Date: Tue, 23 Jul 2019 07:35:41 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190722122647.351002-1-arnd@arndb.de>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
X-Original-Sender: axboe@kernel.dk
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel-dk.20150623.gappssmtp.com header.s=20150623
 header.b=y4uhVeOB;       spf=pass (google.com: domain of axboe@kernel.dk
 designates 2607:f8b0:4864:20::541 as permitted sender) smtp.mailfrom=axboe@kernel.dk
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

On 7/22/19 6:26 AM, Arnd Bergmann wrote:
> Building with clang and KASAN, we get a warning about an overly large
> stack frame on 32-bit architectures:
> 
> drivers/block/drbd/drbd_receiver.c:921:31: error: stack frame size of 1280 bytes in function 'conn_connect'
>        [-Werror,-Wframe-larger-than=]
> 
> We already allocate other data dynamically in this function, so
> just do the same for the shash descriptor, which makes up most of
> this memory.

Applied, thanks.

-- 
Jens Axboe

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/2675f963-6d67-7802-4f8a-eab423688419%40kernel.dk.
