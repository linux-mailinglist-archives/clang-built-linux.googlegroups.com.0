Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBPOK6KEAMGQE5YTNPSY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x73c.google.com (mail-qk1-x73c.google.com [IPv6:2607:f8b0:4864:20::73c])
	by mail.lfdr.de (Postfix) with ESMTPS id EAF973EFB91
	for <lists+clang-built-linux@lfdr.de>; Wed, 18 Aug 2021 08:14:21 +0200 (CEST)
Received: by mail-qk1-x73c.google.com with SMTP id c27-20020a05620a165b00b003d3817c7c23sf1065026qko.16
        for <lists+clang-built-linux@lfdr.de>; Tue, 17 Aug 2021 23:14:21 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629267261; cv=pass;
        d=google.com; s=arc-20160816;
        b=d+ySmMsyzFnwoe/j0h24muMh7P+bL40BbG+Mq4jvARu+6oTxZGCIQYwafn2nYOWNe2
         bF5eKhNZuyPHFF4GbyzBbA56hzssdkj+CwdIJSTjJkVAxc+kmmoKanCiMKcCbQZLhoHs
         mtwzld67uXCOxm1tIseTRdvpAUjL+j8R4MCkbOg9lkOSPQnrPtWHO2JEB0z6+S0AfMz3
         6PTWiZmdWNvzuNnk7qS8EBT8+GFlOKKbfRIo/pBlcDJIbJe8jr057I3W64ksuj4VBNIl
         RZ7t1Af45ai08/WV+sJkqRSpQJj1blDt1fh5Ufql+qdMpWDVIVdS/Bmz9R4JrLTk4hzA
         lV9A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=FGKBIeClqtwZrTBfJ99UBgkkHmG8c7Skg5fsIwb3Fz4=;
        b=fS6eckTpUpCeSgSsHL5S84J/BIxvug7xbz84rVvtXGQ3IVnh6m1qgLaJ02dOkJek8s
         skDbPGaq+Q29lfgKdI/e5fzZj16NIOPGNfmI/WZi1TXCUMrj0yQRRl53BEmNxeZARMOk
         ivpwPHsp08iKj6VPqNCSMFExmMvgYY5O0bzX3jvTMSlnyb0a3rIpy1Naiw/Pkd/MedSQ
         XkIdVRciYWoJhfXFfE2kvTXlXJ8HJF8guUwONVDBV+Ayhrr2sABazefCiDOY6rPeTAxp
         UiUrJA7tVaM8MI12PK3A2sphUfH6YAXOQDvaEithszGrUk0ZM75C6nWr6UKcT09R4ykx
         QsRw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=mwg1q+Bt;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::630 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=FGKBIeClqtwZrTBfJ99UBgkkHmG8c7Skg5fsIwb3Fz4=;
        b=MAj0+aWCyhQlVwlvrEMgi/aR5YdhFe9OqOy+fBdRstYQkqXFrmUOAUFj6/GMnCiClr
         ABGoO8x7T+seYfeaJV5aROQ9ZVmgM2DS0uxs8T11ILy1S6lQaVAmR+RVNvjnen6CeoZq
         PcClkXS6sRUCKJB+sM49TihCkYHXkvymjDAZuFM2NXmeE4Sj/lguK+OnvElUSAaYXea4
         i64IvJL+5Qs7rausKndhKw4ge/38LnPhbz2wFTQ0dxfRH9jMuVx6DtL0gHMkHBE9iHfK
         ktvIn5K20Ud8TI1+3PYJFUjv7X9mSjCxNJx+6Bpn0A1jmaLz0IbzrofOKaTY3IP6h/VK
         jw3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=FGKBIeClqtwZrTBfJ99UBgkkHmG8c7Skg5fsIwb3Fz4=;
        b=EEcvucKDwO201gbYxvnrq/sVLMdEDMrM//4ymOwkOWkecnKsAsgUIODtsOOQt7VyBh
         HbFBtuIPPyUPdL418Mp6qF0OU0xpbdaZ9qEHRKF5nMPUOsymcsIBhngcGqQLPOsvoHex
         ulbDpa2y/ibZzvwV3jtQnQHfICe/GhoLNGYku/WgSskSxTM06eizDZQDX9UwlqSsHEWl
         RKeHmASY3+97veAOlToWukHzA7+CS4lVANIST2rfYXSAhBY5xB/jHIBtJMWHCTOK0TYm
         reT/vxb1Vwf96/N8RvBCGJWBSoEpiiTsosIaU61Rg12kVga7305Sk8OZw00EnR3BMZBB
         8BXA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532S3Gfte+xXD7fMqXdYpmIJ+uzq7Zr6p/gA8JY/vWoK3JvD9Xk4
	WGHtFe2gVX33Cse0nEq7kYE=
X-Google-Smtp-Source: ABdhPJxU2oQcwWWrFBk8PEBY3OTeLWhp3lW004Ao01C7aqTjgYISXo+ZTzUS18fEkyutA0Q204jPDw==
X-Received: by 2002:ad4:4a8f:: with SMTP id h15mr7337008qvx.39.1629267261090;
        Tue, 17 Aug 2021 23:14:21 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:620a:710:: with SMTP id 16ls783742qkc.1.gmail; Tue, 17
 Aug 2021 23:14:20 -0700 (PDT)
X-Received: by 2002:ae9:c115:: with SMTP id z21mr7513800qki.482.1629267260671;
        Tue, 17 Aug 2021 23:14:20 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629267260; cv=none;
        d=google.com; s=arc-20160816;
        b=nBWL65yOmGF42KSBxHTnwwfVfRpkZdUosAZ+K7K+JXb831S9FMbiqo8O+fSNiZyat7
         vL0bElNj4e8DX2zAy8smCvTYSfNh/tYpreCl1OoHuu/1g71KgD2nMy2R67KTJf1s3b31
         apj1TtGINAhUmML1hnt1oU92cSnPBgXRq+Yd0G70BuXY8QUmlpinH9SAuKaplrfqBgsj
         wNR2vTYoeVIQgBhgBhpuOcCiomAKwAfB+LRAI9lAlRSgziBf0cWn9DhfBlw4A/fZsT55
         vtXeNDXv1sMDFm2XcUwtj9i9kSOJSthxLvzL2HMSwlhgVj5Mv45m5kzS4H8pbrvR+0Ou
         9qyw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=B2pM2ucDG5zliIAHLMoXUSUCi2eG5GhvAhwNtz+MErg=;
        b=Tyw/ZZtRe6EnzcuF/xMWp4oOeKHIsidyS+3R2dhboXpAV1yJASqrWscbBsMaSAT5EA
         MZbwgTfyAxNTT8VOkwdoJXMNxbNz6nxv1DDjDvz+MTaw51tXMhNbLdPqyNehjvKzxWlb
         aAUHX5xceaHwb8tVB/0V7dRXZcZuCy03WpixzYzW6u9Rji7wi67udBFJxVrvMtw6NYRW
         11pulW1I+4WzdwaayjG+oqCIdejFf1J/73NGxZEJ3la1HLXBYWlBFLkeMk0DP38Jl5ir
         rR3A9aziy7m+HXCq6+JTJ/P4cwOx1I19IRuamv0GuC+pZ35RM0gqZtRiNV1L83TG83sC
         jiRQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=mwg1q+Bt;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::630 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pl1-x630.google.com (mail-pl1-x630.google.com. [2607:f8b0:4864:20::630])
        by gmr-mx.google.com with ESMTPS id j8si235622qkk.0.2021.08.17.23.14.20
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 17 Aug 2021 23:14:20 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::630 as permitted sender) client-ip=2607:f8b0:4864:20::630;
Received: by mail-pl1-x630.google.com with SMTP id e19so1121676pla.10
        for <clang-built-linux@googlegroups.com>; Tue, 17 Aug 2021 23:14:20 -0700 (PDT)
X-Received: by 2002:a17:902:8e84:b029:12c:8742:1d02 with SMTP id bg4-20020a1709028e84b029012c87421d02mr6048620plb.38.1629267260326;
        Tue, 17 Aug 2021 23:14:20 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id c2sm4955806pfi.80.2021.08.17.23.14.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Aug 2021 23:14:19 -0700 (PDT)
From: Kees Cook <keescook@chromium.org>
To: linux-kernel@vger.kernel.org
Cc: Kees Cook <keescook@chromium.org>,
	Steffen Klassert <steffen.klassert@secunet.com>,
	Herbert Xu <herbert@gondor.apana.org.au>,
	"David S. Miller" <davem@davemloft.net>,
	Jakub Kicinski <kuba@kernel.org>,
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
Subject: [PATCH v2 38/63] xfrm: Use memset_after() to clear padding
Date: Tue, 17 Aug 2021 23:05:08 -0700
Message-Id: <20210818060533.3569517-39-keescook@chromium.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210818060533.3569517-1-keescook@chromium.org>
References: <20210818060533.3569517-1-keescook@chromium.org>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1818; h=from:subject; bh=eNwDaozDVyCitQLryWC3/RFgBjRXkOp7KVQC946+IMc=; b=owEBbQKS/ZANAwAKAYly9N/cbcAmAcsmYgBhHKMmAX0G1QJqNpqHK4m8y3LeJ99HmlfZlOjfOt4C XfOmkkGJAjMEAAEKAB0WIQSlw/aPIp3WD3I+bhOJcvTf3G3AJgUCYRyjJgAKCRCJcvTf3G3AJqqREA Cd9YfEItqXqOY6xygw682gXWYaNQa5IvKCcsyt4U6GdZah2FRAUQ0UxtMIwc0L2/8g3CAi4wzU83FH 5n6GD+dF8r+3cEP4bPwYLGEKzsgswWQIqJWwKGJoBvFSxG5wbfIHwbvZFOM5y+/t0aPwonqcCoJOw3 ThLBMvQUV6CpfMGRKgiedNLzbF/W83qJ2AR4sriqV/LBY6hNK46QXR861zd0a5kaRKvgMSwMV52G0c jSd0GHvFCTEnjsussKR6m695hHoQ//Grp/PmO9TMZ/3lfxTIWoYIoIcbwp7uZ54MslPdksTUwsmU0h IO8Y+uXx5pnjdZSpaSsSCIOVJL/EthakY7NQ5WVjObsr0IqBBwrY20F03r3zPRKZGy1AqQzOMGCwoZ OzA7VYExn3uUxUXRBqic+nz/P7UBIsBMqdKH9LaSVuz96021TUStdpZJm7ZJXKi0cNJAzywfSDP3HH czY6llUcG1ZRmA3/1iK36jI7I7bTyaQibsz/ss/kI2A94u+5cgagPX+YYXqa9D238TuWELhNQQbyON ahzeMR7rMXzdB40Gm0u/oCpw+3fhAQ8YcZjYa35I7aWjTr47jLo+AN/O0Es/XUUwjNu9T1tAclWZEZ SDapObM7dpmG1Ldxs4y59x6+0RFPyEN5Tb14raVdPsku576ce7lt/B+4yXMw==
X-Developer-Key: i=keescook@chromium.org; a=openpgp; fpr=A5C3F68F229DD60F723E6E138972F4DFDC6DC026
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=mwg1q+Bt;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::630
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

Cc: Steffen Klassert <steffen.klassert@secunet.com>
Cc: Herbert Xu <herbert@gondor.apana.org.au>
Cc: "David S. Miller" <davem@davemloft.net>
Cc: Jakub Kicinski <kuba@kernel.org>
Cc: netdev@vger.kernel.org
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
index 03b66d154b2b..b7b986520dc7 100644
--- a/net/xfrm/xfrm_user.c
+++ b/net/xfrm/xfrm_user.c
@@ -2912,7 +2912,7 @@ static int build_expire(struct sk_buff *skb, struct xfrm_state *x, const struct
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210818060533.3569517-39-keescook%40chromium.org.
