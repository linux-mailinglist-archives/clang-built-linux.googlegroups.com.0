Return-Path: <clang-built-linux+bncBDS5JPEL3IIRBMUJSCEQMGQERUOQAMA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x33d.google.com (mail-wm1-x33d.google.com [IPv6:2a00:1450:4864:20::33d])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F89A3F520C
	for <lists+clang-built-linux@lfdr.de>; Mon, 23 Aug 2021 22:27:31 +0200 (CEST)
Received: by mail-wm1-x33d.google.com with SMTP id x125-20020a1c3183000000b002e73f079eefsf200295wmx.0
        for <lists+clang-built-linux@lfdr.de>; Mon, 23 Aug 2021 13:27:31 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629750450; cv=pass;
        d=google.com; s=arc-20160816;
        b=o6gxuFh5JhgPboSRF9BaEAdof+099/mzqcO7ST4fLgx0oII08j8aeOj0AXQePZAUyT
         8UAfjq4OMqQRR+9NFv9smYNs4slsWmwveDBFi20yse+63MJ7xiLDkrkuzfs3ycXDGrzb
         UlcX77HMjYwOAZqYzpzF5af9ltMab17qfTWMvKsm825odA62eZ2V5LEhNrlf9DlSii/f
         hj3NvY2TUeYgrppsakTMiDTlfsNSvVYh/EcsqufrtQQsRuSutZp/rNpks8XMQsJXdNhB
         jehmeLtWiFZPGpk/fWylIPIBHHzypcej/EpY0lJCVctV6wCGwjP9kGFaTfFpcZpyljwZ
         0ZKQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature:dkim-signature;
        bh=lgd1CZVXHvopLbUwtYI2TxgDtwHQSRNxe/DEl8JKmz4=;
        b=EhSlzassekoakJcbr6BZArxSuAsVpCdW3pRDsxUyW2snRuJe9/hEAgZLHidcpZQ/NY
         SqyEq2H6b7N8ul2YoJiorEHiVvYczieoQ4gckDSCgl4KJHGwE/mqw0Zlg9Saqa84xer6
         DFa1FP1CXZocqj/FISS8TButxEazRhQGwhw0LLi+4E7YhQN/PSqNDoEq/WHvByehhQP3
         82KOaxgeV3EsYZtRYVvh0U8B7yCPs/aWPt3NF46NfChlRfA3Xhlhs5f0X8e2myz16IAq
         Mj6cyzCSYIujMvD+JTPDlxELiG6woUjfXyhNF232LUVn/6wSgjoVyTtB1RcP7QSW4DWZ
         W6+Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=oZ0dUV1P;
       spf=pass (google.com: domain of lukas.bulwahn@gmail.com designates 2a00:1450:4864:20::32a as permitted sender) smtp.mailfrom=lukas.bulwahn@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=lgd1CZVXHvopLbUwtYI2TxgDtwHQSRNxe/DEl8JKmz4=;
        b=hOBbdzkAUZO/WaTF/htr+ICE4np/iHAQ4eJTY+mt0oUSmDHjH6TC9AQM6LbhiUs+f7
         pNNxPbO1W3bnfTcIhZQ+jKtj1ofelZkGkbsAQuhA5RdqEY8nxs3ysN0ZLizN1d1oxyQT
         uNcO/zl1SRWkndgvZeE6xSKwel5r7TKYaAtvhI47MFXR6C9NoZ7nk/f+dYHqNjlhnOkj
         xyJbwslxtOAMXm2CO3i9tOIW9jvCXeb1M+UQP3wI6mq1hwOWBiPaiYwjkhPEhHQ6uI/i
         xOfJHzQAx7SgdQrAXdf16DN2e1ytL+XkAhPUZJ05css8DEUtnrth7daovdE8YgxH1r+J
         C+xA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=lgd1CZVXHvopLbUwtYI2TxgDtwHQSRNxe/DEl8JKmz4=;
        b=PcF1ttTkDHrpfJGbh83SYZ+KBgDP9lBJsDiS8OUis4KFfKAQnntIXoOlzB2KLduMUp
         ZcuCtvt/B5KscyURk9IbidCZtNLur6sB87FzVHELyVLuXJRc/P0ogX02o4HnPPVe/qR/
         KxbjiNE2xd4rXcGJ2BkB5Xcb0Q0ZDnbjvD0U28fNl4t7Y3mKJZ5thf1eJRdtZKLq1Mkq
         hhGfeG1DpBKt3irFOdfhHSuKDVJIUifcD67RNY8trswDLCpV7cX619XO7m5p4im5pBvc
         vkMMPDIYGS/YDd2eKnKVxdpxGWCI37bdtLu/AWnraJCtDQjs90wyi+pB5M0UlUvKSN3x
         V2Jw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=lgd1CZVXHvopLbUwtYI2TxgDtwHQSRNxe/DEl8JKmz4=;
        b=VABE6/Cf1J3qDJ3UpIYWT7TqH6lZHuVGVq/OoFMtjJzbBsYeV6KV9IM6F8j5dYdIWk
         kPJTI5Evll7ifUCRNWZ4EyMMzhJTMPVb1DMpXUEyoLG0lsOmQ7enIMeq4E6WetOyP9vG
         8NgIm8t0JsAdwverO+cZVZoX5+g6ecLOmp7yEwOdv5Hp0abLz930I+2QZIsxQCDRyuVW
         FFVW7+NUBIUfyIzGPp2SBCYJwKY5X0WyPApjDwW4YkvTaxP6wQJW79l23o3VHI8Xxr11
         Fb56tgT9Rx856XUhlpH3zQOmRwwi0g8j7Hzk5Yf9UJi5NCX8nkMeXiH1M/HQCksdgQua
         ju1w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530DKcdV4bpsT/imSVk5OjAeHMIJ6yIF4oEkIrTJInCBuGIe1Kyu
	FF2myvsuMjFdaXN2e40hWJY=
X-Google-Smtp-Source: ABdhPJxMDr19JI0ZSZRfa05G+8LSP1tcH+R7LD9EFTZunASGcxLpQX5SL4zjRchJ4QYUV26UQayMWg==
X-Received: by 2002:a1c:e919:: with SMTP id q25mr461840wmc.28.1629750450820;
        Mon, 23 Aug 2021 13:27:30 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5d:6251:: with SMTP id m17ls674833wrv.1.gmail; Mon, 23 Aug
 2021 13:27:29 -0700 (PDT)
X-Received: by 2002:a5d:6108:: with SMTP id v8mr15354621wrt.96.1629750449904;
        Mon, 23 Aug 2021 13:27:29 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629750449; cv=none;
        d=google.com; s=arc-20160816;
        b=eELFjstwg7BzPWne8LesQGZqy/EuJFQXBf809KwX22WFngNpsWpz+2ej7Q8Vb18bWc
         OifijFkm0c9QJIB3BS325DTL//l2WXmL8qfeDrvTs9MPLNG4ks43JZujIWXy1vMu5mp0
         fIJIp/C1XpBfuM+LRS7jaEdIFX/bJJ3AAZN8EqKM8pMBdQbKpRgUEJ9qnMpVSsDtn26K
         3DUq0NH82EM26FshNXpsAeqC/nVNkSSsUgX9lHeMai/1FwYR51KPOQKZA6o64YS2y1Vs
         nA+BGrcN0vz0UO6KE9cHkjUjG0eG5aygScfsAftTuyP2Ob5tQuZmyI5DqV6Aq7WDCpLo
         R14w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=bIcLXpEM37ywSUnR+r6MN9eaKbHaPN9c26DZBTA5Was=;
        b=iq63+gzjYSXgaWepdoaKOPaPiFAiXctvjNxtlsFcMnmIgeZsf6IAE8pnBtmghWl8q2
         bxBN1JAlvVgVT0+v6Bzkq55G+0fWClA3J3scE6gBekbqbuPSVz8zSwn9oRV8peEAOP+Z
         5SI5K5F/aIJIdSwwHCduV2S9LHtB1X39O9PvKWO/1wyZxyfZMx3trl5BJ/vDRD0/6+Ym
         hba/x6Nbxf7m+bI1SuyauO1Ng4ni6h/uqqY4Xv9z7A8gyDyI7yNb/u9X7eKk/Ah4R096
         AaTMfpu4KOWGM8p4qpgAmjMqoX6PuMmvqtWRZ4XdadcHqWdO2iNuEPXUv3H9XaJ/JKoB
         4JXQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=oZ0dUV1P;
       spf=pass (google.com: domain of lukas.bulwahn@gmail.com designates 2a00:1450:4864:20::32a as permitted sender) smtp.mailfrom=lukas.bulwahn@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-wm1-x32a.google.com (mail-wm1-x32a.google.com. [2a00:1450:4864:20::32a])
        by gmr-mx.google.com with ESMTPS id a1si883820wrp.1.2021.08.23.13.27.29
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 23 Aug 2021 13:27:29 -0700 (PDT)
Received-SPF: pass (google.com: domain of lukas.bulwahn@gmail.com designates 2a00:1450:4864:20::32a as permitted sender) client-ip=2a00:1450:4864:20::32a;
Received: by mail-wm1-x32a.google.com with SMTP id d22-20020a1c1d16000000b002e7777970f0so268543wmd.3
        for <clang-built-linux@googlegroups.com>; Mon, 23 Aug 2021 13:27:29 -0700 (PDT)
X-Received: by 2002:a05:600c:4896:: with SMTP id j22mr411938wmp.170.1629750449410;
        Mon, 23 Aug 2021 13:27:29 -0700 (PDT)
Received: from localhost.localdomain (arl-84-90-178-246.netvisao.pt. [84.90.178.246])
        by smtp.gmail.com with ESMTPSA id o6sm15842832wru.92.2021.08.23.13.27.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 23 Aug 2021 13:27:29 -0700 (PDT)
From: Lukas Bulwahn <lukas.bulwahn@gmail.com>
To: Pablo Neira Ayuso <pablo@netfilter.org>,
	Jozsef Kadlecsik <kadlec@netfilter.org>,
	Florian Westphal <fw@strlen.de>,
	netfilter-devel@vger.kernel.org,
	coreteam@netfilter.org
Cc: netdev@vger.kernel.org,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	kernel-janitors@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Lukas Bulwahn <lukas.bulwahn@gmail.com>
Subject: [PATCH] netfilter: x_tables: handle xt_register_template() returning an error value
Date: Mon, 23 Aug 2021 22:27:29 +0200
Message-Id: <20210823202729.2009-1-lukas.bulwahn@gmail.com>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
X-Original-Sender: lukas.bulwahn@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=oZ0dUV1P;       spf=pass
 (google.com: domain of lukas.bulwahn@gmail.com designates 2a00:1450:4864:20::32a
 as permitted sender) smtp.mailfrom=lukas.bulwahn@gmail.com;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

Commit fdacd57c79b7 ("netfilter: x_tables: never register tables by
default") introduces the function xt_register_template(), and in one case,
a call to that function was missing the error-case handling.

Handle when xt_register_template() returns an error value.

This was identified with the clang-analyzer's Dead-Store analysis.

Signed-off-by: Lukas Bulwahn <lukas.bulwahn@gmail.com>
---
 net/ipv4/netfilter/iptable_mangle.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/net/ipv4/netfilter/iptable_mangle.c b/net/ipv4/netfilter/iptable_mangle.c
index b52a4c8a14fc..40417a3f930b 100644
--- a/net/ipv4/netfilter/iptable_mangle.c
+++ b/net/ipv4/netfilter/iptable_mangle.c
@@ -112,6 +112,8 @@ static int __init iptable_mangle_init(void)
 {
 	int ret = xt_register_template(&packet_mangler,
 				       iptable_mangle_table_init);
+	if (ret < 0)
+		return ret;
 
 	mangle_ops = xt_hook_ops_alloc(&packet_mangler, iptable_mangle_hook);
 	if (IS_ERR(mangle_ops)) {
-- 
2.26.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210823202729.2009-1-lukas.bulwahn%40gmail.com.
