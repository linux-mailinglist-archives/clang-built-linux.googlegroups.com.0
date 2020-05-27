Return-Path: <clang-built-linux+bncBDEKVJM7XAHRBEW7XH3AKGQE4IECHWQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x53c.google.com (mail-ed1-x53c.google.com [IPv6:2a00:1450:4864:20::53c])
	by mail.lfdr.de (Postfix) with ESMTPS id E9DE31E444B
	for <lists+clang-built-linux@lfdr.de>; Wed, 27 May 2020 15:48:02 +0200 (CEST)
Received: by mail-ed1-x53c.google.com with SMTP id a18sf10123496eds.9
        for <lists+clang-built-linux@lfdr.de>; Wed, 27 May 2020 06:48:02 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1590587282; cv=pass;
        d=google.com; s=arc-20160816;
        b=aTwB3WKZcYtsqLdc9/2uQ7FUeWNO7Icwt6EwpABs/3Ugy5udFL2WYfTIUg2yfwVW36
         yyXtcmHLvp0Uw3amkHUbU7hIjlqSHRpxm35mQLeyyUyHxpAXMzL3QqtU3RrO7UozbcBE
         DQuIWXUDFyte2ORK+LxnQkGLXr4mbfbrs1QJ5x0AnIRTrg1ylXCtdULTf3Vzs9ViApkf
         h+Aw+hGwJeV7iYwWE7Y1m+CJ2pdyJywb2W9FEX27TTCG1GfWsBbcv4IXxHmcZ3QSNlj9
         PLHkuSDms2BOMet8R86Q/fq2YcMAOF4r7rJZ9aiztl8+nMwM/FlpstGH6B1An4a/sIve
         KCkA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=MRieyEBkdMoAYvyLO4iyNSqGe46CcRxoeLiN2Rxgzh4=;
        b=OnY6xDKpSP3IioGg1myMhTnYd7q3eu5UzPEnI6gNBvm0tUKFR4v+5A+4GEgLw5mqsH
         R1IbXjh02MQr0USSlrmB5ThBB8BpqvfRt5yLiuwPvtGaBM77zxCkciUXp9GZOUjn3rih
         5otE5NguGkWt89gpbuJyP7PIGbuE/1ylxK93xP6Vef8Q/RFVC8PVgHHEtuS73Uv/UdiJ
         ftDk4w10epzYyj/1Db2Fu5+itYwihFl9OR8YaIAXlbKPsTz+b3x1ltd6BfqIRs+GlFYl
         p+dCzi52AFNh9sLDPe87IynVIz8gLmG5HNimsPhLYjzdpyeq3l1D8Nl4IaEFrgNmVcVn
         DtSA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=neutral (google.com: 212.227.126.133 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=MRieyEBkdMoAYvyLO4iyNSqGe46CcRxoeLiN2Rxgzh4=;
        b=fZHYYwcaK9TvI0ParpPWggBEsImJwrrbQ3xcTOs2fa7go6C/o5h17dWwPlqyOcdDbC
         pMxpHBQOpQXfv6GqC61pwWD453u7CRdUrRGUyK2aycNX29fl7Xmcyeo14D4RdmgOC0tT
         nV44G/dlXT+je/RSa0ihg9IvRPTo5X6fDFZ4IaGZhPOja19iSPbHtIXO52WGMGBeO0Zy
         RHLUWS4dhoioL/gHM6a9wHZ5kq81xNwBdNntjxq/xaEiGXn6lhYl9TiuRosZ2XxNuYOs
         c/PNYBSQsUF6lP2WoRM9GU3D77TPQdg2wMZEctsmVsBcMuAENYWlu/sKczIkYCnYLam+
         ah2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=MRieyEBkdMoAYvyLO4iyNSqGe46CcRxoeLiN2Rxgzh4=;
        b=je/tGLrMPMvadHV7sp93Ju2paVPh09/bIWe6XYyuttTRDBmluBRQtRgtvZZCT8QURE
         9mmSHSdSKmDduikbAgncOtGnAMeyrBfzrBkzkKeXR7MN+VBn5rbQqzu7cvmhvt/ulEMP
         A1tscxigstmL63sAWObQvlYf4Ox+jj5TEHZR25iJZH1ntpoClOAG/yJiGylAWfjdQePJ
         /Rz41SSNpanVS5vTcTKbRsIl1pTlOX53c5e7vGEmlzc0FkiZH6vrKsBGSv5ywMlNfO0B
         CiRAnDP9xphHwowjbaIHq8+G2DCSFd0/URcN6isVHNtJoWBCtgZOfPwoTT/eO79lNx8R
         +2CA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532RCz6HbvIOJNLK88CqlDFfYVfe3m+fj//tyXo8LyTJnKiav074
	yJLCdwDptoq5tulinfYCxBE=
X-Google-Smtp-Source: ABdhPJw+TasDmqmGQL3HwEQg+BUXv4CACksKluGC4r/fQrxVswb0q1VKfDdkkqkzIGwP91gc174rAQ==
X-Received: by 2002:a17:906:46d3:: with SMTP id k19mr6367706ejs.349.1590587282734;
        Wed, 27 May 2020 06:48:02 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6402:1004:: with SMTP id c4ls15121088edu.0.gmail; Wed,
 27 May 2020 06:48:02 -0700 (PDT)
X-Received: by 2002:a05:6402:c95:: with SMTP id cm21mr24150332edb.81.1590587282249;
        Wed, 27 May 2020 06:48:02 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1590587282; cv=none;
        d=google.com; s=arc-20160816;
        b=RRHZMCklOcmtC7Z5aNQ0ACSzXSVCqi30vfGLX/aud5n6ONfbwDb8i7AQLiVoNz5GW2
         HsOG4fDBqB0YNJfr/VPEn6N+i37zhFlxN1AomkLQ9JCmy4yHSDJVDLMgezR4GaXODnaW
         WJ3trkovdoS8g04WrTqRF5DrPbt/BAArepMXWfiNagbzRYlgSWwFyM3b+WQ7Wg6Qi2oV
         NPuH5mn6MRU+lnPXdLPM/nsrFL1O8T9gDCXLTCdxO1TrTat2KcordPNq83boR3ZrRZu/
         KN7HbcGCkq5bOwzBL9ro5hqAs/RaYOG/HzWoadHmV087TYXhFQp6Ul63rJQgAOyX7x9W
         ERVA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from;
        bh=om+SEmArlBn97JBuii/c8jFc4FakHG0mFjbcO79AK80=;
        b=Hh4UjFs3VXBEdyLSgrZ07BBbf/101rvh67KXuth8CVqdvdAMnyum/kvtuRCtREBIXm
         JxqlJSPnGqq+f6E+6ygLkceUXyh+B2NGROLNGFXXdmjWrjhIqpynaWQQyxS4GvRfma3b
         SrxUnXc2uAmCKKTTz+Djj1wwRijMI0ZC1I2ULYwYSiKQcGrpc9BLAtgJ+gEeRcS1HIf3
         BVPEjN2cOWggT41mNb5La10JBf4HoC01aDc+ncMt3uAra6Kb42KJmSs13JNzgQupp6Ef
         d8IWitnz3DPbRgvVPDXuYoH6p5ZxaDp/zCceOLuPzBBk3yCsfLvNteGh3FF5APj2LoWH
         lOnA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 212.227.126.133 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
Received: from mout.kundenserver.de (mout.kundenserver.de. [212.227.126.133])
        by gmr-mx.google.com with ESMTPS id o23si145677edz.4.2020.05.27.06.48.02
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 27 May 2020 06:48:02 -0700 (PDT)
Received-SPF: neutral (google.com: 212.227.126.133 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) client-ip=212.227.126.133;
Received: from threadripper.lan ([149.172.98.151]) by mrelayeu.kundenserver.de
 (mreue012 [212.227.15.129]) with ESMTPA (Nemesis) id
 1MP2zs-1jNNUv2gma-00POkx; Wed, 27 May 2020 15:47:57 +0200
From: Arnd Bergmann <arnd@arndb.de>
To: David Ahern <dsahern@kernel.org>,
	"David S. Miller" <davem@davemloft.net>,
	Alexey Kuznetsov <kuznet@ms2.inr.ac.ru>,
	Hideaki YOSHIFUJI <yoshfuji@linux-ipv6.org>,
	Jakub Kicinski <kuba@kernel.org>,
	Roopa Prabhu <roopa@cumulusnetworks.com>
Cc: Arnd Bergmann <arnd@arndb.de>,
	Colin Ian King <colin.king@canonical.com>,
	Stephen Worley <sworley@cumulusnetworks.com>,
	netdev@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH] [net-next] nexthop: fix enum type confusion
Date: Wed, 27 May 2020 15:47:41 +0200
Message-Id: <20200527134755.978758-1-arnd@arndb.de>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
X-Provags-ID: V03:K1:n5qEtqFUXXj4zCm5zjHLPSjM3G1b9LQHX2qPlw6UHDY5j+eeoTt
 RZVjMN1E+TihYiBM1VrGlWrZfadBUWmEQXT17oY8cDNC8Z3OsN5DEOo6oYhFHCk5aUlvHCA
 lTkYegq9MeUrQfdhrM59VDRUWQt4AU312DjVElEYJQRTO92fjl88TlwXlru+3qg4u8HRQHY
 4rn1m9//P8Y12puOmtDbg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:0vssRlZ1k7Y=:FW5nQtiKCgGw7l3TtxlrIB
 z5X3TPsAWxaRibqoS8sYLvmBKczlqGl87mf5Nkq17HYkf/Mhx4ZAqdURXaGGTXTN/sJIUmSR0
 YCgCHyvhsUt61uoYNNdFbCIaIePjRjLRdCIZHRK39MygPRYpfss1WqA7MEAQU2oB7ezqDSUIM
 KSX3x5Tu5lIAlFc2LmtETZIj7Evy3HiCopCV8OqC4/H4pAmanHvq4E5QvZUnHnk0GSWocFNkg
 +DdgKLyb+T15WJWzv2Nu5R0UJGxeoHJOh0ZWs6wtkdlclRv6XuFMNLon+ftDfNOMY1mceYD6e
 uDJ7OviiXknDsw/IUMgKslfAM4fsZzCDj37w6/cscxSZeYCgN0+oj1tBRk/UScOV6f6Rfu6F1
 3Disro/0yQVHaJCB3Jf8fnh+ysExvNIheTwDs4QGQ954iNudvOZhMBGea4ohGSzZlpZCyvmOx
 qGaZmPcjxgV8xyxLUtDzZLMxrGOtElQuAOyc2KaS+ERdBoO015hgwxq6b4jnjd9o6B9En4CIk
 JAi35XTkp/Er0PymziPIBnnjymVjsVIoNCcusuf9QvkiSfT5LBKyv7o0wwtMXeL10wvGDJOca
 EmV3X8wL7zrfWnwRweZH79lYMoSY14YNqtGK5vyQSTwV8A4LJm45yHOHaNdi3LpObAOrllgyP
 MfoCP71BGbfwTJDkQdBYs6seNxm8SfSRTrnPtbW0a2ToeCf3jluGn454W2wBHf8b9OWDyQ2y5
 /O4xqMKkwCZTxSpKqTDNVrhaaoXOEzA7B3CQsmoAUSYnZjiKN6LEOw3CACu19ODaNmri8qtf/
 MgyKMgMwFo4ffznhqfLBTJhEEfGBF1EIOfIasw7KYYUz1ed01A=
X-Original-Sender: arnd@arndb.de
X-Original-Authentication-Results: gmr-mx.google.com;       spf=neutral
 (google.com: 212.227.126.133 is neither permitted nor denied by best guess
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

Clang points out a mismatch between function arguments
using a different enum type:

net/ipv4/nexthop.c:841:30: error: implicit conversion from enumeration type 'enum nexthop_event_type' to different enumeration type 'enum fib_event_type' [-Werror,-Wenum-conversion]
        call_nexthop_notifiers(net, NEXTHOP_EVENT_DEL, nh);
        ~~~~~~~~~~~~~~~~~~~~~~      ^~~~~~~~~~~~~~~~~

This looks like a copy-paste error, so just use the intended
type instead.

Fixes: 8590ceedb701 ("nexthop: add support for notifiers")
Signed-off-by: Arnd Bergmann <arnd@arndb.de>
---
 net/ipv4/nexthop.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/net/ipv4/nexthop.c b/net/ipv4/nexthop.c
index 143011f9b580..ec1282858cb7 100644
--- a/net/ipv4/nexthop.c
+++ b/net/ipv4/nexthop.c
@@ -37,7 +37,7 @@ static const struct nla_policy rtm_nh_policy[NHA_MAX + 1] = {
 };
 
 static int call_nexthop_notifiers(struct net *net,
-				  enum fib_event_type event_type,
+				  enum nexthop_event_type event_type,
 				  struct nexthop *nh)
 {
 	int err;
-- 
2.26.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200527134755.978758-1-arnd%40arndb.de.
