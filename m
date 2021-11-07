Return-Path: <clang-built-linux+bncBDT2NE7U5UFRBPXZT6GAMGQEZUXSM3Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3a.google.com (mail-io1-xd3a.google.com [IPv6:2607:f8b0:4864:20::d3a])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B4824473B8
	for <lists+clang-built-linux@lfdr.de>; Sun,  7 Nov 2021 17:20:16 +0100 (CET)
Received: by mail-io1-xd3a.google.com with SMTP id r15-20020a6b600f000000b005dde03edc0csf9824702iog.6
        for <lists+clang-built-linux@lfdr.de>; Sun, 07 Nov 2021 08:20:16 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1636302014; cv=pass;
        d=google.com; s=arc-20160816;
        b=0dAb9wQb33SB7FbxOyouf56uTyKjmjhe18Uz6NZLz0dq7gwhDVCGx7q2x5acxBYWqu
         sEDac8KNX6cny1gZacJTs1piBMHz9gblsIE7YC1CdlIDtbsa9enGQYcnCHDMyg4cn2Tu
         6Ofbm2wMZ8b0GB/i8liJuBSy3Wgek9jhE7H7HkeNIu61DvRimECbIvzOsg7Fkpm0QJ1A
         No2N7Kov4ZhNTwxKPHGEr3t6SyLqUG4/DPRY2vst97WB7lSPcCKSZMEqdi/73I98f8el
         I6uwDuQqOXgyD6NEVvCeSipGv8E6EHi6lhEtxYZshLZbqpnCgYVxRANNdadfmsAM5Qy0
         yP+A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:dkim-filter:sender:dkim-signature;
        bh=yGBcO0H+UN22TdffeIHnZ42bRzUDSCBl5YRspdQ1cDg=;
        b=FXD/mk3/znMjYyq4Gzs81tMh+G8Wn1NQXECekEkDNF6BWCfF+8b1WlTJ3Ina11Hzt8
         zRnmLLIYASwoeceRLjsMy8bNVnEgk9fRXuftQBTDPhoAljjrkGV3RJKUMgz/yE09Hptn
         53Z7WLEfOcxpFgNnFEg1yG5fBREZm+MplS+XzAz+90qNmk/Ik0STAjRKF6t7AbeJSaDT
         C7bv/rv2hu50PTByvCcDF4X2zH0ml5ckA5GpIHeX7nd8biHR/n2SEF6T08iBfJPiv5th
         9yCcPeRfSUuiEE2YwT61vuyG2oIn7HpEiYnBUoCXFcQyMSWJmZOEY99UjH5WZ5e5NEm1
         QLSg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=dDK0SVTk;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.76 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:dkim-filter:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=yGBcO0H+UN22TdffeIHnZ42bRzUDSCBl5YRspdQ1cDg=;
        b=XuGJm7DJAdekfLl/IxzFAN7uOlAUGFuCd2DRAnSqMWgaZFpAp66NDGmxFb18lnhgjl
         84qu+zhV4M4UgvnKEfbPRRWRzu1uRebU1Xtpdb5cALIun3jmeAIuSQNwcDfvSn4wWZH0
         DTcPQ/9xWktOXy8qhrDH6HVlnpmTRu36S1l2+jUHcLtPoeujWfGZdOFV+mG41kEONBet
         YUxmTFgvlMJPloSpd5fvmzN7qqb4Q6wr1Uq9/7bofZc4OqsTk2TLtlV2sgNerLn3EQ1o
         6qvcDjUzoMPNo7H9VEK/6LgGRRi25l7AzLLXvjmIPTCQachdeVvsx5VXh/5caqLmPYcz
         na/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:dkim-filter:from:to:cc:subject:date
         :message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=yGBcO0H+UN22TdffeIHnZ42bRzUDSCBl5YRspdQ1cDg=;
        b=Am7VvEps4wE6nEWbVGs11+TUQlrjsQ2kL8gYnNilhivkqnUzYNN9O2RHaXFg9C3nxl
         1EFfpj1GcXKiSVrvuu6+Nrawd45FbOrdB7+UAkXGhgxU6aIwrnTrCuLT4fEm0RSdBOO0
         +vUGI4PsZ8FbYSU2TTBFg9KNwsTCkaS0oJb3z4waSPGrLFtKP2iomuCHkp8QzNLFr2I/
         rwSrvHz95vgbnT8aBhWsvBsOEHKJDA5yFI6YPbG53o6pXJxsic9kQ3JKgrrVf8xwDOgU
         tnj95bcjhL5novcgQMA0XX9SNtox7TIYC+3TrUC3qS/0HKGwvTAyNeXuVt75NtaQH4qH
         aJqQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530HMJAT1cceCtETw9S0nCl+QoG24AueN9hSFQT8GwgTFU4te9eU
	hUyOQl/zB/9xaSjyxwHuxEA=
X-Google-Smtp-Source: ABdhPJxxV8up53AgSkUXxOl/H6fsEtuDQXx5yHDR/6MI15+f/43aFRp3MlGkmHh33pq4bglVQKQfXg==
X-Received: by 2002:a05:6638:24c6:: with SMTP id y6mr1337990jat.98.1636302014623;
        Sun, 07 Nov 2021 08:20:14 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a02:9008:: with SMTP id w8ls1616128jaf.3.gmail; Sun, 07 Nov
 2021 08:20:14 -0800 (PST)
X-Received: by 2002:a05:6638:d16:: with SMTP id q22mr20169816jaj.35.1636302014294;
        Sun, 07 Nov 2021 08:20:14 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1636302014; cv=none;
        d=google.com; s=arc-20160816;
        b=HUSBNrW8CoKFYkznloi7Ei5dnp1cYHDmhRrWuc/pJuHYY4x6hoohmx8tFEHWWCxKZq
         ZX+iHapzUex92ikSf5IeOeye6OknvQvpqK22YIsNUEBDRxtLDV9SO7rO/CeGtMdvShEG
         bz+epS60jubNXNpjUKh7Xj/BpC5k2/ZkrC41xUWT/t/4mcaPUJsrQKeHX0WZduTiAG03
         MUJcbiZnOpSy8m32SunOKQ/cmULyfLiiwiDSMDNYUMJH3Jd0FNGz0SCyH1wATs3b/MjX
         9cap/DwzlYZwAwxsY020FtR0h9agODSVQSYjdwxHSSJLzRX/fNx3mpZwmTfogITqsfyk
         uITg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature:dkim-filter;
        bh=Ia5nRSFeHj6vuVeol5rcoB9Th6hH+WhF8mEQNkaxAjY=;
        b=AwlqTUQ8GmPbQXYFSWV2jx2rSUaLo89BjD27m0qhU28ScI2qK62elFdUmxsWqr5rMY
         EZsrVxO4MehLGvYMQyprLspmPmshn0jLshZea28tfSY/fjXilnYtWquCQZwBKI5iVeFU
         jt6NwF1fizOEmrhem0eXsQ+TCGk7WwPglv2/lk5kCGkVAQq4rRYgO+AxGl0TWuQEGmBx
         d9xzCm2/FZmSUMgtmjcyVUZnT6p5Ti2Mya76ewDRyhwFHozzFZZcQztbobeCYp9zbwkH
         rZtdKswinVylRv0DjyxFIzRwrGpX18uCh7lXaDowCRWeDBwJwgP3INAB52xn2vOlfkSx
         i6Zw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=dDK0SVTk;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.76 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from conuserg-09.nifty.com (conuserg-09.nifty.com. [210.131.2.76])
        by gmr-mx.google.com with ESMTPS id o6si735699ill.3.2021.11.07.08.20.13
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 07 Nov 2021 08:20:14 -0800 (PST)
Received-SPF: softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.76 as permitted sender) client-ip=210.131.2.76;
Received: from grover.. (133-32-232-101.west.xps.vectant.ne.jp [133.32.232.101]) (authenticated)
	by conuserg-09.nifty.com with ESMTP id 1A7GJdco018789;
	Mon, 8 Nov 2021 01:19:40 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conuserg-09.nifty.com 1A7GJdco018789
X-Nifty-SrcIP: [133.32.232.101]
From: Masahiro Yamada <masahiroy@kernel.org>
To: linux-mips@linux-mips.org
Cc: clang-built-linux@googlegroups.com, Masahiro Yamada <masahiroy@kernel.org>,
        Nathan Chancellor <nathan@kernel.org>,
        Thomas Bogendoerfer <tsbogend@alpha.franken.de>,
        linux-kernel@vger.kernel.org, linux-mips@vger.kernel.org,
        zhaoxiao <zhaoxiao@uniontech.com>
Subject: [PATCH] MIPS: VDSO: remove -nostdlib compiler flag
Date: Mon,  8 Nov 2021 01:19:38 +0900
Message-Id: <20211107161938.323485-1-masahiroy@kernel.org>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
X-Original-Sender: masahiroy@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b=dDK0SVTk;       spf=softfail
 (google.com: domain of transitioning masahiroy@kernel.org does not designate
 210.131.2.76 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
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

Since commit 2ff906994b6c ("MIPS: VDSO: Use $(LD) instead of $(CC) to
link VDSO"), $(LD) is directly used, hence -nostdlib is unneeded.

Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
---

 arch/mips/vdso/Makefile | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/mips/vdso/Makefile b/arch/mips/vdso/Makefile
index 1b2ea34c3d3b..d65f55f67e19 100644
--- a/arch/mips/vdso/Makefile
+++ b/arch/mips/vdso/Makefile
@@ -57,7 +57,7 @@ endif
 
 # VDSO linker flags.
 ldflags-y := -Bsymbolic --no-undefined -soname=linux-vdso.so.1 \
-	$(filter -E%,$(KBUILD_CFLAGS)) -nostdlib -shared \
+	$(filter -E%,$(KBUILD_CFLAGS)) -shared \
 	-G 0 --eh-frame-hdr --hash-style=sysv --build-id=sha1 -T
 
 CFLAGS_REMOVE_vdso.o = $(CC_FLAGS_FTRACE)
-- 
2.30.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20211107161938.323485-1-masahiroy%40kernel.org.
