Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBCF2UT6QKGQETALXDJY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x237.google.com (mail-oi1-x237.google.com [IPv6:2607:f8b0:4864:20::237])
	by mail.lfdr.de (Postfix) with ESMTPS id E47382AB52D
	for <lists+clang-built-linux@lfdr.de>; Mon,  9 Nov 2020 11:42:17 +0100 (CET)
Received: by mail-oi1-x237.google.com with SMTP id d206sf4418362oig.17
        for <lists+clang-built-linux@lfdr.de>; Mon, 09 Nov 2020 02:42:17 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1604918536; cv=pass;
        d=google.com; s=arc-20160816;
        b=v6R0x3+J1taNO7dF/sE1F42WM3nLJBdIkqseDGRxu9xGCawrMDLg78G6qdQTQzZN6d
         Dm4jRGPTQlW788Rbf2gJSBbWaAYhEGA9Z8JF9SfrD1iEF/x7dDQIZ1ohb3u99xLwVpob
         krcPNGxobgcPnHNMn64Agq1KiSMgdceTcscmX/HAzQW7u6+5opDVOOhA74H0q98tF18M
         /YrqQN4wdUWQL18lj1Q5gtlk3kkh8sprKiJRR0lTgPfxcUlKAJA2C32o90LAZt/aG9Z2
         NDXq74F9vdliu1IwT+6dySfwUorQQD3Ej9QowQk8D9+SGcFV75/gsYl5v1tQS9znFvSP
         E1pA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr:sender:dkim-signature;
        bh=96DVVfstwjcv7bZ/J+HwLoxJSG3xAPg0gWyrHeFvuqc=;
        b=qmKrAfHDjLCj3jpdIJIkuDRW3kgvFYnvwwWm/gXgAPApqD13dfOqs7vuFZgA9w1SEK
         NQVsioOk/P3HykTaFTYT6/P0sxJRoFj5Kfj8YJATR31wmE5l9Jgs+LnNcYdDbGGyLPFD
         14DHZgw/F95U4OWNIJJ1DKwGtZOvAHrhQ+gVeqHXvzdpAOZLMtChBH97dtEARXTlZJgK
         TKRzbhSvbXYEAaZuFO6HuYemMpXVJwOk2LO35q+zMNI0NJexTqd1n63ygYA4GKgd8pOT
         IzGoMHTPyVUg9M9NnEZoPlr9XL11fQmIxdtiiTw14YGGn8myUBc7blVvrr5XSUag+bw0
         12VQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.43 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=96DVVfstwjcv7bZ/J+HwLoxJSG3xAPg0gWyrHeFvuqc=;
        b=XIDi279JuAXR0XVvNxBVDcj8mULq3zHdZNm3QnJmvoSL/6/+i961cnF+3oqkJ15VJb
         /mk50YIhd/B+4pAlaH54QmpoJlnPV0frvkmNAR2gXkiFdT0ZKWIz1rBQylWp3WSrTDFu
         S0R2TtJm69Hly/LUiyse5gdvtUW3jBbnwgkd5VStX7Xb7CUVMBxjQ6Xb6gv0cRH62WAE
         fTGpjK8i2FaEtxnAAwzFpgZOwZO1GJZyuvf2Q6BdB+jSa/TQYMZZehms0+VbwQP/dLi9
         sTmSqhGneQXJlp2mj25KbUSOyqoklHLDezbHMITRV3df9tgn4U7FuHKs9jXzwxRz7icp
         Pk1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:references:mime-version:content-disposition
         :in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=96DVVfstwjcv7bZ/J+HwLoxJSG3xAPg0gWyrHeFvuqc=;
        b=mJyQt6hN4WTBjmAGyTfVYUxH3y6HU6lFbS6W44coLLmEXs1qRdpwmN20yTz9Mo5Ueu
         9JHjGVBPwWgbieXlSaf8Fsx6ysLKii5V6KrDR7U+Uzwp+dSCj7CbqF2F3MLcg8aj5ZqE
         W/gzcRJl3Et+iBl7G1UvduUne2qxEG6yIB3Cz/MPzFmQ2nMGyZnkyGQQMW14M6rVdh3D
         Hyy4NF0fMsTFhGKPRQzPXP0EHTjltCkKqS9DEfPTn/YpwkZwnRwmqPydjwmmntvMfxfQ
         MPa0WjMKk3sLvo+WPpDHR/J1AZJAjRQrnYNk4E2gQi4OUpkeRUSafCsMqOVPmEvk6ufJ
         SUDA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530xKApMwdXLO4tv2ffGAVVOZsrkxn4XP7Ou3sLjZFaAsq/0C/7x
	7F+IaWfHad+BFD/WWyz5laA=
X-Google-Smtp-Source: ABdhPJzaNksjdXUiSKBj+g5gZC12riux0nXtMYp+2e/u3ntzng4MGl5iwl1U+V/HYzrJSfDF/GafIw==
X-Received: by 2002:a05:6830:1411:: with SMTP id v17mr10391145otp.209.1604918536320;
        Mon, 09 Nov 2020 02:42:16 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:b784:: with SMTP id h126ls2023346oif.3.gmail; Mon, 09
 Nov 2020 02:42:16 -0800 (PST)
X-Received: by 2002:aca:750d:: with SMTP id q13mr8826532oic.77.1604918535831;
        Mon, 09 Nov 2020 02:42:15 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1604918535; cv=none;
        d=google.com; s=arc-20160816;
        b=FivC7XZ0mmh93OYytr7yC5eJwbrJhmUqKSUARz89YeOLOtBiYGRHzoLehmfQRGvFHN
         qZUmyOQL/rop/kw3FSKj/TDXVMR1AnEDUBBLiK+inm9T8eFG1IGyH+6Qc5POKv1s0PHh
         Is+8+SvR0SzJHH8qpt+BgAtG/8AhTWQSsu6DY90hFRtfq/TlUg4J2f29o2GLhxR80HQy
         Ib6+L0dlJ0rG6tC8xtRlLxJR65deV4bbkUfCqLaE33YD5cWkpBfgPvxfCINW7rHPvGk5
         v3ZmhrtB5/xq4GnJtdFSZxxQoQOvxoqNVb1rQUhm/7CnUDqKb15U6UZkiejP8c4Kqf4E
         zk2Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:ironport-sdr:ironport-sdr;
        bh=irBPZpFWIHfuYb43rjOsgw6ShcNZE70or87fOodZIf0=;
        b=HZJMiKeMjNnGSyfxK5Tr8WNnO/Ky4y0Ja5QMWN8xXUuRu6cI9kZ5LJHWHcg6iZ5qrS
         DxlKdpOVbPw+MRbAgC8Q4xpgpzED8FUmppW5/koSU6AimFMrluGCj/bJKphSdfJI1zsX
         +PiTbMBP0e+vnmURV4Yfd9er4Ce5Cmicf25jskdBF9pnqaNhoPReOqXz+tgASyVWqsbl
         sRjcQcFXesGnE2Y0F7wX9EIuh4kq43a+PpjeCW0/zKniaGptvZYYoJdWcGUUpOk45rSi
         ypc1NH/gk0oHGcm1EWu6WQWWLaxhVtPIUraw/RtMcYJJLKOKrAv4li9tFzKLYnExTJH1
         Y4XQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.43 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga05.intel.com (mga05.intel.com. [192.55.52.43])
        by gmr-mx.google.com with ESMTPS id p17si577216oot.0.2020.11.09.02.42.15
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 09 Nov 2020 02:42:15 -0800 (PST)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 192.55.52.43 as permitted sender) client-ip=192.55.52.43;
IronPort-SDR: QEo5//wFcij/EodLa9K6kgMDOhhPvNtCs7+EVDkuCeTtruTDakGfyNDLI4jmsf0loA8RffJ4gf
 sq/PAgXjkyUQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9799"; a="254488298"
X-IronPort-AV: E=Sophos;i="5.77,463,1596524400"; 
   d="gz'50?scan'50,208,50";a="254488298"
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
  by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 09 Nov 2020 02:42:14 -0800
IronPort-SDR: ExWurFF8Vy42AjzYUVirFPpjOV5L8/UzfCCkkZ3PQ2ELB0+S+CV5zupZuxIwZ2rR3gZa49U3sJ
 0HggGctep66A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,463,1596524400"; 
   d="gz'50?scan'50,208,50";a="359603107"
Received: from lkp-server01.sh.intel.com (HELO d0be80f1a028) ([10.239.97.150])
  by fmsmga002.fm.intel.com with ESMTP; 09 Nov 2020 02:42:10 -0800
Received: from kbuild by d0be80f1a028 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1kc4cj-000072-TZ; Mon, 09 Nov 2020 10:42:09 +0000
Date: Mon, 9 Nov 2020 18:42:04 +0800
From: kernel test robot <lkp@intel.com>
To: Nick Desaulniers <ndesaulniers@google.com>,
	Masahiro Yamada <masahiroy@kernel.org>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	"Gustavo A . R . Silva" <gustavoars@kernel.org>,
	Joe Perches <joe@perches.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Michal Marek <michal.lkml@markovi.net>,
	Nathan Chancellor <natechancellor@gmail.com>,
	linux-kbuild@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2] Revert "kbuild: Do not enable -Wimplicit-fallthrough
 for clang for now"
Message-ID: <202011091844.qatCN6pl-lkp@intel.com>
References: <20201107084525.3417278-1-ndesaulniers@google.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="UugvWAfsgieZRqgk"
Content-Disposition: inline
In-Reply-To: <20201107084525.3417278-1-ndesaulniers@google.com>
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


--UugvWAfsgieZRqgk
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

Hi Nick,

I love your patch! Perhaps something to improve:

[auto build test WARNING on kbuild/for-next]
[also build test WARNING on v5.10-rc3 next-20201109]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch]

url:    https://github.com/0day-ci/linux/commits/Nick-Desaulniers/Revert-kbuild-Do-not-enable-Wimplicit-fallthrough-for-clang-for-now/20201109-093904
base:   https://git.kernel.org/pub/scm/linux/kernel/git/masahiroy/linux-kbuild.git for-next
config: powerpc64-randconfig-r016-20201109 (attached as .config)
compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project 09ec07827b1128504457a93dee80b2ceee1af600)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install powerpc64 cross compiling tool for clang build
        # apt-get install binutils-powerpc64-linux-gnu
        # https://github.com/0day-ci/linux/commit/8b3537ff657d0124d47fbe215decbba65c4551ff
        git remote add linux-review https://github.com/0day-ci/linux
        git fetch --no-tags linux-review Nick-Desaulniers/Revert-kbuild-Do-not-enable-Wimplicit-fallthrough-for-clang-for-now/20201109-093904
        git checkout 8b3537ff657d0124d47fbe215decbba65c4551ff
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=powerpc64 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

   In file included from security/integrity/ima/ima_main.c:23:
   In file included from include/linux/mman.h:5:
   In file included from include/linux/mm.h:687:
   In file included from include/linux/huge_mm.h:8:
   In file included from include/linux/fs.h:33:
   In file included from include/linux/percpu-rwsem.h:7:
   In file included from include/linux/rcuwait.h:6:
   In file included from include/linux/sched/signal.h:6:
   include/linux/signal.h:241:2: warning: unannotated fall-through between switch labels [-Wimplicit-fallthrough]
           case 1: ;
           ^
   include/linux/signal.h:241:2: note: insert '__attribute__((fallthrough));' to silence this warning
           case 1: ;
           ^
           __attribute__((fallthrough)); 
   include/linux/signal.h:241:2: note: insert 'break;' to avoid fall-through
           case 1: ;
           ^
           break; 
   include/linux/signal.h:253:2: warning: unannotated fall-through between switch labels [-Wimplicit-fallthrough]
           case 1: ;
           ^
   include/linux/signal.h:253:2: note: insert '__attribute__((fallthrough));' to silence this warning
           case 1: ;
           ^
           __attribute__((fallthrough)); 
   include/linux/signal.h:253:2: note: insert 'break;' to avoid fall-through
           case 1: ;
           ^
           break; 
>> security/integrity/ima/ima_main.c:746:2: warning: unannotated fall-through between switch labels [-Wimplicit-fallthrough]
           default:
           ^
   security/integrity/ima/ima_main.c:746:2: note: insert 'break;' to avoid fall-through
           default:
           ^
           break; 
   3 warnings generated.
--
   In file included from security/integrity/ima/ima_policy.c:13:
   In file included from include/linux/fs.h:33:
   In file included from include/linux/percpu-rwsem.h:7:
   In file included from include/linux/rcuwait.h:6:
   In file included from include/linux/sched/signal.h:6:
   include/linux/signal.h:241:2: warning: unannotated fall-through between switch labels [-Wimplicit-fallthrough]
           case 1: ;
           ^
   include/linux/signal.h:241:2: note: insert '__attribute__((fallthrough));' to silence this warning
           case 1: ;
           ^
           __attribute__((fallthrough)); 
   include/linux/signal.h:241:2: note: insert 'break;' to avoid fall-through
           case 1: ;
           ^
           break; 
   include/linux/signal.h:253:2: warning: unannotated fall-through between switch labels [-Wimplicit-fallthrough]
           case 1: ;
           ^
   include/linux/signal.h:253:2: note: insert '__attribute__((fallthrough));' to silence this warning
           case 1: ;
           ^
           __attribute__((fallthrough)); 
   include/linux/signal.h:253:2: note: insert 'break;' to avoid fall-through
           case 1: ;
           ^
           break; 
>> security/integrity/ima/ima_policy.c:569:3: warning: unannotated fall-through between switch labels [-Wimplicit-fallthrough]
                   default:
                   ^
   security/integrity/ima/ima_policy.c:569:3: note: insert 'break;' to avoid fall-through
                   default:
                   ^
                   break; 
   security/integrity/ima/ima_policy.c:805:2: warning: unannotated fall-through between switch labels [-Wimplicit-fallthrough]
           default:
           ^
   security/integrity/ima/ima_policy.c:805:2: note: insert 'break;' to avoid fall-through
           default:
           ^
           break; 
   4 warnings generated.
--
   In file included from drivers/mmc/host/sdhci-of-arasan.c:22:
   In file included from include/linux/phy/phy.h:17:
   In file included from include/linux/regulator/consumer.h:35:
   In file included from include/linux/suspend.h:5:
   In file included from include/linux/swap.h:9:
   In file included from include/linux/memcontrol.h:13:
   In file included from include/linux/cgroup.h:17:
   In file included from include/linux/fs.h:33:
   In file included from include/linux/percpu-rwsem.h:7:
   In file included from include/linux/rcuwait.h:6:
   In file included from include/linux/sched/signal.h:6:
   include/linux/signal.h:241:2: warning: unannotated fall-through between switch labels [-Wimplicit-fallthrough]
           case 1: ;
           ^
   include/linux/signal.h:241:2: note: insert '__attribute__((fallthrough));' to silence this warning
           case 1: ;
           ^
           __attribute__((fallthrough)); 
   include/linux/signal.h:241:2: note: insert 'break;' to avoid fall-through
           case 1: ;
           ^
           break; 
   include/linux/signal.h:253:2: warning: unannotated fall-through between switch labels [-Wimplicit-fallthrough]
           case 1: ;
           ^
   include/linux/signal.h:253:2: note: insert '__attribute__((fallthrough));' to silence this warning
           case 1: ;
           ^
           __attribute__((fallthrough)); 
   include/linux/signal.h:253:2: note: insert 'break;' to avoid fall-through
           case 1: ;
           ^
           break; 
>> drivers/mmc/host/sdhci-of-arasan.c:630:2: warning: unannotated fall-through between switch labels [-Wimplicit-fallthrough]
           default:
           ^
   drivers/mmc/host/sdhci-of-arasan.c:630:2: note: insert 'break;' to avoid fall-through
           default:
           ^
           break; 
   drivers/mmc/host/sdhci-of-arasan.c:698:2: warning: unannotated fall-through between switch labels [-Wimplicit-fallthrough]
           default:
           ^
   drivers/mmc/host/sdhci-of-arasan.c:698:2: note: insert 'break;' to avoid fall-through
           default:
           ^
           break; 
   drivers/mmc/host/sdhci-of-arasan.c:763:2: warning: unannotated fall-through between switch labels [-Wimplicit-fallthrough]
           default:
           ^
   drivers/mmc/host/sdhci-of-arasan.c:763:2: note: insert 'break;' to avoid fall-through
           default:
           ^
           break; 
   drivers/mmc/host/sdhci-of-arasan.c:834:2: warning: unannotated fall-through between switch labels [-Wimplicit-fallthrough]
           default:
           ^
   drivers/mmc/host/sdhci-of-arasan.c:834:2: note: insert 'break;' to avoid fall-through
           default:
           ^
           break; 
   6 warnings generated.
--
>> lib/siphash.c:72:2: warning: unannotated fall-through between switch labels [-Wimplicit-fallthrough]
           case 6: b |= ((u64)end[5]) << 40; /* fall through */
           ^
   lib/siphash.c:72:2: note: insert '__attribute__((fallthrough));' to silence this warning
           case 6: b |= ((u64)end[5]) << 40; /* fall through */
           ^
           __attribute__((fallthrough)); 
   lib/siphash.c:72:2: note: insert 'break;' to avoid fall-through
           case 6: b |= ((u64)end[5]) << 40; /* fall through */
           ^
           break; 
   lib/siphash.c:73:2: warning: unannotated fall-through between switch labels [-Wimplicit-fallthrough]
           case 5: b |= ((u64)end[4]) << 32; /* fall through */
           ^
   lib/siphash.c:73:2: note: insert '__attribute__((fallthrough));' to silence this warning
           case 5: b |= ((u64)end[4]) << 32; /* fall through */
           ^
           __attribute__((fallthrough)); 
   lib/siphash.c:73:2: note: insert 'break;' to avoid fall-through
           case 5: b |= ((u64)end[4]) << 32; /* fall through */
           ^
           break; 
   lib/siphash.c:74:2: warning: unannotated fall-through between switch labels [-Wimplicit-fallthrough]
           case 4: b |= le32_to_cpup(data); break;
           ^
   lib/siphash.c:74:2: note: insert '__attribute__((fallthrough));' to silence this warning
           case 4: b |= le32_to_cpup(data); break;
           ^
           __attribute__((fallthrough)); 
   lib/siphash.c:74:2: note: insert 'break;' to avoid fall-through
           case 4: b |= le32_to_cpup(data); break;
           ^
           break; 
   lib/siphash.c:76:2: warning: unannotated fall-through between switch labels [-Wimplicit-fallthrough]
           case 2: b |= le16_to_cpup(data); break;
           ^
   lib/siphash.c:76:2: note: insert '__attribute__((fallthrough));' to silence this warning
           case 2: b |= le16_to_cpup(data); break;
           ^
           __attribute__((fallthrough)); 
   lib/siphash.c:76:2: note: insert 'break;' to avoid fall-through
           case 2: b |= le16_to_cpup(data); break;
           ^
           break; 
   lib/siphash.c:272:2: warning: unannotated fall-through between switch labels [-Wimplicit-fallthrough]
           case 6: b |= ((u64)end[5]) << 40; /* fall through */
           ^
   lib/siphash.c:272:2: note: insert '__attribute__((fallthrough));' to silence this warning
           case 6: b |= ((u64)end[5]) << 40; /* fall through */
           ^
           __attribute__((fallthrough)); 
   lib/siphash.c:272:2: note: insert 'break;' to avoid fall-through
           case 6: b |= ((u64)end[5]) << 40; /* fall through */
           ^
           break; 
   lib/siphash.c:273:2: warning: unannotated fall-through between switch labels [-Wimplicit-fallthrough]
           case 5: b |= ((u64)end[4]) << 32; /* fall through */
           ^
   lib/siphash.c:273:2: note: insert '__attribute__((fallthrough));' to silence this warning
           case 5: b |= ((u64)end[4]) << 32; /* fall through */
           ^
           __attribute__((fallthrough)); 
   lib/siphash.c:273:2: note: insert 'break;' to avoid fall-through
           case 5: b |= ((u64)end[4]) << 32; /* fall through */
           ^
           break; 
   lib/siphash.c:274:2: warning: unannotated fall-through between switch labels [-Wimplicit-fallthrough]
           case 4: b |= le32_to_cpup(data); break;
           ^
   lib/siphash.c:274:2: note: insert '__attribute__((fallthrough));' to silence this warning
           case 4: b |= le32_to_cpup(data); break;
           ^
           __attribute__((fallthrough)); 
   lib/siphash.c:274:2: note: insert 'break;' to avoid fall-through
           case 4: b |= le32_to_cpup(data); break;
           ^
           break; 
   lib/siphash.c:276:2: warning: unannotated fall-through between switch labels [-Wimplicit-fallthrough]
           case 2: b |= le16_to_cpup(data); break;
           ^
   lib/siphash.c:276:2: note: insert '__attribute__((fallthrough));' to silence this warning
           case 2: b |= le16_to_cpup(data); break;
           ^
           __attribute__((fallthrough)); 
   lib/siphash.c:276:2: note: insert 'break;' to avoid fall-through
           case 2: b |= le16_to_cpup(data); break;
           ^
           break; 
   8 warnings generated.

vim +746 security/integrity/ima/ima_main.c

5a9196d715607f7 Mimi Zohar 2014-07-22  699  
16c267aac86b463 Mimi Zohar 2018-07-13  700  /**
16c267aac86b463 Mimi Zohar 2018-07-13  701   * ima_load_data - appraise decision based on policy
16c267aac86b463 Mimi Zohar 2018-07-13  702   * @id: kernel load data caller identifier
b64fcae74b6d694 Kees Cook  2020-10-02  703   * @contents: whether the full contents will be available in a later
b64fcae74b6d694 Kees Cook  2020-10-02  704   *	      call to ima_post_load_data().
16c267aac86b463 Mimi Zohar 2018-07-13  705   *
16c267aac86b463 Mimi Zohar 2018-07-13  706   * Callers of this LSM hook can not measure, appraise, or audit the
16c267aac86b463 Mimi Zohar 2018-07-13  707   * data provided by userspace.  Enforce policy rules requring a file
16c267aac86b463 Mimi Zohar 2018-07-13  708   * signature (eg. kexec'ed kernel image).
16c267aac86b463 Mimi Zohar 2018-07-13  709   *
16c267aac86b463 Mimi Zohar 2018-07-13  710   * For permission return 0, otherwise return -EACCES.
16c267aac86b463 Mimi Zohar 2018-07-13  711   */
b64fcae74b6d694 Kees Cook  2020-10-02  712  int ima_load_data(enum kernel_load_data_id id, bool contents)
16c267aac86b463 Mimi Zohar 2018-07-13  713  {
b5ca117365d960f Nayna Jain 2018-10-09  714  	bool ima_enforce, sig_enforce;
c77b8cdf745d91e Mimi Zohar 2018-07-13  715  
b5ca117365d960f Nayna Jain 2018-10-09  716  	ima_enforce =
b5ca117365d960f Nayna Jain 2018-10-09  717  		(ima_appraise & IMA_APPRAISE_ENFORCE) == IMA_APPRAISE_ENFORCE;
16c267aac86b463 Mimi Zohar 2018-07-13  718  
16c267aac86b463 Mimi Zohar 2018-07-13  719  	switch (id) {
16c267aac86b463 Mimi Zohar 2018-07-13  720  	case LOADING_KEXEC_IMAGE:
99d5cadfde2b1ac Jiri Bohac 2019-08-19  721  		if (IS_ENABLED(CONFIG_KEXEC_SIG)
b5ca117365d960f Nayna Jain 2018-10-09  722  		    && arch_ima_get_secureboot()) {
b5ca117365d960f Nayna Jain 2018-10-09  723  			pr_err("impossible to appraise a kernel image without a file descriptor; try using kexec_file_load syscall.\n");
b5ca117365d960f Nayna Jain 2018-10-09  724  			return -EACCES;
b5ca117365d960f Nayna Jain 2018-10-09  725  		}
b5ca117365d960f Nayna Jain 2018-10-09  726  
b5ca117365d960f Nayna Jain 2018-10-09  727  		if (ima_enforce && (ima_appraise & IMA_APPRAISE_KEXEC)) {
16c267aac86b463 Mimi Zohar 2018-07-13  728  			pr_err("impossible to appraise a kernel image without a file descriptor; try using kexec_file_load syscall.\n");
16c267aac86b463 Mimi Zohar 2018-07-13  729  			return -EACCES;	/* INTEGRITY_UNKNOWN */
16c267aac86b463 Mimi Zohar 2018-07-13  730  		}
fed2512a7ccc8fc Mimi Zohar 2018-07-13  731  		break;
fed2512a7ccc8fc Mimi Zohar 2018-07-13  732  	case LOADING_FIRMWARE:
4f2d99b06b73800 Kees Cook  2020-10-02  733  		if (ima_enforce && (ima_appraise & IMA_APPRAISE_FIRMWARE) && !contents) {
fed2512a7ccc8fc Mimi Zohar 2018-07-13  734  			pr_err("Prevent firmware sysfs fallback loading.\n");
fed2512a7ccc8fc Mimi Zohar 2018-07-13  735  			return -EACCES;	/* INTEGRITY_UNKNOWN */
fed2512a7ccc8fc Mimi Zohar 2018-07-13  736  		}
c77b8cdf745d91e Mimi Zohar 2018-07-13  737  		break;
c77b8cdf745d91e Mimi Zohar 2018-07-13  738  	case LOADING_MODULE:
c77b8cdf745d91e Mimi Zohar 2018-07-13  739  		sig_enforce = is_module_sig_enforced();
c77b8cdf745d91e Mimi Zohar 2018-07-13  740  
b5ca117365d960f Nayna Jain 2018-10-09  741  		if (ima_enforce && (!sig_enforce
b5ca117365d960f Nayna Jain 2018-10-09  742  				    && (ima_appraise & IMA_APPRAISE_MODULES))) {
c77b8cdf745d91e Mimi Zohar 2018-07-13  743  			pr_err("impossible to appraise a module without a file descriptor. sig_enforce kernel parameter might help\n");
c77b8cdf745d91e Mimi Zohar 2018-07-13  744  			return -EACCES;	/* INTEGRITY_UNKNOWN */
c77b8cdf745d91e Mimi Zohar 2018-07-13  745  		}
16c267aac86b463 Mimi Zohar 2018-07-13 @746  	default:
16c267aac86b463 Mimi Zohar 2018-07-13  747  		break;
16c267aac86b463 Mimi Zohar 2018-07-13  748  	}
16c267aac86b463 Mimi Zohar 2018-07-13  749  	return 0;
16c267aac86b463 Mimi Zohar 2018-07-13  750  }
16c267aac86b463 Mimi Zohar 2018-07-13  751  

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202011091844.qatCN6pl-lkp%40intel.com.

--UugvWAfsgieZRqgk
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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

--UugvWAfsgieZRqgk--
