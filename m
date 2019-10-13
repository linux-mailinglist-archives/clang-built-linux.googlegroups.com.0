Return-Path: <clang-built-linux+bncBC6MFNV32EFRBE5TRXWQKGQEA4DOLVA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x340.google.com (mail-wm1-x340.google.com [IPv6:2a00:1450:4864:20::340])
	by mail.lfdr.de (Postfix) with ESMTPS id 27F43D56F4
	for <lists+clang-built-linux@lfdr.de>; Sun, 13 Oct 2019 19:06:28 +0200 (CEST)
Received: by mail-wm1-x340.google.com with SMTP id 190sf6052271wme.4
        for <lists+clang-built-linux@lfdr.de>; Sun, 13 Oct 2019 10:06:28 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1570986387; cv=pass;
        d=google.com; s=arc-20160816;
        b=lVwyQo9x0evNqNdgkv9g0DokRGddG43dbVjnsVwKf/pG8zCGFFFV1LmPmaP1KhvNca
         jGPxmPzqBFqlX/j7ucenVznDyDRKYJV/YC9KFhf/b8hQTYF12vBUgt0ikhnWGU8nGJJT
         U2Vv4epjhuw055hDyu0GnmDcxgqMngV1Bdl2yKjY0Nw0sq24sskt4QxPS8gYfhOV4BDH
         Wj2+2xS1KA8H9h7Go344i6AFBOQJ88cn/qiSmBWUTtf6c4trrKKKEItlTjbLz0KLA9XC
         F/EA52RHNbnO67GisV5CZFNcPSEnz3Ja2F4sr2/B21DqU0TrWAgd1VJounhHJFZPUXTg
         udYg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :content-language:in-reply-to:mime-version:user-agent:date
         :message-id:from:references:to:subject:sender:dkim-signature;
        bh=S8cxxPU44zD+0G1/Iv/KfmY9Bblyu0PRPKWDCWyBPLc=;
        b=Nil9GIvE2ZZ/uR/0qaJbRhN1SRjJL1A8Fv8ODwtIfQnJSEy6i67H3LePf/8xlXe+ZH
         PSwsw9SfwGB1eaT4nAJdADyCncd1GJuif7mueL/iDo/tir/bA5QEm2ORa8ypUEM+JMg+
         AJsd3ti0EiO0f27TYZZqLDzPbj8NQ63l8WtKGXfuPoJuX5JCrZPeAFhytFVBZnSF9BNV
         2xlipMWF/N7eDJab6xEjDMeWxNnLcOgvhvWvWHJ758VxuqdONFuRZqtG4YZRjjrnjxXo
         djva5SrPeR+2pFLxTDHkcys9oKjZhihgWC6kSnNncwzM0LG0WN1PW1PtnteRy91NnBIi
         BJ7w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@cogentembedded-com.20150623.gappssmtp.com header.s=20150623 header.b="MArB/yKU";
       spf=pass (google.com: domain of sergei.shtylyov@cogentembedded.com designates 2a00:1450:4864:20::142 as permitted sender) smtp.mailfrom=sergei.shtylyov@cogentembedded.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=S8cxxPU44zD+0G1/Iv/KfmY9Bblyu0PRPKWDCWyBPLc=;
        b=VZYXd3RrZdpqcpEJWqPLsggY44nlsODCmMAznclP+UH5yfSssp23dVs0IPSdmuDSDb
         0DG+zMOaCLVJKcoUM3HRrr8KyaZcrIuVC9AZqKDb1rMcsTqQ3U1L8sX8j3ADMCa/sZOH
         diTR0CrXKy1YzO1LpqOgueCnurMnsgvSS6/R2ikdOMkXBzmfHVeVOv/yTdWr9tVwpDMi
         DiVGpp3k3NlHo0dsHbHxXmOmXxGXWCD3xGKI6EuXy1Cc9CctVaxzdLzAhH9wMJWD1FcP
         I282SkuR/asGW0jcmXsmskgrDPhs7E3PKkV1YTPlJ/gPAksOiuNLy4GLsE+6y2BkfQm0
         jEuA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=S8cxxPU44zD+0G1/Iv/KfmY9Bblyu0PRPKWDCWyBPLc=;
        b=FrDpFnKRHuzI+NvFaQhK2Y6uLcA7zX9teuZ7C8WkiX2P0OgtpYNaVBbYP3WJP9uLGE
         zFDKSStgWFFQdiVq8RxRFW8yvPjcwchU2hnr3wLrGHPs9xoXMR1e6Xnh5zRdn3z3puY+
         si0i0Fz40X3X5FrMZ6g5xLlYnwPbGoxRvJTKVr7aQYmiKmwFGN6xVloqEq8bHQdYf/ou
         TAhuo7kww78HHNhcukL1Qr15BsZxuDpg8y28Dq1PpJPfPgVNB10zrldp9WpMgfhDffj5
         BtPpGaSUAZHZsYUr9Mzu/wZSiWbK7DcWMtt0ZO3SMyvIEq/kZJIffZol6AtJe5EySTgd
         HZVg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXHgqOkOoQ0PI++NEhYdBJEABteTfazfKiFiArtv2N0k6O0pndD
	aoZrBF2rL2fpUCGT5kBOou4=
X-Google-Smtp-Source: APXvYqz/IxtBu8qAeHBBLOUeX8EA2Km4E4xjuqbmJPZdwowB0DWhYphSWZ1x/bSwG3ZjycYy4V0m4Q==
X-Received: by 2002:a5d:5052:: with SMTP id h18mr14458739wrt.143.1570986387800;
        Sun, 13 Oct 2019 10:06:27 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1c:9dc8:: with SMTP id g191ls5171514wme.2.gmail; Sun, 13
 Oct 2019 10:06:27 -0700 (PDT)
X-Received: by 2002:a05:600c:2054:: with SMTP id p20mr12615911wmg.76.1570986387221;
        Sun, 13 Oct 2019 10:06:27 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1570986387; cv=none;
        d=google.com; s=arc-20160816;
        b=wMHBnm+NaO1n7+f8r+KbKinvdfMHzXN9wruI5giSgtW7FufRnKuE09cxKWXx7dByLI
         zj3xyvs6+WTo+KLwqqVRP7yGg2aFybm9YB40HmsVDFFHNIezWAhosr+X6Qfk3oqKDSET
         FZU+bDxLOJQMc4I2pkOxXf+r8Do+goqskw/hI9WSrWFcxUNTw5R+scKpfsQDJ0u6Dzqj
         ZKLstufE/dhWPLkIUOj5nYpilp2SGExwiMedR9ahKLMGouwRW6mAvh3o4p8kE87fwpV2
         piy4/sELXPnSYjQz+Eo+s9L8xcuIDqN9lpBI+MGQ6AWNh7gQsRfoy2hUX/Pq70htxriS
         PPvw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:to:subject
         :dkim-signature;
        bh=xLbu07FbZMOUGLOKpbGSEAHgMuRzWgnJgVeR/okx9Mc=;
        b=IcAJ+Q8DSXCx+y2EMFYPWOTnOU7BEXH4dYVrKj6XNqUtt8oX/5St8bkaF5OiRVXsvD
         tB6uA8yH+w1vTAJbTj7Du4NLuwi+pvl9e3EWOW5J612DN0g2utLEfiWVD+Hun9w056BN
         rLZs9W4nijdVWtvPoCXMOgS2uqJxNYOif/q47K5al0zAdDrMC1MMR6O0hPTaftPDUxwt
         5MY0u8bcZfGLz2sxR9furqqqWat/cRZW/c9rsdfwF+mayA2AH6kzuf3VpqlSxBK7/D8s
         m5V1LApGrtUC/gny27B2sFP5Y7Cyd/LQxDuHJZtH4Dh0gpxU/CQZ6exVGebqpuXQDkdG
         HfSg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@cogentembedded-com.20150623.gappssmtp.com header.s=20150623 header.b="MArB/yKU";
       spf=pass (google.com: domain of sergei.shtylyov@cogentembedded.com designates 2a00:1450:4864:20::142 as permitted sender) smtp.mailfrom=sergei.shtylyov@cogentembedded.com
Received: from mail-lf1-x142.google.com (mail-lf1-x142.google.com. [2a00:1450:4864:20::142])
        by gmr-mx.google.com with ESMTPS id r1si661521wrn.2.2019.10.13.10.06.27
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 13 Oct 2019 10:06:27 -0700 (PDT)
Received-SPF: pass (google.com: domain of sergei.shtylyov@cogentembedded.com designates 2a00:1450:4864:20::142 as permitted sender) client-ip=2a00:1450:4864:20::142;
Received: by mail-lf1-x142.google.com with SMTP id y127so10192559lfc.0
        for <clang-built-linux@googlegroups.com>; Sun, 13 Oct 2019 10:06:27 -0700 (PDT)
X-Received: by 2002:ac2:5c4b:: with SMTP id s11mr15044950lfp.37.1570986386652;
        Sun, 13 Oct 2019 10:06:26 -0700 (PDT)
Received: from ?IPv6:2a00:1fa0:4851:f638:84a8:96d0:2933:dfbf? ([2a00:1fa0:4851:f638:84a8:96d0:2933:dfbf])
        by smtp.gmail.com with ESMTPSA id k23sm3568595ljc.13.2019.10.13.10.06.24
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 13 Oct 2019 10:06:25 -0700 (PDT)
Subject: Re: [PATCH v5 bpf-next 09/15] samples/bpf: use own flags but not
 HOSTCFLAGS
To: ast@kernel.org, daniel@iogearbox.net, yhs@fb.com, davem@davemloft.net,
 jakub.kicinski@netronome.com, hawk@kernel.org, john.fastabend@gmail.com,
 linux-kernel@vger.kernel.org, netdev@vger.kernel.org, bpf@vger.kernel.org,
 clang-built-linux@googlegroups.com, ilias.apalodimas@linaro.org
References: <20191011002808.28206-1-ivan.khoronzhuk@linaro.org>
 <20191011002808.28206-10-ivan.khoronzhuk@linaro.org>
 <99f76e2f-ed76-77e0-a470-36ae07567111@cogentembedded.com>
 <20191011095715.GB3689@khorivan>
 <3fb88a06-5253-1e48-9bea-2d31a443250b@cogentembedded.com>
 <20191012212643.GC3689@khorivan>
From: Sergei Shtylyov <sergei.shtylyov@cogentembedded.com>
Message-ID: <03db016e-5337-0207-3d17-0b3bbe79fa5c@cogentembedded.com>
Date: Sun, 13 Oct 2019 20:06:24 +0300
User-Agent: Mozilla/5.0 (Windows NT 6.3; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191012212643.GC3689@khorivan>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: sergei.shtylyov@cogentembedded.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@cogentembedded-com.20150623.gappssmtp.com header.s=20150623
 header.b="MArB/yKU";       spf=pass (google.com: domain of
 sergei.shtylyov@cogentembedded.com designates 2a00:1450:4864:20::142 as
 permitted sender) smtp.mailfrom=sergei.shtylyov@cogentembedded.com
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

On 13.10.2019 0:26, Ivan Khoronzhuk wrote:

>>>>> While compiling natively, the host's cflags and ldflags are equal to
>>>>> ones used from HOSTCFLAGS and HOSTLDFLAGS. When cross compiling it
>>>>> should have own, used for target arch. While verification, for arm,
>>>>
>>>> =C2=A0 While verifying.
>>> While verification stage.
>>
>> =C2=A0 While *in* verification stage, "while" doesn't combine with nouns=
 w/o
>> a preposition.
>=20
>=20
> Sergei, better add me in cc list when msg is to me I can miss it.

    Hm, the earlier mails were addressed to you but no the last one --
not sure what happened there, sorry.

> Regarding the language lesson, thanks, I will keep it in mind next
> time, but the issue is not rude, if it's an issue at all, so I better
> leave it as is, as not reasons to correct it w/o code changes and
> everyone is able to understand it.

    Up to you. and the maintainer(s)...

>>>>> arm64 and x86_64 the following flags were used always:
>>>>>
>>>>> -Wall -O2
>>>>> -fomit-frame-pointer
>>>>> -Wmissing-prototypes
>>>>> -Wstrict-prototypes
>>>>>
>>>>> So, add them as they were verified and used before adding
>>>>> Makefile.target and lets omit "-fomit-frame-pointer" as were proposed
>>>>> while review, as no sense in such optimization for samples.
>>>>>
>>>>> Signed-off-by: Ivan Khoronzhuk <ivan.khoronzhuk@linaro.org>
>>>> [...]

MBR, Sergei

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/03db016e-5337-0207-3d17-0b3bbe79fa5c%40cogentembedded.com=
.
