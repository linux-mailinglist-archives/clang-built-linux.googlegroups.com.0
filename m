Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBTGHYX5AKGQE2LHYKNI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43f.google.com (mail-pf1-x43f.google.com [IPv6:2607:f8b0:4864:20::43f])
	by mail.lfdr.de (Postfix) with ESMTPS id 9752825CC86
	for <lists+clang-built-linux@lfdr.de>; Thu,  3 Sep 2020 23:44:45 +0200 (CEST)
Received: by mail-pf1-x43f.google.com with SMTP id b189sf2794772pfa.16
        for <lists+clang-built-linux@lfdr.de>; Thu, 03 Sep 2020 14:44:45 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1599169484; cv=pass;
        d=google.com; s=arc-20160816;
        b=Tevv+kLhvAgiIjj05XLrpgDVzNj7x/eLOSD0QfDB2yYAU7SkVki3uZNMkXOWqDBZLB
         azaPb69PSX+A7o7BnRMfmHb4E4dPyolbuu+9o4a17TNiz5hhn7CWZmqfNsjihHIhlSxK
         XigHDxgpGiPrjfi0hI1WIalP0SmZZZDv7b2KOaqLSjdF+w3M0MXV7kbyQGA8T6jxdqrj
         /e1JDF2ckbM52Rjmfec2MIXqmcA934DAIfpkhIyQUdQF7xA2tM0/QxvGyt5UKbxfbAPv
         kyq8FsGLJPI21OgsZ1woB3wYufbJbuzZCobTb8TeEhqnIFEyV3StYzaYKN/aLa4H1Km2
         T23Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=KnzdpTKWRZS0hntqDUbeOVnAZnrWXW+/t5haY5+ZUDg=;
        b=J1G1olifJoCsF+70YaIicL5HpyfKU8NE7fQsBe/XOr9Qp1GOUazncDFaaYsjcUDA06
         0c/gcDj2idhIHTZ0Ux1EW2/FOxw/jxgLo6g2w39oAOXJF102nuVqG0ieVILRLHfkFlSC
         4cQ2SGdqX6A+1QjYHzdx3VOewqM2NzvqvosNUVwzunsRkikTClx3vClOz9TSAz3c0slv
         7GuNa8Duj/UQRwmF8nJXF46jzqAcICbO2fQR6+sK08QfurijkQD5WKANDgwwtZYrDLZH
         Huh2KO78MpzfapcygX+jj+iuwjO5ab1XU1SZZM4O7MOej7T3WfPFFTefXihAY8zC6gpa
         vu1g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=O5o59mUd;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::541 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=KnzdpTKWRZS0hntqDUbeOVnAZnrWXW+/t5haY5+ZUDg=;
        b=XRJX6VoZ47X5UuZCP9NgO03UNtWf9BuxIkg9S5diBO9wU4C/O7Wg6/lI4ozBMiuaaY
         pHmi0nWYuHCtHq67GlB4bA7rAgMAHES56hIt9DdjfYgqxKzRVmVWnCDAblWDGpS5vESQ
         Ug74L+v3m0BbGIQTQ4jcYhs8yv+W5pt+6GLaFk9ul8zhVFCOn6C+2lRGStqT5l9T4Kyf
         nvH4bWXByKTF3axYXy/cB6XEaQM+dReMBYz21GnHsQsl67ycx4FITpPg8d/6OKG3+b52
         EFfG7ED0D10KIHmwO1HdJstlWAq/FzwfzuF2+UvchoIRour4LinB3skbmcIWj+F8ayPa
         tG8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=KnzdpTKWRZS0hntqDUbeOVnAZnrWXW+/t5haY5+ZUDg=;
        b=JAXINEb4EcPAl5qCAQOMC90c6DXSK0XBXHG4xsxktX9srkEqOiyxcOIoQCRA138r41
         tMg3/U+wnn37o4+JFGUmdVbaMOsoruyz3DgPf9DOiFPKVVv8hu7Jxpy/ozsnQyj9nbCS
         gVI3awhQt6iWi6vvD+nFSjMTXqKN91q+IeKhVMibi2+7cACz3/v7UtrCd6r/rH052zK+
         DoO8iJhAvkWG8Z6cBQ4X0Iwf2wDHNm3+7YigqKWv4L2J2Jg4jLry4AtIw3X5AN5M3uN6
         K5Kghe0b6CrgQc8dcpgDzkjnDbSCeU0FUZlU3Mewpfp7+Tad0QOd4BsfMoQdVNs0Ge7H
         WBrw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533JY2JGA91yPV1zAbgC2zYVQS2acddvQp43aqfLchu2S+AJXWTt
	DgtquLndDotiMr/EGSrMP1w=
X-Google-Smtp-Source: ABdhPJyyy+p3CcPRdW/bTyG0Va5tazMQoznSVBRf8yS77Dy0Lfae/5dvE49FZwWvPcZe0fZJoFQipw==
X-Received: by 2002:a63:e1f:: with SMTP id d31mr4729113pgl.262.1599169484253;
        Thu, 03 Sep 2020 14:44:44 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:9b90:: with SMTP id y16ls3593535plp.3.gmail; Thu, 03
 Sep 2020 14:44:43 -0700 (PDT)
X-Received: by 2002:a17:902:ab92:: with SMTP id f18mr5835603plr.12.1599169483778;
        Thu, 03 Sep 2020 14:44:43 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1599169483; cv=none;
        d=google.com; s=arc-20160816;
        b=pUeOzjC8HXwHoVEuQX20yj2WX+yD2r4j24MIxMTWQ2aUXnqP4uy88oEixsIVzdkISD
         2AVIFbEPWSfO2hMCclG3qEoEMYjKhNtsN9UTFE52LHTgi8NmBhhjCDS19udBu2zApq47
         CMcBQK6OV16/g8eNsR+kWwDteWTN8pJ/K7XiGymtn7LZRVSCDAStNGr2Kcj2rGsAVAlT
         OQlc9f+fkorO1kx3txKDxHT70g3dNQ8qGVyBtonlf7SSWlW0B+dTaPekW7b1hzxQuN2X
         5nQkzRJW0p3DcCrIdYl09Z7HIi3LhtYxe4ekui759o9JVscqUYKunqMXhxcej4lyfPhJ
         vKvg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=Wkni4eXx9E7Yx63VN0+vnviLhaoHNM+yB8xZjp7w5hM=;
        b=RCMFuFPGcV6jPEazuRT5ZGLx1Rm2V/CCYJ6hxW/xza8GmD/hBLi6HRwcrgKFV9Kjbz
         CUpFtwk9O7SbTzwTI+ZLUFnJI2nsIgd1iGtuMm5aMLBxHg983tjPjNB1Ql8Xl/X2oM+o
         +wRta/JBACulajx2kPpRsrOX8eyKsIi48KEOSs5f01Hj72XL4rS9J/A00qZumvO/sBK+
         P3VfI3QMb9uAwL44SMk6ghBKlqUP3qqpRs+RlrUiBmTM2UgPfKz30pg+0kaHGzNSsyn3
         ByH37qDAvcYrjehQ8GMHSUqy//Ir6spHitoibp4z7TV4N/JxqZbydT7p4i1EwpibIrc0
         LJ0A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=O5o59mUd;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::541 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pg1-x541.google.com (mail-pg1-x541.google.com. [2607:f8b0:4864:20::541])
        by gmr-mx.google.com with ESMTPS id s2si221600pgh.4.2020.09.03.14.44.43
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 03 Sep 2020 14:44:43 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::541 as permitted sender) client-ip=2607:f8b0:4864:20::541;
Received: by mail-pg1-x541.google.com with SMTP id w186so3162622pgb.8
        for <clang-built-linux@googlegroups.com>; Thu, 03 Sep 2020 14:44:43 -0700 (PDT)
X-Received: by 2002:a62:1809:: with SMTP id 9mr5726960pfy.217.1599169483379;
        Thu, 03 Sep 2020 14:44:43 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id d77sm4259177pfd.121.2020.09.03.14.44.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 03 Sep 2020 14:44:42 -0700 (PDT)
Date: Thu, 3 Sep 2020 14:44:41 -0700
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
Subject: Re: [PATCH v2 01/28] x86/boot/compressed: Disable relocation
 relaxation
Message-ID: <202009031444.F2ECA89E@keescook>
References: <20200624203200.78870-1-samitolvanen@google.com>
 <20200903203053.3411268-1-samitolvanen@google.com>
 <20200903203053.3411268-2-samitolvanen@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200903203053.3411268-2-samitolvanen@google.com>
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=O5o59mUd;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::541
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

On Thu, Sep 03, 2020 at 01:30:26PM -0700, Sami Tolvanen wrote:
> From: Arvind Sankar <nivedita@alum.mit.edu>
> 
> The x86-64 psABI [0] specifies special relocation types
> (R_X86_64_[REX_]GOTPCRELX) for indirection through the Global Offset
> Table, semantically equivalent to R_X86_64_GOTPCREL, which the linker
> can take advantage of for optimization (relaxation) at link time. This
> is supported by LLD and binutils versions 2.26 onwards.
> 
> The compressed kernel is position-independent code, however, when using
> LLD or binutils versions before 2.27, it must be linked without the -pie
> option. In this case, the linker may optimize certain instructions into
> a non-position-independent form, by converting foo@GOTPCREL(%rip) to $foo.
> 
> This potential issue has been present with LLD and binutils-2.26 for a
> long time, but it has never manifested itself before now:
> - LLD and binutils-2.26 only relax
> 	movq	foo@GOTPCREL(%rip), %reg
>   to
> 	leaq	foo(%rip), %reg
>   which is still position-independent, rather than
> 	mov	$foo, %reg
>   which is permitted by the psABI when -pie is not enabled.
> - gcc happens to only generate GOTPCREL relocations on mov instructions.
> - clang does generate GOTPCREL relocations on non-mov instructions, but
>   when building the compressed kernel, it uses its integrated assembler
>   (due to the redefinition of KBUILD_CFLAGS dropping -no-integrated-as),
>   which has so far defaulted to not generating the GOTPCRELX
>   relocations.
> 
> Nick Desaulniers reports [1,2]:
>   A recent change [3] to a default value of configuration variable
>   (ENABLE_X86_RELAX_RELOCATIONS OFF -> ON) in LLVM now causes Clang's
>   integrated assembler to emit R_X86_64_GOTPCRELX/R_X86_64_REX_GOTPCRELX
>   relocations. LLD will relax instructions with these relocations based
>   on whether the image is being linked as position independent or not.
>   When not, then LLD will relax these instructions to use absolute
>   addressing mode (R_RELAX_GOT_PC_NOPIC). This causes kernels built with
>   Clang and linked with LLD to fail to boot.
> 
> Patch series [4] is a solution to allow the compressed kernel to be
> linked with -pie unconditionally, but even if merged is unlikely to be
> backported. As a simple solution that can be applied to stable as well,
> prevent the assembler from generating the relaxed relocation types using
> the -mrelax-relocations=no option. For ease of backporting, do this
> unconditionally.
> 
> [0] https://gitlab.com/x86-psABIs/x86-64-ABI/-/blob/master/x86-64-ABI/linker-optimization.tex#L65
> [1] https://lore.kernel.org/lkml/20200807194100.3570838-1-ndesaulniers@google.com/
> [2] https://github.com/ClangBuiltLinux/linux/issues/1121
> [3] https://reviews.llvm.org/rGc41a18cf61790fc898dcda1055c3efbf442c14c0
> [4] https://lore.kernel.org/lkml/20200731202738.2577854-1-nivedita@alum.mit.edu/
> 
> Reported-by: Nick Desaulniers <ndesaulniers@google.com>
> Signed-off-by: Arvind Sankar <nivedita@alum.mit.edu>

Reviewed-by: Kees Cook <keescook@chromium.org>

-- 
Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202009031444.F2ECA89E%40keescook.
