Return-Path: <clang-built-linux+bncBCS7XUWOUULBBAN66SBAMGQEZSNGIRA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53d.google.com (mail-pg1-x53d.google.com [IPv6:2607:f8b0:4864:20::53d])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D2E0349CF5
	for <lists+clang-built-linux@lfdr.de>; Fri, 26 Mar 2021 00:38:43 +0100 (CET)
Received: by mail-pg1-x53d.google.com with SMTP id j4sf5119585pgs.18
        for <lists+clang-built-linux@lfdr.de>; Thu, 25 Mar 2021 16:38:43 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1616715522; cv=pass;
        d=google.com; s=arc-20160816;
        b=qaHhboawcLGpFbgcqSY0mR4juKwcphvx+ek+zhuSBRHTYC1n2D2KofRjmTpKEIQp8x
         hTfw5d/UWt2Fcx3yPh3840onn64f/U+UBP3oFOwLdyeYB3RPrMG2DYWuylLpqOE/y4ne
         LKseotmSy/gV8HOKfNDXJUSBH6YAHAWUU3K3P8/qDcWbEptLNLdmPoHi0WNwIkg3Rgbl
         2JhIci1yPtd+aGeRrjBUUvy9WgrxTfIYKAbe2uM/zFT84KN5dA4HaiQOgrIab3dLAxH7
         mv6TL6cuw+T5lHQwmAF5L4scAAR3Yd8yV2G2evWqngtPAOv6g7T6BHvYXqYCHmgdEKum
         5MNA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=pPeqElTKvnIYlW+8yeAjXK4qMGBohxVFEwBS2zEcfhc=;
        b=rzwHZSshc1FrqHs90//Vb0U/Q9JwbdvuQg4nMFQBG9OZ75BHYmuYacsKpn44ESEKvA
         KFAaAWSoDJje4QpiNSJ7EE09op+bLpf5/FCyiZsAjOvjIWwmcVQHedR6a8fT2SsXNJqb
         HNvnExnSksjAU7A8o5Dsjt/TmAG1MS6thqXWro/VU4cPuIP4v37eSkWJLq4ttgCeRN0m
         TkBGAQN1DeZFrwBcdqnc/U22SlBjH/f3YNX56ac97xvsQXGz6+MUFhmjxJIAgxoa/s0H
         rRPOFrqXzXpogBxOK58RQ6f7ZJioyYIhY8RzVhMD2IY3bJpHPK0jwYYjlRpOzYLmiGfc
         vg1w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=YBLkudSe;
       spf=pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::430 as permitted sender) smtp.mailfrom=maskray@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=pPeqElTKvnIYlW+8yeAjXK4qMGBohxVFEwBS2zEcfhc=;
        b=YRGMhNom9EuSfIy4HaAwQ31934w5tjYJMkkcr4qFp/slbLsocxX8kAyQ8TT25s7wci
         2InN5FSdnelk799fJVvuNV3jowsJMpBOYZM3aXnt0qUmovWYh3pmVrRbcIRvQWAjXwZz
         Cap8UGoZyaZyqsS4XlH6AlxE7Xh04xRDgG2ot7wGgeEHgmmOYBc+T52Q9tpC5Xk/V2XT
         9/IqVo75p1zqC+CSCinu6lIudGP57hgDeETv03S2G2V8ybCruH2R1J77V9t+oyNInYau
         1iwk9C2nE4PgdptkTnjjcK7Cj7bnXb+y/pGismATA7nMcsuziaMtAzmpi9B3M8JW1em+
         uDVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=pPeqElTKvnIYlW+8yeAjXK4qMGBohxVFEwBS2zEcfhc=;
        b=dFO7hkKDkD/Y+HYQB+uWgPyzpL+zYogVMivbq1mSFneoB1v7JB6q3mgefFqMyMX9Ly
         ajr0DjKya7aLLa0gTYh7aPbLQOoBx/zL+K4ddxzL+7Jhvep/BLtPhK/3UrPe4t1ZoGkn
         cu0ahRhGGPTymv3wllpi0NZSeFixYP7kJSyXKFk/M2xXulEhHm5Z7mG+EXWlG8JCYnfG
         jWGe23X/UOB8t8UOsO2wtw4ixJLeeV53iSyDJ7MHW4H+MOh9OqtajkJsfR2k7VXSC/ni
         QLehMvU1+rJJQp05WPk31lRFoXUgzNR61bASfWzCIjU9aNWvlpEtcGvRoqP9ojRqGnU/
         3yeA==
X-Gm-Message-State: AOAM5319y4tow1SukzM2h0jqO4vuUUwGzU5cdRV3mkZdy6IILFFnd+iF
	faDkjeYAMTl2IvK/9gB4imI=
X-Google-Smtp-Source: ABdhPJzSfL9hkud68xM42b1M5FmEd4M+yo/SsDcCgdLwjjhlgd5jOnj7Vgf1zerTSE9QeVsowuRagQ==
X-Received: by 2002:a17:90a:2e0d:: with SMTP id q13mr11392250pjd.225.1616715521891;
        Thu, 25 Mar 2021 16:38:41 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:c595:: with SMTP id p21ls4055364plx.6.gmail; Thu, 25
 Mar 2021 16:38:41 -0700 (PDT)
X-Received: by 2002:a17:902:e74f:b029:e5:fedb:92b9 with SMTP id p15-20020a170902e74fb02900e5fedb92b9mr12490270plf.67.1616715521298;
        Thu, 25 Mar 2021 16:38:41 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1616715521; cv=none;
        d=google.com; s=arc-20160816;
        b=EhlTzOedG7NPQaxRn+Ls0y+j3Kc4aXcwKIvRSG73dUtmYIMXbdZkbCBUPSaok8MHHU
         UsMZCjgvcudu/02TOyt9SH2948604Yo6s6AX0skLj7/hWfJ2NRp8ML+FYm2vlE0SoL/V
         E21INoGd7znlmcW5WsFNOVBujQyCQl6eeToCljDCGaxlh5ESLVBv0Gpf9N4UwoPqbPP9
         8Y0KuOy/g6u6N/PssS5uWwCDDuZkzOEBKnLsR94KmlqTVS5Ux+ZjPDNzigXQmod/GAjj
         Gv1mq+PMw2MCivoytgbYwgiOxgvSHCR6HUar5tP54wQuPgTxYeUxbLWvwWFHItXTcgIY
         EK1g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=SsGNl6TxEdcsmrF4tAO/a5SQ7vMBXF6HcqOFeBkJZaA=;
        b=AVdpBAoSGMOIvoTI1eevIfcIvmi8W6uUJWYUVe/d83psZBSqfTu+iTrZFVwpqMucCC
         LMwg9dLkNl34+CArqedIb95bhZML/07drlPpkm5g6lRXTVlCF2aQ90Z8VOGQST4RzfIu
         +ejXuCJIaAyvrJirKAPNbQQwtp0jqIPO/p2Td+WIgUsUS0YcEoWu6uE+FgzP2AEEDctg
         3cONY9kSHzarZ4xSCbyRGVS8+vjq7FsdERk2nUFz6Xcrzzo0KRf+JAjxgYGItFf/8Zk3
         CmRUq+NnKF591g6EUthKBrmHai+nuwiJQTbOOx1AgW46cR+pwse4JnvZUqEqO2Y81u7s
         P9Uw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=YBLkudSe;
       spf=pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::430 as permitted sender) smtp.mailfrom=maskray@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x430.google.com (mail-pf1-x430.google.com. [2607:f8b0:4864:20::430])
        by gmr-mx.google.com with ESMTPS id z22si345785pfc.6.2021.03.25.16.38.41
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 25 Mar 2021 16:38:41 -0700 (PDT)
Received-SPF: pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::430 as permitted sender) client-ip=2607:f8b0:4864:20::430;
Received: by mail-pf1-x430.google.com with SMTP id q5so3631789pfh.10
        for <clang-built-linux@googlegroups.com>; Thu, 25 Mar 2021 16:38:41 -0700 (PDT)
X-Received: by 2002:a62:2a07:0:b029:214:fd95:7f7 with SMTP id q7-20020a622a070000b0290214fd9507f7mr10221639pfq.60.1616715520895;
        Thu, 25 Mar 2021 16:38:40 -0700 (PDT)
Received: from google.com ([2620:15c:2ce:0:1532:a374:78cc:c35c])
        by smtp.gmail.com with ESMTPSA id l25sm7030314pgu.72.2021.03.25.16.38.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 25 Mar 2021 16:38:40 -0700 (PDT)
Date: Thu, 25 Mar 2021 16:38:35 -0700
From: "'Fangrui Song' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Nathan Chancellor <nathan@kernel.org>
Cc: Palmer Dabbelt <palmer@dabbelt.com>,
	Paul Walmsley <paul.walmsley@sifive.com>,
	Albert Ou <aou@eecs.berkeley.edu>, linux-riscv@lists.infradead.org,
	linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com,
	kernel test robot <lkp@intel.com>
Subject: Re: [PATCH 3/3] riscv: Select HAVE_DYNAMIC_FTRACE when
 -fpatchable-function-entry is available
Message-ID: <20210325233835.ytcstqdcwtorzkhw@google.com>
References: <20210325223807.2423265-1-nathan@kernel.org>
 <20210325223807.2423265-4-nathan@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Disposition: inline
In-Reply-To: <20210325223807.2423265-4-nathan@kernel.org>
X-Original-Sender: maskray@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=YBLkudSe;       spf=pass
 (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::430
 as permitted sender) smtp.mailfrom=maskray@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Fangrui Song <maskray@google.com>
Reply-To: Fangrui Song <maskray@google.com>
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

On 2021-03-25, Nathan Chancellor wrote:
>clang prior to 13.0.0 does not support -fpatchable-function-entry for
>RISC-V.
>
>clang: error: unsupported option '-fpatchable-function-entry=8' for target 'riscv64-unknown-linux-gnu'
>
>To avoid this error, only select HAVE_DYNAMIC_FTRACE when this option is
>not available.

If clang -fpatchable-function-entry=8 does not error "unsupported
option" for one target, it means the backend feature is supported on
this target.

Reviewed-by: Fangrui Song <maskray@google.com>

>Fixes: afc76b8b8011 ("riscv: Using PATCHABLE_FUNCTION_ENTRY instead of MCOUNT")
>Link: https://github.com/ClangBuiltLinux/linux/issues/1268
>Reported-by: kernel test robot <lkp@intel.com>
>Signed-off-by: Nathan Chancellor <nathan@kernel.org>
>---
> arch/riscv/Kconfig | 2 +-
> 1 file changed, 1 insertion(+), 1 deletion(-)
>
>diff --git a/arch/riscv/Kconfig b/arch/riscv/Kconfig
>index 87d7b52f278f..ba1d07640b66 100644
>--- a/arch/riscv/Kconfig
>+++ b/arch/riscv/Kconfig
>@@ -227,7 +227,7 @@ config ARCH_RV64I
> 	bool "RV64I"
> 	select 64BIT
> 	select ARCH_SUPPORTS_INT128 if CC_HAS_INT128 && GCC_VERSION >= 50000
>-	select HAVE_DYNAMIC_FTRACE if MMU
>+	select HAVE_DYNAMIC_FTRACE if MMU && $(cc-option,-fpatchable-function-entry=8)
> 	select HAVE_DYNAMIC_FTRACE_WITH_REGS if HAVE_DYNAMIC_FTRACE
> 	select HAVE_FTRACE_MCOUNT_RECORD
> 	select HAVE_FUNCTION_GRAPH_TRACER
>-- 
>2.31.0
>
>-- 
>You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
>To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
>To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210325223807.2423265-4-nathan%40kernel.org.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210325233835.ytcstqdcwtorzkhw%40google.com.
