Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBCULTGBQMGQE6ZPQ2SI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x437.google.com (mail-pf1-x437.google.com [IPv6:2607:f8b0:4864:20::437])
	by mail.lfdr.de (Postfix) with ESMTPS id 712A435226D
	for <lists+clang-built-linux@lfdr.de>; Fri,  2 Apr 2021 00:13:32 +0200 (CEST)
Received: by mail-pf1-x437.google.com with SMTP id g205sf4124429pfb.15
        for <lists+clang-built-linux@lfdr.de>; Thu, 01 Apr 2021 15:13:32 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1617315211; cv=pass;
        d=google.com; s=arc-20160816;
        b=HzhQ47m3+/P6JGKKDYNDx4CexPkiqFBTvfzzpRBPsiS8wgT2e8x+OB2uaiABC2y9kp
         oTmnLa96xQ6xpqsACAl6NaCngaq07FomJDmxnksACcekeTooAHShI2aWoa2Xk4BpPPsz
         vUCshRekbgo/g1piVz1Y/l01hGDBbvXgTtvHod3jQbk2hWZ5iUJf7ONgf3y36AC7OdD+
         doaFiQSEfuf1teygJ6tehspq3+7tRE+YUCQDg82/Va8MGHypz53YmmrKx+s87syya3G7
         YJ93MOtptGrgmheB+vWKxSOXEXDiwyOQKZ8IsFVOs6ugeUxpwB6HmEhdWSAhdm++8dLo
         znkg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=Qz6UL3tgD+jHuHjtvMeRrczOCs9tICax2qUQojGp8PE=;
        b=0xGb2JKbnAO08moOBVLgfamysjtQ6DqOw997GxeOS5WVw6JtC9yz7zHP+jicnKHbyP
         SOc6fZWDJHLNIIk+Jd6esALzCcW2/Ls9KIqL4JXXl6gJpp/aze63ktg02OtCfArx6p+M
         TVnQLLtHxFNUHaAgf/kzKayrAMX1fJ4GJtVHGupBqTTPsCt9hXL88KvcfwM3lIUg99P3
         eS2pabjmvGEock3C32tiulY5LEFaeZqe+MQtMiMXufB4guaIhAXeIm553uuUeTfgHd4i
         5E+t4UySg6qNs7ZM7+rieiwWYepSDZ0tuS3kJ94QY1tBh57rFEX3CHVJl/Jj3nciEWJ6
         sK8w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=FEec6d8j;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::629 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Qz6UL3tgD+jHuHjtvMeRrczOCs9tICax2qUQojGp8PE=;
        b=i6gQHPyoxZvhFzoJol6CfvrdDQ9Q/MGCNQrUarZOFHX44MEuiM8wgvWkh9XCrF4krN
         tt40zECn1yKCBRj6PXvinDtkl8x+GmWOUM9xNa5pkbjuMC4cTYh6CpbPoZRfNJGgIMvw
         Lbb6/pXvaj9auY3oAfvFBUuQDXpJqJTSC6MAiQNJ92CyyN/mWdFuNI1jPU4aCOtugr88
         8QuZhvHoBO7I3HCst4j2uUsrVdS7F1L6D/YC6ZC8zsDqipkARNAKdc0i4zc1xm7TBfFU
         adrruP4ZSnEXiGTphWhKFahaBHGzU1Sso0oVclVrmIOIah5InkulEZ3TtQ/tOF9vUDAN
         s0cg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Qz6UL3tgD+jHuHjtvMeRrczOCs9tICax2qUQojGp8PE=;
        b=e/u70T9fhtkkpDcg/D1BnIiQe2VSyIS3uHb1vSXMoZtUK+lepUo4/qUDiyTY3JkpZb
         G++WvOv81leKz7S0frX5sbBpDUxGpaeCMKp4L8E0PDHBa8O/CafTh30rMoDm5Nmq3l4F
         /0h5Omjws0+TgKJ6eQNj5I1FEMDgqh4rZtuEIaqcQWp3vCAoEghzeaYG1aGwZ+ooPJUM
         aRNaIzSYXvN/MvMY6V+PETcO8zOt7t4APU79v3PbjxJiBaqtCwDdikD5zSp2YsmvVPi5
         m53v+4FFjLDzAx7LFjRCh0bT+B8YeJP0hIdFBEaCC73wF6nZU8DRyHJHKBZa+tNX9v9W
         AyrQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5336Q1W940Qe1xuuvhOhRasIO5ANW5BQ1ZtSRLC5WZpG8XKY1X6j
	nOarbAcUUMyKuyZhnyYRQo8=
X-Google-Smtp-Source: ABdhPJxXsxByhVveYu80QkL3RviU+NNfE/5PYSXEAqSfhTho0EENkFyiD20yZCyrp5Cbpl+MLyaenQ==
X-Received: by 2002:a65:4481:: with SMTP id l1mr9285252pgq.453.1617315210990;
        Thu, 01 Apr 2021 15:13:30 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:545b:: with SMTP id e27ls2682993pgm.3.gmail; Thu, 01 Apr
 2021 15:13:30 -0700 (PDT)
X-Received: by 2002:a63:2e06:: with SMTP id u6mr9252505pgu.444.1617315210392;
        Thu, 01 Apr 2021 15:13:30 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617315210; cv=none;
        d=google.com; s=arc-20160816;
        b=ERddbhlhXVYDm8fZ+ECOC8PaZe210Xm7QjOgtI0EgnzAg7mSOUovR/tP0lWvPfkG5N
         zZwe2lgs72fdebT6X4H7x8WJRK0tr0KiyBY+yIoMLJb9zZvyS15d5dhFT2qjtzjmrNmF
         Eqjf1OWP+RtUAKcOlNAZrzzbTOT1R9/9MSUKFz1NQ/OrncQWQEaineq7N/G1y1HGCQlM
         Pln1sxNt2BZrrQZjsDWDHARYkDl09VAyfbP/2C6kNkZ5Bhq87sR9iT99KQKAfQESZh6S
         qt0tf/+5mC+i1J+UqjwLc+2WMDzSUB72yy02seOnR9JLW2thbqY/ygIm/IYC7bD2X6pN
         2n6g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=zMK0dD8EUOpMnQqN+YrkNT1KRoH/Rg1BtnXVKHHSQEw=;
        b=KhfLBvYy7HM86rVZRZcqe7rxw5zp0ez570tnyT6y2qOGhm15WO5lJJk3faSjRpz56Q
         T+7pYJQPUo/xpTX/ctvdX/HfffU824PHZLmjbcaWFDczPUYaSdwk9eN2GMW5UNQLsEtS
         FN2SyD0VwfpFKJ44iicRJYdyYOJFoJZjy6gBBN5FfXQKP8ZWxQFIoxVtNdHdbLHyUJxF
         r4hfTTqVxNW4nIilZUl8bmnrB93Fm4GtwE/RIbveZB0o3X6QvQho4PHTU9tpl6TYWehU
         I1kcUXGbK3o0llPhr5TvFbP2wkBy0r2YW1VUKFN0D63MqCuYl0/RaB2Zl4aCpQFbK/U7
         P8xA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=FEec6d8j;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::629 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pl1-x629.google.com (mail-pl1-x629.google.com. [2607:f8b0:4864:20::629])
        by gmr-mx.google.com with ESMTPS id c3si414361pls.0.2021.04.01.15.13.30
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 01 Apr 2021 15:13:30 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::629 as permitted sender) client-ip=2607:f8b0:4864:20::629;
Received: by mail-pl1-x629.google.com with SMTP id v8so1674832plz.10
        for <clang-built-linux@googlegroups.com>; Thu, 01 Apr 2021 15:13:30 -0700 (PDT)
X-Received: by 2002:a17:902:aa0c:b029:e5:da5f:5f66 with SMTP id be12-20020a170902aa0cb02900e5da5f5f66mr9806341plb.81.1617315210147;
        Thu, 01 Apr 2021 15:13:30 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id 186sm6655069pfb.143.2021.04.01.15.13.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 01 Apr 2021 15:13:28 -0700 (PDT)
From: Kees Cook <keescook@chromium.org>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Kees Cook <keescook@chromium.org>,
	Christoph Hellwig <hch@lst.de>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Arnd Bergmann <arnd@arndb.de>,
	Tejun Heo <tj@kernel.org>,
	Alexander Viro <viro@zeniv.linux.org.uk>,
	"Rafael J. Wysocki" <rafael@kernel.org>,
	Shuah Khan <shuah@kernel.org>,
	Nathan Chancellor <nathan@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Andrew Morton <akpm@linux-foundation.org>,
	Kefeng Wang <wangkefeng.wang@huawei.com>,
	"Matthew Wilcox (Oracle)" <willy@infradead.org>,
	linux-kernel@vger.kernel.org,
	linux-fsdevel@vger.kernel.org,
	linux-kselftest@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Michal Hocko <mhocko@suse.com>,
	Alexey Dobriyan <adobriyan@gmail.com>,
	Lee Duncan <lduncan@suse.com>,
	Chris Leech <cleech@redhat.com>,
	Adam Nichols <adam@grimm-co.com>,
	linux-hardening@vger.kernel.org
Subject: [PATCH v4 3/3] sysfs: Unconditionally use vmalloc for buffer
Date: Thu,  1 Apr 2021 15:13:20 -0700
Message-Id: <20210401221320.2717732-4-keescook@chromium.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210401221320.2717732-1-keescook@chromium.org>
References: <20210401221320.2717732-1-keescook@chromium.org>
MIME-Version: 1.0
X-Patch-Hashes: v=1; h=sha256; g=c5db4de46e2fb011df00756d4f9e98c350db4340; i=MEvu9Y2iWCN6KW+GL93HEcZTxkhRtLohrU2GVi3yOA0=; m=B8J2zz7Y7XtsJeOjLQdM8fQ2tr4ToEl/kdZtP2sPkVo=; p=RMI7dJzQuU2ORbbN3pLYdhsh2IhVTz/8JKubIRzXcE8=
X-Patch-Sig: m=pgp; i=keescook@chromium.org; s=0x0x8972F4DFDC6DC026; b=iQIzBAABCgAdFiEEpcP2jyKd1g9yPm4TiXL039xtwCYFAmBmRX8ACgkQiXL039xtwCaYSQ/9G7W veN/zfdOwGX1mTnL3JETf/YN7qmk/i17DV9sk+90V2GFpMrZd4mCP6IiejJO+oHNidVLOyjw+hhdV LWoHb0juROgtSbTzsrqPznUuHE/GHS0aWOvILlgPzg6Y2vsQ9sPnqj5ruWOAtS9gbjBXMAwBRlB6d B6U+uKHoFdHCaTn0hfpomgwBg3N4kiII1j7f31c+FdTUO7mFieVPd50b226QL2dTL1b3VcL3FCa1J 5xz4HXGQt0Wzw8P8DMhGwD7CLQUISRHWF609rjSb7vP4KYphXWoeX1ZGlVmdrVyfh/bpFeO9JsQsG usToUcnz5T8NZ8BCG9g0rgd3b2Ak0Fz+gTku/iq92DPM9mUc3Jc+Yz7IQ4RX7nL0qFbeXqglFXeVv bBieHV4e9dqZdA26C4Igx8WQX5FVjsgl9E9BLCqCi6esSsh3jZo02n91jqp1btE+h9LIk4rM4PE9H ZA+twsg5g4XMMN3kGZpyhTFXJO5/mt6KhJBwa/wEfyTtIJ5N/UXeRppIgmCYAvboPy00dgEYKXeUn LFk0mJDoqePbN+6cD2FUkRMIWXR/scEVHBhHL/uMrU2+H4RvoWQe2WXFGZCkLM+2uzgaJ/YszJdKJ GR/n8w5O/RdeJj5rUfT6cvTvZPH4pD7UjkH47rzTgenq3C+zBqPAkrihofQBMzYc=
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=FEec6d8j;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::629
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

The sysfs interface to seq_file continues to be rather fragile
(seq_get_buf() should not be used outside of seq_file), as seen with
some recent exploits[1]. Move the seq_file buffer to the vmap area
(while retaining the accounting flag), since it has guard pages that will
catch and stop linear overflows. This seems justified given that sysfs's
use of seq_file almost always already uses PAGE_SIZE allocations, has
normally short-lived allocations, and is not normally on a performance
critical path.

Once seq_get_buf() has been removed (and all sysfs callbacks using
seq_file directly), this change can also be removed.

[1] https://blog.grimm-co.com/2021/03/new-old-bugs-in-linux-kernel.html

Signed-off-by: Kees Cook <keescook@chromium.org>
---
 fs/sysfs/file.c | 29 +++++++++++++++++++++++++++++
 1 file changed, 29 insertions(+)

diff --git a/fs/sysfs/file.c b/fs/sysfs/file.c
index 9aefa7779b29..351ff75a97b1 100644
--- a/fs/sysfs/file.c
+++ b/fs/sysfs/file.c
@@ -16,6 +16,7 @@
 #include <linux/mutex.h>
 #include <linux/seq_file.h>
 #include <linux/mm.h>
+#include <linux/vmalloc.h>
 
 #include "sysfs.h"
 
@@ -32,6 +33,31 @@ static const struct sysfs_ops *sysfs_file_ops(struct kernfs_node *kn)
 	return kobj->ktype ? kobj->ktype->sysfs_ops : NULL;
 }
 
+/*
+ * To be proactively defensive against sysfs show() handlers that do not
+ * correctly stay within their PAGE_SIZE buffer, use the vmap area to gain
+ * the trailing guard page which will stop linear buffer overflows.
+ */
+static void *sysfs_kf_seq_start(struct seq_file *sf, loff_t *ppos)
+{
+	struct kernfs_open_file *of = sf->private;
+	struct kernfs_node *kn = of->kn;
+
+	WARN_ON_ONCE(sf->buf);
+	sf->buf = __vmalloc(kn->attr.size, GFP_KERNEL_ACCOUNT);
+	if (!sf->buf)
+		return ERR_PTR(-ENOMEM);
+	sf->size = kn->attr.size;
+
+	/*
+	 * Use the same behavior and code as single_open(): continue
+	 * if pos is at the beginning; otherwise, NULL.
+	 */
+	if (*ppos)
+		return NULL;
+	return SEQ_OPEN_SINGLE;
+}
+
 /*
  * Reads on sysfs are handled through seq_file, which takes care of hairy
  * details like buffering and seeking.  The following function pipes
@@ -206,14 +232,17 @@ static const struct kernfs_ops sysfs_file_kfops_empty = {
 };
 
 static const struct kernfs_ops sysfs_file_kfops_ro = {
+	.seq_start	= sysfs_kf_seq_start,
 	.seq_show	= sysfs_kf_seq_show,
 };
 
 static const struct kernfs_ops sysfs_file_kfops_wo = {
+	.seq_start	= sysfs_kf_seq_start,
 	.write		= sysfs_kf_write,
 };
 
 static const struct kernfs_ops sysfs_file_kfops_rw = {
+	.seq_start	= sysfs_kf_seq_start,
 	.seq_show	= sysfs_kf_seq_show,
 	.write		= sysfs_kf_write,
 };
-- 
2.25.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210401221320.2717732-4-keescook%40chromium.org.
