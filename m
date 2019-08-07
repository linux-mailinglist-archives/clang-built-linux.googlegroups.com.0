Return-Path: <clang-built-linux+bncBC7M5BFO7YCRBU47VTVAKGQEEKSLSFQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vs1-xe3f.google.com (mail-vs1-xe3f.google.com [IPv6:2607:f8b0:4864:20::e3f])
	by mail.lfdr.de (Postfix) with ESMTPS id 7176D85264
	for <lists+clang-built-linux@lfdr.de>; Wed,  7 Aug 2019 19:52:20 +0200 (CEST)
Received: by mail-vs1-xe3f.google.com with SMTP id j186sf23233281vsc.11
        for <lists+clang-built-linux@lfdr.de>; Wed, 07 Aug 2019 10:52:20 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1565200339; cv=pass;
        d=google.com; s=arc-20160816;
        b=HfP905KwwSellUO0fCr6soKLPxtRSKXBSvmR/9AsxLKp/JPMN2N6j2OVAvkknDR3ci
         OgNOyLrZ81GyBtphpDb9XFYcHkJspg5G/grN/qPiqKNVoc4Nlx4ycNMZTuNiNI1gzMLx
         jiQh8MFCADcAMa1n9paCKR3RnnemfPimhuLdUg4jelu5qz4p8iwRVHv0wM9UGI0cV1ux
         ZBPpEvLOQiNKgI1MNHzXGwYiX484HEc5AKiU9jq30m5bjeCB8UlYDJEjh3y7z+MfkSXm
         5WFbIreksgIY2xVgoo2CZz+K1MuVGYOGXTn77o1D+1rlw+yJAtCMYOFhfE66xTBBaUxj
         tDPA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :content-language:in-reply-to:mime-version:user-agent:date
         :message-id:from:references:cc:to:subject:sender:dkim-signature;
        bh=Gp/EyxwHlVaZQWoXbRSIZiIqX9mtU1O9dufP5MasG4I=;
        b=CTgpXOql0HsWMZrhthh8GDJW9+EzyRdd2ZSXqYCxd3g9hCyQq7VrSzSadOKw0Hu3Hm
         9lhFaYelos/6WiIjNijusnMgz9CESJM0nihKyoTCoRT8mDnJbLpJXn2lvzzOdU302nFG
         RtemIsnm/aMbaG9RKPBISr+gsrJNCNrkMdL32k9pNUCiR1M/jHgyReOuONGADIVuseGF
         zy9mj1cP0YcQFe+y5L9OSt/mzd7o5cfvEp8Z7IRvxkbGg5jyolnFWXlA7fGtJrP/5Xjh
         3WczVOyiO+p1iNmcHlmatctVen9r4bWKV3PuylxDwQa19ODcFQLL88UebViBi0bjoJD5
         hE/w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=EOt0ADu8;
       spf=pass (google.com: domain of groeck7@gmail.com designates 2607:f8b0:4864:20::643 as permitted sender) smtp.mailfrom=groeck7@gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Gp/EyxwHlVaZQWoXbRSIZiIqX9mtU1O9dufP5MasG4I=;
        b=UweQKKe+h3gl7ZSTOWEF0q5/D/1KS8fZT1EAfZ3SR+QqqiC2O43zETA6WWLZfKcdfy
         LXFZgJPX5MiCIriAfKETNznLDJRvK7LqO6MVy64wQCQUQNXscumRxvauI4j2Ivfuz2ds
         PZmEvCpU4eNa8bMBCq1OCSxd8+IXwwcddJ5K7Hn+XULVS0QrZyPbIa7bxC0Hvk9I6tdP
         As8DXwwjPRdqlgK/E/s6GOBNTAcLtR0keObb3j7TOuXMu1rlLO4oolCigo3yAKJTUwZx
         Ifx3Q4q8ofnit/9QpSZLF0e2Zgi2EFmnR3aH4eOZU41+TiF/meLMymrZwUJcf9P8M7S3
         JaKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Gp/EyxwHlVaZQWoXbRSIZiIqX9mtU1O9dufP5MasG4I=;
        b=VUIkI+OMktkHHD6JI+jpdsVvmnzlX4DXxpW1Wd8PSuJ6Z1ggGyQRa2DmXrwgVGfE4d
         4Re/c9tBKAOxx7AmC8RyLkEfKrlwIvSdaFik76XpSxQjWDJvjx2ujAYSHOvWEa1u/kWE
         i1cVlgCd8iDvoemkfyf77nnWULjw43oD26p5+XKmC8SzHayAtKCh/hWzlPHrc8fW9FnC
         Z7V+qZ/ao/mkVmwYn6qVB9i7ZDJpxAMPZg19E4cd6yuRTUcpmjaEBBZJ9ozPTgohVmCw
         7qS08xy2ALehjRHvGML5zbaoVon7DBLkrpGwo0mFotOVbiv0g3/fQyFDEfrhLi94/Vss
         CRKA==
X-Gm-Message-State: APjAAAV/xVLTsKWoeexwJmD9sE2urxRSm7M7Sj32UYwzF23A9+orUlDO
	OlvpXygD5amIzxRz1TOi6ks=
X-Google-Smtp-Source: APXvYqxO49e0s+f0etxMLkhRUZQLmJwVHnZZq9Nk20zNsavQIaCcMoiLWTERv0GjmQsjqGPx2Xhmrg==
X-Received: by 2002:a67:d590:: with SMTP id m16mr7181405vsj.76.1565200339557;
        Wed, 07 Aug 2019 10:52:19 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1f:bd14:: with SMTP id n20ls3400288vkf.6.gmail; Wed, 07 Aug
 2019 10:52:19 -0700 (PDT)
X-Received: by 2002:a1f:c802:: with SMTP id y2mr3998216vkf.56.1565200339172;
        Wed, 07 Aug 2019 10:52:19 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1565200339; cv=none;
        d=google.com; s=arc-20160816;
        b=YXK/yPRrL3lbdcZ+3gHz5Uc9iziHAJ8SGUZ6gF61Q4PhX8NSAXv9MTKz0+gbb6BJlZ
         kVGvQXejTF4KxsQ53UU67/zLSCup87kxkY62fXBp/H80pj56CZoN28Z6clLlSw4wY19H
         t4bqkEILPW/eS9lntlj9AnsjBQGEheYqeqkOHzLr8Qy+EwjoIZOGY5LG14SBWMrpUAPa
         m/gKfJOGNuMpaPMms2ho6Bs7i+b8WDnolEHbkr3BtW3LSbl0EJZcZnm7PVl5M4pQ5jkR
         rPFSRfhji0OePjxhBNHwlQOX77A5SFIB+QwPJ67DMktGekpI6iMC3fNvG97NRlzxqIwi
         /Ieg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject:sender
         :dkim-signature;
        bh=tjpfToNi2ukxJ0KoQzsBwLSZ5YQajmOBp6sUuWkT1w8=;
        b=gZdqF+lsAfBj9o0wMf/bvxxas1lQ5myXXjw7nhdxycYjTqXc/q9TIdK8qQGWofNEL5
         ItV2fWHoxvbcIPALRM1pX2rYd/GwzFUMKAhYgLsQXHsYxxh/nicC0RfQ/RYtMn+RlnXV
         y6MLTwCUWaTny8m18mkRiZIXf0fyj+7gaivUg1jaD+fNZHxiIFu4nBYaJkFVr6OdlH8U
         Z/VDvLJkkrphwijvycG658a/kWzIwehLd9fOorE8BgFMf8fGfyB0qE+R5z0zfKfS53Ph
         Q2r6/kxc87u/thnEZZQF1qRECh9v5lCRuaxDPozGlywSTtVH8E9f5wnBzGZ7+EOmKTDe
         Mb2A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=EOt0ADu8;
       spf=pass (google.com: domain of groeck7@gmail.com designates 2607:f8b0:4864:20::643 as permitted sender) smtp.mailfrom=groeck7@gmail.com
Received: from mail-pl1-x643.google.com (mail-pl1-x643.google.com. [2607:f8b0:4864:20::643])
        by gmr-mx.google.com with ESMTPS id d8si4230507uam.0.2019.08.07.10.52.19
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
        Wed, 07 Aug 2019 10:52:19 -0700 (PDT)
Received-SPF: pass (google.com: domain of groeck7@gmail.com designates 2607:f8b0:4864:20::643 as permitted sender) client-ip=2607:f8b0:4864:20::643;
Received: by mail-pl1-x643.google.com with SMTP id y8so41914909plr.12
        for <clang-built-linux@googlegroups.com>; Wed, 07 Aug 2019 10:52:19 -0700 (PDT)
X-Received: by 2002:aa7:83ce:: with SMTP id j14mr10400001pfn.55.1565200338255;
        Wed, 07 Aug 2019 10:52:18 -0700 (PDT)
Received: from server.roeck-us.net ([2600:1700:e321:62f0:329c:23ff:fee3:9d7c])
        by smtp.gmail.com with ESMTPSA id y12sm102289369pfn.187.2019.08.07.10.52.17
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 07 Aug 2019 10:52:17 -0700 (PDT)
Sender: Guenter Roeck <groeck7@gmail.com>
Subject: Re: next/master build: 230 builds: 12 failed, 218 passed, 15 errors,
 1179 warnings (next-20190807)
To: Nathan Chancellor <natechancellor@gmail.com>,
 Nick Desaulniers <ndesaulniers@google.com>
Cc: "kernelci.org bot" <bot@kernelci.org>,
 clang-built-linux <clang-built-linux@googlegroups.com>,
 naresh.kamboju@linaro.org, zhengyang@rock-chips.com, kishon@ti.com,
 heiko@sntech.de, Robin Murphy <robin.murphy@arm.com>
References: <5d4ab6db.1c69fb81.8f6ca.5b76@mx.google.com>
 <CAKwvOdmZ40g0p9B5GF63q9p_fO-LQoSXaYuu9SS+rfNbjE29TA@mail.gmail.com>
 <20190807174331.GA98617@archlinux-threadripper>
From: Guenter Roeck <linux@roeck-us.net>
Message-ID: <957d68f7-3a93-8202-13d3-d692a56e62c3@roeck-us.net>
Date: Wed, 7 Aug 2019 10:52:16 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190807174331.GA98617@archlinux-threadripper>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: linux@roeck-us.net
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=EOt0ADu8;       spf=pass
 (google.com: domain of groeck7@gmail.com designates 2607:f8b0:4864:20::643 as
 permitted sender) smtp.mailfrom=groeck7@gmail.com
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

On 8/7/19 10:43 AM, Nathan Chancellor wrote:
> On Wed, Aug 07, 2019 at 10:35:26AM -0700, 'Nick Desaulniers' via Clang Bu=
ilt Linux wrote:
>> On Wed, Aug 7, 2019 at 4:32 AM kernelci.org bot <bot@kernelci.org> wrote=
:
>>> -----------------------------------------------------------------------=
---------
>>> allmodconfig (arm64, clang-8) =E2=80=94 FAIL, 1 error, 34 warnings, 0 s=
ection mismatches
>>>
>>> Errors:
>>>      drivers/phy/rockchip/phy-rockchip-inno-hdmi.c:1046:26: error: anon=
ymous bit-field has negative width (-1)
>>
>> This looks new, and only an error w/ Clang builds.
>>
>> Looks like it's been reported:
>> https://lkml.org/lkml/2019/8/7/320
>>
>=20
> Guenter reports that this is also an issue with GCC 8.3.0, I am going to
> try to reproduce now:
>=20
> https://lore.kernel.org/lkml/20190807142728.GA16360@roeck-us.net/
>=20
> https://kerneltests.org/builders/next-arm64-next/builds/1207/steps/buildc=
ommand/logs/stdio
>=20
> Cheers,
> Nathan
>=20

The problem isn't exactly unknown either:

https://patchwork.kernel.org/cover/11037801/#22756703

Guenter

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/957d68f7-3a93-8202-13d3-d692a56e62c3%40roeck-us.net.
