Return-Path: <clang-built-linux+bncBAABBDFGU7ZQKGQE7JOJZ7I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x839.google.com (mail-qt1-x839.google.com [IPv6:2607:f8b0:4864:20::839])
	by mail.lfdr.de (Postfix) with ESMTPS id 569A01828C9
	for <lists+clang-built-linux@lfdr.de>; Thu, 12 Mar 2020 07:13:34 +0100 (CET)
Received: by mail-qt1-x839.google.com with SMTP id n4sf2823891qtv.5
        for <lists+clang-built-linux@lfdr.de>; Wed, 11 Mar 2020 23:13:34 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1583993613; cv=pass;
        d=google.com; s=arc-20160816;
        b=nDalL2zBntN+JaBTeodb8ag+ceAtEgQuHeI03tKdn16e36L+RwfcXyCFV75jNlCjtk
         zAyFdHIyaIQ+XuM+ui/SQW+DjDMeW4kYNXnQartmzQ/l9omnxP+cd9xt5n/4GqHGdgED
         gLBd6PkWQD6UXlYl1/D9jGIf+M0K3uNhvrxK/dtcUznJ9oeQvod2Z7z9YU2dMJ2rJJBf
         sawAsHtkdZK/tKWuvt0/HcrJx7EvBnj7Szm6TLd3RA9xPpelICAT4ZzdPXWlTs6h68Ql
         3L1SfQOATTYsKdBMhw/8eZH95Jyqd5FHJ8Q/B11jlw6azNDgcxvmfvyNTA/p8a9z8l11
         Psqg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-filter:sender
         :dkim-signature;
        bh=C7yEssrCd/PJErH8yC6SVkyrVmVeTM5XOILneCb0NWM=;
        b=wBXegtAX8yNn3HNB58yhvuCxnVkajIPjfPXPxRfHRfZnYZJwzxIQA/TPXL30hnnPVD
         WLbpWUruZvJtX3Wwt2uE7Fw/oeTWkdbiMUiIYZQSxKnz3JP07x76b6A/VSV+QnznWFW1
         UJY4XObLNScfUL5GDi9bk+Dbh6qpdfnSU0YQPtuggDGxqeB1pgOF/VMu5yoPjbWSF6by
         lDT5wcGZJVCqys+P+o0/kp6kQK2lMLcI9hGLib9gHj9LgutSuvtR4I5Ijsi7b5uUxSMQ
         wA/Q9rt+5fhwHo8gJKCGtjdDO5lObK4JEYly4gWbHfyufQldQqWJdrmK8VhJuwN9mxEJ
         hTpA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=hRLIE1ES;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.81 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:dkim-filter:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=C7yEssrCd/PJErH8yC6SVkyrVmVeTM5XOILneCb0NWM=;
        b=mH/uOcMQGWzCyupQSNWLgKGiB3yb5GE+hoe5W+3guy6DR1iU8QtIpfka7/rVqjDtJ4
         c02G68hjhiXqOsc7GzBy1mV7VctAqQUc4Ozcs3NOOCgl9JtNLdK1Kp6u1hZFGj3Y7BWw
         ntd7NSJCC5d/Dp4PxUAfjT23QS18q3habUoqnV5zSUHeRpG1Fmp8j4nDy1bKr/xwEMTs
         YtI8ikjsAStAKmSrW0LSiVKTdc36psGOLcf+4yewO8Pj3T9d0EcvbPG6SZ01wnMnHwXL
         U7SMsKcadcw2Qc2ebExrtpkIiq/QvVrblgo2Z9Ryad9D98Euk7ZVtQdQWaRS0L+uva8H
         o5CQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:dkim-filter:mime-version:references
         :in-reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=C7yEssrCd/PJErH8yC6SVkyrVmVeTM5XOILneCb0NWM=;
        b=dVM+inHF6yGLu/v2+YZdQCjoJps26aMPr1I3Nk/6qoDIrYm4rQLepMs2ocCdlTP5q2
         V96uIN//MNCMM1BTJjAdxbSWJnUBKg1zpRjc4kdymnnKLyn9XxGGxQBph97HINHGXbiv
         Bw1nTCDLxTz1oI0Zxj9Wb9+AOrijzLsXECmJGJ0vum0YhtZdfzpwlDb3sa67N0MyUY0Y
         cSU8Aa9MYl1AT1qjtNK59V9fqfjxcCsG1e8Dss4uuT6EVdaLg7w0ktgXyRxDJ3EFvqid
         osEifKmSXIus8OgoCEuOMTzaJwUiGQAGIWTeWLcNRKtkHZkAa8ICNg9vlVMhGpc60lC/
         6dRQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ2eVnovuozYexWMcHkdXPM2Lou3qc2VaKwkTADC4e069SXfq+bV
	4jA2vBisLJGSQQod+/is+S0=
X-Google-Smtp-Source: ADFU+vu+GkN8FhMibA/ykLz2AtfUM0upbHZa7sVv+ZRpw+YzoKr7n7Y4r1MqW81fxnG1ZYCNd0LZDQ==
X-Received: by 2002:ac8:4e25:: with SMTP id d5mr5792553qtw.361.1583993613061;
        Wed, 11 Mar 2020 23:13:33 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a37:b8b:: with SMTP id 133ls2369538qkl.0.gmail; Wed, 11 Mar
 2020 23:13:32 -0700 (PDT)
X-Received: by 2002:a37:7d81:: with SMTP id y123mr6307500qkc.102.1583993612763;
        Wed, 11 Mar 2020 23:13:32 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1583993612; cv=none;
        d=google.com; s=arc-20160816;
        b=OGtnOZ07nUjSE2eXJoaHYTYz5O08J+czFAt3jjPTf675wx0EaiPFM402pDg7Mzulqi
         nWcLLVgqLr/gICK5is7wlkdf4y9tLTEPKZ6J1tLK7BcQfdYMDSkFMhBTAaVNNn2XA7fT
         AaNGWwPW7SWWQVfLmqQmlas58vFRJk0YoPdyxLgYG4sgPaUvE5JWTiDDXjiroybx0Gjp
         H2+0Jf/bg7miUS/YOyd1AsGGFuWD9pSXGMjXfBpgA8kYzT1t+i1bgK1BtOpsNAHOqK7/
         Vp4chH0M0cXXnz0b/aDS4c1tdX2KGHKsC5IVaiWnAElkG4/NpVnHOThxLb9UmGBQv5bU
         nDHQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature:dkim-filter;
        bh=QdsYTwRD/NXf7E3Vc491owN77X3TI+BMC36RI8c4GC4=;
        b=MK5B40tH7t37SxdOKTjJQGSMgwTlQ8cNoQuJv6PiD6V27CPRXTHRh7csFTbNphUW/w
         wmCNRpj2jtHu+Rkpr/3/x+CWmKu/LcgzAg4J4n8ZlWaeHpTIo135FZTEVtAm2/789Z5R
         zXdJnwTtok6NpYHSptvzdcsgLkLY7qmohGVMLoUl3rZlpnI5HasXb9j/3Yi0PcEjFAvR
         XHs0jUThGSyPVM0q0AkCwpsbkM7K/a1dB8rvhHXP3tBNoChI7Itp9S0ZAwFiDgDihjI6
         6fbkjK09INB4Py15xzjxmc0UHeu3G7ht4y5FdjldVcnY2ygjHxEgPdpLozktYxRYWjt8
         nLaw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=hRLIE1ES;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.81 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from conssluserg-02.nifty.com (conssluserg-02.nifty.com. [210.131.2.81])
        by gmr-mx.google.com with ESMTPS id e26si229120qka.2.2020.03.11.23.13.32
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 11 Mar 2020 23:13:32 -0700 (PDT)
Received-SPF: softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.81 as permitted sender) client-ip=210.131.2.81;
Received: from mail-vs1-f42.google.com (mail-vs1-f42.google.com [209.85.217.42]) (authenticated)
	by conssluserg-02.nifty.com with ESMTP id 02C6D53l005325
	for <clang-built-linux@googlegroups.com>; Thu, 12 Mar 2020 15:13:07 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-02.nifty.com 02C6D53l005325
X-Nifty-SrcIP: [209.85.217.42]
Received: by mail-vs1-f42.google.com with SMTP id z125so2946874vsb.13
        for <clang-built-linux@googlegroups.com>; Wed, 11 Mar 2020 23:13:07 -0700 (PDT)
X-Received: by 2002:a67:8745:: with SMTP id j66mr3205235vsd.181.1583993584819;
 Wed, 11 Mar 2020 23:13:04 -0700 (PDT)
MIME-Version: 1.0
References: <20200311223725.27662-2-masahiroy@kernel.org> <202003121230.lys3M8E8%lkp@intel.com>
In-Reply-To: <202003121230.lys3M8E8%lkp@intel.com>
From: Masahiro Yamada <masahiroy@kernel.org>
Date: Thu, 12 Mar 2020 15:12:28 +0900
X-Gmail-Original-Message-ID: <CAK7LNARwR5X2C_VzK_3RZo+30Cu3uPuiw-rFUut1j8azLhbxAA@mail.gmail.com>
Message-ID: <CAK7LNARwR5X2C_VzK_3RZo+30Cu3uPuiw-rFUut1j8azLhbxAA@mail.gmail.com>
Subject: Re: [PATCH v2 2/2] kbuild: link lib-y objects to vmlinux forcibly
 when CONFIG_MODULES=y
To: inux-mips@vger.kernel.org, Paul Burton <paulburton@kernel.org>,
        Thomas Bogendoerfer <tsbogend@alpha.franken.de>
Cc: kbuild-all@lists.01.org,
        Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
        "sparclinux@vger.kernel.org, David S . Miller" <davem@davemloft.net>,
        clang-built-linux <clang-built-linux@googlegroups.com>,
        Al Viro <viro@zeniv.linux.org.uk>,
        Nick Desaulniers <ndesaulniers@google.com>,
        Ilie Halip <ilie.halip@gmail.com>,
        Nathan Chancellor <natechancellor@gmail.com>,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
        Michal Marek <michal.lkml@markovi.net>,
        kbuild test robot <lkp@intel.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: masahiroy@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b=hRLIE1ES;       spf=softfail
 (google.com: domain of transitioning masahiroy@kernel.org does not designate
 210.131.2.81 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
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

Hi MIPS forks,


I got the following report from 0-day bot.
Please advise me how to fix it.


I am not sure how multi-platform works in MIPS.

The cavium-octeon platform has its own implementation
of various functions.

So, vmlinux links different library routines
depending on whether CONFIG_CAVIUM_OCTEON_SOC, correct?



fw_init_cmdline():
arch/mips/cavium-octeon/setup.c
arch/mips/fw/lib/cmdline.c


__delay(), __udelay(), __ndelay():
arch/mips/cavium-octeon/csrc-octeon.c
arch/mips/lib/delay.S


memcpy(), memmove():
arch/mips/cavium-octeon/octeon-memcpy.S
arch/mips/lib/memcpy.S



FWIW, the following fixes the multiple definition errors.



diff --git a/arch/mips/fw/lib/cmdline.c b/arch/mips/fw/lib/cmdline.c
index 6ecda64ad184..6ac6e0493e1f 100644
--- a/arch/mips/fw/lib/cmdline.c
+++ b/arch/mips/fw/lib/cmdline.c
@@ -16,6 +16,7 @@ int fw_argc;
 int *_fw_argv;
 int *_fw_envp;

+#ifndef CONFIG_CAVIUM_OCTEON_SOC
 void __init fw_init_cmdline(void)
 {
        int i;
@@ -41,6 +42,7 @@ void __init fw_init_cmdline(void)
                        strlcat(arcs_cmdline, " ", COMMAND_LINE_SIZE);
        }
 }
+#endif

 char * __init fw_getcmdline(void)
 {
diff --git a/arch/mips/lib/Makefile b/arch/mips/lib/Makefile
index 479f50559c83..4cc98af4161a 100644
--- a/arch/mips/lib/Makefile
+++ b/arch/mips/lib/Makefile
@@ -3,10 +3,14 @@
 # Makefile for MIPS-specific library files..
 #

-lib-y  += bitops.o csum_partial.o delay.o memcpy.o memset.o \
+lib-y  += bitops.o csum_partial.o memset.o \
           mips-atomic.o strncpy_user.o \
           strnlen_user.o uncached.o

+ifneq ($(CONFIG_CAVIUM_OCTEON_SOC),y)
+lib-y  += delay.o memcpy.o
+endif
+
 obj-y                  += iomap_copy.o
 obj-$(CONFIG_PCI)      += iomap-pci.o
 lib-$(CONFIG_GENERIC_CSUM)     := $(filter-out csum_partial.o, $(lib-y))



On Thu, Mar 12, 2020 at 1:31 PM kbuild test robot <lkp@intel.com> wrote:
>
> Hi Masahiro,
>
> I love your patch! Yet something to improve:
>
> [auto build test ERROR on kbuild/for-next]
> [also build test ERROR on v5.6-rc5 next-20200311]
> [if your patch is applied to the wrong git tree, please drop us a note to help
> improve the system. BTW, we also suggest to use '--base' option to specify the
> base tree in git format-patch, please see https://stackoverflow.com/a/37406982]
>
> url:    https://github.com/0day-ci/linux/commits/Masahiro-Yamada/sparc-revive-__HAVE_ARCH_STRLEN-for-32bit-sparc/20200312-073459
> base:   https://git.kernel.org/pub/scm/linux/kernel/git/masahiroy/linux-kbuild.git for-next
> config: mips-cavium_octeon_defconfig (attached as .config)
> compiler: mips64-linux-gcc (GCC) 9.2.0
> reproduce:
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         # save the attached .config to linux build tree
>         GCC_VERSION=9.2.0 make.cross ARCH=mips
>
> If you fix the issue, kindly add following tag
> Reported-by: kbuild test robot <lkp@intel.com>
>
> All errors (new ones prefixed by >>):
>
>    mips64-linux-ld: arch/mips/fw/lib/cmdline.o: in function `fw_init_cmdline':
> >> cmdline.c:(.init.text+0x0): multiple definition of `fw_init_cmdline'; arch/mips/cavium-octeon/setup.o:setup.c:(.init.text+0xad8): first defined here
>    mips64-linux-ld: arch/mips/lib/delay.o: in function `__delay':
> >> delay.c:(.text+0x0): multiple definition of `__delay'; arch/mips/cavium-octeon/csrc-octeon.o:csrc-octeon.c:(.text+0x80): first defined here
>    mips64-linux-ld: arch/mips/lib/delay.o: in function `__udelay':
> >> delay.c:(.text+0x10): multiple definition of `__udelay'; arch/mips/cavium-octeon/csrc-octeon.o:csrc-octeon.c:(.text+0x8): first defined here
>    mips64-linux-ld: arch/mips/lib/delay.o: in function `__ndelay':
> >> delay.c:(.text+0x50): multiple definition of `__ndelay'; arch/mips/cavium-octeon/csrc-octeon.o:csrc-octeon.c:(.text+0x40): first defined here
>    mips64-linux-ld: arch/mips/lib/memcpy.o: in function `memmove':
> >> (.text+0x0): multiple definition of `memmove'; arch/mips/cavium-octeon/octeon-memcpy.o:(.text+0x3a0): first defined here
>    mips64-linux-ld: arch/mips/lib/memcpy.o: in function `__rmemcpy':
> >> (.text+0x20): multiple definition of `__rmemcpy'; arch/mips/cavium-octeon/octeon-memcpy.o:(.text+0x3c0): first defined here
>    mips64-linux-ld: arch/mips/lib/memcpy.o: in function `memcpy':
> >> (.text+0x80): multiple definition of `memcpy'; arch/mips/cavium-octeon/octeon-memcpy.o:(.text+0x0): first defined here
>    mips64-linux-ld: arch/mips/lib/memcpy.o: in function `memcpy':
> >> (.text+0x84): multiple definition of `__copy_user'; arch/mips/cavium-octeon/octeon-memcpy.o:(.text+0x4): first defined here
>
> ---
> 0-DAY CI Kernel Test Service, Intel Corporation
> https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org



--
Best Regards
Masahiro Yamada

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK7LNARwR5X2C_VzK_3RZo%2B30Cu3uPuiw-rFUut1j8azLhbxAA%40mail.gmail.com.
