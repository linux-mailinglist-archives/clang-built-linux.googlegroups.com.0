Return-Path: <clang-built-linux+bncBAABBSV352CAMGQEZTIOXPI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3a.google.com (mail-io1-xd3a.google.com [IPv6:2607:f8b0:4864:20::d3a])
	by mail.lfdr.de (Postfix) with ESMTPS id 3CFA237B8F9
	for <lists+clang-built-linux@lfdr.de>; Wed, 12 May 2021 11:20:12 +0200 (CEST)
Received: by mail-io1-xd3a.google.com with SMTP id y191-20020a6bc8c80000b02904313407018fsf15081061iof.15
        for <lists+clang-built-linux@lfdr.de>; Wed, 12 May 2021 02:20:12 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1620811211; cv=pass;
        d=google.com; s=arc-20160816;
        b=Shnj9q2/wlwtsqIoGwkIL/1MmsW60id+4LWUt7gAOWXd3NW7wQ1U3dwhaQCOVBYMo9
         cqjqw9w8WJN2sX9O1LhC6VL4ccdcFMJ8+uQ4514andomx+ZliY5xepubs0SeGUDtzaGm
         bwbhyGs9CQCTaLYIEyXQZ8TzXuEkMO011axAYQNtTAd1ky4T9r5Bv1zkb4r6tKd3AQ98
         0F+6a6POhd26OHac04ZRYoUcGwmyneT3UTRC75XfcTfdg7Rp8e803EBqs8IhZfAEHrsd
         pq+oqc5V0E5RuQWjXRUlqFe4a4+pfFz7mzdO3ksEUtqBEBpkzhXX0cHEmghSAJRbq7l/
         V8xQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:message-id:date:subject:cc:to:from
         :mime-version:sender:dkim-signature;
        bh=oiKSRxQt4B+vEKqfpp/6KzA2A1E0LREr7T7+OF4+rAo=;
        b=re5h3Qdvk8uI7bdPZUoFCnNMfVJeBl2HWMepWE9Lg6og8gX7ICc5QXthlXycjIW5oW
         rGKrIqnvDhd20MXfcc2+O1vShj2i5zO4kfCk1xMWKHKRtav8UXFZf7qPheK84ebjT5vU
         6zDSYnzdFj45zClb8EnXcZ88bShDk7UPmlr9zkLlpw1pdCKlm/S3GoxiqCV0W7WckPYV
         qHV0oaUoAfDSw59SAim5GNEmh01XUHmtJJu+ZGX38uGZQ7tDOhJrPaYbpi2+TvTB2wJZ
         YZuPNW2Qv4fxXYppqdG6+vkO+9zkuD0VrAS5hbcoFsQYDbtokjGqpyyDdXXynTAP08fN
         ZseQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of yang.lee@linux.alibaba.com designates 115.124.30.43 as permitted sender) smtp.mailfrom=yang.lee@linux.alibaba.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=alibaba.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:to:cc:subject:date:message-id
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=oiKSRxQt4B+vEKqfpp/6KzA2A1E0LREr7T7+OF4+rAo=;
        b=mwWWgmy3xedDDuQHILf+Yz1MHfWIFIqlZEk2hJV355cAil4OmkdyHQfjSW4dCgZ9wi
         jedns7M0a9XOTwvqdCc4p5XQyOCnecbdRh4I0eIH6E4cLMu4jBV9SzIzo3WFDS8mNj7I
         yNYG6ge7Sqioy/ju3j604YYtflFpSi0OVrZzQIUwH2cV7STTKKW1KiQd2o3X1JBAsJtc
         HwoQaEMgHxt6u7cSGQgmNsitYuMS80qAPGsujtrpj7fu3AoJWJf/2vO1Yd00YqZdfTWq
         OEe8nQRv0CaTKxHK1io574Iu613uYWA13CRqNC2fU3N9YJPzm8ndpMvxfRkVOqr0u5d+
         oVWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:cc:subject:date
         :message-id:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=oiKSRxQt4B+vEKqfpp/6KzA2A1E0LREr7T7+OF4+rAo=;
        b=s0X7LmFebuat5FgXYIQ9GxHcjX8UbX+4+rL0gA1F1HmeYaqH3IIBzyga9MutqDPDEE
         +mvbTJj7eDnnueH9c2bAbcMEGMqdRuWDgFlzo0BPnGsUfv6o56ANFNp9vepiynvU3Og0
         lJIessKjXfIUgBpGBBcT+tA/KIFCx6pamayNXtJbAUKkjb2d3dliR/njLpqFzPhJXbsJ
         L99K1zEGCH3CmtQV/9PclnGo90BPGramCNM/CWRJwEVSBKbjW57OuXecN4VqNX+7WgBR
         O+jW75LJjl9vZsDU/iP/IKu+x1PrQJfsgTr+4wp9TFvL7cWSY8eF2FG6clLXOxrvuBqC
         beKQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5311PcE+6llWB4mwa0UgTURGHORMO0kTOPPnM9BPJyk4wacXL6J9
	p0I9vlin8QdvGAkD9FzZSRw=
X-Google-Smtp-Source: ABdhPJzTj9rMQWj0vzka8JgDTt8O2vzdDnP9MsFEq72ZEh7qnqNRaS8FI0VjB4/yi+uDOx6wozkotg==
X-Received: by 2002:a02:a992:: with SMTP id q18mr14008035jam.87.1620811210675;
        Wed, 12 May 2021 02:20:10 -0700 (PDT)
MIME-Version: 1.0
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6602:1689:: with SMTP id s9ls245962iow.1.gmail; Wed, 12
 May 2021 02:20:10 -0700 (PDT)
X-Received: by 2002:a6b:156:: with SMTP id 83mr4865110iob.22.1620811210381;
        Wed, 12 May 2021 02:20:10 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1620811210; cv=none;
        d=google.com; s=arc-20160816;
        b=0TtXeXyuLp9CJrJ5QncSKi24aV5btCjsmLYTbleMbm8x6TxgCMdU1cPofPbuForMVE
         oZVSqwGhnAPCoYj4xNd2oBrUcJEPg7KnGBuZYER/OzCK4vTyIcYevWUCP6l6ljvnLIoY
         mw4cWh8cxsCVOTTAxjYPgAfU2wRbs2Lu1RnBq8/L/OIFWfdvMI7LwdLQoZeZUykPVN4V
         kTIuI5HnqAApjoTRkdJfa+iq5s65BOWEV4aaNXt0veyoiz+4oL6rrBeV5Lzh9AKSVuak
         xJU4K+/GEYQeeMQ/y8dmTp5yBq9DDYFcKAIkagMpk0DFSt7kYnbRQX+XVF08TorVb/nr
         j68w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from;
        bh=B+LFv53D3zy2qXjm3gDaB5UdNh/zpkG9qeQ85kRdYio=;
        b=yi4kG934FjAiXO+WXHrmuxkwsEu0yTAgSeoqwInkUcKW4tDzrhx5pFih7srG65ntMe
         h4/YyRfj2zqDvj0ofqPs8fVLoUSsAp0b5iIovojTVyO97rTcipXahBaw19MB2l4Rk+yL
         CNpbw4Ob1oR75SeTSYo2VhCO+05oiAnOkvWjaeQmlRrAEgki6/XRB7tCvX9Soa4SwKG7
         XkClwaOHU4Pp8BJ4ccA/e1X/NltQ0oksiVXdSd5++3fLY7GcwRXB9rcak93ujJd4cl8j
         vIuyAa6VRcuQMRDaV6TQbnGsZ73CX9uOKYV/dXKRU4psVgnzFyOIckvf3/LguZGxi5y9
         lI5w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of yang.lee@linux.alibaba.com designates 115.124.30.43 as permitted sender) smtp.mailfrom=yang.lee@linux.alibaba.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=alibaba.com
Received: from out30-43.freemail.mail.aliyun.com (out30-43.freemail.mail.aliyun.com. [115.124.30.43])
        by gmr-mx.google.com with ESMTPS id z2si2218350ilo.2.2021.05.12.02.20.09
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 12 May 2021 02:20:10 -0700 (PDT)
Received-SPF: pass (google.com: domain of yang.lee@linux.alibaba.com designates 115.124.30.43 as permitted sender) client-ip=115.124.30.43;
X-Alimail-AntiSpam: AC=PASS;BC=-1|-1;BR=01201311R111e4;CH=green;DM=||false|;DS=||;FP=0|-1|-1|-1|0|-1|-1|-1;HT=alimailimapcm10staff010182156082;MF=yang.lee@linux.alibaba.com;NM=1;PH=DS;RN=8;SR=0;TI=SMTPD_---0UYd96fc_1620811206;
Received: from j63c13417.sqa.eu95.tbsite.net(mailfrom:yang.lee@linux.alibaba.com fp:SMTPD_---0UYd96fc_1620811206)
          by smtp.aliyun-inc.com(127.0.0.1);
          Wed, 12 May 2021 17:20:07 +0800
From: Yang Li <yang.lee@linux.alibaba.com>
To: trond.myklebust@hammerspace.com
Cc: anna.schumaker@netapp.com,
	nathan@kernel.org,
	ndesaulniers@google.com,
	linux-nfs@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Yang Li <yang.lee@linux.alibaba.com>
Subject: [PATCH] pNFS/NFSv4: Remove redundant initialization of 'rd_size'
Date: Wed, 12 May 2021 17:20:04 +0800
Message-Id: <1620811204-107673-1-git-send-email-yang.lee@linux.alibaba.com>
X-Mailer: git-send-email 1.8.3.1
X-Original-Sender: yang.lee@linux.alibaba.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of yang.lee@linux.alibaba.com designates 115.124.30.43 as
 permitted sender) smtp.mailfrom=yang.lee@linux.alibaba.com;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=alibaba.com
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

Variable 'rd_size' is being initialized however
this value is never read as 'rd_size' is assigned
a new value in for statement. Remove the redundant
assignment.

Clean up clang warning:

fs/nfs/pnfs.c:2681:6: warning: Value stored to 'rd_size' during its
initialization is never read [clang-analyzer-deadcode.DeadStores]

Reported-by: Abaci Robot <abaci@linux.alibaba.com>
Signed-off-by: Yang Li <yang.lee@linux.alibaba.com>
---
 fs/nfs/pnfs.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/fs/nfs/pnfs.c b/fs/nfs/pnfs.c
index 03e0b34..f076a6f 100644
--- a/fs/nfs/pnfs.c
+++ b/fs/nfs/pnfs.c
@@ -2678,7 +2678,7 @@ void pnfs_error_mark_layout_for_return(struct inode *inode,
 void
 pnfs_generic_pg_init_read(struct nfs_pageio_descriptor *pgio, struct nfs_page *req)
 {
-	u64 rd_size = req->wb_bytes;
+	u64 rd_size;
 
 	pnfs_generic_pg_check_layout(pgio);
 	pnfs_generic_pg_check_range(pgio, req);
-- 
1.8.3.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/1620811204-107673-1-git-send-email-yang.lee%40linux.alibaba.com.
