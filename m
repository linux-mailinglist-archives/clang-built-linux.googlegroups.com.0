Return-Path: <clang-built-linux+bncBD4PP5X5UEBRBSNXSP6QKGQEBZ6J3ZA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x138.google.com (mail-lf1-x138.google.com [IPv6:2a00:1450:4864:20::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 36C142A8EA8
	for <lists+clang-built-linux@lfdr.de>; Fri,  6 Nov 2020 06:14:50 +0100 (CET)
Received: by mail-lf1-x138.google.com with SMTP id n207sf35260lfa.23
        for <lists+clang-built-linux@lfdr.de>; Thu, 05 Nov 2020 21:14:50 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1604639689; cv=pass;
        d=google.com; s=arc-20160816;
        b=ol0HMUQ8vKzmOVQn91k7QYEfwI517GwIuoXYVU/mo2rYw0tt0o00lYX1f9AFmfRlVl
         m1fgyKGOMfzMrV/8Q6/6krJRpWDAHV2vKi/UgH0+rWLHDvoJ1ECNXPXmhB/yWR6UGv1i
         jvwBGjPMU/bT/aEwpalcP7iVZHnvM7p40f5zpAvbBXgudJSznhKLsYRbuGwDCPWHrSRw
         er7sjHchEGOkPJsWdDPRJYViqRHgeAsf5oiZg3d0HjSZIyJ5pe2hAm/saL48kj8VzG9S
         NYTcUzem5hdjVcY6BIRHDj0FvdsFrbADcn3kvSOgGuqAWuwuEP+hCwT5MMOZ5mg5yJcL
         2qKQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=nTWxR8XjBE1MdzFhO6o8zVsq6AXvUu4XZCC6O32nZGk=;
        b=uwpgp+UmzLqEIGCvZ1jMEG4hti4oDvPXWJZ7FPbgrAlH4KALHgstf+HW7We7eGdA8o
         DwiVzDpRTTT4tsUnrltnZaU97YsRrfZO1tGXaKrgayd5zciLiu9gyf89N52ILM9Y/xkt
         gwpr6xp+iQ17qvO4Pjbr4XHijFae5FpedEHGRzAWMAvO7zSn4h56Yfb+0DhtOglKpaiN
         E+Q6/yjlBWMxjBZw/cqQ/SL9BpVnoCibKAKbw1BhldGSrUVCNpRts7R0hxXQ0h8G2ptc
         HNLV5JY1Xk0sFqAdr0tivHp87fVaxsuxqSna05EOHP1q1lz0Zgacd/ERV36I3tc2clqs
         VkfA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of adrian.ratiu@collabora.com designates 46.235.227.227 as permitted sender) smtp.mailfrom=adrian.ratiu@collabora.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=nTWxR8XjBE1MdzFhO6o8zVsq6AXvUu4XZCC6O32nZGk=;
        b=aRyEUBpgUuOcAGIwzj6jXNCGOB8Pn5POVbALEjPMmovf7NdGaV2eWjoRSV0Rmf8Pdc
         pdngnZozPj0dNUx7+zClHg8RS+Ag41RcwGMoCQ4H6xxb9GFlrOs5q6DophXHIAlNCZWB
         BUL/Xq+GSM0EOgaKUGYPLuMlOnuiu6q0bUQyZyf2tpVdjU4VwwvWAUlahlve8LDNucPp
         CZzA1+lWJzFOQTU9Az8pIxUxVIpkzAF8C0OXBSlTLoMH43mcgjjWISN1bapDafuAPXNN
         tm1/RaxwEbrH2ZUF7IscBXg0UpHReuh+xy7NY4pTK94Wm99nsckLBXEgFEw26d9RdJts
         JVCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=nTWxR8XjBE1MdzFhO6o8zVsq6AXvUu4XZCC6O32nZGk=;
        b=Yrvthk2a4JAdNatYAcnN3uH0Ee02AoVtiDg7cTqD8QVTJubMQ8P2anUxD16DrMalU5
         S+zizMhnUaB8fKjGvtL7ZCKr/lKZVTtoce1rIgTfXkmE32cZyTb5obvSAWNwWFSgyrca
         KLNKYaKr8fkr8K+C/vEMOL2vfqGHMPsLMGcORC+1LhdcuU3+9t1mKwYhsQyrGg3ykeMT
         TkpWc7VW3mHG9ZG3/74F9+2dyCA8rD7dnMFZZQcHGe7OdJDO8QJ+cCy0aa2GReqhRKyc
         lEOGLPapTcg/lRBuNlHXb6/l9VXU91F22aiGO1C8gqXIJ0DsxFMhSBIoSyrAsUzn/HCv
         1SSQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533deJxePBre8qvFs7C/2TsiHO7e2oTSbVXvjsLs/zXet60rbHXa
	AGu2wlywLVG/yUb/2qrD+tQ=
X-Google-Smtp-Source: ABdhPJx2Q5rnMKhYQh+tq8wl3Dg7z2TW9ZV1zaMVlxslM3luPCJiw8p69JfFP8T6ebn9aiWhYsmudg==
X-Received: by 2002:a2e:88d8:: with SMTP id a24mr91925ljk.87.1604639689773;
        Thu, 05 Nov 2020 21:14:49 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:8e89:: with SMTP id z9ls24537ljk.11.gmail; Thu, 05 Nov
 2020 21:14:48 -0800 (PST)
X-Received: by 2002:a2e:a41b:: with SMTP id p27mr117034ljn.30.1604639688757;
        Thu, 05 Nov 2020 21:14:48 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1604639688; cv=none;
        d=google.com; s=arc-20160816;
        b=nn62ytVorruTJNRC+CZ/Znt2RvxKzkormxAIaMEGoz01RyqLo3NIg0ZJQ4DqGMJKQh
         o0b0WdSK4qhTLu27AMH2i9bDnyEE9g8Sfm12mpPIFFJ+SmZj56ItLAGqh2gR+SWhhN/o
         zwccJfg4Ed5k4NEC8zHXU8wN8eRpK9av+68/X089qSDbO3VpuLkXSt8HqsbCX7gPALO8
         aU9SqUNSxxDM0hW2mOE0eMAJJUN7D83R4MMpNjQhv9QVTlNmeSmsQBcqnxhBBMochO/s
         ViYouVDB9yZj5/CWGRnu2n1Ji7HrIDCSCDae5rTmbnqQcr3iRmtfgwJJsV9RMgu+yiDf
         FFJw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from;
        bh=aFAljLEpk5RG1zjp12Ud8gnSGNRzVfseQ47qjxJR7FY=;
        b=jgEBWhq+33rZXPtO/eGZE3SEpCcDHdyVYbwrU2CpgWpCzT5CATOBS7rK6INwWBeDVI
         A40+3xPIYDxkDOKo/nT2Ml8yDaz99BWb9qepig2Cw2ICM7kMx8PPafarLPqkJzo0EOFs
         XpJUYCLgWEZYs5PkuTBYoj0K/M+WR4dCZXVA+hmqSfHQehE6MUZdC24NA6RqrEgV0RdT
         CrrNZTVwPuqP3YlP997xK5t75ljOIbH54jeK1p16Hb2dqdvW0drC7EfOV+cFkPKqtxrW
         QR4tcVywc4hREApemqZYD2C3RyctAjbEj3a6crlb0nSQumhodbgZt6FPzTxSXwDH1Zl8
         UfPQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of adrian.ratiu@collabora.com designates 46.235.227.227 as permitted sender) smtp.mailfrom=adrian.ratiu@collabora.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=collabora.com
Received: from bhuna.collabora.co.uk (bhuna.collabora.co.uk. [46.235.227.227])
        by gmr-mx.google.com with ESMTPS id p1si6651ljc.0.2020.11.05.21.14.48
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
        Thu, 05 Nov 2020 21:14:48 -0800 (PST)
Received-SPF: pass (google.com: domain of adrian.ratiu@collabora.com designates 46.235.227.227 as permitted sender) client-ip=46.235.227.227;
Received: from [127.0.0.1] (localhost [127.0.0.1])
	(Authenticated sender: aratiu)
	with ESMTPSA id 4535D1F46669
From: Adrian Ratiu <adrian.ratiu@collabora.com>
To: linux-arm-kernel@lists.infradead.org
Cc: Nathan Chancellor <natechancellor@gmail.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Arnd Bergmann <arnd@arndb.de>,
	clang-built-linux@googlegroups.com,
	Russell King <linux@armlinux.org.uk>,
	linux-kernel@vger.kernel.org,
	kernel@collabora.com
Subject: [PATCH 1/2] arm: lib: xor-neon: remove unnecessary GCC < 4.6 warning
Date: Fri,  6 Nov 2020 07:14:35 +0200
Message-Id: <20201106051436.2384842-2-adrian.ratiu@collabora.com>
X-Mailer: git-send-email 2.29.0
In-Reply-To: <20201106051436.2384842-1-adrian.ratiu@collabora.com>
References: <20201106051436.2384842-1-adrian.ratiu@collabora.com>
MIME-Version: 1.0
X-Original-Sender: adrian.ratiu@collabora.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of adrian.ratiu@collabora.com designates 46.235.227.227
 as permitted sender) smtp.mailfrom=adrian.ratiu@collabora.com;
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
commit 6ec4476ac825 ("Raise gcc version requirement to 4.9").

Reported-by: Nick Desaulniers <ndesaulniers@google.com>
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
2.29.0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201106051436.2384842-2-adrian.ratiu%40collabora.com.
