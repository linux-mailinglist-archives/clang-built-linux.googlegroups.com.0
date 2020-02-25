Return-Path: <clang-built-linux+bncBC2ORX645YPRB4VX2XZAKGQEJWTVAJQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3b.google.com (mail-io1-xd3b.google.com [IPv6:2607:f8b0:4864:20::d3b])
	by mail.lfdr.de (Postfix) with ESMTPS id 2956816ECB1
	for <lists+clang-built-linux@lfdr.de>; Tue, 25 Feb 2020 18:40:03 +0100 (CET)
Received: by mail-io1-xd3b.google.com with SMTP id e7sf41184iog.9
        for <lists+clang-built-linux@lfdr.de>; Tue, 25 Feb 2020 09:40:03 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1582652402; cv=pass;
        d=google.com; s=arc-20160816;
        b=gZ3OFU/n84D05qpbQaqTzLZ3XCtEHbFTGrKtK5qoOpXk4DQ43xVpDWC6HdkkIq91rE
         HEVQjDOJmgv6O90ga04BBZzqeLUAZanJ68hrp8X6olZ7IE8MJdHvEBW4dzZ6wBu/e/lM
         IveIdA7UyzMUlhW+RpHAFVAI9fqP6HaZEULLh2bOsW2VQlTwlC8O/n40kPzsmF7yFiYM
         jNpzedKrww1EIe4L+H8Mtt8EEuWh5uUDzppKITk9bktEz+IErC2l1N7ggeZ+cwJcOi0X
         ck7CWN8z8Y2xqWMTOPV6JMEVdzj/9PqY9fjVugfvarqrOcpALyvxSvPoD9ZaCYm9Por/
         6CHA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=r9zQjew0HyhskZoJPcqQpD/ekmF+vPOf9Zgq7PpNtzo=;
        b=KAFhsi9QN0YXWDm0+8/daVRsuHhGvGZ7WXZtn29O4FCX0/gHVNNlBanZswomrDRZ8R
         CdlJd8vYZUI/bxVgyZM5Lg6mtRb3cWr9sYxbmR09RhBegyFpCZv6Jh7IpCq/woJLiC6z
         lKV17kQW0dO2iGYnNUJrAbHoSOK8WWRHJOsZcaRzlcvDUJd5jruXvJQs6mIUtlDXSJqy
         U1YeHHY0TSVsvS0u/WAxjuihgGyVOIxQno9qOkJ3ZgV0n/C64hr1EouX7Bfku1WTx0QH
         ND/2wIyYU8c5aGZWc/4lq92Zb9uy9Vbmmqf/UPvdpZVJjdMIjXW3IaIc+2QSnBTr2luX
         9kGQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="V+O8aB/k";
       spf=pass (google.com: domain of 38vtvxgwkapyqykgrmjtylclemmejc.amk@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::449 as permitted sender) smtp.mailfrom=38VtVXgwKAPYqYkgrmjtYlclemmejc.amk@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=r9zQjew0HyhskZoJPcqQpD/ekmF+vPOf9Zgq7PpNtzo=;
        b=PXTB41BsKeKYcIoaoz0t/wMIZPPimXCjudVrUWGpvIM+2Mjgy/Ew0J5Tezx9BkGyEK
         nzT4LyFxr350Gu6NxXlFG0eenpizUG7VR/0iEnFGIoweGxh+yFWXEEhfV0HfvsNIYNyS
         xK+H6AVnKvL3zAy63KBytedktLY5R+D1xaarLAC0nh7Rrc7P5/nwW7X2fUqE6zMhAjsO
         ElPTtnLP5RzlLDnEARjNmsktr2Yguzo1DTjT41AdVs9RsqAGtdIz4XMFYV3SVBQr985Z
         ogNO4a6t8s6D2EVmIfOz2Laas5vEzMuQH9B54XFfwUKWkUcOu/YPy1CtuY2YS7rBcOp+
         C7PQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=r9zQjew0HyhskZoJPcqQpD/ekmF+vPOf9Zgq7PpNtzo=;
        b=TDII5TNJdUpSNbeCyAZAQLiDG8WJPW79AIBnF6JPWYBcKrc218FamcX5dP0ZiOn582
         LJuhnlwwBtogZzy/SAFkH2YfUUCla4dputhRGYDqWnANS22P/TDl8wmNaEWfmHKWLUaA
         wC5Vcornh0OagkDi1j4/tEomVkcVK1hmjLHP0/BV0DHCxlROkNg1PqZT+dblXQ5oSKhc
         ZylAbslI3pguJYfJXDaTcHXVbkzZrhp3CK1vMehGprIGY7T2LAZbGUX+OjujylFTyFFN
         tfD5HjqYucbi06axz732DMU5i+qByuNqPyGXKL/JhbKUp1ptH0iYlqrw7hDMRDzjEb6m
         AOGA==
X-Gm-Message-State: APjAAAXsSow8ft2ygAFEOUO4lG+fT9QS8ZOi4y8N1dA7EJ4fz5T0W/rx
	+bDw5HAnjXlsXm5SJcVdZus=
X-Google-Smtp-Source: APXvYqyTKCt182ajMCd8fDjG8NdFY4xdpwyPl+TUHCNTrFnORxBq0+Ao/Bx7EjXM4GKD5lfixInOXQ==
X-Received: by 2002:a6b:b594:: with SMTP id e142mr175510iof.198.1582652402150;
        Tue, 25 Feb 2020 09:40:02 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5d:924d:: with SMTP id e13ls61880iol.0.gmail; Tue, 25 Feb
 2020 09:40:01 -0800 (PST)
X-Received: by 2002:a5e:8612:: with SMTP id z18mr175183ioj.206.1582652401747;
        Tue, 25 Feb 2020 09:40:01 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1582652401; cv=none;
        d=google.com; s=arc-20160816;
        b=FAsBr6bwKgwQbkQf0jUKbMqHzQXQ/6kf8fEKx66nl1X1ZT3r1rvDax5vnkBAuE9tO6
         bm+fmIoxexygK6FM5ySkiZI8ojzd0vNkJXMeIcAhmRjryjAa5yqFqtMIi3zZWkvCZbBP
         15wrUM9MlLb8evIlv7Noto12sz1tewJlkeUE3bmsiyIu940ZJgtvmG6fDolQ8CajGGI7
         vitXT7TsuvZHpKj4uv3WrVHmh4hq69UWM3qQ1BcXqBXuW5go4EY0elEaKDVkYBxMHPK1
         l7H0gflqjsbGmr82EV+y1tSGPntJj5QK/2d3oy0EQj74qRe+zwgMUaGNzDxL2IGJP29N
         2Vqg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=jVKqEF9zEsFZTQz5E/s7PAlXyZsbPgu1MND2Fom4HAc=;
        b=m6KryfA0arbHhmim2ECXoliSpQkfikO0r2bRP/V6/Ckgjlwep4h+poC7FOmNhNdmSX
         FfiNC3S5kaYXnU/FnIFWuCp1Eg0xlkuOYRPiYQFT9ENorjPgkynezwjJTHH1yvQyEppu
         6WzX2L5h+pLNDKCxge8OQawHxDRwwMTroWOMevt2/9r6skyNHPdArZpVQwI1igXJ0OPZ
         ZYa4YLCNLsBBCdsJ0i5/SsjlKW0jU8P6bLFJbbJ4nASPeVrUO/D2KSNHtzWM3T/oNIlf
         q/gv7p+W7uob5BE/2ao47Q+cb/PHgOVNlQLvDrghHcmFmygAsHsTelOh8fh1DeQ+/ozE
         tpxQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="V+O8aB/k";
       spf=pass (google.com: domain of 38vtvxgwkapyqykgrmjtylclemmejc.amk@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::449 as permitted sender) smtp.mailfrom=38VtVXgwKAPYqYkgrmjtYlclemmejc.amk@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x449.google.com (mail-pf1-x449.google.com. [2607:f8b0:4864:20::449])
        by gmr-mx.google.com with ESMTPS id p9si5070iog.5.2020.02.25.09.40.01
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 25 Feb 2020 09:40:01 -0800 (PST)
Received-SPF: pass (google.com: domain of 38vtvxgwkapyqykgrmjtylclemmejc.amk@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::449 as permitted sender) client-ip=2607:f8b0:4864:20::449;
Received: by mail-pf1-x449.google.com with SMTP id r127so9717631pfc.11
        for <clang-built-linux@googlegroups.com>; Tue, 25 Feb 2020 09:40:01 -0800 (PST)
X-Received: by 2002:a63:e04a:: with SMTP id n10mr57879618pgj.341.1582652401052;
 Tue, 25 Feb 2020 09:40:01 -0800 (PST)
Date: Tue, 25 Feb 2020 09:39:26 -0800
In-Reply-To: <20200225173933.74818-1-samitolvanen@google.com>
Message-Id: <20200225173933.74818-6-samitolvanen@google.com>
Mime-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com> <20200225173933.74818-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.25.0.265.gbab2e86ba0-goog
Subject: [PATCH v9 05/12] arm64: reserve x18 from general allocation with SCS
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Will Deacon <will@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>, 
	James Morse <james.morse@arm.com>, Steven Rostedt <rostedt@goodmis.org>, 
	Masami Hiramatsu <mhiramat@kernel.org>, Ard Biesheuvel <ard.biesheuvel@linaro.org>, 
	Mark Rutland <mark.rutland@arm.com>
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
 header.i=@google.com header.s=20161025 header.b="V+O8aB/k";       spf=pass
 (google.com: domain of 38vtvxgwkapyqykgrmjtylclemmejc.amk@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::449 as permitted sender) smtp.mailfrom=38VtVXgwKAPYqYkgrmjtYlclemmejc.amk@flex--samitolvanen.bounces.google.com;
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

Reserve the x18 register from general allocation when SCS is enabled,
because the compiler uses the register to store the current task's
shadow stack pointer. Note that all external kernel modules must also be
compiled with -ffixed-x18 if the kernel has SCS enabled.

Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
Reviewed-by: Kees Cook <keescook@chromium.org>
Acked-by: Will Deacon <will@kernel.org>
---
 arch/arm64/Makefile | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/arm64/Makefile b/arch/arm64/Makefile
index dca1a97751ab..ab26b448faa9 100644
--- a/arch/arm64/Makefile
+++ b/arch/arm64/Makefile
@@ -65,6 +65,10 @@ stack_protector_prepare: prepare0
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
2.25.0.265.gbab2e86ba0-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200225173933.74818-6-samitolvanen%40google.com.
