Return-Path: <clang-built-linux+bncBDSIRFEA54GRBWWSSWAAMGQESP7VWQQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x23c.google.com (mail-lj1-x23c.google.com [IPv6:2a00:1450:4864:20::23c])
	by mail.lfdr.de (Postfix) with ESMTPS id 149D32F9D41
	for <lists+clang-built-linux@lfdr.de>; Mon, 18 Jan 2021 11:56:27 +0100 (CET)
Received: by mail-lj1-x23c.google.com with SMTP id f23sf4198617ljg.2
        for <lists+clang-built-linux@lfdr.de>; Mon, 18 Jan 2021 02:56:27 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1610967386; cv=pass;
        d=google.com; s=arc-20160816;
        b=v7dzNDdIGAxwu1jMnlQVn7VorpD6dy1bMT4vm5y7CKrWVIa/sZHrvDvhIv3b9001V+
         Cg6l3mgyM2Grmy2ZiNEj9/E5BV7+YWI5MxzcVw3z2zI9VbjPmI+uyZ/Ukl2fFQLb58nz
         Hg4mTow7p8qSJa+765NXCsNooEQefQZSjfP071nbNyzLExX5kr4hGceTVs4XD6xN/uuF
         HTrR8w222xWfCNnPrde9I+7fWI1cpvLmvukskDhyvTSiUdsPwgjNPP32q33bNBXUW/5O
         +7xoUJC4dufBH3rIXh3mwalDc6bsm2MXR4m6PBZyiG35fs7VDkW4cX6fO9O7n8n3N3wz
         HltQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=hufKDX3XrTfeAfczslkPjWySxnbelZYi7t30P9iZ/mY=;
        b=xyu4rCgiSXFtOSQOV1j4F80ssYDb6NAgc8MdE71XSzJEz4BDBQeuhuZkNo/mBWGiQ8
         X2cthHRann9HHxLgxpAX4RlchGrWml3tTwbsPMMSxnActgn1Cg0n3UJKVn1D8ugGH7Xo
         8kw9plXLepqeSkM+uBj7CKKtut7CQLcW40NTtbvfBxuhiOM9Zs04Z5iGmtx6n0j/XuTf
         BESIZkUp+VTZm3sflybnuZsRMFsPBScRMudFoBlUi+ONyBwFvY87v3MarVoAQtnnDPNG
         dHNXTGhuwRH7SXUAMOGYofjM3pyzYe5TuPPBPUe35w4+8D+RsZKxO0fknALtyzO21c0n
         mn+w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of adrian.ratiu@collabora.com designates 2a00:1098:0:82:1000:25:2eeb:e3e3 as permitted sender) smtp.mailfrom=adrian.ratiu@collabora.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=hufKDX3XrTfeAfczslkPjWySxnbelZYi7t30P9iZ/mY=;
        b=R1mLVRGzoyl1dI3tpzTDuN7RE2KaOj/5igvU/Wsld1880Zw6VQS0g1a9CeItcq0O0M
         Fh7lYO/0odpI/l3a4GCfV0FcM1ssXVsTkqm0I308WtwB7Xv8sYIneT+ndC2JRcX2wRQN
         ei+WkYlpmHwah81E10EZk3tBOFL9fgCyDW8hfWS6V5D71YMx3fYDtnkolPvDwrDDr8uT
         yYZRiVSCxN2nDcpCIPEip9KNClgVx+EBeZGDxA1m6uwHg+xCqrbz0p5gL/PaYvDTZGTs
         +KZpUGEgCbRcSj9U5chqd4Vb8Wq8Xsdil4c6u5Dt5VmDX9r8kff37p3YnZisWOK9xFaz
         mAkQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=hufKDX3XrTfeAfczslkPjWySxnbelZYi7t30P9iZ/mY=;
        b=DFJ/2DXoAh0Q16PxQQD/OGkB3pfkFnUD7KVhaLFtEH5XC+ur3NFAWg91vPp32EcAUk
         MokZ+7zQQbZA88JEJpwU/BdmDv3U8OwB+U/6kNBmZcn/D2aJg8j6YVbneoPQwfIjuWwt
         TEJJiwCUa7lDB2bnYZaj05yCvuvJgyDADkd2PaV5+r/p5Xcg71KOuocTA9k6eO0Spbtn
         xuXpNbpPNhoD/29ZiKWwTuZieMzhgw5UAIH14jTwxhFJCDYK4YpASZpB7rEBPRNgaHDi
         BGuD14zutRnVNugEepqLTdfeuJH0YOi6RYTyPt57Z0iWGIspAceV7bMuc4Yy9gowHMdG
         GLTw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533+cu0vUKsVq86397vCDiIe4GpQx4CkaI90NMjMB9sAQ4o7tEP3
	LEaZXPW3XntucOIMVoRVyTE=
X-Google-Smtp-Source: ABdhPJzg544nK54B2hI0PqeufonE/uFcnnreBJ/CtnTn9YFpH98mGUQmHsHw4QomQpjFWW63qTpkOA==
X-Received: by 2002:a2e:7803:: with SMTP id t3mr10403246ljc.213.1610967386607;
        Mon, 18 Jan 2021 02:56:26 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6512:3993:: with SMTP id j19ls2546164lfu.3.gmail; Mon,
 18 Jan 2021 02:56:25 -0800 (PST)
X-Received: by 2002:a19:f014:: with SMTP id p20mr10915925lfc.421.1610967385327;
        Mon, 18 Jan 2021 02:56:25 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1610967385; cv=none;
        d=google.com; s=arc-20160816;
        b=AEdUStufDPkev+UjxKosvCLOMk2n4KG5Swy5AM7degG8nGMEmQdG9ptwynFy7pJgBA
         5BGldZrfSv2MSn0NJVcmUsNcUXcioVEeUwxkR5mL2oNuBOMCMb9u4iykBRNXFdj5J7c6
         +gI9d+OWZKyVSjKp/lr+nu/WFrdUsTa98RTI5XM2d4XxQSnD/JOk7FPeATo+hgjeKvR+
         AkdTlqnDMGox3Yapp6Vv0TejlLSkEhH63FN5CyebslahaqeoIO6Nzjh+Qw8WEp0Nrd9H
         iBVKSLB4GeY2YRVIkdNXdnEr5DPqC37NaoxrAqibkdRc8Vh6MInYPudyGvhGHKa2ccCa
         uoJA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from;
        bh=VMgzS1uU+KlQUrGtbOxLGSxScvivqu+7civ/T5/J/lY=;
        b=RzAiGyaBTMlFJz55PWgJ36uBjpFJiiRVA1wx1lBIUYUASG6FGnxSKFYZQajFMYc+do
         DkfZPoaL3XGcbXkRBwbGk5/IkLK89GZu48uUVBqKBSLdxpvXiVx4H1o5hfISsOoSlUUP
         D0WvR/tU6RHLNnCsLJDSbPJUxz3a/MR2Ukk0IeGtU5X5SNq5bHoht6J3YPEOK/Qxxg/i
         aIXPQyls27FzkZV+yHa6ijfhfCgTnd+AQGQO1iHE3/nDLmmahhDiVXXTCyC6SUaMVCRs
         0OS+J1NwVCkoOup4WKGae03zv7gZAUo1+RpZMIc6Gj+18150IqLs0nYQWBHyn5SH+zE0
         gdXQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of adrian.ratiu@collabora.com designates 2a00:1098:0:82:1000:25:2eeb:e3e3 as permitted sender) smtp.mailfrom=adrian.ratiu@collabora.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=collabora.com
Received: from bhuna.collabora.co.uk (bhuna.collabora.co.uk. [2a00:1098:0:82:1000:25:2eeb:e3e3])
        by gmr-mx.google.com with ESMTPS id d3si894854ljj.4.2021.01.18.02.56.24
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
        Mon, 18 Jan 2021 02:56:24 -0800 (PST)
Received-SPF: pass (google.com: domain of adrian.ratiu@collabora.com designates 2a00:1098:0:82:1000:25:2eeb:e3e3 as permitted sender) client-ip=2a00:1098:0:82:1000:25:2eeb:e3e3;
Received: from [127.0.0.1] (localhost [127.0.0.1])
	(Authenticated sender: aratiu)
	with ESMTPSA id D3DFA1F44C3A
From: Adrian Ratiu <adrian.ratiu@collabora.com>
To: linux-arm-kernel@lists.infradead.org
Cc: Nathan Chancellor <natechancellor@gmail.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Arnd Bergmann <arnd@arndb.de>,
	Russell King <linux@armlinux.org.uk>,
	Ard Biesheuvel <ardb@kernel.org>,
	Arvind Sankar <nivedita@alum.mit.edu>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	kernel@collabora.com,
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Subject: [PATCH v3 RESEND 1/2] arm: lib: xor-neon: remove unnecessary GCC < 4.6 warning
Date: Mon, 18 Jan 2021 12:55:56 +0200
Message-Id: <20210118105557.186614-2-adrian.ratiu@collabora.com>
X-Mailer: git-send-email 2.30.0
In-Reply-To: <20210118105557.186614-1-adrian.ratiu@collabora.com>
References: <20210118105557.186614-1-adrian.ratiu@collabora.com>
MIME-Version: 1.0
X-Original-Sender: adrian.ratiu@collabora.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of adrian.ratiu@collabora.com designates
 2a00:1098:0:82:1000:25:2eeb:e3e3 as permitted sender) smtp.mailfrom=adrian.ratiu@collabora.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=collabora.com
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

Drop warning because kernel now requires GCC >= v4.9 after
commit 6ec4476ac825 ("Raise gcc version requirement to 4.9")
and clarify that -ftree-vectorize now always needs enabling
for GCC by directly testing the presence of CONFIG_CC_IS_GCC.

Another reason to remove the warning is that Clang exposes
itself as GCC < 4.6 so it triggers the warning about GCC
which doesn't make much sense and risks misleading users.

As a side-note remark, -fttree-vectorize is on by default in
Clang, but it currently does not work (see linked issues).

Link: https://github.com/ClangBuiltLinux/linux/issues/496
Link: https://github.com/ClangBuiltLinux/linux/issues/503
Reported-by: Nick Desaulniers <ndesaulniers@google.com>
Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
Signed-off-by: Adrian Ratiu <adrian.ratiu@collabora.com>
---
 arch/arm/lib/xor-neon.c | 9 +--------
 1 file changed, 1 insertion(+), 8 deletions(-)

diff --git a/arch/arm/lib/xor-neon.c b/arch/arm/lib/xor-neon.c
index b99dd8e1c93f..e1e76186ec23 100644
--- a/arch/arm/lib/xor-neon.c
+++ b/arch/arm/lib/xor-neon.c
@@ -19,15 +19,8 @@ MODULE_LICENSE("GPL");
  * -ftree-vectorize) to attempt to exploit implicit parallelism and emit
  * NEON instructions.
  */
-#if __GNUC__ > 4 || (__GNUC__ == 4 && __GNUC_MINOR__ >= 6)
+#ifdef CONFIG_CC_IS_GCC
 #pragma GCC optimize "tree-vectorize"
-#else
-/*
- * While older versions of GCC do not generate incorrect code, they fail to
- * recognize the parallel nature of these functions, and emit plain ARM code,
- * which is known to be slower than the optimized ARM code in asm-arm/xor.h.
- */
-#warning This code requires at least version 4.6 of GCC
 #endif
 
 #pragma GCC diagnostic ignored "-Wunused-variable"
-- 
2.30.0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210118105557.186614-2-adrian.ratiu%40collabora.com.
