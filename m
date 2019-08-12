Return-Path: <clang-built-linux+bncBDYJPJO25UGBB4N6Y7VAKGQE5HOCQNA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x338.google.com (mail-ot1-x338.google.com [IPv6:2607:f8b0:4864:20::338])
	by mail.lfdr.de (Postfix) with ESMTPS id 387AA8A9C4
	for <lists+clang-built-linux@lfdr.de>; Mon, 12 Aug 2019 23:51:46 +0200 (CEST)
Received: by mail-ot1-x338.google.com with SMTP id h12sf86917125otn.18
        for <lists+clang-built-linux@lfdr.de>; Mon, 12 Aug 2019 14:51:46 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1565646705; cv=pass;
        d=google.com; s=arc-20160816;
        b=TcCBeVWRG1OxFGynGVCi086tpDcg36qQESA+RHGRZgsSeupG/xxlqv+2dADtmX+Grb
         nQ0+/Q/Xoxv9c/a+UXt016JpCSs9eW9+Xd4aM4CeV2EboVjbq8CqmgFFTh3dfAbLTai2
         7iQSUGQvlgvrT0+a10/QbdcCH6PTPHhn2BpSg51sohYzIoMU+qdfEfhmsQbW2ltxtlIf
         b43rKdV9ZxASI92Qhdj1ZIa7Jg6SwfSKo2KACIaqtm6fG0CCOztEH6cBUcXDK7U4ow5B
         IEayKsCdqBw1NZHhTk71GcNnWzgcZARqwdNk2yyiBGcywSy3ymiWbm7/1xhsBEBbFjwN
         NnDw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=rYLl0U67t64ZJqPNxQAoodCGRahq97Ls3twazr7nBRo=;
        b=e6+rNSufDJQ5/r3WaIifGSJIVkVUmuM/dcx5Oh7bY2Op9CJNo8qICsqXXBIGuM4XPJ
         zw5BNr8ug+acuVSqUdbW6rqAmSfsMLHoatFlQT73iOQHqcLUDdDYsfJP3q9VrzsoInpG
         k7QzDobzLY+9e9zuZDe3qfImvIhuPL1nd4PRFSzODhcYo1VnQnVQ4i1yxeQWoKnTN7Y/
         0/BsyozNa2i9+qQPaaNhfaDd4z62hFptp3xJj4odhjn1qlPF7WqzIMGwYKFeWWdm/91I
         Yc3zR9uG9rMvGXB1ePI4xOBetifQUZzcdmjbtoPwk23tT1U5QOi+AqihTEImgzNcIq4r
         pXFA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="B1M/tQcz";
       spf=pass (google.com: domain of 3cn9rxqwkagcsijxfzqsnjwxlttlqj.htr@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::549 as permitted sender) smtp.mailfrom=3cN9RXQwKAGcSIJXFZQSNJWXLTTLQJ.HTR@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=rYLl0U67t64ZJqPNxQAoodCGRahq97Ls3twazr7nBRo=;
        b=cfhkihLjEwDOy9Bey9dt8Y/oB0a5+w6yFzYnYw/qqzyUV/n38dFo87ejX/3EUNt2UO
         Lm5/JCg8nHtLYA5RZnEL5Univi+lXHuNGlTAN+DX4GWdOV8sqhtd48MDmyINXGk0s8rp
         KgwdrymN+klB5Prk5xxHqFs7MqyqoAzCQgK7LKo7a7pmWGMhUGwThiUQfF40W44OHkOZ
         Nst1xwBWXh/syWxwhQ4+GTC8jHaLzftuzNN00Ils+YP2c28PBU4ydkq3Q237EB4emuTo
         yYfMeGF2dnhkuRqLO63JplovEbuslb439tg+Jl8HzLPDr16PciZ4MImSjEDVLOXhbanU
         7WKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=rYLl0U67t64ZJqPNxQAoodCGRahq97Ls3twazr7nBRo=;
        b=s0ywHZYYwfzOcwo9CrNyACNSGhKsuwZPWSfdPNaBITKg89qdtKJJYQuXTqjnqYAuCY
         ukRs24Mtvq/83sW0vRmEd2W91GIu/ZDrqiaJ4eCX5r4u0u+vIN3vD3qaE0zIP7dGFgCz
         +5VoIVOTaV5e+wZnRtgELJ/bJzRtRwazlikfSlCv1ooiJ70rC/uwPrDSjfxBXWf/P+BB
         g3tuyFjKLMgK/M6EB5aedATEm3+4JiAHeWezigOnKPVpD6DuFhkLsT08T7A7ZkVbdz5i
         b86JoGB0mZ+zhI7uX+QMiSVQr11AL/pAwNCJzOsiJwDf3M+7jZqgnmF4nZkDLOk8KocE
         OjKw==
X-Gm-Message-State: APjAAAVkwv8Ma99laMcM85sEn8iv3w6k/aEI64qwhi/lQqhFYSWojXhu
	s74BtnIHvm0VMGIWrfVLxTY=
X-Google-Smtp-Source: APXvYqwJ1fj7+qgAE+e1B0Lg4POyEKj1KxN8lLd1f/8NFnhL5gLUlT2bc4ddcOa/r/Cd8a2cW+fe8Q==
X-Received: by 2002:a9d:620e:: with SMTP id g14mr32259966otj.317.1565646705210;
        Mon, 12 Aug 2019 14:51:45 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:17e9:: with SMTP id j96ls4772181otj.12.gmail; Mon, 12
 Aug 2019 14:51:45 -0700 (PDT)
X-Received: by 2002:a9d:7643:: with SMTP id o3mr33100751otl.49.1565646705003;
        Mon, 12 Aug 2019 14:51:45 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1565646705; cv=none;
        d=google.com; s=arc-20160816;
        b=rgPEXohCfi6IxkaOeE6kkYMbCfrj6m5krnpuPmpoCamq6w1eNkpqutVoYwXMCgW4fu
         psMkaUE6b4PCurkUOfYsc98vrSQ/6mUKoPYseJyEYcXIkN5k+mwUaj+r8d4/7C9NN4EL
         SxvvEbUC511tmK922rwKTY0KeohDSzV3v5lKPmkZg/MOEhUPA1339A7c2VT6Z/jJQzZA
         6GeT0ZqQktkQxc+yITEDwMEde67yikIg4Xv6X/bkh+uzmfDAx/65rZfI5T6ieSvOvlpc
         bv/oleXj/3mkoyJam8c+CJXoi7cq5n/rxn4ADUeX1257dbT3YIhuQXHhTV6ECDyGOnhM
         4zOA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=+V6H61t/WhJBtoDgPI8KA/pTwpjh8ARqkJflJLJFNkA=;
        b=dcBnevKjP6j8EsOljPWQGPF/lMCvtU54JCkqqiX2vclE8sT5W/F9S0AE5A7R9OnTuT
         qIU16XCn6V20BYAEZsbbW2+VN/5uDmNTVH8nBZJCU+RwTaAurpG4+s90qKCp6WZvAxKE
         W1R8B4Hb+hs7uhJDdKvSyjB316uXRgWYppYMiI35QwNQJ2aWWl/7UhZYKK3LWkfFjbXa
         mxa9JS61yIpqBXKvbW/R75jSF0N/S3Qj4nClqloIvWc3TVU22fNNTbksRjIfIAm5kUaB
         o0OsJJ7DHxOVGQEda86czuvjG7tAFOar/5EV+fF4u1Ai3ZYB1Ic3C/WV7VT5zXgyOXU1
         0IZA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="B1M/tQcz";
       spf=pass (google.com: domain of 3cn9rxqwkagcsijxfzqsnjwxlttlqj.htr@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::549 as permitted sender) smtp.mailfrom=3cN9RXQwKAGcSIJXFZQSNJWXLTTLQJ.HTR@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x549.google.com (mail-pg1-x549.google.com. [2607:f8b0:4864:20::549])
        by gmr-mx.google.com with ESMTPS id y188si4918841oig.3.2019.08.12.14.51.44
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
        Mon, 12 Aug 2019 14:51:44 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3cn9rxqwkagcsijxfzqsnjwxlttlqj.htr@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::549 as permitted sender) client-ip=2607:f8b0:4864:20::549;
Received: by mail-pg1-x549.google.com with SMTP id h3so65404495pgc.19
        for <clang-built-linux@googlegroups.com>; Mon, 12 Aug 2019 14:51:44 -0700 (PDT)
X-Received: by 2002:a65:68d9:: with SMTP id k25mr32098928pgt.337.1565646704006;
 Mon, 12 Aug 2019 14:51:44 -0700 (PDT)
Date: Mon, 12 Aug 2019 14:50:37 -0700
In-Reply-To: <20190812215052.71840-1-ndesaulniers@google.com>
Message-Id: <20190812215052.71840-4-ndesaulniers@google.com>
Mime-Version: 1.0
References: <20190812215052.71840-1-ndesaulniers@google.com>
X-Mailer: git-send-email 2.23.0.rc1.153.gdeed80330f-goog
Subject: [PATCH 04/16] um: prefer __section from compiler_attributes.h
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: akpm@linux-foundation.org
Cc: sedat.dilek@gmail.com, jpoimboe@redhat.com, yhs@fb.com, 
	miguel.ojeda.sandonis@gmail.com, clang-built-linux@googlegroups.com, 
	Nick Desaulniers <ndesaulniers@google.com>, Jeff Dike <jdike@addtoit.com>, 
	Richard Weinberger <richard@nod.at>, Anton Ivanov <anton.ivanov@cambridgegreys.com>, 
	Alexei Starovoitov <ast@kernel.org>, Daniel Borkmann <daniel@iogearbox.net>, Martin KaFai Lau <kafai@fb.com>, 
	Song Liu <songliubraving@fb.com>, linux-um@lists.infradead.org, 
	linux-kernel@vger.kernel.org, netdev@vger.kernel.org, bpf@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b="B1M/tQcz";       spf=pass
 (google.com: domain of 3cn9rxqwkagcsijxfzqsnjwxlttlqj.htr@flex--ndesaulniers.bounces.google.com
 designates 2607:f8b0:4864:20::549 as permitted sender) smtp.mailfrom=3cN9RXQwKAGcSIJXFZQSNJWXLTTLQJ.HTR@flex--ndesaulniers.bounces.google.com;
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

Reported-by: Sedat Dilek <sedat.dilek@gmail.com>
Suggested-by: Josh Poimboeuf <jpoimboe@redhat.com>
Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
---
 arch/um/kernel/um_arch.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/arch/um/kernel/um_arch.c b/arch/um/kernel/um_arch.c
index a818ccef30ca..18e0287dd97e 100644
--- a/arch/um/kernel/um_arch.c
+++ b/arch/um/kernel/um_arch.c
@@ -52,9 +52,9 @@ struct cpuinfo_um boot_cpu_data = {
 	.ipi_pipe		= { -1, -1 }
 };
 
-union thread_union cpu0_irqstack
-	__attribute__((__section__(".data..init_irqstack"))) =
-		{ .thread_info = INIT_THREAD_INFO(init_task) };
+union thread_union cpu0_irqstack __section(.data..init_irqstack) = {
+	.thread_info = INIT_THREAD_INFO(init_task)
+};
 
 /* Changed in setup_arch, which is called in early boot */
 static char host_info[(__NEW_UTS_LEN + 1) * 5];
-- 
2.23.0.rc1.153.gdeed80330f-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190812215052.71840-4-ndesaulniers%40google.com.
