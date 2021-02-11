Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBDPOS2AQMGQER5K3WCI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63c.google.com (mail-pl1-x63c.google.com [IPv6:2607:f8b0:4864:20::63c])
	by mail.lfdr.de (Postfix) with ESMTPS id B8B7431962C
	for <lists+clang-built-linux@lfdr.de>; Fri, 12 Feb 2021 00:00:31 +0100 (CET)
Received: by mail-pl1-x63c.google.com with SMTP id f3sf5080134plg.21
        for <lists+clang-built-linux@lfdr.de>; Thu, 11 Feb 2021 15:00:31 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1613084429; cv=pass;
        d=google.com; s=arc-20160816;
        b=YQBtLXOPkNaUKi21daXGBUJHL7tkEj3Bpm74zWsteaYc9NOLTLbPTU/ROVAc15egYp
         tR+Wm3i3mYgs3SeQcCe7iaI46bk6d/+q5KB8H/2+KbZueS28Z5Jr/N+9GGeTY6iXgnOc
         GeSw64e6vTWdLo4ETeBwgvLIwua0NipCtMUNDw4Ol6KGlNmb3NNvyw7+ngOkqEtyVhLn
         hpECZ4PWKBZ6iVteqQPT4qTdGn2zrQLYJOlMejjQqURx5HZ7KW1PlUQbwzh8QesvezLZ
         3YiSvyaAK4pmtliTODe0mD9ilCD7+CzxrZToV3tE/SAfviFwfGfg9jkHlTJpftH2O9Rq
         Uj7g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-transfer-encoding:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:ironport-sdr
         :ironport-sdr:sender:dkim-signature;
        bh=qcp6UaH72WyJnvoEEG+CuKttP7FBi3ENcSmp+RwLK9s=;
        b=dfzRnSjNuoY/U80860EVjf0r1/ALKiOBm6ClgMbQ0RiO3s9BYAV4gGnK2gpdP99guj
         CdA7hR7i1GCNQiVSiyKPt/ECVGSA7HQbumB1PRE41MZCyfoWua8VRFN79ViS03nXDygK
         PjEsEoj1smpZ3TKRIKJDWcghvS7ZSaFY4qq6zdMwBBKO2pUdfFuGzlXCEHisiLOKFreV
         DUppFcAL9vXXHq0bRr3EYRuH2thDLo4CyK3dKqEJbNREKS9EbIb5fosu5UYz0MnMtSe2
         I9d5ExPS1h7p0QtL9W2eGUCf9VhC6oE0bwMGqpwRQeugBT5LyHv/FEoGHAeP59HorH0U
         2t0A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.136 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition
         :content-transfer-encoding:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=qcp6UaH72WyJnvoEEG+CuKttP7FBi3ENcSmp+RwLK9s=;
        b=iwCCEawpLNRgbtY2Ravjt8ucOQ8+1t2jh7N+QHfA+LUbewHe8gb/lpYA2kivsC2zL2
         y8d9PM8wGrf0vT1GRKtbPcm5Ii4pdExKQbZ6beSAB7OTl0XhjB6VLbAiva5cHBPwXndC
         VHvtEqWPZ/ajgL9irhEUUWtJHzFbSbsRaDlSw4kH9MMY0SPbfLyOfJvl3LUJG5JKEFEk
         Nm8TBBzLTclZ4msg0pSCxE87sOkK0R0csPz1PSds7Pq/N6LIlj+uQWpkn9dviasQF2gf
         VgMGxLnGjFPFdXYk388OAce4xpLS+GW0rNOPYVf2EoQnSpcRwJfWwmGzu21bbk3yvhUj
         UEMA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:references:mime-version:content-disposition
         :content-transfer-encoding:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=qcp6UaH72WyJnvoEEG+CuKttP7FBi3ENcSmp+RwLK9s=;
        b=S5TObSp8IA9XX1cR+7WZzJoMgT08V9A7PiKTKgJf2F7i/JAW94ogJXwEDjR96PSVLJ
         28CgUuXnOujJ47rjm647K+cBj0EmcHCTUmq5CzTmR8KT4WPzBe61JXgD7OK4fOWrG3VA
         L4lTSB6Kjz4swSGgenk3DRHGw/75F3j2HqHaSuzv7IDKOd3vRYMfqtBSFOLVQaf2o/hx
         QeMnucprbslBhgs0htvjTyk6uNvjY5ecyjmnEgOYFiOqS78/o6D8S21DCmeTBdDPYSdY
         34yUbvGNST++pmvqh9FRl5acjYDBJBa+J+H4DrZYRu4P7fBs0cCCQmtVFtFgP4GuFjiF
         WEQw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531aDyJ8TPBsyhPWNLRlWfsKjteTB0BC1txgOnwQxM8deoWfXesF
	cQSnQ4rvPmgmYtMa1tMuB0o=
X-Google-Smtp-Source: ABdhPJwBR6UjCdXAG5Te4U+OpuY+CcLH0Kg68H5v6PV6T7VBwjZZs27Sx9ubKhzw9SW0ImvQrj5c9g==
X-Received: by 2002:a62:3181:0:b029:1df:4f2:16b3 with SMTP id x123-20020a6231810000b02901df04f216b3mr76704pfx.24.1613084429139;
        Thu, 11 Feb 2021 15:00:29 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:f203:: with SMTP id m3ls2621601pfh.9.gmail; Thu, 11 Feb
 2021 15:00:28 -0800 (PST)
X-Received: by 2002:a63:343:: with SMTP id 64mr403740pgd.232.1613084428225;
        Thu, 11 Feb 2021 15:00:28 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1613084428; cv=none;
        d=google.com; s=arc-20160816;
        b=xCAcs9pW/xj11MXfViQ/wAUQu0ymj7DZJbfoafUvxHavAmeVktpCRe4tIK6c0Si1R5
         O9Mu/8epk+3pQoM55rvUmqXfgPiAxKLxTJdSFV99lNNoMSrqQm1UbwAcA7IXukTSXbMe
         pNv4xaNfzkyQCh6P9bknISPqfUIjk5idVXr/aguNoP6XNp4T10Rp/feQzGebj7h2Vu/k
         IzwjqLKihOQLgsldu/ZqvJ7l4xhFi4PCC8/LCMqX58OH9HfGXtCDGmu/CPdA0CwxMnCm
         xOUhL+qcHAYpu5LoCoQPf+DO5USp/4q4SUqMo/tZRwTGUN2OiFfhpMR/pmFvIjnj3jOV
         wIFQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-transfer-encoding
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr;
        bh=WcKu85tv1ed5/bzaM+VDnaajKx8nvrqN8v6AJ3UZP5c=;
        b=CHt2lfot9h+ugLSBDisytYl8zc0JA8BLzLyKErQpGolFj/e6g0d0Zj6UX9gdt1ycHv
         6BNW44s0Xn8ZCIuU8Qo3E/MCKWvqAbkdHSay7g8AyvWyvkoFI9nZe79TGgKXhsuIbyC4
         rEHJ1v1Vk6sq4yKI3eh4irLoIbeosyGUsQKAEUVri3De+SZhjtEIwNhtUZ0cbkqMTVkG
         cLAV+O7TCG0G+8ACkRgS6M0ZG4Jm2Ig1gqN6pBBXqX0oEQVJquoxqjc+sn0XtQJRk8py
         aJeofnWjBZOBGXG01FP/7cZe86ofh+JSNx8w3SyQIl2MaE+JEM+03+7FzImaDQF/32X+
         b88A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.136 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga12.intel.com (mga12.intel.com. [192.55.52.136])
        by gmr-mx.google.com with ESMTPS id p2si27785pjn.1.2021.02.11.15.00.27
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 11 Feb 2021 15:00:28 -0800 (PST)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 192.55.52.136 as permitted sender) client-ip=192.55.52.136;
IronPort-SDR: ILebkNzAdXMqEfcpeAWo/b5XfLFpNqJPYD+D2iukxg6XtpqBUUFxU/2df3JWp9RyNrDqLDd+ZN
 1yBe5bEv5aBg==
X-IronPort-AV: E=McAfee;i="6000,8403,9892"; a="161475706"
X-IronPort-AV: E=Sophos;i="5.81,172,1610438400"; 
   d="gz'50?scan'50,208,50";a="161475706"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
  by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 11 Feb 2021 15:00:27 -0800
IronPort-SDR: ZhlZaxLhARwmnhEfkY6C3O/qjJf8w7bYpv8Q63hWCAnKtwHPT2iuQVS4kA7xGKl0HhBjs/vbLA
 zuiy0g+gbpHw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,172,1610438400"; 
   d="gz'50?scan'50,208,50";a="511062707"
Received: from lkp-server02.sh.intel.com (HELO cd560a204411) ([10.239.97.151])
  by orsmga004.jf.intel.com with ESMTP; 11 Feb 2021 15:00:23 -0800
Received: from kbuild by cd560a204411 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1lAKwg-0004Af-8g; Thu, 11 Feb 2021 23:00:22 +0000
Date: Fri, 12 Feb 2021 06:59:18 +0800
From: kernel test robot <lkp@intel.com>
To: Guido =?iso-8859-1?Q?G=FCnther?= <agx@sigxcpu.org>,
	Heikki Krogerus <heikki.krogerus@linux.intel.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	linux-kernel@vger.kernel.org, linux-usb@vger.kernel.org
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com
Subject: Re: [PATCH v1 3/4] usb: typec: tps6598x: Add trace event for power
 status register
Message-ID: <202102120644.IXu75GmJ-lkp@intel.com>
References: <7ae25a6ca5c55e2250e18f816f94a72764f18f21.1613058605.git.agx@sigxcpu.org>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="VbJkn9YxBvnuCH5J"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <7ae25a6ca5c55e2250e18f816f94a72764f18f21.1613058605.git.agx@sigxcpu.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lkp@intel.com designates 192.55.52.136 as permitted
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


--VbJkn9YxBvnuCH5J
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi "Guido,

I love your patch! Yet something to improve:

[auto build test ERROR on usb/usb-testing]
[also build test ERROR on v5.11-rc7 next-20210211]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch]

url:    https://github.com/0day-ci/linux/commits/Guido-G-nther/usb-typec-tp=
s6598x-Add-IRQ-flag-and-register-tracing/20210212-001108
base:   https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/usb.git usb-=
testing
config: mips-randconfig-r036-20210209 (attached as .config)
compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project c9439c=
a36342fb6013187d0a69aef92736951476)
reproduce (this is a W=3D1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/=
make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install mips cross compiling tool for clang build
        # apt-get install binutils-mips-linux-gnu
        # https://github.com/0day-ci/linux/commit/e726633dc82c8537d76fed3f4=
a2e55a28bc3e670
        git remote add linux-review https://github.com/0day-ci/linux
        git fetch --no-tags linux-review Guido-G-nther/usb-typec-tps6598x-A=
dd-IRQ-flag-and-register-tracing/20210212-001108
        git checkout e726633dc82c8537d76fed3f4a2e55a28bc3e670
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=3D$HOME/0day COMPILER=3Dclang make.cross ARCH=
=3Dmips=20

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All errors (new ones prefixed by >>):

   In file included from include/trace/define_trace.h:102:
   In file included from include/trace/trace_events.h:401:
   drivers/usb/typec/./tps6598x_trace.h:190:37: error: implicit declaration=
 of function 'FIELD_GET' [-Werror,-Wimplicit-function-declaration]
                         show_status_pp_switch_state(TPS_STATUS_PP_5V0_SWIT=
CH(__entry->status)),
                                                     ^
   drivers/usb/typec/tps6598x.h:30:38: note: expanded from macro 'TPS_STATU=
S_PP_5V0_SWITCH'
   #define TPS_STATUS_PP_5V0_SWITCH(x)             FIELD_GET(TPS_STATUS_PP_=
5V0_SWITCH_MASK, (x))
                                                   ^
   In file included from drivers/usb/typec/tps6598x.c:21:
   In file included from drivers/usb/typec/./tps6598x_trace.h:229:
   In file included from include/trace/define_trace.h:102:
   In file included from include/trace/trace_events.h:401:
   drivers/usb/typec/./tps6598x_trace.h:191:37: error: implicit declaration=
 of function 'FIELD_GET' [-Werror,-Wimplicit-function-declaration]
                         show_status_pp_switch_state(TPS_STATUS_PP_HV_SWITC=
H(__entry->status)),
                                                     ^
   drivers/usb/typec/tps6598x.h:32:37: note: expanded from macro 'TPS_STATU=
S_PP_HV_SWITCH'
   #define TPS_STATUS_PP_HV_SWITCH(x)              FIELD_GET(TPS_STATUS_PP_=
HV_SWITCH_MASK, (x))
                                                   ^
   In file included from drivers/usb/typec/tps6598x.c:21:
   In file included from drivers/usb/typec/./tps6598x_trace.h:229:
   In file included from include/trace/define_trace.h:102:
   In file included from include/trace/trace_events.h:401:
   drivers/usb/typec/./tps6598x_trace.h:192:37: error: implicit declaration=
 of function 'FIELD_GET' [-Werror,-Wimplicit-function-declaration]
                         show_status_pp_switch_state(TPS_STATUS_PP_EXT_SWIT=
CH(__entry->status)),
                                                     ^
   drivers/usb/typec/tps6598x.h:34:38: note: expanded from macro 'TPS_STATU=
S_PP_EXT_SWITCH'
   #define TPS_STATUS_PP_EXT_SWITCH(x)             FIELD_GET(TPS_STATUS_PP_=
EXT_SWITCH_MASK, (x))
                                                   ^
   In file included from drivers/usb/typec/tps6598x.c:21:
   In file included from drivers/usb/typec/./tps6598x_trace.h:229:
   In file included from include/trace/define_trace.h:102:
   In file included from include/trace/trace_events.h:401:
   drivers/usb/typec/./tps6598x_trace.h:193:37: error: implicit declaration=
 of function 'FIELD_GET' [-Werror,-Wimplicit-function-declaration]
                         show_status_pp_switch_state(TPS_STATUS_PP_CABLE_SW=
ITCH(__entry->status)),
                                                     ^
   drivers/usb/typec/tps6598x.h:36:40: note: expanded from macro 'TPS_STATU=
S_PP_CABLE_SWITCH'
   #define TPS_STATUS_PP_CABLE_SWITCH(x)           FIELD_GET(TPS_STATUS_PP_=
CABLE_SWITCH_MASK, (x))
                                                   ^
   In file included from drivers/usb/typec/tps6598x.c:21:
   In file included from drivers/usb/typec/./tps6598x_trace.h:229:
   In file included from include/trace/define_trace.h:102:
   In file included from include/trace/trace_events.h:401:
   drivers/usb/typec/./tps6598x_trace.h:194:9: error: implicit declaration =
of function 'FIELD_GET' [-Werror,-Wimplicit-function-declaration]
                         show_status_power_sources(__entry->status),
                         ^
   drivers/usb/typec/./tps6598x_trace.h:98:19: note: expanded from macro 's=
how_status_power_sources'
           __print_symbolic(TPS_STATUS_POWER_SOURCE(status), \
                            ^
   drivers/usb/typec/tps6598x.h:38:37: note: expanded from macro 'TPS_STATU=
S_POWER_SOURCE'
   #define TPS_STATUS_POWER_SOURCE(x)              FIELD_GET(TPS_STATUS_POW=
ER_SOURCE_MASK, (x))
                                                   ^
   In file included from drivers/usb/typec/tps6598x.c:21:
   In file included from drivers/usb/typec/./tps6598x_trace.h:229:
   In file included from include/trace/define_trace.h:102:
   In file included from include/trace/trace_events.h:401:
   drivers/usb/typec/./tps6598x_trace.h:195:9: error: implicit declaration =
of function 'FIELD_GET' [-Werror,-Wimplicit-function-declaration]
                         show_status_vbus_status(__entry->status),
                         ^
   drivers/usb/typec/./tps6598x_trace.h:105:19: note: expanded from macro '=
show_status_vbus_status'
           __print_symbolic(TPS_STATUS_VBUS_STATUS(status), \
                            ^
   drivers/usb/typec/tps6598x.h:40:36: note: expanded from macro 'TPS_STATU=
S_VBUS_STATUS'
   #define TPS_STATUS_VBUS_STATUS(x)               FIELD_GET(TPS_STATUS_VBU=
S_STATUS_MASK, (x))
                                                   ^
   In file included from drivers/usb/typec/tps6598x.c:21:
   In file included from drivers/usb/typec/./tps6598x_trace.h:229:
   In file included from include/trace/define_trace.h:102:
   In file included from include/trace/trace_events.h:401:
   drivers/usb/typec/./tps6598x_trace.h:196:9: error: implicit declaration =
of function 'FIELD_GET' [-Werror,-Wimplicit-function-declaration]
                         show_status_usb_host_present(__entry->status),
                         ^
   drivers/usb/typec/./tps6598x_trace.h:112:19: note: expanded from macro '=
show_status_usb_host_present'
           __print_symbolic(TPS_STATUS_USB_HOST_PRESENT(status), \
                            ^
   drivers/usb/typec/tps6598x.h:42:41: note: expanded from macro 'TPS_STATU=
S_USB_HOST_PRESENT'
   #define TPS_STATUS_USB_HOST_PRESENT(x)          FIELD_GET(TPS_STATUS_USB=
_HOST_PRESENT_MASK, (x))
                                                   ^
   In file included from drivers/usb/typec/tps6598x.c:21:
   In file included from drivers/usb/typec/./tps6598x_trace.h:229:
   In file included from include/trace/define_trace.h:102:
   In file included from include/trace/trace_events.h:401:
   drivers/usb/typec/./tps6598x_trace.h:197:9: error: implicit declaration =
of function 'FIELD_GET' [-Werror,-Wimplicit-function-declaration]
                         show_status_legacy(__entry->status),
                         ^
   drivers/usb/typec/./tps6598x_trace.h:119:19: note: expanded from macro '=
show_status_legacy'
           __print_symbolic(TPS_STATUS_LEGACY(status),          \
                            ^
   drivers/usb/typec/tps6598x.h:44:32: note: expanded from macro 'TPS_STATU=
S_LEGACY'
   #define TPS_STATUS_LEGACY(x)                    FIELD_GET(TPS_STATUS_LEG=
ACY_MASK, (x))
                                                   ^
   In file included from drivers/usb/typec/tps6598x.c:21:
   In file included from drivers/usb/typec/./tps6598x_trace.h:229:
   In file included from include/trace/define_trace.h:102:
   In file included from include/trace/trace_events.h:401:
   drivers/usb/typec/./tps6598x_trace.h:215:11: error: implicit declaration=
 of function 'FIELD_GET' [-Werror,-Wimplicit-function-declaration]
                         !!TPS_POWER_STATUS_CONNECTION(__entry->power_statu=
s),
                           ^
   drivers/usb/typec/tps6598x.h:128:41: note: expanded from macro 'TPS_POWE=
R_STATUS_CONNECTION'
   #define TPS_POWER_STATUS_CONNECTION(x)  FIELD_GET(BIT(0), (x))
                                           ^
>> drivers/usb/typec/tps6598x.c:235:9: error: implicit declaration of funct=
ion 'FIELD_GET' [-Werror,-Wimplicit-function-declaration]
           mode =3D TPS_POWER_STATUS_PWROPMODE(pwr_status);
                  ^
   drivers/usb/typec/tps6598x.h:133:43: note: expanded from macro 'TPS_POWE=
R_STATUS_PWROPMODE'
   #define TPS_POWER_STATUS_PWROPMODE(p)       FIELD_GET(TPS_POWER_STATUS_T=
YPEC_CURRENT_MASK, (p))
                                               ^
   drivers/usb/typec/tps6598x.c:505:6: error: implicit declaration of funct=
ion 'FIELD_GET' [-Werror,-Wimplicit-function-declaration]
           if (TPS_POWER_STATUS_CONNECTION(pwr_status) &&
               ^
   drivers/usb/typec/tps6598x.h:128:41: note: expanded from macro 'TPS_POWE=
R_STATUS_CONNECTION'
   #define TPS_POWER_STATUS_CONNECTION(x)  FIELD_GET(BIT(0), (x))
                                           ^
   drivers/usb/typec/tps6598x.c:527:7: error: implicit declaration of funct=
ion 'FIELD_GET' [-Werror,-Wimplicit-function-declaration]
                   if (TPS_POWER_STATUS_PWROPMODE(pwr_status) =3D=3D TYPEC_=
PWR_MODE_PD)
                       ^
   drivers/usb/typec/tps6598x.h:133:43: note: expanded from macro 'TPS_POWE=
R_STATUS_PWROPMODE'
   #define TPS_POWER_STATUS_PWROPMODE(p)       FIELD_GET(TPS_POWER_STATUS_T=
YPEC_CURRENT_MASK, (p))
                                               ^
   36 warnings and 13 errors generated.

Kconfig warnings: (for reference only)
   WARNING: unmet direct dependencies detected for SSB_EMBEDDED
   Depends on SSB && SSB_DRIVER_MIPS && SSB_PCICORE_HOSTMODE
   Selected by
   - BCM47XX_SSB && BCM47XX


vim +/FIELD_GET +235 drivers/usb/typec/tps6598x.c

18a6c866bb191f Bryan O'Donoghue 2020-05-12  220 =20
0a4c005bd1715d Heikki Krogerus  2017-09-25  221  static int tps6598x_connec=
t(struct tps6598x *tps, u32 status)
0a4c005bd1715d Heikki Krogerus  2017-09-25  222  {
0a4c005bd1715d Heikki Krogerus  2017-09-25  223  	struct typec_partner_desc=
 desc;
0a4c005bd1715d Heikki Krogerus  2017-09-25  224  	enum typec_pwr_opmode mod=
e;
0a4c005bd1715d Heikki Krogerus  2017-09-25  225  	u16 pwr_status;
0a4c005bd1715d Heikki Krogerus  2017-09-25  226  	int ret;
0a4c005bd1715d Heikki Krogerus  2017-09-25  227 =20
0a4c005bd1715d Heikki Krogerus  2017-09-25  228  	if (tps->partner)
0a4c005bd1715d Heikki Krogerus  2017-09-25  229  		return 0;
0a4c005bd1715d Heikki Krogerus  2017-09-25  230 =20
0a4c005bd1715d Heikki Krogerus  2017-09-25  231  	ret =3D tps6598x_read16(t=
ps, TPS_REG_POWER_STATUS, &pwr_status);
0a4c005bd1715d Heikki Krogerus  2017-09-25  232  	if (ret < 0)
0a4c005bd1715d Heikki Krogerus  2017-09-25  233  		return ret;
0a4c005bd1715d Heikki Krogerus  2017-09-25  234 =20
0a4c005bd1715d Heikki Krogerus  2017-09-25 @235  	mode =3D TPS_POWER_STATUS=
_PWROPMODE(pwr_status);
0a4c005bd1715d Heikki Krogerus  2017-09-25  236 =20
0a4c005bd1715d Heikki Krogerus  2017-09-25  237  	desc.usb_pd =3D mode =3D=
=3D TYPEC_PWR_MODE_PD;
0a4c005bd1715d Heikki Krogerus  2017-09-25  238  	desc.accessory =3D TYPEC_=
ACCESSORY_NONE; /* XXX: handle accessories */
0a4c005bd1715d Heikki Krogerus  2017-09-25  239  	desc.identity =3D NULL;
0a4c005bd1715d Heikki Krogerus  2017-09-25  240 =20
0a4c005bd1715d Heikki Krogerus  2017-09-25  241  	if (desc.usb_pd) {
0a4c005bd1715d Heikki Krogerus  2017-09-25  242  		ret =3D tps6598x_read_pa=
rtner_identity(tps);
0a4c005bd1715d Heikki Krogerus  2017-09-25  243  		if (ret)
0a4c005bd1715d Heikki Krogerus  2017-09-25  244  			return ret;
0a4c005bd1715d Heikki Krogerus  2017-09-25  245  		desc.identity =3D &tps->=
partner_identity;
0a4c005bd1715d Heikki Krogerus  2017-09-25  246  	}
0a4c005bd1715d Heikki Krogerus  2017-09-25  247 =20
0a4c005bd1715d Heikki Krogerus  2017-09-25  248  	typec_set_pwr_opmode(tps-=
>port, mode);
17785e43289bc7 Guido G=C3=BCnther    2021-02-11  249  	typec_set_pwr_role(t=
ps->port, TPS_STATUS_TO_TYPEC_PORTROLE(status));
17785e43289bc7 Guido G=C3=BCnther    2021-02-11  250  	typec_set_vconn_role=
(tps->port, TPS_STATUS_TO_TYPEC_VCONN(status));
17785e43289bc7 Guido G=C3=BCnther    2021-02-11  251  	tps6598x_set_data_ro=
le(tps, TPS_STATUS_TO_TYPEC_DATAROLE(status), true);
0a4c005bd1715d Heikki Krogerus  2017-09-25  252 =20
cf6e06cddf2972 Heikki Krogerus  2018-03-02  253  	tps->partner =3D typec_re=
gister_partner(tps->port, &desc);
cf6e06cddf2972 Heikki Krogerus  2018-03-02  254  	if (IS_ERR(tps->partner))
cf6e06cddf2972 Heikki Krogerus  2018-03-02  255  		return PTR_ERR(tps->part=
ner);
cf6e06cddf2972 Heikki Krogerus  2018-03-02  256 =20
0a4c005bd1715d Heikki Krogerus  2017-09-25  257  	if (desc.identity)
0a4c005bd1715d Heikki Krogerus  2017-09-25  258  		typec_partner_set_identi=
ty(tps->partner);
0a4c005bd1715d Heikki Krogerus  2017-09-25  259 =20
10eb0b6ac63a15 Guido G=C3=BCnther    2020-12-05  260  	power_supply_changed=
(tps->psy);
10eb0b6ac63a15 Guido G=C3=BCnther    2020-12-05  261 =20
0a4c005bd1715d Heikki Krogerus  2017-09-25  262  	return 0;
0a4c005bd1715d Heikki Krogerus  2017-09-25  263  }
0a4c005bd1715d Heikki Krogerus  2017-09-25  264 =20

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/202102120644.IXu75GmJ-lkp%40intel.com.

--VbJkn9YxBvnuCH5J
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

H4sICHivJWAAAy5jb25maWcAjDxdc+O2ru/9FZ7tS89MuxsnTnb33skDRVE215KokJRj54Xj
Zp1tbvOx4zht9/z6C1BfpEQ57UOzAkAQJEEQAEH//NPPE/J6eH7cHu5vtw8PPybfdk+7/faw
+zq5u3/Y/e8kFpNc6AmLuX4PxOn90+s/Hx7vv79Mzt9Pp+9Pftvffpwsd/un3cOEPj/d3X97
heb3z08//fwTFXnC54ZSs2JScZEbzdb68t3tw/bp2+Sv3f4F6CbT0/cn708mv3y7P/zPhw/w
/8f7/f55/+Hh4a9H833//H+728Pk9vPs7PPt9uzibHZ69/vFyfRs+unj15Ptxeft7u7z6cez
i8/n09nHi/+8a3qdd91enjTANB7CgI4rQ1OSzy9/OIQATNO4A1mKtvn09AT+a8kdxj4GuC+I
MkRlZi60cNj5CCNKXZQ6iOd5ynPWobi8MtdCLjtIVPI01jxjRpMoZUYJiaxgDX6ezO2KPkxe
dofX792qRFIsWW5gUVRWOLxzrg3LV4ZIGBbPuL48O21lElnBgb1mypE0FZSkzejfvfNkMoqk
2gEuyIqZJZM5S838hjsdu5gIMKdhVHqTkTBmfTPWQowhZmHEjdK47j9Papwj7+T+ZfL0fMDJ
HOCt1McIUPZj+PXN8dbiOHrmon1kPaIaGLOElKm2a+2sTQNeCKVzkrHLd788PT/tui2lromz
YGqjVrygHaAQiq9NdlWykrnTd000XRgLDkhIpVDKZCwTcmOI1oQu3MalYimPAu1ICSap0XHY
EZOX199ffrwcdo+djs9ZziSndsMUUkTOHnJRaiGuwxiWJIxqDqpBksRkRC3DdHThqjJCYpER
nvswxbMQkVlwJomki42PTYjSTPAODUqaxylsNFdtEdIwglY9FkJSFhu9kIzE3Bq4dmZd+WMW
lfNE+fq1e/o6eb7rzW1/9NborEAXwAakw8mhYByWbMVyrQLITChTFjHRrFlIff8Ix0JoLTWn
S7BWDBbLsT2LG1MALxFz6o4tF4jhMDUhjRM5nkNGS0KX3LX6fUw1fwPGAZ4LPl8YyZSdD7tA
7fwNhtRxKyRjWaGBax4StEGvRFrmmsiNK0mNdJvZGaRF+UFvX/6cHKDfyRZkeDlsDy+T7e3t
8+vT4f7pWzenKy61gQaGUCqgi56G2Cn30QEpA0xwhV1GqGJWUcKMWrpIxbhPKQOLAKQ60JuG
Pag0cdUJQaDBKdnYRj3EuoZ1o0IoF2/JUige3A7/Yn47JjgtXImUaDgbB0slaTlRIU3PNwZw
3UDgw7A1KLozOOVR2DY9EM6UbVrvtwBqACpjFoLjhjiOMGhhTBa5mu+Pr7VLy+ofl48dZAGN
cds89k2EoguwX9aKNCZC3f6x+/r6sNtP7nbbw+t+92LBdZ8BbLu751KUhaM4BZkzY5WAyQ4K
RxGd9z57R18FW8IfxwVLl3UPjj2x3+Zacs0iYofQqUaFswMMKmBNUPBYhYxYhZWx6w7VwARM
w407pBoesxX3zVmNADUd2W6NEEwmAXZwaDgKKeiyRRFNPLMJ7oQqQFVUeKgLRpeF4LlGG6qF
ZEGyShlIqYXtJSAunEOJAsHAOFI4VTwvro8zq9MAB4l2xF9VmDbrKknHhbLfJAOGSpR4RoAb
1fYk44Gv2GF6vi1AapfWbb4OnTGWVPSaznot0dMLtI2E0Kbed+76UyMKsMz8huFZZ9dZyIzk
NHhw9qgV/KPnQYPHH6MhoAIMCWqBYRhE5NYAuj0fJQyvLNUpWEHKCm1DSbQ8zkIVjoL2bWUG
bi0HT1J6+jBnGj06Uzsvo+o0cG6SyuvyTmPr+1aHf/g4kaDdy9DKuHsoIgqmtvQ6K8El6X2C
UXA7Z4UIi8/nOUkTR22tgC7AumYuQC08q0a48A5yYUo5dmKSeMVB/Hq6QkYLWEdESu7apiXS
bjI1hBhv0luonSPcpuiXu8KBCoTW0g0lpI1wkrDBlYpdBYQGmVkcs7in6bhVTN+ztUDox6wy
kEK4wRGdnsyaI6zOlxS7/d3z/nH7dLubsL92T+BFEDjFKPoR4DJ2HoHfVyuwNcCDPoNey7/s
seO9yqoOm/NxxHCLrCDaRDKk2Solkbfh0jIK2/VUjCFIBEoj4Ziug9ORbuyRl3IF5wdsTeEo
sI9dEBmDZ+Hpe5kkEEFZX8DOH4Hzx4tyNcsqC7UClyThtLFl7c4WCU+9OMLaJnueeZGAn4lp
NwW3PolVjGx7+8f90w4oHna3dRatnQ0kbB2jKrAPzpqlIykcltkmvFHlxzBcL07PxzAfP4dd
dleqkHmj2ezjeu3tU5pdnK3X47JTERF/qTs8oQvQBYohQO+g8Gm+kJtwNsViYbVYju5lf7s0
pxOBwOBqvH0qRD5XIj8L53s8mlOWvE10MRunKUBz4S8Pp3/sjMHO1+HUUs2BHpN0JWfTkfWQ
BDR7Gd6cc27AlQnzrZFhPauRn44gz06OIUf65NFGg0MvFzwfcSBrCiKzkb3T8RDHebxJABGD
zI4RpFzrlKlSHuUCJlio8NLWJBGfjzLJuRkRwi68Xp99HtuIFX42iudLKTRfGhmdj6wHJSte
ZkZQzTDLPLLV8jQz61SChwq2+QhFMaTwTYxRKnI8qRoIf4lrg4cWth9yLq4Zny8c77FNV8Fe
iCSEDlWywTkjbFwiMq7hpIFIx1jT7zo51v2WxMkyUrYCyMzJJ1II331IZQwx9g1k2DAjaFRZ
FEJqzKJhetPxRCAuxLQSFQsmQYe8A81eLDAi003tlva7RE/qC3cvI4qy1lfD8piT3OfXijFC
k4vacTdwUqa93tIpzCzMIBzFPNGX520ayzsFHUGw1dmpkVMvknEQI+oIFPa0Cjv63SBucLWG
E9bv+gj6NIyO6qN+DAVNz85OTlx19adhOAv+EiHMlU0TcJ204YqAw7y6nAaHe3YageJW/oTP
7g0SdKbAyLEqwd+6O66He/jxfdctnmXTS79gDGlmS89R7BDTi2XYM+xILmbL0PWAzdyCFVub
GzDUAtw+eTmduqPDqS8kS5i2Nw4OptnwcZkVRqdRT2GTopkZvxnsXcCVQ2Cl3h4jROWMxQr3
hsqI1JY1BNUZp1L4itIu7anNpK64j8KBqE1Oe2ISxeN6T50MEbAS6vJTN6GYwIbwLBT1u5pQ
k41s/+NY7Hx60bNgCcRx0ARMBl5cOsp1PRb1LG7MadhbAsws7FQAZnoSdikQNeKKYE/nJ4Ep
sYiLnlDQwXgPJ6eh2zlveojETbZwbzFvLqEb/5RZSMzKO2ExWzNn5akkamEV19lni42CqCU1
4EaCzp78c1f/92l2cuLeVVcqCFYoKS5mQx2vzoYsxstoOOhEZo+1VGDq1rVZ7t5v2uIhFrPA
xkHXdlllkQe4Yl7dZqegBKm6PK1MS/T6Mnn+jvbwZfJLQfmvk4JmlJNfJwwM3a8T+z9N/+OE
z5SbWHK8ogZec0KdszvLyp5GZhkpjMyrLQKDzmGbHMGT9eX0PEzQRMdv8PHIKnbtXP7rwTqh
Z1wnflpjXDz/vdtPIOrffts9QtDfcOxmyAq04BFYeBtXYT4L3Et3Q9b+hirgcHfRnbNZ4YKX
YxVj9LzTFBPh7g1m12sQCE4sKfDSD/Owjm5koDogCGg0137hAaJSxgqPGLPGDbQ7RTI4u5YM
lTPkFRRZj9gmXIKE4KYtvf7aM8TezDrjvb6C2btmEu+WOeWYYqlzG8fam072WjNGF7V1nyqK
rKUARIvjXx92bm7BXlT1rks9J6Rq4EIG7C2/5H7/+Pd2v5vE+/u/qiRW20nCZWYdBjD4oPxH
XPl8BX700JlX4OU6YM0g+snX4FVeuws1F2IOVqPpbXDtpnff9tvJXSPoVyuoe4c0QtCgB0Ns
5MGb0BKChJueNlduLmx0khsMp80qVuKyV56z3UNgcgBH73W/++3r7jt0FtyqlYWnQrLeIdCD
KXD8EkfvRJWnYt0dm01jtmC33qUKJoKH2Rf0iVISsVDCeRCFWKOBuUksBtI8N5F/kWZF4CA3
2kJorHuoZZ9hBZVMBxF5xnsQK4A9XhZCLHtIjJHgW/N5KcpAfYKCoeKmqOsnesNCtwu8TM2T
TXMJNCTALnAlytw6gX0elWMtksT0R451X5mI67Kq/kAlm4PDAIbYHp94lW2vzIv+8DGlHZqR
bhV7Al0TsEe8oGhYMaVcV3UFWChG8eA6gsJgT/fuXCpM6IzA1nY0qAaM+knYfwWHTyncNKzl
SUerPSwalg9c8EW/dmy8qMHT3GFdQ48ClrCek4JRTB47VkHEZcqU3R4sTfBKI8CerVFB8qp+
SBPX9WuVzLa2ee/hhdzQZekR2A6CCu63+jTUk6ZgTIsiFtd51SAlG+HVMaYQfxk89MEYx54n
Xzs+1SbAeRzTC9tlXXwojVcfZrMjzk1F6ByvdKvS6DqPYnLZGmAqVr/9vn3ZfZ38WXmu3/fP
d/cPVaVMd6oAWSDr3l8LS1bb1PoCq8v/H+nJkxVrV4u0nFeOw+D+4I2jomEFGpzhbaFrJu3l
mcKLIicotIqITqOxl796oKPuhNfUVXyNzn84PVhRlXmfosMPTduozWsklLQpJPZSYd0AQrC2
iGuIadZniFELMj02sJrmNBjW9Wj8SNFHnn0aSfx7VOfTUKmCQwOat7h89/LHFjp718PjvpFw
PASEaFBj5Qp9Mlti22eCl2bX4ONARJA7lR6GZzauDbkJOdg8OLs2WSTSwTJjURFD1RJLt5Ym
qmuA2s+lAZNob+ys7fBRiioOFvWq9CqVuxodI6/xCslHYaFHpOZBYMqjIRyzvHPJdbBgpEYZ
PT0ZojEp5VWnNAiwxELrNFxqZ+WvA3BrzqTP+ToKD5ZjBRrL6WYES0V/loCTya76cuN1s+tT
utDwkHCdRUHCly1IUNW2GxBObopglVyx3R/u0bJN9I/vO/dWvIn9sPIAS1bcAwyc4dyJDscQ
hpYZyck4njEl1uNoTr191UeTOAltgD6ZDQg1o8dYSa4oX4eY8bU30JaDUEmHCF/rZnxO3qLR
RPI3aDJCwxQNXsVChVYDCz5jrpY9VzTjOQxKlVFwXFhPCbNh1p8u3pCrBDY24Gz7CN/2xtlR
8fHWMSA8uD5ybO5VmR9luSRw0IabsuSt6cbK+4tPR/k7VsLpoUkd9HaUu52zK+v7cuHvcpsK
qUrtRVdj6WxGaMdFlaLEuq76wUqnIR16uYmYDIjc4KPEtTvJlWmslKoDqM5+ANKtRQyXr3vy
dq5G7tyTgJ5UZkgVEKOi0zLws9FLt08YYktkU0bjJPK6R9CVZNpJZP/sbl8P298fdvaZ1cQW
5Ry8ZEnE8yTT6NuPuZsdBUYG2j0BK4yikhd6AIajml4+um64ZJgxDk7fmKRVucru8Xn/w8kB
DdMVdX7fmQkAQMQV2ywQWI5+BImvHszcPfntYJeMFbZ+zF+b+t1IW2PtxIZFClFFoW2AAJGc
upz1Ig86snfs3ZJk6L14AR0YS9nrhNrsgenVetngUQsTuUmFpXImoYmcbMQE1g4Oilhezk4+
t9l+vBzCGxAbhC6dpjRlpEomuNoFcviZFerXlMLnaPayxblHOwLBchJ1+bEB3dQ9tEwtoPUO
IQBvhgV/0eEIGq/RRmPvm0YbfJqFvOIj/Gf/SnigW4RLFUabjBTdjtFfvnv47+xdn+9NIUTa
sYzKcZY90rNEpPFwbD0qNSwPHCe/fPffs7vnh6/vfJqGmbsHbDvnEwTvcoytbC2bfmFkAzG1
P97VmsZNWV6Tugld89p6i1WTF+qS9Uzae0t8KRJoBval94ixDeALrLrBZA3xYvdxU9ftWIdd
jtfu+byOuxwgC8DA/HLJ3JcrahkZtgaXvQmErbnNd4e/n/d/3j99c+yscyVOlyxUIIleULci
pXWtqHe1YWExJ+G6XjgYQ2wBio9QMaeXEem9bWhQxWJjYzNYhqwILyCQDtOELbD17Edc03Bt
UyR5PA8lk1Ypyc2nk9PpldtbBzXzlQw/8XRosjGamNHwTKWpo+/wcer5+ZqkoerZ9el5t2gp
KaLuq8DaM0dbOGMMZTufhWAmT+t/2LJ4WI5ckzRIiU84mLcJwbOvcOGlM41PZhXx6nX3ugPt
/FA7XN5bs5ra0OiqG0kDXOgoAEysn9KDFhJ80wHUVvhfuV5Ng5EsZEcbrEqiUCOVhIs/G7xm
V6EsYIuOEn+HVwNXQ7lB0XuKXzEgOMwjPYAViUMNY6wlCddrNiTwN1jn0bKQMjC/V/W8D6dq
Gb0hK12IJRvOx1USUAR8DpIOadHRt5iAAJQsQ3u9axrQrEUS4lTwY4wacz7UyLSch9aC6fAV
WjvRw5L2yp4/bF9e7u/ub3u/o4DtaNo7OwCASV3e2ykI1pTnMVv3RUNUcj0qGaLLs5Bn1WCl
WhXD3hB60Z9V21cqjvdGB6+5BiRREYqC3B7cVFgDz7AuDXO8PamYRRxhSPwXowgGkClEymnY
q21I5iT4jK5BZ1zixn0cNlRwQvav33skOTnGusCf6PCXxfLlWREaC2xbbHBM1iJVQ354EPoz
jVB8fTXsehllIh4S84QNiXWZ4w8VLNlmiJtjcNubM2BiOyDBpycORchu1ah6g4y017RxwwL2
iCfeu6iYhmoQ41zhe0aBP47hXsHojNicpZfLaKEmD76j6PDNu8tQW3SVR55pV4e7Yz4aiPX8
3ClqEakQBd7chV0imyZqiUNd+hQYCWUQObjra8shbP+u01EEX4/h5Odq4Uq6UKFM0pXUnjuJ
30ZlYSfSIkH7RviYbOG9tavzTSjLyLHnUNCUKMV7W0CuMTGwQWvinHTRlfvR1l+7fv/ksHs5
NLeSdVgyQPUQbqzQpVkySWLeVqAU29s/d4eJ3H69f8YbycPz7fODWxxWuaKdxwrfJiZY2ZCS
1ajNkiLkZUihcC/bjsn6/en55KkewtfdX/e3TbWNnworrphesPAbh4hsQK8gCpEmiUN72SFY
xE4gtCGZHVU9YUeFadeWOOqL5TxY0+8BIpp5uTUAza9DWgKIL9PPZ5/95lwJXTTzA4BJXAkS
qKZC8hWShN9eAHLdwzo4rKXzOqYkpXjRj897vZ/EQMOiP0/7g1JlPuOjXa/xQdyR7ulwJi0I
fCmi8RK6h6MfP54EQFjZHgKHufCE498k9sFZLYs3gMyTZmQU6gvBol+fHcuUqWo0fXjByDKI
qLnUY/EnuUa9JYdIbKbyMQA0VLnqVCo4qPCt5932djdQp094A2lJgv3g0ADbl5KpGMFjj4Bg
A6gjTJcrglszwDejETnS0E5o1cyBls1iNpWKw0H7+wBvL6sfRvBqLQJ7z7E5Ib/pmkuWermd
BuL7ENdYjeTX6lmQKjY9CBwwTsUrTeYYik+d89MG9lObyQJPy/9lh5oax8ZSgZnkayJz0Ijg
r0k01JRhQVv9xtWI3M1gt0R4rw5Ds2XGeNnB5nEU7BtvROpfoLJE6N4d7R5GLUlHG3Pp/bCC
IwG+oErTMiVg1Xm47Mejxgfja3xswWVgRE1es1Ajcxj4eaTB1MmYNDXsxylxcUO3pFWu5f8p
u5LmNnJk/VcYc3gxEzF+ZpHidugDiAJJtGpzoSgWfalQy+q2omVbYckz3f/+IYFakKgE6Xfw
wszEjgISicwPzgB3FGOYLF3fsY5Rcrg+UBVyHnO5/U3Dz0j98o8vT19f374/Pjef3/4xEkyF
OhDpE4HdunoG0W1Elqoz8XroQzgbLZkdL+WkKmbcYEzMj0Gm6B2cyt2tNKdA9LurNybKzKLw
9dVo6fsiaOPYFFjB2xTdFeoXjzzS3DmTdHBwtqOvIIrxORGfa9zck5M9VYXuuLDhfsdkkt9h
Q6xWuyq4FWg19ZBvHfcU1pHS4goXHCnU+idVP85Z6WzU/sZpfxv/s4bLIdKBv3u4//5p8tv3
p09/mP1t8LF+emgrNMn9S8qjdSA8iKRwT2qIrLusOqDVSK+sVVoElgU9HbOYJUFgL5Nz7xBv
sBK7RvT+5c/f7j8Zz/RuhE5NH23jk8yIxjojBIMCq2lXiBMhMaQ6GrW4a/fgqU8J6Bliozeo
e5g+AeVuprnmxpK8Yfab22+B1sX0rr+fdi5rjMsZzQtRzT5vgoBGVHFXYh9HS4dttU2it480
Dxx1irT5kKvm9gjImZCG6B6TFYMgvS5DC0foaDw2fccVoZz6YGTwTT5WuQdrqI/a+NpZ733o
jt3+buSMj2gqkSmk/eLTC9etviWmqesi0uXq4g92qTl3VDTjD3/Qs9FM1R2edcDciYzb7YCe
LYFPuY8Mswc3pNmyMm3d8QDao0lCl0Y8VdW22Uu1hVg8WqiKGlZQGqnh1GhlO0ilj0H6R5MU
lEnnAxxLxVY6QbzpQeLhawnOzuEEhnVt7dWZXK/25iZ0wFHLXIs1/IKDMNxtOlPPkNPqtmVR
s84klOVuSO1yjtt6xEirGP0wE7o/iwwuSC/331+xJ1EFLvMr47qk3GoCo4sEMkxKHbAygC/S
ZvA3zsB1jAplYF0rG5nqJbXCpjGHXZWUtQEEYIIXKulb4LD0xDdYABdY9i4YvFqsr8u7CBeP
smiOWQtaE7gjHacAT/88S87k5zUeFzNcx1cI9foGTlQWMaj6fv/19dlcUEyS+79HA7hNbvWy
6rXQtmdMakpkod1VtJte5jFasgS6q9zFDSIotYud2xGVYjbUIs8Lr6rG1WU87taXTi9eKWCz
IoOURXRk6fsyT9/vnu9fP08ePj+9OPYsdxbuJC7vVxEL3u0JDl0v9w1B1umNuTc3LrPjSa7Z
WQ5tCM4JENlqxaOFKiG9v1uxxBGjStqLPBVVeQ5kAZvAlmW3+jgcV4fGcbsjuLOL3BvMhcJl
RNC8XMCkNhbSO0ICB/Nxx6ax8hcvoGuVjo2px0p6s6lkqT91PFso4rEtgLyQX+OF6dTCRb28
gIW3JYJznpW6f9D7gj/ncjg51NCn4IsxmjQQJk5HZZoPgi9mUx6PPgp9MjCsQLJKLRauhcwU
1OnyuHir0bMsz85pfqS1aiOYMIBeJDvsWodYANHH59/fPXz7+nb/9PXx00TnecH2bNpeCAYX
CLS909mW1C7RJ9BQDybExCgOXlPcyV/FNsVA07+bKq8glh9OuK7DYMsVpYnwAW40W4+W2pnd
lu0p7en1z3f513ccOih0ZIOUcc7386EeW3NPn2mNNv0luhlTK+Np2eGxXu1se8WhT0u4UKBY
MxleqjMBHL8fW7KFaDtbxNXgaHXCYdQyV0qfuNUxG2kBHVsvLlcLmtWwiO/DQ12yU9M2y+4j
9/99rzfg++fnx2fTN5Pf7RKgO/L7t+fn0RCZYnRFAZqo8lYpW039ac9GH2/HgdELtsJI6ePs
njKA9AKt0kMUDQ7AFD1l5Z3At/NDbgkHrXk+C8FP9ZnQgr4YaPdtB49Y9tvNzLdL91CdsfB6
ZER2Wt2TAZtNL3S3W0ZT37Qz7sdml3BfQzGsmN3JjEuCU9X1Jot3KSd4evLWkmwXHFAWUzKC
rROBMwo1dNUtRa0lVQFz8qJHuUoBbSTlZHhbn61Q7q1xTweTHJntheuSYWVhMZw0yfRMr6Hk
1VUvYZSHJtmn3QebPr0++NuGkYS/lLxYFQhOyTPzhABVm4FtNUHSJ/InEsXGKjO9JLrdVmbl
7CxRgnO9jv9h8NJ+vLx8+/5GrDpaCGtXHVUrjHDXnPp2XVpE769XPp9WfrRUdZEKRGX723DY
XkyTkkJ3xOR/7L8zQFOZfLGuvYHN3yagCryeldsrx6334WpCc0pM6LU6gJO0t5sbga3Ytq+w
zKa4XsCFWImwygYS++QotqOv3+QM6kAg5eFciBKZgg7blOv9Zbm4cfPKaeO1Pij5lyCdkmCj
HB1PhzbsMTsmCfxw7mZii/XR5/qR3j67HMBXZZwvUE2AhQkOdwGvOgkTd5iD3Og0F5dbra08
vUL0y6fJb48P9z9eHyfwQIFe7ydatTSe0TYJQLQ9fkJeC13TtiRoYcvFOCcDsa1wtKR4I+XP
dFZT3FY8vou9PuzIrcENoX5hgRNhpG0FAf4WLgfgRiDs6WMH0Cp0d6mYKH/RAKp392lIxn3X
GNgxfce2pQ2xRFTuESzOHfLyGsh6Oiqlv7Ij2TBX0J8EpJC/yXcrjNvefktwzJGd+UFkKgcc
Kqnmyd10hjRZFi9mi7qJi5z6eOJjmp6NjdVJontnM5+pm2lEpDCaV6NwuJfe9pJcHeH+VpTm
3jtkm+S5VjcEjpE3DFh3StKmyYpYbdbTGXN9B6VKZpvpdI6iOwxtFoB5bTup0kILEoGtk9ge
IusaMkprarKZ0urjIeXL+YLSOmIVLdfIQV/R6451cWlUvBOu0iMVb8pKOX5GoGXpv27FeeTk
MPOXSbvrCoA5Gu+4lq4HdYYW4ZZsgc2Iirb8lNXL9Wrh3A5Z+mbO6+WIKuOqWW8OhVDIf7jl
ChFNpzf0Lowr3wIu/XX/OpFws/zjiwEdf/18/10vqW9gRQS5yTNs23qpfXh6gf9iNKb/d2rq
YzNXHv2gMIguYWDSKRxNW/CDc6nRj2U/bp2Vwf2y+2E2iC2x+0xb3CtSxfPj/SuAzuoT9rcH
0wxjO33/9OkR/vzv99c3Y6z4/Pj88v7p6+/fJt++TnQGVpVw1g9Ng8UYPwDQgw5opmIYCdpJ
t0chA5bSXBK/WBKn1g2X7xy2EBkO6dscUG/KMi9HcAJGSpcr/Mq2D/dwbAW2Qcm6p8DOownd
1Hv/248/fn/6y++77i2cUdUcnzFrJeJKdqaK0ado4CWQc3PJJHRX5bYHpPCvBj3XYijt1Xo3
U0yxbXkGQnHyTz2x//z35O3+5fHfEx6/05/Xvyg9QwWekTmUlk07pfSpKUfaPi2yfvRU0ofe
NIqDIYihpxEMPcn3e+ReaKjKOBm2EKZDL1Td9410cpuikLazQxXY8XYwviCyNH93HC9PeG3R
z3MsksitClgDrExZUNl05jCvYV7vnAzUpbOEGLq5vDFvkYwqbTYXrz4u/7hTB46fwRnIlw7K
nRgGRNGN3znfjvmZC6+T7V2lX1OrIob7rWt8awgOVSk++F/UoSljxv06HJpDoU+LY2GRErIs
OTJ3hac+/kGpcj9hUIwPFj4FKctojSNVM+YDE5m8CuO1YCf8YOyb/Pfp7bPO4us7tdtNvuq9
4z+Pg0sj+jwgE3bg8tLgGr5MHSXFJNsLAN5w3Cw0TZfXf5S66Ae/Tg8/Xt++fZnE8LIlVR/I
Y5vG+OFLuyfK/N23r89/+/m6AC/QIaPbAksmWod8fX6/f37+7f7hz8n7yfPjH/cPfxM3cSQC
TyBOYDs6HHnp4rRDORzvaLEb+5/6L2eZlDvXn6KTae9HAaJmrw9f8MOzpniSFg8wHAUCRemD
WlFK5cZwAwAKIGupyuCRoimueUfwHZSFcHZ0TTUnZ0TpoFpR4uogzR3mnYRgZrT6QyYtkoHb
oBYOPqVe49FsY6Ki0okttQ7G5lLELyLgmaVZEKPlggxqkt62jCOUAbZyp6LmwcZPZ/RRlHhI
iVOuS20+JKg3BwZeXhDrQHoJIRGZM5Sv93oBUI6q8poFD5yR3wFMB+O9Rhe7SxiK4dIkuJOp
cIGW1N3WlHp/M66bSvpzuxXUZyy6OHWSAN/+xRssM0WUl1cPyRUYLh+/qj3w85zAkIWg6Uk0
39xM/rl7+v540n/+5aiJgy+DLAW4gZPKwMVMegOHqAb39P5k4qzSmejdyYfWgqmAHD7xwSDU
0gg8Oy8KuxKudaqjgOIr4P1oFnOmqpBAmR+zuMy3Mhtn2krYt5oCXGYe3gV/w2MRkgGfwy1L
mLXkd73DeBul6PoSK3IK6exAV80THJLY0pr4nLHUBe3UPBy3ZQLBNMVAwZT6P9ilrTpmzZ0Z
IfPMMem5eycqZwa3pjSMJpGkGCPKhNSlITSugzlV0Ha8MoBRYAKsRhAW+juP87KZcxd2ub2p
n/PF6mbkkaup6w2yxA3Z6IHiZu2mzg3tibxS+L1dJ3XKPgZajKRC4f41HP1w8wypuZuRjWb6
S8kqyWhmyWn6Ue8daLOxlCbbrteB9wGc5PajCjiLOHLt7VWgpZwltYiZbl7KeGAs7OM8gQw6
GYOAhFSBzXQ69X+3WKAQaQyILQc/tDHOxCicui1BfIR7p8u12LGSxQy9fbyrdMO8Bx161t7y
AiUCEBcgwIZDrTvB46+yUgGj8SBmwcYvt+BwZCchAxUyV4mX03cX5cP6f5fG+GHGFBYZ0LTb
hzSoix0j4mZSYI+AombRcu1b+Kk6p7o2LMtp26orJ3kZwNzzpHJ/HgQFlQj44TiCGat+SgyC
VLOcxB12xdzNVsKi0SrkgKSi+1s4SnBScEvBQRQk7JJTRCEyBZthYI7Ang3B05czKXXBirkm
F8CgcLaWkt2N0E66tBCiTQfYOlKtK8zlaijhYo67DMBt1PphKWh2qpw1VaV8E9VoetoNxjD4
JvAEHDAjel5C/j6TqiQHD886tGKpyszCK5mcs7xQZ6yAnnhTJ7A4XevlO9L64Qic5Ee0U9vf
zWkRua52PXXuLtkt1fiUd6BTfSUcpswsm6ysI8cyWs90qmtvSi43qZYlpWMAeeb65urdpbWW
ugQHmledNMUxWIlYn4blHk7PiLGTtTA+j44NZNdHXmsFe6J5Y7/AblNPY5yd8VFp9nWCySyG
s+8BbV6dXgF0Sg+q1+vVZrnFdesUA4/K08VNdDMdUa3/Oy5Xk1e1JVNWDJ6ub9briEi1Xl1K
ZTVgbxS41BoKw33RahOYCC5NXbNccz8vEj256EKTusINtt449YmdMT1RUi+A0TSKuDdadkPF
0h0xmu5bxrC7mn3Mrw5i59bX5qpEFV0Wgn0rKGFfxGHhmmS1LuFXple50Iixaj2d17jlH7pC
3TaXAjTy22BR7W4TKAb2k65HXN97xf2hVpWIpjWlA8J5QE8uyZWfJi7W8/VsFigbuBVfR5E3
1SDRzdpvpyEvVxfyWi83fqI7MC8oEUjUXg3v9SoyK+FvZ5Jpva0NN3emIxBx2E8rVgqfaHAX
vPy8k43NTlZb5jleGToHc570tiFXwp4M0PQHciAA1vDQ1aqhpHcoMt/SFIdoZZmOKpXmNSP9
hQzXPiDaL82aNEl/PL89vTw//mVX5Tb2U13w49bcpi44fStDJO33l8IxPugfAFlt3j1BxBbw
FKkrRfcACtEuYKZFIXAuxmTXbm9uPjmloKrkwLs+OXx7fXv3+vTp0UAddLeHkObx8dPjJ3Oz
DJwOLYZ9un95e/w+vtfUQmY9b19LG6oHDM4qdJoE2q0+2ZAeQcAsxJ6po/LTlFWyjkivjoE7
8xPp88ZqTfr4Alf/QWp41w7YTKNV7Wc2sDZNtFpT6lYnxmNuTCNUFprXCBJLz5XIeDqumD0S
hvnASLcypYrVp+4l6e7TCahys3I1QYe+nk6pLGFhXi2C3duJbLTIONt9spxNGZVtBrvvmrZ6
dDKw0dPBlp1EytVqPQ/NFwOppJVVZa/hAsOkjlsVMIl1Yh/ZsTySz1V0+dTr2Tya4jNVx7xl
SeoGqHf0D3pnPZ0wwEzH03rLIqpDIwnVbpE+Ua6yONgaoPyUFCWYmWgE2K4Fh82MngDsA4+i
UE3sJzlvhDtTTwgIDn71NrA41YoDOle43IB5AcukpE3Elek0Yuey7cYNUrmZD28/u7SjEspw
7PtZJLwMFqSzuJASMi8Qgr6mgl0s87MC4oF0lNVMH1cDaATO/cANuoBB9AOOUzPRzp51EGi7
0PkUmNS9IhKIt5RtwB01LhVHVg4mS61yUJ+dm8xo+KEZZd7aVvLahBmsaH0uCTwzWZHeEx3L
XF8ChILbUyPmhXEZy9KQRulJ7qRwlteW0KjYRRLpqJ4rIWqoiKVWRmjUPiR40fDmSpbMh/+g
xeyZ4cpAlK5XlP7RWEOPQxih0QMR9wNQLvRBwNvJFalo+6Ar8vEcB1x9XClznhdZRqkRrR2j
ZGeO9KCWfkrmC3IrH5B/TkoS+oHd8cwajI4lZdXABKHrTMa0OPDPI60PSqJgYaSKqayyO6Ta
659NscXg1vby9OvLj7egb51F4PmCftq10KPtdvD8Q4IweS3HvvV2m7LC56QM3mxpOX1o+/O9
PgcgWDScKIf3qgxi3tAFiAO4PEdKe/LEFC+FyJr6F3gQ+rLM+ZfVcu2X92t+1iLk6FoBcXeN
761TzoCEQkBtyltx3uaAydN/lB1Fb/jO8c+hFovFbBrirNdud3q8DdmEQai6JYMqeoEPWu9c
TMkCgLWiVVJHZhYtKYWzl4hb4NJyuV6QxSS3V6oois28rsm0/lGbljC3bAHUh16w4mx5Ey2v
Cq1vovWl2trvhm5pup7P5pcSg8R8TkyElNWr+WJDcbiiqEUZzSKyFjKlPr+enYlT5QYR9oy8
EBl4T1DFFXqD1GfOmmARQcHD4ORJvJNw+WLerr/c96rKT+zEKK3NkTHAeQgyc2AeMz3TyIqo
g013uQbyg1rOLnZelc6aKj/yA/Ls6dl1FaoAYMpAJ15eGB3LFfzUaykOVO6IDUsKErKlF9ie
kQPPwEjyvdT/FoFQ7V5OnTNWgMXxZ+X0sXgbwiropfnZIGJdkTKvnBS51mYvtlEkoG3wA9Fr
Pc/WipIAqAmR4Gdo+wqYIZYVxdvlHFQ7uliytDHMkKWzokiEKSrYTLjW2Li+JZbMz6xgPhGa
7NkfER0jXXm8ruJeFe+U/ugZuzBeIWOobXk/OWy9vLQDmz4I9Du90kLoGN3R9MmV6RlN1m+Q
mVPbz8COUdUcOgXH17N5vsWx3D1nv5tRiv/AL3F8M2I05JvQg8hR6q0uzSsyA3P+o3H3exkl
Y3ECtPeSzKJKY2qRGoqwrtpfAgwMQ+szZ/MZwTyxspQuVFfPAdipJHEX+6EZ4ICal1RhhrVl
Ls7lwAMkYEGVVZ1krH+QnfLxILLDkTrVDLNF6eNLRKYGVfV4eVjrgsVEnYDc7HbkzDc8OAxc
nvxFXV4cz52SbIkOj/arq8B3hppILRuWLaufD2uKQwQ35wIQdF11wuWv10W6Xk5rmsvi1Xq1
ucTzVxQsQTUZSZhw0LSugll0Ak01X13L7Kg1UFlzWdIV3h5n0TSaX2DONqF68POaVymLbmg9
fSy6jyJKXceCVaWKDlEmkJcR0X38E8WC6M3IOZgQjdlmOr8JlQlcMhAVCcGWUeZ0Xx5YWqiD
dIFyXLYQlQwVLvYMUJGDsH9ItubzKTYeu+xL7nKu3D7PY/IZW9QkvVqLIlSUTKSePbSTD5KD
SP0rJamlOq+WEd11+2P2MThZxG21m0Wza5+JQAs55gQG9MTAI+K0nk4D9bICSOlx2fpUFUXr
UGJ9slpcGMc0VVFEQcIgIZHsmGpSWdwECjE/aJ4+qS2PSVOpQPVlJmoM7IJyvl1FtO8XWodF
lgJ+wrXBiatmVy3q6ZKuSslUsRVleS5kszsFqyT3ZIiXK2P+X8r9oaJLMv8/ycBUubTOnuLK
OOgEp4O5S8rTIleyCs7mlEfz1Xp+tWMhM7tqXGmwuf9l2a/uccLnz5G50OfKirpZHVWmOpbb
PFyG/YYvFBOnHObi1f3DVKm08/pSreOxDTwobIKRWdKEjkMj+bxyQU589q8ASskv1U6vOT83
xDPqFOBLfTyD/6x7mByPDryjdLMA/fhCtcwX/zODzdS5G4HQRySrWUjr0MNs9rrAuqvZs+m0
9kDnxhKBNc8yV6EvrGU3MmDbQ+tO2pDgtGjnkolgcag0JZWvx1BSVYQOJ5iX7qqAGts5IdFF
1+vl4uZqG6tCLRfT1fVt/KOoljPSwIikuhMa3aH5IW2VzmsZyQ8KeTmgQiAqDptBWzuWDFjZ
/o+xK2lyW0fSf6WOMxHT87iTOvSBIimJLkKkCUii66Kotj2vHWO7XniJsP99IwGQxJJgvYPL
ofyS2JcEkMtIWldIlDo7z98+CLfn7R/9w2zlrr6Sg/S38RMeEuXNmEGVAYiW/CRR2dJwdkxx
SLBwDNSNkG/HavPDHlTcy4EOdvnEoBCXdxYgL6t1+sWq4LEkItz2WrmZcj/TNC0QeiclaqXA
hTXmYmWHvTZJ1bB/P397fg+KUIjXcIbaCUpRWdj0WldH7UBaLouf6w63rQP4saL3vW5/zuUL
iPMNdMEgwfUFbRA6uwaODjOVzp6hbGsR9kr3UN6ZHCxr1tNNmeQ5g1XZ5L/fajAI2ABh6JIA
NcxZ4UR7E+ITK0omvSu9Wa058TqQBreR4tAjQVWywMWm8v+vqfxOkg6uqqN0cafFKv5v0FRL
BEEuqbY7Sx2CB/5zoxtW6+j5cu2ZaccHsE/ZBbArLwVcKkzGDc2cKGVx/DREiXtinYMYuY24
tAb0852NF8qEf4klsIR8EOQJug+z+k0qVEhc8vM69yYZhM2SWbQTZ9VjjgGRXKY5Q02hU2Qu
fNJiJQDX/HJFEaE9m/PR9BMjk/U/oa0M5ILvPTNHxwWXOMiwiaQ4hqrcpUlo1nQFfrnA2BhP
RjOZdFM1dDXah5sto6evgnRAUAgzY2pGdRCN2B37vR4udCbyks8P45DZsq5CuAG0O07tlJ7q
SP/o++/vPz5+efgXRChQfpj/68vL9x+ffz98/PKvjx9AI/UPxfWPl6//AMc9/211sljP7KaC
OHTeLiunCbWbEQO1IlERp2Z1QRNaXBFYg5qTH3vd6lFQZXQIM4UKDGBsL6QAKEet3rLWDYTO
EpFfMD8WJm97bKu+63HjLOBoDiTGj8QCJc0V280BU2W3KHcZMao9v5HBJH6b/X08deW5thRC
YPEjmPKXRPhsGqyrSwH0Q4wqnQL45inJi8As3mND+DxxphAY3/jmKctS85ldUvMswvRuBHjN
EuPVVxAnaldY7c7elu/Fu7Ink96IyiIot84k8LmIRDIUCOGjcbArNaBGVgKZSiuBSQXvNHOU
Xv90D8NAHVvdX5ZYUeIqSsLAbhAIvsWXFY9treBoCUPt8CU4HpwkhxF7xhKQtXwJZ8KHBCPm
NvESB9bI4tJrxqXX6NbazUrfnd9euKTkn4DCwfF9P6CvHcBwObfDqXWnzEy/Y9GtgQHUsUrW
6t4JgHwjVt2lxYlF65z8pm7YeefbyCW0eRlvfnGh4evzZ1jP/+D7B1/Kn5XNgGMLJxepHt5U
L+4Ur7uzb/UZ+33PDpenp3tP24NZeNaeZ3eJokD9j3/L/U+VRttcdBlUzNSNzdS7p1nDw1ro
kakiSMofIoZAtBuI6GQmJF31mA5QVzpswHaXKec+to6BVp/1SLN8F+OnBDpgtzoqvJPGxU8Q
hBKhuWFHQppPClRbI07CRdkqCsrjLW0tp04r+fMncOOo9xskASIipkE5mIqTA3WVbefjEhsE
++x0caBzXq7sAulUXQsW3I+sJfqpQIPUBrkk9yc4l3r+8fJNT1GibOCZvbz/f8wLDAfvYVoU
4HaocvUhm6/gYfhBGlE+gC7iuWG3fhTGd3coHWUlgaAdDz9eHsCJJJ8NfEJ+EJF6+CwVGX//
X612RoZ8J5F3lvMRyymrVlQuuLARjQHF28Iw8lQE4Q1WOBqSjqrTMLI52vGtcG++2uKJUX0c
TCcGQvgQfu7Q4Sulfku/Ucdm345GCaWSmXhylScN6aL7y/Nff3E5VJwTkIVEfMnrlOOaiLIo
3UBz3KBc4PWtHLSFRC/iuq+bZQV3ftYXrX7jKyu0LzKaT07Lkeb8hD9ISXiQymzOZxO2ISuI
OuxcdPCxix3E6c+297aQ9L9ianFLwGcyLtCnyWoRMMc+mGN8o5uXg4qgfvz1F59xxo4m01yU
VN3BFGDUaHKqIc6BsbceAs4DqzJDdSjSfLKyYENbRUVoMzOa7NRjnrYlWBWT4/5Q/40KR3bV
yrF9Mk5DgrqvecFDcrta3PI122IWxNQmcrnA+tgV7pfG5dI6rgqgcaQbHLSLClsoMFsXLqOL
zGl0Tt6FdkHZWzK5vLcug6sts5o3ws+ddpty4m5n3F8inSOV0+ne7bTlKwQV8PXTtx8/+bZg
LW5Gtx6PY3MszViBoi174W9Lm0loamv73rBj1NDfRNBManpC0cjiRA3n7O2vl4O3J5W+arqe
yR+vpMRPgnEU+xIaYY9FbZB1LlCnZb1ubG2kIU8/miShgU8TTqdVlE+TnSDEke7e4VTbfeQA
nhYAN9ZetdGUdXXfl4w1aHw2OTzV1/oNI8QrFVR0TqkEF3UmlAnkOXC7AetKkGGjZE6mrFix
S1LtjDoj1S0KQkPBfkZqGuUey1KDZStfwaCtVjOd7s0w4KoidO9R4VXeOSnqfnJOdP8W+nnC
6qIgr+LRUl7QJMLu1nUGffmdS87pob4KafwoHTRIcmMxsxBtRZzz4NsW72ZdzX9GWjrAN1iT
8uQKXqfN8dMNRY5KNTODeYu1Ji16xQU6FmdpiH0whUma527zzfuLD9khlRY12+UIMERZtHOT
4oMgCdMJayUB7dBHFY0jSpGiA5DHKQqkkJ1TPgB4n+jjVId2xVY5+OE8TnJ32BzLy7GBG/Vo
p9+XL7CymDCsXRU2sjSIsUfbOc+R8bUjxcoLS2uMLQCHS9OpMtnL71LXerfbpVrAydON6AYk
4uf92hryiiSqQ75lVymjokjPzc6evAStqPMk1K6wDHqB0UkYRKEPSH1AZr776tAOaS+DI/Zk
F+Y5Cuwi48FvAVg+hR4gCfGQHgLCOtTgyCJPqp5AIQJKt1KlcY6VlFZwi4ymOUFwpvPsFHQz
bfulY0HYNGzVFSJOD1fmlksB4G5zJLo7OIVX/E/ZjvdqMOPu2vhgqnNaXOItlTW6J5QFolmE
tBeEVsHGqty1bIsEA93qHTD2nJCRfsjDIkgPOFBEhyOW2yFP4zxF3ekrDqUp5yvusUvDgqIe
9VeOKKAE/TjPAtTz/YpH2Hen9pSFqGQwc7RwuWCuYAvEihxL9E2VeJzsKQYuH45hhIZ+XQOv
nBu+C7uZyq0A6TUJICuJAkw9RwPcIWNOAmijwftumG7NMOCIQryQSRR5U42SrfEqODK8rBxA
1xOQTVAZSGfIgiz1fZyF+EWWwZNhJqA6xw7pF06PwzxG6gMRh9AJL4B45ylrliW49pHGkfqy
26FDWZYRlaDWaT3EAb6Yk27iZ2VYzzebkFU+tbcloTHnUx+TZZYhQLIYGRgkx6lod3P61kjh
MCJIdKRAN0cw3d1MrMCmB8FXlI5sdgGHkZ2bU9HK79LItKowoGRzXgsOpOBDVeQxNjUBSCJk
9J9ZdQf3UKSlxl3KgleMTyukAgDkeAdyiB9tt+aAennGPu6r6j4UHt3PtTqHIt1pM3MwVUQW
PkVGRcUow3RjDI4caeM9OFI8NFiq7Z7cq8MBNfJdeM50uPAz5UAHtGTtGKdRhKuJaDxFkGFG
DivHQNMkQNaulnZZwSUAbEhG/ACMStZiF8q3VlfOERfYVqMWdnSky0Ub9R+isUSBb3XmSOrb
bvh6WWztYsCSJJhkDyffrEDWGH7y3WEjYiBZniUMmT3D1PCdC8njbZrQN2FQlOgezAaaBHyD
3ig+Z0njTDe2m5FLVe8s+xgdijxO3GeeqR6acDPrpy4L8fSHG7F3GYtDN0jxiHNUXXVjGdA9
o7hW0sJxYmH6GgeqOaPh8S808xOrtj6sScPlCHTjaLjQnXiuiTSeKHydJ4Mbxa3iE1olOUFm
/oxgm5TE9jEmIFHGaJ6iCZIsQ4/oVRgVdYEf+GleRBjAq1ZgwlZ7LqMAGedA15WcNHocYQmx
KkduJtiJVJg0xsgQBvjsBGRLqBAMSBU5HV2SgY5LbhxJw62sriyMQiTJWxHneXzEgSKscWDn
BSIfgEgGgo4MC0mHBQIe6N1jPcc7vmYzZB+XUHbGK5RF+Qk5JkukQSHrVUtIQKVWJkXQghuu
TwsKoqxkLbV9bVhMDWnGY3Ou3snHiP5wkNGL7kSLZD4zQ9AfsN8Gh98DxfKsG6naeOwhHmIz
3G8tRc13Ef4DXInQU2kG2sE4wbpBmuNvJP16kt5Copzg7Ff8eSXPtXB6nnVzPYzN25lzs0cu
nfBCjRWZENSM6zHWRsjy0eIi2p8pKBQsny6jDbzKrETlwOrHx8+gFfPty/Nn7XpVgGU1tA/t
mcVJMCE8y0PnNt9qToJlJdLZf3t5/vD+5QuaiSq8es/cqLTwqU61Gq7fcoSO2KdL6bxF8ATi
dUs6d2kLoRDcxud0Z7aDLmuMkxOcnLrkeiz56dgYKN4AwGjl6POX7z+//rnVwz4WbSTzGdTj
Law49IdVhE9k9/bn82feCdhAUKkITVsG6+k/NTUA73dr9k9TtMvyjeEDGrPYdHs8lTXYbFcX
cTO9VcVbyapT3WNLCQWz3p7Slq+z2hZE98YPKISuFilIdduDh17983XD1hg8uYpvqa6tLz6S
XoYMmrTyAet0ajEfupKeTFpD9k1dNzWaRDOx9oAiR9O/q/D46jSLch6rM4kojc6nbt0EGa2I
zMuqiSDa1RPE80zUV5ElaQhHcq8IduQw2NzazjoIq/XO//38+h70Eb1BM8ihdgLVAU0aDh4H
y4GJwQNPMOjLj1RSVapLVsJlyaIiDxz7S5OJ7UK+K3r8zwsGcIpCie5GipOFk6pAl6AFVVOM
MrOZhijwP/EDCwELLOz6XzZAW8WazgdUW+gDTAhR1wGAj9ULi+kKa6anLs18ZViomCStQEON
QNAM/S6ggKrfIz8ixYGZYTO9O/f03g2l7shTNEgVxpP+OKsR3cosD+tmo0486XFraJEp4tsR
xd3n8DPrfbDaHmg8dzhjGwWQjvRMmqvTBlShN4NaSa5oarbF4jnIrLOjs6CoQmMOo6YoVddm
W6m72GlNoBcJfspWDMUuyLfxCLtYWtBdjuTKydj1mUBZBne2v22a+RQgqM35EIU+G1rguLYD
xG0uR9ytJrCMDcOeRQFyVWBmiukidaGamisiCVI4I15qQNiNMlYpS9HLebGmNpXlx0BQ2yTP
Jsv+QAIidp8Yxfa8Wi6U7GWbeFwXA/b4ruADU1uGyv2UBoGVdbmPQx+xZ4NVDmmhw+Vni/6O
VuZxBKhcTi1JHKcTOF7Ymv7dEO82BjRoHxW+occz6cjFbGMQb4WzCjsquOjesiOou3HQNA0D
XR9HqqTqCr+zxwQzv0V11W4AQd/ht5Vz4XnlYlx7b0miyF5h2KGuUzQ4QgrMqZbXRonwVTEO
jaPlrUuC2N3DVxi0blG54taFUR77vhSdS+LUnVlSvde3D9v60BrRrVFFk7yLEpP7RlK4GrNL
y6nelhQaw866KKiFt3c4nHhuqxUch45EYjHY24VSGHUWiUWlWZ+Y7JYUobWYCYM8PvAsm5sV
EgB1kIM17G9VvYsTi7iecVb6CNZYs+M33UBgS2ZdPm6OcN3RG6q1C9FriLRyyDBz175jpWmo
vrKA0/ZLKQII0wvxaNyu7Esc8r/7AZccjr5JbHCBfIG9HK9MoKhbZJrAqEF1Gu8Ml94adub/
YbaRGotY9PHPZ0l7MwHEIkHrJykTo6m7+kUepgx71DFYotBTA4Fhe6U2UMpzGqemHqOFFqjq
5cpkntJWeks7LnSjvQavmVEelniufHnMUOsVjYXvnnmIJS2QCOsNodA74d8UeYoWFN5HIbC0
B8ryDK/CLCC/0r/AlqJrvsEjpWpfRo4NCsZUZMkOaxQBZf7EvVK1xYX6krR4zJ3ErsPfagbz
aGChuPKCzRRlniQ2XNGZXMXulXyGokjx1uZINqEIPzmEoadkwoJkO0vOknqWQXlQea1e4uSy
mcewb/UovxpQlbtE37F1yD6aaNiVryxZgNdZgB5DC4sLVe7ReG4EK5m4CR0HcsIbTcCU1MCy
mbxkBFtmfzogll/3aJCvlVN/Yzed44JROlaFkSWGu00dsY9uOkauqPLkykIjMpSBZzQCSF/Z
VWhKijzLsUJL5XhP0ur4tp12d4SAwwFWbynK7Xt+BDINi2yW69gc9hfM/YHNOdxGtBpSyLxf
iX5Bp+G8JkFWooV8VxTgfAr/qojyM946oDsSZh6XKwabONJt1g2YIkPlzMTSIIqxAi5nQS+m
X+lYWBhH3pqJo9lrRZanNLRb5QHhlaaRp4XXp3NX7tu99rQw2pcanCBD+SyZdC3q+XsETwpV
X8PRYvW8ACHgF2BNldPHKvXQM42+5MqRN9clJSR/eOjtz+/QNGl5ftfjyKkcBxQhFVym1ig2
EfybVhqnYJUixAVEk4GzOGp0QMla3k2kZ42RBkSg1X+vfqH0RoIioGNjLt5Y3nw4r7InYAL/
lvHjUGvW6gA+7h6tAnhdBcHOazMrh204+9jUY8lis7/Y2JTkyQg7BeHaz/v+XDsFBLfBQ3c5
GsEDBP3CT0wGiTHOZH0+TqbynmhC9DRa3bu+H/Zl9WgkIJ0YtOb6XN3RFzio3OU8tWZ1nRAf
CxGimZwpaRke/xb4rOqIl1dj9E37frrX19rK4Al1YMMT6LXgNNV8//lbp5x7BtHzRpM6tMZC
r0h3LgKI4IJvsOsRCLEnOMEkFzxXWglUpzxGtQABlMHiy94shmXGCGnLIEN8Fx8sgLV2hmKT
9OQn/BNpNyWi8HPB9TtyHUCCFzuM+3q8CodztOkaMwCH8rXx4dPzfLfy4/dfemg11YQlAU+l
aysaqIxzcmdXHwM4R2Mw2rwcYymjZqMgrUcfNDvo8OHCQlrv/MXvhFNlrSnev3xDIt5d27oR
4b7tPuI/wHys00dsfd2vQQyMTI3ElSOADx9fku7T15+/Hl7+gouu73au16TTDukrzbzi0+jQ
6w3v9cEYgpKhrK/eOzHJIe/DSHsWgvb5qG8uInnSkIj/M1tDIOIhG2J/3KvOeCqU6O3Mty+r
JlyyBH0NhFoT2brtUW9HrL2M3pv9GWmtaU2Ktcugp1AdHW9iIrX605+ffjx/fmBXt8ug74nh
OE5Qyom3fDlAFNR/hpkOQeAIeBQWDU7Nz+oGXE9SPm9bvhp1PaUQJsvkuXTN8tK/lB8poT7b
XZ0n2TIiSrGcMNgmJebpUo3fJp01ZZqnhsGDmthtknv8D6wMIX6ZAAUiI/4OKzzD070uDsnk
uET2iBK1WSQCozeGRCTCKJcgN517k0rKnXF2XOtrKv2rrMoyz4MMcxY/f3nICvP9XgLyNQRt
CD6BFFNLZ50PNNCaGuEEJLV+gHGzONsCtSW4Rxe971ls+MSLLAF+pSMLkaDzxaAfKIYYc9hN
j5Rd11e+D6muC0soHyflub+Tml0x+lgZy9S6O8whU62VknARXG5tekdIrCrr5ozqhqp9QDoP
vV+Hlq9TLeV5vbNXaIOn4nPmYka1UVwkS5LsXlWe58+ZK05Th8lmyVI+OISXPvvzpSj7Zi6u
NyF4HOVd018YP/kf9nazrbBd4cVM2qDy/YAzO9tX65CGqYzyXzZVurvkQpY9vMDBJQBYfUc+
r2lJuWCFqQGo0pIkzifeJAd7qCttopbaA1NpQVW6/68FyFCAH8QqXTUTBuayfeLjEjyxDtNg
pzRHjL6/GRp7Mq3gdXDadcFI7U/0CgdLp74WLFK3Z9EiCwh35V1ZOc0pReljE7ljYxWe78dt
GKu1jpND5Y4DMkX3BjbjEQ8qaSajlJyO1D/JuFB/38MEcvMC6HTFVMNWvG46hqw2C3QnUE1v
EvOwPtRDaLfFjL1xB8AMXSny2azgPR6RgjFYMvyroJib1+Zs2h+CTGKvvZi+KJfrkSXansmg
Xc7Rg3tuIdUfoI76ACKccnyqe+uAfQG2S378MSrGJ6A4FyAlM6rgZzJPEbp6syQ9f33/6fPn
52+/EfVKeWRirDQj1KiZP9ov/VI3/ueHTy/8uPL+BdyH/c/DX99e3n/8/h0cXIIfyi+ffhl5
qK67lpfa9HqtgLrME/QYuuC7QrcZVOQGghSnzhIh6JHDTugQJ4FDrmgcB4VbqIqmcYI/8K4M
XRzh8T5VSbprHAVlW0XxfoPtUpdhjFqvS/xGily3gFyppjW82seGKKdkwKVbNbvhTnHPDneH
bbZp+Fv9K4bCWNOF0e5xLnZmc8RulbLBvp429STc0yG45PDvmgKP3YYAIAuw++IVLxLnGKvI
cAVi7yx7VoQ7m58T08zNnZMzPIC2xB9pgPtmUKO1KzJe/Cx3d5gyD02NAR3AbrnUYISncD7P
kPmnEKjy1mi+DmmYbI0rwYE+Zi94HgROi7NbVAQJUq7bzuflS2PA3p1XGGup6/Afzp5tyW1c
x/f9Cj9tzdTW1Ohi2fJunQdZkm2ldYsoud15cXkSJ+maTncft7Nnsl+/AKkLL6Azuw+ptAGI
FxAEQRIEDr4WgESSRBTwkyL/hFgvXdmhrlcIBy8Qako9GSDl/fxsk3de+g3J4Hg1fbw0EZY/
mShLy4f+nLqhlvArywwLXPrV/ECx8sMVdfze4+9C9PUyh37HQuPNtMLUkYESUx+/gaL67zO+
9plhegiCu12dLOaO795S24JG9yVQajdrmtbF3wUJbG1fL6A00U9saIyhHZeBt1Pe8twuQbxY
SprZ9fsz7Je1YtF+wff5wyAPz5c0emEXPL59PINJ8Hx++f42+3p+epXKMwdj6ZNvb3tdFXjL
lbGwKl6Ng1WJr1KypH/hO1gt9qaItpy+nS8nqPYZFiAphZAqSHWblXj+muuV7rIgWBiNAztc
jpgmQQ0Fj1A5mdQEXRJKC+GkS8OI9l1i1Ua4xZ+s3+TuHS9y6SvSgcJbzO01IzowOofQkNCR
HE453I/o5Zz8LFjM7bqr2qtBeKaPljSU0FYIX91q2dJTb7hG+NK7tXgBwW32LclGLi18CMEq
uFHYamEatAiluLNa+oaoVnvXDwPCbt2zxcKjAwr1s7VdFQ7pgi/hfWORRrDrEowFRO2Q8RJH
fCty0pofti7pNTDi945r7A852PfI8vbuzdWINY7v1DEZ8kxQlFVVOi6nISoIiiqnt2f91jCJ
4oJ0zunx74J5SXCCBXeL6MY+HdG+oUyDu3kabw0zBODBOiKOoOL4VtvTNkzvQnLJoxUw1805
wKiz+2H1D0JLBO5h+V/6ZAxFgU7uV0uX0LEIJ6OOjejQWR73cSEvM0pTeVs3T6e3r9YFJand
RWBwHX3/F4RsoNPrfEGyT61GLOF1Zq65w3Kt49SdetuV6ZhwJf7+dn359vg/Z7xV4Wu8sbPn
9P1LHfPWVmBhg+2GHmm4a2ShJy/0BlJ5ZWJUsHSt2FUYLi1IfqfhWpvO0dSKI1MVrae+udRw
6ogaWMs7H5XMs2z3NDLXpzWUTPa+dR3LUi+THWLP8SwPORSywLE96FDI9BSMdBcOORRHxro0
yZaEo0CPj+dzFlp2dwohGrQL8umfIWBy6BsZu4kdZSExcN4NnH971pALmEyWzhVvR7V8MCzt
oheGDVvAx+QTY7khXbRSsr6rM99zA8vcytqV61umRQOau7XMmEPuO26zobHvCzdxgXFzC1M5
fu04jpLKgNJksop7O/NT1c3l5fkKn4xROvh7nLcrbNpPl0+zX95OV9hKPF7Pv84+S6R9M/AQ
lbVrJ1xJdnAP7KNrKcC9s3L+IoCuSblwXUeJXzXBKdOIX8DDFFGj8XFoGCbM10IdUV39yLP/
/Mfser7AJvF6eTw9qZ1Wik2aw52lHYNyjr0k0fqV4dRTYUUZhvOlZzSbg81GA+439nfGJT54
c+1cawST3vO81taX5y6CPuQwkP6CAq6M8Ql27txioAyD7ZHPOAehcSih8Uzx4vJBiZcGxFXU
kQM/DgPkKJ65A6mI+yoB9ylzDyv9+36yJ67RXIESvPd19ogaqBNF8WlkzhlR0oIcRZdapacx
1tkDsicv2bxKBgueISIwXejcwVxC1uEick3WQcu5OTIKaTv75e/NJFaDrXJDZhBt4xn01Fs6
lJADmFpIRin1jRkHM5pKTIOoHPbgoUsMJ/TacoCLBOWhXdzgZOsHxFzzA03akmyN41GsjQb3
CPqMuadYIoWlBT26Jgpe2dvddztUWxltVo4p8WnsWsvB+erL5/Fi5BIPFsqGgM7dVAM3be6F
vkMBPRKIJ3qERg71Zn9IXFiQ0TWrSkgNHPfLxQ2xRs1h26xNbLSESJUIbKpaKMblMOWilkGj
ypfL9essgu3l48fT8+93L5fz6XnWTvPw95ivckm7ty4cILWe42iaomqCPkSf0kYEu+RNI2LX
MWzuzCUo3yat7zu2Od2jtWWyhy4iszQYQauM4VR3tNUj6sLA8yjYUfgdKeX3mP2civI01uGO
ui9jyW3lJ3+68lxjsoeOqdC41vUcZggjr021B/79/9SENsY3uRo3uPEx98dkfYOroVTg7OX5
6UdvWP5e57laqnJsPK2L0DtYJozeSciVeYvE0njw0hw2/bPPLxdhCanVggr3V4eHd5rolOud
p4sTwlYGrPYMEedQm4Tjw925E+jfcDAZnnXCGroSzwJskz3fsnCbG/VwMPkimxfYrsH41fUj
qJXFIjBM6+zgBU5A5XTsjegGbAXdOkGl72vL1a5qOuYb0zRicdV6lKMJ/yjNhZ+m0KLCiRFD
/F0+nz6eZ7+kZeB4nvur7K5reF4MK4VjmIu1cj9i2wGJ2HwvL09vmN8TRO389PI6ez7/yzZ3
kq4oHo4bwgfc9A/hhW8vp9evjx/fqOSk6BOW1d3eGikjkdNPww9+9QPGmuIAjvCkBqV14Cl0
6CydnIhnx2FpvkEvGLXgu4L1aeyVURy/ggoK1h7bqq7yavtwbFJLqlD8ZMP91Md4lZbm5FWU
HGFTmxw3WVNgSnaiVzGZsxqR27Q48ghuotU/9N7YcPgd26FzG4Vl8Y47O46ZKvs70hloH9sN
H37Hk9LvwLSiLiwGApblrupaPGDKQ82P8FYhObN1qsDIO2lrpjAUmkI6op3uSSWwyr216f2K
iD3wToMAp1VIl+QaSda0mH5V9mBDeB2VaT74MCePb69Ppx+z+vR8fjKYy0ltr4PJ82KtPLne
dZMl21QddVHBiFGaNKmk9eXx0xf5lBs/FQ9lsgP8cViGym5Lxia1PGL2shXO+YlaWtqW0T7b
k0AqrCcIe+F6na/sC7G7uXYLxadjuo1iyn+YV3IQD5PwESroDkaxr2owcTOf8cf3XdbcaZKB
6YibqEx4eEpxeXA5fTvP/vj++TPIa6LfIWxAtRcJ5rGZagMYf0n2IINktTGoEq5YiM5gofBv
k+V5k8atUjIi4qp+gM8jA5EV0TZd55n6CXtgdFmIIMtChFzW1PI1sjfNtuUxLZOMDEY/1FjJ
YSk3+KBkAxMjTY5yGBKA48PDPNvuJGUPUNjhpL3yY1oLMOE9NqzN1HDG5nB9HXK5G2syMqzP
z6xUC6ud0riIu/bLtcNflpxdgOxgdxUpBW7XqmTAb3Rc/sdcgtX7xtNqqeq0xPWWOn5HBruJ
iH34TfnqvgjBWKI/qQ8R7ijlttwrxzpY7O4ocpQe81iOSIdML1SPzh50jOI4zS3cYL7OPHSc
F2t1k24xIDcdeBMpCxZ3G/oMAxmd0LFpcQjXoFIO7Twgd/g4BEQ6QZTPKDxY6+ujMNEFFilI
RFkV6kivG7Ad2C5N9Rkk7uios358mS08vDUI+dQPkZu1rLJJXSViT58+/vn0+OXrFbZhMLbD
C0TjrSHgxPu5/nG33HTEDW7TROvHeWwtYKK4axMvoDYVE8kYfM3AKJFCJrAe7lTFBB6F4W7k
97maYW9C94FjSaFQqMKQ3OprNLJbyYSSQncShQ+RWX7SBh6LiUwOp9Gs6J7mdRiQsSgmkjFo
I1kAT/98s/Y9cHKZ19QwrJOF6ywtY9DEh7ikwwJMVH0YN9LO+onsD83h9/vastOjdkmRTb/A
WKrUX5jIDnY2/PWePGEm1H4L2pfsg0QU513r6T49fSeMLdpUAqu60jwO3IFpYUzvXSZZa/Bj
ymncNmm5baXw0IBtovvpd2d824c6HzYi7PX8EQ9gsGLCUwS/iOZtGlOPEzkyjjtuMstyIBBN
R4kmx9W1nFF7BMnRAziQyQmsOKQDqyfX61qn+V1GC5tAw+byuKEC0nB0Bst7CXi9WNiwNWSG
bYHM4NeD2rw+y6ZRUNVtIypkAiKLKI7yXC+I38ka5dSe5pKlooE3bYZTau0EpLMcp3qowUJh
etkgN9uqbOjcGUiQws53s1GbmeZRqUNS0M46rNIAH+7SB10si3XWJHqrtht11VKROWwMKjLy
E6J3Va7FChEQuyTAZifKk8xoRLsIfTpoAqKhL3wG2AkebDztYtzDxXqF91GuxVZU0PssvWdV
mZGxrbG9D43I5qFwOMM3qhqo1QDvorUcVAJB7X1W7vRRvktLBnZ8q9eRx0PWeRmYJjqgrPaa
SCAfUM3Q0GPyzoKAH7UaK2jAqKOs4JuuWOdpHSUeLQtIs13NHZR3dWXI7sE0zJldhGD/lcUF
CKXGWdg/o7mpj3QRPfAQCJbSeDyarc7lIoubilWbVgNX+KBSn1hFl7fZoKEleNlmOqCRH10j
CDbm6Z0Kgg05HgfAzJMGVQIKlskfpCWwo9TaWqdtlD+UB50fNShVXO1pdoAdiwY1SL62LNQN
bHwPKqxB+16X+KaK40hrC2hso5v9E08NKPS9tISXD3ZJ4I+beaIktZA2jQq92wAEqYJ1OaWP
PjlNV9Z5Z8c3BZ0FjmsEPM6KWEa/q+ClF1HTvqseblYBiwtlLnJUVbNUn+jtDpSE0dl213Ss
LSJmi0TDNSPaMceaUdsNoSKNZeY+y9QIVgg8ZCB+egs+pE2ld1RGPyRgveizTuTJOu66NQmP
oU8YrJD/0oyWvNbktYCV3OtvhwbHUsIQ45YYxscizUIejzwzlsw6o+Pc9+TaIb5SxfoFoPXl
5fry8YXIb8NDYKyVCnmwC9R2pPn7k3J1MiXMDR49q92eLje8GHtCVml8NiCUCqTWV7s4O+K5
VJ72p2OS9TxFN1GBIlyGvDYgFMPYoBIlxArRXV5nR8y9qhVVllqYKATDBgoWt4gdd3GifKBz
PypLUK9xeizT+yG2m+mcpjziQX4bwTx4cJQ+4RnuozKm9XkD5Wdl1nLFmqVaN2xBaTiL260B
AJVdJV3c5kY9iEwyxpO+pQfQEWWU81lnUG1YoTINBoDxEdimGFN73cfCkrmFca06UM1lIpLO
/cP7N0WUy2FjxIXy5e06i6dLwoSaEfFieXAcPk5KVQcULBpax9nwyJ7C9qc1+kiLAoFf1IO9
kUBEvDOg+3TdkQXig3lLeSni+9xmapkkMJ06rFTD4U1VtTiKx5bylx3J2hblWFyV/SCK2TDq
NE+uXcqjTGFxx1CSLUQsCEZEr0kKGaYXuk1FWnQjVgSOIFtR7K0FxyXjSXKQ7mdMsMlQdeg8
19nVSGStKGO16y4OOo1G4S88arQ3MDOhihsfV+TEqJQxsOH82JvLrpoKNq9j39NHfsTyhHYW
XB/vxuDWWC+jIwSMRIze/Y14MeI/HdrKPrQVMbTy4uL65HCwPHTdm6PdhOjCsVreGLEhIAj8
vWPm0GGreFo0rW6CcxqWx8zA0ztVuSv1yQpZnI7P4qfT2xttn8BOoGxTTX7uE2MitIUZN6ME
6/E/Z5xrbQX7rnT26fyKjhqzl+cZi1k2++P7dbbO73CdPbJk9u30Y/B0Pz29vcz+OM+ez+dP
50//BYWelZJ256dX7mj0DQP6PT5/fpEtGpmSMs6yb6cvj89fzNdQfNFK4tDR5gTfImqnHxht
tLbnTeNymJSMiuem2nttdyP2Gh/ahIzXy+2Eeznr1gDhthEB3kbJlt/EcE7UT6crsPDbbPv0
/dwvxjNGmcX847v0AXhapka53lDg9vTpy/n6e/L99PQbLPFnGJxP59nl/M/vj5ezsJMEyWA5
oisPDPL5Gf0ePxl1emg5ZTVshdU0jSPaFkdxJGibKL6D0WMsxf3mRjcWd/hAOzVm2gCHbRPt
v6sQ6QkZaaqCUfdFCsl0lqytDUs5d9cEdLF9FMLpRxrMhHx0k0D2c6ZrqV8Rrhq0pCZIi2yh
xe8DkLdQQVHStZ22ZLB0z+TgUcK03FZtf7alGv03VGt/1Ar/L2PLMzVBxj0sbGttoh0n8VW2
TTLt9JX3Bk/RJwebsRYOPxYbMKBg242+XFvqSJJ3PgP7eL3fRlr/NZ2PoYBj2G2sG55JR2NK
Vt1HDVhadlsKNf8NE4qBLPDFYZMdMA6e1Q7Be6TNvdq2B/jgYFhXHzjfDvTxOddaYJ3C/17g
HqxrFoMtDvzhB45mSgyY+cKZa5zLyrsjjEcqHFyky0QwosWalZUi4Pko3vXXH2+PH09Ps/z0
g3JO5F/tHmQdU1YiQ9khTjPKTQ9xPDj03tiCcmvOcVUgjy/MK1HtDENR820tHknrIZPffZgv
lw4WYT0csPRTafOwBChj1auLW/pUJjnqirRHIi+O/MbMI7D9inwsuwL27ZsN3i560iCdL4+v
X88XaP60R1THaLBI1Y00CpDj6F0aDOdbKnzb6GjCkNMLVq23G99PdL4+e3isReo6j6/5e1Ov
I8zXdEaBzdNU8jqJ+ccKsExbz1NfsUlgDPVp55AYukMG0472C+F6kh/OHvcw5e2ySQ6vOrPX
cVXUFcN7FHWIjxh4Vzuy6I4p6nmdsow1U35zTOV0iH153Zql+onMsSlB2etAXdY3/JRQA5F2
svhzw2gob6kmWyMOmmyzFiSSqRt0Kbw/9nVyLCmlLwUVonoHtt8NO2egK9DthTC+KdoNDCoM
rbX9yPyflyGGw1ZCt7dNUIloGD7JVOot1dfLGSMTvbydP6F/++fHL98vJ+KsD8/AVaFAyHFX
1nyVUjCp7GLQA0bZU1dZQGijI09OU9jFfDVEtit5BGs73GyThCObJuF7u9W+ifm5SGzpGbSl
Bnd7vE/XcWSXWbzqEIywaqOfj+7QjPahlgOz8p/HNq4LAhZnOrBp3aXr7nRwn4+XKgFjAGRG
4WKR83Rwp4S8xV/HON7Kil7Q7RKfMT0MnFo3T2sTHvQaGGbVcBeOgeBeY5hNWza02h+v599i
8Xj79en81/nye3KWfs3Yvx6vH7+aly89W7oDWG8+72vgK+9C/j+l682Knq7ny/Ppep4VuDEl
/HNEM/CNRt7iOYpVfm6XqJgBsAU7svusjaUJpiRigh8i5z0BGi4AQhnTaxQpDKuIxGo/Xx87
iJ/brDzEsWQnC/EIOvZerowp1xETvs7bTUF9WMH6i39ZcKyOmoPydmpC98d45DyfqHjp6LN8
q0vHpNqnVBP0vB8jAv12yVaxrKFdISRmHKI9mXVaofAs5aN7cEHmuB9p1rD231VlpJfQh3q2
saKoDpGSpmOqtFV5wDM07xSlPxFrRxmqcImjX0sDJK9juVQ/NgDH3b2IH5w1741W+Jh9hro6
H7DAP7rprG6oU1k+q9CTW0v73YMNjmUmhPv7Q716VxDFVza8d+N4hdHJvUqf3PdTSWs+wNd5
l26yNLd1AEjGmxAVvMv85SqM954Sm0Xg7nytwTv8L9uohLj5VEO/IXTf4c7L0pyO6ZO+Q2Ys
QCE6apXog4iOZJ2c5Im3hadTUmjj96igFNCOvVc/g9nhhX6gArXUVZNIHNKSfPnGp8G99Eyn
SAvWZrFaTA8zlWofkPrby+UHuz5+/JMKRt1/25Us2qTABkxVrAw8iGslFgKqgaxfNr6Zlf2d
pWCoXmI/5byFl8D8pKNJtxlr5R0X3pEjXnIERmot98wEE/lpSAz3q4qrXHb24Oh1g2dSJZ77
gUqId5gQJxlWP6Aw+co/Gx3KZV82REQNTCHalY2jmb+YB5T25WjukO9oTeRAz6hJOO/fKGkh
Rw0agY78GodDRU5VDcjv7g46aVytYTCP77t1arQHU58GlpSM4yhbm1v7q/lcby4AA6MPdeAc
TL7z2knv+hG98PXu9OnVVWD/xsEEBuYY1PfU5omjprzl+kfrxKPT8woJEe8h9DESGXmNskp2
g+FtHGGGSltNbR4HK9cY4yGNslFXn7j4luwGf2mFVa1YFLTpxO/W/nh6fP7zF/dXbvE22zXH
Q+Hfn/EBK+FhNftlclP7VdY1gq14dGsdDpiujhx4VvQoPzTp1ugo5ne3Mi2DjnaDSxExJxfe
kgqTLj7u85Ea32U1GUdTzMRt4bvzkYkiAiIG1m5fLrAbUXWUWmzThoEbGMsGftJeHr98MfVa
746jq9zBS6fNCq6gNTnrsRWo0V1FH+IohLDfp1YchaZoE0sjdilYmes0aq0NGd+s/LwpcU3l
kFFIorjN9ln7oAnPgFa9wdR+9h5ak5/S4+sVLyPfZlfB/0ney/P18yPu9/qTgtkvOEzX0+XL
+forPUoiwyM+trXU3+c/otlYR2UWW3Bl2irZ37QP8T1LaeU+z0xBcl5s8bJ1lgM7CbY3bYzH
tHLJCOJLOEEO5q6RHnWCjVnTTMx+QIkH3rAbMh4dR+yhBOv8cPxfyp5lu3Ec11/JcmbRd/Sw
ZHspS7KtjiQzouxy1UYnk3JX5dzEzk1S53TN11+CpCSQAp3MKjEA8U0QBPHIa2nbBpIBODfb
V21IZJXXG8M5GWDambH/zrjqgDzUwJPthr6IJcfCEvXT3RZCLPkLXAxUA4Izmc9BJthKfP+I
Xb4BBqmMEOgLUVvOluJibN9yimoDxguOyyPcQUp4/UxidIxr6I6JY80s7TZ03UJTcaPPKuvu
yTrmekcAZOso69Addwa/qo7c+SBRr9haDwZRlkqBbfViAFak9xRcBzurL1qwkkNONkOqDAKv
S9jK2VRF43tyWCmlW1Gt7LYeQY/q6Jx6gOm+fa3vwBuWqU818lu/FPoxbG/FpWgCSu9UTzVI
KvBE80YiCdnCEumqTdVSCDxQYmnaY9QP4bozW9i/hdmzswVILo4D2+K5/06mH6IrQe9r/fYY
h7+QS5QsE7oH6o3JqQsfpE+Pp/O7cVAPjIaeGQG1grQMDKdrkiJDTAySuE8MhWXp66JE7Il/
kVCkj1cfGwwMMnRWu0M+CbOgcX30GG60DDDieGbc4lMDHNQYLfniYFCleiL7MBlm5wY+uT/2
1hMjp9wmTYmNsLfZDFjkKLGZcMSrKpiMtCjASAQdfWkWGN1hMsiFuimCRoxbzw4DoW6KEEy7
ncO9CZNQSgKEV3fbcc4ME3RxfWaQCFhscVBo4ZdYyJEFQW4UinofgY+bvZmBrxmSY41VqgAu
9m8xBPUej48GryD3I9kpTVDUzEwyqEqrcMcQsI8BMs2Ironk6SbGK8/08z8ehkPGyJjwYFwl
zqe2RKohCbR+9r00YEJKsskOfGdqcBQYPMC4dlggAqxoq/+H18vb5a/3m+3vl9PrH4ebH79O
b++GS8WQ5eM66Vj9psm/rhw+QrxNNlZ4j/GcLMQuHPO3TR0Vxhq0ztWxvptdlQ8F0YGuyzKp
d8fRUnY8VeT1rBNXCsjRbggECkPqE3YlS8WxD4lbRiYArutpiZ5AxA8wCxVL9HbPpoRiR+Qs
MZKXq5yrqhDFwJ8ug95NXmghjlJz+uv0ejo/nG6+n94ef2BWXKT4pRYq4Wzhe5jRfbJIXIY4
iW/x9hvbqW/yCyoSlUm1nC2QOhPhtkUcRUdH8TytKEW8QWGmqMaoIgpntFm+RRV9hmpGZ+lA
RKvKXyzoMBOIKs3SfE7G7sJEMhyeuDpSqwOcHgSzzo/c2Xeg4MkHY7fJq6J2laAsYj4Y/KBi
HEdqB2D7pYy9mUc2HGRf8Vdl6x5rFZiS+16wkBmBMtJhCpUixUyyfCOmCILvjnXCSYwQ7QN1
nTT3TZL2iY+NZu6+iHGlQ9IM6LnnmWVJ6NKGrpLiFpLa+xa49bs03csYl1blPSoj7fkkRVoF
c9/vsgMzJ6V/ULBLTKsuDh0PlJig2yQtZfnQ08inPGp8C9bsUquHgj79uqn3k9EFzLah9JY9
tuaM+sjSUVpY3pgNQNHdHIt/WwieEKcH+m3IJlw6GFsYx/Q2ANTcc9fdP3V9VHccBKiCJgcj
2W3BC7LS1Q6M39HRd0wn5xU8Qi+qyt6cEkqH0xjQzDEBEnnXH2jF+cfp/Phwwy8pYaUtRAUh
QopmbQb1J9YOIKx6zSNbZJMFEfUoZFOZ02FjHVwdkx19VzoOk2oRXqdqxQYX40babZCjZ9wZ
xd0nVfM9Ef4mB7+MJdqe/heKG+cA80advJlmnG0wlybCpFggkYK5ivZ8dB5qWnE3soidpIcs
TwXtlWaJXbD+gCJvt4riSptWGft8B8Qh8tkObMLsWuv84ApKN+pKwwXNZwdTkP7JNsNwXimx
Wm/SNS3IE8T2vDspD5+p+5DX6afmIZ7HdE4+i2q+/AwV+Q5l0MwFA3Y2HZB6lX2mnOtLVlKo
FeamWF5BfbTeJY1qwsdjs/BDKjyhRRPPnbUBktgwV4g/t6IlqVqq1+v+JGeStHqNflz3PLxS
6Tz83LZYQHJkeh4BpWTVazMpqdLksx0UxJ8dWyBle2lhRMs1FpH/EVGSlde7oUpyhI2bkk+Z
lJu0cm8lSfARZ1JEU85E0gph0lWXQI0b231LNw5rdJ73fojyJv/8dPkhxIMX7RZpRGD+DLkp
1mn19IdXYxUZh9b/KPdsRH6FLPgUGeS9Jsmw0qNYFwfDDmmEdqwhjfvkQwrSwDwbCJ4uF7Hn
QoSJiZG1acsvswkAFP/t0lvHuA5ErJHeEXVMB/GZEi4+S7gku69aliINpAAVh27tQ5IVrlHj
XOzryCu6JJ4Bhi5QEvigxrCKHRCNo9htbJdKUDTXaGayhittm3Y2Fp+EPtGihUAE4bXagCL8
kGIRth+QbD8q4xDyDyiyPHD3WuCb2XQ+ltA4j+75ZJSnHEDcO5LMyMmx/cJZUWuL8KHAETp5
vppSwIsdUpqOCLBephFiP9IIeEJFjeN51e0X0Wg1pHgjv/x6fSCCTEuLlG6HKlUQ1uxwVGgx
ErxJ1esCjgGrNC/qG3Leev3JlEQTaIvkwTSmBxcbZW84tZmBN3e2cha4btuq8cT2sEosjgze
jSfFSaPs+EoXQMPlqqzJkmmJaoe6PlH7c8snnykfVHc7Di1Mq7NcHQnG7jbEQYSASW2bTlua
8GoZxO4y9bRnqyPUDDx2b3J9FZ78SqOTtkz4/AoBWBS4sTLUXeDus9gGTT6Z6VoOZSsWT8Km
ndadYgVvk3TrMLXRRGL3h4HjJAa8MmDAEYP7ncI4uugmjR58045lgHbxbFVQoYKSptIbkrOF
N8MlVod5JZ+DC5MRJW2Vl6J3tPGWwjq80ftOKaHHYZ0p9fNtNR1XqYfuGnZtPsHQwY2VQodz
32z1SKSVYbk2wKt2TylKe0OEnZgrdDD0X7Xmks6H8W6dIgeMETztJhDl37022NGwptguQti9
VUNnyR3QPvV6orFsb/NpSH0jcyS01BrnEDWbNpNJ2lSsEf8KQxmUdvZE9whRryu2Rk9i4ftV
APFaIK4GLFOx9KeXA+u4QgsoKcrVjtbpF+LU3lMBXeQ52JyeL++nl9fLw/QUbHKIpWhq80dY
l4IxHzEAB3GDa4DCudZ5Ssf7JhqjGvny/PaDaB+ruPGAKwHSvIFa8RJZI4MEBdEGCMhtz6xO
hcgWvfkH//32fnq+2Z1v0p+PL/+8eQNj4r/EdWoSEw4OR1Z1mZB5ippPUgGZ6F5R3l/OxHWP
sr1VblJpUh8cFzRNILW4CacDZvS+Vp3oUFGvsZOQxFQYM6byIVqmmqxeDB0t1h728HIuNiIV
tA1R8Hq3M4L4ahwLksnXNo1uMrmmiCYOtbdLH77tTHfdAczXzWS/rF4v998fLs+uPsN3Qrqz
X9gwVsfNQ+NLFqrCUR3Zv9avp9Pbw/3T6ebu8lrcWTWj82ezbw2NwkcfK9vh/6mO1zojH3PI
kZ18qZ57hED599+uErW4eVdtSN6qsDXLcTeIEmWRuYzAdFM+vp9UO1a/Hp/A6HnYl1Mvm6LN
USQO+VP2UgD6LB2IEXy+Bu3LNCpsyB0M9oxVdufki4KhJowyGwSkWOFNYmk5AQ7uzN2Xhrxc
aWZr6L1GmMmDELrXlJk56Oyeya7d/bp/EivXuR+kFSacC53DWlIR8BWloZC4skyRS57y4M6a
IdWDibmrCoQxKxHsnrYn6rGMjuIk0bwi7Qs1LoPPraZ8SWsuJZDSQiTMWGTkCJp7kFDL9UeY
uOxKkWGDb8gDlJpgydl0aOvROFv6YAp+apzoIxQka3JwNIkKB0Y0UOOphmjU4NIEKRJYaV0a
d+lgunzYlS2E4tFktKzc04f/BT0ZblHe7YbDQS7p4+PT49lmbZpe2zof0j2eW+ILPA3fWkNj
+e0YLOM5GiuS7X5OFOmrYdLObt3kw3u8/nmzuQjC88XId6lQ3WZ30LmOul2d5VVSIy0LJhL7
DIzrIAyYoYvAJBAwjScHMgElogP3KM6SNHfUlHCuFLxGJyaSVyLTycmFJeM6DX1HeLgdmEh0
+ay0xqGvYdrqcUi7/ABuMpMGS3DfjHqHTbpIEsaqvYtk2MvZusB7p02lqYQ6Cf9+f7ic+8iY
kzFRxF2Spd2fCY7YoBFrnixn2GhZw00fJA2skqM/i+ZzChGGkREVYcTM5zGZinakACdAk/dI
DGvryI9o+wlNoniwOAYhZiJ96dCUTbtYzkPKZFcT8CqKvIBoRh85zf2poBCsBKKAYAMdcWrs
GmznnqFrgJYEu4yt0aoHk68yEAcH8uIG14CqMJLTgMAHL2513nYplX8ACIp1ah38OB2SzJsG
TTLq6jUDDTMc6pVOZ12lQZevjCi5vWKkoiSXAlvZFWDBrayoCViXInNpBDYcQEy49pGisOB3
vavBOb0x8bfrYi2pzDZoP7PRztvAqn9xKCL0zYRU1sqBOw4kASbhX8YcayaYLHFsWs9v1OXr
4eH0dHq9PJ/eTRaYHctwhuyUNQBi5lvAOdKRa4Ckwvm8qsR32EIJ1MxhALWqUrFrVY5BUr0d
LAzrqywJfUfi+ippMjrvrcQsjWIA5LuyHuksDbJRHQ5MJwe/7RHJseAOHGQdsPC3R54ZbZAA
oCRacXtM/7z1PR/5xVdpGITGWFRVMp9FkV2EgY9jetwFbjGLKIWfwCyjyJ8EC5FQG2BYNVTH
VEwzbWUjcHEQ0Tje3i5Cn2oLYFaJmWbYWs1qhZ/vny4/ZO5snS9eHHPibLPX+9xb+o1h6Spg
gSM+u0DFXixYo5A1hFjRJOLWR+omsvlyecT7o5DGzAmOVKgVEElmeHIpDUJSJVEWAI4oHV6A
pKGsWV4KL69gWYaBWbKEzbRhCjqu9rJ2Fb89zn3DUq+ok0Aw+8QRWLLX3Tnx1XGeOerSAS71
IPTANg1mc98CLIxJkiDS5AqEjDA2AhOAQ0Fs8ohhB7FwFgT40FVGjDpimdkwjBRiDLh7Wfi6
++YvFuYUVCwAaylrnutkP6eDLsCzk1mvlFIOIIMNZq4Yw6oFBH8/7qYfSdGmsKoeMQfXnI0k
goLeotJVcfO12TknfhA/udgp5PTzNJjr2Ud2Erko2OiKdmpd86yyeBDGGKXIR+bUW/ioGAnj
goUagqa+fR0nveiZyzVGglnN+vVyfr/Jz99NrZUMJMPTpKSDq00/1grdlydxKbPTKVbpLIjo
csYP1Bc/T88yNC4/nd+Mm5p8QOzYdpJrSCHyb7sRgw7lPCbdutOUL7BPR5Hc6SkanxwrcHKg
41fzNAu9SVD5Hglp4iDhRsc3DEeh4YyHRjiQw7fF8kiOy2QcVJ7Mx+8acCMm6Ca9PD9fzkbG
zP7EV2KZ5alponvBC51IdPlYLqi4LoJr2Uq9FXDWfze0aby9T5CWoIELtIWQHicn57lPJK8W
tFjb92oZ0mdk5GEXevE7xDc+8Xs2i80TNIqWIaWlFZh4EWNJMoqXsSldZnw2C2YG/46D0BHH
R7D2yJ/TqJSBOT8pQ0iugUOTDaB+gEaeIYBRNDeSbV0dOKXKFrP+/dfz82+tvLFZglaRZPuq
osNbTwrQic5P//frdH74fcN/n99/nt4e/wNhaLKM/4uVZR/hXr34bU7n0+v9++X1X9nj2/vr
479/gbPy1MjPQadSJvy8fzv9UQqy0/eb8nJ5ufmHqOefN38N7XhD7cBl/7dfjtmsr/bQWLc/
fr9e3h4uLycxdBaTW1UbH7vTqN/mQlsfEx4ImQnvlhFmX2bQppenXkhrfCu2D73Ic0rgejuq
IuA6QF18202oohRNVty0y4qfne6f3n8iXt9DX99vGhWu8/z4bh4D63w2wwYQoITxfDOwuIYF
5BIli0dI3CLVnl/Pj98f33+j6Rp5RhWEPrVZs22Lz5dtBmIueogRgMDz0VQbyfaqIjMC5Wxb
rhLnGb9Njrlt95iEF+L0MkQGgNgJwvtu213UfkyCN0DsqOfT/duv19PzSRz2v8SQGSu28HGI
XPXbbNn6uOOLOQ5q2EPs1XpbHWP6DlPUh65Iq1kQe5NVikjEOo7lOjaUMBiBt5Je1SWv4owf
XXD9DXJQcg6LCgsl83dTiyX7E5I5Oa79SbY/+h4Z+zcpYTmjs6sUB4uHfBETlvFliJ0vJWSJ
Zybh8zDwfUM82vpzh6YRULTkJE4cf4Gt3gUAWx6K30YYPPE7jvGFe8OChHleYENEjzwP6d+K
Ox6LRZ6UxsPWIC3wMlh6/sIhgI0kwQJNLED8ICK3napoChd3VnQp/pMnfoCdlxrWeFFgXD37
BkxDC6KbYBN51N2uPIipnqXc4HCC5RkxQRVkicel3iV+6FGsaMdasTSMBjLRh8ADKDV8he+H
yD0DfmPlGm9vwxCzLrFV9oeCBxEBMjdcm/Jw5iOpTAKwTq4fulbMVBQbWhkJWlA6dcDM54FF
PItCqnt7HvmLwEgZdkjrcubybFTIkL5OHvKqjD2Ht6NCzqlddChjH0uj38QkiRnxMZ8x+Yh6
b7//cT69K43RVHpIbhdLHK0hufWWS9/H4oTUUVbJpiaB5mQJiOBV9BEF1Hm7q/I2b5RiESnk
0jAKXH6rirPKylxyRL8ExLUxWszC6drQCPvw6NFNFfrTQ2J82afGUI3uGKMc++vCtWd/xGKN
QaiPyoenx/NkYigxrKhTcXUfhu665lYpzbtm1/a5zdExRFQp6+xjEt78cfP2fn/+LkT988kW
5beNtntU10D6IUOFRG72rKX19L3Zq1EURWITGE1pIcRgudsxqjHm0vnK15ym0qNC912fy2ch
+smQj/fnH7+exP8vl7dHuDZM95I8fGYd23FzS35chCHrv1zehXTwSLxYRMEcHSIZF+zA1v5F
s5DUa4sbouejUw0AgtchNstKEH8pSdxqENlYMXBmbK2yYsup57ejZPW1uoe9nt5AQiKFoRXz
Yq+iHNlWFQsWhkwJv+3tnpVbwV2p/ZMxHmJxyTjLcxygacs8dNAVKfPlVQIpQUvfj+zfpnQr
YCEQjdPBoxhzXfXb4q0CFs4nEqfVPAw1K22jGc7FtWWBFyP0N5YImSyeAIYx7K+79gSNAuwZ
Mi/iecOnkoHUU335+/EZrhCwOb4/wuZ7IG64UgITkg8KDFZkSSMN0zor1v7KD8gNwApsyNOs
s/l8hsVJ3qxxOjJ+XBrLQfyOzPsifEAJknD0h15g6uzKKCy9o/N4+WAgtAny2+UJnB5d7zzI
PvgqpWL3p+cXUIWYGw3zMS+BvHIVI49yiRhXc3lcerGPL9gSgiX8thLie2z9Rou5FWwaz7D8
rSWunk0TbR6mF8e3ET8U1zdBfeDRUaIVwOGFiVozGm/GcNFQHTUGA/NGHNKTCpT5gqP43gsG
rxaAqzCgjo+2xeqAop8BqKg2NuDom80TkGA+IRJ83xo5FTe03NhgtShM4DR3AEBLlvpgM8FT
yoBfU5jZ3hSQ8ymEiE0GKGmIbfZG2oYWnFnQPlaH1UgZlXxBS+gSf6QsYAADz0FmY3pjEOVj
YRTTvww5yupNDI0mC3a3SFmZWSsavPhMOtN9bwCBT5EJBacyewCkAZejWW2RpwmbfFHk24Z2
7AG08jEza/527DXwEADx4efjyzRBUFJ2axwNWVCqGHgpdlnpx1gszxRIWFETyOYunUKbb4nf
o0b+rQdZFkjeD2cLuBGYOUpwMBo6pGNf6Xah2mr2a18XbFtAoOYiw0nq+kh+4pwyWgk7VHzH
25wWtwFdt3DVmBqkQn3prloVNR1SfberN+DNwNK+2kHQaId+9xcHe/aGFjBIw2skylThltLR
VtzCJO12vpwAj9z3jF4ouPQSmDneZRWFZLvkTEi0diR4JsH6wdJujR3YT0Hhed9ZT5nUbXE3
/UgzwysdkKzMWa7yOJHBLbqkWeE9qQjgEf1K6aSrokGhzK13WIhECJal9ujgMGGT5jgiE2qk
fAuyy5NMq2J+NJ9gdumabZLpqEqv/Cu9HiI+XaGBiMuUslL5b/dBw2SsMhz2y0THVuY1Jdhu
v97wX/9+k+bHI6PTyfR0PtopELheIW4iGC2zZ24qO4ctUCtXYTq1i8bHhVGm/fly8rlBoT10
ZDpUh3GOdM+GVMBm/lv4uuYCmBZGshKAqzG70m415jJl0G/7U9iywNOsVLkmDWRlqneyWWaT
eu6tikYIcdh3waKuZHJi85sBJYubfDUpqqpYaKY7GqCycKtLqZBD2JXBkHtQpU0260GIaalN
InMpu4tVJi15HfY5bDFusKWWv47epPTBcUJMr6MCfQbJ1XcQZ93OrKO3hp0OKo/YQSb3VRhz
ybbKZsYXdzMo2rkIRsKZJrQqaYvtzJtPZ0/JTwIsfkxGVUpM/nLWsYAK/AAkylhYTb/xbVYt
/Ph4ZUaSKo5m4n7VZDi+skzWpo9Sc4sJDscKlod2RTKpY+DTqlS1CUC+v83zapWIeapIg+Qp
IbEdh5vCtVKM8PaGHsFgkqhkcIX4/8qebbmNXMdfceVptyoziRXZcbYqD1Q3JXXUt/RFsv3S
pdiaRDXxpST7nJP9+gXAZjcvoCb7EkcAmneCAAgQER+oZfo+ww88XLV8We4O+FYPKc4P6o7W
er5ZC5v4pHIWgSrTlZnzXIhu2ImSjDPEjjTq3aPuD0/7e6u+PK6KJGYr0uSGfUpwOl++zqSh
/tDPQcEdL3MITBJhwonoI76IisbQEBRCK20Sw5azEBY/9OrEZxioTN5NANQyOW9rjlOoaLQ5
1ej2D13y6lgYiIHvUHEMnOkWHlKqv275tNPxiWwzg7QWz1UNTlnr+SXwHae0ISKY/aTO15g2
a1FaBuwKX7quy36sw96CTpH0xIGGKTeDzdnLYXtHljV/rUMX2Stv3LVmTmAN6RaNkcFtgAKn
ZqBlkzAljDYW7SXgt1B/1Et2xq8uW1SDzGdGcTg4fMGIvw9X2V3KCvQSz9XOLw6ZEv1ihomI
ZlUSL4yV1pc/r6S8lSPW9bAs8RLmVEAdFY5J9wICKuHjOR/ObTU/K0MdAJXxc+9rB/+1ok61
Qc0AD8sZk/VBu6/HlNlmGl4/02GLTq2Lj58mZqpVAFJY1C8TMjwA5N+Iec0oYdeWxi6rk8Ky
keFvik4LhBvVaZJZSikCFLvpY00NlR7mFP6fyyjwsknRIgnP3LxHLPQNhx1lplza9j93Z+q8
M0ZwLdCa3cgOM7GLqjYVZgAlKALY2n0zcZKnm7gPfGJ1wEw7+8AgEDCTbl5UVGqoyCk1ragT
mOqICwLQNLWM2gqdkNxaQnmJCbkCrtt0KqHJ0PMvs3hi/3JzSmFC+lkEqq2lTyYwfpj3vbY1
0x4MxBH/hJ7xZXctmoaf7i9EwHTkWtX5y/zdPybSracWiwDM17Zo+Aw21/8w0oivGre8Iqfs
HHVUtZx4iSTO4CFI1NDjppuLxjSALOb1xOrKrKl050ZPnx52sq0DEY16/7KSWh0uRdXmoBLA
MrgZ1oFTl7eCHLzqzKlWVHKOL++ohDqjBJOkqsPcETDxVhKB6kY0oR3Yf+OvIROvBsQcZAKT
g7UV26tKozx2Sf5F0tP7Zut1bcDX6MIvYQ1Jt0UunfVpTt0Ilde4YF0uoWB90vKiDPQ7SWWH
FKGsJnPMwRJVN2UTPPRqmh82O9289nIhuYBEAShE2uiocOk0pM+Ih/GHWUJDZ4wP7VDnJ+ac
IbWaToy5NVFlBcCebCOqXN02Dl1TiBAX/DrPgEtYzlYKxF1kUlFWKKpom2JeT9VKtWAWaE6s
3gBESpAcbylVLh92KxQwMylogeb3Iwz2VpxUsDw7+GMorwyBSDfiBhpWpGmxYUmTPDZfHzEw
Oa4hWo7mUBkEmYShKUo/v0+0vfthZhic1+rgeHAA/h0hgXFx888M9AWrSuI/QJp/F69jOunH
g34UNeriE5q2AryjjeceStfDl61cMYr6HTDxd/Ia/80bp/Zh2TfW7GU1fGdB1i4J/tZpNKMi
lqUAaXf64SOHTwp8UKqWzec3++PT1dXFpz/O3xh72yBtmzn/jBl1gF9/eeOxYgKFthQhq40p
bp4cJmVCOO5e75/O/uInj8IQAzOnXvpaJmlcSY4Dr2SVm+zXuZ1ustJmugTgD1eHJnTOgPI5
j7uokqKxMsLgn/E41xYPv+OGiJvUKoudSh/Hzo5sNkW1MqkMdTu1f+h1YC0UA61XWjc1nV0s
zMcPxkW2jfl4EcBc2VmVHRwbnWiTXJz4nLsWskkuT9R+ybmcOiSTULcuPwQG6cqMZHIwF8Fv
LoOYTwHMpw9WRJSNu+AcWZ3PJ6GCp5+CBV+xiZ6RBHgsLqruKlDq+eTifRh1bg8Z5SS0Qbr8
c7dtGsGrUSYF545s4qd2+zT4gm/IpbuwNCK0KDX+U+jD839q4Pk01Hk2rgUJVkVy1VV2xwjW
2rBMRGiUE7ndWQRHMm3sq44RAxJZW/GvsQ5EVSGaRPCy50B0UyVpmnDGbE2yEDI1L4kGeCXN
jDAanECz8WUgjz7J26TxwdT5ROTu5CCuaatVKN0f0gRPVtCwcZWzooVllVChmbu71wN6o3kZ
TVfSfvgff4Ns97WVmGgRRSX+eJRVncCxACIyfAGi8oI/RpuqBaqYiuWsBUp/6AmsGCB508VL
UE5kRT7PgaSLvXkCk3LWdAvcVAnro2QYMhyIdYrr8vrzj8GUwjS0UoZDEJNimUMnUFFBabXD
bJ0Rvu1lUjpEJ1AgXKXpzHqyyKdBBleXwtYeQZJGRagu2ipio5LRgzyiQjJYPu4DnSxadfnN
u+O3/eO71+Pu8PB0v/vjx+7n8+7whpmLpsiKG9aEpylEWQqowH7xzEVCl2vuktondCwhAYLe
oFCfrlSR9olo/2HRDR+N9q7TH6SFiEvWs2UguRFO1mWNqMUcHRTciye/imgVF5scw9ZYysFo
w2K1RO/1kWmzRxubac+h/s9vMEb3/unfj29/bR+2b38+be+f949vj9u/dlDO/v7t/vFl9x0Z
09tvz3+9UbxqtTs87n6e/dge7nfkYTzyrP61yYenw6+z/eMew+/2/7vtI4O1QBzhwiF1uVsL
DLSAqYEVDAq+4V7GUt3KynrPnoDoa7Pq8iLntpNBATvWqIYrAymwisC0AB26BSHnGIY2YFfR
xHhrEaQdnrBkh0ujw6M9RO67Z8dgcYSVTyYkM7kMsvNC3zNEh1/PL09nd0+H3dnT4UyxDGOq
iBi6vBBl4pbRgyc+XIqYBfqk9SpKyqX1/r2N8D9ZWnmhDaBPWpn+5yOMJRxUJK/hwZaIUONX
ZelTr8y7FV0CGhF9UpBGxIIpt4f7H9j2N5sa/XPFLJWutb+nWszPJ1dZm3qIvE15oF89/WGm
vG2W0ky83sP7BO9K/3/99nN/98ffu19nd7QWvx+2zz9+eUuwqoVXTuyvAxn51cmIJazi2rg+
08sus0IbdP/aai0nFxfnVqo25X7w+vIDw2nuti+7+zP5SJ3AMKN/719+nInj8eluT6h4+7L1
ehVFmT8hUcY1YQmSnpi8L4v0JhA/Omy0RVKfUzStW0gtv/LZWvWYLAUwrrVmDjN6wAFliaPf
8pk/0NF85g2oeufehdUenYxmTIPTahNubsFUV3LtumaWPUiv+DKxV0C+1CPsoQRmM2/azG87
PgCqB225Pf4IjVkm/MYtFdDt+TV0JNz1dSYGJ5x4/313fPErq6IPE2aOEOyP0DXLVWepWMnJ
LAD3BxUKb87fx8ncX9Rs+cGh1gjySWdGJ4sD+a81+sT+yBJY5jLFv/45kMX8zkHEJRtmP+An
F5dceR8m730usxTnHi0AuSIAfHHOHJxL8cEHZgysARFkViy8RjSL6vzTxANvSqxO5yLaP/+w
XA8GHuNPPsC6JmHGDiSQzTxhNQW9bkQm0zTx2XEkUMf1ku8a2BMTjWh/PJWrn1vUnP6Gy6pF
WgtmJjVb9qdYViW+iOkfMFOGu4Mq646QGv+nh2cM/bPlZ92ReWobmnueeVt4tV5N/YlOb6cc
x72dLk8wntu6GR6drraP908PZ/nrw7fdQb/zw7VU5HXSRSUnjcXVjB62a3nMkuOYCsPxE8Jw
Jw4iPOCXBHUBiX6epq5viFQdJ/VqhGqCO6oD1pBs3TEeaKqczQ/pUPXidLAUmZN4V8zqIpV8
YnTNCgRzEmI3uj6vhqkT/Nx/O2xBLzk8vb7sH5njLE1mLCMgeBVN/RUHiP7o0C747Mf6eOG+
Vxtu+NzfSiPRqROCqFipzqeLA30cDqmqTm7l+I6uXvVVtFTWJ5P4dEljt8JEJ/v8OwIiUg+H
jVvUkhO4RH2TZRINd2T1a25K0z9vRJbtLO1p6nZmk11fvP/URRKtX0mErleD39VoslxF9RVe
668Rj6UoGs7LGUg/aiOQ58KlsKhmYCm2D9sCTXSlVM4T5JuCzXH8I9Q+wOeD/iLJ/kg5So/7
748qFPbux+7ub9DFDZ+8Im6hQCifqnxzBx8f3+EXQNaBevPn8+5huHNTF3am7bWyYqV9fP35
jfu1vG4qYQ6p971H0dFKnb7/dGkZpoo8FtWN2xzejKVKhi0ardKkbnhifYP+GyOomzxLcmwD
OXXMNStKgzyoEkl82ZXG+/ka0s1A54SDw7QNo6uWqIAkX5ibGePorHGfJSAtYaowYyx1sBA+
Z942iXmzGhVVbMWuVEkmQUfOZipz3NAyXF+mw1dejDFIUdIlBTmtKadDp1qFZ1EOuG6y0nu9
G0Ry0DLhpLNAVgZgzGrnSe1QetN2lvziKA7wE9ZOOidt3mIkhAFGIGc3XLS+RTBlPhXVRjT8
rYai4HPvAe7SOnQit3Dudg64oa8qRcZNpqsbYVhgY5xfhod5HheZMSpMbSCIDY5jY1MRis7L
LvwWWTUczbacd6sOJQcKYt9YsgU1SjbgU5Z6ylKj1MeQE5ijv75FsDk2CtJdX3HPpfdICkIp
uc8SccldPfdYYcapj7BmCfuQKayG04KTcHv0LPrildYv8R449rib3Sam+c7ApLeZCCCKAHzq
73DmlqpSacXSwnoz1oTinZ25wS0c1GjiZpEhwsIPyhHQ0OPjpj+JqDGRGbAxkGZEVQnraoz8
pc2IDgXyWRrCY3NYcmwZQJCMpFNTrFDiE33RbSp8dqQPrGZo6ps8IsL58BZToCQYbIxSWJLg
b0wEoPIi1wh8bL60sZF960NlyQp4PaE84SHe/bV9/fmCj4C87L+/Pr0ezx6UnX972G3P8N3R
/zEkaigFj+Yum93AYvt8fulhajRZKKzJ1Ew0tAdv5UEi4nmnVVQSyGNvEbGhUUgiUhCkMhzC
K3OQUB1x7voscFc7GJx45ryuF6la+wb1V9NhOi2srY2/T7HdPEWXLWZ/NUWW4Kkx8v70tmuE
VTjG9INUzblbZ2UCzHj8ukhiCjGpm8raIrBtdJXruC78hixkg09vFfPY3Fs1xh+lSWNByqIw
RoIurmJZFiYRnI/W+sULQtO7o5h9EQsrPyXeyucLdgiNF4UcYcztBCl+9TKNkw9+D3tkFUSm
p5BRVsbmTZOJawekfTupJXSCPh/2jy9/q7d+HnbH776fBXK+ghyqFynIgOlwIfQxSPG1TWTz
eTqshl4d8UoYKEBVmhWoIsmqykVmJRMMtnCwBO1/7v542T/0wvORSO8U/OD3Zw4sXJJj9Ofz
95OpPdclppLG5rCp26SIyaQANOZGWAIcs8ckcEQIdj/0m1w5zaMXYyaayJCdXAw1D0MprPgA
VQqw8gjUtDZXnxDH6T5M+NB585ONFCvKcBOVfLDpb48ljTwZtvZ3el3Fu2+v37/jPWzyeHw5
vOKrsmZsllioTLuVoZoYwOEyWFltPr//zzlHBepsYioMPg4vc1rMFG4ohv0o1Mxg1sRPN50z
bz4Z3hYSZYYhWME5HgrEe3eH1dGBu1rEFhfF35xpQR/O7awWfUAKHj/CvHwknMGjI+OLGTQz
rgNIklVGktE3y/iUaVTflmUyb5xGwPCstReCBW9z2DXRkubUQfU2B/SZnysHfKcdbe6QBJsE
jBsd+kmLZ7pTcHtSISVIKv4n5nDz3mFoQyFadif91t6wFw66ZUtjbnt3nqQeshT0/hBDYePm
Io9Red1g4gYzTwnBi01u2YDIMFQkdeEGhqgaCV/J+YndoEabWyA9n0vFzFn6fR9BHE6BC/m1
asyJWpUrSls7YpzmoNESpXmikXmswpr8eta8a5H2ncLUb+SjwtRg9IOqMdat304f2e+/lcD1
5Vt5FRY991DeyItxBcZxr0S6jjHjQvCGaum8B9WL3kB/Vjw9H9+eYYaA12fF3pfbx+9HczFR
wnPYVEVp2YQMMAaKtvLzuY0kSa1tPr8f9OYiWrVoe2lgvZjKWl3MmyAS9mtDipZJRjX8Do3b
NFV+t8QXPhpRr8zpUifOgBo6cD5571c0kgXb4pC4Tdl8hXMdTve4sPYd8RLVBZaZnJ435SUL
p/X9Kx7RDHdQW8PNEM59Yi9kHI2VlP1rlcruiI4PIzf7r+Pz/hGdIaBlD68vu//s4D+7l7s/
//zzv8f6KVaPilyQLK1CUS0Dd1Ws2Yg9swTUg929hpp028hr03jZbwFoNn7mMdSB3Nkzm43C
AfcqNug3GmRv1aa2gkoUlNro6Gbk0ihLv7IecYIXKQ0MGiMl9/rIWAwOKd2r9SqK1TVqFGyu
pq2k5+WpV+XQ8dFoOaycufW1uX7+P0vBUsp0WOnQSJJ10cUQznspY1irymIY7PZKHUB6Uar9
8bc6au+3L9szPGPv0JxuZcqlEUtso2x/5iE4fJwxpySFbSYg9PNhwHhIgkwkGoG2cHx/2gs0
tTZ3oPFurVEFw5M3IOX6771UUcttfmf6tCYTtR0lx2Lg3oQbOIxbHr/jVCQswJ1gBMqvp+Km
qT3kAN8tKsryB8djwb9UY3fUnirgsErXqSr7xUaFVmHDICihLczodk5Pd0O9ltf72tCyTmOh
zeWSp4lvQJ+FjTx3oqlVAQTsMnrVAQYX700cEnw5DvcGUYLYlps31UQR9R+qUkakag7aqtxI
blVrZLNHsnO4iVRVQmOkt66D4E+Do1hvElRW3Y4bRfXKUL0xzS5eedpq4RbUExpHhtbhnR7h
EYzHlV90cAZDkzduOWvm+ChxXQYcYHhvyt3IKpHULx5f0izm8x7D3ynSwe0T6NnfpKJhSu5X
Vb9yODG9Xxp1Lsp6WfhrRiO0tYCZP3xxRuT4Wid13VElLJwM+aBrtMhzzA+AiXzpO/t4Hqhg
F2g8z3VVpScGdJaiILIeHjfgtEKobibVwjfP+H4xuHCH2rgOzptlDw+EF+EYqv2lnlMIzRNt
es4YbG6zEf3g1yFSsifjKDKV9MtFMRH801a2FhkgUNr2+eTKYONGi1xyfgP1S7URcOaUwUPF
KNYk5YdieMOGGEIsUxDI7fUkZQYHMtmcMFg/HP0i8IXQQCiNOq1gNYHW6B3GD3uQ0bnTmLoL
Vc9Tsah9viZFlfZ3/Sse2l1ZMaP4joLmnhyZcX8R07ssAWOIOh9vkY9ay7iXokMzY75UYIdx
OyNgWqCb3fEFRUbUYaKnf+0O2+87I6wPI5IsAxmFKPVVMG0YQ5j8r+Q1TWF4ihUZHbAoO3NX
JL2kh6Zpyn4yPn2iF1TGE1lRk7JBxsPS8TvDfmjllIVwFRVrz5JQAy8s1v2Csy+PkZ7bZSA9
0BEKA4Hbqfc+HHWJVcy+4abUV3R5qa21TPAsydE8XjpgohzvV7VWQCqIL3jO0FU3yBzMW9w+
gsIKGauQ/7ElmDGheMoFatCXYYyCRJ1Zyuu4zbwuqpsjFYho+C5oZB2VNw50BeDGzNVF0MHz
xwS6N1nKHtkmsQO6VrfSdomDccoGV+jP0diWWtVBy6GTQMBh3WbquzTHrrHiLW66F84bPiZ2
nSl12q6H3DspCtWtalbyRkuFRMesJd5SwT7kTsEkj7E93EFLBcyTKgNN1RQ6kwb2chr7LKuS
Kow1EF45yAh11KQm/zJyiuByYBmb5bIVKlpze74IaHjwSzXGdDB6A9zH2LoR0TYRHIcRiKWc
0UItPn3H6pSMlozEYx8yI6hNTcGDFERsNhFog1e0p06ewQ6CZgh6fQmD3oqozVyhThkqZoni
3vzjOM4t6/8Bh4BYRtYvAgA=

--VbJkn9YxBvnuCH5J--
