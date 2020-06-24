Return-Path: <clang-built-linux+bncBDYJPJO25UGBBYNXZ73QKGQET5EYJLQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb39.google.com (mail-yb1-xb39.google.com [IPv6:2607:f8b0:4864:20::b39])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DA342096C0
	for <lists+clang-built-linux@lfdr.de>; Thu, 25 Jun 2020 01:04:03 +0200 (CEST)
Received: by mail-yb1-xb39.google.com with SMTP id p22sf3883363ybg.21
        for <lists+clang-built-linux@lfdr.de>; Wed, 24 Jun 2020 16:04:03 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1593039842; cv=pass;
        d=google.com; s=arc-20160816;
        b=OBcokaTrDb2XV7SSS5cu2hh4hyZ2ugev+HG48BtJdHv6WAz44kQwgnyPmXSEmAj/o6
         n/pp876EaH8Ga5ZpLG2OPI3RrYSMMIPWMdwr/t1f+Cyc2erc2PTGqY4Vl+TRN90JaEVv
         Vs5hI+jt/y3RKcSxcSSxIgAc2mLdIB3Ab9w1VX6fB9BSHkEYHVRddODmuMuaU+Uooc/Q
         rad1/EgKSYYUgVtOO0wIXVXpP/DEr+zuURLve0MlNi2leRknbl5gCVgkJVuvh9sULHoo
         1OdrzMRh9rhKl2YQ36TUpoy8DlKsIfyOx96XDl2U9P/nwyWdzToYDnKJjLW1UPSRn6fz
         oadA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=ZEUEfnZXDgfxvtKhjeFcXlgCqdFLvAP9YwkMQa60keA=;
        b=JVBymYup60cTJrsPiyQl9hhGf7spvENTuXTB9LBYrZYPXXqaHaQ7Y3Zm7yZawX5wzQ
         I6pok9WRkFQoW9qwhJLO8Bj0z+8Z9x3UezzD+t61AzzDNuxlaJtniPgBhRnmmSkh3UNC
         B7mcQ2Dvgd9qkzATz0Xuu7SYxIa5Sla2A/2AsWgt5D3qmHzVw3QhIC1imlhkhkeyn90S
         j4MlkhfDUZeYvkXdFggMsrkftE6hA4rdoanuWy3s+wktbnfx08kv7Z/QKJczmxkYI5mm
         Tp4ApT1b5nJUhzk0/NUhaoCOWlqA/dBoQfnoexg+19ZQkJhXK2rL5d7FHAg28sj8h2xp
         p0Jw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=XjWVQf0I;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::543 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ZEUEfnZXDgfxvtKhjeFcXlgCqdFLvAP9YwkMQa60keA=;
        b=bbpE5YGCldLUBoE2bddB9hM6PbJPx/zyICmvDg6mAyoWW6wT9e0nzwxHQUSbIWKgyt
         +bhhRy8CfcemiQLyBRggwme1VfNmni9cN/82BpTixQujYNvjQvzvooGLqfnNBcBqaarR
         ml7qPWx8aEhvn9UrLu1zV4kff5C68LN10OA9HxiTMJbs/pQHtwf9yC0dBB3+P5NwdrWH
         UAYRj5dd2bMNXL/o+KvsfFl+tUVMiQekwndNEhsmZWXcvI+vhQXs1k2JT1GzYjgOMD7N
         qgqIwNgq0Fg3OUzjEHDyQpWZgm4oKjTJO56biweHYHQvDpE19i4D9TWee0jMCdZ1bLLv
         gCBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ZEUEfnZXDgfxvtKhjeFcXlgCqdFLvAP9YwkMQa60keA=;
        b=l0XUduYLOsPurcICCKGyh26LxhcbGEZxqOZvM7jdm0xrMYw+XLYQXLizrd4g8PYRLk
         LKyiiv3/AGfIaTUdPvSp0e1MnuY0KMAiZGAkaBRp9tRQUeegXTl3/F6t0v7pU3f1whbU
         Jk7WHxbXX5yEyANTUMQR38nDUFfV836q6ZmbOC42K2sAHqUFlkBVIxw659ORfQoVNheU
         tLYmvHR9N9pt/nr4Fff1SH7eFNLH0gCcdb1spgR2UTBxWIeUlnzUF8gYZj6OEcIFmxcJ
         WvMiTiUjhfWChpYphF1pwhFQTeZgTpkMZjgvRjBlou3UuSHLJ37FHrMbdqK9zVBA1Ub8
         rdcg==
X-Gm-Message-State: AOAM532G2tuasQO2dfp32iaCEKhMoheTiIG+Aq4L+D/tpPzD5DkNpxtd
	aFdlNZpHuw9je3DCJ5js1qQ=
X-Google-Smtp-Source: ABdhPJwuoUbIbiWm+2RBpvMH6XX/CJ5yVz0tQIMBvJ6kyX/T/iDtav0+WGERKBt3DVlxFL2Wpc3M/Q==
X-Received: by 2002:a25:7811:: with SMTP id t17mr9690461ybc.508.1593039842044;
        Wed, 24 Jun 2020 16:04:02 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5b:44:: with SMTP id e4ls1358459ybp.10.gmail; Wed, 24 Jun
 2020 16:04:01 -0700 (PDT)
X-Received: by 2002:a25:8583:: with SMTP id x3mr52279990ybk.83.1593039841674;
        Wed, 24 Jun 2020 16:04:01 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1593039841; cv=none;
        d=google.com; s=arc-20160816;
        b=jIZidA+qVsxrppU3nxjSB14s5WrudGNbaLkKI5jydouVMW6Hc6UfNnMbRYJob9vmPx
         kRY63wZUepnrrwumPBF3eQwNcv6KJXkHWl8rRQ+L5fp5IexCDMn5MaFUp4MPf8okqdED
         4McDb5fgMU4jZUjXnjihTLjUSMgJyYRK30NMza8N+5O0JVGXywfyFo8nLjBQnWHOyPLy
         fNxS7CEoa/5q8/3FGRwUCELOhqIbxJh4hmlhEZMlaXVcdgCK0k9hOe589tk+D1buJy9L
         +F2UOrKj0mv4ssu4efBjsOOupG2HTwFyk85O9H4F/YPu8AFxJNLXVhc3poQLZTt2KoKu
         SFbQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=h/sT8/G1PH3fexewdru2F1nW3LAaUq5tRdXU1A5a8Jw=;
        b=aiyhKPVYzS+JlFOced7XWOl8dpBybFa6LL7gT/6vZIOgAoSSKFxwsEKo4MMYIzxaIM
         /392klOIYqWj2f7T+IWnYww+FPEh9k2//qK1ENUgP2VacA1T0AVhhq9VLdhH6fWGsMjW
         DAjRMt2Ma/oKxFYIbyoSNVjNcT3KDaDxbZSM05WiiiFWfW9ELKORYvgwtZBMkYfKFo44
         wG0OkPrEl5WgTBy7tUAX7u2affq9Q4lUL19pvveI21JI/Sz6JN+ejrNI59t5u2oiubAJ
         IC+ctP8E9T6pI0Z2vefD1jTHds3Hhw5BTRR9rFPfL/lXF6R+Kcdfmx0HnVBHv735g+Ar
         +nAg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=XjWVQf0I;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::543 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x543.google.com (mail-pg1-x543.google.com. [2607:f8b0:4864:20::543])
        by gmr-mx.google.com with ESMTPS id v16si1784982ybe.2.2020.06.24.16.04.01
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 24 Jun 2020 16:04:01 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::543 as permitted sender) client-ip=2607:f8b0:4864:20::543;
Received: by mail-pg1-x543.google.com with SMTP id e8so2247280pgc.5
        for <clang-built-linux@googlegroups.com>; Wed, 24 Jun 2020 16:04:01 -0700 (PDT)
X-Received: by 2002:a63:7e55:: with SMTP id o21mr13259261pgn.263.1593039840061;
 Wed, 24 Jun 2020 16:04:00 -0700 (PDT)
MIME-Version: 1.0
References: <20200624203200.78870-12-samitolvanen@google.com> <202006250618.DQj64eMK%lkp@intel.com>
In-Reply-To: <202006250618.DQj64eMK%lkp@intel.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Wed, 24 Jun 2020 16:03:48 -0700
Message-ID: <CAKwvOdnREuOmN_Vinn8pn6fxEpjzCM1_=9tDzbd2z884GNLFeA@mail.gmail.com>
Subject: Re: [PATCH 11/22] pci: lto: fix PREL32 relocations
To: kernel test robot <lkp@intel.com>
Cc: Sami Tolvanen <samitolvanen@google.com>, Masahiro Yamada <masahiroy@kernel.org>, 
	Will Deacon <will@kernel.org>, kbuild-all@lists.01.org, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, "Paul E. McKenney" <paulmck@kernel.org>, 
	Kees Cook <keescook@chromium.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Kernel Hardening <kernel-hardening@lists.openwall.com>, 
	linux-arch <linux-arch@vger.kernel.org>, 
	Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=XjWVQf0I;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::543
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

On Wed, Jun 24, 2020 at 3:50 PM kernel test robot <lkp@intel.com> wrote:
>
> Hi Sami,
>
> Thank you for the patch! Perhaps something to improve:
>
> [auto build test WARNING on 26e122e97a3d0390ebec389347f64f3730fdf48f]
>
> url:    https://github.com/0day-ci/linux/commits/Sami-Tolvanen/add-support-for-Clang-LTO/20200625-043816
> base:    26e122e97a3d0390ebec389347f64f3730fdf48f
> config: i386-alldefconfig (attached as .config)
> compiler: gcc-9 (Debian 9.3.0-13) 9.3.0
> reproduce (this is a W=1 build):
>         # save the attached .config to linux build tree
>         make W=1 ARCH=i386

Note: W=1 ^

>
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kernel test robot <lkp@intel.com>
>
> All warnings (new ones prefixed by >>):
>
>    In file included from arch/x86/kernel/pci-dma.c:9:
> >> include/linux/compiler-gcc.h:72:45: warning: no previous prototype for '__UNIQUE_ID_via_no_dac190' [-Wmissing-prototypes]
>       72 | #define __UNIQUE_ID(prefix) __PASTE(__PASTE(__UNIQUE_ID_, prefix), __COUNTER__)
>          |                                             ^~~~~~~~~~~~
>    include/linux/pci.h:1914:7: note: in definition of macro '___DECLARE_PCI_FIXUP_SECTION'
>     1914 |  void stub(struct pci_dev *dev) { hook(dev); }   \
>          |       ^~~~

Should `stub` be qualified as `static inline`? https://godbolt.org/z/cPBXxW
Or should stub be declared in this header, but implemented in a .c
file?  (I'm guessing the former, since the `hook` callback comes from
the macro).

> >> include/linux/pci.h:1928:2: note: in expansion of macro '__DECLARE_PCI_FIXUP_SECTION'
>     1928 |  __DECLARE_PCI_FIXUP_SECTION(sec, name, vendor, device, class, \
>          |  ^~~~~~~~~~~~~~~~~~~~~~~~~~~
> >> include/linux/compiler_types.h:54:22: note: in expansion of macro '___PASTE'
>       54 | #define __PASTE(a,b) ___PASTE(a,b)
>          |                      ^~~~~~~~
> >> include/linux/compiler-gcc.h:72:29: note: in expansion of macro '__PASTE'
>       72 | #define __UNIQUE_ID(prefix) __PASTE(__PASTE(__UNIQUE_ID_, prefix), __COUNTER__)
>          |                             ^~~~~~~
> >> include/linux/compiler_types.h:54:22: note: in expansion of macro '___PASTE'
>       54 | #define __PASTE(a,b) ___PASTE(a,b)
>          |                      ^~~~~~~~
>    include/linux/compiler-gcc.h:72:37: note: in expansion of macro '__PASTE'
>       72 | #define __UNIQUE_ID(prefix) __PASTE(__PASTE(__UNIQUE_ID_, prefix), __COUNTER__)
>          |                                     ^~~~~~~
> >> include/linux/pci.h:1929:26: note: in expansion of macro '__UNIQUE_ID'
>     1929 |       class_shift, hook, __UNIQUE_ID(hook))
>          |                          ^~~~~~~~~~~
> >> include/linux/pci.h:1949:2: note: in expansion of macro 'DECLARE_PCI_FIXUP_SECTION'
>     1949 |  DECLARE_PCI_FIXUP_SECTION(.pci_fixup_final,   \
>          |  ^~~~~~~~~~~~~~~~~~~~~~~~~
> >> arch/x86/kernel/pci-dma.c:154:1: note: in expansion of macro 'DECLARE_PCI_FIXUP_CLASS_FINAL'
>      154 | DECLARE_PCI_FIXUP_CLASS_FINAL(PCI_VENDOR_ID_VIA, PCI_ANY_ID,
>          | ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> --
>    In file included from arch/x86/kernel/quirks.c:6:
> >> include/linux/compiler-gcc.h:72:45: warning: no previous prototype for '__UNIQUE_ID_ich_force_enable_hpet180' [-Wmissing-prototypes]
>       72 | #define __UNIQUE_ID(prefix) __PASTE(__PASTE(__UNIQUE_ID_, prefix), __COUNTER__)
>          |                                             ^~~~~~~~~~~~
>    include/linux/pci.h:1914:7: note: in definition of macro '___DECLARE_PCI_FIXUP_SECTION'
>     1914 |  void stub(struct pci_dev *dev) { hook(dev); }   \
>          |       ^~~~
> >> include/linux/pci.h:1928:2: note: in expansion of macro '__DECLARE_PCI_FIXUP_SECTION'
>     1928 |  __DECLARE_PCI_FIXUP_SECTION(sec, name, vendor, device, class, \
>          |  ^~~~~~~~~~~~~~~~~~~~~~~~~~~
> >> include/linux/compiler_types.h:54:22: note: in expansion of macro '___PASTE'
>       54 | #define __PASTE(a,b) ___PASTE(a,b)
>          |                      ^~~~~~~~
> >> include/linux/compiler-gcc.h:72:29: note: in expansion of macro '__PASTE'
>       72 | #define __UNIQUE_ID(prefix) __PASTE(__PASTE(__UNIQUE_ID_, prefix), __COUNTER__)
>          |                             ^~~~~~~
> >> include/linux/compiler_types.h:54:22: note: in expansion of macro '___PASTE'
>       54 | #define __PASTE(a,b) ___PASTE(a,b)
>          |                      ^~~~~~~~
>    include/linux/compiler-gcc.h:72:37: note: in expansion of macro '__PASTE'
>       72 | #define __UNIQUE_ID(prefix) __PASTE(__PASTE(__UNIQUE_ID_, prefix), __COUNTER__)
>          |                                     ^~~~~~~
> >> include/linux/pci.h:1929:26: note: in expansion of macro '__UNIQUE_ID'
>     1929 |       class_shift, hook, __UNIQUE_ID(hook))
>          |                          ^~~~~~~~~~~
>    include/linux/pci.h:1976:2: note: in expansion of macro 'DECLARE_PCI_FIXUP_SECTION'
>     1976 |  DECLARE_PCI_FIXUP_SECTION(.pci_fixup_header,   \
>          |  ^~~~~~~~~~~~~~~~~~~~~~~~~
> >> arch/x86/kernel/quirks.c:156:1: note: in expansion of macro 'DECLARE_PCI_FIXUP_HEADER'
>      156 | DECLARE_PCI_FIXUP_HEADER(PCI_VENDOR_ID_INTEL, PCI_DEVICE_ID_INTEL_ESB2_0,
>          | ^~~~~~~~~~~~~~~~~~~~~~~~
> >> include/linux/compiler-gcc.h:72:45: warning: no previous prototype for '__UNIQUE_ID_ich_force_enable_hpet181' [-Wmissing-prototypes]
>       72 | #define __UNIQUE_ID(prefix) __PASTE(__PASTE(__UNIQUE_ID_, prefix), __COUNTER__)
>          |                                             ^~~~~~~~~~~~
>    include/linux/pci.h:1914:7: note: in definition of macro '___DECLARE_PCI_FIXUP_SECTION'
>     1914 |  void stub(struct pci_dev *dev) { hook(dev); }   \
>          |       ^~~~
> >> include/linux/pci.h:1928:2: note: in expansion of macro '__DECLARE_PCI_FIXUP_SECTION'
>     1928 |  __DECLARE_PCI_FIXUP_SECTION(sec, name, vendor, device, class, \
>          |  ^~~~~~~~~~~~~~~~~~~~~~~~~~~
> >> include/linux/compiler_types.h:54:22: note: in expansion of macro '___PASTE'
>       54 | #define __PASTE(a,b) ___PASTE(a,b)
>          |                      ^~~~~~~~
> >> include/linux/compiler-gcc.h:72:29: note: in expansion of macro '__PASTE'
>       72 | #define __UNIQUE_ID(prefix) __PASTE(__PASTE(__UNIQUE_ID_, prefix), __COUNTER__)
>          |                             ^~~~~~~
> >> include/linux/compiler_types.h:54:22: note: in expansion of macro '___PASTE'
>       54 | #define __PASTE(a,b) ___PASTE(a,b)
>          |                      ^~~~~~~~
>    include/linux/compiler-gcc.h:72:37: note: in expansion of macro '__PASTE'
>       72 | #define __UNIQUE_ID(prefix) __PASTE(__PASTE(__UNIQUE_ID_, prefix), __COUNTER__)
>          |                                     ^~~~~~~
> >> include/linux/pci.h:1929:26: note: in expansion of macro '__UNIQUE_ID'
>     1929 |       class_shift, hook, __UNIQUE_ID(hook))
>          |                          ^~~~~~~~~~~
>    include/linux/pci.h:1976:2: note: in expansion of macro 'DECLARE_PCI_FIXUP_SECTION'
>     1976 |  DECLARE_PCI_FIXUP_SECTION(.pci_fixup_header,   \
>          |  ^~~~~~~~~~~~~~~~~~~~~~~~~
>    arch/x86/kernel/quirks.c:158:1: note: in expansion of macro 'DECLARE_PCI_FIXUP_HEADER'
>      158 | DECLARE_PCI_FIXUP_HEADER(PCI_VENDOR_ID_INTEL, PCI_DEVICE_ID_INTEL_ICH6_0,
>          | ^~~~~~~~~~~~~~~~~~~~~~~~
> >> include/linux/compiler-gcc.h:72:45: warning: no previous prototype for '__UNIQUE_ID_ich_force_enable_hpet182' [-Wmissing-prototypes]
>       72 | #define __UNIQUE_ID(prefix) __PASTE(__PASTE(__UNIQUE_ID_, prefix), __COUNTER__)
>          |                                             ^~~~~~~~~~~~
>    include/linux/pci.h:1914:7: note: in definition of macro '___DECLARE_PCI_FIXUP_SECTION'
>     1914 |  void stub(struct pci_dev *dev) { hook(dev); }   \
>          |       ^~~~
> >> include/linux/pci.h:1928:2: note: in expansion of macro '__DECLARE_PCI_FIXUP_SECTION'
>     1928 |  __DECLARE_PCI_FIXUP_SECTION(sec, name, vendor, device, class, \
>          |  ^~~~~~~~~~~~~~~~~~~~~~~~~~~
> >> include/linux/compiler_types.h:54:22: note: in expansion of macro '___PASTE'
>       54 | #define __PASTE(a,b) ___PASTE(a,b)
>          |                      ^~~~~~~~
> >> include/linux/compiler-gcc.h:72:29: note: in expansion of macro '__PASTE'
>       72 | #define __UNIQUE_ID(prefix) __PASTE(__PASTE(__UNIQUE_ID_, prefix), __COUNTER__)
>          |                             ^~~~~~~
> >> include/linux/compiler_types.h:54:22: note: in expansion of macro '___PASTE'
>       54 | #define __PASTE(a,b) ___PASTE(a,b)
>          |                      ^~~~~~~~
>    include/linux/compiler-gcc.h:72:37: note: in expansion of macro '__PASTE'
>       72 | #define __UNIQUE_ID(prefix) __PASTE(__PASTE(__UNIQUE_ID_, prefix), __COUNTER__)
>          |                                     ^~~~~~~
> >> include/linux/pci.h:1929:26: note: in expansion of macro '__UNIQUE_ID'
>     1929 |       class_shift, hook, __UNIQUE_ID(hook))
>          |                          ^~~~~~~~~~~
>    include/linux/pci.h:1976:2: note: in expansion of macro 'DECLARE_PCI_FIXUP_SECTION'
>     1976 |  DECLARE_PCI_FIXUP_SECTION(.pci_fixup_header,   \
>          |  ^~~~~~~~~~~~~~~~~~~~~~~~~
>    arch/x86/kernel/quirks.c:160:1: note: in expansion of macro 'DECLARE_PCI_FIXUP_HEADER'
>      160 | DECLARE_PCI_FIXUP_HEADER(PCI_VENDOR_ID_INTEL, PCI_DEVICE_ID_INTEL_ICH6_1,
>          | ^~~~~~~~~~~~~~~~~~~~~~~~
> >> include/linux/compiler-gcc.h:72:45: warning: no previous prototype for '__UNIQUE_ID_ich_force_enable_hpet183' [-Wmissing-prototypes]
>       72 | #define __UNIQUE_ID(prefix) __PASTE(__PASTE(__UNIQUE_ID_, prefix), __COUNTER__)
>          |                                             ^~~~~~~~~~~~
>    include/linux/pci.h:1914:7: note: in definition of macro '___DECLARE_PCI_FIXUP_SECTION'
>     1914 |  void stub(struct pci_dev *dev) { hook(dev); }   \
>          |       ^~~~
>    include/linux/pci.h:1928:2: note: in expansion of macro '__DECLARE_PCI_FIXUP_SECTION'
>     1928 |  __DECLARE_PCI_FIXUP_SECTION(sec, name, vendor, device, class, \
>          |  ^~~~~~~~~~~~~~~~~~~~~~~~~~~
>    include/linux/compiler_types.h:54:22: note: in expansion of macro '___PASTE'
>       54 | #define __PASTE(a,b) ___PASTE(a,b)
>          |                      ^~~~~~~~
>    include/linux/compiler-gcc.h:72:29: note: in expansion of macro '__PASTE'
>       72 | #define __UNIQUE_ID(prefix) __PASTE(__PASTE(__UNIQUE_ID_, prefix), __COUNTER__)
>          |                             ^~~~~~~
>    include/linux/compiler_types.h:54:22: note: in expansion of macro '___PASTE'
>       54 | #define __PASTE(a,b) ___PASTE(a,b)
>          |                      ^~~~~~~~
>    include/linux/compiler-gcc.h:72:37: note: in expansion of macro '__PASTE'
>       72 | #define __UNIQUE_ID(prefix) __PASTE(__PASTE(__UNIQUE_ID_, prefix), __COUNTER__)
>          |                                     ^~~~~~~
>    include/linux/pci.h:1929:26: note: in expansion of macro '__UNIQUE_ID'
>     1929 |       class_shift, hook, __UNIQUE_ID(hook))
>          |                          ^~~~~~~~~~~
>    include/linux/pci.h:1976:2: note: in expansion of macro 'DECLARE_PCI_FIXUP_SECTION'
>     1976 |  DECLARE_PCI_FIXUP_SECTION(.pci_fixup_header,   \
>          |  ^~~~~~~~~~~~~~~~~~~~~~~~~
>    arch/x86/kernel/quirks.c:162:1: note: in expansion of macro 'DECLARE_PCI_FIXUP_HEADER'
>      162 | DECLARE_PCI_FIXUP_HEADER(PCI_VENDOR_ID_INTEL, PCI_DEVICE_ID_INTEL_ICH7_0,
>          | ^~~~~~~~~~~~~~~~~~~~~~~~
>    include/linux/compiler-gcc.h:72:45: warning: no previous prototype for '__UNIQUE_ID_ich_force_enable_hpet184' [-Wmissing-prototypes]
>       72 | #define __UNIQUE_ID(prefix) __PASTE(__PASTE(__UNIQUE_ID_, prefix), __COUNTER__)
>          |                                             ^~~~~~~~~~~~
>    include/linux/pci.h:1914:7: note: in definition of macro '___DECLARE_PCI_FIXUP_SECTION'
>     1914 |  void stub(struct pci_dev *dev) { hook(dev); }   \
>          |       ^~~~
>    include/linux/pci.h:1928:2: note: in expansion of macro '__DECLARE_PCI_FIXUP_SECTION'
>     1928 |  __DECLARE_PCI_FIXUP_SECTION(sec, name, vendor, device, class, \
>          |  ^~~~~~~~~~~~~~~~~~~~~~~~~~~
>    include/linux/compiler_types.h:54:22: note: in expansion of macro '___PASTE'
>       54 | #define __PASTE(a,b) ___PASTE(a,b)
>          |                      ^~~~~~~~
>    include/linux/compiler-gcc.h:72:29: note: in expansion of macro '__PASTE'
>       72 | #define __UNIQUE_ID(prefix) __PASTE(__PASTE(__UNIQUE_ID_, prefix), __COUNTER__)
>          |                             ^~~~~~~
>    include/linux/compiler_types.h:54:22: note: in expansion of macro '___PASTE'
>       54 | #define __PASTE(a,b) ___PASTE(a,b)
>          |                      ^~~~~~~~
>    include/linux/compiler-gcc.h:72:37: note: in expansion of macro '__PASTE'
>       72 | #define __UNIQUE_ID(prefix) __PASTE(__PASTE(__UNIQUE_ID_, prefix), __COUNTER__)
>          |                                     ^~~~~~~
>    include/linux/pci.h:1929:26: note: in expansion of macro '__UNIQUE_ID'
>     1929 |       class_shift, hook, __UNIQUE_ID(hook))
>          |                          ^~~~~~~~~~~
>    include/linux/pci.h:1976:2: note: in expansion of macro 'DECLARE_PCI_FIXUP_SECTION'
>     1976 |  DECLARE_PCI_FIXUP_SECTION(.pci_fixup_header,   \
>          |  ^~~~~~~~~~~~~~~~~~~~~~~~~
>    arch/x86/kernel/quirks.c:164:1: note: in expansion of macro 'DECLARE_PCI_FIXUP_HEADER'
>      164 | DECLARE_PCI_FIXUP_HEADER(PCI_VENDOR_ID_INTEL, PCI_DEVICE_ID_INTEL_ICH7_1,
>          | ^~~~~~~~~~~~~~~~~~~~~~~~
>    include/linux/compiler-gcc.h:72:45: warning: no previous prototype for '__UNIQUE_ID_ich_force_enable_hpet185' [-Wmissing-prototypes]
>       72 | #define __UNIQUE_ID(prefix) __PASTE(__PASTE(__UNIQUE_ID_, prefix), __COUNTER__)
>          |                                             ^~~~~~~~~~~~
>    include/linux/pci.h:1914:7: note: in definition of macro '___DECLARE_PCI_FIXUP_SECTION'
>     1914 |  void stub(struct pci_dev *dev) { hook(dev); }   \
>          |       ^~~~
>    include/linux/pci.h:1928:2: note: in expansion of macro '__DECLARE_PCI_FIXUP_SECTION'
>     1928 |  __DECLARE_PCI_FIXUP_SECTION(sec, name, vendor, device, class, \
>          |  ^~~~~~~~~~~~~~~~~~~~~~~~~~~
>    include/linux/compiler_types.h:54:22: note: in expansion of macro '___PASTE'
>       54 | #define __PASTE(a,b) ___PASTE(a,b)
>          |                      ^~~~~~~~
>    include/linux/compiler-gcc.h:72:29: note: in expansion of macro '__PASTE'
>       72 | #define __UNIQUE_ID(prefix) __PASTE(__PASTE(__UNIQUE_ID_, prefix), __COUNTER__)
>          |                             ^~~~~~~
>    include/linux/compiler_types.h:54:22: note: in expansion of macro '___PASTE'
>       54 | #define __PASTE(a,b) ___PASTE(a,b)
>          |                      ^~~~~~~~
>    include/linux/compiler-gcc.h:72:37: note: in expansion of macro '__PASTE'
>       72 | #define __UNIQUE_ID(prefix) __PASTE(__PASTE(__UNIQUE_ID_, prefix), __COUNTER__)
>          |                                     ^~~~~~~
>    include/linux/pci.h:1929:26: note: in expansion of macro '__UNIQUE_ID'
>     1929 |       class_shift, hook, __UNIQUE_ID(hook))
>          |                          ^~~~~~~~~~~
>    include/linux/pci.h:1976:2: note: in expansion of macro 'DECLARE_PCI_FIXUP_SECTION'
>     1976 |  DECLARE_PCI_FIXUP_SECTION(.pci_fixup_header,   \
>          |  ^~~~~~~~~~~~~~~~~~~~~~~~~
>    arch/x86/kernel/quirks.c:166:1: note: in expansion of macro 'DECLARE_PCI_FIXUP_HEADER'
>      166 | DECLARE_PCI_FIXUP_HEADER(PCI_VENDOR_ID_INTEL, PCI_DEVICE_ID_INTEL_ICH7_31,
>          | ^~~~~~~~~~~~~~~~~~~~~~~~
>    include/linux/compiler-gcc.h:72:45: warning: no previous prototype for '__UNIQUE_ID_ich_force_enable_hpet186' [-Wmissing-prototypes]
>       72 | #define __UNIQUE_ID(prefix) __PASTE(__PASTE(__UNIQUE_ID_, prefix), __COUNTER__)
>          |                                             ^~~~~~~~~~~~
>    include/linux/pci.h:1914:7: note: in definition of macro '___DECLARE_PCI_FIXUP_SECTION'
>     1914 |  void stub(struct pci_dev *dev) { hook(dev); }   \
>          |       ^~~~
>    include/linux/pci.h:1928:2: note: in expansion of macro '__DECLARE_PCI_FIXUP_SECTION'
>     1928 |  __DECLARE_PCI_FIXUP_SECTION(sec, name, vendor, device, class, \
>          |  ^~~~~~~~~~~~~~~~~~~~~~~~~~~
>    include/linux/compiler_types.h:54:22: note: in expansion of macro '___PASTE'
>       54 | #define __PASTE(a,b) ___PASTE(a,b)
> --
>    In file included from drivers/pci/vpd.c:8:
> >> include/linux/compiler-gcc.h:72:45: warning: no previous prototype for '__UNIQUE_ID_quirk_f0_vpd_link180' [-Wmissing-prototypes]
>       72 | #define __UNIQUE_ID(prefix) __PASTE(__PASTE(__UNIQUE_ID_, prefix), __COUNTER__)
>          |                                             ^~~~~~~~~~~~
>    include/linux/pci.h:1914:7: note: in definition of macro '___DECLARE_PCI_FIXUP_SECTION'
>     1914 |  void stub(struct pci_dev *dev) { hook(dev); }   \
>          |       ^~~~
> >> include/linux/pci.h:1928:2: note: in expansion of macro '__DECLARE_PCI_FIXUP_SECTION'
>     1928 |  __DECLARE_PCI_FIXUP_SECTION(sec, name, vendor, device, class, \
>          |  ^~~~~~~~~~~~~~~~~~~~~~~~~~~
> >> include/linux/compiler_types.h:54:22: note: in expansion of macro '___PASTE'
>       54 | #define __PASTE(a,b) ___PASTE(a,b)
>          |                      ^~~~~~~~
> >> include/linux/compiler-gcc.h:72:29: note: in expansion of macro '__PASTE'
>       72 | #define __UNIQUE_ID(prefix) __PASTE(__PASTE(__UNIQUE_ID_, prefix), __COUNTER__)
>          |                             ^~~~~~~
> >> include/linux/compiler_types.h:54:22: note: in expansion of macro '___PASTE'
>       54 | #define __PASTE(a,b) ___PASTE(a,b)
>          |                      ^~~~~~~~
>    include/linux/compiler-gcc.h:72:37: note: in expansion of macro '__PASTE'
>       72 | #define __UNIQUE_ID(prefix) __PASTE(__PASTE(__UNIQUE_ID_, prefix), __COUNTER__)
>          |                                     ^~~~~~~
> >> include/linux/pci.h:1929:26: note: in expansion of macro '__UNIQUE_ID'
>     1929 |       class_shift, hook, __UNIQUE_ID(hook))
>          |                          ^~~~~~~~~~~
>    include/linux/pci.h:1941:2: note: in expansion of macro 'DECLARE_PCI_FIXUP_SECTION'
>     1941 |  DECLARE_PCI_FIXUP_SECTION(.pci_fixup_early,   \
>          |  ^~~~~~~~~~~~~~~~~~~~~~~~~
> >> drivers/pci/vpd.c:543:1: note: in expansion of macro 'DECLARE_PCI_FIXUP_CLASS_EARLY'
>      543 | DECLARE_PCI_FIXUP_CLASS_EARLY(PCI_VENDOR_ID_INTEL, PCI_ANY_ID,
>          | ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> >> include/linux/compiler-gcc.h:72:45: warning: no previous prototype for '__UNIQUE_ID_quirk_blacklist_vpd181' [-Wmissing-prototypes]
>       72 | #define __UNIQUE_ID(prefix) __PASTE(__PASTE(__UNIQUE_ID_, prefix), __COUNTER__)
>          |                                             ^~~~~~~~~~~~
>    include/linux/pci.h:1914:7: note: in definition of macro '___DECLARE_PCI_FIXUP_SECTION'
>     1914 |  void stub(struct pci_dev *dev) { hook(dev); }   \
>          |       ^~~~
> >> include/linux/pci.h:1928:2: note: in expansion of macro '__DECLARE_PCI_FIXUP_SECTION'
>     1928 |  __DECLARE_PCI_FIXUP_SECTION(sec, name, vendor, device, class, \
>          |  ^~~~~~~~~~~~~~~~~~~~~~~~~~~
> >> include/linux/compiler_types.h:54:22: note: in expansion of macro '___PASTE'
>       54 | #define __PASTE(a,b) ___PASTE(a,b)
>          |                      ^~~~~~~~
> >> include/linux/compiler-gcc.h:72:29: note: in expansion of macro '__PASTE'
>       72 | #define __UNIQUE_ID(prefix) __PASTE(__PASTE(__UNIQUE_ID_, prefix), __COUNTER__)
>          |                             ^~~~~~~
> >> include/linux/compiler_types.h:54:22: note: in expansion of macro '___PASTE'
>       54 | #define __PASTE(a,b) ___PASTE(a,b)
>          |                      ^~~~~~~~
>    include/linux/compiler-gcc.h:72:37: note: in expansion of macro '__PASTE'
>       72 | #define __UNIQUE_ID(prefix) __PASTE(__PASTE(__UNIQUE_ID_, prefix), __COUNTER__)
>          |                                     ^~~~~~~
> >> include/linux/pci.h:1929:26: note: in expansion of macro '__UNIQUE_ID'
>     1929 |       class_shift, hook, __UNIQUE_ID(hook))
>          |                          ^~~~~~~~~~~
>    include/linux/pci.h:1979:2: note: in expansion of macro 'DECLARE_PCI_FIXUP_SECTION'
>     1979 |  DECLARE_PCI_FIXUP_SECTION(.pci_fixup_final,   \
>          |  ^~~~~~~~~~~~~~~~~~~~~~~~~
> >> drivers/pci/vpd.c:560:1: note: in expansion of macro 'DECLARE_PCI_FIXUP_FINAL'
>      560 | DECLARE_PCI_FIXUP_FINAL(PCI_VENDOR_ID_LSI_LOGIC, 0x0060, quirk_blacklist_vpd);
>          | ^~~~~~~~~~~~~~~~~~~~~~~
> >> include/linux/compiler-gcc.h:72:45: warning: no previous prototype for '__UNIQUE_ID_quirk_blacklist_vpd182' [-Wmissing-prototypes]
>       72 | #define __UNIQUE_ID(prefix) __PASTE(__PASTE(__UNIQUE_ID_, prefix), __COUNTER__)
>          |                                             ^~~~~~~~~~~~
>    include/linux/pci.h:1914:7: note: in definition of macro '___DECLARE_PCI_FIXUP_SECTION'
>     1914 |  void stub(struct pci_dev *dev) { hook(dev); }   \
>          |       ^~~~
> >> include/linux/pci.h:1928:2: note: in expansion of macro '__DECLARE_PCI_FIXUP_SECTION'
>     1928 |  __DECLARE_PCI_FIXUP_SECTION(sec, name, vendor, device, class, \
>          |  ^~~~~~~~~~~~~~~~~~~~~~~~~~~
> >> include/linux/compiler_types.h:54:22: note: in expansion of macro '___PASTE'
>       54 | #define __PASTE(a,b) ___PASTE(a,b)
>          |                      ^~~~~~~~
> >> include/linux/compiler-gcc.h:72:29: note: in expansion of macro '__PASTE'
>       72 | #define __UNIQUE_ID(prefix) __PASTE(__PASTE(__UNIQUE_ID_, prefix), __COUNTER__)
>          |                             ^~~~~~~
> >> include/linux/compiler_types.h:54:22: note: in expansion of macro '___PASTE'
>       54 | #define __PASTE(a,b) ___PASTE(a,b)
>          |                      ^~~~~~~~
>    include/linux/compiler-gcc.h:72:37: note: in expansion of macro '__PASTE'
>       72 | #define __UNIQUE_ID(prefix) __PASTE(__PASTE(__UNIQUE_ID_, prefix), __COUNTER__)
>          |                                     ^~~~~~~
> >> include/linux/pci.h:1929:26: note: in expansion of macro '__UNIQUE_ID'
>     1929 |       class_shift, hook, __UNIQUE_ID(hook))
>          |                          ^~~~~~~~~~~
>    include/linux/pci.h:1979:2: note: in expansion of macro 'DECLARE_PCI_FIXUP_SECTION'
>     1979 |  DECLARE_PCI_FIXUP_SECTION(.pci_fixup_final,   \
>          |  ^~~~~~~~~~~~~~~~~~~~~~~~~
>    drivers/pci/vpd.c:561:1: note: in expansion of macro 'DECLARE_PCI_FIXUP_FINAL'
>      561 | DECLARE_PCI_FIXUP_FINAL(PCI_VENDOR_ID_LSI_LOGIC, 0x007c, quirk_blacklist_vpd);
>          | ^~~~~~~~~~~~~~~~~~~~~~~
>    include/linux/compiler-gcc.h:72:45: warning: no previous prototype for '__UNIQUE_ID_quirk_blacklist_vpd183' [-Wmissing-prototypes]
>       72 | #define __UNIQUE_ID(prefix) __PASTE(__PASTE(__UNIQUE_ID_, prefix), __COUNTER__)
>          |                                             ^~~~~~~~~~~~
>    include/linux/pci.h:1914:7: note: in definition of macro '___DECLARE_PCI_FIXUP_SECTION'
>     1914 |  void stub(struct pci_dev *dev) { hook(dev); }   \
>          |       ^~~~
>    include/linux/pci.h:1928:2: note: in expansion of macro '__DECLARE_PCI_FIXUP_SECTION'
>     1928 |  __DECLARE_PCI_FIXUP_SECTION(sec, name, vendor, device, class, \
>          |  ^~~~~~~~~~~~~~~~~~~~~~~~~~~
>    include/linux/compiler_types.h:54:22: note: in expansion of macro '___PASTE'
>       54 | #define __PASTE(a,b) ___PASTE(a,b)
>          |                      ^~~~~~~~
>    include/linux/compiler-gcc.h:72:29: note: in expansion of macro '__PASTE'
>       72 | #define __UNIQUE_ID(prefix) __PASTE(__PASTE(__UNIQUE_ID_, prefix), __COUNTER__)
>          |                             ^~~~~~~
>    include/linux/compiler_types.h:54:22: note: in expansion of macro '___PASTE'
>       54 | #define __PASTE(a,b) ___PASTE(a,b)
>          |                      ^~~~~~~~
>    include/linux/compiler-gcc.h:72:37: note: in expansion of macro '__PASTE'
>       72 | #define __UNIQUE_ID(prefix) __PASTE(__PASTE(__UNIQUE_ID_, prefix), __COUNTER__)
>          |                                     ^~~~~~~
>    include/linux/pci.h:1929:26: note: in expansion of macro '__UNIQUE_ID'
>     1929 |       class_shift, hook, __UNIQUE_ID(hook))
>          |                          ^~~~~~~~~~~
>    include/linux/pci.h:1979:2: note: in expansion of macro 'DECLARE_PCI_FIXUP_SECTION'
>     1979 |  DECLARE_PCI_FIXUP_SECTION(.pci_fixup_final,   \
>          |  ^~~~~~~~~~~~~~~~~~~~~~~~~
>    drivers/pci/vpd.c:562:1: note: in expansion of macro 'DECLARE_PCI_FIXUP_FINAL'
>      562 | DECLARE_PCI_FIXUP_FINAL(PCI_VENDOR_ID_LSI_LOGIC, 0x0413, quirk_blacklist_vpd);
>          | ^~~~~~~~~~~~~~~~~~~~~~~
>    include/linux/compiler-gcc.h:72:45: warning: no previous prototype for '__UNIQUE_ID_quirk_blacklist_vpd184' [-Wmissing-prototypes]
>       72 | #define __UNIQUE_ID(prefix) __PASTE(__PASTE(__UNIQUE_ID_, prefix), __COUNTER__)
>          |                                             ^~~~~~~~~~~~
>    include/linux/pci.h:1914:7: note: in definition of macro '___DECLARE_PCI_FIXUP_SECTION'
>     1914 |  void stub(struct pci_dev *dev) { hook(dev); }   \
>          |       ^~~~
>    include/linux/pci.h:1928:2: note: in expansion of macro '__DECLARE_PCI_FIXUP_SECTION'
>     1928 |  __DECLARE_PCI_FIXUP_SECTION(sec, name, vendor, device, class, \
>          |  ^~~~~~~~~~~~~~~~~~~~~~~~~~~
>    include/linux/compiler_types.h:54:22: note: in expansion of macro '___PASTE'
>       54 | #define __PASTE(a,b) ___PASTE(a,b)
>          |                      ^~~~~~~~
>    include/linux/compiler-gcc.h:72:29: note: in expansion of macro '__PASTE'
>       72 | #define __UNIQUE_ID(prefix) __PASTE(__PASTE(__UNIQUE_ID_, prefix), __COUNTER__)
>          |                             ^~~~~~~
>    include/linux/compiler_types.h:54:22: note: in expansion of macro '___PASTE'
>       54 | #define __PASTE(a,b) ___PASTE(a,b)
>          |                      ^~~~~~~~
>    include/linux/compiler-gcc.h:72:37: note: in expansion of macro '__PASTE'
>       72 | #define __UNIQUE_ID(prefix) __PASTE(__PASTE(__UNIQUE_ID_, prefix), __COUNTER__)
>          |                                     ^~~~~~~
>    include/linux/pci.h:1929:26: note: in expansion of macro '__UNIQUE_ID'
>     1929 |       class_shift, hook, __UNIQUE_ID(hook))
>          |                          ^~~~~~~~~~~
>    include/linux/pci.h:1979:2: note: in expansion of macro 'DECLARE_PCI_FIXUP_SECTION'
>     1979 |  DECLARE_PCI_FIXUP_SECTION(.pci_fixup_final,   \
>          |  ^~~~~~~~~~~~~~~~~~~~~~~~~
>    drivers/pci/vpd.c:563:1: note: in expansion of macro 'DECLARE_PCI_FIXUP_FINAL'
>      563 | DECLARE_PCI_FIXUP_FINAL(PCI_VENDOR_ID_LSI_LOGIC, 0x0078, quirk_blacklist_vpd);
>          | ^~~~~~~~~~~~~~~~~~~~~~~
>    include/linux/compiler-gcc.h:72:45: warning: no previous prototype for '__UNIQUE_ID_quirk_blacklist_vpd185' [-Wmissing-prototypes]
>       72 | #define __UNIQUE_ID(prefix) __PASTE(__PASTE(__UNIQUE_ID_, prefix), __COUNTER__)
>          |                                             ^~~~~~~~~~~~
>    include/linux/pci.h:1914:7: note: in definition of macro '___DECLARE_PCI_FIXUP_SECTION'
>     1914 |  void stub(struct pci_dev *dev) { hook(dev); }   \
>          |       ^~~~
>    include/linux/pci.h:1928:2: note: in expansion of macro '__DECLARE_PCI_FIXUP_SECTION'
>     1928 |  __DECLARE_PCI_FIXUP_SECTION(sec, name, vendor, device, class, \
>          |  ^~~~~~~~~~~~~~~~~~~~~~~~~~~
>    include/linux/compiler_types.h:54:22: note: in expansion of macro '___PASTE'
>       54 | #define __PASTE(a,b) ___PASTE(a,b)
>          |                      ^~~~~~~~
>    include/linux/compiler-gcc.h:72:29: note: in expansion of macro '__PASTE'
>       72 | #define __UNIQUE_ID(prefix) __PASTE(__PASTE(__UNIQUE_ID_, prefix), __COUNTER__)
>          |                             ^~~~~~~
>    include/linux/compiler_types.h:54:22: note: in expansion of macro '___PASTE'
>       54 | #define __PASTE(a,b) ___PASTE(a,b)
>          |                      ^~~~~~~~
>    include/linux/compiler-gcc.h:72:37: note: in expansion of macro '__PASTE'
>       72 | #define __UNIQUE_ID(prefix) __PASTE(__PASTE(__UNIQUE_ID_, prefix), __COUNTER__)
>          |                                     ^~~~~~~
>    include/linux/pci.h:1929:26: note: in expansion of macro '__UNIQUE_ID'
>     1929 |       class_shift, hook, __UNIQUE_ID(hook))
>          |                          ^~~~~~~~~~~
>    include/linux/pci.h:1979:2: note: in expansion of macro 'DECLARE_PCI_FIXUP_SECTION'
>     1979 |  DECLARE_PCI_FIXUP_SECTION(.pci_fixup_final,   \
>          |  ^~~~~~~~~~~~~~~~~~~~~~~~~
>    drivers/pci/vpd.c:564:1: note: in expansion of macro 'DECLARE_PCI_FIXUP_FINAL'
>      564 | DECLARE_PCI_FIXUP_FINAL(PCI_VENDOR_ID_LSI_LOGIC, 0x0079, quirk_blacklist_vpd);
>          | ^~~~~~~~~~~~~~~~~~~~~~~
>    include/linux/compiler-gcc.h:72:45: warning: no previous prototype for '__UNIQUE_ID_quirk_blacklist_vpd186' [-Wmissing-prototypes]
>       72 | #define __UNIQUE_ID(prefix) __PASTE(__PASTE(__UNIQUE_ID_, prefix), __COUNTER__)
> ..
>
> vim +/__DECLARE_PCI_FIXUP_SECTION +1928 include/linux/pci.h
>
> ^1da177e4c3f415 Linus Torvalds 2005-04-16  1910
> c9d8b55fa019162 Ard Biesheuvel 2018-08-21  1911  #ifdef CONFIG_HAVE_ARCH_PREL32_RELOCATIONS
> b1b820bb0420d08 Sami Tolvanen  2020-06-24  1912  #define ___DECLARE_PCI_FIXUP_SECTION(sec, name, vendor, device, class, \
> b1b820bb0420d08 Sami Tolvanen  2020-06-24  1913                                     class_shift, hook, stub)            \
> b1b820bb0420d08 Sami Tolvanen  2020-06-24 @1914         void stub(struct pci_dev *dev) { hook(dev); }                   \
> c9d8b55fa019162 Ard Biesheuvel 2018-08-21  1915         asm(".section " #sec ", \"a\"                           \n"     \
> c9d8b55fa019162 Ard Biesheuvel 2018-08-21  1916             ".balign    16                                      \n"     \
> c9d8b55fa019162 Ard Biesheuvel 2018-08-21  1917             ".short "   #vendor ", " #device "                  \n"     \
> c9d8b55fa019162 Ard Biesheuvel 2018-08-21  1918             ".long "    #class ", " #class_shift "              \n"     \
> b1b820bb0420d08 Sami Tolvanen  2020-06-24  1919             ".long "    #stub " - .                             \n"     \
> c9d8b55fa019162 Ard Biesheuvel 2018-08-21  1920             ".previous                                          \n");
> b1b820bb0420d08 Sami Tolvanen  2020-06-24  1921
> b1b820bb0420d08 Sami Tolvanen  2020-06-24  1922  #define __DECLARE_PCI_FIXUP_SECTION(sec, name, vendor, device, class,  \
> b1b820bb0420d08 Sami Tolvanen  2020-06-24  1923                                   class_shift, hook, stub)              \
> b1b820bb0420d08 Sami Tolvanen  2020-06-24  1924         ___DECLARE_PCI_FIXUP_SECTION(sec, name, vendor, device, class,  \
> b1b820bb0420d08 Sami Tolvanen  2020-06-24  1925                                   class_shift, hook, stub)
> c9d8b55fa019162 Ard Biesheuvel 2018-08-21  1926  #define DECLARE_PCI_FIXUP_SECTION(sec, name, vendor, device, class,    \
> c9d8b55fa019162 Ard Biesheuvel 2018-08-21  1927                                   class_shift, hook)                    \
> c9d8b55fa019162 Ard Biesheuvel 2018-08-21 @1928         __DECLARE_PCI_FIXUP_SECTION(sec, name, vendor, device, class,   \
> b1b820bb0420d08 Sami Tolvanen  2020-06-24 @1929                                   class_shift, hook, __UNIQUE_ID(hook))
> c9d8b55fa019162 Ard Biesheuvel 2018-08-21  1930  #else
> ^1da177e4c3f415 Linus Torvalds 2005-04-16  1931  /* Anonymous variables would be nice... */
> f4ca5c6a56278ca Yinghai Lu     2012-02-23  1932  #define DECLARE_PCI_FIXUP_SECTION(section, name, vendor, device, class,        \
> f4ca5c6a56278ca Yinghai Lu     2012-02-23  1933                                   class_shift, hook)                    \
> ecf61c78bd787b9 Michal Marek   2013-11-11  1934         static const struct pci_fixup __PASTE(__pci_fixup_##name,__LINE__) __used       \
> f4ca5c6a56278ca Yinghai Lu     2012-02-23  1935         __attribute__((__section__(#section), aligned((sizeof(void *)))))    \
> f4ca5c6a56278ca Yinghai Lu     2012-02-23  1936                 = { vendor, device, class, class_shift, hook };
> c9d8b55fa019162 Ard Biesheuvel 2018-08-21  1937  #endif
> f4ca5c6a56278ca Yinghai Lu     2012-02-23  1938
> f4ca5c6a56278ca Yinghai Lu     2012-02-23  1939  #define DECLARE_PCI_FIXUP_CLASS_EARLY(vendor, device, class,           \
> f4ca5c6a56278ca Yinghai Lu     2012-02-23  1940                                          class_shift, hook)             \
> f4ca5c6a56278ca Yinghai Lu     2012-02-23  1941         DECLARE_PCI_FIXUP_SECTION(.pci_fixup_early,                     \
> ecf61c78bd787b9 Michal Marek   2013-11-11  1942                 hook, vendor, device, class, class_shift, hook)
> f4ca5c6a56278ca Yinghai Lu     2012-02-23  1943  #define DECLARE_PCI_FIXUP_CLASS_HEADER(vendor, device, class,          \
> f4ca5c6a56278ca Yinghai Lu     2012-02-23  1944                                          class_shift, hook)             \
> f4ca5c6a56278ca Yinghai Lu     2012-02-23  1945         DECLARE_PCI_FIXUP_SECTION(.pci_fixup_header,                    \
> ecf61c78bd787b9 Michal Marek   2013-11-11  1946                 hook, vendor, device, class, class_shift, hook)
> f4ca5c6a56278ca Yinghai Lu     2012-02-23  1947  #define DECLARE_PCI_FIXUP_CLASS_FINAL(vendor, device, class,           \
> f4ca5c6a56278ca Yinghai Lu     2012-02-23  1948                                          class_shift, hook)             \
> f4ca5c6a56278ca Yinghai Lu     2012-02-23 @1949         DECLARE_PCI_FIXUP_SECTION(.pci_fixup_final,                     \
> ecf61c78bd787b9 Michal Marek   2013-11-11  1950                 hook, vendor, device, class, class_shift, hook)
> f4ca5c6a56278ca Yinghai Lu     2012-02-23  1951  #define DECLARE_PCI_FIXUP_CLASS_ENABLE(vendor, device, class,          \
> f4ca5c6a56278ca Yinghai Lu     2012-02-23  1952                                          class_shift, hook)             \
> f4ca5c6a56278ca Yinghai Lu     2012-02-23  1953         DECLARE_PCI_FIXUP_SECTION(.pci_fixup_enable,                    \
> ecf61c78bd787b9 Michal Marek   2013-11-11  1954                 hook, vendor, device, class, class_shift, hook)
> f4ca5c6a56278ca Yinghai Lu     2012-02-23  1955  #define DECLARE_PCI_FIXUP_CLASS_RESUME(vendor, device, class,          \
> f4ca5c6a56278ca Yinghai Lu     2012-02-23  1956                                          class_shift, hook)             \
> f4ca5c6a56278ca Yinghai Lu     2012-02-23  1957         DECLARE_PCI_FIXUP_SECTION(.pci_fixup_resume,                    \
> 0aa0f5d1084ca1c Bjorn Helgaas  2017-12-02  1958                 resume##hook, vendor, device, class, class_shift, hook)
> f4ca5c6a56278ca Yinghai Lu     2012-02-23  1959  #define DECLARE_PCI_FIXUP_CLASS_RESUME_EARLY(vendor, device, class,    \
> f4ca5c6a56278ca Yinghai Lu     2012-02-23  1960                                          class_shift, hook)             \
> f4ca5c6a56278ca Yinghai Lu     2012-02-23  1961         DECLARE_PCI_FIXUP_SECTION(.pci_fixup_resume_early,              \
> 0aa0f5d1084ca1c Bjorn Helgaas  2017-12-02  1962                 resume_early##hook, vendor, device, class, class_shift, hook)
> f4ca5c6a56278ca Yinghai Lu     2012-02-23  1963  #define DECLARE_PCI_FIXUP_CLASS_SUSPEND(vendor, device, class,         \
> f4ca5c6a56278ca Yinghai Lu     2012-02-23  1964                                          class_shift, hook)             \
> f4ca5c6a56278ca Yinghai Lu     2012-02-23  1965         DECLARE_PCI_FIXUP_SECTION(.pci_fixup_suspend,                   \
> 0aa0f5d1084ca1c Bjorn Helgaas  2017-12-02  1966                 suspend##hook, vendor, device, class, class_shift, hook)
> 7d2a01b87f1682f Andreas Noever 2014-06-03  1967  #define DECLARE_PCI_FIXUP_CLASS_SUSPEND_LATE(vendor, device, class,    \
> 7d2a01b87f1682f Andreas Noever 2014-06-03  1968                                          class_shift, hook)             \
> 7d2a01b87f1682f Andreas Noever 2014-06-03  1969         DECLARE_PCI_FIXUP_SECTION(.pci_fixup_suspend_late,              \
> 0aa0f5d1084ca1c Bjorn Helgaas  2017-12-02  1970                 suspend_late##hook, vendor, device, class, class_shift, hook)
> f4ca5c6a56278ca Yinghai Lu     2012-02-23  1971
>
> ---
> 0-DAY CI Kernel Test Service, Intel Corporation
> https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org



-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdnREuOmN_Vinn8pn6fxEpjzCM1_%3D9tDzbd2z884GNLFeA%40mail.gmail.com.
