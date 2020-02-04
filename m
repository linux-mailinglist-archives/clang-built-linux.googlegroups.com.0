Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBIUS4TYQKGQEM7MQNAQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x138.google.com (mail-il1-x138.google.com [IPv6:2607:f8b0:4864:20::138])
	by mail.lfdr.de (Postfix) with ESMTPS id C800915159A
	for <lists+clang-built-linux@lfdr.de>; Tue,  4 Feb 2020 07:03:15 +0100 (CET)
Received: by mail-il1-x138.google.com with SMTP id s9sf14066191ilk.0
        for <lists+clang-built-linux@lfdr.de>; Mon, 03 Feb 2020 22:03:15 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1580796194; cv=pass;
        d=google.com; s=arc-20160816;
        b=uUuqd6rdJsH0PGwyoswSwh2Z8PT5bJc1z39ginxGbhA46Ipv7qoBMISdufCevdZSec
         P/bMsCCl1ifIoUzVkIDJqxsPYry+QfKPCDxepI6qfjAmoejfsNgXkoUt4sj5HntuCZJl
         1/XT5bZGc93xecNDZIqp2pH9j/uNevI0KRCoFflUKW7ZzXE1hkeeZPCd45tpoQvYF6fZ
         jnZLXCE8kttgel27mYYkSKXh1Z74vbkI935qWbdUc7D4LF9Gkoyew3MQ4MGpt5Ej8IXu
         WiCpd8bAZzrajsKvXE9DUM0H0pgTDdqtwtSTwyt8CXOY4X7y5cql1Z5eVTrnZyp7wJur
         rQZg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature:dkim-signature;
        bh=qAYIkdOD9Y2LdyB6ZNyfmN2eWzNSXL1EHvLUmBegM9c=;
        b=Yj35ZmyCKXfbDPMvv3DrO9rkGKCkk8NDcbPxq21idjVTAZK2xBqWc2TQ7VGf3n/ojT
         guK1th1dRgEzupzV7AW9y9PCJA+YhccTjFOWaQ2Dkmy6dv3Y2UTr48kVAHhWPRELaHcV
         wwA2yV5uyD0hHaKN2grOohP3I3hCV/5mQn7NhSBJKnxnxRkrXSCXtsI7KNg+D4DJgJdV
         OWiu4s7L9CCL68LjnG9ebFt90tt6VyRUW+TYxKiK6pkapkQbWMRy7GKXZr1ndAyE+1gZ
         A5iNidJhimaf3TGaNBaCCheH/CuciLXcozmXTLtGors5cYbueWBHli5SZfa3DmGrFy6t
         oZFA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=iXUE6ebm;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::242 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=qAYIkdOD9Y2LdyB6ZNyfmN2eWzNSXL1EHvLUmBegM9c=;
        b=NACZI1nB28z+BxOQrwiaIeHU3YOtz93aErDoKrAHrHMnNFW/VsPZ93CKL5IkxqM02/
         aVlp28RJPM/2DPSoKEzdUpTdQZyZT3amAw2zpCUofYbkpc7E3/fvifFKhE/EGwfXlxhi
         Y7BDR2E/BHFXm4eAoZqDMPpUpD2UMDmr9BZAG8CZ8nNt/DOJKewQnTouQNG3F2zGhXfZ
         Ogit1o/Qb+98YXr/MX/kyLyPs/TuFX/ByQbk+fEssjeJcXaOeGGMv/P7hWpn0q7uQsfI
         GSRaI1h7lzNd25lLoeRfrtq5edmIcxz7AsOkJ6PVP1fKF7Hxs7tuv/TFf+fdNS/Pt5oz
         nMfw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=qAYIkdOD9Y2LdyB6ZNyfmN2eWzNSXL1EHvLUmBegM9c=;
        b=riS+IaPUym3sjz99Jp4Dq8KIFHNQGMw8FZajVGuLRvXBEI/MtsGmXwDMD9AQnhvyf3
         cRTLlq30DvUce+CdifHWJkjtjVhjNRaEv8GzD3mrVortdvcmkIppFt4f5l/myvQx/swv
         ysAYx1rnrwRdaFUYa+sEcSrztIjVs8mbGolgAwygwr7p6tVbKp0oRFJzIXLiukilxpDU
         X2J3tGUsWymOjdY0KGtYTdS5VweuyFvJmKbERucvXPeN43vSEmrL89lq2FMuBzHwZYaN
         EvEFw9Qc3EjZR0/Re0mPPD8N1p9JtdeTjZszZVsgmtoGgU/PbwlOGRPNZ15CIi8kL57E
         estA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=qAYIkdOD9Y2LdyB6ZNyfmN2eWzNSXL1EHvLUmBegM9c=;
        b=BXIymEiB417eK4w3Fv4GSv+iFp4uiO9QXq2XhVGrswVMq6NPUI5wLNIDn3LaTk6lA1
         CYySUg5J7F3oxu8JFWrgdfA4V4wnLUGk9rbAk8KBnzjmmrTYKmb5Z9K1uMqL+BtCmQrW
         2aY4qm23kiKx/KYenyMbEfXYUwVPibT/R0kzDIiduVzLL4+1/H6OVSz+BzXeqAqdx3Zu
         KuzDDWnqLC6hsEVp0pJE2czgekSeJsTvfEhWmfbt1/ELtjxakRiIOiHX9vSBWbPtDWRz
         LNQp9HMJIDIccWmMrBIGcz1odQtAii6KAV2PqDUn75PX+eTIH99RKDFwbHfTh9exv1Ge
         8FKw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAU985vxObERuDKca+GUXZyKPR2vAAt0OV0z5r0bIelYp5gNMW5h
	alq/i4bHtg9KUAQhnrWFeaY=
X-Google-Smtp-Source: APXvYqzPGTdcxfmkbN4lIV8XrTemzrBJpgYPYYDXR+20szYB1aJaKQUIyv/IuDWNLhB8sOn+xUp69A==
X-Received: by 2002:a05:6638:a2c:: with SMTP id 12mr22991362jao.60.1580796194401;
        Mon, 03 Feb 2020 22:03:14 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a6b:7205:: with SMTP id n5ls387969ioc.3.gmail; Mon, 03 Feb
 2020 22:03:14 -0800 (PST)
X-Received: by 2002:a5e:de42:: with SMTP id e2mr22849253ioq.228.1580796193997;
        Mon, 03 Feb 2020 22:03:13 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1580796193; cv=none;
        d=google.com; s=arc-20160816;
        b=wCcFQUzNDtAPv3mTJQgPYvF7qWRyL4b3ny6mtlPDGxKd+jlsXGLPUYQx0i9VuwrpTu
         +5ifUnSUW3mKuBVTxGxV2bU6HFeFOkI3e1FUR2Pt8FfnMCmWbjChF7ryO9OrBq6rla2b
         62ZbFqK2aQdfD04EgY2jcVuhfRTcUUoG98VMgZKRC4Dp1QYQti8JrTe3fX27fblBcFAj
         prTufoAe/AfKhVAyfGZRudc+lDCbtEaqJFZ97+Vv3R+HloVPKY8JRnyQq/O3j7qucrrt
         qsJ3qFPTvhPHopcPwUys030NSvGq03IoInEVGGrwJ/nnpIiOk66okJYZ8ei8ALf1A83y
         CeSg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=XMN+K684Z/eVZ2yqWGF8j0z6j6M569qkTkBF8k40oto=;
        b=dBv3vd4bInX0AaZO+PrAtZCjgggtrMrQV98pjzJMOVVb6UCg8nFIwE24od8X+JU4fF
         rJS3Wv3ABjmWlcUX+5pS6lQCYFHdDW+e+p//1ZC1vHZUqYZCKHwG/5B2/vnuSMYuITwm
         UaoGgxUr5nbLTEfiMnGYTN7jqQRbtQoxfnOYraCc/VJy9GBNPwByleoWo0kmCyzpPMdX
         y0pY2ILWckS7u2lhznh3oLBIBg1IPacj0IABvibLFBdFKYEb6z/MaQ3r0Z08d1Oee82z
         MMLawbBUGGWwq/7g7EUSNt8Qz8KyhlADaydyM1r58vRlLhQbwRWU2cC+Labc8+YHDUWS
         ySvA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=iXUE6ebm;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::242 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-oi1-x242.google.com (mail-oi1-x242.google.com. [2607:f8b0:4864:20::242])
        by gmr-mx.google.com with ESMTPS id z7si1094285ilz.1.2020.02.03.22.03.13
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 03 Feb 2020 22:03:13 -0800 (PST)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::242 as permitted sender) client-ip=2607:f8b0:4864:20::242;
Received: by mail-oi1-x242.google.com with SMTP id j132so17287567oih.9
        for <clang-built-linux@googlegroups.com>; Mon, 03 Feb 2020 22:03:13 -0800 (PST)
X-Received: by 2002:aca:fc0c:: with SMTP id a12mr2264517oii.118.1580796193543;
        Mon, 03 Feb 2020 22:03:13 -0800 (PST)
Received: from localhost.localdomain ([2604:1380:4111:8b00::1])
        by smtp.gmail.com with ESMTPSA id d131sm6501708oia.36.2020.02.03.22.03.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 03 Feb 2020 22:03:11 -0800 (PST)
From: Nathan Chancellor <natechancellor@gmail.com>
To: Mark Brown <broonie@kernel.org>,
	Liam Girdwood <lgirdwood@gmail.com>
Cc: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
	alsa-devel@alsa-project.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Nathan Chancellor <natechancellor@gmail.com>
Subject: [PATCH] ASoC: wcd934x: Remove some unnecessary NULL checks
Date: Mon,  3 Feb 2020 23:01:44 -0700
Message-Id: <20200204060143.23393-1-natechancellor@gmail.com>
X-Mailer: git-send-email 2.25.0
MIME-Version: 1.0
X-Patchwork-Bot: notify
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=iXUE6ebm;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::242 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

Clang warns:

../sound/soc/codecs/wcd934x.c:1886:11: warning: address of array
'wcd->rx_chs' will always evaluate to 'true' [-Wpointer-bool-conversion]
        if (wcd->rx_chs) {
        ~~  ~~~~~^~~~~~
../sound/soc/codecs/wcd934x.c:1894:11: warning: address of array
'wcd->tx_chs' will always evaluate to 'true' [-Wpointer-bool-conversion]
        if (wcd->tx_chs) {
        ~~  ~~~~~^~~~~~
2 warnings generated.

Arrays that are in the middle of a struct are never NULL so they don't
need a check like this.

Fixes: a61f3b4f476e ("ASoC: wcd934x: add support to wcd9340/wcd9341 codec")
Link: https://github.com/ClangBuiltLinux/linux/issues/854
Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
---

Also, turns out this was fixed in the wcd9335 driver in
commit d22b4117538d ("ASoC: wcd9335: remove some unnecessary
NULL checks")...

 sound/soc/codecs/wcd934x.c | 20 ++++++++------------
 1 file changed, 8 insertions(+), 12 deletions(-)

diff --git a/sound/soc/codecs/wcd934x.c b/sound/soc/codecs/wcd934x.c
index 158e878abd6c..e780ecd554d2 100644
--- a/sound/soc/codecs/wcd934x.c
+++ b/sound/soc/codecs/wcd934x.c
@@ -1883,20 +1883,16 @@ static int wcd934x_set_channel_map(struct snd_soc_dai *dai,
 		return -EINVAL;
 	}
 
-	if (wcd->rx_chs) {
-		wcd->num_rx_port = rx_num;
-		for (i = 0; i < rx_num; i++) {
-			wcd->rx_chs[i].ch_num = rx_slot[i];
-			INIT_LIST_HEAD(&wcd->rx_chs[i].list);
-		}
+	wcd->num_rx_port = rx_num;
+	for (i = 0; i < rx_num; i++) {
+		wcd->rx_chs[i].ch_num = rx_slot[i];
+		INIT_LIST_HEAD(&wcd->rx_chs[i].list);
 	}
 
-	if (wcd->tx_chs) {
-		wcd->num_tx_port = tx_num;
-		for (i = 0; i < tx_num; i++) {
-			wcd->tx_chs[i].ch_num = tx_slot[i];
-			INIT_LIST_HEAD(&wcd->tx_chs[i].list);
-		}
+	wcd->num_tx_port = tx_num;
+	for (i = 0; i < tx_num; i++) {
+		wcd->tx_chs[i].ch_num = tx_slot[i];
+		INIT_LIST_HEAD(&wcd->tx_chs[i].list);
 	}
 
 	return 0;
-- 
2.25.0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200204060143.23393-1-natechancellor%40gmail.com.
