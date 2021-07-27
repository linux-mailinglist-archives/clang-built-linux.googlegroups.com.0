Return-Path: <clang-built-linux+bncBCF5XGNWYQBRB37KQGEAMGQEBJQWVGA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x83c.google.com (mail-qt1-x83c.google.com [IPv6:2607:f8b0:4864:20::83c])
	by mail.lfdr.de (Postfix) with ESMTPS id C25463D8081
	for <lists+clang-built-linux@lfdr.de>; Tue, 27 Jul 2021 23:06:56 +0200 (CEST)
Received: by mail-qt1-x83c.google.com with SMTP id v7-20020ac874870000b029024e8ccfcd07sf7106699qtq.11
        for <lists+clang-built-linux@lfdr.de>; Tue, 27 Jul 2021 14:06:56 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1627420016; cv=pass;
        d=google.com; s=arc-20160816;
        b=tAJrX/AvRf51Sr6xynOutwAFqEstnQcXIjA2XMWxWgWxDGANWtGwXRyl8F+ZL0TdIO
         lMSzt4M1YKWYJ6+haafNFpejwt4IfTiXyPlxGjcnz4lQwC1ZfHip7nPkvKbQD3CLxDVI
         zWsfwhi4l+0oXvxUvpmqFQeryhb/hQYKZnaRBhSKBiZwjulCZ/5tcl6jLkm+4ssvMT6t
         +WxBMuFF8yx1QSRG8jYtoARNF/Ek/+G6IDTYqozDU4LeEDw+yOamCTcyS1tERtwD2hPL
         73CiEHlP2PjU0vRLubu02UjgWuOShmLiFoXxuAXuw4FMlvWU1SNxR70sy1Qg9G0tx45v
         0jWg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=91JVZXLUaCPba+755yi8QdeWv/TBBLmx3fyiKuvZmW4=;
        b=p5v4gFS5GH8RsxHXBkQM8XCOOUvvEafTtx4lYcptRwU6Zv5khqMUjJs6evkqdKla4g
         ZWW/5PF5RbHf2F9PwM3d1qO479Syf5ZNrJJHmgGph5deeCURMmDoF0ob+Y8FsVv+/kXN
         MYyJqklAGmBNTDFfVJR0Xk6MkvgjbRvoIV4l5kW65FtlP+1fSPg/4W9F6vGMlh/poU+M
         bXICSJZh10i6OsJnJdvQk+9bnmuQEyvqVj9brhoYoq1+0cYtueVvJvRADRlm62oZTJqK
         cGvu+Q5VuDWM4iD/rSu6ihP7kDdD4cRWeqZx6JjUwASlIeXdc3SKpsG+PNtePS2UwzNn
         eRAw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=TTGjFuoe;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::636 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=91JVZXLUaCPba+755yi8QdeWv/TBBLmx3fyiKuvZmW4=;
        b=ZYHKbJZPKdXWlsyxLnTgwwbis+p6vCHW31enG5Ndc0hK2rerMh0sGRCMUQMQluZfsy
         3xOOkrhhzOdseHpiO9FCbWpZ/9gB8TFLtziGyRDrM9vcmwK0JB/lotnA5Pn88D27Lm8w
         8LPBAd5k/sjWTXFJXUTP+8w2dlmLiyB6vWFKkn1sdVRwQ/vkrFXOyKrZeLNF4QCh00l1
         H+SSGa6BGUgZdBC/UF4gwSJNEysTmSErwEYbeH7qT8aE6Noe+IPKiEbLizAoAYRH/Iff
         wQYULczagJVxI7dwG+OBafEbkesLK8blJ96lq6emvD5eRpfgvQs2/FvfhGioxyL4+i8g
         wbCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=91JVZXLUaCPba+755yi8QdeWv/TBBLmx3fyiKuvZmW4=;
        b=a15crm9MarIpbF+B3SPZi2wA1KMLG12X7qVQ1rZxl9LVk6DX9mB+Scc3CJZN6rhqo3
         zARsVRVXBdPYl63ZD07MShEKjBom+LVVSUOrS50mQMp2HNB0StNEVVZDnRdFcAxYqScf
         HalpAs/xafkEGlLYI3wjQi2CVjB6cFBsVyDS44TixMoazdDHd2UJP+R/qq01hZi9/OUk
         379YETBNKzOXCZPQNSar841THA5fiZr1MMnQcVDI0Kt+pOxM11JzHvOYA5NrcqENFu3o
         GGsdGaNT3oMGm5fXZOJ93iLHfZcmvdUareij5D3jHQjSZ1+jlr5lgx90TL/MHgm+/mSC
         B5YQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533jIefGreHjbx9+r78VcISt4PLWAQl8UC/B3FNUBGQHy6Xt8Gqm
	IOS1lQwb+YWjmQLKHmmINbA=
X-Google-Smtp-Source: ABdhPJzTIKYPzpNYsAGQ+0FrANo0WSGsVTY6EO+a3rT7LjbMH1yeNIH44HXQxYSf7a6F1oquNs7gOQ==
X-Received: by 2002:a05:620a:129a:: with SMTP id w26mr23820774qki.330.1627420015905;
        Tue, 27 Jul 2021 14:06:55 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a37:a24c:: with SMTP id l73ls23057qke.6.gmail; Tue, 27 Jul
 2021 14:06:55 -0700 (PDT)
X-Received: by 2002:a05:620a:14b5:: with SMTP id x21mr23344147qkj.155.1627420015416;
        Tue, 27 Jul 2021 14:06:55 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1627420015; cv=none;
        d=google.com; s=arc-20160816;
        b=mAnJxNoVfqzh0m7ECisJR63wi4sssDIi2NWH/kMwiFGNOBlBqYsknXFS+QNFQlwUiU
         gUBYDbHTQoHYnI+rzQFDVCNClqQ26H6F3PSwWkVYkFOmiAuHJADmK3RINYNO4nbG5ig5
         JM3jJDmmizqqYeMs3r0+tWwQa2duADWUNnoCmqnEJe7gboKOQgEqgiUhJna0yMRGlo5R
         6VhoymC3IlEJuXUx7vE/Rly7Uqqt7PhdAaEHQaju57/ftV2pLhQ6gRYjXObrs07KrTqC
         209i4oKTo8DVzpprJmLMd4NONATsiEP5SUGeKlhQmyEljYMRRdScKz4hbRGlfMNWuKpZ
         TFiQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=KNJkxRbTZjBfSAYGR3816TShm8Emkoyf8ZdfkqPS+FQ=;
        b=pn4z3f3xXcmP1nzM+cWQgZSkHpythYyI0+CSSHNwgC8NIhaKiBuT77lnpbcwpMtpaU
         SNBsZBsb13AVOrZ8F3nsMRvOYeeeMOAofzIgQCVFhqRwKehnncCTLiN9TWnw1OYwscmw
         WEAXwzNkKhMKxfBGophWk2YcL8ALaSfsO1qc4H5NB8IeFSRfXO+aVw2Kt3au0MGWz/vO
         7dplvi1dsTZ0wDiVnyMiUbpEOkqBmgdBe20e5yGyoDTKxRgOPqfQQ22QIwBH8XZWpvuE
         aGSaRl7SqWHP6md9eotD/0FA7V3aB3ZfxYMDF6WazGUmwTfu8gMHr1zepmEJahghEobK
         mESw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=TTGjFuoe;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::636 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pl1-x636.google.com (mail-pl1-x636.google.com. [2607:f8b0:4864:20::636])
        by gmr-mx.google.com with ESMTPS id v31si195364qtc.4.2021.07.27.14.06.55
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 27 Jul 2021 14:06:55 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::636 as permitted sender) client-ip=2607:f8b0:4864:20::636;
Received: by mail-pl1-x636.google.com with SMTP id a20so88234plm.0
        for <clang-built-linux@googlegroups.com>; Tue, 27 Jul 2021 14:06:55 -0700 (PDT)
X-Received: by 2002:a17:90a:5a4c:: with SMTP id m12mr6207285pji.15.1627420014655;
        Tue, 27 Jul 2021 14:06:54 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id g8sm4556875pfu.30.2021.07.27.14.06.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 27 Jul 2021 14:06:50 -0700 (PDT)
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
Subject: [PATCH 44/64] iw_cxgb4: Use memset_after() for cpl_t5_pass_accept_rpl
Date: Tue, 27 Jul 2021 13:58:35 -0700
Message-Id: <20210727205855.411487-45-keescook@chromium.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210727205855.411487-1-keescook@chromium.org>
References: <20210727205855.411487-1-keescook@chromium.org>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=2100; h=from:subject; bh=gV9IZTM5qU7jcRGph/XDG3+fKRJKxoN9HOMcsfOyL0A=; b=owEBbQKS/ZANAwAKAYly9N/cbcAmAcsmYgBhAHOK/UN78x/osAzwgMKupSwSrhwjEeLTXqK++CZi 7CH6/zyJAjMEAAEKAB0WIQSlw/aPIp3WD3I+bhOJcvTf3G3AJgUCYQBzigAKCRCJcvTf3G3AJi+aD/ 9wSoxGLjbf3nMxhdx0FTNoLb7tUlFlGp+wsA1eq4h8eLG5OlOTzsA8IwsIgBPWp2/c4lh/3h8Wej9u tFFoUjbe3EwfDLU01dywIYam3R6J6s+TD7jpKeWz0MWD2NFKTvNmK/r5nlDA+crVlsHLnuBl7ozHdp Uoh/Bz4xC9nN82aPUAif26+yocqytHa2sw58nHCezNegk9sqBcHUCoNnFodMubFs/UgzD7hGOsd+1B aOhnYDdb2QaqaHaKTplZpcofR90e0xKWhk0CRSg83IE3RApySZo8s2Q4xTS1Ma3eB82/7z+gvwQXWY hia/xw+mpgLBcAZ0jCu/itWg4QCogWD2bkotmQJEfjL9TXjZCGUa2NGLC/CnEfFKcyutnljBecv1EH 0Q9xXQNOo4tw2JZcb6z7NV4dR0L+tjj3BeFNlPgNbG4VgwmG7uKubRriMRe5NSZBE38cW0fSq5rQ3Y T/5J6pZ+p6FMSSVheYF8tjScBuAHu1NRrxeGGj9Wx4M222kdbmFmeXqMdbCPWOgSfuuCWozDcs7p7z +9BLk6YAP2L0i/Fh9KBLAPtQ43onOWXv77p4r/RE/gXudIT6F++lAYSdbKOI9/3skSabDHdxRbQYhk 1gswdeOGaLRaDVm2CSKXSrfli04Bjbp+JUMycYvzS0p20FUxvYZuh3eQYepg==
X-Developer-Key: i=keescook@chromium.org; a=openpgp; fpr=A5C3F68F229DD60F723E6E138972F4DFDC6DC026
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=TTGjFuoe;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::636
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
of zeroing through the end of the struct. Additionally, since everything
appears to perform a roundup (including allocation), just change the
size of the struct itself and add a build-time check to validate the
expected size.

Signed-off-by: Kees Cook <keescook@chromium.org>
---
 drivers/infiniband/hw/cxgb4/cm.c            | 5 +++--
 drivers/net/ethernet/chelsio/cxgb4/t4_msg.h | 2 +-
 2 files changed, 4 insertions(+), 3 deletions(-)

diff --git a/drivers/infiniband/hw/cxgb4/cm.c b/drivers/infiniband/hw/cxgb4/cm.c
index 291471d12197..7129ae025b2d 100644
--- a/drivers/infiniband/hw/cxgb4/cm.c
+++ b/drivers/infiniband/hw/cxgb4/cm.c
@@ -2471,7 +2471,8 @@ static int accept_cr(struct c4iw_ep *ep, struct sk_buff *skb,
 	skb_get(skb);
 	rpl = cplhdr(skb);
 	if (!is_t4(adapter_type)) {
-		skb_trim(skb, roundup(sizeof(*rpl5), 16));
+		BUILD_BUG_ON(sizeof(*rpl5) != roundup(sizeof(*rpl5), 16));
+		skb_trim(skb, sizeof(*rpl5));
 		rpl5 = (void *)rpl;
 		INIT_TP_WR(rpl5, ep->hwtid);
 	} else {
@@ -2487,7 +2488,7 @@ static int accept_cr(struct c4iw_ep *ep, struct sk_buff *skb,
 		opt2 |= CONG_CNTRL_V(CONG_ALG_TAHOE);
 		opt2 |= T5_ISS_F;
 		rpl5 = (void *)rpl;
-		memset(&rpl5->iss, 0, roundup(sizeof(*rpl5)-sizeof(*rpl), 16));
+		memset_after(rpl5, 0, opt0);
 		if (peer2peer)
 			isn += 4;
 		rpl5->iss = cpu_to_be32(isn);
diff --git a/drivers/net/ethernet/chelsio/cxgb4/t4_msg.h b/drivers/net/ethernet/chelsio/cxgb4/t4_msg.h
index fed5f93bf620..26433a62d7f0 100644
--- a/drivers/net/ethernet/chelsio/cxgb4/t4_msg.h
+++ b/drivers/net/ethernet/chelsio/cxgb4/t4_msg.h
@@ -497,7 +497,7 @@ struct cpl_t5_pass_accept_rpl {
 	__be32 opt2;
 	__be64 opt0;
 	__be32 iss;
-	__be32 rsvd;
+	__be32 rsvd[3];
 };
 
 struct cpl_act_open_req {
-- 
2.30.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210727205855.411487-45-keescook%40chromium.org.
