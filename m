Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBEOP6KEAMGQEIF2QFHA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x1038.google.com (mail-pj1-x1038.google.com [IPv6:2607:f8b0:4864:20::1038])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C0D73EFC4D
	for <lists+clang-built-linux@lfdr.de>; Wed, 18 Aug 2021 08:24:19 +0200 (CEST)
Received: by mail-pj1-x1038.google.com with SMTP id gc3-20020a17090b3103b0290178c33479a3sf974833pjb.7
        for <lists+clang-built-linux@lfdr.de>; Tue, 17 Aug 2021 23:24:19 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629267858; cv=pass;
        d=google.com; s=arc-20160816;
        b=dgkvPLdz+Vm+B4okbkPZFHerOgafyCPNMZPJEKa6IzACKV1AMM9dPb9BGXBr52ydni
         kcrVWV2nIqD6uY7haeJ0F9+G/K22P0SiVJ1e95hYlTbeuI/UkXNvfwZu0JGRFVMLWY8U
         gzFpxnV2ioYRsf3mEvQk6AT4jkuiJRiQEa7QWLGOSGcNACHpJvnQXbBFKkh1K24xVaXt
         MYpNBRkeqETDYnhIWAaZIx82ravqJkSwvOGUh859g3AelZKRhDUfVMnZ/HtNJ/1Kr5pE
         c4GuS1Nq4ripsOHj1wNIYxaj7eJ7ZACii0qKkUzeVjSdDR5wir2LrKDsiFrkgB89H4Fq
         8AUw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=rwAa6wtREw4jMzf1ySnaCX8ax6AoSQM7HVKJUvGzoME=;
        b=imAYrP0waHckJ31Ug+xswUryza4+LHwHCy6O0BqYKRSiy7PnpbmgJJWXxjPdxEnBWx
         X8/ni5yMAvO6x/sqvPx5JNmakT6cUxtiRVpH9uUMHfNRHTDkFdsQnAykbsZo/pzkCbbL
         isvUgGTCQ7ag32yg9ioqHysNJDEnRZ+lNIADpSWmwZv2Vwr2mSlDmXlQ68weGKrY64eK
         PSkQE5jlo49w5aEXDc8HFRHiWhn4IlLyAIIuPOd0m90MNQNHPomZVTaMJ5F/t0sT3voG
         ztsM7m/UcPpTJbzzCOa8zj4bhoZN4buM4/WLzRLwiXjo2hZDmLF7wecl4TZmWu4zOg3X
         mBwA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=bOn7B1lc;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::434 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=rwAa6wtREw4jMzf1ySnaCX8ax6AoSQM7HVKJUvGzoME=;
        b=TnPN4pXuc5EVQws4+b+XTOIGLfkc8XgAFO3ywwxbQo/gTO3LReLJ2Dlhm3Gari4219
         e8vJJd8S8rjb+jphzEx6G9U6sJxLumPkfao1t5sNN4HmFS9hH100saRDUJ8q29MAsPZM
         6NbfvClj5Gi/x8ItU6/RoF56fUH/xeftPFgwxJJi+PVC+rgHW8kXmFsvYsDFgJAt5z5b
         di+36Bdx3KnFuZoZR/HZhV/yCGH4RO7j5lVBoAg22g31BSQwb/CQrEpGeGXv80HxUNT/
         rdO8J8amF4mC/GWM+IKVwSVf/15gzL7FPVEdICyd/SntiruL3d4wMD63g8v5LkoXTDG+
         9Gyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=rwAa6wtREw4jMzf1ySnaCX8ax6AoSQM7HVKJUvGzoME=;
        b=q3t4/GhxzKWAfZbpryNIMW4iZiPdKQ2JW0r4WWFYH1GrxpGcZtELeQt41BsOUWzwZD
         VnDMnBXvN5jxB9gsBiO6BmbAetIvVJmkN2avAZ7/nAH5KL15andugHFkrh65IbjIYkF2
         86MEUtD6tKOzaoQX904di8CfES76ubpNdLjsG0BfYMc8BqOaGH0AlK6f6/mLs0XmM0nD
         lnq/peUvIMIDpFnwwFVgbnJosD+3XxWUjoQHBSS6yHidFGXPa1xi+etiOF3363cel1k2
         NaBYmZXmaWHlvrxUTaS3TLq8c8CN88eqopDxQjJrvmaQeQ5jVUDw24VR+Tq9/ZIfENuu
         uNUw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532X+vTrpa9n5dFXq15SuF7sIKheaAxJ/BkrL7l+f1AdjxzOn8yg
	BDjxXc0lxBtiJdsDQQH5vMg=
X-Google-Smtp-Source: ABdhPJwSDCodiq7Y4PvoYgcef+TPkTwRVenfxgLIKkqks7G19M0B1o4DIiS3YGnTxxn4keTF0JSQyA==
X-Received: by 2002:aa7:80d9:0:b029:2ed:49fa:6dc5 with SMTP id a25-20020aa780d90000b02902ed49fa6dc5mr7543299pfn.3.1629267857393;
        Tue, 17 Aug 2021 23:24:17 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:903:2345:: with SMTP id c5ls677842plh.8.gmail; Tue, 17
 Aug 2021 23:24:17 -0700 (PDT)
X-Received: by 2002:a17:902:c406:b0:12d:d0ff:fb7 with SMTP id k6-20020a170902c40600b0012dd0ff0fb7mr5975966plk.70.1629267856884;
        Tue, 17 Aug 2021 23:24:16 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629267856; cv=none;
        d=google.com; s=arc-20160816;
        b=v+PCKkmDM4B2qqnntIfRdQc9xZnBNgPW5sHwBrE5cczmL+kymd0XX59CwCJfRUeRMz
         xwxblxASBLu+gXEQjCAX9Bd4YQDm7K3x9kGA5ddiQmf2kQyXgA9BIqsdSfCIWLTK5NCs
         mWJzxwIgLSTjvgYOMUPsFmA2ytPSqjSWFhk88ZDI9/mjNTnb3AU4g93G78por8deEped
         eU1X/uZfZT2d3N0hfRMWx+5gEIvJJrd80617JL4VSyE35Jx4d7YHrYZ8/kplzUmXyJnq
         4OeqJozYrjlpf7iqYXDYYhdix0IDSXYlKeoZ35ixecNvqIVcYj3xbuWbBsoqByVhHiw8
         Strg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=pfheq8ucotkU63pWQCdudkbxUtaK+5E7fGdpUnnohcE=;
        b=sVM8iv1S1cbexWohpVdcmSWNUbjV6tBv2oGNHF0P5j63hfqMCNhnplfjBYBDzJnaM/
         sfsikXEtbJV/FCOOJ6WgwPIK8TRQcawWbP3dZ4P4XkZkw3baSXjodGghA0roKQAoIhev
         LVh3WjZ/d7BW3bwh49hUWTcgH1QtAo9ODg0D4lILTMKzoBbwowrz2Tp3J4czFLmEqcxE
         zWgmUixJECVei5HV+vnnvRHyc2gyPwI7WAEfPLqa57MePnKg7AdD+c0MXZ+hiHquHc4S
         SeR0lP7koFPfGKVJeGl2EUw7kncoIHoR07UIeOnEcXCmE5Ju2vjvSWnLkSsb9rnr5U5m
         8ZyA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=bOn7B1lc;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::434 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pf1-x434.google.com (mail-pf1-x434.google.com. [2607:f8b0:4864:20::434])
        by gmr-mx.google.com with ESMTPS id x124si283291pfc.5.2021.08.17.23.24.16
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 17 Aug 2021 23:24:16 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::434 as permitted sender) client-ip=2607:f8b0:4864:20::434;
Received: by mail-pf1-x434.google.com with SMTP id 7so1098759pfl.10
        for <clang-built-linux@googlegroups.com>; Tue, 17 Aug 2021 23:24:16 -0700 (PDT)
X-Received: by 2002:a62:6242:0:b029:3c6:5a66:c8f2 with SMTP id w63-20020a6262420000b02903c65a66c8f2mr7615518pfb.59.1629267856691;
        Tue, 17 Aug 2021 23:24:16 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id s16sm1923432pfd.95.2021.08.17.23.24.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Aug 2021 23:24:15 -0700 (PDT)
From: Kees Cook <keescook@chromium.org>
To: linux-kernel@vger.kernel.org
Cc: Kees Cook <keescook@chromium.org>,
	"David S. Miller" <davem@davemloft.net>,
	Jakub Kicinski <kuba@kernel.org>,
	Ido Schimmel <idosch@nvidia.com>,
	netdev@vger.kernel.org,
	"Gustavo A. R. Silva" <gustavoars@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Andrew Morton <akpm@linux-foundation.org>,
	linux-wireless@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	linux-staging@lists.linux.dev,
	linux-block@vger.kernel.org,
	linux-kbuild@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Rasmus Villemoes <linux@rasmusvillemoes.dk>,
	linux-hardening@vger.kernel.org
Subject: [PATCH v2 58/63] ethtool: stats: Use struct_group() to clear all stats at once
Date: Tue, 17 Aug 2021 23:05:28 -0700
Message-Id: <20210818060533.3569517-59-keescook@chromium.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210818060533.3569517-1-keescook@chromium.org>
References: <20210818060533.3569517-1-keescook@chromium.org>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1971; h=from:subject; bh=E0TNBYZqVPbRitBJ5Zh/gLEgPeByfWBcEVfphcdRPN4=; b=owEBbQKS/ZANAwAKAYly9N/cbcAmAcsmYgBhHKMrF3QPyVB5GMFoBwvbiS+bGesf32/XaWgZh6rV XXUSuGeJAjMEAAEKAB0WIQSlw/aPIp3WD3I+bhOJcvTf3G3AJgUCYRyjKwAKCRCJcvTf3G3AJuI/EA ChJAduV9dwQnlnG3wxAW9hWJ1q1jYsNmAAW03oHPyyyn4KhoNewX3nohRktZszGSOaJbWUuapbs0QS zhzLmfVfKhD7+DDfnZKD0XnlGiqH7Qvf5Q5ntMO0/ssU3MUgRP1gtdtb5NMHkByui7zpX/5x9W/2YW raKvA1KIXU6CdJePHvujGsZ5QP8biHCDP1thhwyJfUA4XwPHO3b8i6IC1kMBzBKINuCjLSkeqN3uWD PwoL5hyTqy4UKJN0gW6vj/hdXoIY6bLL/pGtAASCMDf1ZqU/p4Jgph8esB5nghJM4B5K/afkMfJgB+ vA/vxaYQSYgK9DPmx0RcanTPpspjeL27cp7jQyYi0izLRnpEiExj2zheTEAvmAN6nqq/leBQk6MTwN uE7XQ8NliZBAE0y+b+xl4TZEDKqaf3ZQLquskbjy9INmiSPSDGgnZODLH9BjIy5eLOJ0nYrc8QLN5B D18Vfd3FY3RNXbQkdqHx6rRPcX8ywj2ipEby99d78Sf6C421sRvINJCco18C7ckUJ5KbK307TNNlzA niH2xNat1pGZwKiztnfUGK9vkqebtbw9PjWgnoloa26nxruikmIBNbDpX17yxNTtNblkMvaAIxgqlv ZbPLstx3DpgFgVYefzNXWqrNibdM/9iNuS0mCC0zQsf6ZcpjwRIHZD0WHkXA==
X-Developer-Key: i=keescook@chromium.org; a=openpgp; fpr=A5C3F68F229DD60F723E6E138972F4DFDC6DC026
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=bOn7B1lc;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::434
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

Cc: "David S. Miller" <davem@davemloft.net>
Cc: Jakub Kicinski <kuba@kernel.org>
Cc: Ido Schimmel <idosch@nvidia.com>
Cc: netdev@vger.kernel.org
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210818060533.3569517-59-keescook%40chromium.org.
