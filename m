Return-Path: <clang-built-linux+bncBAABBLMI4SAQMGQEXNP7OFY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x339.google.com (mail-ot1-x339.google.com [IPv6:2607:f8b0:4864:20::339])
	by mail.lfdr.de (Postfix) with ESMTPS id 223DE3263F5
	for <lists+clang-built-linux@lfdr.de>; Fri, 26 Feb 2021 15:22:39 +0100 (CET)
Received: by mail-ot1-x339.google.com with SMTP id c17sf5005505ots.19
        for <lists+clang-built-linux@lfdr.de>; Fri, 26 Feb 2021 06:22:39 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1614349358; cv=pass;
        d=google.com; s=arc-20160816;
        b=xseBzEoMEqlJaAnmWHTVznmjR0exRvvetEVN+A+4Wa+ACTffmoeJYSLeFkqo0II7oe
         9ALF9NEfn8fg5RjCE4iS7ViBC4SlT01KxaYg1VmG5r5kS8CUNFDnqGRMog4s308YDRiE
         kTd6chwFL4UR1t8B9YkMYeRMjBSew0XSJoSLWaq1xPEVGtKbiloQTEOGdkjQtfVC6L3G
         zqHZ59H6Pcvr0OvW4ZxjS/l2XbSktkNre0vj9KDe9sKvOglMO0bCYWPqdMS9JFJPEg9l
         mneQ0JS6JlZwVgzYIFS3pPptw+lvmcd9R4bU2v9blkWQ3h74gXu2096CG/FtVd8PtTmE
         GUkA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=nLa+RbhAb7dhOuf4yDk82Gd4yNBEulOUroubCyhpRTo=;
        b=UY+YjwpHXXlF7Xu4Yi2vTDRl8RcZwO1eboMGfJ9pnytuui7qKIQB6YxKXvPmwPEb3P
         jawppAlOrwmtgd4uaeQUZWRBOKwsKnxHdOJarMemjXTRwIyuddg5NdiHrhL9RcgaMHId
         aPyACTBlGFmR4+XfzqLaNWG19fZ9J+OKv/upZP+HpQZXmeOtyifWhAoJ0RCMWGmxuzdD
         4TrTjonxONsF7MCFj6GHRwoHLXuRy6N3t4laBhWBgGCeYI4HWZa0aGzDGEYv9P+OPH25
         UNHtnRio6Zfv4OsMzjxbYZJkufnjQkDxx2IK3LvBHV+O5FXKLztwDhIO68W8DYIh5vwg
         IGYA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=BO8GncTN;
       spf=pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=arnd@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=nLa+RbhAb7dhOuf4yDk82Gd4yNBEulOUroubCyhpRTo=;
        b=J5DfCxP+2xWeC6UarHsf3RF+aRTY/NQhD+Obov6EMAx8uW/qO1eu2mhixOAKeHgW4p
         yiJWP/+mQqUwargTF1+B5hxbhH6Ou9yGfs7POFBxW5dlF2/d1qFm1qJLZCEkrfnNRe4g
         1LQlTyfEoWG8Kc5q7X3Si8RVA/w0E+GoPnpkQ3EHkj7iXctODyvhH9bCCj+ppK116vUm
         Ac2BJhkUUAZeUfr0SaGQk1WhawUEQA5Iw2yxgo6l9nsRniAIr2RzSVRGa+fBDUsxNyU5
         LuK9i6O0dNfOObrUp4PCdR+/gpju8KBrPR6NYXe/EeKy0b0tLGJN6XQG7Z1ObtrRP9Fp
         YJEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=nLa+RbhAb7dhOuf4yDk82Gd4yNBEulOUroubCyhpRTo=;
        b=LTYzzxKrdprSHv+AMjRtGhwdVg8I3W7cwT9AZmEu6MsVtmp2iVVsLxn2gBpjmnKtla
         /jKHNl5ti/LOWlOYTrcfkuxoCy0bUgLyHidpyUBp+M/D1OLeeJoMCixNgytlIPrrUUDU
         F9DOcfSgmoREFAG2siYPttCWMnTKBNjKLIfjd6t7Vj54C/qPIuKMPPRlqTFCdv+a0/Oz
         gxuVzgQxRLwsRaZ8WeHQxFx20I87+3rGsQf+o9zFE82ZKNCpVnwdebv1vBV49cwJYZLH
         k19TtheHZyBS4uJdtvRQ1B7Hh/wsFINN8b71PqlehySugfuAeOTRIDyFmv9Rs7XFiQgh
         JQZA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533GoxgtEG6+S881Jwy2au2CFsE3Eh6A4iaJqfDa1aeDJ5uo9k4j
	AJsbjubIKhQwWzS3Y+z7uxA=
X-Google-Smtp-Source: ABdhPJzXqbX57Lc0Cfth+WMv928D4bAlKoyUzGK9oRoq1oKCh6d1o4r9PLdine0fkm+zOV5kfilk0Q==
X-Received: by 2002:a9d:128c:: with SMTP id g12mr2463184otg.175.1614349357908;
        Fri, 26 Feb 2021 06:22:37 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6808:1156:: with SMTP id u22ls2353449oiu.6.gmail; Fri,
 26 Feb 2021 06:22:37 -0800 (PST)
X-Received: by 2002:aca:5dc4:: with SMTP id r187mr2078933oib.69.1614349357622;
        Fri, 26 Feb 2021 06:22:37 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1614349357; cv=none;
        d=google.com; s=arc-20160816;
        b=bmah9KQ72To6PCW1QTev9Vb92XrZF6/OVwZ9bD5l0df1j6a5hN23OEDAk/6uPURUBk
         XU6fwh35/2MaujUHjeFdrGXFQa/Xs1J7OGEHLdC7mtC1JvowVk3jubTsjgkglmqmn/Qc
         tSzpHNITg8vUaHcUV5bFFLTKKVE6mG5RxNrD95+k5+x9AEIsioFhmW58UHXAQH03NJ5y
         2v8eKsUYJ12R35cC3UmaLrb/GGDqUnyief7tmkfQY3KkS0JV634wfrWjzfciVgBcBspD
         uKP8f2oBOkHWDA8ciTu5gyYvVvWylrEvyqMmaQvlVEEOf6OooMGpHdGcDg4O5Z4U9RYY
         nCUg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=amMFKLzpV1jhO/dh8Z9sbkm2cnVXgeNmeEsSjKvtBlQ=;
        b=S30oyDfRdY46D9cjUfyNVvRkEPRPGiec2lDk6rNX8kyN1+dxPv79hmhApnhvXBnGf9
         khjsUHgTQr2tqFABE2YIpQLixo1io70rMzSVl4C4vY4EdLZ+gWfGq4o3S7SD0XBssG71
         wM07yy6J+NIXZexVf9mV6ECzKQKX0DBRXi9qm8PCCHWlf5pA7f0WOgmMXCc6FGfGhIPm
         87lKpbN9JppjqNrKNM/27C/eLX+mYo2R6BrIoRBq7eXxaVB/l+Hh62x+Ge+p9pQMt9hQ
         lfBDV1WHPZGuEaMk11BClyX43GD2KBBBk3silf6PpmMNOKRy5e3q+xY9DhTGnADzVPTM
         68TA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=BO8GncTN;
       spf=pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=arnd@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id v26si104030otn.1.2021.02.26.06.22.37
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 26 Feb 2021 06:22:37 -0800 (PST)
Received-SPF: pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 1B93164DE3;
	Fri, 26 Feb 2021 14:22:32 +0000 (UTC)
From: Arnd Bergmann <arnd@kernel.org>
To: Felix Fietkau <nbd@nbd.name>,
	Lorenzo Bianconi <lorenzo.bianconi83@gmail.com>,
	Kalle Valo <kvalo@codeaurora.org>
Cc: Arnd Bergmann <arnd@arndb.de>,
	Ryder Lee <ryder.lee@mediatek.com>,
	"David S. Miller" <davem@davemloft.net>,
	Jakub Kicinski <kuba@kernel.org>,
	Nathan Chancellor <nathan@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH] [v2] mt76: mt7915: fix unused 'mode' variable
Date: Fri, 26 Feb 2021 15:21:27 +0100
Message-Id: <20210226142215.3482168-1-arnd@kernel.org>
X-Mailer: git-send-email 2.29.2
MIME-Version: 1.0
X-Original-Sender: arnd@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=BO8GncTN;       spf=pass
 (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted
 sender) smtp.mailfrom=arnd@kernel.org;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=kernel.org
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

From: Arnd Bergmann <arnd@arndb.de>

clang points out a possible corner case in the mt7915_tm_set_tx_cont()
function if called with invalid arguments:

drivers/net/wireless/mediatek/mt76/mt7915/testmode.c:593:2: warning: variable 'mode' is used uninitialized whenever switch default is taken [-Wsometimes-uninitialized]
        default:
        ^~~~~~~
drivers/net/wireless/mediatek/mt76/mt7915/testmode.c:597:13: note: uninitialized use occurs here
        rateval =  mode << 6 | rate_idx;
                   ^~~~
drivers/net/wireless/mediatek/mt76/mt7915/testmode.c:506:37: note: initialize the variable 'mode' to silence this warning
        u8 rate_idx = td->tx_rate_idx, mode;
                                           ^

Change it to return an error instead of continuing with invalid data
here.

Fixes: 3f0caa3cbf94 ("mt76: mt7915: add support for continuous tx in testmode")
Signed-off-by: Arnd Bergmann <arnd@arndb.de>
---
v2: remove the extra 'break;' after return.
---
 drivers/net/wireless/mediatek/mt76/mt7915/testmode.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/net/wireless/mediatek/mt76/mt7915/testmode.c b/drivers/net/wireless/mediatek/mt76/mt7915/testmode.c
index 7fb2170a9561..bd798df748ba 100644
--- a/drivers/net/wireless/mediatek/mt76/mt7915/testmode.c
+++ b/drivers/net/wireless/mediatek/mt76/mt7915/testmode.c
@@ -543,7 +543,7 @@ mt7915_tm_set_tx_cont(struct mt7915_phy *phy, bool en)
 		tx_cont->bw = CMD_CBW_20MHZ;
 		break;
 	default:
-		break;
+		return -EINVAL;
 	}
 
 	if (!en) {
@@ -591,7 +591,7 @@ mt7915_tm_set_tx_cont(struct mt7915_phy *phy, bool en)
 		mode = MT_PHY_TYPE_HE_MU;
 		break;
 	default:
-		break;
+		return -EINVAL;
 	}
 
 	rateval =  mode << 6 | rate_idx;
-- 
2.29.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210226142215.3482168-1-arnd%40kernel.org.
