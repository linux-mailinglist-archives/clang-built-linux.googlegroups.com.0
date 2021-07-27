Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBGHHQGEAMGQEY6QRXXY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x737.google.com (mail-qk1-x737.google.com [IPv6:2607:f8b0:4864:20::737])
	by mail.lfdr.de (Postfix) with ESMTPS id 6EA4C3D7F9C
	for <lists+clang-built-linux@lfdr.de>; Tue, 27 Jul 2021 22:59:05 +0200 (CEST)
Received: by mail-qk1-x737.google.com with SMTP id j12-20020a05620a146cb02903ad9c5e94basf70458qkl.16
        for <lists+clang-built-linux@lfdr.de>; Tue, 27 Jul 2021 13:59:05 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1627419544; cv=pass;
        d=google.com; s=arc-20160816;
        b=GpZ1qYN4hbmZMP5NItDNsfsCz/fGLn6dz0TzAozp4+kDWXRn9keIGynSI8J/BiNCdE
         ePZo31SlGaeGItkIvhwra37zHvjUzvTt9a6oqWQ8T+FnePDoQk1gpZ+3I/YpN0ehiS5R
         Pn0/TGHNedUiDBEmw/BwvDQVG3QTLWUto8me+LkeBFAgicopsY6HVMwj/zCcCz6aSect
         o/l8mEb5iPqVgkdwxpaITyV1Da35LtjnmVLJ2QGt0FpCCxEGfkwrZvFjOuH5WzWOKSZn
         0SPQdkQ5czzll3o7N4B/x0FbxRss82gUcgEV6q5SvsgLyNad4g1bkJWrvkco84LWez6g
         xxww==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=4riM1iNNsG6jWRCo7g3Oq9uGcPsUa0Xdb1PJjI57kYQ=;
        b=v3kOKEjbajrcOtMNHlxceLf0ZGPQStCpg4FMU30XwlPFoFlRMhDs/GZa6OPFiTdx2X
         1pU00aZeCIU6IeBiJZXzdYLPbQNu1MgU3UTT4cxGP6YZHO6ZruukxT0/wAKFBqWPmudl
         Px6bYOsAey+wiPnDf7Tu4rvesleyFiC0kYHNWCnqMv/zPQq/u5x5lrPz4stbUD8MwrF1
         evA9SyWJdq6kDDQGyQ00dZVspcw5g5ljkah323D1rp2DUpSk5qChnv8QOqzNNhEUSFQp
         KjnAA8rwqH2+ExUP8UTB9ilsVtSGh2/STWGJ0tzn78RgxWqQ8BKPeM2jzHeU1DJZEl5e
         ao5g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=Q6r3JVen;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::634 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=4riM1iNNsG6jWRCo7g3Oq9uGcPsUa0Xdb1PJjI57kYQ=;
        b=ny5aXpNp08xavofwy3wX4idU/8BsAkwcvKple/q7qARjvlMHuHZWatO2LdMhsSXP8I
         0an8BKNG6kz+MenPzHHmg0bAepbFLQLJqSH8Hv0t/GJwL9Sm/ivwcGas5DYdXU1L7wgq
         VWio5buvihOOhqr/UFSPZQBWqmNCJY+RpOBh428oa0ZySBjaxVlUzqwIw7AnOek3B30D
         FpZDYiI4umfALRQlGO1tKRHO0xtQKtU2yQAgzpL8MPQoV3h5WyWYW3R6IFYSt1BcNJ/W
         wb4p1WgF+nHKRZJH081ZS5cLi9TtwWfL1mu26WHNwPk/7gvsjRde2OUyvcTWUGOKqrnM
         SBNw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=4riM1iNNsG6jWRCo7g3Oq9uGcPsUa0Xdb1PJjI57kYQ=;
        b=W0HwFiyAHTmHt1jHcZejz4U0z86LkY7VjbIXT0OfWspDQJCeNMdiYShZq01icIsM4h
         PT6JMGXsCsvnskMIrBjlIQWIsABAOjYYW5eFwGXZTNL5D7i5VPH9jU4WxBtyvURNatJs
         FZDsxtebD8nK3IwGvgbgAn7qd6kgCIC9hAJ1PNEH6CUlTgXfa/QLafA96kFsi2IgLcLz
         Yo7VOp9HSDGRg+2c8svK3SgyBYyHUqgiuxCjbAiGtFleoagnqJ+buxbLleFcPWEU5uZ1
         +VN7FcCeBe4rxpZ+CmL6127Ssqr02BuPzaGH1Or/GEb4HAgAKArsDKWPdqpzFALkjcvZ
         YVkw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530P2p6uCR3Aj8/zZjwFKBjdA3xXFq9BK5o1sqj4wVstkTNzVB+O
	LGM3gzz9HguTs+yFEOKz+UE=
X-Google-Smtp-Source: ABdhPJxzpFc0UfX9UBfiajTbgZHcqcmHBI3rQgxQd3wthSly0Iq8eyxZDE65rLGscjcE68QW80gHtg==
X-Received: by 2002:ac8:5254:: with SMTP id y20mr20617075qtn.279.1627419544546;
        Tue, 27 Jul 2021 13:59:04 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a0c:f646:: with SMTP id s6ls61067qvm.10.gmail; Tue, 27 Jul
 2021 13:59:04 -0700 (PDT)
X-Received: by 2002:a0c:c349:: with SMTP id j9mr24159480qvi.35.1627419544142;
        Tue, 27 Jul 2021 13:59:04 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1627419544; cv=none;
        d=google.com; s=arc-20160816;
        b=mmub57uSov+nmG2fWVfulxRyyAZfBV5QMakvuEvRUELm9rdawrbCOkxeE+WIRVZ4tv
         1TDBVA7/ixzBVfrZ0nE1uebFIzF2Ic3XDGVTpCUn6IcDFlT5dmEGnCHa8MxCjvL71flT
         buBkVsv0pMWQS/wDoL31cdrdchlz6eDjV6FFeb+kWyeFnScSKGzGGyxv3vONUs0UB79E
         lWj4y9oRXnx8KBY338+ve4cFZlD0p/Yds//mK14hnVrcxG1XvWgR/K3UwNSz2tP3hS2H
         +DDDLyRk1Q9jJtrXuPrBdOpp3mZhU7LIxS5Q1TDPbp4C6aS5gOkNYSlBhRBHq8DQJH2H
         uYmA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=m9/SLyzkm5b4YgLSzID8XtRK8GIPppWgZQKzDtYl0cY=;
        b=XY8KqV8/jare6OiALLBQQxazlQzEmV6saeFi8R5UoIRbYIbkOaoaZ6cv4EK91B2s31
         PPfjQPvVJJV38TbQSouJEHK2pXro3gMMD7L6GQjUxEL3GW5zMzSKXiLoFBP9bi0pVSqo
         3OMXGreCUP+L6vd73ZdL5+OwmQ+aPXEHBhpOz67bGzutb4G7tuVHmR1K4Ryr70XmvcVN
         O00v/nqCzsQiyanunlq8URmk2TUaflpvEZouxEKnZh0qpP3LNMMR1fmGr9t36/zb6yTr
         bk5FMFTb1QcBAaffV+GoW4gDjufnsl9rqr1xEvcbDlON90v90Via9d/SNElfhZt+yee9
         UUlA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=Q6r3JVen;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::634 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pl1-x634.google.com (mail-pl1-x634.google.com. [2607:f8b0:4864:20::634])
        by gmr-mx.google.com with ESMTPS id 12si280197qtp.2.2021.07.27.13.59.04
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 27 Jul 2021 13:59:04 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::634 as permitted sender) client-ip=2607:f8b0:4864:20::634;
Received: by mail-pl1-x634.google.com with SMTP id d17so17579574plh.10
        for <clang-built-linux@googlegroups.com>; Tue, 27 Jul 2021 13:59:04 -0700 (PDT)
X-Received: by 2002:a17:90a:aa92:: with SMTP id l18mr6315143pjq.20.1627419543327;
        Tue, 27 Jul 2021 13:59:03 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id r10sm4606873pff.7.2021.07.27.13.59.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 27 Jul 2021 13:59:02 -0700 (PDT)
From: Kees Cook <keescook@chromium.org>
To: linux-hardening@vger.kernel.org
Cc: Kees Cook <keescook@chromium.org>,
	Keith Packard <keithpac@amazon.com>,
	"Gustavo A. R. Silva" <gustavoars@kernel.org>,
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
Subject: [PATCH 04/64] stddef: Introduce struct_group() helper macro
Date: Tue, 27 Jul 2021 13:57:55 -0700
Message-Id: <20210727205855.411487-5-keescook@chromium.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210727205855.411487-1-keescook@chromium.org>
References: <20210727205855.411487-1-keescook@chromium.org>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=6059; h=from:subject; bh=3LEAbTxg4aXTCBqMfEtpBsDoqguT4nwPgyzTbu35rzM=; b=owEBbQKS/ZANAwAKAYly9N/cbcAmAcsmYgBhAHOB6fBnqoQEU0SOfpxJjjk2PGndGpdft7092EvT pn5C4GCJAjMEAAEKAB0WIQSlw/aPIp3WD3I+bhOJcvTf3G3AJgUCYQBzgQAKCRCJcvTf3G3AJjaKD/ 9Hy5ufgc4XqQ2z3z9FPvEU6kxJGQmWPS7Xcj/+0+Tt0ThcqyqNxB3pfnhNZY5oFVzFQAasxaE+uUMy w8l50dffII86GVzwgMHpVSOHfyKxD0+bVjHS1hMO0YxtoyYtE05wk1gZb0O3VCFvNI8kbknhLy9Uck SYOfNHqSctMehBN0ekYquyX+Sxta/bDS1L6zhOi7GKz1zqmata8K3Ru/ejXddx/tfY4Od9cnavr31N xw2Thp2oXNUsvJOPNbEvrB9M+WNLj3Jkh79uKUxA2pScrBaJuJyDc0eb75fwJObkRIzkHNc5UF68RQ 3sm3i/QfPCS0rVeZ3hKhcTFLjC3MZufvXgQPFR7BfYuYWBJojZhnwQdeoicgqEYtr8XHy8GgHXRxFT pHAAkO2PCn68C5FfPyf8+UKcLaAMIm3YG+MYg5c8HZrCT92UTJKR8kNFF5UhnMDqJdNE0LLWwmqQjD pee4CTHVdCAU/kDqXg2TD7dmrqC2bgT4icDvzkqIMtb10+q6UqF4VahbBVQrDLI3Y8Zcj+H+cdlb2F 0D5duiiZ6PW+dqS/zKFRLxwzmSl45QsWX4lUz1Wqs23RyLSPhcYSYz1PQjMeqiAlmp/hRAs8uiSw0q nFEKGgK/WMDmBCTVW0TdgnP5Vt5h5HAjsZEr+BMIwSeSu+7fa8Z0zUCwBT+w==
X-Developer-Key: i=keescook@chromium.org; a=openpgp; fpr=A5C3F68F229DD60F723E6E138972F4DFDC6DC026
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=Q6r3JVen;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::634
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

Kernel code has a regular need to describe groups of members within a
structure usually when they need to be copied or initialized separately
from the rest of the surrounding structure. The generally accepted design
pattern in C is to use a named sub-struct:

	struct foo {
		int one;
		struct {
			int two;
			int three;
		} thing;
		int four;
	};

This would allow for traditional references and sizing:

	memcpy(&dst.thing, &src.thing, sizeof(dst.thing));

However, doing this would mean that referencing struct members enclosed
by such named structs would always require including the sub-struct name
in identifiers:

	do_something(dst.thing.three);

This has tended to be quite inflexible, especially when such groupings
need to be added to established code which causes huge naming churn.
Three workarounds exist in the kernel for this problem, and each have
other negative properties.

To avoid the naming churn, there is a design pattern of adding macro
aliases for the named struct:

	#define f_three thing.three

This ends up polluting the global namespace, and makes it difficult to
search for identifiers.

Another common work-around in kernel code avoids the pollution by avoiding
the named struct entirely, instead identifying the group's boundaries using
either a pair of empty anonymous structs of a pair of zero-element arrays:

	struct foo {
		int one;
		struct { } start;
		int two;
		int three;
		struct { } finish;
		int four;
	};

	struct foo {
		int one;
		int start[0];
		int two;
		int three;
		int finish[0];
		int four;
	};

This allows code to avoid needing to use a sub-struct name for member
references within the surrounding structure, but loses the benefits of
being able to actually use such a struct, making it rather fragile. Using
these requires open-coded calculation of sizes and offsets. The efforts
made to avoid common mistakes include lots of comments, or adding various
BUILD_BUG_ON()s. Such code is left with no way for the compiler to reason
about the boundaries (e.g. the "start" object looks like it's 0 bytes
in length and is not structurally associated with "finish"), making bounds
checking depend on open-coded calculations:

	if (length > offsetof(struct foo, finish) -
		     offsetof(struct foo, start))
		return -EINVAL;
	memcpy(&dst.start, &src.start, length);

However, the vast majority of places in the kernel that operate on
groups of members do so without any identification of the grouping,
relying either on comments or implicit knowledge of the struct contents,
which is even harder for the compiler to reason about, and results in
even more fragile manual sizing, usually depending on member locations
outside of the region (e.g. to copy "two" and "three", use the start of
"four" to find the size):

	BUILD_BUG_ON((offsetof(struct foo, four) <
		      offsetof(struct foo, two)) ||
		     (offsetof(struct foo, four) <
		      offsetof(struct foo, three));
	if (length > offsetof(struct foo, four) -
		     offsetof(struct foo, two))
		return -EINVAL;
	memcpy(&dst.two, &src.two, length);

And both of the prior two idioms additionally appear to write beyond the
end of the referenced struct member, forcing the compiler to ignore any
attempt to perform bounds checking.

In order to have a regular programmatic way to describe a struct
region that can be used for references and sizing, can be examined for
bounds checking, avoids forcing the use of intermediate identifiers,
and avoids polluting the global namespace, introduce the struct_group()
macro. This macro wraps the member declarations to create an anonymous
union of an anonymous struct (no intermediate name) and a named struct
(for references and sizing):

	struct foo {
		int one;
		struct_group(thing,
			int two,
			int three,
		);
		int four;
	};

	if (length > sizeof(src.thing))
		return -EINVAL;
	memcpy(&dst.thing, &src.thing, length);
	do_something(dst.three);

There are some rare cases where the resulting struct_group() needs
attributes added, so struct_group_attr() is also introduced to allow
for specifying struct attributes (e.g. __align(x) or __packed).

Co-developed-by: Keith Packard <keithpac@amazon.com>
Signed-off-by: Keith Packard <keithpac@amazon.com>
Signed-off-by: Kees Cook <keescook@chromium.org>
---
 include/linux/stddef.h | 34 ++++++++++++++++++++++++++++++++++
 1 file changed, 34 insertions(+)

diff --git a/include/linux/stddef.h b/include/linux/stddef.h
index 998a4ba28eba..cf7f866944f9 100644
--- a/include/linux/stddef.h
+++ b/include/linux/stddef.h
@@ -36,4 +36,38 @@ enum {
 #define offsetofend(TYPE, MEMBER) \
 	(offsetof(TYPE, MEMBER)	+ sizeof_field(TYPE, MEMBER))
 
+/**
+ * struct_group_attr(NAME, ATTRS, MEMBERS)
+ *
+ * Used to create an anonymous union of two structs with identical
+ * layout and size: one anonymous and one named. The former can be
+ * used normally without sub-struct naming, and the latter can be
+ * used to reason about the start, end, and size of the group of
+ * struct members. Includes structure attributes argument.
+ *
+ * @NAME: The name of the mirrored sub-struct
+ * @ATTRS: Any struct attributes (normally empty)
+ * @MEMBERS: The member declarations for the mirrored structs
+ */
+#define struct_group_attr(NAME, ATTRS, MEMBERS) \
+	union { \
+		struct { MEMBERS } ATTRS; \
+		struct { MEMBERS } ATTRS NAME; \
+	}
+
+/**
+ * struct_group(NAME, MEMBERS)
+ *
+ * Used to create an anonymous union of two structs with identical
+ * layout and size: one anonymous and one named. The former can be
+ * used normally without sub-struct naming, and the latter can be
+ * used to reason about the start, end, and size of the group of
+ * struct members.
+ *
+ * @NAME: The name of the mirrored sub-struct
+ * @MEMBERS: The member declarations for the mirrored structs
+ */
+#define struct_group(NAME, MEMBERS)	\
+	struct_group_attr(NAME, /* no attrs */, MEMBERS)
+
 #endif
-- 
2.30.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210727205855.411487-5-keescook%40chromium.org.
