Return-Path: <clang-built-linux+bncBDPL7R4J6AKRB7E57P7QKGQEOX56FLI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ej1-x63c.google.com (mail-ej1-x63c.google.com [IPv6:2a00:1450:4864:20::63c])
	by mail.lfdr.de (Postfix) with ESMTPS id 869EB2F48DB
	for <lists+clang-built-linux@lfdr.de>; Wed, 13 Jan 2021 11:44:13 +0100 (CET)
Received: by mail-ej1-x63c.google.com with SMTP id q11sf741476ejd.0
        for <lists+clang-built-linux@lfdr.de>; Wed, 13 Jan 2021 02:44:13 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1610534653; cv=pass;
        d=google.com; s=arc-20160816;
        b=bGBahfVwQglc350UuOYDJ7lDq0B0MvfJ1ABLfuVJsGWxgHkohSWF938r0RZr0Tjj35
         E94UbAJRuRB7isyrlSa9dI1v+E0mBdzgTTweKAqDVjaWSNPO0KF0nCp4ciQb6CDFyC+X
         U17CZP6nCO6TX5heOdLAo0caK2iKsLlNewJqiMGL0tYOn6Ez6mPCLyq3tiDrzgoSxwKM
         q3S0XWAd1LhE88J4zHPBOiqSDMmwqaPAiqHf5zkPBBjcrB/RRPtWJNHRqrKWR3ssBkbJ
         OAy+dVgM5nNOm7+S0DQ/ILOWCx7F0ysp0tnqvhszaD6sCvi6krwGaGWLkunfMn4rBiWq
         Z22Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=ChmBxe5B+IyqWBrnldnS2HUp02yc0mgnayUWxbnzliw=;
        b=BB37mJXlsl3xxnRfNpsKXRY6OU/4vhzv8HBjEcMoQJsMGvWT2T2keUtqNSOwjMOy/E
         KECwdOiuKNS/E7UnwsMrmB5aFY1uSUSGNqpbtLzJohHBqbNUxhZHpiIycGomW6gojL30
         Z35jjEYe/7YK5NeZlhGugLWuk0FNqWeWrPnEYxbfSdIMuJAvCkFYbQir8f76wZHriVFY
         pZqdJQJR9wx03ef8QiPNUQaYnuGiUFn2yeoIJx7B9O9LfEMFdV/WvuSsWU4yKN3n168V
         TExJ/Gbw2XDJke1ZXxNzEKZ/r/cIHcJNAzLh5QL/dls4c1ci4YV86Pbkpk+S4kI6FZxN
         WgrA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of tsbogend@alpha.franken.de designates 193.175.24.41 as permitted sender) smtp.mailfrom=tsbogend@alpha.franken.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=ChmBxe5B+IyqWBrnldnS2HUp02yc0mgnayUWxbnzliw=;
        b=aIWcT2Dy569/h1SSG8JLBASDaybmf0HmfAzDLalDkqJwYFtC4ZDX1LCi1rVNRimtnh
         0LoKAYYST1NP9ys5HePZ6mTQMdd4b+s5uczSkKHGE7zXDvLUAUY4aEK5kIMbNJ207goX
         wmf6yIB7oyiaG3NsenWV7V82ENncgM8fxQI5DOnx0HzQPbjx3PLXTP1TUSqCH5Q4K9N4
         DAipIQMrJPKDlVKJEZPX+VuEXjK2tpp/3w+9vDOs4AHPfIcW8RxOxizVQRCs28cI1tiu
         22pxlD7ANqpVu6ktmfzN2S1xsoLqfcJaaKZACl+yMdniVaQEkqQzFu9zy89AnxxuQ31m
         uLRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=ChmBxe5B+IyqWBrnldnS2HUp02yc0mgnayUWxbnzliw=;
        b=VCSO9ueeWLMqDSVNeJqbxlKJ6llbPIP7JgxA667Y+QENBANsvEXLx+ZCj1bGlWeDJZ
         HJYwEI6/5glIlbKEaxt0DNrrjpSosIRcLFOdE1LpISBm4UxlIE7uxYRBDLN5ltwZRm5t
         OjfaclKs3WzgnkuT5knWf6/s5LbQfqwWTngEhAQWzMYepluC4xY3Qn3EtDWeYdctn71B
         WPdIv/GczH6XY6KNMBCYaa9kLnK1noFzcdRnb3HMh/ftFxdXmQTvOMq7WB9VRAg33UYz
         N7hiyzmv+J9d3AUGP5adY08Ttt6Q14G/F6SoqonZ2nf7PcMpU+wSAjoyRflsfKyvwVmd
         0Uzw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533TvgSiHa+pQOBKNI7z77NTURWqfILGy2pzaslazQ+rrHegeKiH
	9qaMFLkUERN3PMvCS7y5N5c=
X-Google-Smtp-Source: ABdhPJzro2oxnDQz28ix9aioe/MqzsP+zADJHhmOtx3slIcHJj5o3aT5G/6Mnie5q5ZBpCBJBLmgwg==
X-Received: by 2002:aa7:c84c:: with SMTP id g12mr1225917edt.193.1610534652896;
        Wed, 13 Jan 2021 02:44:12 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:906:793:: with SMTP id l19ls954846ejc.4.gmail; Wed, 13
 Jan 2021 02:44:12 -0800 (PST)
X-Received: by 2002:a17:906:234d:: with SMTP id m13mr1123475eja.270.1610534652099;
        Wed, 13 Jan 2021 02:44:12 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1610534652; cv=none;
        d=google.com; s=arc-20160816;
        b=xxVS5dRUnUXuO1CNDNp4HKiWBieIZxu8rmLcbVqHLWjjhfw8oxe107JOm0Bs2GqN9a
         cyrb8b6I/m4OaqXs+Yt+tQO/wXiIlXMr7MiM1JhxE1NkH9c9D1dgELM+Nj1CrEpy80kw
         uKaYjVIl4CAuTnsVHfGwmilQI2+ZdhpCT8MscebRhqZLC127DGjax7ixztnUw9BLSQ52
         +XpcYOBFmdS+buzU9ilCkSkSCXPtFGrYn5pJEK2wMlcyg73WPgstEHaOaInRlv649vZa
         iZ1H/xx5fyf8MtRLcE3TdOEm/3gVMsVaJudxKZTj2Pp02y5ZXWOeR2ZexFP7+rFUpwu9
         Fjpw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=zNZpEWPREJpKwbmPo2WxCr7GS6yVCmC3daAT1NcTKaE=;
        b=E4mum9+G97kNQP1iT0xcJUW/UpiZHNlKozIW7gwsFNt7Z6hj27b4yI+3hWnVtg7zgl
         YH5RfHZKz9onwTnVH2Qj6LY2f0IB4/1kDWRdEMgTCiANMGQSuBkbWTkN3h98aZamag61
         oSwVmTsztj/kmjJ5HKNyf0CKvCAEeoj0bL8U8sIeIRiAxdH+YDCGXXke7GS3gwYSl2sQ
         xCU4HVZR+P2BRz6cU8shOe1GiowEDcsgncoVO8pC6vC4WiilNGG7X6rBE37rrrTnRoDR
         Pc0SrHZQ2vcxyo0kg9OzfC5g1Vav+Sr5ha/BR8CruBDV0vvx2OnpHr+qVXBBfvXVVbJj
         X2tQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of tsbogend@alpha.franken.de designates 193.175.24.41 as permitted sender) smtp.mailfrom=tsbogend@alpha.franken.de
Received: from elvis.franken.de (elvis.franken.de. [193.175.24.41])
        by gmr-mx.google.com with ESMTP id f26si77823ejx.0.2021.01.13.02.44.12
        for <clang-built-linux@googlegroups.com>;
        Wed, 13 Jan 2021 02:44:12 -0800 (PST)
Received-SPF: pass (google.com: best guess record for domain of tsbogend@alpha.franken.de designates 193.175.24.41 as permitted sender) client-ip=193.175.24.41;
Received: from uucp (helo=alpha)
	by elvis.franken.de with local-bsmtp (Exim 3.36 #1)
	id 1kzddE-00021m-06; Wed, 13 Jan 2021 11:44:04 +0100
Received: by alpha.franken.de (Postfix, from userid 1000)
	id EDBF6C02B1; Wed, 13 Jan 2021 11:43:54 +0100 (CET)
Date: Wed, 13 Jan 2021 11:43:54 +0100
From: Thomas Bogendoerfer <tsbogend@alpha.franken.de>
To: Alexander Lobakin <alobakin@pm.me>
Cc: Nathan Chancellor <natechancellor@gmail.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Kees Cook <keescook@chromium.org>,
	Jinyang He <hejinyang@loongson.cn>,
	Ralf Baechle <ralf@linux-mips.org>,
	Matt Redfearn <matt.redfearn@mips.com>, linux-mips@vger.kernel.org,
	stable@vger.kernel.org, linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: Re: [PATCH mips-fixes] MIPS: relocatable: fix possible boot hangup
 with KASLR enabled
Message-ID: <20210113104354.GA10505@alpha.franken.de>
References: <20210110142023.185275-1-alobakin@pm.me>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20210110142023.185275-1-alobakin@pm.me>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: tsbogend@alpha.franken.de
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: best guess record for domain of tsbogend@alpha.franken.de
 designates 193.175.24.41 as permitted sender) smtp.mailfrom=tsbogend@alpha.franken.de
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

On Sun, Jan 10, 2021 at 02:21:05PM +0000, Alexander Lobakin wrote:
> LLVM-built Linux triggered a boot hangup with KASLR enabled.
> 
> arch/mips/kernel/relocate.c:get_random_boot() uses linux_banner,
> which is a string constant, as a random seed, but accesses it
> as an array of unsigned long (in rotate_xor()).
> When the address of linux_banner is not aligned to sizeof(long),
> such access emits unaligned access exception and hangs the kernel.
> 
> Use PTR_ALIGN() to align input address to sizeof(long) and also
> align down the input length to prevent possible access-beyond-end.
> 
> Fixes: 405bc8fd12f5 ("MIPS: Kernel: Implement KASLR using CONFIG_RELOCATABLE")
> Cc: stable@vger.kernel.org # 4.7+
> Signed-off-by: Alexander Lobakin <alobakin@pm.me>
> ---
>  arch/mips/kernel/relocate.c | 10 ++++++++--
>  1 file changed, 8 insertions(+), 2 deletions(-)

applied to mips-fixes.

Thomas.

-- 
Crap can work. Given enough thrust pigs will fly, but it's not necessarily a
good idea.                                                [ RFC1925, 2.3 ]

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210113104354.GA10505%40alpha.franken.de.
