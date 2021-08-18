Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBRGG6KEAMGQEKQVWBPY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x73a.google.com (mail-qk1-x73a.google.com [IPv6:2607:f8b0:4864:20::73a])
	by mail.lfdr.de (Postfix) with ESMTPS id 785D13EFA96
	for <lists+clang-built-linux@lfdr.de>; Wed, 18 Aug 2021 08:05:57 +0200 (CEST)
Received: by mail-qk1-x73a.google.com with SMTP id g73-20020a379d4c000000b003d3ed03ca28sf1037108qke.23
        for <lists+clang-built-linux@lfdr.de>; Tue, 17 Aug 2021 23:05:57 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629266756; cv=pass;
        d=google.com; s=arc-20160816;
        b=gmuoWM5LWYKdSwclxPx+Gx1uuRbn+BjOrk1ydLztPCmNRgVzurrPagJUt0dSUaIWUF
         Sz3HBLG3sY+KjW97YJg+gEoRZ6RBa5/uiMSpTjLN9JvxDkK4RQ/Mj64H5d6m3z8COVl2
         76L+0IGbXPy+o5ReeEiNZe0GHPLNYfAOvQeeZiyVbUIWVDdg8x6ci1QWl1zbCMCVGg8i
         9soold1q7TtbgeLSu4cXIUXFRt/gbRWOn4TwR0XeWpqVBT08w83XsVXAOU2BKzQDPPKX
         HbCNLpmXpCMFZv7XIPsdnPTP2gk6Pr+/ew6gFbh1mx5PpQ0wHvM4BtNR0uywc6DvzBxW
         2tNw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=Hg0S/UzaohlQM2pu7F8IM3PGOL3KMgcwG46vZVJarh4=;
        b=ZBBfm93Z0tHo0SacmiyHBw+7ulBF+HjjYj71PsL8MINseaiMjwX6baIRh0O0POMaEF
         slFVuWc2HQ47dKfQQMxb8jH586/003crsVF261WxW6oauo9NhIW91Ti+icGPGHuKkuKa
         w4Ec00id10+VtvKTMBmrbaK0Xb7UyGGf79p4UWB0pSjduhEQ+XTUJJ0pMSBLNgyTIayH
         nW6WSxu29csiU4aoajrMUMYN31RijpGC7So5AJXFXGLHEFuXfJxNpN2y+8OjZVyPFaju
         F8RMhVbRjwDIhHvPotExMs1jvYf/6cBhbca1zHTV0TNT+OOXD/IHdR2jFx442uwFuUyJ
         S+3g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=NeXzORZm;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1034 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Hg0S/UzaohlQM2pu7F8IM3PGOL3KMgcwG46vZVJarh4=;
        b=BRh+1v3r6gMr+ITMssdJMBy6JplD7Lm4Pwj0TWmh6L7rMQ9IgoWp2Xvw8n2zerrfV7
         tCyFmCwhHO/GLu0idr0IPtsTbdidR2y90TDnloHe1nkAyR9fUzCi/fwitdinec0NwoV0
         x/oZexikw1XFxfd8BxK8iCUewD8UEYBhL+8jZD4N0+Y5ldpqSeLqLTG+D+Xg1ubjoGta
         wd4TCyqP/YMHWZDUHKq4D/k31TaqCo8g4JPpeq5UsH7G2B0LCPK4BFOcCHzGm7W//2Rz
         l+kqbYT9f24Q58IA5pDcsXSSiXDp62LSAPeTv0qXpxv9vk+WiM3X+zLMp/90nJt0jqeE
         RbYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Hg0S/UzaohlQM2pu7F8IM3PGOL3KMgcwG46vZVJarh4=;
        b=f2jkSaHoYH7sIFni0lRD9C7Pkn60I0ikr6UFNOvBd6l06zUQ1x7CaEpWDQa7VFpx/b
         eb8c+jXEXgFzfjQoofPS0qykO50aQTQqUDOXFpGKM04k9Cd25v2+AQpxS/5Nd0ySkSbV
         hk350WkQFfUU2x+HlUVWsw1m87Y1822zS7/NMAuIGIqYE5W1AVmRsMWUa46WtUZ5b6cE
         oyhc8Y7V4BFnuR5/lD8soHXoXnc8y4lfocuboq9zXPRa4x0tlZ6iJpmNQ0OLkYXo+mk5
         aiYLXq0QQehKY5n1MAbeJ/dKUMf8G6CrhZkWIP8vhFn6QURIoolFyNRLAmOhpytzXtTl
         zjnQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530V4UjDe6rlPgFQHJqYi6FWpu5l8QipABkaPny14gfnT/LaF85/
	mnBXJihj+WQ/0Z+2iYUNBjI=
X-Google-Smtp-Source: ABdhPJyDin3AU1lGcv/i+YjM/+CWXFkyLziROleXaNhtlGp6KmZXspVoublNZqYVKBJlvGIBRKxErQ==
X-Received: by 2002:a05:620a:24c1:: with SMTP id m1mr4164609qkn.309.1629266756613;
        Tue, 17 Aug 2021 23:05:56 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:620a:4401:: with SMTP id v1ls744373qkp.11.gmail; Tue, 17
 Aug 2021 23:05:56 -0700 (PDT)
X-Received: by 2002:a37:96c2:: with SMTP id y185mr7922371qkd.6.1629266756159;
        Tue, 17 Aug 2021 23:05:56 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629266756; cv=none;
        d=google.com; s=arc-20160816;
        b=WjUwBB/9Ah383KNENgR4LFA8dReZsLQnXGnhVTKz0r6Uuzrh+pMBvsAkd3pBPADOGr
         OQ+J/idhXVF21MgjpTrTELC8UyhciefkJLJ+vNda7uH3Gux9k6s2xoY4zGNy/kFy11RZ
         koFkZVhhWjkPkDM+w/eUoF2SgoujKb+7w30BOUcm+XXVHBt797/69CCUi0G94ziB4H5P
         o5i+TCmFC6VpfrRFNH7N37ze/x6kXK+yTfzevs+wDrFeq/xfWCdTWiC1PKK5IOeXwkkM
         rg+SRCzt0IKYV+nhmkgy+BFlG4ngnB/xXo1PSbQzp/tBR2WE6QH9RP1rZRaUwNYr30Yx
         JhUg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=AvplAjAyy7Xo+ijXhvo31OZi4yHKm9FY1a+n2JGpi4g=;
        b=DfSmY3h3CK/PyEcMsKjX9M0/+z1Ni2BDQPZ6CFMG6uBk1DTqF4n01UjHyo/AYTzFSt
         BxtP8GZOm40TbVjuhdrn1WynYwW9UqgCQssqQlUiOALEHS7nRYbBdwzVQas5L8PG7q6f
         WITiUNNRUBprTsYrroGHlgl9z/EiisjNuhaPH4qAm+kK78chC7pg1Hmp7NDizNFFA6x3
         t5ywGsBlc9XSsCex8acHA/VsD62fA+FB+mnTsLLpfcZ3ttZBNUHNJiIp6As887Oum5xD
         NFVTBx6vzLM0Rsd/+3fQe9DqPwmZ7wOEMOPv4aNncfCx+6v9Rc4b4Rk3TvDH+GwMNMAH
         zWpw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=NeXzORZm;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1034 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pj1-x1034.google.com (mail-pj1-x1034.google.com. [2607:f8b0:4864:20::1034])
        by gmr-mx.google.com with ESMTPS id b1si358765qtq.3.2021.08.17.23.05.56
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 17 Aug 2021 23:05:56 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1034 as permitted sender) client-ip=2607:f8b0:4864:20::1034;
Received: by mail-pj1-x1034.google.com with SMTP id cp15-20020a17090afb8fb029017891959dcbso8235886pjb.2
        for <clang-built-linux@googlegroups.com>; Tue, 17 Aug 2021 23:05:56 -0700 (PDT)
X-Received: by 2002:a17:902:e84f:b0:12d:c616:a402 with SMTP id t15-20020a170902e84f00b0012dc616a402mr5833254plg.77.1629266755373;
        Tue, 17 Aug 2021 23:05:55 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id y67sm4550662pfg.218.2021.08.17.23.05.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Aug 2021 23:05:53 -0700 (PDT)
From: Kees Cook <keescook@chromium.org>
To: linux-kernel@vger.kernel.org
Cc: Kees Cook <keescook@chromium.org>,
	Alison Schofield <alison.schofield@intel.com>,
	Vishal Verma <vishal.l.verma@intel.com>,
	Ira Weiny <ira.weiny@intel.com>,
	Ben Widawsky <ben.widawsky@intel.com>,
	linux-cxl@vger.kernel.org,
	Dan Williams <dan.j.williams@intel.com>,
	"Gustavo A. R. Silva" <gustavoars@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Andrew Morton <akpm@linux-foundation.org>,
	linux-wireless@vger.kernel.org,
	netdev@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	linux-staging@lists.linux.dev,
	linux-block@vger.kernel.org,
	linux-kbuild@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Rasmus Villemoes <linux@rasmusvillemoes.dk>,
	linux-hardening@vger.kernel.org
Subject: [PATCH v2 06/63] cxl/core: Replace unions with struct_group()
Date: Tue, 17 Aug 2021 23:04:36 -0700
Message-Id: <20210818060533.3569517-7-keescook@chromium.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210818060533.3569517-1-keescook@chromium.org>
References: <20210818060533.3569517-1-keescook@chromium.org>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=2984; h=from:subject; bh=gH2l7MUrimYDJJHL5/kGu3UEiSd7agDYsUtnIqIDLGg=; b=owEBbQKS/ZANAwAKAYly9N/cbcAmAcsmYgBhHKMfFeE+SAeXV7TlGs5W5Dan0qJQ1dt63HKDzfHG juo8T9CJAjMEAAEKAB0WIQSlw/aPIp3WD3I+bhOJcvTf3G3AJgUCYRyjHwAKCRCJcvTf3G3AJlH/EA CnsBzSF5pyrctJZ6ieH+8X8zUFVzCAy3+BR6FX4EgEQJkJRkPWwnEynE2qGmzAQmsEHsp55I/GrJX4 JR1eEWAvgU7ZjlCsPIcv1hCYd1m27MgsvOjeZZPQo8r02lm4PTiaybJvP6THoSxUoZ7x7i+BLdqnLN CJ2Tai+1QWBg/z5BfgXsolu04ACMdQY4zZdNixxfxbVmz8EfwVyWUFyP3k0U0O43Mhc0n+Pi9sfLdY gqM7Y/4yJ/qOqjNqkAP2FR+u7pDMCwF5q6mugy3ReHQbJ3WUCsx/h6iW6XpvzpLtDmU4PnwCizNbDJ 65jHpkXZBwccb2yWZL3xbfcqAc4M9w9cYxNpLdtt8NZ+rde81+4KjY3RjmaYJ6kbOdG2jTQ2uB7QBR 8IB6Vp3VcelKvfe2D6gT91BL8IxzqodAw+yqwCP18Gg1nRBdVdzBLvr5+AFn9w0jjp98MtTKa6P7ii gkZ2UwvygAIG4rcijtB/7meDfJT0C/h40i2avmZ5bb1UndNmOtfoixIiUnumnomu9UUwzxEUdhNb57 KS5dfN7XmkBAwIOqhTGzOAtYHWmH1VyhVLJnBQ2VfGR39r5zOPfmnkT1aic2J3QdRCTgo2AZbLBI6F DcMPWmOtMJYmAJpqZMcje5nPsclSh7Hq7uJSZSzWOq0scZlLODKdzRVPuALg==
X-Developer-Key: i=keescook@chromium.org; a=openpgp; fpr=A5C3F68F229DD60F723E6E138972F4DFDC6DC026
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=NeXzORZm;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1034
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

Use the newly introduced struct_group_typed() macro to clean up the
declaration of struct cxl_regs.

Cc: Alison Schofield <alison.schofield@intel.com>
Cc: Vishal Verma <vishal.l.verma@intel.com>
Cc: Ira Weiny <ira.weiny@intel.com>
Cc: Ben Widawsky <ben.widawsky@intel.com>
Cc: linux-cxl@vger.kernel.org
Suggested-by: Dan Williams <dan.j.williams@intel.com>
Link: https://lore.kernel.org/lkml/1d9a2e6df2a9a35b2cdd50a9a68cac5991e7e5f0.camel@intel.com
Signed-off-by: Kees Cook <keescook@chromium.org>
---
 drivers/cxl/cxl.h | 61 ++++++++++++++---------------------------------
 1 file changed, 18 insertions(+), 43 deletions(-)

diff --git a/drivers/cxl/cxl.h b/drivers/cxl/cxl.h
index 53927f9fa77e..9db0c402c9ce 100644
--- a/drivers/cxl/cxl.h
+++ b/drivers/cxl/cxl.h
@@ -75,52 +75,27 @@ static inline int cxl_hdm_decoder_count(u32 cap_hdr)
 #define CXLDEV_MBOX_BG_CMD_STATUS_OFFSET 0x18
 #define CXLDEV_MBOX_PAYLOAD_OFFSET 0x20
 
-#define CXL_COMPONENT_REGS() \
-	void __iomem *hdm_decoder
-
-#define CXL_DEVICE_REGS() \
-	void __iomem *status; \
-	void __iomem *mbox; \
-	void __iomem *memdev
-
-/* See note for 'struct cxl_regs' for the rationale of this organization */
-/*
- * CXL_COMPONENT_REGS - Common set of CXL Component register block base pointers
- * @hdm_decoder: CXL 2.0 8.2.5.12 CXL HDM Decoder Capability Structure
- */
-struct cxl_component_regs {
-	CXL_COMPONENT_REGS();
-};
-
-/* See note for 'struct cxl_regs' for the rationale of this organization */
-/*
- * CXL_DEVICE_REGS - Common set of CXL Device register block base pointers
- * @status: CXL 2.0 8.2.8.3 Device Status Registers
- * @mbox: CXL 2.0 8.2.8.4 Mailbox Registers
- * @memdev: CXL 2.0 8.2.8.5 Memory Device Registers
- */
-struct cxl_device_regs {
-	CXL_DEVICE_REGS();
-};
-
 /*
- * Note, the anonymous union organization allows for per
- * register-block-type helper routines, without requiring block-type
- * agnostic code to include the prefix.
+ * Using struct_group() allows for per register-block-type helper routines,
+ * without requiring block-type agnostic code to include the prefix.
  */
 struct cxl_regs {
-	union {
-		struct {
-			CXL_COMPONENT_REGS();
-		};
-		struct cxl_component_regs component;
-	};
-	union {
-		struct {
-			CXL_DEVICE_REGS();
-		};
-		struct cxl_device_regs device_regs;
-	};
+	/*
+	 * Common set of CXL Component register block base pointers
+	 * @hdm_decoder: CXL 2.0 8.2.5.12 CXL HDM Decoder Capability Structure
+	 */
+	struct_group_tagged(cxl_component_regs, component,
+		void __iomem *hdm_decoder;
+	);
+	/*
+	 * Common set of CXL Device register block base pointers
+	 * @status: CXL 2.0 8.2.8.3 Device Status Registers
+	 * @mbox: CXL 2.0 8.2.8.4 Mailbox Registers
+	 * @memdev: CXL 2.0 8.2.8.5 Memory Device Registers
+	 */
+	struct_group_tagged(cxl_device_regs, device_regs,
+		void __iomem *status, *mbox, *memdev;
+	);
 };
 
 struct cxl_reg_map {
-- 
2.30.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210818060533.3569517-7-keescook%40chromium.org.
