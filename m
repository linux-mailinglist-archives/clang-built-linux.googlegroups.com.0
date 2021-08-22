Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBSEGRCEQMGQEHKHSWQI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x13d.google.com (mail-il1-x13d.google.com [IPv6:2607:f8b0:4864:20::13d])
	by mail.lfdr.de (Postfix) with ESMTPS id 85AFC3F3E78
	for <lists+clang-built-linux@lfdr.de>; Sun, 22 Aug 2021 09:56:57 +0200 (CEST)
Received: by mail-il1-x13d.google.com with SMTP id i15-20020a92540f0000b0290222feb23cf5sf8006260ilb.0
        for <lists+clang-built-linux@lfdr.de>; Sun, 22 Aug 2021 00:56:57 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629619016; cv=pass;
        d=google.com; s=arc-20160816;
        b=kYjBHSRg8LQU/+GvXdhgjUj34+DUn/s3jhhaGZPjd8KZ6Z75jARHNoqVYjSUVntId6
         ovWQoyr+77u5Wpf/qNB+UdRN/wJ0UsA3kmKEajPpt2eV8r05oPrCBl++nq8GYJSiIobR
         xAnybBBYfbqXWNJAMDdpT3E85+qfxpEeihNeJHSOu9UjNmeAfZ7osqWKqdXElFlwgDQ6
         0oP4sAKPoDdn56EPNc/43FbVJtzH7wXItevhKLDzWvEraZ1UhX/GcTrw7Z0Ru0GSkFGU
         N3xJMR/TYc9Py2la4cETIW8bxGOZ6XMeqLlU/L7DoNXjR198/0kLXuOLPVyhdUgFVqM6
         n7Aw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=y7Ns+ixCta5ffTnqyDRKDCMZ5T8Mujs2RTSNQrukf1o=;
        b=D8+4G+IH4u7KdUCyfAHNr3znl+alyuvcmEMHhvRvtb/mbAB0PkOiCzxDlt8hGOfloe
         v54iWxz9xtAYRR7qjD8C0gnW4eKBf3TjYEs62tGJbu3QzZkd7KUT2A5jlq0JBhH8H3aY
         84VCzdy65VS4CxQIl4vZG7pHnqfbFZboTj1ip0PdfwCgtsPcP0TtL8lPakoSVAitIfl7
         g25puw47dHmmiZJYVY39qvQOjKIWxpLNMnkNeIWojLL5HCi88KbexAywWhbWrcMR4+lq
         JPSyPbAghNuhHlWLlMkNQJZQvnYfMQb2ixsKhIj252wIwC5K/QPbD4bDrl+lTuuz1SQ6
         z02A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=Y+mT4XZs;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::535 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=y7Ns+ixCta5ffTnqyDRKDCMZ5T8Mujs2RTSNQrukf1o=;
        b=r/iLzXOEQJrqJqSOIPW2JxeIoaqUafRGVku1gsSub2OaH5YwCvBxCKUTQLlQRazixo
         NokcxV/VWqISDD8BSgJ8Uhgk1sFCsAvj4UuFhOYMZxp4y1RLOrnUk8O1SuyzIQZJ/oNo
         KqvEqdThvsytrItFHytSKqxcvnfhh1dpz1s58NDJleL7PK9gYGrX4vQ/h3aEEnnIOfCr
         ntXfNaDLzhROFKjUREizANdLsA4gwfgBONXiSXDiKrRW6MPJ2jwUuIj8//BQgUSQgTl/
         F0o3WR4Hc+NxA0Sl5irtCFgtT60ARLzu1mvQww+m1MJoHJZX66nsMvjM2ebRhXAfGs5u
         Vv7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=y7Ns+ixCta5ffTnqyDRKDCMZ5T8Mujs2RTSNQrukf1o=;
        b=ZKmAbuQ9837t0zNgeLMREzwh8mIB5UBX7xwiY8gg+ornQmdBI5Ze4TS45NqZapqxtR
         DiWLllFUgGQLSthAL+ygaJV/ZMGXLYbY9u4Omz1G+iLmew5rznpTzMmF5CscudWUUL0F
         leCgFAFBEaYJrfdFhNkX04ycgHxWAOrfJwlnUW0Vynu7POdDggCtM5XRf1hcVSsLVuAE
         F4XV19hmuSQAeIac0IxCQXVtUgLRu6HGbaNaEol6tOVNANuEw0yyCx7SUS1YNK2yIJO4
         uDBf5nHdoIuV8wIkxA+BEEAPuIFPlsvTaU0JI/XdXIsa5ETZfOJY8pKoit6zBguyq09V
         LxGA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530peBAnx/0aDcTtHWyKdqiPPc+GOpKAnUIhdFQRfn83NiRGXCgP
	P2Y4u0lmbN3/auFi8MA1KVA=
X-Google-Smtp-Source: ABdhPJw2ZWTHmASPCuk71OCcb3KUrF4x9D0Od8XGdX8uZrtpMo8sNhoSe28wcBQVsptOLnOp265/9w==
X-Received: by 2002:a5e:9901:: with SMTP id t1mr2945360ioj.92.1629619016580;
        Sun, 22 Aug 2021 00:56:56 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:c7d1:: with SMTP id g17ls2712984ilk.3.gmail; Sun, 22 Aug
 2021 00:56:56 -0700 (PDT)
X-Received: by 2002:a92:6f0a:: with SMTP id k10mr18601120ilc.105.1629619016241;
        Sun, 22 Aug 2021 00:56:56 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629619016; cv=none;
        d=google.com; s=arc-20160816;
        b=nmteXXs15Ab0kX+I29zWUaDp0yTRO7Oow91z2NlsohbTdMW0ibHTDJIM+gGJqdpOEf
         KCW3HNQNM6ZhD3mLeJKYvMV9xHxMXEn2v6CASy/RpXo+gHhA6r3pI/hdfP8ZYjgz5mXr
         01g0nTi1gWdRTSZy+cfk1zdiRWQilISx9YeXhMw9v+ZUah1tAozEQjdwjkbjjDGsD0r2
         EtPkLuZymBdCleusiIGkpR7U9MUxdCl6KmTymnDuTXW/63ScDq63my71jNVHNYyr/u9R
         zV9sXLf8TsTIOLQ7kQFRxoKWRQnIdzNA2gdqcQnQIz9gr2vatZayxS3Z5SaMsBk55Jxk
         guKg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=8KnlZyUJ4JJDBTHC/dBVt831TglW4q/rmR4rnphw0w8=;
        b=LUkHy1zJ2I50oSBm2ujAqHKNyzoOLI09BV0+bn35eBf9+IHBEHiEzDCNv0wtFoQ4n9
         6Mt056tbEjs7GaYFUGGtHk4HOReVs8A61QVSKX+Sp0oEp0sa59BuB+ke5t7oxpnxBfxW
         b3CthyDQO9mcF2Fj6eWcKDEh2RVbpS01QYq0MetvfHWzt0j0cYjpmfp08idXw5DV0F+n
         0H42NSF+0ltzR7veBPI2ILA+bDu7VgmF6W1agUp5ZOmZk1y/jX4djruQaQJvpLH1XISc
         DzD4Es0//hz7i/2OjJf2LJz9rckJPewzlmivr46/G9384ibDc7u15E2Q0US1S+23SBzr
         q0yw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=Y+mT4XZs;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::535 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pg1-x535.google.com (mail-pg1-x535.google.com. [2607:f8b0:4864:20::535])
        by gmr-mx.google.com with ESMTPS id c81si654462iof.3.2021.08.22.00.56.56
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 22 Aug 2021 00:56:56 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::535 as permitted sender) client-ip=2607:f8b0:4864:20::535;
Received: by mail-pg1-x535.google.com with SMTP id y23so13641479pgi.7
        for <clang-built-linux@googlegroups.com>; Sun, 22 Aug 2021 00:56:56 -0700 (PDT)
X-Received: by 2002:a05:6a00:1a49:b029:3e0:3b2c:c9c7 with SMTP id h9-20020a056a001a49b02903e03b2cc9c7mr28243759pfv.8.1629619015627;
        Sun, 22 Aug 2021 00:56:55 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id 31sm13965099pgy.26.2021.08.22.00.56.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 22 Aug 2021 00:56:55 -0700 (PDT)
From: Kees Cook <keescook@chromium.org>
To: linux-kernel@vger.kernel.org
Cc: Kees Cook <keescook@chromium.org>,
	Rasmus Villemoes <linux@rasmusvillemoes.dk>,
	Daniel Micay <danielmicay@gmail.com>,
	Francis Laniel <laniel_francis@privacyrequired.com>,
	Bart Van Assche <bvanassche@acm.org>,
	David Gow <davidgow@google.com>,
	linux-mm@kvack.org,
	clang-built-linux@googlegroups.com,
	linux-hardening@vger.kernel.org
Subject: [PATCH for-next 24/25] string.h: Introduce memset_startat() for wiping trailing members and padding
Date: Sun, 22 Aug 2021 00:51:21 -0700
Message-Id: <20210822075122.864511-25-keescook@chromium.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210822075122.864511-1-keescook@chromium.org>
References: <20210822075122.864511-1-keescook@chromium.org>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=2698; h=from:subject; bh=MIZu0nCxR6KieORNJWhN3qltUR3m4MTuETFcTLC3tSY=; b=owEBbQKS/ZANAwAKAYly9N/cbcAmAcsmYgBhIgH5YaWY/R52rHxtKPpztby55TKg0ehRWRvT+K+I ja0DQ6iJAjMEAAEKAB0WIQSlw/aPIp3WD3I+bhOJcvTf3G3AJgUCYSIB+QAKCRCJcvTf3G3AJu0ND/ 9b6A+AeTKAspoJhIm34uafRRj1V+94SeH/MvXCB9q0DbskDNw57WyI9kT/GkIbWCUJleyzbZRN++i+ +bDJe2xRAPhiofu+4S7lRyRqxwYRUoSAE+DnA6PYJWz0y85VjybzJX28I4vWW1njWrfyTq7akK68qP Cf3KeFQmoeeB/R/qW50eVB+wjN4+KHR1jcr6RcZ9C0ZpXbfCik5gBH9zGR5TE+zpzlTtZ7l+B1/C33 rEXbHWRtf+arRLtfkqLV3OtOoctiNY1nZDKxiO8jV/SCsyiZg9gmKVm1MfGVE9LrUc2OeYF6OxcKRw gtG8h4QI/fFAc1KLnhXrQP+tNflZzqrYQPXAGMfzKu8PvY9/mFeUQbOfmp8qWweBxNPr67znM/TBg2 D3zKxgJW19D4Wm46giezi6of9EoJgGIpaLsnMkoyvUttBe1ycJ9znwzLWB4HB1SaZAO0YBnGVUqBLn uFZ5/qk849G8+x8vZWNNYyOMtq//WryZQBQ3VyL1p4DRezo7cLmLxw+Wuzwl/jk0LFnutkL5JsFYMP hmg+T6IddvJ/aSVlhCojoBGb4IBSWtgMxPbzLivLwM9B3vZC3b7oXPwaoXK7ck72rWEd9EOItygnQz X1hWv17JmRFkE9hXMK1yP7eco8qX4cs6GGCcB0Lnp4EE1zASt6qPboWk3DzA==
X-Developer-Key: i=keescook@chromium.org; a=openpgp; fpr=A5C3F68F229DD60F723E6E138972F4DFDC6DC026
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=Y+mT4XZs;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::535
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

A common idiom in kernel code is to wipe the contents of a structure
starting from a given member. These open-coded cases are usually difficult
to read and very sensitive to struct layout changes. Like memset_after(),
introduce a new helper, memset_startat() that takes the target struct
instance, the byte to write, and the member name where zeroing should
start.

Note that this doesn't zero padding preceding the target member. For
those cases, memset_after() should be used on the preceding member.

Signed-off-by: Kees Cook <keescook@chromium.org>
---
 include/linux/string.h | 18 ++++++++++++++++++
 lib/test_memcpy.c      | 11 +++++++++++
 2 files changed, 29 insertions(+)

diff --git a/include/linux/string.h b/include/linux/string.h
index d593de2635ba..38acc436dba2 100644
--- a/include/linux/string.h
+++ b/include/linux/string.h
@@ -288,6 +288,24 @@ static inline void memcpy_and_pad(void *dest, size_t dest_len,
 	       sizeof(*(obj)) - offsetofend(typeof(*(obj)), member));	\
 })
 
+/**
+ * memset_startat - Set a value starting at a member to the end of a struct
+ *
+ * @obj: Address of target struct instance
+ * @v: Byte value to repeatedly write
+ * @member: struct member to start writing at
+ *
+ * Note that if there is padding between the prior member and the target
+ * member, memset_after() should be used to clear the prior padding.
+ */
+#define memset_startat(obj, v, member)					\
+({									\
+	u8 *__ptr = (u8 *)(obj);					\
+	typeof(v) __val = (v);						\
+	memset(__ptr + offsetof(typeof(*(obj)), member), __val,		\
+	       sizeof(*(obj)) - offsetof(typeof(*(obj)), member));	\
+})
+
 /**
  * str_has_prefix - Test if a string has a given prefix
  * @str: The string to test
diff --git a/lib/test_memcpy.c b/lib/test_memcpy.c
index 3b485de8c885..fb5deaf04418 100644
--- a/lib/test_memcpy.c
+++ b/lib/test_memcpy.c
@@ -222,6 +222,13 @@ static void memset_test(struct kunit *test)
 			  0x72, 0x72, 0x72, 0x72, 0x72, 0x72, 0x72, 0x72,
 			},
 	};
+	struct some_bytes startat = {
+		.data = { 0x30, 0x30, 0x30, 0x30, 0x30, 0x30, 0x30, 0x30,
+			  0x79, 0x79, 0x79, 0x79, 0x79, 0x79, 0x79, 0x79,
+			  0x79, 0x79, 0x79, 0x79, 0x79, 0x79, 0x79, 0x79,
+			  0x79, 0x79, 0x79, 0x79, 0x79, 0x79, 0x79, 0x79,
+			},
+	};
 	struct some_bytes dest = { };
 	int count, value;
 	u8 *ptr;
@@ -258,6 +265,10 @@ static void memset_test(struct kunit *test)
 	memset_after(&dest, 0x72, three);
 	compare("memset_after()", dest, after);
 
+	/* Verify memset_startat() */
+	dest = control;
+	memset_startat(&dest, 0x79, four);
+	compare("memset_startat()", dest, startat);
 #undef TEST_OP
 }
 
-- 
2.30.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210822075122.864511-25-keescook%40chromium.org.
