Return-Path: <clang-built-linux+bncBDYJPJO25UGBB6E4TD4AKGQESGJNNAA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf3d.google.com (mail-qv1-xf3d.google.com [IPv6:2607:f8b0:4864:20::f3d])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A07B218F9C
	for <lists+clang-built-linux@lfdr.de>; Wed,  8 Jul 2020 20:20:50 +0200 (CEST)
Received: by mail-qv1-xf3d.google.com with SMTP id v10sf19627134qvm.17
        for <lists+clang-built-linux@lfdr.de>; Wed, 08 Jul 2020 11:20:50 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1594232449; cv=pass;
        d=google.com; s=arc-20160816;
        b=urg1dRRJM2x8SI/0dKbOin719IavVTxLBAPHASO+rDv8JRhjaVA1mBHXg0queIp4tu
         F5XODh4J2cMfl1pNIl6KJx5yaAyW3V1sbeIfJdFchnlBKSaVNTXkum0i1/SfkyzWodmF
         tyvwpvWQuwJZATRNg8lGlYVvVBDqNJ4NbYS4Q9Z+rIMuADFBFUZGnZmgQxYLFhRiYs8U
         /LmPkxk6UUzq088OB78lZp/8fplQlr3Iia4u09sMcDiq9ftrl8iu8a6iBnI2wS1PL5+u
         mcSR13W7rDI4G2kypjG8A27D+up1OQASjYxZKhjYeIr0qUskZo6XGGtwIW/DZWMPm9uZ
         6PIw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-transfer-encoding
         :cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=YvLUxFhlDt9Cg9fid+lMU6AdzQF8LQFJXQF1xXlf8bg=;
        b=0FzXU/Fb95Q2/IB0L+FYkPn2jnh9xRz/UEKHyxcv3qKGt+uP/jd9LpVh/gOSflbWYN
         C4VvOW47/In9eS4XN3ucgwrfPh/Z+OBmZ1wc790R6imzRc2mMTQXLO/NzbRHdsn2mvkW
         oL+d2C+wI7oD07jJPXBXKUVMBIlz+wXwOtZLgWIjHeLFqzp61wZXuAU9NWbqmV7iK6pR
         sv8Brd+eKxaV8bQtZz5c0y/IsTtOu7/HScgVtMXkgiNgeYDI/L1Spimopu8TB0BE0az3
         0qZ5pCY+Y3QCMGwc/5I4rQXYZfS79yA0kAFh7e/V/U9icIUZcCr5K55aHy3wZPMgE5yr
         uWeA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=cqWBkcez;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1044 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=YvLUxFhlDt9Cg9fid+lMU6AdzQF8LQFJXQF1xXlf8bg=;
        b=cn0FwgBhE0yCifWiu+pNqho4iIneftxYcPcIfRsa+gYdKEtzHuWyiNIIka1yKqk1nm
         fRvSbHUODfIZVfI7BaPAqdg3zBkBItexbyN/dJzDhbSQd5zzmJnkGFAj8R+pa15NvmWx
         JM+jjmQgrGroa/u9TVBT5WoIzGb+TO0hoviTbOolZfy7G9lfdDdAkmqVqzX2kB+gtixl
         HkZZ0ydbcmZyQJ1wfosVk128zrwYABgCQg1yVbz3gWb/b7udHQNjLQt9IMP5aibg2o1r
         baEne5KKQ74YsuyuLKgpjIZV6zwSjH5Gbl/D/RmSXUaRmYBm2vfTyo631cxS4rPKxx2L
         Kpww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=YvLUxFhlDt9Cg9fid+lMU6AdzQF8LQFJXQF1xXlf8bg=;
        b=ddHoL30tCjxbf7OL4rKKhzaE2pVp1/zXqUOqgBzQbDVWMNYzR2/M4TFd1N7A9zvUwm
         fNFEisZlm3K7+vy3acmLXr7h0Sq4BL33aVfEm7wnMfR8g/qcyzoS7tDZV2NRwnET+DAk
         N21kpaDNXBiVBBo1hL1VkyGp7i4gZA1Ov7pKKdtranspFiVuQt+W2wqabEQ2eEnC3rQh
         VtRIy7mT9CCB9vU5eHsuIOxj59pzkgOP1O+Q10VMHRg3egMwwnJYZqJVBAxJ9sWuoG1A
         oklAMMdoecm1ebSvGryJ1ey8ChOqciWSPafq8LBbg4z02KNxhih5bHQi2PfK7rq2eftv
         XAlg==
X-Gm-Message-State: AOAM531AUZgtlfi3M+tNSJe+P35E6PPf0eBTrWQP0pg3f24befyAYiSw
	QUxWaPe9F4zyblPb2JDrHH0=
X-Google-Smtp-Source: ABdhPJwRzaUZOmDivKUAg3bXBgcBlCZ7SejXUcV/QEt03nWG/VaQrr6Kf0ZQWSaGIt9kMUJPoC8AQg==
X-Received: by 2002:a0c:d44e:: with SMTP id r14mr26168308qvh.105.1594232449253;
        Wed, 08 Jul 2020 11:20:49 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a0c:fa05:: with SMTP id q5ls713517qvn.0.gmail; Wed, 08 Jul
 2020 11:20:40 -0700 (PDT)
X-Received: by 2002:a0c:d84d:: with SMTP id i13mr12495941qvj.167.1594232440236;
        Wed, 08 Jul 2020 11:20:40 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1594232440; cv=none;
        d=google.com; s=arc-20160816;
        b=zXMy3FyjgNiS38wViydZr+XftjHy4RB3++GLL4Efi7l7yVIHMxNZhZrCjhbXARFfEV
         JU+lxAot3FU/0NrM2ZYi0PQdMmvZ2QwHaSADBw9w1idbg0FfxXRRdbyU1Z/Jckln2RRf
         YciZhdBH2lKtpVidLEXEEX4opZLzJw+L17QZQpTvfTe2tvf28FIxjNN7uD9aNZvvHyeX
         cK8MdnDsp3TYxFzjd90bDsV/ah+6mSn3YKnmMKUYUvrMXHm/+SuKj1F2jUneKy4hkv1h
         gtKKRqC2My9C9Vkv22IWUFO7Vki4E5dKcmaxPH2q2HroGAF2vEr7hHVeAcRxwf2/ZvMm
         Excg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=bEkWcEKwBD8xzZaF4VqK8c5iBK1OXZVpxV6HiO0m7tM=;
        b=v8z3SwtyfLg5UK6S9jPNq6OkfzXLfS0+j23otzTpGAghxvZCZp6E8iaUijgvj6YJZJ
         Qo/8Ze3HYclO63nmMWI2c53+Ot2lxus8hNE2jxMFqlIyr/VJsPZNBXqHyGtMo4B9CZuq
         kPXOpqjaeRq90IpfEN/W8H/dYUGq7u09QZpvB6OtINAZg/uF4q+3S46ziktsc6wU60bm
         xOPLGyfVRQHwcl6R4UlrSSEJKbllP0cTBa2r23r5F+ed/RKW29jgKl/y44g0VVxvJxdh
         Ij7u0QW5/k0NOSuSwZxz+qpZv1gaaWwpe8uHnr97k6DXR5FkuJiNRWYoui0WZ38fiEZi
         BpZg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=cqWBkcez;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1044 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pj1-x1044.google.com (mail-pj1-x1044.google.com. [2607:f8b0:4864:20::1044])
        by gmr-mx.google.com with ESMTPS id w64si32946qkb.7.2020.07.08.11.20.40
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 08 Jul 2020 11:20:40 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1044 as permitted sender) client-ip=2607:f8b0:4864:20::1044;
Received: by mail-pj1-x1044.google.com with SMTP id b92so1540375pjc.4
        for <clang-built-linux@googlegroups.com>; Wed, 08 Jul 2020 11:20:40 -0700 (PDT)
X-Received: by 2002:a17:90a:30ea:: with SMTP id h97mr10935924pjb.32.1594232437416;
 Wed, 08 Jul 2020 11:20:37 -0700 (PDT)
MIME-Version: 1.0
References: <20200630021436.43281-1-richard.weiyang@linux.alibaba.com>
 <202007010217.Rut2zTnF%lkp@intel.com> <20200701115816.GB4979@L-31X9LVDL-1304.local>
 <MN2PR11MB4064B0104312A3D22F1698F3E5670@MN2PR11MB4064.namprd11.prod.outlook.com>
In-Reply-To: <MN2PR11MB4064B0104312A3D22F1698F3E5670@MN2PR11MB4064.namprd11.prod.outlook.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Wed, 8 Jul 2020 11:20:26 -0700
Message-ID: <CAKwvOdkVqY8WAfdTtHbgnJ2jafvsJCUgx2Rx4PCeNiX7HjLLow@mail.gmail.com>
Subject: Re: [PATCH] mm/sparse: only sub-section aligned range would be populated
To: "Xia, Hui" <hui.xia@intel.com>, Wei Yang <richard.weiyang@linux.alibaba.com>, 
	Philip Li <philip.li@intel.com>, Arnd Bergmann <arnd@arndb.de>
Cc: lkp <lkp@intel.com>, "Williams, Dan J" <dan.j.williams@intel.com>, 
	"akpm@linux-foundation.org" <akpm@linux-foundation.org>, 
	"kbuild-all@lists.01.org" <kbuild-all@lists.01.org>, 
	"clang-built-linux@googlegroups.com" <clang-built-linux@googlegroups.com>, 
	"linux-mm@kvack.org" <linux-mm@kvack.org>, 
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=cqWBkcez;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1044
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

On Wed, Jul 8, 2020 at 12:23 AM Xia, Hui <hui.xia@intel.com> wrote:
>
>
>
> >-----Original Message-----
> >From: Wei Yang <richard.weiyang@linux.alibaba.com>
> >Sent: 2020=E5=B9=B47=E6=9C=881=E6=97=A5 19:58
> >To: lkp <lkp@intel.com>
> >Cc: Wei Yang <richard.weiyang@linux.alibaba.com>; Williams, Dan J
> ><dan.j.williams@intel.com>; akpm@linux-foundation.org; kbuild-all@lists.=
01.org;
> >clang-built-linux@googlegroups.com; linux-mm@kvack.org; linux-
> >kernel@vger.kernel.org
> >Subject: Re: [PATCH] mm/sparse: only sub-section aligned range would be
> >populated
> >
> >On Wed, Jul 01, 2020 at 02:11:10AM +0800, kernel test robot wrote:
> >>Hi Wei,
> >>
> >>Thank you for the patch! Perhaps something to improve:
> >>
> >>[auto build test WARNING on mmotm/master]
> >>
> >>url:    https://github.com/0day-ci/linux/commits/Wei-Yang/mm-sparse-onl=
y-
> >sub-section-aligned-range-would-be-populated/20200630-101713
> >>base:   git://git.cmpxchg.org/linux-mmotm.git master
> >>config: x86_64-allnoconfig (attached as .config)

Another issue was that this was an allnoconfig x86_64 build with
Clang.  While ARCH=3Dx86_64 defconfigs set:
CONFIG_64BIT=3Dy
CONFIG_X86_64=3Dy

allnoconfig turns those off, making it a 32b x86 build.  We cannot yet
build an ARCH=3Di386 build yet with Clang, so that means this target is
not green to begin with.

+ Arnd
There might be a way for us to disable maybe CONFIG_X86_32 when
building with Clang?  or make it so that randconfig can't dig this up?

+Philip
I'm not sure if it's easy to disable `allnoconfig` x86 builds with
Clang?  Also, I feel like we're asking for a bunch of special cases
while we work through all the issues.  We would like to revert these
special cases once we're in better shape.  Are you tracking a list of
exceptions, so that we can estimate the work to fix on our side, and
that we know to re-enable test coverage once fixed?

> >>compiler: clang version 11.0.0 (https://github.com/llvm/llvm-project
> >>cf1d04484344be52ada8178e41d18fd15a9b880c)
> >>reproduce (this is a W=3D1 build):
> >>        wget https://raw.githubusercontent.com/intel/lkp-
> >tests/master/sbin/make.cross -O ~/bin/make.cross
> >>        chmod +x ~/bin/make.cross
> >>        # install x86_64 cross compiling tool for clang build
> >>        # apt-get install binutils-x86-64-linux-gnu
> >>        # save the attached .config to linux build tree
> >>        COMPILER_INSTALL_PATH=3D$HOME/0day COMPILER=3Dclang make.cross
> >>ARCH=3Dx86_64
> >>
> >>If you fix the issue, kindly add following tag as appropriate
> >>Reported-by: kernel test robot <lkp@intel.com>
> >>
> >
> >Sorry, I don't follow up with this error report.
> >
> >It looks like a build error, while I just removes some check and the bui=
ld pass from
> >my side. Confused with this error report.
> It is false positive. Please ignore. Sorry for inconvenience.
> The report complains about " warning: no previous prototype for function =
'devkmsg_sysctl_set_loglvl'" which is not caused by commit in this report. =
We will investigate and fix in 0-day side.
>
> >
> >>All warnings (new ones prefixed by >>):
> >>
> >>   include/linux/signal.h:137:2: note: expanded from macro '_SIG_SET_BI=
NOP'
> >>   case 1: ^
> >>   include/linux/signal.h:177:1: warning: unannotated fall-through betw=
een
> >switch labels
> >>   _SIG_SET_OP(signotset, _sig_not)
> >>   ^
> >>   include/linux/signal.h:167:2: note: expanded from macro '_SIG_SET_OP=
'
> >>   case 2: =3D ^
> >>   include/linux/signal.h:177:1: warning: unannotated fall-through betw=
een
> >switch labels
> >>   include/linux/signal.h:169:2: note: expanded from macro '_SIG_SET_OP=
'
> >>   case 1: =3D ^
> >>   include/linux/signal.h:190:2: warning: unannotated fall-through betw=
een
> >switch labels
> >>   case 1: =3D 0;
> >>   ^
> >>   include/linux/jhash.h:95:2: note: insert '__attribute__((fallthrough=
));' to silence
> >this warning
> >>   case 6: b +=3D /Dockerfile /Gemfile /Gemfile.lock /bin /boot /c /cep=
hfs /dev /etc
> >/home /htmldocs /include /kbuild /lib /lib32 /lib64 /libx32 /lkp-cloud /=
lkp-src
> >/media /mnt /opt /patch /pkg /proc /root /run /sbin /share /srv /sys /tm=
p /usr
> >/var fall through arch/ block/ certs/ crypto/ drivers/ fs/ include/ init=
/ ipc/ kernel/
> >lib/ mm/ net/ scripts/ security/ sound/ source/ tools/ usr/ virt/
> >>   ^
> >>   __attribute__((fallthrough));
> >>   include/linux/jhash.h:95:2: note: insert 'break;' to avoid fall-thro=
ugh
> >>   case 6: b +=3D /Dockerfile /Gemfile /Gemfile.lock /bin /boot /c /cep=
hfs /dev /etc
> >/home /htmldocs /include /kbuild /lib /lib32 /lib64 /libx32 /lkp-cloud /=
lkp-src
> >/media /mnt /opt /patch /pkg /proc /root /run /sbin /share /srv /sys /tm=
p /usr
> >/var fall through arch/ block/ certs/ crypto/ drivers/ fs/ include/ init=
/ ipc/ kernel/
> >lib/ mm/ net/ scripts/ security/ sound/ source/ tools/ usr/ virt/
> >>   ^
> >>   break;
> >>   include/linux/jhash.h:96:2: warning: unannotated fall-through betwee=
n switch
> >labels
> >>   case 5: b +=3D /Dockerfile /Gemfile /Gemfile.lock /bin /boot /c /cep=
hfs /dev /etc
> >/home /htmldocs /include /kbuild /lib /lib32 /lib64 /libx32 /lkp-cloud /=
lkp-src
> >/media /mnt /opt /patch /pkg /proc /root /run /sbin /share /srv /sys /tm=
p /usr
> >/var fall through arch/ block/ certs/ crypto/ drivers/ fs/ include/ init=
/ ipc/ kernel/
> >lib/ mm/ net/ scripts/ security/ sound/ source/ tools/ usr/ virt/
> >>   ^
> >>   15include/linux/signal.h:190:2: note: insert '__attribute__((fallthr=
ough));' to
> >silence this warning
> >>   case 1: =3D 0;
> >>   ^
> >>   __attribute__((fallthrough));
> >>   include/linux/signal.h:190:2: note: insert 'break;' to avoid fall-th=
rough
> >>   case 1: =3D 0;
> >>   ^
> >>   break;
> >>   include/linux/signal.h:203:2: warninginclude/linux/jhash.h:96:2: not=
e: insert
> >'__attribute__((fallthrough));' to silence this warning
> >>   case 5: b +=3D /Dockerfile /Gemfile /Gemfile.lock /bin /boot /c /cep=
hfs /dev /etc
> >/home /htmldocs /include /kbuild /lib /lib32 /lib64 /libx32 /lkp-cloud /=
lkp-src
> >/media /mnt /opt /patch /pkg /proc /root /run /sbin /share /srv /sys /tm=
p /usr
> >/var fall through arch/ block/ certs/ crypto/ drivers/ fs/ include/ init=
/ ipc/ kernel/
> >lib/ mm/ net/ scripts/ security/ sound/ source/ tools/ usr/ virt/
> >>   ^
> >>   __attribute__((fallthrough));
> >>   include/linux/jhash.h:96:2: note: insert 'break;' to avoid fall-thro=
ugh
> >>   case 5: b +=3D /Dockerfile /Gemfile /Gemfile.lock /bin /boot /c /cep=
hfs /dev /etc
> >/home /htmldocs /include /kbuild /lib /lib32 /lib64 /libx32 /lkp-cloud /=
lkp-src
> >/media /mnt /opt /patch /pkg /proc /root /run /sbin /share /srv /sys /tm=
p /usr
> >/var fall through arch/ block/ certs/ crypto/ drivers/ fs/ include/ init=
/ ipc/ kernel/
> >lib/ mm/ net/ scripts/ security/ sound/ source/ tools/ usr/ virt/
> >>   ^
> >>   break;
> >>   include/linux/jhash.h:97:2: warning: unannotated fall-through betwee=
n switch
> >labels
> >>   case 4: a +=3D /Dockerfile /Gemfile /Gemfile.lock /bin /boot /c /cep=
hfs /dev /etc
> >/home /htmldocs /include /kbuild /lib /lib32 /lib64 /libx32 /lkp-cloud /=
lkp-src
> >/media /mnt /opt /patch /pkg /proc /root /run /sbin /share /srv /sys /tm=
p /usr
> >/var fall through arch/ block/ certs/ crypto/ drivers/ fs/ include/ init=
/ ipc/ kernel/
> >lib/ mm/ net/ scripts/ security/ sound/ source/ tools/ usr/ virt/
> >>   ^
> >>   : unannotated fall-through between switch labels
> >>   case 1: =3D -1;
> >>   ^
> >>   warnings generated.
> >>   include/linux/signal.h:203:2: note: insert '__attribute__((fallthrou=
gh));' to
> >silence this warning
> >>   case 1: =3D -1;
> >>   ^
> >>   __attribute__((fallthrough));
> >>   include/linux/signal.h:15203:2: note: insert 'break;' to avoid fall-=
through
> >>   case 1: =3D -1;
> >>   ^
> >>   break;
> >>   include/linux/jhash.h:97:2: note: insert '__attribute__((fallthrough=
));' to silence
> >this warning
> >>   case 4: a +=3D /Dockerfile /Gemfile /Gemfile.lock /bin /boot /c /cep=
hfs /dev /etc
> >/home /htmldocs /include /kbuild /lib /lib32 /lib64 /libx32 /lkp-cloud /=
lkp-src
> >/media /mnt /opt /patch /pkg /proc /root /run /sbin /share /srv /sys /tm=
p /usr
> >/var fall through arch/ block/ certs/ crypto/ drivers/ fs/ include/ init=
/ ipc/ kernel/
> >lib/ mm/ net/ scripts/ security/ sound/ source/ tools/ usr/ virt/
> >>   ^
> >>   __attribute__((fallthrough));
> >>   include/linux/jhash.h:97:2: note: insert 'break;' to avoid fall-thro=
ugh
> >>   case 4: a +=3D /Dockerfile /Gemfile /Gemfile.lock /bin /boot /c /cep=
hfs /dev /etc
> >/home /htmldocs /include /kbuild /lib /lib32 /lib64 /libx32 /lkp-cloud /=
lkp-src
> >/media /mnt /opt /patch /pkg /proc /root /run /sbin /share /srv /sys /tm=
p /usr
> >/var fall through arch/ block/ certs/ crypto/ drivers/ fs/ include/ init=
/ ipc/ kernel/
> >lib/ mm/ net/ scripts/ security/ sound/ source/ tools/ usr/ virt/
> >>   ^
> >>   break;
> >>   include/linux/jhash.h:98:2: warning: unannotated fall-through betwee=
n switch
> >labels
> >>   case 3: a +=3D /Dockerfile /Gemfile /Gemfile.lock /bin /boot /c /cep=
hfs /dev /etc
> >/home /htmldocs /include /kbuild /lib /lib32 /lib64 /libx32 /lkp-cloud /=
lkp-src
> >/media /mnt /opt /patch /pkg /proc /root /run /sbin /share /srv /sys /tm=
p /usr
> >/var fall through arch/ block/ certs/ crypto/ drivers/ fs/ include/ init=
/ ipc/ kernel/
> >lib/ mm/ net/ scripts/ security/ sound/ source/ tools/ usr/ virt/
> >>   ^
> >>   include/linux/signal.h:233:2: warning: unannotated fall-through betw=
een
> >switch labels
> >>   case 1: ;
> >>   ^
> >>   warnings generated.
> >>   In file included from kernel/printk/printk.c:61:
> >>   kernel/printk/internal.h:54:20: warninginclude/linux/jhash.h:98:2: n=
ote: insert
> >'__attribute__((fallthrough));' to silence this warning
> >>   case 3: a +=3D /Dockerfile /Gemfile /Gemfile.lock /bin /boot /c /cep=
hfs /dev /etc
> >/home /htmldocs /include /kbuild /lib /lib32 /lib64 /libx32 /lkp-cloud /=
lkp-src
> >/media /mnt /opt /patch /pkg /proc /root /run /sbin /share /srv /sys /tm=
p /usr
> >/var fall through arch/ block/ certs/ crypto/ drivers/ fs/ include/ init=
/ ipc/ kernel/
> >lib/ mm/ net/ scripts/ security/ sound/ source/ tools/ usr/ virt/
> >>   ^
> >>   __attribute__((fallthrough));
> >>   include/linux/jhash.h:98:2: note: no previous prototype for function
> >'vprintk_func'
> >>   __printf(1, 0) int vprintk_func(const char va_list args) { return 0;=
 }
> >>   ^
> >>   kernel/printk/internal.h: insert 'break;' to avoid fall-through
> >>   case 3: a +=3D /Dockerfile /Gemfile /Gemfile.lock /bin /boot /c /cep=
hfs /dev /etc
> >/home /htmldocs /include /kbuild /lib /lib32 /lib64 /libx32 /lkp-cloud /=
lkp-src
> >/media /mnt /opt /patch /pkg /proc /root /run /sbin /share /srv /sys /tm=
p /usr
> >/var fall through arch/ block/ certs/ crypto/ drivers/ fs/ include/ init=
/ ipc/ kernel/
> >lib/ mm/ net/ scripts/ security/ sound/ source/ tools/ usr/ virt/
> >>   ^
> >>   break;
> >>   include/linux/jhash.h:99:2: warning: unannotated fall-through betwee=
n switch
> >labels
> >>   case 2: a +=3D /Dockerfile /Gemfile /Gemfile.lock /bin /boot /c /cep=
hfs /dev /etc
> >/home /htmldocs /include /kbuild /lib /lib32 /lib64 /libx32 /lkp-cloud /=
lkp-src
> >/media /mnt /opt /patch /pkg /proc /root /run /sbin /share /srv /sys /tm=
p /usr
> >/var fall through arch/ block/ certs/ crypto/ drivers/ fs/ include/ init=
/ ipc/ kernel/
> >lib/ mm/ net/ scripts/ security/ sound/ source/ tools/ usr/ virt/
> >>   ^
> >>   :54:16: note: declare 'static' if the function is not intended to be=
 used outside
> >of this translation unit
> >>   __printf(1, 0) int vprintk_func(const char va_list args) { return 0;=
 }
> >>   ^
> >>   static
> >>   kernel/printk/printk.cinclude/linux/signal.h:233:2: note: insert
> >'__attribute__((fallthrough));' to silence this warning
> >>   case 1: ;
> >>   ^
> >>   __attribute__((fallthrough));
> >>   include/linux/signal.h:233:2: note: insert 'break;' to avoid fall-th=
rough
> >>   case 1: ;
> >>   ^
> >>   break;
> >>   include/linux/signal.h:245:2: warning: unannotated fall-through betw=
een
> >switch labels
> >>   case 1: ;
> >>   ^
> >>>> :165:5: warning: no previous prototype for function
> >'devkmsg_sysctl_set_loglvl'
> >>   int devkmsg_sysctl_set_loglvl(struct ctl_table int write,
> >>   ^
> >>   kernel/printk/printk.c:165:1: note: declare 'static' if the function=
 is not
> >intended to be used outside of this translation unit
> >>   int devkmsg_sysctl_set_loglvl(struct ctl_table int write,
> >>   ^
> >>   static
> >>   include/linux/jhash.h:99:2: note: insert '__attribute__((fallthrough=
));' to silence
> >this warning
> >>   case 2: a +=3D /Dockerfile /Gemfile /Gemfile.lock /bin /boot /c /cep=
hfs /dev /etc
> >/home /htmldocs /include /kbuild /lib /lib32 /lib64 /libx32 /lkp-cloud /=
lkp-src
> >/media /mnt /opt /patch /pkg /proc /root /run /sbin /share /srv /sys /tm=
p /usr
> >/var fall through arch/ block/ certs/ crypto/ drivers/ fs/ include/ init=
/ ipc/ kernel/
> >lib/ mm/ net/ scripts/ security/ sound/ source/ tools/ usr/ virt/
> >>   ^
> >>   __attribute__((fallthrough));
> >>   include/linux/jhash.h:99:2: note: insert 'break;' to avoid fall-thro=
ugh
> >>   case 2: a +=3D /Dockerfile /Gemfile /Gemfile.lock /bin /boot /c /cep=
hfs /dev /etc
> >/home /htmldocs /include /kbuild /lib /lib32 /lib64 /libx32 /lkp-cloud /=
lkp-src
> >/media /mnt /opt /patch /pkg /proc /root /run /sbin /share /srv /sys /tm=
p /usr
> >/var fall through arch/ block/ certs/ crypto/ drivers/ fs/ include/ init=
/ ipc/ kernel/
> >lib/ mm/ net/ scripts/ security/ sound/ source/ tools/ usr/ virt/
> >>   ^
> >>   break;
> >>   include/linux/jhash.h:100:2: warning: unannotated fall-through betwe=
en
> >switch labels
> >>   case 1: a +=3D
> >>   ^
> >>   include/linux/signal.h:245:2: note: insert '__attribute__((fallthrou=
gh));' to
> >silence this warning
> >>   case 1: ;
> >>   ^
> >>   __attribute__((fallthrough));
> >>   include/linux/signal.h:245:2: note: insert 'break;' to avoid fall-th=
rough
> >>   case 1: ;
> >>   ^
> >>   break;
> >>   kernel/printk/printk.cinclude/linux/jhash.h:100:2: note: insert
> >'__attribute__((fallthrough));' to silence this warning
> >>   case 1: a +=3D
> >>   ^
> >>   __attribute__((fallthrough));
> >>   include/linux/jhash.h:100:2: note: insert 'break;' to avoid fall-thr=
ough
> >>   case 1: a +=3D
> >>   ^
> >>   break;
> >>   include/linux/jhash.h:102:2: warning: unannotated fall-through betwe=
en
> >switch labels
> >>   case 0: /Dockerfile /Gemfile /Gemfile.lock /bin /boot /c /cephfs /de=
v /etc
> >/home /htmldocs /include /kbuild /lib /lib32 /lib64 /libx32 /lkp-cloud /=
lkp-src
> >/media /mnt /opt /patch /pkg /proc /root /run /sbin /share /srv /sys /tm=
p /usr
> >/var Nothing left to add arch/ block/ certs/ crypto/ drivers/ fs/ includ=
e/ init/ ipc/
> >kernel/ lib/ mm/ net/ scripts/ security/ sound/ source/ tools/ usr/ virt=
/
> >>   ^
> >>   include/linux/jhash.h:102:2: note: insert 'break;' to avoid fall-thr=
ough
> >>   case 0: /Dockerfile /Gemfile /Gemfile.lock /bin /boot /c /cephfs /de=
v /etc
> >/home /htmldocs /include /kbuild /lib /lib32 /lib64 /libx32 /lkp-cloud /=
lkp-src
> >/media /mnt /opt /patch /pkg /proc /root /run /sbin /share /srv /sys /tm=
p /usr
> >/var Nothing left to add arch/ block/ certs/ crypto/ drivers/ fs/ includ=
e/ init/ ipc/
> >kernel/ lib/ mm/ net/ scripts/ security/ sound/ source/ tools/ usr/ virt=
/
> >>   ^
> >>   break;
> >>   :2406:10: warning: 'sprintf' will always overflow; destination buffe=
r has size 0,
> >but format string expands to at least 33
> >>   len =3D sprintf(text,
> >>   ^
> >>   include/linux/jhash.h:136:2: warning: unannotated fall-through betwe=
en
> >switch labels
> >>   case 2: b +=3D /Dockerfile /Gemfile /Gemfile.lock /bin /boot /c /cep=
hfs /dev /etc
> >/home /htmldocs /include /kbuild /lib /lib32 /lib64 /libx32 /lkp-cloud /=
lkp-src
> >/media /mnt /opt /patch /pkg /proc /root /run /sbin /share /srv /sys /tm=
p /usr
> >/var fall through arch/ block/ certs/ crypto/ drivers/ fs/ include/ init=
/ ipc/ kernel/
> >lib/ mm/ net/ scripts/ security/ sound/ source/ tools/ usr/ virt/
> >>   ^
> >>   include/linux/jhash.h:136:2: note: insert '__attribute__((fallthroug=
h));' to
> >silence this warning
> >>   case 2: b +=3D /Dockerfile /Gemfile /Gemfile.lock /bin /boot /c /cep=
hfs /dev /etc
> >/home /htmldocs /include /kbuild /lib /lib32 /lib64 /libx32 /lkp-cloud /=
lkp-src
> >/media /mnt /opt /patch /pkg /proc /root /run /sbin /share /srv /sys /tm=
p /usr
> >/var fall through arch/ block/ certs/ crypto/ drivers/ fs/ include/ init=
/ ipc/ kernel/
> >lib/ mm/ net/ scripts/ security/ sound/ source/ tools/ usr/ virt/
> >>   ^
> >>   __attribute__((fallthrough));
> >>   include/linux/jhash.h:136:2: note: insert 'break;' to avoid fall-thr=
ough
> >>   case 2: b +=3D /Dockerfile /Gemfile /Gemfile.lock /bin /boot /c /cep=
hfs /dev /etc
> >/home /htmldocs /include /kbuild /lib /lib32 /lib64 /libx32 /lkp-cloud /=
lkp-src
> >/media /mnt /opt /patch /pkg /proc /root /run /sbin /share /srv /sys /tm=
p /usr
> >/var fall through arch/ block/ certs/ crypto/ drivers/ fs/ include/ init=
/ ipc/ kernel/
> >lib/ mm/ net/ scripts/ security/ sound/ source/ tools/ usr/ virt/
> >>   ^
> >>   break;
> >>   include/linux/jhash.h:137:2: warning: unannotated fall-through betwe=
en
> >switch labels
> >>   case 1: a +=3D
> >>   ^
> >>   In file included from kernel/capability.c:13:
> >>   In file included from include/linux/audit.h:13:
> >>   In file included from include/linux/ptrace.h:7:
> >>   In file included from include/linux/sched/signal.h:6:
> >>   include/linux/signal.h:147:1: warning: unannotated fall-through betw=
een
> >switch labels
> >>   _SIG_SET_BINOP(sigorsets, _sig_or)
> >>   ^
> >>   include/linux/signal.h:133:2: note: expanded from macro '_SIG_SET_BI=
NOP'
> >>   case 2: ^
> >>   include/linux/signal.h:147:1: warning: unannotated fall-through betw=
een
> >switch labels
> >>   include/linux/signal.h:137:2: note: expanded from macro '_SIG_SET_BI=
NOP'
> >>   case 1: ^
> >>   include/linux/signal.h:150:1: warning: unannotated fall-through betw=
een
> >switch labels
> >>   _SIG_SET_BINOP(sigandsets, _sig_and)
> >>   ^
> >>   include/linux/signal.h:133:2:In file included from note: expanded fr=
om macro
> >'_SIG_SET_BINOP'
> >>   case 2: ^
> >>   include/linux/signal.h:150:1: warning: unannotated fall-through betw=
een
> >switch labels
> >>   include/linux/signal.h:137:2: note: expanded from macro '_SIG_SET_BI=
NOP'
> >>   case 1: ^
> >>   include/linux/signal.h:153:1: warning: unannotated fall-through betw=
een
> >switch labels
> >>   _SIG_SET_BINOP(sigandnsets, _sig_andn)
> >>   ^
> >>   include/linux/signal.h:133:2: note: expanded from macro '_SIG_SET_BI=
NOP'
> >>   case 2: kernel/sysctl_binary.c:15:
> >>   In file included from include/linux/netdevice.h:37:
> >>   In file included from include/linux/ethtool.h:18:
> >>   In file included from include/uapi/linux/ethtool.h:19:
> >>   In file included from include/linux/if_ether.h:19:
> >>   include/linux/skbuff.h:3690:2: warning: unannotated fall-through bet=
ween
> >switch labels
> >>   case 24: diffs |=3D __it_diff(a, b, 64);
> >>   ^
> >>--
> >>           ^
> >>           __attribute__((fallthrough));
> >>   include/linux/mm.h:166:2: note: insert 'break;' to avoid fall-throug=
h
> >>           case 56:
> >>           ^
> >>           break;
> >>   In file included from kernel/printk/printk.c:36:
> >>   In file included from include/linux/syscalls.h:76:
> >>   include/linux/signal.h:147:1: warning: unannotated fall-through betw=
een
> >switch labels [-Wimplicit-fallthrough]
> >>   _SIG_SET_BINOP(sigorsets, _sig_or)
> >>   ^
> >>   include/linux/signal.h:133:2: note: expanded from macro '_SIG_SET_BI=
NOP'
> >>           case 2:                                                     =
    \
> >>           ^
> >>   include/linux/signal.h:147:1: warning: unannotated fall-through betw=
een
> >switch labels [-Wimplicit-fallthrough]
> >>   include/linux/signal.h:137:2: note: expanded from macro '_SIG_SET_BI=
NOP'
> >>           case 1:                                                     =
    \
> >>           ^
> >>   include/linux/signal.h:150:1: warning: unannotated fall-through betw=
een
> >switch labels [-Wimplicit-fallthrough]
> >>   _SIG_SET_BINOP(sigandsets, _sig_and)
> >>   ^
> >>   include/linux/signal.h:133:2: note: expanded from macro '_SIG_SET_BI=
NOP'
> >>           case 2:                                                     =
    \
> >>           ^
> >>   include/linux/signal.h:150:1: warning: unannotated fall-through betw=
een
> >switch labels [-Wimplicit-fallthrough]
> >>   include/linux/signal.h:137:2: note: expanded from macro '_SIG_SET_BI=
NOP'
> >>           case 1:                                                     =
    \
> >>           ^
> >>   include/linux/signal.h:153:1: warning: unannotated fall-through betw=
een
> >switch labels [-Wimplicit-fallthrough]
> >>   _SIG_SET_BINOP(sigandnsets, _sig_andn)
> >>   ^
> >>   include/linux/signal.h:133:2: note: expanded from macro '_SIG_SET_BI=
NOP'
> >>           case 2:                                                     =
    \
> >>           ^
> >>   include/linux/signal.h:153:1: warning: unannotated fall-through betw=
een
> >switch labels [-Wimplicit-fallthrough]
> >>   include/linux/signal.h:137:2: note: expanded from macro '_SIG_SET_BI=
NOP'
> >>           case 1:                                                     =
    \
> >>           ^
> >>   include/linux/signal.h:177:1: warning: unannotated fall-through betw=
een
> >switch labels [-Wimplicit-fallthrough]
> >>   _SIG_SET_OP(signotset, _sig_not)
> >>   ^
> >>   include/linux/signal.h:167:2: note: expanded from macro '_SIG_SET_OP=
'
> >>           case 2: set->sig[1] =3D op(set->sig[1]);                    =
      \
> >>           ^
> >>   include/linux/signal.h:177:1: warning: unannotated fall-through betw=
een
> >switch labels [-Wimplicit-fallthrough]
> >>   include/linux/signal.h:169:2: note: expanded from macro '_SIG_SET_OP=
'
> >>           case 1: set->sig[0] =3D op(set->sig[0]);                    =
      \
> >>           ^
> >>   include/linux/signal.h:190:2: warning: unannotated fall-through betw=
een
> >switch labels [-Wimplicit-fallthrough]
> >>           case 1: set->sig[0] =3D 0;
> >>           ^
> >>   include/linux/signal.h:190:2: note: insert '__attribute__((fallthrou=
gh));' to
> >silence this warning
> >>           case 1: set->sig[0] =3D 0;
> >>           ^
> >>           __attribute__((fallthrough));
> >>   include/linux/signal.h:190:2: note: insert 'break;' to avoid fall-th=
rough
> >>           case 1: set->sig[0] =3D 0;
> >>           ^
> >>           break;
> >>   include/linux/signal.h:203:2: warning: unannotated fall-through betw=
een
> >switch labels [-Wimplicit-fallthrough]
> >>           case 1: set->sig[0] =3D -1;
> >>           ^
> >>   include/linux/signal.h:203:2: note: insert '__attribute__((fallthrou=
gh));' to
> >silence this warning
> >>           case 1: set->sig[0] =3D -1;
> >>           ^
> >>           __attribute__((fallthrough));
> >>   include/linux/signal.h:203:2: note: insert 'break;' to avoid fall-th=
rough
> >>           case 1: set->sig[0] =3D -1;
> >>           ^
> >>           break;
> >>   include/linux/signal.h:233:2: warning: unannotated fall-through betw=
een
> >switch labels [-Wimplicit-fallthrough]
> >>           case 1: ;
> >>           ^
> >>   include/linux/signal.h:233:2: note: insert '__attribute__((fallthrou=
gh));' to
> >silence this warning
> >>           case 1: ;
> >>           ^
> >>           __attribute__((fallthrough));
> >>   include/linux/signal.h:233:2: note: insert 'break;' to avoid fall-th=
rough
> >>           case 1: ;
> >>           ^
> >>           break;
> >>   include/linux/signal.h:245:2: warning: unannotated fall-through betw=
een
> >switch labels [-Wimplicit-fallthrough]
> >>           case 1: ;
> >>           ^
> >>   include/linux/signal.h:245:2: note: insert '__attribute__((fallthrou=
gh));' to
> >silence this warning
> >>           case 1: ;
> >>           ^
> >>           __attribute__((fallthrough));
> >>   include/linux/signal.h:245:2: note: insert 'break;' to avoid fall-th=
rough
> >>           case 1: ;
> >>           ^
> >>           break;
> >>   In file included from kernel/printk/printk.c:61:
> >>   kernel/printk/internal.h:54:20: warning: no previous prototype for f=
unction
> >'vprintk_func' [-Wmissing-prototypes]
> >>   __printf(1, 0) int vprintk_func(const char *fmt, va_list args) { ret=
urn 0; }
> >>                      ^
> >>   kernel/printk/internal.h:54:16: note: declare 'static' if the functi=
on is not
> >intended to be used outside of this translation unit
> >>   __printf(1, 0) int vprintk_func(const char *fmt, va_list args) { ret=
urn 0; }
> >>                  ^
> >>                  static
> >>>> kernel/printk/printk.c:165:5: warning: no previous prototype for
> >>>> function 'devkmsg_sysctl_set_loglvl' [-Wmissing-prototypes]
> >>   int devkmsg_sysctl_set_loglvl(struct ctl_table *table, int write,
> >>       ^
> >>   kernel/printk/printk.c:165:1: note: declare 'static' if the function=
 is not
> >intended to be used outside of this translation unit
> >>   int devkmsg_sysctl_set_loglvl(struct ctl_table *table, int write,
> >>   ^
> >>   static
> >>   kernel/printk/printk.c:2406:10: warning: 'sprintf' will always overf=
low;
> >destination buffer has size 0, but format string expands to at least 33 =
[-Wfortify-
> >source]
> >>                           len =3D sprintf(text,
> >>                                 ^
> >>   18 warnings generated.
> >>
> >>---
> >>0-DAY CI Kernel Test Service, Intel Corporation
> >>https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
> >
> >
> >
> >--
> >Wei Yang
> >Help you, Help me
>
> --
> You received this message because you are subscribed to the Google Groups=
 "Clang Built Linux" group.
> To unsubscribe from this group and stop receiving emails from it, send an=
 email to clang-built-linux+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgi=
d/clang-built-linux/MN2PR11MB4064B0104312A3D22F1698F3E5670%40MN2PR11MB4064.=
namprd11.prod.outlook.com.



--=20
Thanks,
~Nick Desaulniers

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/CAKwvOdkVqY8WAfdTtHbgnJ2jafvsJCUgx2Rx4PCeNiX7HjLLow%40mai=
l.gmail.com.
