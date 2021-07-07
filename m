Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBB6PS6DQMGQE3WM36TI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43e.google.com (mail-pf1-x43e.google.com [IPv6:2607:f8b0:4864:20::43e])
	by mail.lfdr.de (Postfix) with ESMTPS id 6AF7F3BED4B
	for <lists+clang-built-linux@lfdr.de>; Wed,  7 Jul 2021 19:42:32 +0200 (CEST)
Received: by mail-pf1-x43e.google.com with SMTP id t18-20020a056a001392b02903039eb2e663sf2000640pfg.5
        for <lists+clang-built-linux@lfdr.de>; Wed, 07 Jul 2021 10:42:32 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1625679751; cv=pass;
        d=google.com; s=arc-20160816;
        b=MOCZgtmItpIaMUpU4ISwzuFsklELJ/uxwfEm+hx1iD+l5EbAouWQietXyGJKvKLXe2
         fU5WH7UhX69FQlyKm/IBSTSolQDxGeKZo0rUsa3ne9fDjRocVpCoDtPFXGJL0r7yWPd/
         F9R+rQRbWQ5IKwuwpFqptVC6Q/GVd8tRWrJdfi19uu/GppMIikZKaze4JxfJYZZFIPXK
         /hW/bFxFl9bXj4yXuIPqeMcYqVHp4up2JhHHRjsyXmEa4j2F9vW12Isp6cAn+ecJHot1
         xOQCh0PXoh0n5luJZAMS2bR91Hkc2sM36yFBzX8MAkZOUCgbM7K7E7YbGrqdkkt69MzL
         XZVA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=oIk7PwopQpyutTf9TxFFjMWXljBagy7C+s3IoFQWqYc=;
        b=kiS3LfhuZ9wTc+dKWlFy1MHkaMAxjTAELYeSpv8qooE8/0ETIntFTq9VsrOppTfffy
         Rouur751aYSDHi3i4/j62LecuSOjQ9yILp9EdcD6UxczXh2a3sn2+0Qia1lBLKBUC8Rr
         gaLbu1KKHb2kVNTM45UChJDM1E+vecAcp0IV+UVeyBzbhJWukjAkseyNu8BKDIhkiYup
         2UUGsbCuJxnM4REX3RHpyfRI6+V9Ok+7UGoBfycm+y+H+SD4zG4g4L4wK790y2eZ6Lkn
         XJ8BirnC8RJp9RounCkrcWTd+e0cI7wOE/iN2QfP1dcF6NR9CN3Wim3tFtHRVQKK7HC6
         dmAA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=hMbfu1g6;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=oIk7PwopQpyutTf9TxFFjMWXljBagy7C+s3IoFQWqYc=;
        b=USH3lMyJiJ76+IPSL7qFdSvpF3lX0KWMcDrXnrBwY/9f/rurIcCtTZywjRL7gIkSKa
         P5O0wVd+kwtfME0vC4miVlSWfOujJVtRjtxq9I9HbCThUm/faIN0kSW5Fvb5ZbuGY9UX
         plw7pZw/C7SaERTTxg/RctGIAO7UyUEziO2bpS0hlT3uQX+dhXxHUySAU0O+pK5mAPiV
         cuLed9WkZVUvc06BOFuU89OA287N+flX5IS/YRoNV0ODyOQr4xk7pGlHsA9capyG0TI2
         dIRjJpcEsfRuneNpyF7BvhdSL2y7ln67oSjMUNAiDRw6T5NpTnz4s1FKQKOpvoJITZD8
         jSpA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=oIk7PwopQpyutTf9TxFFjMWXljBagy7C+s3IoFQWqYc=;
        b=leiKNC0+80ujU26CP/En3jOzW2cztkP+7q7TcvKvQe0mKbbYqn+ENF6CPF0e6WXaeV
         XkIF6P8tlU8/wAltUVR7TF6Z4tpgkBtO8m4lzBih2em2opNXfpRAQUNbi02ESvK5RxLB
         Xuy+YHl0TKlEfmXpCmJbBMZJx9ccA6z8ykdObeMKnfqvnnPSKSHGqIrVCQzx6a9ZMXOQ
         VOPefkpF7YnjYdSKZbvt1Do0N2f466v3xvDBl8zsH1vVOkliMXUxedJFo64xC5rXjf2u
         fH4cs8fX0JBFL/I1BsFyt42NCMTwJBi1wIyBVV0ZhMAdzFWu65LmVipDdyVJppH34Obq
         j0zw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530sgcsPOrr1f6qIjqpScfwaXjOoWFeyF+SANjvZ/P0cQKr7Fbab
	RWmYYc2KiciNndJKanmsti0=
X-Google-Smtp-Source: ABdhPJy9RvFETseOp4hDS193RoheTSSods+qsG1nNntVNTpzWYC6fcHpr2zBoRGByGKX6/zLIiTpRw==
X-Received: by 2002:a63:114d:: with SMTP id 13mr5834779pgr.180.1625679751156;
        Wed, 07 Jul 2021 10:42:31 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:8994:: with SMTP id v20ls4297791pjn.3.canary-gmail;
 Wed, 07 Jul 2021 10:42:30 -0700 (PDT)
X-Received: by 2002:a17:902:860b:b029:103:b23b:f1c3 with SMTP id f11-20020a170902860bb0290103b23bf1c3mr22192838plo.34.1625679750572;
        Wed, 07 Jul 2021 10:42:30 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1625679750; cv=none;
        d=google.com; s=arc-20160816;
        b=KaVKs0NzNxi/xT4QjsDKD0qGjKTy1Zej7+k4BlNgDWSeTN3mUxldKJPb70tY3ntic7
         lPCXfCyA/JwF1F/oIxn2E3N2QeMSoC6ghB8irKHNIYVb532LLzTqa3Qy6iGb943/UTyl
         RoFZwyfeWxov5V/hXpOUz9ffH0NrFZ5k+sHUxD1g7P2H5j2ssi31D6bnQso5dnm9bvdT
         0hcby1TEOmMAU2pcQyCxVNuRttuEB1RIiGgiGeXjALSPCucxsMph3fJBCfqjTxxxYzl1
         V7QlCWlW6TctfjwnA2bG+KqPjSDRIawlbl8NX2V3XDrFBBRIgsxsLNZgHEpr8sobLnYq
         9beg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=lMrxpMvBZXKUckRRseDcZCGvz7oxJYAhHIuN/xT3W0g=;
        b=maOo4N6mkfj/3hszskbpLplxdef0wwLWlONVy6Jn0B30HgqWqxOLM997Y9m0S8WMVy
         UBpK4dprmsSlcTjHJR++4dAn3ILDfKrhoNUgTxQUPHFY0u8kUFBv/0uV4V0y/DOKshQS
         V0zGsoO1sjzX43m3cb9Qa9WD/GWXd/nQvwXjKDmDU2ONerctSwMuWfFYxSBHC/HbjzN4
         XjcjzeJvhIqbZGl16DbZFJnUJ6V1GXPZZ+S4/rRdh2rpE0h0Tkpm+nG5ARYFqbWwGlii
         5Q4342tglAgpR68CPaHAls53CPHqHLztOhPANjUiwuqn/nQoL3/6n457m3aRhcWdSv7y
         7AjA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=hMbfu1g6;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id g7si821598pju.0.2021.07.07.10.42.30
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 07 Jul 2021 10:42:30 -0700 (PDT)
Received-SPF: pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 6A55B61CC9;
	Wed,  7 Jul 2021 17:42:29 +0000 (UTC)
Subject: Re: how can we test the hexagon port in mainline
To: Christoph Hellwig <hch@lst.de>, Brian Cain <bcain@codeaurora.org>,
 Sid Manning <sidneym@codeaurora.org>
Cc: Arnd Bergmann <arnd@arndb.de>, linux-hexagon@vger.kernel.org,
 linux-kernel@vger.kernel.org, Nick Desaulniers <ndesaulniers@google.com>,
 clang-built-linux@googlegroups.com
References: <20210623141854.GA32155@lst.de>
 <08df01d7683d$8f5b7b70$ae127250$@codeaurora.org>
 <CAK8P3a28_0KJpcLRQrDhFk8-ndxmfk7-Q2_qcRRiYkyh-NNZUQ@mail.gmail.com>
 <08e101d76842$94f78a60$bee69f20$@codeaurora.org>
 <20210623151746.GA4247@lst.de>
 <CAK8P3a2bG64ARjpwQ0ZhQ9P0g8B-=AwcHHAbYBXBS4B6Fy9pQw@mail.gmail.com>
 <YNQE0YJzC2xmWg+2@Ryzen-9-3900X.localdomain> <20210707141054.GA24828@lst.de>
From: Nathan Chancellor <nathan@kernel.org>
Message-ID: <1ee8fc44-3e8c-91c0-7909-a636757dbda4@kernel.org>
Date: Wed, 7 Jul 2021 10:42:27 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <20210707141054.GA24828@lst.de>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
X-Original-Sender: nathan@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=hMbfu1g6;       spf=pass
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

Hi Christoph,

On 7/7/2021 7:10 AM, Christoph Hellwig wrote:
> On Wed, Jun 23, 2021 at 09:06:41PM -0700, Nathan Chancellor wrote:
>> I've reported this upstream with you on CC:
>>
>> https://bugs.llvm.org/show_bug.cgi?id=50838
> 
> I've not actually got any mail from that Cc..

Sorry, I directed that at Arnd. I should have kept you in the loop too.

>> Christoph, that toolchain should work (I had to install libtinfo5 and
>> libc++1-7 on Debian Buster):
>>
>> $ export PATH=$HOME/tmp/clang+llvm-12.0.0-cross-hexagon-unknown-linux-musl/x86_64-linux-gnu/bin:$PATH
>>
>> $ make -skj"$(nproc)" ARCH=hexagon CROSS_COMPILE=hexagon-unknown-linux-musl LLVM=1 LLVM_IAS=1 defconfig all
> 
> hch@brick:~/work/linux$ make -j4 ARCH=hexagon
> CROSS_COMPILE=hexagon-unknown-linux-musl LLVM=1 LLVM_IAS=1 defconfig all
> HOSTCC  scripts/basic/fixdep
> clang: error while loading shared libraries: libtinfo.so.5: cannot open shared object file: No such file or directory

Hmmm, is that with libtinfo5 installed (or whatever the ncurses-compat 
equivalent is on your distribution installed)? I had that problem on 
Debian until I insta

Brian/Sid, it might be worth flipping LLVM_ENABLE_TERMINFO to OFF during 
your cmake configuration so that there are less dynamic dependencies and 
it is easier for more people to run the toolchain. Android's clang team 
did the same thing:

https://github.com/android/ndk/issues/574

With https://reviews.llvm.org/D42055, there should not be too much of a 
sacrifice.

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/1ee8fc44-3e8c-91c0-7909-a636757dbda4%40kernel.org.
