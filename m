Return-Path: <clang-built-linux+bncBAABBL6OUX7AKGQEUK6PJIY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd39.google.com (mail-io1-xd39.google.com [IPv6:2607:f8b0:4864:20::d39])
	by mail.lfdr.de (Postfix) with ESMTPS id 9748C2CE1A6
	for <lists+clang-built-linux@lfdr.de>; Thu,  3 Dec 2020 23:31:12 +0100 (CET)
Received: by mail-io1-xd39.google.com with SMTP id s11sf2981559iod.14
        for <lists+clang-built-linux@lfdr.de>; Thu, 03 Dec 2020 14:31:12 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1607034671; cv=pass;
        d=google.com; s=arc-20160816;
        b=NG72FGnZIehgLNo3On0OkschSG0xgrbp67UOkPn/2G9iDptBe8M9vbsYevfGKmDw71
         /4pQ+cbdvpnphg3yg4XYkL6cJzlOq/VUUIpUnzi6duhJlYNUJVAv6MUMFs/b1T9TEq+j
         E7nJaMi2iinn+0woYxWeD55WHrtYHr5iA1xgIzfT56nfx7MC1WVuoUAFQGopB9AzU4Sk
         JI13Bnwuf++SoUukSW/WyOsJrVvt5sniQcRCUUV6VWQ71L+UKf4WLY0Ucs+jTxETzaTQ
         eCqb0RRZsRS4esjwcOiMd3zC4c3fyXhSiUOkAWT7kG3tcPiR5WjSG0CcQKDB2m26DLqJ
         hZnQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=JEwS/ydezNNNP8L1G1BdO9ibO5mIv7/QXK7u6lRNEUE=;
        b=CH4o4O/tJkl6lbRDugXanBbaJSUqfEmkO+JJ+jGZHg2t/SH0U6mAcASbn6ITQ0Y/hp
         Ae7S3KuZ4vtGDjXPksLpNHFWoOlCw4E6E7FHx8817fXukxRPe5af2+haeuDGjzwW7NeM
         xSdWT/etjKPPrLAaprdoFs1/Y1CNRs/G7HDkLBSNsaNqj3in00jaZPuZjfdmAYxKKesY
         xcEiZZMifkEhaFlddyKDBVJv31EffpLso8NpjKz2kYfd0fhM31DKzVVTRRTYN7zJPDC3
         JCkXuDJanodGCTPsDBjGJOyFSsbJIUWpsYZ8mRFv+a/kKcGi4I+rd54/p7ZoHL7E3SYc
         Q2Qw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=arnd@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=JEwS/ydezNNNP8L1G1BdO9ibO5mIv7/QXK7u6lRNEUE=;
        b=Tn74An+nSECQPObAaymGrxzY6AhVqA9yFSK2DiOsNQ58t/YjK1vN4z4Vm+Z0CPYCIa
         ytjaBlRJdAwMAmspNOqKPd79GkkF47lYYeBWeLp76U0DDsjtvLeyOVTzlqGY1ugULnxh
         qM7JJRhSxytz2j9U5mtfDQDN5XOdRQmc3T5J2jDOnzDP/FFWTZrLpfUeQmCoXJmB+68I
         Kvv9z5TC380kUqvuvm5J5ldbnBMYGoaYkB68tA3FGjX9N73y6ws6FMoaWR+I2LvQc2TF
         nWxvvKSWT22x99YC7Njfntj6FxQ+85DXCrH6lZbXtLhyGFKM+VemY24JvCSlojq/SHRB
         AMHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=JEwS/ydezNNNP8L1G1BdO9ibO5mIv7/QXK7u6lRNEUE=;
        b=f7yXay5nsexoa7r7o+Q/ZSdwYGLysHq+VJA9vLd00+7CoA0DCNUglHu/exPReagAxW
         E4xgFn0jURKC9uUpqIN2Y0kxkV+mElCqZEvSsab3wMsaMJEZrWxoYei8TdFFtseBazEQ
         hJ7Vp4N+j3j1jtEylrCGrX4qGvnqTREUR7MGL5ScHn0iPIEVtoVTZRO0Q3SK/rU+p6vJ
         ui0dyc/SU8lip0Nj1DTj1Q9bT534GjoZzHFhPi14vm6Bo1A+6NpiNpR2R7t6QPq9OjBT
         EtSz2cIBU9b8gqbifbRXrIQRKf/HfArNpYcV0h2jvleLrISgHfUAcZal2g88DNdHLr4v
         kvHw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM53356L4LtEs5NNfhii/wupG4KkwH32d+5WzdgPRMYioThd29s8pS
	yXRY+FIDUS/hgNbgGhxNS2U=
X-Google-Smtp-Source: ABdhPJzKYvJwegGKQtF9aBaQDOARoVjV7ezQpAlpqRUBDQP3h5F/6vIJXED86FG4zwzTnvT5X4BGTw==
X-Received: by 2002:a05:6e02:1114:: with SMTP id u20mr1845113ilk.226.1607034671381;
        Thu, 03 Dec 2020 14:31:11 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a6b:7404:: with SMTP id s4ls1236196iog.4.gmail; Thu, 03 Dec
 2020 14:31:11 -0800 (PST)
X-Received: by 2002:a05:6602:314c:: with SMTP id m12mr1906184ioy.100.1607034671030;
        Thu, 03 Dec 2020 14:31:11 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1607034671; cv=none;
        d=google.com; s=arc-20160816;
        b=dd8e8J5z2Wk+MYnGnjs1xQHHXjEHwf7w5wQfrJr9i0T949xh0kXhvZoxIbUMR8IwJN
         s7ZY+18b+N9FVO63qxm49RtDptXFq2Q1Rj0mWnBxIak5QIju9EEBNMrrfvdbX/cNLAdC
         Y8ts0FTtJmHMHDuYzEpjGq8s0FHcZX7VnWpUsbyYj67U7tR4ogRBOXNrQ0mL7a+Jiir9
         MnsUCqreEGVSyoQBezYnsdOHN0MgX5EHlCHkN0KORBVMGc5jyrYRs2xckOKXLUS5bowX
         QdJU/r9FUkO6mAy0tY1ShJrN7htlnNEZKeGT2Qy4vQy/tKK3T55gPINiMxPPXDsTrwwN
         QmPA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from;
        bh=ORNFvTGg9HuE94eArJFvOC7OqeHCrGdbbMpKwRrfdFI=;
        b=0qg6CZbxckpRIlK3zjcxFqi9IFnR+78hfuFAd5iRvawMsgsn7k+Gl3Jk3BVyW5qniK
         k3H04Q6Ymqw4dia7MeTYo4+gdZdHtt46H5ikDEJ5HljHb7pVmo4zP7oojfX2ig3fzJkz
         EDb19QIsdxo7i6gsD5TrStRp1PBl2ERREsrp8tNZWH+blP8xDqJZrWBU+K//dobRlnnM
         4Utzu83Exi23kMz9AAvu23LxCr3lqPLc+mpX2dLRMS0HHkZoViVvLftO2RmIXkjHy12N
         6HTFblZ5XKIszy3Bq5Nrj5zgELWRTzlS5xh89/P1Jq1++wUPU+h1NeI7zMewB6uSCk0A
         AcdQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=arnd@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id b14si58013ios.2.2020.12.03.14.31.10
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 03 Dec 2020 14:31:11 -0800 (PST)
Received-SPF: pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
From: Arnd Bergmann <arnd@kernel.org>
To: Vadim Pasternak <vadimp@nvidia.com>,
	Hans de Goede <hdegoede@redhat.com>,
	Mark Gross <mgross@linux.intel.com>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Nick Desaulniers <ndesaulniers@google.com>
Cc: Arnd Bergmann <arnd@arndb.de>,
	Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
	Michael Shych <michaelsh@mellanox.com>,
	platform-driver-x86@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH] platform/x86: mlx-platform: remove an unused variable
Date: Thu,  3 Dec 2020 23:30:56 +0100
Message-Id: <20201203223105.1195709-1-arnd@kernel.org>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
X-Original-Sender: arnd@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted
 sender) smtp.mailfrom=arnd@kernel.org;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=kernel.org
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

From: Arnd Bergmann <arnd@arndb.de>

The only reference to the mlxplat_mlxcpld_psu[] array got removed,
so there is now a warning from clang:

drivers/platform/x86/mlx-platform.c:322:30: error: variable 'mlxplat_mlxcpld_psu' is not needed and will not be emitted [-Werror,-Wunneeded-internal-declaration]
static struct i2c_board_info mlxplat_mlxcpld_psu[] = {

Remove the array as well and adapt the ARRAY_SIZE() call
accordingly.

Fixes: 912b341585e3 ("platform/x86: mlx-platform: Remove PSU EEPROM from MSN274x platform configuration")
Signed-off-by: Arnd Bergmann <arnd@arndb.de>
---
 drivers/platform/x86/mlx-platform.c | 13 ++-----------
 1 file changed, 2 insertions(+), 11 deletions(-)

diff --git a/drivers/platform/x86/mlx-platform.c b/drivers/platform/x86/mlx-platform.c
index 598f44558764..6a634b72bfc2 100644
--- a/drivers/platform/x86/mlx-platform.c
+++ b/drivers/platform/x86/mlx-platform.c
@@ -319,15 +319,6 @@ static struct i2c_mux_reg_platform_data mlxplat_extended_mux_data[] = {
 };
 
 /* Platform hotplug devices */
-static struct i2c_board_info mlxplat_mlxcpld_psu[] = {
-	{
-		I2C_BOARD_INFO("24c02", 0x51),
-	},
-	{
-		I2C_BOARD_INFO("24c02", 0x50),
-	},
-};
-
 static struct i2c_board_info mlxplat_mlxcpld_pwr[] = {
 	{
 		I2C_BOARD_INFO("dps460", 0x59),
@@ -456,7 +447,7 @@ static struct mlxreg_core_item mlxplat_mlxcpld_default_items[] = {
 		.aggr_mask = MLXPLAT_CPLD_AGGR_PSU_MASK_DEF,
 		.reg = MLXPLAT_CPLD_LPC_REG_PSU_OFFSET,
 		.mask = MLXPLAT_CPLD_PSU_MASK,
-		.count = ARRAY_SIZE(mlxplat_mlxcpld_psu),
+		.count = ARRAY_SIZE(mlxplat_mlxcpld_default_psu_items_data),
 		.inversed = 1,
 		.health = false,
 	},
@@ -495,7 +486,7 @@ static struct mlxreg_core_item mlxplat_mlxcpld_comex_items[] = {
 		.aggr_mask = MLXPLAT_CPLD_AGGR_MASK_CARRIER,
 		.reg = MLXPLAT_CPLD_LPC_REG_PSU_OFFSET,
 		.mask = MLXPLAT_CPLD_PSU_MASK,
-		.count = ARRAY_SIZE(mlxplat_mlxcpld_psu),
+		.count = ARRAY_SIZE(mlxplat_mlxcpld_default_psu_items_data),
 		.inversed = 1,
 		.health = false,
 	},
-- 
2.27.0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201203223105.1195709-1-arnd%40kernel.org.
