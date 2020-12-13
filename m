Return-Path: <clang-built-linux+bncBC27X66SWQMBBO6T3H7AKGQED4E2SMQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3b.google.com (mail-io1-xd3b.google.com [IPv6:2607:f8b0:4864:20::d3b])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BC6D2D8FF1
	for <lists+clang-built-linux@lfdr.de>; Sun, 13 Dec 2020 20:21:33 +0100 (CET)
Received: by mail-io1-xd3b.google.com with SMTP id l5sf9573683ioj.17
        for <lists+clang-built-linux@lfdr.de>; Sun, 13 Dec 2020 11:21:33 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1607887292; cv=pass;
        d=google.com; s=arc-20160816;
        b=H94CIWU4WbqS+6rGYcfGzy1uSjIFXMOixxBUUrIIQpJSKngqEdwTNiUN+E6Fxw3dDY
         i6k8Sz/TjFZUD1vVRar8M/WX1IsOyY/tFHPXq89iEkt5pxVqvFgC2cQRSQkOy+m9Nopl
         cs7vKM3kyTVGQttuf2pYICYi8K/ejckXyGo2LXjOJZWw5zJpnZb5M9KfvUx8rmsKaAls
         ub5cq1CIx2+qw/0vwPFjHP9MkFf1VkgqIvV+/xHyAOiLaTYBDWUaeiD0gNoHxLC0w39E
         aqEF33Amr2QWoMocV3ix8SuNNnl9cKZI8tEZ3+FNKTD/iNYgChaRzffJUnnnOLrGgdpk
         TqQQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=NhIYKbJkoIWhAEQrgaMtVwkDxEdWFem02DZ0Zfceo5Q=;
        b=avAvbih25Sm9AOO7dP0PQRrNGZPaDrGOh5WkLaDp2Q+LgQ+X2QuTyDS655J/UY+ZxL
         ErBpdQfV1gTV3Q2S3H6oRQXr/Php7FtV8iktyFi/cFP0X0sNdujICbqR2MYnpq9RP1VE
         VFWQdCbSO88iBBnIRfzjwZE0mHVoAZnkcLD1uoE//7FO9L2Rwl+yPNBQ1/WIki0g/cY5
         daKuD2kg6KguVdd2jQn90W0OxU2PFSc5iqlGrtlLWsMnvtKQ4hQXnuRBv+qVZeyCvjsx
         VybjybGJUXy5voLi2QMnWhNEYjDdxHa6NQM2xo0lCmO682A8P4q4nVAYisuPlzptIT45
         duFQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=def49vyB;
       spf=pass (google.com: domain of trix@redhat.com designates 216.205.24.124 as permitted sender) smtp.mailfrom=trix@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=NhIYKbJkoIWhAEQrgaMtVwkDxEdWFem02DZ0Zfceo5Q=;
        b=AO3FTxxJEk0LLAR/ferslZ0Ko15QbEbONU3tc2gxPemXN7b/5X9zWIOBzknx0ODdNc
         SnTshsvz9bzmgj/W7QXoljcDR3QxqvDg5YHempgdhWaOdHfvWn3/1Gk/iCmT+zPOSbb8
         7r6U+B1helXUGQg+OzmAE/9hFMHkWmTSFMtwy5IulCywm9PMn4ye6a8Zn/O1CfpobsrH
         FcjSWgG8tP7mMoOn2u1QEwv1QQASPl9TiFaNQbmoJJfNiQepLdP8jRCKL5aWjQabAxWo
         XUN4kXhs/rz39cu0TyATPJpYw6pRcLgVl5I6T+KAXHj/517pdEYQZtd5KYwdgVguMrkF
         oeHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=NhIYKbJkoIWhAEQrgaMtVwkDxEdWFem02DZ0Zfceo5Q=;
        b=c3nHOYm72oD686EBXMD/6el74dVPtlGXIn07+egT3cVxI52+biBKq2GG3Sjo2RYs13
         CiIkEjCHufkgTaspiSSl1DG4XWCiV2+rDQpXdv9CH7VANlcoGVYwxWxs/ghEgAZZIUiw
         ldueQTe8MELQ4hnYdedQmXF2g5dmIAS7AZ4KLx2hCjf6dc7cFAyCBQJ2IbvHs7nXHHHd
         RZ64I8PBMOjYiMi4K3PKbd3jKhm72Nz+hhHADiVRXwOZmA/6HSxM3jENxVnTXSfT7EHg
         P7go/90oP1ny/2GE+dgRRaRWDRJqQlly++1mG19e6hHlf4V2o+CNASOLP8cq6QcJ+Qcy
         g4BA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530swpWGSlaWkIZ0jbrX/q6yuugeHdv6eHJhMCixdX71il8eraga
	FZxrN+/V+nAAhRVYlG9tNdQ=
X-Google-Smtp-Source: ABdhPJzjr2GlO9hm0uyWGubG7iYn7H2M1NuiAW/b8ANAovTbzsqQd7dfxlHLd9DALlCqWH42jUbusg==
X-Received: by 2002:a02:8790:: with SMTP id t16mr28630700jai.80.1607887291801;
        Sun, 13 Dec 2020 11:21:31 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6e02:d83:: with SMTP id i3ls3596572ilj.1.gmail; Sun, 13
 Dec 2020 11:21:31 -0800 (PST)
X-Received: by 2002:a92:de43:: with SMTP id e3mr30233136ilr.62.1607887291302;
        Sun, 13 Dec 2020 11:21:31 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1607887291; cv=none;
        d=google.com; s=arc-20160816;
        b=wIxlght+gAa5HuzDnHXTj4AzI6CO/ey8wCjWyiGMJEKQCPfRXr7h8AxxYzFUiLeEvz
         QF1E3xbwELaMtQDgONxMcLuIMrieH+jTaBsaX9l00rNe/RUSiCGtF0kxCqw/2znGIBet
         2hqdZTzqZNTrjyVB1WDDwgiLl/4YJwcjzByzT1e2RhfsAPtHkFkXAYeCMgz2aO5HOGjm
         9kpsPJI5fbKyVAo0YBHZEg9npJ8abEi1vjuspPI8cS14vRMe6pfpZJa6B78BvgdnhVQd
         f1EQ94ld7gTJufjtDPRdqER6+D9t5HyjrYHKjbVkXyCVj6Q7ROG2CS41V0lB95W5gBCf
         Y8lA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-language:content-transfer-encoding:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=UbL8Odta7ic6S0aPEogCx7D7h/B71ZIzRWsPMeenY94=;
        b=NvIMOR/Q7cm1URyIz7YDiq9+qWvVH1xwJNUFj+Ha/FZh1kV5URPFtOMxi3GYdWxA77
         PEw3e8k2juV1PIaADtzrYubWNoW/HEsFped4Mbg5u30811OtS9JpAFEz8O4EEgWo9fXr
         AcrHzTFHWf3FckQMyNvlglrvpJ3nL8ekgNXBeoX32dk1BRTsz9wTno87AC5zcvtKyBha
         /Zw0HGWvdf70vW6wojLQksITPb8MZkqK3WliMiE6ez3YeiBb2HUpP4uaXRe94Dh4ynLR
         iE76hK/Mm6B6WqApsbqzZHVJbGiwj97XnsrevzUoE/zHTHvUwR1eBy8hLH0bcG9Rq9Az
         JHxw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=def49vyB;
       spf=pass (google.com: domain of trix@redhat.com designates 216.205.24.124 as permitted sender) smtp.mailfrom=trix@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [216.205.24.124])
        by gmr-mx.google.com with ESMTPS id r17si1260284ilg.4.2020.12.13.11.21.31
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 13 Dec 2020 11:21:31 -0800 (PST)
Received-SPF: pass (google.com: domain of trix@redhat.com designates 216.205.24.124 as permitted sender) client-ip=216.205.24.124;
Received: from mail-oi1-f197.google.com (mail-oi1-f197.google.com
 [209.85.167.197]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-569-f9c6y7rxPW2nUefzBe-zRw-1; Sun, 13 Dec 2020 14:21:27 -0500
X-MC-Unique: f9c6y7rxPW2nUefzBe-zRw-1
Received: by mail-oi1-f197.google.com with SMTP id h4so7774340oie.9
        for <clang-built-linux@googlegroups.com>; Sun, 13 Dec 2020 11:21:27 -0800 (PST)
X-Received: by 2002:a9d:269:: with SMTP id 96mr16744071otb.174.1607887286782;
        Sun, 13 Dec 2020 11:21:26 -0800 (PST)
X-Received: by 2002:a9d:269:: with SMTP id 96mr16744053otb.174.1607887286519;
        Sun, 13 Dec 2020 11:21:26 -0800 (PST)
Received: from trix.remote.csb (075-142-250-213.res.spectrum.com. [75.142.250.213])
        by smtp.gmail.com with ESMTPSA id c5sm1967722otl.53.2020.12.13.11.21.24
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 13 Dec 2020 11:21:25 -0800 (PST)
Subject: Re: [PATCH] netfilter: conntrack: fix -Wformat
To: Nick Desaulniers <ndesaulniers@google.com>, Joe Perches <joe@perches.com>
Cc: Pablo Neira Ayuso <pablo@netfilter.org>,
 Jozsef Kadlecsik <kadlec@netfilter.org>, Florian Westphal <fw@strlen.de>,
 "David S. Miller" <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>,
 Nathan Chancellor <natechancellor@gmail.com>,
 netfilter-devel@vger.kernel.org, coreteam@netfilter.org,
 Network Development <netdev@vger.kernel.org>,
 LKML <linux-kernel@vger.kernel.org>,
 clang-built-linux <clang-built-linux@googlegroups.com>
References: <20201107075550.2244055-1-ndesaulniers@google.com>
 <4910042649a4f3ab22fac93191b8c1fa0a2e17c3.camel@perches.com>
 <CAKwvOdn50VP4h7tidMnnFeMA1M-FevykP+Y0ozieisS7Nn4yoQ@mail.gmail.com>
 <26052c5a0a098aa7d9c0c8a1d39cc4a8f7915dd2.camel@perches.com>
 <CAKwvOdkv6W_dTLVowEBu0uV6oSxwW8F+U__qAsmk7vop6U8tpw@mail.gmail.com>
From: Tom Rix <trix@redhat.com>
Message-ID: <527928d8-4621-f2f3-a38f-80c60529dde8@redhat.com>
Date: Sun, 13 Dec 2020 11:21:23 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.4.0
MIME-Version: 1.0
In-Reply-To: <CAKwvOdkv6W_dTLVowEBu0uV6oSxwW8F+U__qAsmk7vop6U8tpw@mail.gmail.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
X-Original-Sender: trix@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=def49vyB;
       spf=pass (google.com: domain of trix@redhat.com designates
 216.205.24.124 as permitted sender) smtp.mailfrom=trix@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
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


On 12/2/20 2:34 PM, Nick Desaulniers wrote:
> On Tue, Nov 10, 2020 at 2:04 PM Joe Perches <joe@perches.com> wrote:
>> On Tue, 2020-11-10 at 14:00 -0800, Nick Desaulniers wrote:
>>
>>> Yeah, we could go through and remove %h and %hh to solve this, too, right?
>> Yup.
>>
>> I think one of the checkpatch improvement mentees is adding
>> some suggestion and I hope an automated fix mechanism for that.
>>
>> https://lore.kernel.org/lkml/5e3265c241602bb54286fbaae9222070daa4768e.camel@perches.com/
> + Tom, who's been looking at leveraging clang-tidy to automate such
> treewide mechanical changes.
> ex. https://reviews.llvm.org/D91789
>
> See also commit cbacb5ab0aa0 ("docs: printk-formats: Stop encouraging
> use of unnecessary %h[xudi] and %hh[xudi]") for a concise summary of
> related context.

I have posted the fixer here

https://reviews.llvm.org/D93182

It catches about 200 problems in 100 files, I'll be posting these soon.

clang-tidy-fix's big difference over checkpatch is using the __printf(x,y) attribute to find the log functions.

I will be doing a follow-on to add the missing __printf or __scanf's and rerunning the fixer.

Tom

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/527928d8-4621-f2f3-a38f-80c60529dde8%40redhat.com.
