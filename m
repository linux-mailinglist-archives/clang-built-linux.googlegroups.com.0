Return-Path: <clang-built-linux+bncBCF5XGNWYQBRB57KQGEAMGQENFWCISA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63c.google.com (mail-pl1-x63c.google.com [IPv6:2607:f8b0:4864:20::63c])
	by mail.lfdr.de (Postfix) with ESMTPS id C75A93D809B
	for <lists+clang-built-linux@lfdr.de>; Tue, 27 Jul 2021 23:07:04 +0200 (CEST)
Received: by mail-pl1-x63c.google.com with SMTP id a16-20020a1709027d90b029012bf391b9fdsf31530plm.2
        for <lists+clang-built-linux@lfdr.de>; Tue, 27 Jul 2021 14:07:04 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1627420023; cv=pass;
        d=google.com; s=arc-20160816;
        b=xYJq+JgA04GVc91fsJtIrzWff11XxV8KmdVoSUZBEIewdrxRjtTh0AC5q08rS4z6+3
         Q6qO9H4b6mOj7QGBVU2WNbfXh8i3JT5q6Ut99LemdtkTYT9cZJoJKTDtKVKWDt1diZz6
         EcT/Io/HLhN0DjUoItLMI1OtHxT7JlAqXiFu5MixYabT9z7jFDRzg2PTstNm1X6eQF7K
         Dib6VK2IeyYqKEBwTTOe1bVPwhDnGiywXB8s3IMM4Yw43pFqlF08O2wh7/EdwF/9gRNP
         exvIqPHsLK3EGAAjngybsAfIdqO4Sj4vtSxHM911IpiChtRn0nXMUPP4ekx/gheXYojI
         42eg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=qHO+rybGNQ41hSqexcawQweL+dsdEUJ9VkZe7sn9Jjc=;
        b=FOghyf21+oViEjoEV6Lv+PgOVyyFbhToL+GzljRkoV5XlB4mrEYgbPtA5nY6GTIelC
         h1u0Iv2p7B2ah14rAeA0rmgQMihMfrl6PaMPwxGqpKUDyLlqiAua5mNSp8ZqREEgnmNv
         B/c7Zv2DFpQ/J/FfK6DzKDC0dyLKUStvg/vCZNOM0RnO5VbJO8Y4lGuFaLWjLw3vwrpS
         64x4965ykDtHO6vQsFptzhBDucQ+jfWK+SD9iV12POh5HJ7tVcOkCKjaLnUep7OcvCcz
         FRrdLf/sDSLe7rlpYUDFhU416UKpxkc296L/LseAS+eMobi4efc6a6IArAPkivZwhE0Y
         adcQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=CkfvuUYg;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::62c as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=qHO+rybGNQ41hSqexcawQweL+dsdEUJ9VkZe7sn9Jjc=;
        b=bSyM7XY+ziaX2k1F27toV66uvJFYHEcCFmW/KyvF7j8g1knusO+h5U4/s88Ry1KG0H
         PdjrAZNYKh1S4ZSlPClKxA7NIiJp613xCHCZbUgPeK8HV7pDd+FjiWFjVFwCeJTJthPd
         HEr7suvdkQ900HLEkuyklrcx0I0neHRlQYaEbpZSzKvOVxT4gzrsGSt0wx2cd1Z+1aVC
         LhQd94z6lUZDI06khSANYR7j92AH5XC2mwPpn6a5skhaGR2erfrIUx/i9uTcAzjWiERt
         hjVd9azBflnfZ7BNNrXy5mcrV6EIUMhAeqVgmGXsAMTcGOlW7835NIdAJ/ejc9JNy7Kr
         wvlQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=qHO+rybGNQ41hSqexcawQweL+dsdEUJ9VkZe7sn9Jjc=;
        b=DdTXnII5EppHmSDMQ9VYpqrVYEgappYQNSwouM7BY4nXajbGUol8thfoTdW4YnQom+
         pNPz7xKNk1nfLKcp1k6CSl4oS2Bhbz5gU20sNPsdxjJWnJZ7ItT9EQvtLDfoiJCvLaBl
         bJCR5QtKaod9olEOVeN95yIOzYjUdGOrcTvrOxB5jgAm0JiyrmiE9W7UWvGIjM8JwNtf
         jl5RDvFfiBPOPcJvUqgVGFAnIrHlbj+LrFfYoIEHkWKL2rsMD0mE5nez81+SLDIRO8GI
         /Wzr661ixhx9hB1dCLg1C6m+lLDJRBV72djfzy/TJJ2nikjnYVvQaa5NLS0QXEQZsVGR
         XV9A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530/YjeXdXmf5b0Q31cD7rs+8feLNt9HDNeuxQM0BpZ8i7RDaaZo
	KRz4cYtklYL2eHlfzGqpMF8=
X-Google-Smtp-Source: ABdhPJz7IbXoS0ucJ8DePL1gzKVDym4x5CMPL4dlTM/MyseJriItOp9Mk8p/RATM9stcK5El3XW0KQ==
X-Received: by 2002:a63:2cd2:: with SMTP id s201mr25488919pgs.119.1627420023510;
        Tue, 27 Jul 2021 14:07:03 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:aa18:: with SMTP id e24ls9949709pff.5.gmail; Tue, 27 Jul
 2021 14:07:03 -0700 (PDT)
X-Received: by 2002:a63:4d1b:: with SMTP id a27mr25530312pgb.402.1627420022956;
        Tue, 27 Jul 2021 14:07:02 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1627420022; cv=none;
        d=google.com; s=arc-20160816;
        b=qLd+tB0K7EqT7yO7pxj1O40Jz1FJ8dSASG4dIw+GhrU48YNqRUZHWX86Kt7Z9vPbYf
         lPCa2w1qTxG7qpPywIHgUHQaS2uEqnftEJU5i64/HR1GVS8vD69RwkfOeZC7Kw5G73KP
         ClvZd4uPODnqyQcCXIdxYkOTOaiTFlhPvlCAV08MylTZnBIo4MrIf12i8IDIAPmch62r
         JsGw/ErAnA8zCqQgC4+vqa8D7DMecJrtnuWfOKpwgWuHRHFi1U3QR62FIw7om3ulbPDJ
         B10UcV39Hy9P77lhvxkZGSO/kRfieajfr3f4z+9LG2rYjZAoZ6bsWXhW3zUIAfIkl5Wi
         pgKA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=fCr6M9WVbBxoz5xSZDTLYQZUaixoNhvM1z4ft4/JiWU=;
        b=unXPbupoPP44cjm8NyrXmwgBhnW/nMewFCec/tzZ8jmQRRbEds/YTS2AupKN0JTfRW
         gAnonGVuHWlIlfefqS0t4xgLCT2AAAfsV3tUAQ2qUBeoAkxURatly3Uk5u6l3HophM2v
         CvToanITEbrdD0Bv0oJuMOiSZbM+ZQL0BITlgQK8pAUmlKLD56LDCW5vmMEhcNP8ExFQ
         6ANg3/9/ZGL9lyWQB1U1hfvbsaJCpOytStomOl3D+Xex53TXIaza2FThI2e6nE0T7TVE
         C2XzAC/G+cRooxGft9YzRRa+io/qTVy4AzFLdvzJEtsxSZ61E7/lV7wh2iKDWh41ZEEq
         eKTA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=CkfvuUYg;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::62c as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pl1-x62c.google.com (mail-pl1-x62c.google.com. [2607:f8b0:4864:20::62c])
        by gmr-mx.google.com with ESMTPS id c9si312767pfr.5.2021.07.27.14.07.02
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 27 Jul 2021 14:07:02 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::62c as permitted sender) client-ip=2607:f8b0:4864:20::62c;
Received: by mail-pl1-x62c.google.com with SMTP id i1so1889plr.9
        for <clang-built-linux@googlegroups.com>; Tue, 27 Jul 2021 14:07:02 -0700 (PDT)
X-Received: by 2002:a17:902:b711:b029:11e:6480:258a with SMTP id d17-20020a170902b711b029011e6480258amr20741066pls.41.1627420022747;
        Tue, 27 Jul 2021 14:07:02 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id i24sm3255991pfr.207.2021.07.27.14.06.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 27 Jul 2021 14:07:01 -0700 (PDT)
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
Subject: [PATCH 54/64] ipv6: Use struct_group() to zero rt6_info
Date: Tue, 27 Jul 2021 13:58:45 -0700
Message-Id: <20210727205855.411487-55-keescook@chromium.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210727205855.411487-1-keescook@chromium.org>
References: <20210727205855.411487-1-keescook@chromium.org>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=2014; h=from:subject; bh=9FxEXENVJNuB45fHUbaxMj4hb424u+KXBOvcDXadQUU=; b=owEBbQKS/ZANAwAKAYly9N/cbcAmAcsmYgBhAHOMr1s7rjBnwnV0YvEmCppP2KjiI7qwbNhC0tnR LR54sH2JAjMEAAEKAB0WIQSlw/aPIp3WD3I+bhOJcvTf3G3AJgUCYQBzjAAKCRCJcvTf3G3AJvB1D/ 9HyBVTCMQFZVnce4Q7z9RSSZaLEhmwSMwOLxk45KjDsJAOP3HcDjbkcb2t+AmQxHosaQzMYzJBsPLM fI6MGo8d7iglJul2X+wgatbPcEehYNvmi9N2hSNViixrkSMFXRYD9gNgZxmurHn3poTaQBFJeH/CMt i0K0Mf9xJLh09ZTUaBEMkeBp92msj4wB0UzT2YgQVbRBg/2h2H9tSdBS7ou3xC8W1K4gsOB+p8y9Z9 E6xK8yOM9010RaqlQJ7Xwiw/qBjEzM4v6/BvFKOfF7nbprnDsEcm1n3uqkj3PJ0XdUXpvHAc5ObsoB KO/0wpq+dvC4caLYvsafIZqOaz3hLgcDlRNbqQtK2sC08guGWc1MHoTfZoyOpPcsvKpv6Ez1ugjb2i pyJ0WkxY6xI4NtO334xyOlpSXADvHv+yqhiucaHger+9V1z3cVGZWQJMnpNFHTjqetSkyOaPhGCfT6 eygtBdkni37ipeLcPOAVtXgZH4iuKxdilblIEAG1YqFqpciOhCgtYiCt3itR4hpyhJp61nLn2XSysU lMIbYdUyBQlmwsWY79F0ezh83tePY6wggdyAujypUrGKiYTgTpH817kU7KBH2AB7YhuYQevj9FEHhD B/H1yY45d73/j38Hw4+briFVcL4khdU1nni0efnXIAMBNb0nJPEsOcf21O/g==
X-Developer-Key: i=keescook@chromium.org; a=openpgp; fpr=A5C3F68F229DD60F723E6E138972F4DFDC6DC026
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=CkfvuUYg;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::62c
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
field bounds checking for memset(), avoid intentionally writing across
neighboring fields.

Add struct_group() to mark region of struct rt6_info that should be
initialized to zero.

Signed-off-by: Kees Cook <keescook@chromium.org>
---
 include/net/ip6_fib.h | 30 ++++++++++++++++--------------
 net/ipv6/route.c      |  4 +---
 2 files changed, 17 insertions(+), 17 deletions(-)

diff --git a/include/net/ip6_fib.h b/include/net/ip6_fib.h
index 15b7fbe6b15c..9816e7444918 100644
--- a/include/net/ip6_fib.h
+++ b/include/net/ip6_fib.h
@@ -205,20 +205,22 @@ struct fib6_info {
 
 struct rt6_info {
 	struct dst_entry		dst;
-	struct fib6_info __rcu		*from;
-	int				sernum;
-
-	struct rt6key			rt6i_dst;
-	struct rt6key			rt6i_src;
-	struct in6_addr			rt6i_gateway;
-	struct inet6_dev		*rt6i_idev;
-	u32				rt6i_flags;
-
-	struct list_head		rt6i_uncached;
-	struct uncached_list		*rt6i_uncached_list;
-
-	/* more non-fragment space at head required */
-	unsigned short			rt6i_nfheader_len;
+	struct_group(init,
+		struct fib6_info __rcu		*from;
+		int				sernum;
+
+		struct rt6key			rt6i_dst;
+		struct rt6key			rt6i_src;
+		struct in6_addr			rt6i_gateway;
+		struct inet6_dev		*rt6i_idev;
+		u32				rt6i_flags;
+
+		struct list_head		rt6i_uncached;
+		struct uncached_list		*rt6i_uncached_list;
+
+		/* more non-fragment space at head required */
+		unsigned short			rt6i_nfheader_len;
+	);
 };
 
 struct fib6_result {
diff --git a/net/ipv6/route.c b/net/ipv6/route.c
index 6b8051106aba..bbcc605bab57 100644
--- a/net/ipv6/route.c
+++ b/net/ipv6/route.c
@@ -327,9 +327,7 @@ static const struct rt6_info ip6_blk_hole_entry_template = {
 
 static void rt6_info_init(struct rt6_info *rt)
 {
-	struct dst_entry *dst = &rt->dst;
-
-	memset(dst + 1, 0, sizeof(*rt) - sizeof(*dst));
+	memset(&rt->init, 0, sizeof(rt->init));
 	INIT_LIST_HEAD(&rt->rt6i_uncached);
 }
 
-- 
2.30.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210727205855.411487-55-keescook%40chromium.org.
