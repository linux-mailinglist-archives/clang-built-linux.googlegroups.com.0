Return-Path: <clang-built-linux+bncBDTY5EWUQMEBB3XJ7D2QKGQEO6S3YTA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3c.google.com (mail-yb1-xb3c.google.com [IPv6:2607:f8b0:4864:20::b3c])
	by mail.lfdr.de (Postfix) with ESMTPS id 44DF71D45C0
	for <lists+clang-built-linux@lfdr.de>; Fri, 15 May 2020 08:21:35 +0200 (CEST)
Received: by mail-yb1-xb3c.google.com with SMTP id y189sf1510298ybc.14
        for <lists+clang-built-linux@lfdr.de>; Thu, 14 May 2020 23:21:35 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1589523694; cv=pass;
        d=google.com; s=arc-20160816;
        b=aHhMxOaaxNYk6ibiIiRuQHLc+hSZWDGXVII4MmkeOOqOFfZ1IElL1ARNL0T+u+hB14
         10yuf7qv5fxzpYDA79QdiwVNh4jHYEdW8QqPQHGtQK752QN7I1mDH+W2GCwgUk0//j9F
         hyqpx5XYaP3jA5klf07mKojZ0gKoMms7IfgKSDqpTuBxJcoWOyWgFkDqiARECJyQOVMe
         PCHKmeqa5le0pkujcAWdqMrJ8YmYHWoaTtIqnAQGXA7S157hVDESIGyo6CTXCe+t6m0z
         /HfLpgRRrwZgcMc3eHQ401elioFULtjRKUJIx0qg8zdwezBFxX2b7x0AEsZ/9Pj5p/l1
         qomg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=Yx0Nfv9jSdzGi16M1Jq6A+DBKnZ2RWWrL8MrMZpGDIs=;
        b=yyXhwlatgEx1pmrz3T0nybwjDMblrEllGR3RIk7PaomcFWRmYorh8sMeQ3rtGZVZfn
         Z3Ql1jDE3MbZLsyIYyxhO4Cwc8spK/mAt+x7L0iWY/AcxYRb6V/lqFw6eefippiM07TM
         uZiy8/aIABGVC29OSM4FZL4avUojQZQNdiooFbJh7HiIhhPhZ/F0QIY7UsidB3G0RAQU
         AlGJ4TH5UgUlCqGWskFRURfIwvnzfZR8nXXsd7x/6TgCJ/iGZG8SNUSNmecbmUV6nbSP
         7kvNI5PU/Wr8TOEkVnkPVpQ6h5zGE9kd0yVdZ1xZ1LLgN8q6mXwBzGfL1rMjMaqcyUHv
         9DoA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of herbert@gondor.apana.org.au designates 216.24.177.18 as permitted sender) smtp.mailfrom=herbert@gondor.apana.org.au
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Yx0Nfv9jSdzGi16M1Jq6A+DBKnZ2RWWrL8MrMZpGDIs=;
        b=kBsO0UWGEt7695ZWApzmBklOzzEx67b1xvMAe4VUXOf/QyosFTFIPc8FHZ3jAUTyoK
         fzymZRtMsw8zj/ywQEolHAbqgDaIfdFr73JkyUXLlhiZeU5kq32GHHMY7UZFhgJNjtwa
         kTjt9xFwVNznyE1MA+FSZp+v5/jR6QHlhU85qkgxLLL93lwOijuHdh1UWFLz/M8/ps2x
         IxNmR/gxeOZg8M2fJFZhWwc7qEpIqFjyJ3As+WDN0rXc+61Rpws1wZDW+pKjHAS5Kjrj
         qq4wfvAUzWs3fwLTDPczrvGUJ/v4knqXOdwJS6LGd7VZtI8c4bmeIZQbrxgBiM5xK/NT
         HZqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=Yx0Nfv9jSdzGi16M1Jq6A+DBKnZ2RWWrL8MrMZpGDIs=;
        b=a3fdSl0nWw8cAm+pw59fttFdu2OoOH4zY6tW+JSfLquVGYnESUxtKbWcG81KP6NClt
         y7RLP+75uAIsYCe+HGCfalW6ZoqLsu8fLQTZxb+vzLtuIz4hOahTnf3UOz0Bt6yifm0T
         eJZcsciS4nyhe8T1r4JfcB4LGtCdNqnodIW8+znQOKyNoETDNzLRTX0Bek9chCqFCEYY
         IL5cSCl9sDwyLxtybxnoMqI9fzwuW9oYiVNpKkMFhQmMfREtAg30okiKCLwjRhG3Qnat
         8cTubb3zxNo5CNUbftXPUjRxBXMkxDMMQVF67xmu4Nnj7AkuOOq3tBfBuLX63elIxzv7
         11dA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530Mv+b7QKhSNjLR9KxtTW8vF438HsVWr36lwYjyDDbUP8uB2zI9
	YK4459Bqk8NFaNul2dIxilc=
X-Google-Smtp-Source: ABdhPJzL6WMBJrufQeGVt2p8bwgbauAFxLBzljoPGZD4bkGGJXxs+S1IoFfqk2sQUqKGMcGNdVYTRw==
X-Received: by 2002:a25:b8cb:: with SMTP id g11mr2892711ybm.189.1589523694293;
        Thu, 14 May 2020 23:21:34 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:4743:: with SMTP id u64ls504720yba.11.gmail; Thu, 14 May
 2020 23:21:33 -0700 (PDT)
X-Received: by 2002:a25:be81:: with SMTP id i1mr3110169ybk.184.1589523693791;
        Thu, 14 May 2020 23:21:33 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1589523693; cv=none;
        d=google.com; s=arc-20160816;
        b=yFyToIoz8R875o6caxQgu80/5Pr/NZqiy0L0yr/2FMP66d249v5YtUVyXnHIML2NWJ
         Mag5AYKP8wm7DO/l9eLFNLuFs9ktoSvFENc8Kfh30kwpx4NhAD8IcTKZlftQYXcoZTVc
         OkMfDks3UWIM8WlZ661n7hzWTGOiMXyrszG6DK26mOE9bNZjU2+Oa6yBFTd536CcHW1L
         ny9s8x45HqxxFAT7PfR8S1Y1+qd7SDMZOXv72su51Kc6djp+lVonkZ0tQqvmTDktj13d
         csVu6K6b6tLzDQQP9GMNGXPRNHQX8EjdN30OfHMka1l12SVcp6pUSXKZVheQN/hNX88h
         5toA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=gRAdOrfoSu89kKaXhxjv0pa776XAkgv5QbCBRvvoa2o=;
        b=zIFzqk0xY8I62oXhGbgWBokEbfmqxjNutgLoMSqySI7aTmA9EzBFoJMKsWTM/9S2Zz
         /Wy4kaAhcBFqob0+InSG0wjd3LgvoY7VbgPIcU7um9i/Qj0Efw6ZUmZHisCV7sj1t9sw
         pPcC2oa2HgtiPpybs7BE6HgetG55hiGJEARmtpmDKWHL+4VSVwF1PZ/CW8l8mdzww5S1
         jSD0lzmSkSl8LlImO35Y80tJTWxPQf+fohfQhsRVXhY4VQyAR2YuJGPeH4Njls4/1UcH
         o1i5ngezcozO944u/uzRYnIbCCfxXShpYQa8AiNI2z/9ZQgj4YWgMUonYU//A+JR9dHd
         aRvw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of herbert@gondor.apana.org.au designates 216.24.177.18 as permitted sender) smtp.mailfrom=herbert@gondor.apana.org.au
Received: from fornost.hmeau.com ([216.24.177.18])
        by gmr-mx.google.com with ESMTPS id l199si11042ybl.5.2020.05.14.23.21.31
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
        Thu, 14 May 2020 23:21:33 -0700 (PDT)
Received-SPF: pass (google.com: domain of herbert@gondor.apana.org.au designates 216.24.177.18 as permitted sender) client-ip=216.24.177.18;
Received: from gwarestrin.arnor.me.apana.org.au ([192.168.0.7])
	by fornost.hmeau.com with smtp (Exim 4.89 #2 (Debian))
	id 1jZTiL-0007Ua-GG; Fri, 15 May 2020 16:20:58 +1000
Received: by gwarestrin.arnor.me.apana.org.au (sSMTP sendmail emulation); Fri, 15 May 2020 16:20:57 +1000
Date: Fri, 15 May 2020 16:20:57 +1000
From: Herbert Xu <herbert@gondor.apana.org.au>
To: Arnd Bergmann <arnd@arndb.de>
Cc: "David S. Miller" <davem@davemloft.net>,
	David Sterba <dsterba@suse.com>,
	Horia =?utf-8?Q?Geant=C4=83?= <horia.geanta@nxp.com>,
	Eric Biggers <ebiggers@google.com>, linux-crypto@vger.kernel.org,
	linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com
Subject: Re: [PATCH] crypto: blake2b - Fix clang optimization for ARMv7-M
Message-ID: <20200515062057.GA22330@gondor.apana.org.au>
References: <20200505135402.29356-1-arnd@arndb.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200505135402.29356-1-arnd@arndb.de>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: herbert@gondor.apana.org.au
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of herbert@gondor.apana.org.au designates 216.24.177.18
 as permitted sender) smtp.mailfrom=herbert@gondor.apana.org.au
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

On Tue, May 05, 2020 at 03:53:45PM +0200, Arnd Bergmann wrote:
> When building for ARMv7-M, clang-9 or higher tries to unroll some loops,
> which ends up confusing the register allocator to the point of generating
> rather bad code and using more than the warning limit for stack frames:
> 
> warning: stack frame size of 1200 bytes in function 'blake2b_compress' [-Wframe-larger-than=]
> 
> Forcing it to not unroll the final loop avoids this problem.
> 
> Fixes: 91d689337fe8 ("crypto: blake2b - add blake2b generic implementation")
> Signed-off-by: Arnd Bergmann <arnd@arndb.de>
> ---
>  crypto/blake2b_generic.c | 4 +++-
>  1 file changed, 3 insertions(+), 1 deletion(-)

Patch applied.  Thanks.
-- 
Email: Herbert Xu <herbert@gondor.apana.org.au>
Home Page: http://gondor.apana.org.au/~herbert/
PGP Key: http://gondor.apana.org.au/~herbert/pubkey.txt

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200515062057.GA22330%40gondor.apana.org.au.
