Return-Path: <clang-built-linux+bncBC2ORX645YPRBCHZWHZAKGQEAITTJQY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x337.google.com (mail-ot1-x337.google.com [IPv6:2607:f8b0:4864:20::337])
	by mail.lfdr.de (Postfix) with ESMTPS id CFF1316380F
	for <lists+clang-built-linux@lfdr.de>; Wed, 19 Feb 2020 01:08:41 +0100 (CET)
Received: by mail-ot1-x337.google.com with SMTP id q13sf13396165otm.18
        for <lists+clang-built-linux@lfdr.de>; Tue, 18 Feb 2020 16:08:41 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1582070920; cv=pass;
        d=google.com; s=arc-20160816;
        b=FAB/z7XG0CjOV+l1uVhbLrbXZCj0LW3bvtsrb7wL50fZ7+NxpQpeSmApEGjObgDaPs
         vWC5hwmgQLVdvln4JaIDzxuAd4rD639gtBZC6IF0ynFQoayekDkh9Evz6dRzkv40sK6D
         8FRjFSsOmjAKx9FIkgOgaVIIEMqsUUbzvTnPDN1/uQieI2kSBeKGBQaZNBVYft6k1rn2
         vaAq/+bPt7cVnVXNUgkS0wU8wGY3bwtzxau8bL+EhOanwsvkKOCS9KFDVBTOX7b1/vj1
         1ghG03ObXR3WBPuLgUtocLM36xm+fjH+N/tYLBWn1qZ7mrcO9nx4htYBH9VD2jz4bqso
         40iw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=5HacM6cLiwYBSpHKcqxIeBcNkQkm0zcww7xVkzixPW0=;
        b=IvdmnWQ99WUKuQReiC6ScMpuqhajvvEEev68P3CvhmlvU26cg6mmL9wZziDNKWghpb
         clfFf54G6wY1l8pwVWUdwsBwkX7LFlD5GA8lci5pNfAD1qQopHRfGrxYjxfXlDkEGTuJ
         DMnkf8Hd627puS8i8fhMZpY2YDRTCbYTuNzLuZzA7SR1CM1YVIzb+93GRB55/nNKCUk3
         CtCy/Xv11Ot2p5TNFZxqyvJVmrvg2N4UBBnPuqg/kM6ng/uT4cktdj07G+0YTWnVvIb8
         sod3BKD/NddOsJjMv/JCy24zUmAv1EP8gHAkSR5jCk4CkgrUdP+yBmQWVhe066x7pbOC
         nBtA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="MxFF3Jv/";
       spf=pass (google.com: domain of 3h3xmxgwkakockwsdyvfkxoxqyyqvo.myw@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::94a as permitted sender) smtp.mailfrom=3h3xMXgwKAKocKWSdYVfKXOXQYYQVO.MYW@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=5HacM6cLiwYBSpHKcqxIeBcNkQkm0zcww7xVkzixPW0=;
        b=Y7VgBI8VjDJMQ8TqpXOQaM32cIE60CTrQvvkkWgV8rZlI+ZFpE1FOS1+3xnZsRMoMX
         XRxq8dSA35mV4sdiIYAnUOpM4uqTDsHGCamolekOVgJ+qf15PNfFvYFnSGrdz7GPHycP
         5pNvHLVM0Kryv0iQpLi4D6nn+A2I7Yymnh9TgPAFXDfTXwWvh/ri0mujLKFP1mgzAJNf
         nKsvBLeDBLy+c5bQkwKTMXXjShzJuD81NtENjITRRUPSmcWLGIG2lkbtq/vPCxB+ueBe
         jIqZoJCTC1Spbh63TpWW001ojWJ4tj/k0PW0tS69Raxlr8J+0sZ2Q+fgeo8wIh/QPdum
         yO6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=5HacM6cLiwYBSpHKcqxIeBcNkQkm0zcww7xVkzixPW0=;
        b=B1IwQmOUIn3MZ0lfKKcSqVt5wpA52d9XJcuW+REONJGLkUQnU0qmtG7sqOJ1xQql6T
         rkuxCb+wpY1qGIbINUqUgEdhEZJuos5Y+xiZDwzngEfLVubuSnEd4Ye41/SCmuDZbQjX
         hHahjeMjdt9w8TM3aF6kYEmitlScthQ44aFi/gdhI+9S1ecOab2OlpQRWNfLqyzdvwQL
         VeHXkr2jI+sBBuHnDVL+8Dr/GiD6APIvN2DCrB5G2GOIqs3B2LoonXvC3Ne0vWWiwvof
         U8KQ/pPNPA00SCPeIV1Xf3E7zGDXnAtMLBkO8N2V4338IUcT1yLNqNg5W8xg79/pVSiT
         XRXw==
X-Gm-Message-State: APjAAAUELc/il8fdvOU0ngcD28QyPBJhp3zwCJq8QFlse70Y6M7wnPJE
	LGgRr+xpu3k5QJmHWEbpF+g=
X-Google-Smtp-Source: APXvYqz3goN9p4qNRyV31MmWeI4cuswYgZXcofWJw8jVyC6NV2eYrcBzbQrYg26bt3vnsBjjwlRiYw==
X-Received: by 2002:aca:37c3:: with SMTP id e186mr3082808oia.155.1582070920714;
        Tue, 18 Feb 2020 16:08:40 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:c7d8:: with SMTP id x207ls460411oif.0.gmail; Tue, 18 Feb
 2020 16:08:40 -0800 (PST)
X-Received: by 2002:aca:190b:: with SMTP id l11mr3105914oii.65.1582070920297;
        Tue, 18 Feb 2020 16:08:40 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1582070920; cv=none;
        d=google.com; s=arc-20160816;
        b=cJINudOtpmB0Ew+r3PaSYRLR4TkPsMm9BY29d8mO1odtWpBooCpzJTrqXqEMTyovBr
         1hndaWzLX7KKlAoNg4to8d1utrrJ8yUOEkMLQJFcmCYNwkzhN71+iz5//Z4k3Iq1SRE5
         fMv5EMMQF3PERydpZEL4DMy9O77bqg6RiUVqbIx64ybfR4o5S+V4AZb4U/Aa8dT1MkLw
         9qPzSBiSmVcCcgBeyebHJjURV+QZtIcnm4BTtO+3PMxeApLHrGWQ0oNawAec2dronwZh
         VaLQ0VGzDFsmtdWlIGMh4aoNJwHdUEAqjBhSamSDdCeNOh1HM374crDVMIFwgsW8JytD
         7Sew==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=l6scMayGLTv8i90n5kl1qjpFIVxp1ij4wxIMmOxT7WY=;
        b=VvWSBeN6wL8nLa7eSTsvEPFtJNQYB1UtilfKGvs+add5ZN6OEex2VGP6sUZvoDbQNt
         RpZauFUbK4oL1u4vAA5qCqlYQV2gNZ3WpYrH1nAJ6p4pKMT74KgaxGdkRrjBbEuzbyhy
         pNBocjeKw1C8+8fqJMebFc4JxWHirJ9nt9zJi2t2tGw/u0sJ9Dfx9ldkvGCawWUUYtDj
         KFrj0p59d6DBcU4zfD3aAFvpPNzmmnU8zPL7csJETdF6Ct0Nx+2jgZFyRWoFUxwjR4eK
         BH7S/lY4NjqyaAbhCFEt2X4tffTMSiNnNEq8073AcXSNnl7pAclITDOgfPQvh5cvcfYn
         nrMQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="MxFF3Jv/";
       spf=pass (google.com: domain of 3h3xmxgwkakockwsdyvfkxoxqyyqvo.myw@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::94a as permitted sender) smtp.mailfrom=3h3xMXgwKAKocKWSdYVfKXOXQYYQVO.MYW@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-ua1-x94a.google.com (mail-ua1-x94a.google.com. [2607:f8b0:4864:20::94a])
        by gmr-mx.google.com with ESMTPS id j26si1153447oie.0.2020.02.18.16.08.40
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 18 Feb 2020 16:08:40 -0800 (PST)
Received-SPF: pass (google.com: domain of 3h3xmxgwkakockwsdyvfkxoxqyyqvo.myw@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::94a as permitted sender) client-ip=2607:f8b0:4864:20::94a;
Received: by mail-ua1-x94a.google.com with SMTP id f15so4404184uap.4
        for <clang-built-linux@googlegroups.com>; Tue, 18 Feb 2020 16:08:40 -0800 (PST)
X-Received: by 2002:a67:f144:: with SMTP id t4mr12321250vsm.36.1582070919665;
 Tue, 18 Feb 2020 16:08:39 -0800 (PST)
Date: Tue, 18 Feb 2020 16:08:09 -0800
In-Reply-To: <20200219000817.195049-1-samitolvanen@google.com>
Message-Id: <20200219000817.195049-5-samitolvanen@google.com>
Mime-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com> <20200219000817.195049-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.25.0.265.gbab2e86ba0-goog
Subject: [PATCH v8 04/12] scs: disable when function graph tracing is enabled
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Will Deacon <will@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>, 
	Steven Rostedt <rostedt@goodmis.org>, Masami Hiramatsu <mhiramat@kernel.org>, 
	Ard Biesheuvel <ard.biesheuvel@linaro.org>, Mark Rutland <mark.rutland@arm.com>, james.morse@arm.com
Cc: Dave Martin <Dave.Martin@arm.com>, Kees Cook <keescook@chromium.org>, 
	Laura Abbott <labbott@redhat.com>, Marc Zyngier <maz@kernel.org>, 
	Nick Desaulniers <ndesaulniers@google.com>, Jann Horn <jannh@google.com>, 
	Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>, 
	Masahiro Yamada <yamada.masahiro@socionext.com>, clang-built-linux@googlegroups.com, 
	kernel-hardening@lists.openwall.com, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org, Sami Tolvanen <samitolvanen@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: samitolvanen@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b="MxFF3Jv/";       spf=pass
 (google.com: domain of 3h3xmxgwkakockwsdyvfkxoxqyyqvo.myw@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::94a as permitted sender) smtp.mailfrom=3h3xMXgwKAKocKWSdYVfKXOXQYYQVO.MYW@flex--samitolvanen.bounces.google.com;
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

The graph tracer hooks returns by modifying frame records on the
(regular) stack, but with SCS the return address is taken from the
shadow stack, and the value in the frame record has no effect. As we
don't currently have a mechanism to determine the corresponding slot
on the shadow stack (and to pass this through the ftrace
infrastructure), for now let's disable SCS when the graph tracer is
enabled.

Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
Reviewed-by: Kees Cook <keescook@chromium.org>
---
 arch/Kconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/Kconfig b/arch/Kconfig
index 66b34fd0df54..4102b8e0eea9 100644
--- a/arch/Kconfig
+++ b/arch/Kconfig
@@ -535,6 +535,7 @@ config ARCH_SUPPORTS_SHADOW_CALL_STACK
 
 config SHADOW_CALL_STACK
 	bool "Clang Shadow Call Stack"
+	depends on !FUNCTION_GRAPH_TRACER
 	depends on ARCH_SUPPORTS_SHADOW_CALL_STACK
 	help
 	  This option enables Clang's Shadow Call Stack, which uses a
-- 
2.25.0.265.gbab2e86ba0-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200219000817.195049-5-samitolvanen%40google.com.
