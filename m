Return-Path: <clang-built-linux+bncBDOILZ6ZXABBBN7MQGHAMGQEL6BQWLY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x139.google.com (mail-lf1-x139.google.com [IPv6:2a00:1450:4864:20::139])
	by mail.lfdr.de (Postfix) with ESMTPS id CCED947A982
	for <lists+clang-built-linux@lfdr.de>; Mon, 20 Dec 2021 13:25:27 +0100 (CET)
Received: by mail-lf1-x139.google.com with SMTP id h40-20020a0565123ca800b00402514d959fsf4478156lfv.7
        for <lists+clang-built-linux@lfdr.de>; Mon, 20 Dec 2021 04:25:27 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1640003127; cv=pass;
        d=google.com; s=arc-20160816;
        b=KO14m589WeBRUbv0r8I3U1cTovHJLBF/vom6Z8v9+AkzMmOBQP8NJivR2eiYvfjkqs
         h2Ho48Z3cVHLyfKV3LngHVqNghppCPg3pUEfTS+LQkWJKSH3hrt9CM/+QertJm0ZLImq
         i8uLV5tY2sRANMx5V1oAlVJtayZBS9ppHwcTQ7Ufjs5RapwpoTytfw5PXdlO92Y6Da8K
         Tyfj7Iz8jZA344J2B8NbBPaX2Xs7tl7/Maox6hOP8TuNKScklh6lcwxEAq9GbWiNVOp7
         UkqEYaZYgN7Kr1B7foCDN2DDKtfZBaCT5nHCWdyqrGi4Je1YrB0BxwNaI4wJqyCCfU2j
         m9Uw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=tu80RWndpxAa0NjVkaBXo1X6LKBVu4cpqDhfaMtSUVQ=;
        b=eDXIR9X3uRTpWJwWB99LYXpuEFO5JWf0rpoXUTmFYhxFZF9PvE/F+/s2o4Ufvt6FzZ
         +N6X/xAgtwdM6epPE+pcTwuxtaKfIz9WKETZzXqVNWhawTbl5R/RZOGLNFtdtdlKgdbL
         JBx+W0kQGLgV6PonsD/zNwvsYt5mg7mzCpOtipA53quE3H6FCYHm2pkw4fbhzxFz6owu
         CVsIct59qkNy9lKTPmW7jrDD8cGAcQCpGfOK6K5KdSx0WBPuBElySOI9nwA8Ttm7iyMk
         UGqTcAPufjhdS5+lVtNZSDZLXlglUQ6l8Kp9Irt5b4cVCkJ78z1G5fVh2hD3cpTeQ27i
         U86Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=XJM0sxVa;
       spf=pass (google.com: domain of anders.roxell@linaro.org designates 2a00:1450:4864:20::531 as permitted sender) smtp.mailfrom=anders.roxell@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=tu80RWndpxAa0NjVkaBXo1X6LKBVu4cpqDhfaMtSUVQ=;
        b=JdGWpzgIOcyl0Xksn3xZrzJhy2z+UYbZQMFseJJ58kB1FU3YPA337Yu8Cje5LFu9U8
         V5NGiUGrEu5aA5iG6Xzie2RAOJ9UvkfZtFwy7PUHDsJT+NOCuNqFacVh5TnzkfLQUT8r
         hzNTeML91fLDwjXCHD0tkHdKk7Utl5OpYpoIoW6uN0Kc38WWg9/PppudYz7O76A/y/Ii
         Le6Ius9ZKlB835xcfMKP7UK2tKNkxEfsHD4KQ/SUkeKACgl78mhjU9fe15oeTdK133ZS
         XHSl7maPp7mkB8LdMcNKQXeBC2klef20BLK8Ql1N/cJDQl6HkXYqyO0CeaHJyZjcb9xW
         ywlQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=tu80RWndpxAa0NjVkaBXo1X6LKBVu4cpqDhfaMtSUVQ=;
        b=4rudoIfjtEthtDTnxoFG+h69BMrGQXWMs7mfH77q9j9tgPRiD2V3U6WoWx6B7uaum6
         +ZvYYC0CBxnxFReo1+KwKMFpmRVeNfCiw/IWSdBydMmb+JmUib+qG7IyMrKbJ1l92BUn
         ekh2W7b0JUav4gzhiMJ+6+OdHebKn4/3fT7rI7q+88rh1nz+p1wSO+DrsHuiKAQhrTq7
         BI2iSCGRyrfiINKQM5mfNNOnPi2tN8hxRYHyCIBpA7he3InN71aOpYVEfrySb7C2ukBN
         CfJlkV8c627xw3TORrIxGNJsyRUYtoaFYX0NID7tAK3lO6418zqY0rAUIkw8itK0LoiP
         1KYg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530WAsVPDk/hJDvMYtJDh3ToeQuXZPHf+DMVhB56AVNOg3AFDmHe
	XHlu5WIqhmxrYXqVLOO2Wqo=
X-Google-Smtp-Source: ABdhPJytUjOVwfS0c2+bC4uv+9eZj7WLDVCTgckoHSJsuOvR9U6SPrIEuk+lYf9yOoYTvxAR4lDoEQ==
X-Received: by 2002:a2e:864a:: with SMTP id i10mr15055662ljj.395.1640003127399;
        Mon, 20 Dec 2021 04:25:27 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:a4c2:: with SMTP id p2ls2454155ljm.4.gmail; Mon, 20 Dec
 2021 04:25:26 -0800 (PST)
X-Received: by 2002:a05:651c:88e:: with SMTP id d14mr14691689ljq.42.1640003126402;
        Mon, 20 Dec 2021 04:25:26 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1640003126; cv=none;
        d=google.com; s=arc-20160816;
        b=YOK2zz8nPrJk14KfiATf8+4i7livvg26s3mRoZ5NOv+E1W2YYBenOyR+RF/+KbPyzY
         IIy7NLwYn7vPrJzpNb5F3SLWs17AMkfZqfwIiNChxSP0s+Q3pP2YAJiRo1ecBpzZo/Br
         uPLqO/SIFZuy3LnyXBusHOlSBw1K2r1strbnHAkYJSE08vR3MeDODl2qQknXipW+LH9q
         J5L95C/3xhHksFF3fRCWZtMqfzcMoyTWuoXPh2cIxPSG18fsn8//qQo1favP6wUJXfTb
         qMiHQ51WfKVcxHKjz0PPudlskENWwUCgJwuZRArIBJ3cMS7IzLrXmUvHYsrD0sGuAqib
         LHVA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=9zZ2iIKjtnIzIajYT+GIxyKCjYpTcdEClasnE1DL9fE=;
        b=1D3NyeNmJekl4WtwCgPEvwc8+I8k1G7a6IPdS3T6lOWk+pX9WAxl1TkTtJHGwxDS/N
         F+M569G+aF/mlI3ekT42HrH5Gk98YQ8udwBw4AXNl1F3k4HrcxAOCVIf6yAzxtxGNeWM
         +Nics0eY0PnnV4gSF6cVKyTCkMOo4dNSufkhcMh/B8MPu24E+vlCtrYjiIR7UR5tWrNl
         t8aQuI4JRw2wy7gs+BZN59+Z8n/dbWxBhHoYpURlCkziSgxbsJ0po3v9t0mvTyZfUu3C
         Wa6W9e4TduTFPYMbLPQ1an5A+f77x2/TCvMWt6GZNzB88t0WDCnhe9SCrQPfmEuPTUcb
         uxfg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=XJM0sxVa;
       spf=pass (google.com: domain of anders.roxell@linaro.org designates 2a00:1450:4864:20::531 as permitted sender) smtp.mailfrom=anders.roxell@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: from mail-ed1-x531.google.com (mail-ed1-x531.google.com. [2a00:1450:4864:20::531])
        by gmr-mx.google.com with ESMTPS id e18si843018lji.3.2021.12.20.04.25.26
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 20 Dec 2021 04:25:26 -0800 (PST)
Received-SPF: pass (google.com: domain of anders.roxell@linaro.org designates 2a00:1450:4864:20::531 as permitted sender) client-ip=2a00:1450:4864:20::531;
Received: by mail-ed1-x531.google.com with SMTP id m21so10339445edc.0
        for <clang-built-linux@googlegroups.com>; Mon, 20 Dec 2021 04:25:26 -0800 (PST)
X-Received: by 2002:a17:906:dfea:: with SMTP id lc10mr4522007ejc.459.1640003126034;
        Mon, 20 Dec 2021 04:25:26 -0800 (PST)
Received: from localhost (c-9b28e555.07-21-73746f28.bbcust.telenor.se. [85.229.40.155])
        by smtp.gmail.com with ESMTPSA id e26sm6759811edr.82.2021.12.20.04.25.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 20 Dec 2021 04:25:25 -0800 (PST)
From: Anders Roxell <anders.roxell@linaro.org>
To: stable@vger.kernel.org
Cc: linux-kernel@vger.kernel.org,
	woojung.huh@microchip.com,
	UNGLinuxDriver@microchip.com,
	davem@davemloft.net,
	netdev@vger.kernel.org,
	linux-usb@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	ulli.kroll@googlemail.com,
	linux@armlinux.org.uk,
	linux-arm-kernel@lists.infradead.org,
	amitkarwar@gmail.com,
	nishants@marvell.com,
	gbhat@marvell.com,
	huxinming820@gmail.com,
	kvalo@codeaurora.org,
	linux-wireless@vger.kernel.org,
	rostedt@goodmis.org,
	mingo@redhat.com,
	dmitry.torokhov@gmail.com,
	ndesaulniers@google.com,
	nathan@kernel.org,
	linux-input@vger.kernel.org,
	Nathan Chancellor <natechancellor@gmail.com>,
	Andy Lavr <andy.lavr@gmail.com>,
	Anders Roxell <anders.roxell@linaro.org>
Subject: [PATCH 4.14 3/6] mwifiex: Remove unnecessary braces from HostCmd_SET_SEQ_NO_BSS_INFO
Date: Mon, 20 Dec 2021 13:25:03 +0100
Message-Id: <20211220122506.3631672-4-anders.roxell@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20211220122506.3631672-1-anders.roxell@linaro.org>
References: <20211220122506.3631672-1-anders.roxell@linaro.org>
MIME-Version: 1.0
X-Original-Sender: anders.roxell@linaro.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b=XJM0sxVa;       spf=pass
 (google.com: domain of anders.roxell@linaro.org designates
 2a00:1450:4864:20::531 as permitted sender) smtp.mailfrom=anders.roxell@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
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

commit 6a953dc4dbd1c7057fb765a24f37a5e953c85fb0 upstream.

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
Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
Signed-off-by: Kalle Valo <kvalo@codeaurora.org>
Signed-off-by: Anders Roxell <anders.roxell@linaro.org>
---
 drivers/net/wireless/marvell/mwifiex/cmdevt.c | 4 ++--
 drivers/net/wireless/marvell/mwifiex/fw.h     | 8 ++++----
 2 files changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/net/wireless/marvell/mwifiex/cmdevt.c b/drivers/net/wireless/marvell/mwifiex/cmdevt.c
index 0edc5d621304..a9cee3dac97b 100644
--- a/drivers/net/wireless/marvell/mwifiex/cmdevt.c
+++ b/drivers/net/wireless/marvell/mwifiex/cmdevt.c
@@ -323,9 +323,9 @@ static int mwifiex_dnld_sleep_confirm_cmd(struct mwifiex_adapter *adapter)
 
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
index 1d86d29b64cc..c802b73a15c5 100644
--- a/drivers/net/wireless/marvell/mwifiex/fw.h
+++ b/drivers/net/wireless/marvell/mwifiex/fw.h
@@ -498,10 +498,10 @@ enum mwifiex_channel_flags {
 
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
2.34.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20211220122506.3631672-4-anders.roxell%40linaro.org.
