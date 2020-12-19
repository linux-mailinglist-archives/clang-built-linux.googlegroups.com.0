Return-Path: <clang-built-linux+bncBCX2JBVY5MBBBXFB7L7AKGQEQO6WE7A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x637.google.com (mail-pl1-x637.google.com [IPv6:2607:f8b0:4864:20::637])
	by mail.lfdr.de (Postfix) with ESMTPS id 1007E2DF243
	for <lists+clang-built-linux@lfdr.de>; Sun, 20 Dec 2020 00:46:38 +0100 (CET)
Received: by mail-pl1-x637.google.com with SMTP id h23sf653419plr.13
        for <lists+clang-built-linux@lfdr.de>; Sat, 19 Dec 2020 15:46:37 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1608421596; cv=pass;
        d=google.com; s=arc-20160816;
        b=juVva08oMges8I+H22+IAteUiuBiYQcm2Czmld/1d0EK1j+V1hzd/8xZo0F6JbL3PK
         UYrKJucXW42yvhP588JZttLLDPfb9mdsrwWvdZLgKo4N8yHiZdymve5UhSfLsnOfPZHp
         4a2ulbjDQWXVrpsx3dXtrV7BmyOXGZk1aa0f7JfxJjOigCcBJ1LlP1wPRFil8XguisE5
         0zmrdcGVLs+lJ798F+i3uFD6vlShyJrC7PyFlb7ee7NPAbjsPLu/sQdNau7mL61kXM0/
         uZd+XUxM25xKAmMXxwHadtAgULzfqPTnjFVSJ7oNza+4x2dDAmoSXHpFoLsL9rRHWx6j
         OBaw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr:sender:dkim-signature;
        bh=vg37om60oi3V/egvALOmmEBzFvlyO75QxFzPwArwHR8=;
        b=crNy49Vv6eNBpN5b1XWtP9cLe/UIxTxp9cc17k1fTQo3APE3lH4p7kODkxkE6/neYd
         EG0Fu8FeDqXqV2LdVWBezotmAkJ8Eg1mlQND3h1vDLNQWzbaEOqE4Fu2lir6u6ujyOC5
         ubZkERUca5KIX8KOuORgIQ2Um4RsXRfv4orMknXc5IrHkxrIcGi3v5Q2Ncn5+LG/MdfU
         pF8GzSD1879gjBDdFgV9k/RF1yAyeKnlv7iZOog9Ger81Gs40a+EzdJDsEAKNAA9XhQz
         blogOJsd5n8JTP9PG0SvsXiTDTVrBZDWUEP97iXziL11c8idAnJikLqPqUt1oH79amPM
         MSzg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of philip.li@intel.com designates 134.134.136.20 as permitted sender) smtp.mailfrom=philip.li@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=vg37om60oi3V/egvALOmmEBzFvlyO75QxFzPwArwHR8=;
        b=Wgw70bbltM/+uZtYfbFxTYwAa5DY/9fc/BF3rGTmMcGw145Cz7Qa6jCShoIxD4RTDf
         dfp8wGB2NB6ESl/BZaRblKn0TCexd+jneo5CRF6LGyBSvG7qVII/BJg7OQsjj7wgogSp
         gPQnIPNNaq7reax+Irmh0hf4cMNxYCgixbrsutruB3XZGB7mImfbuaERVQC0lJKVeDMG
         qGWOnroLZeRsNzsj302k3jeWMHZTVjkk2zs7nBiMUKFsSj7nRNqFqrwgYKUYnr31uvLy
         HpiMLJUGKBcCQFpDx1Nc3xn4x82Pe3gBub8P1kJ8nmR8BY9B2tUacxpg504Oa2hornrD
         HGjg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:references:mime-version:content-disposition
         :in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=vg37om60oi3V/egvALOmmEBzFvlyO75QxFzPwArwHR8=;
        b=ZZyBDpv8NbD+5yBud2QyHhPPr12BAHpz700OHxRKSj8xXRKIOfev2c2f1MBdCFI0Rh
         cWfjorgVcoXTyt3f1oc/IDvaMFzfEKW732mOqRitt2vSlPeNq0JfSLHQ1r61ERlikZQ4
         W3wXMSk8gf33Qe/+60XUIgazuEcPB2FKTVMHaRyQ3nQtRFdkKLbDT55MNSKaeP5kqyWL
         Nldvqj+PClxQfajweoePoF60bMBZl3xcM5I4NPzS41+H1wxzis89TKUQzGmg/8EWBa4L
         g5Qhy41YQaatTKimPwpZQAvUBNtGPv03daCno/F/6vSSSjrt9GgUroa23ArA1NX4eURU
         czyA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531g1iIb8V6cZqszg5hohKCEVU3NMI9FZXJADizvkxplCrOlBHFl
	CiK0xtfrtlVtTNp4ppR19hE=
X-Google-Smtp-Source: ABdhPJw/WizgHTkr4AYU8m21vu6YWhvrapzNquEN/rZKoq0MNsTgR5EZZxw19cjfSAABqnbJV2YjhQ==
X-Received: by 2002:a17:90a:5914:: with SMTP id k20mr10847279pji.199.1608421596778;
        Sat, 19 Dec 2020 15:46:36 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:78d4:: with SMTP id t203ls991601pfc.6.gmail; Sat, 19 Dec
 2020 15:46:36 -0800 (PST)
X-Received: by 2002:a63:ca49:: with SMTP id o9mr9697585pgi.439.1608421596109;
        Sat, 19 Dec 2020 15:46:36 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1608421596; cv=none;
        d=google.com; s=arc-20160816;
        b=0o6wZSS5wA+yg7fs6teFDAd12n9YHQ30mZFe5GLo2wZEx5YGBjPpMqQbEMRH9oVfce
         P7URZ+ZE2wJFMLLynqIcEDn2kypmxlM3D/JLdUSxnR8ywzuQH05PETOuYoq8p+KkQxUi
         KwGAZjwmzpZBL5rROVETgTM/pqCG+aD0NdEymznsyrWIh0der3+/F1X/PDNY7Iuwl5Yu
         Ky4qfljnPTfzqx38BtRYcB7VZIDbrFpoOqvIDWzKW5reOEJIUPOFfWlfdGHC4B8WdnaI
         NwmTwiy6fr5+jBQ21/NKsAAFjBSBw1gvrvBgXmPZJo/eyeeoYrQxq1/vzl508fBhlgSJ
         KMPg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:ironport-sdr:ironport-sdr;
        bh=DProMhmHbDN3Bqm6QwdiERaEXnJK8DCIVtBOzv99baU=;
        b=pg6tJKoZiofV1w1TOrWaN0chl03rR1u0RZGv396HLYUSRuRZQwg+RXwbOS8WNeUaYJ
         xSLnVT+Cm7ULioomfnR3+eAtZ5bxa/QNE1bXwXktMR5fZAKL4vwvfl061nJmvTq4hCrb
         OQiOtbYhxaTsIiEd+paYSQR9jm0I/7BAOlbLMJSLRFzd5KnDt1jxOwJSQap46Up3vZzl
         AZYGg9MNFh1D6cI+z6dhoqOgHqifYWPAwEBSzcaWn+vW8w//XMrlKqD1YgvFmVbdlRaA
         qak1hp45JabS9nx8ju0wn0C5j6sMwpW1LycbQtEakn+dGKD2SNOskPAf7JiCOSCpX8ql
         NPUQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of philip.li@intel.com designates 134.134.136.20 as permitted sender) smtp.mailfrom=philip.li@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga02.intel.com (mga02.intel.com. [134.134.136.20])
        by gmr-mx.google.com with ESMTPS id ce15si1018675pjb.3.2020.12.19.15.46.36
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 19 Dec 2020 15:46:36 -0800 (PST)
Received-SPF: pass (google.com: domain of philip.li@intel.com designates 134.134.136.20 as permitted sender) client-ip=134.134.136.20;
IronPort-SDR: xg7AHmZAOGf1GnOws3FqY2dAYeuWKGfgnPokCj8Wwag5bYj3KsWAk0RbuQ5w8S7QDOUXczzyjE
 m1nY4pUrj1FQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9839"; a="162656140"
X-IronPort-AV: E=Sophos;i="5.78,433,1599548400"; 
   d="scan'208";a="162656140"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
  by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 19 Dec 2020 15:46:35 -0800
IronPort-SDR: DS3xB55itAuChlv82aK/vWPdvZAfb11Iwh6jWPEFSCweWopJSwh37iCOUkn9L8aWgJ6icdPhWN
 GTUV0vCfpRTA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.78,433,1599548400"; 
   d="scan'208";a="389542124"
Received: from pl-dbox.sh.intel.com (HELO intel.com) ([10.239.159.39])
  by fmsmga002.fm.intel.com with ESMTP; 19 Dec 2020 15:46:34 -0800
Date: Sun, 20 Dec 2020 07:42:52 +0800
From: Philip Li <philip.li@intel.com>
To: kernel test robot <lkp@intel.com>
Cc: Sam Ravnborg <sam@ravnborg.org>, kbuild-all@lists.01.org,
	clang-built-linux@googlegroups.com
Subject: Re: [kbuild-all] [drm-drm-misc:drm-misc-next 6/8]
 /tmp/lm95234-009664.s:278: Error: unrecognized opcode `zext.b a2,a0'
Message-ID: <20201219234252.GC3505@intel.com>
References: <202012190656.0vfUhEqf-lkp@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <202012190656.0vfUhEqf-lkp@intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: philip.li@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of philip.li@intel.com designates 134.134.136.20 as
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

On Sat, Dec 19, 2020 at 06:33:01AM +0800, kernel test robot wrote:
> tree:   git://anongit.freedesktop.org/drm/drm-misc drm-misc-next
> head:   630a159a0bf35fdc944c8e9633ed5aef0a6834db
> commit: ab2b29e64e05f2d92dc4a584de7818bc9a1eea4c [6/8] video: fbdev: s3c-fb: Fix kernel-doc and set but not used warnings
> config: riscv-randconfig-r022-20201217 (attached as .config)
> compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project cee1e7d14f4628d6174b33640d502bff3b54ae45)
> reproduce (this is a W=1 build):
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         # install riscv cross compiling tool for clang build
>         # apt-get install binutils-riscv64-linux-gnu
>         git remote add drm-drm-misc git://anongit.freedesktop.org/drm/drm-misc
>         git fetch --no-tags drm-drm-misc drm-misc-next
>         git checkout ab2b29e64e05f2d92dc4a584de7818bc9a1eea4c
>         # save the attached .config to linux build tree
>         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=riscv 
> 
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kernel test robot <lkp@intel.com>
Hi Sam, kindly ignore this false positive report.

Thanks

> 
> Note: the drm-drm-misc/drm-misc-next HEAD a1b766d1b3646b5ef90f0fa7b42fd99bbd166766 builds fine.
>       It only hurts bisectibility.
> 
> All errors (new ones prefixed by >>):
> 
>    /tmp/lm95234-009664.s: Assembler messages:
> >> /tmp/lm95234-009664.s:278: Error: unrecognized opcode `zext.b a2,a0'
> >> /tmp/lm95234-009664.s:672: Error: unrecognized opcode `zext.b a1,a0'
>    /tmp/lm95234-009664.s:679: Error: unrecognized opcode `zext.b a1,a0'
>    /tmp/lm95234-009664.s:700: Error: unrecognized opcode `zext.b a1,a0'
>    /tmp/lm95234-009664.s:707: Error: unrecognized opcode `zext.b a1,a0'
>    /tmp/lm95234-009664.s:807: Error: unrecognized opcode `zext.b a1,a0'
>    /tmp/lm95234-009664.s:828: Error: unrecognized opcode `zext.b a1,a0'
>    /tmp/lm95234-009664.s:852: Error: unrecognized opcode `zext.b a1,a0'
> >> /tmp/lm95234-009664.s:1243: Error: unrecognized opcode `zext.b a2,a1'
> >> /tmp/lm95234-009664.s:1426: Error: unrecognized opcode `zext.b a1,a1'
>    /tmp/lm95234-009664.s:1635: Error: unrecognized opcode `zext.b a1,a1'
>    /tmp/lm95234-009664.s:2110: Error: unrecognized opcode `zext.b a1,a1'
> >> /tmp/lm95234-009664.s:2299: Error: unrecognized opcode `zext.b s1,s1'
>    clang-12: error: assembler command failed with exit code 1 (use -v to see invocation)
> 
> ---
> 0-DAY CI Kernel Test Service, Intel Corporation
> https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org


> _______________________________________________
> kbuild-all mailing list -- kbuild-all@lists.01.org
> To unsubscribe send an email to kbuild-all-leave@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201219234252.GC3505%40intel.com.
