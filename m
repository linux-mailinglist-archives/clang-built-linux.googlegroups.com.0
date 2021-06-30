Return-Path: <clang-built-linux+bncBCN7B3VUS4CRBQ6A6GDAMGQECE2TVNI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x339.google.com (mail-ot1-x339.google.com [IPv6:2607:f8b0:4864:20::339])
	by mail.lfdr.de (Postfix) with ESMTPS id 02E623B81DC
	for <lists+clang-built-linux@lfdr.de>; Wed, 30 Jun 2021 14:15:04 +0200 (CEST)
Received: by mail-ot1-x339.google.com with SMTP id v29-20020a056830091db029045efea1ec9bsf1530795ott.21
        for <lists+clang-built-linux@lfdr.de>; Wed, 30 Jun 2021 05:15:03 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1625055303; cv=pass;
        d=google.com; s=arc-20160816;
        b=ES9MCCDqn4uxAWMZp9IcirPdLdAY5b+iZWlxSSfNFsgBGTXKsn6m5z9FXD0YH6wp8x
         ZFqBV9zKQ5hFgv/B119Fdoj0xANZBqY6KNN35g7Et8M/3KtlFcYkLX+UnS9CDIclDtCB
         EVSZ2tI/y8ovIKYhIm+tz/6UHyw008ygBqpHio+EnOwCqJY8I/A3LI82R9HNMphnVf6g
         wRIyZdoJJGIDj3GJwkoPy6ke5/FtutsNwY+bPvLBKOoeYGblrptGOU6IKr6R4DubayNt
         TlsCH/1BC0Sr+tSOYYA1frxlgJ2d94uNMc3re2QIX7LqbkmpGMDnaa7fSrCBsOoO6f98
         gwQw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=dpDBttgFYc0EMmZJsIS8cwUFLn/iYrXDJlEb2DVxZgI=;
        b=GA8fRP/5h5SbhZK49YCWg5HiES9FRe0C0QvJB8jLk9RvB8HY4hgdo4/POqtf1HUIma
         OYc4uMj+AYJe7OVDdqBp8dQNmMXWFo5kVhAjqW7Sng2bXdoB4nWe7vgIq9k30c2SGLbA
         Pnd2eSPSuSpobV1tOte1tcTHsGE829731527ZutG2f2jzgqHL3Ed+c+wFeHVmGgd1gpm
         GJqFsJ0C3ccgs9BFtt71FUlJMEQo+FQz/ENCoSZPbWutmm8+0xGU4kIhBE1lkrNGNkOX
         1+DvxkZgFmRW4y8zF3dBetWUjNcdKLzSwaQI8JomQPNIJxBEh5v894Av1S51Tzmut2/7
         vDyQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lecopzer.chen@mediatek.com designates 60.244.123.138 as permitted sender) smtp.mailfrom=lecopzer.chen@mediatek.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=mediatek.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=dpDBttgFYc0EMmZJsIS8cwUFLn/iYrXDJlEb2DVxZgI=;
        b=tVfT4YO1f991j9D34wgigbz8jPUi8bbbVmbhH76iAkOX6E/FKx4j1xJjpxBeKTHdq5
         q1bTRfnaKvdos792zAh4tdF1ZpdV0CmUsRWCygqUrhJthjRYY/d+C1b7FGoCSQAkCtKF
         ktbv+quazFONjcbqVXzvhAToC/g3Nh/sml5xiumpE7dyjf+KCllAJmc/ZeG92MyyKgrn
         xfoRdiC6ffhHHaVY6p5r9iMlLU8CWFqSngnvjAnNWECyIS06JBmxPvdTLWiCIjbR46UD
         qBhnSPau/8W4FGE8BGDMGlBascgxswXL7EULGdlfXCNkUPdT/PJyXMGJOJU1qKrfJXcB
         KKiQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=dpDBttgFYc0EMmZJsIS8cwUFLn/iYrXDJlEb2DVxZgI=;
        b=jodFWFQWbQ5nWIBNSDt+O0oafuGGV1jR21lzccXe5oAMQsht8VMqa9I6aFURz+Ucna
         CNrr2pyGaK/RY6dmZrLXSD9pLlCuVdtVaIAIqKbDZSN48oz3t+ZYMWwTzQG/bVAU/WrD
         TT0Wels9tSgMgEJwA76AR++zJuer8INtpMv6FMfHHVr4XaqtvrAbB1Gf0fieiOwFfOYr
         b/nH7D5UIK9vWYDLwIErgofj4jc2AuMaOWCEqVCo8smICAH3YSqSOJMbx/xUJWJtHIwU
         oy+Nb9JroQh6y7epBNHMzkUYKp8CJZODDZFc7KeHkBi1kxNBMqokafd8KcD3eUZ1U2ix
         F/cg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532BB7v8HgdUVW/GfmHzRv8pPgBGaSd3WFPVUAb/VcMsVxedDlE9
	OnfWQiekt+SeUUbeKVHOkPE=
X-Google-Smtp-Source: ABdhPJzkycAgA/jfT6pl4CQfB1JKQe6rec2it1svvAhIKM9MrInIrhxOCbvWvZcSe005oc68Wf0uPQ==
X-Received: by 2002:a9d:57cd:: with SMTP id q13mr8875608oti.201.1625055299998;
        Wed, 30 Jun 2021 05:14:59 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6830:2397:: with SMTP id l23ls720567ots.5.gmail; Wed, 30
 Jun 2021 05:14:58 -0700 (PDT)
X-Received: by 2002:a05:6830:130e:: with SMTP id p14mr4958329otq.351.1625055298097;
        Wed, 30 Jun 2021 05:14:58 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1625055298; cv=none;
        d=google.com; s=arc-20160816;
        b=eEkFdUfU5MN6PPjA/PpGRgPCFyEVq7ziJ8KNKtpAtiOwB/50jFlHD8Swb3BsWRlL3p
         hz9lzYRBW+jFbbgydJK+WmJcD3fNroAsuk503nG63gapGhqbtRmu4FzyW74fXy/MBpdW
         1aZoI78CfhwEdCKwFgeUHOeIBFYeizRh8/wKrBRu++EK75YMtMXsZ9exFeeNvA78aIlY
         8Ok/V4Xqth9qOfsnoApVGn7m9qPcgcdOcK9eO5cj/QpWhjC6N96XMQvT7MVCl2MTWGIq
         hBJvBrmOK/mODY0g2Ug5y31MUBsVLtafg3iS37znKkGBbfZa5fiDMShM9lAdiPwvYKyO
         OL4w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:message-id:date:subject:cc:to:from;
        bh=HGBOPOVq3WMpXEB3XQTimQTcWxXtMm1SAAUJWk238Jc=;
        b=fL8/Wwzbpu/7SlIadpEaCcBiO5dwA4oXe4MAGB2ZVJum4ex+WBn1MA/tji948lCGy5
         MVAAxQaR4SmK04NdwYPlJkzMWVJ4DRj8leQD18XpM9jXhfzxU8wd7Bnrx3d8bavzuTiV
         hJOAn+9yaq4gGHOy6GUcbJEcUiaChC2hMqRIVcJVQd2mAmvvcE41PMhe6s1nP8zkJS2E
         I0SxRBIA9hlKX4eDyOngsis2Ndu3FEFA5Ei2Rq2dB+hUgCsO02UnGI+3YgIf9orIku2g
         bdlvMeQBimXpXLnhj6E0jFnQANM0Lebqvd6J6BTvM78aqcA6JRDGRfjTxDNQshKdtk6X
         Rj7g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lecopzer.chen@mediatek.com designates 60.244.123.138 as permitted sender) smtp.mailfrom=lecopzer.chen@mediatek.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=mediatek.com
Received: from mailgw01.mediatek.com ([60.244.123.138])
        by gmr-mx.google.com with ESMTPS id z21si701731oia.3.2021.06.30.05.14.57
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 30 Jun 2021 05:14:57 -0700 (PDT)
Received-SPF: pass (google.com: domain of lecopzer.chen@mediatek.com designates 60.244.123.138 as permitted sender) client-ip=60.244.123.138;
X-UUID: 9d6fbbcc74bf4ff4af69faa03283266a-20210630
X-UUID: 9d6fbbcc74bf4ff4af69faa03283266a-20210630
Received: from mtkcas07.mediatek.inc [(172.21.101.84)] by mailgw01.mediatek.com
	(envelope-from <lecopzer.chen@mediatek.com>)
	(Generic MTA with TLSv1.2 ECDHE-RSA-AES256-SHA384 256/256)
	with ESMTP id 529085922; Wed, 30 Jun 2021 20:14:51 +0800
Received: from mtkcas10.mediatek.inc (172.21.101.39) by
 mtkmbs01n1.mediatek.inc (172.21.101.68) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Wed, 30 Jun 2021 20:14:50 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by mtkcas10.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1497.2 via Frontend
 Transport; Wed, 30 Jun 2021 20:14:50 +0800
From: Lecopzer Chen <lecopzer.chen@mediatek.com>
To: <keescook@chromium.org>, <samitolvanen@google.com>,
	<linux-kbuild@vger.kernel.org>
CC: <clang-built-linux@googlegroups.com>, <linux-kernel@vger.kernel.org>,
	<yj.chiang@mediatek.com>, <masahiroy@kernel.org>, <michal.lkml@markovi.net>,
	Lecopzer Chen <lecopzer.chen@mediatek.com>
Subject: [PATCH 0/2] Kbuild: lto: add make version checking
Date: Wed, 30 Jun 2021 20:14:34 +0800
Message-ID: <20210630121436.19581-1-lecopzer.chen@mediatek.com>
X-Mailer: git-send-email 2.18.0
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-MTK: N
X-Original-Sender: lecopzer.chen@mediatek.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lecopzer.chen@mediatek.com designates 60.244.123.138
 as permitted sender) smtp.mailfrom=lecopzer.chen@mediatek.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=mediatek.com
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

LTO with MODVERSION will fail in generating correct CRC because
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

The issue fixed when make version upgrading to 4.2.

Thus we need to check make version during selecting on LTO Kconfig.
The MAKE_VERSION_INT means MAKE_VERSION in canonical digits integer and
implemnted by imitating CLANG_VERSION.

[1] https://lore.kernel.org/lkml/20210616080252.32046-1-lecopzer.chen@mediatek.com/
Signed-off-by: Lecopzer Chen <lecopzer.chen@mediatek.com>

Lecopzer Chen (2):
  Kbuild: lto: add make-version macros
  Kbuild: lto: add make version checking

 Makefile                |  2 +-
 arch/Kconfig            |  1 +
 init/Kconfig            |  4 ++++
 scripts/Kconfig.include |  3 +++
 scripts/make-version.sh | 13 +++++++++++++
 5 files changed, 22 insertions(+), 1 deletion(-)
 create mode 100755 scripts/make-version.sh

-- 
2.18.0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210630121436.19581-1-lecopzer.chen%40mediatek.com.
