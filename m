Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBGXHQGEAMGQEWCCJWRI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x937.google.com (mail-ua1-x937.google.com [IPv6:2607:f8b0:4864:20::937])
	by mail.lfdr.de (Postfix) with ESMTPS id AF9B43D7FA2
	for <lists+clang-built-linux@lfdr.de>; Tue, 27 Jul 2021 22:59:07 +0200 (CEST)
Received: by mail-ua1-x937.google.com with SMTP id b11-20020ab0238b0000b029029fcd5f3ea9sf213826uan.14
        for <lists+clang-built-linux@lfdr.de>; Tue, 27 Jul 2021 13:59:07 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1627419546; cv=pass;
        d=google.com; s=arc-20160816;
        b=DyvveHTqvXxJzKlZ1HvPyKZRdVG8MUWUKJVNAcia2/5OJ2XrGp2VULHqg32VuhtvRj
         FmSNIG43SgYGpXurTlIGkYrGasVySvf6Kj6k8BDf661i/4ntfeDRVWvL6ODl4flOJh2h
         46amPpGtmlpSdz/WsYm+60yoC51syvaPXDH+J0n3rXjpS6pw65DBiNGAz3QunXjT9/q/
         f+ZeK/PTuRu7WbciicvZm0u1ymUr12mjEod+xJGIY6wivyIVhYyrpwY3OzX7QMgRJndB
         souJHq2ML9eAnio6++bDMCIFy5NrXttSZTlIKjZa+69fKMP/EkY01/yf068CulD0JjHZ
         i8mQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=w0Tj0KPnnT7PjSzFn07aDutwrBv5BVnuVoCs5Hl0WIs=;
        b=ATBRT/oENkxWei+2GP9l/vdXYYjrbkFZz9LFkQroGD7B/OQ5yqoCJwmUwc/e33CPtR
         AI7nTexc+35OaUemQszLn6fcYL7UNDLmK3JDVHRx02dL0Ym3chJL4xIacKJGqE4UR2T7
         IqqT/FsaLb0PkUiCxBJCezrU5RbYj1FT1umzjllkqByvSrd2jhfvPovVSAdVzw8M+F+G
         aPXr3SJ3/12UP5zZq/bHfQ+tEhCptV3O8P1d9VUujCED+O6+cc9B+6IkamHqw22hBJ8E
         MOQXq9/pMMMW8jJAMUeQydcKQTASTgf4UWbwF8aHbm0Ul41E0IRFGlYR1N90FR9YtoxV
         9mYg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=SDf9ocit;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::102d as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=w0Tj0KPnnT7PjSzFn07aDutwrBv5BVnuVoCs5Hl0WIs=;
        b=hzh4t7RBCnK+otQ/pP+K6rU9Qk9SuQsl5QuvI37IFL2HU+xRsy/LXrk8IhNz5HEVAC
         2Bzp5Alw8AUU6FYfM//e31BAQqrTO5MsqEloPlrKAg0M268CmJblYVH2IAip7aRLDZ06
         kq35vTRe15rFKYszmjIO72aQfYtcoNC4rKGdlgYjQRM81TSmrwUI3kXcTi+k95BumQwv
         7EV6AaP08+B0aLmqqIdC5sv6V3zmUlRRPgzyKAQPAtNsuUanKilsC1dqA79EOPjbwlC8
         zJMlPIsQo++9jJzq3R7XKBGkCxE2B4pjr6VQEF1FcvbGySts30ohDJmxOf9Xhlw7pBEz
         iTvg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=w0Tj0KPnnT7PjSzFn07aDutwrBv5BVnuVoCs5Hl0WIs=;
        b=DlNT1xBZfEBMblY30fO8SEcCrDdLqLDkIvce0wAifBDfx/fikDdcId1zABY+Jl8e9Y
         S4dbjQLJZDX1a5jUKiEjuKEPeEwKvjNZvQntFL9Ibrj2980anZGm/xieT2EQVA0/gLK6
         uYl7/TvOfPo6FSeYLphPsMiKSUgj3NR7QYO1Db3vZdIC86ijCDITIpIgfb6Nyu7RB3vW
         wqSpIKTlQtPGEKZuXkSQL9ptKYEWr7GyidH8AOlqF6M7+ze2gAhHt8q5t6tv9yfnryMz
         wNlV+l5N79mRgzfUzKLWfUu3ao0xNrhio/qBx+JuUH8qATLVSLv+cYVT8jTZleouRYyQ
         BxyA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5337AxtLVUpDr2fCz8TnUA/f8KAJh4jW/TH8gOA4rY1lNAN6aSO/
	3tfzPapnwXrmxSVtN0uJwFE=
X-Google-Smtp-Source: ABdhPJwKsbsKnrFlm1IljMBOcfq9whxlHfI1tkBXHLqvSJy+D/YCVZ/EGHKrsJmn/gowDdHXxRYaew==
X-Received: by 2002:a05:6122:d83:: with SMTP id bc3mr16113219vkb.3.1627419546782;
        Tue, 27 Jul 2021 13:59:06 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1f:ac42:: with SMTP id v63ls1197vke.4.gmail; Tue, 27 Jul
 2021 13:59:06 -0700 (PDT)
X-Received: by 2002:a1f:3651:: with SMTP id d78mr3182457vka.0.1627419546060;
        Tue, 27 Jul 2021 13:59:06 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1627419546; cv=none;
        d=google.com; s=arc-20160816;
        b=Gq/j0q5gfRgMXiWhgUOG4oBIRw6Re0jv1PbLXawpROELq9CWsRXGH7gfv8rRrAa3jN
         nRxERXN0VszLxPvUAO+lPlJQ4AQur+J2m3oxhzKnrYiI2XOqsWtEPg8wN6iU8fP0bhGb
         knop82N66wfEIF87jZlr777+/I84YbCWu1bnV/FcL4HeV/RT6kK5F7+xljsjS9TDLxNP
         W1XCzBUaQSloZ/6jA7ImZyyutdtxjeRtqof2Z8i1mdSmczw3PByVN03ThEzhvQAzwKW5
         2B5odnjjNlUmFJS8qjeAMPL/yEB88BBeWiKsER6HJCAjKt7eu/EZ267pcHD1UEyBdTuX
         EF+Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=iuUva0FySkNQOcUDbwdlW2WIxXp65/YwLJggvLs0d2Q=;
        b=TCh1+JMjHmh3ZtCb0ZFmxNnuJOLlp7UW9ubRo7A9jc4vAEYUacV4rqD2aHDjN53gMQ
         88+5JmLDY9bH9pV+FmLxzU0WwFc55GITfk7HNuw0NmMWlcLReCO8UT1Ga+VBA5HtnYML
         JkaeGF+fsMH9QuT9mcjvIChuqchGgjxX/AB6LDs7nhyguWNua3AAB43QnVUdYVON1mv4
         CBZL1PSMNyp3AQLKdwwzhqFeHi95wk4IT57pjhOfxk0u8NbtQVrcu85xcemS3qtic44j
         fvDIBDSMjx4mtrGIjgaybYWMRdstMZLdznDwM+zfH63nQAIM7hujaFJ5OGU8Z6eJveEY
         YLmg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=SDf9ocit;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::102d as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pj1-x102d.google.com (mail-pj1-x102d.google.com. [2607:f8b0:4864:20::102d])
        by gmr-mx.google.com with ESMTPS id i21si484887vko.5.2021.07.27.13.59.06
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 27 Jul 2021 13:59:06 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::102d as permitted sender) client-ip=2607:f8b0:4864:20::102d;
Received: by mail-pj1-x102d.google.com with SMTP id a4-20020a17090aa504b0290176a0d2b67aso6631915pjq.2
        for <clang-built-linux@googlegroups.com>; Tue, 27 Jul 2021 13:59:06 -0700 (PDT)
X-Received: by 2002:a63:44a:: with SMTP id 71mr25103040pge.259.1627419545742;
        Tue, 27 Jul 2021 13:59:05 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id b10sm4629437pfi.122.2021.07.27.13.59.03
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
Subject: [PATCH 05/64] skbuff: Switch structure bounds to struct_group()
Date: Tue, 27 Jul 2021 13:57:56 -0700
Message-Id: <20210727205855.411487-6-keescook@chromium.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210727205855.411487-1-keescook@chromium.org>
References: <20210727205855.411487-1-keescook@chromium.org>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=3898; h=from:subject; bh=zDRFvFHICr3CPhHUYpPjYfgsT3sRvZztC648O8M/Z+4=; b=owEBbQKS/ZANAwAKAYly9N/cbcAmAcsmYgBhAHOBpvR1C53LhaWwxonGRaK5/85L2Hs7G8ZVB/N6 FPHA+JWJAjMEAAEKAB0WIQSlw/aPIp3WD3I+bhOJcvTf3G3AJgUCYQBzgQAKCRCJcvTf3G3AJq8YEA Cme+/3zGc1ol3V7MYHOv02AJS8eYSYvP56YPTN+IWhbG/R9iao0T79B3njP05AdYDQ/YzSVZFyf/nM dA48kevzTJQ5BH6U98ciGMAoiY4MhSCxDjxpggkoOLHCkKWSmCLxIFysdAaSpZoavbJiYSBCDvceLN RiDHeuN7xznxcDnJd55tsJ+s4n3qET0tTBt0l2kGnVjwvTSyzmILuKrvcWemv1D0RVYiX+E2jt99TI xBdZECNgLTvRPfaECNOE/oYadRe/oj4m0V1SGwAAc25mY74Wuw87dVvp6r6XamWTMVynN4sRe1Au0l ZqV6k+AJMT52RN/mXQfd19TzgH+9eLex0ywIpeVu7Wc7KOxzgkA7tN9HjgNuY4CRUVFKbPReaMQdus vwUmDgDCcu9Dx0l4QzTYz361oipSEVY20vjIwEsR6yog6nyRGOYLp1uAmwh9xz2Kp3fv2XoaAzZXR2 I0ceyOT34//v3kbI8cZDJ0fHg0ntu/bSopVzECOxn6N5NUgkRQDKgdk28qyMDnLCU3wodi4dVaFQGS knqS45LxCRnyHOiKsBXLi2kVHORjmVCZ5fuyRrq1JDcWHgY3T3Fb/Pf8qql4TTPlb51tmVciwA7mKN nveG2L2Sw3sIt442QEpUEQ42yM7ri+HBQuuh4OsJ/a9P5DszIHRUcnJVBWcQ==
X-Developer-Key: i=keescook@chromium.org; a=openpgp; fpr=A5C3F68F229DD60F723E6E138972F4DFDC6DC026
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=SDf9ocit;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::102d
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

Replace the existing empty member position markers "headers_start" and
"headers_end" with a struct_group(). This will allow memcpy() and sizeof()
to more easily reason about sizes, and improve readability.

"pahole" shows no size nor member offset changes to struct sk_buff.
"objdump -d" shows no no meaningful object code changes (i.e. only source
line number induced differences and optimizations.)

Signed-off-by: Kees Cook <keescook@chromium.org>
---
 drivers/net/wireguard/queueing.h |  4 +---
 include/linux/skbuff.h           |  9 ++++-----
 net/core/skbuff.c                | 14 +++++---------
 3 files changed, 10 insertions(+), 17 deletions(-)

diff --git a/drivers/net/wireguard/queueing.h b/drivers/net/wireguard/queueing.h
index 4ef2944a68bc..52da5e963003 100644
--- a/drivers/net/wireguard/queueing.h
+++ b/drivers/net/wireguard/queueing.h
@@ -79,9 +79,7 @@ static inline void wg_reset_packet(struct sk_buff *skb, bool encapsulating)
 	u8 sw_hash = skb->sw_hash;
 	u32 hash = skb->hash;
 	skb_scrub_packet(skb, true);
-	memset(&skb->headers_start, 0,
-	       offsetof(struct sk_buff, headers_end) -
-		       offsetof(struct sk_buff, headers_start));
+	memset(&skb->headers, 0, sizeof(skb->headers));
 	if (encapsulating) {
 		skb->l4_hash = l4_hash;
 		skb->sw_hash = sw_hash;
diff --git a/include/linux/skbuff.h b/include/linux/skbuff.h
index f19190820e63..b4032e9b130e 100644
--- a/include/linux/skbuff.h
+++ b/include/linux/skbuff.h
@@ -800,11 +800,10 @@ struct sk_buff {
 	__u8			active_extensions;
 #endif
 
-	/* fields enclosed in headers_start/headers_end are copied
+	/* Fields enclosed in headers group are copied
 	 * using a single memcpy() in __copy_skb_header()
 	 */
-	/* private: */
-	__u32			headers_start[0];
+	struct_group(headers,
 	/* public: */
 
 /* if you move pkt_type around you also must adapt those constants */
@@ -920,8 +919,8 @@ struct sk_buff {
 	u64			kcov_handle;
 #endif
 
-	/* private: */
-	__u32			headers_end[0];
+	); /* end headers group */
+
 	/* public: */
 
 	/* These elements must be at the end, see alloc_skb() for details.  */
diff --git a/net/core/skbuff.c b/net/core/skbuff.c
index fc7942c0dddc..5f29c65507e0 100644
--- a/net/core/skbuff.c
+++ b/net/core/skbuff.c
@@ -987,12 +987,10 @@ void napi_consume_skb(struct sk_buff *skb, int budget)
 }
 EXPORT_SYMBOL(napi_consume_skb);
 
-/* Make sure a field is enclosed inside headers_start/headers_end section */
+/* Make sure a field is contained by headers group */
 #define CHECK_SKB_FIELD(field) \
-	BUILD_BUG_ON(offsetof(struct sk_buff, field) <		\
-		     offsetof(struct sk_buff, headers_start));	\
-	BUILD_BUG_ON(offsetof(struct sk_buff, field) >		\
-		     offsetof(struct sk_buff, headers_end));	\
+	BUILD_BUG_ON(offsetof(struct sk_buff, field) !=		\
+		     offsetof(struct sk_buff, headers.field));	\
 
 static void __copy_skb_header(struct sk_buff *new, const struct sk_buff *old)
 {
@@ -1004,14 +1002,12 @@ static void __copy_skb_header(struct sk_buff *new, const struct sk_buff *old)
 	__skb_ext_copy(new, old);
 	__nf_copy(new, old, false);
 
-	/* Note : this field could be in headers_start/headers_end section
+	/* Note : this field could be in the headers group.
 	 * It is not yet because we do not want to have a 16 bit hole
 	 */
 	new->queue_mapping = old->queue_mapping;
 
-	memcpy(&new->headers_start, &old->headers_start,
-	       offsetof(struct sk_buff, headers_end) -
-	       offsetof(struct sk_buff, headers_start));
+	memcpy(&new->headers, &old->headers, sizeof(new->headers));
 	CHECK_SKB_FIELD(protocol);
 	CHECK_SKB_FIELD(csum);
 	CHECK_SKB_FIELD(hash);
-- 
2.30.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210727205855.411487-6-keescook%40chromium.org.
