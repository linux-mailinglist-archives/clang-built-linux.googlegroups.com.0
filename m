Return-Path: <clang-built-linux+bncBDTZTRGMXIFBB4OFVXXAKGQES3XMXNI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3a.google.com (mail-io1-xd3a.google.com [IPv6:2607:f8b0:4864:20::d3a])
	by mail.lfdr.de (Postfix) with ESMTPS id E1A4AFA166
	for <lists+clang-built-linux@lfdr.de>; Wed, 13 Nov 2019 02:57:06 +0100 (CET)
Received: by mail-io1-xd3a.google.com with SMTP id q13sf362975iot.11
        for <lists+clang-built-linux@lfdr.de>; Tue, 12 Nov 2019 17:57:06 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1573610225; cv=pass;
        d=google.com; s=arc-20160816;
        b=f/2ZVYp6rVc7GhqGUnsUDN1vz7vUBUKiuWb0oWC10Y0fNTONJHwEpu8jkdKbUmvzfv
         U2bzhRsgflGFYd+BJYCuBdLIhNTWW2+d/zdYPw6ueNN/y32wAWxK1qla55xNRyiOeirJ
         6a2OtBDjyyU+MJv/yrQPzgvzf1BU+vkshptTcN5oIJrwr34HgS8EaFToEULTABEez7q9
         PJ/Ym34yAVSOfTXCxmbBDw5yeU/UR0S04whUX7ZJHXOh5vMx7NzPi5ABfkHvgf+Sdk2f
         Ir09GdusMKutXtEgmYA3keEh4N1gtFL/NqB9hqefw6rQCWTx7tdhdkNNL9SNrP2MuT7J
         SKJw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=UAEHD8IBs9FHO9z9AXuIhRUivTFY51VdlUQ/yVCRoEQ=;
        b=T28lzJFbLTxLVDaQoPv9OFc0NjGU+zm0yzxzyVv/HgcRWrFbLAsa5sf8+mKnkyJx1D
         pwyF3Cd1/9pGZWz9Ev9M4wwGvzOggWGclywwDR86DYkrnjS1kvTzG0AW0M95+apSwT6F
         rnJVzs8KwjFOp8i/ETPXrJRlme3Qabv2VkafiHXYXkLzsl+DRXNATN1KRWGcQR9UQwML
         jB97pCeKNHsPOkMwdBZaBxrEt+QRof9pni0v4DU2FroXPzvtbV1zDRYAvQizEd1EHEgv
         fC4m3pr6AbVgpNUD0Grcz4Nxfb5vqBL+QsYcRdmPfhakLBA10XcgaHPgl4SDP81/HqOT
         OPsw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=GzHtAv5v;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=UAEHD8IBs9FHO9z9AXuIhRUivTFY51VdlUQ/yVCRoEQ=;
        b=lhltsoiHj4xAvAU7sByo81z6fwuNpWCISQKAoVzQYmuSD1OoA5iTRhIHweEf9mUmhr
         r2Y1puZwFShqOg4LGKsseSn7rXCfgwlPcbgaraew/qyEnrTD6/X9Kf2BzP9t8WmiG3Bl
         BGDrUYQJKXv9j7nYaqGXF9iraSOafbRX0k+pnoGxLptyJcBU2KeKr6QS17SOwXlccyOD
         DVi0R8X+ZZMmE1qJZS/rCHfc8phrcvUXV6CpgLccct47Z2/B0rHw8ZO0ooh5wbDaqQqD
         Si1x1MziipicwVHdmgzNzYQ6ln3bpudkxIaM8FvGJMpdbjtAWjg56M5a9GtbILJ5sNuc
         Xfmw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=UAEHD8IBs9FHO9z9AXuIhRUivTFY51VdlUQ/yVCRoEQ=;
        b=qxTDtrPrfNJB79gTDSUbZ7j4YWPSpcly/TY+eBsoKupmEwdy95y79NVxcaNsTILSTx
         K/uqRHIuKHmqEFh8t2XTMUB7sBBEmfgQksbTj752wHdEiVp6H6uFtkMUySSzUd5fAlFj
         NYq4xcnQCV7cdgNDL/Y6546AEZ+xllzbucamM/r8ErlYNss5fXVZS22v/Xot5so4vsZB
         SHbu5QwMA9adhrMn/bi86KJnHWv0VMbfM3yI538cjLKHSIE0ixau7tPA9MFRQbd9/2nB
         xSasZsCubOVCc8l/6VI1G2htmgZm0bkXLNWEvVOZWLmZZO/sgq6+qpsCRtVUJwhbOvp3
         L9eg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUMtrKGf/7vVMjNyhCD/JNH1EAwFNkFLDJ/cXrNg7vdbEKj67b8
	CrWqQHXcJ83RvWJVxHPOjJA=
X-Google-Smtp-Source: APXvYqwvAyJqJ/bwnjxgyGQKDgq0pk9ekcBrVn0LTwiMRZB5ANLk5jCuSYf7YS/oBLR6Wc/0FnDZCQ==
X-Received: by 2002:a02:8c5:: with SMTP id 188mr695684jac.63.1573610225748;
        Tue, 12 Nov 2019 17:57:05 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a6b:730f:: with SMTP id e15ls91784ioh.8.gmail; Tue, 12 Nov
 2019 17:57:05 -0800 (PST)
X-Received: by 2002:a5e:8a04:: with SMTP id d4mr1029825iok.42.1573610225284;
        Tue, 12 Nov 2019 17:57:05 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1573610225; cv=none;
        d=google.com; s=arc-20160816;
        b=BlHhOQN4xNP5gBVtarx8+4fofY0tFkE0FL4dSTlt24uRsGeLHMVnulkkkzuftNwiAB
         KEITepzaVP1xm7TJjLW7pPdIPEsMsRnDExZfEvdYtkBZh7Mbd2pj0xi4vBX6LfaW0BMB
         +ag/lsW9liPee0WL8taNV241Xc+DJG90XdlRYk3Or74NCR7KZuyf4QF5Z1taRWMojDwI
         MedxFvlXolWTWt7WrBzUkeB6DzuArPO/UNtht8eXaiiwiVugq+5tPVXjsQLgdhKdteas
         fTKvuWyUyvxn9AKTKCDmVpwQlYiVnZlz1d/CFlzFU3l0UcREYjMbzRt822v19cQ0v5wY
         t+Nw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=3FWRZb/z9ofyStc4x6whXN0jdz4+3/yawDtsXj8dJ4g=;
        b=atGrgBRKO/ePoDr7LaLib+/dt1NGB7GPQ2HTbM5yQVx2Q+46CrNEbadGWvKrlsIDZM
         p2xLtQHdzwwWky7AS/+/RPXr/rJR/HrZIgu59mgwO8XdsEK+M5P4aJNlTGZeLYAQRu3w
         6Xre+muuxb49Q9pPjV6ST2yNVff8gE1bAmd+oUOGdN0nid7oWlc3Pa5BpJiKlJHvPPV4
         CeCwz5nRWRn94UJaXpSuQ0dqDPrae1WUEEgFKL2PMdQ7GD3MUIK78puJ/85gh41RVMXC
         vHN+BnsRkPifR4pOqmEn6RlU9DA/l6FmAzvv8H2q3V022rq/kkgwM86Ftfth7iyGrK39
         6rWA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=GzHtAv5v;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id z130si31516iof.5.2019.11.12.17.57.05
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 12 Nov 2019 17:57:05 -0800 (PST)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id C96A42247C;
	Wed, 13 Nov 2019 01:57:03 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Nathan Chancellor <natechancellor@gmail.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	"David S . Miller" <davem@davemloft.net>,
	Sasha Levin <sashal@kernel.org>,
	netdev@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH AUTOSEL 4.14 029/115] cxgb4: Use proper enum in cxgb4_dcb_handle_fw_update
Date: Tue, 12 Nov 2019 20:54:56 -0500
Message-Id: <20191113015622.11592-29-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191113015622.11592-1-sashal@kernel.org>
References: <20191113015622.11592-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=GzHtAv5v;       spf=pass
 (google.com: domain of sashal@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=sashal@kernel.org;       dmarc=pass (p=NONE
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

From: Nathan Chancellor <natechancellor@gmail.com>

[ Upstream commit 3b0b8f0d9a259f6a428af63e7a77547325f8e081 ]

Clang warns when one enumerated type is implicitly converted to another.

drivers/net/ethernet/chelsio/cxgb4/cxgb4_dcb.c:303:7: warning: implicit
conversion from enumeration type 'enum cxgb4_dcb_state' to different
enumeration type 'enum cxgb4_dcb_state_input' [-Wenum-conversion]
                         ? CXGB4_DCB_STATE_FW_ALLSYNCED
                           ^~~~~~~~~~~~~~~~~~~~~~~~~~~~
drivers/net/ethernet/chelsio/cxgb4/cxgb4_dcb.c:304:7: warning: implicit
conversion from enumeration type 'enum cxgb4_dcb_state' to different
enumeration type 'enum cxgb4_dcb_state_input' [-Wenum-conversion]
                         : CXGB4_DCB_STATE_FW_INCOMPLETE);
                           ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~
2 warnings generated.

Use the equivalent value of the expected type to silence Clang while
resulting in no functional change.

CXGB4_DCB_STATE_FW_INCOMPLETE = CXGB4_DCB_INPUT_FW_INCOMPLETE = 2
CXGB4_DCB_STATE_FW_ALLSYNCED = CXGB4_DCB_INPUT_FW_ALLSYNCED = 3

Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
Signed-off-by: David S. Miller <davem@davemloft.net>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/net/ethernet/chelsio/cxgb4/cxgb4_dcb.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/chelsio/cxgb4/cxgb4_dcb.c b/drivers/net/ethernet/chelsio/cxgb4/cxgb4_dcb.c
index 6ee2ed30626bf..306b4b3206168 100644
--- a/drivers/net/ethernet/chelsio/cxgb4/cxgb4_dcb.c
+++ b/drivers/net/ethernet/chelsio/cxgb4/cxgb4_dcb.c
@@ -266,8 +266,8 @@ void cxgb4_dcb_handle_fw_update(struct adapter *adap,
 		enum cxgb4_dcb_state_input input =
 			((pcmd->u.dcb.control.all_syncd_pkd &
 			  FW_PORT_CMD_ALL_SYNCD_F)
-			 ? CXGB4_DCB_STATE_FW_ALLSYNCED
-			 : CXGB4_DCB_STATE_FW_INCOMPLETE);
+			 ? CXGB4_DCB_INPUT_FW_ALLSYNCED
+			 : CXGB4_DCB_INPUT_FW_INCOMPLETE);
 
 		if (dcb->dcb_version != FW_PORT_DCB_VER_UNKNOWN) {
 			dcb_running_version = FW_PORT_CMD_DCB_VERSION_G(
-- 
2.20.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191113015622.11592-29-sashal%40kernel.org.
