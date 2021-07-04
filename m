Return-Path: <clang-built-linux+bncBC5JXFXXVEGRBK4ARGDQMGQEWW3XJKI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x93d.google.com (mail-ua1-x93d.google.com [IPv6:2607:f8b0:4864:20::93d])
	by mail.lfdr.de (Postfix) with ESMTPS id C3AAB3BB1E6
	for <lists+clang-built-linux@lfdr.de>; Mon,  5 Jul 2021 01:11:40 +0200 (CEST)
Received: by mail-ua1-x93d.google.com with SMTP id n21-20020ab060350000b029029ca376b49csf589399ual.7
        for <lists+clang-built-linux@lfdr.de>; Sun, 04 Jul 2021 16:11:40 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1625440300; cv=pass;
        d=google.com; s=arc-20160816;
        b=GBQpu6Z9agLCkfQgTrcthdw8HebnWnwKq1ppn3IzQs8vc5SwLNwscXgPtBrBqshQNw
         /uwtejjC91VKDfoGrpV1Ohe6n9woRG7HoUjuxxl0nYkt9qlNEGHKqfFcu6027V9fUc28
         RtROfCvBorCpQz7rmepI2rxyXsjp7CqeDQXHj0s1jPjyx2rGbVeVOBjz1SDgZqCC4MzX
         1XNTcpiRXSqC/egeOIHvkqwgff5rXlSOYM29AWrISOK+r9kVS6WmoVo3n1T7oOo5+EeH
         QPUsCxLKCjFFgYgF2BDqHBdGkhRq6+OFB0X1kIR776g0G/su70zwYu8P3hEmcdhiui2b
         e04w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=gGk3r+FsG/x0K37DGy/6bS5QJPhc2LeG6//s2xclC4c=;
        b=LY+zjmZ/xrL5+ZM9JA3djBbzDfObz1eCscz8P/vugrQzkQWnd2kLrCd7arYMlDMOQU
         SjiqO+3vcDYfhn33PPM/U/nMOMiHpszdHXQOPL2XUVrrhdpttUPuoLzRPX+iCCbyF3PX
         /9o//SAqy6uOuRZ169na4nGPmE8DKhGUAZk1QihC2jz4jcvTppk54NsZElnJ6SsReUdc
         gXpWMIh5lczXLPuWdJnWBTLzZhgHt9Rdt2MJeEDTgaw4R3QGeJ72hLkHYIRPAJ5BSeSz
         1TELNNo8q33ToXCBR/+ko6AKezwHZvltN7aJB7yeLj+EHkDFgEQsBi5bpmiw/B8HJpmL
         1tbA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=WAb+iNvf;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=gGk3r+FsG/x0K37DGy/6bS5QJPhc2LeG6//s2xclC4c=;
        b=id0BLDATfQXhXII9cfDAjRVdauk3b7oyYBs/bqbwyUebxsCHd8kAnxAQYKWKsc33Un
         eaFGxfnQ/CAHI9N0tEZJYGH/L4VYMKZ0myBmBIZCfbThQDyVSN5t/vemu82jma9UMalD
         AuoKdSvyQHU2eLWpEat1uoV3AxNk3GGeY89l8qYIvYFgS6oTtKc9j5K3OaTY/lSgrsbW
         5AraVeUDgBJM9MNxIF88JMFTcNWGIPcGcqz3CJRpST3ETKUSeRwi+/Fls9+/BZ6sIGaJ
         /5s8/S93jgmaYSilhsz9SEwJb8JfTj5zRP2a285X/uAVM+ehP3XSyIcE9q0JPHgpv/1F
         G0nw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=gGk3r+FsG/x0K37DGy/6bS5QJPhc2LeG6//s2xclC4c=;
        b=Et6FAjq62CNFccCnpCUP1UrfyzOPvBXhMHTuers0PDzAKQOrUjNrnLeuJmS2GWgEIN
         LGlWoYvhlhkZFfJXCWfjF/1B0WFFI0MQFjgR9gRnRTpLALzlQoXtGqn7TsYztl8jfLZ9
         ZgixogPRx7aJwWQtlSD0Fu891KR3iL45hc5N86Mj1TUIMo16M6qEskpz3uK3b+ty5PJo
         mjUCbHAyoQC98ZUZliH4sHMo4Qe5ozrgUuGQh+9VHjJvz2iFRYpxWM1f8CNLC9qoPosS
         TqGw4PqcZ+jPZXIAi7z+Na4UqcBvXd+h/VQS7YyuJhXZPbAeDQesNbQOwR3sI1kFIDmX
         79lQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533EwiyKcc0DC54DMxzEfZHQoeu7F6McKXv8TWL7z9eXTI/NRSXn
	FSfvadNhFlRLcq0qpeBu4rA=
X-Google-Smtp-Source: ABdhPJwHKRqT8YYlnL+0ZAa970eZKcRXnMDxG4gjLFMCWyXBGHIQ2/DIiyA823Xv7FSTy/65dBsO3Q==
X-Received: by 2002:a67:1686:: with SMTP id 128mr7689183vsw.13.1625440299877;
        Sun, 04 Jul 2021 16:11:39 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:f8d7:: with SMTP id c23ls3771730vsp.5.gmail; Sun, 04 Jul
 2021 16:11:39 -0700 (PDT)
X-Received: by 2002:a05:6102:753:: with SMTP id v19mr7480332vsg.44.1625440299231;
        Sun, 04 Jul 2021 16:11:39 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1625440299; cv=none;
        d=google.com; s=arc-20160816;
        b=QLQ+3haefZ9qD5soT5tZEmLIcRzrw/lSGI8NxtA3BnRidOzdxjkFlb9zY0bAEkEOJv
         TLgm5vq63PIexA5+0V8ARBQ0zHJJJEEsi+029WLPFqVYn1BN4CXWfFv7Y0WFeYOxK+NC
         wuoqz5DM3QuWrrCZq/X+bYbtV9if0Nzr0amlwT9GTUY58dayM+TroBNaqenYQsNaKLUF
         ZuVAYEviR5z9ts8RLh0vR51by/z2lCtd04s6XXKHOUjwbRjVB49oCVajV1iACrWwx2Pp
         /y5tt9Lfg2Dep9/C8Itn6sjrlPow3iu4d8B7pJ5fMang14jrXGMl3VSM/9u5V3Bm3IYZ
         DyiQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=YOICM+AYca/uSdKORL/vkwtqc/G5Tb8dQTejztB7MOA=;
        b=O1yd1BL3TqiOSTcRiF9/oX8/JhFJ6AfU740HWyQCp9bg+d8QzvAxh89vs7BiBVwaAf
         yxSe/sS3MtVOlG73dXv4+tMZJlEdzZ6n040eyPkpjZZHjCG+IrHHoxB28ZDXOkbrY4l5
         DhHSVna2yHoklKWoDoXhfN9xtH9LffZTkrK2gSxyofOeAbthc65H7/EA54zQPjRly3ne
         W21bA/iVS27gQI9x5m2KstcTp8X4q4oP80SOhLw8vVT082zKo/HtjwntLOham//wtPQb
         MxnkPJXNM8vAWGeZSNC8K7Kxmxqmpbm+V0erMCTof1KcNSf7rSMcje0nKVZjoVavpkcp
         ZoOw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=WAb+iNvf;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id d66si1305494vkg.3.2021.07.04.16.11.39
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 04 Jul 2021 16:11:39 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 5C2E361936;
	Sun,  4 Jul 2021 23:11:37 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Jack Xu <jack.xu@intel.com>,
	Zhehui Xiang <zhehui.xiang@intel.com>,
	Giovanni Cabiddu <giovanni.cabiddu@intel.com>,
	Herbert Xu <herbert@gondor.apana.org.au>,
	Sasha Levin <sashal@kernel.org>,
	qat-linux@intel.com,
	linux-crypto@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH AUTOSEL 4.14 11/25] crypto: qat - remove unused macro in FW loader
Date: Sun,  4 Jul 2021 19:11:09 -0400
Message-Id: <20210704231123.1491517-11-sashal@kernel.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210704231123.1491517-1-sashal@kernel.org>
References: <20210704231123.1491517-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=WAb+iNvf;       spf=pass
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

From: Jack Xu <jack.xu@intel.com>

[ Upstream commit 9afe77cf25d9670e61b489fd52cc6f75fd7f6803 ]

Remove the unused macro ICP_DH895XCC_PESRAM_BAR_SIZE in the firmware
loader.

This is to fix the following warning when compiling the driver using the
clang compiler with CC=clang W=2:

    drivers/crypto/qat/qat_common/qat_uclo.c:345:9: warning: macro is not used [-Wunused-macros]

Signed-off-by: Jack Xu <jack.xu@intel.com>
Co-developed-by: Zhehui Xiang <zhehui.xiang@intel.com>
Signed-off-by: Zhehui Xiang <zhehui.xiang@intel.com>
Reviewed-by: Giovanni Cabiddu <giovanni.cabiddu@intel.com>
Signed-off-by: Herbert Xu <herbert@gondor.apana.org.au>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/crypto/qat/qat_common/qat_uclo.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/crypto/qat/qat_common/qat_uclo.c b/drivers/crypto/qat/qat_common/qat_uclo.c
index 4f1cd83bf56f..a8e3191e5185 100644
--- a/drivers/crypto/qat/qat_common/qat_uclo.c
+++ b/drivers/crypto/qat/qat_common/qat_uclo.c
@@ -385,7 +385,6 @@ static int qat_uclo_init_umem_seg(struct icp_qat_fw_loader_handle *handle,
 	return 0;
 }
 
-#define ICP_DH895XCC_PESRAM_BAR_SIZE 0x80000
 static int qat_uclo_init_ae_memory(struct icp_qat_fw_loader_handle *handle,
 				   struct icp_qat_uof_initmem *init_mem)
 {
-- 
2.30.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210704231123.1491517-11-sashal%40kernel.org.
