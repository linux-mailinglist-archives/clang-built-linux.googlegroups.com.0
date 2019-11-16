Return-Path: <clang-built-linux+bncBDTZTRGMXIFBBMNUYDXAKGQE3ROAVTQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3a.google.com (mail-yb1-xb3a.google.com [IPv6:2607:f8b0:4864:20::b3a])
	by mail.lfdr.de (Postfix) with ESMTPS id B152FFEDEA
	for <lists+clang-built-linux@lfdr.de>; Sat, 16 Nov 2019 16:48:02 +0100 (CET)
Received: by mail-yb1-xb3a.google.com with SMTP id f4sf9906222ybb.14
        for <lists+clang-built-linux@lfdr.de>; Sat, 16 Nov 2019 07:48:02 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1573919281; cv=pass;
        d=google.com; s=arc-20160816;
        b=S8w3vbSTLJR/jCods4s3eQI0Y2hWEOgLxx9t+5bMzs8NodbH1z6ueYuP2yReyg/XZ2
         ps038qMRypdIpEmzE9he4mzcIZmFp+BzEmZu66nk4CT475gnhrknkKmTHcp5SZMM0tU/
         bY3njR3lvG87rdedNhZsVDmZ8Os6M60ipIENWz1ttpXrc14k+4vNfkO9rhoQokmvU0UX
         AIOI/Jkqj2ktljouHqw2BX9Bgnonuba0Pp3V5l1M0QP23maE+lLOYLV2bR0HD0jvN8MH
         LNL1Z/2YaciSm7hbaL2VUARlew6DxxnUWDEp1M1szyi8YsQEvlLvUEAaKruKUXS8aBW+
         5ZWA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=IivBtMt0tSwlnzkYyMuuha1rKZSmrvlOMQcjr2ytAtk=;
        b=heTGoflmHPTcHaMGlat7HKuZYmNqQKArg5kFyJY//LoAodGXN96Di/2wy+njQG1/vJ
         p+LiKlW8uxlnRqsh51kyZcTESolW1J3PVJ175jzDuPul4IPDUaRi57vq5obw/DLdMR1F
         NfQgjPSnrAJc4+1hdtmsK7uHtVqazFoJuIdMzHe54CmY5XuTYHr16wu7B89zv81dy8is
         mqrBRnKLlb6fNodbKS8nWvfpsUUOYiTXAgX+x5DXjsnRoRzwP646NYC9sxcT+etTJNRV
         lVHlvvQcDnGopx0n/flqtV7MGxBoMgovQMn96UTCzDIyftTqDePYEycCUCRjg7yjk9sk
         hgQQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=LBLiB9xf;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=IivBtMt0tSwlnzkYyMuuha1rKZSmrvlOMQcjr2ytAtk=;
        b=koWXppuTsKnnT7azZHDoeKhVBicJXUWDmuBZW3bS7FcQo5UDGniL3rIQfFQDXKInNF
         p4JvSG58AArMXMVrN82LyofJOLDir8P3Qfdxhzt6+udEWW/eqwVTkCKLLhWocP01Giid
         CdA62iAPUB2pzsRXVqO60somOGTnJAPwvlmazan21ZjyhuuuNMNkdflDzDKrTX06vhAN
         sTEf933/HCEXfF2OHWeZSfHqQ0vkQKPsbFuABRV2PIP6a3M2RJsEVoqmNhE0XOmqqJHX
         OVIhT3DzCBhUsnNg6FoFX64WhbBWIRlKckT3NPRTlQRfhCYnKcPgsosj3uRnVv1afJte
         h45A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=IivBtMt0tSwlnzkYyMuuha1rKZSmrvlOMQcjr2ytAtk=;
        b=DtDcrVEQAEuYGnklHU2WoM2i/9phwXPN8QgbbzVre5eVDnmdO+xJ83NjfijqPSDI13
         PwDK4hDgkkY+yHwsJd6y1ZQAbyJJrWlupbAK0rQpJze2/7ybvOZ3mYt98nU3T+YAeJC4
         8CccxfB2dz4zEg/5g4I7rgNpjVC7Qr/McpWh4JQlETYOiqNT9MzYvllZne9D4uSNQYA8
         xEc6lFlp+wxqFgu0FRXy+sIfjj0f0hNdUyZolqEEXnvUzoBMK4gcFJSRqME8OuhOGyq8
         vskNco3qOOMf4TgObshh4nLFVVScjcJ0v3fOP/U0SuzLsTpnHFMFIZTqq3wMmE6qn4P1
         7DaA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWCAjilvjR8JKWuQSbpvPwBGvd7iyNO5l/SBdMF7FX5raA01aIf
	8aNAwVAiDGj+WXa/TVArN0I=
X-Google-Smtp-Source: APXvYqwMAYj5OMvU+wMOoX3WuQ4WvLauzj/Uxcyu6KlCzoOBDFAFR80lTK6/RPJzY1PEQ4SMrhXrZQ==
X-Received: by 2002:a81:6d4a:: with SMTP id i71mr13298338ywc.55.1573919281403;
        Sat, 16 Nov 2019 07:48:01 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a81:98c6:: with SMTP id p189ls1044170ywg.13.gmail; Sat, 16
 Nov 2019 07:48:01 -0800 (PST)
X-Received: by 2002:a81:1b82:: with SMTP id b124mr13780362ywb.429.1573919280936;
        Sat, 16 Nov 2019 07:48:00 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1573919280; cv=none;
        d=google.com; s=arc-20160816;
        b=O8ey6lDXqPhjy+yTAUi8SyWEPf8gX+DyduEgxTGLVAjcnIAJ1y4quRNtZZtfZ5Tna+
         aDphSkB2LYHC9/Ck0vrReaSC7BNokWU3y+dJ+h/5wmO2E4Q4ll8lL6vyIXIxNKhhM30l
         oKXPlIhXlM1yRhlH+ac2lCkR9qGA03QWM2AP6nqFZ0OHE7Q6EJHQ7+p+UFFnz9O7GhLv
         mIfQJCLS98f3dzeoSRgU7dPu3CJsVxBJA9w8OKLr1bL2Nb6jG/HQtV0ljJdfP2spGLai
         UyB3ODcN0u619H2oCJFumW1ZKLF0eoteKsgXjeCxcbRuuOHOUa+wJ7nl1UMZZ5cSo3BA
         Nxlg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=HcXT2KvdEpbsVpLlYSk5PHWVzKqV1rt5PkHafnREkgA=;
        b=ydKspPRXT1RCEje0Aq6cQfmsppCKqnP24d1IMio2ZtTtX7ThEFYB7GlLzWa+V4bOJY
         emofzgi7c/alby7bnYcOJ2++J8rhuORMs8DmNH++3JtfhZAGJV+ZXrza+7KOskTJq/jC
         aTbrMJuhV7BAGwu6rWhorIk0i/WOFw77z6//V7zGWbuIYhofd137/O+szZxyV+xQkWAF
         G6IqNRO8FWMFKEfbDvjLUv+We3RAO7zrtQNj/LK1G7/TSTSvBgW5wGd5KcngL45A8nec
         YLvxwgmPp9aiWJnBxwA2l8b7Vot4OeTBcgGCMvnyPPuG62oYyTQt8WCh+7CguGoh383u
         M4OQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=LBLiB9xf;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id g82si618927ywc.0.2019.11.16.07.48.00
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 16 Nov 2019 07:48:00 -0800 (PST)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (unknown [50.234.116.4])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id C21D72086A;
	Sat, 16 Nov 2019 15:47:59 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Nathan Chancellor <natechancellor@gmail.com>,
	"Martin K . Petersen" <martin.petersen@oracle.com>,
	Sasha Levin <sashal@kernel.org>,
	linux-scsi@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH AUTOSEL 4.14 031/150] scsi: isci: Use proper enumerated type in atapi_d2h_reg_frame_handler
Date: Sat, 16 Nov 2019 10:45:29 -0500
Message-Id: <20191116154729.9573-31-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191116154729.9573-1-sashal@kernel.org>
References: <20191116154729.9573-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=LBLiB9xf;       spf=pass
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

From: Nathan Chancellor <natechancellor@gmail.com>

[ Upstream commit e9e9a103528c7e199ead6e5374c9c52cf16b5802 ]

Clang warns when one enumerated type is implicitly converted to another.

drivers/scsi/isci/request.c:1629:13: warning: implicit conversion from
enumeration type 'enum sci_io_status' to different enumeration type
'enum sci_status' [-Wenum-conversion]
                        status = SCI_IO_FAILURE_RESPONSE_VALID;
                               ~ ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~
drivers/scsi/isci/request.c:1631:12: warning: implicit conversion from
enumeration type 'enum sci_io_status' to different enumeration type
'enum sci_status' [-Wenum-conversion]
                status = SCI_IO_FAILURE_RESPONSE_VALID;
                       ~ ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~

status is of type sci_status but SCI_IO_FAILURE_RESPONSE_VALID is of
type sci_io_status. Use SCI_FAILURE_IO_RESPONSE_VALID, which is from
sci_status and has SCI_IO_FAILURE_RESPONSE_VALID's exact value since
that is what SCI_IO_FAILURE_RESPONSE_VALID is mapped to in the isci.h
file.

Link: https://github.com/ClangBuiltLinux/linux/issues/153
Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
Signed-off-by: Martin K. Petersen <martin.petersen@oracle.com>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/scsi/isci/request.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/scsi/isci/request.c b/drivers/scsi/isci/request.c
index ed197bc8e801a..2f151708b59ae 100644
--- a/drivers/scsi/isci/request.c
+++ b/drivers/scsi/isci/request.c
@@ -1626,9 +1626,9 @@ static enum sci_status atapi_d2h_reg_frame_handler(struct isci_request *ireq,
 
 	if (status == SCI_SUCCESS) {
 		if (ireq->stp.rsp.status & ATA_ERR)
-			status = SCI_IO_FAILURE_RESPONSE_VALID;
+			status = SCI_FAILURE_IO_RESPONSE_VALID;
 	} else {
-		status = SCI_IO_FAILURE_RESPONSE_VALID;
+		status = SCI_FAILURE_IO_RESPONSE_VALID;
 	}
 
 	if (status != SCI_SUCCESS) {
-- 
2.20.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191116154729.9573-31-sashal%40kernel.org.
