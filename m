Return-Path: <clang-built-linux+bncBAABBQGW237QKGQEG4V2BHI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x337.google.com (mail-ot1-x337.google.com [IPv6:2607:f8b0:4864:20::337])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E7F12EBD96
	for <lists+clang-built-linux@lfdr.de>; Wed,  6 Jan 2021 13:21:22 +0100 (CET)
Received: by mail-ot1-x337.google.com with SMTP id x15sf1296964otp.8
        for <lists+clang-built-linux@lfdr.de>; Wed, 06 Jan 2021 04:21:22 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1609935681; cv=pass;
        d=google.com; s=arc-20160816;
        b=dIFsIWF+TikfZRu9Y8J1S4BBlDN7lgdU/r5TnmABqouKLokFpGL3CLuYlmiIuZPM3p
         dO5H8iHQD3yvPL6OunxhOV8GbKaSTrmU9RcCgUlfjVf4aAyqm0+hLzo4Qt7ed2ZHgL3U
         Vtg75IStf1xmNH4QJaTO7p4HxqK8Pav1qi/Qfjek5NdqSBY8EAjjvymMoUpBJz1AnkvC
         uQb9zZLdEc8TVEVmojNh9X42/ie48DdjCBBh28vcONFofasDr8BZsOM+gB7wDr2/dk3D
         iJJcCh78uCZ4LcYlQo9I0AkYVyE+SE1BIO60GVqtp3drtDVJtDow9xrmCyt5yuu5iIQG
         tmdg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:subject:cc:to:from:date:sender:dkim-signature;
        bh=4M8WE+Ccfyt0qKyPYFNC4gvuQAdACDvGPqO+7dMusw0=;
        b=c/KYgSj7cm5pJwd9IxRiY85g6RhXuvodU24Q2KVO8mfT5W1qmAM7yE4rlf/w4y6m1k
         K5jfblITqWGwPpI6kbWRSoUueaLSEJYSezBncF1DZUeGfxLEAwqdLQ49MBRLCoxan5JY
         Q7WaFZBdQxPDDyV7AXtqyaAp5h/efSyUmtsQs0aeUXsCIVcUXkcl6XDyJpPv/e/Hts9Z
         BQS3PL/OgYb9dFcTKkcV/WL8k/1yMgtIkCH7vYkkfQVY7d3Br5UYJvF56chGKGiN6ssp
         VlcjBpGJONUD5xpydHXK6aqR1uuD0Yr7oAojibIp6V11P1XR7Eg1j/+uQBwU2pLA6l+y
         xA9A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b="EFqt/4YE";
       spf=pass (google.com: domain of kabel@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=kabel@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=4M8WE+Ccfyt0qKyPYFNC4gvuQAdACDvGPqO+7dMusw0=;
        b=GZzJu8JSS9kafx9f4J+x9ZUqFmTgHm7RyU1N/s20zBq8N0obV9682r+RjbZQPRRyWm
         Y4wPykfxVi+E+mPr3u9mkKr1QVZK25cwH629HhzhFsG1ZYES9zO93PtGUyH3ggotIYjN
         e1nofPG8gPMS1gfaQ1XMfQb44IjIp+fbNYWxU7TozpnL/ATeeHVrPkHkeKHtbzsJXWxX
         Q/7/eCxMMPaa41dRsN4IAtYJhrK13erv8/em+b8uta6Kzi+qeqMBxec+YwlWkNa9L42Y
         nKfXviQvKquc2OssWF25dvlceKAUcSRJKcfEPCiR6HrSRp9O/JF57aGpJvkdeenLnDBw
         1Wvw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=4M8WE+Ccfyt0qKyPYFNC4gvuQAdACDvGPqO+7dMusw0=;
        b=oGVVw5o7l68+GiIfolk+q/PG7ZUrxIkc+ZqwR+8QYnko6lz5cI/jZLlcNTRbw1eVoB
         B5cE2a9bKciHveIcLIftbOm8HcwucQgVQZAbOsbC3aVDisMhp788oWKQXVDA/B1hgVGF
         ndln74juIFBpVioqkILR1eDvldNe9qoFPpAJOLE41U90g6xuaSHcHUUiVjwkVWSCTY1T
         vsQF0mq4uaa15yszIuDFdMzRVpz0B2c9BrLSxzBF9ToggsJAig6QC3NEFGeiIwHD5bQh
         evU9R/3IwaqEkooyO3FQbX859+YShjLzsJO0f2BINVvqVjGSjK7ZuVtctZ7gYHMKl8Sg
         V00w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530jt2j14LgFyjKlwhg5eewb/pm4Bd24vONlMdEq7iYktic9vf4z
	osK4thNvq0+4rb+0n/h+0O8=
X-Google-Smtp-Source: ABdhPJy9h45lLlNulq4FzwQrOjqaSSZydQOlu1OaEmfOooogN77M5xihUlEhzOvxH1CWhADiHddMkA==
X-Received: by 2002:a9d:2663:: with SMTP id a90mr2938093otb.218.1609935680906;
        Wed, 06 Jan 2021 04:21:20 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:60cc:: with SMTP id b12ls745809otk.0.gmail; Wed, 06 Jan
 2021 04:21:20 -0800 (PST)
X-Received: by 2002:a9d:3e2:: with SMTP id f89mr2947710otf.278.1609935680510;
        Wed, 06 Jan 2021 04:21:20 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1609935680; cv=none;
        d=google.com; s=arc-20160816;
        b=OKVaYb67AVq9VDvqt/1AQgO2J3Dq+Pp5b3cvFZuQJfcsf8YKqi16v/qFnk4vG61RHT
         8frmbOUhufQWIOnP1CPntYDVUv3CYl3qw6MN+hxq8BBjy/i61F+mvFnjtOQmTY40HXWq
         2cucsVOfQPSZFur96cxoVrm6e6OImxNMQzLqvGMWrQOk57cdZjEJX/2KBgHkiWaqv1M2
         6ZFQrBVGSE+qh5OhNYlVev+BkjLd6HeY1BnuoyqzUCE3419iCl30C0oSJbwPxwsTTPqE
         VNEljvXNlSs9wl3QfdssagiDXAfYnVX9UvUKZUsMLgpKEepub1+jDtwjZIqL8Sfrb6WE
         puNA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=5fqd+F8GGf2pDjoRDjeyDwnS15GP/qEkex7sHyXxmbc=;
        b=nbdJ5Az+kfW7MfiqAESqf5i9VpXBL9TaO++4F4iTlwcc+/D3/lZxhAIzqMG6Kp9Rx1
         CTa0Rmq31mJhhMPEJ9VV3qBoA1DFFPNkmIH3cOqcu/BeHnjhAwZiGaIPeRTRcYMSq/uN
         VW8u+fbKgEKxs9JVRjTMcNbN3Z7Yr3mqpUPkpGjFjxU6ZEIG1fmNfQI2u5uqpoTEQ+xU
         ICXWncBjOKG+lsGm3LpZSmAj8MBraogM1Lgq6hB9B7PiYoY9wrAQuKicA9zev9BHfVO4
         EMDxetShDWUQUBy4BWTD9H0WBBFYeLbDB/ZJVh3werNJf28DONTVQKMpF+bh3JOvQqAu
         EmgA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b="EFqt/4YE";
       spf=pass (google.com: domain of kabel@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=kabel@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id f7si118298otf.3.2021.01.06.04.21.20
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 06 Jan 2021 04:21:20 -0800 (PST)
Received-SPF: pass (google.com: domain of kabel@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id B13ED2311D;
	Wed,  6 Jan 2021 12:21:16 +0000 (UTC)
Date: Wed, 6 Jan 2021 13:20:50 +0100
From: Marek =?UTF-8?B?QmVow7pu?= <kabel@kernel.org>
To: Pavana Sharma <pavana.sharma@digi.com>
Cc: andrew@lunn.ch, ashkan.boldaji@digi.com,
 clang-built-linux@googlegroups.com, davem@davemloft.net,
 devicetree@vger.kernel.org, f.fainelli@gmail.com,
 gregkh@linuxfoundation.org, kbuild-all@lists.01.org, kuba@kernel.org,
 linux-kernel@vger.kernel.org, lkp@intel.com, netdev@vger.kernel.org,
 robh+dt@kernel.org, vivien.didelot@gmail.com
Subject: Re: [net-next PATCH v12 4/4] net: dsa: mv88e6xxx: Add support for
 mv88e6393x  family of Marvell
Message-ID: <20210106132050.4f0875c7@kernel.org>
In-Reply-To: <20210106004530.22197-1-pavana.sharma@digi.com>
References: <20210105131343.4d0fff05@nic.cz>
	<20210106004530.22197-1-pavana.sharma@digi.com>
X-Mailer: Claws Mail 3.17.7 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: kabel@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b="EFqt/4YE";       spf=pass
 (google.com: domain of kabel@kernel.org designates 198.145.29.99 as permitted
 sender) smtp.mailfrom=kabel@kernel.org;       dmarc=pass (p=NONE sp=NONE
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

On Wed,  6 Jan 2021 10:45:30 +1000
Pavana Sharma <pavana.sharma@digi.com> wrote:

> Thanks Marek for catching this.
> 
> I will have a closer look and update the patchset.

I also sent a reply patch with subject
  "patch fixing mv88e6393x SERDES IRQ for Pavana's series"

it contains the changes necessary to your series. Please look at that.
You can apply it to your commit via
  patch -p1 <patch_from_marek.patch
  git commit --amend drivers/net/dsa/mv88e6xxx/{chip.c,serdes.c,serdes.h}

Marek

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210106132050.4f0875c7%40kernel.org.
