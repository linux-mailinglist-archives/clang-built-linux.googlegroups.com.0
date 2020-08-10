Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBQU7YP4QKGQE2JYBC2I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x93a.google.com (mail-ua1-x93a.google.com [IPv6:2607:f8b0:4864:20::93a])
	by mail.lfdr.de (Postfix) with ESMTPS id 51EF1240197
	for <lists+clang-built-linux@lfdr.de>; Mon, 10 Aug 2020 06:40:36 +0200 (CEST)
Received: by mail-ua1-x93a.google.com with SMTP id h22sf2561129uao.12
        for <lists+clang-built-linux@lfdr.de>; Sun, 09 Aug 2020 21:40:36 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1597034435; cv=pass;
        d=google.com; s=arc-20160816;
        b=ElNnqvKrKJGYcw5shgYDHQbgnLNkkFM//dDJoji2zlVjsqG9wJZ84I27Kse3YHZjgZ
         wVrdNdFbJH+qvX4e3qDX0Qdia7g5q8Wjetsj9zzGgQ5/o7G0nVlMRZsysTnfLO5+VXIq
         A+wPidxXDjPsX4fjPnM4Th8pgo68/DmExlcd51Omg/Hoji2m2kNhOdPpN1o1QAjZahhJ
         9wiqPewL52Re1w99k8Mq9s3CYGOe/+8NPG7u4AELYpSFYDdpmsnjy3Eb8ygZYT2dw0kC
         M8QFBsbX9dWrA2UQdEmPyxz+9Ak/ot+yvjUOQ0h3aHsq4iN0ayQXDc5jX/tbIoKvf6x9
         a8gQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature:dkim-signature;
        bh=5MPGoJT6Wv3PziaMaIc7qggatmrgHpiv16bEg6rbiqk=;
        b=tfGT8APmOgLw6kM2kdS9OXTQCkReZwwvnDhc6dhVQYtDbMsEbrLJswPbLCn+dQkxcc
         q5AfIzxFei6eH4RUJgS1IjRYm/Y2l5IjjPC8TmTgG6n4zIglhEotMnASqlF5S3Gv8/Bt
         6fcqlyM6ulHK0sHAWh/vMLHbDHBMoFCa/kiYhg0EKyTpyl8K6BkcuuOp+Ik5g/wKsPe/
         QxLXzLuusLisvkvFWZeddJEFJ7TZC2JEOVfVyZ3ERfanCprFsrBDfvJt1aEkI8WwekZ8
         TFRstOl/6i2IDEdNtXP+V8Cij16A+Fjowo+V3CaEbGxXbeefs4LOeC81wUQrRatMI82c
         QtNQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=bN00W7kq;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::743 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=5MPGoJT6Wv3PziaMaIc7qggatmrgHpiv16bEg6rbiqk=;
        b=Ak/5LbiLHwm8Hf2HoH2sl6vyPRBLbO3HdPF1dYeLJaiKroW51RZbqv5GUrzPDwMhqr
         WrZOm/Q8lr5KG3md6IOekvAmXLKTCHMZPx4a9LegIr/ClYv1MXgdq5+GHJZw64SY8waf
         nP6XOnpPVdBiGuQFYmftRp0wbzcCtd7c6bdgwiki06ybmzNsS7ipv4MKgejk6sW6msC3
         NqtSp6xh3mRIb7W+jcZO+hQVKaTqbS0Q1bczPwDkgUx26T8nOHuK2dpyg3/7//z+tvlu
         tBjlYItO9patniO9+8OxZiTz3LxYUWAkJvhXqFoXjcUPIutBv5R1dBRj3aEwX3H+iwHo
         fhYQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=5MPGoJT6Wv3PziaMaIc7qggatmrgHpiv16bEg6rbiqk=;
        b=KfrAr0kk8YPZhVImcxGOLz0Cu2lp4hFte31b6dQADIMeaOqc4/UUudQ6itghexVGGQ
         ib91086HgEgp9mAlqqKpJl2nKhh4J1xoXVCCBUKh5gsZTvyiCorRCb3PQ2REOijyt2fI
         +OPjuXHVsUZDkLQ+D/5tgU1aIroNthN614/4M9YhpO2snwTQYBUz9FlZ01Ogx/M536fO
         oikpnK3hIYOL5G8eKz2l2wwkftilKDH/ni80eGtDFurgAUbZ3CNobGPwd1ZmN0P5XkIg
         kvljxB8CBfr/31gDjfvfzbz6RrU0kjCNT2pe8Rnp9wD2SM4ayS0uEdhDbstr85Db38r6
         2lXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=5MPGoJT6Wv3PziaMaIc7qggatmrgHpiv16bEg6rbiqk=;
        b=CWlQngWLHpakUwJ5haUTKyOfL/JZ5aXze8PWShkD2Byl/CKsx6YI0xCOq6XsPmBP2f
         PA0n550qnADNr+ORmmBaYy0ZWuTpOA9TOs952lZ00HJQD/ZvBa6QNCazoh4h1gz2FcXD
         WRxHM9og5gP2FO1rJWFG3izT+fJC06DvwaRmupl18WuYD30I6sGxnVXCCvfQ/HUDGKtq
         oCIGvhLSBNCudP/bPEYkpuE0kl+I8qHSHbxm/+wQpsdZKFKFqmDiovE4uw+uRS1wV486
         5KwJxeFjm868JVdBW0cpvmV5hak0UPDP2ccWOtzTrrCSLdmTcJHg0Lh/nUrtySECE1Ut
         glwg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530IN3txC44iPkcGbwS64yTXAxtYooAPg0CgYuoIftI73JSWrXwn
	dyescbKcC8q9gr4l37Jm8UE=
X-Google-Smtp-Source: ABdhPJzff9Iog+BpglXWPYUAp3aQn8OY2dh+eMBwM87xlpXKsXwrHVzr+H1VHG6kL+ypYTWzzteDXg==
X-Received: by 2002:a67:ef81:: with SMTP id r1mr17674245vsp.37.1597034434992;
        Sun, 09 Aug 2020 21:40:34 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ab0:211a:: with SMTP id d26ls781570ual.3.gmail; Sun, 09 Aug
 2020 21:40:34 -0700 (PDT)
X-Received: by 2002:ab0:13cc:: with SMTP id n12mr17463136uae.88.1597034434649;
        Sun, 09 Aug 2020 21:40:34 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1597034434; cv=none;
        d=google.com; s=arc-20160816;
        b=byeCLssxrvoZrJdbe0Vgu55CGBV5hw68qE07XPLi+ubnByOsVT/tJ8yVWnutXAqHNc
         ApI3ZZGzb4ROJSUzNi7Mc+Ltce0EcQAh3183zLUFFkUlm1YGd8FRXYxINHK/cILVjgLk
         Q4/39E62RsdRC30W2pXlYxQb1zfiWzLiwYmmwN8dMXKFniq4u3Av3geMshVoneJCGFIt
         GePE4YyB+399hH4O1jd0orUigJUsaRuq/uMWuG0NwWJjwtV2XAKfwGNzC2+877FAVopQ
         4jRSszYfxdQF/rqeBuOyS1tGNn1qoCNaAC1ys9UuZNxxSttehnrcbtVQ3cgkB77ulieW
         g4Kw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=cPds9HzkVUDwwmYzqeRQutg+bwybNljwD4ACV/nwwSk=;
        b=UuaCItF6YkLPJ4VXhmaIc7ZGjAsrDf1V1AQeIAFjYGP0+c2B4v8uvJUzLf7qrk9X1z
         Svs9ho7nl97gpbdRoOAXy0vDY0Ud6i2IbJ8WzjmJq2wZG9bOtE/jwz0FuO4D99Pa9yGp
         xSGkuzbHqTMekn2SobV3Qr0+4pDrhSBqscRb8Pr8R3U1z4ay6/qwyWhvW/xXkS5ByqEh
         dtdk6NADNOdouyJ0/Nyunb8e9UairjzKFvfHBIbk4BVK9SZff+Ij/oXHmqYQ/1D85dW6
         bNIAjMKf5K2s0CKQ+uJsUEIpVDQC9IqBbNPkXAjB5YS+RtsaqLxmLxz1tSkNcA+rbu8i
         rd7g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=bN00W7kq;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::743 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-qk1-x743.google.com (mail-qk1-x743.google.com. [2607:f8b0:4864:20::743])
        by gmr-mx.google.com with ESMTPS id t72si979488vkd.5.2020.08.09.21.40.34
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 09 Aug 2020 21:40:34 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::743 as permitted sender) client-ip=2607:f8b0:4864:20::743;
Received: by mail-qk1-x743.google.com with SMTP id p4so7288992qkf.0
        for <clang-built-linux@googlegroups.com>; Sun, 09 Aug 2020 21:40:34 -0700 (PDT)
X-Received: by 2002:a37:48c7:: with SMTP id v190mr23581106qka.153.1597034434113;
        Sun, 09 Aug 2020 21:40:34 -0700 (PDT)
Received: from localhost.localdomain ([2604:1380:45d1:2600::1])
        by smtp.gmail.com with ESMTPSA id d203sm13169026qkc.10.2020.08.09.21.40.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 09 Aug 2020 21:40:33 -0700 (PDT)
From: Nathan Chancellor <natechancellor@gmail.com>
To: Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>
Cc: Heiko Stuebner <heiko@sntech.de>,
	linux-clk@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Nathan Chancellor <natechancellor@gmail.com>
Subject: [PATCH] clk: rockchip: Fix initialization of mux_pll_src_4plls_p
Date: Sun,  9 Aug 2020 21:40:20 -0700
Message-Id: <20200810044020.2063350-1-natechancellor@gmail.com>
X-Mailer: git-send-email 2.28.0
MIME-Version: 1.0
X-Patchwork-Bot: notify
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=bN00W7kq;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::743 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

A new warning in Clang points out that the initialization of
mux_pll_src_4plls_p appears incorrect:

../drivers/clk/rockchip/clk-rk3228.c:140:58: warning: suspicious
concatenation of string literals in an array initialization; did you
mean to separate the elements with a comma? [-Wstring-concatenation]
PNAME(mux_pll_src_4plls_p)      = { "cpll", "gpll", "hdmiphy" "usb480m" };
                                                              ^
                                                             ,
../drivers/clk/rockchip/clk-rk3228.c:140:48: note: place parentheses
around the string literal to silence warning
PNAME(mux_pll_src_4plls_p)      = { "cpll", "gpll", "hdmiphy" "usb480m" };
                                                    ^
1 warning generated.

Given the name of the variable and the same variable name in rv1108, it
seems that this should have been four distinct elements. Fix it up by
adding the comma as suggested.

Fixes: 307a2e9ac524 ("clk: rockchip: add clock controller for rk3228")
Link: https://github.com/ClangBuiltLinux/linux/issues/1123
Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
---
 drivers/clk/rockchip/clk-rk3228.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/clk/rockchip/clk-rk3228.c b/drivers/clk/rockchip/clk-rk3228.c
index d7243c09cc84..47d6482dda9d 100644
--- a/drivers/clk/rockchip/clk-rk3228.c
+++ b/drivers/clk/rockchip/clk-rk3228.c
@@ -137,7 +137,7 @@ PNAME(mux_usb480m_p)		= { "usb480m_phy", "xin24m" };
 PNAME(mux_hdmiphy_p)		= { "hdmiphy_phy", "xin24m" };
 PNAME(mux_aclk_cpu_src_p)	= { "cpll_aclk_cpu", "gpll_aclk_cpu", "hdmiphy_aclk_cpu" };
 
-PNAME(mux_pll_src_4plls_p)	= { "cpll", "gpll", "hdmiphy" "usb480m" };
+PNAME(mux_pll_src_4plls_p)	= { "cpll", "gpll", "hdmiphy", "usb480m" };
 PNAME(mux_pll_src_3plls_p)	= { "cpll", "gpll", "hdmiphy" };
 PNAME(mux_pll_src_2plls_p)	= { "cpll", "gpll" };
 PNAME(mux_sclk_hdmi_cec_p)	= { "cpll", "gpll", "xin24m" };
-- 
2.28.0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200810044020.2063350-1-natechancellor%40gmail.com.
