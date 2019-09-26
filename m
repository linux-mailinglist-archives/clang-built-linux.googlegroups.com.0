Return-Path: <clang-built-linux+bncBC55V4M54EJBB6F2W3WAKGQE4TL77EI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x73e.google.com (mail-qk1-x73e.google.com [IPv6:2607:f8b0:4864:20::73e])
	by mail.lfdr.de (Postfix) with ESMTPS id A1147BFE88
	for <lists+clang-built-linux@lfdr.de>; Fri, 27 Sep 2019 07:26:17 +0200 (CEST)
Received: by mail-qk1-x73e.google.com with SMTP id g65sf1567540qkf.19
        for <lists+clang-built-linux@lfdr.de>; Thu, 26 Sep 2019 22:26:17 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1569561976; cv=pass;
        d=google.com; s=arc-20160816;
        b=ORgi/sK0nUaxS+K6XW2jJNoX6FFIfKZgSlP4rjWPwJYIhjCgyGgvfCYEirkSu4bi+1
         cjfZ4OK6q6iRw1X/neXuuB70QTUhD6sG7l7RaHamk9Ta16R+v+0cO1BBCO8Lgjri7p79
         Ti77xxkXtr1Vo82cukN8bdxP+JewpgEEQmtQxTmSmqw6QPu6XMRrOKBmFfrkaLCGPocd
         aapO0O7NZfaXQYVm9ovDEGYlWW8ZoAoGaNQeUKSWiPhFvQ9hgM1gr03GvB12bjLoa3JG
         nj3sKBzyB1BYDSBMCh9CXzQTdhbXhwKqKjJKKKW8mtp6ORc2PQPA7n8AYaW40E9JLrK4
         nEZw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :content-language:in-reply-to:mime-version:user-agent:date
         :message-id:from:references:cc:to:subject:sender:dkim-signature;
        bh=IHCOCcb3CCeDWkC8ALWxQrwft5ug0L2Z80R8RYTK3U4=;
        b=SYe62rilDt/OgQ3fO/SYuitbyJG0Tfyqh6ISSDsUYR5p1rntKj7Qfc0CXOSLaM3a1M
         4jqGLxpSqk4QgRQN3hZCkgwcKRsn0+qJhQXyX23mrJwS0wJ26/BseEjn8s0kmmyltDKQ
         k/Y8FRuA1rCTkpXKPRxRsg69ucW+7Jew9knvUaTrby/wyPjhZkkal42LY/egek2yEmbM
         4U0CUnlnfSxgsS5/1V0slcC8f3VgrRUchWdM9cquwvJRWzRe+RPZsQymrbidnCpo3ghL
         jeAjKBqBcM+4MYmK1MtIpQpJtdhkNCazzFuEwKQb5xO7rezSFdhtvElZEkcPmfIdgBXQ
         s+8w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=neutral (google.com: 195.154.220.89 is neither permitted nor denied by best guess record for domain of sylvestre@debian.org) smtp.mailfrom=sylvestre@debian.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=IHCOCcb3CCeDWkC8ALWxQrwft5ug0L2Z80R8RYTK3U4=;
        b=lfEHIAXU5cp1PoSWr3BFNkm1uKCCXzGS2tOU5A/poAyJHtIKoe3rCh8s1Isd5aKVTK
         r4RLuKVGv/TVLc6C7HEhyeVb8GWoq+fejam1fBhXrNzTbUW8I8eEXADTiB3+bg2LmGpk
         KeHUSKsIbeM2+vGAtTq0ZIbaH8kgIyoDOrpw/z/TX7tAA5og/m2gkxDCU1YFC9mjtOrt
         TZvlcSprab9fRfvEQtkUZedqcc5TNOPRsCKFtbSvthfl78bFq4lfN3YwLe8CSeZ67PYr
         nJQjdvpSP7KJdY7PEVZT/K7C7mqZM6g3XNdJIZV0nGeLF2aohqm489rsf+o/MnyAdc79
         PWkw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=IHCOCcb3CCeDWkC8ALWxQrwft5ug0L2Z80R8RYTK3U4=;
        b=hYTzxcfZV8PEEzVr4D36uW8UVKgXARzcJbKQkdp42WCnPKlJvR1fNdB8ETfmTPhdA5
         90uzul51VpgVWCvHSZTyrh3fMazMNdV+z/Oiy2qPzyP7mWnpbpgav5S/fbfCURTNo05W
         wef3D5pylYJk9Bp6S2qbUsogP31IjSoTOcBZAoicFuyp+ug4GECDERqrvmjBmUl/XzzT
         pnKkpodMdKMh2d0lhdGKA0OykCV4HF7bXtMFJ9ISapqqY6BgB7URdi2DU2gmXfIncppk
         0yxu2dCL0qmFHqmRTU1+ljJzLoYXNbmEMbDOBF0QhXZmvB7pQ9Rvea6D28ledFpPgTM1
         4/Dw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXhP8jqPxe44/DJPH2OVqnjD6I1aeYrzCP4COrqLaJ3eXfB8fWt
	qkl5JqTemb1081YUfef9KLo=
X-Google-Smtp-Source: APXvYqwJ3m4rjCZC9eFZJtfTDV7Ts8eor+dLZc7tuG3mwfw/AX7HvEkGtnP5m527ajmTVi34RJVmaA==
X-Received: by 2002:a37:b601:: with SMTP id g1mr2981258qkf.30.1569561976578;
        Thu, 26 Sep 2019 22:26:16 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a37:2e06:: with SMTP id u6ls537719qkh.5.gmail; Thu, 26 Sep
 2019 22:26:16 -0700 (PDT)
X-Received: by 2002:a05:620a:15b1:: with SMTP id f17mr2806651qkk.187.1569561976311;
        Thu, 26 Sep 2019 22:26:16 -0700 (PDT)
Received: by 2002:a37:9804:0:0:0:0:0 with SMTP id a4msqke;
        Thu, 26 Sep 2019 06:04:03 -0700 (PDT)
X-Received: by 2002:a2e:9692:: with SMTP id q18mr2560164lji.73.1569503042173;
        Thu, 26 Sep 2019 06:04:02 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1569503042; cv=none;
        d=google.com; s=arc-20160816;
        b=k0diDA/3peQLnhDRTgLq7HmVXy9WOCp+eGdmmnm+/YlQl+5yIek84uW537YyotDj1g
         oNl0ydcuCfxAjQz134RhyNZu8i2OxBBhp9QBtkZFiL535QZKylRMkQzn++a8vcH3L0Tm
         N1p8SD52bGPlSL+6IHDgs79pHE3kZv8QH9TKMyG1gjQydcEXKccyl0aoMBQ12cIg1JIE
         DQBrXbBZF/JRi4UDalAJiXU2Roe8uql2qCz8YimRA5E7i881HZ0LV1K2rWOqXMbTH7qB
         PDmA/raQ2Lgh9FPvZovjdutJMOBxQJ7bZL6+XQPFsdIBBL2lV0oHLoFmKUre4P0q1fld
         fOvg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject;
        bh=fiC4RzVNiKgi1nKKEe8cHzsG8oit2Gw9UlgSJJYY2/A=;
        b=QCEwmXifZ/FkdnCTK9IoPNGOiRXq9+qVrgc3ri86v+i8/YYhWsA1VK5pNj4EXQdg9o
         BbPfLNIN/Rxbvr90OjuQ3sUWeEX74d/zpD5M/YIOBU6u6dCB8LmNb9n0Hs/ElzxAkvOr
         bgTWb2OqUcKRsThTjQG1mL2KMkwNKlrpPmwjmVTyf8UOuyI9y27Q56oYla+m6kVMwIQI
         fHpqAKzKH7UcUTX9s8vmSV6lIfl8NJbHMQm77/O/KIfM17BOw/QEpmbABYiuroml0pgH
         b8crd2KBVIuLhQKw5UEIyWEzuJifBEnKfVrLweOVE4z2DeBzCfScJqdw1DfhCbCeetMA
         wX2g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 195.154.220.89 is neither permitted nor denied by best guess record for domain of sylvestre@debian.org) smtp.mailfrom=sylvestre@debian.org
Received: from batou.ecranbleu.org (batou.ecranbleu.org. [195.154.220.89])
        by gmr-mx.google.com with ESMTP id c8si141846lfm.4.2019.09.26.06.04.02
        for <clang-built-linux@googlegroups.com>;
        Thu, 26 Sep 2019 06:04:02 -0700 (PDT)
Received-SPF: neutral (google.com: 195.154.220.89 is neither permitted nor denied by best guess record for domain of sylvestre@debian.org) client-ip=195.154.220.89;
Received: by batou.ecranbleu.org (Postfix, from userid 999)
	id B8081125782; Thu, 26 Sep 2019 15:03:31 +0200 (CEST)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on batou.ecranbleu.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=unavailable autolearn_force=no version=3.4.0
Received: from [192.168.86.91] (vil93-2-82-66-223-229.fbx.proxad.net [82.66.223.229])
	(Authenticated sender: sylvestredeb@ledru.info)
	by batou.ecranbleu.org (Postfix) with ESMTPSA id 2284E12570C;
	Thu, 26 Sep 2019 15:03:30 +0200 (CEST)
Subject: Re: llvm-toolchain-buster-9: LLVM/Clang/LLD/etc. 9.0.0 final
To: sedat.dilek@gmail.com
Cc: Clang-Built-Linux ML <clang-built-linux@googlegroups.com>,
 Nick Desaulniers <ndesaulniers@google.com>
References: <CA+icZUVQqOie6Q-r1wHXkNsRASYqzTAdGqrkhfYsA5Ryh2WT0g@mail.gmail.com>
From: Sylvestre Ledru <sylvestre@debian.org>
Message-ID: <19f1998d-a8b4-41b0-b86c-559c694f0c06@debian.org>
Date: Thu, 26 Sep 2019 15:03:29 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:70.0) Gecko/20100101
 Thunderbird/70.0
MIME-Version: 1.0
In-Reply-To: <CA+icZUVQqOie6Q-r1wHXkNsRASYqzTAdGqrkhfYsA5Ryh2WT0g@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: sylvestre@debian.org
X-Original-Authentication-Results: gmr-mx.google.com;       spf=neutral
 (google.com: 195.154.220.89 is neither permitted nor denied by best guess
 record for domain of sylvestre@debian.org) smtp.mailfrom=sylvestre@debian.org
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

Hello,

Le 26/09/2019 =C3=A0 14:44, Sedat Dilek a =C3=A9crit=C2=A0:
> Hi Sylvestre,
>=20
> is it possible to have version 9.0.0 in llvm-toolchain-buster-9 APT repos=
itory?
>=20
> Currently, 1:9~svn372167-1~exp1~20190917193038.54 is available.
> I have seen 9-1 is in Debian/unstable available.
I don't upload tag for apt.llvm.org, just ~svn versions (too much overhead)
They are usually the same (besides the version display) and rarely introduc=
e regressions.

Is that an issue for you?

Cheers,
Sylvestre


--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/19f1998d-a8b4-41b0-b86c-559c694f0c06%40debian.org.
