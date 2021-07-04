Return-Path: <clang-built-linux+bncBC5JXFXXVEGRB7X6RCDQMGQEJPBWGDY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x1039.google.com (mail-pj1-x1039.google.com [IPv6:2607:f8b0:4864:20::1039])
	by mail.lfdr.de (Postfix) with ESMTPS id 4840D3BB078
	for <lists+clang-built-linux@lfdr.de>; Mon,  5 Jul 2021 01:08:48 +0200 (CEST)
Received: by mail-pj1-x1039.google.com with SMTP id d1-20020a17090ae281b0290170ba1f9948sf12243747pjz.7
        for <lists+clang-built-linux@lfdr.de>; Sun, 04 Jul 2021 16:08:48 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1625440127; cv=pass;
        d=google.com; s=arc-20160816;
        b=p1Ju+d7SMGG4G8YuVAdaL9OzHKw+4tf/zbGHrP0AS5F8sbop4T8/B3BrmaUwSrqKnd
         8WcbzLkoM5abR9pk8hwGwz8K3gnwa4cCq9gFYT0CZP+mv4YBILYN0S2+DmQvqVudqT7S
         QBYwy2fmuG0t+9YvsQqySs7niRuCMWte6ePK80tB1ZE/LojzlB97TC2JZAuL8Icc6548
         7qHfRwgg0KFZk2d64Jqm4rU9cOzBEdWYPUOuXCohSc7k81QXNQbAqmyH2TQ1FVu2x0+2
         Kgg6VqDELWvilw9pYYCV/OtGyXJbX2ZD3v8Qw4NqPYa+ChewyThgEWWH9j8J69NimEGB
         Hqaw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=OjpnAU7AwNzYGNuEdp+Mt0XPLGbk733e5dWcocib69k=;
        b=g1cqMEyRfcNvUURZtg0PHZQ79qT4V0sPh/Hn8pIwlBuYHVc+wxuWYuKxsohzqpfn1W
         SD1MgG/ZF6JTDZ0lceoe5dCxnDh1mBYzGLrByU4xp54mJ4S9Agmj4ixLjG0VCr+u8Fi1
         dOysJprLHFz0hP+yyjkf64exe1loL0dweShb+w/s6uvCBaJw8KPBJlX8SK/mEeObcaDr
         Hm/9cxEgNUaxCAWvjKEynhXgmM2pK9K86ByCmsyz1WgbSwYKs4pa3kdtcb8bM2wFFH8a
         VSNOy+xS0cg2oXznII6DRC4zQ+3UopkbMV78IPQC1L/jcOApFaE0Es5J/1ZqOy015BQa
         Adow==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=l8HMhDrR;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=OjpnAU7AwNzYGNuEdp+Mt0XPLGbk733e5dWcocib69k=;
        b=XJQq3j3PWVsAS8ib0zpJwoisgQBik3F4AtYN31nMCoK/6Ikzh8sHEMs2YX9yN1eKAO
         ktj7xzkoBFjg6cMNI327pOCN1BezvVySQ8AGm6Wb2jnrXaNLURU8fcS9vIuoeDrZPtQu
         jj64AXdJFR5IJg+JwDNaC4cthbkrd1pJXaiBrDzZWypNbNgXUgU62rYANeTUk+Cu2m5J
         A92zFGPVNhBLjQuvJbyNU/wxO+pWUMqnlghf7amKw2q55C4VIzRUD696eycwr+1Eub4P
         d+QYLk3mm59X9YuFgT4yFlJGVtMwnW7EaVU25nAH360VTPLVI9guIRG44FRbaFIv8odY
         VwOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=OjpnAU7AwNzYGNuEdp+Mt0XPLGbk733e5dWcocib69k=;
        b=PetB2Q1jjhZ4wvQvjDCP4ZB9Fk0sH/fZjQcUSkFQj7+oCTHFO5C3ky1i6VIkc+08or
         JFG3jWGRrRn5fSvAfwuhmaD+K4OPPTY8LpIE/VmxXH2Ss5uSG9W2yUzZviQ4sTf5SQzS
         udsJCs3p5zYXGjK8dKF5CeS86pgzaohBOt9JCHRBag1Y/vDvMeajHkeONccI3b2b/TI8
         EUk2Je7tp8IUdl4kG7v9LUf75CxFubkQmfLnvkjed/vhteiW6iM5nlUfSaKwL8Pcd4Ef
         jNQOkRAfV9rm4UBRj2noLhTUlDtkrZLQTi8yaFnqe0JJEkvSCLf8NEzDPw/XV+nCOusn
         fumg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530gYbZiIMvJJirWq44PH5l0lfLdBNwGWSjgc/vZvaCJzeGhATua
	vdYfxgJtn/qlhbSOaCV0U3g=
X-Google-Smtp-Source: ABdhPJxBhQO2v8pFH/mwkrS302e47UiuQgX6q20wG3llvc06TxXGor74dk/mkNlK+n+UdM843kGeEw==
X-Received: by 2002:a65:4389:: with SMTP id m9mr12264007pgp.184.1625440126987;
        Sun, 04 Jul 2021 16:08:46 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aa7:9086:: with SMTP id i6ls7762538pfa.10.gmail; Sun, 04 Jul
 2021 16:08:46 -0700 (PDT)
X-Received: by 2002:a05:6a00:24d6:b029:305:56dd:64f5 with SMTP id d22-20020a056a0024d6b029030556dd64f5mr11896847pfv.22.1625440126429;
        Sun, 04 Jul 2021 16:08:46 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1625440126; cv=none;
        d=google.com; s=arc-20160816;
        b=Olf9hIkUc+ozExTGY8tRGzMEuNw5kwziJ+/XJ0GG/dE9DYEQ99EsQW3VQnWzYVOS1Z
         BmZGhePpDnhSMKF2Fhl0A3PVBYHtgVLJSV76CZUSuwyjiQ0WwkvYRwe46fKQpW6tPi3c
         o1wDijfcr4Fzn6qY5gbZMZyEzQv4Gb6HItnGOC0MCcR8uKgU0Hz7F2mjQLKK+Lya2cYT
         QQ23uwJt1g7MZZcpUXN7hycHY9tILm3csbHLfaQou23rJaTxHs9jD6BF1zsJwfaXp5Za
         71yG3QG8dBQ9D8TNTFzKyNvIsebZFMOAzruoa032fK4044gFhd0MzCt8DIeUaQV8XR9s
         X6Bw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=oijwEGyJKcA9DaY9ae59mP3zvz4kChQRf9cUiC9B3Yw=;
        b=VnD6hV9ZJZeuglrGckA1emt113kAytHHmKJuksAT8izadLrdhFzYdEiyrHB+SDp8ff
         gHoBylEbPC2WI6cKBEU7CFtUlPtZSO6qFH9Pd989N7witkfX539CU6Rqe03iue1d401R
         MAtgtepc8XH/CSwnhrYEI4pAY7OfE6rN0PI+oWkufXW1qD7sxvP1T1TJiAO+uixKXXnr
         eKJWzPppUoM1HEKbmIJogrW05fShDHCIHZqoRJ7WLEg2FohyPjAO3AX7lT0huMia02Tr
         ENBD2v6MKjw7IKmci2H8IDJacKb//tx2yEl1JOJyKHRPTpKIw3+Fa7LlC6bv+FIasFNc
         SLMA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=l8HMhDrR;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id a6si642761pls.4.2021.07.04.16.08.46
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 04 Jul 2021 16:08:46 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 4329D61416;
	Sun,  4 Jul 2021 23:08:45 +0000 (UTC)
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
Subject: [PATCH AUTOSEL 5.10 30/70] crypto: qat - remove unused macro in FW loader
Date: Sun,  4 Jul 2021 19:07:23 -0400
Message-Id: <20210704230804.1490078-30-sashal@kernel.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210704230804.1490078-1-sashal@kernel.org>
References: <20210704230804.1490078-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=l8HMhDrR;       spf=pass
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
index 5d1f28cd6680..6adc91fedb08 100644
--- a/drivers/crypto/qat/qat_common/qat_uclo.c
+++ b/drivers/crypto/qat/qat_common/qat_uclo.c
@@ -342,7 +342,6 @@ static int qat_uclo_init_umem_seg(struct icp_qat_fw_loader_handle *handle,
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210704230804.1490078-30-sashal%40kernel.org.
