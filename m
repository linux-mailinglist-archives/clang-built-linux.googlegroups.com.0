Return-Path: <clang-built-linux+bncBAABBUGOUX7AKGQEDCNWOSY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa3c.google.com (mail-vk1-xa3c.google.com [IPv6:2607:f8b0:4864:20::a3c])
	by mail.lfdr.de (Postfix) with ESMTPS id 915B22CE1A9
	for <lists+clang-built-linux@lfdr.de>; Thu,  3 Dec 2020 23:31:45 +0100 (CET)
Received: by mail-vk1-xa3c.google.com with SMTP id h22sf1250781vkn.22
        for <lists+clang-built-linux@lfdr.de>; Thu, 03 Dec 2020 14:31:45 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1607034704; cv=pass;
        d=google.com; s=arc-20160816;
        b=eH9p7/ESuQLZvZyiEdYe9e2eJYgq1XH3O/G4dUZhOUoofS/V67y9UcnAqNrEj5UxUZ
         L379BMoHmfPN/pOVzTU7M09OnjfUOGj8LA5l1+D2WNlSacONch12Tcue8Q4fZsbnRt1w
         TPV9EDyg2q6kPwhK5qVC+XXSCxIAtbwH48hlj+M4bJC92wROG4iQXiWgBMSG+7ZTI8Z4
         0v5prSJK2nq4nfXD5TMgp88Dr18W9jyoxhBH3v8Ig0cDWyp6r2hkvhXxOigi9S4ah+f0
         l0BsZtU8UASRg8zU7/R/8XDdiQ4JiOjByANi9pdqIeg812pQ9OGIVnDUzqNxna+kujdM
         MyWg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=frPIpqpYfKxYwLaddjxpexjSm+YOo2mKfx5Z1Uf9mus=;
        b=IcfHp1wRHgmoROMnuFSDvPPHwzbHfgxkEFAscMz5Ma5nvlWXI23sPACng9UhweeHsd
         txB0Cs2Psm5FirAUU5Ndau/Wb+ejrpglbbgO5y2tAC2+z3K8+RSpaA6c+sy2aXbJkcWM
         dtVnS1aIKW7mbIO1OfqeQfW3Q7uVzKNQqxXNG+cbU5FsrHaXL33T8To80KhyQXi66dxA
         GcLjoBzR4hONm2mBsUI36SnJ2hcjSONeBLuTg74QM1mJ8vE71EKONXYkSMVYqqOiNIRK
         PnlhcVhps8ICHCQOS4kVr5lO0SXDUf1Ua4ERgl3l6thZ+OnAOdkkRVPvbbBYSCNDVjEt
         wfIw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=arnd@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=frPIpqpYfKxYwLaddjxpexjSm+YOo2mKfx5Z1Uf9mus=;
        b=mjYAfD4+m1iaSqObApLhsb+YD/v/lu0LWmJZxgWeMTTY1rwMAwqbDoO0fR+VWrHEsj
         mOj88zWwja4tubGv05RyFVmudk10VD7qqEIR30GZgibgZDlBTWZp+wo7ksmZvlQs3UHT
         M9aOe4kJuh3stu8iMMRtjsbbiaB/gZFvWTm80HUmdyrFRzZOEm4ESVvWZ1brj8C2iPua
         lkqFGUFD367ezrVfr+vGt3/yv8ioGBM8y0d0tCvu7Rg/IIlPykXSdIYUDQ4QTw9mXN05
         Q4N6p0gpSPPn0WWOD7ZwKdX67hNC9/9E0XpqiNGb2bD5uEALgf+Uyltu6YfhYNDhnISE
         77SQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=frPIpqpYfKxYwLaddjxpexjSm+YOo2mKfx5Z1Uf9mus=;
        b=GRyV8EiqZPAYYyLho0icyE8YLWsbyKmKszVSAOqbO3cI5fGNtqdg1q7Rt1YH6KyA1K
         NhUZzFHR4c8w6WrnQlBibgTrl7moeN68wLFV5a+52K8b+FxcVJa46wAR0n644U1l2bka
         t/LxNGO96/Oiu7hoHx+b4QcvJjJXFxwxCnyl6E+Mc8vsA3570cGTAq3agKyjTa4WN5rR
         BsdWRGoGm95bCBftPQY9wvTf7+yRpd0NCRWZ3zclZNNQE5BMCtLPm6ksgYl/qhG1jE3C
         Jyqe6jT+CGntD4b0xYJKIjBrb5q6Xet1s+tOU+N53G3Uv0qY5ZQXpGs4hqL9l+6lBeTu
         C1/Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532JrIrMs+P9WQQ1HdGeHHLO/IyW/cPQVvND2ZXfQ+jOlCYUZAvX
	6iYP8biPOjl2p4iOmsIoeQs=
X-Google-Smtp-Source: ABdhPJyofPneQDucFnf7n+P9+3tvPA72FrgtssUVlevXmZgzYROdc6fBeZBKZ+tTuheRaobdh5BwMA==
X-Received: by 2002:a05:6102:31bb:: with SMTP id d27mr1519472vsh.56.1607034704628;
        Thu, 03 Dec 2020 14:31:44 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9f:3fc6:: with SMTP id m6ls582554uaj.11.gmail; Thu, 03 Dec
 2020 14:31:44 -0800 (PST)
X-Received: by 2002:ab0:14ca:: with SMTP id f10mr1174545uae.142.1607034704312;
        Thu, 03 Dec 2020 14:31:44 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1607034704; cv=none;
        d=google.com; s=arc-20160816;
        b=lGb7kjS2gL9z5oiYOHTLzIEmla2N5HEsXjdOljMAFIHQ4aohU2fn0VHBxc/2gIiaIu
         A768jEcx6PHWlcwKtakisYk71gwAdigeDOb3gu94JJGhdJ5NmvwLTxKAvuh/nOivR6Tz
         of96ZXYxjpGSVl6iMoKfFl3B68C/u60piouQbEOG61L5hRMsZzaZeehlddlM7nxTkLUj
         /vU0NtQcS7mZSuXD+WVFqzsk5RIhSKw8iMKo13/KGde5F74nL5owIfNRUbytcAOZ1Y16
         Qc0c0l7vuDvQSGiLLtHZIhBj0qjs452/d8/XMuLz7wDmykQH8Q1zN/H+jdoTU1noYSct
         5saQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from;
        bh=mgXwATczP/mNTBAJAeCNKgUGxpQOFQCiky7B7MucNWU=;
        b=mldcRxxb/QSeM33ASy+0h/A163m9ycsnsWbXZ2wQLGtZpP4Dk7oiH6wKvATjgJPG0W
         Eg4hGWDxLC6tUzR95wjm5/KJlHJwhrnQ3biHB6MixVVJ/ww/jen4bfK+7rG5ma14k4D/
         zTvRT8RNbXPb9IOBhyxcgWKyFgLBPampzkdmv3nP+3uWlCbwxuB5QzgdVjkhrlrtXsnX
         ozZ0FGCr/fu9mrWaSAtFoy7C+1X7LHsRCL6MFc7/IvHyRCDTX/h0CpDKuXcgnB3cQav1
         7Yc0w3zs9GVQzFGwxzdLw3jwTxr4Q3AAvekqlZ+89Wumbef+6EccC1iVFF3X44hefusp
         8KGQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=arnd@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id y8si59887vko.4.2020.12.03.14.31.44
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 03 Dec 2020 14:31:44 -0800 (PST)
Received-SPF: pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
From: Arnd Bergmann <arnd@kernel.org>
To: "James E.J. Bottomley" <jejb@linux.ibm.com>,
	"Martin K. Petersen" <martin.petersen@oracle.com>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Jaegeuk Kim <jaegeuk@kernel.org>
Cc: Arnd Bergmann <arnd@arndb.de>,
	Alim Akhtar <alim.akhtar@samsung.com>,
	Avri Altman <avri.altman@wdc.com>,
	Stanley Chu <stanley.chu@mediatek.com>,
	Can Guo <cang@codeaurora.org>,
	Asutosh Das <asutoshd@codeaurora.org>,
	Bean Huo <beanhuo@micron.com>,
	Bart Van Assche <bvanassche@acm.org>,
	linux-scsi@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH] ufshcd: fix Wsometimes-uninitialized warning
Date: Thu,  3 Dec 2020 23:31:26 +0100
Message-Id: <20201203223137.1205933-1-arnd@kernel.org>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
X-Original-Sender: arnd@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted
 sender) smtp.mailfrom=arnd@kernel.org;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=kernel.org
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

clang complains about a possible code path in which a variable is
used without an initialization:

drivers/scsi/ufs/ufshcd.c:7690:3: error: variable 'sdp' is used uninitialized whenever 'if' condition is false [-Werror,-Wsometimes-uninitialized]
                BUG_ON(1);
                ^~~~~~~~~
include/asm-generic/bug.h:63:36: note: expanded from macro 'BUG_ON'
 #define BUG_ON(condition) do { if (unlikely(condition)) BUG(); } while (0)
                                   ^~~~~~~~~~~~~~~~~~~

Turn the BUG_ON(1) into an unconditional BUG() that makes it clear
to clang that this code path is never hit.

Fixes: 4f3e900b6282 ("scsi: ufs: Clear UAC for FFU and RPMB LUNs")
Signed-off-by: Arnd Bergmann <arnd@arndb.de>
---
 drivers/scsi/ufs/ufshcd.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/scsi/ufs/ufshcd.c b/drivers/scsi/ufs/ufshcd.c
index f165baee937f..b4f7c4263334 100644
--- a/drivers/scsi/ufs/ufshcd.c
+++ b/drivers/scsi/ufs/ufshcd.c
@@ -7687,7 +7687,7 @@ static int ufshcd_clear_ua_wlun(struct ufs_hba *hba, u8 wlun)
 	else if (wlun == UFS_UPIU_RPMB_WLUN)
 		sdp = hba->sdev_rpmb;
 	else
-		BUG_ON(1);
+		BUG();
 	if (sdp) {
 		ret = scsi_device_get(sdp);
 		if (!ret && !scsi_device_online(sdp)) {
-- 
2.27.0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201203223137.1205933-1-arnd%40kernel.org.
