Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBG4DVTZAKGQEF4WLHIQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x83c.google.com (mail-qt1-x83c.google.com [IPv6:2607:f8b0:4864:20::83c])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D947161CA6
	for <lists+clang-built-linux@lfdr.de>; Mon, 17 Feb 2020 22:11:56 +0100 (CET)
Received: by mail-qt1-x83c.google.com with SMTP id l25sf11729873qtu.0
        for <lists+clang-built-linux@lfdr.de>; Mon, 17 Feb 2020 13:11:56 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1581973915; cv=pass;
        d=google.com; s=arc-20160816;
        b=brmsC0WpZaadHKB5CLzAOlkUMPjYUdLHYXRBAJFHZUt4qOxBcAAmlJ51H1gb65tmrZ
         rTskyMeQUNBfEpAELnSt+1cG5ZI6vARoKZKslOsj12Vcq8odI3OIaMn3DwHjbDCJVokq
         8uyTm4GbilOJmkvqBZbbbjViIWmKRvt6yKKkL0khBvMS+Poq/Y/nd95iJi7WwmOkLB+7
         yzkgIbsMXNJT+SMK+htoRUcB7PiaVJNx6Zj32M0MJlJCelg1ClfC9r+rFRiavoIBJP4P
         r7n7SjpE4TW8IrXRpZvqWdKjpfCbxe4URImY7KzJx2HUvWclJtzl+8ksdfQUC5pmSSCv
         dcqQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature:dkim-signature;
        bh=t0cRaIUHhr/Pm8khRCwbqXpTNiA+quC/2L1xTF0Tups=;
        b=RSCrezKm4XgK8T3yGoSopvvKmYjKN4KnZuggQyNjdZm3HjwKKzIRhoo666+mXY++ge
         W0kdLjc8GawfMZka+2ngG1HTO+jT8J2kQuu9w+raVyCiBG2CIsvWxtz13XcbyGxSn4v2
         2OBv+o119y6xSrThZ5u9zdgd5zPP6zCCS4gqTdv/h7OsfbX0jDuaHiZR+9ZbxRPC0WWw
         ZjZOokSULwpMgGJda5YbkjYXK0eR+hEfAFj7h1XqCMr+gQryedivDs/f1Ph0PNuQbW2g
         K3RhM6OSIltImRnTvTwgpYzEHtBwtWQAhB5oJogVqg52vR2RMqddX1P3RwjsLCIZ+fmd
         HxLA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=C+Y9J3F7;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::241 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=t0cRaIUHhr/Pm8khRCwbqXpTNiA+quC/2L1xTF0Tups=;
        b=hqzjSFS9wuDIrs30Gj5FjLl3TqqZfTMXNnLTbPdGXT30S9q3NF/H/WxgLWPZdMHqdV
         Mcn6z+gMQffG9+egwyRghigRtUDo2Gpbfd7yayawjL2Qjlz9ENe7wwjAXVfTrCF1kgPM
         i1BZwbr/05whAIx7IcJZy3wT4mgRUiIa7QfncCnlUeEOjjdTeEC5ni/Xgq+/uOomoWSv
         rE3sKQFhbLQWBPA7IDS6/Vt9AVSNDwkAc5SB7MjBhMO3E6OVEvNhP48OcbJ60KbeCX1D
         EyNPNtEIjVPX8O5zhPTltMc5ly9NcLg9Pua/w2TyZAVAscF2dyYaFH89kKf5tFOspgNe
         iFTA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=t0cRaIUHhr/Pm8khRCwbqXpTNiA+quC/2L1xTF0Tups=;
        b=OfKRV2hEiJ+KgXn61N7rod/vbkeNHhknfNO/YroayM80fVp4P+a8aBnu4zWOw9ymuW
         f5btGTN9B81XpKsjJ+3wRz9WG2SWDiAM43gV4V09LgvwIh2HCHDQYAPcpAMWaxCg1DLT
         VTS1z8+Lozd1GYUA11Z5xnzQ0LNbuZS9o6oZJMnm+dqurahF35VS3WYeYUlGgdU7YCnN
         9x+jUp6fi/pdPKp81aCtzglje8yHjjdjyS3YNzYRV2mqFYhhJU3UKGG8afiGEiFH7rwD
         Lpc4jGkqmgzm+E6jfFYxg9X+ejvt5FxCAkGH/T0P3sXHI7w8leo7px2Ot/aOpRoGa9Wg
         CqnQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=t0cRaIUHhr/Pm8khRCwbqXpTNiA+quC/2L1xTF0Tups=;
        b=UGMXSBKh0BgEeyFGiISjLsrM6eL2R8gnvaReTK7EvvdSPy+PM8DddMN4MHzO40J1+V
         p6GUGE5N1uZGZsPn085eHDxqGA6oyvnouYc2BYcvBI1NSp76b444w+G2XDaNdpsQ7+g7
         KqFns+CqYmz/PLZbGH9NUMqkveLZQgMGKC/9btrZubdt6PRuBUx+cNkvkX+7Y95E0M4j
         QVq6BTP6JKWA8rv4PH7JyUjkWPpsOdBoUDES9GZa4133XeuiQaHHhwSGONheWMzmmWMp
         32rD4sGOs1MpDQZOSdFNbIhKCxFJuWyo0QzdWv6GdVMu2c7eugD0E+YPlqHCXjkPRUO7
         ONsA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXqwC65LpXQ+b2qEafM0VK/EH5ozTnDHSyWb6G/9amVLa7EFwaW
	l/CIrjLeNtqKaP4kOdXkEeQ=
X-Google-Smtp-Source: APXvYqz3C1k39zQEgw0VAuDs6luL0TN/npjx6O9pR3FmBliWlZ6IntsaYSyYLtBX+EANKoKPa1OItA==
X-Received: by 2002:a37:4ca:: with SMTP id 193mr15772214qke.255.1581973915308;
        Mon, 17 Feb 2020 13:11:55 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a37:6550:: with SMTP id z77ls209165qkb.10.gmail; Mon, 17 Feb
 2020 13:11:55 -0800 (PST)
X-Received: by 2002:ae9:eb49:: with SMTP id b70mr16536489qkg.307.1581973914949;
        Mon, 17 Feb 2020 13:11:54 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1581973914; cv=none;
        d=google.com; s=arc-20160816;
        b=uqDlHZSz5NOuL4Ae37BNpr5iLJikleLwj0I/Uf8mHdZCteGCZgugtj2jd+GbkTeDWf
         Oo/1g6LC8vM5CTjfooYakWdqERDRv8cWwCydxpYACSWbg3riUKyJJ3rs91uBBN+DwHbt
         rWhTVqFhOkh4nMNetWIejrVfLAhvW9xdSNLumIwe5Dj/IYLcYw/HChTq7MXsJHBjuHt9
         I7CbBUyKS1ZYxSXxHHvO23WY6PxCFHlum/iOil6Eov7pLygyF7n11JJDPyE2sqPm6Skt
         aZcJkOhjvNd2PfjQNv8BO5v6zlOkT4ac9AqpHN44RPflOQpwOlIwlHEWAdkht0lq0juW
         hE3w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=xK3Q/4PcpI8MJ4XOzIXcS+rMbt29+yBpzx5WYzRqjFw=;
        b=mlAyLx5HhyStENdimoW7btHBbzNgZ9REOmmHiaD7RfJGkzPuNNbzWPdoiCspChMa6d
         3m9xbU+LeGVf31Lns1Y5ZoIdpAu4WA57NfPJqg9/XpKTW/kT6yAWEizB78A3i+QohrNw
         OFCP9EVnxhDbzZbCMLWLVAuMbxD2JocpMEQ+wgKvnsuzKG2fD6SOAJiHXmcabmoRS0zo
         wgtz1gSUneZMDl+6UlXUqYbdyPAj5NgShuwRHBY/QGK73l8q620Mia+kmwKQ6v+Z2GdE
         Yt2wruKXIciJzN5ASb9gD5iwmhXD4QqNRkdKf4HM9mxWAIqGKLolpL7PBWyojte/81gI
         7O+A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=C+Y9J3F7;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::241 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-oi1-x241.google.com (mail-oi1-x241.google.com. [2607:f8b0:4864:20::241])
        by gmr-mx.google.com with ESMTPS id l9si110007qkg.5.2020.02.17.13.11.54
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 17 Feb 2020 13:11:54 -0800 (PST)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::241 as permitted sender) client-ip=2607:f8b0:4864:20::241;
Received: by mail-oi1-x241.google.com with SMTP id a22so17991751oid.13
        for <clang-built-linux@googlegroups.com>; Mon, 17 Feb 2020 13:11:54 -0800 (PST)
X-Received: by 2002:aca:3354:: with SMTP id z81mr602935oiz.129.1581973914489;
        Mon, 17 Feb 2020 13:11:54 -0800 (PST)
Received: from localhost.localdomain ([2604:1380:4111:8b00::1])
        by smtp.gmail.com with ESMTPSA id v14sm579927oto.16.2020.02.17.13.11.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 17 Feb 2020 13:11:53 -0800 (PST)
From: Nathan Chancellor <natechancellor@gmail.com>
To: Ralf Baechle <ralf@linux-mips.org>
Cc: Paul Burton <paulburton@kernel.org>,
	linux-mips@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Nathan Chancellor <natechancellor@gmail.com>
Subject: [PATCH] MIPS: vdso: Wrap -mexplicit-relocs in cc-option
Date: Mon, 17 Feb 2020 14:11:49 -0700
Message-Id: <20200217211149.44132-1-natechancellor@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-Patchwork-Bot: notify
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=C+Y9J3F7;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::241 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

Clang does not support this option and errors out:

clang-11: error: unknown argument: '-mexplicit-relocs'

Clang does not appear to need this flag like GCC does because the jalr
check that was added in commit 976c23af3ee5 ("mips: vdso: add build
time check that no 'jalr t9' calls left") passes just fine with

$ make ARCH=mips CC=clang CROSS_COMPILE=mipsel-linux-gnu- malta_defconfig arch/mips/vdso/

even before commit d3f703c4359f ("mips: vdso: fix 'jalr t9' crash in
vdso code").

-mrelax-pic-calls has been supported since clang 9, which is the
earliest version that could build a working MIPS kernel, and it is the
default for clang so just leave it be.

Fixes: d3f703c4359f ("mips: vdso: fix 'jalr t9' crash in vdso code")
Link: https://github.com/ClangBuiltLinux/linux/issues/890
Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
---
 arch/mips/vdso/Makefile | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/mips/vdso/Makefile b/arch/mips/vdso/Makefile
index 77374c1f0c77..d7fe8408603e 100644
--- a/arch/mips/vdso/Makefile
+++ b/arch/mips/vdso/Makefile
@@ -33,7 +33,7 @@ endif
 cflags-vdso := $(ccflags-vdso) \
 	$(filter -W%,$(filter-out -Wa$(comma)%,$(KBUILD_CFLAGS))) \
 	-O3 -g -fPIC -fno-strict-aliasing -fno-common -fno-builtin -G 0 \
-	-mrelax-pic-calls -mexplicit-relocs \
+	-mrelax-pic-calls $(call cc-option, -mexplicit-relocs) \
 	-fno-stack-protector -fno-jump-tables -DDISABLE_BRANCH_PROFILING \
 	$(call cc-option, -fno-asynchronous-unwind-tables) \
 	$(call cc-option, -fno-stack-protector)
-- 
2.25.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200217211149.44132-1-natechancellor%40gmail.com.
