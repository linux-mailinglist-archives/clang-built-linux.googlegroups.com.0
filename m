Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBROG6KEAMGQE6JLVXCQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc3e.google.com (mail-oo1-xc3e.google.com [IPv6:2607:f8b0:4864:20::c3e])
	by mail.lfdr.de (Postfix) with ESMTPS id 194913EFA99
	for <lists+clang-built-linux@lfdr.de>; Wed, 18 Aug 2021 08:05:59 +0200 (CEST)
Received: by mail-oo1-xc3e.google.com with SMTP id 64-20020a4a0d430000b02902446eb55473sf472400oob.20
        for <lists+clang-built-linux@lfdr.de>; Tue, 17 Aug 2021 23:05:59 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629266758; cv=pass;
        d=google.com; s=arc-20160816;
        b=m4017zFjXAT+Z0hwFGAG1IIsOxiJdRHYyG+N6PI/4WzqzDZwib7M8tXA3rXmRIZzey
         PqnyCYnaSVDJEne2LxY++wjTfoioBHAqXUVNu0JxhFNV58jsiPTz35209DbTvEkeO4c7
         VP8PeBD3n8lU1vAVe0ou9EvbSpt3/ggZe46Ui14IYm22uUGc0C8AUltMbzp5cBwSw1pS
         7B7CY0SWH0s5vZy2K/95Rf0SRhtV/terta2U1u3XGXJY7I42wLoxLBRHV0dkO5qyXErg
         6W5FKHqDZudyWeYl+cWkpC1SsfMxFiusaQxZYR1DLFHJRbif8qcVvw4MJNfnvECJDRqj
         7wRw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=mT07C8YHkMzNuOnZwm3BipHCAFb3311DajjFyDmZ9TQ=;
        b=exEXqSK4Q9vZKSSiLquEesPClGK8uE708LqOFTEtdfw2xrUhD2OSQsdlePIP4qwdeV
         I9LBeXY7U3mYasQx0vu4tlEhJbQweoUUxvm5q2B8XGfdo9fBEJqVFcQQt9z5pKjXe4V4
         ksv7K+64xhAkVhTudtNbu8fU8ufreXT0O5KflWHtKUuzqPiQESS1JhtQCxPdm5GH9oDh
         UVlvB940fyOzjE5BvAbb9y2aSINGWJckOrNP7r726A8JvVc858AyMayFLWM9UKEtioIa
         WsGITUcPUCgztkZzudgdzDXLjj4JI1fDooWh7UX23fhplXlG9Dkt5k72bqA523rk+xb5
         oDjQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b="TEf6/TXC";
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::62d as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=mT07C8YHkMzNuOnZwm3BipHCAFb3311DajjFyDmZ9TQ=;
        b=bk33jRMZHLHesAHq8J5MuMUHAuw2WGr3tCxETlsDeG9rF0Man0+kFVYg35EhBrA4Nv
         K4lzd3VJbEJMP5zH22cGncrfwuO48L4L8folpEoWoXvU4qEehOCdUw4qQ4xvvLqCu8fr
         hbCf0ioG3wt1K7OisP2akIlh67dLHgUB0I3l0WPptl3JzTHqrvOECGpTwHwSfoPvAWwZ
         6Nt3vQg0cB+he378Ml/tmbfrdd3pKQc5FWv78rJdKrn7cWPMgJW1m3dIcX9m9Hh7X+1z
         bWRwrKvPC4UPaD/b0Iat+gxnk1/ZehuJAcxZJtuTkjUT+j2HKiFUftw/3LLwgPp3D1wb
         x95w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=mT07C8YHkMzNuOnZwm3BipHCAFb3311DajjFyDmZ9TQ=;
        b=AzQdJxhj6LrOnmzutPDTK/UcAcMNeL4yyZ7lLvC+uROz8cY66L3LZHBs2mvdG8qHuX
         H/VtpJHrux+4jfQwP4lN57NIaa2OIa+Np5zySClRNQoHwhUFQtAI9Lyg0sT7xSGittdr
         qIoH+T18uAVNls/hj9qhl+Jw/P8DaPuaauPJ5DQAJ0loUadW6Vc+B35vYs+TrDV8YjYE
         BPuG0Bi/LFuU0SP1qYc+PzVLLs7R2Nks4UPWA5dAel2Wbb5+RbOZPdfa3S+7r6P99ZWf
         A+qDyBSojKo7NcQAVtEEcH+nV2hoxJq5I5DUUSW3htTqO9GBa9otXa85S7iolDjHb7rq
         2SiA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5322S3YskPbQlj1DcZU3qhToHfK6Z+uSZmRdAYqAf4KzGAXK6eOY
	EAFGA2snFfj9jvgNC1qr2Pw=
X-Google-Smtp-Source: ABdhPJz80ZVrRLlOG0VY7BfXfDYVm2z49AWLLgkZ2wrQO5nk1GO87czoNMIalonOGNtGUIt94goqYA==
X-Received: by 2002:aca:3788:: with SMTP id e130mr5570989oia.36.1629266757913;
        Tue, 17 Aug 2021 23:05:57 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6830:188:: with SMTP id q8ls289978ota.7.gmail; Tue, 17
 Aug 2021 23:05:57 -0700 (PDT)
X-Received: by 2002:a9d:1d04:: with SMTP id m4mr5682295otm.346.1629266757521;
        Tue, 17 Aug 2021 23:05:57 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629266757; cv=none;
        d=google.com; s=arc-20160816;
        b=FGHo05tZI+KKehblWH/bsJw/JXO8fpTWZZg9lg27PU0mRz0Vu4Dixz1bhr7llx3vrv
         QZUY8uUDVJNheIOPow+jFywnggUWrnyKa8yPM+xk19Q14xr8Rulk1qAx/yPTBhC+p0iF
         iEijOcLRxWhFMaMymuo4Mvva3yVzlSg4YB2vkeII0pdTu+rpzzYOuN1LdfCtaMXWzM+b
         SHVWpNL80Wto0EdQ6ZsCDsMHFanogs7/BMHrc6bYctZAZ08lcN7NNY5WRgbThchzLQ0a
         49dsyk3uOxY/7Nwcj14/muGijo4fRRrRXP1ie1ks7Bf28H4WehIYT7AzK2NHwWz3+erg
         0Leg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=Xs7dVfyCL9iWYPvsRCT3aHsdLwLjC6pcEwrwKfCUWFg=;
        b=TXb5cZRUEP3noJZC4BfYtfFKmjUn/ynNnmkBxVvx+7Jq+DgONh64X00tilDsM/Eone
         w1Fm+fdhYkYZbftkkU50F/1R2572HhK119uXG4GrlIEc9+9DIqXUZLjv96XSPPdwDYmA
         yBvtScFt3CZagxJZxD5VCo3KIpDetCX6smF6RcI0jOreGdoEVW7o7LMprYiMxaIVPmLM
         ofDhMhDFTxfv7/nf4k2rVkivYj8rMidfwew49GU8ezAEheAZFpZPCeaFA0jEf8yVJRCQ
         ctEwphRIsRpS36CCVnJwmPEt9CNBkJmYJq4cDw/tMg04fFgZu7cK1XgPPEo/ZjYe78Wl
         7T7w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b="TEf6/TXC";
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::62d as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pl1-x62d.google.com (mail-pl1-x62d.google.com. [2607:f8b0:4864:20::62d])
        by gmr-mx.google.com with ESMTPS id s20si79467ois.4.2021.08.17.23.05.57
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 17 Aug 2021 23:05:57 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::62d as permitted sender) client-ip=2607:f8b0:4864:20::62d;
Received: by mail-pl1-x62d.google.com with SMTP id e19so1111248pla.10
        for <clang-built-linux@googlegroups.com>; Tue, 17 Aug 2021 23:05:57 -0700 (PDT)
X-Received: by 2002:a17:90a:b105:: with SMTP id z5mr7594033pjq.64.1629266756958;
        Tue, 17 Aug 2021 23:05:56 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id p3sm4750151pfw.152.2021.08.17.23.05.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Aug 2021 23:05:53 -0700 (PDT)
From: Kees Cook <keescook@chromium.org>
To: linux-kernel@vger.kernel.org
Cc: Kees Cook <keescook@chromium.org>,
	Lennert Buytenhek <buytenh@wantstofly.org>,
	Kalle Valo <kvalo@codeaurora.org>,
	"David S. Miller" <davem@davemloft.net>,
	Jakub Kicinski <kuba@kernel.org>,
	wengjianfeng <wengjianfeng@yulong.com>,
	Lv Yunlong <lyl2019@mail.ustc.edu.cn>,
	Arnd Bergmann <arnd@arndb.de>,
	Christophe JAILLET <christophe.jaillet@wanadoo.fr>,
	Allen Pais <allen.lkml@gmail.com>,
	linux-wireless@vger.kernel.org,
	netdev@vger.kernel.org,
	"Gustavo A. R. Silva" <gustavoars@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Andrew Morton <akpm@linux-foundation.org>,
	dri-devel@lists.freedesktop.org,
	linux-staging@lists.linux.dev,
	linux-block@vger.kernel.org,
	linux-kbuild@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Rasmus Villemoes <linux@rasmusvillemoes.dk>,
	linux-hardening@vger.kernel.org
Subject: [PATCH v2 09/63] mwl8k: Use struct_group() for memcpy() region
Date: Tue, 17 Aug 2021 23:04:39 -0700
Message-Id: <20210818060533.3569517-10-keescook@chromium.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210818060533.3569517-1-keescook@chromium.org>
References: <20210818060533.3569517-1-keescook@chromium.org>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=2241; h=from:subject; bh=L38tHT7L5gwWnZoNqjA8WBUp8uc/YzLDlgGZNE5EF7Q=; b=owEBbQKS/ZANAwAKAYly9N/cbcAmAcsmYgBhHKMfQHi0c/KxdlPcXJ7NIKNf3opHAze8JHRqvZJ2 HTMb8o6JAjMEAAEKAB0WIQSlw/aPIp3WD3I+bhOJcvTf3G3AJgUCYRyjHwAKCRCJcvTf3G3AJsndEA CTyr1mrRcwMNsVqnkQNKyL2vXGiaBP+O8ZL2ZnJYif0LzQ9SgU1FelufoxGIaesSZHEE5SPnP0Tfsl 9KJcO93AOrsZEpzIQ8drNeTOQ3lBvwG90XmnGMgbxprrjE8LUpiZhRSW7YHRT+D5AU2QRUIx8NWfMb abbVbTWbLt5ToBy6dxfb2m/nwWj7/j+KLjUYb1o6S/Gdh3F7rPGoJGPUhDvpfJ4ZEJwHG8eXPqBIpG 6H1pdmsRypyZ7TWzR8qZ303ptNMXJOIqxpJWH0oX46+I8DMTK3djo8qRqPMyrocaXaHH97cU/N6f16 CCjZgAxDqMhwoQxDT15ELj9UhtbUR98KcbTKZ65LXcHTIb3hN0+1HQUic3J6laKt3yYRNVzKQv1d94 GldIV0iCJHVvpmLzhBYcaR+nfF+YtoIRRyh4PmHtkSgG8lcV6ALD1vQy9CkCCEzg68xUrtLP0TMdv1 bWkRRkd8XAjLuvASWkcKkp9OxA+Nu75+d0Gdk0vAppy3FJjK3KNlSSfI+Y2g0bi0Uli2M6Pcacs1IJ 1sepRhmyuFQR4lAMVe+6LiCvvzcOSoJKRi+SJnYEddKohZIZQqqNSVghz/13aPpi9uItW/cfE4MMXK I7/jg0JFYnqdJT3/iN+fC7P2L4x21xvDExvG1DjqZQouQihAaONHkkxoYo0A==
X-Developer-Key: i=keescook@chromium.org; a=openpgp; fpr=A5C3F68F229DD60F723E6E138972F4DFDC6DC026
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b="TEf6/TXC";       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::62d
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

Use struct_group() in struct mwl8k_cmd_set_key around members
key_material, tkip_tx_mic_key, and tkip_rx_mic_key so they can be
referenced together. This will allow memcpy() and sizeof() to more easily
reason about sizes, improve readability, and avoid future warnings about
writing beyond the end of key_material.

"pahole" shows no size nor member offset changes to struct
mwl8k_cmd_set_key. "objdump -d" shows no object code changes.

Cc: Lennert Buytenhek <buytenh@wantstofly.org>
Cc: Kalle Valo <kvalo@codeaurora.org>
Cc: "David S. Miller" <davem@davemloft.net>
Cc: Jakub Kicinski <kuba@kernel.org>
Cc: wengjianfeng <wengjianfeng@yulong.com>
Cc: Lv Yunlong <lyl2019@mail.ustc.edu.cn>
Cc: Arnd Bergmann <arnd@arndb.de>
Cc: Christophe JAILLET <christophe.jaillet@wanadoo.fr>
Cc: Allen Pais <allen.lkml@gmail.com>
Cc: linux-wireless@vger.kernel.org
Cc: netdev@vger.kernel.org
Signed-off-by: Kees Cook <keescook@chromium.org>
---
 drivers/net/wireless/marvell/mwl8k.c | 10 ++++++----
 1 file changed, 6 insertions(+), 4 deletions(-)

diff --git a/drivers/net/wireless/marvell/mwl8k.c b/drivers/net/wireless/marvell/mwl8k.c
index 3bf6571f4149..a29277d5f9da 100644
--- a/drivers/net/wireless/marvell/mwl8k.c
+++ b/drivers/net/wireless/marvell/mwl8k.c
@@ -4225,9 +4225,11 @@ struct mwl8k_cmd_set_key {
 	__le32 key_info;
 	__le32 key_id;
 	__le16 key_len;
-	__u8 key_material[MAX_ENCR_KEY_LENGTH];
-	__u8 tkip_tx_mic_key[MIC_KEY_LENGTH];
-	__u8 tkip_rx_mic_key[MIC_KEY_LENGTH];
+	struct {
+			__u8 key_material[MAX_ENCR_KEY_LENGTH];
+			__u8 tkip_tx_mic_key[MIC_KEY_LENGTH];
+			__u8 tkip_rx_mic_key[MIC_KEY_LENGTH];
+	} tkip;
 	__le16 tkip_rsc_low;
 	__le32 tkip_rsc_high;
 	__le16 tkip_tsc_low;
@@ -4375,7 +4377,7 @@ static int mwl8k_cmd_encryption_set_key(struct ieee80211_hw *hw,
 		goto done;
 	}
 
-	memcpy(cmd->key_material, key->key, keymlen);
+	memcpy(&cmd->tkip, key->key, keymlen);
 	cmd->action = cpu_to_le32(action);
 
 	rc = mwl8k_post_pervif_cmd(hw, vif, &cmd->header);
-- 
2.30.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210818060533.3569517-10-keescook%40chromium.org.
