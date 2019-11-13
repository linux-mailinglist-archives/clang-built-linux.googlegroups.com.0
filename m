Return-Path: <clang-built-linux+bncBDTZTRGMXIFBBHOFVXXAKGQES7B54MQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x439.google.com (mail-pf1-x439.google.com [IPv6:2607:f8b0:4864:20::439])
	by mail.lfdr.de (Postfix) with ESMTPS id D9371FA12E
	for <lists+clang-built-linux@lfdr.de>; Wed, 13 Nov 2019 02:55:42 +0100 (CET)
Received: by mail-pf1-x439.google.com with SMTP id x3sf360178pfr.2
        for <lists+clang-built-linux@lfdr.de>; Tue, 12 Nov 2019 17:55:42 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1573610141; cv=pass;
        d=google.com; s=arc-20160816;
        b=mFtVVK6QJNhp/4VKweNipJlEWlPZPhvrSZB0Ta0fqhSuVfMWvX4XCJF8VtxMHL2LiG
         k9qWebEap593DwuR89DTMF9LT8sTZd3zahy42vMhxVy/0P0l9PpXLJIqLfBfIic0fus4
         JRvyhSjSv9NXkcjmCb07k5o0cSusgISnZ4FCNnUbdxTSi74cJguZROZNL2LOhXQCLvEu
         ORU+NfQ+JP1D1zsksAZz0OleYaD8c6X/pc1AuVjAiTS7ULZQ/SuPE97fcF0fMWOfEyxv
         h157spO9oniHyQtroexB03cXRkjp0gsOVLK/EJJ0H7KX/YWzj+p8a46uOJcJVdbU04U1
         KJCA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=D8gsqncHhzNJ/vVFKvaTeKiQLBNd2PC1VyhCH5F55YE=;
        b=J3sL7/uLmud8qYc5zekila0ZFkQyqfHQ64+qN4l62c/9YGcmzZFFLeVBXWmAfjXGia
         jtemVdYNnux+QOh17u6biXjNf8rxNgdRcFgtzLFUvt5h4ObwtVLQM7IrpmnwlFJ91krj
         8E6/USmXy6zVnQXow570VraLZMQeBHZhn6xyh3NtpOWxhhJ02LPli0QdekqI+/VXUKIr
         A26jREHq2cmmdHWvkykabYYi80Q4KqXl4V9y7aWAk6gzUOcJCaj3q6liW460DmI/OS3l
         Bzd9a2pgA6lMv66dZvUUUmI1e8BQWvfc3rUxhCVPUzfqQ/UvT3mlBsjzQHx1qpOZgd2t
         C7IQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b="nH/4MsQP";
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=D8gsqncHhzNJ/vVFKvaTeKiQLBNd2PC1VyhCH5F55YE=;
        b=eh5Ovr7pJGRvfH8534rdDvlqxfx5BpIbEdzh13215p3kR9lvNRUN/pnwMEHDLpfajC
         zqdCK/fZheV8XQ2NLoYM0MadTc9S19fNwzkeBIbBrXZhZHQE6aXTP3RmXdACK+wR8g6r
         8IMwFE3VW5ZYB+IIZeeBCkjAZ+0lzT6SPOANXLoOFeT5GvdHo/qkREHnl8KElGHvzaaA
         /fsjQs5BYaCPFZcUhEHm+zyHZkKaciVgDl80fr+r+4leSbmahBzN6dmprukR+pXdoq9E
         q8l7CWBDDhhFyBJKO6huTUq8gwoiYM/PrfDh95DjxWNEPOeOm0Ifx8h8cW7IZfnu45dQ
         sKeQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=D8gsqncHhzNJ/vVFKvaTeKiQLBNd2PC1VyhCH5F55YE=;
        b=uNfNOXgOc5F2eT/rCH2hxXpB9O4y7rlCTgpi+/l8qInr4zPD43psXE0p34HhacUMSb
         A2/De9IIx4q/IAMfRcT2tMQrXiWLTTQG8/a2FW6CgoHgVS8NkR70bMn6OglrQTPl7pgn
         ggNzxcNGV3MhBP1BlBPOF8X4cK+F6Hgl6WhxaAEdEmayEU1F6fkkvDk6WFdLCF3M9iG5
         LwltVla1tBj7uyzCjcmjcLP6xQeiFAjynl1c3/IEQForU2I+nMDYJ8nynK4jxFn7W1ua
         bO2mJE5LAho4PAjoTPghuNPq3WGbpKIXlw7YWHFsxWIz/QO+rZM1iBP6nfVCLaqQKwgd
         qe1Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUMAmh/7KOTebIafCRBBp2bumZIt5IK965103edII00EQaKVjOL
	r8sbcy95BJURm6xtpFsbdIM=
X-Google-Smtp-Source: APXvYqzaEqUzG76UmT1vIl8x3RLW9Y57YxA8vVAMeLdUpUxcz7PHPEVgYcut/dluXISOlzp5+5SK8w==
X-Received: by 2002:a62:7c52:: with SMTP id x79mr1286879pfc.18.1573610141610;
        Tue, 12 Nov 2019 17:55:41 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:f201:: with SMTP id m1ls148747pfh.1.gmail; Tue, 12 Nov
 2019 17:55:41 -0800 (PST)
X-Received: by 2002:a63:c406:: with SMTP id h6mr724966pgd.213.1573610141141;
        Tue, 12 Nov 2019 17:55:41 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1573610141; cv=none;
        d=google.com; s=arc-20160816;
        b=Ig8CRNuH6u2cz2oNHNGX51Ym2GOwmC7Th3nd9Yo6/p6ObAueQJDQnxScU4LhUuPm0W
         VzE2iF0R2fPxfXhkxdPH4QKErcoAlwe1S5JwWxhMOu/NO3aosGEaku9HQJUpp7RQw9WH
         EJujdNWl82Mh2T2/zO+edZ58+6hbfMrp2hHEF3Wzlar0shdVYoTUgi322s8bPqaOpy2W
         6d6W97ek3u4xqMaIwJrXWNnOq9VrFcpsMvEuwY4h4oJLfirDnRyjjnRJuYq/MhCbZMup
         rH1fA3T/s3dlu42EMWY92WRtJq4owr+QrF0AyPilQUy1VLlDoiXvIPE6zrtnnVfLPo3u
         9AHg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=aw5GCJ9Ukw6/zg0roH2+7GCOLgfRdc628xi57dTkaAc=;
        b=Vc7PSYp6DlxD8bpkeV7tDbdHk4NzQp6Qtms97aZvUGN3JWLD6zulDaR6ziu9fr/Vtp
         +LGMcZ0NV8Yxa24TcLcnBx132Q+ZvE4m+ylktRtfjzN+KqSWJNsJTSufOcxKAYcBzFr3
         sMkpvhst2wynNwsT6OAPTZxj5bpfovvv1YQzDzzw6oUiNXXSWMS0MdYgXl7jdyQeN7ma
         oCpaQRQCcf/QcuoFB6ghENcNZN3syUOdxswQLmUGLXOnGy/xkXz0o2T0hPlqsYsIOfas
         JG3wVGo6TuMS1//fEuyVNq+krdFzCkzR3YFcCtLicClxifv6+Bk1GUEHa/MhaY65GDGT
         +kjA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b="nH/4MsQP";
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id g15si20372plq.0.2019.11.12.17.55.41
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 12 Nov 2019 17:55:41 -0800 (PST)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 070D622467;
	Wed, 13 Nov 2019 01:55:39 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Colin Ian King <colin.king@canonical.com>,
	Ching Huang <ching2048@areca.com.tw>,
	"Martin K . Petersen" <martin.petersen@oracle.com>,
	Sasha Levin <sashal@kernel.org>,
	linux-scsi@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH AUTOSEL 4.19 187/209] scsi: arcmsr: clean up clang warning on extraneous parentheses
Date: Tue, 12 Nov 2019 20:50:03 -0500
Message-Id: <20191113015025.9685-187-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191113015025.9685-1-sashal@kernel.org>
References: <20191113015025.9685-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b="nH/4MsQP";       spf=pass
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

From: Colin Ian King <colin.king@canonical.com>

[ Upstream commit ca2ade24157693b4e533ccec69df00ef719d4aad ]

There are extraneous parantheses that are causing clang to produce a
warning so remove these.

Clean up 3 clang warnings:
equality comparison with extraneous parentheses [-Wparentheses-equality]

Signed-off-by: Colin Ian King <colin.king@canonical.com>
Acked-by: Ching Huang <ching2048@areca.com.tw>
Signed-off-by: Martin K. Petersen <martin.petersen@oracle.com>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/scsi/arcmsr/arcmsr_hba.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/scsi/arcmsr/arcmsr_hba.c b/drivers/scsi/arcmsr/arcmsr_hba.c
index 12316ef4c8931..c75d4695f9828 100644
--- a/drivers/scsi/arcmsr/arcmsr_hba.c
+++ b/drivers/scsi/arcmsr/arcmsr_hba.c
@@ -4135,9 +4135,9 @@ static void arcmsr_hardware_reset(struct AdapterControlBlock *acb)
 		pci_read_config_byte(acb->pdev, i, &value[i]);
 	}
 	/* hardware reset signal */
-	if ((acb->dev_id == 0x1680)) {
+	if (acb->dev_id == 0x1680) {
 		writel(ARCMSR_ARC1680_BUS_RESET, &pmuA->reserved1[0]);
-	} else if ((acb->dev_id == 0x1880)) {
+	} else if (acb->dev_id == 0x1880) {
 		do {
 			count++;
 			writel(0xF, &pmuC->write_sequence);
@@ -4161,7 +4161,7 @@ static void arcmsr_hardware_reset(struct AdapterControlBlock *acb)
 		} while (((readl(&pmuE->host_diagnostic_3xxx) &
 			ARCMSR_ARC1884_DiagWrite_ENABLE) == 0) && (count < 5));
 		writel(ARCMSR_ARC188X_RESET_ADAPTER, &pmuE->host_diagnostic_3xxx);
-	} else if ((acb->dev_id == 0x1214)) {
+	} else if (acb->dev_id == 0x1214) {
 		writel(0x20, pmuD->reset_request);
 	} else {
 		pci_write_config_byte(acb->pdev, 0x84, 0x20);
-- 
2.20.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191113015025.9685-187-sashal%40kernel.org.
