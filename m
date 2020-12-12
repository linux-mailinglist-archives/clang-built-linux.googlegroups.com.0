Return-Path: <clang-built-linux+bncBDR5N7WPRQGRBJET2T7AKGQEBEZF24Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa3e.google.com (mail-vk1-xa3e.google.com [IPv6:2607:f8b0:4864:20::a3e])
	by mail.lfdr.de (Postfix) with ESMTPS id 75DC12D8920
	for <lists+clang-built-linux@lfdr.de>; Sat, 12 Dec 2020 19:19:17 +0100 (CET)
Received: by mail-vk1-xa3e.google.com with SMTP id y16sf5294626vke.0
        for <lists+clang-built-linux@lfdr.de>; Sat, 12 Dec 2020 10:19:17 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1607797156; cv=pass;
        d=google.com; s=arc-20160816;
        b=LzEZFz5jco1XbT4nsjy67zb18+21AVhugZOLk+Tx21A+jmTMZ6uQ1IbiELSUfwqomx
         LSCiCJTOzZNmNHFkN9BVYt6KuOCDBJ8qxLSo+oCrxUXSrAD1DFeZ5vcHlw+Eq4pSJyuV
         4foKi37+gX9+MEWI9+ii2uldjYlPgBFiRr1ihxOwz7PptAl6pRumubiqxbWOc5O8ixwR
         cIcpBBvyHdqte76mpOtX9b/E4eX6qixM+i/a4RgI1fdTzZflAMMJDMswLSelnjXkjqzS
         Rp0dm5XocETe4INaxdiGrMZtFDRZohG/XYsTGiarUeG35T4cYO3UVftguuY+iYQmqKF3
         nLiA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=dLTT5M63Rf+uyXApoR5P5+qaVbxiKRCruCwwcXZb3Ic=;
        b=l/WPJ2uBT+YXvZY0wxap1Ck6YaTVG2T3mhc36h2c67vKbPmXKIsSEWvjuZygr2q3Qt
         VPRhm+//o5+DZIJt8BuOMrq5pXR6moe5T7OBcb8hA+SaOe50tZEPpVc9qzBNYjVkSmhS
         e5xUXqM/qV8ROPqoco9iPhQi0n3PcdlNoGeiPXUCKMXLThn6axvj0eZIBUoEHv8+XFMn
         og7fIsxnlCmDcXOiKsX/lu4yv4AZ7MfBEnWHvOXSIUuUCLN6P6482+fAMf9vVDTYj6Ub
         9GuhQy/Z8g2NOjJ+js86JpbTGYS428D4ojoZZ48shrPBOX2rP9+WPp/OTKQEP3BhkkRJ
         JI5A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel-dk.20150623.gappssmtp.com header.s=20150623 header.b="nOtS/oKA";
       spf=pass (google.com: domain of axboe@kernel.dk designates 2607:f8b0:4864:20::644 as permitted sender) smtp.mailfrom=axboe@kernel.dk
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=dLTT5M63Rf+uyXApoR5P5+qaVbxiKRCruCwwcXZb3Ic=;
        b=lv0yRx8NJR5+6cBw821cGkbOVDz3RTe4xTPQ4IvMPTNTXg0jgHLkS/ZfIqsPL1r9Rh
         GOjqtxuQPYkDfv15Rz5b7T0K8H52//RyNp4sUuVK5ueuuKIknrl5EI2isXGoSUeN0WO5
         AobP83vfJTTu0i8vaiqjgLVVICQjdWKsXm8gMVlNxok3fwBpQh1OA394ZWzkGhyWW7sa
         sTX75+p1l06lj10tudhNmyxb4ciOyKDRr5ZWTaDOsiCX9xuLDWl3aWc+iLsfoR1KqmL6
         eOQJvETxFlm9F0XZlL74sCJs2MRObytaDZbD8Ues76vR5uRHNsWVq45OU6NUAfYqJN0U
         70Ag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=dLTT5M63Rf+uyXApoR5P5+qaVbxiKRCruCwwcXZb3Ic=;
        b=ge6O8+aczVZG8AAfFr6wRCqrwS/IDBkqjlQcv/AlA9p0Cbarr1+V7YUXvgwqx4TU+S
         l4ALuHaVT9ubSM/n0pxb548YxZutW+1GrdnbGB8+AQqtQ2sCChdIQ/WCWiXZ2fY73qLs
         fSrqDKmsfH6oFCpEjSEa8AaefiU6CIsd8HNkC+YmnJzSjMvT18dLUWzi4dVH9fYrHgPw
         juanSCS6Z20AEvizDTukjq1fiVpENDaZc7l66oTR1vUjuxIcV5sKNCwwYk0n2JbfR8uF
         Ubbt6Lf+m3W61w4YsMyiaufEpGYnGT7rAn75J/VY6B2Md7EDhHlGcpte4QyZb4CQxQrg
         lgKw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533OU7TiQNMpSWQud4QnmlG36oTdf7TStGv1U2KnbRKzUaVRVIQA
	/bzS/AVZVDn37DHMY+HJXT4=
X-Google-Smtp-Source: ABdhPJyUgxodgg11y3rKP0caW2U4dYHDvWP+2xM5rK0hPY3hLz9byPzOovOZbQip4ktqkHbmKfB4Dg==
X-Received: by 2002:a67:8ac8:: with SMTP id m191mr17874788vsd.58.1607797156418;
        Sat, 12 Dec 2020 10:19:16 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1f:2758:: with SMTP id n85ls695296vkn.8.gmail; Sat, 12 Dec
 2020 10:19:15 -0800 (PST)
X-Received: by 2002:a05:6122:12bb:: with SMTP id j27mr18561530vkp.18.1607797155658;
        Sat, 12 Dec 2020 10:19:15 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1607797155; cv=none;
        d=google.com; s=arc-20160816;
        b=nDVJrf+PGVVTv8qrmjG58n2vO035kZbe56pYmlp756m655Jy+8jozMb5e9zOYfkqGy
         qPZbvIfiyHGOnXdXhPPlU++oGv+x+rhf8A+YcMEjiyR8RQiyeRoVChe8WEgnluPN2CSq
         gjsJ3Evfz1gBG9QwVfuw54aL2HHW+TZq3Mte5jHGzgMM43qhUIeNDah+VxvcLK1V8aBy
         2BSF782lwidODEq9DwARXY/CFvt9yHd/+iAJZa2KlEDHbDGnsBoGqIPwD4QAscVV5Zcc
         Y9DTYZsrMtTX+dY7AUqGw9/m5F9dhwYqGCMCJM7/YqVDr7bGXBXF9OXk36agXNKq1/3p
         wWZw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=qnChcwX0lm3LKyBYeRwkUu/vih7wqjvXnMOF9i5s9ss=;
        b=VIdNt+7/D/CQj1t81ZqxlNnkO/1Ww7e5UMmFATFPlEBKUjzpv8LAz1DKKnnCofsqMG
         5xwn9A2s+KsUTMjcn4S8EbtpnprlbbVOVPQaud9ZGGQc153wFUzF6pp1AsYfHRLNJiNq
         Um8hn/Uu6lhoRSKwZSfn+wZ9ZMNS7ziYAkO8gaIwCKj6vkkgfgARLZ92MdlTPQFYvtXD
         s2m0ubf2eVG3ethp1+42Bcz3Mnwz5nTcvAZ7zQVx3ljmwHShkmUmPLQo7Fu5WBSzxmbe
         mPDtHYQ6c6V17mFRFuNw6jN+1zYcOL3rAu2RlRcblX2oPuso3nZoKmuo+FCfk0nKO007
         hp2w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel-dk.20150623.gappssmtp.com header.s=20150623 header.b="nOtS/oKA";
       spf=pass (google.com: domain of axboe@kernel.dk designates 2607:f8b0:4864:20::644 as permitted sender) smtp.mailfrom=axboe@kernel.dk
Received: from mail-pl1-x644.google.com (mail-pl1-x644.google.com. [2607:f8b0:4864:20::644])
        by gmr-mx.google.com with ESMTPS id q22si855058vsn.2.2020.12.12.10.19.15
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 12 Dec 2020 10:19:15 -0800 (PST)
Received-SPF: pass (google.com: domain of axboe@kernel.dk designates 2607:f8b0:4864:20::644 as permitted sender) client-ip=2607:f8b0:4864:20::644;
Received: by mail-pl1-x644.google.com with SMTP id g20so5580840plo.2
        for <clang-built-linux@googlegroups.com>; Sat, 12 Dec 2020 10:19:15 -0800 (PST)
X-Received: by 2002:a17:902:10e:b029:d8:d11d:9613 with SMTP id 14-20020a170902010eb02900d8d11d9613mr10032047plb.26.1607797154683;
        Sat, 12 Dec 2020 10:19:14 -0800 (PST)
Received: from [192.168.1.134] ([66.219.217.173])
        by smtp.gmail.com with ESMTPSA id p8sm14333425pjf.11.2020.12.12.10.19.13
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 12 Dec 2020 10:19:13 -0800 (PST)
Subject: Re: [PATCH v3] block: drop dead assignments in loop_init()
To: Lukas Bulwahn <lukas.bulwahn@gmail.com>, Christoph Hellwig <hch@lst.de>,
 linux-block@vger.kernel.org
Cc: Hannes Reinecke <hare@suse.de>, linux-kernel@vger.kernel.org,
 clang-built-linux@googlegroups.com, kernel-janitors@vger.kernel.org
References: <20201212051302.26008-1-lukas.bulwahn@gmail.com>
From: Jens Axboe <axboe@kernel.dk>
Message-ID: <c064e9b2-f366-a70e-2016-333be8f03334@kernel.dk>
Date: Sat, 12 Dec 2020 11:19:12 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20201212051302.26008-1-lukas.bulwahn@gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
X-Original-Sender: axboe@kernel.dk
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel-dk.20150623.gappssmtp.com header.s=20150623
 header.b="nOtS/oKA";       spf=pass (google.com: domain of axboe@kernel.dk
 designates 2607:f8b0:4864:20::644 as permitted sender) smtp.mailfrom=axboe@kernel.dk
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

On 12/11/20 10:13 PM, Lukas Bulwahn wrote:
> Commit 8410d38c2552 ("loop: use __register_blkdev to allocate devices on
> demand") simplified loop_init(); so computing the range of the block region
> is not required anymore and can be dropped.
> 
> Drop dead assignments in loop_init().
> 
> As compilers will detect these unneeded assignments and optimize this,
> the resulting object code is identical before and after this change.
> 
> No functional change. No change in object code.

Applied, thanks.

-- 
Jens Axboe

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/c064e9b2-f366-a70e-2016-333be8f03334%40kernel.dk.
