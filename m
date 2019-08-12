Return-Path: <clang-built-linux+bncBC5KPPH4YUKRB56LYXVAKGQEKFNA6BQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x53c.google.com (mail-ed1-x53c.google.com [IPv6:2a00:1450:4864:20::53c])
	by mail.lfdr.de (Postfix) with ESMTPS id CBF3889F4F
	for <lists+clang-built-linux@lfdr.de>; Mon, 12 Aug 2019 15:13:27 +0200 (CEST)
Received: by mail-ed1-x53c.google.com with SMTP id x40sf7403097edm.4
        for <lists+clang-built-linux@lfdr.de>; Mon, 12 Aug 2019 06:13:27 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1565615607; cv=pass;
        d=google.com; s=arc-20160816;
        b=d/PhjQQ7kLx7l9OEs632z5JBIaL+bEWZBJvR18/QoSxGsCS1nweWPHFdcpXKq0Um/1
         p8qvfkO+fLQcoaeonYQl75kFK+PFpLjBBJ3G2XGPDdSlp8v+nVD2qLrOznKLknIuzW9W
         FBsEq1K+xT5O5927x7ugrLimR5YHo4jlHEVS0I9aE+lhje+r09wF4u64HOV2pluN+fMZ
         TqvN3Zcp54qKSXXdybL2jFGntTrnknHIroZGcMrrzETyvFJ6CCaFSRLdZ+I7Bmu9BSqU
         R/RM9ViHWfnQpL0JUEU3g/o4RkBp/nslefE1AIxLC7dnly6zpzGQ26SYTQgP0IHUShPS
         uLTA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=OSayH4X89FI+XSV+9uWw6bmPY8skQh2CXdYnkBi8K8s=;
        b=DLZ8QRbKNeWgvlixT+EZyoPHAz70432OenVLiF6ZgID23pCpX6xCBfHSFpxNwOh1se
         pglpP0TeCvWio00XreFEnvcZH7XH+4X2hAyHsI9YBgN/HXWUI8CBIKfDZ7+tCXqeAoAl
         hax5uEK9lIoCa4Pb2mMs0yj41o6UMvZ0KG3cN2UHjHu1gIXmTJmBRdij4wOzfhEkVaRd
         pKeK3PAGLIMdE44oGPTLbVEcwqHXMhDK3wUBQMl5hxhYBfJszuNGTIH52CoZsT7ZqegS
         Ga60M1heX5/wM2hkAVc0hL/lpwtwu9+A4Q4ISQPjkwPEAJOIuHA1wLN+WrKM7eLSTzmI
         hgBA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of guillaume.tucker@collabora.com designates 2a00:1098:0:82:1000:25:2eeb:e3e3 as permitted sender) smtp.mailfrom=guillaume.tucker@collabora.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=OSayH4X89FI+XSV+9uWw6bmPY8skQh2CXdYnkBi8K8s=;
        b=BwNBhwdr0Nbl2j6RuhCVKEt4W1gvaIjs+Y+3iwOlo1icrCYJmftLCkxcQf+hiH1A54
         8iSBVJ+Fq6XqJLU35J9eUnCd8v7aTPZigCKRiTPVIYgcSGjCyRUcrtU9dxgUDqCK8sBg
         MA0XXPDu4anYJ9YT3K51J8t99cBmCdpLSq0+PPHBUShF+GPdHt10sUbB31+/jXKvCT/i
         MmpNe1MLGo3/8R30YyCrS3nFqdRDcK1pSYD100Odd7zZj55In2qs31fi97hXdThF0++J
         75oxqMB7d41JkNymJaD0mxsQI5MAM4zsbAvaBJAbHBUV81tK7WgdGvDhE9SJdTPUe3ZR
         p51g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=OSayH4X89FI+XSV+9uWw6bmPY8skQh2CXdYnkBi8K8s=;
        b=O8xF7S8qDADr+QwoMLzZDwy9WxBFjRQTR2URezTlYfAZaOgxFj1qercbn0FjwRpsAT
         GuYEfjEjNHGNyziLQbN3VhTcftxLFamDIvxB6/XOcGEyd6fzcnoFQoZUqRFOq9YAGOSD
         NyWHhUVgYUkJiIsgnGZUteF/+zJqXS7vywSRvbRy+iNwvAQzyiQbr1k/ySUA8v1IIuUB
         MJIis+/pTDLKlvoy7qMbZICJD0pzfJ7DUJIqNF7Rgpjnse5l+jDEJXHw64ma0lOdFeCb
         Ppdk8b4WuieHdE9RuXz1wWjoKBn0li3TIgm9xtR8z+wczStoU4oGkt7yJAbY5m80IBow
         ZDAw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWM7TuCcA9YCVv5nuhqXlaOcpOeeUWyE7B1D32AscZq1K0Blete
	4WvELg/iODqThu3QMZTKctI=
X-Google-Smtp-Source: APXvYqznMe9jCK/39KzCvqGzjisDmxiB68mxGxhOyQSGbprUc5tOYmTCFeEzwYqWSfgdeeBfZl3zKw==
X-Received: by 2002:aa7:cf0e:: with SMTP id a14mr17765315edy.149.1565615607624;
        Mon, 12 Aug 2019 06:13:27 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a50:9583:: with SMTP id w3ls29885641eda.5.gmail; Mon, 12 Aug
 2019 06:13:27 -0700 (PDT)
X-Received: by 2002:a50:a4ef:: with SMTP id x44mr37095156edb.304.1565615607097;
        Mon, 12 Aug 2019 06:13:27 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1565615607; cv=none;
        d=google.com; s=arc-20160816;
        b=0J0sU44ZmVFE391/cEQ4AFJV4L5r0JCO6NWDnm2IdWidQ8JUtGRPteGQko9oOmNZyz
         S8Z7YEYzUhbupgcj0Fabs+o+Ptirmi91ocb/qsk+EXKOojS/qHGomjeKgIvXGoJabT02
         4NgY37Z5ZnLPv/9fzB9N3FvG8D9hfVfevR6BdupHpkE2QEBeaepzwCIWKFSpdrkp80bz
         T/lDiC15uz6aQ4lE/Br5gGOrKO1yW9XOof5eKLnZ9fa7Whqi9CMqUXg5zMs42VHGTHxJ
         SAMV88TRyciKP028x5Sij+Xb4/vJxDwB9tAT5mcp7sDqBXmpJC+Odq23v6j7DlJ0oBfX
         VAIQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject;
        bh=FGKtRyklTrH8jPa6l0FdLb6pzUYYonLzKhu/RFRamsA=;
        b=molNcGOlhT+wehcQGms2QrAUm5uBXGLCOniveVEpUVk3t+e01LT+JMheb1Eo3eIfkJ
         x7BuAlWuUDSIwhMfk6PqQc3MgsRvZfY5dmSSx9Uad/8dYkz2ZL4pqhHARnBVb4i9ZJiG
         /k/J7no0O87cM6nho3HqRbL1ZN5S0eRkEkRFf+eUsgQEyCaLhvjERhdYJg3EhYZGMZOH
         ErDYXnyLIJ3h9putHMNfRmxSJWWvDge/EtLrKtzA+MlJHaseV0iLrDSmpCtie+rTAFHH
         s+k5TkDqYpXDwEu/V3SYmUVOww/JnSEoaPbDQ5B/0mGqJ5eGcolUwyGpxHg7Y/M2KssR
         8YNQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of guillaume.tucker@collabora.com designates 2a00:1098:0:82:1000:25:2eeb:e3e3 as permitted sender) smtp.mailfrom=guillaume.tucker@collabora.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=collabora.com
Received: from bhuna.collabora.co.uk (bhuna.collabora.co.uk. [2a00:1098:0:82:1000:25:2eeb:e3e3])
        by gmr-mx.google.com with ESMTPS id d22si266355edq.5.2019.08.12.06.13.27
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Mon, 12 Aug 2019 06:13:27 -0700 (PDT)
Received-SPF: pass (google.com: domain of guillaume.tucker@collabora.com designates 2a00:1098:0:82:1000:25:2eeb:e3e3 as permitted sender) client-ip=2a00:1098:0:82:1000:25:2eeb:e3e3;
Received: from [127.0.0.1] (localhost [127.0.0.1])
	(Authenticated sender: gtucker)
	with ESMTPSA id A818A285330
Subject: Re: [PATCH RFC 1/1] kbuild: enable overriding the compiler using the
 environment
To: Mark Brown <broonie@kernel.org>
Cc: Masahiro Yamada <yamada.masahiro@socionext.com>,
 Michal Marek <michal.lkml@markovi.net>, Guenter Roeck <linux@roeck-us.net>,
 Nick Desaulniers <ndesaulniers@google.com>,
 clang-built-linux@googlegroups.com, linux-kbuild@vger.kernel.org,
 kernel@collabora.com
References: <cover.1565297255.git.guillaume.tucker@collabora.com>
 <3885ccdcbdbe83eb367e8344584df944adc76e34.1565297255.git.guillaume.tucker@collabora.com>
 <20190808223512.GT3795@sirena.co.uk>
From: Guillaume Tucker <guillaume.tucker@collabora.com>
Message-ID: <0d0a5126-73fb-8815-f4d6-d60506dea0ab@collabora.com>
Date: Mon, 12 Aug 2019 15:13:20 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190808223512.GT3795@sirena.co.uk>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
X-Original-Sender: guillaume.tucker@collabora.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of guillaume.tucker@collabora.com designates
 2a00:1098:0:82:1000:25:2eeb:e3e3 as permitted sender) smtp.mailfrom=guillaume.tucker@collabora.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=collabora.com
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

On 09/08/2019 00:35, Mark Brown wrote:
> On Thu, Aug 08, 2019 at 11:06:52PM +0200, Guillaume Tucker wrote:
> 
>> @@ -412,7 +412,7 @@ KBUILD_HOSTLDLIBS   := $(HOST_LFS_LIBS) $(HOSTLDLIBS)
>>  # Make variables (CC, etc...)
>>  AS		= $(CROSS_COMPILE)as
>>  LD		= $(CROSS_COMPILE)ld
>> -CC		= $(CROSS_COMPILE)gcc
>> +CC	       ?= $(CROSS_COMPILE)gcc
>>  CPP		= $(CC) -E
>>  AR		= $(CROSS_COMPILE)ar
>>  NM		= $(CROSS_COMPILE)nm
> 
> Why only for CC and not for anything else here?

This was the smallest possible change to fix the issue and what I
tested for this RFC.  Of course, if using ?= is a valid way to
fix it then it would seem logical to apply it to the other
variables defined there.

Guillaume

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/0d0a5126-73fb-8815-f4d6-d60506dea0ab%40collabora.com.
