Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBQ6G6KEAMGQEH5HO7GY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53e.google.com (mail-pg1-x53e.google.com [IPv6:2607:f8b0:4864:20::53e])
	by mail.lfdr.de (Postfix) with ESMTPS id 5AE973EFA95
	for <lists+clang-built-linux@lfdr.de>; Wed, 18 Aug 2021 08:05:57 +0200 (CEST)
Received: by mail-pg1-x53e.google.com with SMTP id 1-20020a630e41000000b002528846c9f2sf809757pgo.12
        for <lists+clang-built-linux@lfdr.de>; Tue, 17 Aug 2021 23:05:57 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629266756; cv=pass;
        d=google.com; s=arc-20160816;
        b=tMiOuX0f+7I4dIjwEzVG+BdrjBI6jNMGug2Td7CBwh/Ke21v5sjxwUGErwuFReVhkn
         yuwHEKFDdamZO1ASez6b3uN3T2ZvAGy1AnSm5aqQTSO9GCsPGdD0kJW6a1e54c4Ow6hT
         u+068VaPikZKzZgOxXqdzfLxW/uGxe5XcvV4XVvsexi5DOM70RgsfFsL5lVCGWpAPEUF
         ZBbSf+SWRhtXxSd6h/+3XcKz4JQWijMsoAr+VQxvryov6mBRn931j2qY6ix3Ocs4k3r9
         eneeF3oAnGj+Ges5Ok3BoJbLsfuXN0HgRRJgxtljG9uHwdvtqSt+HP5BmlAKGzex8S10
         6Twg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=RmsM1qO9VsEBJu6dapyZt/NRrlU8pV/yK1oYVAg/Q0M=;
        b=hoY0ZrQHoA6rVniS3ppOwoHg8/X6HMK+gCLAA+RoaGM1OOjSNrBO47uYlUu9qsK5HR
         ymqBdaWhnh4Jx39djTZ7D6+oY3MdbXXIgXLYGjcTgElapHL4sSknZ7qb6R5pVdVwlGaV
         slk34iQajH/onulJ+/I+e1j1rC4QoanOTJz+f+whZ9YPoUy+B2rpWM9hOWoLuruuywrE
         r7fKd5EsNrlNM9znd8eROstH4M6o9nDSl20Zxt5WJjZSGqeaHpU71OXdu9NlUZZ+5OGm
         KwUa39Zez50jCjI4CaTl1H04Ewi0+mm/ADIeY0EXF4qHqK9NRGRdIapOkczxyY7eddCS
         mtoQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=L0akKXK1;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::102c as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=RmsM1qO9VsEBJu6dapyZt/NRrlU8pV/yK1oYVAg/Q0M=;
        b=Q8XLJad1ElO7TtXbQL5TSW6CAhvNp1nh6LWcjBE7VDElbLbYUBGZMMjo5vqehFudW1
         BND5am2ddZWT7hfnm1uECJKT580wJsAqlDgUTDFDr3NZy45C+7i1onFqBWa+2LrNZPMb
         nnNP0ji7wu9D3BquWP0dh1Ma4ANFC32l7xvs1KXGGypA33egd7qJYWmjxsLg00yP21HA
         ry8creOGipUPZLLWwuWL0H8FZFmhtuebPrQAqce5ZE75r8flNvgLFa0gyUU72+t29FUk
         02R/a3egCYATVx4Q2U5csHwWYQfbbG0FwDxu1rP0FL1A3SdzUyYMqcLBhAmCG2QxaxXV
         39gQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=RmsM1qO9VsEBJu6dapyZt/NRrlU8pV/yK1oYVAg/Q0M=;
        b=n+R+bk/QDt1O3geA5+H6LDehjK+xZ/7duaV1FKToY0LJBjY1o/rmONr0bd3wmHQb+G
         2v3V5ZyvrFKjewDn4IKdt2WTr6ANOKYe+e5eF1j3D0lws+9qm7VviqDqR5WdNM/juc93
         N93Aug13x6zs3O9GtEw0G6A1MOxg5VwQ78QlZ3VnLrkwRbYqh0f8RnQjYcXRUnDpZHYb
         +9cyBP+TdHVARr0uaTq/EymoFucc9ttnREj+0FvLp274C3g0UxRpqD34jXN9RjyB/SY1
         sR59C09MulpX63VoxQbu1TVIukCztkcoJfYumY6cGGGye1DLly6vb+lks6PTZW6N5crd
         eEdQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532pshIkRT8cktkZVIci3PHL3kFSKBVopoOVg7E/sUNM/XyV53sq
	jF6GfddupWOPL+QiGhC96a0=
X-Google-Smtp-Source: ABdhPJxXsRtXW5Gh5Ymj9ST8GLGRLC6Cule65Gc9H1InRp5qx1DSIjH12QhVCOal0kgUkHuXU/cn3A==
X-Received: by 2002:a05:6a00:a0b:b0:3e1:e511:1224 with SMTP id p11-20020a056a000a0b00b003e1e5111224mr7313643pfh.67.1629266756058;
        Tue, 17 Aug 2021 23:05:56 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:eb15:: with SMTP id j21ls2217379pjz.0.canary-gmail;
 Tue, 17 Aug 2021 23:05:55 -0700 (PDT)
X-Received: by 2002:a17:90a:e88:: with SMTP id 8mr7664388pjx.108.1629266755405;
        Tue, 17 Aug 2021 23:05:55 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629266755; cv=none;
        d=google.com; s=arc-20160816;
        b=xQtzpErZKfi5o2XY+VdcewVnbLh6uJTvqtpZULP7F+lhRCuVFXN1kTjpJ89wmh118b
         CBReie+6UxHLFyvYlfggdDzHT5GZIZOEPX+7z6E+NTc4rYpq3vPlNRaFjnl5WlOz1/Te
         4CunWOWfXu2NsgpyYtZLCq1s9d+q3Q3JFxEpt9HqjZPXWKlBUo//aZIIHMP+9dSkm+CX
         ICuch3jvcaVptWpRz6vpxH9k52w/gx/X+vyB0eFA4P0IHUGW0eq15BcAiS/xbCuHVS/V
         VwDYsJy9xOFkiWvcYiQGwc81XMa9nzz+o/GhEzCH3LSC0xm3CjRLOUK24UO1ld6XkXC1
         5z9Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=0+ejbkcqZbFXmITuXlL7CDyZypzmre+l3eRsA92DuBs=;
        b=HqwhDU9wexxwuWF1Axd4XmMgi0rM8K+IhDAxWWDpz2ZaMmJ1S/s9Ycn4tnRB9NIlQ/
         01ThPC4WY5uKn3nd7JEhw8PSpXKf0JpM7vj4lpPMbFRxmjSfQh5udBeyJFRnNaggaWCv
         QWICX2CqBaxBNwyv3Q8JghBl1bUboIGKeUcXOLwxiXqJnbmpale5B6qKD/MAInFQC1ko
         LNvwtDXKcYbCMDvMy/t+j+iE6nPFHSDOK0hw59Xag6Zy1kwFVY6XwaB7vgOpIZVf4TX5
         E0UM1mIZlDacajL9yXiDFbevh3W6FZH3WWlLFm+ZEde+X6MfP3gft/R7fvXZQ3YUZ/no
         qt/g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=L0akKXK1;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::102c as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pj1-x102c.google.com (mail-pj1-x102c.google.com. [2607:f8b0:4864:20::102c])
        by gmr-mx.google.com with ESMTPS id q2si211715pfl.0.2021.08.17.23.05.55
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 17 Aug 2021 23:05:55 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::102c as permitted sender) client-ip=2607:f8b0:4864:20::102c;
Received: by mail-pj1-x102c.google.com with SMTP id n13-20020a17090a4e0d00b0017946980d8dso8166040pjh.5
        for <clang-built-linux@googlegroups.com>; Tue, 17 Aug 2021 23:05:55 -0700 (PDT)
X-Received: by 2002:a17:90b:3442:: with SMTP id lj2mr7420058pjb.81.1629266755106;
        Tue, 17 Aug 2021 23:05:55 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id b20sm4633796pfl.9.2021.08.17.23.05.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Aug 2021 23:05:53 -0700 (PDT)
From: Kees Cook <keescook@chromium.org>
To: linux-kernel@vger.kernel.org
Cc: Kees Cook <keescook@chromium.org>,
	Keith Packard <keithp@keithp.com>,
	"Gustavo A . R . Silva" <gustavoars@kernel.org>,
	Rasmus Villemoes <linux@rasmusvillemoes.dk>,
	Dan Williams <dan.j.williams@intel.com>,
	Daniel Vetter <daniel.vetter@ffwll.ch>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Andrew Morton <akpm@linux-foundation.org>,
	linux-wireless@vger.kernel.org,
	netdev@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	linux-staging@lists.linux.dev,
	linux-block@vger.kernel.org,
	linux-kbuild@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	linux-hardening@vger.kernel.org
Subject: [PATCH v2 05/63] stddef: Introduce struct_group() helper macro
Date: Tue, 17 Aug 2021 23:04:35 -0700
Message-Id: <20210818060533.3569517-6-keescook@chromium.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210818060533.3569517-1-keescook@chromium.org>
References: <20210818060533.3569517-1-keescook@chromium.org>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=8609; h=from:subject; bh=8Qg6O9rjkiwOKAeKIVGdgdvKDjqINmqyRAtZrlXXnIA=; b=owEBbQKS/ZANAwAKAYly9N/cbcAmAcsmYgBhHKMeD0CHW+uuEt76ResWyKF8pbMpqH18BMp8/Pj9 U4ZtvnmJAjMEAAEKAB0WIQSlw/aPIp3WD3I+bhOJcvTf3G3AJgUCYRyjHgAKCRCJcvTf3G3AJqb/D/ 93GZOK8t0sjGW1TI4a1tTQBtjO+BfS5KTMQeA3a7Uce4PVwGGMi8plmIGq+Rfhww6bDSGUR3D5Tq8i C/Jxt4JuoLgnD9VoTjkw5H7tFIpQ44zNRI+8ZDaxmiu1VD47VHbY1vE6wOYdGHBrNCSHNYWUAi2vaS E4fN8LuFsXWsMK8sLlZGt8eIxJGzmRPQOsOb31OTMfNyRY6gvuiRFsc+CYTgT/2Rwwg8x5TnOqMHLR 8LQNRHT7vu6QbAeAziCQskZWLxnFAg1+Wjkn7rq24wRdar7ztcqG5+psYuIvRugHU+Igp+JYFpGAxS 512FKT2Yno2+cAIO9/aKyo48MArIW0R0nMBtN9AeeF3y6C5I1GEiDLvBoWZrcmpSmxR/UPgex5+W50 5YzAGHXmLPDsRHR0GuHHnxgbjUWdMHHwN9EmP/KnqmG7v9csbjgCpZm8dBQu9viUOpVGFWXfMFRoAQ umTD8Z//E8AM9XTfe490LNcpHh/WNq93DLwwP5q3HrUb3G113UWGJx+nuf91GKOllfV3S/sJrASX23 sEQ2nIoj+nqPPAU77dYdz6kJa/SnPmKWce5NU111vhOoPjmDoZYruwnsDc3WCGZAmidp5Naz1aYPpb qsNP1TeGqq2MhskDz580+XWS+9E9gVOtBY6COlRwGVpPKMX4dGct/QGB5r4A==
X-Developer-Key: i=keescook@chromium.org; a=openpgp; fpr=A5C3F68F229DD60F723E6E138972F4DFDC6DC026
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=L0akKXK1;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::102c
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
			int three, four;
		} thing;
		int five;
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
		int three, four;
		struct { } finish;
		int five;
	};

	struct foo {
		int one;
		int start[0];
		int two;
		int three, four;
		int finish[0];
		int five;
	};

This allows code to avoid needing to use a sub-struct named for member
references within the surrounding structure, but loses the benefits of
being able to actually use such a struct, making it rather fragile. Using
these requires open-coded calculation of sizes and offsets. The efforts
made to avoid common mistakes include lots of comments, or adding various
BUILD_BUG_ON()s. Such code is left with no way for the compiler to reason
about the boundaries (e.g. the "start" object looks like it's 0 bytes
in length), making bounds checking depend on open-coded calculations:

	if (length > offsetof(struct foo, finish) -
		     offsetof(struct foo, start))
		return -EINVAL;
	memcpy(&dst.start, &src.start, offsetof(struct foo, finish) -
				       offsetof(struct foo, start));

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
			int two;
			int three, four;
		);
		int five;
	};

	if (length > sizeof(src.thing))
		return -EINVAL;
	memcpy(&dst.thing, &src.thing, length);
	do_something(dst.three);

There are some rare cases where the resulting struct_group() needs
attributes added, so struct_group_attr() is also introduced to allow
for specifying struct attributes (e.g. __align(x) or __packed).
Additionally, there are places where such declarations would like to
have the struct be typed, so struct_group_typed() is added.

Given there is a need for a handful of UAPI uses too, the underlying
__struct_group() macro has been defined in UAPI so it can be used there
too.

Co-developed-by: Keith Packard <keithp@keithp.com>
Signed-off-by: Keith Packard <keithp@keithp.com>
Signed-off-by: Kees Cook <keescook@chromium.org>
Acked-by: Gustavo A. R. Silva <gustavoars@kernel.org>
Link: https://lore.kernel.org/lkml/20210728023217.GC35706@embeddedor
Enhanced-by: Rasmus Villemoes <linux@rasmusvillemoes.dk>
Link: https://lore.kernel.org/lkml/41183a98-bdb9-4ad6-7eab-5a7292a6df84@rasmusvillemoes.dk
Enhanced-by: Dan Williams <dan.j.williams@intel.com>
Link: https://lore.kernel.org/lkml/1d9a2e6df2a9a35b2cdd50a9a68cac5991e7e5f0.camel@intel.com
Enhanced-by: Daniel Vetter <daniel.vetter@ffwll.ch>
Link: https://lore.kernel.org/lkml/YQKa76A6XuFqgM03@phenom.ffwll.local
---
 include/linux/stddef.h      | 47 +++++++++++++++++++++++++++++++++++++
 include/uapi/linux/stddef.h | 21 +++++++++++++++++
 2 files changed, 68 insertions(+)

diff --git a/include/linux/stddef.h b/include/linux/stddef.h
index 998a4ba28eba..f2aefdb22d1d 100644
--- a/include/linux/stddef.h
+++ b/include/linux/stddef.h
@@ -36,4 +36,51 @@ enum {
 #define offsetofend(TYPE, MEMBER) \
 	(offsetof(TYPE, MEMBER)	+ sizeof_field(TYPE, MEMBER))
 
+/**
+ * struct_group(NAME, MEMBERS)
+ *
+ * Used to create an anonymous union of two structs with identical
+ * layout and size: one anonymous and one named. The former can be
+ * used normally without sub-struct naming, and the latter can be
+ * used to reason about the start, end, and size of the group of
+ * struct members.
+ *
+ * @NAME: The identifier name of the mirrored sub-struct
+ * @MEMBERS: The member declarations for the mirrored structs
+ */
+#define struct_group(NAME, MEMBERS...)	\
+	__struct_group(/* no tag */, NAME, /* no attrs */, MEMBERS)
+
+/**
+ * struct_group_attr(NAME, ATTRS, MEMBERS)
+ *
+ * Used to create an anonymous union of two structs with identical
+ * layout and size: one anonymous and one named. The former can be
+ * used normally without sub-struct naming, and the latter can be
+ * used to reason about the start, end, and size of the group of
+ * struct members. Includes structure attributes argument.
+ *
+ * @NAME: The identifier name of the mirrored sub-struct
+ * @ATTRS: Any struct attributes
+ * @MEMBERS: The member declarations for the mirrored structs
+ */
+#define struct_group_attr(NAME, ATTRS, MEMBERS...) \
+	__struct_group(/* no tag */, NAME, ATTRS, MEMBERS)
+
+/**
+ * struct_group_tagged(TAG, NAME, MEMBERS)
+ *
+ * Used to create an anonymous union of two structs with identical
+ * layout and size: one anonymous and one named. The former can be
+ * used normally without sub-struct naming, and the latter can be
+ * used to reason about the start, end, and size of the group of
+ * struct members. Includes struct tag argument for the named copy.
+ *
+ * @TAG: The tag name for the named sub-struct
+ * @NAME: The identifier name of the mirrored sub-struct
+ * @MEMBERS: The member declarations for the mirrored structs
+ */
+#define struct_group_tagged(TAG, NAME, MEMBERS...) \
+	__struct_group(TAG, NAME, /* no attrs */, MEMBERS)
+
 #endif
diff --git a/include/uapi/linux/stddef.h b/include/uapi/linux/stddef.h
index ee8220f8dcf5..0fbdf2f711aa 100644
--- a/include/uapi/linux/stddef.h
+++ b/include/uapi/linux/stddef.h
@@ -4,3 +4,24 @@
 #ifndef __always_inline
 #define __always_inline inline
 #endif
+
+/**
+ * __struct_group(TAG, NAME, ATTRS, MEMBERS)
+ *
+ * Used to create an anonymous union of two structs with identical layout
+ * and size: one anonymous and one named. The former's members can be used
+ * normally without sub-struct naming, and the latter can be used to
+ * reason about the start, end, and size of the group of struct members.
+ * The named struct can also be explicitly tagged, as well as both having
+ * struct attributes.
+ *
+ * @TAG: The tag name for the named sub-struct (usually empty)
+ * @NAME: The identifier name of the mirrored sub-struct
+ * @ATTRS: Any struct attributes (usually empty)
+ * @MEMBERS: The member declarations for the mirrored structs
+ */
+#define __struct_group(TAG, NAME, ATTRS, MEMBERS...) \
+	union { \
+		struct { MEMBERS } ATTRS; \
+		struct TAG { MEMBERS } ATTRS NAME; \
+	}
-- 
2.30.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210818060533.3569517-6-keescook%40chromium.org.
