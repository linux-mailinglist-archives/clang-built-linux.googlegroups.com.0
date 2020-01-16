Return-Path: <clang-built-linux+bncBDTZTRGMXIFBBXNRQLYQKGQERZWMZHI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53e.google.com (mail-pg1-x53e.google.com [IPv6:2607:f8b0:4864:20::53e])
	by mail.lfdr.de (Postfix) with ESMTPS id CF63D13E4A4
	for <lists+clang-built-linux@lfdr.de>; Thu, 16 Jan 2020 18:09:50 +0100 (CET)
Received: by mail-pg1-x53e.google.com with SMTP id s23sf12617204pgg.0
        for <lists+clang-built-linux@lfdr.de>; Thu, 16 Jan 2020 09:09:50 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1579194589; cv=pass;
        d=google.com; s=arc-20160816;
        b=YTxbl1H6pwlB4Cy/xGQ6G+W3Q7/wUQSaBUJhVsKF1D+CGuC4pWiKIJ59s4TbPUp/ZR
         0qVCEU5q92lNzIKHQBImMApKto2hh7tD48Bxv1+BozfVYsFDByA8GwXOV00OZvsvd/9w
         LdqtLwv0Kj9MDW7aelWyqgbStb3EvxRlKZod/ClUUaKuzbRJSDtHUVC16J/weTwdw7xs
         o4NzQe4taRIdZW0BECod0BkvgSHOCg6HcaXx+EJh+MgDF8Pg8KI6xXDEoGrsviyw165v
         tsRWLWud9n8hfPOKX/9+S438xRoREEp0kkxo0fzJc/imTBQhtMyyCIrXcR1QsYN7BN/3
         5LNg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=xR+9y9ghYGPB49BNLdfbfeL8ZFN1QR66ELvLDm6MxvU=;
        b=FwUlT9VQffRHga6twCas0dlOPH8L51ZBztUsM7yMiOWZiPFrxJcfBg2S4kxsB+fdl9
         2C2GtL6SalcJa55nSdEJ+pHEqXYuf/R4SBzE3GuPY8RLjr+efmtu3LjXRHYtme+LxLyZ
         0hPsvTvulT/vbBf1vLREbynr14D1/2ZFT/nOuMgyRi9yYiEcndAeFS/xTF9mdTr6JFNY
         bUfC5UEmZ1AfqrRq/Bre4PJwCIncjMe+n+R/1bO36xJowTa04wD1j7BnRNLr7UagfhYX
         sMt5q7AuAqsDO0nIT1Qk9UkDO0QoSjmttcNnCiKmM74A+1OfYkTTsgXMJSeWvEjmjpcA
         1WDA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=quaA4PiI;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=xR+9y9ghYGPB49BNLdfbfeL8ZFN1QR66ELvLDm6MxvU=;
        b=PLNCspZ2UUiV9akaUlk0tOZNa8pes0Ogw3Osk0HMCupPcCL8S9jLI23VrBPfGMV9f6
         iWXIhiYQOYG1TPvLXZpdXBBWS8QFVVKu5bM5bWmOam/XVjgRDpOp2BT0eoeJ8RwNj1aa
         wfombTiVjTg5VTl1ku6SB4B1Ub7AjgiKpFF/eiUIJnGMM0fMCxGd+dU1Xfg7gaKi/sgk
         rAYQnuXInpSkCVqOjy9sSZG28UxKknlpPwEcJmX2BCH54zogyU8qTbut/T4pV2VOxgEp
         nwoAqVI9Wf8JPTJ1zFyPta2vDahS8+KFe+JzeBpZQt85Icua2J4XnJsjg3MfLagXOPhK
         Ns0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=xR+9y9ghYGPB49BNLdfbfeL8ZFN1QR66ELvLDm6MxvU=;
        b=GbV3yqLTqr6DMdlwqT7geqFmXJI0ZTfbLiq3IcTNe3lUcJvTz4nxrQ5ZRv+DxgCmmi
         53ZQC6RCfqvb0N/LFVpc668X7GM8gyxXUO5DvLOVOuFspacpNdQB2EpgXdBSRztSjEKt
         gY7o3dAt2uoPSvVcf3KiRE0Ygahq4LS2qCwy52kFW3D/S1bNR7vNbEd7C9u9eHnqTtfQ
         NvSCRbM0oC264d/WhhBVuZ8dshzyliEYkzYbqVyius54fcgdNKzi5r+3gzUFqqRG0xI+
         tRUXPPlw92r5dpzqMLj7Y1H4OFv3yKY2qemEVd+bOL92sghkBBMtbwuA8z8BnLDYQmps
         f58Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXsLRwV7X24l/Wj5PDJd909yyvyfrBNcebIZQybuA+EJ9NOiMoN
	rDlwtH/oQImzCF+rF9HHNOQ=
X-Google-Smtp-Source: APXvYqwiiMru5XHzlNnZ8JgtjJMQvFo5U7rj2diPwxTw/DcjW5yjS5SSsoT1RFQLoKYag49r73HXuA==
X-Received: by 2002:a17:902:fe17:: with SMTP id g23mr39523570plj.42.1579194589478;
        Thu, 16 Jan 2020 09:09:49 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:8214:: with SMTP id x20ls6174028pln.15.gmail; Thu,
 16 Jan 2020 09:09:49 -0800 (PST)
X-Received: by 2002:a17:902:b195:: with SMTP id s21mr34185414plr.80.1579194589018;
        Thu, 16 Jan 2020 09:09:49 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1579194589; cv=none;
        d=google.com; s=arc-20160816;
        b=F0uj8zkjQEDyHXhnV4GH0lbQ7amidoVXVDGQTQROklUXi471TrWRygTXSxP910qGGi
         3zUYQtArJOD8PngbTlM5APebH3Qw0Y2jiLgpSdkXZwyjHLihyBrgJegR+ipZmaG2wT08
         DIn6RSJfEV+DotHgqHBJZbf3KrQRkEgvbbr6+bnv/RvFePuzWiiqpi13+vJVVLP97DkU
         FZlYD1hH6OMc8630QsGQRpscwPfte6o2JF6ubEdPav3g+FOgzDnQP43EtOV9/Nv68+sI
         i0cTCcm9VvCq2fQ7ZdZcTPE1wkQUVlznvZcHBHNDKE2xntotzP771V9cV5hE6jt3xcMt
         etNQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=yNPhzA6IqvCw0//cAEJlCzdYOS+shbGZAsl2e/NxPAI=;
        b=jNKAY8GTbHMiEFJ2PyPcX0FS3rvHYCtcmVJIaqBzMrpADuqj21N7PP7S563xmiECii
         nYYxxK4DqhMFEWI1U17w1lXBfcZix5CUW+leKm+hEjeA2jCuvNwNsKZ5YY+IPaaxPbIY
         U815zCH+F4Af8HtAza2PFMpi5wsic/0tsgFJt1Jg8YFtP4BzbZwQ75d6eO36GUrgKvoL
         JfpOOOOUUm7+5KerUOYmiXOUx2klvrYwvCt9rGBcuk/QuUdRApLuEnmPYeIbae6zd6PC
         wt2XHKJoBKzlW/NcL8drErbPSznz59AyVtdmqzSZC8Oeb0R8demuxH16wcE/0D/BKObQ
         GEdw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=quaA4PiI;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id 65si1111772pfx.5.2020.01.16.09.09.48
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 16 Jan 2020 09:09:49 -0800 (PST)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 231B8206D9;
	Thu, 16 Jan 2020 17:09:48 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Arnd Bergmann <arnd@arndb.de>,
	Thomas Gleixner <tglx@linutronix.de>,
	Sasha Levin <sashal@kernel.org>,
	clang-built-linux@googlegroups.com
Subject: [PATCH AUTOSEL 4.19 460/671] x86/pgtable/32: Fix LOWMEM_PAGES constant
Date: Thu, 16 Jan 2020 12:01:38 -0500
Message-Id: <20200116170509.12787-197-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200116170509.12787-1-sashal@kernel.org>
References: <20200116170509.12787-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=quaA4PiI;       spf=pass
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

From: Arnd Bergmann <arnd@arndb.de>

[ Upstream commit 26515699863d68058e290e18e83f444925920be5 ]

clang points out that the computation of LOWMEM_PAGES causes a signed
integer overflow on 32-bit x86:

arch/x86/kernel/head32.c:83:20: error: signed shift result (0x100000000) requires 34 bits to represent, but 'int' only has 32 bits [-Werror,-Wshift-overflow]
                (PAGE_TABLE_SIZE(LOWMEM_PAGES) << PAGE_SHIFT);
                                 ^~~~~~~~~~~~
arch/x86/include/asm/pgtable_32.h:109:27: note: expanded from macro 'LOWMEM_PAGES'
 #define LOWMEM_PAGES ((((2<<31) - __PAGE_OFFSET) >> PAGE_SHIFT))
                         ~^ ~~
arch/x86/include/asm/pgtable_32.h:98:34: note: expanded from macro 'PAGE_TABLE_SIZE'
 #define PAGE_TABLE_SIZE(pages) ((pages) / PTRS_PER_PGD)

Use the _ULL() macro to make it a 64-bit constant.

Fixes: 1e620f9b23e5 ("x86/boot/32: Convert the 32-bit pgtable setup code from assembly to C")
Signed-off-by: Arnd Bergmann <arnd@arndb.de>
Signed-off-by: Thomas Gleixner <tglx@linutronix.de>
Link: https://lkml.kernel.org/r/20190710130522.1802800-1-arnd@arndb.de
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 arch/x86/include/asm/pgtable_32.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/x86/include/asm/pgtable_32.h b/arch/x86/include/asm/pgtable_32.h
index b3ec519e3982..71e1df860176 100644
--- a/arch/x86/include/asm/pgtable_32.h
+++ b/arch/x86/include/asm/pgtable_32.h
@@ -106,6 +106,6 @@ do {						\
  * with only a host target support using a 32-bit type for internal
  * representation.
  */
-#define LOWMEM_PAGES ((((2<<31) - __PAGE_OFFSET) >> PAGE_SHIFT))
+#define LOWMEM_PAGES ((((_ULL(2)<<31) - __PAGE_OFFSET) >> PAGE_SHIFT))
 
 #endif /* _ASM_X86_PGTABLE_32_H */
-- 
2.20.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200116170509.12787-197-sashal%40kernel.org.
