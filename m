Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBSEZUT5AKGQED6JTGCA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf3b.google.com (mail-qv1-xf3b.google.com [IPv6:2607:f8b0:4864:20::f3b])
	by mail.lfdr.de (Postfix) with ESMTPS id DDCCF255BB7
	for <lists+clang-built-linux@lfdr.de>; Fri, 28 Aug 2020 15:55:23 +0200 (CEST)
Received: by mail-qv1-xf3b.google.com with SMTP id h6sf828844qvz.14
        for <lists+clang-built-linux@lfdr.de>; Fri, 28 Aug 2020 06:55:23 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1598622922; cv=pass;
        d=google.com; s=arc-20160816;
        b=qDILCyVIaKY58F7M9T7f2psXiTb8MovkdoeG6cmj2H/RJaW6viTutppSJ3ODdmUTaa
         t+n/Bk1raB1clwjam2FMoZ3BOcOp8mO6I0ToIYTybNEECtzCDBSsU6MvqwQ/blK8OWWE
         AFjHAxyxbM9Rfwtd2KxUtVnvUJDGlRhgpqyFvmJFB6ZRk8CIlCcv9o6+YH+f6pIdTcXt
         3EXTOmigI5FY267fR7BzzZpm8EjYsSt9n/ssusuDmI034RB86p1+hDzn8PJGbGB/dBXV
         nDS1+JplSaSFDq1KVlml9x8v/6ETZQkK6QH0dxIfUPeXcMm6aVwTLvG+R+WBcLx0pTZs
         ae1A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:ironport-sdr
         :ironport-sdr:sender:dkim-signature;
        bh=W0nZ1O7CyS498+eRv3jB0fdYCeGdyqF6/Oqb6kkVFBY=;
        b=Sei4hc5o+F2ZZ1kdOrb2EI1oA/adHUGVwHuj0MgNy0vGY4tWN/ntpLgclf2thvLQXP
         qNJxYfVZuuJoJ1/4ER1Mp7AatdF7tT8RBFQDvCaXTEbpvg2IW++YESVflgAr6u65YNgs
         d4Ptic2NZ4B4xSteC8JCbBV19dtnOgIMgT7ZuWBrZwZrfpi6THecurnPDdubHWzBncOB
         gKckBrstc2ouUU8pfb4fLqEguft2dTZ6UVNEHyM759kXqzbvt9W+oPOs8oibua983tJp
         cpUb9tm3Qi01QgSs4Uedv5BHgU9aBF+0YoeY7c1TpmLTHnQr5ehmPKjprVhpSRpx6ygx
         z6fw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.24 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=W0nZ1O7CyS498+eRv3jB0fdYCeGdyqF6/Oqb6kkVFBY=;
        b=bsfm4DEg7mbF/GVdtnrqLrDjTRFJuDiYCphOs1mqrraSRatacnF1ncAavCGdjxKnc8
         Q1kuovQP9AOys0stQb02mCTHiZKMBBmPzZT+m0KIZtAFyA73dFyU5uNYOrLu+sF8G/Dx
         OTaebIw/hVX+JEhyAkXZw4+j6/mGTCN7WBr9mKVJyP114rJiqv+Lhx28FcfWd90QohgN
         0Loohx/ChGY9NNf0N4BGboDxy/qIcjFEOvFT8pVUcbqyHVjZ8Q913bfvbWEovdMLoPwE
         EXqzP+EZ1xVLFoxokGpOJGDkDTN3ePQMLhJ8v+WQkyZHBdvPRwv9Xmi0KvekCcx7UeAg
         hKog==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:mime-version:content-disposition:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=W0nZ1O7CyS498+eRv3jB0fdYCeGdyqF6/Oqb6kkVFBY=;
        b=JhHg2Kx5b3Yrowx8wjODGSBBhSylmppK+jgIote2s5XcLwOwFQCf7ztHEJKI3SikWN
         NUIXfWom6DyRRzoYHBsRdjVeRKCvGEp0uZM4EmUk9vVDeTmM4SzQQ+VTyv+XBnZRJpB+
         jRBek0QVV/YbfEyQMXJ19Abyb1yKXU9occPe2eAHNAxvX859YPtpz38x8+O0OElEL9nt
         RInWD3Q9tNTY9FKTYpSzR11Xh9ENByQ/v/bktf0Qbxyhw1XnzYiVmkNi4y5aam7untlz
         INcj0ZuqqFlwyISa1R6CzLCbJJAchMGe+i2RMmIBWT3HN2QY+XY3VGq3lstSuHUt6qyv
         owMg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531vsLx88/BogkYyJJE1f7yeYXvH17lsqi9KRXem3Na0+aXi9EU9
	lU6aEEHm6QUPPzpN77WeVtw=
X-Google-Smtp-Source: ABdhPJw9gK+09FdLJ+ptX23/3rAxbS6cYj98+O536krIGjbcvxcFyTCXR5U45+GQuKkPHKJY9bHMsQ==
X-Received: by 2002:ac8:306f:: with SMTP id g44mr1643710qte.177.1598622920307;
        Fri, 28 Aug 2020 06:55:20 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:371d:: with SMTP id o29ls492439qtb.6.gmail; Fri, 28 Aug
 2020 06:55:19 -0700 (PDT)
X-Received: by 2002:ac8:72d6:: with SMTP id o22mr1636987qtp.53.1598622919800;
        Fri, 28 Aug 2020 06:55:19 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1598622919; cv=none;
        d=google.com; s=arc-20160816;
        b=n9o2RZu8LNPm3zZb/nMWZsCVX+LD31mYVhOTJCdunNxTn9a1uMfugjx/jFZN5CO40v
         O0MJw9QGCtVb/Y/FkF6X0zg9dU2oBsknt2x/lUdhODaKuYUxEP45jf6A6h574sQueqyz
         e5Zz0DarSczS+OPb+NsJJ4VQpt6hLG4lSEC+71bJ+ExPl1yBE0som4Nxp7eWVi8enlj7
         HtUy5uy9V6nGucLyCCVpM7E97Ud3r6bxYvujLztA2N+QFzv3ietwNf/pmkVNL7l7pLy/
         EyxcgM2nv9HIpQWEqNBD4YA3TMfUJmJkRoa8I6m8HTMZk21DNghcOyrI6XNLabblm16L
         /WKg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr;
        bh=PJ8vpI0hlE8fLuGJ5haN3D1UYKQQT9z1d2GUxJYcRAw=;
        b=X2aT2n1i4/doQm1CP9FCOKlzPWi5zWV4xqTtvFmcR0ClBx9JmtnJL/H5afE5UfHXQT
         d76f9dVYljrfsDF0H4711MVkcL9hwLVZpw9U/8dORsTf2mHTJPHB8wrmwwmNgdHgvJi8
         XnkqT6EthiGkQFG/GMkSU9X873Xf+N1XexgYl0dr59cwS0XR7gD+/Z2uxwEnQ+Hbdbzm
         2WmoTS1PrcMoRD6TZ7/8ixE+TkDGuHUDhEH5iXluMpIVARwtGgsHEGWoF7CrKuJVx24r
         q2s7GrhSz8mwcgETv1a5swJ5Hv/9GeHTwR0gyCsT+oYNcDHCxIc5ZLKaKmIjrumoKgp6
         +r9w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.24 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga09.intel.com (mga09.intel.com. [134.134.136.24])
        by gmr-mx.google.com with ESMTPS id f38si60638qte.4.2020.08.28.06.55.19
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 28 Aug 2020 06:55:19 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 134.134.136.24 as permitted sender) client-ip=134.134.136.24;
IronPort-SDR: 151miLdZEP5Moq1xJqNzzeaAcQwHdOZ/uskOT8jBs1mmroo9aX0B+QIvZn3juS5eyG51vNQ+To
 0Tp9Nx2ETRKA==
X-IronPort-AV: E=McAfee;i="6000,8403,9726"; a="157687862"
X-IronPort-AV: E=Sophos;i="5.76,363,1592895600"; 
   d="gz'50?scan'50,208,50";a="157687862"
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
  by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 28 Aug 2020 06:55:17 -0700
IronPort-SDR: ibTHHD1yWNshJm4f1gcDqd74jQ1PUtZvVRMLl2oy/8X6MjgBwexS+U/tKHSLs++qKcN7pvLQmd
 cJ+gBgUhLA6A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.76,363,1592895600"; 
   d="gz'50?scan'50,208,50";a="324018877"
Received: from lkp-server02.sh.intel.com (HELO 301dc1beeb51) ([10.239.97.151])
  by fmsmga004.fm.intel.com with ESMTP; 28 Aug 2020 06:55:14 -0700
Received: from kbuild by 301dc1beeb51 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1kBeqX-00002X-O0; Fri, 28 Aug 2020 13:55:13 +0000
Date: Fri, 28 Aug 2020 21:54:47 +0800
From: kernel test robot <lkp@intel.com>
To: "Vineetha G. Jaya Kumaran" <vineetha.g.jaya.kumaran@intel.com>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	"Li, Yifan" <yifan2.li@intel.com>,
	Muhammad Husaini Zulkifli <muhammad.husaini.zulkifli@intel.com>
Subject: [intel-linux-intel-lts:5.4/yocto 115/1142]
 drivers/pinctrl/pinctrl-keembay.c:953:13: error: implicit declaration of
 function 'pinmux_generic_get_function'
Message-ID: <202008282142.x6qnsoR0%lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="7AUc2qLy4jB3hD7Z"
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lkp@intel.com designates 134.134.136.24 as permitted
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


--7AUc2qLy4jB3hD7Z
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

tree:   https://github.com/intel/linux-intel-lts.git 5.4/yocto
head:   eeb611e5394c56d45c5cc8f7dc484c9f19e93143
commit: e2b2db60ecbb327f636e1c455913b8e85b84d578 [115/1142] pinctrl: Add In=
tel Keem Bay pinctrl driver
config: x86_64-randconfig-a005-20200828 (attached as .config)
compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project c10e63=
677f5d20f18010f8f68c631ddc97546f7d)
reproduce (this is a W=3D1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/=
make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install x86_64 cross compiling tool for clang build
        # apt-get install binutils-x86-64-linux-gnu
        git checkout e2b2db60ecbb327f636e1c455913b8e85b84d578
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=3D$HOME/0day COMPILER=3Dclang make.cross ARCH=
=3Dx86_64=20

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All error/warnings (new ones prefixed by >>):

>> drivers/pinctrl/pinctrl-keembay.c:953:13: error: implicit declaration of=
 function 'pinmux_generic_get_function' [-Werror,-Wimplicit-function-declar=
ation]
           function =3D pinmux_generic_get_function(pctldev, func_select);
                      ^
   drivers/pinctrl/pinctrl-keembay.c:953:13: note: did you mean 'pinmux_gen=
eric_free_functions'?
   drivers/pinctrl/pinmux.h:164:20: note: 'pinmux_generic_free_functions' d=
eclared here
   static inline void pinmux_generic_free_functions(struct pinctrl_dev *pct=
ldev)
                      ^
>> drivers/pinctrl/pinctrl-keembay.c:953:11: warning: incompatible integer =
to pointer conversion assigning to 'struct function_desc *' from 'int' [-Wi=
nt-conversion]
           function =3D pinmux_generic_get_function(pctldev, func_select);
                    ^ ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>> drivers/pinctrl/pinctrl-keembay.c:959:29: error: incomplete definition o=
f type 'struct function_desc'
           pin_mode =3D *(u8 *)(function->data);
                              ~~~~~~~~^
   drivers/pinctrl/pinctrl-keembay.c:942:9: note: forward declaration of 's=
truct function_desc'
           struct function_desc *function;
                  ^
>> drivers/pinctrl/pinctrl-keembay.c:1268:25: error: use of undeclared iden=
tifier 'pinmux_generic_get_function_count'; did you mean 'pinmux_generic_fr=
ee_functions'?
           .get_functions_count =3D pinmux_generic_get_function_count,
                                  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
                                  pinmux_generic_free_functions
   drivers/pinctrl/pinmux.h:164:20: note: 'pinmux_generic_free_functions' d=
eclared here
   static inline void pinmux_generic_free_functions(struct pinctrl_dev *pct=
ldev)
                      ^
>> drivers/pinctrl/pinctrl-keembay.c:1269:25: error: use of undeclared iden=
tifier 'pinmux_generic_get_function_name'; did you mean 'pinmux_generic_fre=
e_functions'?
           .get_function_name   =3D pinmux_generic_get_function_name,
                                  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
                                  pinmux_generic_free_functions
   drivers/pinctrl/pinmux.h:164:20: note: 'pinmux_generic_free_functions' d=
eclared here
   static inline void pinmux_generic_free_functions(struct pinctrl_dev *pct=
ldev)
                      ^
>> drivers/pinctrl/pinctrl-keembay.c:1270:25: error: use of undeclared iden=
tifier 'pinmux_generic_get_function_groups'; did you mean 'pinmux_generic_f=
ree_functions'?
           .get_function_groups =3D pinmux_generic_get_function_groups,
                                  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
                                  pinmux_generic_free_functions
   drivers/pinctrl/pinmux.h:164:20: note: 'pinmux_generic_free_functions' d=
eclared here
   static inline void pinmux_generic_free_functions(struct pinctrl_dev *pct=
ldev)
                      ^
>> drivers/pinctrl/pinctrl-keembay.c:1268:25: error: incompatible function =
pointer types initializing 'int (*)(struct pinctrl_dev *)' with an expressi=
on of type 'void (struct pinctrl_dev *)' [-Werror,-Wincompatible-function-p=
ointer-types]
           .get_functions_count =3D pinmux_generic_get_function_count,
                                  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>> drivers/pinctrl/pinctrl-keembay.c:1269:25: error: incompatible function =
pointer types initializing 'const char *(*)(struct pinctrl_dev *, unsigned =
int)' with an expression of type 'void (struct pinctrl_dev *)' [-Werror,-Wi=
ncompatible-function-pointer-types]
           .get_function_name   =3D pinmux_generic_get_function_name,
                                  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>> drivers/pinctrl/pinctrl-keembay.c:1270:25: error: incompatible function =
pointer types initializing 'int (*)(struct pinctrl_dev *, unsigned int, con=
st char *const **, unsigned int *)' with an expression of type 'void (struc=
t pinctrl_dev *)' [-Werror,-Wincompatible-function-pointer-types]
           .get_function_groups =3D pinmux_generic_get_function_groups,
                                  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>> drivers/pinctrl/pinctrl-keembay.c:1780:12: warning: declaration of 'stru=
ct function_desc' will not be visible outside of this function [-Wvisibilit=
y]
                                   struct function_desc *funcs)
                                          ^
>> drivers/pinctrl/pinctrl-keembay.c:1797:40: error: subscript of pointer t=
o incomplete type 'struct function_desc'
                                   if (!strcmp(pin_mux->name, function[j].n=
ame)) {
                                                              ~~~~~~~~^
   drivers/pinctrl/pinctrl-keembay.c:1780:12: note: forward declaration of =
'struct function_desc'
                                   struct function_desc *funcs)
                                          ^
>> drivers/pinctrl/pinctrl-keembay.c:1806:20: error: arithmetic on a pointe=
r to an incomplete type 'struct function_desc'
                           func =3D function + j;
                                  ~~~~~~~~ ^
   drivers/pinctrl/pinctrl-keembay.c:1780:12: note: forward declaration of =
'struct function_desc'
                                   struct function_desc *funcs)
                                          ^
   drivers/pinctrl/pinctrl-keembay.c:1807:18: error: incomplete definition =
of type 'struct function_desc'
                           grp_num =3D func->num_group_names;
                                     ~~~~^
   drivers/pinctrl/pinctrl-keembay.c:1780:12: note: forward declaration of =
'struct function_desc'
                                   struct function_desc *funcs)
                                          ^
   drivers/pinctrl/pinctrl-keembay.c:1808:27: error: incomplete definition =
of type 'struct function_desc'
                           grp_size =3D sizeof(*func->group_names);
                                              ~~~~^
   drivers/pinctrl/pinctrl-keembay.c:1780:12: note: forward declaration of =
'struct function_desc'
                                   struct function_desc *funcs)
                                          ^
   drivers/pinctrl/pinctrl-keembay.c:1810:13: error: incomplete definition =
of type 'struct function_desc'
                           if (!func->group_names) {
                                ~~~~^
   drivers/pinctrl/pinctrl-keembay.c:1780:12: note: forward declaration of =
'struct function_desc'
                                   struct function_desc *funcs)
                                          ^
   drivers/pinctrl/pinctrl-keembay.c:1811:9: error: incomplete definition o=
f type 'struct function_desc'
                                   func->group_names =3D devm_kcalloc(kpc->=
dev,
                                   ~~~~^
   drivers/pinctrl/pinctrl-keembay.c:1780:12: note: forward declaration of =
'struct function_desc'
                                   struct function_desc *funcs)
                                          ^
   drivers/pinctrl/pinctrl-keembay.c:1815:14: error: incomplete definition =
of type 'struct function_desc'
                                   if (!func->group_names) {
                                        ~~~~^
   drivers/pinctrl/pinctrl-keembay.c:1780:12: note: forward declaration of =
'struct function_desc'
                                   struct function_desc *funcs)
                                          ^
   drivers/pinctrl/pinctrl-keembay.c:1821:14: error: incomplete definition =
of type 'struct function_desc'
                           grp =3D func->group_names;
                                 ~~~~^
   drivers/pinctrl/pinctrl-keembay.c:1780:12: note: forward declaration of =
'struct function_desc'
                                   struct function_desc *funcs)
                                          ^
>> drivers/pinctrl/pinctrl-keembay.c:1832:3: error: implicit declaration of=
 function 'pinmux_generic_add_function' [-Werror,-Wimplicit-function-declar=
ation]
                   pinmux_generic_add_function(kpc->pctrl,
                   ^
   drivers/pinctrl/pinctrl-keembay.c:1832:3: note: did you mean 'pinmux_gen=
eric_free_functions'?
   drivers/pinctrl/pinmux.h:164:20: note: 'pinmux_generic_free_functions' d=
eclared here
   static inline void pinmux_generic_free_functions(struct pinctrl_dev *pct=
ldev)
                      ^
   drivers/pinctrl/pinctrl-keembay.c:1833:18: error: subscript of pointer t=
o incomplete type 'struct function_desc'
                                               function[i].name,
                                               ~~~~~~~~^
   drivers/pinctrl/pinctrl-keembay.c:1780:12: note: forward declaration of =
'struct function_desc'
                                   struct function_desc *funcs)
                                          ^
   drivers/pinctrl/pinctrl-keembay.c:1834:18: error: subscript of pointer t=
o incomplete type 'struct function_desc'
                                               function[i].group_names,
                                               ~~~~~~~~^
   drivers/pinctrl/pinctrl-keembay.c:1780:12: note: forward declaration of =
'struct function_desc'
                                   struct function_desc *funcs)
                                          ^
   fatal error: too many errors emitted, stopping now [-ferror-limit=3D]
   2 warnings and 20 errors generated.

# https://github.com/intel/linux-intel-lts/commit/e2b2db60ecbb327f636e1c455=
913b8e85b84d578
git remote add intel-linux-intel-lts https://github.com/intel/linux-intel-l=
ts.git
git fetch --no-tags intel-linux-intel-lts 5.4/yocto
git checkout e2b2db60ecbb327f636e1c455913b8e85b84d578
vim +/pinmux_generic_get_function +953 drivers/pinctrl/pinctrl-keembay.c

   936=09
   937	static int keembay_set_mux(struct pinctrl_dev *pctldev,
   938				   unsigned int func_select,
   939				   unsigned int group_select)
   940	{
   941		struct keembay_pinctrl *kpc =3D pinctrl_dev_get_drvdata(pctldev);
   942		struct function_desc *function;
   943		struct group_desc *group;
   944		unsigned long flags;
   945		u8 pin_mode;
   946		int pin;
   947		u32 reg;
   948=09
   949		group =3D pinctrl_generic_get_group(pctldev, group_select);
   950		if (!group)
   951			return -EINVAL;
   952=09
 > 953		function =3D pinmux_generic_get_function(pctldev, func_select);
   954		if (!function)
   955			return -EINVAL;
   956=09
   957		/* Change modes for pins in the selected group */
   958		pin =3D *group->pins;
 > 959		pin_mode =3D *(u8 *)(function->data);
   960=09
   961		raw_spin_lock_irqsave(&kpc->lock, flags);
   962		reg =3D read_reg(kpc->base1 + GPIO_MODE, pin);
   963		reg &=3D ~GPIO_MODE_SELECT_MASK;
   964		reg |=3D FIELD_PREP(GPIO_MODE_SELECT_MASK, pin_mode);
   965		write_reg(reg, kpc->base1 + GPIO_MODE, pin);
   966		raw_spin_unlock_irqrestore(&kpc->lock, flags);
   967=09
   968		return 0;
   969	}
   970=09

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/202008282142.x6qnsoR0%25lkp%40intel.com.

--7AUc2qLy4jB3hD7Z
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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
AA==

--7AUc2qLy4jB3hD7Z--
