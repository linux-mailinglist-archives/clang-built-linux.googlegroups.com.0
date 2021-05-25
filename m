Return-Path: <clang-built-linux+bncBCQ45GVI5EFBB262WOCQMGQEAXYVIJI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3e.google.com (mail-yb1-xb3e.google.com [IPv6:2607:f8b0:4864:20::b3e])
	by mail.lfdr.de (Postfix) with ESMTPS id F02503900FA
	for <lists+clang-built-linux@lfdr.de>; Tue, 25 May 2021 14:28:28 +0200 (CEST)
Received: by mail-yb1-xb3e.google.com with SMTP id u13-20020a25f80d0000b029051d7fee31cfsf14284496ybd.22
        for <lists+clang-built-linux@lfdr.de>; Tue, 25 May 2021 05:28:28 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1621945707; cv=pass;
        d=google.com; s=arc-20160816;
        b=Hqicq2TNTnYhi+wnJOkcA+K/Gh/M4pyEmEv/PlBVN8Rb9XcCrLbuFZozXhhQl+pgoX
         WPl0VNgJiOhyDa3UTBIZm07rpXiaAOZLYoLl8o8f1KGZUIXJMQlBbsC2/U4Dm+i5fMzg
         +WMlID4DMkMne+HLWRJiMNeGl6dw4eyH/jrRnN5JV6VBjW0GVfHsgwsKsVfhseK9+gV+
         +wCR20O5ogb3f+4Wmb5DarNiYAf7VY+MMcCW8MZz3nkyTKG92o0ralG7mXVeauidzm74
         ztBWdgAHy4Gaqo/DV0AvsOfXFvj9jEa6/aVtRicSBLXYxwnfB9UusHjzUL1z9j5tz+3r
         DHKw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature
         :dkim-signature;
        bh=vR83peYSW1oTD/dWXaSppdgUojLhuFs5VZftOLOex6I=;
        b=isRWjUofBmlvlTB59xK2bPCasCwX3sLeZ5eMTEkf6a5e0NHKaW44ykHx3tku1eO3eX
         9WIK9K5f93ZKSX+DqHaA2cMbOJlLfDS9wo7O+XG6Hsb+C8G8CWdUXMSMT7kFJV77oNJR
         IADAB/NG6UMmnlvR5YLirf55o6u4J/QW7b7eDSbC0Wh9vgAs/6H+jgAIwR0WJipbu+kY
         FC/oGOK5rx1974qXYA6CwZf+6EjM9kohBMuDq7sB6oLusoyw+MT2KIm4JvKr3PDXo+mU
         cW6Kh1LXZAIDU9MRUl60cL4YEBsEG4AeUVlesAYlcT392xnv8PoTJt40x9ry/o6c0tii
         Zj0A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=oEIBrt5e;
       spf=pass (google.com: domain of pgwipeout@gmail.com designates 2607:f8b0:4864:20::82d as permitted sender) smtp.mailfrom=pgwipeout@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=vR83peYSW1oTD/dWXaSppdgUojLhuFs5VZftOLOex6I=;
        b=ogyn/2pJJM9zRe8nGlU7CL2sutvJZ6aBrfrD+Vbyzx3Pk6BmM3C5jyTfg2wK0mJiFV
         0deQ1FQOxnPw04U2YT0/4vx1y8VfqBWvu/0I6I+no7MOJZ0blOdpYeNvNBW3jZkIi634
         6IVbqrCkPKikXRt79DeHb1DpAVKJSo6oewQjhMGWUqYcXFDm7G1gPOzUy078KcO7TA1/
         tpkT0yY+AZmy/WGN3d8AQfQs/9Nx6LsYYH1p4MkPACzpix56KHzVf6eyshfUaewUsvR2
         kP2vKt9fopPMeXrgYtg+Gv1pAzpUtZEw7p8GNXlI8PSoQf+tlO/R6lupGnwMxgBp4QC6
         5bcg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=vR83peYSW1oTD/dWXaSppdgUojLhuFs5VZftOLOex6I=;
        b=EOwhxwQy5L9L+bbGMRIkcNu+f+MhvGyRqtrsqT26VAAYz9L4hXxWu9ujwvP7W3Cf3C
         wF+ZR0dBoNR1cS/Yq25s8YEwnsL4aPa8TdLBEhNJGiKGOMGG9yAMvcWMeyc1dyAL6yT0
         q0xDJzsDnr5tD+ckbu9pIkszCokDbIIy6AYBVh5ubnvpJSPsTII4Tg89e3R1qWvKlFOS
         TcykUZSg9EOZzxSDGlxGE6t6Hpf77Iq0iOpSO/I86jtqg1WJA1hFGURoxGcmfxFK6H43
         RivjGkXjmx/7jAQvVVtHJcQ9uTwcNtyj83f2xyyxELAfjDnV7W7jE3JT3LtOnyGkvwyN
         IrJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=vR83peYSW1oTD/dWXaSppdgUojLhuFs5VZftOLOex6I=;
        b=ijsC9L8+3cDyQeLw2q4MV+FMw6QFazwPNAtgws7/5FlgyZ2bjZ29Gcnt6DIXMSyrwf
         FOukN4T/As8M34bMqQ6yicfCn7v5iGcrD/OmzmT+02XsRZ4G7O9kEq9BQdxwgvqkziC4
         HdAKcFk+rBJjtCF4d79Kes0Wf2JUnKJ0TL1DC5G7gLBzV0skQyw8wC8HyStESQC84TFg
         UYbfCm0in5re7kByH+nTOxt7ssbF/xqTedJufbTnpVSQT7zws6P9TSGiRbqIOcEappQr
         raGJ+jFrvLMuX35s8WMdO8UhdPqCv9Ny6I+CPt2JdM3X463sCACH4pgMg2Xc+h51LY99
         mfHA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532y1SbHZqgDRuavllaKK1Ggs6PrHF64NtlIWNfCbWUBERgATjXd
	nXcXc4IqYO3xl3i7kB5rIls=
X-Google-Smtp-Source: ABdhPJzeqOWRvYDgtiLGcLigMtkj/3AhKtFmFmItfgVEiMJYhZwrk9WHluBlw1t/KmmEtZEEeA5vGA==
X-Received: by 2002:a25:d1c1:: with SMTP id i184mr27767917ybg.521.1621945707731;
        Tue, 25 May 2021 05:28:27 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:2787:: with SMTP id n129ls8928406ybn.6.gmail; Tue, 25
 May 2021 05:28:27 -0700 (PDT)
X-Received: by 2002:a05:6902:1243:: with SMTP id t3mr39885903ybu.402.1621945707313;
        Tue, 25 May 2021 05:28:27 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1621945707; cv=none;
        d=google.com; s=arc-20160816;
        b=iH+3WecnmHKYjYSuyXjamBHMjyuPSV8ycEPlENV4FThsEjyS/Kp1QbnVlMBddSEDjX
         8L3O642cz/CaQhcXXeX5gPsLy7rrt09VwpQiuY71xI5PKVDyml0UoVE4Qp1nlH4jyPjA
         RvyP2dOCFCILyJLaIMGUn2GqIhPKrIK9tZIJ7ruJpB4rFTx/DXIXhG7djaWezL32bDLR
         VOsMNtgbkLs/IGBYzW6miF/PPbTPZsoXjax2lBD9KzH+XooQcttINRJvdGCCsQWQFb7h
         kNg9yUaP5C3eB8Osmt+y5VOz+Vm8qZRko0cV7UeBlVyCp01V3SrikGJzgJewGUH894dk
         uXXA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=ZEBquhrvxEEZ+Rfflk8qX6KV/2dhTwjR4HwVe1AUMuA=;
        b=Y+nIIqfbMoGY5wH2TeZYdWnApp7G5ebb5xlkeVub9KsmK3JcbE3/Na+hmUTgla/bNT
         Em03FMzCJsgBMAdYpboL/twFTKqaA6bhSVyx2YClgvfoCmjtM3lJS+cGhauNufnyZng4
         BFgrQ+6WWrBF3PtXv1Kz+Gs6kA7QDKkFho1pbLtI9E8PZHCd/fMMqyy5V3marivrA/49
         Ui6Q3t7iBCqBJQ9NqXDwH4TJj4fMAf4kOos1CCz8BytNLQhRu4ZmKDPqeHTAbjbiVmLH
         cDMS9OBl0+fzSONhiaBAfRqlCWlRIvNZe5EUAPDp8Eu4bNAw/LmEAJlsWzASSdo9HEx3
         H0xw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=oEIBrt5e;
       spf=pass (google.com: domain of pgwipeout@gmail.com designates 2607:f8b0:4864:20::82d as permitted sender) smtp.mailfrom=pgwipeout@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-qt1-x82d.google.com (mail-qt1-x82d.google.com. [2607:f8b0:4864:20::82d])
        by gmr-mx.google.com with ESMTPS id z5si1673482ybo.3.2021.05.25.05.28.27
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 25 May 2021 05:28:27 -0700 (PDT)
Received-SPF: pass (google.com: domain of pgwipeout@gmail.com designates 2607:f8b0:4864:20::82d as permitted sender) client-ip=2607:f8b0:4864:20::82d;
Received: by mail-qt1-x82d.google.com with SMTP id h21so22940205qtu.5
        for <clang-built-linux@googlegroups.com>; Tue, 25 May 2021 05:28:27 -0700 (PDT)
X-Received: by 2002:a05:622a:1114:: with SMTP id e20mr30942517qty.324.1621945707054;
        Tue, 25 May 2021 05:28:27 -0700 (PDT)
Received: from master-laptop.sparksnet ([2601:153:980:85b1:a465:c799:7794:b233])
        by smtp.gmail.com with ESMTPSA id t6sm13292572qkh.117.2021.05.25.05.28.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 25 May 2021 05:28:26 -0700 (PDT)
From: Peter Geis <pgwipeout@gmail.com>
To: Andrew Lunn <andrew@lunn.ch>,
	Heiner Kallweit <hkallweit1@gmail.com>,
	Russell King <linux@armlinux.org.uk>,
	"David S . Miller" <davem@davemloft.net>,
	Jakub Kicinski <kuba@kernel.org>,
	Nathan Chancellor <nathan@kernel.org>
Cc: netdev@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Peter Geis <pgwipeout@gmail.com>,
	kernel test robot <lkp@intel.com>
Subject: [PATCH 1/2] net: phy: fix yt8511 clang uninitialized variable warning
Date: Tue, 25 May 2021 08:26:14 -0400
Message-Id: <20210525122615.3972574-2-pgwipeout@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210525122615.3972574-1-pgwipeout@gmail.com>
References: <20210525122615.3972574-1-pgwipeout@gmail.com>
MIME-Version: 1.0
X-Original-Sender: pgwipeout@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=oEIBrt5e;       spf=pass
 (google.com: domain of pgwipeout@gmail.com designates 2607:f8b0:4864:20::82d
 as permitted sender) smtp.mailfrom=pgwipeout@gmail.com;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

clang doesn't preinitialize variables. If phy_select_page failed and
returned an error, phy_restore_page would be called with `ret` being
uninitialized.
Even though phy_restore_page won't use `ret` in this scenario,
initialize `ret` to silence the warning.

Fixes: b1b41c047f73 ("net: phy: add driver for Motorcomm yt8511 phy")
Reported-by: kernel test robot <lkp@intel.com>
Signed-off-by: Peter Geis <pgwipeout@gmail.com>
---
 drivers/net/phy/motorcomm.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/phy/motorcomm.c b/drivers/net/phy/motorcomm.c
index 796b68f4b499..5795f446c528 100644
--- a/drivers/net/phy/motorcomm.c
+++ b/drivers/net/phy/motorcomm.c
@@ -51,7 +51,7 @@ static int yt8511_write_page(struct phy_device *phydev, int page)
 static int yt8511_config_init(struct phy_device *phydev)
 {
 	unsigned int ge, fe;
-	int ret, oldpage;
+	int oldpage, ret = 0;
 
 	/* set clock mode to 125mhz */
 	oldpage = phy_select_page(phydev, YT8511_EXT_CLK_GATE);
-- 
2.25.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210525122615.3972574-2-pgwipeout%40gmail.com.
