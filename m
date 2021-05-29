Return-Path: <clang-built-linux+bncBCQ45GVI5EFBBHGAZCCQMGQEPPHEPWQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf3e.google.com (mail-qv1-xf3e.google.com [IPv6:2607:f8b0:4864:20::f3e])
	by mail.lfdr.de (Postfix) with ESMTPS id D5DA6394BE0
	for <lists+clang-built-linux@lfdr.de>; Sat, 29 May 2021 13:06:05 +0200 (CEST)
Received: by mail-qv1-xf3e.google.com with SMTP id w14-20020a056214012eb02901f3a4388530sf4723914qvs.17
        for <lists+clang-built-linux@lfdr.de>; Sat, 29 May 2021 04:06:05 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1622286364; cv=pass;
        d=google.com; s=arc-20160816;
        b=i1hx6MOxJJDtelMijz31LcPs2v1AosgFDtnWGU9rLbt5Zghznmsb5hpwxFaSLOg8lO
         /EYxgaS7ORvPqckfdyUlG5idht9F4hwB7FzT1iuhkV5xDDpQcdaNJrCg/391eztvI6x3
         ir7/oqGzCt4a5fUikFj2zF7o6EoKGL7JVR8ZZmfcTU3ViD8P7FKJb4OcKC5MCuNGny8R
         uJuX+ixKwqyVO+G10Qk9qCbUlQ+ptq8dYtyZsNixB82UE0UymCWUIk5jhLhm1rPCNf+W
         rGpTl2tetP/apXkP6x/TONUysfjmx3+ye0SWtXesme9TaioqjC6uI05kqhnySPH+d5bc
         3iyg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature
         :dkim-signature;
        bh=IeQJMhOrkHbXIuIHoulDItNZoh+le1944Cn6B1mSwSs=;
        b=UUEqdeKqjCZnF80snzDu8bSY+YQJ/1Qcx9M73wDrII073I5SbVIL2dFQVzs0jzg813
         1GE7Lujnr/Yv8RNeRElTskRAcqHB008dofc4dg3L16K86FFqNmKC4/1URj6aJqg0vAc0
         uam954lTTkREsJqqHeZWMGG8QTAGnAQKL7O7GxXzoRg+r9ks7QL68jREA+Pr/taZ8wvg
         wNzN0V76J0DnEPVo1xli6F/qyzuNAUBqhrrhSTTipvVXbXg+VkFc3TgT2N93/yNz7t45
         +1XUvLMnF6KHcq3pswyoupj35A3hssxox6xI369EaWaHKA65Fu0z13Htosx9DELOBM0I
         535w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=GBm7RPfW;
       spf=pass (google.com: domain of pgwipeout@gmail.com designates 2607:f8b0:4864:20::f32 as permitted sender) smtp.mailfrom=pgwipeout@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=IeQJMhOrkHbXIuIHoulDItNZoh+le1944Cn6B1mSwSs=;
        b=jnwpCptlxidE4cpTvSazdmtDCkFPWfdliWR2o3InEMGTyOI2aaHGfJ8F2H9ILpm025
         EzscQVRHGCTsWXAqeXwjomQZcJ2z1tT0EaYrTHnkP0CdkpbpnU7bV3Gr5AWgm4Vj2XSr
         HvkGDFVu9NLPViuaS5U0jUGVO3xaVluNP7v9VdktmTx1nrdp+gzGLnRULsIWKOkwmqxL
         ls7zV5oZgmaHbBdBmS2RdF8YR7kv1OfKOZbgHjHtZWK3MLgRrKSaG76BtIhkgdQVmIx6
         Pe0IjQnu6J5OKRtLZmktci7NygEcbab8PyFFrGPtN/SnbOHGMGP2c/DWwgxw5mejhhi+
         hpdg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=IeQJMhOrkHbXIuIHoulDItNZoh+le1944Cn6B1mSwSs=;
        b=acjHHmmyovKYa0gQFXUtOcFe+dtdCloiWeGRBx3Y1G7lranSL/rw5o/HWZ6Mvwbq+A
         CyMxanLbrvf8+0RntQhLYJ3RVH3/72dADjBAeYaN2nCmBuzqgX0EtFMyxOcS87ESZRm3
         BNkFDqAnBL5qvmDT315O0ms4nj7nQTpsUI3zxVxkptITfv3YgKPfMQYdDD0tcSNESqIe
         Yp+OYaZ8aVMyS6ExbpiRNjED4er3b3i7NyDwd1BdE9SKHMCiE1NZUhIWWpuNlZ+fIxuZ
         fPDg8HEafSveC/eAeHz6N5s11MDKazZVAuvCwk7FYnzr5htpbNlKo340mm63sJNESUfJ
         q56Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=IeQJMhOrkHbXIuIHoulDItNZoh+le1944Cn6B1mSwSs=;
        b=U1OBq1Hj4m0xFAJQQuFwUkp9LXmp7QXCgj0YfuhVUdBfkDVxntFcZjh/ATioE+TyHL
         hNHxnkbCoeJHxaS0LESFneYyregpgRG72DdIq69VjUw0Gf1AITLFQm2R7Kyejv07I5Ka
         ncrGJLZgIGuk4sj3d4NZTzjT+OK8GNy8jGLOFr3+qvJjY4Ak/+lnqPQtL76n956/bI+Q
         PnhzLbx+uQDH7d2AGiI3uNn2JLkP1phR3BxSYvMkRhwBFbJzhmx/ktTcJ/9RH82NmTVl
         kBs0G2SH/PW2i0igFVRZ0sWWwpcnwBtobTUM+LMjDf0QbcAGtn9stsijwtBeg6ux8ZjR
         5sTg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533FNAjkXeD7DKiqVqqwt6860RNMhP7nvxyUH0r1sWlXVs4xpeBG
	K7QV/KDvNxLcoxEbYlJG2y8=
X-Google-Smtp-Source: ABdhPJwZXMIYX7lgld7jZdwGb6kC1Ts6sIs/OWzp+X6An3HZtBjVZfnQG2/0IAi8xMEC11yWqI+ezQ==
X-Received: by 2002:a05:620a:2093:: with SMTP id e19mr8034456qka.247.1622286364730;
        Sat, 29 May 2021 04:06:04 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:3d51:: with SMTP id u17ls4295200qtf.10.gmail; Sat, 29
 May 2021 04:06:04 -0700 (PDT)
X-Received: by 2002:ac8:7f42:: with SMTP id g2mr7181024qtk.73.1622286364309;
        Sat, 29 May 2021 04:06:04 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1622286364; cv=none;
        d=google.com; s=arc-20160816;
        b=RPH+9uX7PrXCNwqRUDpaJ8aGPiwuLbs0oL9spH5EesEM+RSlmh17nEiSuTYalINmI+
         4+d1nOOQ7tRa38gWl71Sjmqx4hFrciBVc5dWLE/vOul6gop2TowUj6q8YWGwExY9ZrN1
         vF626zwX2OUZc+52AB1hoOy+fG7l3aM6nIEH8+urGs8PuLDwMIPCHou+eK1rOxEGUTty
         jKzRfCpb9fy25SHKVamp/CbIW4TRzvOobgsGGqCd1jWOJwATZnRwQzp1FU6u2kHx/3r3
         yrnicAFhdi74cC4t/dYuTxCKp3NU20Hx51P8IipVWgMdFZbMRzf4bUR1gB52sru+GMz3
         Nkew==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=BHAPU9WEhe/IzLMZhMUy9J1dZ6fQXj5w6gD2AFHDUxk=;
        b=XeWdvVLd35pivzXGR+yKr/4VPsva+PEvlfxYjEGaYT5/YHav+4sjYaFP8ve6QLehlR
         kDJ+tiBdl+QVRSo8Dw6LzRYFRatNAJcRgkMoFzwL+AL9r8lb/xJyKHTH1FFqs6j4513K
         Yq8sRhSzXA0RY8YNOB3mZ/U8XWJ+Fqw+aXr5Tvp5HYOdM4Y3AWcOKh7JM/NkN9rfs0i9
         el5pdDn3N6VHxroTcEdXMeoqb43QuxboIczrexWp6jU6CSK0zoiwdrwom16uoBAD2FgY
         OV5IKOTwrvvgMhac/ACcDPxapiFtEDrNoCK8LescPSYsAAqyUqTvyXN4kFrVin20R+La
         Eyrg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=GBm7RPfW;
       spf=pass (google.com: domain of pgwipeout@gmail.com designates 2607:f8b0:4864:20::f32 as permitted sender) smtp.mailfrom=pgwipeout@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-qv1-xf32.google.com (mail-qv1-xf32.google.com. [2607:f8b0:4864:20::f32])
        by gmr-mx.google.com with ESMTPS id y24si789111qtm.0.2021.05.29.04.06.04
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 29 May 2021 04:06:04 -0700 (PDT)
Received-SPF: pass (google.com: domain of pgwipeout@gmail.com designates 2607:f8b0:4864:20::f32 as permitted sender) client-ip=2607:f8b0:4864:20::f32;
Received: by mail-qv1-xf32.google.com with SMTP id k2so3210603qvc.5
        for <clang-built-linux@googlegroups.com>; Sat, 29 May 2021 04:06:04 -0700 (PDT)
X-Received: by 2002:a0c:e40e:: with SMTP id o14mr8188188qvl.30.1622286364041;
        Sat, 29 May 2021 04:06:04 -0700 (PDT)
Received: from master-laptop.sparksnet ([2601:153:980:85b1:5af:2aab:d2d5:7c9a])
        by smtp.gmail.com with ESMTPSA id t137sm5328991qke.50.2021.05.29.04.06.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 29 May 2021 04:06:03 -0700 (PDT)
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
Subject: [PATCH v3 1/2] net: phy: fix yt8511 clang uninitialized variable warning
Date: Sat, 29 May 2021 07:05:55 -0400
Message-Id: <20210529110556.202531-2-pgwipeout@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210529110556.202531-1-pgwipeout@gmail.com>
References: <20210529110556.202531-1-pgwipeout@gmail.com>
MIME-Version: 1.0
X-Original-Sender: pgwipeout@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=GBm7RPfW;       spf=pass
 (google.com: domain of pgwipeout@gmail.com designates 2607:f8b0:4864:20::f32
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

Fixes: 48e8c6f1612b ("net: phy: add driver for Motorcomm yt8511 phy")
Reported-by: kernel test robot <lkp@intel.com>
Reviewed-by: Andrew Lunn <andrew@lunn.ch>
Signed-off-by: Peter Geis <pgwipeout@gmail.com>
---
 drivers/net/phy/motorcomm.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/phy/motorcomm.c b/drivers/net/phy/motorcomm.c
index 796b68f4b499..68cd19540c67 100644
--- a/drivers/net/phy/motorcomm.c
+++ b/drivers/net/phy/motorcomm.c
@@ -50,8 +50,8 @@ static int yt8511_write_page(struct phy_device *phydev, int page)
 
 static int yt8511_config_init(struct phy_device *phydev)
 {
+	int oldpage, ret = 0;
 	unsigned int ge, fe;
-	int ret, oldpage;
 
 	/* set clock mode to 125mhz */
 	oldpage = phy_select_page(phydev, YT8511_EXT_CLK_GATE);
-- 
2.25.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210529110556.202531-2-pgwipeout%40gmail.com.
