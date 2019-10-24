Return-Path: <clang-built-linux+bncBC2ORX645YPRBJGWZDWQKGQEYERZHUA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33e.google.com (mail-ot1-x33e.google.com [IPv6:2607:f8b0:4864:20::33e])
	by mail.lfdr.de (Postfix) with ESMTPS id 728F0E3FA0
	for <lists+clang-built-linux@lfdr.de>; Fri, 25 Oct 2019 00:52:21 +0200 (CEST)
Received: by mail-ot1-x33e.google.com with SMTP id e104sf93248ote.2
        for <lists+clang-built-linux@lfdr.de>; Thu, 24 Oct 2019 15:52:21 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1571957540; cv=pass;
        d=google.com; s=arc-20160816;
        b=QVQJQbiq0JC0OA+xhzsOHKqO6OG/E0mG17kqcWv7nHKeisigNWahKUlFZ7gCKwMmBi
         jQHfGpAHl3YvE23rujv+ZpBC7iFG22FZSxNh1R7CuiZD083+746lBlqzgG8ilkU8KIBU
         mv4bKEMZA8jVRK9wQ0jAFBJ3q76slRNO3odozaeJ48gyxfNoG4lCP2ys7sKD+31/I5i2
         G9f6myBRV35A26UIMNEp9jmZmLk3m3uS9fx8SreGMwcmWaPZWixRDpk0bCVK/lIwMPnC
         uAa2k+aXS3wsXLfW9ENT1BJKeIg+TYIocFkZ1pgO7WjwmUtwzU90gksTa58ZDUMOGMu3
         l9Ng==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=Nugt4SItFDpcxWbXRG0V8QJaeyWgtwLAD30M75UTBwQ=;
        b=eHDuL2tN2f5Pbv8wKMaqkifrQ+MtznxwUw8oF8flM2d5X51EDGpbiGaQi6kMN3pUPz
         1vVPwU7xpq3vfBiAcnrebW7xzeo0j2AmDhg9b58Wqlp7tUUAsZiZuF34qJiip1UHU8no
         i5h5ARM6t9CjPIOJ9zvFsdYrPGh9PyJNhd1h9easRR/jiAqocu8iiaI1SoOjnMSHO+Rn
         Y82QTDgTxxbgte5ZDXnj3cDMlvKbEpL9vyDyn6qAruYAlASQyBTvlbF0utnOUsUWfF8B
         RCrxyuFBNcOYO+sN52tb6dh7q/gMSjfW10u88V50cwXAKS3TbsIpt+kib7MZkmdBZoVs
         kezA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=LgK71Gir;
       spf=pass (google.com: domain of 3iyuyxqwkadyksealgdnsfwfyggydw.uge@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::b4a as permitted sender) smtp.mailfrom=3IyuyXQwKADYkSealgdnSfWfYggYdW.Uge@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Nugt4SItFDpcxWbXRG0V8QJaeyWgtwLAD30M75UTBwQ=;
        b=kTytUdn9rDZE33NSHiFIvJVwflhpnSJoCpSoUn9aFjD4z2XGU75x0rK0100wfMlivn
         v5+4nlWZ5f0nJHo/vHbsKJGRPFcGggwAjJfVYkLTnhnvpPny54ETohYaByPgRjzNpsmh
         4v2HcNR638JVwlFgHFPea1ik8Vi4nfuqbRQMnx78ZtpkmX7H2jaEpvxZ5iTwWnnwvT2S
         bjKHeCpkzcW0o7TKxDTSoTh57cWxjCRxQAcvxuixR9lninyRIzH0FqJ+8alF4B+qCpOu
         p5DEZ5Pc49meY57bwrVnr+vhUoLprH1nwAHA1bH4qdj8BE4RoSghhycB7TUfSpX5mm9Y
         tvAw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Nugt4SItFDpcxWbXRG0V8QJaeyWgtwLAD30M75UTBwQ=;
        b=nRwAE9850FbOKHsBtIyFuetG2iRB/fSWajMB3Uzja3hociYyxFcZDZ+zZ7yQOI+lUX
         tSnXmwRy/CAcAwgmdsHzKvu2wDVcsygxslk4LN9f5D3sEp6B6L4QxvsoEdfKCdYNdAOP
         38vjKYTX83YIIo/adQp7RnuGznZ8K88Heg0XFNmv7SZhYljUUpli6Swtgb01Wp+v3GoI
         tuGmCTNUe0qFTYxey5tg7hywLXi9aUdB+Wzcs3ExBjVYihujwREcxSaPKB7Ai7V9KiRm
         I0FYKHVcouUatAjEgM73+mFkI3HeyLFxgEC4QKBx7aLxSLQE/MbdT2u3mUsond1Pvn3l
         /61w==
X-Gm-Message-State: APjAAAU2xO61zHM4H9rb96Ju/0wXxnB6VlIVtBEOpO6V02f6G26h79i4
	BwmV51ZyaIulQJVqG6hWYwA=
X-Google-Smtp-Source: APXvYqwom6hbB9rb24VRI/zlxT833hqz9Vq1CG7hJNpLpIvfoq+jabfOY5DCjW57q53sQdvbU815UQ==
X-Received: by 2002:a9d:715b:: with SMTP id y27mr236331otj.131.1571957540326;
        Thu, 24 Oct 2019 15:52:20 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6830:1383:: with SMTP id d3ls2284477otq.0.gmail; Thu, 24
 Oct 2019 15:52:20 -0700 (PDT)
X-Received: by 2002:a9d:6641:: with SMTP id q1mr223840otm.241.1571957539912;
        Thu, 24 Oct 2019 15:52:19 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1571957539; cv=none;
        d=google.com; s=arc-20160816;
        b=Wyf4d4Zp+DPzfWo37HE82g1kiqB6xB0gjnpJTTYMGRnVfpM2f/GrzuEivxtAF12Fbs
         gWczX+vWRgNNqahbjaYfGpt3PFV9SRH2DdZ8amaEbDM9VZeUeTw+1BkLF114R2rSicd+
         UKUyRNiQhl1C+xvu/yx5hY0cQ2Ga0FoNi2m55cvbuvcBMuYXHFvB39Bu5EcXDgMDuPV9
         wzF4EiKb7c1ADkkRl4K/o8MEjwOShgCqUO7xHCI9igmD8i8D0o1BFtHJkBFdicCei1Gz
         RDFh1BuudNEEtBUP2+7iHOpQnbCz2jexfBlAD2DZYkAs+kzAiQZjH6BVcUI+2jnnB/0o
         Lg9A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=P4MEC/JNWY+R+03CT6BMcXkN4eq/H40mvA6s8gty/0o=;
        b=0cvFSODoTPDpthluFuzUcbV0bkbxyMZk2VfGdReNR4ym+dlhuaUqJg460hwVl08SYW
         wcwypoJep+Y1bnEHH/NNRmJClY6nfyC+TvWP0/nbGg/vYK8I1JUOd6j8eBXpCO4jLgkY
         znKOZHOYsPOaLJUV4P4kOF5ITbNxUjFyLFvyNMYDnd5rfjrnWdnA76Ifnr2YbCq99yvp
         eKBfgD4ylxPiMEu+0IZ2pFBUlYNjzSZ76OR/Qq3rZ0Dj1woq+KiXy/5Y44RXjYJok/qd
         Yb5FFFbXU1afpOTJCZEVuFLmC49e4fPR1uLAsngWSu+LfmdjRYwFI6/hiXKJEHU9LFKW
         iw6A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=LgK71Gir;
       spf=pass (google.com: domain of 3iyuyxqwkadyksealgdnsfwfyggydw.uge@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::b4a as permitted sender) smtp.mailfrom=3IyuyXQwKADYkSealgdnSfWfYggYdW.Uge@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-yb1-xb4a.google.com (mail-yb1-xb4a.google.com. [2607:f8b0:4864:20::b4a])
        by gmr-mx.google.com with ESMTPS id b11si6546oii.5.2019.10.24.15.52.19
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 24 Oct 2019 15:52:19 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3iyuyxqwkadyksealgdnsfwfyggydw.uge@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::b4a as permitted sender) client-ip=2607:f8b0:4864:20::b4a;
Received: by mail-yb1-xb4a.google.com with SMTP id t48so415489ybi.22
        for <clang-built-linux@googlegroups.com>; Thu, 24 Oct 2019 15:52:19 -0700 (PDT)
X-Received: by 2002:a25:2a46:: with SMTP id q67mr381984ybq.123.1571957539222;
 Thu, 24 Oct 2019 15:52:19 -0700 (PDT)
Date: Thu, 24 Oct 2019 15:51:26 -0700
In-Reply-To: <20191024225132.13410-1-samitolvanen@google.com>
Message-Id: <20191024225132.13410-12-samitolvanen@google.com>
Mime-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com> <20191024225132.13410-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.24.0.rc0.303.g954a862665-goog
Subject: [PATCH v2 11/17] arm64: reserve x18 from general allocation with SCS
From: samitolvanen via Clang Built Linux <clang-built-linux@googlegroups.com>
To: Will Deacon <will@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>, 
	Steven Rostedt <rostedt@goodmis.org>, Masami Hiramatsu <mhiramat@kernel.org>, 
	Ard Biesheuvel <ard.biesheuvel@linaro.org>
Cc: Dave Martin <Dave.Martin@arm.com>, Kees Cook <keescook@chromium.org>, 
	Laura Abbott <labbott@redhat.com>, Mark Rutland <mark.rutland@arm.com>, 
	Nick Desaulniers <ndesaulniers@google.com>, Jann Horn <jannh@google.com>, 
	Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>, 
	Masahiro Yamada <yamada.masahiro@socionext.com>, clang-built-linux@googlegroups.com, 
	kernel-hardening@lists.openwall.com, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org, Sami Tolvanen <samitolvanen@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: samitolvanen@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=LgK71Gir;       spf=pass
 (google.com: domain of 3iyuyxqwkadyksealgdnsfwfyggydw.uge@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::b4a as permitted sender) smtp.mailfrom=3IyuyXQwKADYkSealgdnSfWfYggYdW.Uge@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: samitolvanen@google.com
Reply-To: samitolvanen@google.com
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

Reserve the x18 register from general allocation when SCS is enabled,
because the compiler uses the register to store the current task's
shadow stack pointer. Note that all external kernel modules must also be
compiled with -ffixed-x18 if the kernel has SCS enabled.

Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
---
 arch/arm64/Makefile | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/arm64/Makefile b/arch/arm64/Makefile
index 2c0238ce0551..ef76101201b2 100644
--- a/arch/arm64/Makefile
+++ b/arch/arm64/Makefile
@@ -72,6 +72,10 @@ stack_protector_prepare: prepare0
 					include/generated/asm-offsets.h))
 endif
 
+ifeq ($(CONFIG_SHADOW_CALL_STACK), y)
+KBUILD_CFLAGS	+= -ffixed-x18
+endif
+
 ifeq ($(CONFIG_CPU_BIG_ENDIAN), y)
 KBUILD_CPPFLAGS	+= -mbig-endian
 CHECKFLAGS	+= -D__AARCH64EB__
-- 
2.24.0.rc0.303.g954a862665-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191024225132.13410-12-samitolvanen%40google.com.
