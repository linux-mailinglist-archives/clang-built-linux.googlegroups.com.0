Return-Path: <clang-built-linux+bncBCF5XGNWYQBRB47KQGEAMGQEJVJZVRQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103b.google.com (mail-pj1-x103b.google.com [IPv6:2607:f8b0:4864:20::103b])
	by mail.lfdr.de (Postfix) with ESMTPS id EC5123D808A
	for <lists+clang-built-linux@lfdr.de>; Tue, 27 Jul 2021 23:07:00 +0200 (CEST)
Received: by mail-pj1-x103b.google.com with SMTP id s1-20020a17090a8801b02901756faa6840sf428794pjn.2
        for <lists+clang-built-linux@lfdr.de>; Tue, 27 Jul 2021 14:07:00 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1627420019; cv=pass;
        d=google.com; s=arc-20160816;
        b=UxJfy2AF9P2n2Ff3bwC5FPH0IkNowlGHR+5G0WmX63P4Cml/D80x4utu7kRDJy6CPl
         KPALF+e5bLItBniwEPjmWESXxP8/5Ic/PdWVcHYPfo/ob7qIhxaKc0tHDPPXI/Izga8/
         Evg2M8AR+b80JABe8yx0UqSY276+dG+t7sEIHAtX1o18RBKXnbQxIhr/OCRke/TN7dZR
         sBsGfM9sTOL3vkooEhz93Rnwj98SJJjN/2mL78668P2Na8YTVCAEAmVmZtJSCu6GkiUp
         Z9v8RtKTw3ru4U1VRK7I7YmppEWUbYl0lUUTHlUs3pzcexNFT8+wyjcw5uQotW2bYsbe
         +t9g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=XkFh/MErAL/2LP6d66aLd+0KU5mY8EdGXEpRYGFohhE=;
        b=LC8PBsANKZHoTBcrYUSxmE7YMYHqWftKtxHkQIAmOKP6I9NiOzS3MnPNVTq/OSpS0P
         ErqVjMy4oWNjaPVim8xEychkAfT0JVegRQBFI3zl8NTBxEODI67fZNvJ/x+Gn8EnjBhS
         k8iqYKHtAcyphpbjzeIqqrkyaqY8JRYW2vnD1wkHGq9B6cWs4RO4ZytpojGYxZ9E1dUL
         5sLHA//Y6lg+xhUXBJkEl62lMgP3QBSz1U90ioxQXrNokc8CznGgh4OSH38OS/nCpA6e
         Kc4BOygpnQMFWoF58rWHX+bx7JLefViZa5dtL2wegZqrP7vfgFPLFjjtOsxsbQK1fyh2
         +KKg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b="C9odf/Lx";
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::102e as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=XkFh/MErAL/2LP6d66aLd+0KU5mY8EdGXEpRYGFohhE=;
        b=C0ecRvxZVXpIS2t5JgwQs4W7isDOq/0gsvInO55GCBWrXiEdBh85F8J+VkYwySoaj8
         01ql4xgQaFN3Y3vVL1egVPWEEeCAbA3iREdr83cPVv79SbQlv7SVzhlDq3zvuuvZV1FC
         XZbEWO3NCZq56IwHO4WV7D/qB4pP7Ll6vPzmIbp2fgDOQeGP72QCJsh/r1a+YrMc9c85
         z3y7FTfy5g+ZDLvjSuAbdxS8HiFlBiPg9nO0dCyfDdswHQF/5eIk/lz9Td+Mb9l/6v7n
         x0la46gWF3WVDuop3nhMvu8ypTVsyXEMIgMJHtea1hiJBgfJ9igu2cx1lU6pyrL3UWLE
         fj1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=XkFh/MErAL/2LP6d66aLd+0KU5mY8EdGXEpRYGFohhE=;
        b=H/P4RQ9M775LEH85Y1nPbm7lYb0FLDC71jM+8GaMSrd7/RSZ1XHNSzXgdt9+doZhgC
         MleFgAC+8qu+ENtpHIXdO2Ne0meQ2xDw/Z/USu3PS3X326dDf/BF3hAnQuStZ99HT/b8
         NsJbUDQahaiVEMIcMWt+TVfpbhM6c8nH1AIDOmimOQHOzvN5X3j5vVF960Z07LLoE0iV
         z7T1wFTp7tzQrXcDJPrNMgzS9NIEewB3R2REa4t2XyhCRetk9wDfJjar2DRBOTFhVDjb
         ah6OPw2AZJTPmprzj+ZRBZfo4JpDAqSI5l8tK51XRpQx5UU6RiHRRCzinDtaPSzm/9Dt
         9kOQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532tmctTyfFVlzT/qJWCYURN7yDhCfgChv05RR1CkqXNdSPwFd+6
	WVb3wcezWCZ7FXNXrjlGwYw=
X-Google-Smtp-Source: ABdhPJy9cTIifIpxLEurNVENKG6eguKdQ2fs89ahUR6ZScW17h5OnoUEV4EOUTp1sZxG7wV/yWGRKw==
X-Received: by 2002:a05:6a00:1305:b029:347:676:d38f with SMTP id j5-20020a056a001305b02903470676d38fmr24988963pfu.39.1627420019704;
        Tue, 27 Jul 2021 14:06:59 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6a00:139e:: with SMTP id t30ls9944046pfg.6.gmail; Tue,
 27 Jul 2021 14:06:59 -0700 (PDT)
X-Received: by 2002:a05:6a00:2309:b029:332:5157:e9a6 with SMTP id h9-20020a056a002309b02903325157e9a6mr24238128pfh.78.1627420019164;
        Tue, 27 Jul 2021 14:06:59 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1627420019; cv=none;
        d=google.com; s=arc-20160816;
        b=GrUAm3hiTUzCvJSBeDnho56MmSeKKbF+VCYFxtFh2fj9vOwCmnGyfswOXsQYaqCgpA
         6yCP760DZYF6ql5XG+WPmhJvevLnxTCS94VD/jXMIIYYt82OI26g32aupdr7knU57N4c
         e/RBWETR7EGK59VtC6MwND0q57CAS2QAhVZpsn+V6p4dCUoDV0qQ8jtNYAVDaIm+iJ0V
         KtAmXXehBobYpouKguvjKT12hf1/V3kmYDfOW2xmtQ/22sp1QBUTf7PlqpTd0Tc3Rwn8
         yIW/ZUaNQF21e+utUrSLSvWf+pGrbvjVw65J6G2ezSZttc7NaCdpQa5WfmAoHsY4J0Pw
         RP9A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=eHJ5K8LiDBXCeTCe7PvgaP3UqQR5uDLvklqQUiAbnC0=;
        b=a/SthDmb0nNdks7jYRQwR9raXCEzox9KcNxs5CuMf9zFnJVVoFjBt924X2zsf4868a
         Rmn7T0Osg3JuhjyBlDeqwqeKsGgybTgx/UF+yabf/gNBDVk+6pVEc9vmxHUkM78UspfU
         96XIOMqnfOw0uigmJReFSoqLqNi/97i0UJ1pwsBarPVH8NIjrFh71RN+tPoOKhyK0wad
         n916mZMZ3wFdIHE928Blk0GX9+a4KWAEoMKg2a9jj3X0wMdz17rCy31giYrduyc49dVN
         wtp+mBjIJ/vgGmTSUTmIc+W/mxvDD7OOzWclvpIRh+mRkbWyQWclu6+Q59cDkO6XnMpo
         fKcg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b="C9odf/Lx";
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::102e as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pj1-x102e.google.com (mail-pj1-x102e.google.com. [2607:f8b0:4864:20::102e])
        by gmr-mx.google.com with ESMTPS id p9si264520pfo.3.2021.07.27.14.06.59
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 27 Jul 2021 14:06:59 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::102e as permitted sender) client-ip=2607:f8b0:4864:20::102e;
Received: by mail-pj1-x102e.google.com with SMTP id b6so1806499pji.4
        for <clang-built-linux@googlegroups.com>; Tue, 27 Jul 2021 14:06:59 -0700 (PDT)
X-Received: by 2002:a05:6a00:cc1:b029:32b:8465:9b59 with SMTP id b1-20020a056a000cc1b029032b84659b59mr24967310pfv.66.1627420018950;
        Tue, 27 Jul 2021 14:06:58 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id r128sm4687668pfc.155.2021.07.27.14.06.54
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
Subject: [PATCH 63/64] iwlwifi: dbg_ini: Split memcpy() to avoid multi-field write
Date: Tue, 27 Jul 2021 13:58:54 -0700
Message-Id: <20210727205855.411487-64-keescook@chromium.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210727205855.411487-1-keescook@chromium.org>
References: <20210727205855.411487-1-keescook@chromium.org>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1543; h=from:subject; bh=s7Xq57zTgnpQLZW9o4dFqvke+b60yZlygvvLnoMj4dM=; b=owEBbQKS/ZANAwAKAYly9N/cbcAmAcsmYgBhAHOO7ylJm1Pef8Nw2Y9AVMYN/aYHsm9YN/NkJMM0 14MmcVqJAjMEAAEKAB0WIQSlw/aPIp3WD3I+bhOJcvTf3G3AJgUCYQBzjgAKCRCJcvTf3G3AJh5wD/ 0a9KvpCqyFZ9QKAdlblaiFHTvLu6J0I4KvuS/Pu8WGvbtdHoFcEc1A0J0FqancucuNe2oN76GijGN8 ZmNxkbLuDowcPvHB1KNKV+y/VKyD/GjTqJSFGbHSgE1d3XVQUqA8M80luRN12bHJex3vWEGlQIgVUS eo5mVVxa1vQFLA/APQtdO4QC3S0Rxaeq//vH7IZ+y8uTxf7ChRZtqCWERhOu6zi0YYM7UsadKsQ1UW kuKw1BHS6rVbpMLujJWWAPEyxEe0W/MD7sUJar7lh/sg2nbnVIlvXob+LuNF5xQtZwtIVnlj1/Tx1c JeZYoyxgw4/uvoQF/VaOiL8Fb1Mky8hA3J0Q0KSrMfDlDYr2psRQCz/wYgNiK8aZmkNvU6EyldhpRR jvpt2FEuN89iS51ofpMkKT9jWkj2G2IJnYUpSSBDS7x/6U33s9hWYtpjYFkmrtQS+KN+/zM7e0Wq85 h9kdtxEMB5GcqKunvfEzrJH/6l30zcuWdtxzKr+5eUMIzfT4m7IfJftQW1OHHiIRW8y1i2y9mOZGde lSqRZZ+xSG98+pb5deEI05oPi7AOE1XKeHnMMfVyygop9nOeSAmsJJWm+ExFOnNUkiTzMkM+sJqqiU uZuZWsn+50meKz7mBFEHFWpt++2rlXLf2jFCbTMaiMMKok79IQfcYfkHRDkg==
X-Developer-Key: i=keescook@chromium.org; a=openpgp; fpr=A5C3F68F229DD60F723E6E138972F4DFDC6DC026
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b="C9odf/Lx";       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::102e
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

To avoid a run-time false positive in the stricter FORTIFY_SOURCE
memcpy() checks, split the memcpy() into the struct and the data.
Additionally switch the data member to a flexible array to follow
modern language conventions.

Signed-off-by: Kees Cook <keescook@chromium.org>
---
 drivers/net/wireless/intel/iwlwifi/fw/file.h     | 2 +-
 drivers/net/wireless/intel/iwlwifi/iwl-dbg-tlv.c | 3 ++-
 2 files changed, 3 insertions(+), 2 deletions(-)

diff --git a/drivers/net/wireless/intel/iwlwifi/fw/file.h b/drivers/net/wireless/intel/iwlwifi/fw/file.h
index 9a8c7b7a0816..226ccd3a6612 100644
--- a/drivers/net/wireless/intel/iwlwifi/fw/file.h
+++ b/drivers/net/wireless/intel/iwlwifi/fw/file.h
@@ -116,7 +116,7 @@ enum iwl_ucode_tlv_type {
 struct iwl_ucode_tlv {
 	__le32 type;		/* see above */
 	__le32 length;		/* not including type/length fields */
-	u8 data[0];
+	u8 data[];
 };
 
 #define IWL_TLV_UCODE_MAGIC		0x0a4c5749
diff --git a/drivers/net/wireless/intel/iwlwifi/iwl-dbg-tlv.c b/drivers/net/wireless/intel/iwlwifi/iwl-dbg-tlv.c
index 0ddd255a8cc1..f4efddf3e3c3 100644
--- a/drivers/net/wireless/intel/iwlwifi/iwl-dbg-tlv.c
+++ b/drivers/net/wireless/intel/iwlwifi/iwl-dbg-tlv.c
@@ -71,7 +71,8 @@ static int iwl_dbg_tlv_add(const struct iwl_ucode_tlv *tlv,
 	if (!node)
 		return -ENOMEM;
 
-	memcpy(&node->tlv, tlv, sizeof(node->tlv) + len);
+	memcpy(&node->tlv, tlv, sizeof(node->tlv));
+	memcpy(node->tlv.data, tlv->data, len);
 	list_add_tail(&node->list, list);
 
 	return 0;
-- 
2.30.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210727205855.411487-64-keescook%40chromium.org.
