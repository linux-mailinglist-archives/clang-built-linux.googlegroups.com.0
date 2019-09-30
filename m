Return-Path: <clang-built-linux+bncBAABBRHPZHWAKGQENVPNZ3Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x23b.google.com (mail-lj1-x23b.google.com [IPv6:2a00:1450:4864:20::23b])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B440C290F
	for <lists+clang-built-linux@lfdr.de>; Mon, 30 Sep 2019 23:46:44 +0200 (CEST)
Received: by mail-lj1-x23b.google.com with SMTP id v24sf3406433ljh.23
        for <lists+clang-built-linux@lfdr.de>; Mon, 30 Sep 2019 14:46:44 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1569880004; cv=pass;
        d=google.com; s=arc-20160816;
        b=mr4Jz9Fnt5Pu604/wa+EZzO4p2CCrml5Uj9FDFhRqhMm7vG9c2aUiVeG382opRoaUS
         17LlAQrssb7AV1c9pGOa59gOCKO2XV7q92hzvqA7QzJU/bEvrLaZ1aMeUeruqSAw2In3
         4FI4KKcfgHGjArRqoDx8dkjA8A9KI9DJ/wc5ESI9XTcH54SdSgVXAiJSqUPDNxnOah+6
         a2PJmUslmg5POmIUcws9XqB/p6T5davaPP09oJpcvxo5WJRAkxeDJBbQZ2gV/pZVQQ1P
         Y/RtWSngGmXv9D4JtMVCMHT0MiJ/ZoploU9osLVRmJzdEeUpHg0Jy+3JvQVe8H2qp+my
         KEnQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:message-id:references
         :in-reply-to:subject:cc:to:from:date:content-transfer-encoding
         :mime-version:sender:dkim-signature;
        bh=dU+gdVpcDuwmcPfWzyyCtOWcjkKUVV7ABwIpAp56XZc=;
        b=oFW4eez95ZZwpqGpEKACTzLFOmsRf7z2qdi0KSa2dDmQLmxYzPyPJuXFyFOlSBLP5j
         UR6DgyUx927WdkhFC06x/6bdcvQwLdGUSqZ9NSEKHRDsI0jygCZsNvK9zZTZmLP5Z2kb
         TeT3XKK7qi/iyANuG22tUg8kqar9dQQrhwqyymzraYklfmAXedR1ESaXOU7sJ7lWUI+8
         Iyi8rWCxsoX2zdhTObSnDKULFDBYmUiyiHwajcG+CLV5+oENTg+hVKpGKDUxqc4RGLF7
         w1Umzamt3dN5+UNCadKXtW75katyonEJLGVP3zAmZWhY+icmJeLDePPW74bSKrkR27dX
         YpwQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of cengiz@kernel.wtf designates 217.70.178.230 as permitted sender) smtp.mailfrom=cengiz@kernel.wtf
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:content-transfer-encoding:date:from:to:cc
         :subject:in-reply-to:references:message-id:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=dU+gdVpcDuwmcPfWzyyCtOWcjkKUVV7ABwIpAp56XZc=;
        b=MM3zvof1pAEBPPgiOytJZB6oFJ+YLix9Dal7FbdJlNyJv9MWtvoJHENNHiQWHJqd7p
         QRWUaCCXBFpYCpLJxAjm4uZpf9JXlj3mQTNaQX5T7kfwIWBgmChpsaMocGOmnz58Ss1q
         XvP8TjvxaWAqnDk9/J5yBvVj9lchiwtBuLCZc7tPWlykbvrG12QH7n9lBPrtNAxLgu45
         vIVNG6EieHzs5DywF+C+vTIhzSjew4TZNVi865sWAQucti3IcBof1bkXBfEUUpfehHfE
         jutjdiCCIlxSVmG6Fl0LBVym9rTfzPxkIvi6R0kFVfUw4PYbzlJheTzo2tjX+lKa4s8w
         0hkw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:content-transfer-encoding
         :date:from:to:cc:subject:in-reply-to:references:message-id
         :user-agent:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=dU+gdVpcDuwmcPfWzyyCtOWcjkKUVV7ABwIpAp56XZc=;
        b=NZt0rAjEm4WgElZb/ebE9gQS+YlL8ZhelPbDB9DcrAH54ILVshl60nakMqiFopIVg2
         i275f0Rxl/2sto3zNuxDYhfrF0liiL12J37wG9MjDIh5apqj+GolmEUrdptTn1EwRwrQ
         rbt8MWSuO37i25/pz/jyi2W/5e5vD+Vi/0PEnamx8RtB5C6nuMx7QUtfXRnMOCF7mrJ+
         pN3CTikIUczHu78FMshTHQh4ECPgIuPbeWUHeecdtrh7N9LRbBSga+zUvLXD435Z7cqq
         WfDj5bL0BOLacJgScZOkAUhRCBmDEQjxz6Q1MpzBq/wAl0Tnc/qp0ZEjfyg9vXPrPxC4
         gB7g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWQ0odqRh/McTC+tv9B3Qx2ZX7KQRJkYlaAjaIacObkX+7HZugc
	wSDxvYxVqsbKezhF5Yuiwug=
X-Google-Smtp-Source: APXvYqzNQYzTZ6zTL6l5PcyrWSea+Egz4mJdMbKOToo89iVA1V7k/dzjSm4Tnwg0FH5ZjNup2KyWQQ==
X-Received: by 2002:a05:651c:1102:: with SMTP id d2mr13711318ljo.74.1569880004061;
        Mon, 30 Sep 2019 14:46:44 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac2:51de:: with SMTP id u30ls1275238lfm.14.gmail; Mon, 30
 Sep 2019 14:46:43 -0700 (PDT)
X-Received: by 2002:ac2:4359:: with SMTP id o25mr12669358lfl.147.1569880003769;
        Mon, 30 Sep 2019 14:46:43 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1569880003; cv=none;
        d=google.com; s=arc-20160816;
        b=XDRGFxGgrYjKgyQ0F/ijIDKA8DEBy4HHsNnaWY2ECtykc3APl54v3jGKUfGtnShHuq
         m/3q8bjb4NC0jYCmuUw/6noLqy8se98SQ2or/mkX1X8arNvbNsMRhriFg9jmlWMtLV/F
         aCaovJ9C1R8ROimOf1SE1HO9GFMtdsPDv5VOWUb2EfZ77PKWqm7iG+CtTGMCibYT9QDT
         SCMv0UJMMJ6En/mf7kzXMg67VFoaypSS3SkxKiMQpjNP+kAE4g5UZ6xohU86WTlrufhI
         imireiRHiESWpMea17JXjSbfL5c0uw4gPTNoymNlCp58AGj98uY3uKssKy1UY3pV9B5k
         oyJQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:message-id:references:in-reply-to:subject:cc:to:from
         :date:content-transfer-encoding:mime-version;
        bh=MJouuprwckS/+S+p63L6vflYLKB0AZu14aTvAFKMhOc=;
        b=cQes+AZm6RE8jUuWptzJrxL6GztmI6tvDoEV812iYLf56fN6xydmii8MRDNwKR4iyg
         cEXmNou9paVcFmFCqtaTzIOn1TqRotvl6d+bHY+A1v07dJchbfoZfdaM69ekUA16IB15
         JJKP/eLn5uppoY1ouVZrW3voYcygdEO8pfIqvJtJKvwhZEGYiBXj4xUvDGHfaCgfVnRA
         riebApDw9C4oQDhJ1K2XPP3bCsXxFBeFiKQwOR6+iUVSP/xTfEhiynnnOObi5ek7EiLT
         8w4/4gn5aavrhHnG78I6/fkZKaGo/A8YOQ6vpg5MQY5tmo3DWbM7X5ogQv/NZO9hdlRV
         PT0g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of cengiz@kernel.wtf designates 217.70.178.230 as permitted sender) smtp.mailfrom=cengiz@kernel.wtf
Received: from relay10.mail.gandi.net (relay10.mail.gandi.net. [217.70.178.230])
        by gmr-mx.google.com with ESMTPS id z9si804169ljj.4.2019.09.30.14.46.43
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Mon, 30 Sep 2019 14:46:43 -0700 (PDT)
Received-SPF: pass (google.com: domain of cengiz@kernel.wtf designates 217.70.178.230 as permitted sender) client-ip=217.70.178.230;
Received: from webmail.gandi.net (webmail21.sd4.0x35.net [10.200.201.21])
	(Authenticated sender: cengiz@kernel.wtf)
	by relay10.mail.gandi.net (Postfix) with ESMTPA id 78A55240003;
	Mon, 30 Sep 2019 21:46:40 +0000 (UTC)
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: quoted-printable
Date: Tue, 01 Oct 2019 00:46:40 +0300
From: Cengiz Can <cengiz@kernel.wtf>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: linux@roeck-us.net, clang-built-linux@googlegroups.com,
 jdelvare@suse.com, =?UTF-8?Q?Tomasz_Pawe=C5=82_Gajc?= <tpgxyz@gmail.com>,
 Nathan Chancellor <natechancellor@gmail.com>, Henrik Rydberg
 <rydberg@bitmath.org>, linux-hwmon@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-hwmon-owner@vger.kernel.org
Subject: Re: [PATCH v2] hwmon: (applesmc) fix UB and udelay overflow
In-Reply-To: <20190924174728.201464-1-ndesaulniers@google.com>
References: <CAKwvOd=GVdHhsdHOMpuhEKkWMssW37keqX5c59+6fiEgLs+Q1g@mail.gmail.com>
 <20190924174728.201464-1-ndesaulniers@google.com>
Message-ID: <e37463661a4568332bb9625eb777c5d9@kernel.wtf>
X-Sender: cengiz@kernel.wtf
User-Agent: Roundcube Webmail/1.3.8
X-Original-Sender: cengiz@kernel.wtf
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of cengiz@kernel.wtf designates 217.70.178.230 as
 permitted sender) smtp.mailfrom=cengiz@kernel.wtf
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

I spent quite some time to rewrite applesmc but I couldn't finish.

Thanks for the loop fix. I did my reviewing part, if that matters.

> Reported-by: Tomasz Pawe=C5=82 Gajc <tpgxyz@gmail.com>
> Link: https://github.com/ClangBuiltLinux/linux/issues/678
> Debugged-by: Nathan Chancellor <natechancellor@gmail.com>
> Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
> Build-tested-by: Nathan Chancellor <natechancellor@gmail.com>

Reviewed-by: Cengiz Can <cengiz@kernel.wtf>

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/e37463661a4568332bb9625eb777c5d9%40kernel.wtf.
