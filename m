Return-Path: <clang-built-linux+bncBD4NDKWHQYDRB6PGW75AKGQEDMCMPBQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd37.google.com (mail-io1-xd37.google.com [IPv6:2607:f8b0:4864:20::d37])
	by mail.lfdr.de (Postfix) with ESMTPS id 538552588BD
	for <lists+clang-built-linux@lfdr.de>; Tue,  1 Sep 2020 09:08:43 +0200 (CEST)
Received: by mail-io1-xd37.google.com with SMTP id f8sf287582iow.7
        for <lists+clang-built-linux@lfdr.de>; Tue, 01 Sep 2020 00:08:43 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1598944122; cv=pass;
        d=google.com; s=arc-20160816;
        b=n0hAbG9MipbFaaFU8HxhGvi81AVchWoLRRbjpTsNuE7Es7c4EugjbYPZNxqapedEiG
         F7fMWenPCMnpACjTlSuswazROXs945QAdx0k6wIg5Y885n68za0l3VPkXMtFPgHWRHG1
         5OjxXLdn/Fz1uKBf7QSJ233zTCR9rmnGl2Y3kTTh7FgHCE8cbxrTE7pBw5mHxcXiIFmJ
         oI4GLzNWn5if4rqgonROVYH5eoAWoAL4WQy//jcIvemkU6HdKzrEcwMAU/hoTolPpcKF
         Qe1s5sbj7dJVz9ZpMxeQ8O3/mh5pw5HLkd48EO5X0jypj98EiTMjI6lmtKrvOrTnVePZ
         mmsQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature:dkim-signature;
        bh=PVnq9X64UJ5/DFkx6xd54yO8qO70eMNkwGrFM0qdi9w=;
        b=BZ13dVTIySbivskApCzAIfcZRBzco2j1FU+r2XoNNTCQsdO2xcTEztQ5Nf6og8f4nk
         M582N7mAS6KlX7uG17QlSLKboDB5X0ME5cCVMj/Agxd+xKHKMhT3Xz1XpoeT9qMwNbXQ
         +Upg7yA9/DMU20AS9Wm818QVrng+hJEbTB1mz4ITiHIlPvtxoMOoZqOpx8FMu+Fvja91
         kMhvBs65TB7APbc76U6+9CCl36iFVq+GipnK9b1175Qkvu4Y19InFptR8qaiA637LV6Z
         gTagmnq9ogb3wmN7tEvkYXssiCHpHsYU3L/wYsu9/8TDKVlj/xtsy9vXStBo9vN0YYg+
         B6Tw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=JOWb9jTr;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::844 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=PVnq9X64UJ5/DFkx6xd54yO8qO70eMNkwGrFM0qdi9w=;
        b=sKnDsZrBDXq7QnrgFzcCOYu1TiXmrpr9X2vdXdDw977BGfyO+xGcJ9EZG5k2d7qeXJ
         q/MmSeIMgCGNfLu77dmQb0E0Uq+xw6QsioDFqxHVK68Rn71/zv5TAmi7ZLFYgu1hLi3+
         YatXvQ4GefwlglKQ6CmMzSoMZaJMITGFPXCY3/oFlk45M1yCclZdBZUKN1fuqLonj0ep
         RiSJlwAwZYbvbIDreL7kxz2UNPVHrTjf88BFXTU5MM+6w6qPHX71UQo+RcHac+r/aBeK
         bOvs2yub/oW2PAr1fGFaQTjr5c/gOV3qhZD3R1EwzJNdTZDo2HdfFcDlxV3yCOf90pGu
         ywtA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=PVnq9X64UJ5/DFkx6xd54yO8qO70eMNkwGrFM0qdi9w=;
        b=hSHYVXLU+OjXIUA/dfZMlpiDbQw/DCbDr7sD8TPywENfDVB8I0CU9qqF6B72zAjDFq
         2TfS2IbKlr4Ngc85NCgk/q8kvOVQAhc4nK5i38Svd9mVsZbBrb7fFxOqFphPvx9vUY63
         MyDTbvHDTQx+d8BtzU66LIVVlfop2xpLS9I7egANz7Eo9YmyR5SN/prgjHd6dDZ7RsrF
         14aRt/CdcjLZO3ChJrhzrdpQfG8by5tRrUDYcElw1tjiclXOB+ms2BR+W7Qk1RmPHvsb
         W/oglGRca7hbI5RZrg7CvxmeKu2zVuVbyqqnCwFP+93zlWb7thesgRXn9fNDrLgS/lBW
         6oBg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=PVnq9X64UJ5/DFkx6xd54yO8qO70eMNkwGrFM0qdi9w=;
        b=CdKriLNLEtCG+0WRb0fEnT50HbwYhuci8kJt0vuv9xATs3aUyMXKSPPAc9HdCWJjiF
         1gB2SmUHvhrB+CiLq0zdMCQqoqhDNLLobV6/wpYW64iMqzMTsvmBc6xZbnsoUi6+ZxYo
         SRuSYABU+lXANGzO2U+K19p1wXs8XmVmewMmxldVs7hgvx7xXoWQwkOsx7R7b7Vl8/aE
         H3Qpg5Y4sg4Aq5EDnsish8WP8T4kppaZsn3uIbsL9B2aoeakDmSDmbV4uk988PVrIIR3
         tVYNhJRqabDU7ulHm2sJ3ktfo8Gm/uKjOiFFp/+f/9wzmla92YhJNgel9yiUafSyFNix
         DXMQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531cpHpeZB2GIDV1o2PGTp3S5D3wQFnmI9fzR4rD/aTUGn2pRwYt
	lcC5KtajLvVoMzDK5stGonI=
X-Google-Smtp-Source: ABdhPJyaf2GiXLnGLebXQ3rLpFn9XWJnTVAO2W5IQ29zc48PtFeFJ3K2BSXQYC/QPyJqVvXOadwbMQ==
X-Received: by 2002:a05:6e02:ca3:: with SMTP id 3mr185253ilg.227.1598944121729;
        Tue, 01 Sep 2020 00:08:41 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a02:c9ca:: with SMTP id c10ls22184jap.11.gmail; Tue, 01 Sep
 2020 00:08:41 -0700 (PDT)
X-Received: by 2002:a02:749:: with SMTP id f70mr144670jaf.82.1598944121459;
        Tue, 01 Sep 2020 00:08:41 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1598944121; cv=none;
        d=google.com; s=arc-20160816;
        b=HrNkmQkDu2EQ3QU4dQ9Xpni0QRYBHRUs17yc/VZ7ircztFwIy80o+OOUtMM9YofpuD
         /5SsK+HopeOYES5K6wsz58CYhNzqNb44B4oaP6iHtAS8xXczOG8tRlS6zMd2r9o3dgH/
         tIcE1pjrxal53+abeZlw3U9vb7iK6qspQFoTx2ctyCM/nVd5FN7d5RFjpGJOUppKHfvK
         Jt1QFSEh6VdPnCZOB8z5OyokX7IRN+JavgyCiXJIAB5t4/gT19N20rEr7QJByBQ3UTP4
         Gy9xROiQ8u1KoTDS5FP2cZxam6gfFl8lhu6Xm1Tm+XaxIuXZru0qUZvG73HC+Cfkm1i/
         9Mig==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=GmXuUYU+0Jf5IK/tkXEzwkvIda53kaFZm8Sq7KP0sFU=;
        b=CkSSk+l1AT7r4TYUrNkJESa2Mk51iND4WJSuUTc1N8YFb/qhRD5632xtAxOFYrn4FW
         JRdIiJgDmIc1yarAKr0KOGZu7PQzEGfQGc8ORn08+kW+pGihpWactIw3446IuqtlBgbA
         wz2o9o4q6Kb1d85yVKHP9Ijx1Wuz2gdkhFZBf1RkkuHqIAVMusm6RXBWDY/yWvvLp91+
         lSqMyiJiWEssVNC66Nz5COR7VgxzMOgBvEh6zcQovpex53JT0D3RSAzHOXs1x4ZEWljk
         YEk/bPPs+SkY2AMV2ZfOzHRODElOkrf7FXVEFgWq/AIGcmvlcuI9afMwbS0ueLcIXsH0
         i5+w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=JOWb9jTr;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::844 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-qt1-x844.google.com (mail-qt1-x844.google.com. [2607:f8b0:4864:20::844])
        by gmr-mx.google.com with ESMTPS id j9si20645iow.3.2020.09.01.00.08.41
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 01 Sep 2020 00:08:41 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::844 as permitted sender) client-ip=2607:f8b0:4864:20::844;
Received: by mail-qt1-x844.google.com with SMTP id b3so166452qtg.13
        for <clang-built-linux@googlegroups.com>; Tue, 01 Sep 2020 00:08:41 -0700 (PDT)
X-Received: by 2002:ac8:72d3:: with SMTP id o19mr379699qtp.190.1598944120846;
        Tue, 01 Sep 2020 00:08:40 -0700 (PDT)
Received: from localhost.localdomain ([2604:1380:45d1:2600::1])
        by smtp.gmail.com with ESMTPSA id l64sm570996qkc.21.2020.09.01.00.08.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 01 Sep 2020 00:08:39 -0700 (PDT)
From: Nathan Chancellor <natechancellor@gmail.com>
To: Amitkumar Karwar <amitkarwar@gmail.com>,
	Ganapathi Bhat <ganapathi.bhat@nxp.com>,
	Xinming Hu <huxinming820@gmail.com>,
	Kalle Valo <kvalo@codeaurora.org>
Cc: linux-wireless@vger.kernel.org,
	netdev@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Nathan Chancellor <natechancellor@gmail.com>,
	Andy Lavr <andy.lavr@gmail.com>
Subject: [PATCH] mwifiex: Remove unnecessary braces from HostCmd_SET_SEQ_NO_BSS_INFO
Date: Tue,  1 Sep 2020 00:08:34 -0700
Message-Id: <20200901070834.1015754-1-natechancellor@gmail.com>
X-Mailer: git-send-email 2.28.0
MIME-Version: 1.0
X-Patchwork-Bot: notify
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=JOWb9jTr;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::844 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

A new warning in clang points out when macro expansion might result in a
GNU C statement expression. There is an instance of this in the mwifiex
driver:

drivers/net/wireless/marvell/mwifiex/cmdevt.c:217:34: warning: '}' and
')' tokens terminating statement expression appear in different macro
expansion contexts [-Wcompound-token-split-by-macro]
        host_cmd->seq_num = cpu_to_le16(HostCmd_SET_SEQ_NO_BSS_INFO
                                        ^~~~~~~~~~~~~~~~~~~~~~~~~~~
drivers/net/wireless/marvell/mwifiex/fw.h:519:46: note: expanded from
macro 'HostCmd_SET_SEQ_NO_BSS_INFO'
        (((type) & 0x000f) << 12);                  }
                                                    ^

This does not appear to be a real issue. Removing the braces and
replacing them with parentheses will fix the warning and not change the
meaning of the code.

Fixes: 5e6e3a92b9a4 ("wireless: mwifiex: initial commit for Marvell mwifiex driver")
Link: https://github.com/ClangBuiltLinux/linux/issues/1146
Reported-by: Andy Lavr <andy.lavr@gmail.com>
Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
---
 drivers/net/wireless/marvell/mwifiex/cmdevt.c | 4 ++--
 drivers/net/wireless/marvell/mwifiex/fw.h     | 8 ++++----
 2 files changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/net/wireless/marvell/mwifiex/cmdevt.c b/drivers/net/wireless/marvell/mwifiex/cmdevt.c
index d068b9075c32..3a11342a6bde 100644
--- a/drivers/net/wireless/marvell/mwifiex/cmdevt.c
+++ b/drivers/net/wireless/marvell/mwifiex/cmdevt.c
@@ -322,9 +322,9 @@ static int mwifiex_dnld_sleep_confirm_cmd(struct mwifiex_adapter *adapter)
 
 	adapter->seq_num++;
 	sleep_cfm_buf->seq_num =
-		cpu_to_le16((HostCmd_SET_SEQ_NO_BSS_INFO
+		cpu_to_le16(HostCmd_SET_SEQ_NO_BSS_INFO
 					(adapter->seq_num, priv->bss_num,
-					 priv->bss_type)));
+					 priv->bss_type));
 
 	mwifiex_dbg(adapter, CMD,
 		    "cmd: DNLD_CMD: %#x, act %#x, len %d, seqno %#x\n",
diff --git a/drivers/net/wireless/marvell/mwifiex/fw.h b/drivers/net/wireless/marvell/mwifiex/fw.h
index 8047e307892e..1f02c5058aed 100644
--- a/drivers/net/wireless/marvell/mwifiex/fw.h
+++ b/drivers/net/wireless/marvell/mwifiex/fw.h
@@ -513,10 +513,10 @@ enum mwifiex_channel_flags {
 
 #define RF_ANTENNA_AUTO                 0xFFFF
 
-#define HostCmd_SET_SEQ_NO_BSS_INFO(seq, num, type) {   \
-	(((seq) & 0x00ff) |                             \
-	 (((num) & 0x000f) << 8)) |                     \
-	(((type) & 0x000f) << 12);                  }
+#define HostCmd_SET_SEQ_NO_BSS_INFO(seq, num, type) \
+	((((seq) & 0x00ff) |                        \
+	 (((num) & 0x000f) << 8)) |                 \
+	(((type) & 0x000f) << 12))
 
 #define HostCmd_GET_SEQ_NO(seq)       \
 	((seq) & HostCmd_SEQ_NUM_MASK)
-- 
2.28.0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200901070834.1015754-1-natechancellor%40gmail.com.
