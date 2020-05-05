Return-Path: <clang-built-linux+bncBDEKVJM7XAHRBDPJYX2QKGQE6OGDUBA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x439.google.com (mail-wr1-x439.google.com [IPv6:2a00:1450:4864:20::439])
	by mail.lfdr.de (Postfix) with ESMTPS id 444051C5855
	for <lists+clang-built-linux@lfdr.de>; Tue,  5 May 2020 16:13:34 +0200 (CEST)
Received: by mail-wr1-x439.google.com with SMTP id r11sf1255469wrx.21
        for <lists+clang-built-linux@lfdr.de>; Tue, 05 May 2020 07:13:34 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1588688014; cv=pass;
        d=google.com; s=arc-20160816;
        b=dqj4yWbVOLwPQMVsU/3g3zpsc//pVrwE2oduOBq2v1+xBp9dqD5SQkowQuRMBRBTOu
         XM3bWneqOTeDK5V8NucmT1gsUeyayfBAfVfbTDiVdleFBjQx4Y3RsUgySfyJwDJvQyZJ
         rsYu3rMjeYJfZm4g0QF9F1/rDoqflan2Pw9lmmHQTXxONs61arIjIBens0yrjbg5oivE
         axTDzoeptbgd+1l8TrlrlxUVnxPFwk/8eDqoJZMWXvjlwgEMycaLI8fit7VFsCduhMrY
         Hme1rSC/k5TbqguCiffIn28gUDXe78xie5yyoX+ZR49wl93QrUCPEPMVPefUsHw1u/9K
         L6yg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=3jEDWA52h82oS0sYkuWcpgOOb3kACDbrbq76wDJW3jg=;
        b=Hj29BQz+eWdiJTN7COswSrVeo69vc7cizsCTfKp7v0ven/6eTl3K1+vVp6Tg9NIurD
         R8z3ystFzq0uDREWTtkDH6P4wSv3IS3bSYxIHJVyYBH6Od6277hqP8gs4wwJKdtvn+Ml
         sFUzqQ1hr5vR6KiOgwvJZ7RBZl8aMt/+ku7gwYnNeguCQLKGTpY3MCSYRTDyWDqoWdC8
         xCnKULXqhfee+L/yePZgNgq2IqUFLTJkN5D6nhvgpugiLx3rUY5Iu7WPIIq8V7bb6W7k
         PyWvd1AW3AO1eCqBQb5xg7ug5n9sOCcSrWOlXkfU7kkd+XMxcNfu4BmrmwdWHCJTA5GF
         Iqhw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=neutral (google.com: 212.227.126.130 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=3jEDWA52h82oS0sYkuWcpgOOb3kACDbrbq76wDJW3jg=;
        b=Gbd6f4t70oKeMwu3WGY7NQen6PTjxptJL6mb0hdwE0Jf3zGrYEuidGGIKm102+06iJ
         OL5xkEjYbMEL/XBEDRw+yE43YlabLMHnU/HuTCPFJWBicO1/vqV10E0p3UWmBfQjBLYq
         rTiG0Jx69RUdLm5bsUjLJp3YJ7KpzYQnJ9VDaU6Xul7621SBmYPYSmfSSu+8oiOP/8n0
         vYQv2V173MnHzPJruYeIUZtoxyz9TPvE04Vc/TUkZShP10BNdGFxOgAFMv+QK8NhtHAz
         aSJmhE3qUn12iSphGr/4aZaPoziyogp2Zch4quWI8aRnn/83IQxfnBF7CsTZdDNhQP83
         L8+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=3jEDWA52h82oS0sYkuWcpgOOb3kACDbrbq76wDJW3jg=;
        b=RadF3MtVWbuoBdh7Wxyva8EPRUtxh9z971AFYB+WA7kpQRTJVT1gHnhScsEf3oYaXw
         YkyTZ2Aix3hubf9VFp/uwzILo7f2F2ksSTZ1CnfuoJYhtLckHBQk/oWR7UuEE+WSiAIK
         idPHTtvuFe7gIurNZRTI69aRMj7Bl+w8IJSYkPNsUi9lBkCkUIUeMWK3rgW44gHhsEJd
         z/W9NyrB0yXqpHY8G8p1ZQJDA8sK16Wg6NxF+02gdiYt6CHFTAWKnO1p5w15ZBOBkQsz
         6Vnh2EAUahIlpSPSLw8knpAgV7vukilnNVrRBsw6TVl4ntPKeYxuxtQA5ss9m9MSvRkl
         gDug==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0PuZPQnQACohnwPYm8yGoi/9CUd6k0+k6eP6NQ/MfL0zl58Is2hRA
	LF76gtT+OV6w/GLEJdG/cpA=
X-Google-Smtp-Source: APiQypLfuPj2GQBkpH+XvKwFi30n2/mrMNpCWsOkzOBbuSd1QTmAlxVd5RWCV+H05PThNTkmcnDOXA==
X-Received: by 2002:adf:f4c4:: with SMTP id h4mr4136297wrp.142.1588688014038;
        Tue, 05 May 2020 07:13:34 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1c:a9c4:: with SMTP id s187ls4598904wme.0.canary-gmail;
 Tue, 05 May 2020 07:13:33 -0700 (PDT)
X-Received: by 2002:a1c:23d4:: with SMTP id j203mr3814764wmj.49.1588688013595;
        Tue, 05 May 2020 07:13:33 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1588688013; cv=none;
        d=google.com; s=arc-20160816;
        b=O4FxzDSM3IjSZvPFMAx8DgfIyqKVnZYcvozqIcp5/TGYjJuem+bGt1DZEMHIw6cs9/
         9QBE+HBk6Gh/FNbQ6JRQG6OolyvC+Cj0EHQkK2gbbrQ+C5TSLu21wejfIHK7ItwoslnV
         PqfaDbjqtkfPLP5diGsdlAOtm3egBMlsYazNbICPXq7NEKAdf4pjPRUZMERoX2CR5eco
         lsUMdFS/5ETNrzkxo5Ra19U3sIwNH/K7xUwkq/jij76P3sZAncmQiWr93JIQqQrgsu0d
         lCK0uAwdeCmenQUXzLQ2WYoUodEg+5Znui51wZouQXnPKysiu4OYjOiwnLdOqHk42ORX
         yKGA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from;
        bh=zVWl7POs3FDgf6OJshkbL/jFTp/DcvJrHydDmVyN7wk=;
        b=e4WsQJ41rkT6iUMW7gpInH4FF6PCqQaytwZW7UOOWocVY4CrafGsRV3us7vd3jeufn
         0ETX7DEKvkCdRfsPsoNKzszor3lPs5G8Z/ETGy5NuUap6n9JNQw82MZvrIQdvprVo7FM
         hHbjuhCh7s1cPzv3t2Ge0+wHzCcXgpAOY9Yu+/qu+o2Ij7HFOFs29RbAvWwd9j+6XMLs
         Jlcrii5hMg/RvWW9TquYtYweKyYaoWoMIwVjbflngh9eHpkJP7fBtAMYF6ImSWCe3ieH
         96LqK3ZMpk5yQkghpWPdXWiPxpa15RyS0u5Kqz+OHbsaVV4QzVEDRLTpuHTakn71WHzO
         tQNA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 212.227.126.130 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
Received: from mout.kundenserver.de (mout.kundenserver.de. [212.227.126.130])
        by gmr-mx.google.com with ESMTPS id u16si173843wmd.2.2020.05.05.07.13.33
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 05 May 2020 07:13:33 -0700 (PDT)
Received-SPF: neutral (google.com: 212.227.126.130 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) client-ip=212.227.126.130;
Received: from localhost.localdomain ([149.172.19.189]) by
 mrelayeu.kundenserver.de (mreue010 [212.227.15.129]) with ESMTPA (Nemesis) id
 1M9WeC-1jSePQ0bES-005d0q; Tue, 05 May 2020 16:13:32 +0200
From: Arnd Bergmann <arnd@arndb.de>
To: "Jason A. Donenfeld" <Jason@zx2c4.com>,
	"David S. Miller" <davem@davemloft.net>
Cc: Arnd Bergmann <arnd@arndb.de>,
	Greg KH <gregkh@linuxfoundation.org>,
	Herbert Xu <herbert@gondor.apana.org.au>,
	linux-crypto@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	netdev@vger.kernel.org,
	wireguard@lists.zx2c4.com,
	clang-built-linux@googlegroups.com
Subject: [PATCH] net: wireguard: avoid unused variable warning
Date: Tue,  5 May 2020 16:13:17 +0200
Message-Id: <20200505141327.746184-1-arnd@arndb.de>
X-Mailer: git-send-email 2.26.0
MIME-Version: 1.0
X-Provags-ID: V03:K1:j5rBKEs2EZ2wBWucgw3jP/snV64xmxjwf5JSJRK1981/0aQIMOW
 fEF0VkodfzvUsiuEQUDo7kxlEFs3xdtHubS7l8i8Gk1lEj/6nOgXOAI7UbeAobG1OrqBrcG
 GVJlqLnzIGLXPiv/nvBYUAcfTh4xKECz/6lRIBaCKcqauCArBacxGzmbeG17O3z256yLxp7
 bPL+EwTM3HZElCMzzbHdg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:Dk/GUQ/t1Bc=:yEMm/AYZhCfPtA9HWgU3/6
 NpaeDf8tJN2PXbUfTPSlKnW7zxCFyXGgCxtknT8672D1Ri8glQ0ejXiFdUI0VLfBoZxCu5ZDq
 Clbq9XIaw4vcoS70Z2oe1OASZcipm0xIj+Zd/sSDeKE8gTibGvA7lKu5AMxc3kJh2lauU4eO0
 2VZryiFexozDS0SJoW6iZ6r2J2I7RNXCG9q5S3XNMZEHyPZxOUTh7XKocmbX2dBzzUCYOYkob
 ImIbtdgQxuidwLOPtuVokmY/B19rUsAtrBJQavK1pXZUX9zUsmDM1rl6/9jg9JmEWtZYQdHJj
 +3AnWXN2FG9EqRAhc3HC73C63I/UyhuLDh2+lBinSTdkgGdPQ1TNh58+2id0y4BPR06U8R23C
 CAB8mOJeJI1VXb2BGa7qb8GxLRBTBqGJotvhWYSel4/A+YrG7hjLIlsAvodsTEb0dEV61D5l5
 INqNgLWCH3tuiIYBOTpfgiCSB8qU83C9eMU5oClxOZAEpyJjjsLdxi+qSrpIUixWyJbMjM25b
 NjnrlxnZUtn2Z3CAdaNw786GgKxn3jw80kwrk6Onysd02XylVd4HeN6QAUsczkoyc1CD4L9zK
 2ktIYnX4devlUErlwVSGJzrPp+U9YNrHIcGTuM/KMRD3KzIH9+zjoDIVQ3AtpjcnZnuR4NQnt
 oYRKBcLtwnw/1EJFvNfQsdavWNOOzKnjXIa8BXi8RM980R6bmIOG3PRpoR/waCc+FYsBccfA6
 xLLw98YqKlcnpnG0+v8pwD98Lv0jX+sbOtb4b3JZeVJm0LO7sik3VgKCtlEjzeXI8AbKWOwCk
 bvmJu2G6jNC4yXyi8EScJuTfM7t46CimQURKtQRg4qvTNma43E=
X-Original-Sender: arnd@arndb.de
X-Original-Authentication-Results: gmr-mx.google.com;       spf=neutral
 (google.com: 212.227.126.130 is neither permitted nor denied by best guess
 record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
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

clang points out a harmless use of uninitialized variables that
get passed into a local function but are ignored there:

In file included from drivers/net/wireguard/ratelimiter.c:223:
drivers/net/wireguard/selftest/ratelimiter.c:173:34: error: variable 'skb6' is uninitialized when used here [-Werror,-Wuninitialized]
                ret = timings_test(skb4, hdr4, skb6, hdr6, &test_count);
                                               ^~~~
drivers/net/wireguard/selftest/ratelimiter.c:123:29: note: initialize the variable 'skb6' to silence this warning
        struct sk_buff *skb4, *skb6;
                                   ^
                                    = NULL
drivers/net/wireguard/selftest/ratelimiter.c:173:40: error: variable 'hdr6' is uninitialized when used here [-Werror,-Wuninitialized]
                ret = timings_test(skb4, hdr4, skb6, hdr6, &test_count);
                                                     ^~~~
drivers/net/wireguard/selftest/ratelimiter.c:125:22: note: initialize the variable 'hdr6' to silence this warning
        struct ipv6hdr *hdr6;
                            ^

Shut up the warning by ensuring the variables are always initialized,
and make up for the loss of readability by changing the "#if IS_ENABLED()"
checks to regular "if (IS_ENABLED())".

Fixes: e7096c131e51 ("net: WireGuard secure network tunnel")
Signed-off-by: Arnd Bergmann <arnd@arndb.de>
---
 drivers/net/wireguard/selftest/ratelimiter.c | 32 +++++++++++---------
 1 file changed, 17 insertions(+), 15 deletions(-)

diff --git a/drivers/net/wireguard/selftest/ratelimiter.c b/drivers/net/wireguard/selftest/ratelimiter.c
index bcd6462e4540..f408b936e224 100644
--- a/drivers/net/wireguard/selftest/ratelimiter.c
+++ b/drivers/net/wireguard/selftest/ratelimiter.c
@@ -153,19 +153,22 @@ bool __init wg_ratelimiter_selftest(void)
 	skb_reset_network_header(skb4);
 	++test;
 
-#if IS_ENABLED(CONFIG_IPV6)
-	skb6 = alloc_skb(sizeof(struct ipv6hdr), GFP_KERNEL);
-	if (unlikely(!skb6)) {
-		kfree_skb(skb4);
-		goto err_nofree;
+	if (IS_ENABLED(CONFIG_IPV6)) {
+		skb6 = alloc_skb(sizeof(struct ipv6hdr), GFP_KERNEL);
+		if (unlikely(!skb6)) {
+			kfree_skb(skb4);
+			goto err_nofree;
+		}
+		skb6->protocol = htons(ETH_P_IPV6);
+		hdr6 = (struct ipv6hdr *)skb_put(skb6, sizeof(*hdr6));
+		hdr6->saddr.in6_u.u6_addr32[0] = htonl(1212);
+		hdr6->saddr.in6_u.u6_addr32[1] = htonl(289188);
+		skb_reset_network_header(skb6);
+		++test;
+	} else {
+		skb6 = NULL;
+		hdr6 = NULL;
 	}
-	skb6->protocol = htons(ETH_P_IPV6);
-	hdr6 = (struct ipv6hdr *)skb_put(skb6, sizeof(*hdr6));
-	hdr6->saddr.in6_u.u6_addr32[0] = htonl(1212);
-	hdr6->saddr.in6_u.u6_addr32[1] = htonl(289188);
-	skb_reset_network_header(skb6);
-	++test;
-#endif
 
 	for (trials = TRIALS_BEFORE_GIVING_UP;;) {
 		int test_count = 0, ret;
@@ -206,9 +209,8 @@ bool __init wg_ratelimiter_selftest(void)
 
 err:
 	kfree_skb(skb4);
-#if IS_ENABLED(CONFIG_IPV6)
-	kfree_skb(skb6);
-#endif
+	if (IS_ENABLED(CONFIG_IPV6))
+		kfree_skb(skb6);
 err_nofree:
 	wg_ratelimiter_uninit();
 	wg_ratelimiter_uninit();
-- 
2.26.0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200505141327.746184-1-arnd%40arndb.de.
