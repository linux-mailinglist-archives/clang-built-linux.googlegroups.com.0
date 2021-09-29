Return-Path: <clang-built-linux+bncBCKITOX5G4IIPH6RRIDBUBALC44HS@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x437.google.com (mail-wr1-x437.google.com [IPv6:2a00:1450:4864:20::437])
	by mail.lfdr.de (Postfix) with ESMTPS id BD41141C387
	for <lists+clang-built-linux@lfdr.de>; Wed, 29 Sep 2021 13:35:35 +0200 (CEST)
Received: by mail-wr1-x437.google.com with SMTP id p4-20020adfe604000000b0016074dc4c46sf504908wrm.2
        for <lists+clang-built-linux@lfdr.de>; Wed, 29 Sep 2021 04:35:35 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1632915335; cv=pass;
        d=google.com; s=arc-20160816;
        b=oLtsabCyDbyDqiHr3l4EBaxIOpuKX/1NfPlX2p+MYyfOsQgCQMakf/AmhJmUk5DADp
         qay3cqmuXWQXqZBkA+abnEYkiOPp81Z4FR/pLvg7RTl997zp1lRAed1fKmNZnuFpc+d2
         WNcKZx1xRoy5jbPaSz+g0RW0MCGv9cqCR2Sto7VyCmcV02wlqJSbMc80FTDsgjnY87lF
         uHudtX8ZzeRC3/haJN8wREEOVV4CyYAAfr7tr0IzAoRroql7X5CqqM22pqJJIe5r+DD8
         cs25bPKy3ztjSVcew0bXdHIb6BmFT49YnH2TGpV9xsLnEq7B/GPMZRNhuMPoKOXBgSub
         Kt0g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:to:references:message-id
         :content-transfer-encoding:cc:date:in-reply-to:from:subject
         :mime-version:sender:dkim-signature;
        bh=tzFB50/NXGeFy/QlhP7NlpJU229dKi2BxwUME6Dadv8=;
        b=ZZiLJ8DKPGDRAUg5W7pz5+g0SGgOjvDCxQHTgG6e59xpTuGr0+g0uwa1j0Pi6gjKqK
         2/5A4wyD1O0htbjVvyq7f2VCJApw4LrsL2dUDNCBMmXYQwtSJaA3p2ACzgVJ1nLGSleJ
         w2GXtlBIa7FnMh3B3/3fadXK421PnZWqWd2hRkbgIbjhJUubj2VRszf1gDRAtZ3Y3EMy
         v2GxCjn/y1UnsbHZgN/OFfU4WOPdApWiuIPr64g1rBcWplCqOQldpzSp7BdmAvPfWv6q
         TG2XEyFObLASnQTUVSW9ThYZ3N6rjVzoVbpB6m9+x+XELe+NDWO4EPiDb8CZ8+YKGKuy
         2K0g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=ilAy3rj0;
       spf=pass (google.com: domain of maxim.kuvyrkov@linaro.org designates 2a00:1450:4864:20::12f as permitted sender) smtp.mailfrom=maxim.kuvyrkov@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:mime-version:subject:from:in-reply-to:date:cc
         :content-transfer-encoding:message-id:references:to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=tzFB50/NXGeFy/QlhP7NlpJU229dKi2BxwUME6Dadv8=;
        b=jfyc3LT8iTcD9f6C/znfgNdSEyL/ejjfUteV7VZTszEoucDaLEzg3vKt8SJ5btYBWH
         ig9k8DMQwgICf4tt5f676bz4SJGBKsbMD7kkehFirq7vdb/1O639xeRYeToEYcywLK60
         f7p+kUTrzfmLmrOyAQWASKesNCriAGCKFoW7UcHPWj87u9vmvBXkYzlUD1Nnlr3DzcgR
         Kw5fslK2qd8GViDOPJTr5j6gD0/W0z6DuAS0DCkHQYziFwP62bWkZEN4VA8skEGzilyD
         8Znc+XLxRGmhZ37vvdiK0hSjt1BBLkhgfRuesZ9fNthRddV7HUzJdUrxRJ6lVqhu4U7Q
         7l/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:mime-version:subject:from:in-reply-to
         :date:cc:content-transfer-encoding:message-id:references:to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=tzFB50/NXGeFy/QlhP7NlpJU229dKi2BxwUME6Dadv8=;
        b=U0TJQOcZ4qq8u4VMGqGFbAZm0z2lJUSfjAWO1yHBoUjPDTkGE+gUV15izLJpDMzaNR
         Aaq3+YYziBa7vX3vUWbQPbIoUuqbDPzTlaIR9Kzm/c1s4aSQ+bsVgsabckcYgvnxJDNG
         9hwUk0tPc2XqzjKAXp0Siiht8bFU4pyZX9EAejdE/W5PAu0yekAHr62D+rvsQxPKFuC8
         lzOSTrmGNxVIhF9OEXsTgDXSDCvBxzEszrpRBKndVSmwx0tblL6GWaY79h6SzJQ+Dt0k
         3oi8G1vfgGLrq7uw1g2+W6zV/uyxpfxaZqIhib+HG4ZDHHooxMggcGuqjLNWbPHGkI3q
         /geQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5318jPZj5b92vqOAbDMCUBSS0w1w6ys/g7EEs6KK9tmyQbYJ5pK2
	RJxfon5grvtZ0+gMasgVPEI=
X-Google-Smtp-Source: ABdhPJx3dqFNIpUFIuFrRaCXNfKKFAtuwNs/ZYM+if/nNgufRaA4jFodipnaMbtCueasAeah86duLg==
X-Received: by 2002:a5d:4a4e:: with SMTP id v14mr6154944wrs.271.1632915335565;
        Wed, 29 Sep 2021 04:35:35 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a7b:c3c8:: with SMTP id t8ls1023943wmj.3.gmail; Wed, 29 Sep
 2021 04:35:34 -0700 (PDT)
X-Received: by 2002:a1c:4b04:: with SMTP id y4mr6315260wma.85.1632915334705;
        Wed, 29 Sep 2021 04:35:34 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1632915334; cv=none;
        d=google.com; s=arc-20160816;
        b=MeNKB8FVD3ehEsmxMXxJW+SRvWPnWxpWbvrTcrTd8IIVPpf8FOhcWNAN6XpCGkbWSE
         z21RJb4yObauB1qhsxrk7939r9wHT4/U+uKWsZmPrtjDG4ukEWx4bFmUBy40X3rulVG9
         eI38lI7R2ulykBiFtTO3RfC7H2+FS6icirf3XIEvzWvhK0jGYtlt7Zure+crhLB89gyo
         ey7cLNSg3rqt+Pxi202iS4ywN1PQwdbCwoEh8Ov9ppNfe5atYBJXsyVp/ffEXvdUJM3I
         y/xJhL4SYwpv08FcdmLhfmqcfugFgRPFTgY1K+fhJouTVYyiIm8i6AxepxUZNAhKK0rr
         Nn/g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:references:message-id:content-transfer-encoding:cc:date
         :in-reply-to:from:subject:mime-version:dkim-signature;
        bh=voyK+sJhvQrvgFn6wXl78p3dbGTvdcMufI8MzjdzidY=;
        b=JL/kxBuufyjSBczSZ9+l284ZLDH+buITw4noUVPVc39k9yY1oPJ/MOfdFyIywCN9MY
         YMohQ/85fjjjln8tQTyvDJPhnjt15/slxkwCBq8A04m1F0aFP6kz175g7Yxh+c6DILKp
         7k4tVXX+Zq2g+M+666CXxWZGCJjzaT1Ta5SOxD+yppNgNzBF5kiKuaDFNCTHpj/UxyVd
         iK415PEo28tbWhQ3/qtHlVGu6mHIfSiwuSIaAoVMpuOkwtQ+vGFnGjc7Hf+X4rNkHPXA
         aQ0AwwcvRM7dshRCtCEqJUQkYA9LWNMWLzZ0gS1+Pb+5cS2HCcSfZKAps0sqcJdBaTDP
         6QJg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=ilAy3rj0;
       spf=pass (google.com: domain of maxim.kuvyrkov@linaro.org designates 2a00:1450:4864:20::12f as permitted sender) smtp.mailfrom=maxim.kuvyrkov@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: from mail-lf1-x12f.google.com (mail-lf1-x12f.google.com. [2a00:1450:4864:20::12f])
        by gmr-mx.google.com with ESMTPS id i66si452992wma.0.2021.09.29.04.35.34
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 29 Sep 2021 04:35:34 -0700 (PDT)
Received-SPF: pass (google.com: domain of maxim.kuvyrkov@linaro.org designates 2a00:1450:4864:20::12f as permitted sender) client-ip=2a00:1450:4864:20::12f;
Received: by mail-lf1-x12f.google.com with SMTP id e15so9304275lfr.10
        for <clang-built-linux@googlegroups.com>; Wed, 29 Sep 2021 04:35:34 -0700 (PDT)
X-Received: by 2002:a2e:7008:: with SMTP id l8mr5586793ljc.340.1632915334396;
        Wed, 29 Sep 2021 04:35:34 -0700 (PDT)
Received: from [192.168.0.218] ([185.30.228.145])
        by smtp.gmail.com with ESMTPSA id d27sm217139lfq.12.2021.09.29.04.35.33
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 29 Sep 2021 04:35:34 -0700 (PDT)
Content-Type: text/plain; charset="UTF-8"
Mime-Version: 1.0 (Mac OS X Mail 13.4 \(3608.120.23.2.7\))
Subject: Re: [CI-NOTIFY]: TCWG Bisect
 tcwg_kernel/llvm-release-aarch64-next-allnoconfig - Build # 10 - Successful!
From: Maxim Kuvyrkov <maxim.kuvyrkov@linaro.org>
In-Reply-To: <CAKwvOdnw1iRgUf8yW0mW6XzAU00CyMvmyqWpYcaNJLSAY3=CkQ@mail.gmail.com>
Date: Wed, 29 Sep 2021 14:35:33 +0300
Cc: Nathan Chancellor <nathan@kernel.org>,
 Arnd Bergmann <arnd@linaro.org>,
 Javier Martinez Canillas <javierm@redhat.com>,
 linaro-toolchain <linaro-toolchain@lists.linaro.org>,
 clang-built-linux <clang-built-linux@googlegroups.com>,
 Todd Kjos <tkjos@google.com>
Content-Transfer-Encoding: quoted-printable
Message-Id: <05126B99-7592-45CC-BE44-0032E083792C@linaro.org>
References: <2109475329.10103.1627349216402@localhost>
 <77ac9112-b6d3-e911-6944-3e2188b23388@kernel.org>
 <CAKwvOdnw1iRgUf8yW0mW6XzAU00CyMvmyqWpYcaNJLSAY3=CkQ@mail.gmail.com>
To: Nick Desaulniers <ndesaulniers@google.com>
X-Mailer: Apple Mail (2.3608.120.23.2.7)
X-Original-Sender: maxim.kuvyrkov@linaro.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b=ilAy3rj0;       spf=pass
 (google.com: domain of maxim.kuvyrkov@linaro.org designates
 2a00:1450:4864:20::12f as permitted sender) smtp.mailfrom=maxim.kuvyrkov@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
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

> On 28 Jul 2021, at 01:09, Nick Desaulniers <ndesaulniers@google.com> wrot=
e:
>=20
> On Mon, Jul 26, 2021 at 6:32 PM Nathan Chancellor <nathan@kernel.org> wro=
te:
>>=20
>> On 7/26/2021 6:26 PM, ci_notify@linaro.org wrote:
>>> Successfully identified regression in *linux* in CI configuration tcwg_=
kernel/llvm-release-aarch64-next-allnoconfig.  So far, this commit has regr=
essed CI configurations:
>>>  - tcwg_kernel/llvm-release-aarch64-next-allnoconfig
>>>=20
>>> Culprit:
>>> <cut>
>>> commit 8633ef82f101c040427b57d4df7b706261420b94
>>> Author: Javier Martinez Canillas <javierm@redhat.com>
>>> Date:   Fri Jun 25 15:13:59 2021 +0200
>>>=20
>>>     drivers/firmware: consolidate EFI framebuffer setup for all arches
>>>=20
...
>>> # 00:00:38 make: *** [vmlinux] Error 1
>>=20
>> It is good to see these reports again :)
>=20
> Yes! Is Maxim still driving these or is there someone else at Linaro
> we should be working with to keep this reports going?

Hi Nick,

Yes, I=E2=80=99m still looking after tcwg_kernel-llvm and tcwg_kernel-gnu C=
I loops.  There has been a silly bug that stopped reports for several month=
s, but they are back since end of July.

I have only now noticed this, while I was digging through email archives.  =
Please add me directly to CC: so that future messages end up in my inbox.

--
Maxim Kuvyrkov
https://www.linaro.org

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/05126B99-7592-45CC-BE44-0032E083792C%40linaro.org.
