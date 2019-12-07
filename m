Return-Path: <clang-built-linux+bncBC4LXIPCY4NRB2WXVXXQKGQEZWR4TMI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43a.google.com (mail-pf1-x43a.google.com [IPv6:2607:f8b0:4864:20::43a])
	by mail.lfdr.de (Postfix) with ESMTPS id 3CA5E115B9D
	for <lists+clang-built-linux@lfdr.de>; Sat,  7 Dec 2019 10:07:56 +0100 (CET)
Received: by mail-pf1-x43a.google.com with SMTP id u13sf5501946pfl.15
        for <lists+clang-built-linux@lfdr.de>; Sat, 07 Dec 2019 01:07:56 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1575709674; cv=pass;
        d=google.com; s=arc-20160816;
        b=l6t7JROauhkvV5RuRfcDrBwFabxG5AUmapxfxfbQ0TUkFLbWSObec5+3H5nXptlH3V
         70lYbnT1TXY9jh7o3TGhjP8C1gubf3o85xnp/jfqaEi2ZevEdcSm/NyEeIG51JjBR9M8
         GUxfXVtHof+hGLf4PWg21ZWGovlmRkrRtzhB0IUhgwpC57iErApsviiAxvT9TbB3QjvT
         vNjw2CAcJ3VgQ1ie9/n2YchPgbFMs0JeOJK7UXuozAqrlEloT/VgZx9YLGo2Xt+xjduf
         xGUnjTgenS/WzmsOnbxzAliTCpDiE17uhGrJ1ERZiB8J/ncSOXjntcr1hhkg0Ez2DfVs
         IBog==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=B33gypKSMoSAlObyLpAG8pF5oDTZlBoxya2Cncvfkso=;
        b=HfvXr91IZSY1l6UiOl1uNt/Zv2QqtSoA98HOebrTZVVGRT+Kr9rvyiTlWV3XYvz7Z2
         4NZ55vHE/pVhffU4psQu+UpJa9KrbkagM7psXOSXA92QMqWTcp7FLW73B0VQMrrH7Klf
         k0HOaj/dA2wPo+7C+319xstkMcuT2NziAxlr11FNp2mdcRplM9NecYR5+DFBJsor7Ges
         82zXeX9LfnkFhWdIht2i72fEzfsDYKwn6Hm0LQL11YpeppgJ8lN5vlQkMQ/nvgfU4cMR
         UzsQrE74UrdsZtAlDIbWI3/vQciOjJWUBDplf5mNLP1zW/ctU9eOB2kFYuhFxBeczjSh
         QtFg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.24 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=B33gypKSMoSAlObyLpAG8pF5oDTZlBoxya2Cncvfkso=;
        b=lL3iFPDmilPnjZVKgbxXDu4T1VJl0ItU8TxecpbV4GgWjALISIfbhyJZ8mFAv/JkkJ
         o3mOU75gvJFWH1cY8fM3CcGlMZFwKwO7vLRTWyJz0aHZAXBbu4czObybiIr2i33rWTsi
         i9UJjQIcXCIrTzXJXEkWxNEWGy1Ou7xMVt5OSWRqZYMVSYSfzbNroEj/wwlhd2g3cgK7
         Zrb1ExP2rdAKjgCBZvXD7ZwDZm3QOmz4KgNK1xYPJa9arYQ1az0s6grDDgKU0aLEoGWY
         e25CwULlhF/UTL3bEdtjUb7HrKGrNoUMczUDEGchtNkBV+dvUkregfiVRkvEvGaT2Kjk
         BdTw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=B33gypKSMoSAlObyLpAG8pF5oDTZlBoxya2Cncvfkso=;
        b=ZVlPe1NCBoV+nh7/P16OiTCu1THtLKvUp5Z2ruU8YG2ymUus4CFL80yKjQPK9hmXXw
         MipoCv4hRw2DY3pPFveZHalpkPzzMRPDMDbWmAZGpDnToyd/04tXH9xmI98EitGHx8GP
         QydjTnMpzvEvJuSs9TSQoer3LWgCAMHblXLMytZmNI793v+Ngm9LLgsu20L8QS4TUaRf
         Bqaw+k4Fz6tgAcR2E7TQnv3dkay7W5b2is98fr5CxvclF4PMN2/5KixN89PvpE+TMJuZ
         7zN89dIb30c9KcUkGB33XKzT0/mm4dkD1QsBF4SESaFGWVJr1ZC5WuXyzAlcAUaRKNGw
         2S6Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWCIp9yjZvk+eNihVuucOIicGbESPJnKEmtE7BwkY/uj2K288KW
	x0yRFBXcflJmVj8zjbAtYhs=
X-Google-Smtp-Source: APXvYqyr/VSmXyBl+qpXvon+NR/f2T9EPiYKFYjsgIGGES52NsJ3c6hHc79haxfKyOsYfIhLeZ7MzA==
X-Received: by 2002:a62:1447:: with SMTP id 68mr19095227pfu.53.1575709674547;
        Sat, 07 Dec 2019 01:07:54 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:9743:: with SMTP id i3ls2288118pjw.0.canary-gmail;
 Sat, 07 Dec 2019 01:07:54 -0800 (PST)
X-Received: by 2002:a17:902:68:: with SMTP id 95mr18821281pla.117.1575709674030;
        Sat, 07 Dec 2019 01:07:54 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1575709674; cv=none;
        d=google.com; s=arc-20160816;
        b=xgr5GhsMAkzIXRxQ+y8zYg59MjS5nZO+aN8ji82p9NQ3xBnsCG/O1jVZK60wxw3LWu
         QD9GymWnRELEt3+xkzOfyRxSGAcsBp0H341cLrYw+btn6OThzBWDND2/s/CC/CScZ0pT
         +lkAmWO389BKkAulsVVzpFenbh+duxhPhdUxtq3Y+DdUW7hLXAh1p+Vi3Ciqb5MenYOi
         dX0XjFa8TeTyvfGGuFzvJA0OGD9l6+aSBAoy6TCcAY9MxRnyV4LOmFAyF0NtmLQcc7lk
         U9TeOLBBOov31HwD1lHdpe5r/Q7yhwppuVBCpIno9Rwgf8CezPA/94BvBYMVvcO960xr
         xqAw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date;
        bh=s9k4h0QJDpmGW6WyL3vDydzfTLEQEHNE0xqEMVREygM=;
        b=psIzQWESm3kJ4KCKnTF91sdBG02i3VCWzn9L9HQzD3WC0jeKPzqd7S/KsB9a/ZBzL6
         aa3IEbdHx17Wo+Jz2seQcD/Fzk/Zw72T3K2EfQiNA4yVJAI9gEP2YK6QtrO9/JteqRKg
         FA4eByI5BTNdENASXuAP2/svZ9QE+aqqg33PI1qXKFkWSuQYOat3wCKCs63tk00s5CAD
         FfPWuZiTNmKd6aaPA+gCSsytAMPeyXEViRXcnFfYTAy93dKwdVsf4lMSMBKpeKx1LWbO
         mDotjLvP1FCJBaaM7WX9tzOkpxSVx2B5zp+kLHRMfAEh45NcP3dG1vPN7UNwIEH9p+qR
         yH5g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.24 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga09.intel.com (mga09.intel.com. [134.134.136.24])
        by gmr-mx.google.com with ESMTPS id h18si182321pju.1.2019.12.07.01.07.53
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 07 Dec 2019 01:07:54 -0800 (PST)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 134.134.136.24 as permitted sender) client-ip=134.134.136.24;
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
  by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 07 Dec 2019 01:07:53 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,287,1571727600"; 
   d="gz'50?scan'50,208,50";a="362459043"
Received: from lkp-server01.sh.intel.com (HELO lkp-server01) ([10.239.97.150])
  by orsmga004.jf.intel.com with ESMTP; 07 Dec 2019 01:07:52 -0800
Received: from kbuild by lkp-server01 with local (Exim 4.89)
	(envelope-from <lkp@intel.com>)
	id 1idW47-00057l-Q6; Sat, 07 Dec 2019 17:07:51 +0800
Date: Sat, 7 Dec 2019 17:07:23 +0800
From: kbuild test robot <lkp@intel.com>
To: kbuild@lists.01.org
Cc: Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux@googlegroups.com
Subject: [joro:early-exceptions 8/18] ident_map_64.c:undefined reference to
 `__default_kernel_pte_mask'
Message-ID: <201912071721.Hnm6nWpv%lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="p6ezani77rx6em2i"
Content-Disposition: inline
User-Agent: NeoMutt/20170113 (1.7.2)
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


--p6ezani77rx6em2i
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

CC: kbuild-all@lists.01.org
TO: Joerg Roedel <jroedel@suse.de>

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/joro/linux.git early-exceptions
head:   0d7c3825ef282c8a947ecfae7d45d1932f4989d3
commit: bfd2cc626142340ac6c248cd809627e5e3ec49f7 [8/18] x86/boot/compressed/64: Rename kaslr_64.c to ident_map_64.c
config: x86_64-allnoconfig (attached as .config)
compiler: clang version 10.0.0 (git://gitmirror/llvm_project 040c39d50fb9c60de9020caf86e1a1fccfd6f861)
reproduce:
        git checkout bfd2cc626142340ac6c248cd809627e5e3ec49f7
        # save the attached .config to linux build tree
        make ARCH=x86_64 

If you fix the issue, kindly add following tag
Reported-by: kbuild test robot <lkp@intel.com>

All errors (new ones prefixed by >>):

   ld: arch/x86/boot/compressed/ident_map_64.o: in function `kernel_ident_mapping_init':
>> ident_map_64.c:(.text+0x3a): undefined reference to `__default_kernel_pte_mask'

---
0-DAY kernel test infrastructure                 Open Source Technology Center
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org Intel Corporation

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/201912071721.Hnm6nWpv%25lkp%40intel.com.

--p6ezani77rx6em2i
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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

--p6ezani77rx6em2i--
