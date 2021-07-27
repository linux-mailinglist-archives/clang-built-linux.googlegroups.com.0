Return-Path: <clang-built-linux+bncBCF5XGNWYQBRB6HKQGEAMGQEO6G2MDQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103c.google.com (mail-pj1-x103c.google.com [IPv6:2607:f8b0:4864:20::103c])
	by mail.lfdr.de (Postfix) with ESMTPS id C23D83D809D
	for <lists+clang-built-linux@lfdr.de>; Tue, 27 Jul 2021 23:07:05 +0200 (CEST)
Received: by mail-pj1-x103c.google.com with SMTP id mu13-20020a17090b388db02901769cf3d01asf627153pjb.7
        for <lists+clang-built-linux@lfdr.de>; Tue, 27 Jul 2021 14:07:05 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1627420024; cv=pass;
        d=google.com; s=arc-20160816;
        b=HRr3QsWDfPigO8OdFKvhxD0Xc4fwkZz+dtxDZXqAjcszmn+O50X15BIPVkneLNWSEu
         qCON0MtVLQZd3SOWiWcBsTUgiW4d8in26tTAwf75eu9ZO6o+NorCf1ZDMc4Fdp9lbjyX
         lpST46BSxXS0ScFh/ZR9e9TqRKffay4OopjI9hUe0jbGmix93b7T/9dmjKmtKX+yvxCR
         aBWuEQMl0c5zxh9yigPRYO49B6MGscshMI5SbyBCvmXw3pehCfLPb7eq3VOWJOpUs/aZ
         OdGuZp/OVnWGro9Tk7QALoja8AD1dX+kBIVT4JlumIG9XjhsKbUZt24+i2s0I5RWrDYD
         /MBw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=gyusCq6zxvdXYP35jY3DiC9i15cG47rXhurKFuZZg0o=;
        b=zwGucT3hGYGG8kWZH7vawkKdPh5EWMzUBVJ5lXMsh3/IXjbNgE7LFow6az+cbopG0s
         lF6PHudUg9gvH5OxC/c9rwRcH1RUGe7jsgVEV1hMCzTZm+lVoZPqLl4yNf+tzPMCHOd6
         aKyOajmgecp8bjeby/X9MzvlZEyfoCmL5ohWtJwTBhq10IIBAIFU374jpO2js1jUIHPg
         zTcdXRPTcSVKhqfdAlDYiLHeWye2vjhLd7M/EgCIlbU+Q/Jhcc5YralSAyBjOz6KtS5d
         wUYDGenb1BWhEraHp9Phmv54XaAZ4W+4Qd3W8FIcfNUj59OK6lrGeuCH2MClOhhHmYNS
         9+QQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b="CFD6/QI1";
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::102e as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=gyusCq6zxvdXYP35jY3DiC9i15cG47rXhurKFuZZg0o=;
        b=Jhzw9sIPZJ38g6Zf0UTgkPfkvstf91Jv4jPq+nuhWJ7lLPTGkIctPttW8jCDaOpkAm
         7yDORZU0u9AvLaCcykfWwYTC7uelJ5yFfwQD1izHueCUxJOWuDeQD9U5ZxLSSlVc2U46
         4i8PaZPNZ19iZ6V9Cw5X2Gp7SPv/0HqlueKUgBNv6AkII1T9oQvk13Rohse/lJOoDdNq
         H75sE+FaUOOzdOJc8dNISRq7L8CB6UuQ1lfZkoTgwZjSdReMawCKwXxFrPW5VpmQLfoD
         tK1XqZsIzoQcxlvKZLlz6UAh+aWmVszbO0qP7YtXvqUZC4QMhPcTlDchNyqXMYLSlT6A
         5R3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=gyusCq6zxvdXYP35jY3DiC9i15cG47rXhurKFuZZg0o=;
        b=muTG/qGf2b9X/VXu6bkRbI9Ltn7+RibSyFm44tWswn5RpSmPKjmnBY49eV1gH4jqpA
         6A6e5XUD8JrzUE87w13DLTH2irBW6BvL9vIv5BUD5HObFYPU/MOnXoAurfKYesfhF9wK
         2pl41eHv8x/0gaSXSDEfO7RizcHdCySAKZxWZ+u17prGyT48QE2cNDvAb5bRlA1TJaO1
         yGu6oE6nQl8JyJhHlFTqBoYjQ9xNGVUWONBvBEfuOKBWqCQ6ErZyPDMbIREpg4lX4QJb
         XxEl/YzDGNKkQKdJJ+aU4zhSdYTMQ5FLSF3w2lMHvFmMzLducqdnpDawuwnmpIl1Hecv
         cDUw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530zRHdcv205Fvxt1kdI4PvCtLg3dmn0Pux6OBzOvr8Al+CUoRO4
	S1e25ulT0Pb0kpNFfKmehgI=
X-Google-Smtp-Source: ABdhPJx6JCShigtIbVg6lO8Cd8h68sWRiPjeR6J3pN+yTYm6qf5n0ihIEiDgYELGWzJm4rOoK9X5zw==
X-Received: by 2002:a17:903:31d3:b029:12c:1eb2:c4e0 with SMTP id v19-20020a17090331d3b029012c1eb2c4e0mr10614648ple.83.1627420024505;
        Tue, 27 Jul 2021 14:07:04 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:e5c1:: with SMTP id u1ls4214119plf.11.gmail; Tue, 27
 Jul 2021 14:07:04 -0700 (PDT)
X-Received: by 2002:a17:902:7595:b029:12c:2d46:348d with SMTP id j21-20020a1709027595b029012c2d46348dmr8905337pll.49.1627420023869;
        Tue, 27 Jul 2021 14:07:03 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1627420023; cv=none;
        d=google.com; s=arc-20160816;
        b=WMzi0My3PTAX4igco2j6Ya42lKaFBFJvW8BTLN23AQ1JIEsvMv9H68TupkY1zbuKKV
         V9re8Zo0aM1fjlbN0xobhGF5UPohetM4p7BuTkhflW9FKLSO4cP2FKtftmLMJB0qJKHC
         Ge6q5KsqdVZF3qZZryqjpeql+d5Ont2uLchwG54aMjl0knF08njyLV8wOl/F3CKQ++LS
         I5G2WV4JVFWizC9W7pcS0ZWP74Q/eU1vGguz9oOjrtOyo3N9sBSgsaNsxDh2Ae0LYeAu
         5axFOLUbojxQe3brRIlQ1sVAklI5Bm6Qi1CpE+lKJldg8JoYO2fVeDUuee/AN0G/EZuT
         8tFA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=wy7ZFa/vlTHtgg8uQMNJ843aX+ZbzQs1i4QUu9cpwyY=;
        b=biiQiTclhBkT6ZhGt3cC4vuD74JtkXwTdNeW3wRCfwJTNL3nhIbY8YVIeGT22QTmka
         aOByhGjzw04DOKqKQX838bKqbOkg0EpOy5CeIniknM5VAxsOeowF9gElcG1Ebb4oRxrD
         dOqahAwz713rSHsg2CMjHBM1wuVjbNGIU+oqEgqMfFgwLphmcRbRfW5yh2rTQSGTkIFQ
         FBY+7bAZPXUrl59Yu5v5KM3vbNxxZuczNGtkm6Ec7q+kC2LrDhdUyunTFN6TqyZjaysS
         o5u6ocQdnkjUazF/hKB/dpUHtZyXgSy1Py6ztUYgDf1nglUsihmWtTndmMmdXcYiOyUI
         qgmA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b="CFD6/QI1";
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::102e as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pj1-x102e.google.com (mail-pj1-x102e.google.com. [2607:f8b0:4864:20::102e])
        by gmr-mx.google.com with ESMTPS id p9si264520pfo.3.2021.07.27.14.07.03
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 27 Jul 2021 14:07:03 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::102e as permitted sender) client-ip=2607:f8b0:4864:20::102e;
Received: by mail-pj1-x102e.google.com with SMTP id b6so1806499pji.4
        for <clang-built-linux@googlegroups.com>; Tue, 27 Jul 2021 14:07:03 -0700 (PDT)
X-Received: by 2002:a17:90b:1d84:: with SMTP id pf4mr24025324pjb.166.1627420023668;
        Tue, 27 Jul 2021 14:07:03 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id s193sm4734376pfc.183.2021.07.27.14.06.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 27 Jul 2021 14:07:01 -0700 (PDT)
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
Subject: [PATCH 56/64] ethtool: stats: Use struct_group() to clear all stats at once
Date: Tue, 27 Jul 2021 13:58:47 -0700
Message-Id: <20210727205855.411487-57-keescook@chromium.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210727205855.411487-1-keescook@chromium.org>
References: <20210727205855.411487-1-keescook@chromium.org>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1822; h=from:subject; bh=nf2hDwlk0YBMeQam31KvtF6X3nn/T4T4psodjHluwA0=; b=owEBbQKS/ZANAwAKAYly9N/cbcAmAcsmYgBhAHOM4ay2vSP0iUDUl/jIVt/Blah8KWXvHVH7Wzv7 NYIRQBeJAjMEAAEKAB0WIQSlw/aPIp3WD3I+bhOJcvTf3G3AJgUCYQBzjAAKCRCJcvTf3G3AJg7ED/ wIYAKrzGS2QdyAzL+zWobbS3KBQXRaEYAJzUBfRITbmMnqRyWiKhqX9YPUQktluLi8FRLF8/tN1uNl Zxa7PntzoeHKtnHdKaUlHK6jf3BDo5jSq4V1v/ebceGUpYXZEmqBaMINS8m6bmB3D2Mg/O+78AphgA 9W427uDE2RA+00IyaPB0SuPpufyTlaLDtD0Zu/sNtuHoxjQv7TLsi7hKzCX9rzcpT6iYxy+r2oHJHR UW5fD3JxKtWaV5YRkxjG6zL1MuLmgkGRIZRM5MeQGsmfy/FLz/XIKFETiqW5DntGZOtXT/0htDnrlk PzvLPT4HEfNLzx+3A9w8dI9o8ascU8vO2ZRk/b8a7pFTT9viBfWhZaSpikWc0hyxZUUez9dR413PZT Ihk7cAMDTlnVhX8R/9y3T0RhUGSPws7B1NsMvvxVseZgEJlROYx8WchI3f/YQofn8x40OI695ZW6eZ E2E0P3MhTIlruLHwghe2WVf/JwGX5pATdgB83WBO7y5tJPfTi3bt4dUNUN3MVJ1huNwC/xqUbDx8As Ckre4MXvBdIoXEXXN2pOr5ObcLIhMYDjjuGdxhjOInFiHku6jxVuO2Gu3Qwlt8hXM3TPFrAZoEl/Cr 5zyQjXfG1x4OBqaHrzFrl/No/XVLDOKeVvR6caucbAbMqbu6m2ziy3mOa3yA==
X-Developer-Key: i=keescook@chromium.org; a=openpgp; fpr=A5C3F68F229DD60F723E6E138972F4DFDC6DC026
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b="CFD6/QI1";       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::102e
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

Add struct_group() to mark region of struct stats_reply_data that should
be initialized, which can now be done in a single memset() call.

Signed-off-by: Kees Cook <keescook@chromium.org>
---
 net/ethtool/stats.c | 15 +++++++--------
 1 file changed, 7 insertions(+), 8 deletions(-)

diff --git a/net/ethtool/stats.c b/net/ethtool/stats.c
index ec07f5765e03..a20e0a24ff61 100644
--- a/net/ethtool/stats.c
+++ b/net/ethtool/stats.c
@@ -14,10 +14,12 @@ struct stats_req_info {
 
 struct stats_reply_data {
 	struct ethnl_reply_data		base;
-	struct ethtool_eth_phy_stats	phy_stats;
-	struct ethtool_eth_mac_stats	mac_stats;
-	struct ethtool_eth_ctrl_stats	ctrl_stats;
-	struct ethtool_rmon_stats	rmon_stats;
+	struct_group(stats,
+		struct ethtool_eth_phy_stats	phy_stats;
+		struct ethtool_eth_mac_stats	mac_stats;
+		struct ethtool_eth_ctrl_stats	ctrl_stats;
+		struct ethtool_rmon_stats	rmon_stats;
+	);
 	const struct ethtool_rmon_hist_range	*rmon_ranges;
 };
 
@@ -117,10 +119,7 @@ static int stats_prepare_data(const struct ethnl_req_info *req_base,
 	/* Mark all stats as unset (see ETHTOOL_STAT_NOT_SET) to prevent them
 	 * from being reported to user space in case driver did not set them.
 	 */
-	memset(&data->phy_stats, 0xff, sizeof(data->phy_stats));
-	memset(&data->mac_stats, 0xff, sizeof(data->mac_stats));
-	memset(&data->ctrl_stats, 0xff, sizeof(data->ctrl_stats));
-	memset(&data->rmon_stats, 0xff, sizeof(data->rmon_stats));
+	memset(&data->stats, 0xff, sizeof(data->stats));
 
 	if (test_bit(ETHTOOL_STATS_ETH_PHY, req_info->stat_mask) &&
 	    dev->ethtool_ops->get_eth_phy_stats)
-- 
2.30.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210727205855.411487-57-keescook%40chromium.org.
