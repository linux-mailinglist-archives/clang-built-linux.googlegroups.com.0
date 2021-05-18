Return-Path: <clang-built-linux+bncBCKJJ7XLVUBBB76ER2CQMGQEZPBSAQI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc3a.google.com (mail-oo1-xc3a.google.com [IPv6:2607:f8b0:4864:20::c3a])
	by mail.lfdr.de (Postfix) with ESMTPS id 99684387752
	for <lists+clang-built-linux@lfdr.de>; Tue, 18 May 2021 13:18:24 +0200 (CEST)
Received: by mail-oo1-xc3a.google.com with SMTP id u10-20020a4ae68a0000b029020e9650d1b2sf2469151oot.6
        for <lists+clang-built-linux@lfdr.de>; Tue, 18 May 2021 04:18:24 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1621336703; cv=pass;
        d=google.com; s=arc-20160816;
        b=yLAswJeUcHkiNfu73QJ9IMub4vmaOoH6fAwrdXH/rgt7PHmkI2ajJ2RP5KLQ89FpZW
         kp7tEP5B6NI83RO1ebQ7/CrulyXi4/KYOlcng7cQWiYOP0Qg4/SO6rzhJ7ITa/qBDjn+
         /zkfxK184ntUtZ8fkX3d+GXY/sA6KEyruoWqDM3FA73z7Jjy1beFZ2IKvvuJ1t52wO10
         G+iAPttIY6O11pRZxsLuFCWotLk5f7AIzyx7AQqQy9FURXHJb+UZlfpbA/oUdRigHkVi
         Fz2j4sgnR6BnORdibBhUEDVRfBpFgGAF2lyUnZ1D1Sccja+tr81lER3Q5eqVZWpRhCVE
         uu1Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature:dkim-signature;
        bh=bxIoesps4AsShXKurvw9n1UCpD+r/j4+J4shw2BKAhM=;
        b=I5SN4IaPVpAbLeW48SnATCbujf3K+9rAcTy/ETLJ79i6q0UNWWk2pK2XfRSdQ+0F0A
         O8vyh7zkZ8D0wycRDHuEzsAMhUA5aJkt0t6X6/PDLDPNwT7EminZ1gj2aXO7NCIoCfqx
         JJ7TCP7cvTZ0qLUR3HJ1q2LlCUGTONkrxo4W4qUfREpDbnfZOiXJXU7O8wNGnw7aFAEC
         3Y1sROMk4rZE/AwvtMP2LDY7K6kvskkm9A4a4SthnWKmQBJWRUgmuAm356Z+xJzbQBDg
         FdkaoKl32J4BOk9zbl7aaOoa8XRspwRm3xSyQmUzk7CYnIwtj5RwzWdB4+jeac5Umvdb
         Ao0A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=tUjRjX1y;
       spf=pass (google.com: domain of 42.hyeyoo@gmail.com designates 2607:f8b0:4864:20::636 as permitted sender) smtp.mailfrom=42.hyeyoo@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=bxIoesps4AsShXKurvw9n1UCpD+r/j4+J4shw2BKAhM=;
        b=Q9UIv47/uQKhYL85R0LuUx987/HzlI7BiLhwxMqbZcIPv5AS7NU1ygfFf7iAUywLDI
         36WclKKv3StR9p/A9KU7SHX3apcU9HaY0vO3/KUaLPiLCvCdAwt/iBatxj4Bi+MTCqBF
         Z41TRux56hf9g6jgKDwgBlOu12OrC9/xXda0hKZdyckrcr54rvfZ5yNDQJuVrXyzQ6m/
         VeII3lVzskTOE9X9VYgKf3iM4pYni3nxx4CfEcM/xgapaSedIyu58teHp5fasJ1anjtS
         CU+t81tDqgasVu1TL/vjnKeHuIQGpsDuNJzVrUW6zJUFoYVqAunbnyjMxMn9V3TPjPSF
         HPKg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=bxIoesps4AsShXKurvw9n1UCpD+r/j4+J4shw2BKAhM=;
        b=iI0ypSSKoWdxY0gvrbvPKqw/FgUQ8OKRFI0ZSQm8LffGk6PFerNdv/nywaGQ3rPreX
         L2g+AN34A/2XGS/rVGO6JDb5n+yfCO/krip/62KMz+nkbZW5LUluHrlWcGpZTIWo0BQ8
         +dYIGK4mEZT5LDaNk44TIcglskQieATBP8IRsYnZvfVP3R62CNW4b5lRHtaUjQWt3+lr
         bpD82ZGKNQN1hgb5tzzCuJ+uao2berNJzdW3g9mZzvKLYvZABDH87gwLWgmnIFQyyyrf
         28FVew1AqmVgkX+yQzex8IGzDJbug2Q2aS+LSgG0vYOR5koxCxUt6eN9Jybx1wzbHTvN
         1H+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=bxIoesps4AsShXKurvw9n1UCpD+r/j4+J4shw2BKAhM=;
        b=Oj2qpfYphmX07rkHnsmYx48Rv/Kl4AO264V9XrXtc7aMFrB75rTXhF3Ora4yQV0Cxu
         aKfqjvgm1lwe/Hvt6AAwH8a8qdUIGrKQTTJ3NZrSULjcEGcIlGAbWhYwaCkTeOZWt5gC
         9aTbagkxW9iojpya6L1skS2IQqBIaD5FPB7WJD+42WqbbEZkpA1koBgGgHUY25CaNW4d
         6s11V5keuqkegLJMmwZ66xJVZ9Ctqi7VpxrmcLCUsTGgcw+SLqdOhGJhj9Z5/nRX30aq
         zXOIn5LzaTg8vQi5HiuZAnWTRehbiQDu2RLZuw1JNJDW4X2RNaqGjICsF4EdTsKq4lEY
         Q/zQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532MJY/3VODlHIR5QhVYjO6QTryNO23Zb5BFIBOzFd7+61TrgKVE
	1IRxhokp0GrinAkNxZdiZXI=
X-Google-Smtp-Source: ABdhPJx2UdwwR7Fyv/iuOWu3n3OCSANYr5U4+g1ENx9MfQoQSw9qK3ZyK2R0jIX/cp5NtVGri+4AAQ==
X-Received: by 2002:a05:6830:1b6e:: with SMTP id d14mr3755489ote.65.1621336703552;
        Tue, 18 May 2021 04:18:23 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:7b46:: with SMTP id f6ls5554930oto.2.gmail; Tue, 18 May
 2021 04:18:23 -0700 (PDT)
X-Received: by 2002:a9d:863:: with SMTP id 90mr488158oty.335.1621336703226;
        Tue, 18 May 2021 04:18:23 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1621336703; cv=none;
        d=google.com; s=arc-20160816;
        b=o4z6Wq9P5ScOYzmqCVd0riudhkYWZHkY5v1zYpY1bqLf/ung5cARrfi0qNJ4nwitf4
         8RgtaelnwwV5W53TmNEa8DR/9NgCQZyKz4GMA5lgPwKcIcZAVH4LLVRMjdx0tzGDW1yn
         FxCVHCl8Mz17Mj2XPgC6TouNpIU+ktaVoCHj2DnxyxDzaV7//BSb+MlUtaD02FKOw7UX
         3kwJtauMchuwGZ0OXvhxUo/F3js6wDc0bc95dQsqjGyXeop04O/8zjRcSzWCxKske3UA
         rmmCcjSPdE/E/3FA3Bi+AW+YHxjo6riVH0VHPTpx2VuBICCLtUB8z5MkFhGT/OBvedfc
         XwNg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=dZZVNFLqfyQH+VZvfCK9B+B15hMckx1kank4ZW1zXaA=;
        b=PFEz8DETVTy1pOM5/DqsSYEu3tGvZ00K5NdBuGvObjy0roOFDAIp5Zif9asfP9mB2p
         q5cHJnMgNB2R9DxXyvLui3io3RztwTxdCqIfCPJbfS/1kMu+SJteVXBKQqTEHwc1Grmr
         bWIBw/9EVyeqws1nbUXQCdddhI2MZbQruSEweZvERI0kDYPuyYmtJwJWnoXtpH8VI54d
         GGTN59qNOkcQf61hwIUiEj5Aa6IOjV6XSNB3IJWpB2BmAEKQD+eE7APq09Lqhv7rXvPv
         fmJEyg8YA6CsCF6GN5WT6qn7dSfFWdwKHgR4yHdLBRXiG9Dxe1sevrXxu+t1mSgbgLwL
         vdsw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=tUjRjX1y;
       spf=pass (google.com: domain of 42.hyeyoo@gmail.com designates 2607:f8b0:4864:20::636 as permitted sender) smtp.mailfrom=42.hyeyoo@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-pl1-x636.google.com (mail-pl1-x636.google.com. [2607:f8b0:4864:20::636])
        by gmr-mx.google.com with ESMTPS id c4si2060167oto.0.2021.05.18.04.18.23
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 18 May 2021 04:18:23 -0700 (PDT)
Received-SPF: pass (google.com: domain of 42.hyeyoo@gmail.com designates 2607:f8b0:4864:20::636 as permitted sender) client-ip=2607:f8b0:4864:20::636;
Received: by mail-pl1-x636.google.com with SMTP id p6so4889727plr.11
        for <clang-built-linux@googlegroups.com>; Tue, 18 May 2021 04:18:23 -0700 (PDT)
X-Received: by 2002:a17:90b:1949:: with SMTP id nk9mr4452592pjb.220.1621336702633;
        Tue, 18 May 2021 04:18:22 -0700 (PDT)
Received: from hyeyoo ([121.135.181.35])
        by smtp.gmail.com with ESMTPSA id j16sm3516074pfi.92.2021.05.18.04.18.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 18 May 2021 04:18:22 -0700 (PDT)
Date: Tue, 18 May 2021 20:18:14 +0900
From: Hyeonggon Yoo <42.hyeyoo@gmail.com>
To: Vlastimil Babka <vbabka@suse.cz>
Cc: Nathan Chancellor <nathan@kernel.org>, akpm@linux-foundation.org,
	iamjoonsoo.kim@lge.com, rientjes@google.com, penberg@kernel.org,
	cl@linux.com, linux-mm@kvack.org, linux-kernel@vger.kernel.org,
	naresh.kamboju@linaro.org, clang-built-linux@googlegroups.com,
	linux-next@vger.kernel.org, ndesaulniers@google.com,
	lkft-triage@lists.linaro.org, sfr@canb.auug.org.au, arnd@arndb.de,
	Marco Elver <elver@google.com>
Subject: Re: [PATCH v3] mm, slub: change run-time assertion in
 kmalloc_index() to compile-time
Message-ID: <20210518111814.GA114501@hyeyoo>
References: <20210511173448.GA54466@hyeyoo>
 <20210515210950.GA52841@hyeyoo>
 <41c65455-a35b-3ad3-54f9-49ca7105bfa9@suse.cz>
 <YKC9CeAfw3aBmHTU@archlinux-ax161>
 <20210518003859.GC80297@hyeyoo>
 <a1287a21-bcbb-77ed-c88d-f5890b785213@kernel.org>
 <71416382-2e4c-5e03-df9c-265fda41c2de@suse.cz>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <71416382-2e4c-5e03-df9c-265fda41c2de@suse.cz>
X-Original-Sender: 42.hyeyoo@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=tUjRjX1y;       spf=pass
 (google.com: domain of 42.hyeyoo@gmail.com designates 2607:f8b0:4864:20::636
 as permitted sender) smtp.mailfrom=42.hyeyoo@gmail.com;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Tue, May 18, 2021 at 11:28:17AM +0200, Vlastimil Babka wrote:
> On 5/18/21 2:43 AM, Nathan Chancellor wrote:
> > On 5/17/2021 5:38 PM, Hyeonggon Yoo wrote:
> >> On Sat, May 15, 2021 at 11:34:49PM -0700, Nathan Chancellor wrote:
> >>> This should work I think:
> >>
> >> compiled well with clang-10.0.1, clang-11.0.0,
> >> and gcc-10.2.0 with x86_64 default config.
> >>
> >> is the condition CONFIG_CLANG_VERSION > 110000,
> >> not including 110000 it self?
> 
> Good spot.

Thanks!

> > Ah sorry, that should definitely be >= :(
> > 
> > That is what I get for writing an email that late... in reality, it probably
> > won't matter due to the availability of 11.0.1 and 11.1.0 but it should
> > absolutely be changed.
> > 
> > I have not given Nick's patch a go yet but would something like this be
> > acceptable?
> 
> Yes.

You mean Nick's patch to added with Nathan's code?
I'm not sure we need this, but will add it if you can accept it.

I'll send fixup patch soon. tell me if I can improve
anything on it.

Thanks,
Hyeonggon

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210518111814.GA114501%40hyeyoo.
