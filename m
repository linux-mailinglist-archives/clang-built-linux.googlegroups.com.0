Return-Path: <clang-built-linux+bncBDTZTRGMXIFBBCNVYDXAKGQE23EC4NQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x13d.google.com (mail-il1-x13d.google.com [IPv6:2607:f8b0:4864:20::13d])
	by mail.lfdr.de (Postfix) with ESMTPS id 46077FEE23
	for <lists+clang-built-linux@lfdr.de>; Sat, 16 Nov 2019 16:49:30 +0100 (CET)
Received: by mail-il1-x13d.google.com with SMTP id q1sf11904149ile.4
        for <lists+clang-built-linux@lfdr.de>; Sat, 16 Nov 2019 07:49:30 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1573919369; cv=pass;
        d=google.com; s=arc-20160816;
        b=Oyo8MsavYLvULCej8wzCK16Ka6ix7Mzrb3R9V0IM3lYgIb8ZNeqOC2oXm3ZoW8BpTN
         msixpUd5NJhBdRhgx1p/frtftot7OLsg+FiCrBrvoE+tOr/mCFoJ9odyRg4GX7LxHdts
         rIWBpmjHmvtb6ssQmZI2KxV+1BZ5buD8f7u5+iyf2jbsd8DSsEcThOhm6U8kzPyZO/Wp
         ZJJIzu+Y0F/3KaAXdRAGBtZXNTpI48XS02P43dN7+Ifwk6Qk4GaKZXTrzMG6A/LWVu7I
         YfaPuMNZnABD9vd7K7Lbu6LJGUg4n/MbZi+JMhfj+EuTe858iVbPtkud7rMjMkYXmG1s
         R9hQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=sb7k2xE2EiH79p8ldyIzVa4mKZJEuZjPFLGFSu5HiZs=;
        b=tzTZOJ7kXN+8UjBUv1S9yNgAEG/0wq3vs7d74/p0EsCtrI3iSSverzylTPGHRg8E6M
         /yYvQSXFv7A7w/Vwx+UYzhi0qMt81QbbPkOhZu2P32DysLVxrsYLAWSp3qe2gkf6y7Ra
         +3uVjdZNGf4CSVpKeJDIGeY9CJXUyK/z2q1CGr5I4ODn8EpDhbX0FYogh8Y1d7TAPLju
         rZzV+COZK36l9gsVRFSA2wFhk5AywwBgFqRLGk+cwehCylxuyy0GvE7sTNe+6aeyGqHW
         QXCk0ohVwvJWNLcBiub2eOfqK8WWdu3VYkQ4GmEDCg70/zvmHoga2IchMjg2Igm34RDI
         MFfg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=enja6y6O;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=sb7k2xE2EiH79p8ldyIzVa4mKZJEuZjPFLGFSu5HiZs=;
        b=L8Req9TzdZjSLPfHBt7l+VaKbBjgzOStJbAp9nWBR8C86t9fURt4DWOj0TUnoFZbcF
         bfoYC8l2kCzVy/6ncCAHlTIHyICVH9MXxGFmyqHD217izabpeCzW5Y8mkW5nrQ/p3Ols
         aBPfquYM0XRJBXjTsaGLvRwl6kPM8UwAcJfUCqya4g+KHhn0dsMxzpITJjCTxgrfTCt6
         mz7ZLNIh0FO/WPDgIY6mrk21JoO4PbHnv+JZmWMsUV1r4+Gtevt1kXu/oXYJ9kOgjnXS
         q8LZx4XpWwIoL/y0jFWQkztqXCiG3Cwm6U4hkBYly4Q7g8qi7Dm75UqZvqEm/KYDY15Q
         yi6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=sb7k2xE2EiH79p8ldyIzVa4mKZJEuZjPFLGFSu5HiZs=;
        b=EhYKdQbJpAkuOkctT2X+0Op7Op43Gy2XGxpUaADHtVvjpuGompDQlupxQdDYylrxUo
         w032QZQFtN3f0RlVSo6XD3P9mz9JsiX33t/LfsZXgEBJM8S1OVP9lpVk/pKzUFzkcRrd
         YJhsYCLYWTh5mGCZU6uZqeqOuJU58kiPbrO+sTwuvo8KeWljD3RRsNvFqQdNwls9Okqk
         N7sQdyev1Vwlu1VA3whHjCsq2VgMJITXwZUoCyIuGfACQYUUwPOoukvPwxBODvO3QM1b
         Huw1eikmkEf6CjIuQzAAbb/xq0Y9vdmNionsUEC4UlFfLzcAbdP45QZX7mXraxphAV7F
         EE3g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAW5I/eVwdP3hLaCg0EZRThTF+Hc7VaUaKYU8aJVDXXBvK6dNLdZ
	kpPU1ri6f4trZyQK0LfegUM=
X-Google-Smtp-Source: APXvYqzKCIIkFSPVCc5AEHiidB9/frSCWM5zBrWIgR62Q5wm+pT+a9Yo/cW4ys+k1vfTxEYI88b14w==
X-Received: by 2002:a92:5d8d:: with SMTP id e13mr6848411ilg.32.1573919369253;
        Sat, 16 Nov 2019 07:49:29 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:1912:: with SMTP id 18ls2400641ilz.4.gmail; Sat, 16 Nov
 2019 07:49:28 -0800 (PST)
X-Received: by 2002:a92:c8:: with SMTP id 191mr7081466ila.287.1573919368945;
        Sat, 16 Nov 2019 07:49:28 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1573919368; cv=none;
        d=google.com; s=arc-20160816;
        b=NOc174qFMkbF3rPc8cCbTL4YgcfO2NvEcUetNZDEtbA8lGcKnmDcxK80aX7wzop+cv
         Vc7rF6HO8wVAr5XSoddWRcTwtgKlLEQ40CWY6mwUY2DoWoBNrDwS5rHugPSBQTiWUVYV
         /4ZXaBZtSTl4CwmmT695zma0ocoX2e+su4nGyoIxfiWRbbO6TneE6eS8/lfAx3elUYna
         +T5jAZSM53YzzpnI0duxVCL8fyQOmJfwhEqsTv+EsfJUhNuhN5zgrWLvneuAN12zcgKL
         SkR75/TXEjMAhGts9JNFf8b8mbvzLedDZD4GVXp4L1tQ1bvr+HU7/TP4UNs5Xg7uOzvS
         bfNw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=s+VhaTKhfHVXegKpLkB98dmOqEYz5tuvqSY2VBqXnRM=;
        b=EZeLcw4x5rFHr8W+43RizMbzenyEkxiHLvkhxh1Ac2yNuLY+vZzSaPZ2Bsf/0/fgzE
         CanhZDY0n0AWMz26bk159m0KjlzQA+lvek9hv8NLK1DTXid3HPTeAICVuMndl6xKqlt5
         46zk59V/a0nVDBUzkCpJ6kpPQVGBeofjaikGIsGLlBjkCrqHtv4ikMYfMt+EneqHU65A
         PNz2f3X1jqOGqLsmj0RTgRM1k206nnP+oWwTho//GRSTM/3thzLR7Fc5GNrGA6H4J6Id
         gmKVFNq0Wm+h+1c+liQw2utELN2UWLx7HktZTKjZU2wPo7gW2hQ9Yp8O1leEWAUDRqCw
         gkOQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=enja6y6O;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id 75si520041ilw.3.2019.11.16.07.49.28
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 16 Nov 2019 07:49:28 -0800 (PST)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (unknown [50.234.116.4])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id E62FA208C0;
	Sat, 16 Nov 2019 15:49:27 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Joel Stanley <joel@jms.id.au>,
	Michael Ellerman <mpe@ellerman.id.au>,
	Sasha Levin <sashal@kernel.org>,
	linuxppc-dev@lists.ozlabs.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH AUTOSEL 4.14 089/150] powerpc/xmon: Relax frame size for clang
Date: Sat, 16 Nov 2019 10:46:27 -0500
Message-Id: <20191116154729.9573-89-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191116154729.9573-1-sashal@kernel.org>
References: <20191116154729.9573-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=enja6y6O;       spf=pass
 (google.com: domain of sashal@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=sashal@kernel.org;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=kernel.org
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

From: Joel Stanley <joel@jms.id.au>

[ Upstream commit 9c87156cce5a63735d1218f0096a65c50a7a32aa ]

When building with clang (8 trunk, 7.0 release) the frame size limit is
hit:

 arch/powerpc/xmon/xmon.c:452:12: warning: stack frame size of 2576
 bytes in function 'xmon_core' [-Wframe-larger-than=]

Some investigation by Naveen indicates this is due to clang saving the
addresses to printf format strings on the stack.

While this issue is investigated, bump up the frame size limit for xmon
when building with clang.

Link: https://github.com/ClangBuiltLinux/linux/issues/252
Signed-off-by: Joel Stanley <joel@jms.id.au>
Signed-off-by: Michael Ellerman <mpe@ellerman.id.au>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 arch/powerpc/xmon/Makefile | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/arch/powerpc/xmon/Makefile b/arch/powerpc/xmon/Makefile
index 549e99e71112b..ac5ee067aa512 100644
--- a/arch/powerpc/xmon/Makefile
+++ b/arch/powerpc/xmon/Makefile
@@ -13,6 +13,12 @@ UBSAN_SANITIZE := n
 ORIG_CFLAGS := $(KBUILD_CFLAGS)
 KBUILD_CFLAGS = $(subst -mno-sched-epilog,,$(subst $(CC_FLAGS_FTRACE),,$(ORIG_CFLAGS)))
 
+ifdef CONFIG_CC_IS_CLANG
+# clang stores addresses on the stack causing the frame size to blow
+# out. See https://github.com/ClangBuiltLinux/linux/issues/252
+KBUILD_CFLAGS += -Wframe-larger-than=4096
+endif
+
 ccflags-$(CONFIG_PPC64) := $(NO_MINIMAL_TOC)
 
 obj-y			+= xmon.o nonstdio.o spr_access.o
-- 
2.20.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191116154729.9573-89-sashal%40kernel.org.
