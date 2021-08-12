Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBTUO22EAMGQEEFRZXBQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3b.google.com (mail-yb1-xb3b.google.com [IPv6:2607:f8b0:4864:20::b3b])
	by mail.lfdr.de (Postfix) with ESMTPS id 799D73EABE8
	for <lists+clang-built-linux@lfdr.de>; Thu, 12 Aug 2021 22:40:47 +0200 (CEST)
Received: by mail-yb1-xb3b.google.com with SMTP id f3-20020a25cf030000b029055a2303fc2dsf7224047ybg.11
        for <lists+clang-built-linux@lfdr.de>; Thu, 12 Aug 2021 13:40:47 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1628800846; cv=pass;
        d=google.com; s=arc-20160816;
        b=s+tKzyjduR7iUGViF8X8IkzCmCG8RMT6Cl7vcMM00CzKGiFkpgczvA2tI6k8a9guhE
         Xi/iQgfShYyVc4q8lefaV55upbe35rBf+8TCY2wJAXACRHOkZyVR0x6ZsaDUc2kc/mhE
         aCF0Ou5YmOL2sCkRovjL17LzU28W77A1XjMJaCNqIRkqXuuaxaLbApv/pT2qeGL3yVUc
         CDiiCmXEI69GVYKsYp0mpbj/hh4irgX0iwfN+rVv3FnLbq4tP9Lpj6GzGiezoBsPrsju
         U9tr3Yng2Ty1oc7UJSpHD9See/3NbR6gkyMt4OvrbTbSShwybNi467i5MQjyyZbk8cf1
         up7g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=tQGG4p29nW7m31ibMPwbJnmmEQv+RMQY8dFaDzNUe3o=;
        b=XkUQv1lnyQ43ChGKEtRQWTJsoU1gjKVHsAjCwcMat+E5ktGjOnOsBFIcN80Zl4C0o2
         sCf3PwfQJRrwxNT7v9YSvBR7dhHOScXqqaY5AMrBut9kMAuhxEJ9SdeXT2vwhewjFvbP
         nfizsjCtoicUJ2WBZJ27XolAdgg+aSPf+5ZiviSiK9gAnLx2658+MBEtw52dcusALbnx
         jkQY6htdMDYnB7b3k5M7ihqZkBH7MAYVcUivPg/dM0eaLFJQViZVhuViFCGTc+WWwUtH
         QgUiYOIlSaclpBhW2NguH8xfl2qXpAqLZEuJebn6K4K13a7dbr4YfZ/r5TYNhBlzMmYd
         ZBgA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=oE0lPx5O;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=tQGG4p29nW7m31ibMPwbJnmmEQv+RMQY8dFaDzNUe3o=;
        b=jjS+gfc7Q4QLKvgr5rg6/K5QRY+Eon1SRd4cLDtyrSfuNA8BQLbEp6ewzSimET9xRp
         5yJSn/qF1Ps1bKuD5KyuI9/w1SWof/frsJCFKwDRvesASDJeH8IQZJON7PH0OuF2kZza
         usw7d2FGD15iqRP7BP4F2tgQ4Z6Dk7LmLvWkKUIDU1J397E9zp9IXBmADeQttH3HSVgW
         3yNiNzcfQq2DksA7jkm8lQB5bmZ2KTa1QRCxQMamW28UHYxpX+5FC1KnyaTUbtMlJmkC
         2hm1nN8CBLQtPeKXOid0oK3dbWM5E24+qMBPsMi9UXhXOXllPs2VeKjXIc2DHrxSuboG
         4x0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=tQGG4p29nW7m31ibMPwbJnmmEQv+RMQY8dFaDzNUe3o=;
        b=kd38qrNwwaSeg6W5bg0kf0Foh8ZNgoR7ctXch36Q0LM8FuwM3X3OXiNg4Mgq9OiYo1
         DVfqNjeOwkG73tTQSWnp0ItQmZihqjIKWRhiphUk76RZgjfMx0BvUrYYE1yPnp3e/nDB
         WTrCsX6FDxQVYgvVQGdcw0LFpJP5J/OZdcB8ZV58B0rQnRItb+3jCsnPTs5t/+rOyIVT
         BvUqOYUix67P4RwL7zz2RQwbBf07fwLnuTniQnaQwvQzre5UucEEUwv+f6YLBpc5hfU/
         M/rar1Lf5/JIssV6hxiM75+gCbM4va8uQhagW8/uIO/E5TBYh5Evq9Xv2O25GXIx/pGY
         BaSA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531rnNywi1Hlhz3l+U5Xd7b3kUblWOzoDJww+PG4j6iBfP5lXaLJ
	27ueNgGfOWsfUxsCNXetmtg=
X-Google-Smtp-Source: ABdhPJz0KDHpOV5/ZD/y4ohYsPGJVyq9D8U4wZ6xti0x8lnYFjFhUV6CEZ2ETnXJcjDX6/2ri3EgvA==
X-Received: by 2002:a25:db0c:: with SMTP id g12mr6328164ybf.6.1628800846204;
        Thu, 12 Aug 2021 13:40:46 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:6e04:: with SMTP id j4ls722811ybc.7.gmail; Thu, 12 Aug
 2021 13:40:45 -0700 (PDT)
X-Received: by 2002:a25:e7d0:: with SMTP id e199mr7022067ybh.203.1628800845728;
        Thu, 12 Aug 2021 13:40:45 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1628800845; cv=none;
        d=google.com; s=arc-20160816;
        b=AdvKXbbbtS++9yREdcSKpli3rjDq4INtFfuuBNLa40GpSHtFVjTMQJDBmJk4oujj/f
         HNmH+CLGBXS1h3manKyD4Ed0t/OqyfVtzqzLUrOV01SZkLCd6EJmlEb8chaJkslJdM3o
         5FqNX8IRMNV1j2ylVteckbm/odpXAQcRyIDESHqLXbI9jPpF4rIhjRLR5wT6JoHsuaSR
         w/YFGqc4UWQAyxsZx1NCrET4kg2g1k/qeJceFqQx8CdniuN1b0TIWurp8lo7x2IXJowr
         NQ8QfaoJ8IO0wGF3DHsnoy8IDimzv6pEbDC7MrFyIiobb2FHDprvNwZWbQVGetKp+7Bh
         hSwQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=kE/OhlPj/1SB8996VA2VABMC0fBhiJD/eQAtStBZnN4=;
        b=LeKo5oNCV9SK0EhEj8w3pezDXX533JPg1KprpNjXF2bWCs6frTwYfgBVDUdb4IMrri
         OzTrMSoeBP8KI7384F2VuRHSNtJYHQ0RkUOCjQUPKUmH6xsWj6ulsx3CeoAIY6mCxvAL
         afMnR2/YcU6S+fg3vF9LlPWBZVP+FfUyLfYRgDrBW2nQVP7NlnUxodiTOyu+FupC+8rj
         0s8sZDeSIhVpnA4RPWnM9TwjAMCfcfCwbrkK/hKRdgtacf8kj6rs/jbhGmypaY53VPLv
         JS/wEyBHOWxQbo9Neuz3vNmzM4OKRbjPWiN+4AqRzTdhSDc0mAJs4jWbkZyzM2O/fpR+
         q/8A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=oE0lPx5O;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id u17si306092ybc.5.2021.08.12.13.40.45
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 12 Aug 2021 13:40:45 -0700 (PDT)
Received-SPF: pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 3D9F1610A3;
	Thu, 12 Aug 2021 20:40:43 +0000 (UTC)
From: Nathan Chancellor <nathan@kernel.org>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Phillip Potter <phil@philpotter.co.uk>,
	Larry Finger <Larry.Finger@lwfinger.net>
Cc: Nick Desaulniers <ndesaulniers@google.com>,
	linux-staging@lists.linux.dev,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Nathan Chancellor <nathan@kernel.org>
Subject: [PATCH 1/3] staging: r8188eu: Remove unused static inline functions in rtw_recv.h
Date: Thu, 12 Aug 2021 13:40:25 -0700
Message-Id: <20210812204027.338872-2-nathan@kernel.org>
X-Mailer: git-send-email 2.33.0.rc2
In-Reply-To: <20210812204027.338872-1-nathan@kernel.org>
References: <20210812204027.338872-1-nathan@kernel.org>
MIME-Version: 1.0
X-Original-Sender: nathan@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=oE0lPx5O;       spf=pass
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

After commit 987219ad34a6 ("staging: r8188eu: remove lines from Makefile
that silence build warnings"), clang warns several times:

In file included from
drivers/staging/r8188eu/os_dep/../include/drv_types.h:22:
drivers/staging/r8188eu/os_dep/../include/rtw_recv.h:395:9: warning:
variable 'buf_desc' is uninitialized when used here [-Wuninitialized]
        return buf_desc;
               ^~~~~~~~
drivers/staging/r8188eu/os_dep/../include/rtw_recv.h:391:25: note:
initialize the variable 'buf_desc' to silence this warning
        unsigned char *buf_desc;
                               ^
                                = NULL
drivers/staging/r8188eu/os_dep/../include/rtw_recv.h:412:52: warning:
variable 'buf_star' is uninitialized when used here [-Wuninitialized]
        precv_frame = rxmem_to_recvframe((unsigned char *)buf_star);
                                                          ^~~~~~~~
drivers/staging/r8188eu/os_dep/../include/rtw_recv.h:410:14: note:
initialize the variable 'buf_star' to silence this warning
        u8 *buf_star;
                    ^
                     = NULL
2 warnings generated.

The functions that these warnings come from are not used or are called
from functions that are not used so just remove them to remove the
warnings.

Signed-off-by: Nathan Chancellor <nathan@kernel.org>
---
 drivers/staging/r8188eu/include/rtw_recv.h | 46 ----------------------
 1 file changed, 46 deletions(-)

diff --git a/drivers/staging/r8188eu/include/rtw_recv.h b/drivers/staging/r8188eu/include/rtw_recv.h
index 857269ae4209..81594e7aed51 100644
--- a/drivers/staging/r8188eu/include/rtw_recv.h
+++ b/drivers/staging/r8188eu/include/rtw_recv.h
@@ -386,52 +386,6 @@ static inline u8 *recvframe_pull_tail(struct recv_frame *precvframe, int sz)
 	return precvframe->rx_tail;
 }
 
-static inline unsigned char *get_rxbuf_desc(struct recv_frame *precvframe)
-{
-	unsigned char *buf_desc;
-
-	if (precvframe == NULL)
-		return NULL;
-	return buf_desc;
-}
-
-static inline struct recv_frame *rxmem_to_recvframe(u8 *rxmem)
-{
-	/* due to the design of 2048 bytes alignment of recv_frame,
-	 * we can reference the struct recv_frame */
-	/* from any given member of recv_frame. */
-	/*  rxmem indicates the any member/address in recv_frame */
-
-	return (struct recv_frame *)(((size_t)rxmem >> RXFRAME_ALIGN) << RXFRAME_ALIGN);
-}
-
-static inline struct recv_frame *pkt_to_recvframe(struct sk_buff *pkt)
-{
-	u8 *buf_star;
-	struct recv_frame *precv_frame;
-	precv_frame = rxmem_to_recvframe((unsigned char *)buf_star);
-
-	return precv_frame;
-}
-
-static inline u8 *pkt_to_recvmem(struct sk_buff *pkt)
-{
-	/*  return the rx_head */
-
-	struct recv_frame *precv_frame = pkt_to_recvframe(pkt);
-
-	return	precv_frame->rx_head;
-}
-
-static inline u8 *pkt_to_recvdata(struct sk_buff *pkt)
-{
-	/*  return the rx_data */
-
-	struct recv_frame *precv_frame = pkt_to_recvframe(pkt);
-
-	return	precv_frame->rx_data;
-}
-
 static inline int get_recvframe_len(struct recv_frame *precvframe)
 {
 	return precvframe->len;
-- 
2.33.0.rc2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210812204027.338872-2-nathan%40kernel.org.
