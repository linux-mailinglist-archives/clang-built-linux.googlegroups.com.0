Return-Path: <clang-built-linux+bncBDYJPJO25UGBBQUUZ35QKGQEY72NJMQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3c.google.com (mail-yb1-xb3c.google.com [IPv6:2607:f8b0:4864:20::b3c])
	by mail.lfdr.de (Postfix) with ESMTPS id 992E127D6D9
	for <lists+clang-built-linux@lfdr.de>; Tue, 29 Sep 2020 21:25:55 +0200 (CEST)
Received: by mail-yb1-xb3c.google.com with SMTP id k3sf5945799ybk.16
        for <lists+clang-built-linux@lfdr.de>; Tue, 29 Sep 2020 12:25:55 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1601407554; cv=pass;
        d=google.com; s=arc-20160816;
        b=RTr48XETZnZ8iEWIV9VLjv/nnHwuZ8nyqoAyTHqYsHjT5mNo8MKUVXaI/l+Cdyz2kr
         VS5j7+AFKmYwMDfaxDtptgA3mF+DeOfOvuvTuWuDp+0lTnM3xHLUi9u5ZLUAmeYOf1hH
         2Thc2SKB75f0/ZbqX/+NFhld4ji3NDNdw9cGBfY54/yOAM0yfe9KHfjCOBSeM8SN+Aot
         cFU2G6IcsB8VtJRixn2PdrroFk+xx2xTXLonwQXumLANaqahlcsQAeYXi/b+C6AqShld
         /uhw46+7lkamYs0XB9XWSWlyB2mZJj+EB3t8RHJ9r0Y0B8kFCocarGQ8VCOxJLdL/qfn
         TjCw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:sender
         :dkim-signature;
        bh=yOsyc0fr0MJSu5uUS228w6ZIcIUiS98+YLloxL+jp6c=;
        b=A3fLkO34epYVk5qIo5qoSgwM38mQbcIwEV9m9XMMgTqEVWs8oThpe5bdFLv+qJRJ7d
         eFH+Qv0rdQAPIo/NNPx4lnxJS+0ZGSjDsF5ZH8hpzQtDMNZZm/njFurBFA35LoAootda
         mMZfND6fZpqu0K2MsSMdpbA7MBm28JjoDOEFKTHxHhde856tVKVurs8a6ooWrG/XyKpo
         MeKT0PYnvcP9Kmd+ZAKKAcMbVLn7nuZobN6yr7xprIM/EVWfTqkqH4kJd1vtTiPYj2Hn
         eCOYU4OxdKL2n4yqw+gv7L4ce6tH0BxSq36RlGYdwiRQig+4EFkVfhQuZa8m4bk0Gpqb
         dmXA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=siCtqrfj;
       spf=pass (google.com: domain of 3qypzxwwkacypfgucwnpkgtuiqqing.eqo@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::74a as permitted sender) smtp.mailfrom=3QYpzXwwKACYPFGUCWNPKGTUIQQING.EQO@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:in-reply-to:message-id:mime-version:references:subject
         :from:to:cc:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=yOsyc0fr0MJSu5uUS228w6ZIcIUiS98+YLloxL+jp6c=;
        b=dgxKC98wy5QWT1JPTZbnQQRpfpNsTbLW84jWdqgHC2xdybG5yu0AX144AufjUNSMyH
         baHRiJah4t0o/YjosxN8b21g9TtDCmaqSsiV8gSsgaN/8OKo7vJ/7NykO1IIWk5glHoh
         NpooY3lAMGmv+VGLB08xOTYfOoDc2CzNZSoVGDWmxopzJWSrPjmGpYHBgPdfhrdAES7+
         Nzj1wdSmlA4lrLZZpcaBzCu9qXExRr931SJFjxKUD2+0E729pE425W1+J/5npolHreWH
         ILYCpcZSeNsuaE/g2gVoURSDM+irhf/2Tn8jemfop3YZhpB8bNRO6/bbOJyLHMxHsGM3
         BhwA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=yOsyc0fr0MJSu5uUS228w6ZIcIUiS98+YLloxL+jp6c=;
        b=OC0q4WVSgTb4FeWU9OuwZGHaK2F+4Ascz/Wzg9/o11sjtXbT2RFoGsAVGksoK+kEnh
         YJpVS7DZ3WYFGwnoUe7bZHxSiGVnkoK1m8HVZpJKlEz5Ma5oO4b7Ra4t+u2cTQDEDWHd
         y6NWhjhe6yH3x0ljw13QkMIzN4S9gLN017x8Y2RDO7pgOtZUXEz5x1X8qVN6dtwyzIVZ
         2DfBph4knL+1g7Z/FiisQT076aCDUAt8X0HnStHXPKln4ZkLMckhdY7XgJOS0KzbLsym
         eY8kR8wutqcTnRfgy0x0BNkAivkPZq0CZmdrVSuPfgKKKycsovUHXEVxqmooca+6yJWJ
         aUZg==
X-Gm-Message-State: AOAM530Q8lqAgdVU3tiXfuKasgk+a9CXKHVDgNyh/VIY3hkhQBFL6DzA
	U/7dHOgh9aFam2DxJm8bmG8=
X-Google-Smtp-Source: ABdhPJzQMiiEpJNuwlz/rrrIF9UWhF0tlmpxau+xQvi5pqw2j0pJ88g/uaf6wT2RgAzcx7dymtb6sw==
X-Received: by 2002:a25:bce:: with SMTP id 197mr8600231ybl.336.1601407554696;
        Tue, 29 Sep 2020 12:25:54 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6902:511:: with SMTP id x17ls2681712ybs.11.gmail; Tue,
 29 Sep 2020 12:25:54 -0700 (PDT)
X-Received: by 2002:a25:f803:: with SMTP id u3mr8500393ybd.118.1601407554217;
        Tue, 29 Sep 2020 12:25:54 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1601407554; cv=none;
        d=google.com; s=arc-20160816;
        b=OmuCWzo5TYvZpVfTopEuLtebQzZvM28UI+HY+uaWLRZo46SllHcubRsejKLJiUO+dE
         x1SuBKHgmd2EIVRLiPwE9zmOTojmeuQ3FV5XIdRHxH7WeCYgFHm9hvzVpM/MAJ8Bx2QT
         hlNaVTNoEWNljO9zOI76JLjJTGyVs7d2AFo6yJAW/x9JUrvXI0XMv8oVPNqgfOUcxK7z
         EH2/ffLpvftZ76nouqRM4ip2huoRmjDY4erIOCgsw0NTYObrGq8Hp36z84QsQFMKi1wW
         lPsDc1g2sI1SPsjrYxi8X13GMFENWOaw5ynpS9pNCpyCty0UXDKrZWBx+NG0GFymnD6A
         nM/A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:sender:dkim-signature;
        bh=rYftVaj976XAVBBPD1tw6YKpSPevzCd8/SePPlUAJ1M=;
        b=cgJ7dD/fL571Nnur5jc4jJMwvuoHblKSC/wbX2sVrTqYQpBCKRkQW+Z7i6fubkFg4x
         Qjqfy5+bM/fiT2mgmiUizFyVFpS3u8daPgNsXnYiEU4UCO8V4IajAcgZ1alZ7SEkiuXX
         Bd+IwimXmE6BUKKFcv84e/iZJaMcQJ4Wj1owc1NWkTrrFGrmlL3rL6CQbc14RZgANRxf
         SyjSVCcbgj9XTvg0nCvvCovBVY1Mp80qN83TRzUZXH2iQ/rjhTx2v65Z4fAt2rybGXzr
         WzHm3N5ybQXb6UkijgDaerhl29rVpZtuBi6uLPjmnVT1SAotA2QLpII2WY3nZfWx3th5
         aiyg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=siCtqrfj;
       spf=pass (google.com: domain of 3qypzxwwkacypfgucwnpkgtuiqqing.eqo@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::74a as permitted sender) smtp.mailfrom=3QYpzXwwKACYPFGUCWNPKGTUIQQING.EQO@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-qk1-x74a.google.com (mail-qk1-x74a.google.com. [2607:f8b0:4864:20::74a])
        by gmr-mx.google.com with ESMTPS id l203si359325ybf.0.2020.09.29.12.25.54
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 29 Sep 2020 12:25:54 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3qypzxwwkacypfgucwnpkgtuiqqing.eqo@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::74a as permitted sender) client-ip=2607:f8b0:4864:20::74a;
Received: by mail-qk1-x74a.google.com with SMTP id 205so3458497qkd.2
        for <clang-built-linux@googlegroups.com>; Tue, 29 Sep 2020 12:25:54 -0700 (PDT)
Sender: "ndesaulniers via sendgmr" <ndesaulniers@ndesaulniers1.mtv.corp.google.com>
X-Received: from ndesaulniers1.mtv.corp.google.com ([2620:15c:211:202:f693:9fff:fef4:4d25])
 (user=ndesaulniers job=sendgmr) by 2002:a0c:ee6a:: with SMTP id
 n10mr5625188qvs.45.1601407553788; Tue, 29 Sep 2020 12:25:53 -0700 (PDT)
Date: Tue, 29 Sep 2020 12:25:49 -0700
In-Reply-To: <CAKwvOd=s+N4+X94sTams_hKn8uV5Hc6QyCc7OHyOGC-JFesS8A@mail.gmail.com>
Message-Id: <20200929192549.501516-1-ndesaulniers@google.com>
Mime-Version: 1.0
References: <CAKwvOd=s+N4+X94sTams_hKn8uV5Hc6QyCc7OHyOGC-JFesS8A@mail.gmail.com>
X-Mailer: git-send-email 2.28.0.709.gb0816b6eb0-goog
Subject: [PATCH v2] srcu: avoid escaped section names
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: "Paul E . McKenney" <paulmck@kernel.org>
Cc: Steven Rostedt <rostedt@goodmis.org>, Mathieu Desnoyers <mathieu.desnoyers@efficios.com>, 
	Lai Jiangshan <jiangshanlai@gmail.com>, Josh Triplett <josh@joshtriplett.org>, 
	Kees Cook <keescook@chromium.org>, linux-kernel@vger.kernel.org, rcu@vger.kernel.org, 
	clang-built-linux@googlegroups.com, 
	Nick Desaulniers <ndesaulniers@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=siCtqrfj;       spf=pass
 (google.com: domain of 3qypzxwwkacypfgucwnpkgtuiqqing.eqo@flex--ndesaulniers.bounces.google.com
 designates 2607:f8b0:4864:20::74a as permitted sender) smtp.mailfrom=3QYpzXwwKACYPFGUCWNPKGTUIQQING.EQO@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Nick Desaulniers <ndesaulniers@google.com>
Reply-To: Nick Desaulniers <ndesaulniers@google.com>
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

The stringification operator, `#`, in the preprocessor escapes strings.
For example, `# "foo"` becomes `"\"foo\""`.  GCC and Clang differ in how
they treat section names that contain \".

The portable solution is to not use a string literal with the
preprocessor stringification operator.

Link: https://bugs.llvm.org/show_bug.cgi?id=42950
Fixes: commit fe15b50cdeee ("srcu: Allocate per-CPU data for DEFINE_SRCU() in modules")
Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
---
Changes V1->V2:
* drop unrelated Kconfig changes accidentally committed in v1.

 include/linux/srcutree.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/include/linux/srcutree.h b/include/linux/srcutree.h
index 9cfcc8a756ae..9de652f4e1bd 100644
--- a/include/linux/srcutree.h
+++ b/include/linux/srcutree.h
@@ -124,7 +124,7 @@ struct srcu_struct {
 # define __DEFINE_SRCU(name, is_static)					\
 	is_static struct srcu_struct name;				\
 	struct srcu_struct * const __srcu_struct_##name			\
-		__section("___srcu_struct_ptrs") = &name
+		__section(___srcu_struct_ptrs) = &name
 #else
 # define __DEFINE_SRCU(name, is_static)					\
 	static DEFINE_PER_CPU(struct srcu_data, name##_srcu_data);	\
-- 
2.28.0.709.gb0816b6eb0-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200929192549.501516-1-ndesaulniers%40google.com.
