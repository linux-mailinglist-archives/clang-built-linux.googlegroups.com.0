Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBAPG4D3AKGQE35DJNOA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x640.google.com (mail-pl1-x640.google.com [IPv6:2607:f8b0:4864:20::640])
	by mail.lfdr.de (Postfix) with ESMTPS id A568A1ED919
	for <lists+clang-built-linux@lfdr.de>; Thu,  4 Jun 2020 01:32:18 +0200 (CEST)
Received: by mail-pl1-x640.google.com with SMTP id 70sf3264516ple.1
        for <lists+clang-built-linux@lfdr.de>; Wed, 03 Jun 2020 16:32:18 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1591227137; cv=pass;
        d=google.com; s=arc-20160816;
        b=ToBVDgONZSIIT1X5FXCPdZuRoAetlk6tMHGr/Wm+Ebwe93+uXZWUCWp0aGC+s7I0i3
         IusfcndJh3WmxLusGouump+WIi/aBhf2CrGYMrpGetDIt+jT0yIXlbEvmz0fSCMZFh1f
         lYsd39s7OjelLLUcX9ruNzZdD4auPtyN3iqjZKqjbxHxgGsR1KiCJ3GZpHFwyhD8kKox
         Og3sCTxcYX5LUBJzxTzwoXNlef8/lP8BciB3VvRVJ/Wd1DoyPyAxMOf121YarB+QUQOb
         LNj0FTUyMSnpRvtFGLFpd5yIm+8Gmi3PUzHtYCROHHIpD5WQbCjoCitU6FVqgo519jru
         Au2A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=QYmFfEXXIn6zZ3PDXvWlm2C8LnCmEUHwYDfoe01mTDw=;
        b=Zk1UoLd1Y3j2alqwbYEbu0Pr43f/B0hZEfpdG/4cd4T3fAjrG9XZK1/fIco5VWu+kO
         scJAVNCn6caoPVWhDOMm0O67LcENLzXkkyyikmSioCfZbWaUAcXoVbB9n/ghR/dbPEaM
         1/MWU1Jz3NSSzyCPLG1EC1NCcRveom2iqmhe0jACX1gkNn9d3d/AZx4Ds7k/FTKvYHb3
         VnxJGlwlCGYZETzcD+UWK6/OcjYXUlLfbY5Z2kCMS0krvbJX0Is29ivhlIVdIppe0MMT
         tGqLB7IiSTTSo8ycttBa8EpXCI2AzyepULtHkUB8G2Jbj0JYMzU/ROT/v316Gey8jptY
         pwxg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=oLglV2NF;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::543 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=QYmFfEXXIn6zZ3PDXvWlm2C8LnCmEUHwYDfoe01mTDw=;
        b=GxcDqRB8UWpldL7yo+PgICUWSNxYtR7274qzkPawTy2JVd8LY3BqILT2bCAzfBZOic
         MlJ8JOH72pTMZ6QaRb3bFEmcbrqAHwbRCozVkbJ6c1be2yg0XCMfpGOVzIZRsnQ+orNE
         fX4kBfZSJHL47x7U5QGsciGSJ/F8RJJBhM6mTcxJPafY0lThkMaQdB6MD+/OUBEtzFYV
         MJQjIgEjub1mXkPYg2Jl7thqi+Zy5mdwSPEgwgnY0ya/hZ9bjgdt10VByjMcHtzqUMVn
         NuPuNnpOR3BQIq8LWvOu/7fwKLPIpaqWpl5hOmcMu0Ct3ro7+fD8EFGUcyxgG4w3Kzyl
         wjbQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=QYmFfEXXIn6zZ3PDXvWlm2C8LnCmEUHwYDfoe01mTDw=;
        b=p9YSjwYNfDWTstmDCKUHsDezNhEoXOb18acDTtOKrYW/fNcdUEDaTrd0WUTG17p6r1
         8uo2/+Iy9G7MIErLHaronYKJRc6qockUVewSZmxz+Y0rosyWyI5WP9lCouTEeP77ZPes
         Y5xAuaxdY7qTZUs9oZ2BcHFyK1C4giKEAGodYr8CyAE3cWLZ0uk+2CzFAgEWZ+9EwSK1
         j005rvsOR5FWy8VluWykLo7/LgrHTaZ5XoM7mr8kKnjPHH6QEqmeR2AqtvLy1GnUO2/j
         9HV0yz50nkxFKH27/anVd8yE9tqjud5EWmRgleTEcYU8njl5ikbqk4GYLsVV55laRfYA
         d1vA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530A5fnsph6p/L/ey+yU7qAb4IQ1Wn12QGThMtVSNXgHVvKedcyD
	WUwlYY7Dp0qpOnc1tYxHcus=
X-Google-Smtp-Source: ABdhPJyunwdmAEhrwDlEYauY7W3cGh2j2LksZEXTyLMEerWrvLChKYCRjQ+37TQRP8dZzzMuDsNxnQ==
X-Received: by 2002:a17:902:b608:: with SMTP id b8mr2043801pls.163.1591227137170;
        Wed, 03 Jun 2020 16:32:17 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:7a0c:: with SMTP id v12ls712071pfc.1.gmail; Wed, 03 Jun
 2020 16:32:16 -0700 (PDT)
X-Received: by 2002:a62:b40e:: with SMTP id h14mr1476873pfn.201.1591227136713;
        Wed, 03 Jun 2020 16:32:16 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1591227136; cv=none;
        d=google.com; s=arc-20160816;
        b=PYRa+eak0MGlA+ku+Kw5R4eIvVrANSaVQ62/7JeUcQH343do+0tyM5CRibT5PCB0b2
         9gjVhdNRO7h4Wza8EnuZ/EPgCIi+paKSiQoZdRMXzDa/gLCJRgRE6XazexF/A4MMwIJ1
         DDuCHq7W1+9hpQ2jU4rqIgYUU+J3Fkx24lN67dpp10Q6AzJm1rglfzEZ5qmOS9+WR9yE
         GNHHcnjdMnPIKeGwXTzawuhghByT5WJPYt05iU+kOfDmb9DE5RLR2Ok1Ben6mEnwByIU
         TEZuQtadFg7yj1qEfJR1k3d/VRFm0U8fzHfNBa2vA6eO5wkgHzRBul7cBsM6+3Njeur8
         VGDA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=z79mte9tXyXKJqcwg2to640Wx2Eg5qdbPrxISPqquNw=;
        b=gBQjMgHYA+6bjLsZEN/6XZEc/HKjIZ/00rdrIOjnkax8NJzg4V+89QDIzoFV8glf0u
         68nKf++P9n9WdUR4BJXhoJR9SrtEI1/EmtPJNFnA5UsxzmKpuXdZPaoBA/9IfruIW3Fc
         L9yyePzrJwVoZnLfHek8yaN09lXWk6Jsz5v+aPvcE9bVz9saI2qm8mh43nZNFMsKPICg
         goRNN3+rqkt3ZkH4nFerEgAEGiBcwofaoQ25JVknHpgrEJSjjq5B3vxKpDhawXpxyNLT
         6nXUXMxtbilsMmM/mpBE0j6Q3Odc39uYEZX+YGEb6OAprhVdNM+xuRxu+MNKsHYAGfPr
         s1XA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=oLglV2NF;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::543 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pg1-x543.google.com (mail-pg1-x543.google.com. [2607:f8b0:4864:20::543])
        by gmr-mx.google.com with ESMTPS id v197si276416pfc.0.2020.06.03.16.32.16
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 03 Jun 2020 16:32:16 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::543 as permitted sender) client-ip=2607:f8b0:4864:20::543;
Received: by mail-pg1-x543.google.com with SMTP id m1so2703783pgk.1
        for <clang-built-linux@googlegroups.com>; Wed, 03 Jun 2020 16:32:16 -0700 (PDT)
X-Received: by 2002:aa7:9a93:: with SMTP id w19mr1488633pfi.155.1591227136432;
        Wed, 03 Jun 2020 16:32:16 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id j8sm3442213pjw.11.2020.06.03.16.32.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 03 Jun 2020 16:32:12 -0700 (PDT)
From: Kees Cook <keescook@chromium.org>
To: linux-kernel@vger.kernel.org
Cc: Kees Cook <keescook@chromium.org>,
	Linus Torvalds <torvalds@linux-foundation.org>,
	Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>,
	Alexander Potapenko <glider@google.com>,
	Joe Perches <joe@perches.com>,
	Andy Whitcroft <apw@canonical.com>,
	x86@kernel.org,
	drbd-dev@lists.linbit.com,
	linux-block@vger.kernel.org,
	b43-dev@lists.infradead.org,
	netdev@vger.kernel.org,
	linux-wireless@vger.kernel.org,
	linux-ide@vger.kernel.org,
	linux-clk@vger.kernel.org,
	linux-spi@vger.kernel.org,
	linux-mm@kvack.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH 03/10] b43: Remove uninitialized_var() usage
Date: Wed,  3 Jun 2020 16:31:56 -0700
Message-Id: <20200603233203.1695403-4-keescook@chromium.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200603233203.1695403-1-keescook@chromium.org>
References: <20200603233203.1695403-1-keescook@chromium.org>
MIME-Version: 1.0
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=oLglV2NF;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::543
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

Using uninitialized_var() is dangerous as it papers over real bugs[1]
(or can in the future), and suppresses unrelated compiler warnings (e.g.
"unused variable"). If the compiler thinks it is uninitialized, either
simply initialize the variable or make compiler changes. As a precursor
to removing[2] this[3] macro[4], just initialize this variable to NULL,
and make the (unreachable!) code do a conditional test.

[1] https://lore.kernel.org/lkml/20200603174714.192027-1-glider@google.com/
[2] https://lore.kernel.org/lkml/CA+55aFw+Vbj0i=1TGqCR5vQkCzWJ0QxK6CernOU6eedsudAixw@mail.gmail.com/
[3] https://lore.kernel.org/lkml/CA+55aFwgbgqhbp1fkxvRKEpzyR5J8n1vKT1VZdz9knmPuXhOeg@mail.gmail.com/
[4] https://lore.kernel.org/lkml/CA+55aFz2500WfbKXAx8s67wrm9=yVJu65TpLgN_ybYNv0VEOKA@mail.gmail.com/

Signed-off-by: Kees Cook <keescook@chromium.org>
---
 drivers/net/wireless/broadcom/b43/phy_n.c | 10 +++++++---
 1 file changed, 7 insertions(+), 3 deletions(-)

diff --git a/drivers/net/wireless/broadcom/b43/phy_n.c b/drivers/net/wireless/broadcom/b43/phy_n.c
index d3c001fa8eb4..88cdcea10d61 100644
--- a/drivers/net/wireless/broadcom/b43/phy_n.c
+++ b/drivers/net/wireless/broadcom/b43/phy_n.c
@@ -4222,7 +4222,7 @@ static void b43_nphy_tx_gain_table_upload(struct b43_wldev *dev)
 	u32 rfpwr_offset;
 	u8 pga_gain, pad_gain;
 	int i;
-	const s16 *uninitialized_var(rf_pwr_offset_table);
+	const s16 *rf_pwr_offset_table = NULL;
 
 	table = b43_nphy_get_tx_gain_table(dev);
 	if (!table)
@@ -4256,9 +4256,13 @@ static void b43_nphy_tx_gain_table_upload(struct b43_wldev *dev)
 			pga_gain = (table[i] >> 24) & 0xf;
 			pad_gain = (table[i] >> 19) & 0x1f;
 			if (b43_current_band(dev->wl) == NL80211_BAND_2GHZ)
-				rfpwr_offset = rf_pwr_offset_table[pad_gain];
+				rfpwr_offset = rf_pwr_offset_table
+						? rf_pwr_offset_table[pad_gain]
+						: 0;
 			else
-				rfpwr_offset = rf_pwr_offset_table[pga_gain];
+				rfpwr_offset = rf_pwr_offset_table
+						? rf_pwr_offset_table[pga_gain]
+						: 0;
 		} else {
 			pga_gain = (table[i] >> 24) & 0xF;
 			if (b43_current_band(dev->wl) == NL80211_BAND_2GHZ)
-- 
2.25.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200603233203.1695403-4-keescook%40chromium.org.
