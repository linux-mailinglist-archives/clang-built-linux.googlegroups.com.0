Return-Path: <clang-built-linux+bncBCRKNY4WZECBBIPF7X2AKGQENPXD2EY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x840.google.com (mail-qt1-x840.google.com [IPv6:2607:f8b0:4864:20::840])
	by mail.lfdr.de (Postfix) with ESMTPS id E24951B3297
	for <lists+clang-built-linux@lfdr.de>; Wed, 22 Apr 2020 00:24:34 +0200 (CEST)
Received: by mail-qt1-x840.google.com with SMTP id y31sf199507qta.16
        for <lists+clang-built-linux@lfdr.de>; Tue, 21 Apr 2020 15:24:34 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1587507874; cv=pass;
        d=google.com; s=arc-20160816;
        b=eb6DgguAseyp2hnXOmWfF/Pt+QgwnYBzb1BYHKvY3BhiWeoYmYnVWXYzBEZgUvHl/W
         BylvAe+JLrq4k/RdlgmlvRlSQPgXnAg43sJpiZx+7RhNCNIBar1uFPCZjLx6njWUyWiY
         BUAwfc/iCSW1Vy8Sj6BIA9BCamV5cohLkdcVAk7MYXyfKbfxh/oC4l0RGSSXqSOOy6TM
         PFz5E5wANtv7bU0erQtQYdiWuJ2eSPiz9gaDFKiTjobNiqcwSkX3JIAnTAufTALhLWI+
         wNIlkOWZF9IzCjazVAtSrChnLLQBNnveS726uJ6ut314FYxQubm06JtFCXOPVtHfK9oC
         Hq9g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:to:from:cc
         :in-reply-to:subject:date:sender:dkim-signature;
        bh=OSiYgbqfFT4cFdyC5ozyQX2XLAmhRaLPhlWEs85bnkg=;
        b=RucZFDLuXfR2lLytMgeQdKKbOz122oRTns18oTk4pAMsD5/CtsSH3gI//PtXJai2/z
         31wydKKfTGZ46wKWD7EwYjz3UPSc4LVQUzUn1VXq3CtOhPrUPoTdQ/Xtcea6K5Lduogu
         HPU/LXtzZwwyTtA3Feisu5kDllX4baVnLeQd1Uw4yBFbq44fueA7QpuSyuIPfMmAsSgv
         XP5JsvrGLlkKU3tMV0gYIgPmoIA8gjG3EnXh2Uja0W4DG9VdZmp969y3lzE0kfwkwAI7
         oMpoFBanB+mvnF2m8lkuHh+GwWes8zbtVMaJdqcQY+POEPGksatJ/XM58e06auzzfYhh
         5cAA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@dabbelt-com.20150623.gappssmtp.com header.s=20150623 header.b=N47qBMdQ;
       spf=pass (google.com: domain of palmer@dabbelt.com designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=palmer@dabbelt.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:subject:in-reply-to:cc:from:to:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=OSiYgbqfFT4cFdyC5ozyQX2XLAmhRaLPhlWEs85bnkg=;
        b=KRYMbLkJ4qEp6oHjb7RT9HBikqK9adRjB7bSmH/TaRtuoWt3EGhfZ/XYQSiGZI+1e4
         EDTVC2kPn8nQl/OP0mdTlbg3AK6sNiCHBaPGj+sn9Zl0253UMHLXBcnTz77XIpKUsDUq
         /Q5aTTOWJEd6qTIzHSlm8l8XLMQHQh+fMiw7eSceVC/0w/VtEH+qNxmI75ASxRQ2K+lo
         Bu5HEOaq9DeJ5IYwrC6DUn+a7KWRfkrURK/BayxP4Wblx1+8zaKfgE7e392ogESU7QKT
         /5yYmR+JCyb/Y+OkhmbVrEC5kiGSOmelwqmX0cdHiMVDOD65z1aUeYzBVpwJm4xMM8bq
         Vozw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:subject:in-reply-to:cc:from:to
         :message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=OSiYgbqfFT4cFdyC5ozyQX2XLAmhRaLPhlWEs85bnkg=;
        b=AsyLdju51wEL5h+qotlzeK5u6rgfuhOpw+upDOvK90cOAs9d0a0b49JAqxi3rrFBs/
         30Pt/y4O9kNFGg+md0fWJoxFLZQuytHoTHL5xLRfaXd5hNM0BtEz4181JyrZSq3EDjp+
         v8YVRYUZeGt+NpByaGF1QwwUnnReGrKKQlLGkk96ZXXectIidil8CL9kX9kyKFRBnWO/
         QqthGq4YM55zdvl/5Ie3xTcT3Lv8peKdFbj+m5/PQl7uIbxufPYbMplao8/N8Yy+d46h
         h5Slik4cpF9Ps8HmlcsLkx6phjnelbqLx7XwYNN2Pl7eRpSGrNh5JWWMFICslZO7SdHH
         tbtw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0Pub5MzglcysEo7IfTdA+xBOSBvn32bEDLzk9rX5S59pErnI58Tq4
	OE9Nds3HHGSAQy4AblZ0ji0=
X-Google-Smtp-Source: APiQypIg16S4BQvPqUI/VB15F309oWwx7CTGSPackogCnIKy00Lb1piM1cMolIoFSGGVOKsYCIicug==
X-Received: by 2002:a37:981:: with SMTP id 123mr23373813qkj.453.1587507873910;
        Tue, 21 Apr 2020 15:24:33 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a0c:b3d4:: with SMTP id b20ls37685qvf.11.gmail; Tue, 21 Apr
 2020 15:24:33 -0700 (PDT)
X-Received: by 2002:ad4:58eb:: with SMTP id di11mr15772478qvb.39.1587507873589;
        Tue, 21 Apr 2020 15:24:33 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1587507873; cv=none;
        d=google.com; s=arc-20160816;
        b=iYOZELH/qGzL0vR8To8XHIJmYf9kfsprrs04m0qiRXe8ZuOSVPuD7t8eSr5EvlqQSy
         NKifpueXjNAMMJDw5Hu8QRaKnmSRCWtskYvm06DL7o+26+G+9YGaOkjK+qU78s+Ox59S
         yY+2n3l2IBUxCCvSTT+/BFFVKWhLcujnWfifUI4NjewAwiMlTJT/dde53XLpJWNU2T6b
         shoZAuMJDzExHFfSTFW0B0XdJuCk6VD9kUg9WXFaYVoxiTcK/+xXz/iwViPGywvox29V
         AS8QaYFRgNndDxYdlTjQTmdIegCNKVoDgyIDbeGC01glNcsSydt6OI33GR95W+ugd9jd
         /7mQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:to:from:cc
         :in-reply-to:subject:date:dkim-signature;
        bh=7EQSergzjvpSiVEiJAnccFwyc23McE189ccKP2C8IZU=;
        b=GiC3QyQ+YPrCef4CO9PBUj3smRdVc8jESiPj4G41QEedOhLIZNrLufxUxYaIWmwovU
         uF2Gl0neCmug0YR8QyNR3k/NEpJ37x6Fv24PwU0ewWD0TBa9Ihl7iR7DJwc32rrijkEi
         mWvbpb3gCpGSMfTYsULvCLstB94UpzQAdC9sfSe2i6FrtSS1sLnlJVBEaGcVkBR3mXcV
         2MaO/yHg8P+9Ug9Lmbb27ue+nNuzKfX5VHkfuXwdIaiAtk1SuMqsvYV8FGD2WGqQ53Ml
         rDl/5WC6pUsFHhBEbXPv5RcztipEa8oJbMNWXhwVreFbzt138o5fFJAgmRwbxoYmpsjk
         u6wg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@dabbelt-com.20150623.gappssmtp.com header.s=20150623 header.b=N47qBMdQ;
       spf=pass (google.com: domain of palmer@dabbelt.com designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=palmer@dabbelt.com
Received: from mail-pf1-x441.google.com (mail-pf1-x441.google.com. [2607:f8b0:4864:20::441])
        by gmr-mx.google.com with ESMTPS id p9si480107qtn.1.2020.04.21.15.24.33
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 21 Apr 2020 15:24:33 -0700 (PDT)
Received-SPF: pass (google.com: domain of palmer@dabbelt.com designates 2607:f8b0:4864:20::441 as permitted sender) client-ip=2607:f8b0:4864:20::441;
Received: by mail-pf1-x441.google.com with SMTP id b8so11864pfp.8
        for <clang-built-linux@googlegroups.com>; Tue, 21 Apr 2020 15:24:33 -0700 (PDT)
X-Received: by 2002:a63:4650:: with SMTP id v16mr20371642pgk.99.1587507872358;
        Tue, 21 Apr 2020 15:24:32 -0700 (PDT)
Received: from localhost (76-210-143-223.lightspeed.sntcca.sbcglobal.net. [76.210.143.223])
        by smtp.gmail.com with ESMTPSA id r63sm3534644pfr.42.2020.04.21.15.24.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 21 Apr 2020 15:24:31 -0700 (PDT)
Date: Tue, 21 Apr 2020 15:24:31 -0700 (PDT)
Subject: Re: [PATCH v2] riscv: fix vdso build with lld
In-Reply-To: <20200415142959.25673-1-ilie.halip@gmail.com>
CC: linux-riscv@lists.infradead.org, maskray@google.com, rupprecht@google.com,
  ilie.halip@gmail.com, Paul Walmsley <paul.walmsley@sifive.com>, aou@eecs.berkeley.edu,
  Nick Desaulniers <ndesaulniers@google.com>, Greg KH <gregkh@linuxfoundation.org>, tglx@linutronix.de, han_mao@c-sky.com,
  linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com
From: Palmer Dabbelt <palmer@dabbelt.com>
To: ilie.halip@gmail.com
Message-ID: <mhng-8737e015-5064-456d-99cb-3e275321db5e@palmerdabbelt-glaptop1>
Mime-Version: 1.0 (MHng)
Content-Type: text/plain; charset="UTF-8"; format=flowed
X-Original-Sender: palmer@dabbelt.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@dabbelt-com.20150623.gappssmtp.com header.s=20150623
 header.b=N47qBMdQ;       spf=pass (google.com: domain of palmer@dabbelt.com
 designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=palmer@dabbelt.com
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

On Wed, 15 Apr 2020 07:29:58 PDT (-0700), ilie.halip@gmail.com wrote:
> When building with the LLVM linker this error occurrs:
>     LD      arch/riscv/kernel/vdso/vdso-syms.o
>   ld.lld: error: no input files
>
> This happens because the lld treats -R as an alias to -rpath, as opposed
> to ld where -R means --just-symbols.
>
> Use the long option name for compatibility between the two.
>
> Link: https://github.com/ClangBuiltLinux/linux/issues/805
> Reported-by: Dmitry Golovin <dima@golovin.in>
> Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
> Signed-off-by: Ilie Halip <ilie.halip@gmail.com>
>
> ---
> Changed in v2:
>   * a comment line dropped, another one slightly reworded
>   * added Nick's Reviewed-by
> ---
>  arch/riscv/kernel/vdso/Makefile | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)
>
> diff --git a/arch/riscv/kernel/vdso/Makefile b/arch/riscv/kernel/vdso/Makefile
> index 33b16f4212f7..a4ee3a0e7d20 100644
> --- a/arch/riscv/kernel/vdso/Makefile
> +++ b/arch/riscv/kernel/vdso/Makefile
> @@ -33,15 +33,15 @@ $(obj)/vdso.so.dbg: $(src)/vdso.lds $(obj-vdso) FORCE
>  	$(call if_changed,vdsold)
>
>  # We also create a special relocatable object that should mirror the symbol
> -# table and layout of the linked DSO.  With ld -R we can then refer to
> -# these symbols in the kernel code rather than hand-coded addresses.
> +# table and layout of the linked DSO. With ld --just-symbols we can then
> +# refer to these symbols in the kernel code rather than hand-coded addresses.
>
>  SYSCFLAGS_vdso.so.dbg = -shared -s -Wl,-soname=linux-vdso.so.1 \
>  	-Wl,--build-id -Wl,--hash-style=both
>  $(obj)/vdso-dummy.o: $(src)/vdso.lds $(obj)/rt_sigreturn.o FORCE
>  	$(call if_changed,vdsold)
>
> -LDFLAGS_vdso-syms.o := -r -R
> +LDFLAGS_vdso-syms.o := -r --just-symbols
>  $(obj)/vdso-syms.o: $(obj)/vdso-dummy.o FORCE
>  	$(call if_changed,ld)

Thanks, this is on fixes.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/mhng-8737e015-5064-456d-99cb-3e275321db5e%40palmerdabbelt-glaptop1.
