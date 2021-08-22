Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBBUERCEQMGQEPR7CK3I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc38.google.com (mail-oo1-xc38.google.com [IPv6:2607:f8b0:4864:20::c38])
	by mail.lfdr.de (Postfix) with ESMTPS id 3647B3F3E5F
	for <lists+clang-built-linux@lfdr.de>; Sun, 22 Aug 2021 09:51:35 +0200 (CEST)
Received: by mail-oo1-xc38.google.com with SMTP id i5-20020a4ad385000000b0028bd047a835sf7311671oos.12
        for <lists+clang-built-linux@lfdr.de>; Sun, 22 Aug 2021 00:51:35 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629618694; cv=pass;
        d=google.com; s=arc-20160816;
        b=bxdteHYilqxpCJzVnxbZEKTmqb5JtoE2izjZnCJbIi+woOlqVR967YOECunlypiw6M
         1egop6TlmWFtFOn65HiwfY2qjgazQWCZC72CAItAGCrlmUMgkUwouqK1+eADOAJrVWjS
         cWI7A+s7+0CIzyIcOa5HZUiVQXizvgtdh30NtKWkL/EENOG92VcZ9TrraeSdrMI9BbcO
         cxLDW884rSmIq+5zRcdK96ZtkP3nxZQinZwRkN4UuJw5/FOMQzHXKPJ1wQqCrF/1CghB
         N2OA3M0vZvTKXWZ6sabljRRI0uILv53cJn4N8A7Mn+apZ5CDqpg7PzTL1WHE7P5YNKS2
         dsJQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=P36TL/Aoyt654vAwWxZ1nUXcoul6GlzazUEYbq9FOBQ=;
        b=hNHlKvqDrWD8/7iErGCa8B3r2UkFbXZCHnVckZF+4CKmuYPTfX4K5aDSUfjQWVLGgr
         A46D0qv4pCM92HxU+Dz8eBXFVl/Klau97vqaDb/eMWuL8wKiMm1sRIge6gXWm79MGbsg
         6S7OvfW6Bsc62GkPq6+cdjE9ePv+bYGKMOsagpc+7kd6DY5JgRxpD7c7YGuCAQLEWopr
         rgPIi/4mfNeNq0eS1MV7idSd+z8g3e1/0rumNSddD3ouuvEOd1tKYKhjFwktq7YZx4Xf
         S2uN9VyDPW7dGk1M/fqLjOjFIscM0FtKm8Fdwx7KlmAykrooW/j7ee0b/8jNGw40fwoK
         zP5g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=Ji3zF0Sc;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1033 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=P36TL/Aoyt654vAwWxZ1nUXcoul6GlzazUEYbq9FOBQ=;
        b=JtxNURBskPE/Lg36onakFqgvoDTrd7RI5B2k0RIpkV3sKJFGN7E/BWZNOZXl2iD83N
         nt3FxDKz1C0SykW9x6pWFkFViDA9X6ssaMK6AmsS6taCg2VdnZuH/9tIxF9UwOlPWDcG
         /Z7pPkG+adyBxZuOiHVmmBARccEwVz1ZSJHWA24gRV8aaUB6SLrFgSt+TBRvDV8l2pHO
         ULQcYZgnbuqrMCmPiR2ACREAY+L9+Y3f4A+ticF1UKY7YqYioLdYE9F8p2C4mnYFBkkj
         bbfkd0cv5fn4zade1FeIM3K4fkAAVI6yPNIyOJAalRUJHD+ZWETlOZrAAtTjBrDdJvtM
         9F8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=P36TL/Aoyt654vAwWxZ1nUXcoul6GlzazUEYbq9FOBQ=;
        b=jI/Zr9TNgFjaQW3lyGQvSBEpbfGldoFauGErhXI0HuhyE0sj15gBpabZWDe/eQLofU
         WheCK49vHa7NTAltShCDlhdd8Rhek/WhSy90cpTgDqQP+xmpepU2wvNRFnZdzW92VOxC
         YwHkBH5dlsE6JFhSfCGvJ7jW0BibDbaXC62e1xrzOD1hzItyva0s1Lrw1l7makG5nmKS
         A1XBVFy9Eciy+QmxQHbVYrK9XqZxbBVfp6m0YW91rSjkq9gyOSvKo53OrwOKik8s0cUL
         jfW5nhzW2KV7CpUzEawjTLJouqMWhYs9yrtQR2UicqzmASVVv8+isqCuannC1iQsVot1
         xHDg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532PELWZNPTvI3VcXYhhpn4sx3p+wPYxh01e8Z0lRv9h0Zfct42D
	0IQmg9j+ZpcOQyH38dpLobQ=
X-Google-Smtp-Source: ABdhPJz6kL8gz26FE6AeFIPmEjJoDzx/E92BhNiCd8OeFBTlw3LhJnfIS16iwPTboRwRs366wNc5Dg==
X-Received: by 2002:a05:6830:1bf1:: with SMTP id k17mr14581125otb.295.1629618694174;
        Sun, 22 Aug 2021 00:51:34 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6808:2186:: with SMTP id be6ls3331716oib.8.gmail; Sun,
 22 Aug 2021 00:51:33 -0700 (PDT)
X-Received: by 2002:a54:460b:: with SMTP id p11mr8168841oip.38.1629618693853;
        Sun, 22 Aug 2021 00:51:33 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629618693; cv=none;
        d=google.com; s=arc-20160816;
        b=dmtsaC9piGDv3TBEJDm1K9bORWDNEqRWfBHiOASmM/h+ad7ipeTv7+cel4LxhSQTk0
         HikqVCh5383JBTTtHnq3W0pHDsxKUhpli02tInsUPFBAjLhS/Qnk1qF7SuSb+C5NCSj/
         cjtZ0OGLBDu+heTKCF1PcjsXvWeMtEAkyBwi9UdBBLJeM3ZicyOTxxjHcWkc0ys3CBjb
         fXrFpgJ0QJuxKAUd7HQ8Y2/2Sd1eIBcrHtqdeWbNQioLqT/h3jYqZfjAwTDfu26/ffIV
         3gt5IRLtp+8VbUKtbFbe3aW5XfjiIR6nDMtEcHBqqfUCpQyVvW8T31W9UpPqgnRJYhg7
         ym3Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=6C21nGDw7vC+YBB6XbuzwfBKcOzsmqPCIkUK4Z1vJAk=;
        b=OvlX6G5S0yTxoLsSkgG5a9d8oKDR6l41Ub4e0/dlB5hW1xWSAr8CQX7a7aXc44mil+
         mGS+QNuSurMuqyPTQ0s+Adp/i26iAh4d19Zw15UjDmS2ROO/gpy9N21p7l3VU2eaDWhV
         kpgBgGx9OBlsL0cVp0NqDOkJ3s7pVkPCzhbRE9QSUkG5RlnooIXcjYDyCKgdMUSVhLWL
         SsrnwSKt0wL1LYzaf8qLZoTuBErXzkQbRJyoOJ0PrnYGapxXgfThyoENKVKAHNGcBrsD
         VxEaDa2St5J+xr7YyDtbzCC11/LAmPt+kCwSq/VVwF0DPmsp9SVz9y7JKYPhpGiw+wqp
         zq3w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=Ji3zF0Sc;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1033 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pj1-x1033.google.com (mail-pj1-x1033.google.com. [2607:f8b0:4864:20::1033])
        by gmr-mx.google.com with ESMTPS id bf14si291288oib.0.2021.08.22.00.51.33
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 22 Aug 2021 00:51:33 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1033 as permitted sender) client-ip=2607:f8b0:4864:20::1033;
Received: by mail-pj1-x1033.google.com with SMTP id j10-20020a17090a94ca00b00181f17b7ef7so3804882pjw.2
        for <clang-built-linux@googlegroups.com>; Sun, 22 Aug 2021 00:51:33 -0700 (PDT)
X-Received: by 2002:a17:90a:7141:: with SMTP id g1mr13915053pjs.142.1629618693402;
        Sun, 22 Aug 2021 00:51:33 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id 6sm12363166pfg.108.2021.08.22.00.51.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 22 Aug 2021 00:51:29 -0700 (PDT)
From: Kees Cook <keescook@chromium.org>
To: linux-kernel@vger.kernel.org
Cc: Kees Cook <keescook@chromium.org>,
	Alison Schofield <alison.schofield@intel.com>,
	Vishal Verma <vishal.l.verma@intel.com>,
	Ira Weiny <ira.weiny@intel.com>,
	Ben Widawsky <ben.widawsky@intel.com>,
	linux-cxl@vger.kernel.org,
	Dan Williams <dan.j.williams@intel.com>,
	Rasmus Villemoes <linux@rasmusvillemoes.dk>,
	Daniel Micay <danielmicay@gmail.com>,
	Francis Laniel <laniel_francis@privacyrequired.com>,
	Bart Van Assche <bvanassche@acm.org>,
	David Gow <davidgow@google.com>,
	linux-mm@kvack.org,
	clang-built-linux@googlegroups.com,
	linux-hardening@vger.kernel.org
Subject: [PATCH for-next 05/25] cxl/core: Replace unions with struct_group()
Date: Sun, 22 Aug 2021 00:51:02 -0700
Message-Id: <20210822075122.864511-6-keescook@chromium.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210822075122.864511-1-keescook@chromium.org>
References: <20210822075122.864511-1-keescook@chromium.org>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=3038; h=from:subject; bh=aPnZgEf5gVMxv6joe4aeeaiC41mLeeNUPXEOUkw15pA=; b=owEBbQKS/ZANAwAKAYly9N/cbcAmAcsmYgBhIgH1V4pv+RrBgTmMfewsiWCP2lqqF6kbWCQzkQgf mFzlBb2JAjMEAAEKAB0WIQSlw/aPIp3WD3I+bhOJcvTf3G3AJgUCYSIB9QAKCRCJcvTf3G3AJo0+D/ 9Jz/jR+mz50zVHd7Qz1HuijCsP3CE2am0+KSpb3turLr/DMNZftg1bJZUaHMny9kE5HxKOU7Hw365I +KzZ46ZTSCsYKwyppITdzOEZ8X/Lr6/IGEDb6NdSf86zNTdy+PvM2giYo3xWD9h2wGq/Yfxus5TsqA dsA8ZUz7aPT+In5PBqttwprSQV8R0TibJ17vAUSz8nRloqstcZAkMFi3mmFjwBduSfjcKoXGpBR4iJ eJQrVtIY2J1mFanh4xHcuC07Fad5zIrlnhh3k/JeZvE/5mAEMZ0ovV/VBEvUI7TC74akrzULbSGL7p Ae0AvSGT+zys7+FHAL4TCnQDh1FieT9rO+HrqhI7EJa10sBfW6TucEe3Xyor1dZY+gZ4+4gUHQKUMK cjhgpnGRrvsLBvBgJWJrGKYgW8pKRGwwmmZv87ww1DsqmyN/KCj09A3psEvUzEFhi9Nnz9azNymdHM eIHNPagW3o/kGhkq3WwN0nGkQEnDDtVZa4Z0WslkQt9kIi+2KhhYT/LHNQJaaD6Vimd++nKexjFR4i 8Ed9z2zrtMLgohvCkvIllZwpsILkqj9IX+DelmMyDTbNrVtDH9uUjra2j/J+6V1QWqrvu5vHhEbtbA 1eJNDdy+jCHsMUjTsSnycxghYAyQi0tZfPmJCHv6D6BqvNCkWMvew3qC0tuw==
X-Developer-Key: i=keescook@chromium.org; a=openpgp; fpr=A5C3F68F229DD60F723E6E138972F4DFDC6DC026
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=Ji3zF0Sc;       spf=pass
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

Use the newly introduced struct_group_typed() macro to clean up the
declaration of struct cxl_regs.

Cc: Alison Schofield <alison.schofield@intel.com>
Cc: Vishal Verma <vishal.l.verma@intel.com>
Cc: Ira Weiny <ira.weiny@intel.com>
Cc: Ben Widawsky <ben.widawsky@intel.com>
Cc: linux-cxl@vger.kernel.org
Suggested-by: Dan Williams <dan.j.williams@intel.com>
Link: https://lore.kernel.org/lkml/1d9a2e6df2a9a35b2cdd50a9a68cac5991e7e5f0.camel@intel.com
Reviewed-by: Dan Williams <dan.j.williams@intel.com>
Signed-off-by: Kees Cook <keescook@chromium.org>
---
 drivers/cxl/cxl.h | 61 ++++++++++++++---------------------------------
 1 file changed, 18 insertions(+), 43 deletions(-)

diff --git a/drivers/cxl/cxl.h b/drivers/cxl/cxl.h
index b6bda39a59e3..97a83ba4e783 100644
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210822075122.864511-6-keescook%40chromium.org.
