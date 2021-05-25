Return-Path: <clang-built-linux+bncBCQ45GVI5EFBBD56WWCQMGQEJOPQSBI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3f.google.com (mail-io1-xd3f.google.com [IPv6:2607:f8b0:4864:20::d3f])
	by mail.lfdr.de (Postfix) with ESMTPS id 27298390A83
	for <lists+clang-built-linux@lfdr.de>; Tue, 25 May 2021 22:33:21 +0200 (CEST)
Received: by mail-io1-xd3f.google.com with SMTP id y11-20020a6bd80b0000b029047317d1c991sf12177969iob.1
        for <lists+clang-built-linux@lfdr.de>; Tue, 25 May 2021 13:33:21 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1621974800; cv=pass;
        d=google.com; s=arc-20160816;
        b=GIgv/hVYbQ2TrRssrR+xTCPsiTuMoqiG/yQmOu5fhYjZlw3oK0unYFmh8Bpnlj4xfp
         LjadQ4qC48M3UTHlGLCAjDjgKVGQD1C6c7dn5eUOfG7Fsj6Zz0GzbxZQZRrXZTSgnd8w
         saQgInuKZQ7aPwnEkCtEp6ECfKGiinpbbcKSQXpIqdZMnHp3rxenEX3OS5nu082ObC/+
         Eves2pD/YsMWc30p3b/5z4GYZVNfg/DJdNF3Uop6y0jHyJPMk1HgQo4sk72laQqfZqwB
         92Y4PyxSTneB8Ogs+c5Zsj8gwKkgaovTeXaJ7xLJxqnGYJIvtWSptSueK/vZbPOxfxIg
         8Xog==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature
         :dkim-signature;
        bh=hnTn+iPoOWdqs+NfDUJkoJIOMHgXjGG1Ba4LqA/d3qU=;
        b=eHzinvsOGRBA8m9zqAEnWgXRHO47spdsu4228TFJLnFpZgoy7OFcES3tc8tju5N5W1
         G82adctZHJezvVegacuuZbORFF7q2skvbiB4kIMcHct7Cvn+uu6Qn0KR0l2GK4xW1pPe
         2+d20o3mlGkTVN4CuVQExDz39vM3zzKsgAs6ngF+AkscJaUDUVbu1dFZ0wBZtrFgvt6t
         A+c8h3vaB5ynhnLij+kFmzxXMw44O1oMHSnfW0DHekBuZFUVvGUCQElOTW6Q1DQsYw5p
         PlB9sbv75KCDTE5G03PUGKL5BPJJK6EOOidKipmZz6xhTMc3MkLHhIcZm1LPcB7UZVZi
         TF+g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=hWuUK7cl;
       spf=pass (google.com: domain of pgwipeout@gmail.com designates 2607:f8b0:4864:20::730 as permitted sender) smtp.mailfrom=pgwipeout@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=hnTn+iPoOWdqs+NfDUJkoJIOMHgXjGG1Ba4LqA/d3qU=;
        b=FY/ljEJNZqqczs+zyqfwtKIMVP6JLT6H8524lJcWKvyORlzvcOYKAye53udAl7B/b4
         F5pwliX24j6NBhtxazegcJXjFQROWnOJy3mgVlfTNCilSpt2yvn6RazMm2OoXpy7/Vls
         +f8t3LEZZfn1eIZZ3F15DdKxbh5wC9JumycozHmekQCAJepLlNl/53RQwD8MKzWt012q
         4Ae3pN3GYrI8+q1hJKcpxqYwEdBQzZ3WnqnGchy6e9/wEroN49ZEqIjkyK7JkrM/wx5I
         o34OmK4VA79uF7GiqTFWUX/LPqiJKVhy0kTvT8xsmToB58rIJyP43g2gqbesc43M0cpN
         nh3Q==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=hnTn+iPoOWdqs+NfDUJkoJIOMHgXjGG1Ba4LqA/d3qU=;
        b=KrCn9tGrf1X39M+84sHaXJLjjnOPWx9VmSoB5EZqb4dTvxzvujouqDfucaKvJPh19M
         VXiMaTr0Eb9S0UXnmfTcbH1hp1NPNHPQBecw4hMXmug8P4WkB4ZbeYBLmftfR/+0JY0B
         NR5klVEFL09K+4+HBlfiGtphgdYfr9zgevnVPXPB6mXBJ7lDEUJBRv9dhqmQlcbZ56OF
         BEJSyAih9zmIZYwEAdOEzU+cst2B8cJ+LLUCNXJwIpZVNR8HoKSqa0UWoRZd5eX1uEf1
         RDdXyqWRCrzjEAm8vt2yw3PgcVyCU8t3N2OVru9hI5+bx12O6eQ5PX2qY36RyUwqj6Bq
         lPNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=hnTn+iPoOWdqs+NfDUJkoJIOMHgXjGG1Ba4LqA/d3qU=;
        b=fgTlVFKqIvQuwg6khM3yacHM2FDsYbk9VN9bE5MY+hkkbjD1gcp/90z5TAXE6O2LuI
         VDcTdG4tTASaZP+hQeA/GAaqqQg8CWFlgjTa/NJ44SqICWkjWM1A7N0DoO8mvsEyDhZy
         jWyuOixikexMHZxthuHlo3iWeBCgvuoTTtH275Fe/GtpW6TvDpXgE9no3OV/5RBqlQyQ
         ryzawKL1sK3hOu+BCkwCCk1sNkyNQ5cgzED2EsUwYoporPy+2N1BB9HCHy0Tfo+q12nD
         HTaX8APwLC7LF9CNib9ZmNdFtEUEKGe+ynk8Uudh0lokhizkbPotqGwbSzo3Kh8OgHIL
         Juzw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531TljLa++IYPZxs7ucOSUftdkIW8NksPkNQ6VeYwnBNYSs9QXsn
	Pz/ZWC0VF06QIH6ohU7VYY4=
X-Google-Smtp-Source: ABdhPJwMnddvqJQkbJ14JNeU5h2IK7plUwfzkzH8ZzUjRJmj7wxIXPypdDHOeUpsG8ql0MAxDzabjw==
X-Received: by 2002:a05:6602:1212:: with SMTP id y18mr23225969iot.189.1621974799853;
        Tue, 25 May 2021 13:33:19 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6e02:1545:: with SMTP id j5ls1678521ilu.6.gmail; Tue, 25
 May 2021 13:33:19 -0700 (PDT)
X-Received: by 2002:a05:6e02:ca5:: with SMTP id 5mr25631112ilg.207.1621974799473;
        Tue, 25 May 2021 13:33:19 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1621974799; cv=none;
        d=google.com; s=arc-20160816;
        b=hFl0qf9EG3dPKVSbnufZKNU4bdevyP/oTXTJ+24NWEsCvyRFFkKgSYoEIGDj5pge1E
         60fxN1+auYtx8L86VNQEep2oV8b5bChjOW2dxh+Mo/wNvaoJaP/WvlsJBOMhApNzzUBJ
         QywlzIWpEb1+f0UUX+TWQfMo8Ys70z+06wKX6OTqpO0rhMuPXgGYQ0ZLSt8AK2OQ56WO
         wegWYBcdiYwnkl+1ezPjhBuFV3DNFeiKIfqhamgFjsRR5XwZlpNWytKTv4PJQKwi1Opx
         J39A5MOHFQHGssbmGxO1tjEwYpedA+pToQ/Z1487nszOHQL+jjbiW62vp0aVk3O1c3RS
         1rDg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=RaM9ZhBOq1ip9fI9c0kNmvrXXOfvrTxqLTaDnXDsklE=;
        b=IT4chaybwk5RjIptWwbCSh4nqVQzhf9eyLUznyNEVpdIRFc9O0AG0ARG52pFPMySN0
         X4ERU1YyYweesKLXOlohVJyF/x0wchZyUipDYXkRzK3Fumz49RqK9y7/rRCnVy6Img4j
         6HXQk4H4DM8Li9h97VgLICPTlMhQP9W8TBwhHDVOE+QR24T75rtdUD8CZ9/+cjvovY5Z
         9RLqj5mXthCn0n9xvSri81gzk58pl6rm9RBS4HEncRAiDn3SYhfMMPpwYCdWONYIAW+z
         vIHvVdKmOPdN7ywgFP+yhOkxLV9lw+A85gM0WSYPQvjQsrusk/mIsffcBE3Gctmx9hMj
         H4iw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=hWuUK7cl;
       spf=pass (google.com: domain of pgwipeout@gmail.com designates 2607:f8b0:4864:20::730 as permitted sender) smtp.mailfrom=pgwipeout@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-qk1-x730.google.com (mail-qk1-x730.google.com. [2607:f8b0:4864:20::730])
        by gmr-mx.google.com with ESMTPS id l25si1943417ioh.2.2021.05.25.13.33.19
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 25 May 2021 13:33:19 -0700 (PDT)
Received-SPF: pass (google.com: domain of pgwipeout@gmail.com designates 2607:f8b0:4864:20::730 as permitted sender) client-ip=2607:f8b0:4864:20::730;
Received: by mail-qk1-x730.google.com with SMTP id f18so31787595qko.7
        for <clang-built-linux@googlegroups.com>; Tue, 25 May 2021 13:33:19 -0700 (PDT)
X-Received: by 2002:a37:a3cb:: with SMTP id m194mr5305425qke.372.1621974799180;
        Tue, 25 May 2021 13:33:19 -0700 (PDT)
Received: from master-laptop.sparksnet ([2601:153:980:85b1:a465:c799:7794:b233])
        by smtp.gmail.com with ESMTPSA id g4sm159312qtg.86.2021.05.25.13.33.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 25 May 2021 13:33:18 -0700 (PDT)
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
Subject: [PATCH v2 1/2] net: phy: fix yt8511 clang uninitialized variable warning
Date: Tue, 25 May 2021 16:33:13 -0400
Message-Id: <20210525203314.14681-2-pgwipeout@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210525203314.14681-1-pgwipeout@gmail.com>
References: <20210525203314.14681-1-pgwipeout@gmail.com>
MIME-Version: 1.0
X-Original-Sender: pgwipeout@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=hWuUK7cl;       spf=pass
 (google.com: domain of pgwipeout@gmail.com designates 2607:f8b0:4864:20::730
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210525203314.14681-2-pgwipeout%40gmail.com.
