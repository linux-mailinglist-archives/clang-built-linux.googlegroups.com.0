Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBL6RWOAQMGQERS2ER7A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf3d.google.com (mail-qv1-xf3d.google.com [IPv6:2607:f8b0:4864:20::f3d])
	by mail.lfdr.de (Postfix) with ESMTPS id 5291531D72C
	for <lists+clang-built-linux@lfdr.de>; Wed, 17 Feb 2021 10:58:08 +0100 (CET)
Received: by mail-qv1-xf3d.google.com with SMTP id n8sf6616388qvo.18
        for <lists+clang-built-linux@lfdr.de>; Wed, 17 Feb 2021 01:58:08 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1613555887; cv=pass;
        d=google.com; s=arc-20160816;
        b=oE348HAapHxUCki64Ns/LUHwMzwuCXrCrdRa/fL2LLXJgQ2E4NEGmY2nNHyqoW2krn
         RoyiGDNEjKY0RHUVLtOPGULG19gpB5b49LjEOjZMw/t0ZuTvTo1y2og+t6yb+hjVmd7h
         CwcpT8zFr7e2jNLR0GnW5xJNDgPr2IpX6foE1cDetVCE0LAWLL//hNgu2dGRJJe+KVrT
         oi9g/IE4NVqCJfcSh9Ee6NPldDSnofFQRFGGyhaaH/R6s6q8tmghIsNPrEHAnWxkd1m7
         s4gbZwW+zwqXF8JQCR8Iz5PzEq7wRotPYQTudtUDu5psY+Sl7wLanqE2rgr7F2wcyoJn
         qlmQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr:sender:dkim-signature;
        bh=SrskbBw67qumws2yQbt7zMYU/U8TxZjJLp88Uy3wZsc=;
        b=bP+LYRoMr61Jg6aUn5oUGwDZpJNy+Dmh9/az0ifsRDcmSzmCHXV3SWZqp/9W0rDq/a
         T9C07LuqY1hpuJFduXLO2jWqSB+qRTM7S8/qtlMTn2Jh9uOjK3xDsx3XahFPVeFR7Fbq
         d3H5/1xT2+vbi3jCTYTqIVWk5jNPYhKHHGHa6n6df6ThthxEbn+lco8eSmdnE81srvwD
         ThJAoscq/yxpYso3bFzZMfQxW1eF/Rqkxyc+3jzbHXLKTRjCFiGN/1TK/zSadlw2jBpt
         zGLXl0/qGP05Ybg4EYezs9Z/in4rk+H2wVdZWbFel1kTtSby0PPyo/YmalE2Q/xnLlS3
         1zmA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.88 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=SrskbBw67qumws2yQbt7zMYU/U8TxZjJLp88Uy3wZsc=;
        b=stvM+48ZS3ttOTuagMYn3h+hjO3h7um0KtK5vRJuyPW+t/EqvjiKL0CqY8nrEGCSqz
         x7jud2rdgGnqYIa9mxlMi9S5kExVmY/0kjICaKat0Ep8NhC6cUZwS0rXJsA5xLIa9EUl
         qxhC2hNvzAKFVYOVvq6XuragkTNLyl6aRDRwzqtbbaglB6O18GCpNMku7BQrRaTXXv03
         oW1jBx22cXOqsvYXTbzsGALsrIPgD+lpJtuOn3+G29UtT4w1qrzu7d1HunhM1jJ8P93a
         bOtmxdfTNBQSCSvdj/YLhF8cz1g1Q7Zgvaz28JDL32UoeiSTAkk+EnilQ4ovvdkT8tgc
         fofQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:references:mime-version:content-disposition
         :in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=SrskbBw67qumws2yQbt7zMYU/U8TxZjJLp88Uy3wZsc=;
        b=G+lOxsXy7bUiufuWxUZ9M/pm2nv/m0K/PhAVQpJHfiNoQ2y1y9YqorpeHc0BWK74Yh
         OJnGFfM/73ULgkPOnje3ZQpSCSWyP/U+dfWgAXrakNrvVfHTZ/n8dK37nGsbciPGJeWY
         8m8DX3jsY3OULAjvPdWcpFg4k34irC4duJiQ8xne1GZQ/c5mu/Wl4NgDw7pZVYjNn6qi
         D7tObroPv2LkGTZaXIuJ7vb2PHUMulqhcLtjfWyR9upVWqDVWt2c3akU9ohQJQcatSu3
         O4PcotjZ/yVmdC3/qgHMTSQktW1fg0iKoWWKk3f55AoeGJimTaFxDimHy9fXfIT/9HNU
         vhvQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5333MPhZF4oQ/ERvpKQzl/zCooPDebZulwHZZoKwP73r6yBZoKK5
	MOaWeVqgmqpae0hKwZy+rqA=
X-Google-Smtp-Source: ABdhPJxKffkKF9/eLVT6A7J8YEE17VN4C0li+R6kg8+GuQRc+gtELfGbflcaaQhq1Fxlpq0YDKE8hw==
X-Received: by 2002:a37:a7c9:: with SMTP id q192mr7180582qke.299.1613555887168;
        Wed, 17 Feb 2021 01:58:07 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a37:38b:: with SMTP id 133ls722350qkd.3.gmail; Wed, 17 Feb
 2021 01:58:06 -0800 (PST)
X-Received: by 2002:a05:620a:22b4:: with SMTP id p20mr23869249qkh.27.1613555886594;
        Wed, 17 Feb 2021 01:58:06 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1613555886; cv=none;
        d=google.com; s=arc-20160816;
        b=w3r9R/8+fFs77VF4RtmuBrh/sjKQVCuKRLDDd/zrces9o5/t2+xoN/CPjQKHp2agui
         X5HPS1WhkjiGOW87tnB3MAlgidMgJz2LVepPCcJcEiJ6Cc/03S+h4M9GU7awg3pycmxg
         ivSm2BvQyV4rhjaYMuImGVuCSSYsM0Cey0qpgzPK+g4UfhhBdovC9lxZ/aj+NogYEbmP
         lhazKVJK2y9Jg46TTyBMjW22CfCH642EhZDVVbMAuIYuUncxh3IP/QcOG+X3t3uWVa2T
         eoDCwKGbBOOkBczehrjWxMgPO3Af8EgxGvIq4xU03ARR67pa5ZRsopyiw4KqMjjMJ37r
         MJSg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:ironport-sdr:ironport-sdr;
        bh=EGhFJv8EzBViUiv2YRgfqmvx9Lu6m44WpFGNV7ZHJyc=;
        b=QDHVQAMC8o679X0Bk/PLT+POWt5kOlKoJmNEcuwL/Xxpit7hM2Uua1NaaA2NtrwCTq
         qI1gEcpSdPAAn6S2HJWe9piAT5LBUFmPKJP/VLoILfJsESEbx0C9RtOwtPu+qwQxpCtZ
         KLl1ZzTRxNz1z9ZTQld1owe/nImDS5T/+w4cB+uUVSyk7hmVM/o4s+bNMuYXSAY9pWXP
         6pMuy68b4uBMmABXTDjUciJNAUtJ9FY6h7ZtyUVMDuAVcidAl0sJ5eTNYAYlxocweGFQ
         amp+25T3J5OLExAQxyuJEZJdDuY/0Nr/WLO7afhFJJArQtuVxpkeXWjDbhB0x3/EIH2n
         1vTA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.88 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga01.intel.com (mga01.intel.com. [192.55.52.88])
        by gmr-mx.google.com with ESMTPS id m8si58563qkh.4.2021.02.17.01.58.06
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 17 Feb 2021 01:58:06 -0800 (PST)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 192.55.52.88 as permitted sender) client-ip=192.55.52.88;
IronPort-SDR: yuNJBqCCQfUYvDJmL9C004qEPJ0mYkNEa4S/laQmfpJV31H4KmT4la9ZzzbtWvx1+GI2OJHntT
 hSvwh+jauEzg==
X-IronPort-AV: E=McAfee;i="6000,8403,9897"; a="202368710"
X-IronPort-AV: E=Sophos;i="5.81,184,1610438400"; 
   d="gz'50?scan'50,208,50";a="202368710"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
  by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 17 Feb 2021 01:58:03 -0800
IronPort-SDR: BY67s0ux2xaBdC7BWuPLZJ1JuKLy2CGhUZOO9bFgvZ1c3KV/BR43rhZQP6gkp5s+M5EODZtapy
 G5r9l+nZanBg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,184,1610438400"; 
   d="gz'50?scan'50,208,50";a="419032533"
Received: from lkp-server02.sh.intel.com (HELO cd560a204411) ([10.239.97.151])
  by fmsmga004.fm.intel.com with ESMTP; 17 Feb 2021 01:58:01 -0800
Received: from kbuild by cd560a204411 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1lCJaq-0008xO-Ea; Wed, 17 Feb 2021 09:58:00 +0000
Date: Wed, 17 Feb 2021 17:57:46 +0800
From: kernel test robot <lkp@intel.com>
To: DENG Qingfang <dqfext@gmail.com>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com
Subject: Re: [RFC net-next 2/2] net: dsa: add Realtek RTL8366S switch driver
Message-ID: <202102171707.56Ey6miW-lkp@intel.com>
References: <20210217062139.7893-3-dqfext@gmail.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="3V7upXqbjpZ4EhLz"
Content-Disposition: inline
In-Reply-To: <20210217062139.7893-3-dqfext@gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lkp@intel.com designates 192.55.52.88 as permitted
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


--3V7upXqbjpZ4EhLz
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi DENG,

[FYI, it's a private test report for your RFC patch.]
[auto build test ERROR on net-next/master]

url:    https://github.com/0day-ci/linux/commits/DENG-Qingfang/DSA-driver-f=
or-Realtek-RTL8366S-SR/20210217-143046
base:   https://git.kernel.org/pub/scm/linux/kernel/git/davem/net-next.git =
06b334f08b4f0e53be64160392be4c37db28a413
config: riscv-randconfig-r014-20210216 (attached as .config)
compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project c9439c=
a36342fb6013187d0a69aef92736951476)
reproduce (this is a W=3D1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/=
make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install riscv cross compiling tool for clang build
        # apt-get install binutils-riscv64-linux-gnu
        # https://github.com/0day-ci/linux/commit/3cd6e7f27c49d9e06810a3ee0=
b03fbb6f20a40b9
        git remote add linux-review https://github.com/0day-ci/linux
        git fetch --no-tags linux-review DENG-Qingfang/DSA-driver-for-Realt=
ek-RTL8366S-SR/20210217-143046
        git checkout 3cd6e7f27c49d9e06810a3ee0b03fbb6f20a40b9
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=3D$HOME/0day COMPILER=3Dclang make.cross ARCH=
=3Driscv=20

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All errors (new ones prefixed by >>):

>> drivers/net/dsa/rtl8366s.c:928:56: error: too few arguments to function =
call, expected 4, have 3
           return rtl8366_vlan_filtering(ds, port, vlan_filtering);
                  ~~~~~~~~~~~~~~~~~~~~~~                         ^
   drivers/net/dsa/realtek-smi-core.h:133:5: note: 'rtl8366_vlan_filtering'=
 declared here
   int rtl8366_vlan_filtering(struct dsa_switch *ds, int port, bool vlan_fi=
ltering,
       ^
>> drivers/net/dsa/rtl8366s.c:1049:2: error: member reference type 'struct =
list_head' is not a pointer; did you mean to use '.'?
           list_for_each_entry(dp, dp->dst->ports, list) {
           ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/list.h:628:13: note: expanded from macro 'list_for_each_en=
try'
           for (pos =3D list_first_entry(head, typeof(*pos), member);      =
  \
                      ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/list.h:522:18: note: expanded from macro 'list_first_entry=
'
           list_entry((ptr)->next, type, member)
           ~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~
   include/linux/list.h:511:15: note: expanded from macro 'list_entry'
           container_of(ptr, type, member)
           ~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~
   include/linux/kernel.h:693:26: note: expanded from macro 'container_of'
           void *__mptr =3D (void *)(ptr);                                 =
  \
                                   ^~~
>> drivers/net/dsa/rtl8366s.c:1049:2: error: member reference type 'struct =
list_head' is not a pointer; did you mean to use '.'?
           list_for_each_entry(dp, dp->dst->ports, list) {
           ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/list.h:628:13: note: expanded from macro 'list_for_each_en=
try'
           for (pos =3D list_first_entry(head, typeof(*pos), member);      =
  \
                      ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/list.h:522:18: note: expanded from macro 'list_first_entry=
'
           list_entry((ptr)->next, type, member)
           ~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~
   include/linux/list.h:511:15: note: expanded from macro 'list_entry'
           container_of(ptr, type, member)
           ~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~
   note: (skipping 3 expansions in backtrace; use -fmacro-backtrace-limit=
=3D0 to see all)
   include/linux/compiler_types.h:320:22: note: expanded from macro 'compil=
etime_assert'
           _compiletime_assert(condition, msg, __compiletime_assert_, __COU=
NTER__)
           ~~~~~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~=
~~~~~~~
   include/linux/compiler_types.h:308:23: note: expanded from macro '_compi=
letime_assert'
           __compiletime_assert(condition, msg, prefix, suffix)
           ~~~~~~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/compiler_types.h:300:9: note: expanded from macro '__compi=
letime_assert'
                   if (!(condition))                                       =
\
                         ^~~~~~~~~
>> drivers/net/dsa/rtl8366s.c:1049:2: error: member reference type 'struct =
list_head' is not a pointer; did you mean to use '.'?
           list_for_each_entry(dp, dp->dst->ports, list) {
           ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/list.h:628:13: note: expanded from macro 'list_for_each_en=
try'
           for (pos =3D list_first_entry(head, typeof(*pos), member);      =
  \
                      ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/list.h:522:18: note: expanded from macro 'list_first_entry=
'
           list_entry((ptr)->next, type, member)
           ~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~
   include/linux/list.h:511:15: note: expanded from macro 'list_entry'
           container_of(ptr, type, member)
           ~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~
   note: (skipping 3 expansions in backtrace; use -fmacro-backtrace-limit=
=3D0 to see all)
   include/linux/compiler_types.h:320:22: note: expanded from macro 'compil=
etime_assert'
           _compiletime_assert(condition, msg, __compiletime_assert_, __COU=
NTER__)
           ~~~~~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~=
~~~~~~~
   include/linux/compiler_types.h:308:23: note: expanded from macro '_compi=
letime_assert'
           __compiletime_assert(condition, msg, prefix, suffix)
           ~~~~~~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/compiler_types.h:300:9: note: expanded from macro '__compi=
letime_assert'
                   if (!(condition))                                       =
\
                         ^~~~~~~~~
>> drivers/net/dsa/rtl8366s.c:1049:2: error: invalid operands to binary exp=
ression ('const struct list_head *' and 'struct list_head')
           list_for_each_entry(dp, dp->dst->ports, list) {
           ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/list.h:629:8: note: expanded from macro 'list_for_each_ent=
ry'
                !list_entry_is_head(pos, head, member);                    =
\
                 ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/list.h:619:16: note: expanded from macro 'list_entry_is_he=
ad'
           (&pos->member =3D=3D (head))
            ~~~~~~~~~~~~ ^  ~~~~~~
>> drivers/net/dsa/rtl8366s.c:1130:25: error: incompatible function pointer=
 types initializing 'int (*)(struct dsa_switch *, int, bool, struct netlink=
_ext_ack *)' (aka 'int (*)(struct dsa_switch *, int, _Bool, struct netlink_=
ext_ack *)') with an expression of type 'int (struct dsa_switch *, int, boo=
l)' (aka 'int (struct dsa_switch *, int, _Bool)') [-Werror,-Wincompatible-f=
unction-pointer-types]
           .port_vlan_filtering =3D rtl8366s_port_vlan_filtering,
                                  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~
   drivers/net/dsa/rtl8366s.c:1158:41: error: static declaration of 'rtl836=
6s_variant' follows non-static declaration
   static const struct realtek_smi_variant rtl8366s_variant =3D {
                                           ^
   drivers/net/dsa/realtek-smi-core.h:146:41: note: previous declaration is=
 here
   extern const struct realtek_smi_variant rtl8366s_variant;
                                           ^
   7 errors generated.


vim +928 drivers/net/dsa/rtl8366s.c

   906=09
   907	static int rtl8366s_port_vlan_filtering(struct dsa_switch *ds, int p=
ort,
   908						bool vlan_filtering)
   909	{
   910		struct realtek_smi *smi =3D ds->priv;
   911		unsigned int val;
   912		int ret;
   913=09
   914		/* Enable/Disable VLAN ingress filtering */
   915		val =3D BIT(port);
   916		ret =3D regmap_update_bits(smi->map, RTL8366S_VLAN_MEMBERINGRESS_RE=
G,
   917					 val, vlan_filtering ? val : 0);
   918		if (ret)
   919			return ret;
   920=09
   921		/* Disable/Enable keep original tagged/untagged */
   922		val =3D FIELD_PREP(RTL8366S_EGRESS_KEEP_FORMAT_MASK, val);
   923		ret =3D regmap_update_bits(smi->map, RTL8366S_EGRESS_KEEP_FORMAT_RE=
G,
   924					 val, vlan_filtering ? 0 : val);
   925		if (ret)
   926			return ret;
   927=09
 > 928		return rtl8366_vlan_filtering(ds, port, vlan_filtering);
   929	}
   930=09
   931	static int rtl8366s_port_mirror_add(struct dsa_switch *ds, int port,
   932					    struct dsa_mall_mirror_tc_entry *mirror,
   933					    bool ingress)
   934	{
   935		struct realtek_smi *smi =3D ds->priv;
   936		unsigned int val, dir;
   937		int ret;
   938=09
   939		/* The source and the monitor port cannot be the same */
   940		if (port =3D=3D mirror->to_local_port)
   941			return -EOPNOTSUPP;
   942=09
   943		ret =3D regmap_read(smi->map, RTL8366S_PMCR, &val);
   944		if (ret)
   945			return ret;
   946=09
   947		dir =3D ingress ? RTL8366S_PMCR_MIRROR_RX : RTL8366S_PMCR_MIRROR_TX=
;
   948		/* RTL8366S only supports one port mirror set */
   949		if (val & dir)
   950		    return -EEXIST;
   951=09
   952		/* If the other direction is active, allow setting up both
   953		 * directions for the same source and monitor ports
   954		 */
   955		if (val & (RTL8366S_PMCR_MIRROR_RX | RTL8366S_PMCR_MIRROR_TX)) {
   956			int source, monitor;
   957=09
   958			source =3D FIELD_GET(RTL8366S_PMCR_SOURCE_MASK, val);
   959			monitor =3D FIELD_GET(RTL8366S_PMCR_MINITOR_MASK, val);
   960=09
   961			if (source !=3D port || monitor !=3D mirror->to_local_port)
   962				return -EEXIST;
   963		} else {
   964			val &=3D ~RTL8366S_PMCR_SOURCE_MASK;
   965			val |=3D FIELD_PREP(RTL8366S_PMCR_SOURCE_MASK, port);
   966			val &=3D ~RTL8366S_PMCR_MINITOR_MASK;
   967			val |=3D FIELD_PREP(RTL8366S_PMCR_MINITOR_MASK,
   968			       mirror->to_local_port);
   969		}
   970=09
   971		val |=3D dir;
   972=09
   973		return regmap_write(smi->map, RTL8366S_PMCR, val);
   974	}
   975=09
   976	static void rtl8366s_port_mirror_del(struct dsa_switch *ds, int port=
,
   977					     struct dsa_mall_mirror_tc_entry *mirror)
   978	{
   979		struct realtek_smi *smi =3D ds->priv;
   980		unsigned int dir;
   981=09
   982		dir =3D mirror->ingress ? RTL8366S_PMCR_MIRROR_RX : RTL8366S_PMCR_M=
IRROR_TX;
   983		regmap_update_bits(smi->map, RTL8366S_PMCR, dir, 0);
   984	}
   985=09
   986	static int rtl8366s_port_change_mtu(struct dsa_switch *ds, int port,=
 int new_mtu)
   987	{
   988		struct realtek_smi *smi =3D ds->priv;
   989		u32 len;
   990=09
   991		/* When a new MTU is set, DSA always set the CPU port's MTU to the
   992		 * largest MTU of the slave ports. Because the switch only has a gl=
obal
   993		 * max length register, only allowing CPU port here is enough.
   994		 */
   995		if (port !=3D RTL8366S_PORT_NUM_CPU)
   996			return 0;
   997=09
   998		/* Includes Ethernet header and FCS length.
   999		 *
  1000		 * Note that the CPU tag does not count towards its length, the
  1001		 * same reason why the frame must be padded _before_ inserting
  1002		 * the CPU tag on xmit.
  1003		 */
  1004		new_mtu +=3D ETH_HLEN + ETH_FCS_LEN;
  1005		if (new_mtu <=3D 1522)
  1006			len =3D RTL8366S_SGCR_MAX_LENGTH_1522;
  1007		else if (new_mtu <=3D 1536)
  1008			len =3D RTL8366S_SGCR_MAX_LENGTH_1536;
  1009		else if (new_mtu <=3D 1552)
  1010			len =3D RTL8366S_SGCR_MAX_LENGTH_1552;
  1011		else
  1012			len =3D RTL8366S_SGCR_MAX_LENGTH_16000;
  1013=09
  1014		return regmap_update_bits(smi->map, RTL8366S_SGCR,
  1015					  RTL8366S_SGCR_MAX_LENGTH_MASK,
  1016					  len);
  1017	}
  1018=09
  1019	static int rtl8366s_port_max_mtu(struct dsa_switch *ds, int port)
  1020	{
  1021		return 16000 - ETH_HLEN - ETH_FCS_LEN;
  1022	}
  1023=09
  1024	static int rtl8366s_port_lag_change(struct dsa_switch *ds, int port)
  1025	{
  1026		const struct dsa_port *dp =3D dsa_to_port(ds, port);
  1027		struct realtek_smi *smi =3D ds->priv;
  1028		unsigned int val;
  1029=09
  1030		val =3D FIELD_PREP(RTL8366S_LAGCR_PORTMAP_MASK, BIT(port));
  1031=09
  1032		return regmap_update_bits(smi->map, RTL8366S_LAGCR, val,
  1033					  dp->lag_tx_enabled ? val : 0);
  1034	}
  1035=09
  1036	static int rtl8366s_port_lag_join(struct dsa_switch *ds, int port,
  1037					  struct net_device *lag,
  1038					  struct netdev_lag_upper_info *info)
  1039	{
  1040		struct realtek_smi *smi =3D ds->priv;
  1041		const struct dsa_port *dp;
  1042		unsigned int val;
  1043		int count =3D 0;
  1044=09
  1045		/* Only supports hash type */
  1046		if (info->tx_type !=3D NETDEV_LAG_TX_TYPE_HASH)
  1047			return -EOPNOTSUPP;
  1048=09
> 1049		list_for_each_entry(dp, dp->dst->ports, list) {
  1050			if (dp->lag_dev =3D=3D lag)
  1051				count++;
  1052			/* Only supports 1 LAG set */
  1053			else if (dp->lag_dev)
  1054				return -EBUSY;
  1055		}
  1056=09
  1057		/* Only supports maximum LAG member of 4 */
  1058		if (count >=3D 4)
  1059			return -ENOSPC;
  1060=09
  1061		val =3D FIELD_PREP(RTL8366S_LAGCR_PORTMAP_MASK, BIT(port));
  1062=09
  1063		return regmap_update_bits(smi->map, RTL8366S_LAGCR, val, val);
  1064	}
  1065=09

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/202102171707.56Ey6miW-lkp%40intel.com.

--3V7upXqbjpZ4EhLz
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

H4sICJXlLGAAAy5jb25maWcAlDxLc9s40vf5Farkst9hJrLlKMlu+QCSoIQRXyZAWfaFpThK
4m9sKyXLmcm/326ADwBsKtlUzSTsbjQaQL8J6vVvryfs5bh/3B7v77YPDz8mX3ZPu8P2uPs0
+Xz/sPvPJMonWa4mPBLqDyBO7p9e/nlzuH+++z55+8fZ2R/T3w937yar3eFp9zAJ90+f77+8
wPj7/dNvr38L8ywWizoM6zUvpcizWvGNunx197B9+jL5vjs8A93k7PyP6R/Tyb++3B///eYN
/P/x/nDYH948PHx/rL8d9v+/uztO7j5czD7cbWfz2cX554/z6dns7P27T9Pt/MN29/nD+bvZ
/MPbs4t38/971c666Ke9nLbAJBrCgE7IOkxYtrj8YRECMEmiHqQpuuFn51P405FbjF0McF8y
WTOZ1otc5RY7F1HnlSoqReJFloiMW6g8k6qsQpWXsoeK8qq+zstVD1HLkjNYSBbn8L9aMYlI
OJjXk4U+54fJ8+748q0/qqDMVzyr4aRkWlisM6Fqnq1rVsJaRSrU5ey8lyYtRMLhbKUlfpKH
LGm35FV3KkElYKskS5QFjHjMqkTpaQjwMpcqYym/fPWvp/3Trj9ieSPXogj7SYtcik2dXlW8
srbrmqlwWXvAsMylrFOe5uVNzZRi4RKQrycNupI8EcHk/nnytD/iLrXjWAWm0LNZsjWHXQH+
GgESwbKTHu9B9d7DQU2eXz4+/3g+7h77vV/wjJci1Ocol/l1z8TGiOxPHircVBIdLkXhqkSU
p0xkLkyKlCKql4KXuJgbFxszqXguejQsO4sSbmtfK0QqBY4ZRQzkMaxaCZyhsmCl5A2sOxp7
uREPqkUs7XN6Pdk9fZrsP3vbTG1WCtol2rVYZ4bHGYICr2RelSE3ejlYkBIpr9eDE2/RmgFf
80zJ9uDV/SP4POrslQhXYHUczt1Wrtu6AF55JEJ7A7IcMQKEdtdtownNXYrFsi651ILro+u2
aiBYZ1Al52mhgKf2P90cLXydJ1WmWHlDStJQEbK048MchrfbExbVG7V9/mtyBHEmWxDt+bg9
Pk+2d3f7l6fj/dMXb8NgQM1CzUNo593NvBal8tB4MKSUqAn6LHtaQuJARiB1HnLwGkBonZKP
qdczWxT0ulIxJektkoJU3l/Yi86TwTKFzBPWeAW9l2VYTSSlZ9lNDThbQHis+QYUjTooaYjt
4R4Il6d5NIpPoAagKuIUXJUs5J14zU64K7GObWX+QQgtVkuIe6jjj75VynDJI2Ob7VbJu6+7
Ty8Pu8Pk8257fDnsnjW4mZ7AehFaZOrs/L0VWRZlXhXS3mIIM+GCPH9DbMQiVtKgCxE5/Bpw
GaXsFNcYrOyWl6dIltWCqyQ4RRLxtQj5uHCgf65BNPCgiAcw7a8tB5+jFTcoppjj5SDiQwAA
s6KFW/JwVeSw+ejTIBOinaE5b1apXM9CafiNjCUIBi4pZIpHtgw+rl6fExxKnjArYgbJCvdM
R43Syh/1M0uBoQkrVqZTRvXiVgfu3iqjOgDQObkqQCa3I2cPuA3l/vWY3Jsiub2gSW+lskQP
8hx9Nf7bUcOwzgtwneKW13FeYrCCv1KW0eriUUv4h6UKEEdVAo4o5IXSpQI6A0sEW5uMu+qf
dSCHlM0K4hL0OgWvUg8CtDnUHtwtJzaZAO2ndWZpIudIrANVXFGBw1b4gEE+E1e2OHEFRZH3
CAbvpZgGHKbFJlw6Z8CLPEkotRaLjCWxdYha+NjRb52exJTjkUvwWTYpEzkdPfO6KumQyaK1
gOU2O+07xICVpXCdU4NcIfVNaiWXLaR2DrKD6l1FK1Ri7aoMdcyoJ7qwcBfeb0oa8Cgi3bE+
CtTyukvsegUIz6aOMeko0lTGxe7weX943D7d7Sb8++4JIjmD+BJiLIfMy6Q/DZ+ePZkZ/CJH
KxdKDTuTbI3pL1ZxTEEBuKL9aMLoICGTiiqTZJIHlsnBaDjzcsHbos7CLas4hgKgYICFo4K6
Eby5Y66Kpzo8YIktYhEyt/6B5CsWibDLd+08dHRw8ly36m2J5xeBnd+XQoZrrxpIUwbhNgOf
DNVcnUL9cvb+FAHbXJ5fOAxrGVg2naZW8nMLyXUNoXx23sPWTHO6nH3oVtlA3s57COxYHseS
q8vpP5/1n920/eOIF4NtgM1BDc+ChHuLM2XWOJonUHG2pXKaRzzxKK4ZaJfOsFjSZhTOAday
Koq8hJ1psLFl3JAchyuT+jVk3jlihg4LWMghvk3rHCdrATuvUGtlICtW8A8iKCG8g246gbwj
kFU6hC6vORRUliwxBAjOyuQGnmvjPduDWijc1zoBOwQ/OLN6JCtILqxlmYR0H4KGPuzumjZa
b2s5JLBgAOuRXAfQWPiQbsNlqrkWD9sj+pDJ8ce3nT2PPtRyPTsXlFc3yPmFcFIBrRew7CjJ
r6ng3+FZZm0xQCvYGGlaGtbhgAUVyxuJSgnJ9SJwsrKUyuNUBVbU1yB9lqOtT0hWh8SouHCK
DXdLbA/u1AZtOLitz6ZT8iwAdf52SoWQ23o2ndoCGi407eWsN2STyi5LLH2HCwT3Uq+nZ6dC
Rl/A4BqCPZDtv6E6PFu92jTSvUbITfuAGNM1qsPBaNT+byiUIChtv+weISZZ/Pv4lpLMRofq
sfH94fHv7WE3iQ73303A7NQxhZ1JBUYBlYd50td8PSq/5mXfeLL0HAmKfiyp7i2NzeSxN/oy
vWYlR4OHEGB5rgrSG4gE+aYur1XajwjC9OLdZlNnaygGrGSlAUuQxQIrzusg26g6vraK2Txf
gNW0c1u+ySBCqIZ0yq4ad973zpqRMDVUYnEMK2qJSTVu6LF+BfPMLd6nyNcFnVmJdFNHkjJe
xEi3LdGAapeX6aPtvhy2k8+tTnzSOmEX7SMELXqgTU5LfHu4+3p/BEcJtvL7p903GOSqciPg
n1Va1JDYcCe7xFYPRIcVx6jHkxi74mOZpE48IOeBVB2L1BBbSFRrWUfBZZ6vPCTkDFiVKbGo
8oqIbOAodZuweRHgRW3sXUDq0AT2EWQkSh38bdU2gskUvXfT4ffF1klsyRckHBNwE/XrqEoH
jHF6Z29PYImsvyeDqIJZ7QkUmFCidNXYn5/BjB2ZFhvdBQ/dLPWX4PBY5naeqnniEXIwcTzm
lRigR3qZHhXRxaSyNMy/wAVHkHY7nkPzgPNsM0IeYqLtB2qJZ1eDVut9J1RGo6CKzlOnuO83
3smTTyXZfoKtpW/fCKm8iPLrzIyAnC13XpwlmE8HsJfgHL2+mSlyZudod7hbY/lNrnsQkM2u
eJmhml1vPGEJimFt05uSAntUJLcTKMwP7drN37Auq9ZtNV0P6AKqTSQXYb7+/eP2efdp8pdJ
Ab4d9p/vH5xOOhI1sxOCa6wpsHjdFtJtNXWCvXPy+Cq2SKqFyMhq7CcOtyujwA1hF4Rb26Ar
f5miYFNXVbEBUutulBposdOJMNRACYVGkjOq7G9oqgzxg+TVDO2QNufWO47zlGXYvht3ehv9
Ighhm6WFdBlgETG3NUSRgB84+wWa83OqUejRvJ2PCAvI2fuLX5jm7RnVYLVoQCeXl6+ev25h
slceHq27NCHUZ9+idJt1fIaObHM7OAq0rGso/aVEB9x1pyFP0TbodJgycJPgYm/SIE/odgsY
fdrSrbCJNSoUvhbhqJr5qnI6xAG6B8qByeysl77KzO0B8Oki01oarsbcCFPgt8MaskrCE6Sp
yK+D1rXwf3Z3L8ftx4edvigy0b2oo5PoByKLU4UhgeqKGqQMS1FQDrPBY9/CWXMPHmcKZxRC
smx5/ZJjokHWHWML0StJd4/7w49JShU0Xb5wojvStl1SllXMTRO7novBUaWpGexyqzOYoTbj
rMymZ7c2hcigldMIaL8o7MYmEA0LpaMN5Bnysutc6XjZ3jboKzjsO5UcdYZu/KZiUXqTmDS1
bsNTywlK/JpFUVkrvwuXphWsVUEWYnf1V9LajzYb0OtNQbuR0+XF9EPXIcs4mFeBRQ6kTyun
nx0mnGUhg5qa7FZYyQ08+O+tOpDdx0Ig5FRMXr7rOntFrgvSbtbboKICzO0szpOoL/BudUjL
HS1uYbrCIHi0Sb9uQdUCdN5oSF9QRW2XtU00qSQ3Bc0SZWnnsLparNdtZmt3qnFfBy+3W4Gq
wrsT1Fl3objJMZmTUIybW3+gFjt4qGEVpVM1yVVQQzLNs7Ys0Yac7Y5/7w9/QWYytGDQ8BVX
roIjBGofRm0ReNRNf1T4hF0Gx+Nu9Fj79FRCbdEmLq2B+IT9XDfL0FCWLJxXdxqIddQI01o3
O2N8g/bojZJVUBd5IsKbsbHGfPlgPl3aSqhux5ZSs6UnN8TIfquMYEVTk/Uvejlmv5Q0MnUs
AB4HZ9JLGBX6dTIndVFk7gmLwrwzDBlZnQOaRWt8jxnVJRQXbokosG4MMITzofIPpiiw/kZf
TMpVGP4NKVNLbyKDhRQxyCWd7gFRkVE5jTaPQgz2WhRgMuC+0mozOgq7qU5BgKsxssDxpU74
uMkAlq+EnZcbLmsl+tNHUBUNOSM8zqsBoJfCvuOISFvLNMDRshbSWZKlQS0OrCMk21BGbrdr
oIFadwebghgSqM3fowuLFuzKg5sy4mo0vmTXA3fSTQLniD0F+v4VTgn/XHTKTLXNW5qwCuyC
vyu1G/zlq7uXj/d3r+xxafTWFCidkqzn1kHAU2M9eN8rdjW7xenbqSOKDTTmxgA6nTpiI11F
2Is5KMXI/s2H6jE/pR9zUkE8EqMjpEGD0Kko5g5bBIqEjUrY6JC7dY71aIiEBGkAqefOJROE
ZhFkwDpTVDcF95DkXGiAAwhN6jk1jztEFyxXfLDxHSTwJwwLkUrIas/9efhiXifXQzfV4pYp
C4caVyTdINr3Dfq5aUG7CqDFy9bYL0yZfekaLbNQBV4Xh1IxvnEweghkvbr5BLEjLZw+HVAM
O5IdkDRjU3HtDzvMcaCCOe4OY/fwe0aDrKlH4R6IbEWhYpYKSC2DUkQLfmIs1KqOl8ti9CCZ
zjqpnYxxQB9X7HGIAK4RX9MDfZXpQG3EH8ANN3caqKqq1LseaiGbexO2RSMYZBsZYG7IP9qg
QdQDWB78adyiBbuqcsXcoSXHG98UzCzy0ZUVO5wuTPdMnFkgfXFJdCLqQEwu5S2iKPPNjQ2r
I0jymy31tqfH0LeUUYzr6GckzULHdaBTvk2jC4/GJDa6pn+e3O0fP94/7T5NHvd4jfOZMocN
vuAAG/aGHreHLzu3p+GMUaxc8IEenKTN4v+FuvEtP1l2Sw1+KpWD9T9uj3dfTywbP43AullH
iscTRKZm0Kfc3lE+5XWsxFHalmiezQ2Z/ipLAw2Ewlre+YTBw6Bbd0KrjcaWBJ1lIxHaAcW7
gTdu3GfdYH+JtW6JFIR8Fh629qd8TOwiUKMI4Nowt8O1gx8TC1A/l6nhf4KHwGpzrEJBwgTS
OPwHPdNaenu/bl5rjJGjQ2/eFJ0339UUazk5HrZPz9/2hyO+jDju7/YPk4f99tPk4/Zh+3SH
DYDnl2+It83aMNS3AOqRysCigITdOYQOwZY61yRxBkHO6KauJIkMVTGI+nq9z+399N7CzcCy
9A4LYNclfRncYJPwBPI6oa7PGFycD6fK11Tbt5koSHwjbqBUP6PRhaWj2ACRfq0MsJSsAgw5
j3wO2dVQCkjRJL3Tcjm+2WACnTq+t8akJ8akZozIIr5xdXj77dvD/Z32o5Ovu4dvemyD/vcv
5HkxVm8l00nvhROuTVQfwk1kN3AqmfLgfQJiGA0CP8LHw74IThG0k7KSrsCarMPn4CaNMNhZ
CMIGq7MX4aoSIEUx7Nr035adOIfmoL7Pf+2o+iOZjxyJB++OZD52JHM3bWt2y4M2pzAfpHMD
4Ajjdk+dkn9ub90AYTIJHGM+0HHNT5OYtIO04oZFtkj4gHPJru3U5PT2k4Yyd/W43WdT7VAv
mzQCKXngL7fBAQK/qMXKl0Kp9voJjczsPN7CvJ+e1zNbWAvHoIQiv16zSMqCZOvmLQ5ifpqj
V+5YmCarHiKKlXITTgsn1Zgk64RRNZq7uJIXyc0Igyij3xu6Etf0YkpuLkPRQo+dFtbCtDDj
tUBQnLCCOgpDv92JoLZHqN0PAiZhKKLngeex3Zweh2Tnp3KtjmrmpDY92H891iJVXIagHcEI
ph3VWe2o1P2amqusy+3dX84tlpYxzdMbZSe4oatt+FxHwQKL8zAjv4jUFE131DS+dbMJu6HO
G94xutEbF6Mj8OvbMUl+JsGpmW0VMpN7beYyGrm9IAo6V2QqJSZIzpWlsfjUvT11oe6XsxpE
XtfQGK6sroa0Z1g4Pi4dOryBpYpFCrqQ5bnbj2uw6HcaX+19Z9wQpCOpSoMOY2pX9NUobb3S
etvcAh49AMSjBbr+sysaxcoPs9kZjQvKMG37a3aQ80hG3gY5XNC98iyi51nyBFJ4zlc0eiGv
RUGj8O9OQBpPI/goJlUjYqzkLY0oVXJRj3AD3PvZfC5pbB7yJFencKeO7iocmRTU7sNsOqOR
8k92djZ9SyNVyUTitSwt9KaU76ZT6vWfVnVP1h5WL9Z2Xm0hUgcR8dDpRJjn/lVqa8ZuGQiP
1O0vpliysnmta1YUCXfBoogir/MCgJpnIaM8yOb8rSUHK5wPTIplTndE5kl+XTDHiBoQ/UsU
Hk22HKmwOee4jW/JgkY756X+MFnHwauX3csOwtib5tN0Jw421HUYOL+Z0YKXiv6Kr8PHkirz
W3RRitzXKYTrVzhXJwaW7nfVLVjGp8WR8Smmil9575E1NIgpEcOAev/eYrkiBymGKz4xblFy
zxciNJLDV0IIh795SpCX5RCYXunNHvCQq6A5BX+By3zFqUVcuZs43Bm8s3ZijfGVISGmZCs+
lDCmNW8Zn5SiEFSK02GTajGciStJLbhJoYZvyR62z8/3n5vOimszYeLdXgAA3i4WobtsBKvQ
9Gy8VSJKe7gxK0YC+zOeFlbNzntgA9BfSlh3yxroUK/0rHJd0NC5vz9aBu8TvQFBOPZbCd3G
FANzaRmP/NxES6I7AGPXkvXtDE1xkgcLKd/cqZ+InatSUUh9nxxlEn83IsefqLLyPchfGd4j
XFsZYgdr/+m8PbTR5Bt+iyCy76Jb8CwkwSneThqZa1CuUUT4xtW75teR5ZDGrSEh8za7jezN
VSp79hY2dlmlwyeQRuPnF1aiIEol8p7r4whicLmofaPcFCZtRl/41ooQyC89f5nZ7z2XsvQ8
iF68eRlsgZMZKKnEV1/ee+KrUo3rdhZK6mPZ5rdN9J0Ax51bCHNRIHKlKDd1UMkbfOtmxbjg
yrmbgD9w8KegP8XTP36gSs4gZ8e7weXAHTZ3IifH3fNxkEMUK+V8Y6SzxzIvajge0d4DbUrs
ASMPYd+67AVcsrRk0civSoR0o8e1Bmyu8YjqkmDfxf4hCEVlbppopMDFTpCM8assmvvg8i+2
gJqv/TwZW3DNw4gyNZvE+dE9QMScqUpf1jNdDfPh7sPL7rjfH79OPu2+39+1nzdar3ixaZcp
O2LjXoWp8wwVjfPsVCHwvAxFoCoZeFvWgvVv6shKYjVIr6qjDMLU25MOldI/mWJRoJg/fISM
7AyogYbp+XS2GYALdjbdDFjEuLKBUJFK6NZMO/GMTuAbdFLxkJXj27GG/xxJ0nKdDAB1szqb
O1P/pexZltzGdf2VXt06ZzE1lvxezIKWKJuxXi3JtpyNqifJzHTd7kyqO6kz5+8vQFISH5Cd
u8jDAMQ3QQAEwMN8YqRgCIkPAHpi5I21nOoiq7PYNJhPLqpBC0uAJ1WlIQ71EOcqYgTLTIVw
GpiORgPWMRlW7dEKUE26o+lTbXGyEYx3GJUb0XURFQcQJe5XyVGY/FT9lmzALEGDRV6eqBHU
6H3pK0NbSmqKmDBFOfjlxRMgzHejkWBYqFSZvDxI0+qrC0ETTdNc3Rp6LAZw0sJPnthZBhP0
tt6Lhk0Ia4DPI+rQQwyu9FebuD7E9h2yPoWe3h6S5y8vmLvm9fXH1/7i81/wzb/1ajTdV6Ck
Ml/O51bDFahzNvWIECGp1mp82OFeMbfDT7aqL6isGUggtv9MJxLjCPJdFXuIndkqhlNARqWM
IJAUYPpSV+SBtWI76snQDhlwMu4PJtLCmmTeHBog8d38pDWSa4miP2pixQu8pAsqlttkZu4P
nSihJoF+qkBAyniinRnGfiga1Pvkl0hgkzOzWxqgec44DwiHg7dyqmJ1aR1JPYxSHX0imQmi
ZhNZWGwyDK7ziT3SMXGa3dAuLp2md2WTOZDdxR7lrBYegEy9irjHk6iOTiIrcUO9QGzdkDmf
EAUHoDuynSho/z45r5WYxoH6Tbt8q26fapX0pUgoV5OBZozK9r+vWTI9i5JiIqcdRcirEP+i
TP3jSqaXd6Qwo3Bs4OpD6bNNQDx8+vvr97e/XzA35SgCWiPIQBo5s4mUXrLlLSbOarv8QlmA
sIikgb8DO2MNwhu+r+gEhLLcCgSh21iZ1vkOCaeOU6wdv/WUxQHRs5dXsrN3ByMqqasQLL3F
kt2RkEDcYxMfnecg4GfOlsSgb9aI1C0N44xB95wcWdXB5nDKYwyr4FMttcj0prSGFxRuO1e0
BZbfT+G4+1XGQT9v+NHlS1WU1c3OHa+0KHJQ1XNvTcdf3p///HrBxCy4vKV7aT0461lc8eKy
yQvVYoB6bQVYmTKCEqF9IfaM9EhOX/JJttde82IiMSRywKylfChk6aBBsSqYt629QDCBTFPk
nIb6vR1RvPRGnF1huUWsnGRhBsmtbh7E1CrnUqnwFzNwzph1G0p30QRNyaOVMx0aSs1pj/J6
yZXO2+2p9GMSfxSVc/px2aNOLVLzwAThOHekCMnwgu3CKaAHU20dcLx0CjvlojwIV4IZwFTv
XDG892+4sWlUDPvfv8PZ8PyC6C/uprKryIqdOHORyuVO1najMFXa0+cvmJFSosfz6d1wujUr
jFjMfZlHQ6kR7VHetu4RxN42UfQGtygmz5wP6zBwtqMEEXtRwfUk9t7yd4dmSIVGn+3Duc+/
fv729/NXezA7nscyx6G7+Xu4zt+bUHqxpAPRX5qvXu2WDLUN9b//5/n7p79o8cOUEi/axNrw
yC10uoixBDSlmMOaRYLZnUOIzNnSRWIiqymUAcIZIT798unp7fPD72/Pn/+0k/pded5MHL/x
ah1uKQeaTTjbhmZbsV5021HZwCzbAiuFY/Ucs489f9K61kPhRqmfVB6gA09Lk21Y4E4GEJsP
aJybrDTNlD0EtvrJXirQ0jxmqeNpNPa9UhUN+e7kQx5eL4bMauhzb7o8Jxc5UZbxpgdJzTWG
Eq0Mz03Fxgx3Y5/Gr2QasWE8hpaSBKAJp+nOiT8jPukTwJDMz+1c3ySdmuo8JBox7FgyaQyN
c6DjhZVM5hRXwIopXUKj+bni1sQiVBqR1ZddxbPibImXEsvqax71NGVV7EjPsgKzpxrFV3xv
5RtRvzsWbdfjyaaBIow8wjoVGRbo0oLyKzzgJfC+x+QzHtB6KwRz4cmcZnIhJeZCQ1QiGXyf
U9xOQeXvOmVn//Hum5+Yzq2AGRKKqkvNDI5N0DmOJBLU0houSh6pgB9dWlLGKZSnOr4TBl/J
DqJToziUokGT7ps9HhmyqRb1Zl+jj4OpsMhzJ4sdPm8xprzWwH1eO79Az6kwpcerBcyaI42o
RZXQmNOu9RCZmZAefsjlPIS7lU9v35+lhe7b09u7dRYhLavWaDy2/QUQsYuyFcjeCkmNH9Do
nKhDAQaqSDTUapkyU4PUD3ytMRMBGMimat224PIt6/RmW2B9y8yeRFt6lPJSxmQ/MkPUb78E
kwWAwKkzbtv+OT4h5o8s8vRKMkZ/8OWcnOC/IDHKsEuZnLzB2KwXZUhNn/7rzVJRlN4EYfUC
cwnBxlb3st6hU7Hs16rIfk1ent5Bpvjr+ZsvkMh5TIQ9Yh94zCPJA+0pgo3SEWD4Xl6rq9R/
tTtgiAYl8EL6m/UEOzg5r5j95mIn5+nxqYEn2UZPuOdFxpuKSpuCJMgfdyw/dhcRN4cusHvi
YMOb2IU/CiIgYE4pRVMSRKii4Rtw/sBmsXpywuspSCaUX0WPPjUi9dYuo+wiElNk7gpjuxoY
G7mwb6wspVs9ffuGt9saiMnDFNXTJ+Collgpm1vgLUGLA4x+xrTIKhc9pr6+sQDqaBnOonhq
oeW8kRT2am/q5VLa8QyYUpnPFSzcyh1E1IacgRz1wDsdV3nMv7z88QuK+E8yABvKnLyxlvVl
0XIZ2G1WMMzknojW4aMK5dxzydFBi0pXZ85ur1NMuOyyl8P0WoE/6osRBr+7pmhYql4vMXON
aSyvZEpKxAahDgWMn9//95fi6y8RjtDUnQrWGBfR3nD33UnvPFAiuuy3YOFDm98W45TcH211
3wZivl0pQqQg6uzfnCPGXRUarJ5iuHaXSjQTaSgNYi15TIxzT1WzrD7le7IZmp2QpYctcuv9
jU3PLrKXvbBQPf3nVzipnkDxfJED8vCH2uCjVk4MUQy1pc6aMhDSuD+JjBsCB/3FNwfMhA8D
roD9H07AcQnYo2ShlG5GfAsq3r4g4FrwIDARSzjV8CbjFHnGqjNPKUydRijnzsO2pb67iUU7
sp4+a/5Vp9ucTQlLkiABiUokEfnxOVkFM7wGnlzBqnnt1NLVw9cladRQ3Y7ZWeTkumjadpvH
SRYRuKQmwbA5Wqoo1CSWswXZQ9QibrXdipIwOizoAZu+9Rlb2WTzsIOOkZlchxpsC+sA104V
LhjPIryGI5eosiESqxRYMaMqUadeus96hpA9v3+yd3ydefEow+f4F76g6WOAxxUHcuBiUR+L
HK9PPPGVRxHw8D+Ba/tW0uF7IHLZXw9HQ9uBgYZM5+J0KHf6ndM+/SlR+eAEgUeFbGJaxnH1
8D/q3/ChjLKHV5Wrkbh4xBrVB5TkcL8ou6TTjlafEXe4lrxyzHsaHTeGEaKwco+BznbKReMm
5jfxoBRBCWTEAGAxDysmuTIr0Gk3SdSx2H2wAJhvxUq/BDDLmFFIbyDrN3zAgbnGnfMuF6DQ
wyNlE09wAmd3MpcoMeCcceseoJ9zEz7sDd8OAiJzXVQ1JvWYp+dZaBw3LF6Gy7aLy8JKF2KA
J9xx4lOWXeVAjJclB5Y31nsYIsmUsPJqgdZta4iOIqq387BezAyYPLO6ujbWBfCNtKjRwRLH
VkRmCPeh7ERqsCJpjokK4Obc9CCTYHwf13aNK+N6u5mFzMpdWKfhdjabu5DQkMn7YW0AA9K6
j9gdgvXaEOx7uKxxOzOOz0MWreZLQ4SI62C1MX6XGFdxOJkvNVXOPfF4eeA6tuqr8jpOOHk2
YgK6qqktG0d5LllOSoHyFu4gjvzaKY9TDY9CnXRGMUqOb6P4TFLBYYJDI6mFBqZ8z6KrB85Y
u9qslx58O49aK2ZCw0ER7jbbQ8lrKmhOE3EezPQx3HNXu8VDt3ZrEDtskVvBXK+9Edixuj5l
g+VBv4Pyz9P7g/j6/v3tx6t8Au79r6c3EP7HJDgvyNk/wxZ+/ob/tR9J+X9/Te1+ae8dV770
XkCdvbTfRL48GltW/R5OdVCaqgIt1hGysuuYyp9HB8PsKxcVSyN8adKSqfrFpsHjGTEgaCfK
A9uxnHXM8M3Ap0wtC7HF/pRai67+WrXy1iIiMQu4WQT1gXH5cMJMxR6DxpjAh2C+XTz8K3l+
+3KBP/+mUhclouLo8Up0r0ehVepqNuhm2f3Xyh1VMkVjBiwvJRm9UJB1oyLHMzRkGJchVeSk
oVKQLghnVFx6j52ZVgENVPk+bFjESh9WZNvZP/8QlWoMGd7XVyJg51NFhrOZaV1xEO4ydNHR
1F0lOgbLixn/wjJ+hm36/PuP77A/a3V5yoxnMyg5bLecT4arYCDwLsq6OqEfmO1pMJSHcpzt
0XA6i8chsNv7PGvWyzn1stlAcN5s+Gq2MgZzQImoKqS/0bH+OBkcblFtF+v1T5BojuW31iTc
rLfLuw1vTX11QNUgaSc8FS1ZCWJr2Fjp1PPtmlAF9N8k0WHcrjg1SZdNhdv0hI8RI111enzF
kb8fbdtaj6yha9Mh6ybWPjJIiix2Y1yR5CxADql5d66j9Zwae4fA1BtHj5mf3ErDIdQc8HUc
02Yd+57/ZxCV4GCaO/o2RcNiVjak2GQS7Xll3d7yJpgHtPOi+VnKIjTJkVF9Fl3DTd9JFvHc
jHVVv7sikw8l7Yu8szi/Puabeipot68mYx/tpK4cDtx+RO92JqPdf5FEel1OVK48Ms+hvT76
Qh9PyLXM16se3RcuTPLq3kRhZwozxKVJjZrhV2D/smYVAVQFLPW4h65vVxUs/olVBnRoGrnd
eM8BK2ORIX/jL/c0Uydt2vIYGMseKO41JGJncbrb3OjA03oy1r4nAoGuMPU327fGpJSPk1D3
RlGL/rBmcgqQA2Yzs4sKoh92qgVe2sikze5T2+MHP7GY43s7PtYBGWOpaUgxYxCtYpbbLzv0
MOkoca8lPDulfCr3f0/z0fYOVr+7vMQQ7hyYU4beQDy3n1UwCkhYBXyOup40iTBVOCwma0s4
GuUIr9MuycjAUESVj4ov/9cEygXqwPeC5dC6cQEgIfYkIkDdOaGgukSy46cPoqlP9yZBPZV5
j2pwErk9jocTu3BPNNdIae0kvv+QcZJB9kZ809x4Xi3wOAXGTSn7Z/u0zs5QmnmncS7Nq4yy
ZcFqI9M3jWaMo5lRHH8ZmbxMKHL2WlCGufp4Dc0Cr6FfRBHhqde0YcfobBQjQUnGlFQcPRCM
vvUQikv24wmDyfLizoZD4dPOPH+sN5tl0GUpNXkooW4Wra0IO8UV9haGRqwX83aa3I5SkIKq
Tl6k/DjteEMfP9X/a0U5jScgS+bGna7xRc4auy09wKyg3sw34ZRu0RfEMWWX9VpJaK7Uc2su
O/zVO9LJd8eZvQvsgqsiL8gHJE0ysw8yUuQnuedmvr3XtbOITSFGHlYxtx+QSctI1nKPzRRH
2sgOxRV3Ti39VhLP9yI3TQUHEP1g/Y2AK0dfyER4Kcj6gnhe48uh99r6mBZ70oho0pzQTJQZ
xkzQbNbqlLcBfeTnAEU7nsoxrkFVlruPTulaqtj27F3NFncmTetP5lebYL6deGoEUU1BD0i1
CVbbe0NVIbNktLXBJMPkG5SrqUHj3c3X7X7HNROnCq05n0471NMUKasS+HNnG8EZyMw9HG3D
2Twg5wTOBuvMEPWWfFodEMF2NtX2bDIL1tDyCF3SWtuFGrb4VFQo4tAtZ0K2MYtuJDO+U//J
ev+3LK8ZN50llfnNMCRjipHclhDEXRmlvuZFWV+nEmdpqoYfTo2x0YffVJENGTA+4s8mT4Mf
XXUQdsjdAPRkXYMABBiYoeY60YqL+JiTCd4MGnXDMTZG33ggc0iF+ZaNRrBWOJxDI9IUhsR5
tsCqp6Lv6JM4tk68mCctJUTUx8Swe8KRX1qDj+pihZHmdDym5HiipDQlUHmkSvJqAcz7oouy
747nDY/xWbT9Hn3LD5Twn4iWx7ZZuJbNV3eNQjzgd1NuYixT345CCLoRdPs2dSzNschtwl7r
d+jazWa9Xe06px+9jj3RiV2ULRfBYmZXMbgSmzUAcN1qoEm5WWw2gQ9dD9+PbcHcndd9jk7c
U61RKXv62RktyiLC6Dv6M60h281FfxXdb3PpiahM/frHaW+bSZzytWgv7DrRDtD60bY1C4LI
mVulh7ht6cHBbD9ZqRKmJyoczbxW10dw40zMIBzbH+RMvwDuNDBvoQhMzqnmkmwgazaz+TT6
sa+NaH5vg7WaqE96B9gH7NrbDc2sFh0oMMGsLU0OXjFYUSKqndVRoswd+sAm2gQBQbvYEMDV
2l3iCryd6HBv07VK0rx1DxwjrPbqXqqfLlBGO3V15QCtkJYicewC/XdWXI0Ewmm6sC8WETpl
gZRIVpecx279otmx3ExkJqERMuCqiAj4KRfWkSIRyqDmlO04TiFI3qon3C/Auf+QsOxM35Eq
JOp6MMiZU1BWtCg+2y1ROrQDFOXjYhZsLaOChm9mK/JtcUTrCPb+wlteYGQ/Xr4/f3v58o/t
pqknuMtOrVeLhvfHRRCSDuUmpTkpdFk44PdK6Z+2a81wJJsiw5d6h7ztZVRPHn6A61r4y/Tg
qLv0mrfm7QZRwkBe2lHFZdnt6njiIUPEgsSRssYyNCJ4Mjk9IrPSTOsvITgITqqasiy405YC
k3pT4k16MFx2MCWYykUn70ltRMRMGx5CjuziqCgILfme1aTbmM44tglM35sRGNpAtKhsWmu5
IRj+0NIlIkV5cJT0C/2qwYVZVxJu8qT+9GTlTl6nGEaNrIXqrRci1F1+LaZSfPt5gkQd5/Yv
vF43uaxNIX92sf3IkQKmQUF4Pb4i7uGvp7fPMqTSjwiQ3x6SyMqZMkDloiLglvuQgrJzllSi
+ei3TPLohNGXaopEwP9zTtpfFcFltTJDf/VXpXynSzlyfP324/ukv4jMMWYMNP7s85FZsCRB
z79UuQ0a0hXi1Ovvx4yMPFIkGQO5vD2qIM4hOuvlCZjG89fvX97+eLLc+/RHxanmVoJMG455
r07tJLbGXPB51/4WzMLFbZrrb+vVxu3Wh+JKP/qn0PxMNI2f0eT7ag79VMCF+uDIr7vCijTv
IaBFWPYdA14ul5sNZZW1Sbb0581xR+UIHAgeQRpeGqYqC7GekYU+NmGwogwdA0WUlvUahFKi
o7HOsVqtNksCnR6hwURzeLm10pYMCCmL0GB5h8ap0W4itloEKxqzWQQbst9qXd/qd5pt5uGc
6hYg5nOiXxlr1/PllsKYp+8ILasgDAhEneMDbpcKAGTjRUazHpMAdsjE6+gDVc4vjX1/PaAw
yy96aFFn3UBUgoKzUa4sfgna8He7nfsijRNRH3SM8G3iuiku7EJeDRo0Mp9NZJr9RuQpxwVJ
IA7qKwIlHutV2BJzhEEzC3LRzWEDU6u7ycKuKU7RQU2rh76ki9mc3qXtva0PZyzqjUSxThLV
cfE1RzmB05wfWa1xQOFPYNxmbFEP6hjwCOuYHDC7K+2KMVKgWR7+LSeiFge6+pqzEnVL6kj1
qUBfVWobUVR09ZI1eDTy1WEvMcqI5+jDRrvLGK3haMUwExYaFcilIBoKlxQRKutWtNZYKN0x
Ffc+2Rz19AXW6ZaJVqnteuGCoysrmTvZ2Gs7UYMN1zinaQNWNn2yiecamAnz6rRPBd3ZYZot
lzAX6eT1HMQDfBeecpFQBPJVNmNe1G8phbOIR8w400yUKJ0rGgN5YDnI5TQ3NMiO+CLcPaJp
LUQTqZUAigCoaFZ0l+4eLgIlP01vfmFyQwXbbMpsM2u7IkcG9mojWbwOFq1fmYJPBG5okkp8
LHKG1xE4aV7JMv4CGJyzeBV2lzFL59LS3LydgarcOMebQkIv0LJ6FjuZi2PC+qgo1QGnz+Ib
QnK7Xq+WMz00Xo0Kv53rLt6oMctAZFnOblBIYWjHeUk/8zbSxBxf36jc4ZQ42Xe/nawRMv1L
w2nv3kHyBcUh15STjTi2zYetOzEyt2nGzGsQhbhyZt8ZKHCUBbOtC6z4/pTKNCpqPF18U9ar
ZRhscNr0InDXVFuGsJJL7lWoT2HrU3f/aBI5iDfG6TSVB1oPRZQsZ6v5HFbZyRumKNks18Te
LS/ZvclHkon5rY6b2fLeYpYLpCoaVl0x0Kmwci8pkpitw81s2LAedjtbLoe94OFW84GFOO27
gGQdIIOZ5hVxm85pPiMRky7NikpkmNGGvr/UFI91uNpSZr5+QbK54/VnIW5yurg6hytYd+PA
OYVIgtWyJ7jRTkW5/glKac2V++7WrNdRuO6Zot+5ukFWGKh5o+4WMrFw4pIkyDEYSxjIAFMl
JGaQWw+Rx1nhwMNYxxK59EHgQUIXMp95kIUHsbaPgv0fZV/WJbetpPlX6qnH90z7mDuZD/eB
STIz6eImgpnJ0kueslS2dVql0pRK3fb8+okAuGAJUJ4HLRlfEDsCASAQESqG/fyk4DSfQ5W/
tHd4QqM8dexVYz9OQMsr0OKoA0sOV+VeKNnaZ31K+acU2GRVjd/9rSJAqjUfxtMnfXbTiqFz
dPutcrZoI5R2TLpCFgC/9JjKoiUpNvKWXM+ch8jvmNbcx/dat5lya1gYJnJbLUhFXQ0saFGf
Xede2novyAFUHPff0psnqoeX91DUEZ14SvPn4+vjB4wgvL6AXXW5gZpDk9aGh1uKx7MSph7q
j3mlCGKkcr+TeTqkOh2fS4o9tSJjVowNPf3sm/OISzB+BdsfUvk6jMOsNFJlrKTDtgN2xcBM
eXvUqsRFUntQAkKJ26/bPer1yLOvLWYvHb8e/zHjlCCPRrzBBuDeqDVRn9MV5mGTyw+LF9Jt
KGscwdo76xXfp4FPPVdbOURUIyptPNDpm6Ok6qwYd5xAAZqvhBWYLgKpT4Z7KnvhpphCsCfk
HlyR2a/wZo2zbOibI53AiFceFg0Ld7OlZv4yXYShc8+7D1vzD51sYqirwCFNvFY4UNZ52DJ5
gXbwtlyeWXKd04SxVct2VfD7XhsoQNJf3M/yIoM/nWVUDR39RIJ/RBo8TwjfkAuHLH8bn4m9
fGO9w5DZmvOlVXRsBOeEJdJlwIgFGJyeypANvv++8wKLAjWWVfWg+TCcadwZL9kIC0d7IPvN
FNPSmj+1b39msM1s20G4+jRGHJbXvJ6Rj0iwkfihGzRoq5LxElV2PMxpJ2AtpEhySBS30+Iy
e73H5plz71BUCWCR34s1l4fOKxrZaHlK1IhGs9Lhb1pYThzVkAW+Q/knnzm6LN2FgUslL6C/
Nj4Wt9vGh3U1Zl2Vk9252TJy+pNzVwxFpbbIfLYmN2J1bPflYBKhCstdHWS2KAroG3Ptjkkq
3UHKQP/z5dvbpgNkkXjphn6oDgBOjHy9GEAcdWKdx2GkLNGCmrgu/S6UN0k5hqec0ve4KBBa
kUxhymEMULqyHAOV1HDrck+tibBAhwF21tq+BG1uFxrEyHfUBNA4Nxr1Cl5Ky2ZcYF1v+k7m
U/fvb29Pz3e/oUPTySndT8/QS5//vnt6/u3p48enj3e/TFw/v3z5Gb3V/UteTUQ/6LEXZFCY
9Ki9Oey09kTKjVU8ms4Ig7NEU39umqvmNI6lLSOMZJbo44awEprJ922T6ulPsRcsOWQoS9Xz
WCTP3qpUYsHKY8N9Pqs7Qw3kdbaiy0NcK4P8kIVj5RE0g0reGiK5OKCWpI2Z4ug55AkNYnVx
MT/gihD1wBtRSpZy+csDyUxBhlry6IbPwOOpShv1vAVnWn3Ui4HqYNVZzzqQo+180uoXwV/f
B3GiTSrYznn32pqj6o+cNESheuEnqHHkUaotBy9RoLx358RRk7KTRq9ytfwKUqMp/qQ55Vqp
LCCY5XGjFLWrYXyT5g4INoZU6UbbbBOOfdTXWwv9WDSUwTrifVlqc7G/90dN6vmZF7iORjzx
QAtyuDAhDWvhKF+hyUGAOaXrc72kzDb0+Y7ioMlyQYy1jIaz7+jlPDcRbO+8qyYQ2EPz7gz7
ql5NgruGUzk56bbvaq2nl+gXzxT1dlDpa6gcrd7X2lbxyWxQG4a6RT+nVVopxqrb6eMXYxHN
NiXFX6Bmfnn8jIvOL0IZePz4+PXNpgTkZYu3ZmddkezbfTsczu/f31rYc+tVG8rmQXdaw7Nv
3/4UStGUt7Te6YsZoWFJ6IGVstmgVfPRhxoZ+YtDpvyflkHuBEkbbxxBp1Loik0T/PwF3rTW
KLlPjpBAZ7OUQTDM16pS1YjaWEJ5so6a8Kqfevx1q1nNL5ZQO5e24HLsNfihbBjEUSMrNUej
K/nzJ/TDJHckJoEbCbKsXUdEthg6SOflw39RzoIAvLlhktwy9AxOWXAqDOgiTLEtNdKWkgbN
Yeipe2tcOZVnIxOBu03DiBW3qqxhEISuN3O0B007mT8p+3fqo1bR4xPzenyIizV7YAf6QF3s
pWjbMo4Z8QnFZYoWBIETubGQs27qhC/D58evX0Hh5DbChljg38WwmGphDThdqKA6UVM9JeKN
kZWHZo2pUCWiIvDpvuj7hw4jVymee8S15KRU2r5HfDwy00BaoFbVU7S77nJCUA3rNHH5eRUR
FWRaUU7LoEaujZIcBvzHcanTIbmfVTcxCkNvMfPmKF7JaKU4VVe9n0CF0yj8BevFbDnQ3dyE
1PZmmHvI1fu63icRi62fwQbkvevFWhnqTth8aaOZa4A6cdRngqL2idsAlIRLz+gV07QvFdRD
BSpYnprzOq3TMPdA4rT7s+1DWFPLiz7IGLqvyPBAQqOLMiskEIT4aEnnfGCZaovAyYZbXAN0
k8j8igUJeXIp0FWHUT+b9SR7i17GJKT2NhwUznFkM2lB1pQjQaxM4fCePk0SUqfObwfVlmo9
1LFLxmUTz6lPf319/PLRlJiT2a0uBfNGn15HjNeniwchpx1z8iDd26gTP+HyrbOLw7GZrrj6
t342dGXmJfLWYB4Su6mQkvaiNYtYaA75D5pLmONobbPPYzfxElNo51ALt75al0RhDaAV99e0
eX8bZM/Xk6Dyd4FPiLck9jdaWpjXkD4dJDw027rPwiFMfKssqLwkM0eEYeEpqGUNS2Ou+aSZ
+oxB7gl1UrrinquP0OFdPSaRns1kJaqynrO9Gzg6VZhTGMUB8m4X0HPNHBxL9LbtQSNOF7XC
7odE3hKJzqjG/cHoYk6lDh8nFBbDEzFVKOvLCSpvGC7t5kZa/iLiI0JeYA6IHFZK3VmaFH6O
ahvcbRlts3xFoBy+fHp9+w67QU3T08Ti8QiLjm6kprQMaNtnJVwgmfD8zdWVq3x1MR6EsRNw
f/6fT9Nmrn789qZ0NnwigulwA/pWmgQrkjMPhJENkT0JS6mNmVay5RP3Sr0+WjlUhX+ls2Mp
twtRK7m27PPjf6u3hNf5OBZfSdF3bAsLq8mAuguOFXdCedSrEPUmROFwfaWK0qeRNVWPduMp
8yRO+EOewKfNEVUe6vRP5fCVfpeBmxJnXQUTGghlj9UygOea5Bdx4tJAUqghEFTMjUlhoI4a
aTfLY7ejz3XqiGmJ7N5VkoIoU3VHzgp2uqphq/GJPuKShJv2JWme3fbpMKBT5LWZhHUdRjM8
K+rZBPC0qLteDP8nMpJ9BJzSHt01oHblRFT3TwW4pdmQ7IJQ0ihmJLt6jhuadOwu2bWrTE9s
dOWaUUGodWVmqIojbAEvPvVx2eAxLnUbPXOwvbSfmVsEiZIzAnTb1Kuc8+f7d2h0N5oVmgDV
uF0HT/k7qtQznA+3MwwR6L1bc6Gk01xe0NAUE+ql7TT60uPceJbKWiC0wcZkcauPMYUhSW6H
M4ZiTs9H+kJ/zglUOjem3SZpLJ5ZMY548pnBjMymvTU+4XvWKz5b7FJV78eQmgPzpyXrsDDy
lzMEpUl2DqWEzhzryyANQMUYNugGfbqHMjLiQ5GaxNXgRyF9N7yMkmLgl1e89YIojDa5Z5V7
o1azUTxVHn6Hwuo9dRg088A4D9xwNGvPgZ1jNgACXhhTnYBQ7NOLocQTQoY/5ElIF2wyxy4h
SgfV9QOiM8XuYUdMUD5N0AzD2wWuKSfmx3Um0g+hI6/Hc1b9AHI6pDoEzYPJNX6dr5MJMdW6
54y5jkObfS7tku92u5Cy2uybcIjQml9d67TVkP+8XUol8JggThcDVAyd5vENNGTzqHUJj5HH
gavsExSE0ttWhtp15DMxFQhtQETnhhB1MKtw+Jbs3FgZ9RK080ghunIM8egS8UQQCOwAWQ4A
Io+uHUDxj8oRxCH5MfO3P2UZP5t8NoCxvB3SBvdAsJWpiBL3IIQy1X3kmioeom9lO4wd0QoY
2be7DFSSE4SuuPua9FQ6MWbwV1r2NwxBauYwox07U82VM/qkZMVdcZJrfslPcjY+LcP7W1rv
qbqhp4Fx69tD7MJm5EB9i1DiHShr5ZUl9OOQUaU+DLAbPA+oB20kcKxCN2G1OUgA8BwSAA01
JckeQRVGIA1VwFN5ilwy2MHSrvs6VW1FJaQjPTIvDHi1cFUiICzQkMTm6Pk1C4jyg+jtXc9z
qO7BEMfpkYzlMXPwFYoQeAKIzfwmQNV/FXDnUO0hIPrRwsIBWgMxMRHwXLqQgecRjcKBICTb
BCHSrYLKQZQD1SuPaBKkR05EZscxd2t14BxRQme3i6m2BMR3Y8vmX2KKaNMfhcPfWYodRcFW
b3EOKpwVB3bE+BWl3lGfZJ1Prsd1NfbFkU9Po9WHLAoDojOK5uC5+zrTtZCFoY9BbvjkGK0j
+mBmZYip3YAEU6O0ppd4oCc/yC3ZHKd14lO5JWQZKIlS1VRvAJVUBYC+Xfld6MmvtRQgIFZ5
ARCl7bIk9iNSjCAUePFmuzVDJk4GS0afzy6M2QAzzzdLhkAckxMaoDixKMwyz86hFOaFY7Kp
I2rYsNTfVAPaLLt1iWrHrmC7G5PjnEsY1dSHJNxJndPVmin/wmlxECArs14UEcocAnRj7tGj
42FrgYJl9JYdDh0jVsmGdWfYv3esIwtc9n7obQpA4EBPdfTHHQsDMobVwsKqKHF9ao2svdCh
moIvgnFiBdb305Yl1E/cLVVtWokoschXGYeYhYB4TuwTAQgFErqWBQKEefKDwvhBEJCaCZ6s
RMm2+Ks7aJKtDLo6iqNg6AmlaCxg1SWq9C4M2K+uk6SE0gC7+cAJKHUCkNCP4p2JnLN8p/gg
lwHPIes+5l0BGttm3d9XUPwtIYBPyQ8psbzJhkCWFZAZl6cLsh9k85eFfBpccv4CsDnBAPf/
ooYyABl9qLVwiCcHmzx5XYAaFG8UoKgzN6AXe4A8lzzckzgiPAY3excdrgZxTWgsM0IvoQLd
+7utMrPsFEbjOMdHo5JBDu+HafgRUb5hYDGlZLO6jmgVNs0z10vy5AdHKiwWRgg6AI2YeKQM
KZvUc2iP9zIL7SF7ZfA96ghhyGJCFxlOdRaSisVQd66zpfByBkLh4vSEqh8g2ysIMtBNA0jo
bo3NS5lGSUTsci+D67lEe1yGxPMJ+jXx49g/mvVCIHFz+oudFfAIscIBQs3idHLMCQQlnG6B
SrFWsBANW7qJ4InU56wSCJPpRD2SVlmK04Gog7DkWF9YouKZyu8rBQGdcqoeU2eADelQMtVd
x4wVddEfiyZ7WN5k3/KiSh9uNVtDqs7MmrifyWqo7Jl67Uvukwidu3fkW9SJMS/EE5lje0G3
0t3tWrKCSlFmPOAxFzulPX1XRH2CTgbwMIp83T1/oKZt1lUvJAGju2b+Fw2vxZDO+7uz1K9L
LfLicuiLdzO0WVMM0MWdi29UjpsOy++t0T0IkfgE40sjY7RN7gVn+rNET+rapN/7Em3JeTbb
2qzau7YvtyvPuiLtN2rAzk1SmnVYnJybSLamt9aBU2GW+ET1yv7+2rY5Vcm8nS1IyMKlQM9T
8kP0lONtfIoO/NayT35L354+3+FLj+fHz9KlBgfTrCvvymbwA2ckeBbThm2+1fUFlRVPZ//6
8vjxw8szmclUeHyqGLvuZsdOzxk3mmCyGDd7hIc2YGbX8tC1vdLcU32shbYEzN6o21BimBe6
atYQ2mS27PH52/cvfxCZTVmJ54iK2JhjR1s+XcQByKaWkjeyCQlRBV6ud98fP0NbbfYwv8Id
cAGj5zW/4cX3MENRd+LOg2wqa15zTd6P3i6KqaosD8M2hEPX5+YwWTyWGBTtKetCbtpr+tCe
FXcrCyict3AfAhjGFNZD6uJoYUffq9yZCKbnEOkZD1R4u18f3z78+fHlj7vu9ent0/PTy/e3
u+MLNNWXF7VnlnS6vpiywUXJnqDNETJrDwPh3YXfE3lyIypCLQwXiGiFyUGY7ePI2/pYmLca
naeQ0fPRCTT6csi0MG3roe5GFvgowol2RLX5jBrJkk8GVhvJTmEpzFTfl2WPxmgSsha4gi9y
OkjbvP3eynRafHz0pGO2WsrqnRc5FDLs3L7GkweytgiztN5tVlg8xgjIBKaXPlufHwaouONS
pZvezhJIfiUaWDijJsuBT43JQqzmfs0YOE6yPaD523giZ9CK+qEke3Y2edjMHBSbsdzKevaS
ROUwWzptdRHsD320JOuHjBrv/BUKnTiLvZHufln7i3wLk64gUnmArunpo3+F4nPVISoZ4vGQ
I5y2DpWyP+BSTXU+G3gUxM06iHfKmyx8naOLOceg2u+JsSpAip6XKYbxIeTu7PiAwKYXYpb5
WqUs3uqIOUqQaLx1lE7k/n1K13B6aUg3r/AouJHrsnyTM2TIXfcHIgbXdrMFLxgLupEn3irY
qrKOXcdVRw7LQhyD8sApI99xCrZXqdPrAZUIKmfAJ6Gc5Kza6pz89aTezDJd2DJRqjBMdcdP
pmykWXLsQJGzrRJ1h3Vz7Dj6bog2cNBUUs+1DPBzXcl9N78k+fm3x29PH1f1Int8/agoKOgh
MdvoWMhNeP2Y31/YUpzLwfZretLsR1/KLWPlXn2zw8h4RtDAqcwukdVft1OL9tJZSSaucNiy
4TgIJi1hEbvmJgKbqClOUE2fsnAWdoBpfqKT5NGus7qxoNpDYYHpA3H1TfX79y8f3j69fLFG
JKoPuaZII2WxE5d1skM+OZQ8drAjoQchfsv82KVOQWfQU47Kxft7fBdIXoLyj9LBS2KHKid6
6jkzJf6roKOj6kNVjJnstmCFTlUmmxWvAKszNQvukt2RX9ly6vzWTivPbI9t0HT/q4jU6MSM
DGPFW6rMfKOhUPG2vL/DjyZ9vyT9ti0MoVpoocwTNN+guepZOqdWDXWKjhA+Ur3f+zvf0Ws+
bZarLmX0nhSZjrC4Xtv+nt2OzD7c6sz1J/t8O0/nRaTFJgdHKEgvAsUoZC8E7SnVh8mpjAIQ
s9gbelMAFIajLZTDCVS3zuhVpELRaScfqPWUsm8vJAhnX0rGIkBjR/pS4bgWOQNp/N1nVre5
KlAQui9qujwICtfzjpqYIIZ6QpwcWZ4hiBkwukEYUzdbE8y1Tq1n1jekBlV+pLlSdz5BTQKT
muyc2JylQPboi8kF39EWKitO3aVxdIiE5YtGkw2qOG3eEettfCm7ouceSqwl6IuBemSP0PKO
QhY0szd0m5RfGCyOFaYnsEJeK+NE+PvXW5ifPVlmDS+/UObUBpkM51WaeESsEe8TJ9FIYk9n
rG5FxstsKQYrgzgaiVWIlTBfCjHTPE2MmHfvnFqHjms0AxKtMQmR4f4hgemiLJ/pfgynprb2
P+4erZUSHqL6rNZKOHtJkGigqKe174OIG1hmCEbzxbigJjEZZ2tKsKrPejd0aVVbIp7jAwzX
CakLYvE2QzaDF5RYGzfzC3CKujNWt+k9uE1AYQX4i3i92hMQRpQ9i5SwMQY5PYnsIpMz7Fza
FlRi2NICgAVEuPxCYT6DMAf3jKRnbaUAIHICc+hJ314r14t9Qg5UtR/Kr15Eky2v9lW6/saf
E7UH+VwSossMvT2rNjs16ZF0T8LVrMnFwt8EcZrNSnoZC+LKI4OdYoXr0HU0VQpprjGw+Mt/
27DiYKInkwSOY9B8XS5OB5xE0REJbVERlmwDTQ4M1yAxZG97qoUbCtWkUcZAD7VN+/Vz2YBk
klS+BzOH++/WC4IQB5iO8PMLg/1gzMprlu983W+0rPic0jxF82Q6LAU//WUdIWxlp7e2Ldd6
grOa/Okk/c3xCoig65e2GlLZdfDKgA7Lz2mFT2jYuZZfZ608eNfNr7pXLiIl0NqOierUVQFr
zeMNwYX7x4SUfSrPtMc0sTz05QkgIQ3805GI2CUqJ1MrOM3oKm+pranJCCMKn3pTrUi9RZJQ
vsPdzsN4tbti83ZzMwHCA4wG/jCBdftKJGF9XqSyyM9rNMSny4ZbSI+2A1SYPNLfl8biUrkf
0ib0wzC0YonslWDFVNcVUlgjvt2zI5fQJ9MrWQX73pBuBrQk9mKXdqi1ssEqGZFeiyQWULpi
l86FY9sjkb9atoxE09UPyUI3dSVWbaplEIriiB55uCEMSfc8Co/YFRL5Uv6FFDSJAuogQOOJ
yD5dN4g0pGrmGkg+JNELLqs0OiYb1GlY4nh0HwrU+0F7Zp0LTWYrfBcG7g8S6JJEjrWqItFI
I+/inUc3M2x/6cmNiOdbyglYSGkcKoulZwFJLEuH2I1vJtzty5RR6aJnsSAkR6q08zaxQzI6
9FeH8/vCdchKdBeQbXT9OEQLPg7t6MyuNd0k/Cat72rK55PGxeocOankF7sTukM5jEEWL/Q7
lJVTNoGXIire0gF98NKp2/2NSTzTyQH1uThB2P4c1Fyq3v0QKC78ZWQ606ByHOoLeUK+sjCv
7lI6ZYQYPalYWCdxFJNfcVcDJDIfRZDjg1VH2Af9UEsUKv2+bdFJ1D/ivfTFYX+mLHd1zu5K
6rbGXkGG+E7ndqnlKwAJhxo7EamuApR4wWiF4oZqeHxl4ka+R32Gm3jPj8hpKc4qbHJwPvX4
QXtSjvCsbKQXDY3JtVdEP+dQUH4QsZ287nNF2tDMXsjJ1C8Wb8Yrh76BVpCAFrPLLtkms6p0
X+7p0LG99YAxm84e1xyR0rRDeSjlbRpSu7IxCDeQf6hZNr9K+2A0UOAMuJVRwrbx7E6xL79+
QpqwdUhblXMyj3C91IBUvZnnJaKNg1zp5Ebi0EDdswpEBM5S2G0uWUW95jo9k2TYMKMXZr0x
2Hmf9xcebYYVVZFhk0xOnz9+epy37G9/f1Ud0E0tmdYY22/KwVow2KJW7fE2XMxmFwxoHTLA
Vt3O0ac5D983g1pBWN5TpdC4Zo/I/4CV+xUj2RbPr0bzzCW+lHmBIW4vek/AD3TmocTKyy/7
+Thw8r348eklqD59+f7X3ctXPDaR7qZFypegkgbpSlPP2iU69nEBfdwpioVgSPOL1W5DcIiD
lrpsuGLRHAumZzKcG/l4hed58uRHmJxUF7UHf9SW4cjh2rR5IZs8U80gDUspStHaSPrgXFob
G9k6OCW2vnh3xn4XDSVMQj4/PX57wi95P//5+Ia2vlDKx98+P300S9M//Z/vT9/e7lLhcV+O
liPbsVtrwZnyT398env8fDdczCGA46VWPLYjpZFDgnOWdISuTbsBDwfdSIbyhybFm3Peo0z9
LC8wjBUDMVCCfKtaxtCvtzxqkOtcFeaYWepGlF4WKKrh/2S3e/f7p89vT6/Qoo/fILXPTx/e
8P9vd//rwIG7Z/nj/yVZa/A+RKV4lQ3iRcGXx88vf2Ah0MspEWhPDN3u0gNOP0UVHKcceKyT
gw33rhs581PFZxLVycc2duRds0zlYeFpRMR4s38GOq0XOiI4wyxORDP88nHtk83mSM9OQp5S
CzgbPdAORr0IE/mWVkyJ2aSi2iTUR7paLnm04Y5HWQpnanrYOeRrcJlBjjm10JsHVhRkkuco
Io/aFob3kdJ3Mz0rQD11THqRuVFiko9VErkmuR4r13XZwUT6ofKScTxThYZ/YfuxUej3ues7
WnbDgMj+nB+LgULyQjHPYTUTefWUN238bO9l3mRh1KmjmEKXg32lNinTnqAKY/+n3z48Pv8n
jpKfHpUB/S962IiBB8tNYg5WQSUX0QmahjEFQRmVKxShVmTlpkYhdJdZGm9OrsA1yjtc9Fgz
2UPXFyCZD2VfY5gx7QvYDnraDeNKJ6rN6bAut7KLiRXJa7FGlkcyvTqtKjl+m97XG6NgHQGq
TiW/MhKkxy8fPn3+/Pj6N2GuJzTMYUi5FZAQet8/fnqBUfHhBX1a/+fd19cXGB7fXmCdeYSc
nj/9pSQxt7O40NWbP0/jwDeGCpB3ierZYQHc3Y70kT8xFGkUuGFGfIoIeaIh8Jp1fuAQeWbM
90k3zTMc+qorqJVe+R596D4Vqbr4npOWmedTGpRgOkOV/cBoItgWCg8yBtXf6dRL58Ws7ozB
D7ush9t+ONwEtr4D/Ec9zAdDn7OF0VzwWJpGoe6GY8pE+XJVzjdSA2UaXcVZW0rgvl5LJAeJ
UXkkR05gIeOGUFfEEUoCz+zqCcBvNnp7PySko64FDSMzaSBH9KGJwO+Z45KeGqZBDQsh1Ccy
1CHomdh1Dd1JkE0pibcrsWptoyJ63bXJ34VuQMheIIfULL90sUM6S5jwq5eYPTdcd6CPkFSi
YZFusWqZJ83oe1vyIh13XhIpO0s+PR6V2UNOitjdEGGwUoWz8JP3a+RsefqyZGNm4tHdnhhi
g8+c2BgNgkxy+wE5z/wdSQ5dl541APxg1qT5zk92dvGY3icJMWBPLJnd4yhtuLSX1IafnkHA
/fcTvsa9wxivRmOeuzwKHN819BYBJL6Zj5nmunb+Ilg+vAAPiFW03SCzRekZh96JGbLZmoJ4
O5z3d2/fv8C+bk52fRusQUIL+PTtwxMoAF+eXjBO8dPnr8qnesPGPunVZpoVoRfvjIGkGaPP
2zd8tFDmurOzWV2xl0rUsivNss7V1DFVn5lPVET1vn97e3n+9H+fUAHmbWPoP5x/MrvUT50E
hnpJ4sk3bxqaeLstMB630o1dK7pLktgCFmkYR7YvOWj5sh48Z7QUCLHIUhOO+VZMOG/TTwJn
1CVP5WWmd4PruJasx8xzFOMuBQsVF1oqFlgx2C3ChyHbQmPjPHhCsyBgiWNrjHT03Cjc6nLX
UplD5jiupVM55m1gluJMOVq+LOwtdMhgpbK1XpL0DDbzjqWFhnO6cxxLTVjpuaFldJbDzvUt
o7MHoW/rkbGCTXp/oNF3tZu70ESBpRE4vofaBLIspkSHLFO+Pd3hsczh9eXLG3yyHMtxu71v
b6AsPL5+vPvp2+MbCLpPb0//uvtdYpU2dmzYO8lO0usnIjpx04kXZ+f8RRBdkzMCDdBkjVxX
O8zAsS4LBE5Lkpz5Lh/iVKU+4BHu3f++e3t6hSXq7fUTHidYqpf3472a+iz3Mi/PtQKW6tTh
ZWmSJIg9irgUD0g/s3/S1qB+Ba7eWJzo+VoOg+9qmb6voEf8iCLqvRee3MAjes9LFEO7uacd
0l3f8pE5OHjvUoPDMZo6mVUYrQccOnLZ/JWnn7FdCuaOO62V5lmbu46RNYdEg+tf8fRHnT81
R7z4PKKIMdWJjtG6MKJI+0WeJYOFRcsRxr1RFQyomeqlEG3IV+9lDA53P/2TKcG6RDMuXai2
okL1vJhoHSB6xNjzNSJMwlzPr4qCOKHW5bV2gdZHzThEZusMfkjMFD/Uej0v99i09Z4mZwY5
RrJe6olOhXqf4J05FEVljKnHD8EpdRfBIiPlrx8ZAy/3YGXqCWrgFhqZH0XrZ92CqHcjikLt
9FucReNNU5vLwy6bJLJ1wOHcTfSRLlrF08+2BdU3a+7t4jnTdGCQZ/Py+vbnXfr89Prpw+OX
X+5fXp8ev9wN6wT4JePrRD5crCWDEQVbOW2YtX2o+iGcia7eSvus9kNdElbHfPB9PdGJGpJU
2RmiIHvK5dMysRxNFKfnJPSMGxZBvUHFLYNrYrgElf4pz0V98ix8gLH8n8uXnd6rMC0SWqx5
Dpt7lWehLqP/8f+V75Dhi2FqqQ64UqfcW0kJ3r18+fz3pGP90lWVmioQqJUFqgTi15CiEqha
Gol9ZZHNV8fz1cfd7y+vQoEw9BZ/Nz78qg2MZn/y9DGEtJ1B61TvnAuVvjFFGE25A8d2K8dR
vWMFUZutuCH19QHNkmMVGgVCsnV9TIc9aIK6uAIJEUXhX3pS5Qhb5NA24PmOwTOGIL9lNNST
U9ufmU8frourrqwdPMryiX9dVEWzGIVkL8/PL1+4X7vX3x8/PN39VDSh43nuv2QbAuNuZJbh
zm5nzNCOPtOw7gvUOxrzQoaX8/j6+PXPTx++3X37/vUrCFbpvOiY3tJeino+EbihwrE7cyOF
pYTow7HszhffZhyW99LrTPjBz2lA7SlVat6BkBp5GCc0OlExHnipVkKXrHRWVAe0AaLzvt3X
DLuoUyx5Jvphv0JEylCmmg23oe3aqj0+3PriQD/txE8O3HCHdJ2p8KFpwA12g/lyKWgpOOSu
3BsgbRi0xrz0aT3X4VnjJKt9LOob9w1iaRIbht+xE9oEUehFKxbLTkU+3/Hho73pqPQOZJ/t
TBC/A1Y07XMc+ppiZmFl5UbUO8aZoRk7fqC1k69qDDBUznS3iim0kL6mzDEw2VNeZfQbdj7i
0wpGfMm6KiWv/rHp27qYYs3PZ7NSbmpyfZoXpG9WBNM6hzmqj2dBhXazlnHiyMr7H7HgQ7xu
oOxsJKYjOsnis+jAlrverLv7SVwHZi/dfA34L/jx5fdPf3x/fUQLJEkkitRu8JnSLv8olWnp
//b18+Pfd8WXPz59eTLy0St3y6lbpxW8MSUS8Gbq8tdNe74U6XmdIRMBg4am2cMtG0bTlnLm
ETfvIUmeXRL/26fhuiYyFRCI8ZM6ZWcc47pW5fE06LJhPw9hbeofC0MwX+7JwGMICe8p85DI
+iEzJtPkYOVQ1pQfj5UjxJi/eZHJT/1XNLZDsASNpsyfsEuZl4YeV0w3PfxObv/66eMfpgyY
vs8ZZScsM3RkmU65+phEKW5mapbff/vZ1CLWb46yb3OJXnZ09tDamSX7vh0sscMlJpallbVN
bT5wuDSbHChbkj/nlSHMrGt9fUyPnqLzYQbocTm/kg3MseqS20bru7FSW2vfZiempt+lTbG4
Tp6FQvf45emz1jOckb/AvRQ9Ay2hUu3aVhZ2Zrf3jgOqRx124a0Z/DDckadnyzf7tridSnyt
58W7nCgh5xguruNezzDbq4jiwaZQKyzo+nXVihRVmae3+9wPB1d+ELZyHIpyLJvbPTrEK2tv
n8pOBhS2B/R2fniAXZYX5KUXpb5D1qSsSnRdCP/sksTNSJamaSvQJzsn3r3PUirDX/PyVg2Q
WV04/FKH4Lkvm+Mk9aCOzi7OnUAfQ1PLFWmOhaqGe0jt5LtBdN3sMOkDyP2Uu4m3o4dD0164
q0Y+DGiLR4o3imIvpdqmTpuhHG91lR6cML4WcoSNlautyroYb6DX4H+bM/RhS1e97UuGUX1P
t3bA9/U76t2DxM5y/APDYfDCJL6F/kDNKPw7ZW1TZrfLZXSdg+MHjWpStfJaXtFtlqNPH/IS
pkJfR7G7I9tAYuEWABRL2+zbW7+HcZT7DlWP5U1JlLtRTiayshT+KSWnh8QS+b86oxonxsJX
0zYpJHeSpA4oOiwIveJARgKhP0vT7Sq1B0jOsRS2KO/bW+BfLweX9nsq8cLOsLtV72Dc9C4b
f1RCwc0cP77E+VV1WESwBf7gVoVDP++X5eAAHQ6Thw1x/KMiKLykaOQ2c2k2Bl6Q3ncUx5Cj
ZR8Mris7+ZZWHPpz9TAtEvHt+m48bk/AS8lgg9qOOKx3eNlD5AuzvSug+8auc8Iw82JP3ipp
q5yyQPZlLjv5kNafGVEWyvWgZFWrpE+zvOEqlTqxshO0LLqNw72ib8yEWWIDqeHBxjc24yAK
YYJXwy5y7Z2vsp1HuzaDCyjkm5MGbFxFQZ0f1B2MbpR3I3r/Oxa3fRI6F/92uOrDtLlWy4GJ
JUXcznZD4wcRMT5wr3jrWBKRbj00nkCbybDNhj9lonixE0C5c7zRJIqYikoZJgdjovet7Tac
ygYDXGSRD03oOqSXIs7YslO5TydbQdmLB4EGagk1NN78NtlCZTs2jsKyc+gC1+gBDOLQRCH0
Hn37OX3b5a7HHFdLVTzGAwmSNmMk7IItaKxYzyuovt1QPou8UC8xnpBM1nSWAvM5WZ/yLgmD
SE1cgW6/xp6riYJVDzeJt/S0v2mW3TJcemwLFodlhowyBYxW3+ZYNKV9Rl982y70kgVqSYAg
F0XeBw1Neikv+uyeyBuBJXiP9Vl3PKsJ1iMzCIe91hll38NG4l1RG+dBx9r1znTkTi4T8GmL
NncuhbGzAg3RVDAPfcu0s4PJf/fxoI3ROssLc8LkzLYbE+clWrlyPdXe9RKtbY5aMS+ltiNg
6QVdUxHaGyi3+CSQP7J7dy77++Xs4vD6+Px099v3339/ep1iW0iL12F/y+ocg1qvOQGNP4p+
kElyA8wnwvx8mGgESCCXfb1iJvDnUFZVL94Dq0DWdg+QXGoA0HHHYg/bKAPpi8utK8eiwnB1
t/3DoJafPTA6OwTI7BCgszu0fVEem1vR5KUa0xzAfTucJoRuiD38Q34J2Qyw4Gx9y2uBj2jk
4uTFAXYQME7lR+HIfDmmVblXaOsh2bNErWHdn47H1aRxq4/VH0oeycscPn8+vn78n8dXwsc1
dgufx7LsAGJXUws6clcdU83ueX+Pak8/wG5puh6TU13oOM7o9EEaaQ2eiWe5FnZQIqAf1J4v
azYMWirnS8EovRWg414dhPAbX0H9O5Bo3aX3lCpj+Bu8kmJaPszNudNlS3HRkbaSToMHguqQ
FiT1DfdKNl7LrdAybMjVBmdfeaGvIbHR4oCS1zjuUmh/tYMFCVTHqoLV7VyT4AMbynfngsKO
FFGv8JxOeikabSBZ7yh4Gz+4sn3tQlLOnuXUALZMZF+dqr4hHyfJro0BTrR4k1zxNMuKSk2t
ZEq54ffNV3e3M9WlvS4DDKsPnW1TtCAoS7UC9w99q+Tp56pzyIkkSksnzHG99y5tm7etq6R9
GUDZV9t0AMUdVkAtx7Sn74m4ZKJMnFBOpH1dNoWS4USDBTcFdeiiBt5SwOzMhramU77WsH8K
tV641gNurfq2oy9tsahj6kbUazz8XPFUhb16AgG/B0l+m/zvyykNNen5mI/JTB0yfjbdwfTF
EQNbagus7l2Z01h2PlgkFh6QK6J+D+rdOAShMSyPbZUfSkY5vsLlL01GVYZMXjnVJa7AQ422
1mcU2vbQwW9xtezbNGenotBUBnGorJAYmpzFaoPVsespXBhQydPaiNNmiwCrk5OFsTnjjT1b
b87WJBjjYb3MHBGic4VPbI45TKaDviKteIbOLbLhVvbveKRV68CVkuyocwGFBaRzRtdm2q0Y
sZsnnmDhsWcRLjyWLFheWutLH2ooLCAAbofs/tbxiCX3ciA7NZuqKLpbehiADysMs4sVyhDg
Whd+cNiLgyt+mTfd7ElR6cz0UZHIId22S/3IonapnNNhwLOdQdrxmxlm88HVLb9sttDKyHtg
O63Ft89WimLXA6OKTGxCGQwaOsziD9t3zrCuO35Ot46amUL63kFw2itNOZHbLxE49PHDf33+
9Mefb3f/cYdmGZPnH8PQCa82sirl8/JSyjF0EZk9EK2duGgnlq9WXIRj4csEgd4PuRf6FKK7
Fl8R4c7QIIuwYFWhGFuvsHARRnS3VNQc3Vw6ZC1yYTf+N5X07AJyO/HFrTFV1ch3UksrRPIL
BwnpkjAcqW9gYOZtn9LNMDv82ywrdwZGfl5dQs+Jq44UxivbPo9ch3o9LbVHn41Z05CVnvpw
jiO7PYbn72FriuuENAj5c0h6I6oKaRAFrfrrxq/5QMlRL/okCLJzacssiSmrzoOnnt8u1TKs
Duf8WXtu5Cjt2g/hO10ldVltEG6FHK1iJpZFtgsTlZ7XadEcUbs00jld86JTSX16rWEHpxJh
7gnvHu3hgFZ9KvordK2aJVJAtejOw02YOC6th2jLGBoPkq07V4S3gpXj1Bu4XGGLLynE0LIT
lO0c9CFPTXP2SAeq4y3taPMxXrq+zW4HMqw9oBeM8sKgqfuyGe71mttUJ/5lnbJBtSvhxUL3
X01mrWzdnQPHvZ2V4Fq8lbvKv+FpjkJNs10sbm1kCcDLxkOX2eolQqjJCeVukuy0xIeyHDuK
xg+Maj3L9Jwk5C3/DMoPK2aar9OunkrYD4n8Lngh3VqoX1a1mdEtWeq4DnVpwcG6FLHz5LYd
H45FY7auoGtzhwVe4hq0aBwpGuyMr6B1dEYRWRj6Ib8TsI7MbBgP9nGbp32VkufgiIJ8SNU3
Xkit0oeNb0SKgVoNnpBGE8loxBrjeaiUMtULUGSn1rcEc20wolZeHu0NImByu7rC+a96pvNn
lDohfzcapW2Y68e0JcKKU5dNiB7qRN0PL0Tx7jwc0QkvGZMbRSIOGu1jpFHnCLwSWeHGXmDW
fSiqZLR1+QwbU/m+7Y+u59IvMPgYaCvqLIhDYxREQcH00TAaMq2pvTD6t7YUjidtuezLbij/
H2XXuty4jaxfxS+QE5EUSWlP7Q+IpCTGvA1BSvL8UTkz2sRVHnuO7akkb7/oBknh0qDmVKUy
Vn9NXBpAo3HrTjOziG2ZBZRhNGDriPhgHZG2FOrrnK18cxAPxEndaVDb9TWvzVwOJ588sQbs
odwqcTv36S94G1iJJ46NbAwjQZhi0gtbi5uqBHBsR/f0KjjQNHD2NSYWnZJApw4z/ybLaENy
ZGsgwOjgQHCWEecrkSMruozejNM55fJvpvCSjee7UliUhT1sRg56/1LnGZajJDadZ9BoXWUn
pm84GhxiYnJ427EZA/fgUxjxef5PMPI8WITU1QSji6mm/NRB7fqqjt+u1LIRIlBPTEYoO3WO
jxroBmISFwX8nP07Wmq64MRg8FnTMvj9M7qpdKuYOucGwHvmLTwrJSHrnH0y22wCZOefS5V7
vl/YyUbb3KwvkPf5liUGfZOk+oOvkRkOYSOb3NQpSdynVDU60SaOTcWR5cDanFnTn7DbE+eA
4ao/voEgrdFNb9jogIwKTF+8WGzjwsRGmLmGGYhndsL7FW6QN2m+JeDhgQYJJJ+FNRT73ro8
rVdBGIt1RrJ3srZdGC3DkUc3iWV425o6rpFNL+NgQ2qyFvpqAWTysKvIUAzD9xhEHm6YHPc5
7wpcbOpmSrMGFqMQxkJGKM8KD/BFSvaV/ddk8IYHT0C3b5fL+5fH58td0vSTN4/h+eCVdfDL
S3zyL3WvcqzmlsP18dYlqJGFM6IfAFB+IvoAJtoLjX6iMc4dqTk6DUCZuwh5ss0LGjslh9ZZ
Pn/fEQWEB4qwdk5LRoNQs974EOhybBotN+xbGM3x9D/l6e73VwgXTrYKJJfxVUD661WZ+K4r
QkuJTahbnAz7uPQm7Kgj1XqATTvHo7+ruW6qCUmMln0e+d6CGnS/fV7Gy8U4JB31vs/b+2Nd
E4pQReDNBEuZWESc0w1VCcveGshYxJx+i2my1c75aeSCm5JFAXeCess6GXmwiYwsnWwz6TRC
CcE90RqN0laYbkKVujUPfoY3Yrl8sFpkB/IwWGe+z7Jywx5skZbd/XnTJQd+9U4N3ULt/ezb
8+sfT1/uvj8/fojf3951A3wIxpD3xvpFkk9w12lrWf0K2qapc3Nn4upqweXKoEtLuGIkjNnO
3DrUmVDCtj2hMeWVu6wCdneeKxtucRJjVOGAXiE7hRvPKxfcpCUFQY7nvssLcykpUbRrd0Vv
rQyHwBknpeCzdcQQG13Nxn00FwPom84yk7DXIVtnegq/Pv283Qe1XE+cNrAQIDXtYCvLr6zy
wWnLzJgaX7LZGY6IyziZcNGEs2N8YsSu8BNlQc+ieowsi0UaXmS57sWUtRou584tH4F5ePFh
ZDQ8A7E22af3IcScNkCkPTp9V6b3eO9jZe3PUWzr9XJWsLxkbffpdu1kgmOhiWSm7KDKs1l2
9SZry7qlrjaNPEV9LFhlLUgQwmuOcMFrrtRVfaQ+rtO2Jm+YTjZ5Ww3RjJ2iFaudjBOydbCX
OYSnPZbeypt8WNF2VXt5ubw/vgNqTCqY3n4pLB7CdoS3nLQd40zcSjtvCfsKqObFcxs76wF9
NIbe3oVErN7+zFzNG8qsAyrcoKby7KbdMd6VT1/eXjFMx9vrCxy9YbiiO1jHPKrSISSNwchI
O11C9ACVX8EIaQmLU8Lplqel1lg/X05pjjw///X0Ar5nrWa2DPC+WubONzkDxyqnz38U6IYG
7KtwoXMalcdi2CJDMqUFMWeW4u4O3BWDSDKq794ZCRDKxgxHpXjfV4dHd/lbDI785f3j7Qf4
G3aNwi4/ZxBuwNbrEuRzYH8FsRh2pinL1WKRi6qUHfIqyeF1wczgGbnKhHFiZh7hQ0IrdLjP
IpaO+dyCGnnKZEOlP2DSNHPIXC4c7/56+vjTLX+yZMEYX+5W6eztWIDwfc45O2gj8af7hJna
FM/OymdExHLAMvk1vEgdj/AszubEXccDGp9QrexMWKTAdMqLvDrRWmzApGZ3rCIUPsfK/NRt
mx3Tc/hscX8+WRydacrLZTRoFvF3M6l3qdWsRwPTLF4UsvKk1Ynh0KOF60BPmgEYUdwuy7E8
7/sNITgBMOLQDRODV46LeU08bn/Syhj3I71V4DqVHhjWAbm8kAiI7+bng5NxAlsRljRL40CL
+nsFWE8tvUbMC2LfjZiezi38Vk2QLXBkEJu7+Ffk5ESiGWS2uID/RHFj806AisxnsPqpDNZx
7ExCYD+ZhKt7sB5CTTgQT3XDbSLn/XEGdGV3WC0cPR0g15H6lYPsG9zzYjrV+6W3mDP1gYGs
5P1yGdL0UI35pdJD6xB+QCLSg6rKsKT6ENCplhH02LpfIJEwcISYVVhCMmz3Vf8mYeRTUgYg
IMqzSf2V/MLKbdOdeeI6mQOG5NNisQ4O5BhJ2pqf8XR1XvkmPAgLPZqpDs0JX3KQDSch+kmM
zjOn2+HWUEE1IwIh0e4D4FIdEnYfEV955nsC8sTBTZ5gfhcCWKJbQlr68Zy9hwwOScSzgogt
DUqynU4r8+UUxRd4gfuMfuRZzukoZFiTNYkLj9ywQoj0HaBxUEoHgZULoDbQJOAYKxCv60b9
T/5iuZyzYoEj9olF9HC24jSSAPfDzc3RDnzxwmUfF4TiwvNcQhZId/ETql+eC5P0gKpxytaL
kGgcWJrZ1OFZi0M6GY+9YK6PCAafmkTgCM+LaLpPVFLSXUNuQOctjl1XRpShtk8ZdclGgajT
ThxRtHYHh1mw37uYVcA5Z5usKDKis5TL9TIkJ66iTvYV27H2zOc6Ywk3nohSyx3sFSFf9972
gBAdBpEgjF0ZBZTuRCRcLB2I6klEA9a+qwRrn+hHA+JKjbTlR8TVyyacp8dZdSQZ13NTyyAG
lxTIjfiSl6u1F52PSXr7CEFlHgKNU2k2SelFZCgBlSM2L2IrAG1RI7gmtM8AuGQ8wvNDGbhW
kSN1AcylDvDN1IPFghgkCEREow3ATLYI385WtAUxmkZkLn3Eb2YQegufziD0/L+dwEzGCM/n
K1QhqdPbQpjnhIoQ9GBJaZW282NCcQjyilABgrymcoVwVVSuQCd0jKRTJ5Gdp8Uk0OgrSlwS
MdWHxRSGHlnLMKJmTKCTUoSjSOqscjyiJOiU2Y90YvgDnRoLSCe0K9Id+UZkO4VR7Eg/JvQ6
0FfEekbSXT14QG9p9LaLF4uf4fK8n+IKb3QC9+Ulni9jSvPhXeOU2jcfEVpRT6hyLGKxoNsx
Jv6fb/OZq9QKc9nP7YUqR30Og9l9LMxLPyADLagcoUcOQICihbXb5+SjvVooXMuQMlh4x6Tl
bScskHDOLhAMoU+MNrjCtI4jYvxzOCJixK5ox7gfhqSFihD5/FrlAKdvjo/j2XWz4AgXlEoG
IPaI3ouA+RhrAKKl+bIHAYhQ7a3JAm7ZehWvZ1tYCfF8cwWu8t7qOVfeOdt/4go884GHDvsn
quoq7FJsOtP8BH3ldRZGLIQCckUyfJsmJ4/0qTPx8YD5fkwsdzout0IcSEhJQB7VkeU5FtFi
Ob9dgKG7Z5etMrg3USQEqIMLYWevg4DcSUFoOacPj4Xnx6R4j+Vi4XzBKBk8P1ycswMxdR9L
+xb/QPdpeug56cTUCnSPbAV4LT+r5wSDEdRdQWjPzCoDva2LyFyzui85QYB20kujykAtJ5FO
TjYY833+DBZZ4psss1t7wEAtJJHuEtO8/kYGQn0DfUVOKAJZLZY3NenANq+N4BoU3QtXa+qY
BemEkgA6ZQADndr/Ajpl0CKdHF2CTo6K1Zo+B0HkRv9cx4QtDPSVo+rUPivSHelQezxId1Rx
7ch37RA5tVOEdOv544RQnh40BrIq6wV1wgl0uorrmFqtAd0jW1HQ6eHDGYQ2n+3onwsxSUTz
s9BnvBOxjhrn60zgKsrlKnRsY8XUugwBakGFO0v0mW2ZeEG8mjuPKgs/8ig7rOyigFo2Ip0q
BdBJs00gUTSnlirWrwJqiQ5ASA31SjoAoHJDaFbykoOosgSIcnQNi8QKnxHdqWjAzY3oOvAo
qyVuP0qGwxW/BifTLqZo38m1lutWugLrgFx57VrW7A10ei83vgjOU/tSoyAqnlDy9LzBGz0P
YinSZtWu22toy47qk5J+T16WhWTGB5+DV0/+/fIFIgzCB19tl1LwBVtCrARHcixJegxgoGYv
gZZcnSLWaH7UJlKuXFhCIlcfFSKlh4ejhmCy4j6vTFpXN+ft1qDmu01WWeRkD5EYTFoufj3o
5UnqlrNce2knyf2OUY8/ABQ9jRWFkVDT1ml+nz1wKynrYa8KNr6HnuX0T4REuvyQnflmETps
cuR7wDeWjrRFD9rVFQTG0B0cj1QhNMeXGcSlMySaFawyq5YVmfEcwYCpqwKIfBaS0uW3y8pN
3qamKHbblnrvgFBRt3ltdqd9DW/RlbTxt1WdQ35gRZrrxF0XrYJWp4mCkoPh/oEKmgdIn4Bz
80RP5sgK0X31Kh/y7IjRRQxJPLTo61lPIE9YagwwzW8jEH5jG/X0CkjdMa/2un9iWauK50Ll
kP5RgaFImvqYGbIoMqt9iqyqD65mBjmAotGLNFLP6W8OQPxotB21CSG7LKBtX26KrGGprzU1
QDthzUqilt5xn4GHaecgQDeopehfmV7KUrRkW1cm8WFbMG7UtM3kaDN4c7gJU287XbhlDW/A
zGFR9kWXyw5oDL6qoxYDEmnznclety4XDai9WAUO4MWIck0yTVYJYVSd2QGarGPFQ0Wbdcgg
tK4RmVBFhVrBGCWJMY6bFiJJmbm14PszdY28tk4SZohVaHddHyBNPhPSGWFuuL5Wh7AoptJA
H/JFXpnJdRkrDc4OOlcGz1MM3r5qClNntXpUMFQCEDuIcefEgY+FfqsfMLGrkaJQjS6PyiB3
DlWhnHiWpYby2AsdUVqp7Nued9IplrPVe7Bfzg2nbGPE/e3nrK3NtI9sbkI55nlZd3QED8BP
ueijThTyA8G4GR5SsCFdKpELnQleLvuNWeoBke6Bh18uO6lojB5RChvAH+Imjy9RCAsOTbie
b2jTUjqkMMzLRiUMHKPXtyEnM8EpWCqZC9z+hlyUopq8MoGXj8vzHbj5pZPBh78CthIjv5NP
Fsr0jm8lwO1HNuC/QcBnw0i+viigPp+8o6iZKeKq90muu/LXxWkFzERfI6MnW4Um5s0z6mTV
ngePI0WTw6qB6CsyqaoafUIqZNbCFMn4eZ/o7Wsm3yTUDIFJVJXQ5UkmnZqhD9EppkT59P7l
8vz8+HJ5/fGOHWTw/6D3tiHuJzjF5TnvzLy3ImFwYYwaW2hBR0FcHgFR/N0Oreo+6QoiB4BT
uAwErXMaHqiLwenICRwuYSPsshYI+lM56XWmq8XqREx04EYDgoz6eo6lrhquI/L1/QNir46R
tVPzLQQ2ZhSfFgtss296sifoZntH7F5g2LRJyTtXxbLhc114SG3rugORnLuOQLsOmn8Mk2yi
W17o4hnzOVdNUsbqsYOGgk1eEekBJmTLWhfW5aZgJox1a2ond+JR48hOxCHKq13K8mB2paTi
EI4B4RtSvvrkNbvjqfe9xb4xW1JhyXnjedHJbiwAgsinOsdWdHPwbuFOtR7b/xtFHWTuwLrc
hQSJr3mP1tCigdOxk1nW2tVeNBe+HrvNNjyPm2ckPcpP6NQVyFav3a1eW62uCaT3At8WPS9W
njc0spbhBIgGp+ywK09iqMJ2xaIIIutZmUFqm6RkZl5Ah4j06PDOKbs2qzIuZhLx9952FgS6
TXq1vkueH9/f7UdeOMu06LxCL/AxNUTVldP+VCVMuH/dYWW7WqyPsruvl+9iKn6/A69DCc/v
fv/xcbcp7mFmOvP07tvjP6Nvosfn99e73y93L5fL18vX/xVlvWgp7S/P3/HB4LfXt8vd08t/
XscvoTL5t8c/nl7+UCKoq9o9TVZquAVByxvD15mkHagRd6XjK2z+7xUBVsJ8FG3r6dAeolXp
nRM+6MnwNxK0Arxgh04r7h5QZdfPgNhnUtJpE87TxyTQWxgosuRGKRDYsXSX0SFmJp60ZxC7
tMisjtcMvjTuds8/LsN0qlh9ZkK1cf9mAuS4ny8FbNmBY7V5rqv3kBkBneutFaV4wnhHEMGb
h0X2bcooaJTO7vHrH5ePX9Mfj8+/CIvjIvr618vd2+X/fjy9XaTFJlmmF7QfOGYuL4+/P1++
qmbzlL6w4vJmn7WM9j058ZFtRrCZ7pRtlq4FV9RlznkGa++tu5nAQUieZi7Jw+QZR8ZUJYme
WIYmZv8c+FGkVlUIPtmVkdOVlLsnQ2NgE1xV50TXDW1St2ZlHhndQZD8SB+KLO273pqNeXbg
GXXTWVrDu7rDDT4t8cKetIY9ZvFvnERuBZI8YABBJ56nuJXmKM62S3O5w6xXDE4QhkiqVwSp
53IrbFTGu2TPWjXYK1Y9F3b85rCzZsXCZUSJ3iiWQ4d800KYecM6q4+sFVatQYbZ1bQuuego
OOtu81PXt0SHAUf7W+oGI8AP4hPTrv6M8jn51gTfg8fKjR96J9fKYM/Fykr8EYSLwOwdI7aM
yOeUvfRZeQ8eoiFUSGbNUGJYspoL7Uk2OSxZpHWQV0I7k+Oi+fOf96cvj893xeM/Qr/TxsX+
Qa34qKxHjCh5VTdyVZVkerBLVgZBeIKvAHfUGVbb58Om57Y6CXQf0LIL7FpmlsNa4RNZDY+e
oHbK9seMULQyokLSO+OgpEazwEYG9/furyCkYsbncBoEYZ3xsNIn0MEuw1hHm367hWAQvtIF
Lm9P3/+8vIn6XtfPeg+4rjWIVVGvRjfBbFubNhrPBvVq+hqWDTjgik/meCsPZ6dBhmBgLOp4
NViPFlWkgwsKHSmhkL5O26QJ1uebYRcRO2DAXmWd78fU2bzSJNJdhNmVh/ioB2MDRZ+3+7J8
sHcq1N5LtqeuVDboXZhrh1fYpmcxyxQbndifM5hXjGWX6QlJfl4lpUnKCFJmkXi/EYrbpPYs
8SjaGALWhA6JSdLDdUia3PHUSOQCSv65tRetAx1q656MR6bsJ5kGEdzmbSsxHbu3K4cEs5Ku
jKhsAQHWLBvjipPxOwwebBlXBmoTubMRXK5honBhA7oToW9kmDkdLAtUQYe2J+fHwYj//nb5
8vrt++v75evdl9eX/zz98ePtkdiQNY9TcFQ7HGmjZdHtzc4lSHYLWxyieV0axh6DUulsrSbf
9lUCh9zO9gbZj1OdniI9YHb20Nqdj9kmYaVZTTiZohaoiiK7Lfsxo+6hUd9h4M9zlzQlQVOj
lUhi23mx52kNIQG47kVe6lISg5tpuZXPFmY09daxJPcJ1zdYE4igltCrNPnJPg04D3yfvoAy
FKThYtpaUdeCJAPvRHm8aHEyC4Rxwxr5dnrq890/3y+/JHflj+ePp+/Pl78vb7+mF+XXHf/r
6ePLn/aZ0iC1Xhh4eYASCIdHxkqr/n9TN4vFnj8uby+PH5e7EpbcxOUqWYy0ObOis3fe7KI4
UtQMFbGuPPNj3iXKLndZKn2uObY8+yRWhgSRp6t4pd1dHAHcqCBbVqSDFr+llQTwK0/Ff0Kp
3Dz0gFSsbSog8pTecAVsdPh6rceVCt6nxadOSLUIEKr1OCVAk57ItFkVyKxIyBNblES+FfNj
qqczbEqb6VDhTfW6B5QJKaXS5km9PydW4cy4rqYw6a1xAEcXZE6GZBOTTwYAO+QMXOiVhsAT
UXNhzHf7vkqz9mQWlnydhwXdwz+qzzHMpN8E6p11LDXfJ2ayPdQzEkPBVdohBslZ07GYb1+d
DFLyaW9y7fknndDVfJ9vmJ3e4Off6GrdvVni+khvpZVZybs8uSfqAYexQ1yYgYKHlhjpUbu9
NFHPeOmIuhJ1ZcEbREld1IoVjfCmhc2ICjZ39kdYzlc7PAnEoS447BU5fsYqMbuEa2aUElyx
ai/lJfXoL0hnSbIEEPPAXxkpIVW9Ai2Pbvu2zbkYwFXODAhDVi6MVJDoU5yBTQS/TKaAgbz2
qYkNYZig1TDVSMRjs9PJbqx6I7rn+VO/oXbAVJaWfTLSbBK2hpqQVHk9QIcIUtEE6+WSIIZm
ukUTLtTV9kgMT6fxaoON+Z7V8Eh2NjygkdU4zSpU/YyMRC006LXyoS3mgY4SIAffxBUFzoaV
AUsx9nFvD7vmSK+oEGyzXV/ABqKbBZxrLWhnT7K+XRCunXKruNleYsl/2ui3/eTA43niTKZL
WBSqIa4ltUjCtWc1vjAy4zhSX0pNQyn825JP3fkLSkf/l7NnW25b1/VX8tg1c9ZZluTro0zJ
thrJUkTZcfviyU68Uk+bOJO4s1f21x+ApCSQgpzs89LGAEjxCoIgLrqqeL3wvXkmnE4kMvAW
aeDNulNqUE5eb4dF6RCmv47PP794fyjxqlzOFR7K/H7G3L+MSdXVl9bG7Q8qxOmJQvUnd9HR
G/2bFHa+ar06sumAjcamu5/uYIU4fd/I2GXMVQKju+nZbsiV3JlDoBXhQQ9doTw9Vc8Wv+7e
fqhkyNXpFSRcm703w1m9Hh8fuyzfmM24B1NtTaMTo/K4HM6XVV51RqrGZxV3h7ZIVjGIcfM4
rDqLvKZoUtj276uaVBSbj74XwsV0m1Tfenpk2CtffW0VxVgKHV/O+P72dnXWg9yuzfXh/PcR
LwLmjnn1BefifPcKV9DuwmxGvQzXMonXn+l0CBPE5xaz6IpwnXDyqUUEHAeNCJ9YZKE8WtY9
Q+eo7UIhQPhI5kmqR7v2Xrn7+fsFh+INHzffXg6H+x8K1VpHchR1rQn8uwbRzQ5Z30LVjsNI
T0xHXSrdwrbFnVqoposg4UoSxRn+VYTLZG1dgQhZGEVmHi+3BTMUquRBfDVZtRL87BIiWJi8
PJqiL3xD91E1uSihIR80N1P5p4ptqRMeNfXg732542+dCikT7v5A6k6KnCaRczF7wU+IRjrP
Izwe7nYVEW5jDGXWsfREaNsKRaN1jngy2NouhezLL6yQYbrP3Np26NRljV0ltEDPDl6EkcuU
GWeH7wBqvll0jTjlt7VQjz7E6P1WQYliTRduAfo3XK238X6dw9X4Wwcn43SB2gPrHmtwwMoL
pwNmUzutJM92m515AWY7js+/vHfBxnohwIgpdmAUBBVRuUX3uaTk8m4gRQRb3FC4hUM2riFi
gDWIXAb251FhR1MzEhQKcbzKFcuVG9bFC3HZYkwdLbcLO7g5/oZpSkCQ2LD1K4IMVg6PVWyn
N/s0ou2jUENQzOMO2W1UkH2VLMSWLKytMsfAki4MnWWksb9uFfvGVPn+9fR2+vt8tXp/Obz+
ub16/H14O1tZGMz6+oi07cSyjL/xNtlwJXCZOchoccQps3JRxXAKqNerddzY7iRwMXk7Gys0
W/4K7+8Pvw6vp6fDuVYq1sbrNkZTP9/9Oj2iZc/D8fF4BskWjkOorlP2Eh2tqUb/6/jnw/H1
cI/70K2z3pJRNQm8MbuPP1mbru7u5e4eyJ7vD70daT458egVBH5PhmPqyfBxZZobqtbAfxot
35/PPw5vR2vMemm0+eLh/O/T60/V0/f/HF7/5yp5ejk8qA8LtulwoQuoKvqTNZhVcYZVAiUP
r4/vV2oF4NpJBP1APJnSaC8G0ES4aZZRX1XqS+UBpCm8TH24pj6ibNw5mMVet3Ex38sM42/Y
htuZFc5G77e9cqC1+UwU55hZIF6WwKK3vAisqVbKv4xlX4jW+uOtFUtLY1BVPHSBTcIqroRW
Nb4zwL2II51vuH0pULYjW9aXTZf8npe2yy0B7yPBZtygJN/LYGxFXaTI+eY7j4iE7fdPcWnm
BN/upyp7siNTwnArx/E3RmQJnx9eT8cHm49pkLs25nlYEsOLpdxjuot5ntNXw3UCUpkslO9B
a6IkMt0aNNLoNGF59/bzcCaWwk1LHExb4S5JMU2tVGkFmblZJHEaKWuZ2PJAWGWoVMUzR7rO
QK3hUyEwJBFT6026JOamt8pp0v5pxFqV4qm1StaoxB8OBplbQENxR/Zg2BrRsmqVBOPJwJRs
Wi+LLAGUVEhOgb+IMIvn0PcUqSX21io1Q7Ads6NQP7zQca1h+yIp+CuHWJVwfjfG/dyZn8Vp
Gq7zHfX7aG9O0Lr9Kq+KlF4rDNwWjfK0AKE+9yZcBL5VCOK0SK/bOuAHGr+neX69KVpwTYjJ
tmE5E9FdK4ucShqYUWrW2iDx63T/k+rOwjIDrv734fWAZ9ADHHaP9KqQCNvMG2uUxdTd4vVJ
/LnaSVf3Kxnx7dbKx6kVAsdGz4ZTbkgJUXk9HUwdoa3GwaIajXjZm1BJkXEynkVRJD1tlMmI
jzHv0Iy8/go8zkbTJlHq/Z7i7KYjJPPMm04H7ASISMSTAYlp5eCs8NIUJ5Ff7WlaboLFdMGL
NN5hGiHuq3V+aA63jDO4tbMobcTGoqSfFdLz+GJ4QKfXcDkjjQX4TV4mN9ae3KfSG/jTELhB
GiXuTaCuT93dL494cZuxTcl361D2VLsVHyz0LCt8V8dGZxlk6Kl6nGIGPNnFEVRAX47U0Cgj
Helu/vwW5mc04I/4hmDyEcHsAsE8TK7DdF+xOwfxIvMxamy0tXw/atS0J9GHwe8x13p/zQq9
X4bURrFGXWMyKm4MkwKkQ3eksERv3veaYFX63e+sZcEBGUpZ2rAS9sEc49/07C44pEfeWGwD
5e7Es0Wg4AOB2lR84CmHZnLhM5PZVGz5JyObTfs+YVBljJb2KFEQ5VW1mdvErfzRoj5u8TxH
E3NynO+EOVatiU2y3TTj3wIbNBdJoEE6s6tgN/UJnTw/Hp6P9yrLXfcdHgTfeJ1As5bNK5Gl
GW6xOksHq1K1ifwRsbx1kfYEutjpR/XvvMGgt4adN2VvMjVNJTbN8DdhApjBYRfYRecujP+r
nvGQtHMB6Egx2eHheFcdfuJn26mg7BevqRhrhBVkKh+znfH7QCOB/UJ7Ptp0hjbJlp8nxsvq
56lXyeLzxHG1coh7SedRAaSXhwBOr89WtwwiXR1PYUfV6iBNaz7TSyDujnYv6ddiqUf7Qsvg
wrMUiz7xoaZxV0Mv5fbjD27jtbg0+ONJT84nh6onOrRDNeNDs1pUkzEbRNClmfX0ClFm8fV2
StF0VzNHOvWCUc+Xpt54cgFllmxvIxTN59aPIm2WRj9F1j/ZiqBdD31N6kkT5lCxgS1tGpAj
+loCKDo2fZdDi60Szkuzv4ZPv06PwPBfjP+LpY22BPll1+Td+fTletlqb5yYRFTU0l5E9lEe
Z/HWd+WF8nvIx0RQyImc+awlpsJOw0kQDu2PIBCOdg7oc8Cg0yAF7peSNZ6/Ojbo0OOrnfeJ
7RotBnyx+MIQIcGEs61psTO2VjafUIv1mNGadadPgdlreIMdcTWNuSnCuMjsB/q4cENweT5m
U35gZx+MgWo6UyzsLQao8XIQOEtNrmChuh0WYYkPn/5eFEseFfSg0L8VfuXiGl+VHQLjvwcl
95nsXIEsbFXw2CjZ8uyrEyBOBmI8bEwgjUBa40bFFp0ROZyOQLAPMNS8hW/NAzTFkKA5OwFN
NerU4+LHH3xnNLRaeuFTQ/+DqsIyG/c1u0MLB4FUQyvY+GqGDAjyjaVqNIFoLjdZE/n87CBu
GPR0RU12ski2nL5GFmXUU06hpMCMY71db2mCsKfh6vP2q1ED0gtfcpiiVC5763HS6YuFn7Ja
yw7ZzKrGfFxwT/hki8DtKYyKNHWVLxd9DpAgXWZ48ePU4LeySNbYa6LxbmCdMB8E5Z7QHA3m
zrn4UTVhreaMIqossIP0yjjbb6aOBoxIL/L0+/X+0L25K1PJfU4MHzSkKPO5rWuSpXD0cUat
1ZhbWi9ZqJXSGKaPxlulWxIT3CnXgG7RluZ2Hxbz3roXVZWVA9ihncqTXYEss6+genkdd4uh
ZrC/NWXU301YuUOmkwAeJTBlfcX0S6xjxLqtVKJ4B2pCn3W/gcF5MZ5eVYne5oUymyF/7hbW
sx3Nd/hJ3JXs3ksLOfE85uNhlYZy0j/QO+n2QwVX9bs1rWHJl3FvTeh2uVQRMmBJuHWaXhQJ
plxa2a9fBgc8I/B5Zmko1E7bpwXPt9SeKKgKNCzNeFu3nRa6Hw/nCW8eAMeX2XyymLJBMIBi
O8lQSYQOO+SjVRan0NHKBcmqMxxGkjAK/+bj6gGkyi4sdPUSsC8L2T+v1TWz2PHQ6Sth2vQV
X7zt9suVGQuRcdCs2pBBr8WnHGaLIa6yjSUtNMPMBiw2bUIbs7CyrBHrBbWzbD9W0wD3ZVZO
eYZfo137JBtf8PZwuqEJuhN+A2mk6j3F9FrF4BTcuqkEDK7XZR9lIsWW2/+wsS4shUYV2rst
NR7anNMlWMMtoIo+rUxYoI2wO7qXc+fsagqGSTrPyfMRDlNmQeo38n222hBzpDILgWsHyDjL
W1j0qlCDbkxqTF3tBk2rGBgzgrlzW6ny67ra+VXK/06hBm960fFvNWjllBwWAr0niH0PnrBF
JDpN1OwKSFmvTtifIotunEFSchtcSpbWKKh961avWtNTuzLqhKYS0VGDWltlbciC9l7H+ytt
BFrcPR6UG0I3nJoujQanywqDqrr1thjMufERujEDtiQCl1JxWN4g+KN2u7Uqk5SeKGI1hYlY
G0pZrcp8s+Q8J/OFJrdEEvQa7ljRuuu3UwwFj0HSW9DceTrFKLzXcDwpELvNZGgffHBc9Rn7
ymAGlxVx29sgRRAyHcGV3FdIr1FTwhgSPp3Oh5fX031X/i1jDOBtHko7sL3QplEO/9oWGzgI
scwT3VtSFNS8kfmsbs7L09sj05ICtiBpBP5U1uS04xrKumdoVNsOC6wGZakixb/3YRBwASsz
GqiGoGVmObZojLa8ZjeS3X+yHPLNOrpNGNs3mYurL/L97Xx4usqfr8SP48sf6GVzf/wbNmTk
mC0bHao8ie4ga+tKEa63oe3WruHq0SyUm5K7fdehADDLT7JeWPJk6/WvcWzHuZbpJiszEb7F
Jg4SWmvB8Z9am6tFyXWeF7xUqYkKP1TlL9FcbHu3ia10MfNU5qPEitXXgOWiG05m/nq6e7g/
PfF9ri+WdcYPskSE9sZmbSUUVoempkIE+y1tOb0r/lq8Hg5v93fAyG9Or8mN06D25NskQuzj
9TLpebyNijBEhc9adoJR1lbWH3xNO+X9b7bra4MaY3yVZ6vvlNTv9nDn/eefvhrNjfgmW/YI
ehq/ds0V63fvbuWq9lgF9rxKj+eDbtL89/EXOhY2e5ZpS5pUsdo/OIhVmaepK32ar36+du2T
Qd5zGIZgZCKbkwPXB5mLyKh43qwXZWi9hCEU48Xsb0tbEWSYMP/Chsj6xaz1BuEaqZp/8/vu
Fyxed6fYIhmqwdBrLOLCCGoeDgfXnobb01A5J9EkFChNhXCoigh9XlMMrO8Q36AZbYOx2wTn
ACfO1LgicuqSlu9ifbKoQ6lLqLzh3d7IrPCLDkx2ajXs2671Vqyl1CzWRoRFSU91dj7sPWqu
o5dEs2VJNG5EYItAskuI1Z/in67uv1Zhyy0jpQEUpa4LKm0VvbZTW5Ht9cdlB9WaPIt8U6T0
Aql1s7Kk6WZUAj1Uy8C1Z5unFYZbbAtaI6XIgg4ZLy0ifU/UdaWn0kdQ56jZHX8dn10OaArq
0IP7rdjQKWZK0L59r2K6dT8nnDQ3UrRV3y7K+KaWTs3Pq+UJCJ9PtHkGtV/m2zoHYL7WfryW
0pSQwVbECy8Gj+X0rpQSD1cZbomxPkWjO7EsQtGDxjtLso3dTnSCLuEFwCwj42lg+k7weG+n
SHpRN8rQTrl2HPfxNl4TfYIFrr+9zkXxAUlRZJs+kmaHRgvCL+NdJZSlmz70/jnfn57r+PSd
gdDE+xAu7V9DYb2UaUSZfEdDTqf2/UKGsyHNU23grte/AWfhLghGnF1uSzCZjGdW/F2Kmg55
UwxDU1TrkTfirWQNiWay6GGRJZJPI2woy2o6mwSc87YhkNloRCPHGXAdGLcziIAAJoHR1mgK
ejgvcpp70ehGI+BawoXGc6K/MMIkyHYLctbMK2+fgqhXkQdgfHyKs8RKcAUwBPHKVLzAL4uM
H55sC5dsXIJ93jeorUWd6Tqu9oJ7REKCZGEZ/2rLyP06zvp0Q9LO+hWFU5D9oqiEnnJnmVG6
loWw+611UItM+DianJxuVNCZ6J5fo6Hv76OecTE7VZas+UtCFwT8MPF9OdhezFmwDmnAwrXo
Txz9WywGqwK5f5O5H7tGx6u95a+OYBN9Am5cXAv1nzS4MSnTIVVflcj2GxKSJAiJZJ1QiZfw
NYUpy48qabDmtU+9DsL1Xop2aTDx3TTi9QbKwiFNbKF/K+9QAhPAZlS8i5SH2vRR6Nv54KMw
8HjjHZjMMhrw2niNm3FHJ2I80mqSZ023J7Dje+DAVjUK3fCYSq93MrJshBSgZ9iud+LrtTfw
LMOpTAQ+a64MF4LJcEQsgAzAHjYEjsfWwAFoOhxxppCAmY1GnhNE2kBdAAk2kO0EzO/IAox9
lbmdMI3raeDxcagQNw/dQ+f/74veLNLJYOaVlqURwHw2tRMgxtTrSP8GHgsSEghDJfr+phZ6
ZgePCqNE+fWEbMxuo4EJIysUg1Kh9BRQ2pUwC0eRb4rVmF3hD3adqgA6nbqVWS/2yl2k53NC
oMm8Z38pCme4G5dFSCOcx+ttnOZFDFynikVFo/zVVxRKjo/BaYlikQXGAyzb+SP7i6vdhLpM
JevQ3+3sgrWO1gZmu0lkg9JCoPORXb+J7e5QVsIfTmgcOARMRw6FiudOnnV2XjDm7FXRRXDs
keoyUQRw6tnqRG25b6Lu9kwKpRpN0PB3Zw9tvN5/9/SsU2kIVZUyLC3adbgB6YC8qaJlgV1Q
yXVbnCk3EJiJnDvF5FW7vFtICYNJD3zbAwewxSG0bd63Mu8ZjXI9qsbe1F34jeiue8yJI8Kf
uAtBJSlzQGoBYfoqfRkmF14l8OiBoZyxgdMIAgiKFjLKWGKNsWZG2TWJwdRzYRLOgpEN0xkl
rC9Wt+lwAFfszK70Nh0jVO9dEq9l7A3sz5sr8q4e1v82jMfi9fR8voqfH6i7EJyNZSxFmFo3
6W4Jo9B/+QV3aTdrfCaG/og/EtoCusSPw5NKYSEPz28nR1JBU5V9sWKSpDo08fe8P5PqPIvH
U0ukwd/2WSuEnNJ9n4Q39hIoMvRQtG5mUkTBYO8GBKiRmDMbsxvu5VKH1mtWrwwsu9vt9+ls
x45VZ2zU4KyODwagYmaI09PT6bmdPyL6aDHUzjDqoFvRtU1wytZPl0cmTRXSRA3RD0GyqMs1
bWoVMR0krRBkMVrhew/OzIgJzaJXNizyO700eTFiNBgTW3j4HUytyDCjoYkM00JGs4C1yIpG
6FtO6xrPxqbB5Kkhr+Dw5U/ySA6HPmc8VB94GCisPSLGfkCD0sLhNPKIdwn+nvpUuBMF+uZ1
OFrYZXKh4YdPhEMBcDSaWLbmmud0utOEvrkwB00Eo4ffT0/vRllHl0QHp2NPYmqyw/P9exNJ
5z8YfTOK5F9FmtbviNr2RL36351Pr39Fx7fz6/FfvzFyEP3GRTqdJeXH3dvhzxTIDg9X6en0
cvUFvvPH1d9NO95IO2jd/23JutwHPbRW9+P76+nt/vRygIGv2WPDxZbe2OJq+NveP4tdKH0Q
DnmYu3QJa1BHecAFSsuKTTCgkXgMgN24uhq8X/EoTBHtoqtl4BsHUGeZdQdD88PD3a/zD3J+
1NDX81Wpg+U/H8/u0bKIh0PWjg+VdAPPCjOuIVaCALZ6gqQt0u35/XR8OJ7fyUS2jcn8wOPU
gtGqoiL1CsPtDHYWwB/QxKtW5nFMikEDk64q6VN2oX/bE7eqNj45BmUywcvhO/3tW5PT6Zfx
SAYugBF0nw53b79fD08HkBp+wzhZCzjxaMAh/buJQ9Us11xOJ1oDwd27s93YunRs94nIhv6Y
TiCFmvoJBhbwWC1gS0VFEczKTmU2jiQxybLhbjStC+Ohw+keH3+cu3s8jL5idl3Ps0+ozQ5W
I6dXCFNcqOSISuEAGRC9dVhEcqZj6Lf1IWzGOrqHchL4VCyarzwrDBf+puepgMPFm3o2gJ5h
8NsKhA6/xwPrKoGQ8YjXDi0LPywGPRGxNRK6Oxjwet3kRo5hvYcpG66vlj9k6s8GHgkob2No
AHoF8fxRDxPlP0QI4E5vqSG+ytDzPU67UxblYGRtTNOoJkZ9+1RflaMBP3zpFlbHULAP3+EO
+KHteG9gvBPvOg894PucTVxRwQqz4tMU0C9/gFBu5BPPCwLKYzxvSHlOdR0ElMnBNttsE+lb
NAZkb9ZKyGDoWbFuFGjSo8syg1rBvI5Y/YDCTIn6DAGTiaUfANBwFPApyEfe1CfPu1uxTtWo
0xBqChZwI7uNM3UzJBUoyISGbUvhnk1+f4fpgLH3KDeyuY02xLh7fD6ctaKO4UPX0xmNGK5+
k+EPrwezGT2pjC44C5drFugoOsMl8Dj+GEPquMqzuIpLrcWtC2UiGPnDQYcFq/p5oaP+tIuu
Jx7uraPpMOhuM4NwD6caXWaB1z2iWgMSbnD1sLfphJwreGZytNZV/B9rT7bcRq7rr7jynNwj
yZJj36o8UN2UxHFv7sWW/dKlOEqimngpL3VOztdfgGx2EyRamYf7MOMIQHMnCJBYXMLuiL3/
dXgcmzFXzcvQZNwdQY5ZmWeItsxrgUF8eJMirkrdGBsK/uQTxnB8/AbKwOOedkhn4Sqbouaf
S6wvR+cVME7iE9BLfYynzD2Y9H3gW9odwo8g1em497vHH++/4N/PT68HHY2Ukdr0cTJvCz9n
dL/J/lwakfWfn95AKjiwLzYLPlFjXMFeP3U30nYxd91sUSPEw4w8ShQj7KkuEi3mMqK31za2
3TCcb9RoLC0uphM/atNIyeZro5K97F9RSGL40LKYnE3StSs0FrPzif+bCnlxsgEm6bCOuKhO
p5ORU1snMObO7WLiMAYVFVNPSyiS6XTh//Y5BkCB1XHMPa0WZ1TQM5CQqzjoUz52RsfuxrpS
L+buqtkUs8mZw47vCgEym/Oe0gF8oTaYp0GUfcQoru6ecU8eguxm/Ok/hwfUInC7fDu8msi8
3KZDkWtUvlGxKLWtYnvNn/Dpcgo9YYakwFDNgwH1CiMGuzfuVbmaEDmi2l6cjkQtBdSCjVGF
hTiCJZ70pxM3UtV1sjhNJtteMe8H+ujw/P8G5DX8fP/wjFcm7C7UjG8iMHm1jkvF7SJEcYs8
2V5MzqZzsiU0jJ2VOgVp37ly078/U2HrthpZDRo149PPcv2zlWQ1CUcKP2GrcaYSiFGxEzoW
ASb3Xu3G+0Uwrq8id9cYQus8Tzw6Wa48Gsz4oH10hoWTSrTJsleh8PNk+XL49sO1bBrkSSCu
Qaaec9EwELkSl9Le4eqinnYv30IbqetUITWoewuXOjCpIhWjoRq329yAhvAjzIOAwMCbhWC1
SRBfdmcutEkizJ1849ioDsg6IrOMiP6ddaTUPp5f+J0fQdDFyhLEL9pd1xDeAVun3ZGS4puI
9kQWF6duCGyEdb6iftEbtbzmXNgQp9I1bZ5Kt1NaKkBmnwMQSAzePKKQl6DTvj9GHc8YaYHO
OHZKy7dX4lVUBwia49sA3cwrFtIl5CMtMfDO93CkPfoZlhanLc+VG2XREPZR3Egl6ZY7dxGj
jcviNHDrRJzONXbOB3XR+O3YAOL7K22ZtQCri8ZDdG+u/rh0hl+jlYeBLyg6mZ1HRcJdGWs0
vtl6e94EUKClsF6/BpO690g9CObTKxb9+ilIm6nSb2slI+F9CbBN6blea/jNGJ8BDOYsokWb
YAC06Ls+mjImD7n/eXgOk9ICRs8LcWptV4pjR39pp2yhyP29nXLYhBGWBmfOEdNArG5oZG8w
eCemFjUINN3c6pLZW5H5Oaq/5RXRx5yYjF7KlKDJm/MqKHwoqLzqA4VAn2PJMTJkR0BY1ZKo
jQjNalSmh65qv2qszb1zwsUNbEG5xjKdayVUH+XpUmUkb1kOpzkaaxQRxgwn40VwvOwA7L8f
L6td+yuj70Qhokt94A9qDgayh70dqZmrg5hIp1HvokNXB+JEvRmJytfht9V0wjtDGwLt4TUS
CKyj0AfeMQJz+rFr08F3VgjuGtVxXEn0bwNDEyJiV2Kg+jBaczmiDEEislpdhYPUHT2j39nj
wfvMGO/okHKtKMf7h9Y7YaV9KIzR74zHS15Vfvc7R6AoLNQJ7jtaLMYr90s0Dg1heZrlpsV0
weudHVEeYVqF8Qq7GEbeZ32E1dEPLRPwF3zPHNZJI/2u3N1mblhuE5PIhgQ+9ewrPfSZl87c
KKub25Pq/eur9ioZ2HeXrQkTGwzVOcA2VYVqY4JGsJVz0G4+r9cUaRJ79SCkwYhIQSEmmA0m
UvDBGD2gr/jBQ17w36AfOtrpk9MZe4AL/HypI61xJ6IladfbRBPRCjvcdCb+iDxFyU3ShnXb
a7s+itOdRYJWZCLJ12wfBkoclpGudL6s2JwNbasJ0c00w8TXpmPax1vS8emCWTBxuu2AkKYO
KO4pAimyamZbQb5EOK6VuGTlMSxbR/Miuet6sGl+0BToGNbFS4A4KjaqUV6WY4kmXbojQ29J
KtjUpfAb02NFcs1xS6TRPhY6SDbXnVRt4WT40wLoooMEO6QLJsKUu1F4bqGwcKzUSsHRlOVm
zknJVmQKqjQnVXtdbmcY9ClYeB2+BFGLbi0TTuX080K73yRNhY8AAfswR7ZZDw8MImiPcYKB
cqE1TU1dU1z8uQ6C6A0GoQSdpp2dZ6ChVqykS2hCtoEoboLT4hTho9VqgiNV6nBJwTghtFlV
HucC4LZiaTcxMzToYqxXXsU7TOolDqpgcbwDoig2eSbbNE7P+DQ3SJZHMsnRgq6MpdduLQrS
tD0I7sLIXM0n0zEsrr8ZA79yw9QP0HCdazgyqCorqnYl0zpvaRBcQrWp9PSPdHEorOJ7cj45
2/pJhhBfCh07wxtll6CPONqdhi6u9zrUv7YTv/WD4zDudVwJo3NJSf3T9QgpLCGff/HURxl3
T1XfFmyWSiTqlKG4MGmw/N52aL2wNcHxYkIOZv3OGte5iiDMKiK12mCqRwSSXjbkTlgXOXbG
9jS6zQ8sSmwi5QlXtbnymJ5C82BUAuGrx89H8Gozn3zmeJu59gAE/BibLX3jMb2Yt8WsocNp
HAeDfR2n59MzBi7Ss8WcZR9/fZ5NZXuj7tz26dutTv9sx1YmCPqYZIt3ZTXHICpul1KmSwFL
JmWdIkPCoPH9baQ+koM1O6D9KghZZ2SPekTqhXGx7zNEI+hbgD7c5JIpjZwGwo/uetIBJG4c
sZIm94HuEXvFIPmdPfKzuMwV/+7RJ8YbTJIFp+dm1yTgg/4ZXtIbsL5jURx3HvB5lNfkxrFz
eJWrpuKs582XVjWSGO/JucWnWFMyQaHfkqlyGHs4dnVtA605nVa67KBX2s2ligXXr55hmgJ/
B3CmSShBe03qKtLbGVPLOQPecxZbg9c6Y5ety+Mul2zAI6/DXYXZdQWDty5cLxnjZuP1R4eZ
szBjxXpz8vayu9cPuE7aXEtfs66/epvVjg5lIXT999A1SwungLuAhjJG4k70BMwzkrVdDXsz
fD9yhbFyswjBjzaT2oe3zfKYTBTiUqHlbXSH54uyFJuGSCcORlSjXuQOTZfJjBRQ8YkINGop
0fuZdiR3Y8vUsp9z+CeJbWOfUB1wv/CapFZFIrf66tG3cOIi5KQNukStP1/MRhLOA35k+BDV
xTzmzKSCxhWwAQtyvV4pNlhklaiU3LYioIvlQ0LQaJMm+HcmIxJIc4Ai8xvHnKfpMWTG1zQk
f+KQupl5BezxdIQiCFlDsEZAcy/MGkQTqzfHDivKuMt4aswVZc4LHgZeuJIOe8TAtleNiEmK
3CHuaA2nIhyidVOSBPdpXtXsnvbeo41PyeHX/sSczu6DtkB7kVrC4kcn4cq93UdQXilYm5Fz
AS23+A7v6n8W0i5N0PGCnI8rhfEtAaEyLirjChOVR+VtgQZ3pO5rWRLL/R5kmBnd6Ra1bBTs
PtDi1ToTOF7cE+SqyvJarZyyYx+gDEC/3ZOahEGw+/SqyWuOXYqmzlfVvHUHzcAICM+Y1pX8
I3JwdaniXYIcep2IW1LKAGtLGasS1zP84T4aCERyI26hNXmS5DdElh2IVRZL/lHEIdrCwOm+
cTbRA1kqaxHlRZ+WPtrd/9wTnriqIhFt+KhuHbW5iH7dv397OvkOqztY3Npd3DOpQNCl765I
0XgBzwYU0dgCw0CleaaMhy39FHZrEpeSu72/lGXmzp0VJC1LSIvgJ7f9DGIr6rr0gQpPX9fR
b9OsZZ0s3XI7kO6FIxdKzCcclZKELBNltGk3omrXao1Xa5H3lfljFrFrqBXOiMOyVBVploAh
wiWbPziT9U1eXrpUTp2y2JjlPjxXGNAwWOzMWqpKRo3mFIlYsqYzkaIrBn/rYG4Vm3wLsQJ3
DQy/LhuYnVyL6DYo40YKzGKKI7rhm4hUTRFBcWM12Xmn3+iej30SMMsBOtohk6w6btJC5wN0
hl9j+2Z6iOomCxF5LCjj87ie4NrYA4EHlrxDc5Y47YIfNljxlw+H16fz88XFp+kHR2NI0HM2
lnr3zqnFKEfy+fQzLX3AuDb/BHO+cF6hPcxs9BviOOPh/tjMc/py5+E4+2aPZLRdZ6ejmPmR
Kvk3cY/o7M/tuhgdlYvTP35+sZgc+Zy/V6REcy7ADm3i52AYVJXjums5G0Py7XR2pIGAHJs3
UUVK0WmxdU7pyrPgmV+NRXAXfS5+zlez4MFnY9XwL+QuxYhjldu1P7V1OtJY1xAd4Ze5Om9L
SqthDYWlIsKrCJHRzxEcSZAuI3/iDQY0hKbMR7ujicpc1Epw4kFPcluqhFjgWMxaSB5eSnkZ
NlVBWzEMY4jIGlVzXdB9Pt46kKgvVbWhhTb1yvEHjBPnkgp+9My9AzWZiswtAQW0GUaFTNSd
dr0ZguE7tvZEhTHhFvb37y9oE/70jD4ljuxHzy38BdLuVSPxJgEFS+dCWJaVAjEjq5GsBDXF
lcNKfC2MveI6jWWA92MJv9t4AzqQLHU/2JhaQKO1CBUJmyvcCoVWOolTWWnjjbpUrl5tCZhP
buD/OkXAJs8vmTJXXD2dsMVgFPzM1NJE8hz5rN2uypRBF6LeDOAEFPEU78RTheEl4/LL2WJx
ejboyaLWz72yTGEdmGi9TqEc2tTw4V+vXw+P/3p/3b88PH3bf/q5//W8f/kQNAfWEix6mobC
w7XLPK8xShZ3WxQQx6qi+R5CCqljTB2hENeRESuP0MA6jS5h2YJuUaOq3sgvk1HiSsUw/1q8
bJcKyr04RjqDlWV2Avy6k19mi7OQPCVxQCm8XeJWaQp+VDUFrBIQ4uuxcLmUWBSFzGKjuCd8
UMn+izpP81tOxewpoDQB66VkW2eR46J4SDqWVaKnvBVuaMahc2KFdlSK20V4KxLnIDQnFbeL
XHQrRZkQnULftWg0apYyAeW9jJCLjoR/H6E3CaqgOqZvI59obAz8UgG7rsmlSVeW284eONzJ
jNyPGyo0HXQvEknAy1TY9AdtEZWtirdfphMXi0NVNqA4kiYAAn1xElBvWatZ0WbrnsL/slLr
P31t86T0RXw4POw+Pf74QEuyZHqLVpuR7LYcJezOP1RtKRc0i3dAclMsWOd6n/DLh9efOyD1
uoCHDIx9DpIIfweGRKUU8Z9oYGOVQrHvXu4si+o2TSUegt4RjERwnDfS7AzNv/1T+jolP1pU
nkH3bBoSXfwa4z/Xpej4kFaxyfLRn8Zxh2EabMft2IET0mBt7PAEpJYJ/TNqL1DRcAh/+YCB
gL49/fvx4+/dw+7jr6fdt+fD48fX3fc9UB6+fTw8vu1/oDz18XX/6/D4/p+Prw+7+78/vj09
PP1++rh7ft7BSfvy8evz9w9GALvcvzzuf5383L1822uXxkEQ63IbAP3vk8PjASN/HP6764IT
da2KIn3BhBeGcL6hm7bCbEM1nBnOZTBLdSfLnPIZhaa5+tzxeGBIIZLEqYYrAymwipFnNaBD
C8oEWGQ/A6zRriVdgZTuUJL3Gn6MLHp8iPu4Yr4U3A8cSql5f8n68vv57enk/ullf/L0cmKk
JWcuNDH0aU1SZBHwLITDXmeBIWl1GaliQxIgUkT4ieZEHDAkLd3XnAHGEvZ3RUHDR1sixhp/
WRQh9WVRhCWgEWBICjqXWDPldnCaVtugRhwK6YdWSNV526qg+PVqOjtPmyRAZE3CA8Om6z+O
hmk72tQb0JAC8k6do8AuanW3RIv3r78O95/+3v8+uder9cfL7vnn72CRlpUIio83YeFR2AoZ
xeGSklEZV8Sn0S7NlL0k7frflNdytlhML2z7xfvbT/Tkv9+97b+dyEfdCQx28O/D288T8fr6
dH/QqHj3tgt6FUVpOE8MLNqA3C5mEzhibzH+DLP/1qqC+Q0GpJJX6poZpo0APnVt3bOWOmAc
qlSvYRuX4ZBGq2UI8+6pLZQ7P/tmhMUk5U0Ay5nqCmyX368ts+5BROiS4XgrfDM+mrESWd2k
TH8k5pgI7JE2u9efY8OXinD8NgboF76FPvEPBQZ/ndKT3gak2L++hfWW0emMmTkEh+O21Xw3
3A3LRFzKGW+PS0iOzDJUWU8nsVqFS53l9qPTksZzBrZgBjJVsMC1rTsbObpjKWk8deNaOWA3
QNsABpmcGSJAnLJhyewOBLE/PAC1hM+BPXF+QHCXoj3POg03fg3yxzJfB4h6XU4vQtau1YRe
cDg8/yRu8D2bCfcXwNo6FB+WSX6zUsz0WkQQo9UuF5HKJFEiaHikjYJsnOeA0QCWc0Z30GdB
kTHTn5X+y82BSCpxbKYtlw6nVZaFzMKjsErnTE/qmxzHJ9jo0dPDM8YeofK07cgqIU+5lpve
5UGt53NuhSV3XFjIAbkJue1dpWUBE4hj9/jt6eEke3/4un+xoUdtWFJvwWSVaqOiZK1DbH/K
pQ4W3gQ90pgR/mlw3hUPQxLVofSFiAD4l0KNQaJhb3EbYFEq09ll/YGxiLbjqiPYXjwO10BP
U474pvt0KID/I0KZaRkxX2JSQPZ+wxG62y6ppKtN/Dp8fdmB9vLy9P52eGROvEQtWUah4WUU
8nBEdKeIdR0MBs2hYXFm7/Wfc1UYEv7rXq47XsIg/nGlcNwE4fZAAyEWL16nx0iG6oMN6pAd
m+mhq4O8eGRnA/XIYbQJBTG0+AQV+EZlGaPAILZQUb6NgIEzixrxNn/b0c0PdNUi1Kec71nB
QbdOhzkZU0gcCmauBmzNTeWAhgE7gvViXwV4yeaq5iqZTebhekWKqHAPE3GtmtSDDbSZqks3
i3aAaqMsWyy2PEkqYMkz+iHi8qiWeVZvddUcQdeyOxVK34i+isIDq4OPXx30BCNzgLiOxxmz
FG4iHCJb0bEt5X+y4Wz+/PbdYFy6NpHZFxCsWCLMOsncYSBSpetaRuPL3LhljK5iLkCLg+Yy
ITNbUKwkbuXjfY0ikDPZ6dUun5VkD2pc5WmSr1WEXtN/YAVixtxaIMa6wORRpcVQlKf4yhhK
1D6PV8x9FLkaJr2r1o5kLLJolklHUzXLUbK6SHma7WJy0Uay7F6QZWC4W1xG1XlblOoasViG
T2HL5r78jK4TFZqi8Fi8xsGPnRcrtc4wg7M0xr5oimvftntpAUM/f9f3Iq8n359eTl4PPx5N
6LH7n/v7vw+PP5yUt5jBROqHF6znwz18/Pov/ALI2r/3v//nef8wPPNqG0H3pR4fJp3WBfjq
ywf/a/MC4Axq8H1AYd5N55OLM/JumGexKG/95vCvjKZkEGSiy0RVNU9sjV7/wQjaJi9Vhm2A
FZDVKzsFyaiklqgMk8mUIlu7HAQjrpCRXMIBIWF2XfcYG9wBFMwsKm7bVakdUd1l45IAAxzB
YqbAplauVV+UlzG1toEepbLNmnQp2ZcYY3Thxkvpg09EqlXomedMbA0804R8dflJBEwMBH0C
mp5RivAGI2pV3bT0q9OZ95NatVAMsAS5vD0fYcMOyfwYiShv+GdKg18qT5WNzng9j8rlkRP2
DETE8DIpci5OutujgaXhgy4nycJ6i/PUGRWmJaCdaud5DOI5FInQWIbwO5RfQUmhyu+dkcY9
KOjCQ8kPLpQrWau8LP3cpR+ihYIyzJBrMCm/H43tHSLY10VL3q7vFEkS2yNQsefgWicP9oJ+
tqIZokpM7gY6YE7SZrlQLNbdBsvImWPtPXMtQFQuJTnNMJU17MlrEL/KUrh5GDD6FvX3MyD0
JWnJPkU4yXuZYbNifCUWhZ9nWxutIw4Njdq6PZsvXXOCWD9zR4ko0Y5ho7V5hyPcqLxOlpQ8
SknwDQQVsgQepFHhBez+++791xtGE307/Hh/en89eTAPfLuX/e4EE538r6MkawODO4lFogkh
GthPJ84OtfgK7y+XtzXr0EKonJJ+jxU0EpqKErFOsUgiEjjwUxy5czoueKMwZihj52sJmtgG
9AjXsGidmDXpDPyVy8OTfEl/uYzULoqE+kREyV1bCzeLanmFGrNTblooYA1OpSolv+HHKnaW
R65iTDUOJ3VJVjKsbru1ruMqDzfcWtboBZavYncLVOhcmrirUy9e/f58IxJ3gBAUyyIn3BuN
AgQ/kfnyL7FmzZVqFDCG4XOeoQP5wO+FyktJNqZFGP5q/Jw7bwjtiUktBKyQp6HPL4fHt79N
KN+H/euP0IAT/uCdVAtqQYLGdP2b7edRiqtGyfrLvJ/eTowNSugpQNheoplKK8syEynZMMb9
AP4DgWeZV7wn0mg3+ivaw6/9p7fDQyekvWrSewN/CTu9KqEV7Y0osy+g7Z+7swbqXYXu5yk5
NdDUxmi3FWe5uAE0Zt9VGSwhd+mb3oG4qo1tU1WlonYZuo/RbWrzLLn1yzA2YasmMx9o3tCe
zpbeqr4RWd11r8j1ceGcrgQeToKpwvjPoCtl0fxfZcey27gNvPcrcmyBImh634NsSbZqW1JE
yU5ORpo1gqDYbBDbi/38zoOUZvgQsqfEnBFfQ86LM2RcQ/7sdBNxyCn9+uzWZ3769/ryguEV
1dv58nHFx2kEYXYZGqegsHfiHjVROIZ2sFPgy18/76ZRSDzQfassZuLaoZpgfl1+kee/GKF4
zk8IO8xSTcQIqZoS8THEyIhYm1W+8BjcWH68f8AnpduN4kUIiTY9LIzPoyy5PkUAPRcchhjO
gv+Muww9GuuVZw+UaQEWHb5P6L/zoGpGRBJN8XRBrKY51Al/EYFhVZumTpmAUyuwlWMZ7ozQ
NXnWZ0fLsuW+IuWIcA4P4cQcYiJ8NIl6zPAS9h799l79tIVUXbg4Qc4UygeiirWYiWJgWNTM
xDg0yqGOBwVrRIxKT86iQ8IbwtYqbknDUYNqhzHrO4Fl3X9OqNyp7WLXK4jELbCtcPwOMjMk
jkMbUITFvQfLNWrnhIWR0xQsHss+1stkvzu2q16HrztIWEJBBjZfwusfALv4nhcNgdG1mqPb
1JtP9Lzq+iGLbH8LSNId5rrpHikUL8rVMmBRQnHkaEMqjZz/MBTXGSpSdQNYVY86MxoczqbT
kX0TCwpovPYuBbYmBODfNN/fz3/e4NOK13cWZOuntxeZ3pzhNXkgcxtOuY8V26yBOw0kZXTo
vwhDwzRlj/HeQzs+ix2dTwQd13gXVZ+ZjVwwNnbYgcZG7v4WzYxpFgKR+hRpLInrp0Ic7kG9
ACUlb4SzityUPCKZQzQ/t5xUBLrD1ysqDFJ2qF3n5TRxoT0dlWUuwWMK1YzUrRcrTtumKFr2
vLHnDsOxJvn4+/n99Q1DtGAI366X088T/HO6PN/e3v4hnHoUvI9VrkjjH1p6P0FnrO/nrmag
GnAEPltAA33oi4ciYPwGuo2f+eUTui+gDgw7GlBMMKlnhld0BxPPGGcwddczIymFomjDdi0g
WVnWNzvU2bZF0fqDsTPGh/ZWwhndJt7/iZkOXszjNNpJMI7LpdQfSdvd5FzrIav60MCeLLhf
WCfKtOy7bKk4PGn7GAI91KYocljc7Kyboc6G5WKCmf3HSt7Xp8vTDWp3z+i4FrzMzmxlgsXW
xgrNyi/hhDplVZCwro+kOYFSg89uVTryerZv/gCXXWGTXkwwSNAoYswiRVBUQOhx8WPC7YkI
8SWEENAUxefCiYdf+aTEwuLezCwb3flgh95b+6sLLC+34DPQo5ePvUx3q5uWu9J5Enc0FOeh
qy5r13Gc/BFMddibpRtqGng8VP0aXTbGb4fBO1LxAAFPGjwUvAUEdwBhkmmq0kLx86VmdeRZ
WQxlKbtc7DGxFPHVUQr8AT7Q25dygoEG+E5nTyAK9u5M6mAhoDhF4eK+iVAySZwUXaa1ouZ9
rmqQOnhKqDM8kWMGdeJLBk1ZWsiMDhwiOEIetlkfDoapZwmshBKjHk2dtWbdxHYmf7sAdohP
HtBYmFDTPEtYmJA3CV8CZ3WNrw3CKPg7LSRHLFiIDp7oFC2+qQrdGX8KHLlodapLaWrYMGOp
nhe7lqva5/MSiXZKzMkrdocAf/vNayHbkpcYRy07YGnGOxX/DJ1vubudsmz247yFu8ARv8+A
u7ZJ/is6K1EVYxU44zVatMHyYgvKapToRbEDKUT+IrwKyT8LFPOPWz7VPZPhywSSblQgySRv
bpNAOhPeJIB8RiP7w9CIbPcQ6Ca98MOu3Rl0xVepu9AtHv8qo28Sjxg1WSWRVvYlvhVKkS45
HkHHAjk4kd66qcWhQBNASKB/vJ6ffyiRLp3Z/el8QQ0LDYfl9x+nj6cX8dDnZqgrIbHpZ+hA
4WIt3LmseLA0icBIIpG+OR18WM0Hndj00uk/7LtVVzwUPV/PGEGNMWsy5aaaJtaZVVv2VnmK
tvcFnfEvVZQsfVqi9qu2o/ed81TOeQM2sMMDgxzMcNz4dpGrc2bEjy6+DoQ/CUSYUNzMGGEc
RYSF4e9EPz0vuiQ8hXpXGYPt5M1ywOOzuGOEde9FxUSKv6vqHar8D3OdqGCSuQIA

--3V7upXqbjpZ4EhLz--
