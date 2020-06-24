Return-Path: <clang-built-linux+bncBC2ORX645YPRBFXRZ33QKGQEQWIAGCA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x640.google.com (mail-pl1-x640.google.com [IPv6:2607:f8b0:4864:20::640])
	by mail.lfdr.de (Postfix) with ESMTPS id D21D3207D17
	for <lists+clang-built-linux@lfdr.de>; Wed, 24 Jun 2020 22:33:27 +0200 (CEST)
Received: by mail-pl1-x640.google.com with SMTP id v8sf2295525plo.1
        for <lists+clang-built-linux@lfdr.de>; Wed, 24 Jun 2020 13:33:27 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1593030806; cv=pass;
        d=google.com; s=arc-20160816;
        b=f32u0muuo415bOeQH59lSpcL+TxiJ0rlTAGWeBMSbflENC2E88akyDOZ1w2RZvw4W+
         1o8X7ej//bv+1HOhefybUzIW1K0sjrY7/TrCJD2wgVBRllMY6PY81d0+I59KcoNjMqvA
         CYDNwuPFBwRIQpvpMNs38XGorChnsmqvy/EduVgqKH0sSPXmXe9/c9sIvH8oYBUtuayb
         KpigWJNmzN9CT3hNscGzbNC9cy3oqOpyGS3EEQ2LJ+NszMZRGRcKusFVTu6sx5JU32Ou
         w03aXa2ET1ethKeXi9vHvGxX1OLXJuhP9Z0ylmNGGyw5FR3oYervw1FyJpkFa09Ai6d1
         liAQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=BbCopvkBdBKQVhiD71Y5aRHR7cR/9jxyfzT6weHmNig=;
        b=dKX8Yc2YbsuxFPAT5OIIjhIIv/taDm3MO6ZJB3zSmVuOjG2v9Zjx5+ugSLCQCc/iKp
         WH/wMsbiimMT2zLyNOld4MWw4AenENttWeMuytu07/5kg6ky0HFdh0DajM/5qY6UL3vD
         /b4KV+l+66YJujrrxt2DAnztGE63OEWvfu1y843ulr4afmjhDOmBLn8sBjmYQiz1pVJB
         2Kci+rGu8SmnXROEot+BDy/ftkeuiC4w0jUOa6iA6YWwdBPKU5vrAp3TucA0EMa0YIEl
         FES3/jDItZ5yKXypmLPIrrMhh7BBML+xOg3Zp+O4v4KrJC7fytEU9jBNbYgw+Dz0Gw8o
         +d3A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=D5jMBEz7;
       spf=pass (google.com: domain of 3lbjzxgwkanigya6hc9jyb2b4cc492.0ca@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::849 as permitted sender) smtp.mailfrom=3lbjzXgwKANIGyA6HC9JyB2B4CC492.0CA@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=BbCopvkBdBKQVhiD71Y5aRHR7cR/9jxyfzT6weHmNig=;
        b=bG4gRlzERxLiURXM7+y0BNkgOyJmRTMvHAbhf2Z87pOqPbI+0WAeO6/ENLvgpa+wEe
         OAwz5H5j+5JTDRJb9zwd89q6hkc24mwwI6kRDAEBh7muR2cl5BC9aSxr2CNbmeeEosIf
         l0yR4gcoe1/hBy56I2OTY+u5ZKiRWCPXDwNCW7K0lpH+TIek5esloJfpQSA1vMzrfO6R
         Q09XtEfNqy3crg0JUO0Yp2HqJVJeRBcRYT8aOeCLRW7LJvvY524uY9N175XlNXk5/J5I
         yHvUtWKUcJUjctMJjeSKRaIw/MIGI7D/p6BIYLsVDVx8f6Dhbqm4GK/scFNlk4/QzCkW
         XxSQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=BbCopvkBdBKQVhiD71Y5aRHR7cR/9jxyfzT6weHmNig=;
        b=fk4SrpUcvW0WS+QICQuzSpQJ1cIsiNbPiIy9QpyDXDnZEdsZMJRkNatn33BtpTzHYy
         3IWq7fuAQ76IpVVFcBPqEo1pYpGh+gyXIiD17mYKwY5s2bijBbp8fuDvZk7gZumO7Ab3
         fT5Dcv0QCYXaCHV4dsame7Ox8KXjJq8Mxdzos36dlHeY1leK2vR3h8KrJ5vpDHrx/adk
         Vqza2iBhc6yj+mVEnM3bDSOTKs0L88A/U4Sh573yVc0OTDgTiAsNFk+rguLPUK3hANLx
         E0BSzDT+tzpafygBhTXJ0QcbfTmB/AJjWCEqgmSmLmvUj1l0zbVEX0FZ/Ovhi+wMSnQJ
         HDaw==
X-Gm-Message-State: AOAM530CfAzTPEy7rpsWkOyVL+5EI4o3Mo8L6pSPFWeWNbJH/9aFFfZE
	hmxZNcIs+htcTvdzTAll1oo=
X-Google-Smtp-Source: ABdhPJxGf3ABsPnfFFDu+qO4sgXUi2qUJ5adEAQEhTycsWffs1zCh9QADFmwCsiBrpGt4wKBsIRgdQ==
X-Received: by 2002:a62:ce83:: with SMTP id y125mr3894403pfg.181.1593030806581;
        Wed, 24 Jun 2020 13:33:26 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:e312:: with SMTP id g18ls1118400pfh.9.gmail; Wed, 24 Jun
 2020 13:33:26 -0700 (PDT)
X-Received: by 2002:a65:6101:: with SMTP id z1mr24101425pgu.317.1593030806067;
        Wed, 24 Jun 2020 13:33:26 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1593030806; cv=none;
        d=google.com; s=arc-20160816;
        b=bWMBnh4ljMRnWch37i5PwpV1MFEyG79138sKjqCfYJojdt8lwAmi2ZQNjPMW/15zp/
         LGLpFlPSDgXDWappMuLhGjcW2uypiajHGGBrv9Jtodo/OE0R1Gpm/UpuUq/shU6z+iZ9
         w/uGny/+f1+QlDZ8ZqH9U54LSCWxVfexNv5SUmuRwzJP/lSKJoNRTf+SO441QeUOoLOv
         AVuNGqLZiR6dSJBN1lL+pHl7gFY5vtGhRvWfJQW29/bYayX+FgXxw0vgGE013kSjXIdf
         J8/vgcpM9J9Q779IQWyeRRCkxgYjkmFv7gbeIE/AmrR/G2VOkmE/K/hkqd5wqXxuZw3x
         qHCQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=wwQ0FnciQOJFFrw9pZwNR1174M1Ii6KWK+Cwx1DZR0E=;
        b=dQeMmf9GoI0gxYA140ho3GTwn8CtNy9hp+OaHH58rn8YF7bDn7EE5D5cXnkvE17eB/
         7SLWSv+8EEN3VifDPtTSq6h2A185ulxMddfUKbCAKolv4GwMbf7uo+R1Gy97nJo0c/xY
         N6M3XBOIZ5DrSX4Itlfh3IhAZVW3WtW6MRGEHf++zr5atrigILHYYk8U4rXvJScD/NRD
         yyPVwZpgOAQ0WIQsEWQQeXHYa+v0lK6cYAJ9b63VDJVZIAnz1Hms0G9VXvKg1Z3rDI+A
         2jbGLC0XcAHG+8EO84bXFuwQCGpSXy+bBzDwdaNY8BWJlB9fEiiaLtZRbHrdpkB5xrw2
         76Yg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=D5jMBEz7;
       spf=pass (google.com: domain of 3lbjzxgwkanigya6hc9jyb2b4cc492.0ca@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::849 as permitted sender) smtp.mailfrom=3lbjzXgwKANIGyA6HC9JyB2B4CC492.0CA@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-qt1-x849.google.com (mail-qt1-x849.google.com. [2607:f8b0:4864:20::849])
        by gmr-mx.google.com with ESMTPS id w13si345552pll.2.2020.06.24.13.33.26
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 24 Jun 2020 13:33:26 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3lbjzxgwkanigya6hc9jyb2b4cc492.0ca@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::849 as permitted sender) client-ip=2607:f8b0:4864:20::849;
Received: by mail-qt1-x849.google.com with SMTP id u48so2419642qth.17
        for <clang-built-linux@googlegroups.com>; Wed, 24 Jun 2020 13:33:26 -0700 (PDT)
X-Received: by 2002:ad4:4cc1:: with SMTP id i1mr3207160qvz.249.1593030805093;
 Wed, 24 Jun 2020 13:33:25 -0700 (PDT)
Date: Wed, 24 Jun 2020 13:31:53 -0700
In-Reply-To: <20200624203200.78870-1-samitolvanen@google.com>
Message-Id: <20200624203200.78870-16-samitolvanen@google.com>
Mime-Version: 1.0
References: <20200624203200.78870-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.27.0.212.ge8ba1cc988-goog
Subject: [PATCH 15/22] drivers/misc/lkdtm: disable LTO for rodata.o
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Masahiro Yamada <masahiroy@kernel.org>, Will Deacon <will@kernel.org>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, "Paul E. McKenney" <paulmck@kernel.org>, 
	Kees Cook <keescook@chromium.org>, Nick Desaulniers <ndesaulniers@google.com>, 
	clang-built-linux@googlegroups.com, kernel-hardening@lists.openwall.com, 
	linux-arch@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-kbuild@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-pci@vger.kernel.org, x86@kernel.org, 
	Sami Tolvanen <samitolvanen@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: samitolvanen@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=D5jMBEz7;       spf=pass
 (google.com: domain of 3lbjzxgwkanigya6hc9jyb2b4cc492.0ca@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::849 as permitted sender) smtp.mailfrom=3lbjzXgwKANIGyA6HC9JyB2B4CC492.0CA@flex--samitolvanen.bounces.google.com;
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

Disable LTO for rodata.o to allow objcopy to be used to
manipulate sections.

Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
Acked-by: Kees Cook <keescook@chromium.org>
---
 drivers/misc/lkdtm/Makefile | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/misc/lkdtm/Makefile b/drivers/misc/lkdtm/Makefile
index c70b3822013f..dd4c936d4d73 100644
--- a/drivers/misc/lkdtm/Makefile
+++ b/drivers/misc/lkdtm/Makefile
@@ -13,6 +13,7 @@ lkdtm-$(CONFIG_LKDTM)		+= cfi.o
 
 KASAN_SANITIZE_stackleak.o	:= n
 KCOV_INSTRUMENT_rodata.o	:= n
+CFLAGS_REMOVE_rodata.o		+= $(CC_FLAGS_LTO)
 
 OBJCOPYFLAGS :=
 OBJCOPYFLAGS_rodata_objcopy.o	:= \
-- 
2.27.0.212.ge8ba1cc988-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200624203200.78870-16-samitolvanen%40google.com.
