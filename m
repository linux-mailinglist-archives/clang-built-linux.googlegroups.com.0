Return-Path: <clang-built-linux+bncBCF5XGNWYQBRB5XKQGEAMGQEKA6KUVA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x83e.google.com (mail-qt1-x83e.google.com [IPv6:2607:f8b0:4864:20::83e])
	by mail.lfdr.de (Postfix) with ESMTPS id 430A43D8095
	for <lists+clang-built-linux@lfdr.de>; Tue, 27 Jul 2021 23:07:03 +0200 (CEST)
Received: by mail-qt1-x83e.google.com with SMTP id i8-20020ac85c080000b029026ae3f4adc9sf4937224qti.13
        for <lists+clang-built-linux@lfdr.de>; Tue, 27 Jul 2021 14:07:03 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1627420022; cv=pass;
        d=google.com; s=arc-20160816;
        b=gXuj6X3DyPaUlYTaDMeUwclXNIKdQCpJ5yJvM/8HJFy6HWC4d/GHlfRPsKHc7Dt6jp
         q3tikf2o6OpDdjhqVW7cl8WyCHr+CRI7OLINPL3E3zth58GOfabBaqhVvOcPAL7TmP+A
         Z69Kb2c+KzjWptj/5VE0UGmCaHYvET8WUis37z0DnoQidtb7VszjggEV6vfKsh8JjciO
         0T/ZsbgI/tHKmtdPvmvQ9mbc2LgzNx542v2A2MY2MS6lscMaabcshlIhozSBpjtaE1KS
         Qy//yZq9lxHaV9HB0robYG/1B6tzE8m3nAmbli4ZoSfz7YB1wv5S5+3tsZrm18PoSY6Y
         vZIQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=CLca+nfvYmHSfPZVS1d3NC0NmOYtJ/jljsdHyFPInuE=;
        b=ubRuCG1iw95dONflK8/xyk9+QMvymMWjnAb4R3jTET4CZmXs7s5DVL710PCSHsKxEw
         QTP8UJ0VcxSda8B1f/C+zeI1Ax03sDDMHfJxRHDZ81Fi5pWcZKCKmyV1NHxhMBr9D+eK
         PI1+6oAE8n3rAvTMpZB/YyPd7T5optufYpa7JX8pbV5ftPFwsoaHWgO277qL45/cov66
         V517dHteVmXLiTKLbvVxm730EeCIWQbYvOiv8UB5tUuQXXiiq/ONIoiZSHM0vLyRjI9x
         Rfs1F+z0JRCIF1qoYjFYyc95CqmHZYofAuZJC7me2EnJC4JSQq0crcQxgabzyNmBqYkR
         cmvw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=QpC9SEfv;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::62c as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=CLca+nfvYmHSfPZVS1d3NC0NmOYtJ/jljsdHyFPInuE=;
        b=e9ywSUjhXKiDdzJVtsQU63qm2SlUOXY+Eo9F8tSRoL0ugQv/B3VxZIBceAbpjDkoT9
         wEGoNtO/O8vBowKqz8mG+X5DHtm1Vg0+4S7vjf3Wjby6scwJkPTtIMp9ZqSQ23Sa7vGl
         BC/D/iFDYHd2iwKbWpxAnlPhXk/r8bmxoSxYuS7Cxl4Qxm371bSyK2Nit1/vpx1MfyHA
         aOz6OEa7kUsvgS2Wo+mKaApsn3PPb0jaXhuQWV2W5PoYUFL38H4gwHVmt1XHdAIoLMv2
         4GtTQWR6FBfk4/beMJsiOyjyrgPMnQL4tYj3eWdcKf2MlyAw9Q3a3bdSBgGUaRVFjkAX
         Faxw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=CLca+nfvYmHSfPZVS1d3NC0NmOYtJ/jljsdHyFPInuE=;
        b=ZiNO+jkFEHYCz9ls22OTf1IGxBN4hyZ1PqEvntLoXma86z4bLWyi2RYEGDyDE/xjUP
         Tx2r0qeEkbRIaIqnWUmtfmNq8h8oUSQ8bi6dhMxRyzRWlyXcIU0GQ2l54+8mG4dx6dil
         KhHki5ITT7d1HTxlXLWPW/Nxna+8gsIhH+A7G0Bnnisnen+moFY0zIn7ruoYmpyuEVM3
         02JzzwlaD0iMbnYLgWiF+K/3o19De2UnyXP7A/OLf/tg1Lb976yBgADpmxeqlcu9TAT+
         n7mDG3iSQbj76cLFzWLxAfiazTVQ9ZB5eGHX/EY02Cpit0j9qDteNUkziIL7qLg5foJG
         vb+Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533gEbFVZvk0va606p231iViXJcnfrhmWl9aJYdf31eMyoY+ztef
	jv++OM3ddzNcM8Urwc2bzyo=
X-Google-Smtp-Source: ABdhPJy1l8RwyLEz4jOaLSrxBsuhwqyjGeoVZ6mN85lDKouL/hqhWCuBZM/K4i6qmufSSBslv3ATdg==
X-Received: by 2002:a05:620a:150f:: with SMTP id i15mr23774337qkk.41.1627420022397;
        Tue, 27 Jul 2021 14:07:02 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a37:6396:: with SMTP id x144ls29685qkb.3.gmail; Tue, 27 Jul
 2021 14:07:01 -0700 (PDT)
X-Received: by 2002:a05:620a:d4e:: with SMTP id o14mr24812544qkl.402.1627420021853;
        Tue, 27 Jul 2021 14:07:01 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1627420021; cv=none;
        d=google.com; s=arc-20160816;
        b=FHuqDhIzf37f1aX/a1YU2QHikyayMyVFKvudBXiv7PnUVsOGzrv84SB+0JAzMULTxl
         MWs/boo68Xny2P0revpSS37ocubBsjs/8dGTtEemAMUwCHAIOeJHY5Gmqe0a+0nc7UAC
         UGSoEzxDjOYPbCPVtf8DWgzweGjJiQti9t54q6dfhDLHsoEfD7JqYllHrZbomAEZcJaB
         gVXJP7n0FTFooDNYXjUsFYbh32ek2PVm2oDPUf0e4UkEtGUkEuFjzz1//JasVRANLRo8
         RH08Sfd/GG8ZC2EGAyjTP4OCaIZt+lxO2wuj6W5s5iGT2iEE6DllNXDr4ZIpg4bHKWND
         8uMw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=MXKHRxMVkVHDhZ+T8UiWjZTM6Vum4iJmblaVt4bfwFs=;
        b=aaAnfSjc6GqNXa7NhIt5RYAJp2oIw/frhmX27GhiSrpnEpzjGyNaqGsU0fpkIpND6a
         cZWRyLX0+CmJzF8ytuY/P/nUIDXHs6Kp39/i/HvHxv9SSrJGJ9fz+PkoXzOza8yUJO7K
         Lb8PcVkhsqaRpWPeGTnA9mIikN3K+9UNS0+jSQIF/R8bPxCvQq8LIFQcSvxrEEMq2+ei
         ER3S+QYQqrQDBtq1KNUtCKKdCJVRbOet837I69+RuXeFhDio4xZ8eUAVb6XHnrQciJeK
         HipWrOOPkhTbBTckQyuDiIvUU4NV+o1fPzYGRWiJXageauhou3sj0ygVfK9vHC87Sivg
         WUQw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=QpC9SEfv;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::62c as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pl1-x62c.google.com (mail-pl1-x62c.google.com. [2607:f8b0:4864:20::62c])
        by gmr-mx.google.com with ESMTPS id 12si282347qtp.2.2021.07.27.14.07.01
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 27 Jul 2021 14:07:01 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::62c as permitted sender) client-ip=2607:f8b0:4864:20::62c;
Received: by mail-pl1-x62c.google.com with SMTP id n10so32988plf.4
        for <clang-built-linux@googlegroups.com>; Tue, 27 Jul 2021 14:07:01 -0700 (PDT)
X-Received: by 2002:a05:6a00:1582:b029:332:67bf:c196 with SMTP id u2-20020a056a001582b029033267bfc196mr25270650pfk.52.1627420021064;
        Tue, 27 Jul 2021 14:07:01 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id h9sm3809707pjk.56.2021.07.27.14.06.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 27 Jul 2021 14:06:55 -0700 (PDT)
From: Kees Cook <keescook@chromium.org>
To: linux-hardening@vger.kernel.org
Cc: Kees Cook <keescook@chromium.org>,
	"Gustavo A. R. Silva" <gustavoars@kernel.org>,
	Keith Packard <keithpac@amazon.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Andrew Morton <akpm@linux-foundation.org>,
	linux-kernel@vger.kernel.org,
	linux-wireless@vger.kernel.org,
	netdev@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	linux-staging@lists.linux.dev,
	linux-block@vger.kernel.org,
	linux-kbuild@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH 39/64] mac80211: Use memset_after() to clear tx status
Date: Tue, 27 Jul 2021 13:58:30 -0700
Message-Id: <20210727205855.411487-40-keescook@chromium.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210727205855.411487-1-keescook@chromium.org>
References: <20210727205855.411487-1-keescook@chromium.org>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=2852; h=from:subject; bh=zkH2Je2qGKqyQkSiaJEoBpiopw/INo+50iT5U6QcyXI=; b=owEBbQKS/ZANAwAKAYly9N/cbcAmAcsmYgBhAHOJovWFhW+3LgOdJB6YTmyNLx9mPkMh18BW/VNJ BOSsU16JAjMEAAEKAB0WIQSlw/aPIp3WD3I+bhOJcvTf3G3AJgUCYQBziQAKCRCJcvTf3G3AJj8qD/ 9f25pzpuHDI7d5bSyGKts0iDOiz738IV/yhdknEcL4rC+JiQ/OTrFsGvAMK4zbyT6SQdRvwS0HsQtW FYEY3eOTO0eTLsnAGwNaxw3v5PWM7YYyFygBYMhIhpCgVOighF6YCT2xPnQ7LTyYdpD6L907wxXQ8j oXJcLb9fiEh1t6mn0/dicUHKyTwKkM3fIt2Gx4jCa1Ahv5gyWFd8/4Lv2Yd8KCGn/qxkTG1noBJf5C 2f2h93mKKljmD+CJrJzh/ZYUKpdAY63NSAR4QmZHT60LwkIYj0Fml9G4YK2meArKeNsA1MmJjOiSI6 VkDc7dPKwda9+aKjazu66ex6TqkUbOA0oaukDd2Rq6affQhlkFzRMDK6xCOTPFSye9KgRo0AGn0Klz ni+fmXKvOFIQYweU5qyOYDeL9tYUxQqUBJ6xchOdLgNXFSn5zy34UvmTQoqrVdOTKt+ImUcuGG23jI EEF20MHn/CZclwSMToQj+7lt9iWIQlJAvkfgdTS5zOajot+7oVFGJNYCGUneXC6jvsB+pZPMryc6uu HiwAJXVMsA04PW1mZDRt3xVTJJXADFBiu1CYcDhtJQH//Kmpo9Ydh7kPS4mFHHztPd+qOEZ0St7xxf dvAPnwZQNjibJgICAOUq6/ISKZEK5Qq848MAz7EEKrmQeFoCi4Q4SxSehYJw==
X-Developer-Key: i=keescook@chromium.org; a=openpgp; fpr=A5C3F68F229DD60F723E6E138972F4DFDC6DC026
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=QpC9SEfv;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::62c
 as permitted sender) smtp.mailfrom=keescook@chromium.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=chromium.org
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

In preparation for FORTIFY_SOURCE performing compile-time and run-time
field bounds checking for memset(), avoid intentionally writing across
neighboring fields.

Use memset_after() so memset() doesn't get confused about writing
beyond the destination member that is intended to be the starting point
of zeroing through the end of the struct.

Note that the common helper, ieee80211_tx_info_clear_status(), does NOT
clear ack_signal, but the open-coded versions do. All three perform
checks that the ack_signal position hasn't changed, though.

Signed-off-by: Kees Cook <keescook@chromium.org>
---
Should these each be clearing the same region? Because they're currently not.
---
 drivers/net/wireless/ath/carl9170/tx.c   | 4 +---
 drivers/net/wireless/intersil/p54/txrx.c | 4 +---
 include/net/mac80211.h                   | 4 +---
 3 files changed, 3 insertions(+), 9 deletions(-)

diff --git a/drivers/net/wireless/ath/carl9170/tx.c b/drivers/net/wireless/ath/carl9170/tx.c
index 88444fe6d1c6..6d2115639434 100644
--- a/drivers/net/wireless/ath/carl9170/tx.c
+++ b/drivers/net/wireless/ath/carl9170/tx.c
@@ -278,9 +278,7 @@ static void carl9170_tx_release(struct kref *ref)
 	BUILD_BUG_ON(
 	    offsetof(struct ieee80211_tx_info, status.ack_signal) != 20);
 
-	memset(&txinfo->status.ack_signal, 0,
-	       sizeof(struct ieee80211_tx_info) -
-	       offsetof(struct ieee80211_tx_info, status.ack_signal));
+	memset_after(&txinfo->status, 0, rates);
 
 	if (atomic_read(&ar->tx_total_queued))
 		ar->tx_schedule = true;
diff --git a/drivers/net/wireless/intersil/p54/txrx.c b/drivers/net/wireless/intersil/p54/txrx.c
index 873fea59894f..f71b355f8583 100644
--- a/drivers/net/wireless/intersil/p54/txrx.c
+++ b/drivers/net/wireless/intersil/p54/txrx.c
@@ -431,9 +431,7 @@ static void p54_rx_frame_sent(struct p54_common *priv, struct sk_buff *skb)
 	 * Clear manually, ieee80211_tx_info_clear_status would
 	 * clear the counts too and we need them.
 	 */
-	memset(&info->status.ack_signal, 0,
-	       sizeof(struct ieee80211_tx_info) -
-	       offsetof(struct ieee80211_tx_info, status.ack_signal));
+	memset_after(&info->status, 0, rates);
 	BUILD_BUG_ON(offsetof(struct ieee80211_tx_info,
 			      status.ack_signal) != 20);
 
diff --git a/include/net/mac80211.h b/include/net/mac80211.h
index d8a1d09a2141..7abc1427aa8c 100644
--- a/include/net/mac80211.h
+++ b/include/net/mac80211.h
@@ -1200,9 +1200,7 @@ ieee80211_tx_info_clear_status(struct ieee80211_tx_info *info)
 
 	BUILD_BUG_ON(
 	    offsetof(struct ieee80211_tx_info, status.ack_signal) != 20);
-	memset(&info->status.ampdu_ack_len, 0,
-	       sizeof(struct ieee80211_tx_info) -
-	       offsetof(struct ieee80211_tx_info, status.ampdu_ack_len));
+	memset_after(&info->status, 0, ack_signal);
 }
 
 
-- 
2.30.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210727205855.411487-40-keescook%40chromium.org.
