Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBQNB4GCQMGQEFVDYNXQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf38.google.com (mail-qv1-xf38.google.com [IPv6:2607:f8b0:4864:20::f38])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F78D3998B3
	for <lists+clang-built-linux@lfdr.de>; Thu,  3 Jun 2021 05:47:15 +0200 (CEST)
Received: by mail-qv1-xf38.google.com with SMTP id f18-20020a0cbed20000b029021ef79a8921sf1209769qvj.17
        for <lists+clang-built-linux@lfdr.de>; Wed, 02 Jun 2021 20:47:15 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1622692034; cv=pass;
        d=google.com; s=arc-20160816;
        b=hefxo8HFCrE+E64ziIFhPiYMKZY1V86Ws6qpgKfgrvNPZO+n/YoVHcfoDRZqeK+N2n
         zHjgyIH0tzrcs/TgQhhC7TnVsbZUlDzw/4d6rJwD1oWK8EQFcX2aEC+7Y7S2Pnp6q4Pq
         1okJqxeW3QrcWJ2C6h9LKTCZioMqKkIyFPlfr0OlIdqOh07KBQHjiPUqNMvmag31O7Gy
         EcR56Bf+2bom/kCe/ux2vgo/O73OWGp68oFHlkldqg/8sMEC+4POVR/LTr21YVIU+5k6
         tec6ah1Z9t3ZQqh7bsLNKju5ImVpDo2IzmlwsKxc16X6fgnS/uciJ22Hi1ZePeGGxn1g
         1LrA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent
         :content-transfer-encoding:content-disposition:mime-version
         :message-id:subject:cc:to:from:date:ironport-sdr:ironport-sdr:sender
         :dkim-signature;
        bh=25NfgtVibId9a/a9J0ah4/5vQhVpv3P5s2JvmpaHEhQ=;
        b=ut+j0VIzRzhsaLLS8FnpjWOp5gZSsrWR4B2bKetcZbCWQ/uwZ2CNG5po5DOQZk9x54
         HXzmI1gN4D7wTwXJFf1TB5MeExhevz8veLtG+/VKz8PWoCw5kKF//8nOAVbKodpXZWCD
         S4bX4AFKUeVTAnbGU+N8w2QksDOSzzJMglp4d1z0t49ks9B0dL/76DO0i7aO8j8tKb+o
         CwrY/JZqnLajsHW5qY18Q6uPLbLq6EtLDdhqhNro/jcdhAnj8NU/KEe70mkt+ZpWpoNQ
         aHLSwaDI25HiAHxm2JEoS9e8wUvt26B1lrHkz7RnOyLkN1bjaGLKAcRYN2TcS9j2qpjx
         DggQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.43 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:content-transfer-encoding
         :user-agent:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=25NfgtVibId9a/a9J0ah4/5vQhVpv3P5s2JvmpaHEhQ=;
        b=RXmLCiZpSzNnNH4dN/L+b3KlLrFebzCXA2RipoHGkWkVZApiZV6IQbHMENNV3PO+vt
         RPM37gaYTbGzQj8GNn46XmuG+HygAx8Ngyzmny0OuHPf+27cMqTyCaWNiSo47CEKw8On
         8w8l4ZJg4lsIL3EJffYRcloA/hGIFwEv3XpS+LgGXM+CeD9gC9nXi0Za9jd1M1x52NxF
         VwcNFTvSeMLcwNKUXXMhGj8xgk+nhxi3dFwqUP52tKPgSI68poOmLZo+Hjf/fszSy4/8
         97ARNY/IohYdororZj31k7tu1UXwh+uaMijDCuupFgqME7OpDoHB9Hz29jMG4m94/tUe
         k4JQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:mime-version:content-disposition
         :content-transfer-encoding:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=25NfgtVibId9a/a9J0ah4/5vQhVpv3P5s2JvmpaHEhQ=;
        b=AtpLUrwVbPvHJb5eVWIbaFkoeZ01iLIUYwwXBxxntpjtu4Ik711TX6tRDPSeynvfQl
         nv14owNmDc0RU3N4EKp1EsU5TZMHxJJ1aUHLEtwSMfaOTGtHDvjvKWPPzNkUpU82vku0
         8nGTH3g0pFK4TfmTYtp9kxhZOiYTI5CYys6E3RxoJZQh1pP5EbPl9sF7Fj3YQvIRLBfW
         S71TmRlBOh3juYCxNMHiQKlcmdts+53kdgiwOLS0DkUu8wb79wlkftYElPPXv2l8afMy
         82qVEHeojuzDOjAhaFxPZayTE+0kBShTx0hDCw/Bgasl3JuSQ70rokYN/H0rPdDsIuul
         tELQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531xDpj1XJxnIbBBbmxBRV6MGocauyxtFFq1lnpB14d12wCPT8Li
	jpw8mILrHghWYWKKRrTau1c=
X-Google-Smtp-Source: ABdhPJx5d4rswf7A7Yaij9svLR7S+gzAW5PeqMpvGmWg2SG4fRM+2/08AoCpNKM80mc18l7Vxo47ZQ==
X-Received: by 2002:a37:c8e:: with SMTP id 136mr10128180qkm.334.1622692033916;
        Wed, 02 Jun 2021 20:47:13 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ad4:4f30:: with SMTP id fc16ls716341qvb.8.gmail; Wed, 02 Jun
 2021 20:47:13 -0700 (PDT)
X-Received: by 2002:ad4:4a68:: with SMTP id cn8mr11892053qvb.38.1622692033146;
        Wed, 02 Jun 2021 20:47:13 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1622692033; cv=none;
        d=google.com; s=arc-20160816;
        b=rf01oJrWLFIxL4+Z5oW/ODK8vi3/zEmIfPmirTlA4S3aG5TqQEPUM+J0m46SDyOaR9
         a/kWWF3VUXLezYAR+WpE/RHc1MaJ7G32ORJUT/OHwabS4l7FKL8g8Wp3PAeWTKQcY1Jq
         ml5rjlxmn3t4Q3MU4qA3jgcTBmA57HJxL5zuV7kC5QRoRQBm0AGhCe2QtLaxEkztTCdt
         4ZbCjwIMBaBaa/VoVRiRPXMsTTtd7PQH1ls4qnMR0wV685inTfIXwWw4h4868+ZE9p8v
         XvvOmTs1JKzRf3ZuL5qYIDp3H8IEj9Gpw6jGghdywCyOiX4V2IhlDrPKOQGlWaRvUs5E
         IxOA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-transfer-encoding:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:ironport-sdr
         :ironport-sdr;
        bh=l25lwrnFo+qaSVEru7wcnSxll229nrt+QsdnawM7uE8=;
        b=erEAv1Q3kz3i+R5fDcg94yp+m2DDtEslPdcJa2tgnVmYRxU6NopxZUua0WpcH/E9yP
         OcxB1ZJo5SatuAuGGHwIR5drDkMk4HydBYqOOj1l8+Y+JvPCcZh450c/OxfJLhlGV00G
         2+z4DidBFRLsQ+ExdZwy01uaZ3Lht0VBfr3jZt5hUafziSe2ajBUpF5FxmDM/lk8VSp8
         /aEpiUzYSgdLn3rtZ5kWF2N7nbHcdNWkGIjYm+ZAG+jVG3w0PC9aWSHT6qgx9zJp0WKo
         mbNJQ4nCjdg0B1+rAv9DO2VdMvcHb0hR0Kx3Kmx3HRrTp9AGOp9rDy/QiIqZDITytN7U
         L5iQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.43 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga05.intel.com (mga05.intel.com. [192.55.52.43])
        by gmr-mx.google.com with ESMTPS id y19si187390qto.1.2021.06.02.20.47.12
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 02 Jun 2021 20:47:13 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 192.55.52.43 as permitted sender) client-ip=192.55.52.43;
IronPort-SDR: z0FZv9QpVMmO0mUzvkDOouPd8ho1we2qvk5ifyE3avDqd6e9SpOfhbYl5pLahPkxUzlRr4/1nH
 52iDp1yx3u8g==
X-IronPort-AV: E=McAfee;i="6200,9189,10003"; a="289586173"
X-IronPort-AV: E=Sophos;i="5.83,244,1616482800"; 
   d="gz'50?scan'50,208,50";a="289586173"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
  by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 02 Jun 2021 20:47:10 -0700
IronPort-SDR: Vthdl4CMdAPYQlWk8SPjyXxDajeF4N+EB+1J9GuQPf3RFO7yt7Uuh8cSMHNue5be3MiSsK2r72
 lCfhZwsliyww==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.83,244,1616482800"; 
   d="gz'50?scan'50,208,50";a="447683256"
Received: from lkp-server02.sh.intel.com (HELO 1ec8406c5392) ([10.239.97.151])
  by fmsmga008.fm.intel.com with ESMTP; 02 Jun 2021 20:47:08 -0700
Received: from kbuild by 1ec8406c5392 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1loeK3-00061v-PN; Thu, 03 Jun 2021 03:47:07 +0000
Date: Thu, 3 Jun 2021 11:46:28 +0800
From: kernel test robot <lkp@intel.com>
To: Faycal Benmlih <faycal.benmlih@intel.com>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com
Subject: =?iso-8859-1?Q?=5Bmchinth=3A=A0sep=5Fsocwa?=
 =?iso-8859-1?B?dGNoX2xpbnV4XzVfOSAxOS80MV0gZHJpdmVycy9wbGF0Zm9ybS94ODYv?=
 =?iso-8859-1?Q?socwatch=2Fsw=5Foutput=5Fbuffer=2Ec=3A299=3A25?=
 =?iso-8859-1?Q?=3A?= warning: variable 'write_index' set but not used
Message-ID: <202106031111.twpHNe4o-lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="Dxnq1zWXvFF0Q93v"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lkp@intel.com designates 192.55.52.43 as permitted
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


--Dxnq1zWXvFF0Q93v
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

tree:   https://github.com/mchinth/linux =C2=A0sep_socwatch_linux_5_9
head:   7296486889985b9d9895a39f551764a4b0425bea
commit: e65547c5a9bb37e907edecece4da7cb12dadea96 [19/41] platform/x86: Use =
$(srctree) instead of $(src) to adapt to kbuild regression
config: x86_64-randconfig-a002-20210603 (attached as .config)
compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project d8e0ae=
9a76a62bdc6117630d59bf9967ac9bb4ea)
reproduce (this is a W=3D1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/=
make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install x86_64 cross compiling tool for clang build
        # apt-get install binutils-x86-64-linux-gnu
        # https://github.com/mchinth/linux/commit/e65547c5a9bb37e907edecece=
4da7cb12dadea96
        git remote add mchinth https://github.com/mchinth/linux
        git fetch --no-tags mchinth =C2=A0sep_socwatch_linux_5_9
        git checkout e65547c5a9bb37e907edecece4da7cb12dadea96
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=3D$HOME/0day COMPILER=3Dclang make.cross ARCH=
=3Dx86_64=20

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

>> drivers/platform/x86/socwatch/sw_output_buffer.c:299:25: warning: variab=
le 'write_index' set but not used [-Wunused-but-set-variable]
           size_t read_index =3D 0, write_index =3D 0, dst_index =3D 0;
                                  ^
>> drivers/platform/x86/socwatch/sw_output_buffer.c:301:7: warning: variabl=
e 'wrapped' set but not used [-Wunused-but-set-variable]
           bool wrapped =3D false;
                ^
>> drivers/platform/x86/socwatch/sw_output_buffer.c:398:6: warning: no prev=
ious prototype for function 'reset_output_buffers' [-Wmissing-prototypes]
   void reset_output_buffers(void)
        ^
   drivers/platform/x86/socwatch/sw_output_buffer.c:398:1: note: declare 's=
tatic' if the function is not intended to be used outside of this translati=
on unit
   void reset_output_buffers(void)
   ^
   static=20
   3 warnings generated.
--
>> drivers/platform/x86/socwatch/sw_collector.c:86:1: warning: no previous =
prototype for function 'sw_copy_driver_interface_info_i' [-Wmissing-prototy=
pes]
   sw_copy_driver_interface_info_i(const struct sw_driver_interface_info *i=
nfo)
   ^
   drivers/platform/x86/socwatch/sw_collector.c:85:1: note: declare 'static=
' if the function is not intended to be used outside of this translation un=
it
   struct sw_driver_interface_info *
   ^
   static=20
>> drivers/platform/x86/socwatch/sw_collector.c:116:5: warning: no previous=
 prototype for function 'sw_init_driver_interface_info_i' [-Wmissing-protot=
ypes]
   int sw_init_driver_interface_info_i(struct sw_driver_interface_info *inf=
o)
       ^
   drivers/platform/x86/socwatch/sw_collector.c:116:1: note: declare 'stati=
c' if the function is not intended to be used outside of this translation u=
nit
   int sw_init_driver_interface_info_i(struct sw_driver_interface_info *inf=
o)
   ^
   static=20
>> drivers/platform/x86/socwatch/sw_collector.c:138:5: warning: no previous=
 prototype for function 'sw_init_ops_i' [-Wmissing-prototypes]
   int sw_init_ops_i(const struct sw_hw_ops **ops,
       ^
   drivers/platform/x86/socwatch/sw_collector.c:138:1: note: declare 'stati=
c' if the function is not intended to be used outside of this translation u=
nit
   int sw_init_ops_i(const struct sw_hw_ops **ops,
   ^
   static=20
>> drivers/platform/x86/socwatch/sw_collector.c:157:8: warning: no previous=
 prototype for function 'sw_get_payload_size_i' [-Wmissing-prototypes]
   size_t sw_get_payload_size_i(const struct sw_driver_interface_info *info=
)
          ^
   drivers/platform/x86/socwatch/sw_collector.c:157:1: note: declare 'stati=
c' if the function is not intended to be used outside of this translation u=
nit
   size_t sw_get_payload_size_i(const struct sw_driver_interface_info *info=
)
   ^
   static=20
>> drivers/platform/x86/socwatch/sw_collector.c:175:1: warning: no previous=
 prototype for function 'sw_alloc_collector_msg_i' [-Wmissing-prototypes]
   sw_alloc_collector_msg_i(const struct sw_driver_interface_info *info,
   ^
   drivers/platform/x86/socwatch/sw_collector.c:174:1: note: declare 'stati=
c' if the function is not intended to be used outside of this translation u=
nit
   sw_driver_msg_t *
   ^
   static=20
>> drivers/platform/x86/socwatch/sw_collector.c:211:26: warning: no previou=
s prototype for function 'sw_alloc_ops_i' [-Wmissing-prototypes]
   const struct sw_hw_ops **sw_alloc_ops_i(pw_u16_t num_io_descriptors)
                            ^
   drivers/platform/x86/socwatch/sw_collector.c:211:7: note: declare 'stati=
c' if the function is not intended to be used outside of this translation u=
nit
   const struct sw_hw_ops **sw_alloc_ops_i(pw_u16_t num_io_descriptors)
         ^
         static=20
>> drivers/platform/x86/socwatch/sw_collector.c:323:6: warning: no previous=
 prototype for function 'sw_free_driver_interface_info_i' [-Wmissing-protot=
ypes]
   void sw_free_driver_interface_info_i(struct sw_driver_interface_info *in=
fo)
        ^
   drivers/platform/x86/socwatch/sw_collector.c:323:1: note: declare 'stati=
c' if the function is not intended to be used outside of this translation u=
nit
   void sw_free_driver_interface_info_i(struct sw_driver_interface_info *in=
fo)
   ^
   static=20
>> drivers/platform/x86/socwatch/sw_collector.c:329:6: warning: no previous=
 prototype for function 'sw_free_ops_i' [-Wmissing-prototypes]
   void sw_free_ops_i(const struct sw_hw_ops **ops)
        ^
   drivers/platform/x86/socwatch/sw_collector.c:329:1: note: declare 'stati=
c' if the function is not intended to be used outside of this translation u=
nit
   void sw_free_ops_i(const struct sw_hw_ops **ops)
   ^
   static=20
>> drivers/platform/x86/socwatch/sw_collector.c:335:5: warning: no previous=
 prototype for function 'sw_reset_driver_interface_info_i' [-Wmissing-proto=
types]
   int sw_reset_driver_interface_info_i(struct sw_driver_interface_info *in=
fo)
       ^
   drivers/platform/x86/socwatch/sw_collector.c:335:1: note: declare 'stati=
c' if the function is not intended to be used outside of this translation u=
nit
   int sw_reset_driver_interface_info_i(struct sw_driver_interface_info *in=
fo)
   ^
   static=20
>> drivers/platform/x86/socwatch/sw_collector.c:453:6: warning: no previous=
 prototype for function 'sw_free_collector_msg_i' [-Wmissing-prototypes]
   void sw_free_collector_msg_i(sw_driver_msg_t *msg)
        ^
   drivers/platform/x86/socwatch/sw_collector.c:453:1: note: declare 'stati=
c' if the function is not intended to be used outside of this translation u=
nit
   void sw_free_collector_msg_i(sw_driver_msg_t *msg)
   ^
   static=20
>> drivers/platform/x86/socwatch/sw_collector.c:459:6: warning: no previous=
 prototype for function 'sw_handle_per_cpu_msg_i' [-Wmissing-prototypes]
   void sw_handle_per_cpu_msg_i(void *info, enum sw_wakeup_action action)
        ^
   drivers/platform/x86/socwatch/sw_collector.c:459:1: note: declare 'stati=
c' if the function is not intended to be used outside of this translation u=
nit
   void sw_handle_per_cpu_msg_i(void *info, enum sw_wakeup_action action)
   ^
   static=20
   11 warnings generated.
--
   drivers/platform/x86/socwatch/sw_telem.c:239:32: error: implicit declara=
tion of function 'ioremap_nocache' [-Werror,-Wimplicit-function-declaration=
]
           s_punitInterfaceAddr =3D (u64 *)ioremap_nocache(
                                         ^
   drivers/platform/x86/socwatch/sw_telem.c:239:32: note: did you mean 'ior=
emap_cache'?
   arch/x86/include/asm/io.h:185:22: note: 'ioremap_cache' declared here
   extern void __iomem *ioremap_cache(resource_size_t offset, unsigned long=
 size);
                        ^
   drivers/platform/x86/socwatch/sw_telem.c:239:25: warning: cast to 'u64 *=
' (aka 'unsigned long long *') from smaller integer type 'int' [-Wint-to-po=
inter-cast]
           s_punitInterfaceAddr =3D (u64 *)ioremap_nocache(
                                  ^~~~~~~~~~~~~~~~~~~~~~~
   drivers/platform/x86/socwatch/sw_telem.c:242:20: warning: cast to 'u64 *=
' (aka 'unsigned long long *') from smaller integer type 'int' [-Wint-to-po=
inter-cast]
           s_punitDataAddr =3D (u64 *)ioremap_nocache(
                             ^~~~~~~~~~~~~~~~~~~~~~~
   drivers/platform/x86/socwatch/sw_telem.c:245:50: warning: cast to 'u64 *=
' (aka 'unsigned long long *') from smaller integer type 'int' [-Wint-to-po=
inter-cast]
           s_telemEventInfo[TELEM_PUNIT].ssram_virt_addr =3D (u64 *)ioremap=
_nocache(
                                                           ^~~~~~~~~~~~~~~~=
~~~~~~~
   drivers/platform/x86/socwatch/sw_telem.c:280:27: error: implicit declara=
tion of function 'ioremap_nocache' [-Werror,-Wimplicit-function-declaration=
]
           s_pmcIPCCmdAddr =3D (u64 *)ioremap_nocache(
                                    ^
   drivers/platform/x86/socwatch/sw_telem.c:280:20: warning: cast to 'u64 *=
' (aka 'unsigned long long *') from smaller integer type 'int' [-Wint-to-po=
inter-cast]
           s_pmcIPCCmdAddr =3D (u64 *)ioremap_nocache(
                             ^~~~~~~~~~~~~~~~~~~~~~~
   drivers/platform/x86/socwatch/sw_telem.c:283:20: warning: cast to 'u64 *=
' (aka 'unsigned long long *') from smaller integer type 'int' [-Wint-to-po=
inter-cast]
           s_pmcIPCStsAddr =3D (u64 *)ioremap_nocache(
                             ^~~~~~~~~~~~~~~~~~~~~~~
   drivers/platform/x86/socwatch/sw_telem.c:286:21: warning: cast to 'u64 *=
' (aka 'unsigned long long *') from smaller integer type 'int' [-Wint-to-po=
inter-cast]
           s_pmcIPCWBufAddr =3D (u64 *)ioremap_nocache(
                              ^~~~~~~~~~~~~~~~~~~~~~~
   drivers/platform/x86/socwatch/sw_telem.c:289:21: warning: cast to 'u64 *=
' (aka 'unsigned long long *') from smaller integer type 'int' [-Wint-to-po=
inter-cast]
           s_pmcIPCRBufAddr =3D (u64 *)ioremap_nocache(
                              ^~~~~~~~~~~~~~~~~~~~~~~
   drivers/platform/x86/socwatch/sw_telem.c:292:48: warning: cast to 'u64 *=
' (aka 'unsigned long long *') from smaller integer type 'int' [-Wint-to-po=
inter-cast]
           s_telemEventInfo[TELEM_PMC].ssram_virt_addr =3D (u64 *)ioremap_n=
ocache(
                                                         ^~~~~~~~~~~~~~~~~~=
~~~~~
>> drivers/platform/x86/socwatch/sw_telem.c:671:5: warning: no previous pro=
totype for function 'read_telem' [-Wmissing-prototypes]
   int read_telem(u64 *dst, enum telemetry_unit unit, bool should_retry)
       ^
   drivers/platform/x86/socwatch/sw_telem.c:671:1: note: declare 'static' i=
f the function is not intended to be used outside of this translation unit
   int read_telem(u64 *dst, enum telemetry_unit unit, bool should_retry)
   ^
   static=20
   9 warnings and 2 errors generated.
--
>> drivers/platform/x86/sepdk/sep/sys_info.c:320:6: warning: variable 'mode=
l' set but not used [-Wunused-but-set-variable]
           U32 model =3D 0;
               ^
   1 warning generated.
--
   drivers/platform/x86/sepdk/sep/pebs.c:96:26: error: variable has incompl=
ete type 'struct flush_tlb_info'
                           struct flush_tlb_info info;
                                                 ^
   arch/x86/include/asm/paravirt_types.h:56:8: note: forward declaration of=
 'struct flush_tlb_info'
   struct flush_tlb_info;
          ^
>> drivers/platform/x86/sepdk/sep/pebs.c:977:6: warning: variable 'cur_grp'=
 set but not used [-Wunused-but-set-variable]
           U32 cur_grp;
               ^
   drivers/platform/x86/sepdk/sep/pebs.c:1345:8: error: implicit declaratio=
n of function '__get_user_pages_fast' [-Werror,-Wimplicit-function-declarat=
ion]
                           if (__get_user_pages_fast(lin_addr, 1, 1, &page)=
) {
                               ^
   drivers/platform/x86/sepdk/sep/pebs.c:1345:8: note: did you mean 'get_us=
er_pages_fast'?
   include/linux/mm.h:1737:5: note: 'get_user_pages_fast' declared here
   int get_user_pages_fast(unsigned long start, int nr_pages,
       ^
   1 warning and 2 errors generated.
--
>> drivers/platform/x86/sepdk/sep/unc_common.c:280:6: warning: variable 'de=
vice_id' set but not used [-Wunused-but-set-variable]
           U32 device_id;
               ^
   1 warning generated.
--
>> drivers/platform/x86/sepdk/sep/unc_pci.c:57:6: warning: variable 'device=
_id' set but not used [-Wunused-but-set-variable]
           U32 device_id;
               ^
   1 warning generated.
--
>> drivers/platform/x86/socwatch/sw_output_buffer.c:301:7: warning: variabl=
e 'wrapped' set but not used [-Wunused-but-set-variable]
           bool wrapped =3D false;
                ^
>> drivers/platform/x86/socwatch/sw_output_buffer.c:299:25: warning: variab=
le 'write_index' set but not used [-Wunused-but-set-variable]
           size_t read_index =3D 0, write_index =3D 0, dst_index =3D 0;
                                  ^
>> drivers/platform/x86/socwatch/sw_output_buffer.c:398:6: warning: no prev=
ious prototype for function 'reset_output_buffers' [-Wmissing-prototypes]
   void reset_output_buffers(void)
        ^
   drivers/platform/x86/socwatch/sw_output_buffer.c:398:1: note: declare 's=
tatic' if the function is not intended to be used outside of this translati=
on unit
   void reset_output_buffers(void)
   ^
   static=20
   3 warnings generated.


vim +/write_index +299 drivers/platform/x86/socwatch/sw_output_buffer.c

688e338c753b33 Faycal Benmlih 2019-04-23  292 =20
688e338c753b33 Faycal Benmlih 2019-04-23  293  /*
688e338c753b33 Faycal Benmlih 2019-04-23  294   * Returns # of bytes succes=
sfully consumed on success
688e338c753b33 Faycal Benmlih 2019-04-23  295   * 0 on EOF (no error condit=
ion)
688e338c753b33 Faycal Benmlih 2019-04-23  296   */
688e338c753b33 Faycal Benmlih 2019-04-23  297  static size_t consume_buffer=
(void *dest, size_t bytes_to_read)
688e338c753b33 Faycal Benmlih 2019-04-23  298  {
688e338c753b33 Faycal Benmlih 2019-04-23 @299  	size_t read_index =3D 0, wr=
ite_index =3D 0, dst_index =3D 0;
688e338c753b33 Faycal Benmlih 2019-04-23  300  	size_t to_read =3D 0;
688e338c753b33 Faycal Benmlih 2019-04-23 @301  	bool wrapped =3D false;
688e338c753b33 Faycal Benmlih 2019-04-23  302  	size_t read_size =3D bytes_=
to_read;
688e338c753b33 Faycal Benmlih 2019-04-23  303  	unsigned long bytes_not_cop=
ied =3D 0;
688e338c753b33 Faycal Benmlih 2019-04-23  304  	struct sw_driver_continuous=
_collect data =3D {0};
688e338c753b33 Faycal Benmlih 2019-04-23  305 =20
688e338c753b33 Faycal Benmlih 2019-04-23  306  	WRITE_LOCK(sw_continuous_lo=
ck);
688e338c753b33 Faycal Benmlih 2019-04-23  307  	smp_mb(); /* memory access =
ordering */
688e338c753b33 Faycal Benmlih 2019-04-23  308  	read_index =3D buffer.read_=
index;
688e338c753b33 Faycal Benmlih 2019-04-23  309  	write_index =3D buffer.writ=
e_index;
688e338c753b33 Faycal Benmlih 2019-04-23  310  	/* EXE sends size as header=
 + payload; we only want payload */
688e338c753b33 Faycal Benmlih 2019-04-23  311  	read_size -=3D SW_DRIVER_CO=
NTINUOUS_COLLECT_HEADER_SIZE();
688e338c753b33 Faycal Benmlih 2019-04-23  312  	data.collection_size =3D to=
_read =3D
688e338c753b33 Faycal Benmlih 2019-04-23  313  		MIN(read_size, get_data_av=
ailable(&buffer));
688e338c753b33 Faycal Benmlih 2019-04-23  314  	pw_pr_debug(
688e338c753b33 Faycal Benmlih 2019-04-23  315  		"DEBUG: read =3D %zu, writ=
e =3D %zu, avail =3D %zu, to_read =3D %zu\n",
688e338c753b33 Faycal Benmlih 2019-04-23  316  		read_index, write_index, g=
et_data_available(&buffer), to_read);
688e338c753b33 Faycal Benmlih 2019-04-23  317  	while (to_read) {
688e338c753b33 Faycal Benmlih 2019-04-23  318  		size_t curr_read =3D to_re=
ad;
688e338c753b33 Faycal Benmlih 2019-04-23  319 =20
688e338c753b33 Faycal Benmlih 2019-04-23  320  		if (read_index + to_read >=
 buffer.size) {
688e338c753b33 Faycal Benmlih 2019-04-23  321  			curr_read =3D buffer.size=
 - read_index;
688e338c753b33 Faycal Benmlih 2019-04-23  322  			wrapped =3D true;
688e338c753b33 Faycal Benmlih 2019-04-23  323  			pw_pr_debug(
688e338c753b33 Faycal Benmlih 2019-04-23  324  				"DEBUG: read =3D %zu, to=
_read =3D %zu, curr_read =3D %zu, buffer.size =3D %lu, WRAPPED!\n",
688e338c753b33 Faycal Benmlih 2019-04-23  325  				read_index, to_read, cur=
r_read, buffer.size);
688e338c753b33 Faycal Benmlih 2019-04-23  326  		}
688e338c753b33 Faycal Benmlih 2019-04-23  327  		memcpy(&output_buffer[dst_=
index],
688e338c753b33 Faycal Benmlih 2019-04-23  328  			&buffer.data[read_index],=
 curr_read);
688e338c753b33 Faycal Benmlih 2019-04-23  329  		read_index =3D (read_index=
 + curr_read) & (buffer.size - 1);
688e338c753b33 Faycal Benmlih 2019-04-23  330  		to_read -=3D curr_read;
688e338c753b33 Faycal Benmlih 2019-04-23  331  		dst_index +=3D curr_read;
688e338c753b33 Faycal Benmlih 2019-04-23  332  	}
688e338c753b33 Faycal Benmlih 2019-04-23  333  	buffer.read_index =3D read_=
index;
688e338c753b33 Faycal Benmlih 2019-04-23  334  	smp_mb(); /* memory access =
ordering */
688e338c753b33 Faycal Benmlih 2019-04-23  335  	pw_pr_debug("DEBUG: read at=
 end of while =3D %zu\n", buffer.read_index);
688e338c753b33 Faycal Benmlih 2019-04-23  336  	WRITE_UNLOCK(sw_continuous_=
lock);
688e338c753b33 Faycal Benmlih 2019-04-23  337 =20
688e338c753b33 Faycal Benmlih 2019-04-23  338  	/*
688e338c753b33 Faycal Benmlih 2019-04-23  339  	 * Call 'copy_to_user' inst=
ead of 'sw_copy_to_user' since
688e338c753b33 Faycal Benmlih 2019-04-23  340  	 * sw_copy_to_user expects =
to see a 'struct uio' while this
688e338c753b33 Faycal Benmlih 2019-04-23  341  	 * is called from an IOCTL =
which does NOT have a 'struct uio'
688e338c753b33 Faycal Benmlih 2019-04-23  342  	 */
688e338c753b33 Faycal Benmlih 2019-04-23  343  	bytes_not_copied =3D
688e338c753b33 Faycal Benmlih 2019-04-23  344  	copy_to_user(dest, (char *)=
&data,
688e338c753b33 Faycal Benmlih 2019-04-23  345  		SW_DRIVER_CONTINUOUS_COLLE=
CT_HEADER_SIZE());
688e338c753b33 Faycal Benmlih 2019-04-23  346  	if (bytes_not_copied)
688e338c753b33 Faycal Benmlih 2019-04-23  347  		return 0;
688e338c753b33 Faycal Benmlih 2019-04-23  348 =20
688e338c753b33 Faycal Benmlih 2019-04-23  349  	pw_pr_debug("DEBUG: collect=
ion size =3D %u\n", data.collection_size);
688e338c753b33 Faycal Benmlih 2019-04-23  350  	if (data.collection_size) {
688e338c753b33 Faycal Benmlih 2019-04-23  351  		bytes_not_copied =3D
688e338c753b33 Faycal Benmlih 2019-04-23  352  			copy_to_user(dest +
688e338c753b33 Faycal Benmlih 2019-04-23  353  				SW_DRIVER_CONTINUOUS_COL=
LECT_HEADER_SIZE(),
688e338c753b33 Faycal Benmlih 2019-04-23  354  				output_buffer, data.coll=
ection_size);
688e338c753b33 Faycal Benmlih 2019-04-23  355  		if (bytes_not_copied)
688e338c753b33 Faycal Benmlih 2019-04-23  356  			return 0;
688e338c753b33 Faycal Benmlih 2019-04-23  357 =20
688e338c753b33 Faycal Benmlih 2019-04-23  358  	}
688e338c753b33 Faycal Benmlih 2019-04-23  359  	return data.collection_size=
;
688e338c753b33 Faycal Benmlih 2019-04-23  360  }
688e338c753b33 Faycal Benmlih 2019-04-23  361 =20
688e338c753b33 Faycal Benmlih 2019-04-23  362  long initialize_circular_buf=
fer(size_t size)
688e338c753b33 Faycal Benmlih 2019-04-23  363  {
688e338c753b33 Faycal Benmlih 2019-04-23  364  	size_t alloc_size =3D size,=
 read_size =3D size;
688e338c753b33 Faycal Benmlih 2019-04-23  365  	/*
688e338c753b33 Faycal Benmlih 2019-04-23  366  	 * We require a power of tw=
o size
688e338c753b33 Faycal Benmlih 2019-04-23  367  	 */
688e338c753b33 Faycal Benmlih 2019-04-23  368  	pw_pr_debug("DEBUG: old all=
oc size =3D %zu\n", alloc_size);
688e338c753b33 Faycal Benmlih 2019-04-23  369  	if ((alloc_size & (alloc_si=
ze - 1)) !=3D 0)
688e338c753b33 Faycal Benmlih 2019-04-23  370  		alloc_size =3D 1 << fls(al=
loc_size);
688e338c753b33 Faycal Benmlih 2019-04-23  371 =20
688e338c753b33 Faycal Benmlih 2019-04-23  372  	pw_pr_debug("DEBUG: new all=
oc size =3D %zu\n", alloc_size);
688e338c753b33 Faycal Benmlih 2019-04-23  373  	/* Create double-sized buff=
er */
688e338c753b33 Faycal Benmlih 2019-04-23  374  	alloc_size <<=3D 1;
688e338c753b33 Faycal Benmlih 2019-04-23  375  	pw_pr_debug("DEBUG: double =
alloc size =3D %zu\n", alloc_size);
688e338c753b33 Faycal Benmlih 2019-04-23  376  	memset(&buffer, 0, sizeof(b=
uffer));
688e338c753b33 Faycal Benmlih 2019-04-23  377  	buffer.free_pages =3D
688e338c753b33 Faycal Benmlih 2019-04-23  378  		sw_allocate_pages(GFP_KERN=
EL | __GFP_ZERO, alloc_size);
688e338c753b33 Faycal Benmlih 2019-04-23  379  	if (!buffer.free_pages) {
688e338c753b33 Faycal Benmlih 2019-04-23  380  		pw_pr_error("Couldn't allo=
cate space for buffer!\n");
688e338c753b33 Faycal Benmlih 2019-04-23  381  		return -ENOMEM;
688e338c753b33 Faycal Benmlih 2019-04-23  382  	}
688e338c753b33 Faycal Benmlih 2019-04-23  383  	buffer.read_index =3D buffe=
r.write_index =3D 0;
688e338c753b33 Faycal Benmlih 2019-04-23  384  	buffer.size =3D alloc_size;
688e338c753b33 Faycal Benmlih 2019-04-23  385  	SW_INIT_RWLOCK(sw_continuou=
s_lock);
688e338c753b33 Faycal Benmlih 2019-04-23  386  	/*
688e338c753b33 Faycal Benmlih 2019-04-23  387  	 * Create temp output buffe=
r
688e338c753b33 Faycal Benmlih 2019-04-23  388  	 */
688e338c753b33 Faycal Benmlih 2019-04-23  389  	output_buffer =3D vmalloc(r=
ead_size);
688e338c753b33 Faycal Benmlih 2019-04-23  390  	if (!output_buffer) {
688e338c753b33 Faycal Benmlih 2019-04-23  391  		pw_pr_error(
688e338c753b33 Faycal Benmlih 2019-04-23  392  			"Couldn't create temporar=
y buffer for data output!\n");
688e338c753b33 Faycal Benmlih 2019-04-23  393  		return -ENOMEM;
688e338c753b33 Faycal Benmlih 2019-04-23  394  	}
688e338c753b33 Faycal Benmlih 2019-04-23  395  	return 0;
688e338c753b33 Faycal Benmlih 2019-04-23  396  }
688e338c753b33 Faycal Benmlih 2019-04-23  397 =20
688e338c753b33 Faycal Benmlih 2019-04-23 @398  void reset_output_buffers(vo=
id)
688e338c753b33 Faycal Benmlih 2019-04-23  399  {
688e338c753b33 Faycal Benmlih 2019-04-23  400  	buffer.read_index =3D buffe=
r.write_index =3D 0;
688e338c753b33 Faycal Benmlih 2019-04-23  401  }
688e338c753b33 Faycal Benmlih 2019-04-23  402 =20

:::::: The code at line 299 was first introduced by commit
:::::: 688e338c753b33c023de3b774f7347effbf537a4 Platform/x86: Update SoCWat=
ch driver code to 2.10

:::::: TO: Faycal Benmlih <faycal.benmlih@intel.com>
:::::: CC: Faycal Benmlih <faycal.benmlih@intel.com>

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/202106031111.twpHNe4o-lkp%40intel.com.

--Dxnq1zWXvFF0Q93v
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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

--Dxnq1zWXvFF0Q93v--
