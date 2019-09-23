Return-Path: <clang-built-linux+bncBDYJPJO25UGBBFUMUXWAKGQEOL4SBCI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x640.google.com (mail-pl1-x640.google.com [IPv6:2607:f8b0:4864:20::640])
	by mail.lfdr.de (Postfix) with ESMTPS id 551FDBBE67
	for <lists+clang-built-linux@lfdr.de>; Tue, 24 Sep 2019 00:24:24 +0200 (CEST)
Received: by mail-pl1-x640.google.com with SMTP id 70sf9464891ple.1
        for <lists+clang-built-linux@lfdr.de>; Mon, 23 Sep 2019 15:24:24 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1569277463; cv=pass;
        d=google.com; s=arc-20160816;
        b=EZzzFxmmURoz1++tieNCbpd3QR1/6WtEoG71v6vj2gNaZUz3yb0iqac3cDtnpMRgQo
         W8GNciDts937mVb0mHGZ4p5enXe+tQZ36f8JuqnfFOfvR48xZ5y9JRIgdsWYwfjZR56X
         Fo8r/emZIoSoMl21YUo1kq3YnD1QV7shuif0dIahhk1+xWJ9CfZ1sVlIsg3z4N7uJjai
         WTLqASmHpeM/zKZnRVad+SRGsjK8h8xZfX1vfdh0hlFpM7EcQ5nvPksjX0LARTDaKjtF
         0u5i75tzAjBcnTbkt8vfi+Ul3jOqYst2vGto2fq9+mjVLd1u1Nc9sxjha79Wy2T+yPLl
         7wuA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :mime-version:message-id:date:dkim-signature;
        bh=ANRAEtiwcIYq+p5TP9g4LsCa+2ufAExoLzIXsxhcjzE=;
        b=BLYvCJd3VysjCOUfvNVGI32XK8GZv9ZxcetWCzQRmmE+kt8AWtp1W8I9WbLqhpO7Lm
         rVTn9Gl8CKcazkfl4Ze85vLbr5qkYIMPApSkt26xkqtKtOtVW99INIKc86MSIB0foUwb
         89QpMRI4zH00l2Fa0J4B9PRERS/B7ReR/K/p97Nxico8dt7NtfPuzmD74NJv8wgWnHgt
         vDWnlrUXw2Mz+giYAE+LrPG7TV2LVEWIdrWHDLOY+erTqWSR7xmHqAQxJl4yMFksooDp
         b8KoabQZZtlVJx40pQWv9CvcffQc6cDPicXpDWAsbQeTYnUunoq/glF5X1AmsJF/hJJq
         4uUw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=QkV2uEzl;
       spf=pass (google.com: domain of 3fuajxqwkalglbcqysjlgcpqemmejc.amk@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::44a as permitted sender) smtp.mailfrom=3FUaJXQwKALglbcqYsjlgcpqemmejc.amk@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:message-id:mime-version:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=ANRAEtiwcIYq+p5TP9g4LsCa+2ufAExoLzIXsxhcjzE=;
        b=XpDb9e8j4Xm+aWK81l97E+ZFHFl9gnAQE1WFaY/QAzpj9p1VS0cac6Nr4LoM/OFpDN
         wN8TmNEVD6naxJ0UnW1NDfwzsLCYmox8ORSUx895dnRHKmpLpsjZmRLewTQETlStVsCT
         7scx+Ib1fH/gELXfSSsZg26cmcZv6RJOf0M+5xEf3NVUNHFyE+J53pL/B8VAtmRr6+r1
         MI2rgw0OD78kFcEjDYm2/SlbtvSNQlf2R1GaU35bm/RoN1TfP4YUnqwdY0xkwU3PUVZh
         s2En9jfN1jM7B4zgEv+4qi0/20VjblZUlA68uDTLK5aJrtYRUT/HkEeBVTIcem/xIrAo
         uWGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:message-id:mime-version:subject:from:to:cc
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=ANRAEtiwcIYq+p5TP9g4LsCa+2ufAExoLzIXsxhcjzE=;
        b=eoaXLlAhPMkPG1LVr7ytQigoQBGyH+NpjSKWzbSxRTwmsruG/BtDOhacjqZ9TNbgJv
         0oBzAT+szciAOI/PMlTR30KBYA17kLQUuGmyTvs7MwYeG1523kXesMcOu9jkutV6Ihmo
         ffRa6yITO4Lf6jvW31RRWcwk2klQhcJjjyG3xXpyt1b/1LfvDIGnnZPfe/OpApif/bCG
         smePf5EhrFp+g54JWSSlU6zTbp2rGVmmAnLj3lgJHnz497fx4L2ts8U0WltLTG8zWWQn
         6HixGVaqQFD57tedrk/+dDdpExxQn3PSMAfZRp+V8xeTZGP9LcWg2MYTaYo0BFxdXC2D
         KqeQ==
X-Gm-Message-State: APjAAAW0As+4EkYM10tIJVJnPKiHjwp88K4EqSDCWn7eCAmZsAXFjFxh
	EoyHB0KyAqrgNJoKQEfwkTs=
X-Google-Smtp-Source: APXvYqwezFVAP/n6/kqKCYjZdFhRrODV8sp4blZCQpqcCiNeeepg4HhSj2lk6ORXkXtmV6EDVqEijg==
X-Received: by 2002:a17:902:8bc8:: with SMTP id r8mr2048420plo.338.1569277462807;
        Mon, 23 Sep 2019 15:24:22 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:fa7:: with SMTP id 36ls2882001pjz.5.canary-gmail;
 Mon, 23 Sep 2019 15:24:22 -0700 (PDT)
X-Received: by 2002:a17:90a:2261:: with SMTP id c88mr1880317pje.4.1569277462456;
        Mon, 23 Sep 2019 15:24:22 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1569277462; cv=none;
        d=google.com; s=arc-20160816;
        b=yiCIa0scukXRkE5pGdnWi9fDL0zwgvCPkJRzwxxw6gcshE2/rJltcY141OM5b58H+C
         1do50k4UdF0TXOo0S3Xmrpz0EQA77t4+rN3/q8i/gU1jZ4td3FKVxJX6tIXQrJ7vBvbz
         IVWULrkUfMUKvDMDPk0ZQz8tiki8NrN2zvf1rtU+rbVzRXHtv/JqFadQ3cGCss7kKzbt
         bJiB+PEyIDKPyzkKB36gTJATc7OOhGlFgcoJ0PqGovIZSem7bzEHWwNJt5CqceXaHbDb
         menpUZpSRWxQVXJLOxBrhNx6Ph3ZFPjuDsoPTJ8fYTP+A0sz7JFZTq/WFWHg8K03xGqb
         Uufg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:mime-version:message-id:date:dkim-signature;
        bh=wBbyke/1peveMpLtlqWbxcVdjMGJbQeDIQGAiWlcIhI=;
        b=aKmMO54XCqeHEyZ2Y9XbtkLSaQuz+JDzljcE4exchAhHHyumqMZb7uVjuISEFyoweo
         BKbh8nUQeopHjdcsFYk7Gkfhl7y8UESlVwC5UshAJYTTYVYsWqPwExJED5cBKORTSrwk
         rDvXZoJ5QAt4PpQ3u0jo4+gnZ8znQeb4rXdzEKUeFEL9e0wS1iWLXkR+e0kmarwIPf06
         0AK3z2BOGxRGzMoML1WhhIDV128OiLHrBaS5vw/lzu8VyriFdhpKj5tbetpud/HOb5jk
         yVjvKSJlEk3ffmMeatqHi4yjBmZ9irNCxsXSlJLzfaWPPzl/aUHg2es8jlqaf9oyIu7l
         UfIA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=QkV2uEzl;
       spf=pass (google.com: domain of 3fuajxqwkalglbcqysjlgcpqemmejc.amk@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::44a as permitted sender) smtp.mailfrom=3FUaJXQwKALglbcqYsjlgcpqemmejc.amk@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x44a.google.com (mail-pf1-x44a.google.com. [2607:f8b0:4864:20::44a])
        by gmr-mx.google.com with ESMTPS id w10si656582plq.4.2019.09.23.15.24.22
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 23 Sep 2019 15:24:22 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3fuajxqwkalglbcqysjlgcpqemmejc.amk@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::44a as permitted sender) client-ip=2607:f8b0:4864:20::44a;
Received: by mail-pf1-x44a.google.com with SMTP id s139so11081045pfc.21
        for <clang-built-linux@googlegroups.com>; Mon, 23 Sep 2019 15:24:22 -0700 (PDT)
X-Received: by 2002:a63:2006:: with SMTP id g6mr2091942pgg.287.1569277461795;
 Mon, 23 Sep 2019 15:24:21 -0700 (PDT)
Date: Mon, 23 Sep 2019 15:24:02 -0700
Message-Id: <20190923222403.22956-1-ndesaulniers@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.23.0.351.gc4317032e6-goog
Subject: [PATCH] x86, realmode: explicitly set ENTRY in linker script
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: tglx@linutronix.de, mingo@redhat.com, bp@alien8.de
Cc: clang-built-linux@googlegroups.com, 
	Nick Desaulniers <ndesaulniers@google.com>, "H. Peter Anvin" <hpa@zytor.com>, x86@kernel.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=QkV2uEzl;       spf=pass
 (google.com: domain of 3fuajxqwkalglbcqysjlgcpqemmejc.amk@flex--ndesaulniers.bounces.google.com
 designates 2607:f8b0:4864:20::44a as permitted sender) smtp.mailfrom=3FUaJXQwKALglbcqYsjlgcpqemmejc.amk@flex--ndesaulniers.bounces.google.com;
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

Linking with ld.lld via $ make LD=ld.lld produces the warning:
ld.lld: warning: cannot find entry symbol _start; defaulting to 0x1000

Linking with ld.bfd shows the default entry is 0x1000:
$ readelf -h arch/x86/realmode/rm/realmode.elf | grep Entry
  Entry point address:               0x1000

While ld.lld is being pedantic, just set the entry point explicitly,
instead of depending on the implicit default.

Link: https://github.com/ClangBuiltLinux/linux/issues/216
Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
---
 arch/x86/realmode/rm/realmode.lds.S | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/x86/realmode/rm/realmode.lds.S b/arch/x86/realmode/rm/realmode.lds.S
index 3bb980800c58..2034f5f79bff 100644
--- a/arch/x86/realmode/rm/realmode.lds.S
+++ b/arch/x86/realmode/rm/realmode.lds.S
@@ -11,6 +11,7 @@
 
 OUTPUT_FORMAT("elf32-i386")
 OUTPUT_ARCH(i386)
+ENTRY(0x1000)
 
 SECTIONS
 {
-- 
2.23.0.351.gc4317032e6-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190923222403.22956-1-ndesaulniers%40google.com.
