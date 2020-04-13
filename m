Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBAPR2L2AKGQE4OBPBYI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33a.google.com (mail-ot1-x33a.google.com [IPv6:2607:f8b0:4864:20::33a])
	by mail.lfdr.de (Postfix) with ESMTPS id 396DC1A6C54
	for <lists+clang-built-linux@lfdr.de>; Mon, 13 Apr 2020 21:07:46 +0200 (CEST)
Received: by mail-ot1-x33a.google.com with SMTP id 61sf8640502otw.19
        for <lists+clang-built-linux@lfdr.de>; Mon, 13 Apr 2020 12:07:46 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1586804865; cv=pass;
        d=google.com; s=arc-20160816;
        b=Fm+MOtoYUuCuvG3caY5rnVKfzLO+kJ3Qx2wNq4VDkZoaHj8UzsTyL4dWfCY6seBwBG
         MbJZUn1aMWmu4AaTgNUo28YeBV2oS9UmNN4i+BPSAizav0PwdGSA0HoNKa/dWA6d2DkN
         dTDmm8FKSn3VRenXfgIFv+YBAd769z3o6r3Z1+yAEOkiXOAeyp6jJf7almMQFMh2JRa4
         TsWAUVs+AlM9MnjN+f14HUj1NAsZB59BAUg6yymOwVCV1lklF7hnW0uyI0ZycfyE0E4H
         FN2WQuepuTp9++60Y5OoT8tKOqZq8GSJ99rGJYWV56AK+UylFzpttfF8hjUr4lUh68sq
         OxMA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature:dkim-signature;
        bh=8Ytkfrkm/JHcPqKG04RerPrEbGlV4mIKa4McfMOXq70=;
        b=OUHqPzB/r03ioy8eNiaxLryeldt7W5NTV+l3rGtc1nwNzymPafJKIz0lwcYyEZiMNe
         ytJC1AjxPx8X2In7IfOCeZqbj0pC+RdtYqhAq89qZyct3hcEunxUhBRgaDJqaqRvnUrz
         aZbGf+Rd14/KniCOQvnTzlJTTexVJq0i3iRfMbCHqJt0Fgo4Hanu192zGELGfxBkGVQZ
         71H8EjA8KH5BdHxBQ3Ug981itLESYQxkn+c6RM8le46YVWbplDp48IUKHFShIIraqPIr
         fznjgzICAmDhzeJceQ+ehZtjEDWl73w8gWCLBZqZGccRJhlkYyqMgXWbClha+N2vydSB
         6qTQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=nN2STru+;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::344 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=8Ytkfrkm/JHcPqKG04RerPrEbGlV4mIKa4McfMOXq70=;
        b=ExBAsvMOL8Slknn5D6otRVSXVh34gbYoATKF2EytXmJZUuLq6kA2IOp/8UDgtfJqsI
         KI/Rrfpat8Z4C/qR6a613DZkyivpHuNGYHcMkBPUmEFgHauR8wqLuk9WPyxYEkPKqx8y
         wCdpnkcrwc2wY+vmHxzX2ddnW4DmaSGwVbY0B+4FJOodHLgSMLMAX7OdNNhRKBlXRDjB
         ThflS9suaDaWJWW+d5+4k8tVE2KUUM8/i9GV4/wsO1MPJIqgOknhL2YGh1IrqVp2+gKV
         OgPOCpggODVVAuViCegtDd3MFjo2KlkwfjZyjBW0xWQDVH7R4SA/Vnyb7pvW2HAmSkWx
         xc5w==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=8Ytkfrkm/JHcPqKG04RerPrEbGlV4mIKa4McfMOXq70=;
        b=VKQCZnFI1xW12bfs983nQ+icGTCvP9FF2Nnt9jfufU1GBDs6sZ0oL+mDVtMOTjblSl
         jBaaEaUKPEyShEQeuaI9PGdSiWORMYY/FQxRjUMNVqyuDgabbkHwtut9WMibhnqo4eSb
         HxQRUar5fhCeNKxOn11Frv5BqXK5uOKVXb8qr99dquIwjhmUnoB9tcCmWnEJKngC3Pzv
         0i1d39vsLVIwr+iQLiXbkjVTKzXh6NTIQarJOpZZRv+OFkjXW/MjgX3tG57rIP11X4hJ
         7TSkCd8h79XJ/NgxENIwr5axhb+S1DxWIRRbENgxyDRX0mlcU8yj50OuWZ7uQCJvfVc+
         jmNg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=8Ytkfrkm/JHcPqKG04RerPrEbGlV4mIKa4McfMOXq70=;
        b=DAXZgPtMs6cFDdy2S0FgVmJiP8KzCq7qXJQKD20vYkrtuD0bsRnpKkjbksJeRZbDdt
         Iq20AFpREGbmqrmmublN/1uPtz4PI5tLOOe71f81BVuJ+089HJI8Oh8O1EIo2xuI+NJO
         CZEaKmVv2PGkC7QeQi2Lgv8VlV+mXhnDrDWP7q9F/mw70kwvtaGZb349d0gGnOEoioOR
         SWVN2EoFLE3s6Z8Gdsc6po4P1k+qxG200OF74fNH62dqU1nn/IsMmRv60++lBIUBaxES
         0GgKrpYbQvx0A5cZGj0k/mC/PC0Rd43OZuDhxN1esNVhNBRASB1caU8v7xWcAtv7KJhk
         1rew==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0PuZvTWPe3XgkFAwai9GQk85+Hps74NqN+HFvMgKY7sF5T6CluOec
	IQ3lcveapGNJvVW9jwohKwM=
X-Google-Smtp-Source: APiQypJmTnA9VsZ2cpmUPggc0D9okA88jSZgdZPMpRrginV08sdmMelyMITqUqL8cyu7DRBFMRCjBA==
X-Received: by 2002:aca:b8c5:: with SMTP id i188mr12069677oif.2.1586804865205;
        Mon, 13 Apr 2020 12:07:45 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a4a:3745:: with SMTP id r66ls45506oor.10.gmail; Mon, 13 Apr
 2020 12:07:44 -0700 (PDT)
X-Received: by 2002:a4a:4f43:: with SMTP id c64mr4326979oob.6.1586804864833;
        Mon, 13 Apr 2020 12:07:44 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1586804864; cv=none;
        d=google.com; s=arc-20160816;
        b=V89vCfIEPzD+6OCz/CBKKK7Y7GSMy70iYEO4IAoMeIOWfBFRzwYp0U76HZ1glWsEc/
         4z4uJiIDd7XX1ZWOBj3KLclOQtnxXNyuB4YShz4km79/O8YkCPFbSLqNP/o7de9aK1xz
         tu1htv30t0vDoqZeOtaocjop0RohWJfEZJZfZTTOn3H6M6l6BFqMlmYsAHOxlvtmxemn
         a1vwZl44SsvzVjYzFdmukusx3nU+AdKfNeeQybn/F0ElytLymzh9wYx5jEsinp2AcXUu
         e9EqO8TWQtgMvC8r9TSYXxO18CClmlzJ41Uqd6MX2EICgr+/xr4RJyaTD2ACVcfpB7hI
         uDLQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=1SmeqPeiRq4ELCasPb+U8ymC5PsnIVQabtpniLNnwes=;
        b=jDdiCA0uEmYxo5roXmyKkK/xzvQVAzno/YRDUeEDm5fJTYRJlBFpmx5Txocnkzc49r
         tPBI5CxA2yEK80BJaC6bbUQdImrZF58J2fW1y0AzHPtp4W18qoyZfQkFVuBldHxoEiLk
         RP6pbWwdqeRdl4AJAdB6JROJzy2ed++xOfzQdQMRvgIIflbCoBHDYIhSthTLTq3CXN+7
         Ll5aClAoBCecwoRo+mcdwd2oW9xiQCbCcsAbNjQWp3gKXxCLa6QCfLFr06j+PV9LJU8e
         JvO05sKg531awypk8/BIj2ribgJ9+SHVVe2XqW0H1DMK+7Re0z1uuTlNst9Z4KV8xXT5
         JFnw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=nN2STru+;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::344 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-ot1-x344.google.com (mail-ot1-x344.google.com. [2607:f8b0:4864:20::344])
        by gmr-mx.google.com with ESMTPS id z14si441999oid.1.2020.04.13.12.07.44
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 13 Apr 2020 12:07:44 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::344 as permitted sender) client-ip=2607:f8b0:4864:20::344;
Received: by mail-ot1-x344.google.com with SMTP id x11so10212933otp.6
        for <clang-built-linux@googlegroups.com>; Mon, 13 Apr 2020 12:07:44 -0700 (PDT)
X-Received: by 2002:a9d:4808:: with SMTP id c8mr15527587otf.313.1586804864550;
        Mon, 13 Apr 2020 12:07:44 -0700 (PDT)
Received: from localhost.localdomain ([2604:1380:4111:8b00::3])
        by smtp.gmail.com with ESMTPSA id j17sm4920241otp.58.2020.04.13.12.07.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 13 Apr 2020 12:07:44 -0700 (PDT)
From: Nathan Chancellor <natechancellor@gmail.com>
To: Michael Ellerman <mpe@ellerman.id.au>
Cc: Benjamin Herrenschmidt <benh@kernel.crashing.org>,
	Paul Mackerras <paulus@samba.org>,
	linuxppc-dev@lists.ozlabs.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Nathan Chancellor <natechancellor@gmail.com>,
	kbuild test robot <lkp@intel.com>
Subject: [PATCH] powerpc/wii: Fix declaration made after definition
Date: Mon, 13 Apr 2020 12:06:45 -0700
Message-Id: <20200413190644.16757-1-natechancellor@gmail.com>
X-Mailer: git-send-email 2.26.0
MIME-Version: 1.0
X-Patchwork-Bot: notify
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=nN2STru+;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::344 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

A 0day randconfig uncovered an error with clang, trimmed for brevity:

arch/powerpc/platforms/embedded6xx/wii.c:195:7: error: attribute
declaration must precede definition [-Werror,-Wignored-attributes]
        if (!machine_is(wii))
             ^

The macro machine_is declares mach_##name but define_machine actually
defines mach_##name, hence the warning.

To fix this, move define_machine after the is_machine usage.

Fixes: 5a7ee3198dfa ("powerpc: wii: platform support")
Reported-by: kbuild test robot <lkp@intel.com>
Link: https://github.com/ClangBuiltLinux/linux/issues/989
Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
---
 arch/powerpc/platforms/embedded6xx/wii.c | 25 ++++++++++++------------
 1 file changed, 12 insertions(+), 13 deletions(-)

diff --git a/arch/powerpc/platforms/embedded6xx/wii.c b/arch/powerpc/platforms/embedded6xx/wii.c
index 67e48b0a164e..a802ef957d63 100644
--- a/arch/powerpc/platforms/embedded6xx/wii.c
+++ b/arch/powerpc/platforms/embedded6xx/wii.c
@@ -172,19 +172,6 @@ static void wii_shutdown(void)
 	flipper_quiesce();
 }
 
-define_machine(wii) {
-	.name			= "wii",
-	.probe			= wii_probe,
-	.setup_arch		= wii_setup_arch,
-	.restart		= wii_restart,
-	.halt			= wii_halt,
-	.init_IRQ		= wii_pic_probe,
-	.get_irq		= flipper_pic_get_irq,
-	.calibrate_decr		= generic_calibrate_decr,
-	.progress		= udbg_progress,
-	.machine_shutdown	= wii_shutdown,
-};
-
 static const struct of_device_id wii_of_bus[] = {
 	{ .compatible = "nintendo,hollywood", },
 	{ },
@@ -200,3 +187,15 @@ static int __init wii_device_probe(void)
 }
 device_initcall(wii_device_probe);
 
+define_machine(wii) {
+	.name			= "wii",
+	.probe			= wii_probe,
+	.setup_arch		= wii_setup_arch,
+	.restart		= wii_restart,
+	.halt			= wii_halt,
+	.init_IRQ		= wii_pic_probe,
+	.get_irq		= flipper_pic_get_irq,
+	.calibrate_decr		= generic_calibrate_decr,
+	.progress		= udbg_progress,
+	.machine_shutdown	= wii_shutdown,
+};

base-commit: 8f3d9f354286745c751374f5f1fcafee6b3f3136
-- 
2.26.0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200413190644.16757-1-natechancellor%40gmail.com.
