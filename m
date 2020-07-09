Return-Path: <clang-built-linux+bncBCX2JBVY5MBBBRGFTH4AKGQEFJS3NNQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf38.google.com (mail-qv1-xf38.google.com [IPv6:2607:f8b0:4864:20::f38])
	by mail.lfdr.de (Postfix) with ESMTPS id 697BC2194EF
	for <lists+clang-built-linux@lfdr.de>; Thu,  9 Jul 2020 02:20:21 +0200 (CEST)
Received: by mail-qv1-xf38.google.com with SMTP id em19sf252739qvb.14
        for <lists+clang-built-linux@lfdr.de>; Wed, 08 Jul 2020 17:20:21 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1594254020; cv=pass;
        d=google.com; s=arc-20160816;
        b=GBCuml74qmSLh3Q8mJPLakBhHUxlHOcwKMOYlrxP/Bfx9mkntXqBeCP2xVXa8qCK21
         9Sz0tLTw3GK1nmsYXlfHeW9Uo80LuTuVxVLlNXncgREqrK63Uc/xhUUCDp6v3PPzCg/l
         xGN3ya/OVkptazP86c8netXuGzCbbN2DsWo0cTQj0tU2q/IMerBUYPoUMBJnHj09M1vd
         CbxCse5qCU2I2tNEJAsfmlwDG5MvJmkuV8xzLXswZbCC4VifPxTWXjEg3gAUBCiMwDw8
         ndgpAknirknZuR5tPAE/6YiMfZkDKitQf7UbrcPijH/wkhPNpPHq8QJEpIg9ytjmf0bZ
         BYgw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-transfer-encoding:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:ironport-sdr
         :ironport-sdr:sender:dkim-signature;
        bh=ss7I8f1J0mKpAGYHVCoMIGj2q+ilbMQFSq7AAnaMVQ4=;
        b=XbrSZN0+mpUejwLxp4Qsc8JK1foPToKnEejr6cR6NCJIimMFogAYDrjxdvafQJCpB8
         D/SdVALZOmQavWtRKHB8+fm6xTXtszgrCLeISWRdT5jZKAfhWebwxzLiMn1wF3pPO179
         WG3QgMu+znRvueRiijhvgNL5qXRl2r7aZdyIgsgX8oI2YKNfmwz1SENXu73u8HVv2Yb8
         cBJ5Wm36aNKNgkjAMsxJ+yQ4W+SYMW74VcpUFyBwVRwwdta4Mlc0hepeK+sT1S+sWSlN
         MGmXjesSlDmkakLbrCNpOJSy3xHJqmInxhW6L+9T8XGg6hKPTDxjW631pnfw59PEacPN
         2/fw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of philip.li@intel.com designates 134.134.136.24 as permitted sender) smtp.mailfrom=philip.li@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition
         :content-transfer-encoding:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=ss7I8f1J0mKpAGYHVCoMIGj2q+ilbMQFSq7AAnaMVQ4=;
        b=MLIkp0+ddZiMUYcJKF59mMlic1qMkFRWZRabAEJcQzwswZim16DsGUOLs4Zp0Byy2w
         OsB2oAugiBttiKPiJYDWBAkQKIt1J0A+dfsPjSxqsXOiLP9UD2XhNq2Ju5hjyKq5r+bB
         5pzUqYVECs8Q5MjxfAvP3/TMXECGuYy9raSWS1/oo+ILY8zGlx3QASYwycrzJl521Qfj
         gE3+sfW59Gpr3QDqr1xU5HLbtOOERYpslsBATGNYPqsyDrYPPXJ0pr+qHvOUsqpoIqvL
         NBFPiPx7C3yhJO0+t6eX6f7uwK/0W7H8As65QdMTylfjVOt5thXkUUrqD+82cwh5Gp6c
         lO1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:references:mime-version:content-disposition
         :content-transfer-encoding:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ss7I8f1J0mKpAGYHVCoMIGj2q+ilbMQFSq7AAnaMVQ4=;
        b=jBSOfOjRFQaFve/iy5Wttxan72X3k2FhwMYuNhtTLRPIWcOtP7iplc7SbuSfLLZJn9
         +DghlmsWGaGnn6DCrqBuRzRZklIvIUT2hbDIKIYIO5ylmXMeCKvHlSY8vnos+n9lXn0x
         v/Y7RdUwGme69nvRg1Oi0st7QoP+ENIUc0M2wx75mhvRI62NW7yuNuJ/z6jj4vDqfOdi
         G/AeUKRmn9dIxkKhF9tGTTzo6W4Q0CracmsyjEoel7n1+3FItZJwBgcEUY+twnDfsLLI
         2dlzdS3O46nwLQrZcAMI6VgaCV8RA2Iaxswp66Dh0lVuFRQqT7Kf2FC/tYTu7iwSg0kF
         gA1A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532e2bqZQ5nideZfoxkzqtOjTJyNOVYj1PpPNFgvEX1i7ubvEk8F
	UEqrusTsHz19nSb/81fOlWc=
X-Google-Smtp-Source: ABdhPJxMHtCN+Pne7+TZ4ZKQY7cTAJRJA91j/0cgLx5aIDQyeknsH4H/z1AZe1WqvIc8fuv+GTpiqA==
X-Received: by 2002:ac8:1baf:: with SMTP id z44mr64647571qtj.129.1594254020165;
        Wed, 08 Jul 2020 17:20:20 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a37:38f:: with SMTP id 137ls1920806qkd.2.gmail; Wed, 08 Jul
 2020 17:20:19 -0700 (PDT)
X-Received: by 2002:a05:620a:635:: with SMTP id 21mr61110459qkv.491.1594254019702;
        Wed, 08 Jul 2020 17:20:19 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1594254019; cv=none;
        d=google.com; s=arc-20160816;
        b=OnHEhdlzucjC5FRUSZK62ZN3EBkrHXTLNYTk9NCLs37HF4xB8kguM4w+7zIdaJnkSH
         bZOCt5P8YX8+mUQR6tzq4cdVscDVoT95rb6tMAjP7fEZIkm+OOvOCwozf8BFzzhq4irk
         vVxICX53FYD9lhy7LpbDkfYi3RQzPY8HrRId3R4VW4FjJv/5RmisuyNnc+lPGEuG7goU
         IumekYUUJjjWjYy0Nl1++jG/TxlXExB4Nd8ORws1MKTDKDWoyCaO3aVCZxR0JM90G72O
         4lLhZ/gUrwnnbkNLMaKA2tfFMTmy906YM8ecM+8ZQOhSf/T19Lx7S5qnjZXNujSpG49J
         Yldg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-transfer-encoding
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr;
        bh=uhf+2zufzbe60dgUVV/nDvFIjuQ4x8qVdiTVn7AYrRI=;
        b=K41/oG5f3cmsFNP28jy44vPrPq0ledKBaJYoq5hsqAa8OIr3yADkj/WSBgKQijPTaE
         1LfrzIuf01Dmd/qocbMfWGk0jzx8GAw3EzlVK1cWSbOw/mTvOnI1rb6xRJGjYz6TkKDB
         rmIbyhDyYol7ksR3qUy/P22rxk1IPJ5pkOWSOHTI6Ylzqzii2eThsd2Cw2pZhdB2+tUc
         QePpvqLcvJeQR6+HCBKirMVFKYTSOrwwswWH8mdAK65MnYoaz1pfO1mJwnvbP7E22oSe
         l6CV/y51wAiXX5OMXBtCPvJmEpUWbJSQLLIs4QWMiawsLg/ijkJMz0qoy0Cg4/G4+w5x
         O7rQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of philip.li@intel.com designates 134.134.136.24 as permitted sender) smtp.mailfrom=philip.li@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga09.intel.com (mga09.intel.com. [134.134.136.24])
        by gmr-mx.google.com with ESMTPS id v27si45109qtk.2.2020.07.08.17.20.19
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 08 Jul 2020 17:20:19 -0700 (PDT)
Received-SPF: pass (google.com: domain of philip.li@intel.com designates 134.134.136.24 as permitted sender) client-ip=134.134.136.24;
IronPort-SDR: ucnDJ0lCViuOuQWv2ZlBt6CioydEQLECjCraJQsilHiWRMtjonLx5ZFPqo1WfYNonh05vaYSzr
 LsiGIOW8I1nQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9676"; a="149411033"
X-IronPort-AV: E=Sophos;i="5.75,329,1589266800"; 
   d="scan'208";a="149411033"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
  by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 08 Jul 2020 17:20:17 -0700
IronPort-SDR: BnZW8KVeCEeTPl44irgEhsvpRpY3hm7U00/IUsQmP0IYaOy2E6uKDHKYLNXnj51sj7nkzml6K5
 ++lJ0dj9ZAIg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,329,1589266800"; 
   d="scan'208";a="483590207"
Received: from pl-dbox.sh.intel.com (HELO intel.com) ([10.239.159.39])
  by fmsmga006.fm.intel.com with ESMTP; 08 Jul 2020 17:20:14 -0700
Date: Thu, 9 Jul 2020 08:20:28 +0800
From: Philip Li <philip.li@intel.com>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: "Xia, Hui" <hui.xia@intel.com>,
	Wei Yang <richard.weiyang@linux.alibaba.com>,
	Arnd Bergmann <arnd@arndb.de>, lkp <lkp@intel.com>,
	"Williams, Dan J" <dan.j.williams@intel.com>,
	"akpm@linux-foundation.org" <akpm@linux-foundation.org>,
	"kbuild-all@lists.01.org" <kbuild-all@lists.01.org>,
	"clang-built-linux@googlegroups.com" <clang-built-linux@googlegroups.com>,
	"linux-mm@kvack.org" <linux-mm@kvack.org>,
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH] mm/sparse: only sub-section aligned range would be
 populated
Message-ID: <20200709002028.GA12731@intel.com>
References: <20200630021436.43281-1-richard.weiyang@linux.alibaba.com>
 <202007010217.Rut2zTnF%lkp@intel.com>
 <20200701115816.GB4979@L-31X9LVDL-1304.local>
 <MN2PR11MB4064B0104312A3D22F1698F3E5670@MN2PR11MB4064.namprd11.prod.outlook.com>
 <CAKwvOdkVqY8WAfdTtHbgnJ2jafvsJCUgx2Rx4PCeNiX7HjLLow@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <CAKwvOdkVqY8WAfdTtHbgnJ2jafvsJCUgx2Rx4PCeNiX7HjLLow@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: philip.li@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of philip.li@intel.com designates 134.134.136.24 as
 permitted sender) smtp.mailfrom=philip.li@intel.com;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=intel.com
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

On Wed, Jul 08, 2020 at 11:20:26AM -0700, Nick Desaulniers wrote:
> On Wed, Jul 8, 2020 at 12:23 AM Xia, Hui <hui.xia@intel.com> wrote:
> >
> >
> >
> > >-----Original Message-----
> > >From: Wei Yang <richard.weiyang@linux.alibaba.com>
> > >Sent: 2020=E5=B9=B47=E6=9C=881=E6=97=A5 19:58
> > >To: lkp <lkp@intel.com>
> > >Cc: Wei Yang <richard.weiyang@linux.alibaba.com>; Williams, Dan J
> > ><dan.j.williams@intel.com>; akpm@linux-foundation.org; kbuild-all@list=
s.01.org;
> > >clang-built-linux@googlegroups.com; linux-mm@kvack.org; linux-
> > >kernel@vger.kernel.org
> > >Subject: Re: [PATCH] mm/sparse: only sub-section aligned range would b=
e
> > >populated
> > >
> > >On Wed, Jul 01, 2020 at 02:11:10AM +0800, kernel test robot wrote:
> > >>Hi Wei,
> > >>
> > >>Thank you for the patch! Perhaps something to improve:
> > >>
> > >>[auto build test WARNING on mmotm/master]
> > >>
> > >>url:    https://github.com/0day-ci/linux/commits/Wei-Yang/mm-sparse-o=
nly-
> > >sub-section-aligned-range-would-be-populated/20200630-101713
> > >>base:   git://git.cmpxchg.org/linux-mmotm.git master
> > >>config: x86_64-allnoconfig (attached as .config)
>=20
> Another issue was that this was an allnoconfig x86_64 build with
> Clang.  While ARCH=3Dx86_64 defconfigs set:
> CONFIG_64BIT=3Dy
> CONFIG_X86_64=3Dy
>=20
> allnoconfig turns those off, making it a 32b x86 build.  We cannot yet
> build an ARCH=3Di386 build yet with Clang, so that means this target is
> not green to begin with.
>=20
> + Arnd
> There might be a way for us to disable maybe CONFIG_X86_32 when
> building with Clang?  or make it so that randconfig can't dig this up?
>=20
> +Philip
> I'm not sure if it's easy to disable `allnoconfig` x86 builds with
yes, this is easy, we will disable the build w/ clang in this situation.

> Clang?  Also, I feel like we're asking for a bunch of special cases
> while we work through all the issues.  We would like to revert these
> special cases once we're in better shape.  Are you tracking a list of
> exceptions, so that we can estimate the work to fix on our side, and
> that we know to re-enable test coverage once fixed?
It is not that formally tracked, though it is controlled in the code
to know what is currently disabled. Currently we may not know when
it can be opened, thus we check the ClangBuiltLinux sometimes to see
progress of interested issues.

>=20
> > >>compiler: clang version 11.0.0 (https://github.com/llvm/llvm-project
> > >>cf1d04484344be52ada8178e41d18fd15a9b880c)
> > >>reproduce (this is a W=3D1 build):
> > >>        wget https://raw.githubusercontent.com/intel/lkp-
> > >tests/master/sbin/make.cross -O ~/bin/make.cross
> > >>        chmod +x ~/bin/make.cross
> > >>        # install x86_64 cross compiling tool for clang build
> > >>        # apt-get install binutils-x86-64-linux-gnu
> > >>        # save the attached .config to linux build tree
> > >>        COMPILER_INSTALL_PATH=3D$HOME/0day COMPILER=3Dclang make.cros=
s
> > >>ARCH=3Dx86_64
> > >>
> > >>If you fix the issue, kindly add following tag as appropriate
> > >>Reported-by: kernel test robot <lkp@intel.com>
> > >>
> > >
> > >Sorry, I don't follow up with this error report.
> > >
> > >It looks like a build error, while I just removes some check and the b=
uild pass from
> > >my side. Confused with this error report.
> > It is false positive. Please ignore. Sorry for inconvenience.
> > The report complains about " warning: no previous prototype for functio=
n 'devkmsg_sysctl_set_loglvl'" which is not caused by commit in this report=
. We will investigate and fix in 0-day side.
> >
> > >
> > >>All warnings (new ones prefixed by >>):
> > >>
> > >>   include/linux/signal.h:137:2: note: expanded from macro '_SIG_SET_=
BINOP'
> > >>   case 1: ^
> > >>   include/linux/signal.h:177:1: warning: unannotated fall-through be=
tween
> > >switch labels
> > >>   _SIG_SET_OP(signotset, _sig_not)
> > >>   ^
> > >>   include/linux/signal.h:167:2: note: expanded from macro '_SIG_SET_=
OP'
> > >>   case 2: =3D ^
> > >>   include/linux/signal.h:177:1: warning: unannotated fall-through be=
tween
> > >switch labels
> > >>   include/linux/signal.h:169:2: note: expanded from macro '_SIG_SET_=
OP'
> > >>   case 1: =3D ^
> > >>   include/linux/signal.h:190:2: warning: unannotated fall-through be=
tween
> > >switch labels
> > >>   case 1: =3D 0;
> > >>   ^
> > >>   include/linux/jhash.h:95:2: note: insert '__attribute__((fallthrou=
gh));' to silence
> > >this warning
> > >>   case 6: b +=3D /Dockerfile /Gemfile /Gemfile.lock /bin /boot /c /c=
ephfs /dev /etc
> > >/home /htmldocs /include /kbuild /lib /lib32 /lib64 /libx32 /lkp-cloud=
 /lkp-src
> > >/media /mnt /opt /patch /pkg /proc /root /run /sbin /share /srv /sys /=
tmp /usr
> > >/var fall through arch/ block/ certs/ crypto/ drivers/ fs/ include/ in=
it/ ipc/ kernel/
> > >lib/ mm/ net/ scripts/ security/ sound/ source/ tools/ usr/ virt/
> > >>   ^
> > >>   __attribute__((fallthrough));
> > >>   include/linux/jhash.h:95:2: note: insert 'break;' to avoid fall-th=
rough
> > >>   case 6: b +=3D /Dockerfile /Gemfile /Gemfile.lock /bin /boot /c /c=
ephfs /dev /etc
> > >/home /htmldocs /include /kbuild /lib /lib32 /lib64 /libx32 /lkp-cloud=
 /lkp-src
> > >/media /mnt /opt /patch /pkg /proc /root /run /sbin /share /srv /sys /=
tmp /usr
> > >/var fall through arch/ block/ certs/ crypto/ drivers/ fs/ include/ in=
it/ ipc/ kernel/
> > >lib/ mm/ net/ scripts/ security/ sound/ source/ tools/ usr/ virt/
> > >>   ^
> > >>   break;
> > >>   include/linux/jhash.h:96:2: warning: unannotated fall-through betw=
een switch
> > >labels
> > >>   case 5: b +=3D /Dockerfile /Gemfile /Gemfile.lock /bin /boot /c /c=
ephfs /dev /etc
> > >/home /htmldocs /include /kbuild /lib /lib32 /lib64 /libx32 /lkp-cloud=
 /lkp-src
> > >/media /mnt /opt /patch /pkg /proc /root /run /sbin /share /srv /sys /=
tmp /usr
> > >/var fall through arch/ block/ certs/ crypto/ drivers/ fs/ include/ in=
it/ ipc/ kernel/
> > >lib/ mm/ net/ scripts/ security/ sound/ source/ tools/ usr/ virt/
> > >>   ^
> > >>   15include/linux/signal.h:190:2: note: insert '__attribute__((fallt=
hrough));' to
> > >silence this warning
> > >>   case 1: =3D 0;
> > >>   ^
> > >>   __attribute__((fallthrough));
> > >>   include/linux/signal.h:190:2: note: insert 'break;' to avoid fall-=
through
> > >>   case 1: =3D 0;
> > >>   ^
> > >>   break;
> > >>   include/linux/signal.h:203:2: warninginclude/linux/jhash.h:96:2: n=
ote: insert
> > >'__attribute__((fallthrough));' to silence this warning
> > >>   case 5: b +=3D /Dockerfile /Gemfile /Gemfile.lock /bin /boot /c /c=
ephfs /dev /etc
> > >/home /htmldocs /include /kbuild /lib /lib32 /lib64 /libx32 /lkp-cloud=
 /lkp-src
> > >/media /mnt /opt /patch /pkg /proc /root /run /sbin /share /srv /sys /=
tmp /usr
> > >/var fall through arch/ block/ certs/ crypto/ drivers/ fs/ include/ in=
it/ ipc/ kernel/
> > >lib/ mm/ net/ scripts/ security/ sound/ source/ tools/ usr/ virt/
> > >>   ^
> > >>   __attribute__((fallthrough));
> > >>   include/linux/jhash.h:96:2: note: insert 'break;' to avoid fall-th=
rough
> > >>   case 5: b +=3D /Dockerfile /Gemfile /Gemfile.lock /bin /boot /c /c=
ephfs /dev /etc
> > >/home /htmldocs /include /kbuild /lib /lib32 /lib64 /libx32 /lkp-cloud=
 /lkp-src
> > >/media /mnt /opt /patch /pkg /proc /root /run /sbin /share /srv /sys /=
tmp /usr
> > >/var fall through arch/ block/ certs/ crypto/ drivers/ fs/ include/ in=
it/ ipc/ kernel/
> > >lib/ mm/ net/ scripts/ security/ sound/ source/ tools/ usr/ virt/
> > >>   ^
> > >>   break;
> > >>   include/linux/jhash.h:97:2: warning: unannotated fall-through betw=
een switch
> > >labels
> > >>   case 4: a +=3D /Dockerfile /Gemfile /Gemfile.lock /bin /boot /c /c=
ephfs /dev /etc
> > >/home /htmldocs /include /kbuild /lib /lib32 /lib64 /libx32 /lkp-cloud=
 /lkp-src
> > >/media /mnt /opt /patch /pkg /proc /root /run /sbin /share /srv /sys /=
tmp /usr
> > >/var fall through arch/ block/ certs/ crypto/ drivers/ fs/ include/ in=
it/ ipc/ kernel/
> > >lib/ mm/ net/ scripts/ security/ sound/ source/ tools/ usr/ virt/
> > >>   ^
> > >>   : unannotated fall-through between switch labels
> > >>   case 1: =3D -1;
> > >>   ^
> > >>   warnings generated.
> > >>   include/linux/signal.h:203:2: note: insert '__attribute__((fallthr=
ough));' to
> > >silence this warning
> > >>   case 1: =3D -1;
> > >>   ^
> > >>   __attribute__((fallthrough));
> > >>   include/linux/signal.h:15203:2: note: insert 'break;' to avoid fal=
l-through
> > >>   case 1: =3D -1;
> > >>   ^
> > >>   break;
> > >>   include/linux/jhash.h:97:2: note: insert '__attribute__((fallthrou=
gh));' to silence
> > >this warning
> > >>   case 4: a +=3D /Dockerfile /Gemfile /Gemfile.lock /bin /boot /c /c=
ephfs /dev /etc
> > >/home /htmldocs /include /kbuild /lib /lib32 /lib64 /libx32 /lkp-cloud=
 /lkp-src
> > >/media /mnt /opt /patch /pkg /proc /root /run /sbin /share /srv /sys /=
tmp /usr
> > >/var fall through arch/ block/ certs/ crypto/ drivers/ fs/ include/ in=
it/ ipc/ kernel/
> > >lib/ mm/ net/ scripts/ security/ sound/ source/ tools/ usr/ virt/
> > >>   ^
> > >>   __attribute__((fallthrough));
> > >>   include/linux/jhash.h:97:2: note: insert 'break;' to avoid fall-th=
rough
> > >>   case 4: a +=3D /Dockerfile /Gemfile /Gemfile.lock /bin /boot /c /c=
ephfs /dev /etc
> > >/home /htmldocs /include /kbuild /lib /lib32 /lib64 /libx32 /lkp-cloud=
 /lkp-src
> > >/media /mnt /opt /patch /pkg /proc /root /run /sbin /share /srv /sys /=
tmp /usr
> > >/var fall through arch/ block/ certs/ crypto/ drivers/ fs/ include/ in=
it/ ipc/ kernel/
> > >lib/ mm/ net/ scripts/ security/ sound/ source/ tools/ usr/ virt/
> > >>   ^
> > >>   break;
> > >>   include/linux/jhash.h:98:2: warning: unannotated fall-through betw=
een switch
> > >labels
> > >>   case 3: a +=3D /Dockerfile /Gemfile /Gemfile.lock /bin /boot /c /c=
ephfs /dev /etc
> > >/home /htmldocs /include /kbuild /lib /lib32 /lib64 /libx32 /lkp-cloud=
 /lkp-src
> > >/media /mnt /opt /patch /pkg /proc /root /run /sbin /share /srv /sys /=
tmp /usr
> > >/var fall through arch/ block/ certs/ crypto/ drivers/ fs/ include/ in=
it/ ipc/ kernel/
> > >lib/ mm/ net/ scripts/ security/ sound/ source/ tools/ usr/ virt/
> > >>   ^
> > >>   include/linux/signal.h:233:2: warning: unannotated fall-through be=
tween
> > >switch labels
> > >>   case 1: ;
> > >>   ^
> > >>   warnings generated.
> > >>   In file included from kernel/printk/printk.c:61:
> > >>   kernel/printk/internal.h:54:20: warninginclude/linux/jhash.h:98:2:=
 note: insert
> > >'__attribute__((fallthrough));' to silence this warning
> > >>   case 3: a +=3D /Dockerfile /Gemfile /Gemfile.lock /bin /boot /c /c=
ephfs /dev /etc
> > >/home /htmldocs /include /kbuild /lib /lib32 /lib64 /libx32 /lkp-cloud=
 /lkp-src
> > >/media /mnt /opt /patch /pkg /proc /root /run /sbin /share /srv /sys /=
tmp /usr
> > >/var fall through arch/ block/ certs/ crypto/ drivers/ fs/ include/ in=
it/ ipc/ kernel/
> > >lib/ mm/ net/ scripts/ security/ sound/ source/ tools/ usr/ virt/
> > >>   ^
> > >>   __attribute__((fallthrough));
> > >>   include/linux/jhash.h:98:2: note: no previous prototype for functi=
on
> > >'vprintk_func'
> > >>   __printf(1, 0) int vprintk_func(const char va_list args) { return =
0; }
> > >>   ^
> > >>   kernel/printk/internal.h: insert 'break;' to avoid fall-through
> > >>   case 3: a +=3D /Dockerfile /Gemfile /Gemfile.lock /bin /boot /c /c=
ephfs /dev /etc
> > >/home /htmldocs /include /kbuild /lib /lib32 /lib64 /libx32 /lkp-cloud=
 /lkp-src
> > >/media /mnt /opt /patch /pkg /proc /root /run /sbin /share /srv /sys /=
tmp /usr
> > >/var fall through arch/ block/ certs/ crypto/ drivers/ fs/ include/ in=
it/ ipc/ kernel/
> > >lib/ mm/ net/ scripts/ security/ sound/ source/ tools/ usr/ virt/
> > >>   ^
> > >>   break;
> > >>   include/linux/jhash.h:99:2: warning: unannotated fall-through betw=
een switch
> > >labels
> > >>   case 2: a +=3D /Dockerfile /Gemfile /Gemfile.lock /bin /boot /c /c=
ephfs /dev /etc
> > >/home /htmldocs /include /kbuild /lib /lib32 /lib64 /libx32 /lkp-cloud=
 /lkp-src
> > >/media /mnt /opt /patch /pkg /proc /root /run /sbin /share /srv /sys /=
tmp /usr
> > >/var fall through arch/ block/ certs/ crypto/ drivers/ fs/ include/ in=
it/ ipc/ kernel/
> > >lib/ mm/ net/ scripts/ security/ sound/ source/ tools/ usr/ virt/
> > >>   ^
> > >>   :54:16: note: declare 'static' if the function is not intended to =
be used outside
> > >of this translation unit
> > >>   __printf(1, 0) int vprintk_func(const char va_list args) { return =
0; }
> > >>   ^
> > >>   static
> > >>   kernel/printk/printk.cinclude/linux/signal.h:233:2: note: insert
> > >'__attribute__((fallthrough));' to silence this warning
> > >>   case 1: ;
> > >>   ^
> > >>   __attribute__((fallthrough));
> > >>   include/linux/signal.h:233:2: note: insert 'break;' to avoid fall-=
through
> > >>   case 1: ;
> > >>   ^
> > >>   break;
> > >>   include/linux/signal.h:245:2: warning: unannotated fall-through be=
tween
> > >switch labels
> > >>   case 1: ;
> > >>   ^
> > >>>> :165:5: warning: no previous prototype for function
> > >'devkmsg_sysctl_set_loglvl'
> > >>   int devkmsg_sysctl_set_loglvl(struct ctl_table int write,
> > >>   ^
> > >>   kernel/printk/printk.c:165:1: note: declare 'static' if the functi=
on is not
> > >intended to be used outside of this translation unit
> > >>   int devkmsg_sysctl_set_loglvl(struct ctl_table int write,
> > >>   ^
> > >>   static
> > >>   include/linux/jhash.h:99:2: note: insert '__attribute__((fallthrou=
gh));' to silence
> > >this warning
> > >>   case 2: a +=3D /Dockerfile /Gemfile /Gemfile.lock /bin /boot /c /c=
ephfs /dev /etc
> > >/home /htmldocs /include /kbuild /lib /lib32 /lib64 /libx32 /lkp-cloud=
 /lkp-src
> > >/media /mnt /opt /patch /pkg /proc /root /run /sbin /share /srv /sys /=
tmp /usr
> > >/var fall through arch/ block/ certs/ crypto/ drivers/ fs/ include/ in=
it/ ipc/ kernel/
> > >lib/ mm/ net/ scripts/ security/ sound/ source/ tools/ usr/ virt/
> > >>   ^
> > >>   __attribute__((fallthrough));
> > >>   include/linux/jhash.h:99:2: note: insert 'break;' to avoid fall-th=
rough
> > >>   case 2: a +=3D /Dockerfile /Gemfile /Gemfile.lock /bin /boot /c /c=
ephfs /dev /etc
> > >/home /htmldocs /include /kbuild /lib /lib32 /lib64 /libx32 /lkp-cloud=
 /lkp-src
> > >/media /mnt /opt /patch /pkg /proc /root /run /sbin /share /srv /sys /=
tmp /usr
> > >/var fall through arch/ block/ certs/ crypto/ drivers/ fs/ include/ in=
it/ ipc/ kernel/
> > >lib/ mm/ net/ scripts/ security/ sound/ source/ tools/ usr/ virt/
> > >>   ^
> > >>   break;
> > >>   include/linux/jhash.h:100:2: warning: unannotated fall-through bet=
ween
> > >switch labels
> > >>   case 1: a +=3D
> > >>   ^
> > >>   include/linux/signal.h:245:2: note: insert '__attribute__((fallthr=
ough));' to
> > >silence this warning
> > >>   case 1: ;
> > >>   ^
> > >>   __attribute__((fallthrough));
> > >>   include/linux/signal.h:245:2: note: insert 'break;' to avoid fall-=
through
> > >>   case 1: ;
> > >>   ^
> > >>   break;
> > >>   kernel/printk/printk.cinclude/linux/jhash.h:100:2: note: insert
> > >'__attribute__((fallthrough));' to silence this warning
> > >>   case 1: a +=3D
> > >>   ^
> > >>   __attribute__((fallthrough));
> > >>   include/linux/jhash.h:100:2: note: insert 'break;' to avoid fall-t=
hrough
> > >>   case 1: a +=3D
> > >>   ^
> > >>   break;
> > >>   include/linux/jhash.h:102:2: warning: unannotated fall-through bet=
ween
> > >switch labels
> > >>   case 0: /Dockerfile /Gemfile /Gemfile.lock /bin /boot /c /cephfs /=
dev /etc
> > >/home /htmldocs /include /kbuild /lib /lib32 /lib64 /libx32 /lkp-cloud=
 /lkp-src
> > >/media /mnt /opt /patch /pkg /proc /root /run /sbin /share /srv /sys /=
tmp /usr
> > >/var Nothing left to add arch/ block/ certs/ crypto/ drivers/ fs/ incl=
ude/ init/ ipc/
> > >kernel/ lib/ mm/ net/ scripts/ security/ sound/ source/ tools/ usr/ vi=
rt/
> > >>   ^
> > >>   include/linux/jhash.h:102:2: note: insert 'break;' to avoid fall-t=
hrough
> > >>   case 0: /Dockerfile /Gemfile /Gemfile.lock /bin /boot /c /cephfs /=
dev /etc
> > >/home /htmldocs /include /kbuild /lib /lib32 /lib64 /libx32 /lkp-cloud=
 /lkp-src
> > >/media /mnt /opt /patch /pkg /proc /root /run /sbin /share /srv /sys /=
tmp /usr
> > >/var Nothing left to add arch/ block/ certs/ crypto/ drivers/ fs/ incl=
ude/ init/ ipc/
> > >kernel/ lib/ mm/ net/ scripts/ security/ sound/ source/ tools/ usr/ vi=
rt/
> > >>   ^
> > >>   break;
> > >>   :2406:10: warning: 'sprintf' will always overflow; destination buf=
fer has size 0,
> > >but format string expands to at least 33
> > >>   len =3D sprintf(text,
> > >>   ^
> > >>   include/linux/jhash.h:136:2: warning: unannotated fall-through bet=
ween
> > >switch labels
> > >>   case 2: b +=3D /Dockerfile /Gemfile /Gemfile.lock /bin /boot /c /c=
ephfs /dev /etc
> > >/home /htmldocs /include /kbuild /lib /lib32 /lib64 /libx32 /lkp-cloud=
 /lkp-src
> > >/media /mnt /opt /patch /pkg /proc /root /run /sbin /share /srv /sys /=
tmp /usr
> > >/var fall through arch/ block/ certs/ crypto/ drivers/ fs/ include/ in=
it/ ipc/ kernel/
> > >lib/ mm/ net/ scripts/ security/ sound/ source/ tools/ usr/ virt/
> > >>   ^
> > >>   include/linux/jhash.h:136:2: note: insert '__attribute__((fallthro=
ugh));' to
> > >silence this warning
> > >>   case 2: b +=3D /Dockerfile /Gemfile /Gemfile.lock /bin /boot /c /c=
ephfs /dev /etc
> > >/home /htmldocs /include /kbuild /lib /lib32 /lib64 /libx32 /lkp-cloud=
 /lkp-src
> > >/media /mnt /opt /patch /pkg /proc /root /run /sbin /share /srv /sys /=
tmp /usr
> > >/var fall through arch/ block/ certs/ crypto/ drivers/ fs/ include/ in=
it/ ipc/ kernel/
> > >lib/ mm/ net/ scripts/ security/ sound/ source/ tools/ usr/ virt/
> > >>   ^
> > >>   __attribute__((fallthrough));
> > >>   include/linux/jhash.h:136:2: note: insert 'break;' to avoid fall-t=
hrough
> > >>   case 2: b +=3D /Dockerfile /Gemfile /Gemfile.lock /bin /boot /c /c=
ephfs /dev /etc
> > >/home /htmldocs /include /kbuild /lib /lib32 /lib64 /libx32 /lkp-cloud=
 /lkp-src
> > >/media /mnt /opt /patch /pkg /proc /root /run /sbin /share /srv /sys /=
tmp /usr
> > >/var fall through arch/ block/ certs/ crypto/ drivers/ fs/ include/ in=
it/ ipc/ kernel/
> > >lib/ mm/ net/ scripts/ security/ sound/ source/ tools/ usr/ virt/
> > >>   ^
> > >>   break;
> > >>   include/linux/jhash.h:137:2: warning: unannotated fall-through bet=
ween
> > >switch labels
> > >>   case 1: a +=3D
> > >>   ^
> > >>   In file included from kernel/capability.c:13:
> > >>   In file included from include/linux/audit.h:13:
> > >>   In file included from include/linux/ptrace.h:7:
> > >>   In file included from include/linux/sched/signal.h:6:
> > >>   include/linux/signal.h:147:1: warning: unannotated fall-through be=
tween
> > >switch labels
> > >>   _SIG_SET_BINOP(sigorsets, _sig_or)
> > >>   ^
> > >>   include/linux/signal.h:133:2: note: expanded from macro '_SIG_SET_=
BINOP'
> > >>   case 2: ^
> > >>   include/linux/signal.h:147:1: warning: unannotated fall-through be=
tween
> > >switch labels
> > >>   include/linux/signal.h:137:2: note: expanded from macro '_SIG_SET_=
BINOP'
> > >>   case 1: ^
> > >>   include/linux/signal.h:150:1: warning: unannotated fall-through be=
tween
> > >switch labels
> > >>   _SIG_SET_BINOP(sigandsets, _sig_and)
> > >>   ^
> > >>   include/linux/signal.h:133:2:In file included from note: expanded =
from macro
> > >'_SIG_SET_BINOP'
> > >>   case 2: ^
> > >>   include/linux/signal.h:150:1: warning: unannotated fall-through be=
tween
> > >switch labels
> > >>   include/linux/signal.h:137:2: note: expanded from macro '_SIG_SET_=
BINOP'
> > >>   case 1: ^
> > >>   include/linux/signal.h:153:1: warning: unannotated fall-through be=
tween
> > >switch labels
> > >>   _SIG_SET_BINOP(sigandnsets, _sig_andn)
> > >>   ^
> > >>   include/linux/signal.h:133:2: note: expanded from macro '_SIG_SET_=
BINOP'
> > >>   case 2: kernel/sysctl_binary.c:15:
> > >>   In file included from include/linux/netdevice.h:37:
> > >>   In file included from include/linux/ethtool.h:18:
> > >>   In file included from include/uapi/linux/ethtool.h:19:
> > >>   In file included from include/linux/if_ether.h:19:
> > >>   include/linux/skbuff.h:3690:2: warning: unannotated fall-through b=
etween
> > >switch labels
> > >>   case 24: diffs |=3D __it_diff(a, b, 64);
> > >>   ^
> > >>--
> > >>           ^
> > >>           __attribute__((fallthrough));
> > >>   include/linux/mm.h:166:2: note: insert 'break;' to avoid fall-thro=
ugh
> > >>           case 56:
> > >>           ^
> > >>           break;
> > >>   In file included from kernel/printk/printk.c:36:
> > >>   In file included from include/linux/syscalls.h:76:
> > >>   include/linux/signal.h:147:1: warning: unannotated fall-through be=
tween
> > >switch labels [-Wimplicit-fallthrough]
> > >>   _SIG_SET_BINOP(sigorsets, _sig_or)
> > >>   ^
> > >>   include/linux/signal.h:133:2: note: expanded from macro '_SIG_SET_=
BINOP'
> > >>           case 2:                                                   =
      \
> > >>           ^
> > >>   include/linux/signal.h:147:1: warning: unannotated fall-through be=
tween
> > >switch labels [-Wimplicit-fallthrough]
> > >>   include/linux/signal.h:137:2: note: expanded from macro '_SIG_SET_=
BINOP'
> > >>           case 1:                                                   =
      \
> > >>           ^
> > >>   include/linux/signal.h:150:1: warning: unannotated fall-through be=
tween
> > >switch labels [-Wimplicit-fallthrough]
> > >>   _SIG_SET_BINOP(sigandsets, _sig_and)
> > >>   ^
> > >>   include/linux/signal.h:133:2: note: expanded from macro '_SIG_SET_=
BINOP'
> > >>           case 2:                                                   =
      \
> > >>           ^
> > >>   include/linux/signal.h:150:1: warning: unannotated fall-through be=
tween
> > >switch labels [-Wimplicit-fallthrough]
> > >>   include/linux/signal.h:137:2: note: expanded from macro '_SIG_SET_=
BINOP'
> > >>           case 1:                                                   =
      \
> > >>           ^
> > >>   include/linux/signal.h:153:1: warning: unannotated fall-through be=
tween
> > >switch labels [-Wimplicit-fallthrough]
> > >>   _SIG_SET_BINOP(sigandnsets, _sig_andn)
> > >>   ^
> > >>   include/linux/signal.h:133:2: note: expanded from macro '_SIG_SET_=
BINOP'
> > >>           case 2:                                                   =
      \
> > >>           ^
> > >>   include/linux/signal.h:153:1: warning: unannotated fall-through be=
tween
> > >switch labels [-Wimplicit-fallthrough]
> > >>   include/linux/signal.h:137:2: note: expanded from macro '_SIG_SET_=
BINOP'
> > >>           case 1:                                                   =
      \
> > >>           ^
> > >>   include/linux/signal.h:177:1: warning: unannotated fall-through be=
tween
> > >switch labels [-Wimplicit-fallthrough]
> > >>   _SIG_SET_OP(signotset, _sig_not)
> > >>   ^
> > >>   include/linux/signal.h:167:2: note: expanded from macro '_SIG_SET_=
OP'
> > >>           case 2: set->sig[1] =3D op(set->sig[1]);                  =
        \
> > >>           ^
> > >>   include/linux/signal.h:177:1: warning: unannotated fall-through be=
tween
> > >switch labels [-Wimplicit-fallthrough]
> > >>   include/linux/signal.h:169:2: note: expanded from macro '_SIG_SET_=
OP'
> > >>           case 1: set->sig[0] =3D op(set->sig[0]);                  =
        \
> > >>           ^
> > >>   include/linux/signal.h:190:2: warning: unannotated fall-through be=
tween
> > >switch labels [-Wimplicit-fallthrough]
> > >>           case 1: set->sig[0] =3D 0;
> > >>           ^
> > >>   include/linux/signal.h:190:2: note: insert '__attribute__((fallthr=
ough));' to
> > >silence this warning
> > >>           case 1: set->sig[0] =3D 0;
> > >>           ^
> > >>           __attribute__((fallthrough));
> > >>   include/linux/signal.h:190:2: note: insert 'break;' to avoid fall-=
through
> > >>           case 1: set->sig[0] =3D 0;
> > >>           ^
> > >>           break;
> > >>   include/linux/signal.h:203:2: warning: unannotated fall-through be=
tween
> > >switch labels [-Wimplicit-fallthrough]
> > >>           case 1: set->sig[0] =3D -1;
> > >>           ^
> > >>   include/linux/signal.h:203:2: note: insert '__attribute__((fallthr=
ough));' to
> > >silence this warning
> > >>           case 1: set->sig[0] =3D -1;
> > >>           ^
> > >>           __attribute__((fallthrough));
> > >>   include/linux/signal.h:203:2: note: insert 'break;' to avoid fall-=
through
> > >>           case 1: set->sig[0] =3D -1;
> > >>           ^
> > >>           break;
> > >>   include/linux/signal.h:233:2: warning: unannotated fall-through be=
tween
> > >switch labels [-Wimplicit-fallthrough]
> > >>           case 1: ;
> > >>           ^
> > >>   include/linux/signal.h:233:2: note: insert '__attribute__((fallthr=
ough));' to
> > >silence this warning
> > >>           case 1: ;
> > >>           ^
> > >>           __attribute__((fallthrough));
> > >>   include/linux/signal.h:233:2: note: insert 'break;' to avoid fall-=
through
> > >>           case 1: ;
> > >>           ^
> > >>           break;
> > >>   include/linux/signal.h:245:2: warning: unannotated fall-through be=
tween
> > >switch labels [-Wimplicit-fallthrough]
> > >>           case 1: ;
> > >>           ^
> > >>   include/linux/signal.h:245:2: note: insert '__attribute__((fallthr=
ough));' to
> > >silence this warning
> > >>           case 1: ;
> > >>           ^
> > >>           __attribute__((fallthrough));
> > >>   include/linux/signal.h:245:2: note: insert 'break;' to avoid fall-=
through
> > >>           case 1: ;
> > >>           ^
> > >>           break;
> > >>   In file included from kernel/printk/printk.c:61:
> > >>   kernel/printk/internal.h:54:20: warning: no previous prototype for=
 function
> > >'vprintk_func' [-Wmissing-prototypes]
> > >>   __printf(1, 0) int vprintk_func(const char *fmt, va_list args) { r=
eturn 0; }
> > >>                      ^
> > >>   kernel/printk/internal.h:54:16: note: declare 'static' if the func=
tion is not
> > >intended to be used outside of this translation unit
> > >>   __printf(1, 0) int vprintk_func(const char *fmt, va_list args) { r=
eturn 0; }
> > >>                  ^
> > >>                  static
> > >>>> kernel/printk/printk.c:165:5: warning: no previous prototype for
> > >>>> function 'devkmsg_sysctl_set_loglvl' [-Wmissing-prototypes]
> > >>   int devkmsg_sysctl_set_loglvl(struct ctl_table *table, int write,
> > >>       ^
> > >>   kernel/printk/printk.c:165:1: note: declare 'static' if the functi=
on is not
> > >intended to be used outside of this translation unit
> > >>   int devkmsg_sysctl_set_loglvl(struct ctl_table *table, int write,
> > >>   ^
> > >>   static
> > >>   kernel/printk/printk.c:2406:10: warning: 'sprintf' will always ove=
rflow;
> > >destination buffer has size 0, but format string expands to at least 3=
3 [-Wfortify-
> > >source]
> > >>                           len =3D sprintf(text,
> > >>                                 ^
> > >>   18 warnings generated.
> > >>
> > >>---
> > >>0-DAY CI Kernel Test Service, Intel Corporation
> > >>https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
> > >
> > >
> > >
> > >--
> > >Wei Yang
> > >Help you, Help me
> >
> > --
> > You received this message because you are subscribed to the Google Grou=
ps "Clang Built Linux" group.
> > To unsubscribe from this group and stop receiving emails from it, send =
an email to clang-built-linux+unsubscribe@googlegroups.com.
> > To view this discussion on the web visit https://groups.google.com/d/ms=
gid/clang-built-linux/MN2PR11MB4064B0104312A3D22F1698F3E5670%40MN2PR11MB406=
4.namprd11.prod.outlook.com.
>=20
>=20
>=20
> --=20
> Thanks,
> ~Nick Desaulniers

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/20200709002028.GA12731%40intel.com.
