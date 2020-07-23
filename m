Return-Path: <clang-built-linux+bncBDYJPJO25UGBBZPR474AKGQEX5255CA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa3c.google.com (mail-vk1-xa3c.google.com [IPv6:2607:f8b0:4864:20::a3c])
	by mail.lfdr.de (Postfix) with ESMTPS id 7681422B831
	for <lists+clang-built-linux@lfdr.de>; Thu, 23 Jul 2020 22:53:58 +0200 (CEST)
Received: by mail-vk1-xa3c.google.com with SMTP id e12sf2205798vkd.3
        for <lists+clang-built-linux@lfdr.de>; Thu, 23 Jul 2020 13:53:58 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1595537637; cv=pass;
        d=google.com; s=arc-20160816;
        b=TEGLb9uFxNc+MPe29a0KTPiSWPaaGXJ4dnW4jZOMIed93d41KjYCaKH8QOTk/UzeSz
         A3tyaEYbmOuX2UC79ogpGGUhyHl9zzeh0D095EFHF7j0vCDKw8K+LzbR9+jEy2bTOIzN
         GHrfiPuv+dkoHtEsOYwVuTkxLL5TL+gpugF0dvtHUMgQowwiLwr913YkNsr9y0KVN2t3
         JBL4lEmZFCOOTQPfDo5/ZjmNxP6yte+i9rqmmbk5uemPiCftfXXnEpi5gp2uvQvE5uIV
         BoCTb54lFUZ8peBdGuIkYCOWRi6BM0jU0SnowM8KDUYnRBfPdEi9LhXpOXLgTQJodw27
         JecQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=sTrCYHsop3IFDnEnSLzdI9jRPIqN/9yeebQ6gLprxdo=;
        b=hm5XzMPi1ErQhnDoeY8hVXRlDY8BGUQgwSDuDkW/oKdkYpHBuCg9ZVhz91+MDaq4ex
         oX/hDAlLDLzJHBhZePxSDJEOCn9+4HzbBLy/IUjrBfz0RL/S0kJsLNaZ8BZpqwQYLPEc
         FPJyA/9I2foKKMd0mYj7vOWPPCYPoRSCkotKgMTDY/ohn4vSChbVjPVmPWr+T3n5nRMy
         sSdv6E38whDhYueTFFIepcb32MxwFv4ORwZDruWWVMTdY8OJF6QaoJ8i6YWHSEjfF9Io
         8ohsGT49iHFnF3XBtnKT+hduAlc8V1zMpossU9jml83cI4raWqnO1b0QuTPJHQjB1tOf
         Aw1A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=S70VTYJE;
       spf=pass (google.com: domain of 35pgzxwwkad0mcdrztkmhdqrfnnfkd.bnl@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::f49 as permitted sender) smtp.mailfrom=35PgZXwwKAD0mcdrZtkmhdqrfnnfkd.bnl@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=sTrCYHsop3IFDnEnSLzdI9jRPIqN/9yeebQ6gLprxdo=;
        b=AUgwSIetNBs968qTqOWzYfnrbUqabwMvHbWh3moGXEBnHGJlfXXY262CgHoFO4v+pM
         eT2ngTLO+vCYbbqSideVk4DuMIJ94wwiSeY+p1wE+bdVxmikvmF4g6rRZFYf+6i3EjSK
         O2SbQEOHBh3QZK+h5CRldmpxT3nlrMBibTm5V48j+vp876rPt4jcVHNbY30N/izMIs4h
         b5KeSzFYT6r11jidhkbi6z+WHDbb9/6pMBRyLkje1fSUNpFJywp9p0CKn6axhqJY7ZVY
         fFs/wZJUzAqo8YHfqLXzI5A4aOxx0SIlisUjkh/sSuuBmz/+u5qIhAa/F/3u+j/nSqFu
         VG5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=sTrCYHsop3IFDnEnSLzdI9jRPIqN/9yeebQ6gLprxdo=;
        b=Y+CaafLo0A9NfVB7Nw1ELJn7aRAeRy63iKkm6ctYmtAJbqPKdN7L4Fwd5l/eJCW2eK
         +yMpIRDgkkQG3PopY/s4mws1cHgYZIFC8cWX4I6bULj4mZ5KlSjREzTSeGQuBQJPhxAw
         JE5DL15P8iuKYeHv5InFM1ko+w7ejKYRnznrNrhFRZHSgRLLhimE19AtwUm98JIl1aye
         G/zn5PAuMd4Y3LDyQRKfmZNC13jamyK1e+ukNXvUz0l+/7k7e0KtbZBAbQmT9A2wH86g
         yUp+UtAukIPD+1Syih2WkUMqyhshfftqy19poLAZEsff9CZmr2ns6klVEk8w0iBbEBie
         uUtQ==
X-Gm-Message-State: AOAM530U2sNJVenqRacSf2C1gksPYC3ama8sffA9NorY1AqsCvoQ2GnE
	WB8KWouW+e5lNj1hWMyPxpo=
X-Google-Smtp-Source: ABdhPJy0OZG8rbG8DtqsS7hf4LR5cRmNlH0OQY6scmKjsNJOYr13fDPM9XcTN92OSr4jrBcqrpe1rQ==
X-Received: by 2002:a05:6102:5dc:: with SMTP id v28mr5572263vsf.177.1595537637356;
        Thu, 23 Jul 2020 13:53:57 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:c58c:: with SMTP id h12ls821844vsk.8.gmail; Thu, 23 Jul
 2020 13:53:56 -0700 (PDT)
X-Received: by 2002:a67:6812:: with SMTP id d18mr5799926vsc.227.1595537636816;
        Thu, 23 Jul 2020 13:53:56 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1595537636; cv=none;
        d=google.com; s=arc-20160816;
        b=ZgARqz+KRVqYPkvcR0jJmk6+snZwX57pCoRVacFlziFTyYlAhQ+rRsfvKFZnng0BRF
         X91rYg1saMDift5Fi2b48B1Q3QiZH+lqnWtlTrDyMtoNwM4G4p1kYTs6JobHCv23AquO
         EPy29g6O6yV4ZAWMidkGDEW/PGcMjVx4QuPolV1tyno9klirTP9z5F+jmFzHM2GCOfmb
         jYhl8Rq6z4GRqUVQZUP8RrVM4ecdFN6aVd7XfAIeQkAP1LWqdI9leh8k6dkhtgaM7jZY
         RCL8Kp9ZeiNmrwxo3n9Os9SfQyesP86PmefXnFEy8gEVLS0yA7ZgGwJKt9l6lJvT8IZY
         goZg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=jAHIqv7D3hXB60XxP9GMGsxVao6b4A29Qsn40xA3zUE=;
        b=q8qyXNLChynknCyG8XJKPvnEk7O/gR7RdVgdmOuaw6qsuqeevDPGR7r1KeyS8XyuBd
         ozqt4tzc5CNt+YcEwwwvOcZiopXS9Trk64lFe0IPTcVwkFXkHzODAZAr/Z7ZiSErK7on
         P6qc9PpYcEULn3qoWmH498Io1ZFzrCyUf2+bROG6ZuE4lLAgU0Tzl2bi3SJP1BfS/dWf
         IfuBJ6x+AK5UmlS+3kQ21nOYWhMoKm35fI9zftqZcNVGWxMGyIqrIZ0d1yBCo9dk6X42
         pGUx2Rm/BzgJ4ctzsLqL9NYoA3ONrpHNNgvcG+WWb2vdHZADZ4+xDtaT5bGCcmn59SjJ
         Jccw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=S70VTYJE;
       spf=pass (google.com: domain of 35pgzxwwkad0mcdrztkmhdqrfnnfkd.bnl@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::f49 as permitted sender) smtp.mailfrom=35PgZXwwKAD0mcdrZtkmhdqrfnnfkd.bnl@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-qv1-xf49.google.com (mail-qv1-xf49.google.com. [2607:f8b0:4864:20::f49])
        by gmr-mx.google.com with ESMTPS id o66si249577vkc.0.2020.07.23.13.53.56
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 23 Jul 2020 13:53:56 -0700 (PDT)
Received-SPF: pass (google.com: domain of 35pgzxwwkad0mcdrztkmhdqrfnnfkd.bnl@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::f49 as permitted sender) client-ip=2607:f8b0:4864:20::f49;
Received: by mail-qv1-xf49.google.com with SMTP id s2so4406013qvn.19
        for <clang-built-linux@googlegroups.com>; Thu, 23 Jul 2020 13:53:56 -0700 (PDT)
X-Received: by 2002:a0c:e554:: with SMTP id n20mr6610346qvm.14.1595537636287;
 Thu, 23 Jul 2020 13:53:56 -0700 (PDT)
Date: Thu, 23 Jul 2020 13:53:40 -0700
In-Reply-To: <20200723205341.1099742-1-ndesaulniers@google.com>
Message-Id: <20200723205341.1099742-2-ndesaulniers@google.com>
Mime-Version: 1.0
References: <20200723205341.1099742-1-ndesaulniers@google.com>
X-Mailer: git-send-email 2.28.0.rc0.105.gf9edc3c819-goog
Subject: [PATCH 1/2] tracepoint: mark __tracepoint_string's __used
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Steven Rostedt <rostedt@goodmis.org>, Ingo Molnar <mingo@redhat.com>
Cc: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>, 
	Nick Desaulniers <ndesaulniers@google.com>, stable@vger.kernel.org, 
	Tim Murray <timmurray@google.com>, Simon MacMullen <simonmacm@google.com>, 
	Greg Hackmann <ghackmann@google.com>, linux-kernel@vger.kernel.org, 
	clang-built-linux@googlegroups.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=S70VTYJE;       spf=pass
 (google.com: domain of 35pgzxwwkad0mcdrztkmhdqrfnnfkd.bnl@flex--ndesaulniers.bounces.google.com
 designates 2607:f8b0:4864:20::f49 as permitted sender) smtp.mailfrom=35PgZXwwKAD0mcdrZtkmhdqrfnnfkd.bnl@flex--ndesaulniers.bounces.google.com;
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

__tracepoint_string's have their string data stored in .rodata, and an
address to that data stored in the "__tracepoint_str" section. Functions
that refer to those strings refer to the symbol of the address. Compiler
optimization can replace those address references with references
directly to the string data. If the address doesn't appear to have other
uses, then it appears dead to the compiler and is removed. This can
break the /tracing/printk_formats sysfs node which iterates the
addresses stored in the "__tracepoint_str" section.

Like other strings stored in custom sections in this header, mark these
__used to inform the compiler that there are other non-obvious users of
the address, so they should still be emitted.

Cc: stable@vger.kernel.org
Reported-by: Tim Murray <timmurray@google.com>
Reported-by: Simon MacMullen <simonmacm@google.com>
Suggested-by: Greg Hackmann <ghackmann@google.com>
Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
---
We observe this in Clang; it seems that GCC doesn't do the "cleanup" of
the dead address.

Specifically, the Clang passes "Interprocedural Sparse Conditional
Constant Propagation" (IPSCCP) and GlobalOpt both try to removed the
address if no other uses exist after inlining the reference directly to
the string data.

We don't want to change the linkage of these variables, but we kind of
want optimization behavior to treat these function static strings as if
they had `extern` linkage, at least by not removing the address of the
string data from the custom section.

 include/linux/tracepoint.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/include/linux/tracepoint.h b/include/linux/tracepoint.h
index a1fecf311621..3a5b717d92e8 100644
--- a/include/linux/tracepoint.h
+++ b/include/linux/tracepoint.h
@@ -361,7 +361,7 @@ static inline struct tracepoint *tracepoint_ptr_deref(tracepoint_ptr_t *p)
 		static const char *___tp_str __tracepoint_string = str; \
 		___tp_str;						\
 	})
-#define __tracepoint_string	__attribute__((section("__tracepoint_str")))
+#define __tracepoint_string	__attribute__((section("__tracepoint_str"), used))
 #else
 /*
  * tracepoint_string() is used to save the string address for userspace
-- 
2.28.0.rc0.105.gf9edc3c819-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200723205341.1099742-2-ndesaulniers%40google.com.
