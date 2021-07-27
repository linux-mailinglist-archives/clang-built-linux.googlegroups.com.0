Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBH7HQGEAMGQEYSLUDIY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63a.google.com (mail-pl1-x63a.google.com [IPv6:2607:f8b0:4864:20::63a])
	by mail.lfdr.de (Postfix) with ESMTPS id 215E63D7FAF
	for <lists+clang-built-linux@lfdr.de>; Tue, 27 Jul 2021 22:59:13 +0200 (CEST)
Received: by mail-pl1-x63a.google.com with SMTP id f9-20020a1709028609b0290128bcba6be7sf13095733plo.18
        for <lists+clang-built-linux@lfdr.de>; Tue, 27 Jul 2021 13:59:13 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1627419552; cv=pass;
        d=google.com; s=arc-20160816;
        b=nwdTu9ajC1wlBa8mER3EGfME9QUrVXkqyhLOO5aaoQH+pkrles+nvnnV4krVSKQeBF
         NCXp8PNP4XBHYY4tQSkOm4R+eRUtp0D8EUpadoJ71Zo6mN6zVO3CPzbFkD5hblN+Ccrv
         /KnS59liN8jBw9HzsxcLfYunPERFGupmxJQb9FVHykUd4kF/RDHzykHq6FxdvRL91FsU
         rcHXv2xjn9g3bC9Lgs8KxywSUZxmaySFWWALdeAV3KU9KwUnCUSBcTbR0DDMyuydtXhE
         Vkwd8AyNtEadwNHGrkB1W3BeklOP1yb+YNkKEWG44NNWTJ82oqdy4pz+LWNn+ie+TawQ
         IN1g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=pCz03UxsDRTpLvsyntiFTVzGjeUZ0r5bhYurxrC9UR0=;
        b=ao5GmyXHCkVFcoogffCpptMTMk8GIDZuTUWMuKNpuu7f9P0xMuDOLO8mPFxiJP2iPO
         5M8+JlQzkH9xaV+Cu0LTuVMOEeQRGZQY2mnQS1arp5UJPJUQtoT0lxxqzhyBbAyysdGr
         SMWgCEzpchk96Fmn/duLxZkaTw2zqo4VHlXd5eITRC8W7pSrQ9Lk1kvX+Gc3Kqq1LClL
         rieUJGzSJBUU2oAjb6PEOH1Vk2McBPDVb3B8AOvW8STYs/TTNlB2PMXRiUt96CW3UCFA
         7aR1w9Pt7NZGd82FcAzxgtMRAS4YV4bb1zXHScOBYwgVUkh1zwqi7KBzSzuZZmqdnIXQ
         WD1Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=Ky1aXIwN;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1032 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=pCz03UxsDRTpLvsyntiFTVzGjeUZ0r5bhYurxrC9UR0=;
        b=IdbAaGxiAAJCx62fpb8jvY5A6VFHb4cQPtY6/MjnQVn+IPTiaj9VUStHijKwpDxbo0
         BW/ytnW+OwYBpxDyS9z76Tgd5hYmE1837NX5vkF93f2DsRUZRJEUe/RkhI0J+3pqESCp
         nAKON4cYzm+N3jMvFOvjDXezZJ9DeAjyD90crFF/MMIqvCo5oDFITrVHtC+Rx7CkFI7H
         jYujiUWCeXStV2XH8pQSxOM2hQcxBeEpNELeeo/d88h6j8KLU9h3jI8d+MJxQ4c1j1XU
         uQijJw20xXiI952pIzSI5gvIHue9F8CYVQhWSwJVDh3XBw8LfZmXCa2vdcPIGUI53R/k
         85wQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=pCz03UxsDRTpLvsyntiFTVzGjeUZ0r5bhYurxrC9UR0=;
        b=LICR5w7lyS+mJXAbA2DtdLBNowIUXCfSQuPPaZVhaTafPa6NOJBf7Daf4fppKh0OKy
         jluGzQcHzN3q09QHUT+Zw5pKByRvqH+uzun7u1SpqdbbajF49+wMR5jYqdaX/MKJIVA4
         QPN2bbf3Rw7jqOk86gCliY0FEoOCXf2EQw5t2qndzVOqinWlzTtaJp7A1hM9BuBfgQwW
         0Tx+i/BGt7Kza2mb0sDyA5U8adSly09773ilM7x/ltapCDWFedeXvmNCtuBECwRTS6yA
         f26fG+Ei5ZSMxIcuo9/dSE+lsNmHkClqW7uZUAlbrYLQxPomvtQe/SfhYZ4a5B3xeGiU
         O3KA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533H4492P8EKypf2/tsI/G0duR2PCqGbgcLc3+sPi2c/g4/Z0EVy
	StyOvC5OU5hndvLvcMmTR5M=
X-Google-Smtp-Source: ABdhPJyisTQlSer3kR3xPs8uJvkk00SwlX76QSHHCGAEL0m/xmn4Ds+RKCAXI+G/2ScaMpCG0N18MA==
X-Received: by 2002:a63:cd4b:: with SMTP id a11mr25568391pgj.273.1627419551855;
        Tue, 27 Jul 2021 13:59:11 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6a00:139e:: with SMTP id t30ls9934464pfg.6.gmail; Tue,
 27 Jul 2021 13:59:11 -0700 (PDT)
X-Received: by 2002:a62:ee11:0:b029:32f:955e:aec with SMTP id e17-20020a62ee110000b029032f955e0aecmr24796506pfi.31.1627419551272;
        Tue, 27 Jul 2021 13:59:11 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1627419551; cv=none;
        d=google.com; s=arc-20160816;
        b=Kw59MfQWlbCHiSGIYQ+8zGzC36PMcEfAwIwd4sd3jLTsZ4yS9waa+lY6df8jhFcMxC
         1IwjX+4WAtYllRe6uOD9mG8Xj5aaMf0q9hsah0A+BF5el/4Cf1NtrzV1qFZjX8CXOP8F
         3L76TxsPc1vyAA3Ur1qjWRGn4akL65ZPUeDZzrTb7yB+ElkaN+9RKSGgAQuun5hhgFA/
         andwXTcWxXLD9OboI62ZO12tAOsolxZoCD4jh+/p38JVYrVzO3oe6BQ0n5Ffp+pfF2nu
         UhntYCDr2BbJ64F/9repw1f7OPdjTEa+Rpo5KX521djjNnIccXK16WiuFPqFDcKdRku1
         7aNw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=QDdnY+YZl5Kj4vlDFYwtmRw0qFCH7bvuzf5iZ5S7r+8=;
        b=z820AUeGPIeIf0681UKccvWsBlgNFR1jJi2rUqVhnWJX1MkfqT6vlw7Z8V4F2f411T
         3quWCcC1AubSOZFX+9298SY2T1yQdPERU9qYglvzSQ9QXRl3snSVke3+jgeg7q5GdFm6
         i9TdZAWnsBl3uG+YcHgw9uF1pUf8xjNRX3W9Pqdz27R7fsoj7J4r0doPdDRLhPdU5tEE
         B7t64TJZQDsPMecRkTEgdbmBjBUAjZNHSMTv+y3aybPJlz2cp5S49135O55IOEjjYWNy
         lonL+KDTh0jNbnVFbatpTUaB8c7Owzx5NsKQtvZ9u3DYpTp113OV4MsXmQcWqbYa+Ie2
         NIHQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=Ky1aXIwN;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1032 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pj1-x1032.google.com (mail-pj1-x1032.google.com. [2607:f8b0:4864:20::1032])
        by gmr-mx.google.com with ESMTPS id h20si77458pgm.4.2021.07.27.13.59.11
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 27 Jul 2021 13:59:11 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1032 as permitted sender) client-ip=2607:f8b0:4864:20::1032;
Received: by mail-pj1-x1032.google.com with SMTP id j1so1781138pjv.3
        for <clang-built-linux@googlegroups.com>; Tue, 27 Jul 2021 13:59:11 -0700 (PDT)
X-Received: by 2002:a17:90b:4016:: with SMTP id ie22mr20891551pjb.68.1627419551082;
        Tue, 27 Jul 2021 13:59:11 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id w23sm4741144pfc.60.2021.07.27.13.59.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 27 Jul 2021 13:59:08 -0700 (PDT)
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
Subject: [PATCH 12/64] mwl8k: Use struct_group() for memcpy() region
Date: Tue, 27 Jul 2021 13:58:03 -0700
Message-Id: <20210727205855.411487-13-keescook@chromium.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210727205855.411487-1-keescook@chromium.org>
References: <20210727205855.411487-1-keescook@chromium.org>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1790; h=from:subject; bh=oMSi3M1NOKgRYRJy6VWRMVEHsL86zQNiB3Lk1k+Xi3A=; b=owEBbQKS/ZANAwAKAYly9N/cbcAmAcsmYgBhAHOCT3IlQZfHOrT/8AVoJNmOyRzR+nRudQyIVPi9 N+VgYJGJAjMEAAEKAB0WIQSlw/aPIp3WD3I+bhOJcvTf3G3AJgUCYQBzggAKCRCJcvTf3G3AJvUtD/ 0VbZh1+apSqCt8UVVwcwz2SVJuqIVyUnd519aTLQ4I0CWMg8ghFTFnOrvuarCaRIX9zFlryZ3tW+jX TMbwvZJ2ASxTPhSxhEfUL3QjPZrscW1XTamKCXRYrFlctVtUxvJxBanAbD684+pmZo0R/nRcYbYP4L IaH2t5hZmvXcLZRQNyAWwGbdKj5zwyQ23qv/nPVNIDcAqdEm3B1gePnEkp/AsshevL2Rz+m/fA/waN DoEtXkNfhfzWoBpKH83gEDokctcvbaP61CQNZaHqbrHd42zmm2Oc/L/stpbIFWa1W2nh9aTJnw2eN4 2nGcQV7d5s0ULa0BhMCoAn0It3bg3KRnOhK037W8DLo8xFDdcqrxT2qzTKD2J5OaeXZHiNPwPbqUFX h/rZBBfQpN75s58FT+3GvmfMf0Y3Hv3frdpG1OXwpfoLVNK+i9yfiGVN69Ddw4Vdy4v/ae2+T+RY3I BVx0+IUN5Kq5oxAJN8czvd3TMtxtYody0FwrPyZ7k/WqBEg6tfrvE6hNlpKZnEjPkmVUZchWsXtBld c8xMtYaeMn/Q+ACu7/A1Y37jNDWcrPB3t/Vt7rmllooif7lGJWBfAoYlw+trqmygT+AGb1sFup/d90 nRs6XYpT6hUE8tDXo21HFYgvJz1bZdvxgX5sz4WXpYQlhqmDB5NJxHOXSm8A==
X-Developer-Key: i=keescook@chromium.org; a=openpgp; fpr=A5C3F68F229DD60F723E6E138972F4DFDC6DC026
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=Ky1aXIwN;       spf=pass
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
field bounds checking for memcpy(), memmove(), and memset(), avoid
intentionally writing across neighboring fields.

Use struct_group() in struct mwl8k_cmd_set_key around members
key_material, tkip_tx_mic_key, and tkip_rx_mic_key so they can be
referenced together. This will allow memcpy() and sizeof() to more easily
reason about sizes, improve readability, and avoid future warnings about
writing beyond the end of key_material.

"pahole" shows no size nor member offset changes to struct
mwl8k_cmd_set_key. "objdump -d" shows no object code changes.

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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210727205855.411487-13-keescook%40chromium.org.
