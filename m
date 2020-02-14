Return-Path: <clang-built-linux+bncBDTZTRGMXIFBBRMPTPZAKGQEYS2DV3A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yw1-xc3a.google.com (mail-yw1-xc3a.google.com [IPv6:2607:f8b0:4864:20::c3a])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A94815E0E1
	for <lists+clang-built-linux@lfdr.de>; Fri, 14 Feb 2020 17:16:06 +0100 (CET)
Received: by mail-yw1-xc3a.google.com with SMTP id i134sf6900342ywg.0
        for <lists+clang-built-linux@lfdr.de>; Fri, 14 Feb 2020 08:16:06 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1581696965; cv=pass;
        d=google.com; s=arc-20160816;
        b=VIOHEmUyEYa5iqqofjBiqPo/urghUMOKsH5W8fImW5dwDbIpYIOhNnN/BlYnAhzx5J
         4+DYA898RTd7OkMep7Z4mW6wPCuThqBfAm7vs/eIVESHJT1Ntzo9VmhrSDStJtFdYjwy
         bBqphd4xuNnMhcbXdmWTU994GL9kmSE4HcQe6zwOZyRW8Pj3JfC/zQQIiN1VBvDxcGLx
         QNCPBBXw2lue3sM0BbLUu1Xqnk5CG8Ms9OcjGUDY5Ha1StEyMFRLU5j4uAevsfJ1kbcu
         8QKxK7rXQShYYM47hyi2YKugfz+xxEagOLrqYcYRRsNOCicbmMT7fjbX7w2uoAVePIxY
         Ka2A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=vZ/Ag4vOyEZ5fPkb3iJUd868FMZE0AAvvAavxBNwnD0=;
        b=Voiff595mATPPUTLLFcrgGRQk0LbzakxX/SwIK37/gW5aTM3AvnKhzgBtSvbNTzuoA
         mvhtC5t+sz/XFx6juKvsZyDJxCDLHU6R50u5PQnHM6WcJqNoCWYbazH+PQ+s9iBCN6Cc
         L7qhUep72qOwSGqOmxA01gZtSZhz/V5mN6DYrz/GfBcp9WOLUnEzCAyEWL0joGiDnMR+
         ElczPqVtqWM+tnVuFPAZqmWkfwXM5J0yD+74vjRsWcOm81j8I2hMDa1RMLefzHufj7oE
         5fElgif+fFxBvTU4xRDi89HnBsDpSjvDq9ncYU9i3zCKjwyhmLR0EvN3V+Rs4s/Ba2sp
         oI3g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=wphf8WR8;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=vZ/Ag4vOyEZ5fPkb3iJUd868FMZE0AAvvAavxBNwnD0=;
        b=GH2vPB5I50e2KuKdhEQOf3OmxBkyeaGaptM0lv81htGB5b8SF/XiClEZvBU+ZFfSqc
         DpoQ/O31AA+CV9hIX+4WMCDpSfB/FSTSSOPLqgYZFPBL4rEjTOxde1HfZhe6EW0YGjff
         1U2PBR9ONXXLrEJTL8GB1cdvgPdF/XP78EzbuqtA23x4FFVgDB/OOTarT5Wj7XEY4ESp
         yOFV+Z/enN2QVUq+EBU1NxIl7tzV1kxZVPINOuDUJpeoBf90SzlYjsRDuGrumEZ2ncBa
         BuCtV0IpgG6Bj0t1rxVku0PWCkMNbLRdsx5uC2Xlurv3orO9/l1fmIe4NPvc81f0Tkq+
         XZ1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=vZ/Ag4vOyEZ5fPkb3iJUd868FMZE0AAvvAavxBNwnD0=;
        b=p8gTYbrgnEvaGxn1Ap+79uhG9pNpbw+TYXRvFBBHPdjqmjc3ViUhVTcCIuCkTBEiHD
         RBKNxmKHkA5a2XKD+pmOP8tNcE79+YaOGanIz35AvmofFXtY0E78RV1gID/r9/mRyRwe
         aCU+2a0bSLP2JEFzQlJs1mPGWB2kAxHl96rIB/agMCgeFL6pOLrw4oVt3sOn2jOXkIQ8
         UpsM6QRfvAHeWx4lAcxLgTx9XhpDHAwEpS/g0Sd4ln6c/e6VkvKuXiqxxVj9Frurx8TT
         2IjKlW6XD8yZYXOcJZluRrFljzSzBeFIw2po52MEFRpqX89HglBfzJgixRMLFtwMlvQg
         A1UQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXMhVfZ3TztpnufIlUqE6FtN9JQpbzXRyZqtfWIhU1mD+7VoGLp
	G9DGq8Bm/FBXkF3Be6JBFeQ=
X-Google-Smtp-Source: APXvYqzzFILrZPSGBh4Eg5xux4fHFXEwXGedzNjvmOxiayQusR/M+YpASRe2tPw1mK/iqd/kcXtS7g==
X-Received: by 2002:a25:7694:: with SMTP id r142mr3592244ybc.386.1581696965189;
        Fri, 14 Feb 2020 08:16:05 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a81:4ed5:: with SMTP id c204ls501492ywb.6.gmail; Fri, 14 Feb
 2020 08:16:04 -0800 (PST)
X-Received: by 2002:a0d:e2c4:: with SMTP id l187mr3102399ywe.188.1581696964846;
        Fri, 14 Feb 2020 08:16:04 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1581696964; cv=none;
        d=google.com; s=arc-20160816;
        b=s3WL3XV+wmNl2mbZnOjb2gpChxAm3Oti0otOmYC5K4C8U11h/Fk508e3qF4JL6NT/3
         Au6qvZI17b3nZfT3MsK7xIacgLHNxtWK3oM/D94NTKL3MmzJiBZrApzrUNKjQ+aDHPT8
         pfNVCj+mTT1hN3oaIvyoDP1UKa9DEH00hzjfVW32yqjuU5H4vVAMug8OPk0Vg3nio9Mz
         /NIv5gaq05yuhqg4yZXxWRHZ1PWRqtvfZZLuoavtv+54xrAdJccKuE9jHgXutwSPhclZ
         C4GzpQi6s5Ax3xXWOWoP/a0XpCR6UDZQoDjAqmy6Ju+d4xfsvPWo2aCckCdASpsUvTFp
         Hu9Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=Yjl4lxMzCs37F/86PWSOZM2flAdtHC6iSP1m7O+BWvM=;
        b=KM8J9B816c3qSpaMmoLoDGPhZptM2FYQupo8yINuukfT/+I7nGcIWaV5OyCV/55ljh
         D2xRfg9e7iUi0gb62j3rEh6vFnCP53QCa9LsA5Kq41RBAlZigthPfeK7zLfEryzaFi+2
         ZU5t/MK+0K9ax7XN3kRGlMWuQETRLMMOImTrEHsP1xc+Rsy+FTZ1UZ5ZphqLE39DvXMu
         Mf5DQHM4cMwXSaWPhHm5OoOfF/qK+cIyr+Dj5DradS4TU/qDyhfApWFPsE7vinzXi8Sl
         c6bEzetAGxf4wGpGTxTiWkCfhLp6umz8BMW3mG5Ap7ir7N27GgTFR3/nfkmaTLHQTRgU
         hLcg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=wphf8WR8;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id y5si395511ybm.4.2020.02.14.08.16.04
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 14 Feb 2020 08:16:04 -0800 (PST)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 3E3B1246F0;
	Fri, 14 Feb 2020 16:16:03 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Vasily Gorbik <gor@linux.ibm.com>,
	Heiko Carstens <heiko.carstens@de.ibm.com>,
	Sasha Levin <sashal@kernel.org>,
	linux-s390@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH AUTOSEL 4.19 203/252] s390: adjust -mpacked-stack support check for clang 10
Date: Fri, 14 Feb 2020 11:10:58 -0500
Message-Id: <20200214161147.15842-203-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200214161147.15842-1-sashal@kernel.org>
References: <20200214161147.15842-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=wphf8WR8;       spf=pass
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

From: Vasily Gorbik <gor@linux.ibm.com>

[ Upstream commit 253b3c4b2920e07ce9e2b18800b9b65245e2fafa ]

clang 10 introduces -mpacked-stack compiler option implementation. At the
same time currently it does not support a combination of -mpacked-stack
and -mbackchain. This leads to the following build error:

clang: error: unsupported option '-mpacked-stack with -mbackchain' for
target 's390x-ibm-linux'

If/when clang adds support for a combination of -mpacked-stack and
-mbackchain it would also require -msoft-float (like gcc does). According
to Ulrich Weigand "stack slot assigned to the kernel backchain overlaps
the stack slot assigned to the FPR varargs (both are required to be
placed immediately after the saved r15 slot if present)."

Extend -mpacked-stack compiler option support check to include all 3
options -mpacked-stack -mbackchain -msoft-float which must present to
support -mpacked-stack with -mbackchain.

Acked-by: Heiko Carstens <heiko.carstens@de.ibm.com>
Signed-off-by: Vasily Gorbik <gor@linux.ibm.com>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 arch/s390/Makefile | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/s390/Makefile b/arch/s390/Makefile
index e6c2e8925fefa..4bccde36cb161 100644
--- a/arch/s390/Makefile
+++ b/arch/s390/Makefile
@@ -63,7 +63,7 @@ cflags-y += -Wa,-I$(srctree)/arch/$(ARCH)/include
 #
 cflags-$(CONFIG_FRAME_POINTER) += -fno-optimize-sibling-calls
 
-ifeq ($(call cc-option-yn,-mpacked-stack),y)
+ifeq ($(call cc-option-yn,-mpacked-stack -mbackchain -msoft-float),y)
 cflags-$(CONFIG_PACK_STACK)  += -mpacked-stack -D__PACK_STACK
 aflags-$(CONFIG_PACK_STACK)  += -D__PACK_STACK
 endif
-- 
2.20.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200214161147.15842-203-sashal%40kernel.org.
