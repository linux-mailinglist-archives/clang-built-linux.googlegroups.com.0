Return-Path: <clang-built-linux+bncBDYJPJO25UGBBXHXUCEAMGQEJY52TCQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x13b.google.com (mail-il1-x13b.google.com [IPv6:2607:f8b0:4864:20::13b])
	by mail.lfdr.de (Postfix) with ESMTPS id C168B3DDF66
	for <lists+clang-built-linux@lfdr.de>; Mon,  2 Aug 2021 20:39:25 +0200 (CEST)
Received: by mail-il1-x13b.google.com with SMTP id v18-20020a056e020f92b02901ff388acf98sf8856040ilo.2
        for <lists+clang-built-linux@lfdr.de>; Mon, 02 Aug 2021 11:39:25 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1627929564; cv=pass;
        d=google.com; s=arc-20160816;
        b=Ey6rqg2jMfB38ZrurAZUCFsfY2Qqcd5y3lOThX7205KpnDAiHGTvxW1Ye43tC33eOJ
         ikS969NllBXUZTh0DBOxc56Wwulv+ex6UzlgPAuT5aBbNf+Mb6M5gTRy04RT0xG2JuHJ
         Q3bTgbb9zvGkWmidF3tsiE7/7Lb/jCCYrNBWYX8uxs8wo7/1U4DRE7votUKYQRXOVMz5
         GRwmOJTV8SKIcRqM2uDky+brneEm43TGNjDOK8tB7Pl9uf1Z3CaWS1D5D2IiWJTe8eo6
         T8bLU+bo4CulxlAWf9mqxamSurgyjf2OiQLkRnDqXhkMxdZj570XrwsjY/yffZw56VKv
         NRUA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=WcjBbux8qiZyhaP/S3q8RwrXBmAWhRSZ9hiC/dDHvr0=;
        b=TvXbHH45Zmoxkx1X51FB5O0ez7kpdTSDMBR7IU1q/Hou13ZyaLAb3QcCq8fvsnRBi2
         67hViWDC6Z2d7GUIhdbr52NmOuPLUy42LwRvjSjflQj64UycF7zycMlYHwVy/TOSO3Vl
         wR3DZNJVkd/tNPED2CCIIWJMA5RVl1m63uyG91VpzMzoIChNwGACYWS3I8FJU9LdA6b6
         plcfTCo6v77FkzdA4lq3UgUNLTnR4Aqi3fw+i0vIw0iASWpF2snryerwF3Y5QeKKZpJH
         RPo9OG3K3l55E5GhYSYKNGzT0rdAtKGYjUm/QTeOXKoWoxGn1E/OR5rrb/O9qcG1njWx
         oFiA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=UDtO0O6r;
       spf=pass (google.com: domain of 33dsiyqwkaimuklzh1suplyznvvnsl.jvt@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::b4a as permitted sender) smtp.mailfrom=33DsIYQwKAIMuklzh1suplyznvvnsl.jvt@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=WcjBbux8qiZyhaP/S3q8RwrXBmAWhRSZ9hiC/dDHvr0=;
        b=rmEv9Z2hUC48cJcDPUQ/Ln1Qv9u3YGBqv6Ap26PUBNJY/r8KvEq/F1lT4mNmPQm/lg
         PQymGN0t0W8RQtSMZXeTcMbzNNAFo1il5sOs0kohXRzkl4kkgSHpPDoXkBAw1TsmpZ6j
         W/D95pBHN89j0HpKI1AiNU+EGFnlYfCwaTVTrY8uyNHLMpzAmIkAS9TiMJNyVfGA2Wvo
         5gtDrKDLL+VBMtMWGp507eWBZWZJGcUFLlhE2J65uJL0zK5bxha7KDz4T4lUmA5712DH
         jdGhR1J+soB9ruRWyDPJHK51MmLEIUzM/6apYEU445Ze/ADDbkpB44jfURmOFNeNRWeL
         dHTA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=WcjBbux8qiZyhaP/S3q8RwrXBmAWhRSZ9hiC/dDHvr0=;
        b=dUMPhCzHa+vsuZuz92MpY37EmWH9d1dkJmkiDoyqZhAzwKps/QBNyvY30K81dl8Va7
         8QI4AffpTdtMQg8odd2xHSI0z/fiANHr12arSsu/fw6qwHubnQVF1Kta86vj1o6zjJnz
         D3fRKwlKmHMFNdAwoqamzuC0k1sqqLKlyAUe+XpYdjS4aA0VZ+3dpBfHLbnwn786uydO
         BrHC3kzUo6PA6Oc/+0G2S+dSjyTGES2RtFZ8sUGisXOxO0jHPAsEqsRN+InRoMZMQzo1
         mLnBLlsbmvNmrQLf+qVvD43rOA0EkhjNLA/O+Qo53rQgtEZ8xEIpH+KGL89Br5CbP+OM
         Etow==
X-Gm-Message-State: AOAM532naLv++6nhvYaiVobcxOWJp8/2Dud0thU4R7wmCbAuxYc785KE
	sHdLsZhzSkp2S9ZDyYyzfLM=
X-Google-Smtp-Source: ABdhPJyq6rVwTf4OOBCCyDH4S8j2d9fKF4pWxb5SGGAvuFznW78GUq/UQKc8+1zQH43iBlN3yOFeSQ==
X-Received: by 2002:a92:bf12:: with SMTP id z18mr93345ilh.274.1627929564822;
        Mon, 02 Aug 2021 11:39:24 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6638:1013:: with SMTP id r19ls1289712jab.2.gmail; Mon,
 02 Aug 2021 11:39:24 -0700 (PDT)
X-Received: by 2002:a02:1942:: with SMTP id b63mr15546767jab.111.1627929564535;
        Mon, 02 Aug 2021 11:39:24 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1627929564; cv=none;
        d=google.com; s=arc-20160816;
        b=xVdr0MTi2i2I+86aPuXS/m8yghDy64Dxym6Iw0UYdSkNTeZkM6fOhNMcp7RFcs5Fr8
         syqocXFk441zvw6FfMJn/awpphU9JEzLyCIq+IrG5TrrZJY7DTUhW/gs+A5mK/4kh3nK
         OWd0lZ086JeOxHXez/yLdG/GvaXZJbLm0k/6BCHbrpIoXVg7EiBjXqzGQVGObZhpHc/N
         GD7vsg7QqA7eu8lLHlq4ifCvi412hR7sLgWGJgfk0AD66HjSbMMDDGuFnxOp54ynK9ts
         6Sc04X9pDV/NrIQPG1EN/AUydlP280/x5bpHpPPgN654g1JyOMVRb7BaMqL4/4/tJ/Gv
         RilQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=kxeZ499IZ34ScBxCoMfNAW68U3dStYlxpnDRACL6igo=;
        b=pG5cYxL7cX8OK7+w6oZLIUyUDDOtu31zcoyCrzlSy842Deim8395EYZbyVwvzHuiwh
         /ehMhvI8xLcYkcFWlUbv5SvkuwoPyc/UvQT6Z5xqBLpWH/jaYPN6bMOf5PrWMHbUEX4b
         Dom4364NrgzyczovruXO0yNZGAmMSCz9cx+cNtHQQe40uX0iIhBckfFq5J7Dsm4+piZ5
         l4b9Cw07m7E3JolJNPLO1O2uANEolJUli/1yLY32UrzwXvOeFqLoye6zLc66tvVdTK3V
         XOeiq2X1WheWxXnScLECuqu+9H6txhDyraliDPpat+xDnBA6EWZXdsRobzUrqCkujShO
         kMxg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=UDtO0O6r;
       spf=pass (google.com: domain of 33dsiyqwkaimuklzh1suplyznvvnsl.jvt@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::b4a as permitted sender) smtp.mailfrom=33DsIYQwKAIMuklzh1suplyznvvnsl.jvt@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-yb1-xb4a.google.com (mail-yb1-xb4a.google.com. [2607:f8b0:4864:20::b4a])
        by gmr-mx.google.com with ESMTPS id b11si582030iln.5.2021.08.02.11.39.24
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 02 Aug 2021 11:39:24 -0700 (PDT)
Received-SPF: pass (google.com: domain of 33dsiyqwkaimuklzh1suplyznvvnsl.jvt@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::b4a as permitted sender) client-ip=2607:f8b0:4864:20::b4a;
Received: by mail-yb1-xb4a.google.com with SMTP id w200-20020a25c7d10000b02905585436b530so19969426ybe.21
        for <clang-built-linux@googlegroups.com>; Mon, 02 Aug 2021 11:39:24 -0700 (PDT)
X-Received: from ndesaulniers1.mtv.corp.google.com ([2620:15c:211:202:3db0:42c:8665:a4ae])
 (user=ndesaulniers job=sendgmr) by 2002:a25:320f:: with SMTP id
 y15mr22007134yby.515.1627929564059; Mon, 02 Aug 2021 11:39:24 -0700 (PDT)
Date: Mon,  2 Aug 2021 11:39:10 -0700
In-Reply-To: <20210802183910.1802120-1-ndesaulniers@google.com>
Message-Id: <20210802183910.1802120-4-ndesaulniers@google.com>
Mime-Version: 1.0
References: <20210802183910.1802120-1-ndesaulniers@google.com>
X-Mailer: git-send-email 2.32.0.554.ge1b32706d8-goog
Subject: [PATCH v6 3/3] Documentation/llvm: update CROSS_COMPILE inferencing
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Masahiro Yamada <masahiroy@kernel.org>
Cc: Miguel Ojeda <ojeda@kernel.org>, Fangrui Song <maskray@google.com>, 
	Michal Marek <michal.lkml@markovi.net>, Arnd Bergmann <arnd@kernel.org>, linux-kernel@vger.kernel.org, 
	linux-kbuild@vger.kernel.org, clang-built-linux@googlegroups.com, 
	Geert Uytterhoeven <geert@linux-m68k.org>, Christoph Hellwig <hch@infradead.org>, 
	Linus Torvalds <torvalds@linux-foundation.org>, Nick Desaulniers <ndesaulniers@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=UDtO0O6r;       spf=pass
 (google.com: domain of 33dsiyqwkaimuklzh1suplyznvvnsl.jvt@flex--ndesaulniers.bounces.google.com
 designates 2607:f8b0:4864:20::b4a as permitted sender) smtp.mailfrom=33DsIYQwKAIMuklzh1suplyznvvnsl.jvt@flex--ndesaulniers.bounces.google.com;
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

As noted by Masahiro, document how we can generally infer CROSS_COMPILE
(and the more specific details about --target and --prefix) based on
ARCH.

Change use of env vars to command line parameters.

Suggested-by: Masahiro Yamada <masahiroy@kernel.org>
Reviewed-by: Fangrui Song <maskray@google.com>
Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
---
Changes v5 -> v6:
* Pick up Fangrui's RB tag.
* Change use of env vars to command line parameters for consistency.

 Documentation/kbuild/llvm.rst | 19 ++++++++++++++++++-
 1 file changed, 18 insertions(+), 1 deletion(-)

diff --git a/Documentation/kbuild/llvm.rst b/Documentation/kbuild/llvm.rst
index b18401d2ba82..f8a360958f4c 100644
--- a/Documentation/kbuild/llvm.rst
+++ b/Documentation/kbuild/llvm.rst
@@ -38,7 +38,7 @@ Cross Compiling
 A single Clang compiler binary will typically contain all supported backends,
 which can help simplify cross compiling. ::
 
-	ARCH=arm64 CROSS_COMPILE=aarch64-linux-gnu- make CC=clang
+	make ARCH=arm64 CC=clang CROSS_COMPILE=aarch64-linux-gnu-
 
 ``CROSS_COMPILE`` is not used to prefix the Clang compiler binary, instead
 ``CROSS_COMPILE`` is used to set a command line flag: ``--target=<triple>``. For
@@ -63,6 +63,23 @@ They can be enabled individually. The full list of the parameters: ::
 Currently, the integrated assembler is disabled by default. You can pass
 ``LLVM_IAS=1`` to enable it.
 
+Omitting CROSS_COMPILE
+----------------------
+
+As explained above, ``CROSS_COMPILE`` is used to set ``--target=<triple>``.
+
+Unless ``LLVM_IAS=1`` is specified, ``CROSS_COMPILE`` is also used to derive
+``--prefix=<path>`` to search for the GNU assembler and linker.
+
+If ``CROSS_COMPILE`` is not specified, the ``--target=<triple>`` is inferred
+from ``ARCH``.
+
+That means if you use only LLVM tools, ``CROSS_COMPILE`` becomes unnecessary.
+
+For example, to cross-compile the arm64 kernel::
+
+	make ARCH=arm64 LLVM=1 LLVM_IAS=1
+
 Supported Architectures
 -----------------------
 
-- 
2.32.0.554.ge1b32706d8-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210802183910.1802120-4-ndesaulniers%40google.com.
