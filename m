Return-Path: <clang-built-linux+bncBDT2NE7U5UFRBH7ZT6GAMGQER3P4SUQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x73f.google.com (mail-qk1-x73f.google.com [IPv6:2607:f8b0:4864:20::73f])
	by mail.lfdr.de (Postfix) with ESMTPS id 0445C4473B6
	for <lists+clang-built-linux@lfdr.de>; Sun,  7 Nov 2021 17:19:45 +0100 (CET)
Received: by mail-qk1-x73f.google.com with SMTP id s20-20020a05620a0bd400b0045e893f2ed8sf9246483qki.11
        for <lists+clang-built-linux@lfdr.de>; Sun, 07 Nov 2021 08:19:44 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1636301984; cv=pass;
        d=google.com; s=arc-20160816;
        b=ySj1s5ssRhoH0sIrOS91LGEWlZ3yGYCVAtFUasHlY8Y/ZUNCbZziJUr+gATUQFbkeF
         +OfwBcX2c0MmonbUutE1R5sdKEOXkmT8pvLSq6pmWy1RcCZ2kKb8CzY9JnjTaqQsd+dS
         JdTeFi13top1k/CYK4JaJdk5/DA39Vjw3Eq5eiECHOidazJ7u5zYRmAleyu3G8OCRm6l
         l7WScYcpL5U+kQE6VXVi13Z0cU2f9xo5DB/q31MbwATVci4QhGZaJ+yn1QjazkMIcfjJ
         yp+5QfzigBTHB9nEgBktRofq3I9SeCGifs3X/ZeXwZMfF1l+iw6BAWzPzk7xBL/aLFEA
         w0AQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:dkim-filter:sender:dkim-signature;
        bh=0KPlOvfLOUQiLqo4wesUdbF6jXoQQgs3TJYHRLwk+rU=;
        b=SR/ahl/nWtw1aG0R4Cg1ZRm8ze5OyLZWmf1QRdY5vZsMR/eFncqj63ottYJWdNlX1W
         77rIshT/l7hkrNKeQiqmUGprSgcMc64VJu65ZgH86jqt22BQDqi8/r0w1CESn5gMXFpQ
         /EyuuLZCZlXPROjKXY7gYW0GGd5jQAZV6XCDc8AIdgNKcPbW0uRLb5OgiBd/JoAL5ida
         KhBRtpXAsz1UXIiyD2P1YJMsSaLTO7XqaSMdbYDkYxnCuuI+FlF8jUf/IXoF7CNp6YPV
         7BqmGXjQnsO4xmoU+BG1MQJnjAiTaSn3r/hk72MBbTgAHEXurYSiaDX3Gu1lbvezIlIa
         TNGQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=KEFQ5bWV;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.77 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:dkim-filter:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=0KPlOvfLOUQiLqo4wesUdbF6jXoQQgs3TJYHRLwk+rU=;
        b=IHj5ie7ci9qqtIS1lEf7shzAAA6Wb+Y2gt+f0+zpgHj6ZKAoz3PyylT1yq4muZ4Mkg
         Gs/Lbgk1ZXTd4kT89ABsiQqSGcy75D48j+hffUY+uhB9GbSCFZXgBFbXT/24RskFNEHJ
         5sbHY0aLruH1tQoFjLYip9CD7PKvEYD/8ogilctl1xV8Iet3SEufk2RMl63So8ofSmVI
         aGQw/kiIvMVDpxv5DATxlnQXtSYXIAa7Fh39G0us4/7MVRoDzj816ZgYa/meR/zTCY3g
         YYh+2hzB7LOV2P6IqcIvnptyoj3KDp9KSqMthzlk3Xea5ilKObl+mKzrAf7xm4vNq22r
         LWxQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:dkim-filter:from:to:cc:subject:date
         :message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=0KPlOvfLOUQiLqo4wesUdbF6jXoQQgs3TJYHRLwk+rU=;
        b=7DaGOwFdzqC9wYzWEWRKMtQajnGItzhPV3IdJLqUxMM6EbsMbDttdKDj1JB3kvMx8a
         SMbVavwOybWFxZT7kIFZmlZLiYRZ9w6OCOX6nXCcggTKFJ7viBF6kKNi0Ih5qwHAgmcm
         PD4k1WR8AFJwsSdm1Agztz3cgHS89tlf+rUEgENhE7rFSzbUQEt7e0RODNq9sm7Vhy+p
         EaMRUuieiMPtCmb7x3FurdroNaBrPxCnrbmoas5VLGX31rn2Yyr7NIvpCLYAb2m6OClj
         HUmduJNcoSYbJpg+FFlifXiexQeZIyXrhjsq/f8iK8PDU/0nzlzVPPYiiqgE/DCtcFfn
         jgqQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533QArgvpjbUowl5k/ZabSKwYdNa5VeKfRo6X3NIU2muKUkANABm
	krIyHusN08clzSCYBtkfA0g=
X-Google-Smtp-Source: ABdhPJxR61xXfhze1Y671HtTE6+89zm6BZ7GUBgerSbnu418IOXkkoHOCVcPpZwtmgwgbiwzqpotzA==
X-Received: by 2002:ac8:615c:: with SMTP id d28mr74043468qtm.103.1636301983994;
        Sun, 07 Nov 2021 08:19:43 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:1405:: with SMTP id k5ls990648qtj.7.gmail; Sun, 07 Nov
 2021 08:19:43 -0800 (PST)
X-Received: by 2002:ac8:5619:: with SMTP id 25mr76741267qtr.325.1636301983590;
        Sun, 07 Nov 2021 08:19:43 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1636301983; cv=none;
        d=google.com; s=arc-20160816;
        b=u+mO8QWFJlQCXCIHl8908UTjYqXGyTJKPZU9AicrmsDkIKXmr/uXZxPgv8qaimxhZ3
         YJ6F4fsdwh5I2bD7v13nxjoOphaOWYyIVvU1L+eMHRPQIWGqAjAJxvDFq/viRXMVlRTM
         SLxZgKdgts7ZZhce09ELWnPzJIQxFncLgfO4kHP5yPBwAiBbiWXQgj0WC6r9LisQnDNF
         c5YlX1MleOxeVjzeWY8ixh0JKWAP7Zf7f52FR5ZooscO1gtOba/YNJcULBvbnL7n9y9N
         4cU1Ix/7VCAdqe6v8mD7hXntRes4mhhPqqxAwwWnGzfLnz3V38zt4WO+AapA1k858o24
         StHg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature:dkim-filter;
        bh=5RXmLl5bCtAukQN97+d2QAYSEJ6auZ6akf2R3WZ4+JM=;
        b=eHIWeSNGJ+mkmhIY33K5BVjV3Xuo/ftRCucl/K5y3eiU5fLVW68jk3kMSXeVxDOFt9
         tVWxjtTFrZTuw35LaDPgrkoFbYuJOShXO6zQhZU3NRTUV2X76C+dz7vjPVZrBdBegnUX
         SR1fe/aZURWw5WYnCr+Bt4WbSjXB0gNbMQRk0mmZQt9pfryaUX82VTnsVrRj0mZ7zMPe
         6JPtBHuVXcgbxKnQNIMIL3+FIOv8qb7xJy6UYad2gIkwGtULsb1ooTHfZKsFpiWw8ckP
         W/5cDO4NoS6jUCM93LtrjhD+lY4nNS9/2sHH5RJ0TmLetDk0B79R/lghpHhn1B4bjRYH
         m+wg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=KEFQ5bWV;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.77 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from conuserg-10.nifty.com (conuserg-10.nifty.com. [210.131.2.77])
        by gmr-mx.google.com with ESMTPS id k12si2084055qko.5.2021.11.07.08.19.43
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 07 Nov 2021 08:19:43 -0800 (PST)
Received-SPF: softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.77 as permitted sender) client-ip=210.131.2.77;
Received: from grover.. (133-32-232-101.west.xps.vectant.ne.jp [133.32.232.101]) (authenticated)
	by conuserg-10.nifty.com with ESMTP id 1A7GJ3t0006971;
	Mon, 8 Nov 2021 01:19:03 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conuserg-10.nifty.com 1A7GJ3t0006971
X-Nifty-SrcIP: [133.32.232.101]
From: Masahiro Yamada <masahiroy@kernel.org>
To: linux-arm-kernel@lists.infradead.org,
        Russell King <rmk+kernel@armlinux.org.uk>
Cc: clang-built-linux@googlegroups.com, Masahiro Yamada <masahiroy@kernel.org>,
        Russell King <linux@armlinux.org.uk>, linux-kernel@vger.kernel.org
Subject: [PATCH] ARM: vdso: remove -nostdlib compiler flag
Date: Mon,  8 Nov 2021 01:18:55 +0900
Message-Id: <20211107161855.323312-1-masahiroy@kernel.org>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
X-Original-Sender: masahiroy@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b=KEFQ5bWV;       spf=softfail
 (google.com: domain of transitioning masahiroy@kernel.org does not designate
 210.131.2.77 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Content-Type: text/plain; charset="UTF-8"
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

The -nostdlib option requests the compiler to not use the standard
system startup files or libraries when linking. It is effective only
when $(CC) is used as a linker driver.

Since commit fe00e50b2db8 ("ARM: 8858/1: vdso: use $(LD) instead of
$(CC) to link VDSO"), $(LD) is directly used, hence -nostdlib is
unneeded.

Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
---

 arch/arm/vdso/Makefile | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/vdso/Makefile b/arch/arm/vdso/Makefile
index 7c9e395b77f7..ec52b776f926 100644
--- a/arch/arm/vdso/Makefile
+++ b/arch/arm/vdso/Makefile
@@ -18,7 +18,7 @@ ccflags-y += -DDISABLE_BRANCH_PROFILING -DBUILD_VDSO32
 
 ldflags-$(CONFIG_CPU_ENDIAN_BE8) := --be8
 ldflags-y := -Bsymbolic --no-undefined -soname=linux-vdso.so.1 \
-	    -z max-page-size=4096 -nostdlib -shared $(ldflags-y) \
+	    -z max-page-size=4096 -shared $(ldflags-y) \
 	    --hash-style=sysv --build-id=sha1 \
 	    -T
 
-- 
2.30.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20211107161855.323312-1-masahiroy%40kernel.org.
