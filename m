Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBRHPQGEAMGQES4VRA4Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x740.google.com (mail-qk1-x740.google.com [IPv6:2607:f8b0:4864:20::740])
	by mail.lfdr.de (Postfix) with ESMTPS id 186963D8114
	for <lists+clang-built-linux@lfdr.de>; Tue, 27 Jul 2021 23:16:53 +0200 (CEST)
Received: by mail-qk1-x740.google.com with SMTP id c5-20020a05620a2005b02903b8d1e253a9sf134394qka.11
        for <lists+clang-built-linux@lfdr.de>; Tue, 27 Jul 2021 14:16:53 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1627420612; cv=pass;
        d=google.com; s=arc-20160816;
        b=H5FfLe5ardKbDAReghPbV/P0unP1HM8UqlfAetEZcYJrtXDNk7Cog0tNK8chGluxSI
         TrnYqN6tjnbi5MBE9BH3L37hhhcD8WewL0G5/DACYZUpkoYc861c5qnfi3vVYDhI2ToA
         jO77JIezFrbFUoV9A3bSwyMJJ24HLiKwan/rloIlFcKo+P7PL8U+eGir22bZa2XIdiu5
         eEc5/LELltEckCmbtl9vlACst80Wu7jJ9xOsHLtYwSOI6Sm87K19ta6UmAqCu7hhXPLV
         miJN/ss7G30UIqohOOeEaNmb2dPwQS4WqfPQCfaXhCoAos2t6Mtk9luxDGwZ+nMQ45HO
         H6gw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=NXDQOzl7BPnh2iOIEClrnYoSTNJepCewLePajm0JbtE=;
        b=rrFhzGItVXT8SgE2CS8tB9vf+5gh54ARBPqESKSSE5NxhmAuLpcJdVbdsoRSgSjDkV
         hygiUNaZfdryVcch5rSt2/3j2rP7H4PFJ1jKUJN1i5sZ/oJzqI2jTUK3HBqhxIG04RhL
         LN3kh/tSWWxyfm7unA3uC0QIHh8DEIJpaN1advE6NLoeogmuGoTtcshR/I/3MI0Qj8+0
         +cd4blvIS/hbzZ/xDdQAppxT6YVgeKuhJnel/OyrkZTHwd3NTf5BQeBkpXhN2YFaUOxj
         vhHpA7g9+0s+bv5UUD0vhhDhKt8KHzbCqnfGNy0WlDR8uMu3hizjRtMtxDx7ZPd6BnMy
         ovzA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=OubzHKZ8;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::102d as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=NXDQOzl7BPnh2iOIEClrnYoSTNJepCewLePajm0JbtE=;
        b=EV2mjRlYoXZNN7kx0dOuqZ8mZjcNm1IrJ+lnIemu+UvoOrqOH3aTElzZkGYwPIBpr7
         DTUuHA65SP8tsHEWWle6y5R/RfJ8SzIJHJK7Jx4T3Lb6hz8thi0vytnzRxj9cGgEh1OY
         SQd7xK8kz8X7vEvOenWQ3FyINSBVJSRCvpcd9Q4oBMTOwUeKcF3T07VCaLGXEOI3SqiF
         GSY7Y2nmEJ44M57sJME098YVmC+w0YP4kjXUXueKkhqv4HQrSCFIqnrM4i7NH69NBwkN
         oy6UCMW790Xw0ncfbilffKpyDeS7AWlN/ZwCLrFKOllZYI1CPJZg5QIyiL8MbdyArgJ2
         ZQ0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=NXDQOzl7BPnh2iOIEClrnYoSTNJepCewLePajm0JbtE=;
        b=WL2L/ujiRwZLcjSFxcRnczHU6+uakeZyQWJnjgvdeQAh43sSw9itxuNciXHvVhR8/S
         oE0HPi/j5aaQTny9CB4KwRcQmLglJw9u1o4r/1a47zouWSCfy+IFnbnVE7/V1iU3MZVO
         IdbIbLxwjPXP29ohylsKBILxnvLzJ3LHfLlRINnCxuAeW3DVX6Xtn6gfSOlMy2aKpJFS
         fmkqV0eB3g59d8GWfvTyexQI/Zu1lITp4ZrgdKC//P2Mzpn/mKaqWvNDfvR0cquIdBU2
         1mtqnKujsBGBS6/exik4X6cmrzz+E58jNjH7B9xAsljuYQJ4F0JuVLk42LJN9I1lU2Nv
         3e9Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533/pWIH41zPdl+aDBuViK6dDs3aK/lvBy5tsVy0VSl2mxYMAwre
	L/WswrZvk8wV5r5Nn7xtxL4=
X-Google-Smtp-Source: ABdhPJwkgsRf5ZWhYunJoyuXtKdNbt0VgXSBiNRk/NCJ9wH+ccwtS/T4rpu7J2MLv+MXc0rVXE5vfg==
X-Received: by 2002:a37:b586:: with SMTP id e128mr24272247qkf.43.1627420612179;
        Tue, 27 Jul 2021 14:16:52 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:622a:1016:: with SMTP id d22ls84804qte.4.gmail; Tue, 27
 Jul 2021 14:16:51 -0700 (PDT)
X-Received: by 2002:ac8:5f94:: with SMTP id j20mr21159859qta.225.1627420611718;
        Tue, 27 Jul 2021 14:16:51 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1627420611; cv=none;
        d=google.com; s=arc-20160816;
        b=AZwJcXNHQG704x42GXKueka8aVloPldO/v+pO02aPxBMzegepRPqg3hTvwwiqfOusn
         hVHH4QtC2eV1Vo9YCMgcBntrO6nV2dLN/L1VrJNDfd1LUCLHKqgtwtyCyLPi80f8sj92
         Ia8yINV+sjlOMVn5l9cjTCpm+D/Qc0JJoI644+Shg5KPnQXa1nvicbYowoQuCibf36Yv
         FtFyazhsYFzdIcTh3/hTyhlvNhmNIw0O9hnuu96/803daWM5uMoebUwwnT4jycl8LdwI
         Mh2POTUCGjZDFH+4X/V5lzww94TMo/GWfWBupZ+zQYzGS3ERjTGfo0T+Pf1YvymXVW6F
         b57g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=w4Fdwl9HiFMZ+llOdhUBfZSYAz9VTvRZ/zqP2rqnbdI=;
        b=uDYS+P/tDoDHhz4C6S5/Vcy4EqzqEyJvUzIJFlZWN2df3ByD24DtnRndvGg7OtIogt
         JtMmG6iVBbwDGj2OZ/Z88cGNd6LvxfSVKyQBN1WFrm/GHZKBM3/cTuXtZKaV5P4OvH7m
         n6Osht5nwbk7AR6LJRuu2zVSafCuoXT+pxUaEGQIL9PLMZTZSa6O4KF1u2YDNzDPhfRI
         lAm7xRDP/ZT5eKegETSdVDB7gcApPKCMpn/LrFWaDBkSZN0SUuJfMUPukMztiIBUDGNn
         ZIa7nJzyzn4sVEj5U86No8kb3cQsCHfDrWJveFmWNUgz/yNd+iJhItQxGehAgULuhzfw
         TWMQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=OubzHKZ8;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::102d as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pj1-x102d.google.com (mail-pj1-x102d.google.com. [2607:f8b0:4864:20::102d])
        by gmr-mx.google.com with ESMTPS id x10si293462qkm.4.2021.07.27.14.16.51
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 27 Jul 2021 14:16:51 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::102d as permitted sender) client-ip=2607:f8b0:4864:20::102d;
Received: by mail-pj1-x102d.google.com with SMTP id g23-20020a17090a5797b02901765d605e14so1077226pji.5
        for <clang-built-linux@googlegroups.com>; Tue, 27 Jul 2021 14:16:51 -0700 (PDT)
X-Received: by 2002:aa7:9a07:0:b029:329:46d2:c6e4 with SMTP id w7-20020aa79a070000b029032946d2c6e4mr25255299pfj.81.1627420610912;
        Tue, 27 Jul 2021 14:16:50 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id m11sm1742495pgn.56.2021.07.27.14.16.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 27 Jul 2021 14:16:50 -0700 (PDT)
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
Subject: [PATCH 37/64] string.h: Introduce memset_after() for wiping trailing members/padding
Date: Tue, 27 Jul 2021 13:58:28 -0700
Message-Id: <20210727205855.411487-38-keescook@chromium.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210727205855.411487-1-keescook@chromium.org>
References: <20210727205855.411487-1-keescook@chromium.org>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=2359; h=from:subject; bh=b9cZC+rDD66z1p4TxzACgUY06GpnBkPGzRd2vUJnnzo=; b=owEBbQKS/ZANAwAKAYly9N/cbcAmAcsmYgBhAHOIfqyzMaVVJ7fOFmkjuM928F3ZrP6Vj5vJQu9j TGA+E1GJAjMEAAEKAB0WIQSlw/aPIp3WD3I+bhOJcvTf3G3AJgUCYQBziAAKCRCJcvTf3G3AJvL4D/ 432CWZcCqOkVhZ6rWzVtqmSaSBdcUlSVZvNTubv+qk3MAjGXh0WePvQ/w470x2ODfGCERhFWEDFlQj 68DffRJeemD9mQNtxja/G+yKlfKQtqj2GsW7tkAYMYGdzk44ucXmoA6jnRW6vcayOBno0Ak7JtF4lG m7CwO3b7xHmECqmbPERBBHV/EFy/4S7JgLqoPni03PW1KgZDyCWqbwmB04HSW1ssZRyLMd4s3QMY1T +9uiq7oHu8jR42VT7YaiZc18izUh7AQddCZBlvqcHK6sPbsh+klX5zZS9n02ODAklfDkBGB2gb1tzk qTxXC88avclTCkPd2GBEUQEctsttYoNcK4xZ3zRj+wlfk6n2j/Aj/ysxug7cILnKKFV1GD6Yf8nsLg 2k2xEUpWUhhQ6fcZqBd7cBs5gIDYK2zreDrTKcqVFSQ0lX6w9ZyGULXQjv3ILYDHDHvd1PewBgByhA 8aurJtfihL4zDAjHyVugkZ+nfaAmQVaovogYrWCCXoxbMKSIxExx4nWszpvOPpR1mX+l7gYP24rMp1 l768YtsiX/jU5xOMRn5iJGLFogebnye0HYfk45A60bKdiGZmynlnz5gGZL9zYD/aSJOhSfF3kz5hcE XG0Q1qnKtvYm975U6RI0dZPUWK34kAgIzA9fINgzTL6Q+FxQr5sF43MKxRyQ==
X-Developer-Key: i=keescook@chromium.org; a=openpgp; fpr=A5C3F68F229DD60F723E6E138972F4DFDC6DC026
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=OubzHKZ8;       spf=pass
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

A common idiom in kernel code is to wipe the contents of a structure
after a given member. This includes places where there is trailing
struct padding. These open-coded cases are usually difficult to read and
very sensitive to struct layout changes. Introduce a new helper,
memset_after() that takes the target struct instance, the byte to
write, and the member name after which the zeroing should start.

Signed-off-by: Kees Cook <keescook@chromium.org>
---
 include/linux/string.h | 12 ++++++++++++
 lib/test_memcpy.c      | 12 ++++++++++++
 2 files changed, 24 insertions(+)

diff --git a/include/linux/string.h b/include/linux/string.h
index cbe889e404e2..4f9f67505f70 100644
--- a/include/linux/string.h
+++ b/include/linux/string.h
@@ -272,6 +272,18 @@ static __always_inline void memcpy_and_pad(void *dest, size_t dest_len,
 		memcpy(dest, src, dest_len);
 }
 
+/**
+ * memset_after - Set a value after a struct member to the end of a struct
+ *
+ * @obj: Address of target struct instance
+ * @v: Byte value to repeatedly write
+ * @member: after which struct member to start writing bytes
+ */
+#define memset_after(obj, v, member) do {				\
+	memset((u8 *)(obj) + offsetofend(typeof(*(obj)), member), v,	\
+	       sizeof(*(obj)) - offsetofend(typeof(*(obj)), member));	\
+} while (0)
+
 /**
  * str_has_prefix - Test if a string has a given prefix
  * @str: The string to test
diff --git a/lib/test_memcpy.c b/lib/test_memcpy.c
index 7c64120a68a9..f52b284f4410 100644
--- a/lib/test_memcpy.c
+++ b/lib/test_memcpy.c
@@ -223,6 +223,13 @@ static int __init test_memset(void)
 			  0x30, 0x30, 0x30, 0x30, 0x30, 0x30, 0x30, 0x30,
 			},
 	};
+	struct some_bytes after = {
+		.data = { 0x30, 0x30, 0x30, 0x30, 0x30, 0x30, 0x30, 0x72,
+			  0x72, 0x72, 0x72, 0x72, 0x72, 0x72, 0x72, 0x72,
+			  0x72, 0x72, 0x72, 0x72, 0x72, 0x72, 0x72, 0x72,
+			  0x72, 0x72, 0x72, 0x72, 0x72, 0x72, 0x72, 0x72,
+			},
+	};
 	struct some_bytes dest = { };
 	int count, value;
 	u8 *ptr;
@@ -254,6 +261,11 @@ static int __init test_memset(void)
 	memset(ptr++, value++, count++);
 	compare("argument side-effects", dest, three);
 
+	/* Verify memset_after() */
+	dest = control;
+	memset_after(&dest, 0x72, three);
+	compare("memset_after()", dest, after);
+
 	return 0;
 #undef TEST_OP
 }
-- 
2.30.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210727205855.411487-38-keescook%40chromium.org.
