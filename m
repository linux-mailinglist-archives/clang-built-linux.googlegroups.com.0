Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBJVGUSEQMGQEBWDAYIQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf38.google.com (mail-qv1-xf38.google.com [IPv6:2607:f8b0:4864:20::f38])
	by mail.lfdr.de (Postfix) with ESMTPS id 42DE73F9C75
	for <lists+clang-built-linux@lfdr.de>; Fri, 27 Aug 2021 18:30:36 +0200 (CEST)
Received: by mail-qv1-xf38.google.com with SMTP id u11-20020a0562141c0b00b0036201580785sf3557436qvc.11
        for <lists+clang-built-linux@lfdr.de>; Fri, 27 Aug 2021 09:30:36 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1630081830; cv=pass;
        d=google.com; s=arc-20160816;
        b=TgKbXGdkyh8OWpFdXMl9zraoi7avAxI2+T/4Z+YgduyfeW2B6Bui4dATVFfeiIWuBl
         l4lRRtyHRuu/aGZOwFKqrbwuVVkKlWZ6jtKsQaVldHrthnB/7C/4QVFFqjlm86bT9/n2
         d7T1Y3dNvj+T0f6Y8475QHYNaEws7qFkUOF5xVR0or9yvLfabktz/5Sr+EHn/m+5ybCY
         DQK4CNcYMG0zk/+AfZ8G8Z2EGNDwQZ0GJfa8h5tH0oo9tCwacw7BvnMQ95JMsWMkerit
         RU2nG/0O4bvAKALH9IBbACf3NHPG9K8UqTze4WUzEeCGyykUhQCVJTN6UXKDs+ktzGuE
         WEmg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=2wQldi+G6XpxsCtshR69orfQn7IkLGi4weDcP8f2LzE=;
        b=GhbeYDPONgLzNe0REE1zkTjmbFLsWF3WkvIrJemWOifQRkS0mglsl18vfU6H27wA4i
         QKdVh3/0THhnBMc6BMPeiNq14cIXToj3/PHFjJvwUIRtwAm4AeJLyRAHN4EHFk7VI647
         uxKVcaSocpg3BW3vrZBEzg4mPmayTmHcS2gXVTJySdF28EHrfLSzUZ7ywksMQ2TG6Lm3
         fO6bNCdwbtWBVbtiyUEFLgB5uPC4/UH67pAVIdFkXNu+hRE4KeC+ShhDn6OqPkdDtEWd
         zpsTeIZZ3P2Raou4DZgXsm3T/GB9QqwduvAudGndUOhKTtHm4whrt2Mj+05mXTwsYfeB
         aVfw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=AUaH8LHT;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::52c as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=2wQldi+G6XpxsCtshR69orfQn7IkLGi4weDcP8f2LzE=;
        b=ElgHRI/x3n2XJkicJK3iLQwe0eo78b3F3ILd0iQG523mR6O24YufD9+WTktAeTNkvw
         PfxFt4iD0t41wUgaI3YBtcBqPtfSMhPNRMleLZce1kwRMVZ9uZgx8w2Pm1gTxceTr4nd
         uBJJ5KYKotFz4Dc2tKuh+mIQm4SlmH8HEnv2n7J6AFdp4jMsLLStK0ep14GnD+aRGv2m
         H7TWv+5lNdfqGOGOuD16YC+VOuF0aWR3dZktX3PeoI6J3UJQ0y9sEI0K4ifP9+gQNQi0
         VFneedrDvUYCYlADQHh4FKB5SZ2aroOJMBYx1HXl5GpZTGMzt+0cs6tIBqAc2lFqND3l
         e2Hw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=2wQldi+G6XpxsCtshR69orfQn7IkLGi4weDcP8f2LzE=;
        b=Xbm3HXOi3nF0sRslc+dxzf4QtzwpEcymAu2tKhuj4QILGyF6LofzcvGByoKdgoIvT1
         WdflKTSpP4gSlBTteGOWehVQqB3G9zB5C++A173/PLQP/MENgyhkjhWtB0oGEG+3Qm3F
         38keMef41ARNOz84QHydq77VfRpJTeA3Q8FdNNFOHXKwfNVtT8RJW75MpD3cjrcmRhiD
         mj3xrkq+ow/vla5l/a6pXqUdenSkl73Vz6f50pygXLTHnJZ6V/1o5QAFVOagCjtaY24O
         sgpLMujavZnody2cXJ3erMqV4ton6U4b38BQyMrLNSG02kQkLWVnEtoxCL2rbQfQvhNo
         z2CQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530BO3oT0rKCod70OCxs/yxacam5TBefZzQuYDa1DTpnNDUnqXlL
	LhyWUa4+aEsMVmbptKT6wY4=
X-Google-Smtp-Source: ABdhPJxV0OScZt3T84y8gs9KGF72vpBRD2D1VHL3qLvo37JPCsHTnrrgFIlTMM606439WoDapqzvGg==
X-Received: by 2002:a05:620a:4094:: with SMTP id f20mr10099930qko.488.1630081830374;
        Fri, 27 Aug 2021 09:30:30 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ad4:4eea:: with SMTP id dv10ls2780712qvb.9.gmail; Fri, 27
 Aug 2021 09:30:29 -0700 (PDT)
X-Received: by 2002:a0c:eb0a:: with SMTP id j10mr10271948qvp.28.1630081829869;
        Fri, 27 Aug 2021 09:30:29 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1630081829; cv=none;
        d=google.com; s=arc-20160816;
        b=bX2jcHRLX/01hUGKWWK1eUjcGXqgPLhhY8TjGcWTtV/PE756GTj4Sr1LfS4MhDql4R
         Pu1cyXd6FZ/LSdkJ1fsBdjx1Qq1APQF8t9k4Se+WaFPiDt+D65AuHoaZ9UCAV4Tvbwd0
         qvB+VJumE9HCy1v6RaC6YwqhsnZakKzV2KOaXj9lFmlTae9J3H+EGecbgcnQIHFyVfUn
         zfVLu+uvi6tG2SaREQyhzNf99pZenT58GNTJ+Pu1ud2zc3nQU2rocXdBSUORUCzIYtAE
         4v6h7Z1aax9RA/UAPqN/yW1FVANrFf0HA+eGXH0lb8LTc09fyApj+Yf+W8Qmn0hM7TB+
         gKZw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=RZ7w9nrQr4P1IWSgKdcY6Z3nzDxlYwk7QATUALf7otg=;
        b=QfNQAA10OHMqvjpVvBk2sWf65HHyUO1h6s5Z/uWHevaNhokUkSEnycLiu0wEGsbw2o
         s+1fEFosHay3YC0F6jcrGYni+2+qflTiVG5eLK+IuS1p2eHu63lsuXJ9AFYMHBZxjip3
         LHHUkdXAn5cP3goNqXpQhmTJ/URdTaQszZGfLe5woio3TsUdG5e5eyYIlpIT+zpAK9yX
         hhbpvw0ROr8KSleSf97II9l0TVDjt3mb0IETZSXtusk73P+4AECO9grgxdWlp+8QYV/V
         G/RtiCcEQqdA5cN1KpfAsdZ6AxtXzv49oK5UivpUMIs07a2Ett2KMy7l4Ktyt2L+LQcE
         A3hQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=AUaH8LHT;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::52c as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pg1-x52c.google.com (mail-pg1-x52c.google.com. [2607:f8b0:4864:20::52c])
        by gmr-mx.google.com with ESMTPS id d201si541065qkg.4.2021.08.27.09.30.29
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 27 Aug 2021 09:30:29 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::52c as permitted sender) client-ip=2607:f8b0:4864:20::52c;
Received: by mail-pg1-x52c.google.com with SMTP id 17so6397827pgp.4
        for <clang-built-linux@googlegroups.com>; Fri, 27 Aug 2021 09:30:29 -0700 (PDT)
X-Received: by 2002:a05:6a00:1589:b0:3f2:7075:3746 with SMTP id u9-20020a056a00158900b003f270753746mr6974752pfk.35.1630081829313;
        Fri, 27 Aug 2021 09:30:29 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id a21sm1056797pjo.14.2021.08.27.09.30.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 27 Aug 2021 09:30:18 -0700 (PDT)
From: Kees Cook <keescook@chromium.org>
To: linux-kernel@vger.kernel.org
Cc: Kees Cook <keescook@chromium.org>,
	Arnd Bergmann <arnd@arndb.de>,
	"Gustavo A. R. Silva" <gustavoars@kernel.org>,
	Rasmus Villemoes <linux@rasmusvillemoes.dk>,
	Keith Packard <keithp@keithp.com>,
	Dan Williams <dan.j.williams@intel.com>,
	Daniel Vetter <daniel.vetter@ffwll.ch>,
	clang-built-linux@googlegroups.com,
	linux-hardening@vger.kernel.org
Subject: [PATCH v3 1/5] stddef: Introduce DECLARE_FLEX_ARRAY() helper
Date: Fri, 27 Aug 2021 09:30:11 -0700
Message-Id: <20210827163015.3141722-2-keescook@chromium.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210827163015.3141722-1-keescook@chromium.org>
References: <20210827163015.3141722-1-keescook@chromium.org>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=5572; h=from:subject; bh=8c+U/iZ/gycRs8w0t9BFRRAIIYbu9Tv+SQs3W1gDUds=; b=owEBbQKS/ZANAwAKAYly9N/cbcAmAcsmYgBhKRMWWOizJLxfxAKDY9M1B0NWYHAQZ0rmE/jQBiGJ xEEM+v2JAjMEAAEKAB0WIQSlw/aPIp3WD3I+bhOJcvTf3G3AJgUCYSkTFgAKCRCJcvTf3G3AJuroD/ 9MopnQF8VZySpYDfNEEXUgKmgmCUX+G9pVEV/h8Cfmb1ViQr1+ykyuvzf/eH7jslS6vj0UyxtTa00o H2MazDMxzHCyXkSHPtmai6DO3aQBKsEKbsDYAhmiIEyFYuzDHs9+/8JQ7p40gssc7KA5dHx7/V9+04 vALrNSUzLoZqfNQY80xOldjifCwn8p7gMA172DMO9kka8QYQVVdkhUZmcpQ8vT4j2zHMRDmu3cFJ3G 5QDUSgLxDa0q95rEhm1E4qytSUjJ9nUBU3i7k5KKElTtSL8yadPyiUwimZJV+Qcf0pten/ip6zCpob eWCHn13w2bGPO8ymxzCuKSd5hCwon3asjJRypNd/7L7aNrK71wN9WQZAV503wOzK/J20aQUHWFcwxU wNMnXbonCLwDYgNOnIyrMD1VwLXGeINhOXu4Z/XOehuiCR2iWjk2YpBPfNVx26OgapNYcRDA/94IOF YrHxed+lWSd9Md+5wCrVHsly28/HnuSE3vaamZ26QRTKrMfdj31tximpc1m3pOYr9Jnsh6GNgHLOEJ 3oT/yJQYfMeeAMOzZQLGf7DVStSgA3MJRWTDjgaAcTV/HyxbFTmXISprCuB9FyOyjE6HYykchs0P/F NIP5ZyVXP9wPP6jWQxH5H2FrM4H8B9JoyBLDyJfujOO5YRetAubwLVDaKGYQ==
X-Developer-Key: i=keescook@chromium.org; a=openpgp; fpr=A5C3F68F229DD60F723E6E138972F4DFDC6DC026
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=AUaH8LHT;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::52c
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

There are many places where kernel code wants to have several different
typed trailing flexible arrays. This would normally be done with multiple
flexible arrays in a union, but since GCC and Clang don't (on the surface)
allow this, there have been many open-coded workarounds, usually involving
neighboring 0-element arrays at the end of a structure. For example,
instead of something like this:

struct thing {
	...
	union {
		struct type1 foo[];
		struct type2 bar[];
	};
};

code works around the compiler with:

struct thing {
	...
	struct type1 foo[0];
	struct type2 bar[];
};

Another case is when a flexible array is wanted as the single member
within a struct (which itself is usually in a union). For example, this
would be worked around as:

union many {
	...
	struct {
		struct type3 baz[0];
	};
};

These kinds of work-arounds cause problems with size checks against such
zero-element arrays (for example when building with -Warray-bounds and
-Wzero-length-bounds, and with the coming FORTIFY_SOURCE improvements),
so they must all be converted to "real" flexible arrays, avoiding warnings
like this:

fs/hpfs/anode.c: In function 'hpfs_add_sector_to_btree':
fs/hpfs/anode.c:209:27: warning: array subscript 0 is outside the bounds of an interior zero-length array 'struct bplus_internal_node[0]' [-Wzero-length-bounds]
  209 |    anode->btree.u.internal[0].down = cpu_to_le32(a);
      |    ~~~~~~~~~~~~~~~~~~~~~~~^~~
In file included from fs/hpfs/hpfs_fn.h:26,
                 from fs/hpfs/anode.c:10:
fs/hpfs/hpfs.h:412:32: note: while referencing 'internal'
  412 |     struct bplus_internal_node internal[0]; /* (internal) 2-word entries giving
      |                                ^~~~~~~~

drivers/net/can/usb/etas_es58x/es58x_fd.c: In function 'es58x_fd_tx_can_msg':
drivers/net/can/usb/etas_es58x/es58x_fd.c:360:35: warning: array subscript 65535 is outside the bounds of an interior zero-length array 'u8[0]' {aka 'unsigned char[]'} [-Wzero-length-bounds]
  360 |  tx_can_msg = (typeof(tx_can_msg))&es58x_fd_urb_cmd->raw_msg[msg_len];
      |                                   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
In file included from drivers/net/can/usb/etas_es58x/es58x_core.h:22,
                 from drivers/net/can/usb/etas_es58x/es58x_fd.c:17:
drivers/net/can/usb/etas_es58x/es58x_fd.h:231:6: note: while referencing 'raw_msg'
  231 |   u8 raw_msg[0];
      |      ^~~~~~~

However, it _is_ entirely possible to have one or more flexible arrays
in a struct or union: it just has to be in another struct. And since it
cannot be alone in a struct, such a struct must have at least 1 other
named member -- but that member can be zero sized. Wrap all this nonsense
into the new DECLARE_FLEX_ARRAY() in support of having flexible arrays
in unions (or alone in a struct).

As with struct_group(), since this is needed in UAPI headers as well,
implement the core there, with a non-UAPI wrapper.

Additionally update kernel-doc to understand its existence.

https://github.com/KSPP/linux/issues/137

Cc: Arnd Bergmann <arnd@arndb.de>
Cc: "Gustavo A. R. Silva" <gustavoars@kernel.org>
Signed-off-by: Kees Cook <keescook@chromium.org>
---
 include/linux/stddef.h      | 13 +++++++++++++
 include/uapi/linux/stddef.h | 16 ++++++++++++++++
 scripts/kernel-doc          |  2 ++
 3 files changed, 31 insertions(+)

diff --git a/include/linux/stddef.h b/include/linux/stddef.h
index 8b103a53b000..ca507bd5f808 100644
--- a/include/linux/stddef.h
+++ b/include/linux/stddef.h
@@ -84,4 +84,17 @@ enum {
 #define struct_group_tagged(TAG, NAME, MEMBERS...) \
 	__struct_group(TAG, NAME, /* no attrs */, MEMBERS)
 
+/**
+ * DECLARE_FLEX_ARRAY() - Declare a flexible array usable in a union
+ *
+ * @TYPE: The type of each flexible array element
+ * @NAME: The name of the flexible array member
+ *
+ * In order to have a flexible array member in a union or alone in a
+ * struct, it needs to be wrapped in an anonymous struct with at least 1
+ * named member, but that member can be empty.
+ */
+#define DECLARE_FLEX_ARRAY(TYPE, NAME) \
+	__DECLARE_FLEX_ARRAY(TYPE, NAME)
+
 #endif
diff --git a/include/uapi/linux/stddef.h b/include/uapi/linux/stddef.h
index 610204f7c275..3021ea25a284 100644
--- a/include/uapi/linux/stddef.h
+++ b/include/uapi/linux/stddef.h
@@ -25,3 +25,19 @@
 		struct { MEMBERS } ATTRS; \
 		struct TAG { MEMBERS } ATTRS NAME; \
 	}
+
+/**
+ * __DECLARE_FLEX_ARRAY() - Declare a flexible array usable in a union
+ *
+ * @TYPE: The type of each flexible array element
+ * @NAME: The name of the flexible array member
+ *
+ * In order to have a flexible array member in a union or alone in a
+ * struct, it needs to be wrapped in an anonymous struct with at least 1
+ * named member, but that member can be empty.
+ */
+#define __DECLARE_FLEX_ARRAY(TYPE, NAME)	\
+	struct { \
+		struct { } __empty_ ## NAME; \
+		TYPE NAME[]; \
+	}
diff --git a/scripts/kernel-doc b/scripts/kernel-doc
index d9715efbe0b7..65088b512d14 100755
--- a/scripts/kernel-doc
+++ b/scripts/kernel-doc
@@ -1263,6 +1263,8 @@ sub dump_struct($$) {
 	$members =~ s/DECLARE_KFIFO\s*\($args,\s*$args,\s*$args\)/$2 \*$1/gos;
 	# replace DECLARE_KFIFO_PTR
 	$members =~ s/DECLARE_KFIFO_PTR\s*\($args,\s*$args\)/$2 \*$1/gos;
+	# replace DECLARE_FLEX_ARRAY
+	$members =~ s/(?:__)?DECLARE_FLEX_ARRAY\s*\($args,\s*$args\)/$1 $2\[\]/gos;
 	my $declaration = $members;
 
 	# Split nested struct/union elements as newer ones
-- 
2.30.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210827163015.3141722-2-keescook%40chromium.org.
