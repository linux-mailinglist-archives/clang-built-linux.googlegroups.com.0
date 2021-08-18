Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBN6K6KEAMGQEAP3RFQI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x13d.google.com (mail-il1-x13d.google.com [IPv6:2607:f8b0:4864:20::13d])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E9DC3EFB87
	for <lists+clang-built-linux@lfdr.de>; Wed, 18 Aug 2021 08:14:16 +0200 (CEST)
Received: by mail-il1-x13d.google.com with SMTP id r6-20020a92c506000000b002246015b2a4sf647287ilg.21
        for <lists+clang-built-linux@lfdr.de>; Tue, 17 Aug 2021 23:14:16 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629267255; cv=pass;
        d=google.com; s=arc-20160816;
        b=zdkuhg8MSRKA+uI4yJvfjJh7rxCteWoIREoJEUy3/ENrPJtc3oNhcB/Abp3cufZwja
         EF100iFK1ilC+EPMqkQgrFIBYNfxq2sEupn7TpvuVTXar1vm3M+WI12rjKvNj20phhiJ
         W40vRhsImre0pQ4geWVmg272kUPxIzxUvl6+taEf6EomdXStyB1oTid5FdF1PSKRs4Uj
         tpMA5eacCjmmdTYLdttSOWuXvI4z2KNpMgaUlCii5i/r3TDbZ5cc55nVSG6oH12MfZu/
         mt8C8AlSj8lNCS8NQMZ2ly0WoVKORW2Fs5h5djF6gSAhT1thiz3hDs/cyA+FZP4tTVlf
         z4Ww==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=TkpuiBOKmU9Fn5CFrOCk7sHoKpPQ3x7XT6M/XlblzAM=;
        b=x42jUeYvCBIHzU5G/Xo1KUvOdcEKneKd5/MMg+/qpWdwNPtY5znW/Ix1+aCw2Vjaei
         o1Ugow1kg1hVAfZeDvpD6lpfRqhtFOGOep2oKvlG/NNpoRPAxkIwRc1tZKzsXkUi0GTA
         v8fz/KQJo0fT2rqxCFHKAIr1U6Z6qofuLcYLEEoQm5FQcc14CGbN31w+o0iyMD3XBx57
         JOmSWng3UDImx4pR2xQHZpJuSzoKFyzoaLaflhOjOxjAbdoa1B8PcpN+sZte/HzrbBC6
         RaU8lgzf1k/xppc+/4HDPk10Jk/xgnJDXiZDh6dxnQbphu1De6DHSeHJLHEyHQWQgnnu
         7C1g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=LYUO69wY;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::52e as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=TkpuiBOKmU9Fn5CFrOCk7sHoKpPQ3x7XT6M/XlblzAM=;
        b=iR+3Wiym9qjV3X7iY6Z5dGTwAump7WsQwW9QEh6VwDfSS/6xGqpewu6kgqyQlQn3YP
         1o0yu1T2X/1vYSifiyRqbh8KhzGL+xOKJZcb9djrXxOKKrv24jdOUJFrwjQdboD+SOJO
         NmLq9PC5XejOvZnmrkUku6/2Am+2yYZ7ppSFETqjMZmFZQA9flvZlvPWBoySjFiXegdN
         RpbFsgHKoNY+AVWegqLrLQDnLnIp9ScxPLS/Pa6HhpsFk1HxB6KGtWI4tNu0WgUqn6Ar
         ehLkNxY1a/4jJPvQU9ug1j9Z2MscafTqcXzTBFZBg+2Bab9FKYU1b3IIuemM74Ido5wF
         qPcg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=TkpuiBOKmU9Fn5CFrOCk7sHoKpPQ3x7XT6M/XlblzAM=;
        b=ne4yfigDWGfGdiu+Fy31rpQVHXRb7ChxLJQZ14G3ILh0gaFs4WdUn4VFIQQWk0iB1M
         oAd4kreU9vKAHbdSv1FCq7f+xiTfVNvTy/62WylboXN1LXuAPm/Ld56UtTBwKCrZIHb3
         AcHKxAtdfqcxyt2FkpLkqNdeO0esMCK/NvjdANw3ivjwtt60y7h3Sjz6ZPqBSHtf2ka6
         RRuVw01d/NpOfYaLcl9PB/UXWTuKPmCYPJ1ro8osMO1csK7rp+3gHubMv9wJdizCUPSU
         MmFkXaK/SBTOA+XZq1M4LZJ3nT8TmF9tJF0MVRPwVrFh7dj4957vaJ9nUhtLkeNKsRYJ
         UbLw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531d5MVTMfnICFNXt1taxFj3y2/zjJMkdU5mt3xBWiRsN9GAMfQ9
	f8ilgQpnIktS1ylmGhfHYx0=
X-Google-Smtp-Source: ABdhPJxy1v2vhyF1mYQn8yfVjI3TjUV9T0KF0WlRHeWc+DVMjFRTuJ4iuu93jEb4nVXyfSuiCi2ShA==
X-Received: by 2002:a92:6610:: with SMTP id a16mr4769608ilc.71.1629267255580;
        Tue, 17 Aug 2021 23:14:15 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6e02:1582:: with SMTP id m2ls270981ilu.11.gmail; Tue, 17
 Aug 2021 23:14:15 -0700 (PDT)
X-Received: by 2002:a05:6e02:4c3:: with SMTP id f3mr5094523ils.248.1629267255273;
        Tue, 17 Aug 2021 23:14:15 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629267255; cv=none;
        d=google.com; s=arc-20160816;
        b=hbmUNqYK41tZQbmpvUfF3zqld1d/Tn6BliZXXYo6cGbvOvhWH68pDORoxped+cA/Kt
         U0uXWGZ+dHR7oaaeKLSubutsPpKJ+8rqt66UPhTm+fP6jB6SPuC/Y/PEVn9rNBczrgSn
         LxzrDHoou5UDHxIZWtNikb3fYUyBbld/Mn+ZrQ6lNYD9YfMqfds2MDZDCylNXIDxueOZ
         PHFISantGoVhoiKZ19rn17unbUpCQ7q94jHO/qpzF8ln72J5EfxF0G6rdeBKEEeV3cyI
         NBGPJaDBTiFk8hn+1EgrFbp1SOx5bE85/CAr0sV/U7OLtSEf8BHfwlOzms5KUOaiQc8n
         3REg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=f4O3R9w7Wsb1EUzo8wW0sX+4sR/BMGAQ/Nfx2MpJI38=;
        b=nmUBf9VH2RzM0HdHuI6kPi4AZzqo2PIn4OPttXsSujAFlaEPof9nsSD37hrtI8tODL
         u4iQwBG/cUGjgghkQO3gl0yAvvuWz45ZTE9UfBpx3wi17Am0BZ7enbEDmD0U02wJ4QcB
         b6jIM9VcPooZLI6WhfjC3C6AmurPHh9exZu4Dh79Kls3JV0k4StwFZM6vsQ1vKZMjC2V
         ih7XbKQl8sDXbezo5PrTop6twFNxcZMcMLReUtA/NemXI/NZAQPNqGsPUoPHramb5mmi
         J09DhyM3phjd0KWzp644IFmupeE2+uchsckDKn0P9SmIcQnEZnwaAXhHcD4JLaMI/wxR
         SoNA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=LYUO69wY;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::52e as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pg1-x52e.google.com (mail-pg1-x52e.google.com. [2607:f8b0:4864:20::52e])
        by gmr-mx.google.com with ESMTPS id v7si314137ilo.0.2021.08.17.23.14.15
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 17 Aug 2021 23:14:15 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::52e as permitted sender) client-ip=2607:f8b0:4864:20::52e;
Received: by mail-pg1-x52e.google.com with SMTP id y23so1159790pgi.7
        for <clang-built-linux@googlegroups.com>; Tue, 17 Aug 2021 23:14:15 -0700 (PDT)
X-Received: by 2002:a63:164e:: with SMTP id 14mr7225002pgw.246.1629267254757;
        Tue, 17 Aug 2021 23:14:14 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id a8sm729024pfo.79.2021.08.17.23.14.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Aug 2021 23:14:12 -0700 (PDT)
From: Kees Cook <keescook@chromium.org>
To: linux-kernel@vger.kernel.org
Cc: Kees Cook <keescook@chromium.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Rustam Kovhaev <rkovhaev@gmail.com>,
	syzbot+22794221ab96b0bab53a@syzkaller.appspotmail.com,
	Allen Pais <apais@linux.microsoft.com>,
	Romain Perier <romain.perier@gmail.com>,
	linux-staging@lists.linux.dev,
	"Gustavo A. R. Silva" <gustavoars@kernel.org>,
	Andrew Morton <akpm@linux-foundation.org>,
	linux-wireless@vger.kernel.org,
	netdev@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	linux-block@vger.kernel.org,
	linux-kbuild@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Rasmus Villemoes <linux@rasmusvillemoes.dk>,
	linux-hardening@vger.kernel.org
Subject: [PATCH v2 19/63] staging: wlan-ng: Use struct_group() for memcpy() region
Date: Tue, 17 Aug 2021 23:04:49 -0700
Message-Id: <20210818060533.3569517-20-keescook@chromium.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210818060533.3569517-1-keescook@chromium.org>
References: <20210818060533.3569517-1-keescook@chromium.org>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=2774; h=from:subject; bh=aGp1hVfQLzgNKVTBWpK4bHAQRaqFRmqtt5a8sjY+csw=; b=owEBbQKS/ZANAwAKAYly9N/cbcAmAcsmYgBhHKMizR57up2j4NPi4kVovJhubhBpYTgyg8yWF9zZ icJ94SKJAjMEAAEKAB0WIQSlw/aPIp3WD3I+bhOJcvTf3G3AJgUCYRyjIgAKCRCJcvTf3G3AJpL6D/ 9OjwhbTRWiOOzSFBp8HIcdXHzLynmUDoremqboLQbbZFdvhzt0JN+X+5SXEKgIkDTabHGAyJJg7vbo zVrFanG+ya6KLCwo9BdiQAR/ueZXO5L+r/Giz1yPapqbt9k/nsEc5SYr5ucwOuJAxFE9KIGWEqYMrT i3E/cMd8/4hSpxFdVPIAs28n3YGzs5RdmJrvt0oE1gIolLyt89z92a2rYJdvxqr4c3EEmcmpORTtTP lkwRQ5y4dqKRSgda52wvAVbJiXwqCu+cZMKZbgEa3KUIL7s+H43Se99pCXw8Ub5zIFo+91KGljDQEx tb8lzPY0rRNNY0mbwRNYXf/W38QwRxZ3D5oUvC0N/0w4QQutHp9rU1gZioa3fOM/rHRt4HcprXi+nt 0aVMHLjt3F6niAccQBbHURhgEcp8WwIJfTi/bJ+gg4LPSpeEvVE4tQYywNI4FkILs77ejtC8wiZxw7 ocghlmQFrIyZuFFHQ08aqyrz9X6fmTVjexgK98h9oM/QBofgPJlUMtugzgwK/6v8LzRJ1jiml8GBZy OhAwKq8Jq0qW2GJdSkuk64fcF8WOlLGLlP1HErn6FXZfEY4MdumebnHUJDxpcnKVjQhgEciCCqBCSb /vsaJRVs0/wXUdwiP2kC/s1S+odfxQ0hXzojzVg0H0lmI3gP3DxmkZLDHg7Q==
X-Developer-Key: i=keescook@chromium.org; a=openpgp; fpr=A5C3F68F229DD60F723E6E138972F4DFDC6DC026
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=LYUO69wY;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::52e
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
field bounds checking for memcpy(), memmove(), and memset(), avoid
intentionally writing across neighboring fields.

Use struct_group() in struct hfa384x_tx_frame around members
frame_control, duration_id, address[1-4], and sequence_control, so they
can be referenced together. This will allow memcpy() and sizeof() to
more easily reason about sizes, improve readability, and avoid future
warnings about writing beyond the end of frame_control.

"pahole" shows no size nor member offset changes to struct
hfa384x_tx_frame. "objdump -d" shows no meaningful object code changes
(i.e. only source line number induced differences.)

Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Rustam Kovhaev <rkovhaev@gmail.com>
Cc: syzbot+22794221ab96b0bab53a@syzkaller.appspotmail.com
Cc: Allen Pais <apais@linux.microsoft.com>
Cc: Romain Perier <romain.perier@gmail.com>
Cc: linux-staging@lists.linux.dev
Signed-off-by: Kees Cook <keescook@chromium.org>
Acked-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Link: https://lore.kernel.org/lkml/YQDvC4CghCazix4w@kroah.com
---
 drivers/staging/wlan-ng/hfa384x.h     | 16 +++++++++-------
 drivers/staging/wlan-ng/hfa384x_usb.c |  4 +++-
 2 files changed, 12 insertions(+), 8 deletions(-)

diff --git a/drivers/staging/wlan-ng/hfa384x.h b/drivers/staging/wlan-ng/hfa384x.h
index 88e894dd3568..87eb87e3beab 100644
--- a/drivers/staging/wlan-ng/hfa384x.h
+++ b/drivers/staging/wlan-ng/hfa384x.h
@@ -476,13 +476,15 @@ struct hfa384x_tx_frame {
 
 	/*-- 802.11 Header Information --*/
 
-	u16 frame_control;
-	u16 duration_id;
-	u8 address1[6];
-	u8 address2[6];
-	u8 address3[6];
-	u16 sequence_control;
-	u8 address4[6];
+	struct_group(p80211,
+		u16 frame_control;
+		u16 duration_id;
+		u8 address1[6];
+		u8 address2[6];
+		u8 address3[6];
+		u16 sequence_control;
+		u8 address4[6];
+	);
 	__le16 data_len;		/* little endian format */
 
 	/*-- 802.3 Header Information --*/
diff --git a/drivers/staging/wlan-ng/hfa384x_usb.c b/drivers/staging/wlan-ng/hfa384x_usb.c
index f2a0e16b0318..38aaae7a2d69 100644
--- a/drivers/staging/wlan-ng/hfa384x_usb.c
+++ b/drivers/staging/wlan-ng/hfa384x_usb.c
@@ -2516,7 +2516,9 @@ int hfa384x_drvr_txframe(struct hfa384x *hw, struct sk_buff *skb,
 	cpu_to_le16s(&hw->txbuff.txfrm.desc.tx_control);
 
 	/* copy the header over to the txdesc */
-	memcpy(&hw->txbuff.txfrm.desc.frame_control, p80211_hdr,
+	BUILD_BUG_ON(sizeof(hw->txbuff.txfrm.desc.p80211) !=
+		     sizeof(union p80211_hdr));
+	memcpy(&hw->txbuff.txfrm.desc.p80211, p80211_hdr,
 	       sizeof(union p80211_hdr));
 
 	/* if we're using host WEP, increase size by IV+ICV */
-- 
2.30.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210818060533.3569517-20-keescook%40chromium.org.
