Return-Path: <clang-built-linux+bncBCN7B3VUS4CRBNUQ7KDAMGQEQBQ3Q3Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33c.google.com (mail-ot1-x33c.google.com [IPv6:2607:f8b0:4864:20::33c])
	by mail.lfdr.de (Postfix) with ESMTPS id 9EF9F3B9B0F
	for <lists+clang-built-linux@lfdr.de>; Fri,  2 Jul 2021 05:29:59 +0200 (CEST)
Received: by mail-ot1-x33c.google.com with SMTP id i24-20020a9d62580000b0290464ba1bb21esf5417358otk.5
        for <lists+clang-built-linux@lfdr.de>; Thu, 01 Jul 2021 20:29:59 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1625196598; cv=pass;
        d=google.com; s=arc-20160816;
        b=JLAN3On3HzeKCTE0d2ayq0A78daLM2Ra8+ktm//HSTrVl8pWt215tcidJXeReI1ngD
         zZugxxHaXo7pST3S2Dw/oiDUxSfcVpIZHc0pNwKYIXz14AN7K5ZXYC5vbAf0+vc8vU2x
         ZuxS+joUoAjo+Vin1Kv2Sen/1Mpy9u1p8JWqblb5IP/JrhE6JAVDFPo1PgrYMzLfGvVa
         k9X32QTWZ1jmAjQM9KsPOhzEt7MhktDV0Kk3m25ZJACTfZDzXs+dx1C6/qzymCYw1bkz
         54ZkDPnVjjQ/VpZHEAA4XhDj9lj27RsKPVn3R7gwPUOkxa0jX/yQKSHPBE6l2KpIQNZ+
         J9Gg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=GZ2sP/lgLkI+VLYSKosolR+a6M5lLN/s6R8SBdUNhpY=;
        b=jZueboT6X5qZQzNutyZ/yGJ+KAQx5xFHfDDoZr21cbI355HpIzbcJWK+AU64LFjxSS
         6xdqm8oUIV00eLIYbktPK3cED4mL0m1KYYOunecMLaX5thYPBPCjje9dmpIclUZBs+qU
         qUGZ4ta4wceXRcqX8Yr2zaF2MzzzBWE8k/fPAGaFgbFmjTXZSDTD6o32yT++HJIZhb+2
         XPO9tW/7r3tYoKyTkmUksXRfoEuNoKhCUl2YaGusHLHzCqQCpZuGFFOz9CSwnyj72Oi8
         I9Xz8Ml6TJSReToVGus9+Dk7w/qWy7WODVai09MFht2/lU5JEaVbNzIRrLD/jMrOj8Tp
         a1Sw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lecopzer.chen@mediatek.com designates 210.61.82.184 as permitted sender) smtp.mailfrom=lecopzer.chen@mediatek.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=mediatek.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=GZ2sP/lgLkI+VLYSKosolR+a6M5lLN/s6R8SBdUNhpY=;
        b=LkRmh+FIuGHCXk6O3EwRrR+UuQFNEcxIInAgvqvmc3cIaGfEt31lNF9alMK1ujzS8Z
         kvBqea5EGzZ923ldOFsRgJ+URkF/vgtyK9e6W0orEhqhLZSPuLgqNhzD6pnMMKPiHoxt
         bu2DPp6814ouGNLrWvfSbRjpEQ0AajqM6aR3daEOAkyrDaNsjnIbKENTWAhAjieKp5i5
         hBAaC+WRwuCx7+UsEfz+4DXGIDuQH1al2bPJEvt5oV2smf05IflufehEb+nm4UXm/EuS
         qwPTahyRkvT1VtdR0Bl/W361x2/h1l1Up4jgDP9b46l4eGJOxPh+EUDyRY9BZ/ba6I6N
         GbeA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=GZ2sP/lgLkI+VLYSKosolR+a6M5lLN/s6R8SBdUNhpY=;
        b=GxdYCtArmhGszjkdKlv+E723o0F+znvnVc/sJH+FYCWsZBVIqUGxiNP9tHl1qHfFAg
         03SiTIzJ9CCVK/R+D3y5NkjgRwe/V4/KsEnkQToC4pjJ/Bs7aggVeWJhEzX2PdoL3fc8
         2Uk5KhPq9JR7dUpcE90tG9KN5XbSmcYnefYpVQdope4idnOX/+XzAeCCnTX1fQk2OP1o
         IKkmLkkqYTc79nR/QGptxrTVyQDeAxIm9kWVaJAigv5VG/shw8OT+C0JJ5UpyEuU58fe
         n4bBPIggNFpI8YIdiIbVzGoEClYGv+J1BMTHY233D0hKJUUS8RMv3UJLoMOOQrwhqPGI
         ChTg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531auIxIMWTP927fKd7nf2SVhEpGzSs65yUpVftufsGwL62Nymlr
	eweqNPT2+7ZqqZcnhTSdnho=
X-Google-Smtp-Source: ABdhPJwLEaOi6R8RFTHolf3YPbNM2fJO0eVFdSAiAlvZt/D6AnCknk6YqJCgRUbVrkjeFJLOhxEdnA==
X-Received: by 2002:a05:6808:8c9:: with SMTP id k9mr917592oij.157.1625196598515;
        Thu, 01 Jul 2021 20:29:58 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:cf0e:: with SMTP id f14ls3047297oig.5.gmail; Thu, 01 Jul
 2021 20:29:58 -0700 (PDT)
X-Received: by 2002:a05:6808:2095:: with SMTP id s21mr2195793oiw.14.1625196598101;
        Thu, 01 Jul 2021 20:29:58 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1625196598; cv=none;
        d=google.com; s=arc-20160816;
        b=dyJugRE+VutcMCnmqNaFhQvttKWZ+YcCP1Mnr5QhaEdu2O+YY+i5O1iuAIHeUrNOHg
         wX3WUeqBHoXAobpe0CjSqbLWElS7aVJUjo53Wv5lad9lcnnjGWPSya73ByE/NXqMWyBW
         RVWE6Km8hq+sC6J4edQN3xH1hER32y8q8nJ6PuM5Kgf5Tli9oBhJl9IorkXeWopnmkf3
         Jd8Vlhb4mo8xS3LIPT5H1hdLV0Q651r6fJYkexb8uaC5kSzLMPLAIY16n8x09Z1OrI7W
         dL9bVeOXUO6wt/ST+f4Y6CHW6eB3SigJ5ltF3FIgHaxx1kn9R3gj6Zw8BdfP9RFDyf4N
         B1yg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:message-id:date:subject:cc:to:from;
        bh=Y2k4RfptZ3Y1mkgLDHKfa+pPOW8/OZLKSTT6BUK5DsI=;
        b=retIgYxjeT8LPZfBG2xaym9eJBmVVgvuratJaVMbwl3M50Sif6C8SaImM53uqMG5uY
         klBqLSPhXgkcnneJXcbUeiBOpYv3rOiff4HyKR24+aEkc8I25CkbTBUd4M5jTpZw2HOn
         n/OwVj7551VvpXR0KlCMbQnaXHJcDVRvoFPi/MSw8GI89gh9j3PzM98gNAYiXJLYrNl7
         wYMucwVKLv6vRmXuoxil+kgkrHVcC4DLa7ioaxToKGPk6ImHR/Gf+swgvNcTdLglRPFe
         YXM6+ctO3yjts5S9uFCuZlsX+bweyfZT5yNt8PLUv9lVZ6uyVnRyNPev8vCp49XAXXVT
         UtMA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lecopzer.chen@mediatek.com designates 210.61.82.184 as permitted sender) smtp.mailfrom=lecopzer.chen@mediatek.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=mediatek.com
Received: from mailgw02.mediatek.com ([210.61.82.184])
        by gmr-mx.google.com with ESMTPS id c22si149784oiy.1.2021.07.01.20.29.57
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 01 Jul 2021 20:29:57 -0700 (PDT)
Received-SPF: pass (google.com: domain of lecopzer.chen@mediatek.com designates 210.61.82.184 as permitted sender) client-ip=210.61.82.184;
X-UUID: a8e0cdab0a1746ccbb52f710fd33de60-20210702
X-UUID: a8e0cdab0a1746ccbb52f710fd33de60-20210702
Received: from mtkmbs10n2.mediatek.inc [(172.21.101.183)] by mailgw02.mediatek.com
	(envelope-from <lecopzer.chen@mediatek.com>)
	(Generic MTA with TLSv1.2 ECDHE-RSA-AES256-GCM-SHA384 256/256)
	with ESMTP id 1609371012; Fri, 02 Jul 2021 11:29:52 +0800
Received: from MTKCAS06.mediatek.inc (172.21.101.30) by
 mtkmbs01n2.mediatek.inc (172.21.101.79) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Fri, 2 Jul 2021 11:29:44 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by MTKCAS06.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1497.2 via Frontend
 Transport; Fri, 2 Jul 2021 11:29:44 +0800
From: Lecopzer Chen <lecopzer.chen@mediatek.com>
To: <ndesaulniers@google.com>, <keescook@chromium.org>,
	<samitolvanen@google.com>, <linux-kbuild@vger.kernel.org>,
	<nathan@kernel.org>
CC: <clang-built-linux@googlegroups.com>, <linux-kernel@vger.kernel.org>,
	<yj.chiang@mediatek.com>, <masahiroy@kernel.org>, <michal.lkml@markovi.net>,
	Lecopzer Chen <lecopzer.chen@mediatek.com>
Subject: [PATCH v3 0/2] Kbuild: lto: add make version checking for MODVERSIONS
Date: Fri, 2 Jul 2021 11:29:41 +0800
Message-ID: <20210702032943.7865-1-lecopzer.chen@mediatek.com>
X-Mailer: git-send-email 2.18.0
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-MTK: N
X-Original-Sender: lecopzer.chen@mediatek.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lecopzer.chen@mediatek.com designates 210.61.82.184 as
 permitted sender) smtp.mailfrom=lecopzer.chen@mediatek.com;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=mediatek.com
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

LTO with MODVERSIONS will fail in generating correct CRC because
the makefile rule doesn't work for make with version 3.8X.

Refer to [1]:
> When building modules(CONFIG_...=m), I found some of module versions
> are incorrect and set to 0.
> This can be found in build log for first clean build which shows

> WARNING: EXPORT symbol "XXXX" [drivers/XXX/XXX.ko] version generation failed,
> symbol will not be versioned.

> But in second build(incremental build), the WARNING disappeared and the
> module version becomes valid CRC and make someone who want to change
> modules without updating kernel image can't insert their modules.

> The problematic code is
> + $(foreach n, $(filter-out FORCE,$^),        \
> +   $(if $(wildcard $(n).symversions),      \
> +     ; cat $(n).symversions >> $@.symversions))

The issue is fixed when make version upgrading to 4.2.

Thus we need to check make version during selecting on LTO Kconfig.
Add CONFIG_MAKE_VERSION which means MAKE_VERSION in canonical digits
for arithmetic comparisons.

[1] https://lore.kernel.org/lkml/20210616080252.32046-1-lecopzer.chen@mediatek.com/
Signed-off-by: Lecopzer Chen <lecopzer.chen@mediatek.com>


----
v3:
- fix comment in make-version.sh

v2:
https://lore.kernel.org/lkml/20210701092841.1419-1-lecopzer.chen@mediatek.com/
- change MAKE_VERSION_INT to MAKE_VERSION
- remove $(make-version)
- tweak commit message

v1:
https://lore.kernel.org/lkml/20210630121436.19581-1-lecopzer.chen@mediatek.com/
----


Lecopzer Chen (2):
  Kbuild: lto: add CONFIG_MAKE_VERSION
  Kbuild: lto: add make version checking

 Makefile                |  2 +-
 arch/Kconfig            |  1 +
 init/Kconfig            |  4 ++++
 scripts/make-version.sh | 13 +++++++++++++
 4 files changed, 19 insertions(+), 1 deletion(-)
 create mode 100755 scripts/make-version.sh

-- 
2.18.0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210702032943.7865-1-lecopzer.chen%40mediatek.com.
