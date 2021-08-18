Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBQOK6KEAMGQER63RZSI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf3c.google.com (mail-qv1-xf3c.google.com [IPv6:2607:f8b0:4864:20::f3c])
	by mail.lfdr.de (Postfix) with ESMTPS id 693843EFB9A
	for <lists+clang-built-linux@lfdr.de>; Wed, 18 Aug 2021 08:14:26 +0200 (CEST)
Received: by mail-qv1-xf3c.google.com with SMTP id t3-20020a0cf9830000b0290359840930bdsf1535305qvn.2
        for <lists+clang-built-linux@lfdr.de>; Tue, 17 Aug 2021 23:14:26 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629267265; cv=pass;
        d=google.com; s=arc-20160816;
        b=pIUJSoXrugTLNrHNEJ2V1dishLhKJMtvJmkJJ9Rm2hh3VN9Alnf3W7GfTzrPzvUK24
         V5DhJKaDjqQiT8Mm/8WNgnGbrRSIflFI+joCPQKGWvGz1WFwG3d4cWkdMXmzTdR4XS7x
         9Ql2fuGuOIHutHR4ucKIaDr304veM1rhqgZ0sovgf3mN8X8yGej1CmzWVlHuAynY6BXu
         AvcRDgkcGq5+AhePl8lkbMPDytetbpuSglgra05vpbk2j4XS5fINSNJI8gdemPq3Vh+w
         SWRjVtVZo9ejoAA70UHhFXGD8LhwpPNJ7SCyzJWhRTSrl+zO/+e6mUxXRf2aYiswMnoc
         6R3g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=l/Dhzu/qz/oy4+48lUc5SWIiQKvmEGj1ADDehdEGnXA=;
        b=pQamFYWCkCHq7RB5KXyXy1n2K1HcGuNkviZell/PGp90XJiDaaATs7nxD/TkZrdoP7
         gScv+CJpvO1lciV7zFeQtsablZ+q3aKmearq9GbmWH4m/M0EudeOjqxAWiJg8aHtvLtm
         p6wL4Z8fgN5c975qIPT4aJs+4sPU+W5DKsCvj4mvx1VbeNQ+xMFycIcZYEot+17ve2hg
         f5kygivXqWEp6adc8+9277iTd2BgLFyFbekGVi+QJ3nZf1ZsqUd1JJi8MIIsO7AdzII1
         uu9hxs5RwxShoZCvLCYAwXcCkqBCZCSNGxXUlxX4RSQx0XcYnZaNJ8aMEeqGfmuNt1zg
         wf/g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=eDnWZw9K;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1036 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=l/Dhzu/qz/oy4+48lUc5SWIiQKvmEGj1ADDehdEGnXA=;
        b=Gu8qlXxT+AL8zq/9LRBrDiC3oNz4xXbyH7a6SPoTS8Ed1Yz5uhvdvT8IfLcDMXmCJ+
         bl605hD/bzv4ricaKX1RJsQP3XFmdeazXcn8DPjxg0Yu/UcgkUc4EfykeGqU9OofbaJ1
         siGoKYFUi7xfM9DDKS4BJTCIfqCw0/2HWV7OG2DHY8kiqdNqfmtIS4TY2zCrNYMM5++9
         NF3GksKVoNAqyztiaqOahDAk9D9r5b9o5h6YCWmDttPVyBrNr4fhhxmuU9MTr5usd36B
         j7AQ9qIyj70M++qSt9F6abOHREm4/4LZeMQRmSQ/jIrtez8t93Mc1CQ0eBu3RIlWx0du
         rbrw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=l/Dhzu/qz/oy4+48lUc5SWIiQKvmEGj1ADDehdEGnXA=;
        b=WXPY8vuQ4fujhL77+aY8NLwy5/1MycrNJ2L8/djBQPlmkb2OKkAS/ugH9bdZsJQ1Sd
         f2TYVegfXt4Rg3cx0OuD6pNLhfaBVYmck++B2LPcYxEC/Ag3GXZ3DI48AhfP0oq9k57X
         P/G31I14i3J4ba75NFuTTsoEzAQbdlMzfjmJi6vEVIcQObamBgA8fzKRW6bCoj2FBdZS
         BAOZ0HkzlUb+AySdcsXWBWc3ps64o9E1rHCJajkgMWRE4Rtm9b08cbBuvPWeHfVQmvCU
         QhsYLf30wfuPYIbEyqmibTMoEjZid1cuclEcFlOnEwgpM6G/jj4/O3ILiLvME80iiQ7A
         8JUA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530eY+/jjvENhr3YH8ok3JufDqByGeH3DTtvAumnYtAEWpjTEK51
	vpbTP9ppm5YFQJZoVDv6Fbo=
X-Google-Smtp-Source: ABdhPJymKD3ZxiIsmbWpyg+xrkFsEaJduJ3JPWsjinJGuhiGBGTxZXYpcDOnbNzLW1XpZrvf1ubiYg==
X-Received: by 2002:a37:2754:: with SMTP id n81mr7844715qkn.297.1629267265577;
        Tue, 17 Aug 2021 23:14:25 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ad4:4c12:: with SMTP id bz18ls331683qvb.6.gmail; Tue, 17 Aug
 2021 23:14:25 -0700 (PDT)
X-Received: by 2002:a0c:ff4b:: with SMTP id y11mr7413435qvt.50.1629267265114;
        Tue, 17 Aug 2021 23:14:25 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629267265; cv=none;
        d=google.com; s=arc-20160816;
        b=ysqG7Vcd3ivF2TaqOdFX6wwqixkwu32Xb5h/JY73SnB71QcW61TedkV9VMt4pmlAfQ
         dOxJNhhXP6jW2Y5vxWBIRuurZni6kowL5qMvnN/7oZbgLqyvKnK/8HcnjScrldzVO9+J
         8bELnBMvy6wPYMQB0eFx1WLpK18ye5bukOXqTWOWd0aONIetXOsM/ihLYdO3HyOf5iwF
         4zVT7JutR39o4nL/pyHN+Tm1MRhTug0Utf9BvEksaWZ8p1xErSmTMhZiLSvML8jeaNrE
         bQcHC4el54WmcuN32hzksP90NTLylWeehfvQHl+OELenGv56O+GwLQU69TY8lbhYTpdn
         fJ2g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=xqHRpTF29XKCvHESFQ890ZRLt8tV/z5c3XHhrLDSkrI=;
        b=F3NmFXHu6U0kxgPgF6JyWQbDyPL0H8w4WA6juWLBbZ8Eac5XmeBqbEq3bpxPu9rdM/
         H94T0wmneZgtREKpj7x+fWWIyXVxG3eDxBnbR3961RJ7nICdodUQlwdPGNlUAA0DhMNU
         tl3FexGIZA1WPvdOjGJgNeBQQ9qALM4mk2VZyQaRZ5nz2Vqtg3PYpxssG93UypFGQhwF
         6s0yU7X/a0LXzYa/lRb+gzo2f2C0mIPVKH4mxLcFvDgfD+bDRizLOq2xN/V0CDEafkQX
         IXX2gALPX9m8mVJ5HoOac9wjkBY85XcYLERC0J2Q3ml1g1021YCxoYHuws/tKCvtUN8G
         q8/w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=eDnWZw9K;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1036 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pj1-x1036.google.com (mail-pj1-x1036.google.com. [2607:f8b0:4864:20::1036])
        by gmr-mx.google.com with ESMTPS id i4si376209qkg.7.2021.08.17.23.14.25
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 17 Aug 2021 23:14:25 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1036 as permitted sender) client-ip=2607:f8b0:4864:20::1036;
Received: by mail-pj1-x1036.google.com with SMTP id om1-20020a17090b3a8100b0017941c44ce4so8203766pjb.3
        for <clang-built-linux@googlegroups.com>; Tue, 17 Aug 2021 23:14:25 -0700 (PDT)
X-Received: by 2002:a17:902:cec3:b0:12d:92c4:1ea6 with SMTP id d3-20020a170902cec300b0012d92c41ea6mr5883424plg.36.1629267264338;
        Tue, 17 Aug 2021 23:14:24 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id u10sm5718071pgj.48.2021.08.17.23.14.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Aug 2021 23:14:21 -0700 (PDT)
From: Kees Cook <keescook@chromium.org>
To: linux-kernel@vger.kernel.org
Cc: Kees Cook <keescook@chromium.org>,
	Steven Rostedt <rostedt@goodmis.org>,
	Ingo Molnar <mingo@redhat.com>,
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
Subject: [PATCH v2 50/63] tracing: Use memset_startat() to zero struct trace_iterator
Date: Tue, 17 Aug 2021 23:05:20 -0700
Message-Id: <20210818060533.3569517-51-keescook@chromium.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210818060533.3569517-1-keescook@chromium.org>
References: <20210818060533.3569517-1-keescook@chromium.org>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1037; h=from:subject; bh=tJ+Y8mubd5vChiEdKyhrwIAPkGIRLmuKu7c5cVoFF8E=; b=owEBbQKS/ZANAwAKAYly9N/cbcAmAcsmYgBhHKMpD14ogHSXr5bFvuUHYu3T5qJe0zYALPCZMtZa BMo6QAuJAjMEAAEKAB0WIQSlw/aPIp3WD3I+bhOJcvTf3G3AJgUCYRyjKQAKCRCJcvTf3G3AJmAwD/ 0a3+zKByTlHW7da31ew04MLWM2GyDtX5IWTWqZsa8eYoXbBB5X7LZRQLJ1vlQZHRLhepR9ZpITXmne EiQC9Yi2RCSGHYXs1DT8c2kWev59MckO9Ru6PbJsXCCCEtTQ6DMpe/Jx5fGA8+6uai2MdlkbPr1hcJ pBSeJNFQs0Pv1vqmL283XNUPLYaVRRlPmA9Gp6u3cYUEC+MvJh//1ksZAZO4Nyg2WQnN8olRr3f3NE /FPwlpkC0jjYP6MOJqAsGXQsShWeRQihUK27+fSMl0qP0sQvOypGdnWB5Xt9pHnrb59B+NoIWV3usD tlUXL9PjYEJYMDWPQTUUNPBMZZKOHI+48wGm37V+dXOW7TWP6k1ZaORRpaSbK4ePyA4y/UOyFr9kg/ uCpCZQbVxO0XsyHwZnPxyR0ffSAr5pZsGQoIXVSdGOiCT/l0l3GHYuulIqOqhrbldUvZjy3etP7MiI hx1VUn4EjkhIMB8HWOeouTN9VqnOXsp0Uoh3nMHIAOMLkJS8l1ptPjxUjAbP1ZRctjIKVTGS6xk+Mc BWlhshbZH64vEGQ9HoKgHm6UlwyYt5R2mkzOSjk0VSY4jGO4wg5giXsw55wRe6w4igcWbd0lCpFOWG qRUJgP1YlRnTAtp59niaAQ2aRXBKcpue4WIdo6iOcrFKIwc2EolBb7yDoGAA==
X-Developer-Key: i=keescook@chromium.org; a=openpgp; fpr=A5C3F68F229DD60F723E6E138972F4DFDC6DC026
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=eDnWZw9K;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1036
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

Use memset_startat() to avoid confusing memset() about writing beyond
the target struct member.

Cc: Steven Rostedt <rostedt@goodmis.org>
Cc: Ingo Molnar <mingo@redhat.com>
Signed-off-by: Kees Cook <keescook@chromium.org>
---
 kernel/trace/trace.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/kernel/trace/trace.c b/kernel/trace/trace.c
index 13587e771567..9ff8c31975cd 100644
--- a/kernel/trace/trace.c
+++ b/kernel/trace/trace.c
@@ -6691,9 +6691,7 @@ tracing_read_pipe(struct file *filp, char __user *ubuf,
 		cnt = PAGE_SIZE - 1;
 
 	/* reset all but tr, trace, and overruns */
-	memset(&iter->seq, 0,
-	       sizeof(struct trace_iterator) -
-	       offsetof(struct trace_iterator, seq));
+	memset_startat(iter, 0, seq);
 	cpumask_clear(iter->started);
 	trace_seq_init(&iter->seq);
 	iter->pos = -1;
-- 
2.30.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210818060533.3569517-51-keescook%40chromium.org.
