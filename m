Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBF6NQWEQMGQEGVRS5YY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x93e.google.com (mail-ua1-x93e.google.com [IPv6:2607:f8b0:4864:20::93e])
	by mail.lfdr.de (Postfix) with ESMTPS id CF7343F3C70
	for <lists+clang-built-linux@lfdr.de>; Sat, 21 Aug 2021 22:48:24 +0200 (CEST)
Received: by mail-ua1-x93e.google.com with SMTP id i9-20020ab029c90000b02902aa59690c5asf3502110uaq.3
        for <lists+clang-built-linux@lfdr.de>; Sat, 21 Aug 2021 13:48:24 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629578903; cv=pass;
        d=google.com; s=arc-20160816;
        b=y0W5Z3CvvjUtpeOJQ1ObbymqQBIH+9aa919LmeNcNDPxtW4NoODfgyfReK7r8LToxn
         1UC+sNjq2AR5fJtZZuHV+2+VciuIkV9vFU1UNU0+vTLGRKwDfb9LB+CR07xJyW9iOvOD
         OYW55isXlFa7L12/tDOXG7x3lsxYp6EGurescBFD2DaWaDDPbLqFMAkh/z0BzrHfrqvm
         GQ6ZvtI5SnWs/Ni0yc7/ERMed5FqpTolXQer/wkB+7QZ0GfEyWEuBrNr47IJr/9TexWr
         M7zlhwfiJWbzddZLShz6jXp0AkycmgNhub4XO2BK/SaMRZV5bXZrya2P32JEZ7fCqzbp
         wNfw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=ID4YnC97BrsCxdGSC1HPDaaS0FoFGIe6vYsHUCdL890=;
        b=bob4+qFQQPDNL7/By9chHvo/wQcbV31xmehv1EJtGJy/r6GKEhTSExmX2jVSpZDJK/
         YaQaFVZ2YcBJqP8dXrdWeslA8jhYk9PSzlTa5xqiv4CkZa5lG/oMOBX4b7BrP+PqZ3Fo
         5o4duCVRLW9Tui9twA/YUU4/M5L+Yq3nxwWRxXo0k2y+L/AVl3Uhl/6tdYj2jSxXtV5h
         UO7UaEh9d08TVZrGNTUv61WJwwZwyiORSuzhmKIAadHbdjRT9H2LNBVE8Uw7lGWCm61i
         pIbH4W/3ktxdbtAvR9MMI8Dy8Uwi2qbKW3TorVp8Zu9cACZ+a8T+swJjI4MhPF1Fh5Tm
         v+1Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.20 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=ID4YnC97BrsCxdGSC1HPDaaS0FoFGIe6vYsHUCdL890=;
        b=T2r+ywxMzTOzy2uFED0pgn9KVUWhuMdmHiacQW4BmA8sif+XpitW1BnhOO7ruL35We
         RovNbQqN7V1p9dZ5qK1e3oICemj4EtSwxYwV3x/jzeVnIsmZQ17qECWFXibBRsdYBap7
         FIbJhtTo69FIbO2T2et+ntf1yOSI/PzW1hIO7/MeMZDIHeBEgvQMF+VtHxt1tunMIwro
         /Bd2WbWh3GY1EClWtEMFweKNppRfp5DdhcxaP1GLS0MyuzSI49P9ZJjzH/do7HYruUQg
         2ArkLB7rGpEm7fFhJCgV2WXJT+wCa+T09SvtFkTYoHWT6HmhOpTF0HpmVKt2zpvQOZMf
         gG/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=ID4YnC97BrsCxdGSC1HPDaaS0FoFGIe6vYsHUCdL890=;
        b=cQ21Z1tiAdEbk7wypSO/WIilqBedwPZgpSdaImZ5LrHp3H/YC1dej/q8dyXjmunru0
         B1jt5zLpznjQRAM5jgH48aYBVi3qBnH50QD+rkeb8p6V/p6eCTTkEUYZPPmQqJB+Yxjb
         h+858V6tYozQID0eHGxQkAZhS8DlU7+Bj9XlsoFK2ShNWALjjGsVkVitdN9Pa4KoLbpI
         BMEUZK95EC9eB2mTuclSeSlWQsjhWLuPBiHUul0Fm91VoxZ3jTjLK/UFKjbHo3aSkf7/
         OfbZGiPXLSHdomGuWCto8e3+XrNiDN+KAF961SxVjcO0sJN+0o/cj73qofUiWu8PitlI
         THlw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531GtOLfbrFz3QUilqJKdQyrHKisXM7CGAqgFzd1XnxX2XbbJ4zc
	OC94UIkrqxSiiATkFPnKWrg=
X-Google-Smtp-Source: ABdhPJyXarjn0RnEpCEDUsKi9aKauuOXESrIL81jbrGsFFPrWtZ1TkaS2yHLcvkFywa5ZO3e8B8EDA==
X-Received: by 2002:ab0:13b2:: with SMTP id m47mr13574046uae.37.1629578903601;
        Sat, 21 Aug 2021 13:48:23 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:2205:: with SMTP id i5ls2212691vsi.4.gmail; Sat, 21 Aug
 2021 13:48:23 -0700 (PDT)
X-Received: by 2002:a67:1c05:: with SMTP id c5mr20779547vsc.25.1629578902830;
        Sat, 21 Aug 2021 13:48:22 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629578902; cv=none;
        d=google.com; s=arc-20160816;
        b=isJIsLXo8Qlzvp5TuC/u6N410rbXUZvYepc36cshmSpbvktd0EFMdsAl8u6CoD51jP
         cWayQafsBcEjB/0jZ7vMtgcwkTzaNtaOKmqRN54qwdhWWts5fndUEFKwXbmpRyMGWO2b
         zG+J7Ybl1Yabu2nuzjmRnSyrq3zzQa93g7JFKLwsY+pOHvmFJni3gEFAC1xccwJuVpTW
         dARhwB6zCsXBIDKDMyx4XV1kK7EomXccdVCHeIdw+XbXrYfiJK0p4Qcl7IdYf6p+2TIq
         rvd8OYkEY+13Hxk6xb9NE72Xq5kwFtR0Sx+tV3nI6QnQMFxWEaYwYp5ClAqa3sooKPB9
         AvUg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=SN8qPNjBl0hG4JrCHowK4lryQfHaUJkzLTMyfZImgGY=;
        b=wzRMCKm5VB4C2DiJhkdXxJAlgrknFL6on3yImD1syLxe1di1qkaaMeV0yqubRI1lvB
         qXcqDox6L0xOkmd0KYybflXiFXRnw40M+kzpXFlQeUTCn9Gi7qYWff1Rp6UZpgrGBl1t
         jXwANORDvSjvksWs9H3cXwg+0NWNoeiwbcP8YKCcTeNIutYQJ1Z16A/Sv2POkluPoAPe
         ZmyK0/oibG3qRmZCPNRXfM4Bd80dfQulSDGFh7XkHlSs2+ZSoHOJT10wk62nT3zDXFZ6
         W94L5dIZaEsHT0dYRIADb3xtyAyp97UEIy1BxDK07zxSGST2lh37GNfhj/TS9BWxIBPe
         jK0A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.20 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga02.intel.com (mga02.intel.com. [134.134.136.20])
        by gmr-mx.google.com with ESMTPS id z25si684853uae.0.2021.08.21.13.48.21
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 21 Aug 2021 13:48:22 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 134.134.136.20 as permitted sender) client-ip=134.134.136.20;
X-IronPort-AV: E=McAfee;i="6200,9189,10083"; a="204122474"
X-IronPort-AV: E=Sophos;i="5.84,340,1620716400"; 
   d="gz'50?scan'50,208,50";a="204122474"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
  by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 21 Aug 2021 13:48:20 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,340,1620716400"; 
   d="gz'50?scan'50,208,50";a="683493978"
Received: from lkp-server01.sh.intel.com (HELO d053b881505b) ([10.239.97.150])
  by fmsmga005.fm.intel.com with ESMTP; 21 Aug 2021 13:48:17 -0700
Received: from kbuild by d053b881505b with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1mHXub-000WD1-51; Sat, 21 Aug 2021 20:48:17 +0000
Date: Sun, 22 Aug 2021 04:48:10 +0800
From: kernel test robot <lkp@intel.com>
To: Huacai Chen <chenhuacai@loongson.cn>
Cc: clang-built-linux@googlegroups.com, kbuild-all@lists.01.org
Subject: Re: [PATCH V3 1/9] PCI/VGA: Move vgaarb to drivers/pci
Message-ID: <202108220448.CPCt2NYN-lkp@intel.com>
References: <20210820100832.663931-2-chenhuacai@loongson.cn>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="PNTmBPCT7hxwcZjr"
Content-Disposition: inline
In-Reply-To: <20210820100832.663931-2-chenhuacai@loongson.cn>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lkp@intel.com designates 134.134.136.20 as permitted
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


--PNTmBPCT7hxwcZjr
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi Huacai,

I love your patch! Perhaps something to improve:

[auto build test WARNING on pci/next]
[also build test WARNING on linus/master v5.14-rc6 next-20210820]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch]

url:    https://github.com/0day-ci/linux/commits/Huacai-Chen/PCI-VGA-Rework=
-default-VGA-device-selection/20210820-181519
base:   https://git.kernel.org/pub/scm/linux/kernel/git/helgaas/pci.git nex=
t
config: arm-randconfig-c002-20210820 (attached as .config)
compiler: clang version 14.0.0 (https://github.com/llvm/llvm-project d9c561=
3e856cf2addfbf892fc4c1ce9ef9feceaa)
reproduce (this is a W=3D1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/=
make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install arm cross compiling tool for clang build
        # apt-get install binutils-arm-linux-gnueabi
        # https://github.com/0day-ci/linux/commit/5a499ac0123cbe13fba8e3216=
dc81cf09f59b101
        git remote add linux-review https://github.com/0day-ci/linux
        git fetch --no-tags linux-review Huacai-Chen/PCI-VGA-Rework-default=
-VGA-device-selection/20210820-181519
        git checkout 5a499ac0123cbe13fba8e3216dc81cf09f59b101
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=3D$HOME/0day COMPILER=3Dclang make.cross ARCH=
=3Darm clang-analyzer=20

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>


clang-analyzer warnings: (new ones prefixed by >>)
                   ^~~~~~~~~~~~~~~~~~~~~~~~~~
   drivers/block/pktcdvd.c:2214:6: note: Assuming 'flush' is 0
           if (flush && pkt_flush_cache(pd))
               ^~~~~
   drivers/block/pktcdvd.c:2214:12: note: Left side of '&&' is false
           if (flush && pkt_flush_cache(pd))
                     ^
   drivers/block/pktcdvd.c:2219:2: note: Calling 'pkt_set_speed'
           pkt_set_speed(pd, MAX_SPEED, MAX_SPEED);
           ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   drivers/block/pktcdvd.c:801:8: note: Calling 'pkt_generic_packet'
           ret =3D pkt_generic_packet(pd, &cgc);
                 ^~~~~~~~~~~~~~~~~~~~~~~~~~~~
   drivers/block/pktcdvd.c:706:27: note: Assuming field 'data_direction' is=
 not equal to CGC_DATA_WRITE
           rq =3D blk_get_request(q, (cgc->data_direction =3D=3D CGC_DATA_W=
RITE) ?
                                    ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   drivers/block/pktcdvd.c:706:26: note: '?' condition is false
           rq =3D blk_get_request(q, (cgc->data_direction =3D=3D CGC_DATA_W=
RITE) ?
                                   ^
   drivers/block/pktcdvd.c:708:2: note: Taking true branch
           if (IS_ERR(rq))
           ^
   drivers/block/pktcdvd.c:709:3: note: Returning without writing to 'cgc->=
sshdr', which participates in a condition later
                   return PTR_ERR(rq);
                   ^
   drivers/block/pktcdvd.c:801:8: note: Returning from 'pkt_generic_packet'
           ret =3D pkt_generic_packet(pd, &cgc);
                 ^~~~~~~~~~~~~~~~~~~~~~~~~~~~
   drivers/block/pktcdvd.c:802:6: note: 'ret' is not equal to 0
           if (ret)
               ^~~
   drivers/block/pktcdvd.c:802:2: note: Taking true branch
           if (ret)
           ^
   drivers/block/pktcdvd.c:803:3: note: Calling 'pkt_dump_sense'
                   pkt_dump_sense(pd, &cgc);
                   ^~~~~~~~~~~~~~~~~~~~~~~~
   drivers/block/pktcdvd.c:753:6: note: 'sshdr' is non-null
           if (sshdr)
               ^~~~~
   drivers/block/pktcdvd.c:753:2: note: Taking true branch
           if (sshdr)
           ^
   drivers/block/pktcdvd.c:757:4: note: 1st function call argument is an un=
initialized value
                           sense_key_string(sshdr->sense_key));
                           ^
   drivers/block/pktcdvd.c:76:33: note: expanded from macro 'pkt_err'
           pr_err("%s: " fmt, pd->name, ##__VA_ARGS__)
                                          ^~~~~~~~~~~
   include/linux/printk.h:390:33: note: expanded from macro 'pr_err'
           printk(KERN_ERR pr_fmt(fmt), ##__VA_ARGS__)
                                          ^~~~~~~~~~~
   drivers/block/pktcdvd.c:2723:2: warning: Call to function 'strcpy' is in=
secure as it does not provide bounding of the memory buffer. Replace unboun=
ded copy functions with analogous functions that support length arguments s=
uch as 'strlcpy'. CWE-119 [clang-analyzer-security.insecureAPI.strcpy]
           strcpy(disk->disk_name, pd->name);
           ^~~~~~
   drivers/block/pktcdvd.c:2723:2: note: Call to function 'strcpy' is insec=
ure as it does not provide bounding of the memory buffer. Replace unbounded=
 copy functions with analogous functions that support length arguments such=
 as 'strlcpy'. CWE-119
           strcpy(disk->disk_name, pd->name);
           ^~~~~~
   Suppressed 3 warnings (3 in non-user code).
   Use -header-filter=3D.* to display errors from all non-system headers. U=
se -system-headers to display errors from system headers as well.
   2 warnings generated.
   Suppressed 2 warnings (2 in non-user code).
   Use -header-filter=3D.* to display errors from all non-system headers. U=
se -system-headers to display errors from system headers as well.
   2 warnings generated.
   Suppressed 2 warnings (2 in non-user code).
   Use -header-filter=3D.* to display errors from all non-system headers. U=
se -system-headers to display errors from system headers as well.
   2 warnings generated.
   Suppressed 2 warnings (2 in non-user code).
   Use -header-filter=3D.* to display errors from all non-system headers. U=
se -system-headers to display errors from system headers as well.
   2 warnings generated.
   Suppressed 2 warnings (2 in non-user code).
   Use -header-filter=3D.* to display errors from all non-system headers. U=
se -system-headers to display errors from system headers as well.
   2 warnings generated.
   Suppressed 2 warnings (2 in non-user code).
   Use -header-filter=3D.* to display errors from all non-system headers. U=
se -system-headers to display errors from system headers as well.
   2 warnings generated.
   Suppressed 2 warnings (2 in non-user code).
   Use -header-filter=3D.* to display errors from all non-system headers. U=
se -system-headers to display errors from system headers as well.
   2 warnings generated.
   Suppressed 2 warnings (2 in non-user code).
   Use -header-filter=3D.* to display errors from all non-system headers. U=
se -system-headers to display errors from system headers as well.
   2 warnings generated.
   Suppressed 2 warnings (2 in non-user code).
   Use -header-filter=3D.* to display errors from all non-system headers. U=
se -system-headers to display errors from system headers as well.
   3 warnings generated.
   Suppressed 3 warnings (3 in non-user code).
   Use -header-filter=3D.* to display errors from all non-system headers. U=
se -system-headers to display errors from system headers as well.
   2 warnings generated.
   Suppressed 2 warnings (2 in non-user code).
   Use -header-filter=3D.* to display errors from all non-system headers. U=
se -system-headers to display errors from system headers as well.
   3 warnings generated.
   drivers/pci/ecam.c:62:2: warning: Value stored to 'bsz' is never read [c=
lang-analyzer-deadcode.DeadStores]
           bsz =3D 1 << bus_shift;
           ^     ~~~~~~~~~~~~~~
   drivers/pci/ecam.c:62:2: note: Value stored to 'bsz' is never read
           bsz =3D 1 << bus_shift;
           ^     ~~~~~~~~~~~~~~
   Suppressed 2 warnings (2 in non-user code).
   Use -header-filter=3D.* to display errors from all non-system headers. U=
se -system-headers to display errors from system headers as well.
   4 warnings generated.
>> drivers/pci/vgaarb.c:245:17: warning: Value stored to 'dev' during its i=
nitialization is never read [clang-analyzer-deadcode.DeadStores]
           struct device *dev =3D &vgadev->pdev->dev;
                          ^~~   ~~~~~~~~~~~~~~~~~~
   drivers/pci/vgaarb.c:245:17: note: Value stored to 'dev' during its init=
ialization is never read
           struct device *dev =3D &vgadev->pdev->dev;
                          ^~~   ~~~~~~~~~~~~~~~~~~
   drivers/pci/vgaarb.c:394:17: warning: Value stored to 'dev' during its i=
nitialization is never read [clang-analyzer-deadcode.DeadStores]
           struct device *dev =3D &vgadev->pdev->dev;
                          ^~~   ~~~~~~~~~~~~~~~~~~
   drivers/pci/vgaarb.c:394:17: note: Value stored to 'dev' during its init=
ialization is never read
           struct device *dev =3D &vgadev->pdev->dev;
                          ^~~   ~~~~~~~~~~~~~~~~~~
   Suppressed 2 warnings (2 in non-user code).
   Use -header-filter=3D.* to display errors from all non-system headers. U=
se -system-headers to display errors from system headers as well.
   2 warnings generated.
   Suppressed 2 warnings (2 in non-user code).
   Use -header-filter=3D.* to display errors from all non-system headers. U=
se -system-headers to display errors from system headers as well.
   4 warnings generated.
   fs/fat/fatent.c:482:2: warning: Value stored to 'err' is never read [cla=
ng-analyzer-deadcode.DeadStores]
           err =3D nr_bhs =3D idx_clus =3D 0;
           ^     ~~~~~~~~~~~~~~~~~~~~~
   fs/fat/fatent.c:482:2: note: Value stored to 'err' is never read
           err =3D nr_bhs =3D idx_clus =3D 0;
           ^     ~~~~~~~~~~~~~~~~~~~~~
   fs/fat/fatent.c:684:18: warning: The left operand of '>=3D' is a garbage=
 value [clang-analyzer-core.UndefinedBinaryOperatorResult]
           if (ra->ra_next >=3D ra->ra_limit)
                           ^
   fs/fat/fatent.c:777:14: note: Assuming '__UNIQUE_ID___x254' is <=3D '__U=
NIQUE_ID___y255'
           ent_start =3D max_t(u64, range->start>>sbi->cluster_bits, FAT_ST=
ART_ENT);
                       ^
   include/linux/minmax.h:112:27: note: expanded from macro 'max_t'
   #define max_t(type, x, y)       __careful_cmp((type)(x), (type)(y), >)
                                   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/minmax.h:38:3: note: expanded from macro '__careful_cmp'
                   __cmp_once(x, y, __UNIQUE_ID(__x), __UNIQUE_ID(__y), op)=
)
                   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/minmax.h:33:3: note: expanded from macro '__cmp_once'
                   __cmp(unique_x, unique_y, op); })
                   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/minmax.h:28:26: note: expanded from macro '__cmp'
   #define __cmp(x, y, op) ((x) op (y) ? (x) : (y))
                            ^~~~~~~~~~
   fs/fat/fatent.c:777:14: note: '?' condition is false
           ent_start =3D max_t(u64, range->start>>sbi->cluster_bits, FAT_ST=
ART_ENT);
                       ^
   include/linux/minmax.h:112:27: note: expanded from macro 'max_t'
   #define max_t(type, x, y)       __careful_cmp((type)(x), (type)(y), >)
                                   ^
   include/linux/minmax.h:38:3: note: expanded from macro '__careful_cmp'
                   __cmp_once(x, y, __UNIQUE_ID(__x), __UNIQUE_ID(__y), op)=
)
                   ^
   include/linux/minmax.h:33:3: note: expanded from macro '__cmp_once'
                   __cmp(unique_x, unique_y, op); })
                   ^
   include/linux/minmax.h:28:26: note: expanded from macro '__cmp'
   #define __cmp(x, y, op) ((x) op (y) ? (x) : (y))
                            ^
   fs/fat/fatent.c:781:6: note: Assuming 'ent_start' is < field 'max_cluste=
r'
           if (ent_start >=3D sbi->max_cluster || range->len < sbi->cluster=
_size)
               ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   fs/fat/fatent.c:781:6: note: Left side of '||' is false
   fs/fat/fatent.c:781:39: note: Assuming field 'len' is >=3D field 'cluste=
r_size'
           if (ent_start >=3D sbi->max_cluster || range->len < sbi->cluster=
_size)
                                                ^~~~~~~~~~~~~~~~~~~~~~~~~~~=
~~~
   fs/fat/fatent.c:781:2: note: Taking false branch
           if (ent_start >=3D sbi->max_cluster || range->len < sbi->cluster=
_size)
           ^
   fs/fat/fatent.c:783:6: note: Assuming 'ent_end' is < field 'max_cluster'
           if (ent_end >=3D sbi->max_cluster)
               ^~~~~~~~~~~~~~~~~~~~~~~~~~~
   fs/fat/fatent.c:783:2: note: Taking false branch
           if (ent_end >=3D sbi->max_cluster)
           ^
   fs/fat/fatent.c:789:2: note: Calling 'fat_ra_init'
           fat_ra_init(sb, &fatent_ra, &fatent, ent_end + 1);
           ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   fs/fat/fatent.c:660:6: note: Assuming 'ent_limit' is <=3D field 'entry'
           if (fatent->entry >=3D ent_limit)
               ^~~~~~~~~~~~~~~~~~~~~~~~~~
   fs/fat/fatent.c:660:2: note: Taking true branch
           if (fatent->entry >=3D ent_limit)
           ^
   fs/fat/fatent.c:661:3: note: Returning without writing to 'ra->ra_next'
                   return;
                   ^
   fs/fat/fatent.c:789:2: note: Returning from 'fat_ra_init'
           fat_ra_init(sb, &fatent_ra, &fatent, ent_end + 1);
           ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   fs/fat/fatent.c:790:9: note: Assuming 'ent_end' is >=3D field 'entry'
           while (fatent.entry <=3D ent_end) {
                  ^~~~~~~~~~~~~~~~~~~~~~~
   fs/fat/fatent.c:790:2: note: Loop condition is true.  Entering loop body
           while (fatent.entry <=3D ent_end) {
           ^
   fs/fat/fatent.c:792:3: note: Calling 'fat_ent_reada'
                   fat_ent_reada(sb, &fatent_ra, &fatent);
                   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   fs/fat/fatent.c:684:18: note: The left operand of '>=3D' is a garbage va=
lue
           if (ra->ra_next >=3D ra->ra_limit)
               ~~~~~~~~~~~ ^
   Suppressed 2 warnings (2 in non-user code).

vim +/dev +245 drivers/pci/vgaarb.c

deb2d2ecd43dfc5 drivers/gpu/vga/vgaarb.c Benjamin Herrenschmidt 2009-08-11 =
 241 =20
deb2d2ecd43dfc5 drivers/gpu/vga/vgaarb.c Benjamin Herrenschmidt 2009-08-11 =
 242  static struct vga_device *__vga_tryget(struct vga_device *vgadev,
deb2d2ecd43dfc5 drivers/gpu/vga/vgaarb.c Benjamin Herrenschmidt 2009-08-11 =
 243  				       unsigned int rsrc)
deb2d2ecd43dfc5 drivers/gpu/vga/vgaarb.c Benjamin Herrenschmidt 2009-08-11 =
 244  {
a75d68f62106fe6 drivers/gpu/vga/vgaarb.c Bjorn Helgaas          2016-11-17 =
@245  	struct device *dev =3D &vgadev->pdev->dev;
deb2d2ecd43dfc5 drivers/gpu/vga/vgaarb.c Benjamin Herrenschmidt 2009-08-11 =
 246  	unsigned int wants, legacy_wants, match;
deb2d2ecd43dfc5 drivers/gpu/vga/vgaarb.c Benjamin Herrenschmidt 2009-08-11 =
 247  	struct vga_device *conflict;
deb2d2ecd43dfc5 drivers/gpu/vga/vgaarb.c Benjamin Herrenschmidt 2009-08-11 =
 248  	unsigned int pci_bits;
3448a19da479b6b drivers/gpu/vga/vgaarb.c Dave Airlie            2010-06-01 =
 249  	u32 flags =3D 0;
3448a19da479b6b drivers/gpu/vga/vgaarb.c Dave Airlie            2010-06-01 =
 250 =20
deb2d2ecd43dfc5 drivers/gpu/vga/vgaarb.c Benjamin Herrenschmidt 2009-08-11 =
 251  	/* Account for "normal" resources to lock. If we decode the legacy,
deb2d2ecd43dfc5 drivers/gpu/vga/vgaarb.c Benjamin Herrenschmidt 2009-08-11 =
 252  	 * counterpart, we need to request it as well
deb2d2ecd43dfc5 drivers/gpu/vga/vgaarb.c Benjamin Herrenschmidt 2009-08-11 =
 253  	 */
deb2d2ecd43dfc5 drivers/gpu/vga/vgaarb.c Benjamin Herrenschmidt 2009-08-11 =
 254  	if ((rsrc & VGA_RSRC_NORMAL_IO) &&
deb2d2ecd43dfc5 drivers/gpu/vga/vgaarb.c Benjamin Herrenschmidt 2009-08-11 =
 255  	    (vgadev->decodes & VGA_RSRC_LEGACY_IO))
deb2d2ecd43dfc5 drivers/gpu/vga/vgaarb.c Benjamin Herrenschmidt 2009-08-11 =
 256  		rsrc |=3D VGA_RSRC_LEGACY_IO;
deb2d2ecd43dfc5 drivers/gpu/vga/vgaarb.c Benjamin Herrenschmidt 2009-08-11 =
 257  	if ((rsrc & VGA_RSRC_NORMAL_MEM) &&
deb2d2ecd43dfc5 drivers/gpu/vga/vgaarb.c Benjamin Herrenschmidt 2009-08-11 =
 258  	    (vgadev->decodes & VGA_RSRC_LEGACY_MEM))
deb2d2ecd43dfc5 drivers/gpu/vga/vgaarb.c Benjamin Herrenschmidt 2009-08-11 =
 259  		rsrc |=3D VGA_RSRC_LEGACY_MEM;
deb2d2ecd43dfc5 drivers/gpu/vga/vgaarb.c Benjamin Herrenschmidt 2009-08-11 =
 260 =20
a75d68f62106fe6 drivers/gpu/vga/vgaarb.c Bjorn Helgaas          2016-11-17 =
 261  	vgaarb_dbg(dev, "%s: %d\n", __func__, rsrc);
a75d68f62106fe6 drivers/gpu/vga/vgaarb.c Bjorn Helgaas          2016-11-17 =
 262  	vgaarb_dbg(dev, "%s: owns: %d\n", __func__, vgadev->owns);
deb2d2ecd43dfc5 drivers/gpu/vga/vgaarb.c Benjamin Herrenschmidt 2009-08-11 =
 263 =20
deb2d2ecd43dfc5 drivers/gpu/vga/vgaarb.c Benjamin Herrenschmidt 2009-08-11 =
 264  	/* Check what resources we need to acquire */
deb2d2ecd43dfc5 drivers/gpu/vga/vgaarb.c Benjamin Herrenschmidt 2009-08-11 =
 265  	wants =3D rsrc & ~vgadev->owns;
deb2d2ecd43dfc5 drivers/gpu/vga/vgaarb.c Benjamin Herrenschmidt 2009-08-11 =
 266 =20
deb2d2ecd43dfc5 drivers/gpu/vga/vgaarb.c Benjamin Herrenschmidt 2009-08-11 =
 267  	/* We already own everything, just mark locked & bye bye */
deb2d2ecd43dfc5 drivers/gpu/vga/vgaarb.c Benjamin Herrenschmidt 2009-08-11 =
 268  	if (wants =3D=3D 0)
deb2d2ecd43dfc5 drivers/gpu/vga/vgaarb.c Benjamin Herrenschmidt 2009-08-11 =
 269  		goto lock_them;
deb2d2ecd43dfc5 drivers/gpu/vga/vgaarb.c Benjamin Herrenschmidt 2009-08-11 =
 270 =20
deb2d2ecd43dfc5 drivers/gpu/vga/vgaarb.c Benjamin Herrenschmidt 2009-08-11 =
 271  	/* We don't need to request a legacy resource, we just enable
deb2d2ecd43dfc5 drivers/gpu/vga/vgaarb.c Benjamin Herrenschmidt 2009-08-11 =
 272  	 * appropriate decoding and go
deb2d2ecd43dfc5 drivers/gpu/vga/vgaarb.c Benjamin Herrenschmidt 2009-08-11 =
 273  	 */
deb2d2ecd43dfc5 drivers/gpu/vga/vgaarb.c Benjamin Herrenschmidt 2009-08-11 =
 274  	legacy_wants =3D wants & VGA_RSRC_LEGACY_MASK;
deb2d2ecd43dfc5 drivers/gpu/vga/vgaarb.c Benjamin Herrenschmidt 2009-08-11 =
 275  	if (legacy_wants =3D=3D 0)
deb2d2ecd43dfc5 drivers/gpu/vga/vgaarb.c Benjamin Herrenschmidt 2009-08-11 =
 276  		goto enable_them;
deb2d2ecd43dfc5 drivers/gpu/vga/vgaarb.c Benjamin Herrenschmidt 2009-08-11 =
 277 =20
deb2d2ecd43dfc5 drivers/gpu/vga/vgaarb.c Benjamin Herrenschmidt 2009-08-11 =
 278  	/* Ok, we don't, let's find out how we need to kick off */
deb2d2ecd43dfc5 drivers/gpu/vga/vgaarb.c Benjamin Herrenschmidt 2009-08-11 =
 279  	list_for_each_entry(conflict, &vga_list, list) {
deb2d2ecd43dfc5 drivers/gpu/vga/vgaarb.c Benjamin Herrenschmidt 2009-08-11 =
 280  		unsigned int lwants =3D legacy_wants;
deb2d2ecd43dfc5 drivers/gpu/vga/vgaarb.c Benjamin Herrenschmidt 2009-08-11 =
 281  		unsigned int change_bridge =3D 0;
deb2d2ecd43dfc5 drivers/gpu/vga/vgaarb.c Benjamin Herrenschmidt 2009-08-11 =
 282 =20
deb2d2ecd43dfc5 drivers/gpu/vga/vgaarb.c Benjamin Herrenschmidt 2009-08-11 =
 283  		/* Don't conflict with myself */
deb2d2ecd43dfc5 drivers/gpu/vga/vgaarb.c Benjamin Herrenschmidt 2009-08-11 =
 284  		if (vgadev =3D=3D conflict)
deb2d2ecd43dfc5 drivers/gpu/vga/vgaarb.c Benjamin Herrenschmidt 2009-08-11 =
 285  			continue;
deb2d2ecd43dfc5 drivers/gpu/vga/vgaarb.c Benjamin Herrenschmidt 2009-08-11 =
 286 =20
deb2d2ecd43dfc5 drivers/gpu/vga/vgaarb.c Benjamin Herrenschmidt 2009-08-11 =
 287  		/* Check if the architecture allows a conflict between those
deb2d2ecd43dfc5 drivers/gpu/vga/vgaarb.c Benjamin Herrenschmidt 2009-08-11 =
 288  		 * 2 devices or if they are on separate domains
deb2d2ecd43dfc5 drivers/gpu/vga/vgaarb.c Benjamin Herrenschmidt 2009-08-11 =
 289  		 */
deb2d2ecd43dfc5 drivers/gpu/vga/vgaarb.c Benjamin Herrenschmidt 2009-08-11 =
 290  		if (!vga_conflicts(vgadev->pdev, conflict->pdev))
deb2d2ecd43dfc5 drivers/gpu/vga/vgaarb.c Benjamin Herrenschmidt 2009-08-11 =
 291  			continue;
deb2d2ecd43dfc5 drivers/gpu/vga/vgaarb.c Benjamin Herrenschmidt 2009-08-11 =
 292 =20
deb2d2ecd43dfc5 drivers/gpu/vga/vgaarb.c Benjamin Herrenschmidt 2009-08-11 =
 293  		/* We have a possible conflict. before we go further, we must
deb2d2ecd43dfc5 drivers/gpu/vga/vgaarb.c Benjamin Herrenschmidt 2009-08-11 =
 294  		 * check if we sit on the same bus as the conflicting device.
deb2d2ecd43dfc5 drivers/gpu/vga/vgaarb.c Benjamin Herrenschmidt 2009-08-11 =
 295  		 * if we don't, then we must tie both IO and MEM resources
deb2d2ecd43dfc5 drivers/gpu/vga/vgaarb.c Benjamin Herrenschmidt 2009-08-11 =
 296  		 * together since there is only a single bit controlling
deb2d2ecd43dfc5 drivers/gpu/vga/vgaarb.c Benjamin Herrenschmidt 2009-08-11 =
 297  		 * VGA forwarding on P2P bridges
deb2d2ecd43dfc5 drivers/gpu/vga/vgaarb.c Benjamin Herrenschmidt 2009-08-11 =
 298  		 */
deb2d2ecd43dfc5 drivers/gpu/vga/vgaarb.c Benjamin Herrenschmidt 2009-08-11 =
 299  		if (vgadev->pdev->bus !=3D conflict->pdev->bus) {
deb2d2ecd43dfc5 drivers/gpu/vga/vgaarb.c Benjamin Herrenschmidt 2009-08-11 =
 300  			change_bridge =3D 1;
deb2d2ecd43dfc5 drivers/gpu/vga/vgaarb.c Benjamin Herrenschmidt 2009-08-11 =
 301  			lwants =3D VGA_RSRC_LEGACY_IO | VGA_RSRC_LEGACY_MEM;
deb2d2ecd43dfc5 drivers/gpu/vga/vgaarb.c Benjamin Herrenschmidt 2009-08-11 =
 302  		}
deb2d2ecd43dfc5 drivers/gpu/vga/vgaarb.c Benjamin Herrenschmidt 2009-08-11 =
 303 =20
deb2d2ecd43dfc5 drivers/gpu/vga/vgaarb.c Benjamin Herrenschmidt 2009-08-11 =
 304  		/* Check if the guy has a lock on the resource. If he does,
deb2d2ecd43dfc5 drivers/gpu/vga/vgaarb.c Benjamin Herrenschmidt 2009-08-11 =
 305  		 * return the conflicting entry
deb2d2ecd43dfc5 drivers/gpu/vga/vgaarb.c Benjamin Herrenschmidt 2009-08-11 =
 306  		 */
deb2d2ecd43dfc5 drivers/gpu/vga/vgaarb.c Benjamin Herrenschmidt 2009-08-11 =
 307  		if (conflict->locks & lwants)
deb2d2ecd43dfc5 drivers/gpu/vga/vgaarb.c Benjamin Herrenschmidt 2009-08-11 =
 308  			return conflict;
deb2d2ecd43dfc5 drivers/gpu/vga/vgaarb.c Benjamin Herrenschmidt 2009-08-11 =
 309 =20
4e4e7dc55af5aa6 drivers/gpu/vga/vgaarb.c Alex Williamson        2014-07-03 =
 310  		/* Ok, now check if it owns the resource we want.  We can
4e4e7dc55af5aa6 drivers/gpu/vga/vgaarb.c Alex Williamson        2014-07-03 =
 311  		 * lock resources that are not decoded, therefore a device
4e4e7dc55af5aa6 drivers/gpu/vga/vgaarb.c Alex Williamson        2014-07-03 =
 312  		 * can own resources it doesn't decode.
deb2d2ecd43dfc5 drivers/gpu/vga/vgaarb.c Benjamin Herrenschmidt 2009-08-11 =
 313  		 */
deb2d2ecd43dfc5 drivers/gpu/vga/vgaarb.c Benjamin Herrenschmidt 2009-08-11 =
 314  		match =3D lwants & conflict->owns;
deb2d2ecd43dfc5 drivers/gpu/vga/vgaarb.c Benjamin Herrenschmidt 2009-08-11 =
 315  		if (!match)
deb2d2ecd43dfc5 drivers/gpu/vga/vgaarb.c Benjamin Herrenschmidt 2009-08-11 =
 316  			continue;
deb2d2ecd43dfc5 drivers/gpu/vga/vgaarb.c Benjamin Herrenschmidt 2009-08-11 =
 317 =20
deb2d2ecd43dfc5 drivers/gpu/vga/vgaarb.c Benjamin Herrenschmidt 2009-08-11 =
 318  		/* looks like he doesn't have a lock, we can steal
deb2d2ecd43dfc5 drivers/gpu/vga/vgaarb.c Benjamin Herrenschmidt 2009-08-11 =
 319  		 * them from him
deb2d2ecd43dfc5 drivers/gpu/vga/vgaarb.c Benjamin Herrenschmidt 2009-08-11 =
 320  		 */
deb2d2ecd43dfc5 drivers/gpu/vga/vgaarb.c Benjamin Herrenschmidt 2009-08-11 =
 321 =20
3448a19da479b6b drivers/gpu/vga/vgaarb.c Dave Airlie            2010-06-01 =
 322  		flags =3D 0;
deb2d2ecd43dfc5 drivers/gpu/vga/vgaarb.c Benjamin Herrenschmidt 2009-08-11 =
 323  		pci_bits =3D 0;
3448a19da479b6b drivers/gpu/vga/vgaarb.c Dave Airlie            2010-06-01 =
 324 =20
4e4e7dc55af5aa6 drivers/gpu/vga/vgaarb.c Alex Williamson        2014-07-03 =
 325  		/* If we can't control legacy resources via the bridge, we
4e4e7dc55af5aa6 drivers/gpu/vga/vgaarb.c Alex Williamson        2014-07-03 =
 326  		 * also need to disable normal decoding.
4e4e7dc55af5aa6 drivers/gpu/vga/vgaarb.c Alex Williamson        2014-07-03 =
 327  		 */
3448a19da479b6b drivers/gpu/vga/vgaarb.c Dave Airlie            2010-06-01 =
 328  		if (!conflict->bridge_has_one_vga) {
4e4e7dc55af5aa6 drivers/gpu/vga/vgaarb.c Alex Williamson        2014-07-03 =
 329  			if ((match & conflict->decodes) & VGA_RSRC_LEGACY_MEM)
deb2d2ecd43dfc5 drivers/gpu/vga/vgaarb.c Benjamin Herrenschmidt 2009-08-11 =
 330  				pci_bits |=3D PCI_COMMAND_MEMORY;
4e4e7dc55af5aa6 drivers/gpu/vga/vgaarb.c Alex Williamson        2014-07-03 =
 331  			if ((match & conflict->decodes) & VGA_RSRC_LEGACY_IO)
deb2d2ecd43dfc5 drivers/gpu/vga/vgaarb.c Benjamin Herrenschmidt 2009-08-11 =
 332  				pci_bits |=3D PCI_COMMAND_IO;
4e4e7dc55af5aa6 drivers/gpu/vga/vgaarb.c Alex Williamson        2014-07-03 =
 333 =20
4e4e7dc55af5aa6 drivers/gpu/vga/vgaarb.c Alex Williamson        2014-07-03 =
 334  			if (pci_bits) {
4e4e7dc55af5aa6 drivers/gpu/vga/vgaarb.c Alex Williamson        2014-07-03 =
 335  				vga_irq_set_state(conflict, false);
4e4e7dc55af5aa6 drivers/gpu/vga/vgaarb.c Alex Williamson        2014-07-03 =
 336  				flags |=3D PCI_VGA_STATE_CHANGE_DECODES;
4e4e7dc55af5aa6 drivers/gpu/vga/vgaarb.c Alex Williamson        2014-07-03 =
 337  			}
3448a19da479b6b drivers/gpu/vga/vgaarb.c Dave Airlie            2010-06-01 =
 338  		}
3448a19da479b6b drivers/gpu/vga/vgaarb.c Dave Airlie            2010-06-01 =
 339 =20
3448a19da479b6b drivers/gpu/vga/vgaarb.c Dave Airlie            2010-06-01 =
 340  		if (change_bridge)
3448a19da479b6b drivers/gpu/vga/vgaarb.c Dave Airlie            2010-06-01 =
 341  			flags |=3D PCI_VGA_STATE_CHANGE_BRIDGE;
deb2d2ecd43dfc5 drivers/gpu/vga/vgaarb.c Benjamin Herrenschmidt 2009-08-11 =
 342 =20
3448a19da479b6b drivers/gpu/vga/vgaarb.c Dave Airlie            2010-06-01 =
 343  		pci_set_vga_state(conflict->pdev, false, pci_bits, flags);
f22d776f3e280e6 drivers/gpu/vga/vgaarb.c Alex Williamson        2013-08-15 =
 344  		conflict->owns &=3D ~match;
4e4e7dc55af5aa6 drivers/gpu/vga/vgaarb.c Alex Williamson        2014-07-03 =
 345 =20
4e4e7dc55af5aa6 drivers/gpu/vga/vgaarb.c Alex Williamson        2014-07-03 =
 346  		/* If we disabled normal decoding, reflect it in owns */
4e4e7dc55af5aa6 drivers/gpu/vga/vgaarb.c Alex Williamson        2014-07-03 =
 347  		if (pci_bits & PCI_COMMAND_MEMORY)
deb2d2ecd43dfc5 drivers/gpu/vga/vgaarb.c Benjamin Herrenschmidt 2009-08-11 =
 348  			conflict->owns &=3D ~VGA_RSRC_NORMAL_MEM;
4e4e7dc55af5aa6 drivers/gpu/vga/vgaarb.c Alex Williamson        2014-07-03 =
 349  		if (pci_bits & PCI_COMMAND_IO)
deb2d2ecd43dfc5 drivers/gpu/vga/vgaarb.c Benjamin Herrenschmidt 2009-08-11 =
 350  			conflict->owns &=3D ~VGA_RSRC_NORMAL_IO;
deb2d2ecd43dfc5 drivers/gpu/vga/vgaarb.c Benjamin Herrenschmidt 2009-08-11 =
 351  	}
deb2d2ecd43dfc5 drivers/gpu/vga/vgaarb.c Benjamin Herrenschmidt 2009-08-11 =
 352 =20
deb2d2ecd43dfc5 drivers/gpu/vga/vgaarb.c Benjamin Herrenschmidt 2009-08-11 =
 353  enable_them:
deb2d2ecd43dfc5 drivers/gpu/vga/vgaarb.c Benjamin Herrenschmidt 2009-08-11 =
 354  	/* ok dude, we got it, everybody conflicting has been disabled, let'=
s
4e4e7dc55af5aa6 drivers/gpu/vga/vgaarb.c Alex Williamson        2014-07-03 =
 355  	 * enable us.  Mark any bits in "owns" regardless of whether we
4e4e7dc55af5aa6 drivers/gpu/vga/vgaarb.c Alex Williamson        2014-07-03 =
 356  	 * decoded them.  We can lock resources we don't decode, therefore
4e4e7dc55af5aa6 drivers/gpu/vga/vgaarb.c Alex Williamson        2014-07-03 =
 357  	 * we must track them via "owns".
deb2d2ecd43dfc5 drivers/gpu/vga/vgaarb.c Benjamin Herrenschmidt 2009-08-11 =
 358  	 */
3448a19da479b6b drivers/gpu/vga/vgaarb.c Dave Airlie            2010-06-01 =
 359  	flags =3D 0;
deb2d2ecd43dfc5 drivers/gpu/vga/vgaarb.c Benjamin Herrenschmidt 2009-08-11 =
 360  	pci_bits =3D 0;
3448a19da479b6b drivers/gpu/vga/vgaarb.c Dave Airlie            2010-06-01 =
 361 =20
3448a19da479b6b drivers/gpu/vga/vgaarb.c Dave Airlie            2010-06-01 =
 362  	if (!vgadev->bridge_has_one_vga) {
3448a19da479b6b drivers/gpu/vga/vgaarb.c Dave Airlie            2010-06-01 =
 363  		flags |=3D PCI_VGA_STATE_CHANGE_DECODES;
deb2d2ecd43dfc5 drivers/gpu/vga/vgaarb.c Benjamin Herrenschmidt 2009-08-11 =
 364  		if (wants & (VGA_RSRC_LEGACY_MEM|VGA_RSRC_NORMAL_MEM))
deb2d2ecd43dfc5 drivers/gpu/vga/vgaarb.c Benjamin Herrenschmidt 2009-08-11 =
 365  			pci_bits |=3D PCI_COMMAND_MEMORY;
deb2d2ecd43dfc5 drivers/gpu/vga/vgaarb.c Benjamin Herrenschmidt 2009-08-11 =
 366  		if (wants & (VGA_RSRC_LEGACY_IO|VGA_RSRC_NORMAL_IO))
deb2d2ecd43dfc5 drivers/gpu/vga/vgaarb.c Benjamin Herrenschmidt 2009-08-11 =
 367  			pci_bits |=3D PCI_COMMAND_IO;
3448a19da479b6b drivers/gpu/vga/vgaarb.c Dave Airlie            2010-06-01 =
 368  	}
4e4e7dc55af5aa6 drivers/gpu/vga/vgaarb.c Alex Williamson        2014-07-03 =
 369  	if (wants & VGA_RSRC_LEGACY_MASK)
3448a19da479b6b drivers/gpu/vga/vgaarb.c Dave Airlie            2010-06-01 =
 370  		flags |=3D PCI_VGA_STATE_CHANGE_BRIDGE;
3448a19da479b6b drivers/gpu/vga/vgaarb.c Dave Airlie            2010-06-01 =
 371 =20
3448a19da479b6b drivers/gpu/vga/vgaarb.c Dave Airlie            2010-06-01 =
 372  	pci_set_vga_state(vgadev->pdev, true, pci_bits, flags);
deb2d2ecd43dfc5 drivers/gpu/vga/vgaarb.c Benjamin Herrenschmidt 2009-08-11 =
 373 =20
5d90ccf908bd806 drivers/gpu/vga/vgaarb.c Thierry Reding         2015-08-12 =
 374  	if (!vgadev->bridge_has_one_vga)
deb2d2ecd43dfc5 drivers/gpu/vga/vgaarb.c Benjamin Herrenschmidt 2009-08-11 =
 375  		vga_irq_set_state(vgadev, true);
5d90ccf908bd806 drivers/gpu/vga/vgaarb.c Thierry Reding         2015-08-12 =
 376 =20
4e4e7dc55af5aa6 drivers/gpu/vga/vgaarb.c Alex Williamson        2014-07-03 =
 377  	vgadev->owns |=3D wants;
deb2d2ecd43dfc5 drivers/gpu/vga/vgaarb.c Benjamin Herrenschmidt 2009-08-11 =
 378  lock_them:
deb2d2ecd43dfc5 drivers/gpu/vga/vgaarb.c Benjamin Herrenschmidt 2009-08-11 =
 379  	vgadev->locks |=3D (rsrc & VGA_RSRC_LEGACY_MASK);
deb2d2ecd43dfc5 drivers/gpu/vga/vgaarb.c Benjamin Herrenschmidt 2009-08-11 =
 380  	if (rsrc & VGA_RSRC_LEGACY_IO)
deb2d2ecd43dfc5 drivers/gpu/vga/vgaarb.c Benjamin Herrenschmidt 2009-08-11 =
 381  		vgadev->io_lock_cnt++;
deb2d2ecd43dfc5 drivers/gpu/vga/vgaarb.c Benjamin Herrenschmidt 2009-08-11 =
 382  	if (rsrc & VGA_RSRC_LEGACY_MEM)
deb2d2ecd43dfc5 drivers/gpu/vga/vgaarb.c Benjamin Herrenschmidt 2009-08-11 =
 383  		vgadev->mem_lock_cnt++;
deb2d2ecd43dfc5 drivers/gpu/vga/vgaarb.c Benjamin Herrenschmidt 2009-08-11 =
 384  	if (rsrc & VGA_RSRC_NORMAL_IO)
deb2d2ecd43dfc5 drivers/gpu/vga/vgaarb.c Benjamin Herrenschmidt 2009-08-11 =
 385  		vgadev->io_norm_cnt++;
deb2d2ecd43dfc5 drivers/gpu/vga/vgaarb.c Benjamin Herrenschmidt 2009-08-11 =
 386  	if (rsrc & VGA_RSRC_NORMAL_MEM)
deb2d2ecd43dfc5 drivers/gpu/vga/vgaarb.c Benjamin Herrenschmidt 2009-08-11 =
 387  		vgadev->mem_norm_cnt++;
deb2d2ecd43dfc5 drivers/gpu/vga/vgaarb.c Benjamin Herrenschmidt 2009-08-11 =
 388 =20
deb2d2ecd43dfc5 drivers/gpu/vga/vgaarb.c Benjamin Herrenschmidt 2009-08-11 =
 389  	return NULL;
deb2d2ecd43dfc5 drivers/gpu/vga/vgaarb.c Benjamin Herrenschmidt 2009-08-11 =
 390  }
deb2d2ecd43dfc5 drivers/gpu/vga/vgaarb.c Benjamin Herrenschmidt 2009-08-11 =
 391 =20

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/202108220448.CPCt2NYN-lkp%40intel.com.

--PNTmBPCT7hxwcZjr
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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

--PNTmBPCT7hxwcZjr--
