Return-Path: <clang-built-linux+bncBCN5HJ6RQMJBBUEJVH6QKGQES5KZFMY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x33d.google.com (mail-wm1-x33d.google.com [IPv6:2a00:1450:4864:20::33d])
	by mail.lfdr.de (Postfix) with ESMTPS id 56CAA2AD096
	for <lists+clang-built-linux@lfdr.de>; Tue, 10 Nov 2020 08:44:17 +0100 (CET)
Received: by mail-wm1-x33d.google.com with SMTP id s85sf392344wme.3
        for <lists+clang-built-linux@lfdr.de>; Mon, 09 Nov 2020 23:44:17 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1604994257; cv=pass;
        d=google.com; s=arc-20160816;
        b=L83GGRzxN/kVUpvB78maFytCSQOBHLTSTRA3Ghhd1OSH3qxL38x1DRKT+oolSX37dR
         7kbypKeLQNhdcEjyp39CzG9pfpWYJHoYs9CdVGZY1k3zdNcRwb45XrwCqHiBA8O8b/A1
         WnRKgumi3K/jnc+qSdD3rFAw2zRabMNlihk/4+PoUx2J3y9WE38ArogANEv/Q6/QgdTx
         +8iBv/NHcS0LaUOCFNk9N9V7ZuT7ggcYFPJfLm5gRMGcAxkmEjPSxNtWiilbUnQ51rJ4
         kt2hr2dwyLo7TF0ebG1Y/jQthTCesAodb2DT8gg3BN43tI5tiSgQBtDhKBAueA9eZln/
         R6kw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :content-language:in-reply-to:mime-version:user-agent:date
         :message-id:from:references:cc:to:subject:sender:dkim-signature
         :dkim-signature;
        bh=/KBdJtnBH7o8y2djaYrJL2xtfLERJjNo+e7ngTJ5Gzs=;
        b=y+Fqy/lEAeOGAe9ioudd7cgGrK9/sS2MgaVhZi1iSiBQZHr+BWC6ESOcFre3AUGZB/
         ETqNdsh57CIVfZ3KZ+OHPxkslJAl/0Aq3M9eVhYz64zE3bWewgbapttcPMUECifAGbJ5
         rATLVLysOd4o7GWME8WGNa1+pWq7RQQDqm4rC0gB9tNbylafYM9w1b3faMxPx3jire3E
         zb4cBs5QCpZ65IXAWjp+A18zRuW0voQ+dup5Q3hizob5eSm4yxXulB/x5GBVtCITGaUf
         EuzjHKNfoOnYEo+Vg/qqt2K+Kjv5JqJylwZWdu8lXGNNYWYxaOJDfYfyCxQf7GCXRPcX
         Yo6g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=UJ4cLR5l;
       spf=pass (google.com: domain of digetx@gmail.com designates 2a00:1450:4864:20::242 as permitted sender) smtp.mailfrom=digetx@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=/KBdJtnBH7o8y2djaYrJL2xtfLERJjNo+e7ngTJ5Gzs=;
        b=fXbQmZMEq6ALYISXI++VpNDlMQ0Kr+K0rGHwSOrdgTAYckZ1zEi4WakguaWPVXkm/G
         UaiDYO0zEeXUISmY/V25Uzgc8XZ1IqsDgmdFZWKX5NHpO4D5XuIIG1ymE/iUbsQ7m3ZE
         /ufEnjQ/CeOwCDfC0xYP4ESf8ADubupBVzg+13jznHlKPpRGoXSAhNJUayLFSE5ZkwwQ
         A1QYjE37un7bj82WbDTBSsK8wJlmpvuFb1kf6kb58SG3zuQ5BzPlkgmosbqyYR4Duv4x
         QV7WRycEKGLcKb7f7Ap4itTDUFZAKa3quf4Wu6J/LuR9kNLGT26s6U650qjEsCvsQU95
         c6pg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=/KBdJtnBH7o8y2djaYrJL2xtfLERJjNo+e7ngTJ5Gzs=;
        b=SBWbx3FEc2gwlRKsR8YowumyhOUbkZiPqU8zCpMxMq6DvbTDX9twSay+t9Asyo+tx4
         lR6rQhvnxTBvMFfgyK/Ax/GIPamiGClki7LfPbiw5RC2lvD3tmFdlkF5Y52aiXjbePSm
         00Pe4Gxjd5zXWXDFyghf5cLqFqa+cHTcNGy20Up7AKeGf80xAoSgdkkt1NHREAqwgEms
         30QzJWZwE+z2oLrXWeoyi2RDfFaRgGJR0dCMpZyOv0o/XrHeIt1x7ybGvJNTne9ybJCE
         mRdhkvTrm3jRYgaAvxEUeL+fDXatQ21jMmRPDComJqGs5rAsdKIy2DB88yL23Kh/rOsG
         X3hg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=/KBdJtnBH7o8y2djaYrJL2xtfLERJjNo+e7ngTJ5Gzs=;
        b=V1oHZJ/I5j4kaEFJzToQDGT6LvNMSN5Q5VvO13UINWwrY/1e+QIGHbbQe/Vfu2lxJG
         F+8omC2xeNiWzZLcthWkY9GQ7Bj3yStejoP7nGPxjxA2QF8wDPXkbvpscSaB+mANi2XU
         UA8Z0qL9jj6sSQ+nmlmGFgZ7SS/ytNr+I0JHWJCA6PRGragFYE5Va4NPYIVsABnAFrp1
         g4q/p8swEebnYOa5cjrl3VipyyAtLX3Mk0LvjtjRWLOb6AwXjpLKTAbl1hrraUcSqr2b
         /pWo6EjnnPsBWFeAlkrvw/NTlL6d8AuqvTkhioZ90zqleRKz9NP2JYj5jBX+2JoXDJUw
         kFog==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531TcA9nq0C3IKlUoN91KVD4/coZy3NpCARoEVT4VxNFpvynFaby
	QYaFTfUQ7IZCD1cgOkxMeUc=
X-Google-Smtp-Source: ABdhPJwZT0YVhseZZA/qJyCuOFcKeUxApG8aSOtrhuOtK6XT1I62fTlH5FUEUtbtNTbpe+wLMocoPw==
X-Received: by 2002:a5d:488b:: with SMTP id g11mr7481444wrq.210.1604994257044;
        Mon, 09 Nov 2020 23:44:17 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1c:5417:: with SMTP id i23ls691961wmb.2.canary-gmail; Mon,
 09 Nov 2020 23:44:16 -0800 (PST)
X-Received: by 2002:a05:600c:214a:: with SMTP id v10mr3182844wml.20.1604994256224;
        Mon, 09 Nov 2020 23:44:16 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1604994256; cv=none;
        d=google.com; s=arc-20160816;
        b=iq3V4W9WWT2GFtdWYblIWJlloksX3Rby8AKMd7e7Vuir4EzlwuRPwS7ObTkfBmz3TT
         3R0hWMJOYIJUBrRPPGE+CLXekYDvprUx+mjGk2+YzfUOOsF6YccAzXBh8wKgPqUZ6SPF
         umPbx3jQK+8vsUv7BxdjlTV2smx6Dysfy3yEw0FcfYK+77ErrOuXYjj7/opde6AgS2h3
         7/rhQ0GMoqYEgfOaCvNR3lE2V4DsHtmuxGfTg8RvjIF5RPY7BeFgr/6GI0oGZMCEpGKl
         QYts2nJZPKnkNEYgFWZR8DNOYWrt5XjFbQN/mcdE1LXg9dPRvF4iR6w43Frrxx572DDj
         ONjA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=sekTus97mHsi9jFdvTcgScvJxfYD1QrR3Zdvt+L6iSQ=;
        b=VdGm36edQ/EgmKfyTVfhmUiREHCbaefK9BrOFEA4TZlFipzstqHmV+4Foygb/X2UkA
         eqTW3JyhnPS36u4Kyq1LEGZBAll6PX1LqrWUsW9RXHROY06CRGPP9zrpctMoKsyUfMw5
         cwmRprcyNXXU566mVPlGFDJU/KWwRyg1Zx7+7oxDHP9tCxGaoQoziKSI1F52ILVwJ0X2
         wMTW2c+qTPR/yGkpre2qg74o9nioS/00nr1wU7JN2dKwKllushs1DwlzrUod90uEmYI3
         +QeKFK/PthopUw+IqZEfCrWqHWkhq93lGqI38jNl8pIo1w2o3FrQEGgd+ka+z3okz1Yw
         ++3g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=UJ4cLR5l;
       spf=pass (google.com: domain of digetx@gmail.com designates 2a00:1450:4864:20::242 as permitted sender) smtp.mailfrom=digetx@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-lj1-x242.google.com (mail-lj1-x242.google.com. [2a00:1450:4864:20::242])
        by gmr-mx.google.com with ESMTPS id o4si341382wrx.4.2020.11.09.23.44.16
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 09 Nov 2020 23:44:16 -0800 (PST)
Received-SPF: pass (google.com: domain of digetx@gmail.com designates 2a00:1450:4864:20::242 as permitted sender) client-ip=2a00:1450:4864:20::242;
Received: by mail-lj1-x242.google.com with SMTP id x9so1123576ljc.7
        for <clang-built-linux@googlegroups.com>; Mon, 09 Nov 2020 23:44:16 -0800 (PST)
X-Received: by 2002:a05:651c:8a:: with SMTP id 10mr7299000ljq.275.1604994255792;
        Mon, 09 Nov 2020 23:44:15 -0800 (PST)
Received: from [192.168.2.145] (109-252-193-159.dynamic.spd-mgts.ru. [109.252.193.159])
        by smtp.googlemail.com with ESMTPSA id n5sm2017481lfl.175.2020.11.09.23.44.14
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 09 Nov 2020 23:44:14 -0800 (PST)
Subject: Re: [PATCH v1] ARM: vfp: Use long jump to fix THUMB2 kernel
 compilation error
To: Ard Biesheuvel <ardb@kernel.org>
Cc: Russell King - ARM Linux admin <linux@armlinux.org.uk>,
 Kees Cook <keescook@chromium.org>, Nick Desaulniers
 <ndesaulniers@google.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 clang-built-linux <clang-built-linux@googlegroups.com>,
 Ingo Molnar <mingo@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
References: <202010211637.7CFD8435@keescook>
 <773fbdb0-5fc4-ab39-e72d-89845faa4c6d@gmail.com>
 <202010212028.32E8A5EF9B@keescook>
 <CAMj1kXHXN56xmuwVG3P93Jjwd+NxXTYHtfibPWg5TUADucOdWg@mail.gmail.com>
 <1d2e2b5d-3035-238c-d2ca-14c0c209a6a1@gmail.com>
 <CAMj1kXERX_Bv1MdfafOVmdmDXPio6Uj897ZZZ7qRERbCXYw_iQ@mail.gmail.com>
 <20201022161118.GP1551@shell.armlinux.org.uk>
 <CAMj1kXGExnUrTuosMpX2NN3=j0HF-8_s1SzLaTyBvq4_LQNT-w@mail.gmail.com>
 <20201022162334.GQ1551@shell.armlinux.org.uk>
 <CAMj1kXF+2kJrUaDyA-Xw4rz2bsuEipX3P4JyPrY1bim76LQvoA@mail.gmail.com>
 <20201022174826.GS1551@shell.armlinux.org.uk>
 <CAMj1kXHpPbwS8zjsr8S65EMj9XOwPxWiQ5WN_ok8ZAFZg9kSAg@mail.gmail.com>
 <CAMj1kXGok50R+2FZ=LqRAx5N3otC3AvC26=+NUqNC6kSvY2-Lg@mail.gmail.com>
 <CAMj1kXF6EdrJWASQQp57L=3gni6R_pLvZfCaFxCoH=rMRzK_6A@mail.gmail.com>
 <CAMj1kXFMiTSakUGnopb8eWRHTM9-0XM0kDaJvTXWDhRPJ3Vsow@mail.gmail.com>
 <f4b4f5ca-2c0c-c1f0-9329-a95967b99bd0@gmail.com>
 <CAMj1kXEJL31KOMs7h_XzxFKXgqi2jOXCmLaxfKwW=wgo2so_RA@mail.gmail.com>
From: Dmitry Osipenko <digetx@gmail.com>
Message-ID: <a438f99d-26a4-a1b5-9fc3-5abd2e76edb3@gmail.com>
Date: Tue, 10 Nov 2020 10:44:14 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <CAMj1kXEJL31KOMs7h_XzxFKXgqi2jOXCmLaxfKwW=wgo2so_RA@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: digetx@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=UJ4cLR5l;       spf=pass
 (google.com: domain of digetx@gmail.com designates 2a00:1450:4864:20::242 as
 permitted sender) smtp.mailfrom=digetx@gmail.com;       dmarc=pass (p=NONE
 sp=QUARANTINE dis=NONE) header.from=gmail.com
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

09.11.2020 10:25, Ard Biesheuvel =D0=BF=D0=B8=D1=88=D0=B5=D1=82:
...
>>> So the options are
>>>
>>> a) merge my patch that adds 2 bytes of opcode to the Thumb2 build
>>> b) merge Dmitry's patch that adds an unconditional literal load to all =
builds
>>> c) remove kernel mode handling from vfp_support_entry() [my other patch=
]
>>> d) move sections around so that vfp_kmode_exception is guaranteed to
>>> be in range.
>>> e) do nothing
...
>> The performance argument is questionable to me, to be honest. In
>> practice the performance difference should be absolutely negligible for
>> either of the proposed options, it should stay in a noise even if
>> somebody thoroughly counting cycles, IMO.
>>
>> I'm still thinking that the best option will be to apply a).
>>
>=20
> Can we take that as an acked-by?

Are you asking me for the ack? I think this is a more appropriate
question to Russel. I'm not arm/ maintainer, but could give r-b and t-b.

If you're going to follow approach that I'm suggesting with a) + d),
then could you please resend the two patches in a single series? The
first one-line patch-fix should contain the fixes tag.

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/a438f99d-26a4-a1b5-9fc3-5abd2e76edb3%40gmail.com.
