Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBIHHQGEAMGQEH2VOG6Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb37.google.com (mail-yb1-xb37.google.com [IPv6:2607:f8b0:4864:20::b37])
	by mail.lfdr.de (Postfix) with ESMTPS id 3AB993D7FB0
	for <lists+clang-built-linux@lfdr.de>; Tue, 27 Jul 2021 22:59:13 +0200 (CEST)
Received: by mail-yb1-xb37.google.com with SMTP id t101-20020a25aaee0000b0290578c0c455b2sf130560ybi.13
        for <lists+clang-built-linux@lfdr.de>; Tue, 27 Jul 2021 13:59:13 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1627419552; cv=pass;
        d=google.com; s=arc-20160816;
        b=o/8uDY5KAwBKYAGZGuOC84a5wAP1rGCocqyBvaBpoZv21HzD7N1PITnVh5FGhp1W2A
         qiY9i8uXADtSZTHqPX7YVruRfmrjwOc7S00NDSLKzjeBRl50mVp/3Cw0rOHH0qTDjDi/
         UJ8y6X6h74omw/XZIzgMdd9JDj+LA2/wRkR1+qr/ycZuI3qbn7Q2tsAOErxUGu0ZYnzo
         JVjglaetb1QRsG/9AtQWLDGnlTJ/wfkFrTk6tVDr6grkP99SsF3mgJRcpQgQ3xXIu42M
         oqa+xaHx3pZRZ6ub4nrE2+Er4O0EnijOSzEKplG1sKM5P8QBuEWwmfSS9DZcXla79eld
         Z/qQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=V8eXHitNcu5NDsLkLAQbSCbnmmnv093pi4UB9siZYi0=;
        b=clkzB6SHJ78uWq9A0Q4q3zO2vt3p5D8H8nJE7+3heK8ET4f3PWKU1MpzCt06vQkK20
         SOlISTDnrYnt0YBtdB2yprwhNv+c/j5KVYaDFp2uljSO5lfWALyet+cjxDBdNe/y3o5r
         sRNSUgX6sskCJ50yHXj6gd05Ekxj57NrQyLRLetierILN6twR7PXSLWSUO3W8whI8kZM
         X+gXxDSiEVFV6xIftoap/48mfWyLmyNw6+KPldIPFEdB7Jj6YexABw/5NbowNDh3Hp6J
         OhC8j5VrHKPrkUTGQOOREyujdHWGBvNY+vsdZgHb1OQ5FFW6k5nA0x6NDDGNqGid1qWk
         UNIw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=bWmVc1AT;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1033 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=V8eXHitNcu5NDsLkLAQbSCbnmmnv093pi4UB9siZYi0=;
        b=mVqG3+SNkhaADmWhSnWzf4hb8YtBSdJ3DodY/JAMx5kD2QpGOAiUGvNFAdpgSdqPd7
         Xqib8MZZ26lRrklDjGVnAcHVdNFnfHOrpJH1trKhGsM5eqW+q28ZfvM02OiS5bmaWp38
         bIx8VMJii4FVnGdBeBm1VtNrBuKnB3ybLpPD4CTkI2WmgacmpPO1WhRazVTqoM4RpoOn
         QkNMIvWkLqPwYASufEJ3VaK//FYzJWOCOLIq8KUMvSTdea8bU4TFDkTdxW018sqYe4Zo
         Vi+HxFX4qNjFs0Sg05Fi34G0YMgJ9jvlqV8/Idka2ytHtOviCgQ5Ak1ZqwWnf6fd2gKO
         4EnA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=V8eXHitNcu5NDsLkLAQbSCbnmmnv093pi4UB9siZYi0=;
        b=bLrl8n69MW/HnTIT3+a2c3xu71NN7WLyCp6BKd7ua+E24orQzHE9oq0DZcOYNmmpUs
         EOERXZQKE21jcP2W6/ZF/vvuOLW+XTOQlOWaVkw/DHeibXfpx7TJ3+9D4omTLoVg1NpY
         NZ+TnvSDEDCr/39HG4X7aNixclYvydX2riCUnV69VVRAFdRQy+9IL4MwwYJ1SYY+O8yF
         mLzLCcN0SrvhzEhth7cDV0zWNxdsNc11MmoOSKCiAHen1uMFeJkwHDVEZs6IBqgS49Ya
         5d6NhW2VM8vzEy94JVenKVPU13NwqnSst60fknBHfyUR/kinUUFtgql7I3Y2kQ/krVI8
         g9kQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533Pn3thCJfmo7dOwHjhtfUsfN+lN38zxVY1aTivwaok3LlofbKO
	waAoPEqOt8lEfX+2ETetMPA=
X-Google-Smtp-Source: ABdhPJxeLLx1f5v9xpiteq1LMUijbM7fFSoXQQBCMYXhSYJorXj/4unMf3/O09ekDEFtkoeEfRsd7Q==
X-Received: by 2002:a25:da11:: with SMTP id n17mr14020345ybf.16.1627419552316;
        Tue, 27 Jul 2021 13:59:12 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:9808:: with SMTP id a8ls96171ybo.11.gmail; Tue, 27 Jul
 2021 13:59:12 -0700 (PDT)
X-Received: by 2002:a25:28a:: with SMTP id 132mr33830483ybc.458.1627419551956;
        Tue, 27 Jul 2021 13:59:11 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1627419551; cv=none;
        d=google.com; s=arc-20160816;
        b=LiXl65IbJmJWTMf0CF0A37oDcJTjMS22MmGBxZyv21nCxmWKSyFIl8U6hBTahlRYp/
         OP7AqgLvdE944UKJ0w1BTtjIH9N8V8SvJnPWuxaW/nUpko77uR3oW65dXS8Jnr2HhrcS
         cLEZE4IamgaQ3qLWpkfcJjAb3vOWtEa/pgey9v0nN1qQDPsEMT1bMS0TExKInGUYNiMo
         eG3WFIbAwAC+K+8Li4gxl8f7Z9kOkcf2EnS50uethlrB55mF0ynUiSsUnncbsrfZ6c9H
         zhJNjZfQnEuVp3ILKsIUVAvXgq1cEf3ormFM07p4kroy9kFMJLFeNr6UQERPnoPceuJo
         TgHg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=6/OQGnZJO2xpqz0lPpmxFO5LpaD7fJ1BCkxwNv3dNoc=;
        b=OQo6PR+p9ZbZpnRVJVE0xLgjpQ/vx4NNwrR9SGuERJC5PWUDpPcBbGpAKJjc3iWfil
         Q35TnfeY/qxl0ltLT47/dzppUgG66ZHD5zqwaY+wSGr6OZV0MrCxiYS45xlJFlQdZr64
         x+JmuYyd1OSlwfeNGk+tdDq6WbgKQsyc58+/2WqkY3BRaQRNQrDiop5mdSadDAUukWNU
         j++0JX/AzI/ebtdmU/J7p6zS8bw/CuC+i6OnG5UeSkxtMykF1wcbtzlo1uFzLg5z8bhA
         nFEBn1Ju6+sev11kP6zT+YKKvA8n/XZtbWNPqldm4JFPBsR1FWNrjG2Qdgq6qRUM0p3n
         AK+Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=bWmVc1AT;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1033 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pj1-x1033.google.com (mail-pj1-x1033.google.com. [2607:f8b0:4864:20::1033])
        by gmr-mx.google.com with ESMTPS id r3si519990ybc.1.2021.07.27.13.59.11
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 27 Jul 2021 13:59:11 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1033 as permitted sender) client-ip=2607:f8b0:4864:20::1033;
Received: by mail-pj1-x1033.google.com with SMTP id m2-20020a17090a71c2b0290175cf22899cso1092617pjs.2
        for <clang-built-linux@googlegroups.com>; Tue, 27 Jul 2021 13:59:11 -0700 (PDT)
X-Received: by 2002:a17:902:b692:b029:12b:e0b8:3415 with SMTP id c18-20020a170902b692b029012be0b83415mr16685504pls.32.1627419551650;
        Tue, 27 Jul 2021 13:59:11 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id e4sm5075904pgi.94.2021.07.27.13.59.06
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
Subject: [PATCH 18/64] cxgb3: Use struct_group() for memcpy() region
Date: Tue, 27 Jul 2021 13:58:09 -0700
Message-Id: <20210727205855.411487-19-keescook@chromium.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210727205855.411487-1-keescook@chromium.org>
References: <20210727205855.411487-1-keescook@chromium.org>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1623; h=from:subject; bh=QhhwuNDqwvCqZzGgtIdcelj8gelXre9JSKqa+rdI4Ks=; b=owEBbQKS/ZANAwAKAYly9N/cbcAmAcsmYgBhAHOE+3A+NvAr12M3pvmHg5gBS+BMuzVkps12U6r6 oUWT/KOJAjMEAAEKAB0WIQSlw/aPIp3WD3I+bhOJcvTf3G3AJgUCYQBzhAAKCRCJcvTf3G3AJnYSD/ 9pCe8EneuIHsFG7O1h9Et9FPdQ4sf78aWG201MY4PkmUZ0eDhPiloiEL0ylEGfsAWVozXDrhIHytSc WDmiUNbkrIdxewQswK1NMMFNJ9Jg6zM/c8zAUNt/MzTm6UhPLvszd3txXLKTOrLOyhBueGBQ5hn+C1 5nEhLlbkW2lrfXHI6MECRZNC7n9ca6OXMeCF2+PxwSe96LQt65zkiu9DRp+JebzmgYrVRe3KCZA4++ 9s5AGSX4owqhIkXUVKuL5t+3moxKtTYBRIpDJFhv8IVHDuIXnjWcdqFudBLh0yEwuN7ojftkvan2dB BsuTkhZeg0acZ/dH0dqsbAQmWtVEBbr7DAfLSqRFyp6TZIID6Ixvj8fo5wG5smHK8Xlyl/GjlKxroY WDoUvKOW/J9slWszjune87PA91amTGSpQPBJ30fHEtl6pxwc2hvREl0rjOYopDh4fQVnlM/hG2RFL4 fodpvMq+aZajblMJTpkucy8wpuq+xzQmfu3HLPrOCeSb4MEvdRHmJz7i9ClO+p78cHY164Izuv0iXN dR11BddC3Oi//XeEhgFN90I/5ttFIoVhVZJPXT22XfeYrGSbMWnh7i8X2JPcxj3s6VhYSciaPqqxze NGd+nEE/9Bey/+V/7KcUxYiUZfNz7HPdVbAcPyXWIctj6leKTFSYkijFcf7g==
X-Developer-Key: i=keescook@chromium.org; a=openpgp; fpr=A5C3F68F229DD60F723E6E138972F4DFDC6DC026
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=bWmVc1AT;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1033
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

Use struct_group() in struct rss_hdr around members imm_data and intr_gen,
so they can be referenced together. This will allow memcpy() and sizeof()
to more easily reason about sizes, improve readability, and avoid future
warnings about writing beyond the end of imm_data.

"pahole" shows no size nor member offset changes to struct rss_hdr.
"objdump -d" shows no object code changes.

Signed-off-by: Kees Cook <keescook@chromium.org>
---
 drivers/net/ethernet/chelsio/cxgb3/sge.c | 9 ++++++---
 1 file changed, 6 insertions(+), 3 deletions(-)

diff --git a/drivers/net/ethernet/chelsio/cxgb3/sge.c b/drivers/net/ethernet/chelsio/cxgb3/sge.c
index cb5c79c43bc9..1ab1bd86a3a6 100644
--- a/drivers/net/ethernet/chelsio/cxgb3/sge.c
+++ b/drivers/net/ethernet/chelsio/cxgb3/sge.c
@@ -126,8 +126,10 @@ struct rsp_desc {		/* response queue descriptor */
 	struct rss_header rss_hdr;
 	__be32 flags;
 	__be32 len_cq;
-	u8 imm_data[47];
-	u8 intr_gen;
+	struct_group(immediate,
+		u8 imm_data[47];
+		u8 intr_gen;
+	);
 };
 
 /*
@@ -929,7 +931,8 @@ static inline struct sk_buff *get_imm_packet(const struct rsp_desc *resp)
 
 	if (skb) {
 		__skb_put(skb, IMMED_PKT_SIZE);
-		skb_copy_to_linear_data(skb, resp->imm_data, IMMED_PKT_SIZE);
+		BUILD_BUG_ON(IMMED_PKT_SIZE != sizeof(resp->immediate));
+		skb_copy_to_linear_data(skb, &resp->immediate, IMMED_PKT_SIZE);
 	}
 	return skb;
 }
-- 
2.30.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210727205855.411487-19-keescook%40chromium.org.
