Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBKV76X4QKGQEEIIBJJY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa3e.google.com (mail-vk1-xa3e.google.com [IPv6:2607:f8b0:4864:20::a3e])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B6D124A4CC
	for <lists+clang-built-linux@lfdr.de>; Wed, 19 Aug 2020 19:21:47 +0200 (CEST)
Received: by mail-vk1-xa3e.google.com with SMTP id n68sf8020530vkf.11
        for <lists+clang-built-linux@lfdr.de>; Wed, 19 Aug 2020 10:21:47 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1597857706; cv=pass;
        d=google.com; s=arc-20160816;
        b=na2TrI9baHZVkBrgwgyoNPQ1vJnaZ0ptDn8LhDmDmGkeIcx8Tu23wqn4MtC/Xq3WWP
         hsGD2qFZWQGOVElYaeLiVqPrd62VE8Z4HRhMvc5kSdH5pRZoji5juPPQ4wecMUC+8ds+
         um81pj2OnVJfy0gK3ZQF1y5Z6cS9Cwyt0guHTE3WzqE0D8cM8156RLVJ/l34BkSgd9MT
         SBG2bSazjX5MwAYCtA8EgD4L7jF+G8/E3q0glEMzoF/SI9owb7LQtQtJfGBLw02NtXG6
         opYtfEn4II7wd56h5YQZIIHbq5xG3U7dmfpHa42ejD9t8eEyKA9N0uLxSTF92KYwAHlS
         AiBg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-transfer-encoding:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:ironport-sdr
         :ironport-sdr:sender:dkim-signature;
        bh=CTlkzCP16e95OmdA9blYpvn4+67OMviGps7axaNwvtM=;
        b=vrqzn0/tvWMS6Rc/ILpCGdNryEAvB4gLXkQzG/5H6FxhGr7H6n2Vd5NrXea8qHwZ/e
         CWSapqWR+gCNCmHXxFKAP+W979MYtXjPkDz/Zd8GwxgIDDkpg/H3GE/zwUcfJprpyl26
         wFvA70N+T4WH6f3lKprhbNYzouD3uzR4jpO3THQMxqAMkxeQA2sj/yNyBFfKRav0CFAx
         mJsUgfr/IIPE11DeFR03NWPo8/nzTA6jSJ1RCnqC8nETvsBkWoWsmqZduI4Sb+/CefZw
         oMJD66TBRKkDSZmA8Yw/aQ/7pttt3iXoxiTE+1+8PZjAa8VY13dcZ1jvqEx1BCWpWLbh
         WABg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.151 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition
         :content-transfer-encoding:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=CTlkzCP16e95OmdA9blYpvn4+67OMviGps7axaNwvtM=;
        b=LMnctex5VV6VRh7DS2CFzSvkLc1ZAIRndQMy2u7wO1jY5eIq6zyJUruHt1zj/D47wX
         /CW1l9XgvPTibbUSDTptOgqfO2XzIs8JHhL7wMotBvrHZXmf1XIFkJoq8IYYJoP7DW9f
         HmFBFLGxedgWP4EJt1i+U7kZvi2L5+hka1SpRKiJIinO2C+lncbuiKoVjhBqA9L5Q9ck
         y9PA8D8KO/PPjbxx3xjM+UYdMpTT+UIre34NqA4tYCf8+fZE5KgU8A06yCcq0ZIul50N
         KvjaV7og9JhltOaYAF5Q7iyyKJqx26hlyFozM9MHMHEXEccSKEj0xd//YHj41HNYsTi5
         2kAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:references:mime-version:content-disposition
         :content-transfer-encoding:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=CTlkzCP16e95OmdA9blYpvn4+67OMviGps7axaNwvtM=;
        b=hVfop0fgQZSDNLbOb5R64Gr0DDI16ue0VhC9vGcC/HHbASkCqXEtbWdfPhkqmAV7Vj
         cdKOiNfSFYVnh8a1yWGPhrBllTwU7pbv9Es0lCnIBYsc0BdF8/nw09nDiUFgXv0TTWpS
         7YtsyAndT3w93b0ZdyiYaLllrkDb0Jze3Zut1c6fHJCqNR5N/SqizH/5ShIzV0eCwCrV
         KdXqLmXsIuMIdxb5P4p4mdWcAHIjwRUAIuBqdStjW7r+fkfdHllkzWjJJDhWLCty/Ja2
         J42Sz3kf61m3Vr5fkXxsn7UmkSAKIr9N8nQY/mbNXJUd7Ye+M2i32FZm2I2//gEhH7Zk
         sSRA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533R0cGqQXa3JGPlIQ40IzdjTeO4j9+Wi02AvXP+nydNkEallqAb
	cbmzRINXGz5wsmstYHui3lI=
X-Google-Smtp-Source: ABdhPJw054Xuk8Bz+rISIu1OKiEIB4MBURAEt88Y69lCz+M78GCqsGXA9VFLHYdzg18oSki8reZxwg==
X-Received: by 2002:a1f:1c3:: with SMTP id 186mr15893760vkb.71.1597857706280;
        Wed, 19 Aug 2020 10:21:46 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:fe87:: with SMTP id b7ls2892309vsr.10.gmail; Wed, 19 Aug
 2020 10:21:45 -0700 (PDT)
X-Received: by 2002:a67:7905:: with SMTP id u5mr15792356vsc.179.1597857705767;
        Wed, 19 Aug 2020 10:21:45 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1597857705; cv=none;
        d=google.com; s=arc-20160816;
        b=lOlxFjYn0w0klObTjHH+NYAa8s+nUI14Bwa57D1vI6injKNfYJF5VlWp/Y3BGcq5ov
         vuLwd1DJemlODwiA+Xs6Ouar/k60Cv9qY+YufDTubLCMqlnbnR6eIrjkHhbbvljV4L7m
         WUXBXn84bB34Ctwmm1G2AtVfEceWTRf/cs7xjAD5+u+D8GxbTmBbF1x2X7WSG6w+KJwP
         QSPaOx64xh6waBcKiG3B9kcuXmsqP3ytMmkcNAKagQ2j2w89wqdxIGm+BPabJxn74Hd7
         BPRk9r1uHRWBanNK397WIuaJTRotWQ7im0R4wrIZKrRdTjazSgClHR0YmcCtCxnmI/v6
         ORbg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-transfer-encoding
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr;
        bh=CR3hTEab9yLTjbJaEitaP0/NhbKGGKMtssQFeAndTps=;
        b=TiQQix+Urzg2LsWfEqgID7lUiJJvhTFjm3uofv4BLqtBiQr0CIrIvnf3n09bLcCbJc
         t13sefChCUeKr+FVaOPzPz7ugLd8lRTbotMuTGZkqnbuGDvV9sDxZAbqppIGSjs2jB3O
         1HGDb3AkZIk6F30y+8l/crrZRnqjiuoT5+2kF4kpzNXF7i4SFFLLH4R4Kn2awXIqtr+F
         VCGi9ZA7b/57h+IM6fFOzNmFsNjyu6CsBOL00tud7/mT0TqM02he6OxexXo7q/xskvcR
         F2tVJwfVkoAAOHTyDT7qtxBlp4saZ0664jdtdb01Ithl4venz/FG4VKWfYG03V+8w/ch
         ezrw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.151 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga17.intel.com (mga17.intel.com. [192.55.52.151])
        by gmr-mx.google.com with ESMTPS id k201si1285283vka.4.2020.08.19.10.21.44
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 19 Aug 2020 10:21:45 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 192.55.52.151 as permitted sender) client-ip=192.55.52.151;
IronPort-SDR: uujnjl3veasphix7YRqj0L+3jsgvg8PzrYeJ7vjFmurOMxPJDeEAKlzwADk9rmXSWeWn4qeNV1
 qLx117OeIGcQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9718"; a="135229864"
X-IronPort-AV: E=Sophos;i="5.76,332,1592895600"; 
   d="gz'50?scan'50,208,50";a="135229864"
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
  by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 19 Aug 2020 10:21:43 -0700
IronPort-SDR: E8Je05n/QMTq9hpkcln9oILRXF1R4H8kZTcC5KGYmytoF7FKCj8sc/IP2hNVOMiFfjl4ypE8rr
 GuadxAC+cb0A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.76,332,1592895600"; 
   d="gz'50?scan'50,208,50";a="371313486"
Received: from lkp-server01.sh.intel.com (HELO 4cedd236b688) ([10.239.97.150])
  by orsmga001.jf.intel.com with ESMTP; 19 Aug 2020 10:21:40 -0700
Received: from kbuild by 4cedd236b688 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1k8RmN-0000OS-LF; Wed, 19 Aug 2020 17:21:39 +0000
Date: Thu, 20 Aug 2020 01:21:15 +0800
From: kernel test robot <lkp@intel.com>
To: penghao <penghao@uniontech.com>, perex@perex.cz, tiwai@suse.com
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	alexander@tsoy.me, dan.carpenter@oracle.com, crwulff@gmail.com,
	penghao@uniontech.com, gustavoars@kernel.org,
	alsa-devel@alsa-project.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] ALSA: usb-audio: Add prevent wakeup from s3 state trig
 by Lenovo ThinkCentre TI024Gen3 USB-audio
Message-ID: <202008200108.OJKwJBqz%lkp@intel.com>
References: <20200819115757.23168-1-penghao@uniontech.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="FCuugMFkClbJLl1L"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20200819115757.23168-1-penghao@uniontech.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lkp@intel.com designates 192.55.52.151 as permitted
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


--FCuugMFkClbJLl1L
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi penghao,

Thank you for the patch! Yet something to improve:

[auto build test ERROR on sound/for-next]
[also build test ERROR on v5.9-rc1 next-20200819]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch]

url:    https://github.com/0day-ci/linux/commits/penghao/ALSA-usb-audio-Add=
-prevent-wakeup-from-s3-state-trig-by-Lenovo-ThinkCentre-TI024Gen3-USB-audi=
o/20200819-200006
base:   https://git.kernel.org/pub/scm/linux/kernel/git/tiwai/sound.git for=
-next
config: x86_64-randconfig-a004-20200818 (attached as .config)
compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project b34b1e=
38381fa4d1b1d9751a6b5233b68e734cfe)
reproduce (this is a W=3D1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/=
make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install x86_64 cross compiling tool for clang build
        # apt-get install binutils-x86-64-linux-gnu
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=3D$HOME/0day COMPILER=3Dclang make.cross ARCH=
=3Dx86_64=20

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All errors (new ones prefixed by >>):

>> sound/usb/card.c:666:28: error: non-ASCII characters are not allowed out=
side of literals and identifiers
                   device_set_wakeup_enable(=EF=BC=86dev->dev, 0);
                                            ^~
>> sound/usb/card.c:666:31: error: passing 'struct device' to parameter of =
incompatible type 'struct device *'; take the address with &
                   device_set_wakeup_enable(=EF=BC=86dev->dev, 0);
                                              ^~~~~~~~
                                              &
   include/linux/pm_wakeup.h:159:59: note: passing argument to parameter 'd=
ev' here
   static inline int device_set_wakeup_enable(struct device *dev, bool enab=
le)
                                                             ^
   2 errors generated.

# https://github.com/0day-ci/linux/commit/b49bfa7145277ea86b0487f7fd4e51566=
477f092
git remote add linux-review https://github.com/0day-ci/linux
git fetch --no-tags linux-review penghao/ALSA-usb-audio-Add-prevent-wakeup-=
from-s3-state-trig-by-Lenovo-ThinkCentre-TI024Gen3-USB-audio/20200819-20000=
6
git checkout b49bfa7145277ea86b0487f7fd4e51566477f092
vim +666 sound/usb/card.c

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/202008200108.OJKwJBqz%25lkp%40intel.com.

--FCuugMFkClbJLl1L
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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
bDVCmAYQsAIkjhJSabkc7yTpEojjcWeHHurfgzXTGbi7SyhQgZAMflRUbBsOTTSL6Z4uFGxs
HBAiqqgxTaP23k6IIcaBeyqHVQLVSxJn3NBygNZAymms2lZwAO9kk38xOoDJ6HEOz//79IPw
rDPMUlk3s+NfsDetcX2njlVGU9Adsv2gr7T5xLiUga5J+jZrnoy4f3fs2f6PFqvU6SJI1hYj
2t0SqUI5sRFtCoW90tO0+7CC+tATwmFDM9B/xTygZbGMcNyndRDtpUpKbKRoR1S/Vy4Fz6PT
ebWntlckobUPJUjr5OznK3N6v0EazBKeJmjZr4tsHXAGOdr68qF36+hqBtJ+vL58vr8+Izbg
Yz+p26n+8fTbyxF9H5ExeIU/1J9vb6/vn7b/5CU2YzF+/QXyfXpG8pnN5gKXEbCnxzPGx2ry
UGmENx3ldZ23vyqie6Dvnejl8e316eXTsfPgUs1C7bFFbnjOh31WH389ff74ne5vd0IdW62l
igI2fz63YTYEogzdOZcGkgpZRUZjz21r++XH6f1x8sv70+Nv7o3dAwbS07uRKKS3XQ8+qk8/
Wok5yf3Lgr1xBthGSWHfHjnJGKe5dRC4D1VaxM5C7dKaFN0KyCrCPpuFIrkAeavL7J2gNb76
qEG9Q/DzK0yz96El8VHfw9ut6JO02TREaE9L7tdVKfrSrOYNX2m3u75rht2MYuidqsnGDZ9Q
N/Fjb+e2cZaapK/n8Qa6uzJijld4jRyWkt5sW3J0KCNv9DAdkfHbb+Fogq5dlIEHmYS+rmtZ
Dch4bwy3wDU09CSDQY7kwz5BEKO1TGQl7S20jDaO4dr8xpvKUdpxOhTdJqWpfWvcJjpI5eiE
q53E9JyI3eFFYhxlgbGzR+RAMcuqj9541HqKfS29lf2djRX90PFZql0OuhbjALjJbDdq/NXA
BJT2LZ5OTBHPliIoWcY0Zb+uO0LfnWkV2idT+KlHX403sv7G/+30/uHJVPxMlF+1rwDj7AIc
lgsFaRRHHhguDXGheZxq9iTj2awv9PQ1/Jcpm4F2UNcuVJHldDdmQ283DAqjXRy6BusW7+FP
2EnRW8BA9FXvp5cPExwySU7/cR0VoKR1soPF6LXF1HycBDrokBpX1kBl5pd1AqjQ+Yy0Njsf
lnHo5qQU4rMNP1OXjHXJ88KrsL6Dc1J6vxAEPNGn+25zK0X6c5mnP8fPpw/YP39/erP2YXs+
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
yy2TAQA=

--FCuugMFkClbJLl1L--
