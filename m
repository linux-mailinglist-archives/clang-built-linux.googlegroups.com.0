Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBS4FW33QKGQEVOZPR2Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103f.google.com (mail-pj1-x103f.google.com [IPv6:2607:f8b0:4864:20::103f])
	by mail.lfdr.de (Postfix) with ESMTPS id 9DF8E20204D
	for <lists+clang-built-linux@lfdr.de>; Sat, 20 Jun 2020 05:30:21 +0200 (CEST)
Received: by mail-pj1-x103f.google.com with SMTP id q12sf7980738pjp.4
        for <lists+clang-built-linux@lfdr.de>; Fri, 19 Jun 2020 20:30:21 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1592623820; cv=pass;
        d=google.com; s=arc-20160816;
        b=YgkvWWON6x9EuDoRqjj6KMDlcEI+9onpV4fzdJK40AJSNrWR7sgCLVkoYs6YKs/7lV
         XsT/oJq9ozYpi6pYGS94KEpStOzKRcn/nydFjAdCNS5M249cZc1TLOtF12A99nH0AmxU
         SRdiGLzjFS24W95nMlNnIs2kIVMducr/nA0CyoQke01QnT/vtqrYpOz30mvvVTMIN828
         8a4XTA19v6XMnavbYEpvFNxi3xAB+QcSQW3WLDySgy90jB+x3SpjPZ5Qyhxx7pFk+l37
         nST0eUQsmTBhi9i5AhLe9MYEEQGcBSpdpZSFCx6zoM0Ofa2K6ZxcoOhiCY4H9gOOTsQY
         DxFQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=PA+IO3r/YPn5HEZT1othaKZhvsvmjpyM1SJkzko5Wyg=;
        b=vJ8eDxgln0oy2ZGpLNr3eGiw9S4NHT2I0e3w26yfMbEDXkVnU/9NK7RrXC8Bdg+Wfu
         iBQpXdY/HyUM/QwFMVaV4hNRBz0iq/GmYxv3uUlGRcQ7boAOUj7ywNigHUq7/D5YGaQ9
         69HjQPw94peOZh0GvqYMD8FjRouk2HlgGmp+OGTRGDEXdMl07fCJvZXqXjHV02H3VOFB
         MI26zFQWTinF85OZapVIh/eiUp1YsC5CYKHj9AHHd9m+khDveHSfovWVOD12ITY2sML+
         YIBwfsyHkDcv/H5zhlPSztDjVwl3yYDvfaWDZF9wrXTBYyefZ1GtT2MmAMRp/kGqTu72
         WH/A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=AtmMokfE;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1044 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=PA+IO3r/YPn5HEZT1othaKZhvsvmjpyM1SJkzko5Wyg=;
        b=lLzyQrXPmPKZWpTvBEqpXu0dtHJLcoZk7PPkiIWkQ8OGe5paw9wgnNjfzQ7wqeL0gM
         niwWQMo2DnbgwYaw60x0l3YBjF0Y+yEsCMXOMsGvs6dhmdiI5WWscMqw3iR111SH55qQ
         g/puJDqm6pBVuDsv9Yaq1/dYsil8t6UYqn3SZU2W3mla5Anv+Anqn4AO0HeorisenaDx
         4dRqirzAx4rL7HHr7kPc68Sz/G9Vb773KbR8a3gZunnWHfqVt+kL8EUUcTfRQqDc5gCH
         5+zPLzJ1NUuhqUiosdA0BpQOuLxDGDpMSj+R6kWvzVTNFAxTxd+KLlkXMO9u+0XXRUTY
         273A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=PA+IO3r/YPn5HEZT1othaKZhvsvmjpyM1SJkzko5Wyg=;
        b=C1G9/l3a5WlxEaFzyNMHHD3OLrTSOyRyLo5rf/6aLRrJAfql6CBsx8F80u4y6ZNgTp
         t9UvUrh94qXgM2x2NiHfHyWVMXzjb4yM0GbFjw1Q/gt0Gk2Gu6FrE9lJ1i+AzMDT2GM6
         OtDk58opkaXyZ1pc5p+RIa88LetYyHyvPkxsv4+2T4UzHpUjRss7lFCL143z4n37PT1z
         cwcrJ3GYqdQiU6gCo/KqwcAN27CUpRGsOR6SijrI94jTDdEVjDRFmITgIhPGFZMvNwSg
         f9586WujJP2FeycNCF0qenKUmvDroTPVkqbz/BqojtfKnpP0p3+iXVYhNmbhmIeHNgOf
         I1dg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530DUliHRb+B8WbpJ+j80RXbCLGfAKvexhpUMBfHXGpch9VBU84i
	GdqFcUDy3vINnkwa9SdsDlU=
X-Google-Smtp-Source: ABdhPJwFbYpZUA+Xft3l539RPTA7TLZ7TALGg734LiGvUL3jgDcOT8Bbt+68PJP29UGG25pXdl5D0w==
X-Received: by 2002:a17:902:c206:: with SMTP id 6mr8654938pll.133.1592623819942;
        Fri, 19 Jun 2020 20:30:19 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:bf05:: with SMTP id bi5ls4191905plb.5.gmail; Fri, 19
 Jun 2020 20:30:19 -0700 (PDT)
X-Received: by 2002:a17:902:7109:: with SMTP id a9mr11046800pll.58.1592623819568;
        Fri, 19 Jun 2020 20:30:19 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1592623819; cv=none;
        d=google.com; s=arc-20160816;
        b=WDOfNv40s9hLM4PN0Jd+O8wJYi7PLgU2gI4obLeKXG/IxcBVV/OVBJ0fHHurbXwwgj
         6U36YAQCibVApcAY1vVmpL0feJVD63dKcEdK5RpXVX9MnVJ7K71iIFEp4wQ8ngxt5+SC
         4xEMcWV0FbHyZlQ7JF2wfWL/2oJQYR1/TJI4p7W64+Ov9xCJZTeVX6ocCM7cAkWdThMw
         3ilMhcbdNrOoLCydjfb5DliMmhQJ0LvcwTXX+4bcJOs9qTddMSY3ym0zBWMmMHflGxbI
         sFYBFCUEJ70YegBNswGCm0WRphcv7xqeni+gERZwJoIi8cn5+3qpbN6kqOiUth0r1KM9
         Hcww==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=YYIu82vaLERDRRVNezIsYro3B9HeZTQxC/aBbKcbPE4=;
        b=mcVJn0fpFPLnUzNtvXIJ78qp7K+PTyP8Y2jqL/awyKzsqE8gM3XJNTyX9encDck88y
         SGSXmSSXkH+lqKeeEgpAuoBt914DkJyKLXL2IjfeTodywTnM4zf31OeGWpJGuI0bf6jU
         SdsBFMAoK10/z0Le67OGfbmfnEESTDa6lkIGEaK8EMaB6rEn32ZV/YTmvIF08VV8dfCL
         c6BzyVXhCFYjXiTwAHEqw1ibItuEEGPludodWuDk80HC3/cOW4lvtj0RwDKOThDRIUs2
         a+hejmROzeOo7AjJf0iNN9GlJ7H8UOGh/eL3ijgmh835138EhGFVUvogOCUg1w60Ud1R
         5qCw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=AtmMokfE;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1044 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pj1-x1044.google.com (mail-pj1-x1044.google.com. [2607:f8b0:4864:20::1044])
        by gmr-mx.google.com with ESMTPS id l9si424851pjw.2.2020.06.19.20.30.19
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 19 Jun 2020 20:30:19 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1044 as permitted sender) client-ip=2607:f8b0:4864:20::1044;
Received: by mail-pj1-x1044.google.com with SMTP id m2so5292061pjv.2
        for <clang-built-linux@googlegroups.com>; Fri, 19 Jun 2020 20:30:19 -0700 (PDT)
X-Received: by 2002:a17:90a:d244:: with SMTP id o4mr6477083pjw.186.1592623819315;
        Fri, 19 Jun 2020 20:30:19 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id u14sm7848572pfk.211.2020.06.19.20.30.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 19 Jun 2020 20:30:17 -0700 (PDT)
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
	linux-doc@vger.kernel.org,
	linux-wireless@vger.kernel.org,
	linux-ide@vger.kernel.org,
	linux-clk@vger.kernel.org,
	linux-spi@vger.kernel.org,
	linux-mm@kvack.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH v2 04/16] b43: Remove uninitialized_var() usage
Date: Fri, 19 Jun 2020 20:29:55 -0700
Message-Id: <20200620033007.1444705-5-keescook@chromium.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200620033007.1444705-1-keescook@chromium.org>
References: <20200620033007.1444705-1-keescook@chromium.org>
MIME-Version: 1.0
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=AtmMokfE;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1044
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
to removing[2] this[3] macro[4], just initialize this variable to NULL.
No later NULL deref is possible due to the early returns outside of the
(phy->rev >= 7 && phy->rev < 19) case, which explicitly tests for NULL.

[1] https://lore.kernel.org/lkml/20200603174714.192027-1-glider@google.com/
[2] https://lore.kernel.org/lkml/CA+55aFw+Vbj0i=1TGqCR5vQkCzWJ0QxK6CernOU6eedsudAixw@mail.gmail.com/
[3] https://lore.kernel.org/lkml/CA+55aFwgbgqhbp1fkxvRKEpzyR5J8n1vKT1VZdz9knmPuXhOeg@mail.gmail.com/
[4] https://lore.kernel.org/lkml/CA+55aFz2500WfbKXAx8s67wrm9=yVJu65TpLgN_ybYNv0VEOKA@mail.gmail.com/

Fixes: 58619b14d106 ("b43: move under broadcom vendor directory")
Signed-off-by: Kees Cook <keescook@chromium.org>
---
 drivers/net/wireless/broadcom/b43/phy_n.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/wireless/broadcom/b43/phy_n.c b/drivers/net/wireless/broadcom/b43/phy_n.c
index c33b4235839d..46db91846007 100644
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
-- 
2.25.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200620033007.1444705-5-keescook%40chromium.org.
