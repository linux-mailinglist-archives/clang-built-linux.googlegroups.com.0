Return-Path: <clang-built-linux+bncBDYJPJO25UGBBWVNZ3ZQKGQEKEKXFSY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x539.google.com (mail-pg1-x539.google.com [IPv6:2607:f8b0:4864:20::539])
	by mail.lfdr.de (Postfix) with ESMTPS id 82EE318BBC3
	for <lists+clang-built-linux@lfdr.de>; Thu, 19 Mar 2020 16:59:23 +0100 (CET)
Received: by mail-pg1-x539.google.com with SMTP id k67sf2258944pga.23
        for <lists+clang-built-linux@lfdr.de>; Thu, 19 Mar 2020 08:59:23 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1584633562; cv=pass;
        d=google.com; s=arc-20160816;
        b=yAuHYEeNlN3dIunlNuGAQVmwrlQQTU+7PFz97PMT6gL1JmbCrzVJEpA9yXBCGQz/Y0
         ER5MA0n28nhy75dRIjfN2+r75gJ6xhzzisteX8r9kymHyXByv7nMbR4kqWY/fAM5cH1b
         3VjMAQod5vjnz/YZMehL6Amm/E5kllOyIpZ5ZcSMKtplIeAZrG8GNqevDXzxGUx64EFp
         yUibZ68WbROeOC2nICMfNAjLKlRQi+OrbiDC/Fd44wXVY0BxthrcRMzi+AqZ8/Ia8562
         fr/TnZDoa2Rk6jMX7wXmOZt3p8Xmfmwu5//EPFW4TPVfgv0jgyP4XDpzynJozdP/8OlG
         ifvA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=ROXQtYcXB9NiUGJPmGgGSRMjo2tdIsr+BQoyniM1rH8=;
        b=pTuwFhyGeLV8LvKsSfZLG/+OnYeo8/lxk6f2tOISHgPOPwW7uqtxxN1Yj+/P+FTsfl
         xCT8wNR4s89drJgnhyiWKjsn6CsdaGxlDxw/wYGl5bCLKs/Je8sj1irNbaOVFuuGdOxL
         M3E0tCMquLNLQQCskeri2goKlcccbYY9w6JyHCdZaDfs9DeywLnF2fPZSua+0XItbhZ+
         +oXDX66h2+TsddVtRoiOEjgj0KDdba5BKmWx1S5KMlZ/gtre1UuFINQeAfcHo57vo5AI
         Cs8i5vT9K21Zk6E5XcOK+mjs1ztJTclszq3moFH+cqjCsm0Kr3ywvr5DVSpkRr35w2cw
         qEdg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=gusV29Ai;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::536 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ROXQtYcXB9NiUGJPmGgGSRMjo2tdIsr+BQoyniM1rH8=;
        b=GXYHmT36zbgz3/4Za6TY5Fjf0z6m4ehJSVS8HM0W7xqrCwBveYKBWmcKd28Zg0iEoq
         wXkvEgGFxpYxvNKwwIoF6uHsjc1lxhPjKaGrz6Ip8HvfitYTMzjvD2hqPYBURos8K57D
         /fznunmODTZeITWe3sNgxQrAZgXwu+oi12DxeQRjI3Yp0Zi5RmqS5W7aOHMZhLE5hQNQ
         3zpJIHDiCwJ1YNIKMMdQPh2ZaBgTOg4UhEVtJsrBLwqqxTWYd1sx9qdPQxWJkGuVaeFI
         0dDpjfic/A41HbCnxA9HOJGywLd3UGnXtwVAXDphMS5BXP8724nmMg3VzjCYvKL03JJo
         noeA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ROXQtYcXB9NiUGJPmGgGSRMjo2tdIsr+BQoyniM1rH8=;
        b=Bu8OJbIHeHSCG8fzK7QKjt/5vdVI7sN7LsVKyKy/ojCno/RvkOY2C7xaY0Z26S6jkJ
         E9vDt8qqBAgGU5SwvA1SXMqMXM0ae+L7FJLTgJFiBVZIBXm5EFBPmBFeTL6AFuIR+QAD
         YuGpi69ATPzIjDDvi6Y83MQ27R43kbI1jfOLKIyMeVADjfIfqbngPoMsvF1sVqRLKjUh
         kWlvAshnuYYS+sB41CeLRfwXqIwmq/82IlcKk2D7X/UtoKenBnpqMFmaVBZXZYewTx2Y
         Qxvmvznyd2lPGaK768hDvyywZXrv1+272HveXwC8EVZj8uCTGcOq6opt3HGV0qKTVI4Q
         YYkQ==
X-Gm-Message-State: ANhLgQ3t7rfrEd1iPiTUovdMv3svALp/6c2Hm1VkCmT/Zbn3J1Rg3PxI
	3OUJcwTkfsaJCIuOoW2+B9s=
X-Google-Smtp-Source: ADFU+vs4mX1EMOBMj4NZ7YptwOjRz4hugXOGYfkm19H0kH6kD8VIv5R/dS2v1LzsP9/vJugoYtfE1A==
X-Received: by 2002:a63:2cc3:: with SMTP id s186mr3945948pgs.71.1584633562193;
        Thu, 19 Mar 2020 08:59:22 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:8493:: with SMTP id c19ls1553103plo.8.gmail; Thu, 19
 Mar 2020 08:59:21 -0700 (PDT)
X-Received: by 2002:a17:90a:30cf:: with SMTP id h73mr4709332pjb.189.1584633561678;
        Thu, 19 Mar 2020 08:59:21 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584633561; cv=none;
        d=google.com; s=arc-20160816;
        b=hsPZFuU/+/kdQmS7fYyEqQInqVcN8YfJewqQGAO5LKgCF87ezse6DxAZmeJaUV8qil
         Php4bI/w16iST6EQP2YXs+jIIfZFv3s18Wei4Zz0muJScPQ2KaZhHPOQRRrPIP3c6wQ8
         ML1fsayFg5aES1hrkIzwJPj7jNqTd54LXbvJrPoCckxBY09Ldy7GP/HCosD25G7JbjpP
         PUu+g7hslnikoLabIBF4NDvnh3Py2DfrIhCejz646EKEvLPEszNy6DV6vg8yYL9aLr8r
         /wxR+SomBJn0RX72/nza/jkD6jjsToCN11fUzOC0KURXC+1lsDyg+Zden7sxMqKOLfLn
         GLqQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=gZknaS2Z1JiiCx9ZzNz3i/4sDjAege9Yl4weiMf7H1M=;
        b=Qx4G6WBiifFmomfs34GA8dXCOBcsrSIi2+rlcI8TBse1rqLsfNzNtO+9Hv0IYbIo1p
         KXP7dvN8MFebD+8XGsvr7/o4Q2ATwsglpxylxxrwD+a075uKC6wP/Q/IiRLfo6pWxHHI
         SdSdq6q/YE3Ba3iSG5frDjYIOiazCfDNlzJxjmbLuNNEdfRUAnklRPwd3EblAyj4zIy9
         4BrWJUi/w37un5rTEo0dy5vo7fZsDAs+ZVfeqOjyCT3EtVJ243EtIXv/593S1/1dT+Ms
         83dqaakpyWLb88GBjQSx29NnEda6beTXEKtiKGyFGfmHymst+WhrlfYbG3N7dr60gtbV
         W4GA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=gusV29Ai;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::536 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x536.google.com (mail-pg1-x536.google.com. [2607:f8b0:4864:20::536])
        by gmr-mx.google.com with ESMTPS id 188si247596pfb.1.2020.03.19.08.59.21
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 19 Mar 2020 08:59:21 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::536 as permitted sender) client-ip=2607:f8b0:4864:20::536;
Received: by mail-pg1-x536.google.com with SMTP id m15so1482367pgv.12
        for <clang-built-linux@googlegroups.com>; Thu, 19 Mar 2020 08:59:21 -0700 (PDT)
X-Received: by 2002:a63:4453:: with SMTP id t19mr3802608pgk.381.1584633560708;
 Thu, 19 Mar 2020 08:59:20 -0700 (PDT)
MIME-Version: 1.0
References: <202003191934.oASTv9t3%lkp@intel.com>
In-Reply-To: <202003191934.oASTv9t3%lkp@intel.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Thu, 19 Mar 2020 08:59:09 -0700
Message-ID: <CAKwvOdkdJYMrhWP9SLmyPt=Vas0rc1Ea4RiwSK24a9WFOB8KcQ@mail.gmail.com>
Subject: Re: [linux-next:master 8215/10346] clang-11: error: assembler command
 failed with exit code 1 (use -v to see invocation)
To: kbuild test robot <lkp@intel.com>
Cc: Dirk Mueller <dmueller@suse.com>, kbuild-all@lists.01.org, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Rob Herring <robh@kernel.org>, 
	David Gibson <david@gibson.dropbear.id.au>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=gusV29Ai;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::536
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

ignore this, it's complaining about the `   /usr/bin/as: unrecognized
option '-mpower4'` at the bottom, it's a known issue.
https://github.com/ClangBuiltLinux/linux/issues/672

On Thu, Mar 19, 2020 at 4:18 AM kbuild test robot <lkp@intel.com> wrote:
>
> tree:   https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git master
> head:   aff7e57f8266549245eb4a272ce149b752dfce77
> commit: 35595372d95c0d10784bce1aec8cc144a39eb66d [8215/10346] Remove redundant YYLOC global declaration
> config: powerpc-defconfig (attached as .config)
> compiler: clang version 11.0.0 (git://gitmirror/llvm_project 14a1b80e044aac1947c891525cf30521be0a79b7)
> reproduce:
>         # FIXME the reproduce steps for clang is not ready yet
>
> If you fix the issue, kindly add following tag
> Reported-by: kbuild test robot <lkp@intel.com>
>
> All errors (new ones prefixed by >>):
>
>    In file included from scripts/mod/devicetable-offsets.c:3:
>    In file included from include/linux/mod_devicetable.h:13:
>    In file included from include/linux/uuid.h:12:
>    In file included from include/linux/string.h:20:
>    arch/powerpc/include/asm/string.h:21:15: warning: incompatible redeclaration of library function 'strncpy' [-Wincompatible-library-redeclaration]
>    extern char * strncpy(char *,const char *, __kernel_size_t);
>                  ^
>    arch/powerpc/include/asm/string.h:21:15: note: 'strncpy' is a builtin with type 'char *(char *, const char *, unsigned long)'
>    arch/powerpc/include/asm/string.h:22:24: warning: incompatible redeclaration of library function 'strlen' [-Wincompatible-library-redeclaration]
>    extern __kernel_size_t strlen(const char *);
>                           ^
>    arch/powerpc/include/asm/string.h:22:24: note: 'strlen' is a builtin with type 'unsigned long (const char *)'
>    arch/powerpc/include/asm/string.h:24:12: warning: incompatible redeclaration of library function 'strncmp' [-Wincompatible-library-redeclaration]
>    extern int strncmp(const char *, const char *, __kernel_size_t);
>               ^
>    arch/powerpc/include/asm/string.h:24:12: note: 'strncmp' is a builtin with type 'int (const char *, const char *, unsigned long)'
>    arch/powerpc/include/asm/string.h:26:15: warning: incompatible redeclaration of library function 'memset' [-Wincompatible-library-redeclaration]
>    extern void * memset(void *,int,__kernel_size_t);
>                  ^
>    arch/powerpc/include/asm/string.h:26:15: note: 'memset' is a builtin with type 'void *(void *, int, unsigned long)'
>    arch/powerpc/include/asm/string.h:27:15: warning: incompatible redeclaration of library function 'memcpy' [-Wincompatible-library-redeclaration]
>    extern void * memcpy(void *,const void *,__kernel_size_t);
>                  ^
>    arch/powerpc/include/asm/string.h:27:15: note: 'memcpy' is a builtin with type 'void *(void *, const void *, unsigned long)'
>    arch/powerpc/include/asm/string.h:28:15: warning: incompatible redeclaration of library function 'memmove' [-Wincompatible-library-redeclaration]
>    extern void * memmove(void *,const void *,__kernel_size_t);
>                  ^
>    arch/powerpc/include/asm/string.h:28:15: note: 'memmove' is a builtin with type 'void *(void *, const void *, unsigned long)'
>    arch/powerpc/include/asm/string.h:29:12: warning: incompatible redeclaration of library function 'memcmp' [-Wincompatible-library-redeclaration]
>    extern int memcmp(const void *,const void *,__kernel_size_t);
>               ^
>    arch/powerpc/include/asm/string.h:29:12: note: 'memcmp' is a builtin with type 'int (const void *, const void *, unsigned long)'
>    arch/powerpc/include/asm/string.h:30:15: warning: incompatible redeclaration of library function 'memchr' [-Wincompatible-library-redeclaration]
>    extern void * memchr(const void *,int,__kernel_size_t);
>                  ^
>    arch/powerpc/include/asm/string.h:30:15: note: 'memchr' is a builtin with type 'void *(const void *, int, unsigned long)'
>    In file included from scripts/mod/devicetable-offsets.c:3:
>    In file included from include/linux/mod_devicetable.h:13:
>    In file included from include/linux/uuid.h:12:
>    include/linux/string.h:29:8: warning: incompatible redeclaration of library function 'strlcpy' [-Wincompatible-library-redeclaration]
>    size_t strlcpy(char *, const char *, size_t);
>           ^
>    include/linux/string.h:29:8: note: 'strlcpy' is a builtin with type 'unsigned long (char *, const char *, unsigned long)'
>    include/linux/string.h:42:15: warning: incompatible redeclaration of library function 'strncat' [-Wincompatible-library-redeclaration]
>    extern char * strncat(char *, const char *, __kernel_size_t);
>                  ^
>    include/linux/string.h:42:15: note: 'strncat' is a builtin with type 'char *(char *, const char *, unsigned long)'
>    include/linux/string.h:45:15: warning: incompatible redeclaration of library function 'strlcat' [-Wincompatible-library-redeclaration]
>    extern size_t strlcat(char *, const char *, __kernel_size_t);
>                  ^
>    include/linux/string.h:45:15: note: 'strlcat' is a builtin with type 'unsigned long (char *, const char *, unsigned long)'
>    include/linux/string.h:57:12: warning: incompatible redeclaration of library function 'strncasecmp' [-Wincompatible-library-redeclaration]
>    extern int strncasecmp(const char *s1, const char *s2, size_t n);
>               ^
>    include/linux/string.h:57:12: note: 'strncasecmp' is a builtin with type 'int (const char *, const char *, unsigned long)'
>    include/linux/string.h:100:24: warning: incompatible redeclaration of library function 'strspn' [-Wincompatible-library-redeclaration]
>    extern __kernel_size_t strspn(const char *,const char *);
>                           ^
>    include/linux/string.h:100:24: note: 'strspn' is a builtin with type 'unsigned long (const char *, const char *)'
>    include/linux/string.h:103:24: warning: incompatible redeclaration of library function 'strcspn' [-Wincompatible-library-redeclaration]
>    extern __kernel_size_t strcspn(const char *,const char *);
>                           ^
>    include/linux/string.h:103:24: note: 'strcspn' is a builtin with type 'unsigned long (const char *, const char *)'
>    include/linux/string.h:159:12: warning: incompatible redeclaration of library function 'bcmp' [-Wincompatible-library-redeclaration]
>    extern int bcmp(const void *,const void *,__kernel_size_t);
>               ^
>    include/linux/string.h:159:12: note: 'bcmp' is a builtin with type 'int (const void *, const void *, unsigned long)'
>    15 warnings generated.
>    /usr/bin/as: unrecognized option '-mpower4'
> >> clang-11: error: assembler command failed with exit code 1 (use -v to see invocation)
>    make[2]: *** [scripts/Makefile.build:268: scripts/mod/empty.o] Error 1
>    make[2]: Target '__build' not remade because of errors.
>    make[1]: *** [Makefile:1111: prepare0] Error 2
>    make[1]: Target 'prepare' not remade because of errors.
>    make: *** [Makefile:179: sub-make] Error 2
>    13 real  7 user  9 sys  134.10% cpu  make prepare
>
> ---
> 0-DAY CI Kernel Test Service, Intel Corporation
> https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
>
> --
> You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202003191934.oASTv9t3%25lkp%40intel.com.



-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdkdJYMrhWP9SLmyPt%3DVas0rc1Ea4RiwSK24a9WFOB8KcQ%40mail.gmail.com.
