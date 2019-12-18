Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBS734XXQKGQEZJKI7CQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43c.google.com (mail-pf1-x43c.google.com [IPv6:2607:f8b0:4864:20::43c])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F942123C46
	for <lists+clang-built-linux@lfdr.de>; Wed, 18 Dec 2019 02:15:57 +0100 (CET)
Received: by mail-pf1-x43c.google.com with SMTP id d127sf215300pfa.7
        for <lists+clang-built-linux@lfdr.de>; Tue, 17 Dec 2019 17:15:57 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1576631755; cv=pass;
        d=google.com; s=arc-20160816;
        b=PoLz6ggapX30XDc+rTovPwky+YVmbrv5jq9IQ4SyhmIrK/6c0+eWXgTcjWZDaL6wnS
         6ZqjmPCOQEKvro4TCLrOjh9QnKAVqxpMV/snRR02p4swmqtnLAmTzzNMaZ7tLEcHeyp8
         90QBCzhRFVb1RZYRZzWJqoB6D4ihm0nvBpxpeZFRaZoFRYjQ6KfZwD2QTF+GObvTgnkL
         g/1t48wqrqLbXNteAniTaEd2QFt9Nu6fwz4giP+oQ+T0qQqJYuYAKZhbm3+OrT/5d12t
         F8ctKnGJtI+4mitTCeEvfxkXs9Wg8p1SkRkKl4Aci0axk9o0T71UP6HEjkEJI2wWsU5k
         J+Vw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature:dkim-signature;
        bh=A/JSTKKYGEelwkpa3sZLNfFWeHMrThvwsxTLuoqXAuM=;
        b=Ycrpn8lCVWZn6Wf87fY2HMh7csMKB9gUyl4Dq0eil+DOp1aUZ883uJAWo6hb6tZyhI
         9d59yVC1PzqyKG2qV6y4KbJAGZnFS20oMiBOWu1348M7ftOLGvYSgxwbuN4q3jwfgy76
         v07igKmGKx1iZOIa4bwoaYs3LmZDIbYU1Vg/JytCZUrnS9w1i4do0ce4NzknSEY1Z8Zb
         x7o/6jg1XHblonQgny52juDu+Ok+WMtoq5SoQuZodT6fffB5kVQWPU1xN35NnIryuNTN
         qiD8GUSeLOMYMWOTmrzalnSt7yl5e7SjFJWUjGT2VLdAiTX0NvKD8/G4Zr+wbOMJi0vz
         +DLA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=klfD6iko;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::341 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=A/JSTKKYGEelwkpa3sZLNfFWeHMrThvwsxTLuoqXAuM=;
        b=khJZMbeAj5svfpCXJaPWhjKoSI+jV5+2r/rv3ZxjOaP6oS3zlrFfKX4ye9Pc/og1vE
         0MP7x4l139tHYj3CLewHOwcLIQz83qjJvhRtUHnLDz9KyLtkrSrGBBl8Y9RQfpdapFzM
         mhPuxo+rMboQA9U45sLbXiLsFcx3EmVorzmUzNCXeq2E+K8Ql10e/0QYafiArRNTragy
         ER8Fy8tAieVFZK+EL5ht3nj9bSNGVv/mS1h0Mp+lgy/87yzSjtmQXE3rBQ85RBKAFdY5
         p+jP445n/2Ynww/DyVY8aJ1ladEbVPaR+HAB7RFnublNjYFDvBk78jJwqOC0pH7d1as0
         N8ig==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=A/JSTKKYGEelwkpa3sZLNfFWeHMrThvwsxTLuoqXAuM=;
        b=jX9XdRT7EZEdhcrFP1om9TQRwGKZA0hv9OpiNqaa2t5RsZloLwvs/9AO7TB42sMjTX
         3v7cdjN7HH096Fom9clFeSgn8g55yUqE1jLjspk6Q66a6g1mm/B7Nr039JxJoDIQjwDx
         fnvAahj8fKMvAWc6+v+xsChUeAWfR8nJ3/YTI4dZ/euvp6emz5UhRYAQSdDyhnrG9E2Z
         JyGYVgCOiUYggIk/dHM6B1aI/WwyqU0v5X4DdQjJFgjipCGc6dkaDGzFHufci+3DLxl1
         fdoopN+UF9LwNri6NVzQtLivS+PwaLNAezbeU9c6kY4zLK4/skN3M7FBqrge/sC5OU3D
         QhBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=A/JSTKKYGEelwkpa3sZLNfFWeHMrThvwsxTLuoqXAuM=;
        b=DNX04B0ScaQ1oLNC6GFXOSh7chgxp1htoSMz/QMxidYNpPNqI82TWLU95s91yiyP92
         /0pERv4xUA489vqAdHtNEc3We2vypXK7gzzG8nUqf17S4mfIYeK6/5KgObam07H9q76Y
         wRYxtg3Nz+ON9IFxe19UZTbX/fvgin910MV3N5EbHdmlnPtScZ/qNEKDVrhLj95imtGj
         QOCon5uw4GJWWMTs2t6PHsUpchIuQM5n8ym7zwtSlkoxSlI/kQdv7oOdlCvis2HM67Cg
         8/qXP0DS0nJlX5eqEqMd13eMMVyx+nNjj8du9+nZXcfMqIIYREHf6zPUNLz/0D+YIBqt
         6uLw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVlvj7jZDwNC0sTDTPvV+HUX6+BN/jnX8W40ORdw9457Act9jUl
	oMS/8vbVELqcVoaPPPgRn0s=
X-Google-Smtp-Source: APXvYqwrNv7VcM9Fj7ibZ8VhretvtSc6bgOHLhgAT2yUGs69x/F8frgZOLJSrHOspxRzikk87Yrnuw==
X-Received: by 2002:a17:90a:c795:: with SMTP id gn21mr299734pjb.95.1576631755562;
        Tue, 17 Dec 2019 17:15:55 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:3421:: with SMTP id o30ls41165pjb.1.canary-gmail;
 Tue, 17 Dec 2019 17:15:55 -0800 (PST)
X-Received: by 2002:a17:902:6a8a:: with SMTP id n10mr1207767plk.9.1576631755078;
        Tue, 17 Dec 2019 17:15:55 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1576631755; cv=none;
        d=google.com; s=arc-20160816;
        b=A28+noa207vi/2WAoHSg03KQ11YbA1NwnMsatdC8gUOD/4mykJD21823s1b+wDYSrC
         vNQiHf1/mjC3KWqMDWQb+0Wuc4mYdxm0/2T/FFtnkrYpPqDbgPOuZmROQFiDcNV7Vq0w
         fYzKS9Mz7XXfBB2w4qk/aFOfmeeMl8tN8IfYX2NF5W5ODqzmAsGmNVp3GvdWkbW+Dk43
         KuCHk+PHMdSRjCWB2BmCUeGiC1wrjZ1IGEEmmwGfsC+Lk0zxLtYJryD6zjPAYZ2ynLnq
         21CihBd27dFIJMnTewcwuay14Ve/Z7xiMSvf+IgSt3bzqBnpCdXCpy1vi8nxG3DdWVrt
         Eb3g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=d+ndbyvc/xD98taLiNNXwi7PgRFqCDT7vLcEGC7qSs0=;
        b=TtUGslPh2qzAjZmiG7BDoRijpHG4JEYOHQPnxTWN68+arC4JVMcB4vtaLwF07mIZ1A
         uH2lz0tFVf96XdQL9j01Io+JGgzGgWNIO3Dr5nwv0iCNpapHE3A0h/EotSZjCG0dhaxp
         l5V4jenlyGLiqnL8P6KC00pElIDudiS2hEsA1J8jH23erTChiv9asw4JeKPD4TJofHTq
         JNR4UuNfkjbuycdr9r2/nv9dffxYS+HLRYQ0P6Xh1Y0AyL3darFWDNGH7rwK4IVu8VTf
         wfW7R77WBnpVDAE666BckfduwHFr+ZUVzf8+HGKoBF90f20F6C8w2YBQBZ9rO8YUGHAv
         fQ3Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=klfD6iko;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::341 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-ot1-x341.google.com (mail-ot1-x341.google.com. [2607:f8b0:4864:20::341])
        by gmr-mx.google.com with ESMTPS id x12si25926plv.3.2019.12.17.17.15.55
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 17 Dec 2019 17:15:55 -0800 (PST)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::341 as permitted sender) client-ip=2607:f8b0:4864:20::341;
Received: by mail-ot1-x341.google.com with SMTP id k14so274864otn.4
        for <clang-built-linux@googlegroups.com>; Tue, 17 Dec 2019 17:15:55 -0800 (PST)
X-Received: by 2002:a05:6830:1e84:: with SMTP id n4mr115298otr.267.1576631754206;
        Tue, 17 Dec 2019 17:15:54 -0800 (PST)
Received: from localhost.localdomain ([2604:1380:4111:8b00::1])
        by smtp.gmail.com with ESMTPSA id w12sm186001otk.75.2019.12.17.17.15.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Dec 2019 17:15:53 -0800 (PST)
From: Nathan Chancellor <natechancellor@gmail.com>
To: Kalle Valo <kvalo@codeaurora.org>
Cc: linux-wireless@vger.kernel.org,
	netdev@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Nathan Chancellor <natechancellor@gmail.com>
Subject: [PATCH] hostap: Adjust indentation in prism2_hostapd_add_sta
Date: Tue, 17 Dec 2019 18:15:46 -0700
Message-Id: <20191218011545.40557-1-natechancellor@gmail.com>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
X-Patchwork-Bot: notify
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=klfD6iko;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::341 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

../drivers/net/wireless/intersil/hostap/hostap_ap.c:2511:3: warning:
misleading indentation; statement is not part of the previous 'if'
[-Wmisleading-indentation]
        if (sta->tx_supp_rates & WLAN_RATE_5M5)
        ^
../drivers/net/wireless/intersil/hostap/hostap_ap.c:2509:2: note:
previous statement is here
        if (sta->tx_supp_rates & WLAN_RATE_2M)
        ^
1 warning generated.

This warning occurs because there is a space before the tab on this
line. Remove it so that the indentation is consistent with the Linux
kernel coding style and clang no longer warns.

Fixes: ff1d2767d5a4 ("Add HostAP wireless driver.")
Link: https://github.com/ClangBuiltLinux/linux/issues/813
Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
---

Sorry for sending a patch for an "Obselete" driver (especially one as
trivial as this) but it is still a warning from clang and shows up on
all{yes,mod}config.

 drivers/net/wireless/intersil/hostap/hostap_ap.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/wireless/intersil/hostap/hostap_ap.c b/drivers/net/wireless/intersil/hostap/hostap_ap.c
index 0094b1d2b577..3ec46f48cfde 100644
--- a/drivers/net/wireless/intersil/hostap/hostap_ap.c
+++ b/drivers/net/wireless/intersil/hostap/hostap_ap.c
@@ -2508,7 +2508,7 @@ static int prism2_hostapd_add_sta(struct ap_data *ap,
 		sta->supported_rates[0] = 2;
 	if (sta->tx_supp_rates & WLAN_RATE_2M)
 		sta->supported_rates[1] = 4;
- 	if (sta->tx_supp_rates & WLAN_RATE_5M5)
+	if (sta->tx_supp_rates & WLAN_RATE_5M5)
 		sta->supported_rates[2] = 11;
 	if (sta->tx_supp_rates & WLAN_RATE_11M)
 		sta->supported_rates[3] = 22;
-- 
2.24.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191218011545.40557-1-natechancellor%40gmail.com.
