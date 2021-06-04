Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBLFV5GCQMGQEYSJG33A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43b.google.com (mail-pf1-x43b.google.com [IPv6:2607:f8b0:4864:20::43b])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D51239BDAD
	for <lists+clang-built-linux@lfdr.de>; Fri,  4 Jun 2021 18:54:06 +0200 (CEST)
Received: by mail-pf1-x43b.google.com with SMTP id g17-20020a056a0023d1b029028f419cb9a2sf5700623pfc.4
        for <lists+clang-built-linux@lfdr.de>; Fri, 04 Jun 2021 09:54:06 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1622825645; cv=pass;
        d=google.com; s=arc-20160816;
        b=paawvX+QD/uBaLkwft5XQ/C+VeLd1rneTKB3C8XiehPDO7WIIMBc1LwWRcpZ5EwKW6
         8DBHK3e++A8wN46xv8uloIuQdBej3J7xRNTQjxsg9VUBqZ6QU9h7OmRfwSp2emamOzOe
         Gns+k8hedZIZ5B9TognD+dU++zzL0AQ4wibm1XEOcZYaNfoyzDZwM6uX0+B6s8KJukZm
         70NKP1ljqhABdByqUYSve6RzUlHDp/mQpRBDuhOUnjrJOXSabU2hnvrt3BI3gECypT8C
         ZHsfsSLd4uB9k1eEvo+8epEP+X0q4jCDO5UG3v9vaoxIk9yUjYMojVS4YQBW5LlVs5Pp
         cCjg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :content-language:in-reply-to:mime-version:user-agent:date
         :message-id:from:references:cc:to:subject:sender:dkim-signature;
        bh=oaICwItgHOV2E3F6GBmq9iUj3rO/58/Xke41LsjZ0vU=;
        b=HmMKPI+Pp0O4iAqX9Gyzgv+j/qudT+esJMRMf8xEsNwTXqYMgsz6W5oDENrIqEWN10
         1daO/rxaPn1k9NQVyI3oH43sIObhmtEVWrsA0kzywGGClb8yABKMBRL2ypkJlR62HtqO
         q/kR92csrbp7txDkRIqan2BEL+Mhlg+5iLn7HTzevEOlT9IzH7i6vCinrHzAuIJUTfbT
         EWf9MHtlwgdOsgeN6PPAsfqe+kjducD2odlmqWuFySBpzUNmUskUDFy8gNtnkvb+gj6F
         03YqzxN7ppJnoybFRZ7eQpB6cZXfeg3FJGHMbTBtBhTQ79lvePIeWjqMese2h9LJQCvO
         wxsQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=VMcCoxmF;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=oaICwItgHOV2E3F6GBmq9iUj3rO/58/Xke41LsjZ0vU=;
        b=Z9WgE4kl7qFrvWbeo/2GwrAB+rjbExzC+uD2/OhlF+4mmyCpWjYpcMbpUE+Jb1kJ13
         2+Z9M2VNnV1ikekkgBbTR+qMVXdJoFSVL6Qu1ex5ARDL6PA6mCnI3HDYcmu4fotZ3J4K
         GflhJKJhsJoN0opWgjNFEiPVailquyYHYkyYmdJpCjznMA3dV02n5KV5dBP8l8rC9hl1
         BpIuRIJoPz5b+tvN0H39NrIWUxLtON5hSbGa/Wc0fc+YKwc1JeLJ79nGvgKbpwJIswfw
         sYYKD558OywuHUu0qqKVXYUxtstrD8FyaDtFCSXRoc9JYW8pmo3JCtuVI6Hw3i/2E3+5
         W/AA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=oaICwItgHOV2E3F6GBmq9iUj3rO/58/Xke41LsjZ0vU=;
        b=dBtfu6K+yzm+FKTeiByVEpvKkY3zl8CCiOQvLpa+wg89+CSnKelsRTKef2gfOdzNu+
         MKobWLPNGvebqAaKAfgsFW5JU4N7jI4Act17ClWFD76UYgxNl82bSMJXuZpr+g+UZyDE
         kKlCBQlXK/nWk1j4GXnY2lFoY2RA9Ss2LIUxRfjeVZvPIT8lAdDJrdaqX495Bfyl7nC5
         tKiVjHNKUUKqZLckk8E90U0WtCB98X7m2ykk9QCErVRKDtG83wV+unxONwIjtR/g1Tbo
         rCGPiMuSV7MTgIVba8apx0i6t3iE/Qs2SPIgb3HXQVY5xuVgar1X75GJDjOxOvcCLw+H
         FYeA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531OjI8l7DW49YVhHei+Yc+IQ+H5TaHWIKH4rLTXxPZ5ZNx9RVOW
	CBgDC6D40WN2PnbV4R3Y+rw=
X-Google-Smtp-Source: ABdhPJzYpaeYwcXPYv+hHMAYEiyJFnsHD3rOCOJI7mT9zMiT6oqEmuWwP2rtYRzvRqpPd4eZypB9Gw==
X-Received: by 2002:a63:4145:: with SMTP id o66mr5982598pga.4.1622825644909;
        Fri, 04 Jun 2021 09:54:04 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:aa8d:: with SMTP id d13ls4157871plr.5.gmail; Fri, 04
 Jun 2021 09:54:04 -0700 (PDT)
X-Received: by 2002:a17:90a:7c43:: with SMTP id e3mr1833009pjl.5.1622825644355;
        Fri, 04 Jun 2021 09:54:04 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1622825644; cv=none;
        d=google.com; s=arc-20160816;
        b=gJIYMD5H+dpbALJoDYDGpdt3darOMSmPUdeOL9l/LVKoSYyJY6usynAY3pBhdcHvE6
         7XXIfsDS/YCqsFa2bZ1/eMV+VV6bS8W1keU+MPRzoMgxn4gHGA6bg96dgd1oLgUMnbub
         99hvNoAyq31xeGSm5dJ1phtwYa2mb0+Nj8d91glmh+MQbs0cy+VCHX3nfu2x8TzkMaSJ
         OiyfRcHF0rX79yx9YIsHOKb1wqNWVfKhj7KYH8FdOE2Ml4BtvHCEh0kTYilGAT81NURO
         VnAkRM4THi8pRbyyfoc7ndRAt7DcKrUf2PY3b6Ev0BJ9V7FjBxnLDvC22AhOo/XEuKx8
         HLUQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=dorOJhKfjiLW1AqnyT37bNgEdk5LtYJ5Ih/KIdssPJY=;
        b=oYsGva+PIn6wjsYWAVhoMIr+sBv93CODt9SdPsCP1nmQJa37eucQ5tMxqYGwFxztfw
         vgAyg0Ed/cOvz+cV9URPPvMi6EeWwWtg3NI4PlM7QtllIvd5KOUFcsTDV5NFH1hK0mGJ
         9fwLCaRSseJqdYVNcd9gqERA8IgWAj/tvCQ1OTdYScwWsN09XfzDeHGlvel5SOn1CBva
         gTliu9gtoarqRYkJQPTlrJQ3nzYWBPJrT60R0vQ2A/8S2CJzLTBxN6dd4vIv8CPy6658
         34YLjRyphL5x8yzuXrWP7CPKWA+Ek5PaOLsIkt/AWLEp7OB94RwxiNk682mknk+DousL
         iFeA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=VMcCoxmF;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id lp10si266292pjb.2.2021.06.04.09.54.04
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 04 Jun 2021 09:54:04 -0700 (PDT)
Received-SPF: pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 4107A61287;
	Fri,  4 Jun 2021 16:54:03 +0000 (UTC)
Subject: Re: [PATCH net-next] net: ethernet: rmnet: Restructure if checks to
 avoid uninitialized warning
To: subashab@codeaurora.org, patchwork-bot+netdevbpf@kernel.org
Cc: stranche@codeaurora.org, davem@davemloft.net, kuba@kernel.org,
 ndesaulniers@google.com, sharathv@codeaurora.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com
References: <20210603173410.310362-1-nathan@kernel.org>
 <162276000605.13062.14467575723320615318.git-patchwork-notify@kernel.org>
 <1f6f8246f0cd477c0b1e2b88b4ec825a@codeaurora.org>
From: Nathan Chancellor <nathan@kernel.org>
Message-ID: <2145e27f-c8b3-ef4b-793a-841cb2f7e60f@kernel.org>
Date: Fri, 4 Jun 2021 09:54:02 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.2
MIME-Version: 1.0
In-Reply-To: <1f6f8246f0cd477c0b1e2b88b4ec825a@codeaurora.org>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: nathan@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=VMcCoxmF;       spf=pass
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

Hi Subash,

On 6/3/2021 10:15 PM, subashab@codeaurora.org wrote:
> On 2021-06-03 16:40, patchwork-bot+netdevbpf@kernel.org wrote:
>> Hello:
>>
>> This patch was applied to netdev/net-next.git (refs/heads/master):
>>
>> On Thu,=C2=A0 3 Jun 2021 10:34:10 -0700 you wrote:
>>> Clang warns that proto in rmnet_map_v5_checksum_uplink_packet() might b=
e
>>> used uninitialized:
>>>
>>> drivers/net/ethernet/qualcomm/rmnet/rmnet_map_data.c:283:14: warning:
>>> variable 'proto' is used uninitialized whenever 'if' condition is false
>>> [-Wsometimes-uninitialized]
>>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0 } else if (skb->protocol =3D=3D htons(ETH_P_IPV6)) {
>>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0 ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>>> drivers/net/ethernet/qualcomm/rmnet/rmnet_map_data.c:295:36: note:
>>> uninitialized use occurs here
>>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0 check =3D rmnet_map_get_csum_field(proto, trans);
>>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 ^~~~~
>>> drivers/net/ethernet/qualcomm/rmnet/rmnet_map_data.c:283:10: note:
>>> remove the 'if' if its condition is always true
>>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0 } else if (skb->protocol =3D=3D htons(ETH_P_IPV6)) {
>>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 ^~~~~~~~~~~=
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>>> drivers/net/ethernet/qualcomm/rmnet/rmnet_map_data.c:270:11: note:
>>> initialize the variable 'proto' to silence this warning
>>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0 u8 proto;
>>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 ^
>>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
 =3D '\0'
>>> 1 warning generated.
>>>
>>> [...]
>>
>> Here is the summary with links:
>> =C2=A0 - [net-next] net: ethernet: rmnet: Restructure if checks to avoid
>> uninitialized warning
>> =C2=A0=C2=A0=C2=A0 https://git.kernel.org/netdev/net-next/c/118de6106735
>>
>> You are awesome, thank you!
>> --=20
>> Deet-doot-dot, I am a bot.
>> https://korg.docs.kernel.org/patchwork/pwbot.html
>=20
> Hi Nathan
>=20
> Can you tell why CLANG detected this error.
> Does it require a bug fix.

As far as I understand it, clang does not remember the conditions of=20
previous if statements when generating this warning. Basically:

void bar(int x)
{
}

int foo(int a, int b)
{
	int x;

	if (!a && !b)
		goto out;

	if (a)
		x =3D 1;
	else if (b)
		x =3D 2;

	bar(x);

out:
	return 0;
}

clang will warn that x is uninitialized when neither of the second if=20
statement's conditions are true, even though we as humans know that is=20
not possible due to the first if statement. I am guessing this has=20
something to do with how clang generates its control flow graphs. While=20
this is a false positive, I do not personally see this as a bug in the=20
compiler. The code is more clear to both the compiler and humans if it=20
is written as:

	if (a)
		x =3D 1;
	else if (b)
		x =3D 2;
	else
		goto out;

Cheers,
Nathan

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/2145e27f-c8b3-ef4b-793a-841cb2f7e60f%40kernel.org.
