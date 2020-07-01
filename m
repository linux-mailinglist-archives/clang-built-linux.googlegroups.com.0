Return-Path: <clang-built-linux+bncBAABB6HU6H3QKGQEVRCC5YI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3d.google.com (mail-yb1-xb3d.google.com [IPv6:2607:f8b0:4864:20::b3d])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E851210AA3
	for <lists+clang-built-linux@lfdr.de>; Wed,  1 Jul 2020 13:58:49 +0200 (CEST)
Received: by mail-yb1-xb3d.google.com with SMTP id h10sf844404ybk.19
        for <lists+clang-built-linux@lfdr.de>; Wed, 01 Jul 2020 04:58:49 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1593604728; cv=pass;
        d=google.com; s=arc-20160816;
        b=tKawzGAG8UqFtS8aSlD5dtgKjkj1rtU69bXPZrM/y19Q+X4egY95R1Q+rgPuXgUTpD
         pPyK9609jd7GzU/go9IXHWN4eYyukeBNK5kj2rplKT0VdWjGrb4enFa05i0EdgxzQVCG
         UiKIUaD1/OMjKy9ripH73spNXd5KIuJJJleQGwQK4G09tPSzmBHRLeO2V7tYaGPqD16S
         8fAZOg8c64AsBUTH/amW8VyF7EiY+/ZeoY8TNgbq0OXFOLkaSl0XcKn21Rl3UAQg0PlM
         YrjhmbUqyhsFRnhGIMcwSnxyAJ02ZreIkdvDbw7fzuTL+SyuVftvmfl+4Q0KfwimlzYK
         KONA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :in-reply-to:content-disposition:mime-version:references:reply-to
         :message-id:subject:cc:to:from:date:sender:dkim-signature;
        bh=u31YQCwBlhcxXTnEWBYrhWtQMvZQYm2tNroKUkQqGLk=;
        b=R61YCPeKiGGrrrlLbFWzreCKL9wIniIhodjQzLUfjSwSMB34+T2ijT3/Jr023Q8qei
         ADevyAIh/mA7we29JCCatQevDVTkmKYmyljBu3GvFVFo0HLL0uE71RRdGLi8YuOIrR/Q
         DwXAGd+XqeAYmHzUDqEWaIp9gD4ID5OPWDKRCYMgiYc0CExUWW9tHDjoCsAhKfZYiXsA
         tWHuwu1aBPvIPb6Onxta2RSze2BBRSfbBeWqfJVxzJOAlMoZWDaQXGgLUzpUAllMa7a8
         bX+IbZHF+fPsFoaVcnFS6MQq4nQQJyhiMmZpkHIzOUVSVTQvfzt2sjvU7AM33pTpmyyM
         3eFQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of richard.weiyang@linux.alibaba.com designates 47.88.44.36 as permitted sender) smtp.mailfrom=richard.weiyang@linux.alibaba.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=alibaba.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:reply-to:references
         :mime-version:content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:content-transfer-encoding
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=u31YQCwBlhcxXTnEWBYrhWtQMvZQYm2tNroKUkQqGLk=;
        b=mKCtQJDznjpJZE6yO/n44MK0pcOKnfOy21uPSVlYQxFcaWJZ4Y433IWgWv/TDTxNLz
         NqITJytsIofZKbNEloFqFNiUUhB3WEi9cxT3Gu+0/7smQbvtDV5XP4Sb4TlVnnkvUr5E
         ii0qoRyt5x7TD95J4mPx88ememhZAZ029MhASWqdGYMLFI5rasdBmsBwdSXEKxmdJF3B
         FqWxYMF+Xj8/PZ4DNAkVxipwsSSXgBPk3tZn1SDkQyPHN8fIy4fROkOQEG3o7wNguQQC
         lvkPbhWcpBK8l4yUlPym+xLX/cy5zUYWO4MV/wW3jbhZCEiCOo+Jzftlz8D8EUS7T0CM
         1AWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :reply-to:references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results
         :content-transfer-encoding:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=u31YQCwBlhcxXTnEWBYrhWtQMvZQYm2tNroKUkQqGLk=;
        b=Zz2Y/hIw81NxaawXGlPD9i3K9pui92c/h1FhgUalBpZEhh4TOYJHtJPNxF0P2S17QR
         SxyCDtgASkJxOeRDI9cj/RVWPjfv+lzHA3XL5Nxr9LVM6hQVx7yks0DwvQC/3FuDYvss
         d+p2+19Qiuv7GgcdxQ5kfYnY4CxmUMDujj45VlXZvNQUb37iJkhGjo7OtrELxH4eOXA9
         P77GyV+I1au0uKfQ2+83q896pbDRw9zi8/Skjq4fm9uiZmaKsVRu70KwcbC+7bBtpsH4
         MnDJ3iEG8kyJWHv5Ik8N6lkgcnqkKeqj+7s9+ebmeaOBRKd3zk3sQj/nTMvVIv2Q1dLT
         2CBA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531PT6iCN67boNuC5HoFJYjj7gxmvuZeA608KXQqlK+tM8xGUfhF
	AgsRw6CTA86bCCHJyEsXbi8=
X-Google-Smtp-Source: ABdhPJzr3Ge10RVXswgOMWx4D5IA/+HFrb7glDaPMx8MvPe7GFYteWeIKJDNa/xghsJzNUkpjS1IDw==
X-Received: by 2002:a25:9904:: with SMTP id z4mr41140820ybn.146.1593604728635;
        Wed, 01 Jul 2020 04:58:48 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:6602:: with SMTP id a2ls873228ybc.0.gmail; Wed, 01 Jul
 2020 04:58:48 -0700 (PDT)
X-Received: by 2002:a25:dcd1:: with SMTP id y200mr36763960ybe.105.1593604728267;
        Wed, 01 Jul 2020 04:58:48 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1593604728; cv=none;
        d=google.com; s=arc-20160816;
        b=bi+7KOCWG2dS41gqNsrl7IFVckSFWYtSIn+H5wYKEwGxcHwucDFCgCbG5CSAa32MDf
         62F7TrB3j1wJcjwdPowHUavyoEtVDs2yF/B6bpc/J+f5jVSSE64rZAJLX4OTt18+9CPb
         ler2aqKZQsDevH6OdRRKmNuqP44Mk/qTxm64WCXGcfIjq4xEwM9t58qr0EQEwTWwhfLv
         VsXNhpI8peRLY6tSEoGdj1cgsP4X3bl00giYQXSIJlvG9cZmFLDZXsJdRSM9RjQXzohy
         4wSkSMQKc3ukIEiRRiX+fr77CUvyV9ORuYoroci3rHPnlMFPybbyCCAAKY2q1Mwzd4hg
         Lrjg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:reply-to
         :message-id:subject:cc:to:from:date;
        bh=wWOqB8hYSjceePtXJOioyU8hsp1TOv8KuKIFPIBlmnY=;
        b=VF/acfMvVN4EcZ85lDYySxpqIW9sRQXUVFctZTc5xMsCgkQAlNj15SjhIcJl+zKRdx
         0IL65Hr+lHmI5aNloTFNgCY3zsXJZvMuau42CiINPkrJ/FAxDKBbgka3rPzyEdG/jY5Q
         CqxOYP2kxZDvupkyQgvvVfP27CjFPAHKltN5Wml388Ixja9Tu3F0yONqd0yCS2FwQ6/E
         QBmgwv/utRuvdoHJ72sNA7fclOpOpT1JgJ22fkzCWH+VEYEn0zT76aYmD6uQO1eQ+s7o
         ptwrcHDq3PYcY/IIu2nakSZWY3D67jWQWj4FiTNYqIvw3mHhKqMK3AQq0ifzrtuyaq87
         vP+A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of richard.weiyang@linux.alibaba.com designates 47.88.44.36 as permitted sender) smtp.mailfrom=richard.weiyang@linux.alibaba.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=alibaba.com
Received: from out4436.biz.mail.alibaba.com (out4436.biz.mail.alibaba.com. [47.88.44.36])
        by gmr-mx.google.com with ESMTPS id a7si266938ybj.5.2020.07.01.04.58.46
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 01 Jul 2020 04:58:48 -0700 (PDT)
Received-SPF: pass (google.com: domain of richard.weiyang@linux.alibaba.com designates 47.88.44.36 as permitted sender) client-ip=47.88.44.36;
X-Alimail-AntiSpam: AC=PASS;BC=-1|-1;BR=01201311R561e4;CH=green;DM=||false|;DS=||;FP=0|-1|-1|-1|0|-1|-1|-1;HT=e01f04427;MF=richard.weiyang@linux.alibaba.com;NM=1;PH=DS;RN=8;SR=0;TI=SMTPD_---0U1MtS5r_1593604696;
Received: from localhost(mailfrom:richard.weiyang@linux.alibaba.com fp:SMTPD_---0U1MtS5r_1593604696)
          by smtp.aliyun-inc.com(127.0.0.1);
          Wed, 01 Jul 2020 19:58:16 +0800
Date: Wed, 1 Jul 2020 19:58:16 +0800
From: Wei Yang <richard.weiyang@linux.alibaba.com>
To: kernel test robot <lkp@intel.com>
Cc: Wei Yang <richard.weiyang@linux.alibaba.com>, dan.j.williams@intel.com,
	akpm@linux-foundation.org, kbuild-all@lists.01.org,
	clang-built-linux@googlegroups.com, linux-mm@kvack.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH] mm/sparse: only sub-section aligned range would be
 populated
Message-ID: <20200701115816.GB4979@L-31X9LVDL-1304.local>
Reply-To: Wei Yang <richard.weiyang@linux.alibaba.com>
References: <20200630021436.43281-1-richard.weiyang@linux.alibaba.com>
 <202007010217.Rut2zTnF%lkp@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <202007010217.Rut2zTnF%lkp@intel.com>
X-Original-Sender: richard.weiyang@linux.alibaba.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of richard.weiyang@linux.alibaba.com designates
 47.88.44.36 as permitted sender) smtp.mailfrom=richard.weiyang@linux.alibaba.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=alibaba.com
Content-Transfer-Encoding: quoted-printable
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

On Wed, Jul 01, 2020 at 02:11:10AM +0800, kernel test robot wrote:
>Hi Wei,
>
>Thank you for the patch! Perhaps something to improve:
>
>[auto build test WARNING on mmotm/master]
>
>url:    https://github.com/0day-ci/linux/commits/Wei-Yang/mm-sparse-only-s=
ub-section-aligned-range-would-be-populated/20200630-101713
>base:   git://git.cmpxchg.org/linux-mmotm.git master
>config: x86_64-allnoconfig (attached as .config)
>compiler: clang version 11.0.0 (https://github.com/llvm/llvm-project cf1d0=
4484344be52ada8178e41d18fd15a9b880c)
>reproduce (this is a W=3D1 build):
>        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin=
/make.cross -O ~/bin/make.cross
>        chmod +x ~/bin/make.cross
>        # install x86_64 cross compiling tool for clang build
>        # apt-get install binutils-x86-64-linux-gnu
>        # save the attached .config to linux build tree
>        COMPILER_INSTALL_PATH=3D$HOME/0day COMPILER=3Dclang make.cross ARC=
H=3Dx86_64=20
>
>If you fix the issue, kindly add following tag as appropriate
>Reported-by: kernel test robot <lkp@intel.com>
>

Sorry, I don't follow up with this error report.

It looks like a build error, while I just removes some check and the build
pass from my side. Confused with this error report.

>All warnings (new ones prefixed by >>):
>
>   include/linux/signal.h:137:2: note: expanded from macro '_SIG_SET_BINOP=
'
>   case 1: ^
>   include/linux/signal.h:177:1: warning: unannotated fall-through between=
 switch labels
>   _SIG_SET_OP(signotset, _sig_not)
>   ^
>   include/linux/signal.h:167:2: note: expanded from macro '_SIG_SET_OP'
>   case 2: =3D ^
>   include/linux/signal.h:177:1: warning: unannotated fall-through between=
 switch labels
>   include/linux/signal.h:169:2: note: expanded from macro '_SIG_SET_OP'
>   case 1: =3D ^
>   include/linux/signal.h:190:2: warning: unannotated fall-through between=
 switch labels
>   case 1: =3D 0;
>   ^
>   include/linux/jhash.h:95:2: note: insert '__attribute__((fallthrough));=
' to silence this warning
>   case 6: b +=3D /Dockerfile /Gemfile /Gemfile.lock /bin /boot /c /cephfs=
 /dev /etc /home /htmldocs /include /kbuild /lib /lib32 /lib64 /libx32 /lkp=
-cloud /lkp-src /media /mnt /opt /patch /pkg /proc /root /run /sbin /share =
/srv /sys /tmp /usr /var fall through arch/ block/ certs/ crypto/ drivers/ =
fs/ include/ init/ ipc/ kernel/ lib/ mm/ net/ scripts/ security/ sound/ sou=
rce/ tools/ usr/ virt/
>   ^
>   __attribute__((fallthrough));
>   include/linux/jhash.h:95:2: note: insert 'break;' to avoid fall-through
>   case 6: b +=3D /Dockerfile /Gemfile /Gemfile.lock /bin /boot /c /cephfs=
 /dev /etc /home /htmldocs /include /kbuild /lib /lib32 /lib64 /libx32 /lkp=
-cloud /lkp-src /media /mnt /opt /patch /pkg /proc /root /run /sbin /share =
/srv /sys /tmp /usr /var fall through arch/ block/ certs/ crypto/ drivers/ =
fs/ include/ init/ ipc/ kernel/ lib/ mm/ net/ scripts/ security/ sound/ sou=
rce/ tools/ usr/ virt/
>   ^
>   break;
>   include/linux/jhash.h:96:2: warning: unannotated fall-through between s=
witch labels
>   case 5: b +=3D /Dockerfile /Gemfile /Gemfile.lock /bin /boot /c /cephfs=
 /dev /etc /home /htmldocs /include /kbuild /lib /lib32 /lib64 /libx32 /lkp=
-cloud /lkp-src /media /mnt /opt /patch /pkg /proc /root /run /sbin /share =
/srv /sys /tmp /usr /var fall through arch/ block/ certs/ crypto/ drivers/ =
fs/ include/ init/ ipc/ kernel/ lib/ mm/ net/ scripts/ security/ sound/ sou=
rce/ tools/ usr/ virt/
>   ^
>   15include/linux/signal.h:190:2: note: insert '__attribute__((fallthroug=
h));' to silence this warning
>   case 1: =3D 0;
>   ^
>   __attribute__((fallthrough));
>   include/linux/signal.h:190:2: note: insert 'break;' to avoid fall-throu=
gh
>   case 1: =3D 0;
>   ^
>   break;
>   include/linux/signal.h:203:2: warninginclude/linux/jhash.h:96:2: note: =
insert '__attribute__((fallthrough));' to silence this warning
>   case 5: b +=3D /Dockerfile /Gemfile /Gemfile.lock /bin /boot /c /cephfs=
 /dev /etc /home /htmldocs /include /kbuild /lib /lib32 /lib64 /libx32 /lkp=
-cloud /lkp-src /media /mnt /opt /patch /pkg /proc /root /run /sbin /share =
/srv /sys /tmp /usr /var fall through arch/ block/ certs/ crypto/ drivers/ =
fs/ include/ init/ ipc/ kernel/ lib/ mm/ net/ scripts/ security/ sound/ sou=
rce/ tools/ usr/ virt/
>   ^
>   __attribute__((fallthrough));
>   include/linux/jhash.h:96:2: note: insert 'break;' to avoid fall-through
>   case 5: b +=3D /Dockerfile /Gemfile /Gemfile.lock /bin /boot /c /cephfs=
 /dev /etc /home /htmldocs /include /kbuild /lib /lib32 /lib64 /libx32 /lkp=
-cloud /lkp-src /media /mnt /opt /patch /pkg /proc /root /run /sbin /share =
/srv /sys /tmp /usr /var fall through arch/ block/ certs/ crypto/ drivers/ =
fs/ include/ init/ ipc/ kernel/ lib/ mm/ net/ scripts/ security/ sound/ sou=
rce/ tools/ usr/ virt/
>   ^
>   break;
>   include/linux/jhash.h:97:2: warning: unannotated fall-through between s=
witch labels
>   case 4: a +=3D /Dockerfile /Gemfile /Gemfile.lock /bin /boot /c /cephfs=
 /dev /etc /home /htmldocs /include /kbuild /lib /lib32 /lib64 /libx32 /lkp=
-cloud /lkp-src /media /mnt /opt /patch /pkg /proc /root /run /sbin /share =
/srv /sys /tmp /usr /var fall through arch/ block/ certs/ crypto/ drivers/ =
fs/ include/ init/ ipc/ kernel/ lib/ mm/ net/ scripts/ security/ sound/ sou=
rce/ tools/ usr/ virt/
>   ^
>   : unannotated fall-through between switch labels
>   case 1: =3D -1;
>   ^
>   warnings generated.
>   include/linux/signal.h:203:2: note: insert '__attribute__((fallthrough)=
);' to silence this warning
>   case 1: =3D -1;
>   ^
>   __attribute__((fallthrough));
>   include/linux/signal.h:15203:2: note: insert 'break;' to avoid fall-thr=
ough
>   case 1: =3D -1;
>   ^
>   break;
>   include/linux/jhash.h:97:2: note: insert '__attribute__((fallthrough));=
' to silence this warning
>   case 4: a +=3D /Dockerfile /Gemfile /Gemfile.lock /bin /boot /c /cephfs=
 /dev /etc /home /htmldocs /include /kbuild /lib /lib32 /lib64 /libx32 /lkp=
-cloud /lkp-src /media /mnt /opt /patch /pkg /proc /root /run /sbin /share =
/srv /sys /tmp /usr /var fall through arch/ block/ certs/ crypto/ drivers/ =
fs/ include/ init/ ipc/ kernel/ lib/ mm/ net/ scripts/ security/ sound/ sou=
rce/ tools/ usr/ virt/
>   ^
>   __attribute__((fallthrough));
>   include/linux/jhash.h:97:2: note: insert 'break;' to avoid fall-through
>   case 4: a +=3D /Dockerfile /Gemfile /Gemfile.lock /bin /boot /c /cephfs=
 /dev /etc /home /htmldocs /include /kbuild /lib /lib32 /lib64 /libx32 /lkp=
-cloud /lkp-src /media /mnt /opt /patch /pkg /proc /root /run /sbin /share =
/srv /sys /tmp /usr /var fall through arch/ block/ certs/ crypto/ drivers/ =
fs/ include/ init/ ipc/ kernel/ lib/ mm/ net/ scripts/ security/ sound/ sou=
rce/ tools/ usr/ virt/
>   ^
>   break;
>   include/linux/jhash.h:98:2: warning: unannotated fall-through between s=
witch labels
>   case 3: a +=3D /Dockerfile /Gemfile /Gemfile.lock /bin /boot /c /cephfs=
 /dev /etc /home /htmldocs /include /kbuild /lib /lib32 /lib64 /libx32 /lkp=
-cloud /lkp-src /media /mnt /opt /patch /pkg /proc /root /run /sbin /share =
/srv /sys /tmp /usr /var fall through arch/ block/ certs/ crypto/ drivers/ =
fs/ include/ init/ ipc/ kernel/ lib/ mm/ net/ scripts/ security/ sound/ sou=
rce/ tools/ usr/ virt/
>   ^
>   include/linux/signal.h:233:2: warning: unannotated fall-through between=
 switch labels
>   case 1: ;
>   ^
>   warnings generated.
>   In file included from kernel/printk/printk.c:61:
>   kernel/printk/internal.h:54:20: warninginclude/linux/jhash.h:98:2: note=
: insert '__attribute__((fallthrough));' to silence this warning
>   case 3: a +=3D /Dockerfile /Gemfile /Gemfile.lock /bin /boot /c /cephfs=
 /dev /etc /home /htmldocs /include /kbuild /lib /lib32 /lib64 /libx32 /lkp=
-cloud /lkp-src /media /mnt /opt /patch /pkg /proc /root /run /sbin /share =
/srv /sys /tmp /usr /var fall through arch/ block/ certs/ crypto/ drivers/ =
fs/ include/ init/ ipc/ kernel/ lib/ mm/ net/ scripts/ security/ sound/ sou=
rce/ tools/ usr/ virt/
>   ^
>   __attribute__((fallthrough));
>   include/linux/jhash.h:98:2: note: no previous prototype for function 'v=
printk_func'
>   __printf(1, 0) int vprintk_func(const char va_list args) { return 0; }
>   ^
>   kernel/printk/internal.h: insert 'break;' to avoid fall-through
>   case 3: a +=3D /Dockerfile /Gemfile /Gemfile.lock /bin /boot /c /cephfs=
 /dev /etc /home /htmldocs /include /kbuild /lib /lib32 /lib64 /libx32 /lkp=
-cloud /lkp-src /media /mnt /opt /patch /pkg /proc /root /run /sbin /share =
/srv /sys /tmp /usr /var fall through arch/ block/ certs/ crypto/ drivers/ =
fs/ include/ init/ ipc/ kernel/ lib/ mm/ net/ scripts/ security/ sound/ sou=
rce/ tools/ usr/ virt/
>   ^
>   break;
>   include/linux/jhash.h:99:2: warning: unannotated fall-through between s=
witch labels
>   case 2: a +=3D /Dockerfile /Gemfile /Gemfile.lock /bin /boot /c /cephfs=
 /dev /etc /home /htmldocs /include /kbuild /lib /lib32 /lib64 /libx32 /lkp=
-cloud /lkp-src /media /mnt /opt /patch /pkg /proc /root /run /sbin /share =
/srv /sys /tmp /usr /var fall through arch/ block/ certs/ crypto/ drivers/ =
fs/ include/ init/ ipc/ kernel/ lib/ mm/ net/ scripts/ security/ sound/ sou=
rce/ tools/ usr/ virt/
>   ^
>   :54:16: note: declare 'static' if the function is not intended to be us=
ed outside of this translation unit
>   __printf(1, 0) int vprintk_func(const char va_list args) { return 0; }
>   ^
>   static
>   kernel/printk/printk.cinclude/linux/signal.h:233:2: note: insert '__att=
ribute__((fallthrough));' to silence this warning
>   case 1: ;
>   ^
>   __attribute__((fallthrough));
>   include/linux/signal.h:233:2: note: insert 'break;' to avoid fall-throu=
gh
>   case 1: ;
>   ^
>   break;
>   include/linux/signal.h:245:2: warning: unannotated fall-through between=
 switch labels
>   case 1: ;
>   ^
>>> :165:5: warning: no previous prototype for function 'devkmsg_sysctl_set=
_loglvl'
>   int devkmsg_sysctl_set_loglvl(struct ctl_table int write,
>   ^
>   kernel/printk/printk.c:165:1: note: declare 'static' if the function is=
 not intended to be used outside of this translation unit
>   int devkmsg_sysctl_set_loglvl(struct ctl_table int write,
>   ^
>   static
>   include/linux/jhash.h:99:2: note: insert '__attribute__((fallthrough));=
' to silence this warning
>   case 2: a +=3D /Dockerfile /Gemfile /Gemfile.lock /bin /boot /c /cephfs=
 /dev /etc /home /htmldocs /include /kbuild /lib /lib32 /lib64 /libx32 /lkp=
-cloud /lkp-src /media /mnt /opt /patch /pkg /proc /root /run /sbin /share =
/srv /sys /tmp /usr /var fall through arch/ block/ certs/ crypto/ drivers/ =
fs/ include/ init/ ipc/ kernel/ lib/ mm/ net/ scripts/ security/ sound/ sou=
rce/ tools/ usr/ virt/
>   ^
>   __attribute__((fallthrough));
>   include/linux/jhash.h:99:2: note: insert 'break;' to avoid fall-through
>   case 2: a +=3D /Dockerfile /Gemfile /Gemfile.lock /bin /boot /c /cephfs=
 /dev /etc /home /htmldocs /include /kbuild /lib /lib32 /lib64 /libx32 /lkp=
-cloud /lkp-src /media /mnt /opt /patch /pkg /proc /root /run /sbin /share =
/srv /sys /tmp /usr /var fall through arch/ block/ certs/ crypto/ drivers/ =
fs/ include/ init/ ipc/ kernel/ lib/ mm/ net/ scripts/ security/ sound/ sou=
rce/ tools/ usr/ virt/
>   ^
>   break;
>   include/linux/jhash.h:100:2: warning: unannotated fall-through between =
switch labels
>   case 1: a +=3D
>   ^
>   include/linux/signal.h:245:2: note: insert '__attribute__((fallthrough)=
);' to silence this warning
>   case 1: ;
>   ^
>   __attribute__((fallthrough));
>   include/linux/signal.h:245:2: note: insert 'break;' to avoid fall-throu=
gh
>   case 1: ;
>   ^
>   break;
>   kernel/printk/printk.cinclude/linux/jhash.h:100:2: note: insert '__attr=
ibute__((fallthrough));' to silence this warning
>   case 1: a +=3D
>   ^
>   __attribute__((fallthrough));
>   include/linux/jhash.h:100:2: note: insert 'break;' to avoid fall-throug=
h
>   case 1: a +=3D
>   ^
>   break;
>   include/linux/jhash.h:102:2: warning: unannotated fall-through between =
switch labels
>   case 0: /Dockerfile /Gemfile /Gemfile.lock /bin /boot /c /cephfs /dev /=
etc /home /htmldocs /include /kbuild /lib /lib32 /lib64 /libx32 /lkp-cloud =
/lkp-src /media /mnt /opt /patch /pkg /proc /root /run /sbin /share /srv /s=
ys /tmp /usr /var Nothing left to add arch/ block/ certs/ crypto/ drivers/ =
fs/ include/ init/ ipc/ kernel/ lib/ mm/ net/ scripts/ security/ sound/ sou=
rce/ tools/ usr/ virt/
>   ^
>   include/linux/jhash.h:102:2: note: insert 'break;' to avoid fall-throug=
h
>   case 0: /Dockerfile /Gemfile /Gemfile.lock /bin /boot /c /cephfs /dev /=
etc /home /htmldocs /include /kbuild /lib /lib32 /lib64 /libx32 /lkp-cloud =
/lkp-src /media /mnt /opt /patch /pkg /proc /root /run /sbin /share /srv /s=
ys /tmp /usr /var Nothing left to add arch/ block/ certs/ crypto/ drivers/ =
fs/ include/ init/ ipc/ kernel/ lib/ mm/ net/ scripts/ security/ sound/ sou=
rce/ tools/ usr/ virt/
>   ^
>   break;
>   :2406:10: warning: 'sprintf' will always overflow; destination buffer h=
as size 0, but format string expands to at least 33
>   len =3D sprintf(text,
>   ^
>   include/linux/jhash.h:136:2: warning: unannotated fall-through between =
switch labels
>   case 2: b +=3D /Dockerfile /Gemfile /Gemfile.lock /bin /boot /c /cephfs=
 /dev /etc /home /htmldocs /include /kbuild /lib /lib32 /lib64 /libx32 /lkp=
-cloud /lkp-src /media /mnt /opt /patch /pkg /proc /root /run /sbin /share =
/srv /sys /tmp /usr /var fall through arch/ block/ certs/ crypto/ drivers/ =
fs/ include/ init/ ipc/ kernel/ lib/ mm/ net/ scripts/ security/ sound/ sou=
rce/ tools/ usr/ virt/
>   ^
>   include/linux/jhash.h:136:2: note: insert '__attribute__((fallthrough))=
;' to silence this warning
>   case 2: b +=3D /Dockerfile /Gemfile /Gemfile.lock /bin /boot /c /cephfs=
 /dev /etc /home /htmldocs /include /kbuild /lib /lib32 /lib64 /libx32 /lkp=
-cloud /lkp-src /media /mnt /opt /patch /pkg /proc /root /run /sbin /share =
/srv /sys /tmp /usr /var fall through arch/ block/ certs/ crypto/ drivers/ =
fs/ include/ init/ ipc/ kernel/ lib/ mm/ net/ scripts/ security/ sound/ sou=
rce/ tools/ usr/ virt/
>   ^
>   __attribute__((fallthrough));
>   include/linux/jhash.h:136:2: note: insert 'break;' to avoid fall-throug=
h
>   case 2: b +=3D /Dockerfile /Gemfile /Gemfile.lock /bin /boot /c /cephfs=
 /dev /etc /home /htmldocs /include /kbuild /lib /lib32 /lib64 /libx32 /lkp=
-cloud /lkp-src /media /mnt /opt /patch /pkg /proc /root /run /sbin /share =
/srv /sys /tmp /usr /var fall through arch/ block/ certs/ crypto/ drivers/ =
fs/ include/ init/ ipc/ kernel/ lib/ mm/ net/ scripts/ security/ sound/ sou=
rce/ tools/ usr/ virt/
>   ^
>   break;
>   include/linux/jhash.h:137:2: warning: unannotated fall-through between =
switch labels
>   case 1: a +=3D
>   ^
>   In file included from kernel/capability.c:13:
>   In file included from include/linux/audit.h:13:
>   In file included from include/linux/ptrace.h:7:
>   In file included from include/linux/sched/signal.h:6:
>   include/linux/signal.h:147:1: warning: unannotated fall-through between=
 switch labels
>   _SIG_SET_BINOP(sigorsets, _sig_or)
>   ^
>   include/linux/signal.h:133:2: note: expanded from macro '_SIG_SET_BINOP=
'
>   case 2: ^
>   include/linux/signal.h:147:1: warning: unannotated fall-through between=
 switch labels
>   include/linux/signal.h:137:2: note: expanded from macro '_SIG_SET_BINOP=
'
>   case 1: ^
>   include/linux/signal.h:150:1: warning: unannotated fall-through between=
 switch labels
>   _SIG_SET_BINOP(sigandsets, _sig_and)
>   ^
>   include/linux/signal.h:133:2:In file included from note: expanded from =
macro '_SIG_SET_BINOP'
>   case 2: ^
>   include/linux/signal.h:150:1: warning: unannotated fall-through between=
 switch labels
>   include/linux/signal.h:137:2: note: expanded from macro '_SIG_SET_BINOP=
'
>   case 1: ^
>   include/linux/signal.h:153:1: warning: unannotated fall-through between=
 switch labels
>   _SIG_SET_BINOP(sigandnsets, _sig_andn)
>   ^
>   include/linux/signal.h:133:2: note: expanded from macro '_SIG_SET_BINOP=
'
>   case 2: kernel/sysctl_binary.c:15:
>   In file included from include/linux/netdevice.h:37:
>   In file included from include/linux/ethtool.h:18:
>   In file included from include/uapi/linux/ethtool.h:19:
>   In file included from include/linux/if_ether.h:19:
>   include/linux/skbuff.h:3690:2: warning: unannotated fall-through betwee=
n switch labels
>   case 24: diffs |=3D __it_diff(a, b, 64);
>   ^
>--
>           ^
>           __attribute__((fallthrough));=20
>   include/linux/mm.h:166:2: note: insert 'break;' to avoid fall-through
>           case 56:
>           ^
>           break;=20
>   In file included from kernel/printk/printk.c:36:
>   In file included from include/linux/syscalls.h:76:
>   include/linux/signal.h:147:1: warning: unannotated fall-through between=
 switch labels [-Wimplicit-fallthrough]
>   _SIG_SET_BINOP(sigorsets, _sig_or)
>   ^
>   include/linux/signal.h:133:2: note: expanded from macro '_SIG_SET_BINOP=
'
>           case 2:                                                        =
 \
>           ^
>   include/linux/signal.h:147:1: warning: unannotated fall-through between=
 switch labels [-Wimplicit-fallthrough]
>   include/linux/signal.h:137:2: note: expanded from macro '_SIG_SET_BINOP=
'
>           case 1:                                                        =
 \
>           ^
>   include/linux/signal.h:150:1: warning: unannotated fall-through between=
 switch labels [-Wimplicit-fallthrough]
>   _SIG_SET_BINOP(sigandsets, _sig_and)
>   ^
>   include/linux/signal.h:133:2: note: expanded from macro '_SIG_SET_BINOP=
'
>           case 2:                                                        =
 \
>           ^
>   include/linux/signal.h:150:1: warning: unannotated fall-through between=
 switch labels [-Wimplicit-fallthrough]
>   include/linux/signal.h:137:2: note: expanded from macro '_SIG_SET_BINOP=
'
>           case 1:                                                        =
 \
>           ^
>   include/linux/signal.h:153:1: warning: unannotated fall-through between=
 switch labels [-Wimplicit-fallthrough]
>   _SIG_SET_BINOP(sigandnsets, _sig_andn)
>   ^
>   include/linux/signal.h:133:2: note: expanded from macro '_SIG_SET_BINOP=
'
>           case 2:                                                        =
 \
>           ^
>   include/linux/signal.h:153:1: warning: unannotated fall-through between=
 switch labels [-Wimplicit-fallthrough]
>   include/linux/signal.h:137:2: note: expanded from macro '_SIG_SET_BINOP=
'
>           case 1:                                                        =
 \
>           ^
>   include/linux/signal.h:177:1: warning: unannotated fall-through between=
 switch labels [-Wimplicit-fallthrough]
>   _SIG_SET_OP(signotset, _sig_not)
>   ^
>   include/linux/signal.h:167:2: note: expanded from macro '_SIG_SET_OP'
>           case 2: set->sig[1] =3D op(set->sig[1]);                       =
   \
>           ^
>   include/linux/signal.h:177:1: warning: unannotated fall-through between=
 switch labels [-Wimplicit-fallthrough]
>   include/linux/signal.h:169:2: note: expanded from macro '_SIG_SET_OP'
>           case 1: set->sig[0] =3D op(set->sig[0]);                       =
   \
>           ^
>   include/linux/signal.h:190:2: warning: unannotated fall-through between=
 switch labels [-Wimplicit-fallthrough]
>           case 1: set->sig[0] =3D 0;
>           ^
>   include/linux/signal.h:190:2: note: insert '__attribute__((fallthrough)=
);' to silence this warning
>           case 1: set->sig[0] =3D 0;
>           ^
>           __attribute__((fallthrough));=20
>   include/linux/signal.h:190:2: note: insert 'break;' to avoid fall-throu=
gh
>           case 1: set->sig[0] =3D 0;
>           ^
>           break;=20
>   include/linux/signal.h:203:2: warning: unannotated fall-through between=
 switch labels [-Wimplicit-fallthrough]
>           case 1: set->sig[0] =3D -1;
>           ^
>   include/linux/signal.h:203:2: note: insert '__attribute__((fallthrough)=
);' to silence this warning
>           case 1: set->sig[0] =3D -1;
>           ^
>           __attribute__((fallthrough));=20
>   include/linux/signal.h:203:2: note: insert 'break;' to avoid fall-throu=
gh
>           case 1: set->sig[0] =3D -1;
>           ^
>           break;=20
>   include/linux/signal.h:233:2: warning: unannotated fall-through between=
 switch labels [-Wimplicit-fallthrough]
>           case 1: ;
>           ^
>   include/linux/signal.h:233:2: note: insert '__attribute__((fallthrough)=
);' to silence this warning
>           case 1: ;
>           ^
>           __attribute__((fallthrough));=20
>   include/linux/signal.h:233:2: note: insert 'break;' to avoid fall-throu=
gh
>           case 1: ;
>           ^
>           break;=20
>   include/linux/signal.h:245:2: warning: unannotated fall-through between=
 switch labels [-Wimplicit-fallthrough]
>           case 1: ;
>           ^
>   include/linux/signal.h:245:2: note: insert '__attribute__((fallthrough)=
);' to silence this warning
>           case 1: ;
>           ^
>           __attribute__((fallthrough));=20
>   include/linux/signal.h:245:2: note: insert 'break;' to avoid fall-throu=
gh
>           case 1: ;
>           ^
>           break;=20
>   In file included from kernel/printk/printk.c:61:
>   kernel/printk/internal.h:54:20: warning: no previous prototype for func=
tion 'vprintk_func' [-Wmissing-prototypes]
>   __printf(1, 0) int vprintk_func(const char *fmt, va_list args) { return=
 0; }
>                      ^
>   kernel/printk/internal.h:54:16: note: declare 'static' if the function =
is not intended to be used outside of this translation unit
>   __printf(1, 0) int vprintk_func(const char *fmt, va_list args) { return=
 0; }
>                  ^
>                  static=20
>>> kernel/printk/printk.c:165:5: warning: no previous prototype for functi=
on 'devkmsg_sysctl_set_loglvl' [-Wmissing-prototypes]
>   int devkmsg_sysctl_set_loglvl(struct ctl_table *table, int write,
>       ^
>   kernel/printk/printk.c:165:1: note: declare 'static' if the function is=
 not intended to be used outside of this translation unit
>   int devkmsg_sysctl_set_loglvl(struct ctl_table *table, int write,
>   ^
>   static=20
>   kernel/printk/printk.c:2406:10: warning: 'sprintf' will always overflow=
; destination buffer has size 0, but format string expands to at least 33 [=
-Wfortify-source]
>                           len =3D sprintf(text,
>                                 ^
>   18 warnings generated.
>
>---
>0-DAY CI Kernel Test Service, Intel Corporation
>https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org



--=20
Wei Yang
Help you, Help me

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/20200701115816.GB4979%40L-31X9LVDL-1304.local.
