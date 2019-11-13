Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBPOTWDXAKGQERR6JODY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43e.google.com (mail-pf1-x43e.google.com [IPv6:2607:f8b0:4864:20::43e])
	by mail.lfdr.de (Postfix) with ESMTPS id 674B2FB49A
	for <lists+clang-built-linux@lfdr.de>; Wed, 13 Nov 2019 17:05:19 +0100 (CET)
Received: by mail-pf1-x43e.google.com with SMTP id g186sf1958783pfb.15
        for <lists+clang-built-linux@lfdr.de>; Wed, 13 Nov 2019 08:05:19 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1573661118; cv=pass;
        d=google.com; s=arc-20160816;
        b=RnFTc1fD7Soe4qLvHJG1c82iPu9KoLWqHuVHzDDeOjZeJvBIVIOTZ4nIG+SVC28TCw
         ALav7C8quhlkYJa9j+EPWkuYQQ1oY4OzJ6evEMyaWOT2IDoueXpUirxkNgTyWhNUjHu4
         kz7lP76/QsDscBTeFH2L03lcVu/LScTDLnc5Pu8SnwlQ3O44F5yMvDITW9o/whSIUJ+C
         7qE5hw8Z8NlZosrtIKmgBQvSjHIBgJAj6lXwAUb6A/HWeZ09s/I3p+I6XLh8F/JcVEMt
         dNmQ3OPdHZlgIYTZRu6NxETqDkvkgnR1o7cFkMmc9g9HakqZMqQC9I5PLdBMXl0DXEoC
         TC6Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=GfEW9+qitAjlmhsuirWeAn0IG8R8hxZeRM1t/CqHi0Q=;
        b=YWhESAanPVWYhgWkyOlzEjkv2efNSOKkeTQ5JO6A9xOISlCecn7KJkfbUbZ8z73moa
         5bxYAX532Lr/9lJRv2dIoulfDPOJMkQxl91K83Y7A7cHtW+ozjmqWFcXXRiAPIaQdTIm
         gibeBFTfxOR3ASWDcpYDxwnltK8r1NY2ipb63un1krNBrR50dz5jtUvfAZLHaVC2u/28
         kklz1y1mVRa1uChUAIQTGWRptppqsaIAvtoe7ZCe8S/ElZz1B6cgKT45E+MePv53uVna
         GcpQRK4ckkcOe9uGmEt57wxGnBvzOZOfTOwFIONDTW3jtJN/A5nPcMA0AohQqRrq95oc
         7MzQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.100 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=GfEW9+qitAjlmhsuirWeAn0IG8R8hxZeRM1t/CqHi0Q=;
        b=W7c3Hi3cSTXwO5WovKk7tSlCDrYpAcc9EcwYtelrv8r1I+iDHmRpc+2Fkf6e5TZztB
         dnUympeXwtPoPbWYPIFL8xkE/7+V+WaQwXVWS2mjKAELGnnaTm+PIALvzURmw2jueNOi
         PBv25zStLKyxZPCqN70RdfKsFNgViF8CNvCC+8NpftWpL2HnxjJ+9ML19kr3+IdzGMUO
         RleqTFNu1DVU6dl6NT1SBBxs6J6X3ZR0VXIWJvC//7v9GDErTlq+jIa/ZHLA9sSz/0XR
         4AWzOa1oyGNANDPB5/+KzWLHQTSsZSz5H18gJi3htUpY8LK9O+51La8Ds+0Ng5KuKaLu
         LEAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=GfEW9+qitAjlmhsuirWeAn0IG8R8hxZeRM1t/CqHi0Q=;
        b=dSO7AhFUqJDFB5hERAlYCFn2+Ttf+LqXRr3iP4YEABWOc3KZYEI9pjkzEI8Cbn69Kt
         Qym+OWSHPJD5bfCFx3Z3CGbddB66wbMB+Edabdz4sC9O3EQje4YOLJ7rNpQvEuX9r0gJ
         XRSjctSxrnTEJ5ix/w/w1D0EFJc8GayvWwHk3/8x4pT47fEwiUkg8hsD86QwWSZl7NMc
         gip6MydUJTApyEC0lumEjUFizhSLxvuoT0//7ZQDc7ZGNGVrFq1SRNbjDq1hJtzgnuK1
         RY96FIzOg6kMEWmgw/KSEw1xxdpDXwKms5gmabQHIXcwAVibgy2ei6eb0WwPMBfjmRwe
         rBMg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWIf2e7GvybJit/6vFB4cAGU3Jj0UCSHlBG6tmeEfn0hPK//mDI
	L+pfBCj4nA+4PDxF200hH40=
X-Google-Smtp-Source: APXvYqxgU133R47kKqX+HPpHq2qCpj4iCK4I7DfJYnVoEJr6UYqJxjeb+ohY8hMoaLiD7v+RcDwHvg==
X-Received: by 2002:a17:90a:a58b:: with SMTP id b11mr6023370pjq.46.1573661117841;
        Wed, 13 Nov 2019 08:05:17 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:a616:: with SMTP id u22ls715375plq.2.gmail; Wed, 13
 Nov 2019 08:05:17 -0800 (PST)
X-Received: by 2002:a17:902:8690:: with SMTP id g16mr4773589plo.194.1573661117255;
        Wed, 13 Nov 2019 08:05:17 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1573661117; cv=none;
        d=google.com; s=arc-20160816;
        b=kSC7J0Y0+tvODKrwUJcaj2xR8cVy/MR74V4zRNWHDQiKVa9vYQ32f4xlBaMAy69lRN
         lSmFVZRpCS98R0GLiNG/2gVH6I47XN+OhdQJQPsCN9rtbiELzGOb0JYwwPQAlIlIuevu
         pwnYIRGT9EhyQeVmTOiM6AOW7B6TtCo4YgcUKNiJ9xCDhH+rYqC84wMyCTGzPqiqKtZq
         BJFO2awxJGhe9wsm6O2HMYln1+UH5usdqHFvnFzcUJ/0ci6LP3orHsBrPtesNrBRvdiv
         YfZbKbfRTOYvBDU4eW9oyvokGmT0ZUGw7tsQ96NMN+CM6EruyBYLqGzro9SOX5qMC9J6
         jyLA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date;
        bh=sRww3FifWg61vdDBVR5O8SrIQKv8bkIjG1X58L6Cx/c=;
        b=krYYwiTOBJNq2TKmi8AywjairxJLFwCo7dxEBESDuYDnvfn89yNZxytdClYKedPiaH
         G3/bxdDVYS/coBiTZCCmUvrWEqM5XevFF3AB1cjVMuLMcu5BpC6SPyUkmriLYne0WQXV
         Us9zOPBUrukft+xRwvbRdREVxZJkv/VjR4S2ViYKEJHUEOk1WWnIYjovqPVWhrsUoRcz
         ta9UlStjcyXgbag3F0gM4sgnut0scoWwHycUZ2YFXxbULcBm44VtqG8273/lalytwT9J
         3Ct9Y/dkz6Lxy2m6ZaxtU3vCFVTHrUaGDRJ0tDh5qk0xzbXk4BE4wgcTEkpFUGZXuqxS
         RkXw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.100 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga07.intel.com (mga07.intel.com. [134.134.136.100])
        by gmr-mx.google.com with ESMTPS id g15si114430plq.0.2019.11.13.08.05.17
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 13 Nov 2019 08:05:17 -0800 (PST)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 134.134.136.100 as permitted sender) client-ip=134.134.136.100;
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
  by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 13 Nov 2019 08:05:16 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,300,1569308400"; 
   d="gz'50?scan'50,208,50";a="216432261"
Received: from lkp-server01.sh.intel.com (HELO lkp-server01) ([10.239.97.150])
  by orsmga002.jf.intel.com with ESMTP; 13 Nov 2019 08:05:11 -0800
Received: from kbuild by lkp-server01 with local (Exim 4.89)
	(envelope-from <lkp@intel.com>)
	id 1iUv8p-0006ks-1l; Thu, 14 Nov 2019 00:05:11 +0800
Date: Thu, 14 Nov 2019 00:04:55 +0800
From: kbuild test robot <lkp@intel.com>
To: kbuild@lists.01.org
Cc: Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux@googlegroups.com
Subject: [iwlwifi-next:master 17/24]
 drivers/net/wireless/intel/iwlwifi/mvm/fw.c:688:9: error: incomplete
 definition of type 'struct iwl_mvm_sar_profile'
Message-ID: <201911140047.eTpavyew%lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="5smsiukrzinuejos"
Content-Disposition: inline
X-Patchwork-Hint: ignore
User-Agent: NeoMutt/20170113 (1.7.2)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lkp@intel.com designates 134.134.136.100 as permitted
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


--5smsiukrzinuejos
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

CC: kbuild-all@lists.01.org
TO: Ihab Zhaika <ihab.zhaika@intel.com>
CC: Luca Coelho <luciano.coelho@intel.com>

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/iwlwifi/iwlwifi-next.git master
head:   e43545028c12d749fb6bd8293095a520c078f40e
commit: 8406be2b80f70bfd0b4b91b01ba66e51b7298503 [17/24] iwlwifi: refactor the SAR tables from mvm to acpi
config: x86_64-rhel-7.6 (attached as .config)
compiler: clang version 10.0.0 (git://gitmirror/llvm_project 335ac2eb662ce5f1888e2a50310b01fba2d40d68)
reproduce:
        git checkout 8406be2b80f70bfd0b4b91b01ba66e51b7298503
        # save the attached .config to linux build tree
        make ARCH=x86_64 

If you fix the issue, kindly add following tag
Reported-by: kbuild test robot <lkp@intel.com>

All error/warnings (new ones prefixed by >>):

>> drivers/net/wireless/intel/iwlwifi/mvm/fw.c:683:15: warning: declaration of 'struct iwl_mvm_sar_profile' will not be visible outside of this function [-Wvisibility]
                                             struct iwl_mvm_sar_profile *profile,
                                                    ^
>> drivers/net/wireless/intel/iwlwifi/mvm/fw.c:688:9: error: incomplete definition of type 'struct iwl_mvm_sar_profile'
           profile->enabled = enabled;
           ~~~~~~~^
   drivers/net/wireless/intel/iwlwifi/mvm/fw.c:683:15: note: forward declaration of 'struct iwl_mvm_sar_profile'
                                             struct iwl_mvm_sar_profile *profile,
                                                    ^
   drivers/net/wireless/intel/iwlwifi/mvm/fw.c:695:10: error: incomplete definition of type 'struct iwl_mvm_sar_profile'
                   profile->table[i] = table[i].integer.value;
                   ~~~~~~~^
   drivers/net/wireless/intel/iwlwifi/mvm/fw.c:683:15: note: forward declaration of 'struct iwl_mvm_sar_profile'
                                             struct iwl_mvm_sar_profile *profile,
                                                    ^
>> drivers/net/wireless/intel/iwlwifi/mvm/fw.c:732:50: error: no member named 'sar_profiles' in 'struct iwl_mvm'
           ret = iwl_mvm_sar_set_profile(mvm, table, &mvm->sar_profiles[0],
                                                      ~~~  ^
   drivers/net/wireless/intel/iwlwifi/mvm/fw.c:786:18: error: no member named 'sar_profiles' in 'struct iwl_mvm'
                                                 &mvm->sar_profiles[i + 1],
                                                  ~~~  ^
>> drivers/net/wireless/intel/iwlwifi/mvm/fw.c:822:7: error: no member named 'geo_rev' in 'struct iwl_mvm'
           mvm->geo_rev = tbl_rev;
           ~~~  ^
>> drivers/net/wireless/intel/iwlwifi/mvm/fw.c:834:9: error: no member named 'geo_profiles' in 'struct iwl_mvm'
                           mvm->geo_profiles[i].values[j] = entry->integer.value;
                           ~~~  ^
   1 warning and 6 errors generated.

vim +688 drivers/net/wireless/intel/iwlwifi/mvm/fw.c

84bfffa9683543 drivers/net/wireless/iwlwifi/mvm/fw.c       Emmanuel Grumbach  2015-01-13  679  
c386dacb4ed681 drivers/net/wireless/intel/iwlwifi/mvm/fw.c Haim Dreyfuss      2016-12-28  680  #ifdef CONFIG_ACPI
e8698301f2c13e drivers/net/wireless/intel/iwlwifi/mvm/fw.c Arnd Bergmann      2018-12-10  681  static inline int iwl_mvm_sar_set_profile(struct iwl_mvm *mvm,
c386dacb4ed681 drivers/net/wireless/intel/iwlwifi/mvm/fw.c Haim Dreyfuss      2016-12-28  682  					  union acpi_object *table,
c386dacb4ed681 drivers/net/wireless/intel/iwlwifi/mvm/fw.c Haim Dreyfuss      2016-12-28 @683  					  struct iwl_mvm_sar_profile *profile,
c386dacb4ed681 drivers/net/wireless/intel/iwlwifi/mvm/fw.c Haim Dreyfuss      2016-12-28  684  					  bool enabled)
c386dacb4ed681 drivers/net/wireless/intel/iwlwifi/mvm/fw.c Haim Dreyfuss      2016-12-28  685  {
c386dacb4ed681 drivers/net/wireless/intel/iwlwifi/mvm/fw.c Haim Dreyfuss      2016-12-28  686  	int i;
da2830acf15aab drivers/net/wireless/intel/iwlwifi/mvm/fw.c Luca Coelho        2016-05-30  687  
c386dacb4ed681 drivers/net/wireless/intel/iwlwifi/mvm/fw.c Haim Dreyfuss      2016-12-28 @688  	profile->enabled = enabled;
c386dacb4ed681 drivers/net/wireless/intel/iwlwifi/mvm/fw.c Haim Dreyfuss      2016-12-28  689  
e7a3b8d87910bb drivers/net/wireless/intel/iwlwifi/mvm/fw.c Luca Coelho        2017-09-21  690  	for (i = 0; i < ACPI_SAR_TABLE_SIZE; i++) {
c386dacb4ed681 drivers/net/wireless/intel/iwlwifi/mvm/fw.c Haim Dreyfuss      2016-12-28  691  		if ((table[i].type != ACPI_TYPE_INTEGER) ||
c386dacb4ed681 drivers/net/wireless/intel/iwlwifi/mvm/fw.c Haim Dreyfuss      2016-12-28  692  		    (table[i].integer.value > U8_MAX))
c386dacb4ed681 drivers/net/wireless/intel/iwlwifi/mvm/fw.c Haim Dreyfuss      2016-12-28  693  			return -EINVAL;
c386dacb4ed681 drivers/net/wireless/intel/iwlwifi/mvm/fw.c Haim Dreyfuss      2016-12-28  694  
c386dacb4ed681 drivers/net/wireless/intel/iwlwifi/mvm/fw.c Haim Dreyfuss      2016-12-28  695  		profile->table[i] = table[i].integer.value;
c386dacb4ed681 drivers/net/wireless/intel/iwlwifi/mvm/fw.c Haim Dreyfuss      2016-12-28  696  	}
c386dacb4ed681 drivers/net/wireless/intel/iwlwifi/mvm/fw.c Haim Dreyfuss      2016-12-28  697  
c386dacb4ed681 drivers/net/wireless/intel/iwlwifi/mvm/fw.c Haim Dreyfuss      2016-12-28  698  	return 0;
c386dacb4ed681 drivers/net/wireless/intel/iwlwifi/mvm/fw.c Haim Dreyfuss      2016-12-28  699  }
c386dacb4ed681 drivers/net/wireless/intel/iwlwifi/mvm/fw.c Haim Dreyfuss      2016-12-28  700  
c386dacb4ed681 drivers/net/wireless/intel/iwlwifi/mvm/fw.c Haim Dreyfuss      2016-12-28  701  static int iwl_mvm_sar_get_wrds_table(struct iwl_mvm *mvm)
da2830acf15aab drivers/net/wireless/intel/iwlwifi/mvm/fw.c Luca Coelho        2016-05-30  702  {
813df5cef3bb11 drivers/net/wireless/intel/iwlwifi/mvm/fw.c Luca Coelho        2017-09-19  703  	union acpi_object *wifi_pkg, *table, *data;
c386dacb4ed681 drivers/net/wireless/intel/iwlwifi/mvm/fw.c Haim Dreyfuss      2016-12-28  704  	bool enabled;
0c3d7282233c7b drivers/net/wireless/intel/iwlwifi/mvm/fw.c Haim Dreyfuss      2019-02-27  705  	int ret, tbl_rev;
da2830acf15aab drivers/net/wireless/intel/iwlwifi/mvm/fw.c Luca Coelho        2016-05-30  706  
813df5cef3bb11 drivers/net/wireless/intel/iwlwifi/mvm/fw.c Luca Coelho        2017-09-19  707  	data = iwl_acpi_get_object(mvm->dev, ACPI_WRDS_METHOD);
813df5cef3bb11 drivers/net/wireless/intel/iwlwifi/mvm/fw.c Luca Coelho        2017-09-19  708  	if (IS_ERR(data))
813df5cef3bb11 drivers/net/wireless/intel/iwlwifi/mvm/fw.c Luca Coelho        2017-09-19  709  		return PTR_ERR(data);
da2830acf15aab drivers/net/wireless/intel/iwlwifi/mvm/fw.c Luca Coelho        2016-05-30  710  
2fa388cfeb1af9 drivers/net/wireless/intel/iwlwifi/mvm/fw.c Luca Coelho        2017-09-21  711  	wifi_pkg = iwl_acpi_get_wifi_pkg(mvm->dev, data,
0c3d7282233c7b drivers/net/wireless/intel/iwlwifi/mvm/fw.c Haim Dreyfuss      2019-02-27  712  					 ACPI_WRDS_WIFI_DATA_SIZE, &tbl_rev);
3ed83da39aed27 drivers/net/wireless/intel/iwlwifi/mvm/fw.c Luca Coelho        2019-08-23  713  	if (IS_ERR(wifi_pkg)) {
c386dacb4ed681 drivers/net/wireless/intel/iwlwifi/mvm/fw.c Haim Dreyfuss      2016-12-28  714  		ret = PTR_ERR(wifi_pkg);
c386dacb4ed681 drivers/net/wireless/intel/iwlwifi/mvm/fw.c Haim Dreyfuss      2016-12-28  715  		goto out_free;
c386dacb4ed681 drivers/net/wireless/intel/iwlwifi/mvm/fw.c Haim Dreyfuss      2016-12-28  716  	}
da2830acf15aab drivers/net/wireless/intel/iwlwifi/mvm/fw.c Luca Coelho        2016-05-30  717  
3ed83da39aed27 drivers/net/wireless/intel/iwlwifi/mvm/fw.c Luca Coelho        2019-08-23  718  	if (wifi_pkg->package.elements[1].type != ACPI_TYPE_INTEGER ||
3ed83da39aed27 drivers/net/wireless/intel/iwlwifi/mvm/fw.c Luca Coelho        2019-08-23  719  	    tbl_rev != 0) {
c386dacb4ed681 drivers/net/wireless/intel/iwlwifi/mvm/fw.c Haim Dreyfuss      2016-12-28  720  		ret = -EINVAL;
c386dacb4ed681 drivers/net/wireless/intel/iwlwifi/mvm/fw.c Haim Dreyfuss      2016-12-28  721  		goto out_free;
da2830acf15aab drivers/net/wireless/intel/iwlwifi/mvm/fw.c Luca Coelho        2016-05-30  722  	}
c386dacb4ed681 drivers/net/wireless/intel/iwlwifi/mvm/fw.c Haim Dreyfuss      2016-12-28  723  
c386dacb4ed681 drivers/net/wireless/intel/iwlwifi/mvm/fw.c Haim Dreyfuss      2016-12-28  724  	enabled = !!(wifi_pkg->package.elements[1].integer.value);
c386dacb4ed681 drivers/net/wireless/intel/iwlwifi/mvm/fw.c Haim Dreyfuss      2016-12-28  725  
c386dacb4ed681 drivers/net/wireless/intel/iwlwifi/mvm/fw.c Haim Dreyfuss      2016-12-28  726  	/* position of the actual table */
c386dacb4ed681 drivers/net/wireless/intel/iwlwifi/mvm/fw.c Haim Dreyfuss      2016-12-28  727  	table = &wifi_pkg->package.elements[2];
c386dacb4ed681 drivers/net/wireless/intel/iwlwifi/mvm/fw.c Haim Dreyfuss      2016-12-28  728  
c386dacb4ed681 drivers/net/wireless/intel/iwlwifi/mvm/fw.c Haim Dreyfuss      2016-12-28  729  	/* The profile from WRDS is officially profile 1, but goes
c386dacb4ed681 drivers/net/wireless/intel/iwlwifi/mvm/fw.c Haim Dreyfuss      2016-12-28  730  	 * into sar_profiles[0] (because we don't have a profile 0).
c386dacb4ed681 drivers/net/wireless/intel/iwlwifi/mvm/fw.c Haim Dreyfuss      2016-12-28  731  	 */
c386dacb4ed681 drivers/net/wireless/intel/iwlwifi/mvm/fw.c Haim Dreyfuss      2016-12-28 @732  	ret = iwl_mvm_sar_set_profile(mvm, table, &mvm->sar_profiles[0],
c386dacb4ed681 drivers/net/wireless/intel/iwlwifi/mvm/fw.c Haim Dreyfuss      2016-12-28  733  				      enabled);
c386dacb4ed681 drivers/net/wireless/intel/iwlwifi/mvm/fw.c Haim Dreyfuss      2016-12-28  734  out_free:
813df5cef3bb11 drivers/net/wireless/intel/iwlwifi/mvm/fw.c Luca Coelho        2017-09-19  735  	kfree(data);
c386dacb4ed681 drivers/net/wireless/intel/iwlwifi/mvm/fw.c Haim Dreyfuss      2016-12-28  736  	return ret;
da2830acf15aab drivers/net/wireless/intel/iwlwifi/mvm/fw.c Luca Coelho        2016-05-30  737  }
da2830acf15aab drivers/net/wireless/intel/iwlwifi/mvm/fw.c Luca Coelho        2016-05-30  738  
6996490501ed80 drivers/net/wireless/intel/iwlwifi/mvm/fw.c Luca Coelho        2017-01-12  739  static int iwl_mvm_sar_get_ewrd_table(struct iwl_mvm *mvm)
6996490501ed80 drivers/net/wireless/intel/iwlwifi/mvm/fw.c Luca Coelho        2017-01-12  740  {
813df5cef3bb11 drivers/net/wireless/intel/iwlwifi/mvm/fw.c Luca Coelho        2017-09-19  741  	union acpi_object *wifi_pkg, *data;
6996490501ed80 drivers/net/wireless/intel/iwlwifi/mvm/fw.c Luca Coelho        2017-01-12  742  	bool enabled;
0c3d7282233c7b drivers/net/wireless/intel/iwlwifi/mvm/fw.c Haim Dreyfuss      2019-02-27  743  	int i, n_profiles, ret, tbl_rev;
6996490501ed80 drivers/net/wireless/intel/iwlwifi/mvm/fw.c Luca Coelho        2017-01-12  744  
813df5cef3bb11 drivers/net/wireless/intel/iwlwifi/mvm/fw.c Luca Coelho        2017-09-19  745  	data = iwl_acpi_get_object(mvm->dev, ACPI_EWRD_METHOD);
813df5cef3bb11 drivers/net/wireless/intel/iwlwifi/mvm/fw.c Luca Coelho        2017-09-19  746  	if (IS_ERR(data))
813df5cef3bb11 drivers/net/wireless/intel/iwlwifi/mvm/fw.c Luca Coelho        2017-09-19  747  		return PTR_ERR(data);
6996490501ed80 drivers/net/wireless/intel/iwlwifi/mvm/fw.c Luca Coelho        2017-01-12  748  
2fa388cfeb1af9 drivers/net/wireless/intel/iwlwifi/mvm/fw.c Luca Coelho        2017-09-21  749  	wifi_pkg = iwl_acpi_get_wifi_pkg(mvm->dev, data,
0c3d7282233c7b drivers/net/wireless/intel/iwlwifi/mvm/fw.c Haim Dreyfuss      2019-02-27  750  					 ACPI_EWRD_WIFI_DATA_SIZE, &tbl_rev);
3ed83da39aed27 drivers/net/wireless/intel/iwlwifi/mvm/fw.c Luca Coelho        2019-08-23  751  	if (IS_ERR(wifi_pkg)) {
6996490501ed80 drivers/net/wireless/intel/iwlwifi/mvm/fw.c Luca Coelho        2017-01-12  752  		ret = PTR_ERR(wifi_pkg);
6996490501ed80 drivers/net/wireless/intel/iwlwifi/mvm/fw.c Luca Coelho        2017-01-12  753  		goto out_free;
6996490501ed80 drivers/net/wireless/intel/iwlwifi/mvm/fw.c Luca Coelho        2017-01-12  754  	}
6996490501ed80 drivers/net/wireless/intel/iwlwifi/mvm/fw.c Luca Coelho        2017-01-12  755  
6996490501ed80 drivers/net/wireless/intel/iwlwifi/mvm/fw.c Luca Coelho        2017-01-12  756  	if ((wifi_pkg->package.elements[1].type != ACPI_TYPE_INTEGER) ||
3ed83da39aed27 drivers/net/wireless/intel/iwlwifi/mvm/fw.c Luca Coelho        2019-08-23  757  	    (wifi_pkg->package.elements[2].type != ACPI_TYPE_INTEGER) ||
3ed83da39aed27 drivers/net/wireless/intel/iwlwifi/mvm/fw.c Luca Coelho        2019-08-23  758  	    tbl_rev != 0) {
6996490501ed80 drivers/net/wireless/intel/iwlwifi/mvm/fw.c Luca Coelho        2017-01-12  759  		ret = -EINVAL;
6996490501ed80 drivers/net/wireless/intel/iwlwifi/mvm/fw.c Luca Coelho        2017-01-12  760  		goto out_free;
6996490501ed80 drivers/net/wireless/intel/iwlwifi/mvm/fw.c Luca Coelho        2017-01-12  761  	}
6996490501ed80 drivers/net/wireless/intel/iwlwifi/mvm/fw.c Luca Coelho        2017-01-12  762  
6996490501ed80 drivers/net/wireless/intel/iwlwifi/mvm/fw.c Luca Coelho        2017-01-12  763  	enabled = !!(wifi_pkg->package.elements[1].integer.value);
6996490501ed80 drivers/net/wireless/intel/iwlwifi/mvm/fw.c Luca Coelho        2017-01-12  764  	n_profiles = wifi_pkg->package.elements[2].integer.value;
6996490501ed80 drivers/net/wireless/intel/iwlwifi/mvm/fw.c Luca Coelho        2017-01-12  765  
2e1976bb75263f drivers/net/wireless/intel/iwlwifi/mvm/fw.c Luca Coelho        2018-06-11  766  	/*
2e1976bb75263f drivers/net/wireless/intel/iwlwifi/mvm/fw.c Luca Coelho        2018-06-11  767  	 * Check the validity of n_profiles.  The EWRD profiles start
2e1976bb75263f drivers/net/wireless/intel/iwlwifi/mvm/fw.c Luca Coelho        2018-06-11  768  	 * from index 1, so the maximum value allowed here is
2e1976bb75263f drivers/net/wireless/intel/iwlwifi/mvm/fw.c Luca Coelho        2018-06-11  769  	 * ACPI_SAR_PROFILES_NUM - 1.
2e1976bb75263f drivers/net/wireless/intel/iwlwifi/mvm/fw.c Luca Coelho        2018-06-11  770  	 */
2e1976bb75263f drivers/net/wireless/intel/iwlwifi/mvm/fw.c Luca Coelho        2018-06-11  771  	if (n_profiles <= 0 || n_profiles >= ACPI_SAR_PROFILE_NUM) {
e2ef147686751f drivers/net/wireless/intel/iwlwifi/mvm/fw.c Sharon Dvir        2017-02-21  772  		ret = -EINVAL;
e2ef147686751f drivers/net/wireless/intel/iwlwifi/mvm/fw.c Sharon Dvir        2017-02-21  773  		goto out_free;
e2ef147686751f drivers/net/wireless/intel/iwlwifi/mvm/fw.c Sharon Dvir        2017-02-21  774  	}
e2ef147686751f drivers/net/wireless/intel/iwlwifi/mvm/fw.c Sharon Dvir        2017-02-21  775  
6996490501ed80 drivers/net/wireless/intel/iwlwifi/mvm/fw.c Luca Coelho        2017-01-12  776  	for (i = 0; i < n_profiles; i++) {
6996490501ed80 drivers/net/wireless/intel/iwlwifi/mvm/fw.c Luca Coelho        2017-01-12  777  		/* the tables start at element 3 */
ba3224db780344 drivers/net/wireless/intel/iwlwifi/mvm/fw.c Emmanuel Grumbach  2019-07-22  778  		int pos = 3;
6996490501ed80 drivers/net/wireless/intel/iwlwifi/mvm/fw.c Luca Coelho        2017-01-12  779  
6996490501ed80 drivers/net/wireless/intel/iwlwifi/mvm/fw.c Luca Coelho        2017-01-12  780  		/* The EWRD profiles officially go from 2 to 4, but we
6996490501ed80 drivers/net/wireless/intel/iwlwifi/mvm/fw.c Luca Coelho        2017-01-12  781  		 * save them in sar_profiles[1-3] (because we don't
6996490501ed80 drivers/net/wireless/intel/iwlwifi/mvm/fw.c Luca Coelho        2017-01-12  782  		 * have profile 0).  So in the array we start from 1.
6996490501ed80 drivers/net/wireless/intel/iwlwifi/mvm/fw.c Luca Coelho        2017-01-12  783  		 */
6996490501ed80 drivers/net/wireless/intel/iwlwifi/mvm/fw.c Luca Coelho        2017-01-12  784  		ret = iwl_mvm_sar_set_profile(mvm,
6996490501ed80 drivers/net/wireless/intel/iwlwifi/mvm/fw.c Luca Coelho        2017-01-12  785  					      &wifi_pkg->package.elements[pos],
6996490501ed80 drivers/net/wireless/intel/iwlwifi/mvm/fw.c Luca Coelho        2017-01-12  786  					      &mvm->sar_profiles[i + 1],
6996490501ed80 drivers/net/wireless/intel/iwlwifi/mvm/fw.c Luca Coelho        2017-01-12  787  					      enabled);
6996490501ed80 drivers/net/wireless/intel/iwlwifi/mvm/fw.c Luca Coelho        2017-01-12  788  		if (ret < 0)
6996490501ed80 drivers/net/wireless/intel/iwlwifi/mvm/fw.c Luca Coelho        2017-01-12  789  			break;
6996490501ed80 drivers/net/wireless/intel/iwlwifi/mvm/fw.c Luca Coelho        2017-01-12  790  
6996490501ed80 drivers/net/wireless/intel/iwlwifi/mvm/fw.c Luca Coelho        2017-01-12  791  		/* go to the next table */
e7a3b8d87910bb drivers/net/wireless/intel/iwlwifi/mvm/fw.c Luca Coelho        2017-09-21  792  		pos += ACPI_SAR_TABLE_SIZE;
6996490501ed80 drivers/net/wireless/intel/iwlwifi/mvm/fw.c Luca Coelho        2017-01-12  793  	}
6996490501ed80 drivers/net/wireless/intel/iwlwifi/mvm/fw.c Luca Coelho        2017-01-12  794  
6996490501ed80 drivers/net/wireless/intel/iwlwifi/mvm/fw.c Luca Coelho        2017-01-12  795  out_free:
813df5cef3bb11 drivers/net/wireless/intel/iwlwifi/mvm/fw.c Luca Coelho        2017-09-19  796  	kfree(data);
6996490501ed80 drivers/net/wireless/intel/iwlwifi/mvm/fw.c Luca Coelho        2017-01-12  797  	return ret;
6996490501ed80 drivers/net/wireless/intel/iwlwifi/mvm/fw.c Luca Coelho        2017-01-12  798  }
6996490501ed80 drivers/net/wireless/intel/iwlwifi/mvm/fw.c Luca Coelho        2017-01-12  799  
7fe90e0e3d6038 drivers/net/wireless/intel/iwlwifi/mvm/fw.c Haim Dreyfuss      2017-03-30  800  static int iwl_mvm_sar_get_wgds_table(struct iwl_mvm *mvm)
a6bff3cb19b7d5 drivers/net/wireless/intel/iwlwifi/mvm/fw.c Haim Dreyfuss      2017-01-19  801  {
813df5cef3bb11 drivers/net/wireless/intel/iwlwifi/mvm/fw.c Luca Coelho        2017-09-19  802  	union acpi_object *wifi_pkg, *data;
0c3d7282233c7b drivers/net/wireless/intel/iwlwifi/mvm/fw.c Haim Dreyfuss      2019-02-27  803  	int i, j, ret, tbl_rev;
7fe90e0e3d6038 drivers/net/wireless/intel/iwlwifi/mvm/fw.c Haim Dreyfuss      2017-03-30  804  	int idx = 1;
a6bff3cb19b7d5 drivers/net/wireless/intel/iwlwifi/mvm/fw.c Haim Dreyfuss      2017-01-19  805  
813df5cef3bb11 drivers/net/wireless/intel/iwlwifi/mvm/fw.c Luca Coelho        2017-09-19  806  	data = iwl_acpi_get_object(mvm->dev, ACPI_WGDS_METHOD);
813df5cef3bb11 drivers/net/wireless/intel/iwlwifi/mvm/fw.c Luca Coelho        2017-09-19  807  	if (IS_ERR(data))
813df5cef3bb11 drivers/net/wireless/intel/iwlwifi/mvm/fw.c Luca Coelho        2017-09-19  808  		return PTR_ERR(data);
a6bff3cb19b7d5 drivers/net/wireless/intel/iwlwifi/mvm/fw.c Haim Dreyfuss      2017-01-19  809  
2fa388cfeb1af9 drivers/net/wireless/intel/iwlwifi/mvm/fw.c Luca Coelho        2017-09-21  810  	wifi_pkg = iwl_acpi_get_wifi_pkg(mvm->dev, data,
0c3d7282233c7b drivers/net/wireless/intel/iwlwifi/mvm/fw.c Haim Dreyfuss      2019-02-27  811  					 ACPI_WGDS_WIFI_DATA_SIZE, &tbl_rev);
3ed83da39aed27 drivers/net/wireless/intel/iwlwifi/mvm/fw.c Luca Coelho        2019-08-23  812  	if (IS_ERR(wifi_pkg)) {
a6bff3cb19b7d5 drivers/net/wireless/intel/iwlwifi/mvm/fw.c Haim Dreyfuss      2017-01-19  813  		ret = PTR_ERR(wifi_pkg);
a6bff3cb19b7d5 drivers/net/wireless/intel/iwlwifi/mvm/fw.c Haim Dreyfuss      2017-01-19  814  		goto out_free;
a6bff3cb19b7d5 drivers/net/wireless/intel/iwlwifi/mvm/fw.c Haim Dreyfuss      2017-01-19  815  	}
a6bff3cb19b7d5 drivers/net/wireless/intel/iwlwifi/mvm/fw.c Haim Dreyfuss      2017-01-19  816  
3ed83da39aed27 drivers/net/wireless/intel/iwlwifi/mvm/fw.c Luca Coelho        2019-08-23  817  	if (tbl_rev != 0) {
3ed83da39aed27 drivers/net/wireless/intel/iwlwifi/mvm/fw.c Luca Coelho        2019-08-23  818  		ret = -EINVAL;
3ed83da39aed27 drivers/net/wireless/intel/iwlwifi/mvm/fw.c Luca Coelho        2019-08-23  819  		goto out_free;
3ed83da39aed27 drivers/net/wireless/intel/iwlwifi/mvm/fw.c Luca Coelho        2019-08-23  820  	}
3ed83da39aed27 drivers/net/wireless/intel/iwlwifi/mvm/fw.c Luca Coelho        2019-08-23  821  
0c3d7282233c7b drivers/net/wireless/intel/iwlwifi/mvm/fw.c Haim Dreyfuss      2019-02-27 @822  	mvm->geo_rev = tbl_rev;
e7a3b8d87910bb drivers/net/wireless/intel/iwlwifi/mvm/fw.c Luca Coelho        2017-09-21  823  	for (i = 0; i < ACPI_NUM_GEO_PROFILES; i++) {
e7a3b8d87910bb drivers/net/wireless/intel/iwlwifi/mvm/fw.c Luca Coelho        2017-09-21  824  		for (j = 0; j < ACPI_GEO_TABLE_SIZE; j++) {
a6bff3cb19b7d5 drivers/net/wireless/intel/iwlwifi/mvm/fw.c Haim Dreyfuss      2017-01-19  825  			union acpi_object *entry;
a6bff3cb19b7d5 drivers/net/wireless/intel/iwlwifi/mvm/fw.c Haim Dreyfuss      2017-01-19  826  
7fe90e0e3d6038 drivers/net/wireless/intel/iwlwifi/mvm/fw.c Haim Dreyfuss      2017-03-30  827  			entry = &wifi_pkg->package.elements[idx++];
a6bff3cb19b7d5 drivers/net/wireless/intel/iwlwifi/mvm/fw.c Haim Dreyfuss      2017-01-19  828  			if ((entry->type != ACPI_TYPE_INTEGER) ||
aae9d563230f97 drivers/net/wireless/intel/iwlwifi/mvm/fw.c Christophe Jaillet 2017-07-14  829  			    (entry->integer.value > U8_MAX)) {
aae9d563230f97 drivers/net/wireless/intel/iwlwifi/mvm/fw.c Christophe Jaillet 2017-07-14  830  				ret = -EINVAL;
aae9d563230f97 drivers/net/wireless/intel/iwlwifi/mvm/fw.c Christophe Jaillet 2017-07-14  831  				goto out_free;
aae9d563230f97 drivers/net/wireless/intel/iwlwifi/mvm/fw.c Christophe Jaillet 2017-07-14  832  			}
a6bff3cb19b7d5 drivers/net/wireless/intel/iwlwifi/mvm/fw.c Haim Dreyfuss      2017-01-19  833  
7fe90e0e3d6038 drivers/net/wireless/intel/iwlwifi/mvm/fw.c Haim Dreyfuss      2017-03-30 @834  			mvm->geo_profiles[i].values[j] = entry->integer.value;
7fe90e0e3d6038 drivers/net/wireless/intel/iwlwifi/mvm/fw.c Haim Dreyfuss      2017-03-30  835  		}
a6bff3cb19b7d5 drivers/net/wireless/intel/iwlwifi/mvm/fw.c Haim Dreyfuss      2017-01-19  836  	}
a6bff3cb19b7d5 drivers/net/wireless/intel/iwlwifi/mvm/fw.c Haim Dreyfuss      2017-01-19  837  	ret = 0;
a6bff3cb19b7d5 drivers/net/wireless/intel/iwlwifi/mvm/fw.c Haim Dreyfuss      2017-01-19  838  out_free:
813df5cef3bb11 drivers/net/wireless/intel/iwlwifi/mvm/fw.c Luca Coelho        2017-09-19  839  	kfree(data);
a6bff3cb19b7d5 drivers/net/wireless/intel/iwlwifi/mvm/fw.c Haim Dreyfuss      2017-01-19  840  	return ret;
a6bff3cb19b7d5 drivers/net/wireless/intel/iwlwifi/mvm/fw.c Haim Dreyfuss      2017-01-19  841  }
a6bff3cb19b7d5 drivers/net/wireless/intel/iwlwifi/mvm/fw.c Haim Dreyfuss      2017-01-19  842  

:::::: The code at line 688 was first introduced by commit
:::::: c386dacb4ed681f26f6965b3e0f0448eeabfbb13 iwlwifi: mvm: refactor SAR init to prepare for dynamic SAR

:::::: TO: Haim Dreyfuss <haim.dreyfuss@intel.com>
:::::: CC: Luca Coelho <luciano.coelho@intel.com>

---
0-DAY kernel test infrastructure                 Open Source Technology Center
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org Intel Corporation

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/201911140047.eTpavyew%25lkp%40intel.com.

--5smsiukrzinuejos
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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

--5smsiukrzinuejos--
