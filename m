Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBTOEU2EAMGQESKPQRGA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf3d.google.com (mail-qv1-xf3d.google.com [IPv6:2607:f8b0:4864:20::f3d])
	by mail.lfdr.de (Postfix) with ESMTPS id E935D3DF618
	for <lists+clang-built-linux@lfdr.de>; Tue,  3 Aug 2021 22:08:46 +0200 (CEST)
Received: by mail-qv1-xf3d.google.com with SMTP id j13-20020a0cf30d0000b029032dd803a7edsf49372qvl.2
        for <lists+clang-built-linux@lfdr.de>; Tue, 03 Aug 2021 13:08:46 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1628021325; cv=pass;
        d=google.com; s=arc-20160816;
        b=qofGc8Ts02/JvHFkjgJkCzDM6LhoaA628cnMAL0paYvSq+DRShFysY5sbhJrtmsqQ7
         UeGjYCGxt1PoClRj1TxjYutAiBIRC5AQFeGX6HuYQyMiTfUTc3n0NgVJBKpg1EqXQ7/q
         O33BcAwg2qQjWoSM7eI2QOYMmdii9JB4ev5jAHSHYoOu6nzTING2c54Ud+5dEA7RqkYY
         5OwE8iLRbSEZISBw5w/aYL1aOEFGLi/sTBxUb3DAasd5RQ4px1hO7Gxgado7h8pQpCDf
         je/ATdY4xeOIMA3VM5tN9nbCemj6NJTCwTw6bF3Yi13cRPYqO0AlMYeJgzMYM0BKi4uv
         9JaA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=JML7MSkiAwyVGNOXwKsdZrYbApZKdnCCyPafBF/aMRM=;
        b=a2bN8vqlbrkpXTNwWpY2Qg+XNhrL+5WklcqmYRIPpi2n+391s+6TD59XtH5il1svvR
         BmAjO6j9Y5/cX6qbhlL0zpoihi8M4Xc7/hcRfRx+r1lGt7Bv0Vkz6a4QYDqegBPSU+er
         xzA3JPygBp65wRnmI/4udbOlZbXWDDjcx1BVRzbF6LT+yEFKXNlUTvoHd/mDwE24TrI5
         SHxUrQ5nS7DaZI6phHSo2pzskjB6xJOjU5vBY/sLA5OM/dHAbmuZsA3GruVgqZHKs101
         xYxAJnzO/KqVYRrhjZtTt8GOTGUzqfIppeC4GvhgGFVOTGAsXlFb5cvPTiV2x3Hwv431
         ppdw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=BLfrZWpW;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=JML7MSkiAwyVGNOXwKsdZrYbApZKdnCCyPafBF/aMRM=;
        b=YgEFJ6dct4/1Za8ogutUuIKtCkuHZkKtUqvgwkDUzyTs51lBJkSM3dIX8qQmRObBgV
         y04bQfkJHmMi7bslEeVIwhO6nrCLTJNhjKzzWbMSXf+PMP5mljtVUIPAtHVSbqoOvRJB
         +B4j/bdNy1pLrzR+WUfAkHz1vvAw5wVI9nSz3bcaJw/Z2eyUU48r5O0LWKzsiPTWonOl
         OY1SQ4S3jYUDKb67RXAA3UeZnOidf4fU/0Zq8M+yopPqPtWj3bwyuHgLbHXT1aatzAjm
         rEJ3E9dYWRCtlSDgrd2sHrUUPLpaHGfd9rxiH+tcEIbngj2SffYFLYwPwcTlAfsbraX0
         BSwQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=JML7MSkiAwyVGNOXwKsdZrYbApZKdnCCyPafBF/aMRM=;
        b=tizk3OetP2vy/iZ6sozBrt/aS4EQ+PEvLAMvT72w+wyhXve0LInJ+4xpf+gMSyx80G
         7FX0JBQeLyVih8Z8TKt5k2S8Aq6mfcBLx+0FjlRj/ImO/1vXVcvjAjSE8LC3M6OSMLwC
         Yo4ElIF6VkBRKOTbRAmaB+pOZAuVR3XxU3nLUQ0yX/K17goMWOkCUst42GcTl0I+SUYk
         oDchOGaceOZHtJbFyaJuee9ERz03vpu+ck6AWkXqyMYK2s2fUXgfmm3gvcduW+zu3n50
         kMI2Dkunonxv+wMg6nCyY+hEGQKet7PHDuyZ15xnB4ZJbpHMhhdg4+0WzQUSRDh0sXoQ
         ZYCw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533FH5a5y5zrnz6W5HlXkOXC4+OApe4OzWk/5o9/ZkVVQ+9j35F6
	liOT6JeVCDE8aCCLKEQY5y0=
X-Google-Smtp-Source: ABdhPJxfiHJ4ZtG3rxIDvY38J+Vcd7F2ki15AKQVi7TfLugYQ1zzbNOst6ijiyXWwEKk7X6s01980w==
X-Received: by 2002:a05:620a:16b2:: with SMTP id s18mr22065190qkj.446.1628021325617;
        Tue, 03 Aug 2021 13:08:45 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a37:61cb:: with SMTP id v194ls27576qkb.4.gmail; Tue, 03 Aug
 2021 13:08:45 -0700 (PDT)
X-Received: by 2002:ae9:f312:: with SMTP id p18mr22541440qkg.5.1628021325188;
        Tue, 03 Aug 2021 13:08:45 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1628021325; cv=none;
        d=google.com; s=arc-20160816;
        b=Tre0HJUb3OdkybsIaJZnfV3ySRymFoSxEXPyOeYsugrxnk2wz3XDlkJu+3AjFx2cXf
         35CANPq3IHb5GUfGw/0M1iMzwGo1gHTRO6IgOkthOEje5f9tJd7lvP+mX6aLVW1S9PJ3
         rj1yiYHOTzSLZVs0Yn8l8YNelw09K0BIKG1tbA5IAHbymrl911fy4pJ01EkhOP83OJ2y
         nIGK9fdTG9273uwVSqz14AP7GwZuMfu4Zx/X5pGeNrwEm0c4EZdkRJwvzHa9L5gASZlO
         j9etLBqahzTS3Nul3he1Ss8gXQCEzXZQfzFXYaoBjddZF1pquZ99eGPfUuUsHwaF2QZx
         S6+A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=A2xCJj4mbiwZwbqbshZuvM9+lXym5BsclCiNx9+na9E=;
        b=lzoKS3yg4OsBO3UlbpKVKDg8MSZJR1AgZeo2YZqrui7/mNhl0YPVYB/ulQLjYKMiss
         78LO0qg6/dm/i3eUlfCVlqg8KUqQgtcfePoOTLTkAPyBOBn7XLqm7dtmp4VA7XVKlWWG
         8loBnFLLXQrAbqk43f78UewVfrvQdN/BYt46fBbz22rbR1+QcrVQyz3BJClmfiGQn90C
         QWk+jMWyBWozBcH286N/pySBLO8QSJltvwYfg0EXedRlCK005KS/+ZoNHvKLUzfXGksj
         OYaANn3olAp2Ja8tXVsxNgWchsxkytwfl3HtZ/zpN0dQZPmwzD4MjgAIeSw5gEFSEAQe
         IomQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=BLfrZWpW;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id o13si3354qkp.0.2021.08.03.13.08.45
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 03 Aug 2021 13:08:45 -0700 (PDT)
Received-SPF: pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id B995F601FD;
	Tue,  3 Aug 2021 20:08:42 +0000 (UTC)
From: Nathan Chancellor <nathan@kernel.org>
To: Bjorn Helgaas <bhelgaas@google.com>,
	=?UTF-8?q?Krzysztof=20Wilczy=C5=84ski?= <kw@linux.com>
Cc: Nick Desaulniers <ndesaulniers@google.com>,
	linux-pci@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Nathan Chancellor <nathan@kernel.org>
Subject: [PATCH] PCI: Always initialize dev in pciconfig_read
Date: Tue,  3 Aug 2021 13:08:36 -0700
Message-Id: <20210803200836.500658-1-nathan@kernel.org>
X-Mailer: git-send-email 2.33.0.rc0
MIME-Version: 1.0
X-Patchwork-Bot: notify
X-Original-Sender: nathan@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=BLfrZWpW;       spf=pass
 (google.com: domain of nathan@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=nathan@kernel.org;       dmarc=pass (p=NONE
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

Clang warns:

drivers/pci/syscall.c:25:6: warning: variable 'dev' is used
uninitialized whenever 'if' condition is true
[-Wsometimes-uninitialized]
        if (!capable(CAP_SYS_ADMIN))
            ^~~~~~~~~~~~~~~~~~~~~~~
drivers/pci/syscall.c:81:14: note: uninitialized use occurs here
        pci_dev_put(dev);
                    ^~~
drivers/pci/syscall.c:25:2: note: remove the 'if' if its condition is
always false
        if (!capable(CAP_SYS_ADMIN))
        ^~~~~~~~~~~~~~~~~~~~~~~~~~~~
drivers/pci/syscall.c:18:21: note: initialize the variable 'dev' to
silence this warning
        struct pci_dev *dev;
                           ^
                            = NULL
1 warning generated.

pci_dev_put accounts for a NULL pointer so initialize dev to NULL before
the capability check so that there is no use of uninitialized memory.

Fixes: 61a6199787d9 ("PCI: Return ~0 data on pciconfig_read() CAP_SYS_ADMIN failure")
Signed-off-by: Nathan Chancellor <nathan@kernel.org>
---
 drivers/pci/syscall.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/pci/syscall.c b/drivers/pci/syscall.c
index 525f16caed1d..61a6fe3cde21 100644
--- a/drivers/pci/syscall.c
+++ b/drivers/pci/syscall.c
@@ -22,6 +22,7 @@ SYSCALL_DEFINE5(pciconfig_read, unsigned long, bus, unsigned long, dfn,
 	int err, cfg_ret;
 
 	err = -EPERM;
+	dev = NULL;
 	if (!capable(CAP_SYS_ADMIN))
 		goto error;
 

base-commit: 21d8e94253eb09f7c94c4db00dc714efc75b8701
-- 
2.33.0.rc0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210803200836.500658-1-nathan%40kernel.org.
