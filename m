Return-Path: <clang-built-linux+bncBCT6537ZTEKRBV544KEQMGQEPFXABNY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x23d.google.com (mail-lj1-x23d.google.com [IPv6:2a00:1450:4864:20::23d])
	by mail.lfdr.de (Postfix) with ESMTPS id 760F04038B8
	for <lists+clang-built-linux@lfdr.de>; Wed,  8 Sep 2021 13:28:24 +0200 (CEST)
Received: by mail-lj1-x23d.google.com with SMTP id w28-20020a2e161c000000b001ba14fc0cd4sf825966ljd.10
        for <lists+clang-built-linux@lfdr.de>; Wed, 08 Sep 2021 04:28:24 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1631100504; cv=pass;
        d=google.com; s=arc-20160816;
        b=iaUxK3hAmD13LhL73Vm6cxwye/cZVYRt437nxMR8x8QWwkR+dBnbinpx7WMoQK2D/B
         ANyD4aLVIt6k1iOdjJLcwQNIMul4mIQwqOtctCLXI8pNCjTMGipZ77XDVjqVOwvUi29B
         uP01UoCfDjIpGSRm0lYQxbiyAvG92Yyz1dqFbd9+Zj77vcHbKDNAkEM5HnIITgI9LR+o
         e6Kdk0Z4arul6KqdcwyuKNcsx+eDEkWvfRbgUOZs7fWKQuOGecuZxN2++pCDhzAYMgPH
         PUCtdAJoTBCbZktA0hj7Js37ED+yyUT8yjuyxVGjbcxGnKSfoMbKO5RbW0MBD9Db0wN+
         4/OA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :mime-version:sender:dkim-signature;
        bh=ppgitq9IM7+xe2JILYGMXT3UJs687rOkAE4dCW4XK/g=;
        b=KYqIL31UZT3Lc14SKSS5dNh1pomw4nNEbGqc+LiTOTWa3VtBAbdMWDmLJ6+cZQAUTw
         5ATMMU/6EdI2bqDU79rilREGuizMFQHFkzsHwbIRP7Idzo83DsocGVYdgQUMNX+x2CCl
         rGUFYTx6ZEi+sNrWxv6glN09d4yoAyfleyW8T3xVURHxZmt7OX369Vz7AfPdKTBvP2UD
         o/GOdx0Br1cJ9xJrw2g8utFP52Y/cjVn5ULQitmgYLvBf7aXWB3057iBFlK6iOMOaHoB
         Byj676TWLwq2s3u4/TheHN76Yw63Ea2Ho1BU/+f5plsB6UbE1lRZkSHmsHvHMdOWdz23
         NM+g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b="Wz9lc/PO";
       spf=pass (google.com: domain of naresh.kamboju@linaro.org designates 2a00:1450:4864:20::62c as permitted sender) smtp.mailfrom=naresh.kamboju@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:mime-version:from:date:message-id:subject:to:cc
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ppgitq9IM7+xe2JILYGMXT3UJs687rOkAE4dCW4XK/g=;
        b=Or0AAUSJzEtl/atpNFFQjU+KQr63iMMZO8Zfh9ajguBT4v8I33LFVhZXHjs0Hwyn8l
         n0KppPna0RAOGBoptYpndqL5hOboDgNvxfV50mwl2tbcDJw/cVM4v79jaGrUR1QY2YdF
         wklqytpRdOIIGSTSJ4m0HFv//DQKOmIVziBcQTeqIA5uVqF3QIn1Ikv74bcEJpIMr1p0
         MmskCCEdzdN/nUa6YcYGqZR3iIVypdEOjhlupM0YRv2dYec8qSuAMyqZskCmTGZSULDG
         Nmdb6phu2zrdXrKPU92779p78wO0jygCmGAprNnUa21HJT7YxeRK5Q8ppiA+FCQgPxoR
         n8lQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:mime-version:from:date:message-id:subject
         :to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=ppgitq9IM7+xe2JILYGMXT3UJs687rOkAE4dCW4XK/g=;
        b=myc8c7J1V++g/uiplFObfsHLMcqsDRE4YhDuPFy/0Cofrdojqcd8UK263MD2y/HB8l
         g04ULSzR2mwnGqsWsoCGT9Khw4m4jWse+/NlEInNOx/+qVTR8XS38jmOyO5Rj3Ti7DmT
         vGG2UppXQXDM/lrUac1KgbaqLqTlTaakwFTTC9FvMA3VgF/13wEb65viL8xzF19J8NXO
         aadH8RdWkTolRhMfsLAbH0YNd9D89oM4i1Lv4SkXE2OAzV0xHEwiHktZv2Kbsu2pI2Od
         Eoc0xP8OAjVoQ0NsuxAMJWfgKKMnoAkr8LAqTiTbMVDyQyaOcil34do+nqvym+/ecysr
         rAuQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM53298Mb+WHCe4iOU76VDRhKNLQB0EFOkjijxQkFpCeahE0hK+36k
	GDNf6iihIMeskb6LE6Z7fuk=
X-Google-Smtp-Source: ABdhPJxY0bqkL+yGNq4DojzLAXTYbjxjXwNSZYwXSdFGiXkY+Ypz3XfMjk4JLMPg6D3LyiGd/hvrlA==
X-Received: by 2002:a2e:bc1d:: with SMTP id b29mr2341622ljf.2.1631100504006;
        Wed, 08 Sep 2021 04:28:24 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6512:3ba:: with SMTP id v26ls1267888lfp.3.gmail; Wed, 08
 Sep 2021 04:28:23 -0700 (PDT)
X-Received: by 2002:a05:6512:110b:: with SMTP id l11mr2302403lfg.199.1631100502942;
        Wed, 08 Sep 2021 04:28:22 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1631100502; cv=none;
        d=google.com; s=arc-20160816;
        b=ZxBE0ramzF/ilBXRFYNJpFTlhA8UgCixzqXe3dQCEPMh1CRJk7YN4Dw7j32bH5EtML
         5dK9XOTKP6622+te9/NYGhFbNMnfCwUWi83NCsUnSpUJNcpsARJsG3/kw7tW4NCrATH+
         Fe+nAnmNIv/IRUgfXTLKc76vqsnNrWJ0dG4oC8I/ypIAt6YVloYEGS4pINxGo0awwBLu
         qRpT+cXgyESZkf/U/xpDcPjbsUQKuxu84AoysEtLctDR/spOIyhoWkfBLuMjUcSNpdmE
         b9lCadv+nrHaThawE5PnSDRrbbULPeJsu9ITSrtM53cKlSKVi2uyrZoOZk7I00qOuwOY
         yzRQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:mime-version:dkim-signature;
        bh=0w+npLymedQOmdkTjXEumVbGXNXmwr0XOw2iRGbnJe0=;
        b=haQcGyCnlkqeNygkdKb3LsYSxS/ARMKT7gqPJws81jiMmkQuBtQTzKrix//c1R5QXf
         n5ikpgkWdjeDn8RuZ8uFYtaYHUQj4TYdD2TuE9bXyz/D50cI6dLd247lq+vzO1uzGccc
         8tkenZKUm23ZH/7wrCh1H00K0J7DDyrTlWIP0D2GXyJn/EmM60tz20KsokuI5TboUyON
         82yn1zZ1Z2wBV1CJQ8zcusd08bGOZYBZDK/rzpyPWPcFnqMmVAETyKgQPB610/cGbeSl
         lgcIyUp5m5TZXVMRD61MIVb6b5NsBGxI7i84JXo7LuPbpMcVcL6l5GGXupDNf5PabAxz
         OUnA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b="Wz9lc/PO";
       spf=pass (google.com: domain of naresh.kamboju@linaro.org designates 2a00:1450:4864:20::62c as permitted sender) smtp.mailfrom=naresh.kamboju@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: from mail-ej1-x62c.google.com (mail-ej1-x62c.google.com. [2a00:1450:4864:20::62c])
        by gmr-mx.google.com with ESMTPS id z4si121667lfr.2.2021.09.08.04.28.22
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 08 Sep 2021 04:28:22 -0700 (PDT)
Received-SPF: pass (google.com: domain of naresh.kamboju@linaro.org designates 2a00:1450:4864:20::62c as permitted sender) client-ip=2a00:1450:4864:20::62c;
Received: by mail-ej1-x62c.google.com with SMTP id bt14so3480327ejb.3
        for <clang-built-linux@googlegroups.com>; Wed, 08 Sep 2021 04:28:22 -0700 (PDT)
X-Received: by 2002:a17:906:681:: with SMTP id u1mr3452871ejb.499.1631100502434;
 Wed, 08 Sep 2021 04:28:22 -0700 (PDT)
MIME-Version: 1.0
From: Naresh Kamboju <naresh.kamboju@linaro.org>
Date: Wed, 8 Sep 2021 16:58:11 +0530
Message-ID: <CA+G9fYvThAuTu1-Tg+7BaFofxfBkvBuTAnycuws-U4p473MeZQ@mail.gmail.com>
Subject: ERROR: modpost: __mulodi4 [drivers/block/nbd.ko] undefined!
To: linux-block <linux-block@vger.kernel.org>, nbd@other.debian.org, 
	open list <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Linux ARM <linux-arm-kernel@lists.infradead.org>
Cc: Josef Bacik <josef@toxicpanda.com>, Jens Axboe <axboe@kernel.dk>, lkft-triage@lists.linaro.org, 
	Nick Desaulniers <ndesaulniers@google.com>, Nathan Chancellor <natechancellor@gmail.com>, 
	Arnd Bergmann <arnd@arndb.de>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: naresh.kamboju@linaro.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b="Wz9lc/PO";       spf=pass
 (google.com: domain of naresh.kamboju@linaro.org designates
 2a00:1450:4864:20::62c as permitted sender) smtp.mailfrom=naresh.kamboju@linaro.org;
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

Following build warnings/ errors noticed while building linux next
master branch with clang-13 for arm architecture with following configs.
  - footbridge_defconfig
  - mini2440_defconfig
  - s3c2410_defconfig

ERROR: modpost: __mulodi4 [drivers/block/nbd.ko] undefined!
make[2]: *** [/builds/linux/scripts/Makefile.modpost:134:
modules-only.symvers] Error 1
make[2]: *** Deleting file 'modules-only.symvers'
make[2]: Target '__modpost' not remade because of errors.
make[1]: *** [/builds/linux/Makefile:1952: modules] Error 2
make[1]: Target '__all' not remade because of errors.
make: *** [Makefile:226: __sub-make] Error 2
make: Target '__all' not remade because of errors.

Build config:
https://builds.tuxbuild.com/1xqOnCtgaWedE8U8jhmbI3FuAuJ/config

Reported-by: Linux Kernel Functional Testing <lkft@linaro.org>

meta data:
-----------
    git_describe: next-20210908
    git_ref:
    git_repo: https://gitlab.com/Linaro/lkft/mirrors/next/linux-next
    git_sha: 999569d59a0aa2509ae4a67ecc266c1134e37e7b
    git_short_log: 999569d59a0a (\Add linux-next specific files for 20210908\)
    kconfig: [
        mini2440_defconfig
    ],
    target_arch: arm
    toolchain: clang-13

steps to reproduce:
https://builds.tuxbuild.com/1xqOnCtgaWedE8U8jhmbI3FuAuJ/tuxmake_reproducer.sh

--
Linaro LKFT
https://lkft.linaro.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CA%2BG9fYvThAuTu1-Tg%2B7BaFofxfBkvBuTAnycuws-U4p473MeZQ%40mail.gmail.com.
