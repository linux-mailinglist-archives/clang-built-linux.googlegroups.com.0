Return-Path: <clang-built-linux+bncBC2ORX645YPRBQUYQL6AKGQERXKGQTY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x638.google.com (mail-pl1-x638.google.com [IPv6:2607:f8b0:4864:20::638])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D770288DEB
	for <lists+clang-built-linux@lfdr.de>; Fri,  9 Oct 2020 18:13:56 +0200 (CEST)
Received: by mail-pl1-x638.google.com with SMTP id x11sf1136392plo.0
        for <lists+clang-built-linux@lfdr.de>; Fri, 09 Oct 2020 09:13:56 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1602260035; cv=pass;
        d=google.com; s=arc-20160816;
        b=xDm+8s0meyKokhHxGywuGb76DhDC9kNU9sqam4sdweeOMh4HYc79ep72HeCpefnG8J
         4AaPY3TXHD9fUFObjsUYyDUqneCtWVZhDfGKMr2SVc+iiHFOjH5q0CRL7YGrcMj0LJ61
         JERcMIpEKz9RigJk+JKxYzL8W37IQm4qyCAx0+lrvJem/8jUJfk33qy/Sy1jOILy+RZp
         0eIczIle0tXO/IN1S1C/JSwb+cxSfxYQ4OueZ7Wju/uYOAk8qQo3LtMOVvoQGix2YJTF
         SoBi6ZZYJx7cHRZd3PgMGTp8i7hOgjuwvf64dfH3L22DiYPWlIw7qFXzXmzn27QDGZi8
         yNhw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:sender
         :dkim-signature;
        bh=Wcp07Vcbt8BNukvkqLd7R+dVNLI3fN7vvapVlgJSpJ4=;
        b=hPbPWrXjoBrQUp8imxQdNmpUYnbYQ+FPOiep/gjSSOuKSl4S/BCfVkGDY0z2KkqRoY
         vgIjCNGw/QjFA/8FU0Ed4JnPak7s8qKGH0OCP6IjM8u95Xqr+j/13BC/XiOdLf646D7o
         DgxMKCBoVdcglrGCcpdsW6CWn2ps1dh1g1PUsU2HGlHR3rUOQuP7F+EVxrCL3AAiqj6O
         7DspxcKbjIRfj8fYGUiXSBh+XAS3/Xh/QNIq8YKTkmVbO8mKFqYjtwjadB42iC7rQ1nc
         JgBn4zsq6s1bIm6RfwuJHvsspOTFZS8w+6CsaOL3+6oU/Pjq20z/83qEl7vIwWf5zb87
         NSog==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=OqvMiRbT;
       spf=pass (google.com: domain of 3qyyaxwwkaf4o6iepkhr6jajckkcha.8ki@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::f49 as permitted sender) smtp.mailfrom=3QYyAXwwKAF4O6IEPKHR6JAJCKKCHA.8KI@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:in-reply-to:message-id:mime-version:references:subject
         :from:to:cc:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=Wcp07Vcbt8BNukvkqLd7R+dVNLI3fN7vvapVlgJSpJ4=;
        b=Tbu74OvsGovFyRFYMX7V0Hm1XvKfeZaJ5mFP72Ph9D75P9G8ARwGBuiHFj32XB1T/6
         GMGIaUquH0ZApBuUC0Ma7eAoDOD9peU3Iz3QjC9g14KgiSCFOyYNhFBf9RRUo0xzJo4Z
         fcbRYzbXXU+4Hl2HWu/pDclnp9Vj7GYdC5L17Lw9JzTjn3iKWoSTL/CAIbPJJp73I7X9
         sEFeLaeeXT0TIhL7l1K5htXbBwyRvnLZuljh1jNoWXVbasn+Wcxk9QUgJOBcQpxkIDvE
         VUTvYyaEmDdxyJdCUBJE+kOtDZ2ihld8RBOG1JFJAxU8NxyyLyhhIZQ4HIgiqLRGAODA
         72OQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Wcp07Vcbt8BNukvkqLd7R+dVNLI3fN7vvapVlgJSpJ4=;
        b=i2dH2S6GpLJEn9e7cHPL/6ZB7WewEIFA2A4NBF0g4pv4n2KuolCt/eISfl+U835wqz
         S6EXrr1QqM0LJ48/vz7t8NAWuCG/khbovWs56kdkGuArcH+iRJMaBwbwNAmzJYIPB6bI
         JCV6aCH9Y6K4sPHMqULJjlKNPobKpTwhzwdX22FYd+Grib2u+3nlbvKrVaLMlPjM+zfz
         KDFHyNCy7uwCo/g/JgMy7UcpD9MNxggaQugpGwJqoEOpKbkyK6NkQHXKUZu2TeNU2Anb
         XhfdZPyANt11rPFyJZsz/4oxrcNMwIqAX3R/w8m61y7N4sKAc0ofKb2shEviI/wa7jNh
         hU3Q==
X-Gm-Message-State: AOAM531y90xNW2Y6+q1LMTl7ZxtX61LpXl32+SB9MsJ/2AWm68W7RLwk
	naSzoha+xaqgIj9+04KSCtc=
X-Google-Smtp-Source: ABdhPJwiz3SdCD9oOvWjjpgi+YxBfcK/YOM/RhbkqUvCHKp3c1pISN7iIHh3dKLdluHGm6lMtagagA==
X-Received: by 2002:a05:6a00:23cc:b029:142:2501:35cf with SMTP id g12-20020a056a0023ccb0290142250135cfmr13176512pfc.47.1602260035048;
        Fri, 09 Oct 2020 09:13:55 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:7044:: with SMTP id h4ls4592104plt.2.gmail; Fri, 09
 Oct 2020 09:13:54 -0700 (PDT)
X-Received: by 2002:a17:90a:1bc3:: with SMTP id r3mr5592417pjr.196.1602260034367;
        Fri, 09 Oct 2020 09:13:54 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1602260034; cv=none;
        d=google.com; s=arc-20160816;
        b=tD10dd8og6HMvtRqm5eYkvGiq6M5dWK98hqybA8a9SNxF4pNvpC2Hb4EN4s0gud5F0
         sjPgRa7rBUgbSxVlsmW5ZOVClJVxEEjHE+ArEbWEPF5/nizRrTpEvS5x/3dZXMsV/kev
         1VMava0DucBf0TpX8LiHwzzYQYnis1ieYYHsz1XVoQ1e3jzwei90Xevz+sB2gk6/d8mu
         D4E98sv7HMuppiabQyEQ3I1L+O/uh/SXZupNis15+8m4DJwRyMN5Fy+kfE+uE4lv49ry
         MdRQSyvhxaKvrSkJ1LTEztgk1gLtGlq2YjPsuXegL0GJX/QL77XY1IaolGwMY7Y9d/Nm
         4MKA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:sender:dkim-signature;
        bh=xL7tn5bk8rd7QhzERnW5XDCxrWNQLuaGbP7lLdALs6Y=;
        b=SQt0eQR+++g2ppPGiA2NT6mFnKn5B026qvEDmzQxWFxz63hHu1i1ucNoWwImIeMdLj
         IM5vAahcWOHe6V3HuVwSSS0HK0zF5zcmqx87uoiTMlPrRPeh5ceXJWIkbr4hwCYGBdrp
         osb7F30DLkiJ4Y/DHRY6lJ8BFBbOTQHKEiZ8o64vNWyIdL3gIwSJQZzMnDypNOfJhoBu
         u488usvTR3r3+gv58URaxmkBQlCTK8N4i/LEGXo8ZlRUCxUNfIjaj5IwtRBIdI16QnLu
         WeCz7yhh8uw+hfoGXbauVIRf5AYaaJ33aZZ+wI2cz5UyCAh6AWBwU8Ca6W27aEn7d65n
         BslA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=OqvMiRbT;
       spf=pass (google.com: domain of 3qyyaxwwkaf4o6iepkhr6jajckkcha.8ki@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::f49 as permitted sender) smtp.mailfrom=3QYyAXwwKAF4O6IEPKHR6JAJCKKCHA.8KI@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-qv1-xf49.google.com (mail-qv1-xf49.google.com. [2607:f8b0:4864:20::f49])
        by gmr-mx.google.com with ESMTPS id w2si525880ply.2.2020.10.09.09.13.54
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 09 Oct 2020 09:13:54 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3qyyaxwwkaf4o6iepkhr6jajckkcha.8ki@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::f49 as permitted sender) client-ip=2607:f8b0:4864:20::f49;
Received: by mail-qv1-xf49.google.com with SMTP id w7so3577596qvf.19
        for <clang-built-linux@googlegroups.com>; Fri, 09 Oct 2020 09:13:54 -0700 (PDT)
Sender: "samitolvanen via sendgmr" <samitolvanen@samitolvanen1.mtv.corp.google.com>
X-Received: from samitolvanen1.mtv.corp.google.com ([2620:15c:201:2:f693:9fff:fef4:1b6d])
 (user=samitolvanen job=sendgmr) by 2002:ad4:5747:: with SMTP id
 q7mr1648297qvx.0.1602260033580; Fri, 09 Oct 2020 09:13:53 -0700 (PDT)
Date: Fri,  9 Oct 2020 09:13:15 -0700
In-Reply-To: <20201009161338.657380-1-samitolvanen@google.com>
Message-Id: <20201009161338.657380-7-samitolvanen@google.com>
Mime-Version: 1.0
References: <20201009161338.657380-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.28.0.1011.ga647a8990f-goog
Subject: [PATCH v5 06/29] x86, build: use objtool mcount
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Masahiro Yamada <masahiroy@kernel.org>, Will Deacon <will@kernel.org>, 
	Steven Rostedt <rostedt@goodmis.org>
Cc: Peter Zijlstra <peterz@infradead.org>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	"Paul E. McKenney" <paulmck@kernel.org>, Kees Cook <keescook@chromium.org>, 
	Nick Desaulniers <ndesaulniers@google.com>, clang-built-linux@googlegroups.com, 
	kernel-hardening@lists.openwall.com, linux-arch@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-kbuild@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org, x86@kernel.org, 
	Sami Tolvanen <samitolvanen@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: samitolvanen@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=OqvMiRbT;       spf=pass
 (google.com: domain of 3qyyaxwwkaf4o6iepkhr6jajckkcha.8ki@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::f49 as permitted sender) smtp.mailfrom=3QYyAXwwKAF4O6IEPKHR6JAJCKKCHA.8KI@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Sami Tolvanen <samitolvanen@google.com>
Reply-To: Sami Tolvanen <samitolvanen@google.com>
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

Select HAVE_OBJTOOL_MCOUNT if STACK_VALIDATION is selected to use
objtool to generate __mcount_loc sections for dynamic ftrace with
Clang and gcc <5 (later versions of gcc use -mrecord-mcount).

Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
Reviewed-by: Kees Cook <keescook@chromium.org>
---
 arch/x86/Kconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/x86/Kconfig b/arch/x86/Kconfig
index 5e832fd520b5..6d67646153bc 100644
--- a/arch/x86/Kconfig
+++ b/arch/x86/Kconfig
@@ -163,6 +163,7 @@ config X86
 	select HAVE_CMPXCHG_LOCAL
 	select HAVE_CONTEXT_TRACKING		if X86_64
 	select HAVE_C_RECORDMCOUNT
+	select HAVE_OBJTOOL_MCOUNT		if STACK_VALIDATION
 	select HAVE_DEBUG_KMEMLEAK
 	select HAVE_DMA_CONTIGUOUS
 	select HAVE_DYNAMIC_FTRACE
-- 
2.28.0.1011.ga647a8990f-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201009161338.657380-7-samitolvanen%40google.com.
