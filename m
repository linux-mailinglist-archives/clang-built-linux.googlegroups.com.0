Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBTHPQGEAMGQE4LNYUMY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3b.google.com (mail-yb1-xb3b.google.com [IPv6:2607:f8b0:4864:20::b3b])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F4A73D812A
	for <lists+clang-built-linux@lfdr.de>; Tue, 27 Jul 2021 23:17:01 +0200 (CEST)
Received: by mail-yb1-xb3b.google.com with SMTP id t101-20020a25aaee0000b0290578c0c455b2sf195088ybi.13
        for <lists+clang-built-linux@lfdr.de>; Tue, 27 Jul 2021 14:17:01 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1627420620; cv=pass;
        d=google.com; s=arc-20160816;
        b=WOHORye7x3AF7u7i0Kfm74RFE4sqD3P8N37DyEYjM+RY8JwHYSd+2gdDtnUUvbPNZp
         tpPv89TampBRegk5HVWwg+Qp0GGOkqUV/qG5RS3eOmrjWG3fendMfYv6Zu+OQi0apG2H
         K3x+wZQXL1Hv6dD54Wrl6MC1VMs4VFuA2xMSO0MmCVkUs3zkgK5xL4bRpuMZ+jJER4Te
         hD0s2Buvyh3lf/7qAp1SQh0WPD+MErBXPpn/tLl7G0LesYrObYDq1JmQh96TxDoisbNC
         /+AHklM0UWwEwRgBGghmoudmwBBqkcfEy9l3wdBwNZsvUhcFaJ+5atAsRH4/c7ymPdIh
         0s6g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=102o9NtNtk76tH4srMpSpT4ojwrbD+6e2qShMQ2fRJU=;
        b=prl/C2zVuPZE5qR2rspQr+XyezEH87a6BCyTtpytZNXBZC7SE61IXr3pV56vYTG/h0
         mtS3pLRK0U6CDVupbxcr1ZnExFAGpfdXLV+jl7MYI9gapxywSxGA0VnkSX2hEKqKZyEv
         2DER3fKhnA3oodSKjdLgIhaGImkFlUh9Ru+G/+x3TaqV84ALDzhZaexeHPl1sU1SoEyW
         0XNGHH/l7/2ac6mrMdCK3Ec210vfxJytcz4e/VYPrtdSQ2HohJTKLQtGIZSbj+lLALRH
         3X3708/Beb4URGJDlMCHHXgjsksIk8pws/ElMR9L0yeHpgU17idzwlIEBqd2hm4ewmq8
         SuGQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=Urt716jb;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::62d as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=102o9NtNtk76tH4srMpSpT4ojwrbD+6e2qShMQ2fRJU=;
        b=lrLdwrNgrsqZ2QHQ8qLq1au2JghZZrZGAB/4YtYebFtdb1ef1U/LZjagULvqpr6/53
         qHzQdif79olt2X96j0GFvvtwLINGDNAyB4zX82nI6RrfF1m/7w4hUHOjFCHFKXJr0hgQ
         CmewucKNj61+zJhlkA9h1PiD39lyIkau1i6aESjvlEFFpFaImzx0XHPMDreo6/KtASGp
         m2N9es5/3ZldWaTVzctWx9bJ4qmWFJ4HuvdCrP9IfuWmxtJyy8n2SQBXYec5z2EvsKbc
         jsTrpo3lYIjHkMq2nvkiZyRneyo1gLgIhbn8lKj4pmQlR4PGn73A/Qd5hevb+hxGuIHC
         Iy3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=102o9NtNtk76tH4srMpSpT4ojwrbD+6e2qShMQ2fRJU=;
        b=F2oMv9lnqsY3iyMg26uNwMHOd5M58mqQ6lV0GmXI9rZlpfCf6utkDbloy5wDaitQT/
         dJb2ncirXEhSle5eFWD5o9VsT5ZCcPfEJln6w8HeNAXF+popgc2HQvRT4JFr3NaeCiE6
         B8rzDgu7g+K4YQOJIWyQm358c7Hrxh/StPAJspT5MVTLBZMcb0ndAud7RpJZh5hX25S8
         Wd/XEwnHwTwzBmOYpHpDrEMn9uC4zosNjJn5N5lZm6k7up6Iq683i0CziFWrewyvc7hX
         NHakJWPjAdjODL89jd47wkAovQsw21M08XIr6HUkYFDq2VDitXwgnG5IKMedQsSkKyzE
         tnpA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532MssPUbUPH97i/w0/xHm+HOrn4YV9SDL2M6yyzHwgKFwyuJ2uk
	3wIqMJ+XhOJhSnrKgzFP12c=
X-Google-Smtp-Source: ABdhPJwf5FU15AWbMOi3bL1P7xrEpUzefPpJaMjQre3/n3O+QhZSWx9uECiA8nOe7YzscSW1Wx7Y3g==
X-Received: by 2002:a25:d683:: with SMTP id n125mr9874318ybg.113.1627420620648;
        Tue, 27 Jul 2021 14:17:00 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:7bc7:: with SMTP id w190ls140598ybc.2.gmail; Tue, 27 Jul
 2021 14:17:00 -0700 (PDT)
X-Received: by 2002:a25:bc05:: with SMTP id i5mr19388540ybh.130.1627420620197;
        Tue, 27 Jul 2021 14:17:00 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1627420620; cv=none;
        d=google.com; s=arc-20160816;
        b=tCXbfE1TKq5noEOfKqRmTOPetT1S5eM2c9iIhMjvCkzDcRuntdNmS9CTrdHdPOYQ6V
         KZekYzCZ3QY8k4jGGGkwMWq8ELhlUxMac/8mUX9vcDG6XOiIjgq6jsMu4Gd7Wm1jcr1g
         OU8gcHzdpigffR3ZFIyEUOcOeZSryG6ox551BCC2i2ZXD7aXidr0B0wORPDiQyPgulLi
         zgCafxEXLuTMj5YV96R5aeyO8FlUk6fa9fr3131KQ4vKaLe+bYj3cPFCLMTB04c8Dk2u
         lkJxpczoe1qQzizYb3oUcMds3JRwDT0lhvPWWzRUoYikkNbFVE0OCy5cH6E1svItzy/w
         B4Qg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=vRgb1VJvkR4TxUQ9j5wT6NQOJVualZe/N5ucmrpwcpM=;
        b=LM7hXqLILmMkETsqAYkR4fXhOQhC9kX32FedbbrNut8m0E1usw7bs73oJBSH+jInQR
         1GdhBM6u2iIvXQGw3nt7Q3KmTEJ7fIYqaNnalL9oCMr2UJZg+cYYvPBseV6WzXLCPXEA
         pXJ4WQPqVeOCKM6eh86X7Q9Wqi130/+YpKQC8YYu0vb4NRQOwltzbmXLQ+mTBfCEwtcG
         UapfhdB60L/hYNwQi1eU5lcSdBol9M/g0LnQyd7cpVfWiI/SMaxmWsKw7zU/NNcik7k5
         5/BHuJ1ZHgzqTctv9A5lttAkoxbfTeJxJHsB7X1KlvFrs16YDDnKr87zP1Cpom+iyXlz
         eU9A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=Urt716jb;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::62d as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pl1-x62d.google.com (mail-pl1-x62d.google.com. [2607:f8b0:4864:20::62d])
        by gmr-mx.google.com with ESMTPS id o8si480251ybu.5.2021.07.27.14.17.00
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 27 Jul 2021 14:17:00 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::62d as permitted sender) client-ip=2607:f8b0:4864:20::62d;
Received: by mail-pl1-x62d.google.com with SMTP id c16so44154plh.7
        for <clang-built-linux@googlegroups.com>; Tue, 27 Jul 2021 14:17:00 -0700 (PDT)
X-Received: by 2002:a05:6a00:1913:b029:32b:cec0:77e5 with SMTP id y19-20020a056a001913b029032bcec077e5mr24883708pfi.76.1627420619841;
        Tue, 27 Jul 2021 14:16:59 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id w15sm3794043pjc.45.2021.07.27.14.16.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 27 Jul 2021 14:16:57 -0700 (PDT)
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
Subject: [PATCH 51/64] tracing: Use struct_group() to zero struct trace_iterator
Date: Tue, 27 Jul 2021 13:58:42 -0700
Message-Id: <20210727205855.411487-52-keescook@chromium.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210727205855.411487-1-keescook@chromium.org>
References: <20210727205855.411487-1-keescook@chromium.org>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1917; h=from:subject; bh=x33Bs21uGrD+N+Lns8bFSqK7vUUUNaNSw4EtFfeCu58=; b=owEBbQKS/ZANAwAKAYly9N/cbcAmAcsmYgBhAHOLu8z/bdU1zMaKndqRyKLCCkXgpWttZKN9yc8w d3BxuKSJAjMEAAEKAB0WIQSlw/aPIp3WD3I+bhOJcvTf3G3AJgUCYQBziwAKCRCJcvTf3G3AJgHsD/ 98DZD+ecFAqbOjuzLoGxIi4OSnpxnTAcnT2/ZfVnIlEZyXBS+jkr8lU+k0GXpQG2scT/z3KyhdrOJp E60WG63kSFNFWzdWBZZyb0Rf9XVDGHksNfg81VOrWxyCFWrib/BFkg1uKQ3XHny7kvC0saWxsJLOvP PMmBG3p0AzH/bcHeY8JCSe1JqVGWLz4Wdiqq+a1FX3oATkVH4X6hjEPQSu7K5W5gsu8y3sWyfaJ/21 OTekfh+08tGzJUz0x5qwW+mEDgtAt0LEEHLhnIpkUCLiYWmDJzWKF5CUljC6wN4V/uNZBOMTukJCz8 F9nA0W1W0nXeWdz0Z6mMUksqNHOYIhyE52fHArE2U0l0tdWYgbUybcSQsrFUzJ1QxTx6KXNTmHAdC8 g1F37UY/3wzrelPZKNjO7Q2mpX8Q0hoRoR0IePaxvGxraMIKoteVOWP+yTjyheOHuIRmmwFS+m4zl0 xz0ti0B1g1MqQBahH7M3aZtJg/kgJEHRJTpe8g68atzyvYwY8rGNnEiemCygZ2liwL0XGVd/tcrTlJ KkliSKYsXdS6eykIau3c0P0wmRt7ydb/oQgVBcA744nu/6TZH0x0ehC/RmIZ3f0pnMMvLuX81V1dQy aaHLtNUQtk1I2pKRDzLqOWe+HldXvpA+eH/7VFXxng+zPZzpvdu07VGean9Q==
X-Developer-Key: i=keescook@chromium.org; a=openpgp; fpr=A5C3F68F229DD60F723E6E138972F4DFDC6DC026
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=Urt716jb;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::62d
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

Add struct_group() to mark region of struct trace_iterator that should
be initialized to zero.

Signed-off-by: Kees Cook <keescook@chromium.org>
---
 include/linux/trace_events.h | 26 ++++++++++++++------------
 kernel/trace/trace.c         |  4 +---
 2 files changed, 15 insertions(+), 15 deletions(-)

diff --git a/include/linux/trace_events.h b/include/linux/trace_events.h
index ad413b382a3c..cadad77fe524 100644
--- a/include/linux/trace_events.h
+++ b/include/linux/trace_events.h
@@ -101,18 +101,20 @@ struct trace_iterator {
 	bool			snapshot;
 
 	/* The below is zeroed out in pipe_read */
-	struct trace_seq	seq;
-	struct trace_entry	*ent;
-	unsigned long		lost_events;
-	int			leftover;
-	int			ent_size;
-	int			cpu;
-	u64			ts;
-
-	loff_t			pos;
-	long			idx;
-
-	/* All new field here will be zeroed out in pipe_read */
+	struct_group(init,
+		struct trace_seq	seq;
+		struct trace_entry	*ent;
+		unsigned long		lost_events;
+		int			leftover;
+		int			ent_size;
+		int			cpu;
+		u64			ts;
+
+		loff_t			pos;
+		long			idx;
+
+		/* All new field here will be zeroed out in pipe_read */
+	);
 };
 
 enum trace_iter_flags {
diff --git a/kernel/trace/trace.c b/kernel/trace/trace.c
index c59dd35a6da5..9f83864b0be6 100644
--- a/kernel/trace/trace.c
+++ b/kernel/trace/trace.c
@@ -6691,9 +6691,7 @@ tracing_read_pipe(struct file *filp, char __user *ubuf,
 		cnt = PAGE_SIZE - 1;
 
 	/* reset all but tr, trace, and overruns */
-	memset(&iter->seq, 0,
-	       sizeof(struct trace_iterator) -
-	       offsetof(struct trace_iterator, seq));
+	memset(&iter->init, 0, sizeof(iter->init));
 	cpumask_clear(iter->started);
 	trace_seq_init(&iter->seq);
 	iter->pos = -1;
-- 
2.30.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210727205855.411487-52-keescook%40chromium.org.
