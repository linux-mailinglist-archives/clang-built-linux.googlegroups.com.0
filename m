Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBS7PQGEAMGQE2GJA4VY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103d.google.com (mail-pj1-x103d.google.com [IPv6:2607:f8b0:4864:20::103d])
	by mail.lfdr.de (Postfix) with ESMTPS id 8287A3D8125
	for <lists+clang-built-linux@lfdr.de>; Tue, 27 Jul 2021 23:17:00 +0200 (CEST)
Received: by mail-pj1-x103d.google.com with SMTP id mu13-20020a17090b388db02901769cf3d01asf650693pjb.7
        for <lists+clang-built-linux@lfdr.de>; Tue, 27 Jul 2021 14:17:00 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1627420619; cv=pass;
        d=google.com; s=arc-20160816;
        b=BCae+qNK0/0eP5AHDVi/JK7gqv2PO8F90mrJCWCMrHqKIJ6gRQEDYXFDbA6z2sGK6W
         uMZ9yEzCWjLU8BUSn5KtFNuT+fqIzOZZRyylCHchCLBMHSfaAU3cfqpKsy2nJXcPX4x6
         74pDHFd5JoV4eYm6IEvdcVUultjarWej1cbqEniZEX0x8KQLIh4ilh3YQeal2GHw29Sa
         VZd35KWYaor/0cynfrOV6K/LBA4hNv78RaNhQqyXq5uTKDSZKYKmDjg9iLHMPfDEP9Y7
         g9vCbto3GL20AxAhCQvSt3VFHx76oKq/+Dwa15GTrsG9mu+FOZ07WSFVpMR43P0SadHP
         Evpw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=Bvq12+Ss60NdAcQRHZuXD4CIi6swjLITQJEYB3CIeKA=;
        b=ALz3H9wtqSfWkYBelCopiTdt8C9GENAM/6LcHx4ilNRycpt7ndUG84AArUbX0KNPli
         I9x4T0+saGxMzo3pA8Rqbzm/7kjmVrO9itg0O8//DPPHScs+Dk+c3Z3YugLohwwLrzx+
         48o9DuA4pUWozPwy2UgyFoWYnmheZiUiLXrxnRHoxZs75y9/4D1aVFaab7oCy7m+PuR7
         UMAAVPRkI3KYyrbJ8QRD0X79JixnAq5tHoPpkesqGDkiQHewiCPnAxO1Ktw4hkV1c+x9
         IWUsbgvokN60C2782BcI2iBtYTOhcEgFVhTLNeWD0lLBQOWecO4KiwB7XT2nFgZAOd+w
         FMVQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=cI7pDAEV;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::632 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Bvq12+Ss60NdAcQRHZuXD4CIi6swjLITQJEYB3CIeKA=;
        b=GfmigkT98O1wtiOVQlLnpUvxUL1j1kY/QkDd5MUCz0SZsQro0ZspqcnUDrppFfkEXi
         yZ2g0ApezvrcaPH0b/aRoJqzq7MfISisLUFo7djfrh/K3RB+1T+Dq6LRNTywbiNRwvIP
         D81i5p/QvyBgbh5Z/Y3wDO42XpOCGFG6/f9szfNoHwGAjvFZ7ZZYxaJTZBR5KWasyv9+
         XaB1BKLB79z4K2pKEtkSai/FmjKWFOt8qaJcIimywfrHbtefu/VW1WYo2zujVGbgJr8z
         pSLF4jwMfdXTsMz/oafg4xPvOHqJTHv93+yFoDKCw+bQ/nXqtKTdrbh259tVbOhUqnEr
         r22Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Bvq12+Ss60NdAcQRHZuXD4CIi6swjLITQJEYB3CIeKA=;
        b=s2ViHKkkHlhWl412UsNDcSIKIwF+56APWu9aFe/f2KdjgwA+E9aU9A6WkOb0DkLJC6
         vUnjKz0zGLcYivN8d84tJ4L/ZWShkrOPxxkMqyyaRNdMRcR44fNlacT8oGAzBCwMYpdA
         6/ET/iUv9233LD24tu+7z+9bbbpmInqWcpSF4h+TMOvWkmGz4SkMU/PE/rqBuC8y+v4O
         LvIYjq4XRmBWAPVVnhqnmmhrZt91jS0UGvM5KmiWu8fbOCUlXbJOmXA8vLaPatNHsXKX
         ptcpC1vkP6v1mM0o6cbCNHuq2gHy2dVncN3n0IYnpLhKIuSWWdvFaJ9BtiRymUAUURkh
         ge7Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530Q8ZCNp56o4II53Th70RXB8PV6aUHtqCUXck88bmn9cOXlgQEF
	h1+gYOpfQj5LR5Kijff79TY=
X-Google-Smtp-Source: ABdhPJyE+Pnuejs7gNWycbxkwabgHSAt/XQRJVnX4cjVx890UetSrlOpTkCp1/TeF584zMc9epG6Jw==
X-Received: by 2002:a17:90a:b387:: with SMTP id e7mr4521323pjr.77.1627420619228;
        Tue, 27 Jul 2021 14:16:59 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:bb8f:: with SMTP id m15ls9747pls.3.gmail; Tue, 27
 Jul 2021 14:16:58 -0700 (PDT)
X-Received: by 2002:a17:90b:4f84:: with SMTP id qe4mr21432204pjb.236.1627420618626;
        Tue, 27 Jul 2021 14:16:58 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1627420618; cv=none;
        d=google.com; s=arc-20160816;
        b=q/n96kKnrbiVhS/soXcL0e8pbonUSESdPG4R4296wih4juzOjkTTi569910n7xMrMp
         JZQkJriNjsdvwnwUCYE81AOvcTnAyb5BVyDr+/a6FU6iTD6OSyBTvEY0TU8A8NhVTYri
         7zWl6W/wr1GCv8cMKWONfNknrSv09k55EIcnpr5yl2biaZqY/3v/gRp5E7UpL5eiBwv/
         weDPdx3LJCKH0ilA79xXsOtzWnvnZT7BKFdcnwck1bF+VIHhY0yS+dBiGjujRpASfcoi
         R4g9ylw6T2WFHOe1FvRlupfzkLILspBNNoUqLMXgZwMZCOlhA4jl2R7VmBk8Ptu+Lqxj
         iaNQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=vvNgpOkYohlzmozRH90jT3va3z9rMWChvsz40h8+RkY=;
        b=bMY0gllBciaJgpRhAKH4IZAbW7X0Ko1VOCsu9CH4AxJmJQ0eQOH4FxwMTafG253WoF
         UBdznQwK93YovcsC+JsJXsVf2iYs8LFPEd1ZUe+d87UtLQmlyzAxTfkym4JuW1OfHo8K
         LVTve/SuCrN58V3s54kv7OnzM3/Jp6JoeKAjX4Cx25XVkMRNkzS42bjTuAzW1gPt9Mqw
         Pp2HTShZZXkfqqK+PT6yiRIFzZp3S5Pw06767vwKRIppd+BonoX6wP5ifzzAaaGiwSLI
         j1kBYr/TAgS54iWu5uVNJG6xUhYch2ZrQtdD5ZaJpR2eu+XJfWnUZYezqXfsB6vqjVt+
         OE+A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=cI7pDAEV;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::632 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pl1-x632.google.com (mail-pl1-x632.google.com. [2607:f8b0:4864:20::632])
        by gmr-mx.google.com with ESMTPS id v7si279937pfu.0.2021.07.27.14.16.58
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 27 Jul 2021 14:16:58 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::632 as permitted sender) client-ip=2607:f8b0:4864:20::632;
Received: by mail-pl1-x632.google.com with SMTP id d1so79111pll.1
        for <clang-built-linux@googlegroups.com>; Tue, 27 Jul 2021 14:16:58 -0700 (PDT)
X-Received: by 2002:a17:90a:5201:: with SMTP id v1mr23545012pjh.46.1627420618454;
        Tue, 27 Jul 2021 14:16:58 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id 19sm5431637pgg.36.2021.07.27.14.16.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 27 Jul 2021 14:16:55 -0700 (PDT)
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
Subject: [PATCH 24/64] staging: wlan-ng: Use struct_group() for memcpy() region
Date: Tue, 27 Jul 2021 13:58:15 -0700
Message-Id: <20210727205855.411487-25-keescook@chromium.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210727205855.411487-1-keescook@chromium.org>
References: <20210727205855.411487-1-keescook@chromium.org>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=2375; h=from:subject; bh=c/SxbSrw72JMwWGBAhjNbuucRJa6d830VHNx2pfQMmY=; b=owEBbQKS/ZANAwAKAYly9N/cbcAmAcsmYgBhAHOF2QDCtL/erQWj7ox+a3ncXLGvlzCwDIvWXZkH qHjzBFyJAjMEAAEKAB0WIQSlw/aPIp3WD3I+bhOJcvTf3G3AJgUCYQBzhQAKCRCJcvTf3G3AJtV+D/ 0fO+YtYcaNoJFtJLfaoehtt1+wVJemFnhzXbO8zron27IVuMZAcUQZRTvfedVY+1vq9YmKpR1jLhu6 TonAYm/QSoolsRdIvr0usi+NR+eRkXR1ZnyvV5rnOc9YaBWbZRrQq3ZcX6YCjqPkK8p8WRxt9Bj0Sg q5zK3/CNl56vrOTzTCCoxMsajE9vAxySqiSXHSeiMfp2xd3+QR3kRFCFU0ZSA0xfMcnR2JvGQBggJS RkdJjwLCK+kENWJtvHtlX4elSv2P/OtT8hnnPRvud1yeMq+QpTzPeNdW7PxhWE2RwZNA2NugGVRSlX 3jR4hhDV+6JtngiZjWbObIbIUZuegWEMH0zZW7dNgjbeuJq60bTRCUm4kANVmgMnCpvv/gmJ/eOGF+ Cy3TIZB46rpL4aRD/GZgx7Z3LlwLOdMudLK7tK9BsLfb7ORVmmEeOisNmyspYO6/AqlMjaI1/ZZlV3 812R76a18N3vOrFFTOfbqpkITezkVwlqkVE+0wU0/No7R2jwKaEwkopqHCE2H8k4ufJ2CY+2fLArN9 RN/NT2xb7COyOrwRuX1S423r0L/eefO2fysMApU+RwzbiD/oDAlU7jx19jPFBWMojjzIhrQhJlkdja x1kg9JKYzfTYl3DgElyjMkkBql860vUUs21cPgyOy5TcZ8V0tBlTLOvGWnpg==
X-Developer-Key: i=keescook@chromium.org; a=openpgp; fpr=A5C3F68F229DD60F723E6E138972F4DFDC6DC026
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=cI7pDAEV;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::632
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

Signed-off-by: Kees Cook <keescook@chromium.org>
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210727205855.411487-25-keescook%40chromium.org.
