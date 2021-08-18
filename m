Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBS6G6KEAMGQEIJXBB7Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf3d.google.com (mail-qv1-xf3d.google.com [IPv6:2607:f8b0:4864:20::f3d])
	by mail.lfdr.de (Postfix) with ESMTPS id D6E343EFAB2
	for <lists+clang-built-linux@lfdr.de>; Wed, 18 Aug 2021 08:06:04 +0200 (CEST)
Received: by mail-qv1-xf3d.google.com with SMTP id e17-20020a0562141511b029034f8146604fsf1497615qvy.12
        for <lists+clang-built-linux@lfdr.de>; Tue, 17 Aug 2021 23:06:04 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629266764; cv=pass;
        d=google.com; s=arc-20160816;
        b=hVMZZxbnX90iMtpqiadWnEOfcM/8ZV4qqscRghZ8f20ymCPMEbpL/PeWI0fPz7I/pz
         H75DzzVpkbktLBp6r4y/SRg8zQZhn4IrzdBD7FR+mzxRYinuxVirTt5pLNCQkZv74qM9
         +3BMHZmzmV+IgH4LPPtrrJ45QnT4kV1IxY0djtGDokrvpL4uhIeF4oFlWYq9dLAjkKMn
         Fq672G2xjGfAiuTgkTK2vCpJ/re6MpkCSq2klLJNp2k82J8/lgKccycSjL2x4lYf9kqR
         x4Aqbr2rBi5+PKapEscsYx8Av2BjEj299KV2SinxOSKQnVse94UNAXPfAFQx+5Afgu7t
         N6SA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=xMl1A+Tajnwl4MRa3aL5uN6kYw9wxCp5E5/d4kDHT0U=;
        b=sBQMT6wcynJ2MS6ZzjMj6rk9AbgrKsuMpWJV/c9+hjjAk3vOaWYSML+QZ8GeRV+VIR
         DMqf5TGV0h8a4juhetM++zv4NPBv1i1t334xRJIlk9xbRGtQN8FbOsGIktRdMRY5Wdr6
         6vyl4we2tUyZT8eAGtaG/Ng0G1bkCZ5gT8w8nZwmmSJMD9RwP4j9KErmb3kJHW+wYzhN
         3knk2eERTpx2LzDgSQCNA1+UGykPlNBCOSA++Ap3MI64kp3tMh6uRYBPJF5LR2qYsH9O
         b0xt5mwguxk3zsSn1nJLkmhtJyenrvjx/jfJSFaC4kOy5ioMiHsLdR7JDOOiQEYvse43
         0deQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=CzXk1xRp;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::531 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=xMl1A+Tajnwl4MRa3aL5uN6kYw9wxCp5E5/d4kDHT0U=;
        b=Tvtk1pFSkeraoai2Bg+bHUSp/ZZbMkJ2Vlao/07tj8+Z5nvW2fjylzpz4+h5tX4xKR
         Lt2rROgPAZCyAC7p7YB6k8Ah9ksBmqrcmwFsqC6a+uLIUZHxUykJ3LbnJLf6oyt8BmAG
         1i849O0MSoUCdaBCbPtyckqiUDqg6/xau5xT3gVhLH5M+xzV+xSaiGajD4ZUK//oKawI
         R29R+8TCYpNEdYqaBQLQYFC1zV/OlWNZydI823lyuseg2PIso/kEwabidIIKBiFDP4/b
         95zaxH0HbUT18qHOPO1Ht65NLqFn7qp5kCl68/rPLtnS/UjQzHZilPOxKlZpbKbIUdQU
         tovg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=xMl1A+Tajnwl4MRa3aL5uN6kYw9wxCp5E5/d4kDHT0U=;
        b=N8/3YhWA9TybeQHhoKWrq80dzQRBuwzGrkra3fS34EcAMg14cYpUQrITdS18x7iCFD
         bDsEfskE5YAhV1BzZ1hJDdp8R+lOQoaUUbywRgQySHIW7z//OaicjW8/zPr6IJPSVh5K
         DHengkAMw67GfEqGi5+q4vuh4h2unQkRwoju9Fb5Q+nv9EwnP011vRvb5PzVn8uCUawQ
         rMRaA2GZ7shoBQK1xFLp6h0jSM10+LKVZHTjxqcydg9qQq6JZlof/zrS2NscA0awL+rz
         LDJxbxgvH4AKClXcy/TOp4WaIZnTcm28vN1SPcmLZ/5Ithg1L2kb0ugXqRiKK0WMtbMS
         MO5g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5302cijwlBsWoYQQIaXzhISJk675bOzJ5fl6WafkIKxEvK+PERGP
	pePz3Y+1UFbZwZXc+aTj7/I=
X-Google-Smtp-Source: ABdhPJx+nZK0WXBMC+7fEnILp7AMjrFIxc3j2ubibUj8jljBqXtapr7avEMI3chMrDC3C0bBOyreAA==
X-Received: by 2002:a37:846:: with SMTP id 67mr5454453qki.167.1629266763993;
        Tue, 17 Aug 2021 23:06:03 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a0c:e5ca:: with SMTP id u10ls324169qvm.8.gmail; Tue, 17 Aug
 2021 23:06:03 -0700 (PDT)
X-Received: by 2002:ad4:558d:: with SMTP id e13mr7240742qvx.55.1629266763538;
        Tue, 17 Aug 2021 23:06:03 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629266763; cv=none;
        d=google.com; s=arc-20160816;
        b=A8AWC2HfpTBwIWl/B3VnmRpBifDThJ4st1touje1BJAdBsPxZ8p70kVwU6Fyre7XQg
         +NZCPQ/ITGC/C7ndKeQx2hThcKSo3mkx/cSK3trjhHMxm/o3mVMwahjA7CTwyqKId3WZ
         1BK76/DwOKpRcmefg5TXZ8hD410WdApKTzX75FzMthjc17FD35ZFeYq4mGaoMs40VXWF
         12dCCbpYOEwASmvWgB31WJacL1+VYrnBc4U6Kq6pp6SRpZpqMc5iw+a6TTUepazRPZ+N
         K/1CjbcYTYDg24V2aq5ZOdIjvLnboXYTobzH9+npUwUz0BmeytGFef2K8oHoaHA4Cthn
         Hgjw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=yj6MSRHjUgDQQeVVOJJG7wsN0XYzp0WPRrxqPpzxE8c=;
        b=dhKa5KSOArIAruPZokwyl+/rvOa9ToiRqL9DEvdBTDYjsmIQfTIHMidDF+jZI8gLXk
         S+YsnlHVkCbohgCcbej4HqRaZzNNq8UzURNqKGSwQp4oPonlnm2pcbIc/qPA2sU+lSNc
         tSEtXq/u3c0kPYoxCyEuaZgn8WrNjDdh2bpGncO+e+wyr9OdhTIevrzvVQK95v8faebv
         +9w3EbynaQ9u8hwLnKdfcSS2dWeJOQ9Xz1CwkmfobQY82ztGZ+0lm8I4YIDZ29Gyvz3i
         oMGKtSX+nOp12Lf2JA7aLZxp1bg2vB8qIlRD1lWalrnmm32Ak4KcJv6vP/Eap7PRrAFC
         YsrA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=CzXk1xRp;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::531 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pg1-x531.google.com (mail-pg1-x531.google.com. [2607:f8b0:4864:20::531])
        by gmr-mx.google.com with ESMTPS id f13si206343qko.2.2021.08.17.23.06.03
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 17 Aug 2021 23:06:03 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::531 as permitted sender) client-ip=2607:f8b0:4864:20::531;
Received: by mail-pg1-x531.google.com with SMTP id q2so1140816pgt.6
        for <clang-built-linux@googlegroups.com>; Tue, 17 Aug 2021 23:06:03 -0700 (PDT)
X-Received: by 2002:aa7:850c:0:b0:3e2:edf3:3d09 with SMTP id v12-20020aa7850c000000b003e2edf33d09mr806951pfn.42.1629266763221;
        Tue, 17 Aug 2021 23:06:03 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id mr18sm3750578pjb.39.2021.08.17.23.05.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Aug 2021 23:06:02 -0700 (PDT)
From: Kees Cook <keescook@chromium.org>
To: linux-kernel@vger.kernel.org
Cc: Kees Cook <keescook@chromium.org>,
	Steffen Klassert <steffen.klassert@secunet.com>,
	Herbert Xu <herbert@gondor.apana.org.au>,
	"David S. Miller" <davem@davemloft.net>,
	Jakub Kicinski <kuba@kernel.org>,
	Andrew Morton <akpm@linux-foundation.org>,
	Francis Laniel <laniel_francis@privacyrequired.com>,
	Vincenzo Frascino <vincenzo.frascino@arm.com>,
	Daniel Axtens <dja@axtens.net>,
	netdev@vger.kernel.org,
	"Gustavo A. R. Silva" <gustavoars@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	linux-wireless@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	linux-staging@lists.linux.dev,
	linux-block@vger.kernel.org,
	linux-kbuild@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Rasmus Villemoes <linux@rasmusvillemoes.dk>,
	linux-hardening@vger.kernel.org
Subject: [PATCH v2 37/63] string.h: Introduce memset_after() for wiping trailing members/padding
Date: Tue, 17 Aug 2021 23:05:07 -0700
Message-Id: <20210818060533.3569517-38-keescook@chromium.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210818060533.3569517-1-keescook@chromium.org>
References: <20210818060533.3569517-1-keescook@chromium.org>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=4092; h=from:subject; bh=ynt+tRmRAcx7nox2wqu1NNTkTOzsqx2+YTbDvMLTbxE=; b=owEBbQKS/ZANAwAKAYly9N/cbcAmAcsmYgBhHKMmwbMjodaindknTsBVe7537WHFelKIadd+u5e3 SxHIQdeJAjMEAAEKAB0WIQSlw/aPIp3WD3I+bhOJcvTf3G3AJgUCYRyjJgAKCRCJcvTf3G3AJnBLEA CdNu7o5W+92HzRi1fko57n/mLwv/f7ERDN9lR9c1k1ZpJRD294w1BBHne+86h1ErieaOKABkA1tR9Z RPuVXQx84Ll35fJ448mje10Vlj4xMIsIO7I2+pCjPpZeZUknIkUAfgL4BIt11O1QZKIXt5gv0ApWLk F0vG/OdP1EsH7UfN0sGFW3dUPcQnV365DGpsYsXEbfYPUtv7V0sIo4u2EqY+DWjZNXgimvh1QDuwFD ASW7FG+u7LV5vdhie6SOhQtFr9ccWj/RPLaI95ILtuhSn99zvuAmxmiV9Sq50joZ8BHWNBKRMezCGO 3/YVBD1ioQyCyuoiDxeL9UMcrdPSZQt6aLznsfSXoKOqLO+Ir7tMR4XrhkEg8MfM+mA6JudX+GjyI5 HhSyIFjb1vJpco5l2tSPxCz4ioyocE52DQfc0wA9/yfi2liO4gbBZCqBmTCsIZpwdwhQkDkVBK5ZvR HOtc2ADG105U1yBtwAKKBM1Kpn6jPowZCs5D1qDOHYz1gAWljX17P6SuxaG3G/dMeo5MT0LpM97ZfJ VauEeeQUKsZsz2LSYtk7JsMuq3dNZ28R5tJc/mwglhdLai09Fi/99TDZ2wV4u2YvpwKr9UaxVWIuT5 e3kxAxaDFTyXoo70DNH9x1G7c+SuCaUbgMUIaDh6BALQ3dZqhLv+3W2zODmg==
X-Developer-Key: i=keescook@chromium.org; a=openpgp; fpr=A5C3F68F229DD60F723E6E138972F4DFDC6DC026
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=CzXk1xRp;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::531
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
after a given member. This is especially useful in places where there is
trailing padding. These open-coded cases are usually difficult to read
and very sensitive to struct layout changes. Introduce a new helper,
memset_after() that takes the target struct instance, the byte to write,
and the member name after which the zeroing should start.

Additionally adds memset_startat() for wiping trailing members _starting_
at a specific member instead of after a member, which is more readable
in certain circumstances, but doesn't include any preceding padding.

Cc: Steffen Klassert <steffen.klassert@secunet.com>
Cc: Herbert Xu <herbert@gondor.apana.org.au>
Cc: "David S. Miller" <davem@davemloft.net>
Cc: Jakub Kicinski <kuba@kernel.org>
Cc: Andrew Morton <akpm@linux-foundation.org>
Cc: Francis Laniel <laniel_francis@privacyrequired.com>
Cc: Vincenzo Frascino <vincenzo.frascino@arm.com>
Cc: Daniel Axtens <dja@axtens.net>
Cc: netdev@vger.kernel.org
Signed-off-by: Kees Cook <keescook@chromium.org>
---
 include/linux/string.h | 29 +++++++++++++++++++++++++++++
 lib/test_memcpy.c      | 24 ++++++++++++++++++++++++
 2 files changed, 53 insertions(+)

diff --git a/include/linux/string.h b/include/linux/string.h
index cbe889e404e2..fe56a1774207 100644
--- a/include/linux/string.h
+++ b/include/linux/string.h
@@ -272,6 +272,35 @@ static __always_inline void memcpy_and_pad(void *dest, size_t dest_len,
 		memcpy(dest, src, dest_len);
 }
 
+/**
+ * memset_after - Set a value after a struct member to the end of a struct
+ *
+ * @obj: Address of target struct instance
+ * @v: Byte value to repeatedly write
+ * @member: after which struct member to start writing bytes
+ *
+ * This is good for clearing padding following the given member.
+ */
+#define memset_after(obj, v, member) do {				\
+	memset((u8 *)(obj) + offsetofend(typeof(*(obj)), member), v,	\
+	       sizeof(*(obj)) - offsetofend(typeof(*(obj)), member));	\
+} while (0)
+
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
+#define memset_startat(obj, v, member) do {				\
+	memset((u8 *)(obj) + offsetof(typeof(*(obj)), member), v,	\
+	       sizeof(*(obj)) - offsetof(typeof(*(obj)), member));	\
+} while (0)
+
 /**
  * str_has_prefix - Test if a string has a given prefix
  * @str: The string to test
diff --git a/lib/test_memcpy.c b/lib/test_memcpy.c
index be192b8e82b7..50bc99552a17 100644
--- a/lib/test_memcpy.c
+++ b/lib/test_memcpy.c
@@ -215,6 +215,20 @@ static void memset_test(struct kunit *test)
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
@@ -245,6 +259,16 @@ static void memset_test(struct kunit *test)
 	ptr += 8;
 	memset(ptr++, value++, count++);
 	compare("argument side-effects", dest, three);
+
+	/* Verify memset_after() */
+	dest = control;
+	memset_after(&dest, 0x72, three);
+	compare("memset_after()", dest, after);
+
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210818060533.3569517-38-keescook%40chromium.org.
