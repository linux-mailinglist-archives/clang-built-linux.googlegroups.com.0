Return-Path: <clang-built-linux+bncBC2ORX645YPRBOMYRDXAKGQEK75WVQY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53f.google.com (mail-pg1-x53f.google.com [IPv6:2607:f8b0:4864:20::53f])
	by mail.lfdr.de (Postfix) with ESMTPS id 136CBF0A95
	for <lists+clang-built-linux@lfdr.de>; Wed,  6 Nov 2019 00:56:43 +0100 (CET)
Received: by mail-pg1-x53f.google.com with SMTP id 21sf5966814pgt.6
        for <lists+clang-built-linux@lfdr.de>; Tue, 05 Nov 2019 15:56:42 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1572998201; cv=pass;
        d=google.com; s=arc-20160816;
        b=TdmKmLFogwYug98GhQI2lWwfhAlADCXuP7GZYI3Y9SqSJ7v9On/+vXBK61HGnctnrd
         No+zr65RH2zFWOzO/Cr+nnD2yThguNyFIC49WONiSgF5OMK+NXDn7T9UJ1cO7L5ARme6
         luF/lxDdEbWA8bNr3KyLr9IWY8zxa5SKXseymsaCz7i+f7VfU2sBdFkejH9IKuRmSToU
         JeY3u61FGE2iOaQudJO2usQpABoK/CZbJTDhiN6TXz6id2//wh/oaeBaELjsalP7r/rD
         fxEQC+DxIAfzsOgNuwhuAu93bpdnpJJWKDThZUpADASC2IiH4P3n5oK0wYWM17aq2MkG
         abXg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=EwnkPqov7BjYzTugi697u1s2xqDxVUhMEY3sShBRhmY=;
        b=UdvZVamAAv35hHDiD/sXBc+zz77z7BXHyDl7rtKB5NbkNvq76IFWE0blfv6ed0NFeO
         hAkeJmUHPZUp9bTfJIYBTrC33L6PZNUJSm42+1Y7iLHRmMSZRuYo7BCl8jUaFejR1OxN
         CmnyqWHVQVDMAmzxHwxi/NmgfSgUVSPX7Wjrj/ToeR0+ff2D6Mx+fN978x9jweVsKrxX
         Uac8TuAH22N+L7ZO0Cdly/rb1IX8rsNw2fnVjM3Etlg3KXxKO59pYQcLODbSKBhIukGc
         LRx7ZMQxL2jxKmGrvaM9P2uf1ZxyONg9EJNNPTiIjmyK1m8dlDLJUZ/506/6g8MVtoku
         RT1g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="WX/V/VTf";
       spf=pass (google.com: domain of 3oazcxqwkae07p1x830ap2t2v33v0t.r31@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::649 as permitted sender) smtp.mailfrom=3OAzCXQwKAE07p1x830Ap2t2v33v0t.r31@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=EwnkPqov7BjYzTugi697u1s2xqDxVUhMEY3sShBRhmY=;
        b=XKt00/4Iw7s/8Y5QZio4WuLXrjywmbeJflLAs8jNwVx32ga1AeampfWahU+9wD0lJ/
         Psy9VQ1nIKagQRZ6hvm9t69ivkUAWirFkzkXQ4J1fu887FezrMHYKk4DhBMYDMXumftm
         BMJZgX4IIQehea+QWDASmKnwlxU1spvAvPk5WacLIQRq2bRAHZh7ITwQz7T1y7rapx76
         m9jeRToNw2+QGw+9caBCS6iN0MhQjRTvmTnVGueX/0C8N0Sqkikv9ko8OJPiyEV4oGKV
         DSig4cZR4UU5qsqZFTVuf9VSBwYk0xKstweNggEww/9h0SOusokgqRjS35mkcKJZq+5F
         V47g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=EwnkPqov7BjYzTugi697u1s2xqDxVUhMEY3sShBRhmY=;
        b=N/QmHXxNLai+CZQB4YgypCPFYk8b4il0Q/4FriY5bAUfXaclOzdNI1Bp6YY+7TJfro
         cqgSSHIOW9ITV5cGlYbCtvIQOatgc7I0TnOnWWgwDWSxEZK68lrGMhv5ajJXRzyV3MVO
         AelEDZ0T06HV0CPJ8ssodw3xXOQzb4pF7CUNW00jTQeE0lIzIkN5dXUNC6FEhvfW7NcJ
         bQjVi7QW+CDovJrnXP+i6DDJis/BxCyEaUhILALZpmTvDo9pdwS3H10yq+MgxcQ/m0gx
         53IOFPgYmbKPIw/xM+Dw5Bn4ByIXJi35BFSuVg/9ROaukPpoM7J4+usvAjOqGxpbV/43
         60EQ==
X-Gm-Message-State: APjAAAUJxOvx0mkL0yEKa+NCDsP9LGTZUafHufpKvYbo/HxQX5QcOXqB
	TcCnKanLtnAuPNeSjs2dwpo=
X-Google-Smtp-Source: APXvYqxw8OBK/20gGaeNCIGPmyVO7O73Ya08xa3hQZQMElz1xO7beVJs4cDY23GMlAbTx6z/15LB7A==
X-Received: by 2002:a17:90a:ba89:: with SMTP id t9mr2279846pjr.29.1572998201432;
        Tue, 05 Nov 2019 15:56:41 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:a503:: with SMTP id v3ls63325pfm.7.gmail; Tue, 05 Nov
 2019 15:56:41 -0800 (PST)
X-Received: by 2002:a65:60c6:: with SMTP id r6mr16433953pgv.419.1572998200968;
        Tue, 05 Nov 2019 15:56:40 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1572998200; cv=none;
        d=google.com; s=arc-20160816;
        b=q38z4mbeD2Vl5hWaxnWDqHWBv1sHy6PF7u8+tFZi79fSgh6Y7NseWlOXcIlEbHdvKO
         gn8Y1th1yrHI8WLHZ4DUug0Zu2xmXgQwAM3RLYx8Gst/i+Bq+qlfdo9m5lcL834RKxyH
         LqtNDPbN3MR/nF4LXPpnZWAnn34yswbI5zW+YlEa20U/NaW7K18aWOFr2F3bmwwqnMTO
         8ZiMGqMK6nybgeX4T5Z5oIRPUvQ7WSL7O8bx1xyUigoMoDyjR97MI0SkNgYNngnupbvR
         gfTMwBCeXrxyWhtD8rvG/za8Fh8a4X3WQLwlDTbbwYl20Il8EWhCx0oUfqCl5BN8roFg
         vlgw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=xr3X122JfUZTOJ9HNPiJpW+Iyor6r4hGY/b4sjNxJZA=;
        b=Z8Lkt+Cp9zB3fcG4eY0BZHV0o9/4BvuOqTKHYv5QFRCguNc0rWIe3pOpnkwmjM3+pH
         jNkvI6Rr1emC9e1NPOAxJ3FcxTsItj0VJWmribLFuDb1TBuwQImfv3L+eX+kJ5zF2Uif
         EGT9FImq17DdIHJtuWjIGLy7zMhfZaYwSYud7iuiavc8NFFW3pfgn3Xh2BCGmV6H0kZy
         ODpTH3IIslVY38/Lno0o4N09b8bYpsqsW9Mg/HFKzl0MhEHbWzyuIF4P4+CYQVB4g2oU
         zDcNC7wphc6UC/L3CuLi1yJEHoxZ3Q+sznsdhRLhwcyiz55k1ROze+5gW7Pd5khdg6GW
         dlFQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="WX/V/VTf";
       spf=pass (google.com: domain of 3oazcxqwkae07p1x830ap2t2v33v0t.r31@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::649 as permitted sender) smtp.mailfrom=3OAzCXQwKAE07p1x830Ap2t2v33v0t.r31@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x649.google.com (mail-pl1-x649.google.com. [2607:f8b0:4864:20::649])
        by gmr-mx.google.com with ESMTPS id v18si27791pjn.1.2019.11.05.15.56.40
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 05 Nov 2019 15:56:40 -0800 (PST)
Received-SPF: pass (google.com: domain of 3oazcxqwkae07p1x830ap2t2v33v0t.r31@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::649 as permitted sender) client-ip=2607:f8b0:4864:20::649;
Received: by mail-pl1-x649.google.com with SMTP id h11so13886700plt.11
        for <clang-built-linux@googlegroups.com>; Tue, 05 Nov 2019 15:56:40 -0800 (PST)
X-Received: by 2002:a65:5683:: with SMTP id v3mr19280245pgs.190.1572998200132;
 Tue, 05 Nov 2019 15:56:40 -0800 (PST)
Date: Tue,  5 Nov 2019 15:56:03 -0800
In-Reply-To: <20191105235608.107702-1-samitolvanen@google.com>
Message-Id: <20191105235608.107702-10-samitolvanen@google.com>
Mime-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com> <20191105235608.107702-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.24.0.rc1.363.gb1bccd3e3d-goog
Subject: [PATCH v5 09/14] arm64: reserve x18 from general allocation with SCS
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Will Deacon <will@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>, 
	Steven Rostedt <rostedt@goodmis.org>, Masami Hiramatsu <mhiramat@kernel.org>, 
	Ard Biesheuvel <ard.biesheuvel@linaro.org>
Cc: Dave Martin <Dave.Martin@arm.com>, Kees Cook <keescook@chromium.org>, 
	Laura Abbott <labbott@redhat.com>, Mark Rutland <mark.rutland@arm.com>, Marc Zyngier <maz@kernel.org>, 
	Nick Desaulniers <ndesaulniers@google.com>, Jann Horn <jannh@google.com>, 
	Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>, 
	Masahiro Yamada <yamada.masahiro@socionext.com>, clang-built-linux@googlegroups.com, 
	kernel-hardening@lists.openwall.com, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org, Sami Tolvanen <samitolvanen@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: samitolvanen@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b="WX/V/VTf";       spf=pass
 (google.com: domain of 3oazcxqwkae07p1x830ap2t2v33v0t.r31@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::649 as permitted sender) smtp.mailfrom=3OAzCXQwKAE07p1x830Ap2t2v33v0t.r31@flex--samitolvanen.bounces.google.com;
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
2.24.0.rc1.363.gb1bccd3e3d-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191105235608.107702-10-samitolvanen%40google.com.
