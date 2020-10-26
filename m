Return-Path: <clang-built-linux+bncBAABBE7Q3P6AKGQERGVAPDA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33b.google.com (mail-ot1-x33b.google.com [IPv6:2607:f8b0:4864:20::33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 6377829924A
	for <lists+clang-built-linux@lfdr.de>; Mon, 26 Oct 2020 17:23:49 +0100 (CET)
Received: by mail-ot1-x33b.google.com with SMTP id n21sf3773907ota.18
        for <lists+clang-built-linux@lfdr.de>; Mon, 26 Oct 2020 09:23:49 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1603729428; cv=pass;
        d=google.com; s=arc-20160816;
        b=fOtNlsu/ZsuJ3speU6DnZYALzbEbMmroE9wmPvsd+8sr9/LdHhNL6x4cHWFP0RnrXu
         sts1lkJwwSuZmA1YmMfnYNUgWnEB9VJR2WeCoxZmbaaYOLeNd7+Mx+W4MpHCJT2HShQQ
         lwjfNjx8w1+MFUY0TVbNQqhmB/mhsANvwUrSqFdI3j9xKe9OyQq/6S/AzyI6+jDJpOTe
         k31KU66/8xG9Y2VFCThdDFQ3hJRfHKvzdzFrqW2saDrGDoa9jjLxhIFl4hsQd38X15Vp
         m03Sr5QBiNy2/H0SnYPLuwfP1hIIRDd6aOB6nLm2YInmCEpH6c/09ezLo9W40a96m7yK
         n37Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=OE0PIOWILivD1s2xi6JbavdoYGOfSIsWoKOvVFvA1V4=;
        b=tUHt3mnAHc8m+Mslf3m9u2BpE0EbeFatAZ3l+LS9eys7ih5mcKRxzoRB/9K6sNEzDQ
         PYnO6I1caTbEpZOudpDhaWt1n0NrRTiUjVwWDFTXcFYZSJ15wcDN6MPMYdunL3Pg29j8
         yapbpJNwfJCcnvPeSBEEo8erh1LeMrTqXDDhA48uGoxE46xq6WfYpFThPz53sC9GG6W0
         LtVJCOss1OF24BxSUcIqABut4WpYyXmi3YuI/Lr2h2/y9fUnkHvh8fwy4/7xu5oeLQz5
         S75PJtdyiHViqdrylO0EgWIp+FZS5ENjg4BEa5Se2A8Q6GNwQYLw9jdoloazPEo5dXnT
         6KEQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=esLzZFZJ;
       spf=pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=arnd@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=OE0PIOWILivD1s2xi6JbavdoYGOfSIsWoKOvVFvA1V4=;
        b=nyPVqFk7d9eEZE66c6xGgE1/pYvkw3s4C0zn3cmfjuKwecUdu8YKYevGHstiOimnWj
         jeqWIMFFZmzKi+7pyXzFe9h2TG5YLdErQu5sJkU8Ni6esKuP52VqggqQGBoufdHs37je
         FL1mnvKqcYRpQuH90dOu/hybl5fzEz7Y2E/wp2v05+i+YGcjZm8gMiwv/GDm/SacVVno
         4aINvdQVKdxidAgC9dFC5wB0djRXZAUirT+OwyNg6HXS8Y0A6LUx1YW+0HYCociKEQ1r
         SvMyBLOsN2GgfaR8etZEVBA+B1E7Gd8Ab8kuqTplR+rZnqNEHjtSmn12it/QvyjghH3T
         Ee0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=OE0PIOWILivD1s2xi6JbavdoYGOfSIsWoKOvVFvA1V4=;
        b=VC01d61Ps+D6flkTYq0I1/5r3g+7/L54IOYCgATFIOTLlSpvHQ8qGR98aCzrIjBCsR
         xbFFGljj/P4bho0DWfKBOwbwWMmdeAePCKdHyU8UsXI+IO7tGdMXoAhDi5iMEgwDqhqX
         thC8bfecK8Y5Rrj4LwiMFWqXk3CDs2t19GSYtHbO+Omt/1s8yo/NzsW2s+bDc4vlBpzX
         3dakrRk4Gu7PFTPxXd2lBDd9v6JGaQqKjNVdU3m/EH2MSuspP4+LkeU/x/X1Pie7HHPu
         WHo1GeFrs4y6BomDDz1D/1O2Stdeo+cWdYZSqv6CkjmKGz9Z7ss4vzmaXiCQ5qKO8Lne
         GlTw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533KZLc2Ei47VMxWhgrKKIm9uM5Kf6kYQ+63N/WgMPd0s5W+eJ3M
	qxs0LfeR3n6Cj4/B5oF/jYI=
X-Google-Smtp-Source: ABdhPJxfAR36CHAhNB1tfc1aSNI4NUAOMm/KOuXUngMTGK+AhcdSjZT+I0ir6vE9o++LYv0iRTorQQ==
X-Received: by 2002:aca:a893:: with SMTP id r141mr10964121oie.50.1603729428018;
        Mon, 26 Oct 2020 09:23:48 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6830:20cb:: with SMTP id z11ls2269144otq.9.gmail; Mon,
 26 Oct 2020 09:23:46 -0700 (PDT)
X-Received: by 2002:a9d:4549:: with SMTP id p9mr15811006oti.196.1603729426238;
        Mon, 26 Oct 2020 09:23:46 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1603729426; cv=none;
        d=google.com; s=arc-20160816;
        b=kKzHkphNllxYM4ZNCuwzjprPXUmTdU2cfa6vwp1HoU3whAj91FQIqt0WzqyoluMlrU
         LwTzP12M7OdNNetjvhF5VT0Wng3rDMRU+acyUY3AMw1gqIUCBwLEn6BsXwda/y1JTSJS
         2i8f402PUyUVLy3jFYlnmZQtS6yIc/nwYwSZxgTISG98okbqwJYFQ9zZ3P/nszFZ35t/
         0BEh14ncUmMmqUInJueOdqOHOAiVy9FUCvBgPQDCy9cV+2aqA7Dclp1502JWF5oySDBN
         RfC5XdhkdgZxshzP31peNTb5R7X0tTkImKpvIab361iTuuDutR3lO7NHlsQhJ9hEkUyC
         wazw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=edx36/+igiNz5335idgKbwDuQnltEIC0obEdbI6IhYo=;
        b=U8nVgu0PYxe2xJ+nGWfITEbwgLDNbL73/StoU23GpnJlKzXUuTHWlRYtHGtIhNU0xm
         tczQoGRLQjnV0m/dfYpx8pq0JHfASq9spZg+1im0spO6l3vRtgunRqIihMhR9fAMI1go
         Hf+E2dy2j0xQVfKpI3KVW3xtoZMbd9H1A52LAD37yFJ1u/xwt3gVmTOQtixBgA7T8Svz
         AFlQ+zIewqVonOpqF5h5KzLRvj1o2YcPO7QWT4tpBDJ4Di5yZmAFR+UmueIQ03nDD72p
         K3HPkR76FVqVeVuIlBvxD55hClojOk7M6RtqjJvDB38OmdmhFZ4Z9aAk6nGUsL8HFdqC
         cAAg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=esLzZFZJ;
       spf=pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=arnd@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id q10si832809oov.2.2020.10.26.09.23.46
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 26 Oct 2020 09:23:46 -0700 (PDT)
Received-SPF: pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from localhost.localdomain (unknown [192.30.34.233])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 029C722284;
	Mon, 26 Oct 2020 16:23:42 +0000 (UTC)
From: Arnd Bergmann <arnd@kernel.org>
To: Arnd Bergmann <arnd@arndb.de>
Cc: Nathan Chancellor <natechancellor@gmail.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH] ctype.h: remove duplicate isdigit() helper
Date: Mon, 26 Oct 2020 17:23:29 +0100
Message-Id: <20201026162336.3711040-1-arnd@kernel.org>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
X-Original-Sender: arnd@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=esLzZFZJ;       spf=pass
 (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted
 sender) smtp.mailfrom=arnd@kernel.org;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=kernel.org
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

From: Arnd Bergmann <arnd@arndb.de>

gcc warns a few thousand times about the isdigit() shadow:

include/linux/ctype.h:26:19: warning: declaration of 'isdigit' shadows a built-in function [-Wshadow]

As there is already a compiler builtin, just use that, and make
it clear we do that by defining a macro.  Unfortunately, clang
does not have the isdigit() builtin, so this has to be conditional.

Signed-off-by: Arnd Bergmann <arnd@arndb.de>
---
 include/linux/ctype.h | 16 ++++++++++++----
 1 file changed, 12 insertions(+), 4 deletions(-)

diff --git a/include/linux/ctype.h b/include/linux/ctype.h
index 363b004426db..c407acb258c2 100644
--- a/include/linux/ctype.h
+++ b/include/linux/ctype.h
@@ -23,10 +23,6 @@ extern const unsigned char _ctype[];
 #define isalnum(c)	((__ismask(c)&(_U|_L|_D)) != 0)
 #define isalpha(c)	((__ismask(c)&(_U|_L)) != 0)
 #define iscntrl(c)	((__ismask(c)&(_C)) != 0)
-static inline int isdigit(int c)
-{
-	return '0' <= c && c <= '9';
-}
 #define isgraph(c)	((__ismask(c)&(_P|_U|_L|_D)) != 0)
 #define islower(c)	((__ismask(c)&(_L)) != 0)
 #define isprint(c)	((__ismask(c)&(_P|_U|_L|_D|_SP)) != 0)
@@ -39,6 +35,18 @@ static inline int isdigit(int c)
 #define isascii(c) (((unsigned char)(c))<=0x7f)
 #define toascii(c) (((unsigned char)(c))&0x7f)
 
+#if defined __has_builtin
+#if __has_builtin(__builtin_isdigit)
+#define isdigit(ch) __builtin_isdigit(ch)
+#endif
+#endif
+#ifndef isdigit
+static inline int isdigit(int c)
+{
+	return '0' <= c && c <= '9';
+}
+#endif
+
 static inline unsigned char __tolower(unsigned char c)
 {
 	if (isupper(c))
-- 
2.27.0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201026162336.3711040-1-arnd%40kernel.org.
