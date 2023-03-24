Return-Path: <clang-built-linux+bncBD7274FIT4EBB2WC6WQAMGQE3E7JQNI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x340.google.com (mail-ot1-x340.google.com [IPv6:2607:f8b0:4864:20::340])
	by mail.lfdr.de (Postfix) with ESMTPS id 281B26C79F1
	for <lists+clang-built-linux@lfdr.de>; Fri, 24 Mar 2023 09:38:04 +0100 (CET)
Received: by mail-ot1-x340.google.com with SMTP id 71-20020a9d064d000000b00697e5dc461bsf468948otn.7
        for <lists+clang-built-linux@lfdr.de>; Fri, 24 Mar 2023 01:38:04 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1679647082; cv=pass;
        d=google.com; s=arc-20160816;
        b=tS8XsLnMsBPVLKFd7nZzn0kerFssnwHb/fDs/yPqYkbDn2tIOBF34Ly9EJXSP1SbnU
         FL7ddijbcJk/+eyeY17RBKEtj23OYvrBb/lQ8jVGqdTEa7hCl+98LQuCzB/l21pMdhmQ
         v0vUSyjq5fDE6qC1xdOpWK1+yslKGmdbW1eQTB5hIaFDzsVVdCxjNQPrNj4pjLv7DQmi
         5X08QC+NOhGMOR65Hbay0UAmbHFEhJE6fhfGTGyTqBYfDliVVfsd4idqNr6BFTac9ISq
         40L1wyl9Nany0hECl0fv7wOqOEdeECEn1lvC+zojcJ9Q8OyBi42Bp+45ZsClC6UQn5Hz
         FFDQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-transfer-encoding
         :in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:dkim-signature;
        bh=Vb8nHPzklOyj7nCl8L4gySFH17MKe6clYen5+rSIHTY=;
        b=Jjv5gBGm+DTjR7aZ3YuPP1+JUlIH8HjyEezERoE5wd9Sl/qGTpr1iR9WtTlHTk7wU5
         ZwpPT1YaIuBAkLPgV+4FhbpMJQCBtixtiOYftNc+6epzxDzOzqk/7AySOjXRVgERw9mD
         Y9RhyhQ0Wo5QXKGUmTZisGcsGtVcEBzQMSNe1WyOOmEUMERTO+Mn2L6oCpPegp8yt5uX
         6dFwhQpK+57ZSGJUK8B+yfibnwUZykKxWnWuwVGDadSiNFKsiscLQo1Kxze/1f49FBdl
         8UZUkmJz/uDbIIPuHbLCXKqN0YulEl78OHm75aBOfej/nrboPj6Bh5Ljhz4abHJ0Hj7V
         2Gnw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@collabora.com header.s=mail header.b=YM36CPg3;
       spf=pass (google.com: domain of angelogioacchino.delregno@collabora.com designates 2a00:1098:0:82:1000:25:2eeb:e5ab as permitted sender) smtp.mailfrom=angelogioacchino.delregno@collabora.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112; t=1679647082;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender
         :content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Vb8nHPzklOyj7nCl8L4gySFH17MKe6clYen5+rSIHTY=;
        b=pbRZiaysHaqyzLCaEYAfhbFkbO2RqT4Rg9p/qhDDLbVwWxmXLBWRjWfrHqHKZfKu0m
         EekeBEEUXASrYnWgwEh7txMeyJwUCb5LDjYbkgJUBcXXgEHblcW+CCssrwvW3Us0awXO
         756Zh2eU/szW5hayZ3h+2u3lgapIT2ABzh5sz4OdcArwiDPW0Y3GK2o+epMCj0VCnEyF
         5Xrhlskzdt4TuRLOXGk1qkJyKm6WGVVV+xJ3rFFXRMWo74PfMpaiNbKysOeVOwReYJeL
         6PyG+xhZwHuQq3PKfr/d39reXut9cpUobu/8ZTyyPcQ8yIaN9pxfhSZNHeR4MjYxcxWU
         kdcQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679647082;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender
         :content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Vb8nHPzklOyj7nCl8L4gySFH17MKe6clYen5+rSIHTY=;
        b=v7wCK5st2FgtrVZs5j5WCJPDMLRYJhVpiQYCwLCxJj8DSnRaOvNluPVd7wehhQkjTb
         EaESud3aZAJyLE42ZcD0IegbUqM/yuntRL8OaCu1ErnMM/FRE0Gj/uEyeEwImqVLsSK7
         JvdLW/GmYIAYHnPDmNr0CqT+5YA8R/kSNYu64mQyd9rI5ykuU3ZsNpWy94GPLPcobuCd
         RR9ewo1DeChjLBF4HAyjWMGqtmvD7zdtU3IV3htgyVbaGQhbr26VJt+kCXSl2a68jWQD
         NZKezUMHR/A1pMqGAvKuavmARGtTswDH8k+E6LKVb6gouyKEExt56n0v8a0Myy67QioT
         tyMQ==
X-Gm-Message-State: AO0yUKVKHlVCGmmGNoUh0WKXkeFhEuC5viamu2E3m57sOT5AXBnyZPg8
	FLq0RTRZKJ+os4wfCDwTjWA=
X-Google-Smtp-Source: AK7set/uL/jo43sLi7aUWAIXIGCMvD7/CTVoEcX7RSZcbOAbUYUP2fQKcOPmJJx2VE3k8On97A4sDg==
X-Received: by 2002:a05:6830:661b:b0:69c:245b:7387 with SMTP id cp27-20020a056830661b00b0069c245b7387mr3684111otb.2.1679647082407;
        Fri, 24 Mar 2023 01:38:02 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6871:4503:b0:177:c590:4bf7 with SMTP id
 nj3-20020a056871450300b00177c5904bf7ls374387oab.10.-pod-prod-gmail; Fri, 24
 Mar 2023 01:38:01 -0700 (PDT)
X-Received: by 2002:a05:6870:24a1:b0:177:9ede:bcc6 with SMTP id s33-20020a05687024a100b001779edebcc6mr1508308oaq.14.1679647081885;
        Fri, 24 Mar 2023 01:38:01 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1679647081; cv=none;
        d=google.com; s=arc-20160816;
        b=UIt2RP47hx1BmeRZaUvjmq9Hi+R83c5q9N1iBow5uNcujkI/dTRwjBw8ICDcdT+29e
         XHSJuoyC6Td1i1wPcVz8JSWPeTEFq6JZrUY6mcs2Hqimgo36vJGOFVeRUwV8ir3E8EqX
         FiY4n+9MWt0Wt0CLogpon5sDFHF12BAzIxN/RO7jKhl9yIfV2GlKDBS7qTZT+GesOGmc
         mcRhcoRbZW5w/aMiug7/R+9QHC6FK/OPUop2N6yVdfza0PlYFQ31ihbSzw73f6TXpo6K
         /rkb/7zp+KsDSgIHrNPsFUD8E2Xjo74OCURyJ0Nyy9eWzPMXhNABwxrsqAoU7bSt5mpn
         XMhQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :dkim-signature;
        bh=UFziutVOD38aGq+i4AXK6PrLP4XxpDfMHHr23e/178E=;
        b=Y5PiE1XjJaxjfBGm5BT5cWYPCnx6JznZhxk0rH4QM0doF3Akz4ljKZMv3QVEj0+a9w
         u9X5duzX74uGwTuheBVsEwhwajXacfTSbmJ+JR0piBnB0ImogzE3MvoXnBoEqrcsBOZG
         7Ky2vU7worbu53SBdUSOSl1u2lOGq+TIqc0euxYhiNtdhb2HVHivMyV1fIk/m6jr386K
         wQFcsupPR8mCE+b3iCBKkV/V+fuascMaMsCtCAN9fYz7dY+s25YqCxQoj2uqmOwZR9cJ
         pkBxHtiOjTl3fyj5WsJH6UNKkcKUcU4+3iZYPcYqOPlbbqXnAenEBN9aq+kEKi1VbdU5
         4iNQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@collabora.com header.s=mail header.b=YM36CPg3;
       spf=pass (google.com: domain of angelogioacchino.delregno@collabora.com designates 2a00:1098:0:82:1000:25:2eeb:e5ab as permitted sender) smtp.mailfrom=angelogioacchino.delregno@collabora.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=collabora.com
Received: from madras.collabora.co.uk (madras.collabora.co.uk. [2a00:1098:0:82:1000:25:2eeb:e5ab])
        by gmr-mx.google.com with ESMTPS id cb11-20020a056830618b00b0069f8cf409d9si1322628otb.2.2023.03.24.01.38.01
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 24 Mar 2023 01:38:01 -0700 (PDT)
Received-SPF: pass (google.com: domain of angelogioacchino.delregno@collabora.com designates 2a00:1098:0:82:1000:25:2eeb:e5ab as permitted sender) client-ip=2a00:1098:0:82:1000:25:2eeb:e5ab;
Received: from [192.168.1.100] (2-237-20-237.ip236.fastwebnet.it [2.237.20.237])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits))
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id AF9CC66030AA;
	Fri, 24 Mar 2023 08:37:59 +0000 (GMT)
Message-ID: <97a5f383-38f5-e8ea-e1d8-489b690e4521@collabora.com>
Date: Fri, 24 Mar 2023 09:37:57 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
Subject: Re: [PATCH v30 0/7] Add MediaTek SoC DRM (vdosys1) support for mt8195
Content-Language: en-US
To: Chun-Kuang Hu <chunkuang.hu@kernel.org>
Cc: "Nancy.Lin" <nancy.lin@mediatek.com>,
 Philipp Zabel <p.zabel@pengutronix.de>, Rob Herring <robh+dt@kernel.org>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 krzysztof.kozlowski+dt@linaro.org, Daniel Vetter <daniel@ffwll.ch>,
 Nathan Chancellor <nathan@kernel.org>,
 Nick Desaulniers <ndesaulniers@google.com>, CK Hu <ck.hu@mediatek.com>,
 dri-devel@lists.freedesktop.org, linux-mediatek@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, clang-built-linux@googlegroups.com,
 Project_Global_Chrome_Upstream_Group@mediatek.com, singo.chang@mediatek.com
References: <20230321121859.2355-1-nancy.lin@mediatek.com>
 <17831605-5c9d-9c92-d190-04f91060ace4@collabora.com>
 <CAAOTY_8ZAxVSLnJ1u5snsRgkszV7ixwhjUS2nDimE_Lpj=cUCA@mail.gmail.com>
From: "'AngeloGioacchino Del Regno' via Clang Built Linux" <clang-built-linux@googlegroups.com>
In-Reply-To: <CAAOTY_8ZAxVSLnJ1u5snsRgkszV7ixwhjUS2nDimE_Lpj=cUCA@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: angelogioacchino.delregno@collabora.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@collabora.com header.s=mail header.b=YM36CPg3;       spf=pass
 (google.com: domain of angelogioacchino.delregno@collabora.com designates
 2a00:1098:0:82:1000:25:2eeb:e5ab as permitted sender) smtp.mailfrom=angelogioacchino.delregno@collabora.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=collabora.com
X-Original-From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Reply-To: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
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

Il 24/03/23 00:25, Chun-Kuang Hu ha scritto:
> Hi, Angelo:
>=20
> AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com> =E6=
=96=BC
> 2023=E5=B9=B43=E6=9C=8823=E6=97=A5 =E9=80=B1=E5=9B=9B =E4=B8=8B=E5=8D=884=
:58=E5=AF=AB=E9=81=93=EF=BC=9A
>>
>> Il 21/03/23 13:18, Nancy.Lin ha scritto:
>>> The hardware path of vdosys1 with DPTx output need to go through by sev=
eral modules, such as, OVL_ADAPTOR and MERGE.
>>>
>>> Add DRM and these modules support by the patches below:
>>>
>>
>> I've tested v30 again on MT8173, MT8192 and MT8195 based Chromebooks.
>> Green light from me.
>=20
> I'm curious about how you build code and test on Chromebooks. Do you
> build in cros environment or pure linux
> (https://archlinuxarm.org/platforms/armv8/mediatek/acer-chromebook-r13).
> I've a MT8183 based Chromebook (HP 11a) and I've tried to run a
> upstream kernel on it. cros is too heavy for me and I doubt I could
> use it. I've tried the pure linux and could boot up with console, but
> display does not work. If you use the pure linux environment, could
> you share how it works?
>=20

I haven't tested MT8183 (I don't actually have any 8183 machine in my hands=
)... but
yes, I can share my test environment.

I have one MicroSD that I use either in the MicroSD slot of the target mach=
ine, or
in a USB reader; this *single* system is what I boot on *all* Chromebooks t=
hat I
have: one kernel, multiple devicetrees, same Debian-based userspace.

What we have to prepare this bootable media can be found at [1], but beware=
 that
it currently uses an outdated kernel, so, what I have locally is a symlink =
to my
kernel tree.
You can change/add/remove the devicetree blobs that will get added to the i=
mage
by modifying `chromebook-setup.sh`; before tampering with kernel tree symli=
nk,
please run that script for the first time, as it will download a cross-comp=
iler,
a kernel tree (that you will replace for sure) and the (very old) Debian ro=
otfs
that you can update with `apt-get dist-upgrade` after booting the Chromeboo=
k.

If you want to check about possible kernel configuration differences, what =
I use
is at [2], so that you can compare.

[1]: https://gitlab.collabora.com/google/chromebooks/-/tree/mtk-av1
[2]:=20
https://gitlab.collabora.com/google/chromeos-kernel/-/blob/mt8195-tracking-=
master-rolling/arch/arm64/configs/defconfig

Regards,
Angelo

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/97a5f383-38f5-e8ea-e1d8-489b690e4521%40collabora.com.
