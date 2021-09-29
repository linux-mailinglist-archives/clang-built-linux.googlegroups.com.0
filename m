Return-Path: <clang-built-linux+bncBCKITOX5G4IKDHORRIDBUBFE4ULTO@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x13c.google.com (mail-lf1-x13c.google.com [IPv6:2a00:1450:4864:20::13c])
	by mail.lfdr.de (Postfix) with ESMTPS id E08C441C382
	for <lists+clang-built-linux@lfdr.de>; Wed, 29 Sep 2021 13:31:45 +0200 (CEST)
Received: by mail-lf1-x13c.google.com with SMTP id z9-20020a0565120c0900b003fce36c1f74sf2084838lfu.9
        for <lists+clang-built-linux@lfdr.de>; Wed, 29 Sep 2021 04:31:45 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1632915105; cv=pass;
        d=google.com; s=arc-20160816;
        b=jxu6NpUvWZy1jn1UV7NG1ZWubkrtfWPyjV+QqFbHzPCFGrcxEn7+7gKjazq9vo+lT9
         KhToVogKH1jbwGJZBQatC0UQF9l2WAXqFnCeht34bnFDLYkE4xSb+sjf/l/o7UfuwXNG
         6btoZYuJt51N7Dm+mmMQSpEyq63x/Bo7MJrh/SjYbBlykyOlUy60FiJVHvYuQnFt1QSa
         ABQXwD2FRD9jGRxjRhAsQ9moBuI2TOmTd3Ghnnt2lRg+EYbkG+2BEZz6+iatXnlFgUsV
         TC6iPxDnhXqnbfRr6aXVlUSl2HpDLA3qcQMUNyvNQupXOskYnaWGjAAPFLivg8YX5BIJ
         lihQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:to:references:message-id
         :content-transfer-encoding:cc:date:in-reply-to:from:subject
         :mime-version:sender:dkim-signature;
        bh=5mQ7D4coIwLlrarzP/Xp1Ue3y8Ex5F5Ny4xqjPKipr8=;
        b=C6NRqvQO6RocIWF8T7fG6kIk2qQfJEM+4N6NuzARaZG+rORmqAt8bTxxligigitoaY
         qx9wy3wNDbn7TMm2dv5IIyX7+bh3ZWHBy2hp8F4u8R4ouQgYHmynQsKqS+LxfK+tWC1Y
         bqKw2PTF28uxW1vjPjTaUvNLxTMx+3df+cUs8zutadlg9vv2iIvu8g2qNM0v/gEK+i1J
         7VV15OfpWQQFhIpq2jOsS3HDvihs243zOgzEIL/UULyijBO4Is7N5fDHO3f+EVpae/+q
         OsMkb4AgKrQApo/dq66gypzeVxFzApHdz24twBAYv7rFLz0topbwkAqu+bM1JgHp956J
         zJtA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=Tk2tzKPG;
       spf=pass (google.com: domain of maxim.kuvyrkov@linaro.org designates 2a00:1450:4864:20::132 as permitted sender) smtp.mailfrom=maxim.kuvyrkov@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:mime-version:subject:from:in-reply-to:date:cc
         :content-transfer-encoding:message-id:references:to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=5mQ7D4coIwLlrarzP/Xp1Ue3y8Ex5F5Ny4xqjPKipr8=;
        b=L1MPhhyXBphLaSZnTnEatPx9xeIm3f5zu68jWoDUv9lv1gGm/wnCaiPspSJox3glMi
         +PFK/lD/LigWG4ZeAj2oP+oyEV9sd49oxVx1xan0QlvMYyDBmK/YJxyDbu3tIhn7/XwU
         f73WKk0trRyzMmopE8nIXZufKZWD3vdAjz25QIke8FbBDwHknW5uetwyA37+Dp3X6dQs
         sh16gXb7i/CJKfQ5TG35OqhTywAOuht4ieDwMUd4VGymuWcN2nWG+ulGEYdFXBPpy+7A
         L//f0QR6jxzw0/mRJRPKU0iPXSgtwIYVhq24r1rawNbdqcx18SbQxyIkwvBYHxgEL3df
         2Hhg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:mime-version:subject:from:in-reply-to
         :date:cc:content-transfer-encoding:message-id:references:to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=5mQ7D4coIwLlrarzP/Xp1Ue3y8Ex5F5Ny4xqjPKipr8=;
        b=aep0ZRq5tKPMHx5BS0FJJfgisGCmI5+ZyVd/57gXB3Ozr/AdelcP/rYNd4ThbWQKEv
         drTTSrozUhTosKxLt+Rjq7kNIwEjBxq4MDvOgSYS5l4Wr8wImDLXlPbrVo0VNRQaTzVq
         5xz4GNiYu4P1FgjoUQhDeJ++v3Nnjgcg0yRb5VunJ4qE+F2CCTiJEwSbo3hyXj3J845m
         GcPWRQCd/tuivqb4Fuih6C0C7SkUTJYeNNX7H/1BhP9rI0WUVV989F4kBUyskeNk2WXY
         aLWHHeFVbno024q+lx+5D9u88Gr8mg2ZMJnfgAK7QZIpHaQUWl3yj9nWRQ7tXh6ZVZ8L
         dM0w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530tUbtVkB/4eFx37b0beZJAdPfqDQOYXFoPGugysCE17NLrhyJg
	RDgiHZNg2An3+B8DW7V/ozg=
X-Google-Smtp-Source: ABdhPJyMyCLwvmuzvqC+OUlblh4qRXZUXGEaIW7jaiWLoCn9/8yPLPAc8wYiOvJf+XfNwDOfAFynoA==
X-Received: by 2002:ac2:5624:: with SMTP id b4mr10883847lff.687.1632915105511;
        Wed, 29 Sep 2021 04:31:45 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6512:3994:: with SMTP id j20ls63455lfu.3.gmail; Wed, 29
 Sep 2021 04:31:44 -0700 (PDT)
X-Received: by 2002:ac2:4903:: with SMTP id n3mr11080162lfi.16.1632915104380;
        Wed, 29 Sep 2021 04:31:44 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1632915104; cv=none;
        d=google.com; s=arc-20160816;
        b=MJKLJUc8ISbmFYYRhGGLbAWzkASbfvaAskb9doYEV7ESKhk1okTTZubijetuivuZ7O
         IA3EykEDPF/3yb29h3fceKRIJ2cCjZ4kBMK/6yTTKclp62UmdaAYdAPLQL+HqgXhMKYt
         GF6Yy98SugW+8RYhxsZVGjEHE2kInGDCn5L/nPb+ovpMZPoPLHiEpJnXelPmZALTiK7k
         fY9syUuV7UW5fLumxcwcWlScLVzKBias58lCl3MxF+aJsEP7VwsBSgM3LjCqLiPhosM3
         VLqdvsMEV7BqMbKcu9/JTdr8WzA73zVr/I5xfsrwSnWk5OQ22IVa7g0jUYUrV65g6meD
         /Esg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:references:message-id:content-transfer-encoding:cc:date
         :in-reply-to:from:subject:mime-version:dkim-signature;
        bh=ZtGnGjcZ225NkTRCDpHYVNqqyAF5QsFJzkxK0RXENbQ=;
        b=p1TNU9wxHmMEyE4typ39X1Z2r0siWLicvK6NCrfzN7e6BKPBDy3vLoBKSqe1XHPXhu
         c8PZij2CLuIhX544pKJRZj3KnqeC5UmYzdGEbNyRpL3dMIb8+k3k78XeF4aqS2hDatjY
         qj3mopWz9+Fe0TpxYIqDhw06WSbx2yJfiCdzzyu80cWv/w8hU88XLQ4HFKRsv8GHI49H
         +IzZjkALG0jHBf0I5BoujRlrZLdTfMbl90WFivutBuB85yPMq7DRAMNSqwR0YE9aeQXI
         U4yfDdzbNZfL0iGRgCUYGOG5uMRUBIaxTUO7eIiFOb+ZBWr1OHTxHnbptH1uIbisW8zr
         3QzA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=Tk2tzKPG;
       spf=pass (google.com: domain of maxim.kuvyrkov@linaro.org designates 2a00:1450:4864:20::132 as permitted sender) smtp.mailfrom=maxim.kuvyrkov@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: from mail-lf1-x132.google.com (mail-lf1-x132.google.com. [2a00:1450:4864:20::132])
        by gmr-mx.google.com with ESMTPS id z12si121958lfd.13.2021.09.29.04.31.44
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 29 Sep 2021 04:31:44 -0700 (PDT)
Received-SPF: pass (google.com: domain of maxim.kuvyrkov@linaro.org designates 2a00:1450:4864:20::132 as permitted sender) client-ip=2a00:1450:4864:20::132;
Received: by mail-lf1-x132.google.com with SMTP id y26so9255391lfa.11
        for <clang-built-linux@googlegroups.com>; Wed, 29 Sep 2021 04:31:44 -0700 (PDT)
X-Received: by 2002:a05:6512:12c6:: with SMTP id p6mr10825570lfg.271.1632915104145;
        Wed, 29 Sep 2021 04:31:44 -0700 (PDT)
Received: from [192.168.0.218] ([185.30.228.145])
        by smtp.gmail.com with ESMTPSA id u10sm215357lfm.23.2021.09.29.04.31.43
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 29 Sep 2021 04:31:43 -0700 (PDT)
Content-Type: text/plain; charset="UTF-8"
Mime-Version: 1.0 (Mac OS X Mail 13.4 \(3608.120.23.2.7\))
Subject: Re: [CI-NOTIFY]: TCWG Bisect
 tcwg_kernel/llvm-master-aarch64-next-allyesconfig - Build # 14 - Successful!
From: Maxim Kuvyrkov <maxim.kuvyrkov@linaro.org>
In-Reply-To: <da59ffea-1d76-c56e-d64b-3fe9e5a686fc@kernel.org>
Date: Wed, 29 Sep 2021 14:31:43 +0300
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
 linaro-toolchain <linaro-toolchain@lists.linaro.org>,
 clang-built-linux <clang-built-linux@googlegroups.com>,
 Arnd Bergmann <arnd@linaro.org>
Content-Transfer-Encoding: quoted-printable
Message-Id: <AEE82E2E-55BC-4E80-ABC6-C69610C2EE6C@linaro.org>
References: <725376535.1725.1628020339453@localhost>
 <da59ffea-1d76-c56e-d64b-3fe9e5a686fc@kernel.org>
To: Nathan Chancellor <nathan@kernel.org>
X-Mailer: Apple Mail (2.3608.120.23.2.7)
X-Original-Sender: maxim.kuvyrkov@linaro.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b=Tk2tzKPG;       spf=pass
 (google.com: domain of maxim.kuvyrkov@linaro.org designates
 2a00:1450:4864:20::132 as permitted sender) smtp.mailfrom=maxim.kuvyrkov@linaro.org;
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

> On 3 Aug 2021, at 23:16, Nathan Chancellor <nathan@kernel.org> wrote:
>=20
> On 8/3/2021 12:52 PM, ci_notify@linaro.org wrote:
>> Successfully identified regression in *linux* in CI configuration tcwg_k=
ernel/llvm-master-aarch64-next-allyesconfig.  So far, this commit has regre=
ssed CI configurations:
>>  - tcwg_kernel/llvm-master-aarch64-next-allyesconfig
>> Culprit:
>> <cut>
>> commit 3d463dd5023b5a58b3c37207d65eeb5acbac2be3
>> Author: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
>> Date:   Thu Jul 29 12:40:19 2021 +0200
>>     nfc: fdp: constify several pointers
>>          Several functions do not modify pointed data so arguments and l=
ocal
>>     variables can be const for correctness and safety.  This allows also
>>     making file-scope nci_core_get_config_otp_ram_version array const.
>>          Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonic=
al.com>
>>     Signed-off-by: David S. Miller <davem@davemloft.net>
>> </cut>
...
>=20
> As far as I can tell from these links, next-20210730 is still being teste=
d, whereas there have been two new linux-next releases that have had this f=
ixed. Would it be possible to tell the system to test the latest release, w=
hich I believe should build without errors according to our CI?
>=20
> https://github.com/ClangBuiltLinux/continuous-integration2/actions/runs/1=
093846606
>=20

Hi Nathan,

It can take a couple of days to bisect regressions when build farm is loade=
d.  Other than that, CI automatically picks up new linux-next on every buil=
d.

Regards,

--
Maxim Kuvyrkov
https://www.linaro.org



--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/AEE82E2E-55BC-4E80-ABC6-C69610C2EE6C%40linaro.org.
