Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBPPVVLXAKGQER5SWFSA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x437.google.com (mail-pf1-x437.google.com [IPv6:2607:f8b0:4864:20::437])
	by mail.lfdr.de (Postfix) with ESMTPS id D63B0F9132
	for <lists+clang-built-linux@lfdr.de>; Tue, 12 Nov 2019 14:59:26 +0100 (CET)
Received: by mail-pf1-x437.google.com with SMTP id r187sf15473491pfc.16
        for <lists+clang-built-linux@lfdr.de>; Tue, 12 Nov 2019 05:59:26 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1573567165; cv=pass;
        d=google.com; s=arc-20160816;
        b=LSB6VpKW7B2aZod6FoJHMJe049NJRvaTFT2nJIu9qFTGb/P+yaMfRMqaephBnhq9u1
         ithb2Tz69Akee2HqMa7Aiy1tXCIa+yHVuntAPqIataxqU4WCfISSzvK9Lg+lpNDw162Z
         ViU38pwZrkMYM6nZh0fReurO9+BtP6u/QVKx5ML0OuwcaWQV1HEuncGGAUIGkOVQMcO2
         xayvLPmSkMyeikijAk7qpwYbu+Mfqtcvjdo2uZGVtvtyAk4tgGmuVrJ+KLKdE/v0qGGT
         lpbJgKmdNkugsOKa7jtnrtgpPIIcXxcZ9lDUENXZ2fW6Hpk7wqhsFI/tvoV0E2OjTHBR
         SvWg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=NvPrC9LVS8iYf6kYokiCX9Z29gJeFALH6Wlm0nSzsHY=;
        b=Na7lM/bvoPEgElg8VYEqbPxbniFqAH+yQi4yDuuh3c2U6dERtWGNjByg2BeEDkrYe4
         QPLTJ/de/KXDUuNkpFAyj2tIn6q0LYi5IZrg4j3ZiNQ5AwhxIUewSQ4yHDN8Zbqqxgh7
         JS1ZFEacBqSq5fWzrHQDhIKxP14y8ZmzhI284lrN80P13I9WMzd8nhlGstgY2CAOUa+Q
         S/lcnlkSPL/67aV0vb/KFhwL8oWp0OPZWfZRwQgPFoMDkjE954osqWTvaG0pb8oM/YlO
         J87ZMrrOL0PAp6QdB7L7UixgkLr4jdUh2ziNv8pi8m0Q5IEr9n+I61p50xolCWYmOW/m
         a9Dw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.115 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=NvPrC9LVS8iYf6kYokiCX9Z29gJeFALH6Wlm0nSzsHY=;
        b=JzxJqjJfzv8rkR9ORQ1rjHKUD10zy502TMC19Fa6idANiz9YZ3p+06vG8KnumIvPNh
         4PfzPEFhMP5rhxEUYK7hYKF3plBTKZS/cGhOTGHelT6P2KK3wqE0fyNl5Tgu1woJu3Tx
         5meg/N3d9NQM+uj9AtxdDrGan4QaHFRaW7/JP88x2LHkkAqixBT1vXRnhX0SUL6ELIp/
         r/IU3kroT7nx6uFyqwJRdCJvNpXjoZy9YG79OzrZELS0OrIYA0pHyVzZ4VBx7vvfI7wU
         8+WlV5bYNb8NXLEaWCRVNMfCIJlF+VEOHmiOyJrunJLKBS7pz1qJlsIroyY6nUmsXs4u
         JrGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=NvPrC9LVS8iYf6kYokiCX9Z29gJeFALH6Wlm0nSzsHY=;
        b=nu7CaTEZCfT12pKrPpCmXp5KEVb36ZFPufWSZlDPuxIR0VO4pdCPp9bICv4nFJdewy
         BYmMAIF5pEMClVQTWRpa0gayVnIz2Te3rC8aJi/LRIhUf7T2eGuQjpttJM3bNrowsi29
         gZ1uiCjzruetBMTLcYgEDgRfjN2ygXXUh1pfhqMcZ1wPxfwt9whuiUkHGFwiV5v/ONrI
         wTG9TdJZKdfkQBAnbOIcy+caJCzSvyXuMkJf1P06gIAfziDokHGYaYdOcpyCkhiSXtVq
         T3X/L3jyi8TiDZRfV1xVwj3RGadSLYNrVUrx0Q04gTvlgJrHfKLN8UworE+RjSgQniGM
         ivbQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXSio/9A/uhN0zcB1dZjq6sQcH9Y4KN+Hz3zFblQKeqNjlurITE
	p6UK7w/gUD7CH/90WLhhUeI=
X-Google-Smtp-Source: APXvYqxBGQNUMnN5txc3FcLHLli+/3tBlkEzhYvj1ho/LlsII87mYR9c4ybMK0IvA19/RSmmaKLvFQ==
X-Received: by 2002:a62:7553:: with SMTP id q80mr37932506pfc.203.1573567165212;
        Tue, 12 Nov 2019 05:59:25 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:8a95:: with SMTP id p21ls686375plo.8.gmail; Tue, 12
 Nov 2019 05:59:24 -0800 (PST)
X-Received: by 2002:a17:90a:5895:: with SMTP id j21mr6888573pji.129.1573567164702;
        Tue, 12 Nov 2019 05:59:24 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1573567164; cv=none;
        d=google.com; s=arc-20160816;
        b=gKL7iivW9fxrtKV3PS824ubaC9e9i+0hDiORkpSbtckv7GHi7jyiRh5tzdnxPxYqBv
         rJ+GGVVvzRU1VXq3FyzKIByanGADc8h8dmLRwYvm5BkiKOsVpMbnxj982tVa44h6lQgZ
         B4j92kyECDTKbCy/wOdthc+br6s2gAqnBgw1XK0SgVedLq2fT3EBAsv2n+Qk3aie1lkQ
         43wBNDPBzAIBuA4xwRPDLz1c54XACrhQ50L4pkTpCFHWLUKbVG7r87euvwVKdImQ3ZGR
         P7y2QPRR1Zb/Vp9VaVnPo7W231c3IcChD0Rv+9B6njnNNMmb8hXvMgxwo3WX8XGPQsIR
         sfCg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date;
        bh=DjOe+OFb9NLQb4e2Ldu4Xc+lxEv08SWVrpxYSFLWft4=;
        b=ZaIB1TrJiXz0OuyiwmP86PmDk3N5nEhXZwAWzvZump8VNx/w+3sRzfh002xgaRcwiQ
         Wit44VqhpPKevkkO0CI5r8UY0Y2+qIm1j/KVBL67vFE6SA+3Lg8+pf7BfN2LIRFJw/Kx
         1Bv2u1SqnGX15ifYI/65ZLgtNbLPRREdYHXd2J7tV72MWGiLwSsQ1TSsKbiv1vh2/lyS
         SNGsMgo7x3qnKA1Lg0XpGAOd3t2zgzJo91vmAGZ6L1Fb3rF1vQLckXCY7oRQWcKIseVa
         O5f+Imn657ARzSKkn2lquOtOHk0/6mG3OaWLaBrXHzjU2OyfwfI0kInFMz6qe0kPKk7k
         1i6w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.115 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga14.intel.com (mga14.intel.com. [192.55.52.115])
        by gmr-mx.google.com with ESMTPS id 3si1203053pfg.1.2019.11.12.05.59.24
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 12 Nov 2019 05:59:24 -0800 (PST)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 192.55.52.115 as permitted sender) client-ip=192.55.52.115;
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
  by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 12 Nov 2019 05:59:23 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,296,1569308400"; 
   d="gz'50?scan'50,208,50";a="207117453"
Received: from lkp-server01.sh.intel.com (HELO lkp-server01) ([10.239.97.150])
  by orsmga003.jf.intel.com with ESMTP; 12 Nov 2019 05:59:21 -0800
Received: from kbuild by lkp-server01 with local (Exim 4.89)
	(envelope-from <lkp@intel.com>)
	id 1iUWhV-0001iK-2Z; Tue, 12 Nov 2019 21:59:21 +0800
Date: Tue, 12 Nov 2019 21:58:44 +0800
From: kbuild test robot <lkp@intel.com>
To: kbuild@lists.01.org
Cc: Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux@googlegroups.com
Subject: Re: [alsa-devel] [PATCH 8/8] ALSA: pcm: Unexport
 snd_pcm_sgbuf_ops_page
Message-ID: <201911122138.odGEyMzg%lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="zdoim6wad6ejtere"
Content-Disposition: inline
X-Patchwork-Hint: ignore
User-Agent: NeoMutt/20170113 (1.7.2)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lkp@intel.com designates 192.55.52.115 as permitted
 sender) smtp.mailfrom=lkp@intel.com;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=intel.com
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


--zdoim6wad6ejtere
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

CC: kbuild-all@lists.01.org
In-Reply-To: <20191108094641.20086-9-tiwai@suse.de>
References: <20191108094641.20086-9-tiwai@suse.de>
TO: Takashi Iwai <tiwai@suse.de>

Hi Takashi,

I love your patch! Yet something to improve:

[auto build test ERROR on asoc/for-next]
[cannot apply to v5.4-rc7 next-20191112]
[if your patch is applied to the wrong git tree, please drop us a note to h=
elp
improve the system. BTW, we also suggest to use '--base' option to specify =
the
base tree in git format-patch, please see https://stackoverflow.com/a/37406=
982]

url:    https://github.com/0day-ci/linux/commits/Takashi-Iwai/ASoC-memalloc=
-cleanups/20191110-041824
base:   https://git.kernel.org/pub/scm/linux/kernel/git/broonie/sound.git f=
or-next
config: x86_64-rhel-7.6 (attached as .config)
compiler: clang version 10.0.0 (git://gitmirror/llvm_project b9be5ce8f3e0e6=
97a61ad16e2c669de6ea8f8739)
reproduce:
        # save the attached .config to linux build tree
        make ARCH=3Dx86_64=20

If you fix the issue, kindly add following tag
Reported-by: kbuild test robot <lkp@intel.com>

All errors (new ones prefixed by >>):

   In file included from sound/pci/au88x0/au8810.c:10:
>> sound/pci/au88x0/au88x0_pcm.c:439:10: error: use of undeclared identifie=
r 'snd_pcm_sgbuf_ops_page'; did you mean 'snd_pcm_sgbuf_get_ptr'?
           .page =3D snd_pcm_sgbuf_ops_page,
                   ^~~~~~~~~~~~~~~~~~~~~~
                   snd_pcm_sgbuf_get_ptr
   include/sound/pcm.h:1258:1: note: 'snd_pcm_sgbuf_get_ptr' declared here
   snd_pcm_sgbuf_get_ptr(struct snd_pcm_substream *substream, unsigned int =
ofs)
   ^
   In file included from sound/pci/au88x0/au8810.c:10:
>> sound/pci/au88x0/au88x0_pcm.c:439:10: error: incompatible pointer types =
initializing 'struct page *(*)(struct snd_pcm_substream *, unsigned long)' =
with an expression of type 'void *(struct snd_pcm_substream *, unsigned int=
)' [-Werror,-Wincompatible-pointer-types]
           .page =3D snd_pcm_sgbuf_ops_page,
                   ^~~~~~~~~~~~~~~~~~~~~~
   2 errors generated.
--
>> sound/pci/ctxfi/ctpcm.c:382:11: error: use of undeclared identifier 'snd=
_pcm_sgbuf_ops_page'; did you mean 'snd_pcm_sgbuf_get_ptr'?
           .page           =3D snd_pcm_sgbuf_ops_page,
                             ^~~~~~~~~~~~~~~~~~~~~~
                             snd_pcm_sgbuf_get_ptr
   include/sound/pcm.h:1258:1: note: 'snd_pcm_sgbuf_get_ptr' declared here
   snd_pcm_sgbuf_get_ptr(struct snd_pcm_substream *substream, unsigned int =
ofs)
   ^
>> sound/pci/ctxfi/ctpcm.c:382:11: error: incompatible pointer types initia=
lizing 'struct page *(*)(struct snd_pcm_substream *, unsigned long)' with a=
n expression of type 'void *(struct snd_pcm_substream *, unsigned int)' [-W=
error,-Wincompatible-pointer-types]
           .page           =3D snd_pcm_sgbuf_ops_page,
                             ^~~~~~~~~~~~~~~~~~~~~~
   sound/pci/ctxfi/ctpcm.c:395:11: error: use of undeclared identifier 'snd=
_pcm_sgbuf_ops_page'; did you mean 'snd_pcm_sgbuf_get_ptr'?
           .page           =3D snd_pcm_sgbuf_ops_page,
                             ^~~~~~~~~~~~~~~~~~~~~~
                             snd_pcm_sgbuf_get_ptr
   include/sound/pcm.h:1258:1: note: 'snd_pcm_sgbuf_get_ptr' declared here
   snd_pcm_sgbuf_get_ptr(struct snd_pcm_substream *substream, unsigned int =
ofs)
   ^
   sound/pci/ctxfi/ctpcm.c:395:11: error: incompatible pointer types initia=
lizing 'struct page *(*)(struct snd_pcm_substream *, unsigned long)' with a=
n expression of type 'void *(struct snd_pcm_substream *, unsigned int)' [-W=
error,-Wincompatible-pointer-types]
           .page           =3D snd_pcm_sgbuf_ops_page,
                             ^~~~~~~~~~~~~~~~~~~~~~
   4 errors generated.
--
   In file included from sound/pci/echoaudio/darla20.c:89:
>> sound/pci/echoaudio/echoaudio.c:827:10: error: use of undeclared identif=
ier 'snd_pcm_sgbuf_ops_page'; did you mean 'snd_pcm_sgbuf_get_ptr'?
           .page =3D snd_pcm_sgbuf_ops_page,
                   ^~~~~~~~~~~~~~~~~~~~~~
                   snd_pcm_sgbuf_get_ptr
   include/sound/pcm.h:1258:1: note: 'snd_pcm_sgbuf_get_ptr' declared here
   snd_pcm_sgbuf_get_ptr(struct snd_pcm_substream *substream, unsigned int =
ofs)
   ^
   In file included from sound/pci/echoaudio/darla20.c:89:
>> sound/pci/echoaudio/echoaudio.c:827:10: error: incompatible pointer type=
s initializing 'struct page *(*)(struct snd_pcm_substream *, unsigned long)=
' with an expression of type 'void *(struct snd_pcm_substream *, unsigned i=
nt)' [-Werror,-Wincompatible-pointer-types]
           .page =3D snd_pcm_sgbuf_ops_page,
                   ^~~~~~~~~~~~~~~~~~~~~~
   sound/pci/echoaudio/echoaudio.c:838:10: error: use of undeclared identif=
ier 'snd_pcm_sgbuf_ops_page'; did you mean 'snd_pcm_sgbuf_get_ptr'?
           .page =3D snd_pcm_sgbuf_ops_page,
                   ^~~~~~~~~~~~~~~~~~~~~~
                   snd_pcm_sgbuf_get_ptr
   include/sound/pcm.h:1258:1: note: 'snd_pcm_sgbuf_get_ptr' declared here
   snd_pcm_sgbuf_get_ptr(struct snd_pcm_substream *substream, unsigned int =
ofs)
   ^
   In file included from sound/pci/echoaudio/darla20.c:89:
   sound/pci/echoaudio/echoaudio.c:838:10: error: incompatible pointer type=
s initializing 'struct page *(*)(struct snd_pcm_substream *, unsigned long)=
' with an expression of type 'void *(struct snd_pcm_substream *, unsigned i=
nt)' [-Werror,-Wincompatible-pointer-types]
           .page =3D snd_pcm_sgbuf_ops_page,
                   ^~~~~~~~~~~~~~~~~~~~~~
   4 errors generated.
--
   In file included from sound/pci/echoaudio/gina20.c:93:
>> sound/pci/echoaudio/echoaudio.c:827:10: error: use of undeclared identif=
ier 'snd_pcm_sgbuf_ops_page'; did you mean 'snd_pcm_sgbuf_get_ptr'?
           .page =3D snd_pcm_sgbuf_ops_page,
                   ^~~~~~~~~~~~~~~~~~~~~~
                   snd_pcm_sgbuf_get_ptr
   include/sound/pcm.h:1258:1: note: 'snd_pcm_sgbuf_get_ptr' declared here
   snd_pcm_sgbuf_get_ptr(struct snd_pcm_substream *substream, unsigned int =
ofs)
   ^
   In file included from sound/pci/echoaudio/gina20.c:93:
>> sound/pci/echoaudio/echoaudio.c:827:10: error: incompatible pointer type=
s initializing 'struct page *(*)(struct snd_pcm_substream *, unsigned long)=
' with an expression of type 'void *(struct snd_pcm_substream *, unsigned i=
nt)' [-Werror,-Wincompatible-pointer-types]
           .page =3D snd_pcm_sgbuf_ops_page,
                   ^~~~~~~~~~~~~~~~~~~~~~
   sound/pci/echoaudio/echoaudio.c:838:10: error: use of undeclared identif=
ier 'snd_pcm_sgbuf_ops_page'; did you mean 'snd_pcm_sgbuf_get_ptr'?
           .page =3D snd_pcm_sgbuf_ops_page,
                   ^~~~~~~~~~~~~~~~~~~~~~
                   snd_pcm_sgbuf_get_ptr
   include/sound/pcm.h:1258:1: note: 'snd_pcm_sgbuf_get_ptr' declared here
   snd_pcm_sgbuf_get_ptr(struct snd_pcm_substream *substream, unsigned int =
ofs)
   ^
   In file included from sound/pci/echoaudio/gina20.c:93:
   sound/pci/echoaudio/echoaudio.c:838:10: error: incompatible pointer type=
s initializing 'struct page *(*)(struct snd_pcm_substream *, unsigned long)=
' with an expression of type 'void *(struct snd_pcm_substream *, unsigned i=
nt)' [-Werror,-Wincompatible-pointer-types]
           .page =3D snd_pcm_sgbuf_ops_page,
                   ^~~~~~~~~~~~~~~~~~~~~~
   sound/pci/echoaudio/echoaudio.c:851:10: error: use of undeclared identif=
ier 'snd_pcm_sgbuf_ops_page'; did you mean 'snd_pcm_sgbuf_get_ptr'?
           .page =3D snd_pcm_sgbuf_ops_page,
                   ^~~~~~~~~~~~~~~~~~~~~~
                   snd_pcm_sgbuf_get_ptr
   include/sound/pcm.h:1258:1: note: 'snd_pcm_sgbuf_get_ptr' declared here
   snd_pcm_sgbuf_get_ptr(struct snd_pcm_substream *substream, unsigned int =
ofs)
   ^
   In file included from sound/pci/echoaudio/gina20.c:93:
   sound/pci/echoaudio/echoaudio.c:851:10: error: incompatible pointer type=
s initializing 'struct page *(*)(struct snd_pcm_substream *, unsigned long)=
' with an expression of type 'void *(struct snd_pcm_substream *, unsigned i=
nt)' [-Werror,-Wincompatible-pointer-types]
           .page =3D snd_pcm_sgbuf_ops_page,
                   ^~~~~~~~~~~~~~~~~~~~~~
   sound/pci/echoaudio/echoaudio.c:863:10: error: use of undeclared identif=
ier 'snd_pcm_sgbuf_ops_page'; did you mean 'snd_pcm_sgbuf_get_ptr'?
           .page =3D snd_pcm_sgbuf_ops_page,
                   ^~~~~~~~~~~~~~~~~~~~~~
                   snd_pcm_sgbuf_get_ptr
   include/sound/pcm.h:1258:1: note: 'snd_pcm_sgbuf_get_ptr' declared here
   snd_pcm_sgbuf_get_ptr(struct snd_pcm_substream *substream, unsigned int =
ofs)
   ^
   In file included from sound/pci/echoaudio/gina20.c:93:
   sound/pci/echoaudio/echoaudio.c:863:10: error: incompatible pointer type=
s initializing 'struct page *(*)(struct snd_pcm_substream *, unsigned long)=
' with an expression of type 'void *(struct snd_pcm_substream *, unsigned i=
nt)' [-Werror,-Wincompatible-pointer-types]
           .page =3D snd_pcm_sgbuf_ops_page,
                   ^~~~~~~~~~~~~~~~~~~~~~
   8 errors generated.
--
   In file included from sound/pci/echoaudio/mia.c:108:
>> sound/pci/echoaudio/echoaudio.c:827:10: error: use of undeclared identif=
ier 'snd_pcm_sgbuf_ops_page'; did you mean 'snd_pcm_sgbuf_get_ptr'?
           .page =3D snd_pcm_sgbuf_ops_page,
                   ^~~~~~~~~~~~~~~~~~~~~~
                   snd_pcm_sgbuf_get_ptr
   include/sound/pcm.h:1258:1: note: 'snd_pcm_sgbuf_get_ptr' declared here
   snd_pcm_sgbuf_get_ptr(struct snd_pcm_substream *substream, unsigned int =
ofs)
   ^
   In file included from sound/pci/echoaudio/mia.c:108:
>> sound/pci/echoaudio/echoaudio.c:827:10: error: incompatible pointer type=
s initializing 'struct page *(*)(struct snd_pcm_substream *, unsigned long)=
' with an expression of type 'void *(struct snd_pcm_substream *, unsigned i=
nt)' [-Werror,-Wincompatible-pointer-types]
           .page =3D snd_pcm_sgbuf_ops_page,
                   ^~~~~~~~~~~~~~~~~~~~~~
   sound/pci/echoaudio/echoaudio.c:838:10: error: use of undeclared identif=
ier 'snd_pcm_sgbuf_ops_page'; did you mean 'snd_pcm_sgbuf_get_ptr'?
           .page =3D snd_pcm_sgbuf_ops_page,
                   ^~~~~~~~~~~~~~~~~~~~~~
                   snd_pcm_sgbuf_get_ptr
   include/sound/pcm.h:1258:1: note: 'snd_pcm_sgbuf_get_ptr' declared here
   snd_pcm_sgbuf_get_ptr(struct snd_pcm_substream *substream, unsigned int =
ofs)
   ^
   In file included from sound/pci/echoaudio/mia.c:108:
   sound/pci/echoaudio/echoaudio.c:838:10: error: incompatible pointer type=
s initializing 'struct page *(*)(struct snd_pcm_substream *, unsigned long)=
' with an expression of type 'void *(struct snd_pcm_substream *, unsigned i=
nt)' [-Werror,-Wincompatible-pointer-types]
           .page =3D snd_pcm_sgbuf_ops_page,
                   ^~~~~~~~~~~~~~~~~~~~~~
   sound/pci/echoaudio/echoaudio.c:863:10: error: use of undeclared identif=
ier 'snd_pcm_sgbuf_ops_page'; did you mean 'snd_pcm_sgbuf_get_ptr'?
           .page =3D snd_pcm_sgbuf_ops_page,
                   ^~~~~~~~~~~~~~~~~~~~~~
                   snd_pcm_sgbuf_get_ptr
   include/sound/pcm.h:1258:1: note: 'snd_pcm_sgbuf_get_ptr' declared here
   snd_pcm_sgbuf_get_ptr(struct snd_pcm_substream *substream, unsigned int =
ofs)
   ^
   In file included from sound/pci/echoaudio/mia.c:108:
   sound/pci/echoaudio/echoaudio.c:863:10: error: incompatible pointer type=
s initializing 'struct page *(*)(struct snd_pcm_substream *, unsigned long)=
' with an expression of type 'void *(struct snd_pcm_substream *, unsigned i=
nt)' [-Werror,-Wincompatible-pointer-types]
           .page =3D snd_pcm_sgbuf_ops_page,
                   ^~~~~~~~~~~~~~~~~~~~~~
   6 errors generated.
--
>> sound/pci/emu10k1/emupcm.c:1369:12: error: use of undeclared identifier =
'snd_pcm_sgbuf_ops_page'; did you mean 'snd_pcm_sgbuf_get_ptr'?
           .page =3D                 snd_pcm_sgbuf_ops_page,
                                   ^~~~~~~~~~~~~~~~~~~~~~
                                   snd_pcm_sgbuf_get_ptr
   include/sound/pcm.h:1258:1: note: 'snd_pcm_sgbuf_get_ptr' declared here
   snd_pcm_sgbuf_get_ptr(struct snd_pcm_substream *substream, unsigned int =
ofs)
   ^
>> sound/pci/emu10k1/emupcm.c:1369:12: error: incompatible pointer types in=
itializing 'struct page *(*)(struct snd_pcm_substream *, unsigned long)' wi=
th an expression of type 'void *(struct snd_pcm_substream *, unsigned int)'=
 [-Werror,-Wincompatible-pointer-types]
           .page =3D                 snd_pcm_sgbuf_ops_page,
                                   ^~~~~~~~~~~~~~~~~~~~~~
   sound/pci/emu10k1/emupcm.c:1393:12: error: use of undeclared identifier =
'snd_pcm_sgbuf_ops_page'; did you mean 'snd_pcm_sgbuf_get_ptr'?
           .page =3D                 snd_pcm_sgbuf_ops_page,
                                   ^~~~~~~~~~~~~~~~~~~~~~
                                   snd_pcm_sgbuf_get_ptr
   include/sound/pcm.h:1258:1: note: 'snd_pcm_sgbuf_get_ptr' declared here
   snd_pcm_sgbuf_get_ptr(struct snd_pcm_substream *substream, unsigned int =
ofs)
   ^
   sound/pci/emu10k1/emupcm.c:1393:12: error: incompatible pointer types in=
itializing 'struct page *(*)(struct snd_pcm_substream *, unsigned long)' wi=
th an expression of type 'void *(struct snd_pcm_substream *, unsigned int)'=
 [-Werror,-Wincompatible-pointer-types]
           .page =3D                 snd_pcm_sgbuf_ops_page,
                                   ^~~~~~~~~~~~~~~~~~~~~~
   4 errors generated.
--
>> sound/pci/lola/lola_pcm.c:585:10: error: use of undeclared identifier 's=
nd_pcm_sgbuf_ops_page'; did you mean 'snd_pcm_sgbuf_get_ptr'?
           .page =3D snd_pcm_sgbuf_ops_page,
                   ^~~~~~~~~~~~~~~~~~~~~~
                   snd_pcm_sgbuf_get_ptr
   include/sound/pcm.h:1258:1: note: 'snd_pcm_sgbuf_get_ptr' declared here
   snd_pcm_sgbuf_get_ptr(struct snd_pcm_substream *substream, unsigned int =
ofs)
   ^
>> sound/pci/lola/lola_pcm.c:585:10: error: incompatible pointer types init=
ializing 'struct page *(*)(struct snd_pcm_substream *, unsigned long)' with=
 an expression of type 'void *(struct snd_pcm_substream *, unsigned int)' [=
-Werror,-Wincompatible-pointer-types]
           .page =3D snd_pcm_sgbuf_ops_page,
                   ^~~~~~~~~~~~~~~~~~~~~~
   2 errors generated.
--
>> sound/pci/rme9652/hdspm.c:6371:10: error: use of undeclared identifier '=
snd_pcm_sgbuf_ops_page'; did you mean 'snd_pcm_sgbuf_get_ptr'?
           .page =3D snd_pcm_sgbuf_ops_page,
                   ^~~~~~~~~~~~~~~~~~~~~~
                   snd_pcm_sgbuf_get_ptr
   include/sound/pcm.h:1258:1: note: 'snd_pcm_sgbuf_get_ptr' declared here
   snd_pcm_sgbuf_get_ptr(struct snd_pcm_substream *substream, unsigned int =
ofs)
   ^
>> sound/pci/rme9652/hdspm.c:6371:10: error: incompatible pointer types ini=
tializing 'struct page *(*)(struct snd_pcm_substream *, unsigned long)' wit=
h an expression of type 'void *(struct snd_pcm_substream *, unsigned int)' =
[-Werror,-Wincompatible-pointer-types]
           .page =3D snd_pcm_sgbuf_ops_page,
                   ^~~~~~~~~~~~~~~~~~~~~~
   2 errors generated.
--
>> sound/pci/trident/trident_main.c:2079:11: error: use of undeclared ident=
ifier 'snd_pcm_sgbuf_ops_page'; did you mean 'snd_pcm_sgbuf_get_ptr'?
           .page =3D         snd_pcm_sgbuf_ops_page,
                           ^~~~~~~~~~~~~~~~~~~~~~
                           snd_pcm_sgbuf_get_ptr
   include/sound/pcm.h:1258:1: note: 'snd_pcm_sgbuf_get_ptr' declared here
   snd_pcm_sgbuf_get_ptr(struct snd_pcm_substream *substream, unsigned int =
ofs)
   ^
>> sound/pci/trident/trident_main.c:2079:11: error: incompatible pointer ty=
pes initializing 'struct page *(*)(struct snd_pcm_substream *, unsigned lon=
g)' with an expression of type 'void *(struct snd_pcm_substream *, unsigned=
 int)' [-Werror,-Wincompatible-pointer-types]
           .page =3D         snd_pcm_sgbuf_ops_page,
                           ^~~~~~~~~~~~~~~~~~~~~~
   sound/pci/trident/trident_main.c:2124:11: error: use of undeclared ident=
ifier 'snd_pcm_sgbuf_ops_page'; did you mean 'snd_pcm_sgbuf_get_ptr'?
           .page =3D         snd_pcm_sgbuf_ops_page,
                           ^~~~~~~~~~~~~~~~~~~~~~
                           snd_pcm_sgbuf_get_ptr
   include/sound/pcm.h:1258:1: note: 'snd_pcm_sgbuf_get_ptr' declared here
   snd_pcm_sgbuf_get_ptr(struct snd_pcm_substream *substream, unsigned int =
ofs)
   ^
   sound/pci/trident/trident_main.c:2124:11: error: incompatible pointer ty=
pes initializing 'struct page *(*)(struct snd_pcm_substream *, unsigned lon=
g)' with an expression of type 'void *(struct snd_pcm_substream *, unsigned=
 int)' [-Werror,-Wincompatible-pointer-types]
           .page =3D         snd_pcm_sgbuf_ops_page,
                           ^~~~~~~~~~~~~~~~~~~~~~
   4 errors generated.
--
>> sound//pci/bt87x.c:548:10: error: use of undeclared identifier 'snd_pcm_=
sgbuf_ops_page'; did you mean 'snd_pcm_sgbuf_get_ptr'?
           .page =3D snd_pcm_sgbuf_ops_page,
                   ^~~~~~~~~~~~~~~~~~~~~~
                   snd_pcm_sgbuf_get_ptr
   include/sound/pcm.h:1258:1: note: 'snd_pcm_sgbuf_get_ptr' declared here
   snd_pcm_sgbuf_get_ptr(struct snd_pcm_substream *substream, unsigned int =
ofs)
   ^
>> sound//pci/bt87x.c:548:10: error: incompatible pointer types initializin=
g 'struct page *(*)(struct snd_pcm_substream *, unsigned long)' with an exp=
ression of type 'void *(struct snd_pcm_substream *, unsigned int)' [-Werror=
,-Wincompatible-pointer-types]
           .page =3D snd_pcm_sgbuf_ops_page,
                   ^~~~~~~~~~~~~~~~~~~~~~
   2 errors generated.
--
>> sound//pci/via82xx.c:1366:11: error: use of undeclared identifier 'snd_p=
cm_sgbuf_ops_page'; did you mean 'snd_pcm_sgbuf_get_ptr'?
           .page =3D         snd_pcm_sgbuf_ops_page,
                           ^~~~~~~~~~~~~~~~~~~~~~
                           snd_pcm_sgbuf_get_ptr
   include/sound/pcm.h:1258:1: note: 'snd_pcm_sgbuf_get_ptr' declared here
   snd_pcm_sgbuf_get_ptr(struct snd_pcm_substream *substream, unsigned int =
ofs)
   ^
>> sound//pci/via82xx.c:1366:11: error: incompatible pointer types initiali=
zing 'struct page *(*)(struct snd_pcm_substream *, unsigned long)' with an =
expression of type 'void *(struct snd_pcm_substream *, unsigned int)' [-Wer=
ror,-Wincompatible-pointer-types]
           .page =3D         snd_pcm_sgbuf_ops_page,
                           ^~~~~~~~~~~~~~~~~~~~~~
   sound//pci/via82xx.c:1379:11: error: use of undeclared identifier 'snd_p=
cm_sgbuf_ops_page'; did you mean 'snd_pcm_sgbuf_get_ptr'?
           .page =3D         snd_pcm_sgbuf_ops_page,
                           ^~~~~~~~~~~~~~~~~~~~~~
                           snd_pcm_sgbuf_get_ptr
   include/sound/pcm.h:1258:1: note: 'snd_pcm_sgbuf_get_ptr' declared here
   snd_pcm_sgbuf_get_ptr(struct snd_pcm_substream *substream, unsigned int =
ofs)
   ^
   sound//pci/via82xx.c:1379:11: error: incompatible pointer types initiali=
zing 'struct page *(*)(struct snd_pcm_substream *, unsigned long)' with an =
expression of type 'void *(struct snd_pcm_substream *, unsigned int)' [-Wer=
ror,-Wincompatible-pointer-types]
           .page =3D         snd_pcm_sgbuf_ops_page,
                           ^~~~~~~~~~~~~~~~~~~~~~
   sound//pci/via82xx.c:1392:11: error: use of undeclared identifier 'snd_p=
cm_sgbuf_ops_page'; did you mean 'snd_pcm_sgbuf_get_ptr'?
           .page =3D         snd_pcm_sgbuf_ops_page,
                           ^~~~~~~~~~~~~~~~~~~~~~
                           snd_pcm_sgbuf_get_ptr
   include/sound/pcm.h:1258:1: note: 'snd_pcm_sgbuf_get_ptr' declared here
   snd_pcm_sgbuf_get_ptr(struct snd_pcm_substream *substream, unsigned int =
ofs)
   ^
   sound//pci/via82xx.c:1392:11: error: incompatible pointer types initiali=
zing 'struct page *(*)(struct snd_pcm_substream *, unsigned long)' with an =
expression of type 'void *(struct snd_pcm_substream *, unsigned int)' [-Wer=
ror,-Wincompatible-pointer-types]
           .page =3D         snd_pcm_sgbuf_ops_page,
                           ^~~~~~~~~~~~~~~~~~~~~~
   sound//pci/via82xx.c:1405:11: error: use of undeclared identifier 'snd_p=
cm_sgbuf_ops_page'; did you mean 'snd_pcm_sgbuf_get_ptr'?
           .page =3D         snd_pcm_sgbuf_ops_page,
                           ^~~~~~~~~~~~~~~~~~~~~~
                           snd_pcm_sgbuf_get_ptr
   include/sound/pcm.h:1258:1: note: 'snd_pcm_sgbuf_get_ptr' declared here
   snd_pcm_sgbuf_get_ptr(struct snd_pcm_substream *substream, unsigned int =
ofs)
   ^
   sound//pci/via82xx.c:1405:11: error: incompatible pointer types initiali=
zing 'struct page *(*)(struct snd_pcm_substream *, unsigned long)' with an =
expression of type 'void *(struct snd_pcm_substream *, unsigned int)' [-Wer=
ror,-Wincompatible-pointer-types]
           .page =3D         snd_pcm_sgbuf_ops_page,
                           ^~~~~~~~~~~~~~~~~~~~~~
   sound//pci/via82xx.c:1418:11: error: use of undeclared identifier 'snd_p=
cm_sgbuf_ops_page'; did you mean 'snd_pcm_sgbuf_get_ptr'?
           .page =3D         snd_pcm_sgbuf_ops_page,
                           ^~~~~~~~~~~~~~~~~~~~~~
                           snd_pcm_sgbuf_get_ptr
   include/sound/pcm.h:1258:1: note: 'snd_pcm_sgbuf_get_ptr' declared here
   snd_pcm_sgbuf_get_ptr(struct snd_pcm_substream *substream, unsigned int =
ofs)
   ^
   sound//pci/via82xx.c:1418:11: error: incompatible pointer types initiali=
zing 'struct page *(*)(struct snd_pcm_substream *, unsigned long)' with an =
expression of type 'void *(struct snd_pcm_substream *, unsigned int)' [-Wer=
ror,-Wincompatible-pointer-types]
           .page =3D         snd_pcm_sgbuf_ops_page,
                           ^~~~~~~~~~~~~~~~~~~~~~
   10 errors generated.
..

vim +439 sound/pci/au88x0/au88x0_pcm.c

^1da177e4c3f41 Linus Torvalds 2005-04-16  428 =20
^1da177e4c3f41 Linus Torvalds 2005-04-16  429  /* operators */
0b5b233915b6ea Arvind Yadav   2017-08-10  430  static const struct snd_pcm_=
ops snd_vortex_playback_ops =3D {
^1da177e4c3f41 Linus Torvalds 2005-04-16  431  	.open =3D snd_vortex_pcm_op=
en,
^1da177e4c3f41 Linus Torvalds 2005-04-16  432  	.close =3D snd_vortex_pcm_c=
lose,
^1da177e4c3f41 Linus Torvalds 2005-04-16  433  	.ioctl =3D snd_pcm_lib_ioct=
l,
^1da177e4c3f41 Linus Torvalds 2005-04-16  434  	.hw_params =3D snd_vortex_p=
cm_hw_params,
^1da177e4c3f41 Linus Torvalds 2005-04-16  435  	.hw_free =3D snd_vortex_pcm=
_hw_free,
^1da177e4c3f41 Linus Torvalds 2005-04-16  436  	.prepare =3D snd_vortex_pcm=
_prepare,
^1da177e4c3f41 Linus Torvalds 2005-04-16  437  	.trigger =3D snd_vortex_pcm=
_trigger,
^1da177e4c3f41 Linus Torvalds 2005-04-16  438  	.pointer =3D snd_vortex_pcm=
_pointer,
^1da177e4c3f41 Linus Torvalds 2005-04-16 @439  	.page =3D snd_pcm_sgbuf_ops=
_page,
^1da177e4c3f41 Linus Torvalds 2005-04-16  440  };
^1da177e4c3f41 Linus Torvalds 2005-04-16  441 =20

:::::: The code at line 439 was first introduced by commit
:::::: 1da177e4c3f41524e886b7f1b8a0c1fc7321cac2 Linux-2.6.12-rc2

:::::: TO: Linus Torvalds <torvalds@ppc970.osdl.org>
:::::: CC: Linus Torvalds <torvalds@ppc970.osdl.org>

---
0-DAY kernel test infrastructure                 Open Source Technology Cen=
ter
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org Intel Corporat=
ion

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/201911122138.odGEyMzg%25lkp%40intel.com.

--zdoim6wad6ejtere
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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
AA==

--zdoim6wad6ejtere--
