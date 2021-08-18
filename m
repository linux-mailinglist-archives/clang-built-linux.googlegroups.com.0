Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBN6K6KEAMGQEAP3RFQI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53f.google.com (mail-pg1-x53f.google.com [IPv6:2607:f8b0:4864:20::53f])
	by mail.lfdr.de (Postfix) with ESMTPS id 381D43EFB88
	for <lists+clang-built-linux@lfdr.de>; Wed, 18 Aug 2021 08:14:17 +0200 (CEST)
Received: by mail-pg1-x53f.google.com with SMTP id u5-20020a63d3450000b029023a5f6e6f9bsf820953pgi.21
        for <lists+clang-built-linux@lfdr.de>; Tue, 17 Aug 2021 23:14:17 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629267256; cv=pass;
        d=google.com; s=arc-20160816;
        b=GcEP80MEywzmn9RDNbmVAcchWjNqK+AzfN1IuKu39pJTiZ3uKXEq3bVDq4C/wppvJ/
         XAcQMCZv+ipFN7oXhB2iHTZos+vTaF7L2EuWmEnLQFUe7HMP6uzGxANaC8/Hn9CZqoiO
         S+rq4W1zRqIJq/yAUc5B+ft6bsMwNy5GlaYEvqwWsnoZOaWylas/7LTRcAVmXYjOmpd/
         ZvkUAXOpzth3T9eOAJ6BBvApHaQgV5Xhjmr1kVIMQHkHYEO2j8C7T2qWA6k3sN5Y02cm
         OCBBkY/N88sAfEKRrgSVVUe7y2wI56pfx+gF3PKRQQf0LF9aQy2YSayGORx9UtWwMv07
         UWWg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=wkxcNNsna+R/dbjV8Fs9YHO/SO2hAQM8ShMB2AXj9eQ=;
        b=VFlgpJRxTqIF6QajP08wjKpzwx4RTy3i0kwXOhril3bI1TrCSMh5NFn5MUrSJQFIX0
         shae2GbWR/ne2PpmonfynKR1I7slPnLHH4tEgcHBeO5nzryqVpO22MnxaNWQR3U+tjmB
         chyGN54x+jzrcSzkXxo7ZPOeT6XD8s3Vpq0qZv4oG+UdBDyRbInJl6srhZZi7KZBTsVR
         QpQd3aQhs332i7SkwRTvWSDlnvSIAuMlavD8rtvNP/jD3oadGGqrKRWPX9KotFIuVduY
         srCHCEEDwZOl4yn2VbSPKR1r6vPsCOL7FYhbGx/gtReg7j713QHt1p02jIhrwfa/618g
         oBJA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=ClJUrT6A;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::102a as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=wkxcNNsna+R/dbjV8Fs9YHO/SO2hAQM8ShMB2AXj9eQ=;
        b=dmwv3pyqlsaOo0bECr3tOIpqUjfl27q8NdiqT7XloNQ3GTLzxr41eRTM1tRXitCyH3
         ahcIjZXvjO0f74gYrNw4JOYsqxsTFZ78R/pDSSD1MUmGThc8gOKMJt/gpIUrkpOm/iEL
         f/5zUmyacBGVSDY0u2U4J+/reKxB5OgCl9+kPYpvb3b51tevvirg3aHEPYhzBvVe9dkR
         ST6G5jG1zZc5oO8FzHAq7PRXel47mWe5avfTm/1pnwMa5m6S+j/XURbHFHefp8DhPf1W
         DJC1H6BB0BuiVHt4KA0239mm9afA7T/q57niVXJ0L46Vfeyqtbok3hpUegLlLnLtJuhC
         pyUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=wkxcNNsna+R/dbjV8Fs9YHO/SO2hAQM8ShMB2AXj9eQ=;
        b=BcakQVwUHRSX8b+f1M3bYSLg+4hu1E5fzjnrk0LjESYGw2sYujHJHEDLXDILSfw3Fe
         QBUO4PqPtphvm99sGtk/b531U5sqsZTkCdG6kleUe7VmxsDIbxuaOlxyDKEtTATvrQXi
         Cv/N/KaY3iV3NNTSufA3TTKFZNHalE+MslgGNltVwRU0l3XPOEndJmHI/hqnJDm5732C
         oEQgUiYrtotgc2aIAX66Ii10Rt8z67xkb1ph/N9Rcykm/3gAfDLqFaOPGRRKrnt2O42v
         wxqihe3QlyourHpn2Xxs6HLR3CAH9pyeMoTgwfabN4c7u/JJNvWZiokWsW53EGbFLXcz
         zT1Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533Z6JLqQ3i4N9jpq1ZzrEHzLSXET5UwXxbgREChH/oVdyZrPwlB
	8KS991LYYM/yHk9dpGqmJNI=
X-Google-Smtp-Source: ABdhPJyU1qGKiNlAWirDJ1Onhwfi6/K2FuV3ML+WkhcZPOjy2L3HtVBd6Rq3XT/H4te8rFxRHexZxg==
X-Received: by 2002:a05:6a00:26ca:b0:3e1:acd9:bb96 with SMTP id p10-20020a056a0026ca00b003e1acd9bb96mr7464181pfw.35.1629267255903;
        Tue, 17 Aug 2021 23:14:15 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90b:218:: with SMTP id fy24ls2224674pjb.3.canary-gmail;
 Tue, 17 Aug 2021 23:14:15 -0700 (PDT)
X-Received: by 2002:a17:90a:7881:: with SMTP id x1mr7781187pjk.102.1629267255276;
        Tue, 17 Aug 2021 23:14:15 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629267255; cv=none;
        d=google.com; s=arc-20160816;
        b=WYzYXzTMwJw6lwphFJ3vMVTGSEK8OX+6GQxVaSDgGUshliAOBbsB0xwhhoibyqxxxU
         4leoFGVrzv8r7wt7qKJhZxpm6QxpeoGPPuAqzTwuxwql1vGoJozsboSo5eqCvv62WGhZ
         BMV9kBeBticyK1N2Rk0rdMzRjPp9ROM3/B2RXVLlwmpDQbt6twxujV9+Eb64XbceXaNK
         n7evJ8Wjg4u0pg2xHINXGItcVJqEU1/uxKOG1Vmj9d2xN2NWiXokEZNTpPgcO32u0qgd
         p+gacs0LpwwLEXpZC6j1nrrjFn+nZvn3VwKnMkNpARl0W3/i33Qlo3jKID6cFRb8Oqwq
         0WUg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=U8hLOmyndrZpbH3W//YQN6YJRgGYlYr4YiBW+Lc3AF4=;
        b=PM26iQ7wCwUmMh9YhDUpm3XgpGeK8wZq3SILa0akppkNRPDWTnfwpolkB49dl+juv1
         YrDzYt7LmkBysjVQXWmxzYsI1zeW3WfuRrX4Z1urHJxeUuUxs+OE/UUIsR6rslPjYRoh
         uOUrHpbEscQOHMwapYQK9IJCUuFMZoSri7aAmVVG860QSPzk/pu2t3AKO6kFDptFNgb0
         Y7S/PR5oCxMiJngCKQQxbHnw03n3lEBy0dradZCYkhegCy/W75YhaNkycdLoDz2bUyZc
         obz0nhLA/8JQ4lNJSV/hFY0yBpCfR3GH2tWaIYqr3QlJeqdhvDNdbPixln9KuZI4HM18
         RMCA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=ClJUrT6A;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::102a as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pj1-x102a.google.com (mail-pj1-x102a.google.com. [2607:f8b0:4864:20::102a])
        by gmr-mx.google.com with ESMTPS id r14si385101pgv.3.2021.08.17.23.14.15
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 17 Aug 2021 23:14:15 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::102a as permitted sender) client-ip=2607:f8b0:4864:20::102a;
Received: by mail-pj1-x102a.google.com with SMTP id j1so1934082pjv.3
        for <clang-built-linux@googlegroups.com>; Tue, 17 Aug 2021 23:14:15 -0700 (PDT)
X-Received: by 2002:a17:90a:3d4d:: with SMTP id o13mr7935552pjf.34.1629267255044;
        Tue, 17 Aug 2021 23:14:15 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id f5sm4570524pfn.134.2021.08.17.23.14.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Aug 2021 23:14:12 -0700 (PDT)
From: Kees Cook <keescook@chromium.org>
To: linux-kernel@vger.kernel.org
Cc: Kees Cook <keescook@chromium.org>,
	Pablo Neira Ayuso <pablo@netfilter.org>,
	Jozsef Kadlecsik <kadlec@netfilter.org>,
	Florian Westphal <fw@strlen.de>,
	"David S. Miller" <davem@davemloft.net>,
	Jakub Kicinski <kuba@kernel.org>,
	netfilter-devel@vger.kernel.org,
	coreteam@netfilter.org,
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
Subject: [PATCH v2 40/63] netfilter: conntrack: Use memset_startat() to zero struct nf_conn
Date: Tue, 17 Aug 2021 23:05:10 -0700
Message-Id: <20210818060533.3569517-41-keescook@chromium.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210818060533.3569517-1-keescook@chromium.org>
References: <20210818060533.3569517-1-keescook@chromium.org>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1292; h=from:subject; bh=fE+HPCTs14JsaXA0VZ1+azTXm9sRPSgAjXFdw5wZMQo=; b=owEBbQKS/ZANAwAKAYly9N/cbcAmAcsmYgBhHKMn9jUxUjmhnSM6V4Tc0qU7XODXJhF3t5WIJd3Y koV1FpKJAjMEAAEKAB0WIQSlw/aPIp3WD3I+bhOJcvTf3G3AJgUCYRyjJwAKCRCJcvTf3G3AJhk3D/ 9Y7TD9jWlZ06v+vvdPdc8QlSMediOUFC1q3DoYi7bvc4YyEqXGUCbEBONwNQLvsK3hI4ED3PL+2IhD hz/Dbx5DT2T40OMCMycZbUmvAgn6pOBBpw2q5g7L1MPBPiZjTMXq8E4ovppbe62BM08pHEnfAugWsL Vg8PPE0Mpa5a+QOsrBwIXi58FdhL+TgFoZSeBzbJm+KmZX4h++dF5E6mfecc7iWTRI8x9S8/YHdEh9 ZIb37NLdJeVivXFEuz3DfGGLCuGfbSDNomkElBmWe2yPoHWjEkJTWn6RNq+MEAjA9TJ5TJ3HDso1/K sKW9g8e4L1L/rtxaFXF9BV/xpTwz0kRs0XsBqZ+kJVDfducMf0ve5e9o39+ZRvnlGz1cBPnku+/z+w 0bwBKb/ZheH0vYU+K8EWpKneqiHfpTz4StFzfiQRwhbiGP3RgP5fcXs0kJTQd7Pb2ELVtqLcT+gjk9 6GhJhWeDD/p/qHw7tNmVAq61F9fgKxmA+c7cUPkuWqkaozXqUnyya2WLhQ5LvSbSIIu7/NC2yfZ+vB 5nw/neLBHyCcwQZyeBRVjmkcwXCcmWSOAeUgya9iGsWYJAEHUAkIzm1Hk4kcF6HSJmjPw9ayH8RBkV zBGERJvvVpyPFtl03OuHfjGRW4wn6Zs+wzWO0oB8CiPowPcXXUv7O9y+3+xA==
X-Developer-Key: i=keescook@chromium.org; a=openpgp; fpr=A5C3F68F229DD60F723E6E138972F4DFDC6DC026
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=ClJUrT6A;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::102a
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

Use memset_startat() to avoid confusing memset() about writing beyond
the target struct member.

Cc: Pablo Neira Ayuso <pablo@netfilter.org>
Cc: Jozsef Kadlecsik <kadlec@netfilter.org>
Cc: Florian Westphal <fw@strlen.de>
Cc: "David S. Miller" <davem@davemloft.net>
Cc: Jakub Kicinski <kuba@kernel.org>
Cc: netfilter-devel@vger.kernel.org
Cc: coreteam@netfilter.org
Cc: netdev@vger.kernel.org
Signed-off-by: Kees Cook <keescook@chromium.org>
---
 net/netfilter/nf_conntrack_core.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/net/netfilter/nf_conntrack_core.c b/net/netfilter/nf_conntrack_core.c
index d31dbccbe7bd..060503230519 100644
--- a/net/netfilter/nf_conntrack_core.c
+++ b/net/netfilter/nf_conntrack_core.c
@@ -1500,9 +1500,7 @@ __nf_conntrack_alloc(struct net *net,
 	ct->status = 0;
 	ct->timeout = 0;
 	write_pnet(&ct->ct_net, net);
-	memset(&ct->__nfct_init_offset, 0,
-	       offsetof(struct nf_conn, proto) -
-	       offsetof(struct nf_conn, __nfct_init_offset));
+	memset_after(ct, 0, __nfct_init_offset);
 
 	nf_ct_zone_add(ct, zone);
 
-- 
2.30.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210818060533.3569517-41-keescook%40chromium.org.
