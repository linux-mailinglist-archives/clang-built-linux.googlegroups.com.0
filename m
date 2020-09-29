Return-Path: <clang-built-linux+bncBDYJPJO25UGBB36JZ35QKGQEODVPODY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf3c.google.com (mail-qv1-xf3c.google.com [IPv6:2607:f8b0:4864:20::f3c])
	by mail.lfdr.de (Postfix) with ESMTPS id B6AE627D9D7
	for <lists+clang-built-linux@lfdr.de>; Tue, 29 Sep 2020 23:19:44 +0200 (CEST)
Received: by mail-qv1-xf3c.google.com with SMTP id 99sf3336810qva.1
        for <lists+clang-built-linux@lfdr.de>; Tue, 29 Sep 2020 14:19:44 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1601414383; cv=pass;
        d=google.com; s=arc-20160816;
        b=JemAf8Ppp5FCgqmMDWGQDbForedxwryQ2IvZmvGk9c0Ku8G1HcMwLEkn5E/8t2+yzg
         /bMsw9lLw9OTJP087vZdtSMNSVvfgHE3lS43gPgkMtSUo64HYdTVKnD24kpHaOFyS1kL
         vEWq9zNNR7YMC1aUJkFCdsYwYqbN6B70GSpcZ9BbL/VWUQ2kn6D8eo2dw3fboAWo70pX
         08LpRunf3CyyWRsYPVqP9Flm3bUPy+4It16S2yUa+OyjlOucSAWTEuHBLw8WS8BJa2Do
         bUR1lrNSw42S5wXRoREBxMk4uJXXgQyL4IjBwPGcsrGODAmnpZhViZX+fPyZK0JOvRXo
         6eaQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :mime-version:message-id:date:sender:dkim-signature;
        bh=LrqxsJ0k1/gAPuJpnDyRv2Dvhd6TH5TFTQHo9dgsIkA=;
        b=kjf4Nn0aNTB7xVaNg5F4NQ4G3pMC+GoLujkKSwXrvNFBqX9R7Re3sgxa763x/v6Wiv
         a2m+6EspzI85vXcIYrKkSX3mnJhi7iQZ6BBZzPtpWE5DYEdL7N1uR6QoR0+hPVpV+lId
         lTM1TMVAblVRDA8wqlXNIPNj4Ka6HAkyynDcN9AyJKjVJ2gsPiBG4lp+lV9DPOYBuBd0
         3fY2KAf1zLdHiwO9fMct8M5oBUC9LV73FPk9HSQdzObrbPUG/Iu7jZzEML/rC2OOHiAn
         F62GnIJ04PD5cnExScPOD0pkVYd428QWMAp7E0pa7v939XC7zpvMdUptUAQBgcitXU3Y
         OgVw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Y7594vIb;
       spf=pass (google.com: domain of 37qrzxwwkaakwmn1j3uwrn01pxxpun.lxv@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::44a as permitted sender) smtp.mailfrom=37qRzXwwKAAkwmn1j3uwrn01pxxpun.lxv@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:message-id:mime-version:subject:from:to:cc
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=LrqxsJ0k1/gAPuJpnDyRv2Dvhd6TH5TFTQHo9dgsIkA=;
        b=YvKeHKPaU3wTnKyfLgdq2ZLZYW3ycldi2vrBX2MhZp8OWfZmQqAxZA6AOvwFKmD9nc
         OAeZexaY3xUnkKWv2gemN8/63OgCX2iEmNKAbAcDfUU7SfA2FNKRZLrMmpL6t4mEpzZP
         UQNa8mFbtyuAf7u3AeT9sj+La1G7RCduVHdFgrngBozRDMaBiO9obxdgrERQqvWcivlL
         +UXoTzaaAWzipySzNNUFotda/HWBIPoqNl2l4h6HLYPFYNhqB0AdsGKPWNWcssxmoeZh
         IVi6UlMfYdyl5W8vG/6mo3t+O5MI5tL8qdXYazWNMc3ovBLmY+SQmdI/MpVigLQ/u51P
         672g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:message-id:mime-version:subject:from
         :to:cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=LrqxsJ0k1/gAPuJpnDyRv2Dvhd6TH5TFTQHo9dgsIkA=;
        b=eCt0VugfHMgrEks4hGJeFCd1Z7LVRKyf1sVfKpRKpCwNMuVd8YZVkuFYl2RzEvXWzr
         v8Hn10+xJDuWhxK2a5rUp7tFv90El/DgsR7JasZ+HNUOAq4RQPNFYsJBxNYn8rp8Df5/
         GKjKADL7+Uvwks/yv7XsCIcEc2H9RSElE6XY1Opjj2SXsCgghk0n0fXy2jnckSo4rWX7
         yjQfFusiJYb+kn7HziyBeK2QTjtbl7sHSEC6cwMGLZQrR7DY3iTtVbtA1DJeXtwc2VZY
         +77ANiQAnAAw8UrrVRffiGLdpH00ncEXdowXEf4AtiiM3AYJO8mzYgN9sjU5dpl9NJtH
         ksYw==
X-Gm-Message-State: AOAM5328HPsm9na3v7sPqWUeIcCtodOUZcIEy53ILabwtTe0fYLZP4Or
	KNYkLBYjOb4t9Bv/WpLGQts=
X-Google-Smtp-Source: ABdhPJzCupcJt3a2F0bIZ5fVx/UkL5s6UlF14nsRSCvWDrFd0CgXhPquSJ2IjSTWKjAF9iggq0LOMg==
X-Received: by 2002:a0c:a612:: with SMTP id s18mr6426118qva.37.1601414383776;
        Tue, 29 Sep 2020 14:19:43 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:4e90:: with SMTP id 16ls79199qtp.11.gmail; Tue, 29 Sep
 2020 14:19:43 -0700 (PDT)
X-Received: by 2002:ac8:6f49:: with SMTP id n9mr4487284qtv.143.1601414383332;
        Tue, 29 Sep 2020 14:19:43 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1601414383; cv=none;
        d=google.com; s=arc-20160816;
        b=SS/4zaQVi124qTUO7ywCATinxQtBuiV61juknUph6Yz7lU1phWSzGLGFiDrkFAa9Nd
         4ZpmrRlZ8cy2OSohFrnaWpMV3/Vgq33kw2BpnRYHLqrBEqDoODjU9QOMHHhYTh4XSLAG
         qADs4ZtI59Lzd72xKFzOJHY/XZzH++ABT1VHCjKciVUwile3SFTcyuAyvtGDdZe3VU/I
         IL0RgMNqXYXnsWJiN+Fx9I1Lak4OO0QZrPtarZM4WW2ijt+566YlkBEu59cBQrZuvjJJ
         XF3gqU6+N4NyIo7+neVAFKSMxqUq2VRu6AygIX80kCjQJy6NkEIp9C1Uz0g6/edGwr5N
         RoJw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:mime-version:message-id:date:sender
         :dkim-signature;
        bh=zLJyFMf9XZVQIy9gnwTsATrEt+DgUwH6ys2B+6ApuhI=;
        b=bJ7yc/Ruo7I2honyqNdTPhvZcouAN8mlfcXEMtnZKQGNjnQ/WEEEfL6d6Pak2IKcnY
         pFJVzydvhpNO5j6jPcOP0XxUHeWLdpnAZRhKZ4ToKJKqQ1+FtURFSYRgR3GIW1a+IuOe
         OionHQmlMpBinpunzIsme/0rD1Pkch7r3jCj7K7v2xQIuFFTIO4PsM6VF4EF73yU72xX
         NSIJzOUGPpGJLqYfXiYtdJoa3/NCp6fQBMIjRghZAbNsWgvNoXElB80SmBhh1ynJt12Y
         vr6YlsACyW/NgGmb3bj/822W9sg+GK4BQ2h/WP9WgZuU9L7jQRug4Px+n5+R4yFPs0Hj
         L2Yg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Y7594vIb;
       spf=pass (google.com: domain of 37qrzxwwkaakwmn1j3uwrn01pxxpun.lxv@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::44a as permitted sender) smtp.mailfrom=37qRzXwwKAAkwmn1j3uwrn01pxxpun.lxv@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x44a.google.com (mail-pf1-x44a.google.com. [2607:f8b0:4864:20::44a])
        by gmr-mx.google.com with ESMTPS id y6si222509qtd.1.2020.09.29.14.19.43
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 29 Sep 2020 14:19:43 -0700 (PDT)
Received-SPF: pass (google.com: domain of 37qrzxwwkaakwmn1j3uwrn01pxxpun.lxv@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::44a as permitted sender) client-ip=2607:f8b0:4864:20::44a;
Received: by mail-pf1-x44a.google.com with SMTP id 82so4807457pfz.20
        for <clang-built-linux@googlegroups.com>; Tue, 29 Sep 2020 14:19:43 -0700 (PDT)
Sender: "ndesaulniers via sendgmr" <ndesaulniers@ndesaulniers1.mtv.corp.google.com>
X-Received: from ndesaulniers1.mtv.corp.google.com ([2620:15c:211:202:f693:9fff:fef4:4d25])
 (user=ndesaulniers job=sendgmr) by 2002:aa7:9592:0:b029:13e:d13d:a054 with
 SMTP id z18-20020aa795920000b029013ed13da054mr5822227pfj.26.1601414382399;
 Tue, 29 Sep 2020 14:19:42 -0700 (PDT)
Date: Tue, 29 Sep 2020 14:19:35 -0700
Message-Id: <20200929211936.580805-1-ndesaulniers@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.28.0.709.gb0816b6eb0-goog
Subject: [PATCH] docs: programming-languages: refresh blurb on clang support
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Jonathan Corbet <corbet@lwn.net>
Cc: Nick Desaulniers <ndesaulniers@google.com>, Nathan Chancellor <natechancellor@gmail.com>, 
	linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org, 
	clang-built-linux@googlegroups.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=Y7594vIb;       spf=pass
 (google.com: domain of 37qrzxwwkaakwmn1j3uwrn01pxxpun.lxv@flex--ndesaulniers.bounces.google.com
 designates 2607:f8b0:4864:20::44a as permitted sender) smtp.mailfrom=37qRzXwwKAAkwmn1j3uwrn01pxxpun.lxv@flex--ndesaulniers.bounces.google.com;
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

Building the kernel with Clang doesn't rely on third party patches, and
has not for a few years now.

Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
---
 Documentation/process/programming-language.rst | 9 +++++----
 1 file changed, 5 insertions(+), 4 deletions(-)

diff --git a/Documentation/process/programming-language.rst b/Documentation/process/programming-language.rst
index e5f5f065dc24..63af142d64ec 100644
--- a/Documentation/process/programming-language.rst
+++ b/Documentation/process/programming-language.rst
@@ -6,14 +6,15 @@ Programming Language
 The kernel is written in the C programming language [c-language]_.
 More precisely, the kernel is typically compiled with ``gcc`` [gcc]_
 under ``-std=gnu89`` [gcc-c-dialect-options]_: the GNU dialect of ISO C90
-(including some C99 features).
+(including some C99 features). ``clang`` [clang]_ is also supported, see docs
+docs on :ref:`Building Linux with Clang/LLVM <kbuild_llvm>`.
 
 This dialect contains many extensions to the language [gnu-extensions]_,
 and many of them are used within the kernel as a matter of course.
 
-There is some support for compiling the kernel with ``clang`` [clang]_
-and ``icc`` [icc]_ for several of the architectures, although at the time
-of writing it is not completed, requiring third-party patches.
+There is some support for compiling the kernel with ``icc`` [icc]_ for several
+of the architectures, although at the time of writing it is not completed,
+requiring third-party patches.
 
 Attributes
 ----------
-- 
2.28.0.709.gb0816b6eb0-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200929211936.580805-1-ndesaulniers%40google.com.
