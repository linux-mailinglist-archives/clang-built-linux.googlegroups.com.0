Return-Path: <clang-built-linux+bncBAABBSUF3CCQMGQE35IB34I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33c.google.com (mail-ot1-x33c.google.com [IPv6:2607:f8b0:4864:20::33c])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B0AF397090
	for <lists+clang-built-linux@lfdr.de>; Tue,  1 Jun 2021 11:50:04 +0200 (CEST)
Received: by mail-ot1-x33c.google.com with SMTP id i25-20020a9d4a990000b0290304f00e3e3asf8377235otf.15
        for <lists+clang-built-linux@lfdr.de>; Tue, 01 Jun 2021 02:50:04 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1622541003; cv=pass;
        d=google.com; s=arc-20160816;
        b=mnBA+bE7d2L+eSm3JB2J0PFkarShB3FGvI0WQjUvsvTBvkYbSaQLQ8TxjlGPqsxe0T
         Q+kuA9SyM+69rSlMbMOKQ7XeEPD/juO6Yz+13m8bklr0vhuuDeIamWMoiGeGQY5vh05r
         k6AQ1V+SztecKSuRr6M3e4EOMr00DjehdxM7uSj4rxzZM8hB7YZLttDAE5wMajNC5ylg
         K5FTgrGX9ZT30KTp1sQKeYcVS7Rf5iDDDdLzieZMmZ3B8SUQhqUo8E6tIq9bYDVM24vV
         KvJhynSSlzdz3BndqVPYf73IbtzThGkHfIrhKDqxlh+r7RKgvLNq0ovcYLABvHsq1b2r
         zNWg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:message-id:date:subject:cc:to:from
         :mime-version:sender:dkim-signature;
        bh=BRO2vL7gAkLWfQOpp15ONBUpZ9I82J5AUcqniPTV+DM=;
        b=OYzr/QICVtUhw9wjE0XZLhuj0r8K8oBeI7m9ljq169kMN+Ux2HiBkpDswS+kIIPDps
         2XuiDffoXP0qfzdAZQIB2UsUplBst0uLFFl37EVGC98Oc50Au1W26lBmuJ7J01ONO2YE
         tblOrGUfghIK/GHOtmhm0R6bzdUVL+CO71TvmPDhOJ8QJ4wYfHGWiv2XLW61btcMyVuK
         CQMfgGdD0ISW6I7Ad7FDxaVCM5p3W5yhhEp8eNdq4Yr03MbQ5m2SmF/Al3S5TbijSrcr
         CF2b/fTM2WLp9WpNtmva9NOXqd6vxvBv/Vf75nSgbmbZWZ0ScxdUDimKokKnViy+EMG1
         KFsg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of yang.lee@linux.alibaba.com designates 115.124.30.130 as permitted sender) smtp.mailfrom=yang.lee@linux.alibaba.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=alibaba.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:to:cc:subject:date:message-id
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=BRO2vL7gAkLWfQOpp15ONBUpZ9I82J5AUcqniPTV+DM=;
        b=GagFS7LZr5QaukyWE1UJyKbytm515AqNNZ57I3lfM6ovXu01zbwxlvqEFxV5kNZlYX
         46GLfSm04XaTWKnnY0MKJCfHoBK6v+MeTh+FEhl4HWNfWVoR69uLiwqIL2NNpyDjBNa1
         79krdtP5g6IOEB6N0ZL9AAK2sfNvSD8p689AJf1Wirg6huB4iBqbPPfMtZry9IduK6Yn
         QjDYvwWQhGQAZ/sggF97rNrwLY8zCH7028FyWSPcdXo1srOoA+Csox5c1wIKXxTRt2M4
         lKtB2TUC7LwRUZTiTKraxAaHWs/LV5qTbLqJzYqYEFmVva1AQnSVkPVbJc23QuAsKTG2
         GeYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:cc:subject:date
         :message-id:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=BRO2vL7gAkLWfQOpp15ONBUpZ9I82J5AUcqniPTV+DM=;
        b=JOqMhraNCpwyKKJUVGrpM+dTAXbm/SDvqmFAvzp0btC9+NyvlmrihfADeEG1AH7egi
         aUDgmR/YkcWYS/7h/CM68O3hik/JSjA9MpI/yDfxrtuyteM7Z/VON/gByogNEwCNztHq
         nwMzi0ZNJMIXq60YLLv7S4JvuaZCeYqnGDiNISguwLytvbsQ4KyBid9d525Y48hDTMm2
         KhrOKjforUlNJxj+dcKpHpW0bjCIxFLnqO3mjFUALyLz32oijyqZuFVI/pDU7y2Lps8E
         /anvOwKhS/kqcCL+afLg3ELINANL41/mYQqnaZRc1m8TiAGf5NmpPO6VYFESntjO43Hn
         5RoQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5312cPEtw4jR2kMcp57dSt2of1ND1htVFTdevXRrstf7kmk/QAAy
	RRJ7qsf1vP81VILoWtWd49M=
X-Google-Smtp-Source: ABdhPJxAPOCQWUEf3hg9GAgJBPSQxUAgSNSR5mFqyVHF+8kQQu4TVgRRREg64CklG+Aerv7kgKV3eA==
X-Received: by 2002:a05:6830:1c3d:: with SMTP id f29mr822825ote.248.1622541003062;
        Tue, 01 Jun 2021 02:50:03 -0700 (PDT)
MIME-Version: 1.0
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:5a18:: with SMTP id v24ls5197490oth.1.gmail; Tue, 01 Jun
 2021 02:50:02 -0700 (PDT)
X-Received: by 2002:a9d:3436:: with SMTP id v51mr21479629otb.346.1622541002768;
        Tue, 01 Jun 2021 02:50:02 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1622541002; cv=none;
        d=google.com; s=arc-20160816;
        b=AVcXGriDIMhUWnkCYYhzxwtpM2QLWnJVyd79UqCfNecSI/l3b+wvFdVQr3Z3uKpL1X
         xlTgv77bx7nQgsz1id7FbHCnfS1ssU195+umxviqvcq5cwN5XipZWNST4rUC8rAuQKH+
         nl4WJKLtRWWZcwSkmNyhiGxtp6C6jAoibKbijE0QW3nCV6yGTiK1EA6oGYeWtFJnVkTX
         Co2Eolnmc6/jx9xJXaJJPi/DPreEorr6W2kr3F3OnihX70Om68kUBtI301N94jBSPzQp
         ElgiQYz7mjX/YhoGT+s+per/2zBmZcuoD6Qsvh7vCtoXNxK/YP9pxbuOI7Tbyq+4uAUs
         oKGg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from;
        bh=ShOR4gnxLw2xlx63yccQBStxigEa11Yazb0CdEn0k0w=;
        b=uQQ7crqlMWR2NN3ZQRq4PsxoEuD11ULck7cYZm/UeafAhk8qZjEE2zThTlkHEUtioW
         jytFSOc9yaVPnNNgTkCsVWrNGDf2YSDuFvqVmmDB/x84VP+ncTOLAltqa0t/aDsD/r/r
         txt/NWBUiZsaz3vNPQEC/iT7tAXi708cY0Aq73H3SjeZw5XWPwpGCx8fAS5le4ZrbJBi
         fmV1ZMzHCCdxs/DKueYfaaIPhk9g+VShpKGEwAbQ7LEJWqFVux5wD2/ecqMvEnZEGXuI
         iFdgJ2WILMUTQ4dvwLGddi+kyezsjMJZofpM4ensLOnMfPcwYyK2xMddaxpF9ErmKcNJ
         8ZwQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of yang.lee@linux.alibaba.com designates 115.124.30.130 as permitted sender) smtp.mailfrom=yang.lee@linux.alibaba.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=alibaba.com
Received: from out30-130.freemail.mail.aliyun.com (out30-130.freemail.mail.aliyun.com. [115.124.30.130])
        by gmr-mx.google.com with ESMTPS id t15si900554oiw.4.2021.06.01.02.50.01
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 01 Jun 2021 02:50:02 -0700 (PDT)
Received-SPF: pass (google.com: domain of yang.lee@linux.alibaba.com designates 115.124.30.130 as permitted sender) client-ip=115.124.30.130;
X-Alimail-AntiSpam: AC=PASS;BC=-1|-1;BR=01201311R151e4;CH=green;DM=||false|;DS=||;FP=0|-1|-1|-1|0|-1|-1|-1;HT=e01e04394;MF=yang.lee@linux.alibaba.com;NM=1;PH=DS;RN=10;SR=0;TI=SMTPD_---0UaupMjV_1622540997;
Received: from j63c13417.sqa.eu95.tbsite.net(mailfrom:yang.lee@linux.alibaba.com fp:SMTPD_---0UaupMjV_1622540997)
          by smtp.aliyun-inc.com(127.0.0.1);
          Tue, 01 Jun 2021 17:49:59 +0800
From: Yang Li <yang.lee@linux.alibaba.com>
To: krzysztof.kozlowski@canonical.com
Cc: davem@davemloft.net,
	kuba@kernel.org,
	nathan@kernel.org,
	ndesaulniers@google.com,
	linux-nfc@lists.01.org,
	netdev@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Yang Li <yang.lee@linux.alibaba.com>
Subject: [PATCH] NFC: nci: Remove redundant assignment to len
Date: Tue,  1 Jun 2021 17:49:50 +0800
Message-Id: <1622540990-102660-1-git-send-email-yang.lee@linux.alibaba.com>
X-Mailer: git-send-email 1.8.3.1
X-Original-Sender: yang.lee@linux.alibaba.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of yang.lee@linux.alibaba.com designates 115.124.30.130
 as permitted sender) smtp.mailfrom=yang.lee@linux.alibaba.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=alibaba.com
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

Variable 'len' is set to conn_info->max_pkt_payload_len but this
value is never read as it is overwritten with a new value later on,
hence it is a redundant assignment and can be removed.

Clean up the following clang-analyzer warning:

net/nfc/nci/hci.c:164:3: warning: Value stored to 'len' is never read
[clang-analyzer-deadcode.DeadStores]

Reported-by: Abaci Robot <abaci@linux.alibaba.com>
Signed-off-by: Yang Li <yang.lee@linux.alibaba.com>
---
 net/nfc/nci/hci.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/net/nfc/nci/hci.c b/net/nfc/nci/hci.c
index 9686514..d6732e5 100644
--- a/net/nfc/nci/hci.c
+++ b/net/nfc/nci/hci.c
@@ -161,8 +161,6 @@ static int nci_hci_send_data(struct nci_dev *ndev, u8 pipe,
 	*(u8 *)skb_push(skb, 1) = data_type;
 
 	do {
-		len = conn_info->max_pkt_payload_len;
-
 		/* If last packet add NCI_HFP_NO_CHAINING */
 		if (i + conn_info->max_pkt_payload_len -
 		    (skb->len + 1) >= data_len) {
-- 
1.8.3.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/1622540990-102660-1-git-send-email-yang.lee%40linux.alibaba.com.
