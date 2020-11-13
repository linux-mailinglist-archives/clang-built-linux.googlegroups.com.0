Return-Path: <clang-built-linux+bncBDYJPJO25UGBBHNPXP6QKGQEG2Q7V4Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x839.google.com (mail-qt1-x839.google.com [IPv6:2607:f8b0:4864:20::839])
	by mail.lfdr.de (Postfix) with ESMTPS id E427A2B2427
	for <lists+clang-built-linux@lfdr.de>; Fri, 13 Nov 2020 19:59:43 +0100 (CET)
Received: by mail-qt1-x839.google.com with SMTP id i39sf6337882qtb.1
        for <lists+clang-built-linux@lfdr.de>; Fri, 13 Nov 2020 10:59:43 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1605293983; cv=pass;
        d=google.com; s=arc-20160816;
        b=NN+B2CqkQEG/mZTNgXKcLfyjBuR7ZSBh4XPo1fWg6Tck+n7bcHhNP6syxC4cafNOX5
         +2K8m41ZcN8L5WWJLeMCUPoh4CnGq4I7tkZJw6PtdU5gQ91EMSYOVrjAz1J4KoxvMHod
         BBLBng+UlW2d90zxsR5sQ6BfeIGm566K0P+paPwUb4jOE/b6uN0uzBtC9W6G9RSr0nHp
         lrRWzEeAnrnjR6i6mmaFrSdCbDk06tyhARWDg9ZVT7t2LQzd86nahH1nSbGUHlGSb33N
         qEWbEwdkqcTKzJk7+qO+K7v1hiFZhbWTsfBcgSVtCE0927+SFsPf6DPE62jy0n6Pw0Pu
         qB1A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=5qhdkTSnkYif2JAXysMnwNGUjLVlHa3EAqx3R+zRhJc=;
        b=y3/KPqQUXm3hVapOz1lvx9bVUXHR6MazvDouhliokLU7TcRVl3O1w2NtjEccoxtHlU
         4DLFZw+iLs/haA7cEpbt1T7bHF4dFkT4bNDb6tI261C/kff9dDNdEqKAQeSzKuIccoWL
         D8/EqL1cOPHgXQLCR7e5AeEQBH1BLfRe06ZE+MAE8vIiXMIIby8+WNAsNPcU0Qhh6eEa
         3d+xhscF0TnfDcZaAV3dxC7QKMQvabWPLOXOm774Lz8akyV8Ad6su3Cirr4C7ymYISJp
         KVMsf1wlVlGL5xTwQnulHF96URCEIrKtnz4xtxmVKl7ZNi7eSm1gnAUjr/OP+/tHOEFV
         wx3g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=dxfYDQ6k;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=5qhdkTSnkYif2JAXysMnwNGUjLVlHa3EAqx3R+zRhJc=;
        b=jp3DUaYnstspZQl7L+7gE0/tjnim0L4a9+TQ9j3+4Zqy2wQgLPw591sRBvepKp5DsN
         4nNETqBnXhpJpKQayJLQNeD1JELiNzUHqBkLd2uSY/JerM/uQR+5G9XAiqnT5T/mHXtJ
         V8sRh+eVXAYba3o63c6EdypHEM0lEnmJqdx1gYE8TIn7OAr/DZB5MNqjIlUQwFjbwGvj
         3y26BhmgWxn2Ei9YWcRVbTjqQxrOuG1bky5KRX3P8sONsaImrnFvQOmMR71ODVjgT+Rr
         IOzr7aM95qyDVyu7k+Dh2+1rM4FSyzvneFrglUqFkjrWD31LtlpmmA4VP9mn2dgEPCrj
         U0RQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=5qhdkTSnkYif2JAXysMnwNGUjLVlHa3EAqx3R+zRhJc=;
        b=DgdZVSnlKdVzRd3nUWQpv4Z8KDAQYKQ/7vlHQw1LTbSXGbFNy0LGA+lHlcMk16Bwve
         Vmv9Rcp+pHmANtyvfpZBH0nhMbkSi606UmeruD1+HFQiG0CH001uusGTEXzQQRrV0MMX
         TqRfTW7QAK4OLBavEyv8uCQk5yxWJL9bqKLJDpGHscmEZQFCGenU/ctV//+k/H6rplRf
         t2tN+mzcX5aA+MGMMEUVnrDYAzN2MHk0Kj8dKSPiasoG1K8fZgi9zY/PpWSOzNA3ATKS
         0snWOlmkvYCkkc3NaOoXaLsTJQLdFr9wxVOnTyDyKpY6nLonLw9LP+LYNmYVaH7/YrLu
         K/xw==
X-Gm-Message-State: AOAM5320bUu2lSqvMERE47z1oMTQahEZZK8JtKzPHYMh4fIaNLObFyOi
	ekFQgKLbUn03B2v71+juArA=
X-Google-Smtp-Source: ABdhPJxe3rIItzfZzmE1bbXlGxtzq2FmJ9JflWuU/752vMt8qmrFVa+eX64thllxLnbqF17TIMKDew==
X-Received: by 2002:a37:4552:: with SMTP id s79mr3368944qka.6.1605293981535;
        Fri, 13 Nov 2020 10:59:41 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aed:36ea:: with SMTP id f97ls2517121qtb.4.gmail; Fri, 13 Nov
 2020 10:59:39 -0800 (PST)
X-Received: by 2002:ac8:74c7:: with SMTP id j7mr3385633qtr.179.1605293979574;
        Fri, 13 Nov 2020 10:59:39 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1605293979; cv=none;
        d=google.com; s=arc-20160816;
        b=FWq4xyDCASdZcePtm8QMByWbhzVl1m+b8tIW1RZvtesAKEz4RJOy61Hnme4prEJx0T
         OKzRRofKjVpIbqUFQpQSVkO1q3TxZWHc+LmxERECaFiVuzbC46hmHk3gDmqn3yy5ykwn
         4LQUwF70KWPEdqLGV2eeHx2tlkI0SVBNGZt6wzb1z4VkDxV3/i7ET3uUDkLsgJqGG2gU
         MyaxEMuRUhm1y9dq+ZZT7+f2jwr4BBmipoIzJb0GY794NEB6IaIay4OkmwsRERu1IKiD
         ZzZ0GYrl9RjyOhC6Hbmo33+UvdG+I2UupSPMgt8vocbRVn9YIkoOCY1nq4fIaseDaYhf
         biyQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=MniKqKItHpWrCcVH+AMewB90l9vg6n7H90MFqb8jsJY=;
        b=qVDGsWq0WuWE0a4zCA8qcbWfekKYdC4t9pFsn8nLbhuYHYus0BNOwh8wNvsEuqunFU
         zpqWfjFbQbScA90QStOeX4ykWxChfpJbcsi1XY/MSxWnRAlD77yATKSygukveIxnAj38
         BsuUw9xxRnItreVezukyszEyazUvZs09HDy9RicdbC8BsNVvaPM6ylOhvHYk6v9uLbiQ
         71pD6KFm4BveVdZ4ByrZkguz+tZWMnDGXJ1lTfY4QOJh1GRJ7NNcaJyoGOUOl2toQ9H3
         GZT+Jqo6iwG/gG8Id5iy1dr7OAPGkpThvt3dTIoATUwJ5yJ1tM/8Z8atCoIgpZNH6HMH
         mPuw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=dxfYDQ6k;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x542.google.com (mail-pg1-x542.google.com. [2607:f8b0:4864:20::542])
        by gmr-mx.google.com with ESMTPS id p51si621269qtc.4.2020.11.13.10.59.39
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 13 Nov 2020 10:59:39 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::542 as permitted sender) client-ip=2607:f8b0:4864:20::542;
Received: by mail-pg1-x542.google.com with SMTP id e21so7804159pgr.11
        for <clang-built-linux@googlegroups.com>; Fri, 13 Nov 2020 10:59:39 -0800 (PST)
X-Received: by 2002:a62:5e06:0:b029:164:a9ca:b07e with SMTP id
 s6-20020a625e060000b0290164a9cab07emr3148377pfb.36.1605293978382; Fri, 13 Nov
 2020 10:59:38 -0800 (PST)
MIME-Version: 1.0
References: <20201109144425.270789-22-alexandre.chartre@oracle.com> <202011131552.4kvOb9Id-lkp@intel.com>
In-Reply-To: <202011131552.4kvOb9Id-lkp@intel.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Fri, 13 Nov 2020 10:59:26 -0800
Message-ID: <CAKwvOdnvhyNs1arkVO1=pw9GB9NePKUfQYAY+Q0Ur9Qe9HJ37w@mail.gmail.com>
Subject: Re: [RFC][PATCH 21/24] x86/entry: Disable stack-protector for IST
 entry C handlers
To: Alexandre Chartre <alexandre.chartre@oracle.com>
Cc: kbuild-all@lists.01.org, 
	clang-built-linux <clang-built-linux@googlegroups.com>, linux-toolchains@vger.kernel.org, 
	kernel test robot <lkp@intel.com>, Arvind Sankar <nivedita@alum.mit.edu>, Ard Biesheuvel <ardb@kernel.org>, 
	Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>, 
	Segher Boessenkool <segher@kernel.crashing.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=dxfYDQ6k;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::542
 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
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

On Thu, Nov 12, 2020 at 11:59 PM kernel test robot <lkp@intel.com> wrote:
>
> Hi Alexandre,
>
> [FYI, it's a private test report for your RFC patch.]
> [auto build test WARNING on tip/x86/mm]
> [also build test WARNING on v5.10-rc3]
> [cannot apply to tip/x86/core tip/x86/asm next-20201112]
> [If your patch is applied to the wrong git tree, kindly drop us a note.
> And when submitting patch, we suggest to use '--base' as documented in
> https://git-scm.com/docs/git-format-patch]
>
> url:    https://github.com/0day-ci/linux/commits/Alexandre-Chartre/x86-pti-Defer-CR3-switch-to-C-code/20201109-225007
> base:   https://git.kernel.org/pub/scm/linux/kernel/git/tip/tip.git 1fcd009102ee02e217f2e7635ab65517d785da8e
> config: x86_64-randconfig-a011-20201109 (attached as .config)
> compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project 09ec07827b1128504457a93dee80b2ceee1af600)
> reproduce (this is a W=1 build):
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         # install x86_64 cross compiling tool for clang build
>         # apt-get install binutils-x86-64-linux-gnu
>         # https://github.com/0day-ci/linux/commit/1095b6a7acb8dc568c474cd3b3d1c8393fb49728
>         git remote add linux-review https://github.com/0day-ci/linux
>         git fetch --no-tags linux-review Alexandre-Chartre/x86-pti-Defer-CR3-switch-to-C-code/20201109-225007
>         git checkout 1095b6a7acb8dc568c474cd3b3d1c8393fb49728
>         # save the attached .config to linux build tree
>         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=x86_64
>
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kernel test robot <lkp@intel.com>
>
> All warnings (new ones prefixed by >>):
>
> >> arch/x86/kernel/cpu/mce/core.c:2023:1: warning: unknown attribute 'optimize' ignored [-Wunknown-attributes]
>    DEFINE_IDTENTRY_MCE(exc_machine_check)
>    ^
>    arch/x86/include/asm/idtentry.h:539:30: note: expanded from macro 'DEFINE_IDTENTRY_MCE'
>    #define DEFINE_IDTENTRY_MCE             DEFINE_IDTENTRY_IST
>                                            ^
>    arch/x86/include/asm/idtentry.h:428:2: note: expanded from macro 'DEFINE_IDTENTRY_IST'
>            no_stack_protector DEFINE_IDTENTRY_RAW(func)
>            ^
>    arch/x86/include/asm/idtentry.h:110:18: note: expanded from macro 'no_stack_protector'
>            __attribute__ ((optimize("-O2,-fno-stack-protector,-fno-omit-frame-pointer")))
>                            ^

Hi Alexandre,
The `optimize` attribute is both non-portable across toolchains (hence
this warning) and a little quirky in GCC.  It's advised that you do
not use it.  If you can describe the issue you're trying to solve with
it, we likely have a better way to fix.

If it's removing a stack protector, -fno-stack-protector for the whole
translation unit is the only portable solution today. (GCC 10 just
gained the no_stack_protector attribute, but the kernel needs to
support older versions of GCC).

>    1 warning generated.
>
> vim +/optimize +2023 arch/x86/kernel/cpu/mce/core.c
>
> 4c0dcd8350a03c arch/x86/kernel/cpu/mce/core.c   Thomas Gleixner 2020-02-25  2020
> 4c0dcd8350a03c arch/x86/kernel/cpu/mce/core.c   Thomas Gleixner 2020-02-25  2021  #ifdef CONFIG_X86_64
> 4c0dcd8350a03c arch/x86/kernel/cpu/mce/core.c   Thomas Gleixner 2020-02-25  2022  /* MCE hit kernel mode */
> 4c0dcd8350a03c arch/x86/kernel/cpu/mce/core.c   Thomas Gleixner 2020-02-25 @2023  DEFINE_IDTENTRY_MCE(exc_machine_check)
> 4c0dcd8350a03c arch/x86/kernel/cpu/mce/core.c   Thomas Gleixner 2020-02-25  2024  {
> cd840e424f27fc arch/x86/kernel/cpu/mce/core.c   Peter Zijlstra  2020-05-29  2025        unsigned long dr7;
> cd840e424f27fc arch/x86/kernel/cpu/mce/core.c   Peter Zijlstra  2020-05-29  2026
> cd840e424f27fc arch/x86/kernel/cpu/mce/core.c   Peter Zijlstra  2020-05-29  2027        dr7 = local_db_save();
> 4c0dcd8350a03c arch/x86/kernel/cpu/mce/core.c   Thomas Gleixner 2020-02-25  2028        exc_machine_check_kernel(regs);
> cd840e424f27fc arch/x86/kernel/cpu/mce/core.c   Peter Zijlstra  2020-05-29  2029        local_db_restore(dr7);
> 4c0dcd8350a03c arch/x86/kernel/cpu/mce/core.c   Thomas Gleixner 2020-02-25  2030  }
> 9eda8cb3ac2352 arch/x86/kernel/cpu/mcheck/mce.c Andi Kleen      2009-07-09  2031
>
> ---
> 0-DAY CI Kernel Test Service, Intel Corporation
> https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
>
> --
> You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202011131552.4kvOb9Id-lkp%40intel.com.



-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdnvhyNs1arkVO1%3Dpw9GB9NePKUfQYAY%2BQ0Ur9Qe9HJ37w%40mail.gmail.com.
