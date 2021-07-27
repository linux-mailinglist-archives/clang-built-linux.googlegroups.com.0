Return-Path: <clang-built-linux+bncBCF5XGNWYQBRB5HKQGEAMGQEF2T25ZQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3a.google.com (mail-yb1-xb3a.google.com [IPv6:2607:f8b0:4864:20::b3a])
	by mail.lfdr.de (Postfix) with ESMTPS id 795413D808D
	for <lists+clang-built-linux@lfdr.de>; Tue, 27 Jul 2021 23:07:01 +0200 (CEST)
Received: by mail-yb1-xb3a.google.com with SMTP id n192-20020a25dac90000b029054c59edf217sf225111ybf.3
        for <lists+clang-built-linux@lfdr.de>; Tue, 27 Jul 2021 14:07:01 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1627420020; cv=pass;
        d=google.com; s=arc-20160816;
        b=a4xLqwRnDUorfT4EkD7AndCAQCcGUcvyyzFXvVB1xdSFu86d1T4CCUYG6ByV3icWK1
         HoZkzgf8OAP8qZDPb8PQCeXUOWnaQXnbPzN2qiWkn6lAaPijPf41hjvkz5nBXA/9OJ2k
         unOuHrRasH7FzFkH2cgD5J4bBXww/d+bunXBikxF3IrEfqQf66ClZ+kNir6rqy5/XnUE
         GIhPFyTYGavyi/nJWMo+7Bn6eKd8MwuLz5BUBlCL1MCmt1fjCYpLAnytXU8KDzUrSKfJ
         +73nnmidPepUo1d5HutpBt/lgk9TKtG2CD2+46kUKlWYPIXPurNu7LOoDej3w4lM4pLV
         CYvA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=N2stQYXv+ROzSr5w9hL2UkPv1KWWylDKP4uggHRChS0=;
        b=ulX/H9PRotA72b6OoVpXrmlOkrys3LuQkXPorMO30ZIF3vgko0TTDZ/Z9yud0d/vYr
         E4TgE0YonQc489DMwLZOfAIeCaQTeog1ENmGUd3UREh+lVjFky7yuBiqoOsvWwRcxv0+
         x2EOFAxuCRV7q9ExfNHqmzEfpPwV/E1Kpc4t+YxABY9HwVc34MNw2Bcglnl0tu6ELjSG
         eklYAgj3VooIRGWANYM4CksVTnG+yIcRCUlJBxSAPzPHXy98B2plQq9jU34JlFCujHvt
         5GahDTTTkxR1gKAnrLIiNFZpzDMhv04EKizvj3eS1sCUsi4I4NT0yfJBXi1QgbwM8qrP
         IcXA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=Ik3f6gOv;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1032 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=N2stQYXv+ROzSr5w9hL2UkPv1KWWylDKP4uggHRChS0=;
        b=spzmQHlqFfpZwYmnIFV7r+C0EMRHjam7IntQZIDCeRlcYLAa1B8K76ok4SPTk7Zw25
         2YVnLOYUfCF2RhLb2SzSY/YsDcf8TWDogcnJR6/k2VbpU9IYKyAyxRmb0juh/BzC+5UT
         0zWQrhYjTpeoGN533UJaFPiClqwm7BCML75Bq58iqRrYCFSlb8hR7hvwpZMp8swtMy5H
         sB7rHLy10gEPQJNzl4eLXnRrdSnIdgx0lQKxGWvjVCIfuQcvyS21m+fy/S7OoHOquYfb
         MCvxsfBx/Z75YFNL5pHZpetOhULJ/lZNUINTNyHJk85E4bs/xnyh+ZJKUK2JqE6r0r+M
         wZtg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=N2stQYXv+ROzSr5w9hL2UkPv1KWWylDKP4uggHRChS0=;
        b=dH0RoyGLJlOpW47uEymyPckvrafswvEN7NS6oApOaMqML7FmEAUXVVMI+3KBYMITrA
         LgQA+0nXEOpHHVK9Wc1Opw64lCfhiM3oDRQKfxh3CMhs3Z7DqYvDq6uYt1GPCog+cIxc
         lNoJdy3lx9hYFlRWtZ8EmN83etCdJsIcxWErnj3f+oIN/Rf7hDBaQ2ZawTlwnMDrSJ9E
         s20S1CbVIeuSh7qMa3jfg6ROfQm7t/90mEo/NKqW82fLBlBi1gJl0tkWWTdoCEjJxWhI
         3NSJHyFUfxnRMAAcPsUsXo0TaD8uCq5Uly+8kMQLghFfTuBIiy0UbLvueOAKD2R+etVg
         4KMQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531EwtUfgQPMk2uSEpCbmol+LP4fJsEXAQtyhf6R2MN39eej0BOX
	Gw3Mns+NdH58+M5lv8enCmM=
X-Google-Smtp-Source: ABdhPJx3XCdd/y1E6slOya8WEw/7XJh1gW3PPrkPfghGzM52yiLgHFGp5xr+rJbb3ZhV9XuLr/hptg==
X-Received: by 2002:a25:c00d:: with SMTP id c13mr30825010ybf.420.1627420020567;
        Tue, 27 Jul 2021 14:07:00 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:2b08:: with SMTP id r8ls111976ybr.9.gmail; Tue, 27 Jul
 2021 14:07:00 -0700 (PDT)
X-Received: by 2002:a25:244f:: with SMTP id k76mr26571755ybk.523.1627420020057;
        Tue, 27 Jul 2021 14:07:00 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1627420020; cv=none;
        d=google.com; s=arc-20160816;
        b=yBhlMcBRys4maRZ6CyUNWi9kjpZLft/XHyz4k5thav/V4gDCIXUTsaimRRZNyz3koq
         e5Auy7W5/F+iyZXeCYHhr8EAAvhV5hcyj0yyR48Ugit2LUazc9ciEbWpM7Sv9zCaT5kY
         TkBEJWmNE2iIJIZwVBbZyEfnKj9nj8wcZmvzShXc2AjKE8i9IbplVEbDOPKTqD/SBfJ7
         JjyVCEbnwOAvPaKpznAA1p9tIPB5ViorYfGrQahM64BVm5M9mpFZmy0adLQlhxXIDn3d
         GIG2bNFcvJrmXLy/miV+Y9cOWph32eY5cly1eqrBVGqs+BBBjuzC8+0fwo+Ih8wpZpq8
         8EJA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=BAjc7jN8mF2lxOocjxYUs8uk4UIdg9BIVyN6yKZHmUw=;
        b=W0PydrjI1/H0sENLsWtVp/ggSGVWQaitLWsUbXvFVZxq3sDMTkzj1CoPjn8FgndL+u
         3DEPgfU2HkrH0qAefECLErSl26msF1TasXL0JYSHdh+9VFs8qr/TTIPfEJTBtoeIx+cK
         tHPP89lBCstp1opf6bsagLcPl3WaziJtK7/Ml7zLlp4erwDLC0UcPIeNwhDXFR5q1f0s
         XTcfG9xF5o4nBosBzXzBmVhVq3rATkG3tpIfpCJoFx4oOOHoDoBYaucn+BQR6DnOLCsz
         nfGwhVpa1f839i6SUCpOf3PV/A0Oz31dqOADYTjZUyHKgg6C7cUcM6OlJRaTSvYcAfg3
         qZbA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=Ik3f6gOv;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1032 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pj1-x1032.google.com (mail-pj1-x1032.google.com. [2607:f8b0:4864:20::1032])
        by gmr-mx.google.com with ESMTPS id z205si247409ybb.0.2021.07.27.14.07.00
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 27 Jul 2021 14:07:00 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1032 as permitted sender) client-ip=2607:f8b0:4864:20::1032;
Received: by mail-pj1-x1032.google.com with SMTP id m2-20020a17090a71c2b0290175cf22899cso1132898pjs.2
        for <clang-built-linux@googlegroups.com>; Tue, 27 Jul 2021 14:07:00 -0700 (PDT)
X-Received: by 2002:a63:190b:: with SMTP id z11mr25001094pgl.320.1627420019329;
        Tue, 27 Jul 2021 14:06:59 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id i1sm4395555pfo.37.2021.07.27.14.06.54
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
Subject: [PATCH 38/64] xfrm: Use memset_after() to clear padding
Date: Tue, 27 Jul 2021 13:58:29 -0700
Message-Id: <20210727205855.411487-39-keescook@chromium.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210727205855.411487-1-keescook@chromium.org>
References: <20210727205855.411487-1-keescook@chromium.org>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1608; h=from:subject; bh=g0VWO37QK3XIcvkgv5p13lDa7YD+Jvxsuneh5al+DKo=; b=owEBbQKS/ZANAwAKAYly9N/cbcAmAcsmYgBhAHOIQmnrWwAaxPVdj8lblXkb8ZdEI/mjJwkI9weg Jb9tdxuJAjMEAAEKAB0WIQSlw/aPIp3WD3I+bhOJcvTf3G3AJgUCYQBziAAKCRCJcvTf3G3AJkUiD/ 9GVAFoJywTVZLGJMfv82icJWJQRMDO1fnyc7Vo6lQ1D7/W+Dagrov588jsfphYxw9bCcMrBW5+ML39 Nlw0d86SRJKsp9W1D/uWpxT7B+ZifwMCrBQiW/QQdugvpBK16DiM/nuIxmvvNngfCD7TZeYhnxyJCN Q8sbUMZx2T8aExzVPglAhsAqyZAACXNIyRAkJJKyEFCtk5DV7xNyz4H7EIco1PaNQ6CPSvz3qtegIn nv2P2319IG2VLE3I2NZVINSDUfhFT63odWJElKoysAbPDvrq3781fUtYESiohGHqBR8FD3BGT+O8y5 9KD6fIZ0TSLsD63axSBtgp5OUer7kr086Bp7sU1ndEXv436bquzOxnCxGOOZ82tsCGeW/VxkIdKzGd IqrtSepbn6JZoMYp10wQJpM6ZcvscK8K2zcp2RMRpDMku/9dFd2GQ45TO3uUh94594qJDdQG0ecNlA NIP+5MnO4vD6X6sONnGwoom7JbHdfvLOAg4vRaXZ2jfmckTzxmeUil4NB16b45RGMUUNbmfDrGgLJc 0oHx1OYHLUpyYpWBvqH49SivknOgZOZzXIyabXPipERmCdfnqRmLJeBYq67aP5IvRZgUVF848zQS1a wYduCIDFnUzR+Pq8e8OGT0DcZ9ZGKEr3Av8YeNoVe5GpEviziiQ3/Fj3WyIg==
X-Developer-Key: i=keescook@chromium.org; a=openpgp; fpr=A5C3F68F229DD60F723E6E138972F4DFDC6DC026
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=Ik3f6gOv;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1032
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

Clear trailing padding bytes using the new helper so that memset()
doesn't get confused about writing "past the end" of the last struct
member. There is no change to the resulting machine code.

Signed-off-by: Kees Cook <keescook@chromium.org>
---
 net/xfrm/xfrm_policy.c | 4 +---
 net/xfrm/xfrm_user.c   | 2 +-
 2 files changed, 2 insertions(+), 4 deletions(-)

diff --git a/net/xfrm/xfrm_policy.c b/net/xfrm/xfrm_policy.c
index 37d17a79617c..1a06585022ab 100644
--- a/net/xfrm/xfrm_policy.c
+++ b/net/xfrm/xfrm_policy.c
@@ -2486,9 +2486,7 @@ static inline struct xfrm_dst *xfrm_alloc_dst(struct net *net, int family)
 	xdst = dst_alloc(dst_ops, NULL, 1, DST_OBSOLETE_NONE, 0);
 
 	if (likely(xdst)) {
-		struct dst_entry *dst = &xdst->u.dst;
-
-		memset(dst + 1, 0, sizeof(*xdst) - sizeof(*dst));
+		memset_after(xdst, 0, u.dst);
 	} else
 		xdst = ERR_PTR(-ENOBUFS);
 
diff --git a/net/xfrm/xfrm_user.c b/net/xfrm/xfrm_user.c
index acc3a0dab331..0bf8fec3fd97 100644
--- a/net/xfrm/xfrm_user.c
+++ b/net/xfrm/xfrm_user.c
@@ -2907,7 +2907,7 @@ static int build_expire(struct sk_buff *skb, struct xfrm_state *x, const struct
 	copy_to_user_state(x, &ue->state);
 	ue->hard = (c->data.hard != 0) ? 1 : 0;
 	/* clear the padding bytes */
-	memset(&ue->hard + 1, 0, sizeof(*ue) - offsetofend(typeof(*ue), hard));
+	memset_after(ue, 0, hard);
 
 	err = xfrm_mark_put(skb, &x->mark);
 	if (err)
-- 
2.30.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210727205855.411487-39-keescook%40chromium.org.
