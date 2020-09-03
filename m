Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBFGIYX5AKGQEQSBG3IQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x837.google.com (mail-qt1-x837.google.com [IPv6:2607:f8b0:4864:20::837])
	by mail.lfdr.de (Postfix) with ESMTPS id 501A425CC91
	for <lists+clang-built-linux@lfdr.de>; Thu,  3 Sep 2020 23:45:57 +0200 (CEST)
Received: by mail-qt1-x837.google.com with SMTP id o14sf1037264qtq.0
        for <lists+clang-built-linux@lfdr.de>; Thu, 03 Sep 2020 14:45:57 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1599169556; cv=pass;
        d=google.com; s=arc-20160816;
        b=lNbh8jn/6y61Cb1zWDB9+bX+hIXDKBwsdK21YKz13aBh91EdCdAkcajcnUeecgXk9F
         PobRFfgKdgfhORNrvxO/XxSNZ052U81lmRi52sB75Fy7TvB6/K5CPYFSVxb+HkJCkHnq
         SejcKG/gl0W1hdIf87kyN60pKpY/w0tAMEYALORJa4/rQhjMDSylnxYGQ2lU6iC75+RO
         HtY0b2fw4CeLTUgy13UtJ5gfUb0elBvSzbTHTZFebKEN+XbmbZel0t6qxl6VJ29gjIDK
         Z5MLoPPpONwnM0chuTPakoulS6sAOlaRNRcN12eP9fbvEDYlMmsg8jnDtBlx7IOam3dD
         6fow==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=9sS51D+rfawakAw0jaRV1cptbtt+hsR6OTQPSUSwf7c=;
        b=Ha1UL+o+bP5meUYjGxuhz/MFRwoKnCxtZtZVGKV0IPlvVFlV+OQXgcMuGyahwqXVHS
         qiVfdd/vvUc6OSNzZkv1XTiVE+PCLaGEWA5JAgTv6gdRtg1VeUYfAkyCIRWdor8P412+
         Pl59TDOswjGyRLlatbFVqXTRXkPiOjTevZjtMQiCLfc94RCu3ijHA3IidvmKs6iPOpRo
         o5txnh1K6kq+hsE4Gc55HEHinW2Ug77QfionfuMwwAVBnZPfk0dhx9eMIsqd3r2eIiF1
         M42xcJ1zfcZL9QOHX26KVIKJphgoTPEN1tyYc2UtVMPBq27EO70FN0oEo2ZNtDO0qQ5U
         RQlA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=EFlB8L34;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=9sS51D+rfawakAw0jaRV1cptbtt+hsR6OTQPSUSwf7c=;
        b=nFgWj253yuiqCGZkyG5AQeWdVzRlmpt6PXEdlNCvsfGmzG0tCY4MrTFXJn5WaXKWIK
         CHg4QK5Oux2NuvueRdPbcQcV4qb/ZGRYf1LgAKkGkn04V9ST3w3yyD+xgna+SW5EnLVJ
         hqw3Jyf7ReTOuJhFMA8Ef0wGZVlnCBsH0nhIi43QRmiIlEY7/z5NC+JHlArvkLiSHcfs
         R7XPZRbhxoLXSj2/Zmq1qSY17kqF/TI4AG6urNEK0mt9JgF60ldmAl7UKMCuPVOVFade
         Yhgs1Z8tjEr7DTsAe726uvOA1FdACFjTUmap9Qqzo67H3q4oe16oOd20hzlrEV3pM4C1
         QtBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=9sS51D+rfawakAw0jaRV1cptbtt+hsR6OTQPSUSwf7c=;
        b=V+UQ9+cW/2HTWllrZruKwZYwrVA7JDvWaIsB2TmYunkcAAydt/Jpg6O+4ofRzylrRe
         o9izEpXK2YbG6vRznV+kWDTDmPzo8FotFx0wmtM2jDeO3R1W1ffjQXwGFVnR9IRy+QPi
         zAWS1LFOlzBNpVx/YI8uD/fxtTbVqbQZkUjAfNgMg5GJe2YO64uv09rnLla6JYWVNbcV
         TcCguCRmlFkXetMfYw+lrhLZZL00INYiBzwoMAew4l5Zz6vz190va5R1oxVIFd3Y6QIt
         g4HK2SdetjC5iTUWlXLmZzNbi//1OpHyP/fMyCQg01qQPSng4qaPEne27jytbT764cHj
         MzEQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532UzAjjcOs1inpNmyTVPV0AwtY8HdOyZlQUkOkOJCn4IZkc/Lwy
	T9iFgudk9bwi0uhjgd2xXUg=
X-Google-Smtp-Source: ABdhPJy0X9E0O1mS1gn9DJVy5VCTKsOdOiNFra0j9PJ73dV3LYf53gsuxRr1L9Hz4lfCW5KnWUsrWA==
X-Received: by 2002:a37:9746:: with SMTP id z67mr5040127qkd.425.1599169556373;
        Thu, 03 Sep 2020 14:45:56 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aed:2fa3:: with SMTP id m32ls2636898qtd.10.gmail; Thu, 03
 Sep 2020 14:45:56 -0700 (PDT)
X-Received: by 2002:aed:20cb:: with SMTP id 69mr5789192qtb.106.1599169556022;
        Thu, 03 Sep 2020 14:45:56 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1599169556; cv=none;
        d=google.com; s=arc-20160816;
        b=NRiAvIuthcjFt8t93HFUOM42QCMzmSlfB0ExDcTkaKaXddR5cLalH9BLsscKxIPqd2
         ozHn65yw3B7A5YCU66msZ5F0UV4T4mQtG+/G1LW/MoMEL9d5OhbX49UxJQg28N5+9J8e
         O3JFp4InWrAO+3Bf7ouvjZH1GCSz0bqcIYlPdladal6aG3KvTtqSDqOFRQwg/XL+ZnCC
         SS/l7CbHqajODPtueVkoTNqGLUDeg1vQgoxn0GNTZGZ+cSDCzC3EnU78zTLVznwPN6ld
         V4G+NggVlOrWe2e1mExzaGb/LV/9sBNmulnuKdyamJgNf1tdQPx/aVyp4nWqWsZvD8t/
         nS0g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=88UAUo6RYF27MUEaYZE9R7HTuO6mGUyasahfv8EZhB8=;
        b=lDqtvUt/QMAmGx5FlsyEE+oMPqI8+fLSeUBxdwRkBRld06am+YPynJiCVsljFYM3Zb
         vHwC530DhlYbb9t+LxSBWGTQYEYF/Do2N18hjuPAsRbh3r0NZPOdYOjx4TLgPVse5NDk
         IePDyapw28sa5zvV4gEhWHX05RlubVnSlhclhIItV4F0UTL5LzuQvtPH+huU1iWhHNHH
         MsqnQ2dheE/IsrZ8Kv9u1GEE5QfEkzBY5OjU4kmsNc3ZRB/TzYtBb52lfcbezLsmmfZz
         O870FZ3WBOr0WKqJFEeL/g/TRlZxYWfB/sUz2CYoKU+CCBh9XylC7A8Bu6VOM0XofdFO
         RzLg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=EFlB8L34;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pg1-x544.google.com (mail-pg1-x544.google.com. [2607:f8b0:4864:20::544])
        by gmr-mx.google.com with ESMTPS id a189si300075qke.3.2020.09.03.14.45.56
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 03 Sep 2020 14:45:56 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::544 as permitted sender) client-ip=2607:f8b0:4864:20::544;
Received: by mail-pg1-x544.google.com with SMTP id w186so3164073pgb.8
        for <clang-built-linux@googlegroups.com>; Thu, 03 Sep 2020 14:45:55 -0700 (PDT)
X-Received: by 2002:a17:902:7b83:: with SMTP id w3mr6022860pll.28.1599169555661;
        Thu, 03 Sep 2020 14:45:55 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id t20sm4165589pgj.27.2020.09.03.14.45.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 03 Sep 2020 14:45:54 -0700 (PDT)
Date: Thu, 3 Sep 2020 14:45:54 -0700
From: Kees Cook <keescook@chromium.org>
To: Sami Tolvanen <samitolvanen@google.com>
Cc: Masahiro Yamada <masahiroy@kernel.org>, Will Deacon <will@kernel.org>,
	Peter Zijlstra <peterz@infradead.org>,
	Steven Rostedt <rostedt@goodmis.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	"Paul E. McKenney" <paulmck@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux@googlegroups.com,
	kernel-hardening@lists.openwall.com, linux-arch@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, linux-kbuild@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org,
	x86@kernel.org, Arvind Sankar <nivedita@alum.mit.edu>
Subject: Re: [PATCH v2 02/28] x86/asm: Replace __force_order with memory
 clobber
Message-ID: <202009031445.807B55E@keescook>
References: <20200624203200.78870-1-samitolvanen@google.com>
 <20200903203053.3411268-1-samitolvanen@google.com>
 <20200903203053.3411268-3-samitolvanen@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200903203053.3411268-3-samitolvanen@google.com>
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=EFlB8L34;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::544
 as permitted sender) smtp.mailfrom=keescook@chromium.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=chromium.org
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

On Thu, Sep 03, 2020 at 01:30:27PM -0700, Sami Tolvanen wrote:
> From: Arvind Sankar <nivedita@alum.mit.edu>
> 
> The CRn accessor functions use __force_order as a dummy operand to
> prevent the compiler from reordering CRn reads/writes with respect to
> each other.
> 
> The fact that the asm is volatile should be enough to prevent this:
> volatile asm statements should be executed in program order. However GCC
> 4.9.x and 5.x have a bug that might result in reordering. This was fixed
> in 8.1, 7.3 and 6.5. Versions prior to these, including 5.x and 4.9.x,
> may reorder volatile asm statements with respect to each other.
> 
> There are some issues with __force_order as implemented:
> - It is used only as an input operand for the write functions, and hence
>   doesn't do anything additional to prevent reordering writes.
> - It allows memory accesses to be cached/reordered across write
>   functions, but CRn writes affect the semantics of memory accesses, so
>   this could be dangerous.
> - __force_order is not actually defined in the kernel proper, but the
>   LLVM toolchain can in some cases require a definition: LLVM (as well
>   as GCC 4.9) requires it for PIE code, which is why the compressed
>   kernel has a definition, but also the clang integrated assembler may
>   consider the address of __force_order to be significant, resulting in
>   a reference that requires a definition.
> 
> Fix this by:
> - Using a memory clobber for the write functions to additionally prevent
>   caching/reordering memory accesses across CRn writes.
> - Using a dummy input operand with an arbitrary constant address for the
>   read functions, instead of a global variable. This will prevent reads
>   from being reordered across writes, while allowing memory loads to be
>   cached/reordered across CRn reads, which should be safe.
> 
> Signed-off-by: Arvind Sankar <nivedita@alum.mit.edu>

In the primary thread for this patch I sent a Reviewed tag, but for good
measure, here it is again:

Reviewed-by: Kees Cook <keescook@chromium.org>

-- 
Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202009031445.807B55E%40keescook.
