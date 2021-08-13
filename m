Return-Path: <clang-built-linux+bncBDT2NE7U5UFRBPEO3GEAMGQEEWBCPZQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x838.google.com (mail-qt1-x838.google.com [IPv6:2607:f8b0:4864:20::838])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C58E3EB3ED
	for <lists+clang-built-linux@lfdr.de>; Fri, 13 Aug 2021 12:19:41 +0200 (CEST)
Received: by mail-qt1-x838.google.com with SMTP id j1-20020ac866410000b029028bef7ed9e1sf6095934qtp.11
        for <lists+clang-built-linux@lfdr.de>; Fri, 13 Aug 2021 03:19:41 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1628849980; cv=pass;
        d=google.com; s=arc-20160816;
        b=TbBJVROTqTbkWBVWBXw9H6TwnytJbD1khKyooqNisCIxt9kbLTYt47x/HEc5y8pdAf
         rZcekVK3AsqfQSy9Q7p7wMXxM7hCfri75k5yjWBNWJFSW8hui6iWUjT0Ja85JpUlzw1G
         W1P461RZH0iTV/oH1V4PR7m5mM6Hzo15xMU9JcKIOtlp1lGj83girNsF6esqkqPl7BGa
         VhHCdgVNqRqTF/TJ6ZRGof+fOE/ExuxWgSvE+mL8lq+FhDbeOL8vE8oxv5PxSWDzHS8f
         lkX1J/bIw/2czsv3NldqMobEkeZ+15N5VR2f6iSQI/xBUXLzsXpqJ3me80sd3kbtiu1k
         Qd7w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding:cc:to
         :subject:message-id:date:from:in-reply-to:references:mime-version
         :dkim-filter:sender:dkim-signature;
        bh=Ot//LENk49ipCyRzN09JyAJpF0/Y7qRR6PDVtTohiQg=;
        b=ToXzpyPugb6jnpXoo3nVYzIDqdUDzb6ktNamyeje9vDwq4OZrQU3Ke49i2oLbxM6nA
         ThpU2O7tJrTddRgnrNGab5GeJmFy52natLoFz0Jz7TOQo0aPVjfZoE/vys6p6BbkP4pf
         G7+AQ+jEYELjWW3ZzOg3Gvg3EnSTrJXGuBH1oT9Vb7zTe6PMGSw4o8N0Qz5L0ZBZHFUx
         vPOYCY5yfbmF2gab0XqwfVQpzi9QMlC8cQ+35rS/UH39By7kRVv+o/rj+g3inl04cw7D
         2F2x2lNY5sx55tofgvRt3kBJdFWgkRp1lFSt8p4iIYFvSb8J+WyIsCVFypeZ5QzZikjN
         zLuw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b="CP/Ccpn2";
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.81 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:dkim-filter:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Ot//LENk49ipCyRzN09JyAJpF0/Y7qRR6PDVtTohiQg=;
        b=ZcrC3MUgxDfpYVkbhAywv/1uKHpesc/QDyHT1BmgqK/KkLAn20myASScjYzxILxq2k
         5Oc4faZfwBIk56w6+dvVnnQ+w7cnx1uGAx0j1hwYS0KTnvqH0wqHP4SNrB2Cf+YSDL+4
         w2pcxui6F70PJsQRs5hKSRQ65s1E6zccW/Tse9CIklR0CqM2Y66PTznCav5GTycYmRx2
         bJ4Y/KylRD5JFzXlLQ1mYGKUj9K4W4ESF3QI1VJ/QP53Jasek5yB2dHNK+o4vdPl1HdE
         Blb89pjvGbJcWQc+sdFtu00jJTkXFcSzYDxhh6N3Nafg0fNJkSbCRbQ+3xGRyD1XjuOW
         NPBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:dkim-filter:mime-version:references
         :in-reply-to:from:date:message-id:subject:to:cc
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Ot//LENk49ipCyRzN09JyAJpF0/Y7qRR6PDVtTohiQg=;
        b=czCj+7xwpPe/HrTVfC6n1zOzk7/BAjRLHpwT9ri1s57idWKNkkbzZiwLYOAwN6sVp9
         QNpq21aDpp0DDBJRqBXXpkut9CIKMRst7Ya2dYe1XibYaAL7+Ej+00l47kYuBpVB0jSU
         aQYuEggAl+VaoM9Y1D4fMDURi1UXsNuVXeUg4uAVdD1mxvQNU8m3bPOBUKeprjgDmkkt
         jyrBTpff7eMk7OeDH8bVlMsSDIxi3hLzkpejpwNrP50btrHjHZdYHGJukzgbE9T/R6OV
         b+YWUVf0c2dkyx3A0/vbpfwhFfkjN73JJOSdNy8BI19Mc4na63XvmHAEGOGZjSiijKvD
         lz+Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533XAHajWMzFMJ2BzbmdX7YRTMvIQwjb4dMurSZJ5m0MC5dqpoGh
	TV+4eaNDXeEbxEedzEjxl8Y=
X-Google-Smtp-Source: ABdhPJzXUZgVy7UHQnnELZaKcl4rU205OfBuDeGsBGnJVsAOTwzWL2nLwab7Pou5kIcRMCh8feNhkQ==
X-Received: by 2002:a05:6214:18ec:: with SMTP id ep12mr1900908qvb.51.1628849980113;
        Fri, 13 Aug 2021 03:19:40 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ae9:e605:: with SMTP id z5ls645529qkf.8.gmail; Fri, 13 Aug
 2021 03:19:39 -0700 (PDT)
X-Received: by 2002:a05:620a:12c3:: with SMTP id e3mr1370312qkl.122.1628849979697;
        Fri, 13 Aug 2021 03:19:39 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1628849979; cv=none;
        d=google.com; s=arc-20160816;
        b=ncVQliiV8BUaPER+lJfVHwpxS0HpT+Jr0872JtBsnDN+wfrdZchtJgv6XPYWWRRGxe
         41L5oTdkuJLctgy+9fptD14yjKePPtPU7CFPekJoyVdXL0He56m0+Zju66JIfrWOHaJr
         UpHFxiA/1bKcwRkAKhK3xiVmxEeIQlwZZ9lRsev+qTrDfi+Q935E7qZVB5oWAxjROplE
         WsDEYppKm5PmPKjPGCw/9wutt4mLNN5AmfxaUm71DptAJumpmjT/BQHoWD/ey6wiE6+y
         1Yt6PJIKHd3n1nk9Bi0UIW1dxtZFtfzGE8KjbYJ+UISkTV4VyFHS2WNG0m1yC4aKGOib
         Bl5Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature:dkim-filter;
        bh=QL3jK1zI399ix2VJuNpv//yXsupyM4b2A2ym+GjWElw=;
        b=Pm2k6T1dkt0d37oLjQIHH8s+tKY8f1ls0RFjuvl+z3NqhWE/7ixKv8WThpO7vl0Jus
         ByzU1zyw9NUBCQ1PAhWsTmAbx3ywj1uRYqgmyonUqPWn+1hoJlm8aGTP982Qf6GqDsT2
         WoCaw1Yvwj3FAn/MW13I1i5BnFh7X6RsWQbADjgAVx+xJK3qmtE2qC7yZmScaafJNFcT
         ro9QlY2VeBUIkkHJq4dlP3YQSBVqWZpm01bxTFG/fdxOvl9511sps8SaaAQ/fL5FD5un
         HPeqeKcWum3TMXK/mSob44HEvfOpT9l34wm4PStq+33VDQYoi0QKnWyvP6aqFaC4mmwp
         Tysg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b="CP/Ccpn2";
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.81 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from conssluserg-02.nifty.com (conssluserg-02.nifty.com. [210.131.2.81])
        by gmr-mx.google.com with ESMTPS id i4si62154qkg.7.2021.08.13.03.19.39
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 13 Aug 2021 03:19:39 -0700 (PDT)
Received-SPF: softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.81 as permitted sender) client-ip=210.131.2.81;
Received: from mail-pj1-f53.google.com (mail-pj1-f53.google.com [209.85.216.53]) (authenticated)
	by conssluserg-02.nifty.com with ESMTP id 17DAJMLE026211
	for <clang-built-linux@googlegroups.com>; Fri, 13 Aug 2021 19:19:23 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-02.nifty.com 17DAJMLE026211
X-Nifty-SrcIP: [209.85.216.53]
Received: by mail-pj1-f53.google.com with SMTP id u21-20020a17090a8915b02901782c36f543so19936406pjn.4
        for <clang-built-linux@googlegroups.com>; Fri, 13 Aug 2021 03:19:23 -0700 (PDT)
X-Received: by 2002:a17:902:bc41:b029:12d:3f9b:401e with SMTP id
 t1-20020a170902bc41b029012d3f9b401emr1563543plz.47.1628849962196; Fri, 13 Aug
 2021 03:19:22 -0700 (PDT)
MIME-Version: 1.0
References: <202108111155.RvN9J3Hs-lkp@intel.com> <5ec75ad9-a861-4402-9c16-ae7cb0aaeaba@infradead.org>
In-Reply-To: <5ec75ad9-a861-4402-9c16-ae7cb0aaeaba@infradead.org>
From: Masahiro Yamada <masahiroy@kernel.org>
Date: Fri, 13 Aug 2021 19:18:45 +0900
X-Gmail-Original-Message-ID: <CAK7LNATk21qWbgWORfmCLPD3Cieon-fwtuLtFhgOo1XORWJT6g@mail.gmail.com>
Message-ID: <CAK7LNATk21qWbgWORfmCLPD3Cieon-fwtuLtFhgOo1XORWJT6g@mail.gmail.com>
Subject: Re: Error: kernelrelease not valid - run 'make prepare' to update it
To: Randy Dunlap <rdunlap@infradead.org>
Cc: kernel test robot <lkp@intel.com>,
        clang-built-linux <clang-built-linux@googlegroups.com>,
        kbuild-all@lists.01.org,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
        Nathan Chancellor <nathan@kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: masahiroy@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b="CP/Ccpn2";
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org
 does not designate 210.131.2.81 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
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

On Wed, Aug 11, 2021 at 12:19 PM Randy Dunlap <rdunlap@infradead.org> wrote=
:
>
> On 8/10/21 8:16 PM, kernel test robot wrote:
> > tree:   https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.=
git master
> > head:   9e723c5380c6e14fb91a8b6950563d040674afdb
> > commit: ba64beb17493a4bfec563100c86a462a15926f24 kbuild: check the mini=
mum assembler version in Kconfig
> > date:   4 months ago
> > config: riscv-randconfig-r025-20210810 (attached as .config)
> > compiler: clang version 14.0.0 (https://github.com/llvm/llvm-project d3=
9ebdae674c8efc84ebe8dc32716ec353220530)
> > reproduce (this is a W=3D1 build):
> >          wget https://raw.githubusercontent.com/intel/lkp-tests/master/=
sbin/make.cross -O ~/bin/make.cross
> >          chmod +x ~/bin/make.cross
> >          # https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/lin=
ux.git/commit/?id=3Dba64beb17493a4bfec563100c86a462a15926f24
> >          git remote add linus https://git.kernel.org/pub/scm/linux/kern=
el/git/torvalds/linux.git
> >          git fetch --no-tags linus master
> >          git checkout ba64beb17493a4bfec563100c86a462a15926f24
> >          # save the attached .config to linux build tree
> >          mkdir build_dir
> >          COMPILER_INSTALL_PATH=3D$HOME/0day COMPILER=3Dclang make.cross=
 O=3Dbuild_dir ARCH=3Driscv prepare
> >
> > If you fix the issue, kindly add following tag as appropriate
> > Reported-by: kernel test robot <lkp@intel.com>
> >
> > All errors (new ones prefixed by >>):
> >
> >>> Error: kernelrelease not valid - run 'make prepare' to update it
> > --
> >     clang --target=3Driscv64-linux-gnu -no-integrated-as --prefix=3Dris=
cv64-linux-gnu- -Werror=3Dunknown-warning-option: unknown assembler invoked
> >     scripts/Kconfig.include:50: Sorry, this assembler is not supported.
> >     make[3]: *** [scripts/kconfig/Makefile:63: syncconfig] Error 1
> >     make[2]: *** [Makefile:617: syncconfig] Error 2
> >     make[1]: *** [Makefile:726: include/config/auto.conf.cmd] Error 2
> >     make[1]: Failed to remake makefile 'include/config/auto.conf.cmd'.
> >     make[1]: Failed to remake makefile 'include/config/auto.conf'.
> >>> Error: kernelrelease not valid - run 'make prepare' to update it
> >     make[1]: Target 'prepare' not remade because of errors.
> >     make: *** [Makefile:215: __sub-make] Error 2
> >     make: Target 'prepare' not remade because of errors.
>
> Yes, I have noticed this one and a few other ('static') make targets that
> should not need a .config file. I have a note to myself to ask about thes=
e,
> so thanks for bringing it up.


I think it is unrelated.



The 0-day bot has already shown the real reason
of the error:

   clang --target=3Driscv64-linux-gnu -no-integrated-as
--prefix=3Driscv64-linux-gnu- -Werror=3Dunknown-warning-option: unknown
assembler invoked
   scripts/Kconfig.include:50: Sorry, this assembler is not supported.




This happens when the proper toolchains are not found.

That is, make.cross passed CROSS_COMPILE=3Driscv64-linux-gnu-
to the make command line, but riscv64-linux-gnu binutils
are not installed on the system.



Without installing binutils-riscv64-linux-gnu,
I can see a similar error log.





masahiro@grover:~/ref/linux$ wget
https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross
-O ~/bin/make.cross
--2021-08-13 18:57:01--
https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross
Resolving raw.githubusercontent.com (raw.githubusercontent.com)...
185.199.110.133, 185.199.109.133, 185.199.111.133, ...
Connecting to raw.githubusercontent.com
(raw.githubusercontent.com)|185.199.110.133|:443... connected.
HTTP request sent, awaiting response... 200 OK
Length: 9655 (9.4K) [text/plain]
Saving to: =E2=80=98/home/masahiro/bin/make.cross=E2=80=99

/home/masahiro/bin/make.cross
100%[=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D>]
  9.43K  --.-KB/s    in 0s

2021-08-13 18:57:01 (44.7 MB/s) - =E2=80=98/home/masahiro/bin/make.cross=E2=
=80=99
saved [9655/9655]

masahiro@grover:~/ref/linux$ chmod +x ~/bin/make.cross
masahiro@grover:~/ref/linux$ git checkout
ba64beb17493a4bfec563100c86a462a15926f24
HEAD is now at ba64beb17493 kbuild: check the minimum assembler
version in Kconfig
masahiro@grover:~/ref/linux$ rm -rf build_dir; mkdir build_dir
masahiro@grover:~/ref/linux$ zcat  ~/Downloads/config.gz  > build_dir/.conf=
ig
masahiro@grover:~/ref/linux$ COMPILER_INSTALL_PATH=3D$HOME/0day
COMPILER=3Dclang make.cross O=3Dbuild_dir ARCH=3Driscv prepare
Compiler will be installed in /home/masahiro/0day
make --keep-going CONFIG_OF_ALL_DTBS=3Dy CONFIG_DTC=3Dy
HOSTCC=3D/home/masahiro/0day/clang/bin/clang
CC=3D/home/masahiro/0day/clang/bin/clang
LD=3D/home/masahiro/0day/clang/bin/ld.lld
HOSTLD=3D/home/masahiro/0day/clang/bin/ld.lld AR=3Dllvm-ar NM=3Dllvm-nm
STRIP=3Dllvm-strip OBJDUMP=3Dllvm-objdump OBJSIZE=3Dllvm-size
READELF=3Dllvm-readelf HOSTCXX=3Dclang++ HOSTAR=3Dllvm-ar
CROSS_COMPILE=3Driscv64-linux-gnu- --jobs=3D16 O=3Dbuild_dir ARCH=3Driscv
prepare
make[1]: Entering directory '/home/masahiro/ref/linux/build_dir'
  SYNC    include/config/auto.conf
  GEN     Makefile
  HOSTCC  scripts/basic/fixdep
  HOSTCC  scripts/kconfig/conf.o
  HOSTCC  scripts/kconfig/confdata.o
  HOSTCC  scripts/kconfig/expr.o
  LEX     scripts/kconfig/lexer.lex.c
  YACC    scripts/kconfig/parser.tab.[ch]
  HOSTCC  scripts/kconfig/preprocess.o
  HOSTCC  scripts/kconfig/symbol.o
  HOSTCC  scripts/kconfig/util.o
  HOSTCC  scripts/kconfig/lexer.lex.o
  HOSTCC  scripts/kconfig/parser.tab.o
  HOSTLD  scripts/kconfig/conf
/home/masahiro/0day/clang/bin/clang --target=3Driscv64-linux-gnu
-no-integrated-as --prefix=3Driscv64-linux-gnu-
-Werror=3Dunknown-warning-option: unknown assembler invoked
scripts/Kconfig.include:50: Sorry, this assembler is not supported.
make[3]: *** [../scripts/kconfig/Makefile:63: syncconfig] Error 1
make[2]: *** [../Makefile:617: syncconfig] Error 2
make[1]: *** [/home/masahiro/ref/linux/Makefile:726:
include/config/auto.conf] Error 2
make[1]: Failed to remake makefile 'include/config/auto.conf'.
make[1]: Failed to remake makefile 'include/config/auto.conf.cmd'.
  GEN     Makefile
  WRAP    arch/riscv/include/generated/uapi/asm/errno.h
  WRAP    arch/riscv/include/generated/uapi/asm/fcntl.h
  WRAP    arch/riscv/include/generated/uapi/asm/ioctl.h
  WRAP    arch/riscv/include/generated/uapi/asm/ioctls.h
  WRAP    arch/riscv/include/generated/uapi/asm/ipcbuf.h
  WRAP    arch/riscv/include/generated/uapi/asm/mman.h
  WRAP    arch/riscv/include/generated/uapi/asm/msgbuf.h
  WRAP    arch/riscv/include/generated/uapi/asm/param.h
  WRAP    arch/riscv/include/generated/uapi/asm/poll.h
  WRAP    arch/riscv/include/generated/uapi/asm/posix_types.h
  WRAP    arch/riscv/include/generated/uapi/asm/resource.h
  WRAP    arch/riscv/include/generated/uapi/asm/sembuf.h
  WRAP    arch/riscv/include/generated/uapi/asm/setup.h
  WRAP    arch/riscv/include/generated/uapi/asm/shmbuf.h
  WRAP    arch/riscv/include/generated/uapi/asm/siginfo.h
  WRAP    arch/riscv/include/generated/uapi/asm/signal.h
  WRAP    arch/riscv/include/generated/uapi/asm/socket.h
  WRAP    arch/riscv/include/generated/uapi/asm/sockios.h
  WRAP    arch/riscv/include/generated/uapi/asm/stat.h
  WRAP    arch/riscv/include/generated/uapi/asm/statfs.h
  WRAP    arch/riscv/include/generated/uapi/asm/swab.h
  WRAP    arch/riscv/include/generated/uapi/asm/termbits.h
  WRAP    arch/riscv/include/generated/uapi/asm/termios.h
  WRAP    arch/riscv/include/generated/uapi/asm/types.h
Error: kernelrelease not valid - run 'make prepare' to update it
  UPD     include/config/kernel.release
  HOSTCC  scripts/dtc/dtc.o
  HOSTCC  scripts/dtc/flattree.o
  HOSTCC  scripts/dtc/fstree.o
  HOSTCC  scripts/dtc/data.o
  HOSTCC  scripts/dtc/livetree.o
  HOSTCC  scripts/dtc/treesource.o
  HOSTCC  scripts/dtc/srcpos.o
  HOSTCC  scripts/dtc/checks.o
  HOSTCC  scripts/dtc/util.o
  UPD     include/generated/uapi/linux/version.h
  LEX     scripts/dtc/dtc-lexer.lex.c
  YACC    scripts/dtc/dtc-parser.tab.[ch]
  HOSTCC  scripts/dtc/yamltree.o
  HOSTCC  scripts/dtc/libfdt/fdt.o
  UPD     include/generated/utsrelease.h
  HOSTCC  scripts/dtc/libfdt/fdt_ro.o
  HOSTCC  scripts/dtc/libfdt/fdt_wip.o
  HOSTCC  scripts/dtc/libfdt/fdt_sw.o
  HOSTCC  scripts/dtc/libfdt/fdt_rw.o
  WRAP    arch/riscv/include/generated/asm/early_ioremap.h
  WRAP    arch/riscv/include/generated/asm/extable.h
  WRAP    arch/riscv/include/generated/asm/flat.h
  WRAP    arch/riscv/include/generated/asm/kvm_para.h
  HOSTCC  scripts/dtc/libfdt/fdt_strerror.o
  WRAP    arch/riscv/include/generated/asm/user.h
  WRAP    arch/riscv/include/generated/asm/vmlinux.lds.h
  WRAP    arch/riscv/include/generated/asm/bugs.h
  WRAP    arch/riscv/include/generated/asm/checksum.h
  WRAP    arch/riscv/include/generated/asm/compat.h
  WRAP    arch/riscv/include/generated/asm/device.h
  WRAP    arch/riscv/include/generated/asm/div64.h
  WRAP    arch/riscv/include/generated/asm/dma-mapping.h
  WRAP    arch/riscv/include/generated/asm/dma.h
  WRAP    arch/riscv/include/generated/asm/emergency-restart.h
  WRAP    arch/riscv/include/generated/asm/exec.h
  WRAP    arch/riscv/include/generated/asm/fb.h
  WRAP    arch/riscv/include/generated/asm/hardirq.h
  WRAP    arch/riscv/include/generated/asm/hw_irq.h
  WRAP    arch/riscv/include/generated/asm/irq_regs.h
  WRAP    arch/riscv/include/generated/asm/kmap_size.h
  WRAP    arch/riscv/include/generated/asm/local.h
  WRAP    arch/riscv/include/generated/asm/local64.h
  WRAP    arch/riscv/include/generated/asm/msi.h
  HOSTCC  scripts/dtc/libfdt/fdt_empty_tree.o
  WRAP    arch/riscv/include/generated/asm/percpu.h
  WRAP    arch/riscv/include/generated/asm/preempt.h
  HOSTCC  scripts/dtc/libfdt/fdt_addresses.o
  WRAP    arch/riscv/include/generated/asm/rwonce.h
  WRAP    arch/riscv/include/generated/asm/serial.h
  WRAP    arch/riscv/include/generated/asm/shmparam.h
  WRAP    arch/riscv/include/generated/asm/simd.h
  WRAP    arch/riscv/include/generated/asm/softirq_stack.h
  WRAP    arch/riscv/include/generated/asm/topology.h
  WRAP    arch/riscv/include/generated/asm/trace_clock.h
  WRAP    arch/riscv/include/generated/asm/unaligned.h
  HOSTCC  scripts/dtc/libfdt/fdt_overlay.o
  WRAP    arch/riscv/include/generated/asm/vga.h
  HOSTCC  scripts/dtc/fdtoverlay.o
  WRAP    arch/riscv/include/generated/asm/xor.h
  HOSTCC  scripts/dtc/dtc-lexer.lex.o
  HOSTCC  scripts/dtc/dtc-parser.tab.o
  HOSTLD  scripts/dtc/fdtoverlay
  HOSTLD  scripts/dtc/dtc
make[1]: Target 'prepare' not remade because of errors.
make[1]: Leaving directory '/home/masahiro/ref/linux/build_dir'
make: *** [Makefile:215: __sub-make] Error 2
make: Target 'prepare' not remade because of errors.






It can be fixed by installing riscv64-linux-gnu toolchains.

On debian or its variants,

you can do it by
"sudo apt install binutils-riscv64-linux-gnu"


Or, you can download it from
https://download.01.org/0day-ci/cross-package/gcc-11.2.0-nolibc/



Then, the 0day bot command will proceed.






masahiro@grover:~/ref/linux$ sudo apt install binutils-riscv64-linux-gnu
Reading package lists... Done
Building dependency tree... Done
Reading state information... Done
The following packages were automatically installed and are no longer requi=
red:
  cpp-10-riscv64-linux-gnu cpp-riscv64-linux-gnu
gcc-10-riscv64-linux-gnu-base libatomic1-riscv64-cross
libc6-dev-riscv64-cross libc6-riscv64-cross
libgcc-10-dev-riscv64-cross
  libgcc-s1-riscv64-cross libgomp1-riscv64-cross linux-libc-dev-riscv64-cro=
ss
Use 'sudo apt autoremove' to remove them.
Suggested packages:
  binutils-doc
The following NEW packages will be installed:
  binutils-riscv64-linux-gnu
0 upgraded, 1 newly installed, 0 to remove and 9 not upgraded.
Need to get 1,187 kB of archives.
After this operation, 8,838 kB of additional disk space will be used.
Get:1 http://jp.archive.ubuntu.com/ubuntu hirsute/main amd64
binutils-riscv64-linux-gnu amd64 2.36.1-6ubuntu1 [1,187 kB]
Fetched 1,187 kB in 0s (4,826 kB/s)
Selecting previously unselected package binutils-riscv64-linux-gnu.
(Reading database ... 478665 files and directories currently installed.)
Preparing to unpack .../binutils-riscv64-linux-gnu_2.36.1-6ubuntu1_amd64.de=
b ...
Unpacking binutils-riscv64-linux-gnu (2.36.1-6ubuntu1) ...
Setting up binutils-riscv64-linux-gnu (2.36.1-6ubuntu1) ...
Processing triggers for libc-bin (2.33-0ubuntu5) ...
Processing triggers for man-db (2.9.4-2) ...

masahiro@grover:~/ref/linux$ COMPILER_INSTALL_PATH=3D$HOME/0day
COMPILER=3Dclang make.cross O=3Dbuild_dir ARCH=3Driscv prepare
Compiler will be installed in /home/masahiro/0day
make --keep-going CONFIG_OF_ALL_DTBS=3Dy CONFIG_DTC=3Dy
HOSTCC=3D/home/masahiro/0day/clang/bin/clang
CC=3D/home/masahiro/0day/clang/bin/clang
LD=3D/home/masahiro/0day/clang/bin/ld.lld
HOSTLD=3D/home/masahiro/0day/clang/bin/ld.lld AR=3Dllvm-ar NM=3Dllvm-nm
STRIP=3Dllvm-strip OBJDUMP=3Dllvm-objdump OBJSIZE=3Dllvm-size
READELF=3Dllvm-readelf HOSTCXX=3Dclang++ HOSTAR=3Dllvm-ar
CROSS_COMPILE=3Driscv64-linux-gnu- --jobs=3D16 O=3Dbuild_dir ARCH=3Driscv
prepare
make[1]: Entering directory '/home/masahiro/ref/linux/build_dir'
  SYNC    include/config/auto.conf
  GEN     Makefile
.config:792:warning: symbol value 'm' invalid for MTD_NAND_ECC_SW_HAMMING
*
* Restart config...
*
*
* CPU/Task time and stats accounting
*
Cputime accounting
  1. Simple tick based cputime accounting (TICK_CPU_ACCOUNTING)
> 2. Full dynticks CPU time accounting (VIRT_CPU_ACCOUNTING_GEN)
choice[1-2?]: 2
Fine granularity task level IRQ time accounting (IRQ_TIME_ACCOUNTING)
[N/y/?] (NEW)







--
Best Regards
Masahiro Yamada

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/CAK7LNATk21qWbgWORfmCLPD3Cieon-fwtuLtFhgOo1XORWJT6g%40mai=
l.gmail.com.
