Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBG7HQGEAMGQE4KJGAHY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x1037.google.com (mail-pj1-x1037.google.com [IPv6:2607:f8b0:4864:20::1037])
	by mail.lfdr.de (Postfix) with ESMTPS id 287E83D7FA4
	for <lists+clang-built-linux@lfdr.de>; Tue, 27 Jul 2021 22:59:09 +0200 (CEST)
Received: by mail-pj1-x1037.google.com with SMTP id r3-20020a17090a2e83b0290176dfc71333sf385176pjd.5
        for <lists+clang-built-linux@lfdr.de>; Tue, 27 Jul 2021 13:59:09 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1627419548; cv=pass;
        d=google.com; s=arc-20160816;
        b=AptuQBcHeekDVAA5FBc0h1VUHWxflg5EEnh3mrmUJUANmOFXKdpEFW3YxoEVGnKY9Q
         jSqPEpr5Kblgf0nUZD+B4vi3DimPaaLkqbI4kG5szRstoDhKikTqXuOacTzd4biu+CGD
         8YZtOHUdutevoXc+5cU8jpTEda+2/hUVgX9WqU4W4Xpfo8cc2fRueEZiDKugZZ524eez
         obFA6eyJ6SYCgJ3ynZ2kWFlpo50OcY7L+ZDFcbitWNIi1lE2lJPVHMJhvQWIRy89FQvb
         hMAh/pPK0g6/hGDxVfo0IwbVx2NpW3dHEakECCqcKgQlsrbQ0S/HV/SGTkfhi6S23rs6
         mlqg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=+UCrxUmWwpk1QkzjJEqE3MX3daTKMzt9+56V+6ccXD8=;
        b=j1nePstQiKanpfNS+Zyv9nCxZU0FLgFIznEW0100PLSjxqCRuxW5H+51fHCMVfsv2L
         RgqaH+wvEKPTvlgkbr60nikxDwc9uWgVz88aXnTyk0HHRMxLv5tvDmwIyyNACSYvThSa
         C6AO2Liuv0pvViTCFhNcPKNNG1TSvVaWHFKk1bWp+OlUkLKvHN6HKhRTn67AIpukS1rm
         y9+LP/slDO4tXs4ZCVk8ZGmcDm1UGjcgDPbnjE875wKOWGjpV1FHz07Npg6S0btBSMec
         TizOCrX+h3k0eZFWcaI1GfTcx+vw3DPJAsP9EWQIf/5AA4OJpxuEMlfvIn3ivH5n2tHC
         s8sA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=iEi8m5Vv;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::102b as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=+UCrxUmWwpk1QkzjJEqE3MX3daTKMzt9+56V+6ccXD8=;
        b=IMS56LPWH88882TKquIJ5aiG0ypUfw12VBgbiGcEuX8o/N49xycuPJ6YHRm2UVR0SL
         sePWsNJF4CY0F2QZ7wV4S+FBgUXcyRh5s6jkkXaAcaSCoG6g8OdY4BGpOghUZgaAch3X
         yT7kqEmhYCk9GCFmiaWFO3z4OaNDFiFzw6g70FiPNq1TUG7K9QIvUYAS/yJwKKmLrKjT
         u3xKvU6qhWlf0grT7bB40zQ9ar27xt2Sixx7jOpWOGXhgEqfIsomR73b65M9dP9TIvvj
         dQo8Dpmdz3yLvkHyVEF50BffH+KLZ/xxBrWRCruqpae2yEy8vYoeW0gIUGTFxvXGZV6u
         jh9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=+UCrxUmWwpk1QkzjJEqE3MX3daTKMzt9+56V+6ccXD8=;
        b=Dw1DPpXCwQ3CT6N5sSjcPzCu6GpLFyRhvFuDm3ghMwrkshj6DaPr+pQ6GaSDP0WMp6
         Vdl+OZV4FcW249hG4iOS7BU1NBpYelbT/5ivWu8nGBvv02p6tJ8AnJPcgEsBdjkaNIxC
         z90dNeSA7JwpqRsnkzkGRChIc/Bg+3qaf81vm6Qvj/HE0+kholV8RPen3UnpblzbNKZ1
         DvGpYFHMvjP5sKJnNWd7WwwO0aytA3Z6ww5YGEtrU7/9mIQQfnUrcNKAYGk7MgZPQGoR
         3Ggs4GKristCySCLwwP9xdIKbbtLmc7Y4U/bFZJB83cSC6D8XI/6Bc+hq7AWdIfIaJ7s
         6iaw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531dDnza3LaZW6wjwSmM+khndOwlVJLVmkLPqXrt/h4uSF5XXEcR
	90Id276UcG/NIiee+dbFGs4=
X-Google-Smtp-Source: ABdhPJyBDgqoL3+K1ePpeLxK9h+wEkPnAW+Ax6xgEdr51kdmxDP7ywObO2bdl/AS50pdT53bADOr3w==
X-Received: by 2002:a17:90a:f86:: with SMTP id 6mr6177076pjz.68.1627419547807;
        Tue, 27 Jul 2021 13:59:07 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:8f96:: with SMTP id z22ls6028171plo.1.gmail; Tue, 27
 Jul 2021 13:59:07 -0700 (PDT)
X-Received: by 2002:a17:90b:17d2:: with SMTP id me18mr6048444pjb.9.1627419547192;
        Tue, 27 Jul 2021 13:59:07 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1627419547; cv=none;
        d=google.com; s=arc-20160816;
        b=CC2osrN7uwy0/p4qs2i99vHVy5b4udgVXM2U72BlMsLs8bcNaVF9X2BWojg7hiraVN
         DijskfHkAfkUA/4C7z66/VO+H53iRRK5tSs65caoLZKdtD8wV9FemUhbj2ixWzBTG6CS
         3zsDWT6qUd+2bkYjh9WUjTVz8IMhLHuryLJfKys3t4Y/QlhDDN9wYfcOUaANLrqLUZfu
         9z4WOQWX54NpOfgUL7wCMuLntgrTiKgEDWEHKqOR6n5GLn6FU3Pd8e427IzTXSTxWPx6
         XbMQhRdyPQmtEtgMSrXuDzYexOvbt7j8T1UV5U4A/jKF+rpx+JvXQJZG4OuYqkp4x6BB
         wsGg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=2339k4b0c5OWODNkIvToUoNb0tla173APtop2g87yK0=;
        b=hrSDV8JHrY7+qBinVcCom3tkLTDgv3ay7Df5+JvmGZN7N7xxU51WB55lvrZtlBFdxm
         lju6nqvPWe0ki1A1KJMpEtLffxpTK9nlPASgZ81suOi5YdRkX3XhaZWKIh7HaU0pjy/0
         OOFrUTiFbwhMTOGuCs9uT+PfYutaNA2aIgpEGaeLiygBQJqd/J/L0Z5yuz5n8mk9DCnt
         +9xlzHzHVblChPW7OO1rtSdaFVKxqn/PbGwtCEZYJck0z2T24dyjw1V+73U53H3RzYWV
         Bh7qFu3QvlkIeXepBnFRLanvF9AqaBCxh1kKTfNxlDfFHy/lSlPxgrsUuRz3NgB/m71y
         YFrw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=iEi8m5Vv;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::102b as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pj1-x102b.google.com (mail-pj1-x102b.google.com. [2607:f8b0:4864:20::102b])
        by gmr-mx.google.com with ESMTPS id gg14si56117pjb.1.2021.07.27.13.59.07
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 27 Jul 2021 13:59:07 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::102b as permitted sender) client-ip=2607:f8b0:4864:20::102b;
Received: by mail-pj1-x102b.google.com with SMTP id b6so1772375pji.4
        for <clang-built-linux@googlegroups.com>; Tue, 27 Jul 2021 13:59:07 -0700 (PDT)
X-Received: by 2002:a63:5610:: with SMTP id k16mr25193869pgb.439.1627419546981;
        Tue, 27 Jul 2021 13:59:06 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id j20sm4672710pfc.203.2021.07.27.13.59.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 27 Jul 2021 13:59:05 -0700 (PDT)
From: Kees Cook <keescook@chromium.org>
To: linux-hardening@vger.kernel.org
Cc: Kees Cook <keescook@chromium.org>,
	"Gustavo A. R. Silva" <gustavoars@kernel.org>,
	Keith Packard <keithpac@amazon.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Andrew Morton <akpm@linux-foundation.org>,
	linux-kernel@vger.kernel.org,
	linux-wireless@vger.kernel.org,
	netdev@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	linux-staging@lists.linux.dev,
	linux-block@vger.kernel.org,
	linux-kbuild@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH 06/64] bnxt_en: Use struct_group_attr() for memcpy() region
Date: Tue, 27 Jul 2021 13:57:57 -0700
Message-Id: <20210727205855.411487-7-keescook@chromium.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210727205855.411487-1-keescook@chromium.org>
References: <20210727205855.411487-1-keescook@chromium.org>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=2358; h=from:subject; bh=urnr1c0HuSr0zcemksTCEth1t70QAfbHaEcP+c1mXUA=; b=owEBbQKS/ZANAwAKAYly9N/cbcAmAcsmYgBhAHOBqioJQ+1gy1GQQan/jf7RJ1/WXH5A0qXVd7xV vq5+5hOJAjMEAAEKAB0WIQSlw/aPIp3WD3I+bhOJcvTf3G3AJgUCYQBzgQAKCRCJcvTf3G3AJiWREA CNm4WJeCn47J5obmfhInAVhQHs+WaRodzYXqYlwhYZwqztfgNWLmnuTFB7WixSIet+ogzFMJ1r7fzU QnWXAsLuJ3BX98gUGzvKpmV42J3D2bYmtlrZs7Eyhzqsf8YU/1DgzM/cyzoMB1MkY7QVnFyA9ECldc n4XuqAu3QiaIe+5lzEXU3cW0wy5VDaO3U89VhsX3c6FWjMhQ0FF71U5yZVlZ7s8QMcwjgGQ/rSZ5HS tHMaYMmuprGsc0WRWDxssLMce4AZIdKRwnQBGxYX56oM9u/26JaL77KjZeahVv+n4nC+KkXfWFoSls jO+qT1zevLJBtQfWAqBgbtl6mxUkW3D/0aBPlL7o63ss885dcW9pWjj8sVkqG2AOPVUcl+mMOp+VQm 5qmqUeZbnxJVtXjSRXpvzpBMjNj47QiFJaRRu++FQ9+TJ9TwFws9C31mCXsNjIBK/xzNCc0OuY/J2T Fuuz5AL5SsvRzztZGGQvpjWG2xGgfilhJucEqfeyaJrFQIvjGMIAVFYzMGX4dwwIpBMhxVU4spof3f TLNENoSRR30/sOaQWASgjwj8RqwZ3WioWr4/ALRyqYdHD8j5usq3wgrSpYlAC1AQpefx1uLVDOyes3 1j+4vL+JqxKC93LWdqu/2gVD/VBJnBjDTcrSW3GQTmYSKuzKxca2WKziYSew==
X-Developer-Key: i=keescook@chromium.org; a=openpgp; fpr=A5C3F68F229DD60F723E6E138972F4DFDC6DC026
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=iEi8m5Vv;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::102b
 as permitted sender) smtp.mailfrom=keescook@chromium.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=chromium.org
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

In preparation for FORTIFY_SOURCE performing compile-time and run-time
field bounds checking for memcpy(), memmove(), and memset(), avoid
intentionally writing across neighboring fields.

Use struct_group() around members queue_id, min_bw, max_bw, tsa, pri_lvl,
and bw_weight so they can be referenced together. This will allow memcpy()
and sizeof() to more easily reason about sizes, improve readability,
and avoid future warnings about writing beyond the end of queue_id.

"pahole" shows no size nor member offset changes to struct bnxt_cos2bw_cfg.
"objdump -d" shows no meaningful object code changes (i.e. only source
line number induced differences and optimizations).

Signed-off-by: Kees Cook <keescook@chromium.org>
---
 drivers/net/ethernet/broadcom/bnxt/bnxt_dcb.c |  4 ++--
 drivers/net/ethernet/broadcom/bnxt/bnxt_dcb.h | 14 ++++++++------
 2 files changed, 10 insertions(+), 8 deletions(-)

diff --git a/drivers/net/ethernet/broadcom/bnxt/bnxt_dcb.c b/drivers/net/ethernet/broadcom/bnxt/bnxt_dcb.c
index 8a68df4d9e59..95c636f89329 100644
--- a/drivers/net/ethernet/broadcom/bnxt/bnxt_dcb.c
+++ b/drivers/net/ethernet/broadcom/bnxt/bnxt_dcb.c
@@ -148,10 +148,10 @@ static int bnxt_hwrm_queue_cos2bw_qcfg(struct bnxt *bp, struct ieee_ets *ets)
 	}
 
 	data = &resp->queue_id0 + offsetof(struct bnxt_cos2bw_cfg, queue_id);
-	for (i = 0; i < bp->max_tc; i++, data += sizeof(cos2bw) - 4) {
+	for (i = 0; i < bp->max_tc; i++, data += sizeof(cos2bw.cfg)) {
 		int tc;
 
-		memcpy(&cos2bw.queue_id, data, sizeof(cos2bw) - 4);
+		memcpy(&cos2bw.cfg, data, sizeof(cos2bw.cfg));
 		if (i == 0)
 			cos2bw.queue_id = resp->queue_id0;
 
diff --git a/drivers/net/ethernet/broadcom/bnxt/bnxt_dcb.h b/drivers/net/ethernet/broadcom/bnxt/bnxt_dcb.h
index 6eed231de565..716742522161 100644
--- a/drivers/net/ethernet/broadcom/bnxt/bnxt_dcb.h
+++ b/drivers/net/ethernet/broadcom/bnxt/bnxt_dcb.h
@@ -23,13 +23,15 @@ struct bnxt_dcb {
 
 struct bnxt_cos2bw_cfg {
 	u8			pad[3];
-	u8			queue_id;
-	__le32			min_bw;
-	__le32			max_bw;
+	struct_group_attr(cfg, __packed,
+		u8		queue_id;
+		__le32		min_bw;
+		__le32		max_bw;
 #define BW_VALUE_UNIT_PERCENT1_100		(0x1UL << 29)
-	u8			tsa;
-	u8			pri_lvl;
-	u8			bw_weight;
+		u8		tsa;
+		u8		pri_lvl;
+		u8		bw_weight;
+	);
 	u8			unused;
 };
 
-- 
2.30.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210727205855.411487-7-keescook%40chromium.org.
