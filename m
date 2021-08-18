Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBTOG6KEAMGQEXC5476I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf3d.google.com (mail-qv1-xf3d.google.com [IPv6:2607:f8b0:4864:20::f3d])
	by mail.lfdr.de (Postfix) with ESMTPS id 8AC8C3EFAB5
	for <lists+clang-built-linux@lfdr.de>; Wed, 18 Aug 2021 08:06:06 +0200 (CEST)
Received: by mail-qv1-xf3d.google.com with SMTP id u6-20020ad448660000b02903500bf28866sf1447798qvy.23
        for <lists+clang-built-linux@lfdr.de>; Tue, 17 Aug 2021 23:06:06 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629266765; cv=pass;
        d=google.com; s=arc-20160816;
        b=WmesEnMnaxB/rK5ZOh3obnzDca22kSgWCOdLOllK0eazcK/K2SIhrCpfTvISlZGgLO
         d3zjpsMEYte+0NcnmXKx8j+UBF6/cHB2wA4R5TT0O/wPKKZ48zQDRMJj9rge49jztw5A
         uX/91ry58POHcaafZyUTcs5xjbdqEvYS4VbnUWYRhLkSLHOZiVz3TY+s3IEYL1Roh98V
         QxhQzV038AoOt+Nn+XzV7U1z628/jfW3MJ4LVgfniVqANFF8zH7oNOIIorrpGbiSyiSZ
         61Czy6PX1kILJkVGIYNAyby0BZ98E9kH+2KJbDrFp54wSTG/ftDAnHRpOylK9XMMgamv
         xi1w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=LHi7Q0qUt3kfUJ1pFm0hgiYQxRsfQRV/lJ/ap+aVm3U=;
        b=DwM6p5bdAGyf6HjDPOn71Dke0CUWMvPZx62Gw89154t7Enevy4+Gsg0pEDKttIIJdZ
         qWGd17eRMzqSv6ETrwkvFjCV9S+qeD5HZgL5+Z3ak7WcCN4e5leVuy/qbVEwHDVb91nx
         Hiix5O5qOW/i9tJY21iYsDQ1SXrT5INSpkGBWFO7Nj2EkviL5WY99hCN1r295xGEwNUl
         3sRY6sVUiTwaGZZ8WsaZHjgrBu8qAF9NcNM7FsIpY1ueGYOOQsDnpNF1iCRGEj1zU1jo
         D8+HEz+y/vz/pc8n6iZ9djOTGfBJdnJa56iNDbzD96LYtV4I5GOuPlH2ywULNBfup6JY
         gCfQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=Z1gB5H+T;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::531 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=LHi7Q0qUt3kfUJ1pFm0hgiYQxRsfQRV/lJ/ap+aVm3U=;
        b=GXp78ZjUq5S1vTpljWxsZKfVWgl+UxFDS1MfHQgMQ6ZZhtUTd8DJRm4q7cXdSWXLyx
         tzq5rs6YMCZyNeqFNOxqTwS1mbAwY3/6eE9Vfe3iWeLeZuoWhhX1tD4IHT+PK0S+GnEE
         mcHLAULQkOCfUHFDojoUbYITLktUC9LFnCg5cqYEQH3cpzBY5rdRQSAeusOonVU/U8/j
         zMDHdZzoF0tNcxT/iixT2CC4ZmkvuAZxqbl5ILd1uwyUl3OBlmTP4L8AHh4SXpXCJZib
         8eoDWTfJWkaW5XvdzE16xawzriCqEtkdW1Mf0ycSuj2/gCLdWGiKCQMz4vbRo+UBq6My
         Mk1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=LHi7Q0qUt3kfUJ1pFm0hgiYQxRsfQRV/lJ/ap+aVm3U=;
        b=g57ag2I+cidIiXjBFcAfCjmJBsXph/jHcgwpV+J4cyFeVQ/yQyi4eXR2FZmU3xNxUz
         UPzaNdyzS5JHYXyUzeXBCyCwPJmXo3qfbphNrLMN8PkyZDVo11CgtLlj+/nxON3p9oX6
         4KPsO72VtdgioinAFusUM5QkSRxNDG3oQNE4uK16ztTizVz49NrXQdYToWLgZdt0/yAe
         F3r9akQISGWigm6j4hypCMyrMi0kTpiFD8GzxpIYHL1631W7Cj0yk6Yc8p0BopBd6q6C
         WuAWyg31F6b8Mhpge5Ephl9efp1YzZT8+6eH6UjMZ+0rDZM+535fSZq1cCpu5Zg6psZB
         kFRw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530vvrMPMtA0dYpbmCnu1U5bUeGmctMHNUY31VIK+bldxvymrTsB
	GhoJfgbkN9iqF8hoH4Mdg1Q=
X-Google-Smtp-Source: ABdhPJxIVUjFcNgHBlnzcrZvYIztGc7V1712zur1WqNRKs0QxuGGZwIjNJpTvLrFrODPB5upgHSM6Q==
X-Received: by 2002:a37:9307:: with SMTP id v7mr7704757qkd.371.1629266765718;
        Tue, 17 Aug 2021 23:06:05 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:182:: with SMTP id x2ls512029qtf.7.gmail; Tue, 17 Aug
 2021 23:06:05 -0700 (PDT)
X-Received: by 2002:ac8:4c9c:: with SMTP id j28mr5656788qtv.224.1629266765096;
        Tue, 17 Aug 2021 23:06:05 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629266765; cv=none;
        d=google.com; s=arc-20160816;
        b=OggV6JgMRyde5HqyDVVjsf9Z55aLirSUiWDX3whXx7cLa0LAuVPpUII0hlT5mkHGmS
         5KAd/fdOGQ+G6auPul2UCNI6F3P48y1GFSBb7ihShAwgR0M0uqrjJXriP0jxBGnADohc
         8Cpge0EhsJgQwJgvOj4IvnZZIoP2YfXf9i733id/RSglWvES8Pup66VXdCsqs4hfqoJG
         /CBNIG8PAPV3RQJM9lPhiDz4w+WfpndasRHt4jKoA3ml8c+1hz9tuNbZWzm3Rk5ToJqC
         eSp5YqqP0fiAWfKU1Mg/ROqwmyQOa86Xx5wPafLlosTI+jZo0weBiWQFULqUooROUDog
         0YUg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=vtwcSVdVTFoZmc04BzBkMsZrmW9WU0SQRrViE0dMhIM=;
        b=EHLrgFJhJGscZ6TfT1+Bh6UOVbM/Ti+OjuPVRocKuDkVeh0l3JOiFFTWrT/oYcKy2D
         F/Dw1Gh/PdsTnYplPLwsUQQLpncE9y0hbd1BLQmRRnRIETR9eC+U62NBTD0NurNlpIdx
         FcVOj9oVBWyIDoqCJUl2PqKRrF4Pf45RO2e62ExC6cBGrUdekVHob4oLJFTB2MRMrwJK
         19oo5XCZoe3NF+6weI9jt7B4zy37HkfczXbACoxWQ1vZmx6BlPwOJutVQ8sLba8MORzS
         kWA+TFf/Z2QGLK8MkIQ6ZykSQK2ejXVOYyTOKucgPrxb2oF4gO2mm/CjcBFZFmNt7njY
         /G7Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=Z1gB5H+T;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::531 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pg1-x531.google.com (mail-pg1-x531.google.com. [2607:f8b0:4864:20::531])
        by gmr-mx.google.com with ESMTPS id b1si358739qtq.3.2021.08.17.23.06.05
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 17 Aug 2021 23:06:05 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::531 as permitted sender) client-ip=2607:f8b0:4864:20::531;
Received: by mail-pg1-x531.google.com with SMTP id w8so1142167pgf.5
        for <clang-built-linux@googlegroups.com>; Tue, 17 Aug 2021 23:06:05 -0700 (PDT)
X-Received: by 2002:a05:6a00:1ad3:b029:3e0:c106:2dea with SMTP id f19-20020a056a001ad3b02903e0c1062deamr7475031pfv.8.1629266764822;
        Tue, 17 Aug 2021 23:06:04 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id n30sm1015079pfv.87.2021.08.17.23.05.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Aug 2021 23:06:02 -0700 (PDT)
From: Kees Cook <keescook@chromium.org>
To: linux-kernel@vger.kernel.org
Cc: Kees Cook <keescook@chromium.org>,
	"David S. Miller" <davem@davemloft.net>,
	Jakub Kicinski <kuba@kernel.org>,
	dccp@vger.kernel.org,
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
Subject: [PATCH v2 42/63] net: dccp: Use memset_startat() for TP zeroing
Date: Tue, 17 Aug 2021 23:05:12 -0700
Message-Id: <20210818060533.3569517-43-keescook@chromium.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210818060533.3569517-1-keescook@chromium.org>
References: <20210818060533.3569517-1-keescook@chromium.org>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1093; h=from:subject; bh=oy6iBSCr9kyZzvyYymYY57kzNqoaMnV5JLYgBAUoJm0=; b=owEBbQKS/ZANAwAKAYly9N/cbcAmAcsmYgBhHKMn1SkgQ8BjGsCq2GdMgGzLdaT1ETjcggbTd7md ILaTjp+JAjMEAAEKAB0WIQSlw/aPIp3WD3I+bhOJcvTf3G3AJgUCYRyjJwAKCRCJcvTf3G3AJuyaD/ 4sQC9WJISdx2sivmaYm8XFbYloHqwWeRooJB9Xn5LQlXYeixqdc3xt1r2gvg66w3xCH+tVVrX9xwZ8 j4rOz0Jnr4M4+XoPft5UNGFK5WHVSQxM1uFZ6yYUAzKW8y+4UNCClX7NR8hlCV6VzksxhefmAPPtmS wOq7tQbgdvsAdVIszxfGUQEQ/lsjPMC/whKeduyJAGzs1zzly6D2vtwy0ZqcaAksRvJiZQJ40aB4zR mW+la1HOBIsMfVxsqbEcAWaJPSQAIOhZNkyVHQp6hsVB1RDZN3i3KFqmpmAkeVu2vlJF1EKcdgGaEn jyCwLPfogMCZn9L/uBRkh+ra5YX7NEEWpVHUFB3qfY8BR7bV/cmBNHN9o9xE2BB2e5L9mVlsgzLs5N +ZgL0eXIWi7FZf8+kVbThu2pP/RPDsS+237VGqD842n6pSszz+Ef+1o6GC8dcy1e/RD0ca/bTNa5N4 IxUAbV/MpfsG0SAYjf5hGJPBD5JnPZKJypzRlhJyPq16auQMT6oq3Br8H9Bqrol1u3NMiDR5o+pwtf tVZXMStjqtGmw0i8+SVL+bnPCzcw4UxGNNF0OxZi7Xh5YdVPsWcdXNWPjX4cWWnd8R6sNMzlOOLjqy +W6jas5qQpj5s60ah2DQNcBu2uwwUtZ3ce3UAMyWXl/MPjF/Wzb6mFfp/Anw==
X-Developer-Key: i=keescook@chromium.org; a=openpgp; fpr=A5C3F68F229DD60F723E6E138972F4DFDC6DC026
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=Z1gB5H+T;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::531
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

Use memset_startat() so memset() doesn't get confused about writing
beyond the destination member that is intended to be the starting point
of zeroing through the end of the struct.

Cc: "David S. Miller" <davem@davemloft.net>
Cc: Jakub Kicinski <kuba@kernel.org>
Cc: dccp@vger.kernel.org
Cc: netdev@vger.kernel.org
Signed-off-by: Kees Cook <keescook@chromium.org>
---
 net/dccp/trace.h | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/net/dccp/trace.h b/net/dccp/trace.h
index 5062421beee9..5a43b3508c7f 100644
--- a/net/dccp/trace.h
+++ b/net/dccp/trace.h
@@ -60,9 +60,7 @@ TRACE_EVENT(dccp_probe,
 			__entry->tx_t_ipi = hc->tx_t_ipi;
 		} else {
 			__entry->tx_s = 0;
-			memset(&__entry->tx_rtt, 0, (void *)&__entry->tx_t_ipi -
-			       (void *)&__entry->tx_rtt +
-			       sizeof(__entry->tx_t_ipi));
+			memset_startat(__entry, 0, tx_rtt);
 		}
 	),
 
-- 
2.30.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210818060533.3569517-43-keescook%40chromium.org.
