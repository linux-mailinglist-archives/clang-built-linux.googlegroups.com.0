Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBMGXQXWAKGQEOD5M5JI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x537.google.com (mail-ed1-x537.google.com [IPv6:2a00:1450:4864:20::537])
	by mail.lfdr.de (Postfix) with ESMTPS id F095DB587F
	for <lists+clang-built-linux@lfdr.de>; Wed, 18 Sep 2019 01:26:40 +0200 (CEST)
Received: by mail-ed1-x537.google.com with SMTP id w12sf3159985eda.6
        for <lists+clang-built-linux@lfdr.de>; Tue, 17 Sep 2019 16:26:40 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1568762800; cv=pass;
        d=google.com; s=arc-20160816;
        b=uc6RFOL8aBaGHmb4od8zpV/jAKj2mRB0j0+JzjKjWIbbW+DCLPQxtR6RIPBvPLhxSW
         luPrDVy61+DhMx2Sa1pRntoVVicTF3ykNgHxwVtpyIM1quefihUN4lqWATuW6VqMJVgv
         ZgqQVM1504SAe/v05PwG/WGP6daCNjc6+PFTbvFjU6jMJA99RK2v6fShSH5jAquSYBea
         0HYZadpU/akJ1mILgFafAYiHmxvrwpD0ZoUZtpVK6Pbn3xtepHPJUFfU4EmudcomOSEy
         QG8oVlTg2nm4vrCtMPe6aZMwjqNQXfxC6+NEJgkTbua6lOw3Em/tPRlW42ycFtuI5rCH
         mBcQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature:dkim-signature;
        bh=IvLsmAAuZadguiN8E0obtRKyEPlJbM27iWfrH2Tdxmw=;
        b=PdovsJ+2ArmQl+g7D1+NOZkc1KDeTR/P7ohycD7w59uAqmHC3E0zjGMW4z18z3eDCV
         Ji2JAaaC5o0Eu1ymx+IitLcSaHBP1TP70FU+IK3kkFzjAd9ptHI6t2jutIBHeqVlze2l
         cWuxC/1wxHgC32FFZ+IDtsDXKogsFwNeKNA2KQQlJvdejtFXtGNqTuQfWvSjQpW3ypzo
         zluybEUH2wcQXJ76aTN9PdwBe1dxXrL2uVCbAAQRpL3S96lHwQugHK/ofr3Al0SeKKb1
         9W6Fx48Xwml/Ip4bMdmD8/MdrIKO0eXzbCeoZ7cATqOxBAQneb3X7mJq/yBvJ2qeFfi4
         ZBTA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=uwr4eAZ9;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::443 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=IvLsmAAuZadguiN8E0obtRKyEPlJbM27iWfrH2Tdxmw=;
        b=GnZxocEHsZY3tpoeWQtKcmROeYYBcm2Ft8KbkzT9NLIjoPaCVQI9/e4TsP8u2jKOal
         8JVpNoKb3hepmcYySizz7r/Ro2ZD9lZ/5FfaqjiIeKyx1mUV3A2yAfEUjreN2dksvubv
         ESY5HxG5v9sL9V+uc3HI3ysWz2adnEFPqFNHI7prcSrSV/r1tyoV0tVFtkgZky8oMxdY
         762sYQgrhN61O16gPFRNpEpXOY336DgBHKv9VRok02PyIr595DmQl4Qwh+xRO0cy8tKL
         wc6O4xGG30/cIqx+8ktPY2mZ4QyzDLj687CLTrDmcjMc6FYoQfqluUAihbzq3E95oNZV
         c/og==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=IvLsmAAuZadguiN8E0obtRKyEPlJbM27iWfrH2Tdxmw=;
        b=ezNeZRHrjQe+t5HK8aB/HLXmgtfyRfqP7EynOQMsrjN+NYVnsXBp92cZkOAedGINwH
         5trLKS/gBCPyNYIWK/TofXT9yAROjIb8QAB6854cztfDZTE1hb0AGBKN9KZ26DGdKgnV
         V5P76TAwwCkNGnpboEf5X8FRRnM2rIOhU3p+tAKhH7IN48fJzLvvBEFG+Dt5zYLo7dVd
         NGQRI+MNumhLkpMMvL2rAwTG5fPbxmSW/OmD9nTOWsCLHSHSwMXqY8h5qMxdCukxXnAO
         /6Xa6+p3IpzDPxv5/w/EjM/01Fyw9UL6xjHXah3Y9L7SSUS3x2iB3WvNabsLSZx0ibmG
         5Eyw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=IvLsmAAuZadguiN8E0obtRKyEPlJbM27iWfrH2Tdxmw=;
        b=uNoFCFP7npBnoCQyJgT4pNzx3l1RqkcE5SCRwM+r12BOyWM2VvXDgWSrhqpa5YtvMZ
         X95HXGMVRk3piMOdO04iVQbLuFyg3vIvTBBjLm5W+sNutqiss+lwd7JqVgc/q0HPM+b3
         afBRif/tzVvIPjt17Ve5QSG1IxSOtiZBZfkNJ/nDl6MJs3TB0B0seh0aMsuWhPSYQKPz
         oTs+xCWXH21qZRE5HEUnwS6HyEhYNW/8Z3CPtow6efXoccuFaKQQ9H171BwjiBspblss
         CjDJNCODWr6pk58BoSH427WUACtuAZ0Txeut57UDRUOT1Yt5oiu5YtLv8MD440lKGU4x
         LR1A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXsm8OkNFUUCG7UFphjEkKmp246wKSwP+FFRuDa7hVpDzBtnmia
	JIIKacbfo+8SJiTdgA+4FqI=
X-Google-Smtp-Source: APXvYqykTYCI6o9AcdeAXtHUeW1OhTukU7kixvzCcOvObd3Y9f+r+hgiqr194cMjAwbm1n7Kerx7Vg==
X-Received: by 2002:a50:e611:: with SMTP id y17mr7395049edm.66.1568762800684;
        Tue, 17 Sep 2019 16:26:40 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a50:9796:: with SMTP id e22ls1236563edb.14.gmail; Tue, 17
 Sep 2019 16:26:40 -0700 (PDT)
X-Received: by 2002:aa7:c897:: with SMTP id p23mr4024247eds.199.1568762800319;
        Tue, 17 Sep 2019 16:26:40 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1568762800; cv=none;
        d=google.com; s=arc-20160816;
        b=m4S2Lg1eMcZQ5gwkcTqIuU7V8U1tY4Qy03SZv+xTZDZBpz5niG8r2OJsEaCzmfXCQD
         Hd7AxBS/TYAJLGcMRrrQ2mD8mp92+E7EWca6DizwP3ZRnLJ5TzRz2lSj2c5fzzv6y3v8
         cmxqCXwiQyRv4hn0NrBa3sQzk8xusWKnKWLtDCyz0uxr4APMFnPA887mKltgMkhnguXv
         hV9i/DymS3IwnQGISZuCJHyAfgOdZfu/TtGkB6CWcVrLC70paoxFIiZdRznSHIaKadEq
         0fHqNrj1+VcCAUE5bFfGja8J/Jt2qxii20DuAdZvzljS+qdnDUqlB2QEGjqVEVpm/6RB
         7abw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=ifcz8bMK/kKMhqqQf2aNBxPpf1zyv3RqW2PL7DYTBms=;
        b=N8a7GI7XJJfbFks0DiXBAwkCPoL3jbCIMXBE7CGDC7uTQngsozqzXtWA5DjP9mBtgd
         QT5x+FgHHCsx/qSrre9Kin1jVd1pxjZTsSxsQPIKG7qMA/HVe1ANYOln0QCi0DYcNv58
         VtpMq3XQzJRZTAvSdXC+9Zc60k8UPznZMML7HODYvKav5IpBRb0glIAGa87mZ8b9TBl4
         F4ntdBdLOX6nzEOxTekYxauTeBYOYKKRbgQhrh5/pYVtcwyJS4DrapvVUc17QX+w7Jz2
         Dul6+z9ruq9CKnpobKRfMbHzVqiWI5tRHbG0mir5LucT77Frt1Pzqkt/3V5itrsE1zgO
         VXGA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=uwr4eAZ9;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::443 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-wr1-x443.google.com (mail-wr1-x443.google.com. [2a00:1450:4864:20::443])
        by gmr-mx.google.com with ESMTPS id v25si285657edw.5.2019.09.17.16.26.40
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 17 Sep 2019 16:26:40 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::443 as permitted sender) client-ip=2a00:1450:4864:20::443;
Received: by mail-wr1-x443.google.com with SMTP id l11so4897162wrx.5
        for <clang-built-linux@googlegroups.com>; Tue, 17 Sep 2019 16:26:40 -0700 (PDT)
X-Received: by 2002:adf:84c6:: with SMTP id 64mr656942wrg.287.1568762799840;
        Tue, 17 Sep 2019 16:26:39 -0700 (PDT)
Received: from localhost.localdomain ([2a01:4f8:222:2f1b::2])
        by smtp.gmail.com with ESMTPSA id g4sm3869568wrw.9.2019.09.17.16.26.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Sep 2019 16:26:39 -0700 (PDT)
From: Nathan Chancellor <natechancellor@gmail.com>
To: Shannon Nelson <snelson@pensando.io>,
	Pensando Drivers <drivers@pensando.io>,
	"David S. Miller" <davem@davemloft.net>
Cc: netdev@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Nathan Chancellor <natechancellor@gmail.com>
Subject: [PATCH] ionic: Remove unnecessary ternary operator in ionic_debugfs_add_ident
Date: Tue, 17 Sep 2019 16:26:16 -0700
Message-Id: <20190917232616.125261-1-natechancellor@gmail.com>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
X-Patchwork-Bot: notify
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=uwr4eAZ9;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2a00:1450:4864:20::443 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

clang warns:

../drivers/net/ethernet/pensando/ionic/ionic_debugfs.c:60:37: warning:
expression result unused [-Wunused-value]
                            ionic, &identity_fops) ? 0 : -EOPNOTSUPP;
                                                         ^~~~~~~~~~~
1 warning generated.

The return value of debugfs_create_file does not need to be checked [1]
and the function returns void so get rid of the ternary operator, it is
unnecessary.

[1]: https://lore.kernel.org/linux-mm/20150815160730.GB25186@kroah.com/

Fixes: fbfb8031533c ("ionic: Add hardware init and device commands")
Link: https://github.com/ClangBuiltLinux/linux/issues/658
Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
---
 drivers/net/ethernet/pensando/ionic/ionic_debugfs.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/pensando/ionic/ionic_debugfs.c b/drivers/net/ethernet/pensando/ionic/ionic_debugfs.c
index 7afc4a365b75..bc03cecf80cc 100644
--- a/drivers/net/ethernet/pensando/ionic/ionic_debugfs.c
+++ b/drivers/net/ethernet/pensando/ionic/ionic_debugfs.c
@@ -57,7 +57,7 @@ DEFINE_SHOW_ATTRIBUTE(identity);
 void ionic_debugfs_add_ident(struct ionic *ionic)
 {
 	debugfs_create_file("identity", 0400, ionic->dentry,
-			    ionic, &identity_fops) ? 0 : -EOPNOTSUPP;
+			    ionic, &identity_fops);
 }
 
 void ionic_debugfs_add_sizes(struct ionic *ionic)
-- 
2.23.0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190917232616.125261-1-natechancellor%40gmail.com.
