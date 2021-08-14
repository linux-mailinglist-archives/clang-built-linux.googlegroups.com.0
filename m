Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBHVR4GEAMGQEUR4GUFY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x637.google.com (mail-pl1-x637.google.com [IPv6:2607:f8b0:4864:20::637])
	by mail.lfdr.de (Postfix) with ESMTPS id 1365D3EC612
	for <lists+clang-built-linux@lfdr.de>; Sun, 15 Aug 2021 01:58:24 +0200 (CEST)
Received: by mail-pl1-x637.google.com with SMTP id s6-20020a170902b186b029012cbebe7236sf8422756plr.11
        for <lists+clang-built-linux@lfdr.de>; Sat, 14 Aug 2021 16:58:24 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1628985502; cv=pass;
        d=google.com; s=arc-20160816;
        b=M76bHKerdCOeOBdlPdNmBpkPJI9O6KTOTzd6tZsO0vzdnjT1CoGTGLLR/EkF+qLSCb
         Rovwc47i0b4MDh1NfAdyj98vfSSZ8LA3c6OIGcyxiwNhSajPnJFue67ePmBBuqAjrvhh
         iQrlw2IX/S0sadWv/qBmL/ROS1iL35X2LO8L7opepQ5q+KjmdHFse440zuQlHM8Agcq/
         RC7MJBf4WEBOdP9koM+JC2RQmbj3Ap2JFuiat26w0QwTWRtmOaFgwv4IHWL87GYQJYQy
         KyRRKWTtJ/IO1B2H8l6F8cfZVIlsxsjeOvGwiIupzGFxl5rkXxC8iB4KLuG42kC4m2uJ
         Xm5Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=tRyYuVt4BW8FM8M3sOexVeTCaN+50gdvT3REe9sb4gc=;
        b=VaW+3KYWT1g7712qKr0gECgyH7PW/zzSiIzjKzj+fXrk4rV0+QouNd6dgVEbVo5oST
         9hYlcLonnHvYbv0t9LjbSXNuHGi5bwysHaqaXSzOKzo9rHFk5yuMKOJZlybPxa/owz00
         hVcHpW8ZVH6Z1ucUnDsf2zCgA9qgzo8CTQTWgi0IkW3jAxbY1cQMe8bq1IChGy/oLzoG
         Sx6E8xvWdm20nA0HHDVjt8JFmTASje01hc/a3Roa/DcXh1YtUOb3OeX0H4k8zFfPj+A4
         Ar7QDN/85qcIgw9UwxRgnsZ90uVPI/jCCReqVrFglvmnHSaDQp1sE1/bmd/v22MCbqcD
         hjzg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=K1qJ92Zn;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=tRyYuVt4BW8FM8M3sOexVeTCaN+50gdvT3REe9sb4gc=;
        b=gvQ0ZHbsZDWPqb1Tpg6c5aM8BL7kWvZEnORopfdrjMD/QW/O1hvrcuPmh1ufPV2l7i
         EG3jUMRoOtJGkQE9VeFmkibVCxGalXV2v8RhEi+IAWvQpfwUBfUKlny3zUukmGcJrtUl
         z9fpJENX+LrHWYfM7PiiPVt0pJDcS9TRBC/wJ6IOfEGCqjZCJsAOY7JSn4FWEz3uS6V2
         MMq4qEKerllaDEKdvJbgfp571S7CTabsdWJqJtU1ItEOfPCr6ZpHXBxxKGYXfrm6ywiY
         w8iC9U7OQp5iD4bpodq9YVu3swhd8kNd5GICCyoXP2eFauuuOTbDdYMzQsUvUWgomfi2
         hK+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=tRyYuVt4BW8FM8M3sOexVeTCaN+50gdvT3REe9sb4gc=;
        b=sjUxriy/RR4E8gdQjHo55FMmDFvdMjP+xNO+T1QxKpUJP/ms81GAin4pmqYWovMvIV
         EyKKGGJLsZTL2w3b/GgHuDKbXEat1sPZGBCXA6k2rsuZlWiBU0xA1sd3BGPviuc/4M5k
         o1bXHjDDcZ0Rst+i2ZwBOOyUloE86ByWr/5mAhfs0S0xBnAiBK9TtIPL5HZPIQdRcT+K
         +NcMgUOhdEtS5TQDnC3OJ6qIonP3nKtt4msdPo7vOcJyM7CTo1ZZ3jOOluHasmN0qKlb
         kg91GZGCUrEPSlOHVuI2pbjafb7ZZZAg7w2ocKN64XR69OKaJCb2FKVm/FlX+3Fjvf/X
         hP0A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530HBQ/92B2/Qe9WuRMs8+oEX/Y30Y6T0XubuQ5olr6PYL5fgYD/
	2n6vu1nchONIVO0yGCRS+HU=
X-Google-Smtp-Source: ABdhPJxrjmPzC0cepGKfJKZn0TBuNve0nxO4Q5HDeRB52lyfbTfz8wtUxwZrKLNwL4ynsA6frhQeTw==
X-Received: by 2002:a63:8542:: with SMTP id u63mr8712564pgd.44.1628985502781;
        Sat, 14 Aug 2021 16:58:22 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:f84a:: with SMTP id c10ls1825940pfm.8.gmail; Sat, 14 Aug
 2021 16:58:22 -0700 (PDT)
X-Received: by 2002:a62:ea06:0:b0:3e1:62a6:95b8 with SMTP id t6-20020a62ea06000000b003e162a695b8mr3150428pfh.70.1628985502198;
        Sat, 14 Aug 2021 16:58:22 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1628985502; cv=none;
        d=google.com; s=arc-20160816;
        b=P4jjjENdW9u+QEv1tzc3gu7evndbBR+oOiN94VrWKTqqkUVRKDyaaHuaHRJa1Ne3bO
         Yz2OQqc3KxCwedrL72KoCy1EaE7nsqyguDg07bbrciXqy37sJWhvFfq0VFNTdccM/evh
         mBgkh4lSBamgi1L5oCNtFSFRWdeJhXbsPRvoy99QXNVgOS+Uo/bq3W3eOILoXeo2fDWo
         SvqjSCOrBbeSI1sPfr3TD4baj9mZVI0bhe0UdHJy/UFiBNCFRuTbTosP5CBLeer38XDt
         52pOdqI2KjikYOIOhSP4i476shCfIgy/kiuZcPRR1l2c3FgGrZ2IpMUoDK4WxRYjqfpw
         BvhQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=rd8BQHMspCHaupTO768fGIBG3zA0Hly0yDaOkxKM9sg=;
        b=X1gfmQ9nEWcr4O69KsYKhU7z2kgS7UNW8oazXbU1m+G4n9ZVdVevRk43I9QzVZr7OD
         jm4ZAu+Iz76S3zywJjjVgSutcSUt7FQ3u3Iown437NzihFtSsM0ONIAwElE9hQKq8NAp
         qTfGXzspyCwSvzMePK6Df8kQKKMC2gGABcFoRzUprsRToWoimVIRbQRP2x1NVaiPeaQu
         3DQQYZmspaXXX4aB8MJ7/pXh6Ijj/dBmD0CCCBzoLPOy7+Lqi0of42M3OXz9AibtGW15
         m/9BwegXvX+CteigOEvfKR35MBp45KnbJcdKGyC8CH5K7p3ui4/jxrtcIvRo2F8QLaTi
         FVJg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=K1qJ92Zn;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id v24si339713pgh.2.2021.08.14.16.58.22
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 14 Aug 2021 16:58:22 -0700 (PDT)
Received-SPF: pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id AD30260F4B;
	Sat, 14 Aug 2021 23:58:20 +0000 (UTC)
From: Nathan Chancellor <nathan@kernel.org>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Nick Desaulniers <ndesaulniers@google.com>,
	linux-staging@lists.linux.dev,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Nathan Chancellor <nathan@kernel.org>
Subject: [PATCH] staging: rtl8192u: Fix bitwise vs logical operator in TranslateRxSignalStuff819xUsb()
Date: Sat, 14 Aug 2021 16:56:26 -0700
Message-Id: <20210814235625.1780033-1-nathan@kernel.org>
X-Mailer: git-send-email 2.33.0.rc2
MIME-Version: 1.0
X-Patchwork-Bot: notify
X-Original-Sender: nathan@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=K1qJ92Zn;       spf=pass
 (google.com: domain of nathan@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=nathan@kernel.org;       dmarc=pass (p=NONE
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

clang warns:

drivers/staging/rtl8192u/r8192U_core.c:4268:20: warning: bitwise and of
boolean expressions; did you mean logical and? [-Wbool-operation-and]
        bpacket_toself =  bpacket_match_bssid &
                          ^~~~~~~~~~~~~~~~~~~~~
                                              &&
1 warning generated.

Replace the bitwise AND with a logical one to clear up the warning, as
that is clearly what was intended.

Fixes: 8fc8598e61f6 ("Staging: Added Realtek rtl8192u driver to staging")
Signed-off-by: Nathan Chancellor <nathan@kernel.org>
---
 drivers/staging/rtl8192u/r8192U_core.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/rtl8192u/r8192U_core.c b/drivers/staging/rtl8192u/r8192U_core.c
index db26edeccea6..b6698656fc01 100644
--- a/drivers/staging/rtl8192u/r8192U_core.c
+++ b/drivers/staging/rtl8192u/r8192U_core.c
@@ -4265,7 +4265,7 @@ static void TranslateRxSignalStuff819xUsb(struct sk_buff *skb,
 	bpacket_match_bssid = (type != IEEE80211_FTYPE_CTL) &&
 			       (ether_addr_equal(priv->ieee80211->current_network.bssid,  (fc & IEEE80211_FCTL_TODS) ? hdr->addr1 : (fc & IEEE80211_FCTL_FROMDS) ? hdr->addr2 : hdr->addr3))
 			       && (!pstats->bHwError) && (!pstats->bCRC) && (!pstats->bICV);
-	bpacket_toself =  bpacket_match_bssid &
+	bpacket_toself =  bpacket_match_bssid &&
 			  (ether_addr_equal(praddr, priv->ieee80211->dev->dev_addr));
 
 	if (WLAN_FC_GET_FRAMETYPE(fc) == IEEE80211_STYPE_BEACON)

base-commit: 0bd35146642bdc56f1b87d75f047b1c92bd2bd39
-- 
2.33.0.rc2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210814235625.1780033-1-nathan%40kernel.org.
