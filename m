Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBHHHQGEAMGQEBW3XZ3I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x838.google.com (mail-qt1-x838.google.com [IPv6:2607:f8b0:4864:20::838])
	by mail.lfdr.de (Postfix) with ESMTPS id E12D03D7FA8
	for <lists+clang-built-linux@lfdr.de>; Tue, 27 Jul 2021 22:59:09 +0200 (CEST)
Received: by mail-qt1-x838.google.com with SMTP id s14-20020ac8528e0000b029025f76cabdfcsf7080063qtn.15
        for <lists+clang-built-linux@lfdr.de>; Tue, 27 Jul 2021 13:59:09 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1627419549; cv=pass;
        d=google.com; s=arc-20160816;
        b=XCa5PMsMgMH5Zdd7SmZGK/tU7/FVlBTIIIWl96VG7qQDQou5G+MurS9dpzm3zBVETV
         A4uL/5pOHs6RGaPuENsBoF2COJ46asOtZwbDAGNFPWwdOnNow/wSyHvdQk7Nhh2cMCW7
         nPzYHGpCdZXlpmbOM5kOV03HGcUr+QpEG99zYAO3gU3f9mcTZoIXDA9tzZB8kZLDBAtV
         TIQ8mIJJsB9Ly92zDWx6mGJBn7xY7ahxbmNLCT4P+pLJLHD07luPyMnrzCx8k8LErY3v
         VU5WqvXPpcawNhoKH/JciifEZWo3MU86RkCLUGe4EvihoCDs71hrV4deiZwR7xnAobb9
         rcig==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=bgu6PtxH3zzivT5DuRjm7RMuHlnOz8AeEiHwMInkvRc=;
        b=gKlcQfvwGchHtlNFChzSNCq4epkMKwdHi55G5pLF6DU1kLitzE3cI7vwcpbFr8voYv
         BxLO7H9icu2Ko50h4A9Ic2KJBXNTkbEJcRTxxgJz22kn2BxQ3IKRs/CdFs+6NKprdP/5
         5DFPPHT4HCfCeArsmCTqreW2VY1WRW3wujvIKBxAWbRAUpDqIRG2M7Q4sA8IvA42xfxm
         rr+Jz5cZ/IcFC2YDxZ5pH9XsDWb/VnI4rdQL2/MC+Vdb6SfURoOE614qIuVxRN/gyOsM
         /aUdJfXiuYxkyf0Kz83YhofDy+ShIi4udpJyne9sNJiUkhhtDx3V3d4xFZ5X46a97Ejr
         BVbg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=KjyaAeWa;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::631 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=bgu6PtxH3zzivT5DuRjm7RMuHlnOz8AeEiHwMInkvRc=;
        b=gqHWF+eGmmzKIJCa4ASjKxiEukqi1DhIJil8ou8ckCDqjg8DhAzozpS+bWEqNXYPc+
         kpIKILTnpMnfSzUxW0QtcK/bxmNKQ+PMRyRmaZelmT0+HT36vGWHJizzpRCnL4Uu3C3k
         fChyMe9rvwxmt9kWjZX32Y1Teczn3xAqJYMqbC9vmMwKXR+BKgGUFyTj1Mpf0ZEGXg5e
         q2HPu/qsUALdVjH3DMyVippe8dZ7OQoJ2GZoQqPiOSD1ywviNjI0wXGFpecoYihbs0ao
         Puvjf+5LSSrtPRUGW805ZVY2XYgX/4pQ4+iDp2aUuwNgfk1fDL5YQlrZFRQLQweCntxd
         S/kg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=bgu6PtxH3zzivT5DuRjm7RMuHlnOz8AeEiHwMInkvRc=;
        b=O6m6vmfTbm5HFlT1rFXKydADXM5oSQcRS628kYw/n2jS6GfN30Qxh3lbVk0+NmUn+P
         1Qn5mu80LcA/ydQvo25R/wgaY2FLLRaJ9p8tS0dNeUjHL2kYtNhuAJZrW6Zaa5Nl8UXL
         40nxa8vGFsJVQ7T6ydY6fKOFxopIsW1Y1Ium+4cBSwqSdDy9sVKw1m5ibmNExzGUcoMA
         v8kKCjYr5RjWkiUiuK280IMc1wTudlcD2x6aXqt8tw71xB6Hp1b8egjrF3REAFGoQAVY
         l59LEEyfSdanyEMhtAVC0n+xLY1+CKa/yCdJKi99u6PCHNxEMriqrcbF+LjXO+ksX3yA
         fG+A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5308mdo11lwrADPZNgID+zDYyENAREosxj/hcfk5U5/dA7kilBMj
	DEp8agtdu4aLhiMTImhoJbA=
X-Google-Smtp-Source: ABdhPJyeS3i5eKZUdWHXLZwSJmhn/jtwGaZqzkFnv78Kc7SDSFMC29ygD9Vg5xmei3aiQiu8/rxzig==
X-Received: by 2002:a05:622a:142:: with SMTP id v2mr21184647qtw.264.1627419548933;
        Tue, 27 Jul 2021 13:59:08 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:72c5:: with SMTP id o5ls60225qtp.6.gmail; Tue, 27 Jul
 2021 13:59:08 -0700 (PDT)
X-Received: by 2002:ac8:7e89:: with SMTP id w9mr21689380qtj.8.1627419548552;
        Tue, 27 Jul 2021 13:59:08 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1627419548; cv=none;
        d=google.com; s=arc-20160816;
        b=Q4V05Y1JjulEdPmfBh0drvvgQT5/27e0o+ThA8KXdpRXfaXN8vhXlyXamvMFv3BG5t
         0UjVY84CgQtaW3kLJ7J/miq8IdVf0mtYO3E0KsHbbMRHyUqcU2BQk3VWUTHiX59mk7J4
         Z2Gk70xPcQp/vjJ4lkwAtQkwdDAaTg526j1MHTMT+UIL/gM46I2CR0WrUNajCzIZ+hCL
         J0W6SxjHnZ6XJrEY2onA1NQj7V3F6AR+Qbw6AyTMtjJF4IYKylhWzCDiIpt10krY/FWL
         wIKTRp8hNC5dT7nAFgaLwrhU2JxgiM6nXVjjEBhQNWmQYMlNMtpnsDb2cXNAZXCx86/4
         QSlA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=hAtUXOqdIbIKgIXF67i6edRxNnI31C05ADltnD47YVA=;
        b=GC0F/3vl7Vin70LH3K+pjuQO+p4EbDOmDrj/vu+LhM5ezPRxnBEXnWkBO6yuuULR+Q
         /fqFYaEzw9sFgqkF6wLPNJ7rtouyBEqKvF6jssuV7Se5DOEu20Tix1txTuBTUWLyV7Su
         nMXoR+rumpHic4PK+BogHYyqZkc2u6cUwLzLNCtbaw7khV17eDLMreBDyHY/3/jvTduo
         +PNQfz6cxiXliUZNL9u0CsB4ZoSpx+v2tTzDtdjdShyEGXxEwdyBTcKzXEMPrAjOGdWt
         g5oHPzxFD5zMgw4SdsP6c92enZMsrTaYV1MVhN5ZdjwTf9HOyH0c0qd3VC6ywntNSAYv
         3zeQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=KjyaAeWa;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::631 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pl1-x631.google.com (mail-pl1-x631.google.com. [2607:f8b0:4864:20::631])
        by gmr-mx.google.com with ESMTPS id x14si208246qkp.6.2021.07.27.13.59.08
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 27 Jul 2021 13:59:08 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::631 as permitted sender) client-ip=2607:f8b0:4864:20::631;
Received: by mail-pl1-x631.google.com with SMTP id e21so2306pla.5
        for <clang-built-linux@googlegroups.com>; Tue, 27 Jul 2021 13:59:08 -0700 (PDT)
X-Received: by 2002:a17:90b:3581:: with SMTP id mm1mr5913025pjb.98.1627419548265;
        Tue, 27 Jul 2021 13:59:08 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id a23sm4591110pff.43.2021.07.27.13.59.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 27 Jul 2021 13:59:05 -0700 (PDT)
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
Subject: [PATCH 10/64] lib80211: Use struct_group() for memcpy() region
Date: Tue, 27 Jul 2021 13:58:01 -0700
Message-Id: <20210727205855.411487-11-keescook@chromium.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210727205855.411487-1-keescook@chromium.org>
References: <20210727205855.411487-1-keescook@chromium.org>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=3842; h=from:subject; bh=LxMwWIiVXxCqRjC5BkCQhCAsNp5uK9myZ2a4Qy1ipzQ=; b=owEBbQKS/ZANAwAKAYly9N/cbcAmAcsmYgBhAHOCS1cmBCRtXI7M3opQcsNvUfw7QHdDVtTF33mg z+crDrWJAjMEAAEKAB0WIQSlw/aPIp3WD3I+bhOJcvTf3G3AJgUCYQBzggAKCRCJcvTf3G3AJn8DD/ 0T8GLHAQTW4lQjhfBYcVN4KkQX84OyCKR/kM+6CyPh6kkSz3omcb5syI1kQjZZfi9AQMmXGm27pqXs Pfzoata/9c4TApOgEv263SYMjRV3AKeFaFCN+M+Tbki7UCpUotJm9dnRg/YZOUqcEJ2jnQpyukE/h5 WjTdoxGr75vnhyjqxtCW3aafwRG0iXBck5QQofWTgn8C998AMoFRs6Tj6WLGt00Byih284TbE5zULP NoahBowuHSS4qSopyrtMF5eCvftM06BTwO2pAHfSDoGwCRneDXaPTK82hxwFjKQowdrTh4iICk8J6z Jh8Cy9g9/qrCwlclWJxjLE11hOD2f4KFeZpANKSuUdLgh2gQH0XSCj9eew20UORocfAqHkT/RzbRTF SJY0WkjJuqFW0W0eO4eaZyUsWJHuNBEL3OEenTA/cKGL5oil0bnf+evfjR6n7xJYUez++9bbUL8NyK mwpGoz6NjtaMd6T6SdpdeK3SjBHnQVR7cnuN787a4kSO0UGQ/qiXd510dvC35+ROc9KccdBJQ9O8UG j59WtvEuYIf3wGvX7Gxat7V2DjodwzEvDiy+CyhMLXhp2kdRYaftK+hlMfdh3hvdX9HK1wsHqnZZNW 2jIB6Lm8e5R4+zKVC9MC8ZxvWDlXi8uYXm03gL2lKA5E1/cQXWrwqyFnfZrw==
X-Developer-Key: i=keescook@chromium.org; a=openpgp; fpr=A5C3F68F229DD60F723E6E138972F4DFDC6DC026
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=KjyaAeWa;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::631
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

Use struct_group() around members addr1, addr2, and addr3 in struct
ieee80211_hdr so they can be referenced together. This will allow memcpy()
and sizeof() to more easily reason about sizes, improve readability,
and avoid future warnings about writing beyond the end of addr1.

"pahole" shows no size nor member offset changes to struct ieee80211_hdr.
"objdump -d" shows no meaningful object code changes (i.e. only source
line number induced differences and optimizations).

Signed-off-by: Kees Cook <keescook@chromium.org>
---
 drivers/staging/rtl8723bs/core/rtw_security.c | 5 +++--
 drivers/staging/rtl8723bs/core/rtw_xmit.c     | 5 +++--
 include/linux/ieee80211.h                     | 8 +++++---
 net/wireless/lib80211_crypt_ccmp.c            | 3 ++-
 4 files changed, 13 insertions(+), 8 deletions(-)

diff --git a/drivers/staging/rtl8723bs/core/rtw_security.c b/drivers/staging/rtl8723bs/core/rtw_security.c
index a99f439328f1..be7cf42855a1 100644
--- a/drivers/staging/rtl8723bs/core/rtw_security.c
+++ b/drivers/staging/rtl8723bs/core/rtw_security.c
@@ -1421,8 +1421,9 @@ u32 rtw_BIP_verify(struct adapter *padapter, u8 *precvframe)
 		ClearRetry(BIP_AAD);
 		ClearPwrMgt(BIP_AAD);
 		ClearMData(BIP_AAD);
-		/* conscruct AAD, copy address 1 to address 3 */
-		memcpy(BIP_AAD+2, pwlanhdr->addr1, 18);
+		/* conscruct AAD, copy address 1 through address 3 */
+		BUILD_BUG_ON(sizeof(pwlanhdr->addrs) != 3 * ETH_ALEN);
+		memcpy(BIP_AAD + 2, &pwlanhdr->addrs, 3 * ETH_ALEN);
 
 		if (omac1_aes_128(padapter->securitypriv.dot11wBIPKey[padapter->securitypriv.dot11wBIPKeyid].skey
 			, BIP_AAD, ori_len, mic))
diff --git a/drivers/staging/rtl8723bs/core/rtw_xmit.c b/drivers/staging/rtl8723bs/core/rtw_xmit.c
index 79e4d7df1ef5..cb47db784130 100644
--- a/drivers/staging/rtl8723bs/core/rtw_xmit.c
+++ b/drivers/staging/rtl8723bs/core/rtw_xmit.c
@@ -1198,8 +1198,9 @@ s32 rtw_mgmt_xmitframe_coalesce(struct adapter *padapter, struct sk_buff *pkt, s
 		ClearRetry(BIP_AAD);
 		ClearPwrMgt(BIP_AAD);
 		ClearMData(BIP_AAD);
-		/* conscruct AAD, copy address 1 to address 3 */
-		memcpy(BIP_AAD+2, pwlanhdr->addr1, 18);
+		/* conscruct AAD, copy address 1 through address 3 */
+		BUILD_BUG_ON(sizeof(pwlanhdr->addrs) != 3 * ETH_ALEN);
+		memcpy(BIP_AAD + 2, &pwlanhdr->addrs, 3 * ETH_ALEN);
 		/* copy management fram body */
 		memcpy(BIP_AAD+BIP_AAD_SIZE, MGMT_body, frame_body_len);
 		/* calculate mic */
diff --git a/include/linux/ieee80211.h b/include/linux/ieee80211.h
index a6730072d13a..d7932b520aaf 100644
--- a/include/linux/ieee80211.h
+++ b/include/linux/ieee80211.h
@@ -297,9 +297,11 @@ static inline u16 ieee80211_sn_sub(u16 sn1, u16 sn2)
 struct ieee80211_hdr {
 	__le16 frame_control;
 	__le16 duration_id;
-	u8 addr1[ETH_ALEN];
-	u8 addr2[ETH_ALEN];
-	u8 addr3[ETH_ALEN];
+	struct_group(addrs,
+		u8 addr1[ETH_ALEN];
+		u8 addr2[ETH_ALEN];
+		u8 addr3[ETH_ALEN];
+	);
 	__le16 seq_ctrl;
 	u8 addr4[ETH_ALEN];
 } __packed __aligned(2);
diff --git a/net/wireless/lib80211_crypt_ccmp.c b/net/wireless/lib80211_crypt_ccmp.c
index 6a5f08f7491e..21d7c39bb394 100644
--- a/net/wireless/lib80211_crypt_ccmp.c
+++ b/net/wireless/lib80211_crypt_ccmp.c
@@ -136,7 +136,8 @@ static int ccmp_init_iv_and_aad(const struct ieee80211_hdr *hdr,
 	pos = (u8 *) hdr;
 	aad[0] = pos[0] & 0x8f;
 	aad[1] = pos[1] & 0xc7;
-	memcpy(aad + 2, hdr->addr1, 3 * ETH_ALEN);
+	BUILD_BUG_ON(sizeof(hdr->addrs) != 3 * ETH_ALEN);
+	memcpy(aad + 2, &hdr->addrs, ETH_ALEN);
 	pos = (u8 *) & hdr->seq_ctrl;
 	aad[20] = pos[0] & 0x0f;
 	aad[21] = 0;		/* all bits masked */
-- 
2.30.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210727205855.411487-11-keescook%40chromium.org.
