Return-Path: <clang-built-linux+bncBD56ZXUYQUBRBYXVWCLAMGQED6EV6GY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x33f.google.com (mail-wm1-x33f.google.com [IPv6:2a00:1450:4864:20::33f])
	by mail.lfdr.de (Postfix) with ESMTPS id 0ADB2570671
	for <lists+clang-built-linux@lfdr.de>; Mon, 11 Jul 2022 16:59:47 +0200 (CEST)
Received: by mail-wm1-x33f.google.com with SMTP id m20-20020a05600c4f5400b003a03aad6bdfsf2767038wmq.6
        for <lists+clang-built-linux@lfdr.de>; Mon, 11 Jul 2022 07:59:47 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1657551586; cv=pass;
        d=google.com; s=arc-20160816;
        b=vHGgEFAhVcFdowBOwPPC8hxFeLpvXza+MfL76CciYyVN5Z6/GfNYGqMDqH60sNdSK/
         6fJOQkpsyDhM0Kr9ndYZAs+05yO5jsKyTBrw6/PVEo8/9j6k84IBLf9P/rEjeXGgGFz/
         KRQI+hUop+9n1f/4qHra82VItlujRwg9gQWC+52gN9j+2rYgxgR5rNUVRJeeMYGsoEs9
         rBbzFGPDnM+0CWPWOj0BFBJ2oKAOcMQeW1E6KnO+/Y2v/XjAWUZJngvFa9yduFOBR4xN
         +cw3pL5cGFeB9TguTHmuu4Aed8P/UH4ewmtXa8wtZavfJ/6mnRuFZNGUgNTjnmQ6TWqY
         0W9Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=J0/O4ozAk5HRfFdzJOL7pKNtt7GY8A/Joe/06rKMSdY=;
        b=hwzvWCelZgXD/MfcB2FE3o+7S9PwQRt+q+LbXYtkjZttk+CrFE1pxEQ631EpUfVNoS
         2HZ/4j/iPnRP7+w8/AvZ6M5qchBp4Fg6bGbsiZYfmEDdbrx4CYPxjrPMlIQlHmKP9+Ve
         1cHW2LEvLRQDtVsBtfAJq04sSPJGWhgR97afSGY5WUDBXcNb3sAPdRPmUeRvOUrJrULL
         jZHhcBIaGn9xiHLtoBxD1+jWw5VxpnVhtsL4V+jM0xQ6jl2n6Oa1LAteG16O+Dbs++H+
         2XdyuCrQBPCz+9BD1IEfSua3gBG5OVRMuSl0Uvm0TEkrd2S5rTLxw8blp0QJ6qFp5qO4
         kxmA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=NGwk1jTu;
       spf=pass (google.com: domain of kbusch@kernel.org designates 145.40.68.75 as permitted sender) smtp.mailfrom=kbusch@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=J0/O4ozAk5HRfFdzJOL7pKNtt7GY8A/Joe/06rKMSdY=;
        b=UK7T7oO4Tp560NqLLELWafRIi8wxAEL83Q/u+ztFmMevIFJyr5PMUvZxNPzniGW6q7
         lYOKV28SFH7rFDHI8wDtlLAQdhBtAJftwNpShEco5MIy/Deu/ky/GpHn6szpCg6/bBnb
         mFKRKj6mPYx+1ODvMnLo4XW0+36U36OTGtinbywByavK9C4cLVAM2nhmCJS0yP+eS7A6
         HeY5bXSV+u4S4BtTEV2+OPTrm5PTxwSMAzW7mjWSHYrr3gob/Qpz1IBWb4LjeV2mNctZ
         bqXGJBFrNiSZ8Dp7TYRL/OUd6fAvoH+4YiDsQyqoKzFzf3pTZI9pOg0nfiwuHQ/h7uff
         aD+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=J0/O4ozAk5HRfFdzJOL7pKNtt7GY8A/Joe/06rKMSdY=;
        b=aXQ7Yhbg6QAJKKf1hAvdBRjuZ1cQ7pssqurIG23/9VYC6g45HwALC62jRwVXSvY0He
         i19SqgGs2Ems61cSH6uaUrUUs6qn2l6qYZYFGt3vlUAH3gbGnEPVdeY1TeoQ4t4+3/bQ
         5vyMJ875qxS4kQGO0LFczC8QVktNvGEHCsF/M60T60w9KH8nKaTo02+pIysDpPSB14MQ
         BNSd/sUxC64DvZKsC5WONI7C3SRoa9X8dseD65qyRy5rioL5RLQ8R35dBsXSDrxbEZwB
         8mmMs2d0jugyLgly55k/JO4BDfo704iZ6FwUvyYk/0vPC4WTTD21ZMgzC9ZJPKNCvF1A
         bNWA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AJIora/QQuxzz3wHA6Y/Fkx3rN93WGtee8+0Y80os41xgYrRsaC1RKFo
	HOIa79Pb5jbwntLOntdHato=
X-Google-Smtp-Source: AGRyM1tQ604sU3H5GIenT1uMrCzNL2vQJqDqALR6Q7a8BsLmpIcZpWAZb+Qmt/08uszeQSZ7weU1fA==
X-Received: by 2002:a5d:48ce:0:b0:21b:9f34:f297 with SMTP id p14-20020a5d48ce000000b0021b9f34f297mr17606444wrs.351.1657551586307;
        Mon, 11 Jul 2022 07:59:46 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:600c:34c6:b0:3a0:4f27:977f with SMTP id
 d6-20020a05600c34c600b003a04f27977fls5797wmq.2.gmail; Mon, 11 Jul 2022
 07:59:45 -0700 (PDT)
X-Received: by 2002:a05:600c:4f14:b0:3a2:e8be:c184 with SMTP id l20-20020a05600c4f1400b003a2e8bec184mr4672886wmq.34.1657551584950;
        Mon, 11 Jul 2022 07:59:44 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1657551584; cv=none;
        d=google.com; s=arc-20160816;
        b=Dnn6O19+TibnKWr8OYeohNF9kqOjNOIw+lR3uOnnyZzjnQv7AjcHGBGgp9mlPAOGNA
         EO+l7BDhHD1eH3fYJz34RL0++AzUHFK3lIN3ebnzWbRxkONa2CCD3f7qxt/KYUmLKuXM
         deTqlSVap6oplYbYSZTEfJdFZxBJZa9UysbUzKqPN/aK6zC6TgCOOqWykn5eh97M9OaC
         hmmwSyy+aEr/KyYgrBtr/Wspg7ylbEr1+X4jt4N6dhhLjxt1cpFb/Lp4XnDVWR7qw++x
         mjFoPhOkLwDAxA38eAn3j9QXIWHOHMwy+98afUwD8Csi2d2BLgJ7eAwwnlYHLA8FadG3
         u5/w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=Ns0owu8BD+uGHf5ASIS+0ai7M1OA2wd0TTTYsy+Z1QM=;
        b=VZTO6OLYfCrvEEQBV5kAeTiwuRmD9tTh51R9YlQ/2JLsmqezoka6HAQnxAxg04EE2l
         sIwej3R9fzZRGqs68RNBc5KULp0jArSYuxJK+F3ompAMy7VRw2RdMzqbdnk88oA7MfAL
         w/oIm0oMNPUOcpvmcUE8Ow5ZPCaUMQ4cVjGhQVL5NOdtbgoyJrCk6j4uNDNsCAviJMfC
         nrO5Yduxxk/vE9YGbXatDvu4ulFHt1RpFpkuac9+J3jmz8uljw9R4+2ygUkL6omnTz8D
         h75Bd6zT7TtFNqaMpr8XoPNPhr3EZEDKLB15UVfC4blvBydi3QehkyOSjGLjJ1/RFs10
         E/uA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=NGwk1jTu;
       spf=pass (google.com: domain of kbusch@kernel.org designates 145.40.68.75 as permitted sender) smtp.mailfrom=kbusch@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from ams.source.kernel.org (ams.source.kernel.org. [145.40.68.75])
        by gmr-mx.google.com with ESMTPS id ay14-20020a05600c1e0e00b003a2e98573desi84008wmb.3.2022.07.11.07.59.44
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 11 Jul 2022 07:59:44 -0700 (PDT)
Received-SPF: pass (google.com: domain of kbusch@kernel.org designates 145.40.68.75 as permitted sender) client-ip=145.40.68.75;
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id 9083BB80EB5;
	Mon, 11 Jul 2022 14:59:44 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7CA62C34115;
	Mon, 11 Jul 2022 14:59:42 +0000 (UTC)
Date: Mon, 11 Jul 2022 08:59:39 -0600
From: Keith Busch <kbusch@kernel.org>
To: Naresh Kamboju <naresh.kamboju@linaro.org>
Cc: open list <linux-kernel@vger.kernel.org>,
	Linux-Next Mailing List <linux-next@vger.kernel.org>,
	linux-block <linux-block@vger.kernel.org>,
	lkft-triage@lists.linaro.org, regressions@lists.linux.dev,
	Jens Axboe <axboe@kernel.dk>, Al Viro <viro@zeniv.linux.org.uk>,
	Christoph Hellwig <hch@lst.de>,
	clang-built-linux <clang-built-linux@googlegroups.com>
Subject: Re: Block: bio.c:1232:6: error: variable 'i' is used uninitialized
 whenever 'if' condition is true [-Werror,-Wsometimes-uninitialized]
Message-ID: <Ysw627zSWSrEzrUZ@kbusch-mbp>
References: <CA+G9fYtDr=tqPmM6f9aGQOfqkxUo-yP-kHBQG787D0Cj6oO-dg@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CA+G9fYtDr=tqPmM6f9aGQOfqkxUo-yP-kHBQG787D0Cj6oO-dg@mail.gmail.com>
X-Original-Sender: kbusch@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=NGwk1jTu;       spf=pass
 (google.com: domain of kbusch@kernel.org designates 145.40.68.75 as permitted
 sender) smtp.mailfrom=kbusch@kernel.org;       dmarc=pass (p=NONE sp=NONE
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

On Mon, Jul 11, 2022 at 06:14:10PM +0530, Naresh Kamboju wrote:
> Following regression found with clang i386 and x86 builds failed on
> Linux next-20220711 tag. Please find the build error logs.
> 
> Reported-by: Linux Kernel Functional Testing <lkft@linaro.org>
> Reported-by: Naresh Kamboju <naresh.kamboju@linaro.org>

Sorry, I needed to send a v2 of this patch. I didn't realize this was already
merged (it doesn't appear in the block tree), though, so I'm not sure if I need
send a fixup patch or the correct version now.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/Ysw627zSWSrEzrUZ%40kbusch-mbp.
