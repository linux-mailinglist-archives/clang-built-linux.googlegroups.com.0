Return-Path: <clang-built-linux+bncBDEKVJM7XAHRB6WZ2P2QKGQEEGKG6SY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf3f.google.com (mail-qv1-xf3f.google.com [IPv6:2607:f8b0:4864:20::f3f])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B3B51CA29A
	for <lists+clang-built-linux@lfdr.de>; Fri,  8 May 2020 07:24:11 +0200 (CEST)
Received: by mail-qv1-xf3f.google.com with SMTP id q4sf648295qve.19
        for <lists+clang-built-linux@lfdr.de>; Thu, 07 May 2020 22:24:11 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1588915450; cv=pass;
        d=google.com; s=arc-20160816;
        b=F54pbiCxa30Sp1VEL85EU/dQxcg2QiJdYDA8bhh9sWqQtGnpMZgvkNTM68MiM5C6ji
         kbBEazxEZLDe3R7U2AEhXSKs7KvPANEjzOoZ2X2z38nBwwqyVgEfEppOZpJ6iBMFOJF7
         dEOjpzvSAxnK6g7DiixuWWhE9Q1rk6BSoF0sWrwVl1xCwXgAe3ww+CAW44+cC7a2jT0b
         1+96uITeSrNEwfXbO1lo2nozNnGNtIpEtWAmwgUjN0BWIuLGDVemGEcsrIdwZ6B0ga71
         4UtzVsRy0TUSBXTocslBXdYbfectEZ942zu3OKAm2SOFgzeuotzrA0GNBx3S6tk3CsD8
         CIOQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=e+c92/0/tIBiW0gbBp0LFZx3jMaUWsGwfBWqN+H6Of8=;
        b=fsLADM7aWSt1MN0IxaKK+BVimZYT7mEchpbUN+938WoCpQU+BOOJi6AZTeNPo9DGrp
         7W/L6dmbQG7+0SXZGBLs1zBw7A9mSZ7snaJ1xUHFRKJG9bYKKD687EbY50uWLjjJs70T
         cMxWZSaE0oJz9JgkEOz6UECmd4qLt5DnX9bT8ADTbU1NChIeqtKpBo5YrYMWL41GU60M
         bsXSkhURqi3PhdWb0OuoTHxrRn5ENcDdb+UgweLwvEkMaQmvrJb1xegsVrjAgCHuSeGt
         1r4ZriDbp99Uu8G6i8uHICAOJ8AN9t4rFvpTerUJy5Yh9GpANB5A19altdPLeK6r/Xmr
         x0Gg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=neutral (google.com: 217.72.192.74 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=e+c92/0/tIBiW0gbBp0LFZx3jMaUWsGwfBWqN+H6Of8=;
        b=DOF+y41OxSDV3Uns0p8BUEUM2oRwtM209xRIiHuM0K0hYSKDbe6xM+4gAFeUAYRJ7A
         K9oFYPhEievXT+gylx2LGrPFEMRybUY/tfMX1VMpnkO3uH6dLYy3VqdtL+dNWazXRkzJ
         0TBDulQiBYAqd+5k+9dxUQPOB2V+g68ks2qvysr3vWfvXioYQVtpZwivptQSbU80SUly
         Pqaq5OrOMrBw9ek3hD2VDUl8wfiAGdq0WSVLcs3Ke6GuGwGG1m6yT8t7m6K2zRyPsqlx
         8S4nWJ8pd778tMMiLb2h6TzEUzokN50WhU97cEThpWNnSbDav0/c7/CtBkS7JxzHi+VN
         4j8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=e+c92/0/tIBiW0gbBp0LFZx3jMaUWsGwfBWqN+H6Of8=;
        b=IO/cvgrnyO6qwtBCMnJq3nAHb2dqW6Ld6whS6oxk9aKrX20kx5OVBCIXR3LlAsEuV/
         geBb7Uizy7rKGYi+Mbmn8MR6w4HG68JxT2Mcvo6w9p3EGm0MH8tzHXtcoi984vZmvJFU
         5ebN92rTuCVwK15Mf4Is+kpw4Bixzk+Mb+3BI72Lll7fUA1KB7V8KJISsitG3AQBB8qf
         C3rxpVnnC64OhuOe1umIsvxLL+IUV1bO1mWNuDYPXG+TtCsq5s91BxKKHDmA2b4e9KXJ
         7sJ2tSieUsJHP/A8DRgJsENhUUuCLMZbj3omKhIMEKgrGE+FGxptwMr1SlroLktSa92k
         6DYw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0PuasJxyisq0lKTgT2hN2Y+SWXoMGYvK+Euk8c5EZ6J9dDTibC0SH
	Kg1PaEARoGrrWU337FR42RU=
X-Google-Smtp-Source: APiQypKFCKpft/GhPgfUlIpfqVz2t9pZb8eTuYaQS5IexxfGjThZChkIC0E+8JVu6NebaEUDE+0omA==
X-Received: by 2002:ac8:6f07:: with SMTP id g7mr1096489qtv.250.1588915450371;
        Thu, 07 May 2020 22:24:10 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:468d:: with SMTP id g13ls312998qto.11.gmail; Thu, 07 May
 2020 22:24:10 -0700 (PDT)
X-Received: by 2002:aed:2661:: with SMTP id z88mr1056266qtc.387.1588915450048;
        Thu, 07 May 2020 22:24:10 -0700 (PDT)
Received: by 2002:a37:7383:0:b029:ca:ed5b:a650 with SMTP id o125-20020a3773830000b02900caed5ba650msqkc;
        Tue, 5 May 2020 13:51:53 -0700 (PDT)
X-Received: by 2002:adf:ea83:: with SMTP id s3mr5713960wrm.264.1588711913420;
        Tue, 05 May 2020 13:51:53 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1588711913; cv=none;
        d=google.com; s=arc-20160816;
        b=k5Fe8z8q17Q+zm38O8QdkMqtATHr2Ow5YTqEdP79VyZRhXkBi/HD7i48hnpMT1fuHy
         VfukgH4dcsEq3gBBrCvEfDXbU2aBPKUd7gXBJBXNrFQHCz7ypIwBhukBsQ7MuhfOMaF1
         Nh4qS0aku56dLilSd09wdx3cxHR9SKkh+9nFfZ36Wqx9sv++vg+l0lU+kKnIjepKhb/d
         oAOEctpbnyLjg/UNIa0pShPgJQBSRDrxqQ7rEf8ibt+ol2gbIoxQmKIpmW9COaGe81Qa
         0BVfBQyFBV41L0oMe2kQRz2BZZ/CoM0HXrE6zyT59QZpzi0/xoR6EvIUOBR7jpQf9/5X
         YMKA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version;
        bh=85yl+KCFNDE4o2KJIgalQ8mhSMV0ZDAn7YZrXKPOe+c=;
        b=HBPq7ipgERZAGLFH50Ht3sfF8IhmBKPm7M5NyG8l2upsazybF6hPqRjQ2g0C6K/Geg
         ZZz7LUaqNLdK50HOEC/W1SYnvSDj3ctg4Y+IE9IQnfWjHpgJTedi7tiO1bStkjQUEGfZ
         xz7XYV5ZX+gbZF72nOXMQ6u5KVNFenZG3mmx7HA6JqbCHF+mU1d00tQ5sKEIp1D/iaGO
         j+EW3YCyUfzfJIGGu+we4Uno3durlhEpbGTTSqfJ02PzdT7iOarLNn/odi6pq6bVaguP
         NbjZ2gGQxegEXds3jeSEu9n87gwtra237o1bu9PGDE/NqHKFUjJ+VVfoFF0jIJ55GOOa
         KnLA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 217.72.192.74 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
Received: from mout.kundenserver.de (mout.kundenserver.de. [217.72.192.74])
        by gmr-mx.google.com with ESMTPS id o186si206396wme.4.2020.05.05.13.51.53
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 05 May 2020 13:51:53 -0700 (PDT)
Received-SPF: neutral (google.com: 217.72.192.74 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) client-ip=217.72.192.74;
Received: from mail-qk1-f181.google.com ([209.85.222.181]) by
 mrelayeu.kundenserver.de (mreue107 [212.227.15.145]) with ESMTPSA (Nemesis)
 id 1MxVbb-1jBmXR3b5d-00xuCw for <clang-built-linux@googlegroups.com>; Tue, 05
 May 2020 22:51:53 +0200
Received: by mail-qk1-f181.google.com with SMTP id t3so303547qkg.1
        for <clang-built-linux@googlegroups.com>; Tue, 05 May 2020 13:51:52 -0700 (PDT)
X-Received: by 2002:a37:b543:: with SMTP id e64mr5487687qkf.394.1588711911720;
 Tue, 05 May 2020 13:51:51 -0700 (PDT)
MIME-Version: 1.0
References: <20200505141327.746184-1-arnd@arndb.de> <CAHmME9oTO7DiWCXoeCBjmPOBMoZQ2hUhHjZ4_oi-nVP_9pRpSg@mail.gmail.com>
In-Reply-To: <CAHmME9oTO7DiWCXoeCBjmPOBMoZQ2hUhHjZ4_oi-nVP_9pRpSg@mail.gmail.com>
From: Arnd Bergmann <arnd@arndb.de>
Date: Tue, 5 May 2020 22:51:35 +0200
X-Gmail-Original-Message-ID: <CAK8P3a3vno7BYwJZna8w1spRCcou2veXSbQZefnUbPpswkRGzQ@mail.gmail.com>
Message-ID: <CAK8P3a3vno7BYwJZna8w1spRCcou2veXSbQZefnUbPpswkRGzQ@mail.gmail.com>
Subject: Re: [PATCH] net: wireguard: avoid unused variable warning
To: "Jason A. Donenfeld" <Jason@zx2c4.com>
Cc: "David S. Miller" <davem@davemloft.net>, Greg KH <gregkh@linuxfoundation.org>, 
	Herbert Xu <herbert@gondor.apana.org.au>, 
	Linux Crypto Mailing List <linux-crypto@vger.kernel.org>, LKML <linux-kernel@vger.kernel.org>, 
	Netdev <netdev@vger.kernel.org>, WireGuard mailing list <wireguard@lists.zx2c4.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Provags-ID: V03:K1:691x25REAkfS1Oof2aIi/Tq86FbTB0rGwt/81YKHsYGe+Ts/JuD
 8ORDqRoJU4eiD/KO+IgRLF0DNNwQbFURiJzlQFbJQ3ana/MnJLdXIUGjkihjEUWaIP6r0d7
 hbLd0nAviUtL5zz/lykKLYbnMWSUfIYdlIkvwUC67cCOYerpA84KNf+53QBW7g6lGYl5H9s
 e5IITqoEJqK4JxNbTosCg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:NlDjOrA7TO4=:FAlbhL17TKstYjmvpnk7jD
 kVEd3XMZWyhtRUwAISKKfNtjXwrUCr7wSV6L5K7TGReJMZDdtcU6VECn+aVsjCUPS4e7u/tj3
 kebM8RukJFcFoNfHqe4+YTzZbRpjdMT82iW6TAMxbj9bL9JHliFhVwTQ/HdQUhUENP80zWEn7
 ZfGwSDJFYJBrdmZK4WKW9XqT+/eC2IXxW1774MKKWQsbgEzV/q7cxkEbI69BuYse/jybk44j3
 LUYUe2Vk4LqHfkwQxBwKaBHj3M4wN4HaDdH1+Do8bnyTQ9vmrwU6tHDXOwUEgsKtx8tO8mQD8
 6rvWaNQ/Q8w1wORhwXr8+YwrYZqF52TDLNTyUnY158rspIqldVTuXMO/F+3Cl7Ghy48GBO7KM
 WV7443/fb8WEMmHv0SK91QBjrz+2iKDL2q4SQXAQ/emtCCPdldohEVhedJ6cT6Mbvq22DpZ1s
 OyMfMqSuyApvYKaRR+BNcifVBX7TQTIRyUfEXwqymvC+mZQeVFbxSDVhhsuo6e3qrq8LMkPGu
 eI14fF1Vr6dTm4SWulhb6a/RqYdwTOuRSWVZJaYqOJKUVPpQU3OlvbPH2IC2eQw76XP+NgVDd
 1dm9hA4EIBwlAUaa6hjFvqf8uiKFFn6yZQ7lhqG7Wa+dxsT8eVKqTyazW6INE6Dwmd4zauxzI
 DIIljeDbDyp2i7po+EOxnPXKv/eOCjrKvICLZ9/ZND6yKVaao8COXGt7Ud45cojtO7WBZcFq9
 dJamh/NAFmPDzB56uAb0EtNFmdBvlFOHClGIQH89pKoYF3NEK2DK7Xu3R5WOdPuTop9vKxhiI
 0/nOOFg9FYt82YhSsEDk6yAlS6g4ki5B6uMUVIBcrEFVJLaqoI=
X-Original-Sender: arnd@arndb.de
X-Original-Authentication-Results: gmr-mx.google.com;       spf=neutral
 (google.com: 217.72.192.74 is neither permitted nor denied by best guess
 record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
Precedence: list
Mailing-list: list clang-built-linux@googlegroups.com; contact clang-built-linux+owners@googlegroups.com
List-ID: <clang-built-linux.googlegroups.com>
X-Google-Group-Id: 357212215037
List-Post: <https://groups.google.com/group/clang-built-linux/post>, <mailto:clang-built-linux@googlegroups.com>
List-Help: <https://groups.google.com/support/>, <mailto:clang-built-linux+help@googlegroups.com>
List-Archive: <https://groups.google.com/group/clang-built-linux
List-Subscribe: <https://groups.google.com/group/clang-built-linux/subscribe>, <mailto:clang-built-linux+subscribe@googlegroups.com>
List-Unsubscribe: <mailto:googlegroups-manage+357212215037+unsubscribe@googlegroups.com>,
 <https://groups.google.com/group/clang-built-linux/subscribe>

On Tue, May 5, 2020 at 10:07 PM Jason A. Donenfeld <Jason@zx2c4.com> wrote:
> On Tue, May 5, 2020 at 8:13 AM Arnd Bergmann <arnd@arndb.de> wrote:
> >
> > clang points out a harmless use of uninitialized variables that
> > get passed into a local function but are ignored there:
> >
> > In file included from drivers/net/wireguard/ratelimiter.c:223:
> > drivers/net/wireguard/selftest/ratelimiter.c:173:34: error: variable 'skb6' is uninitialized when used here [-Werror,-Wuninitialized]
> >                 ret = timings_test(skb4, hdr4, skb6, hdr6, &test_count);
> >                                                ^~~~
> > drivers/net/wireguard/selftest/ratelimiter.c:123:29: note: initialize the variable 'skb6' to silence this warning
> >         struct sk_buff *skb4, *skb6;
> >                                    ^
> >                                     = NULL
> > drivers/net/wireguard/selftest/ratelimiter.c:173:40: error: variable 'hdr6' is uninitialized when used here [-Werror,-Wuninitialized]
> >                 ret = timings_test(skb4, hdr4, skb6, hdr6, &test_count);
> >                                                      ^~~~
> > drivers/net/wireguard/selftest/ratelimiter.c:125:22: note: initialize the variable 'hdr6' to silence this warning
> >         struct ipv6hdr *hdr6;
> >                             ^
>
> Seems like the code is a bit easier to read and is more uniform
> looking by just initializing those two variables to NULL, like the
> warning suggests. If you don't mind, I'll queue something up in my
> tree to this effect.

I think we really should fix clang to not make this suggestion, as that
normally leads to worse code ;-)

The problem with initializing variables to NULL (or 0) is that it hides
real bugs when the NULL initialization end up being used in a place
where a non-NULL value is required, so I try hard not to send patches
that add those.

It's your code though, so if you prefer to do it that way, just do that
and add me as "Reported-by:"

> By the way, I'm having a bit of a hard time reproducing the warning
> with either clang-10 or clang-9. Just for my own curiosity, would you
> mind sending the .config that results in this?

See https://pastebin.com/6zRSUYax

       Arnd

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK8P3a3vno7BYwJZna8w1spRCcou2veXSbQZefnUbPpswkRGzQ%40mail.gmail.com.
