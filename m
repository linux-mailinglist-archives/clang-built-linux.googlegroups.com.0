Return-Path: <clang-built-linux+bncBDYJPJO25UGBBTPM2L2AKGQEJORLJGY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3a.google.com (mail-io1-xd3a.google.com [IPv6:2607:f8b0:4864:20::d3a])
	by mail.lfdr.de (Postfix) with ESMTPS id C34F01A6C45
	for <lists+clang-built-linux@lfdr.de>; Mon, 13 Apr 2020 20:58:22 +0200 (CEST)
Received: by mail-io1-xd3a.google.com with SMTP id f4sf4084731iov.22
        for <lists+clang-built-linux@lfdr.de>; Mon, 13 Apr 2020 11:58:22 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1586804301; cv=pass;
        d=google.com; s=arc-20160816;
        b=nhs67G1ozfmtnEDOhMhgxsYyMN8FeFCQt0u7sIk2SKrckxIDTuHgLdLiIBr7CmSuAZ
         O8VPCxyVSw1WDfywvH0XJBrrDNZRdlSw6ZYizHyv6h28PXPiLq/J6+takMpYyoYkFcg3
         ht3kaF6aHqB3QUxVMc3rmQp9MXs9Q6BnQSBaz8b7BBqairGXc1e/OoKOQIHXOEK2BNoE
         pp3pvhmYBB/vujOe5+KNgI2brXrq9c7aQFqmm/LXVadmytxnNgReYHTP16VYfOSnD9sf
         QcwJ52e+WraHWpXapFbqfCbTdbRpxe+B6T2ERI5+JUyYg5JEWwmKozRyXFGBPWSIlLfc
         En+g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=uDcSy2DeKH3BjhTG0xDA6wqXTV2XGiwuFojPQcKZOPA=;
        b=vFIydoF301l7CcIfCz69IJlTY0kZhA1V4WJ6dTKzcp1/fpIAQlQ2DhSc42y8STCOoh
         rQsn0IdC2Hgvr+O39q9zGY4mB2oX2dGB6lTfzr1U/HvpU6cC1k+3eBgqFKYCxc12Q3HO
         h9oRw2zhCORz+mHb3BUNJHQGc5efdwZFZTmyNGypUKKA9kaXD/aggWJgwAEHSFKI6Dks
         zuDf+ZB+Ckl9M+qlr66JM/cGvBwykGML+0h4zZBaSX5NdJiLgAFODtvHSwTHT7B8EVu6
         iyczBBQWO3pS8CkABXTPJIjr39/EbGk+4QdDxSz8+Y2cCuL9w3yPiCgNgxxcmund0yhC
         jgSA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="Q+YoW/d6";
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::631 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=uDcSy2DeKH3BjhTG0xDA6wqXTV2XGiwuFojPQcKZOPA=;
        b=IXUFZ96ErRZc2gGaB5amJdrWXmZuqoe+BJ+SkDSMXCVKrJi2gSE92ibHVZ6qc3MKY8
         D0rfBOU3NN7GdL24rfj514RyOOuKigAaT2GeQbIt4qq4jjYgk7e6EiPzl/bZg+wxaxBE
         Ow0uDYtascKPr4kxZm8sbPPlTNAzUJzbbtcM+3UmdncVBBqAkK1VEqyzXf2tTkIt+e/a
         y1/yjfBVd75sKe/64y6yv0vNEfgrLhQx7Nscgvb1GYA1ysAW/6d70V4lRVALwJAf6fUd
         YaSy7KKMToJVQFK1EnehynLD7jHp7NmZEPT187OSt42YKIbDTab60lp2XQbC+oieOtxR
         Jd+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=uDcSy2DeKH3BjhTG0xDA6wqXTV2XGiwuFojPQcKZOPA=;
        b=Qe70n7asg+ZEsYd2gCN+QvQH1ZV2U/DKufIRXGix/4OAhOX2Rv7QchfiUV7Pb3O+ml
         dnYK01mgTxgT1DGLqmktJqkJPOYYobtpxKp1OiQqDtsJIewtx6JU2yqUcJHGBOQTz4/3
         Z2T4Cf+OXes+bMJTr7iufUf5MxF0bzCRjI8lZXC+r9/RbBotGj+K+InWjsyEHiPhn8V9
         Hq3MjGVIqUjLcwD5BgbfvVkQfptUmZLtVrtgloSlhwosXtUO6U13+EytIiG8jV3FJx3x
         tTHAoagCs/Ec8sRDpNMxXgAIp9Y7csKPwPwHsHJNAfqfvVeF1XTc8yyhKRlCxx1sCApN
         4Ykg==
X-Gm-Message-State: AGi0PuZUliXh7iU+gfJ9AWl7No9IbHbtM3NIbRf2e/1Ei36EY8JtIDvm
	VXaI68VD89ox147JSTTE9c4=
X-Google-Smtp-Source: APiQypJwBWZFnHfOhWupGbr8F8vp9Fb9SX40wwMHULmN2BQsAFXCRgRs7CyL2YNCtyIsMcUHgB/TLg==
X-Received: by 2002:a5d:8d90:: with SMTP id b16mr17853648ioj.9.1586804301495;
        Mon, 13 Apr 2020 11:58:21 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:8619:: with SMTP id g25ls407643ild.7.gmail; Mon, 13 Apr
 2020 11:58:21 -0700 (PDT)
X-Received: by 2002:a92:394d:: with SMTP id g74mr18193965ila.250.1586804301081;
        Mon, 13 Apr 2020 11:58:21 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1586804301; cv=none;
        d=google.com; s=arc-20160816;
        b=IQFDrNU8vwCqZCLukp0qbaqo1rBiUgs54fkKAG0D6+3mi36fY9SMleU0JSBYenNZc5
         eNURcFG48aJAM7Afrf3W8i9kPH76mbnIJk44eOgnD5+M8rctz9ARBk6N3VFpWg1Nc9Kc
         wMzowassaFQAKqBSlAGB+q942zi3FOXdpZX4y6MQK1/3Ihir1NFSLzBd+2zmsITfRlSs
         bG0RhIVuHOvyqgZEJoNr8H0iOUYmLux+Gx3KhsX9/V9MSGNNr4UoWx052qacg1NVYIiv
         N4PNnlMdqpF6HXjA/usvcS+96s25qvmRUmJwn+/tueWXJ32td60VUHeNUdwZhYIk0o9r
         GnyA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=WjnAyyRsydOKb/QuMqRE12EBcV3KSnJxuMf7eTDSqfg=;
        b=ZNaHoX9oBLSqE6x8HPykhPBHwrP0dAR7B6tMtGyWKBcaWku9oSsCWEJAPZi7hq8fkO
         LpmGIVohHNTmirbUC/7J3tKzazIdwIJI43FAiV+chFpEjlR0yRcZViJWggmn5Z0KkFvy
         sxfGrcmsV7XrLwYF/aRyjDBF8rKQm92SHbsU2dOL8dqbAo21F/LPqmWiLzrpyE++p+5I
         ddleOplAUEX1PIqlBfBrKxGhtlgytO+bLfA/QuEOi/BwCCpmSxpiceGojz7y4cYupNJJ
         rL9auMKNpAeMQwVAorOK1CQIJIXXm7alPy7KBF+ZSMDUGVjQQQD5reJIekOMF/RpCQrV
         vGmA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="Q+YoW/d6";
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::631 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x631.google.com (mail-pl1-x631.google.com. [2607:f8b0:4864:20::631])
        by gmr-mx.google.com with ESMTPS id g17si206185ioe.0.2020.04.13.11.58.21
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 13 Apr 2020 11:58:21 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::631 as permitted sender) client-ip=2607:f8b0:4864:20::631;
Received: by mail-pl1-x631.google.com with SMTP id y12so3418553pll.2
        for <clang-built-linux@googlegroups.com>; Mon, 13 Apr 2020 11:58:21 -0700 (PDT)
X-Received: by 2002:a17:902:988e:: with SMTP id s14mr18341817plp.179.1586804300040;
 Mon, 13 Apr 2020 11:58:20 -0700 (PDT)
MIME-Version: 1.0
References: <202004112326.VstzFIY8%lkp@intel.com>
In-Reply-To: <202004112326.VstzFIY8%lkp@intel.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 13 Apr 2020 11:58:08 -0700
Message-ID: <CAKwvOdnOFHDFpo4M3xEwzSrAQeRUbxj_quCZWf7tsRa31yOdZA@mail.gmail.com>
Subject: Re: [android-goldfish:android-4.14 1/2] Warning: ffffffff81ca0d60: 0f
 ff 49 8d ud0 -0x73(%rcx),%ecx
To: clang-built-linux <clang-built-linux@googlegroups.com>
Cc: kbuild-all@lists.01.org, kbuild test robot <lkp@intel.com>, 
	Martijn Coenen <maco@android.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b="Q+YoW/d6";       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::631
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

On Sat, Apr 11, 2020 at 8:05 AM kbuild test robot <lkp@intel.com> wrote:
>
> tree:   https://android.googlesource.com/kernel/goldfish android-4.14
> head:   bb8ba1da294318ef080cfedb3a632d0035bb0949
> commit: b8bcfe587e1724f14394a8cae68d7d9ad7ccb55e [1/2] UPSTREAM: loop: Only change blocksize when needed.
> config: x86_64-randconfig-e001-20200410 (attached as .config)
> compiler: clang version 11.0.0 (https://github.com/llvm/llvm-project 7149bb70681a91de5d490b4bb0714d9e55a05bcc)
> reproduce:
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         git checkout b8bcfe587e1724f14394a8cae68d7d9ad7ccb55e
>         # save the attached .config to linux build tree
>         COMPILER=clang make.cross ARCH=x86_64
>
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kbuild test robot <lkp@intel.com>
>
> All warnings (new ones prefixed by >>):
>
> >> Warning: ffffffff81ca0d60: 0f ff 49 8d ud0 -0x73(%rcx),%ecx
>    Warning: objdump says 4 bytes, but insn_get_length() says 2
>    Warning: arch/x86/tools/test_get_len found difference at <memcpy_page_flushcache>:ffffffff81ca026a

Looks like test_get_len exists in 4.14 but was removed between then
and 4.19.  Oh, it was renamed to insn_decoder_test in commit
6b63dd119eb4 ("x86/tools: Rename test_get_len to insn_decoder_test")

ud0 looks like ud2...

Filed https://github.com/ClangBuiltLinux/linux/issues/992 to follow
up.  The instruction lengths are important for alternatives.

> --
> >> Warning: ffffffff81ca11f2: 0f ff 49 8d ud0 -0x73(%rcx),%ecx
>    Warning: objdump says 4 bytes, but insn_get_length() says 2
>    Warning: arch/x86/tools/test_get_len found difference at <memcpy_page_flushcache>:ffffffff81ca026a
> --
> >> Warning: ffffffff81ca145f: 0f ff 48 8d ud0 -0x73(%rax),%ecx
>    Warning: objdump says 4 bytes, but insn_get_length() says 2
>    Warning: arch/x86/tools/test_get_len found difference at <memcpy_page_flushcache>:ffffffff81ca026a
> --
> >> Warning: ffffffff81ca1516: 0f ff 48 8d ud0 -0x73(%rax),%ecx
>    Warning: objdump says 4 bytes, but insn_get_length() says 2
>    Warning: arch/x86/tools/test_get_len found difference at <memcpy_page_flushcache>:ffffffff81ca026a
> --
> >> Warning: ffffffff81ca173b: 0f ff 48 8d ud0 -0x73(%rax),%ecx
>    Warning: objdump says 4 bytes, but insn_get_length() says 2
>    Warning: arch/x86/tools/test_get_len found difference at <memcpy_page_flushcache>:ffffffff81ca026a
> --
> >> Warning: ffffffff81ca17c8: 0f ff 48 8d ud0 -0x73(%rax),%ecx
>    Warning: objdump says 4 bytes, but insn_get_length() says 2
>    Warning: arch/x86/tools/test_get_len found difference at <memcpy_page_flushcache>:ffffffff81ca026a
> --
> >> Warning: ffffffff81ca1955: 0f ff 48 8d ud0 -0x73(%rax),%ecx
>    Warning: objdump says 4 bytes, but insn_get_length() says 2
>    Warning: arch/x86/tools/test_get_len found difference at <memcpy_page_flushcache>:ffffffff81ca026a
> --
> >> Warning: ffffffff81ca1973: 0f ff 48 8d ud0 -0x73(%rax),%ecx
>    Warning: objdump says 4 bytes, but insn_get_length() says 2
>    Warning: arch/x86/tools/test_get_len found difference at <memcpy_page_flushcache>:ffffffff81ca026a
> --
> >> Warning: ffffffff81ca1b86: 0f ff 49 8d ud0 -0x73(%rcx),%ecx
>    Warning: objdump says 4 bytes, but insn_get_length() says 2
>    Warning: arch/x86/tools/test_get_len found difference at <memcpy_page_flushcache>:ffffffff81ca026a
> --
> >> Warning: ffffffff81ca1bd4: 0f ff 48 8d ud0 -0x73(%rax),%ecx
>    Warning: objdump says 4 bytes, but insn_get_length() says 2
>    Warning: arch/x86/tools/test_get_len found difference at <memcpy_page_flushcache>:ffffffff81ca026a
> --
> >> Warning: ffffffff81ca1bda: 0f ff 48 8d ud0 -0x73(%rax),%ecx
>    Warning: objdump says 4 bytes, but insn_get_length() says 2
>    Warning: arch/x86/tools/test_get_len found difference at <memcpy_page_flushcache>:ffffffff81ca026a
> ..
>
> ---
> 0-DAY CI Kernel Test Service, Intel Corporation
> https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
>
> --
> You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202004112326.VstzFIY8%25lkp%40intel.com.



-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdnOFHDFpo4M3xEwzSrAQeRUbxj_quCZWf7tsRa31yOdZA%40mail.gmail.com.
