Return-Path: <clang-built-linux+bncBC7M5BFO7YCRBQ6AVTVAKGQEQX5CBJI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x740.google.com (mail-qk1-x740.google.com [IPv6:2607:f8b0:4864:20::740])
	by mail.lfdr.de (Postfix) with ESMTPS id 5AA0885361
	for <lists+clang-built-linux@lfdr.de>; Wed,  7 Aug 2019 21:02:28 +0200 (CEST)
Received: by mail-qk1-x740.google.com with SMTP id d9sf79820743qko.8
        for <lists+clang-built-linux@lfdr.de>; Wed, 07 Aug 2019 12:02:28 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1565204547; cv=pass;
        d=google.com; s=arc-20160816;
        b=kZzHN4JibMU+R+fARXjupnH+FG/wTr+gw6ULuyc2M4K+fqbAj4JiJ38tXZfTbN9D+W
         jjduKnRJHlUctRzryM4/f5T+glHYIDrcsONAeQvoUQfzqElz2M8GvwlrxqKmKd488P9j
         pmBarLTB7uS0sQS0Zo5zgkXDQ9mG6XC4vOl9Uc+Mt3XOMBNBX6KiYUuwzfnZM0hfq+cA
         DdXhrsoT/lzNg8C+WMcSKerYowCrpyQciz3EXFyaCys/S7gyVvMHl0jIL8rbjVqw0tfM
         w8RA+gS8ADRgAyewLIl4gpJf8klSj5NLSmI7OckhGD1hUHbvLyx1NBJJt2aNK8dMTNSg
         O7jQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-transfer-encoding:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:dkim-signature;
        bh=0uutBPFl8ExMDNPaRKDKJN1Vx5JIyJ5htIUyK69zeaQ=;
        b=l+dT3T/sfRRBzgf82tc9zIUNOZfIXHQ2M+n+dPXptlPBefiljO943xEhHqcDXTDMes
         C2oARiZdYy+qpNpHoFXnWGZMJnKvuaFZeH+dvNMHR9ML1gxo2P4vpkaX23J5Qww+neMl
         lWThJSsubgqRWhCKHkknNxlaGkcH2E/hX/eK+DDx7I0FRQlg/6pBsvQmi/aDj1tQNaF6
         RIHw3eUsepCGava7gj7Uebmn2W1IfIhI2iLde6n9EZGLdL666PmLxhy9GZhMcksPwTCR
         P6wdklO3W0Iks98vViX6M8q6B2/wg4yXR3ntV6Qv/jdJuJUddT+e4QahmlLC36UIfJpQ
         H9ig==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=giBJYD1U;
       spf=pass (google.com: domain of groeck7@gmail.com designates 2607:f8b0:4864:20::643 as permitted sender) smtp.mailfrom=groeck7@gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to
         :user-agent:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=0uutBPFl8ExMDNPaRKDKJN1Vx5JIyJ5htIUyK69zeaQ=;
        b=VwwBEuZaO5WEMA9eD5ph41M6hA0p0x1Ll5KwRG5/z+U7Hvd0u0XpS2Ou6t5AN8n93I
         yTy2CK+VHGpN7UwucAvGEm6cEhY6ckr2+OIsGaQP1o0wxL40GZLLEflVgSU5z0+Isvzt
         ji1wiBGMY4/NBm5sFyMTSKJhmVy168e1bHTAtDW9NcvyvDbm5NgEh87s1edOK6yJWzDw
         8tWvzH0HtiILg1DP6wImCJqClKWmkyrVTiUgHqdm8N767vrqhxQqoJoyGpNnyQhfuPuV
         H+JjF9RFOOIvMY8hgRDO7Es8af3C3cr73lUhXyjTWnYgI1dBVYT6xlwZ+D507ODmJ/WO
         +JAw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition
         :content-transfer-encoding:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=0uutBPFl8ExMDNPaRKDKJN1Vx5JIyJ5htIUyK69zeaQ=;
        b=GAtu+8aR6TcdmkZBBh8zQKDB+ELDHPJIb1KIH2fdPJ2paR+xg0xFgz3DDXcgyAKH9x
         JvFbic2zw4lSziiLKBWgxvP+f0hbGGVvhQY7m5wuDQYBvWRj1uLDXLEfTPOif1J4mnpW
         0tirrUkPGUVnPGDV/1+MR5R05/qKEAkzdiKYbQcy32crPqWKhcyM3vrZp35EkKTpKbKc
         nwqDFqZn6sCfQs90YWp95o3Dox8JM2ApFis3+2PcZqXyB/TkeGvtRIpP8LAlOkxynQk6
         9vCF/U2N6UZqRAWerc6V+t3dvV6ePdwivmt7PRZKj5mJVDzEI1nYuLH9GXZ4JUxIuK6S
         dCMA==
X-Gm-Message-State: APjAAAUkpOwguxtHmwZmI6jXK73ZxrKYUXGYABFeguLM7NT7uZ6Pe3cV
	ukO5gm9ogJcgy931cAMxuZU=
X-Google-Smtp-Source: APXvYqy3W7VWMBxO+R8LcBYdBicGhbziPtACjwjZl+Q9oWxmK9r1/ex4K11t6Jbz2/DXB7k8VFdmUw==
X-Received: by 2002:a37:a14e:: with SMTP id k75mr10025124qke.65.1565204547381;
        Wed, 07 Aug 2019 12:02:27 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a37:4d83:: with SMTP id a125ls1397146qkb.9.gmail; Wed, 07
 Aug 2019 12:02:27 -0700 (PDT)
X-Received: by 2002:a05:620a:1661:: with SMTP id d1mr9811045qko.192.1565204547080;
        Wed, 07 Aug 2019 12:02:27 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1565204547; cv=none;
        d=google.com; s=arc-20160816;
        b=K/SzGABMWF4IIRY1P0l+nmcVnHVNWkjvZXX5Bt3rJyz1RkL0phxbqigimurFwLYAz0
         iq5vqALjaYzr58SX1+LOFTfgJ7cnjrS7c48eJ/paOuz9tls/iJ0IaIQ6Zvbv/eV29ovi
         zeT5ZT7s2fvW9yq+NJNoCuxSHjMCdUUq+2qJcbvdAycu5U8GNRv5Vbz9GPsrsrlW0O0F
         YlNMKcX2RT8UoRiP+8mwGKEkG9KTQlWLzsD+5nyOvudpVGpA91s4VimR81p+FpMfPZDa
         nut7Sx0D6pK5FnXVCbdc3+ZnqDJBd6HoKgFgOll3f1ChLn++62F4mGM9pPGAj0Wmhgh+
         0yKw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-transfer-encoding
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=wEBOYa0qjTLJE5gjc4OKm+uVmVwofxEK3tzpbYy7xts=;
        b=p3ahY5K+Y2RBWuJ2QmDmbr+jMQEt59wh1tvmL5AIcoxYnA8E8OWKpszu5uVckFudMV
         UsegiAApNwoblS3TEnlM5Cetg7NgB5GpdMdLJIkXH7wmVOKNZHYYpk3Ehd0TveNEicUh
         JBmm2EfJcjkJknKRIvMONDl3SuytMqqxCMdyD3sAbrE9h83VvIETwqh6LZgEDIYwfh1s
         GYCaRrwiYjL+FvSleEr82OixDAf5JxRXMtxEUset1QX7qIE+TkpMpE37IGAs/nTrm2iB
         pRG9Y0TfSQcsmyhiloLelZl84WpY5ZBWXic0yc24rvrGIw8vOSAwjJ4Z3U9RNxXkIjEI
         YMFQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=giBJYD1U;
       spf=pass (google.com: domain of groeck7@gmail.com designates 2607:f8b0:4864:20::643 as permitted sender) smtp.mailfrom=groeck7@gmail.com
Received: from mail-pl1-x643.google.com (mail-pl1-x643.google.com. [2607:f8b0:4864:20::643])
        by gmr-mx.google.com with ESMTPS id 34si4338959qtz.2.2019.08.07.12.02.27
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
        Wed, 07 Aug 2019 12:02:27 -0700 (PDT)
Received-SPF: pass (google.com: domain of groeck7@gmail.com designates 2607:f8b0:4864:20::643 as permitted sender) client-ip=2607:f8b0:4864:20::643;
Received: by mail-pl1-x643.google.com with SMTP id y8so46087plr.12
        for <clang-built-linux@googlegroups.com>; Wed, 07 Aug 2019 12:02:27 -0700 (PDT)
X-Received: by 2002:a62:e515:: with SMTP id n21mr11036781pff.186.1565204546665;
        Wed, 07 Aug 2019 12:02:26 -0700 (PDT)
Received: from localhost ([2600:1700:e321:62f0:329c:23ff:fee3:9d7c])
        by smtp.gmail.com with ESMTPSA id u23sm94964460pfn.140.2019.08.07.12.02.24
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 07 Aug 2019 12:02:25 -0700 (PDT)
Sender: Guenter Roeck <groeck7@gmail.com>
Date: Wed, 7 Aug 2019 12:02:23 -0700
From: Guenter Roeck <linux@roeck-us.net>
To: Robin Murphy <robin.murphy@arm.com>
Cc: Nathan Chancellor <natechancellor@gmail.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	"kernelci.org bot" <bot@kernelci.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	naresh.kamboju@linaro.org, zhengyang@rock-chips.com, kishon@ti.com,
	heiko@sntech.de
Subject: Re: next/master build: 230 builds: 12 failed, 218 passed, 15 errors,
 1179 warnings (next-20190807)
Message-ID: <20190807190223.GA30515@roeck-us.net>
References: <5d4ab6db.1c69fb81.8f6ca.5b76@mx.google.com>
 <CAKwvOdmZ40g0p9B5GF63q9p_fO-LQoSXaYuu9SS+rfNbjE29TA@mail.gmail.com>
 <20190807174331.GA98617@archlinux-threadripper>
 <957d68f7-3a93-8202-13d3-d692a56e62c3@roeck-us.net>
 <20190807180500.GA33631@archlinux-threadripper>
 <9b54c651-e875-99a0-84d4-50ae5c9d99a5@arm.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <9b54c651-e875-99a0-84d4-50ae5c9d99a5@arm.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
X-Original-Sender: linux@roeck-us.net
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=giBJYD1U;       spf=pass
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

On Wed, Aug 07, 2019 at 07:10:48PM +0100, Robin Murphy wrote:
> On 07/08/2019 19:05, Nathan Chancellor wrote:
> >On Wed, Aug 07, 2019 at 10:52:16AM -0700, Guenter Roeck wrote:
> >>On 8/7/19 10:43 AM, Nathan Chancellor wrote:
> >>>On Wed, Aug 07, 2019 at 10:35:26AM -0700, 'Nick Desaulniers' via Clang=
 Built Linux wrote:
> >>>>On Wed, Aug 7, 2019 at 4:32 AM kernelci.org bot <bot@kernelci.org> wr=
ote:
> >>>>>--------------------------------------------------------------------=
------------
> >>>>>allmodconfig (arm64, clang-8) =E2=80=94 FAIL, 1 error, 34 warnings, =
0 section mismatches
> >>>>>
> >>>>>Errors:
> >>>>>      drivers/phy/rockchip/phy-rockchip-inno-hdmi.c:1046:26: error: =
anonymous bit-field has negative width (-1)
> >>>>
> >>>>This looks new, and only an error w/ Clang builds.
> >>>>
> >>>>Looks like it's been reported:
> >>>>https://lkml.org/lkml/2019/8/7/320
> >>>>
> >>>
> >>>Guenter reports that this is also an issue with GCC 8.3.0, I am going =
to
> >>>try to reproduce now:
> >>>
> >>>https://lore.kernel.org/lkml/20190807142728.GA16360@roeck-us.net/
> >>>
> >>>https://kerneltests.org/builders/next-arm64-next/builds/1207/steps/bui=
ldcommand/logs/stdio
> >>>
> >>>Cheers,
> >>>Nathan
> >>>
> >>
> >>The problem isn't exactly unknown either:
> >>
> >>https://patchwork.kernel.org/cover/11037801/#22756703
> >>
> >>Guenter
> >
> >I suppose this is the fix?
>=20
> To my eye it seems like the "9" may actually be a typo of "0", but I don'=
t
> know if anyone has actual documentation for this IP to confirm.
>=20

I think you are correct. See:

https://github.com/rockchip-linux/kernel/blob/develop-4.4/drivers/phy/rockc=
hip/phy-rockchip-inno-hdmi-phy.c

This is with the 4.4 kernel. See around line 902 for the code accessing
the register. inno_write() writes 8 bit, so a mask exceeding 8 bit
doesn't make much sense.

Guenter

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/20190807190223.GA30515%40roeck-us.net.
