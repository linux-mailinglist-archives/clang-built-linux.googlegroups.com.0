Return-Path: <clang-built-linux+bncBC2ORX645YPRBEXLSP6AKGQEFCJ5XUY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc3f.google.com (mail-oo1-xc3f.google.com [IPv6:2607:f8b0:4864:20::c3f])
	by mail.lfdr.de (Postfix) with ESMTPS id 4900D28C5C8
	for <lists+clang-built-linux@lfdr.de>; Tue, 13 Oct 2020 02:32:19 +0200 (CEST)
Received: by mail-oo1-xc3f.google.com with SMTP id p6sf7740294ooo.0
        for <lists+clang-built-linux@lfdr.de>; Mon, 12 Oct 2020 17:32:19 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1602549138; cv=pass;
        d=google.com; s=arc-20160816;
        b=JRCeO2xrWK2lSitxZkHi7LnMZLGMgH6jBdntqZbzs32ErDJQUYuS1K6r+Ds3xDATyE
         ziXWLYkfmBEm85riOuKoonILowdoHC53ATBA3960Uv1/UlYAxuS8ZR7L+tSoArYcLjS4
         oEfZY8+Xksh8YuMg2pzOqQAB4cBergSilp/ZCqUQulMvXRg0nrxUE2auMWyDxqBSItji
         uuhh7KuOMLF1li2EcjS+xoq2RG6+AxDvONU8iDF7r7FSQjJARVEIxn/VDP65zUV/u/k/
         eirpXx4LISqo+L38ALzdVB6KjZkb7xEOhmjaUIl/hrJIwf1DfbSjDXppVc0qZFXm6cgX
         y+tw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:sender
         :dkim-signature;
        bh=NiW/ED3aSYBLLk4Y6VRHRXUsn1HRBMgqU2ibyTZ6rao=;
        b=vwExt3uClPA4x2/erMwJqNbsCq25ArIS6h4wrXcg/WhPUlE6lZHtf69EjUaeXvwqRo
         2sIW5n3/0YmGnKyMwvfWqxEciJbvozkRyNP6A3RuC90Jyrz6c5b4lJ76uLabCLZR2/Pc
         U+FROThUBE3OA6tjdt62rQ2Xb1Av8P2tGBUXoJqM3BLf2jUBgbfFSG0USOQjj3nKb+1r
         4rfBbe5LRZ15BJMe3uMxz1DBdjNKPmNylengQZibWAAvU5BgBj9Vgs1p0dsoRd7WiVbv
         uV7wjuN/Xdx47pQeNptHRNpkmFixe1UYaMS1lCuicYgag86lZR6GvtllrC4ziJHxumjZ
         KZYA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=IdXB04m+;
       spf=pass (google.com: domain of 3kfwexwwkajiew84fa7hw9092aa270.ya8@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::44a as permitted sender) smtp.mailfrom=3kfWEXwwKAJIEw84FA7Hw9092AA270.yA8@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:in-reply-to:message-id:mime-version:references:subject
         :from:to:cc:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=NiW/ED3aSYBLLk4Y6VRHRXUsn1HRBMgqU2ibyTZ6rao=;
        b=IEDvMiGcpe647XrDWHCGMMDgqKhywdqLnP2D/h7thKkXTjoDYin1nQf5GeJZU+Mhl/
         UDHipRLY7lROMj8Zx04W1S47t72hliC/OkAvKD/iDp+FsiVqbnnpy90scSmU2py5OtEp
         WFONsKdW43xFLBRbRXztPdMzfUpsJSH0a06gr3GLva+yXLMh11/VmFGL7uPBo9LgtAyD
         GEFYRPlGAbqH7OljOPdzTX2ounux4rh1xpQgKoeXlIxyfWQU4R10UABXYkcHKlzcaanN
         TVo62RdBcXlS32ChUE1T35U1sUl7WTfr0+CHEiXKjmjwk9NeOAPd+s47FgumCdQ75Vs5
         9khA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=NiW/ED3aSYBLLk4Y6VRHRXUsn1HRBMgqU2ibyTZ6rao=;
        b=Tfyqktk0VAbfihKVGQYWPPlLx8kSQ3Rw0PAELzEA4Qb/FigyCsPjCHfgJ3PSXojIj1
         gI6uYou40ij5/RpXVacQzVylTVcaBWNckPfZXe83Y1TREu6eZDb8uHDwYbWKPPZ6mCED
         3jOuPt34dChsQ0mXjAl2VXxClj5Rp94eH5j3dqOdiIIZpCXAaOcvgPUW96rxd+kljjXc
         C0gZIE5/htzT9Wg94fpzwfGd8k38OzDne86y3Im58F2XIgbf1Sh5+CZVM/aQwx0mwk/o
         hPCz5xux9y7Hl5UeroAQ+XwkpCtHRo/ELtXFstwvnwQv63jb6pKOrfX2Zkfgod33eWTu
         g8XQ==
X-Gm-Message-State: AOAM530zLOHNaGhbzP/BkxryTT7PGuPPHl/A5JNnvfmBnpvFohb+gAX8
	TXbTLsIdKxCdjHQfDHkm7bk=
X-Google-Smtp-Source: ABdhPJxQf7Vxaq2jzZlxXExbcakGUnurnUF71cXNXTKiJA7Y2I6/lCaYSCPf5nakKUlRdpL4OXbJYA==
X-Received: by 2002:aca:5a44:: with SMTP id o65mr7718062oib.17.1602549138264;
        Mon, 12 Oct 2020 17:32:18 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:198c:: with SMTP id k12ls686700otk.3.gmail; Mon, 12 Oct
 2020 17:32:17 -0700 (PDT)
X-Received: by 2002:a05:6830:1347:: with SMTP id r7mr16597617otq.172.1602549137918;
        Mon, 12 Oct 2020 17:32:17 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1602549137; cv=none;
        d=google.com; s=arc-20160816;
        b=mFsgq1jZYNvIH80YzTdHSyAKYSTb+qBFU5JAnV+RxQ1Ux6oBB36cMCMyJcgQWwZJZi
         8wHe6YU2jvuF18YYIVl9nIVz8PV41Iy+OS5v1nUn7sfQLPKEuRxP8CvHWrNun4Ug62gV
         0J+TO260NnnoeWSXhroYwp9SBszhuDX9fsK9HRV61Rl5mHtOk7tlZ8wpMCbZHMp6pxwU
         GwNAjC8bC68HkXoAVmjNmFEteh59on4SVF8oheHCcLUO/Ve6fFyhxXMdlHoAoOM6CFK1
         zNq1ZyNlnPWWP0JWH0Z42G2kCeyQI7AKwAsDLEJf1nfAWRdUFL4T32pQwbHpAa2CWRjk
         ed7g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:sender:dkim-signature;
        bh=xL7tn5bk8rd7QhzERnW5XDCxrWNQLuaGbP7lLdALs6Y=;
        b=iITYaGXL6Qh8pO/J23zb8hpSAUl1NOZ8qzu7VFfZ2hg9/rVkdXSlccULWvRm0W2PNQ
         +RljQAI6FHZKMtqtrXSeODpn/zJvLEnXyaR3YJG3MEwFXtlDDXnZaDIWciyVB7PAZw1L
         QiVWF19S9YWqeJg9DTjy9p1kE8eCUZx8+aDTIs6M4UhjlnUafxooQHTXGULJDkdV9xsK
         rYLbEiAeJOTdB+daslSTvsrvkrdh8LABrG/GQIhL3Bg/F+ATC4B8ezqx7Tc8vuKxNUG9
         UeKjvCfENFQe8yeWy05uHSXePmxhT/EsMfe9NXglcu0CXTDt80wcD/+q2pqxW5kH8l3O
         zMTA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=IdXB04m+;
       spf=pass (google.com: domain of 3kfwexwwkajiew84fa7hw9092aa270.ya8@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::44a as permitted sender) smtp.mailfrom=3kfWEXwwKAJIEw84FA7Hw9092AA270.yA8@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x44a.google.com (mail-pf1-x44a.google.com. [2607:f8b0:4864:20::44a])
        by gmr-mx.google.com with ESMTPS id u15si1787233oth.1.2020.10.12.17.32.17
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 12 Oct 2020 17:32:17 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3kfwexwwkajiew84fa7hw9092aa270.ya8@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::44a as permitted sender) client-ip=2607:f8b0:4864:20::44a;
Received: by mail-pf1-x44a.google.com with SMTP id f15so3731767pfj.19
        for <clang-built-linux@googlegroups.com>; Mon, 12 Oct 2020 17:32:17 -0700 (PDT)
Sender: "samitolvanen via sendgmr" <samitolvanen@samitolvanen1.mtv.corp.google.com>
X-Received: from samitolvanen1.mtv.corp.google.com ([2620:15c:201:2:f693:9fff:fef4:1b6d])
 (user=samitolvanen job=sendgmr) by 2002:aa7:9a87:0:b029:156:5806:b478 with
 SMTP id w7-20020aa79a870000b02901565806b478mr3079925pfi.8.1602549137181; Mon,
 12 Oct 2020 17:32:17 -0700 (PDT)
Date: Mon, 12 Oct 2020 17:31:44 -0700
In-Reply-To: <20201013003203.4168817-1-samitolvanen@google.com>
Message-Id: <20201013003203.4168817-7-samitolvanen@google.com>
Mime-Version: 1.0
References: <20201013003203.4168817-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.28.0.1011.ga647a8990f-goog
Subject: [PATCH v6 06/25] x86, build: use objtool mcount
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Masahiro Yamada <masahiroy@kernel.org>, Steven Rostedt <rostedt@goodmis.org>
Cc: Will Deacon <will@kernel.org>, Peter Zijlstra <peterz@infradead.org>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, "Paul E. McKenney" <paulmck@kernel.org>, 
	Kees Cook <keescook@chromium.org>, Nick Desaulniers <ndesaulniers@google.com>, 
	clang-built-linux@googlegroups.com, kernel-hardening@lists.openwall.com, 
	linux-arch@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-kbuild@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-pci@vger.kernel.org, x86@kernel.org, 
	Sami Tolvanen <samitolvanen@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: samitolvanen@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=IdXB04m+;       spf=pass
 (google.com: domain of 3kfwexwwkajiew84fa7hw9092aa270.ya8@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::44a as permitted sender) smtp.mailfrom=3kfWEXwwKAJIEw84FA7Hw9092AA270.yA8@flex--samitolvanen.bounces.google.com;
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201013003203.4168817-7-samitolvanen%40google.com.
