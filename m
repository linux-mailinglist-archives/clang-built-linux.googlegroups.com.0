Return-Path: <clang-built-linux+bncBCHPXRO65YERBFGISSEQMGQEVVZZIUY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3c.google.com (mail-yb1-xb3c.google.com [IPv6:2607:f8b0:4864:20::b3c])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C8CE3F636B
	for <lists+clang-built-linux@lfdr.de>; Tue, 24 Aug 2021 18:53:42 +0200 (CEST)
Received: by mail-yb1-xb3c.google.com with SMTP id q13-20020a25820d000000b0059a84a55d89sf5617166ybk.23
        for <lists+clang-built-linux@lfdr.de>; Tue, 24 Aug 2021 09:53:41 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629824021; cv=pass;
        d=google.com; s=arc-20160816;
        b=jv4cf7GZaGZz2PfrFw32loAQcaM0pdbLMRFNzkdZ03A5cYr5XgjkHpGqAh1jZt4uvG
         45UluCfTs6QhVGI7t3BNJTDnAZ0+qaKTvLg4gmzkFEUH1i8NVCKEO7teDF03Cpm+K5fB
         pMp7aolLlXBaKvm+CIrQCvCbJRRM+GyFRpaNCNPHgry/muqP0sh4aZE35E+aujGAFk51
         CW1hpAWNTaPZWcWD4KZinnBTojJWu4IA3Y2Mlqa1XhN2y3sfEawI6laFRG7CDgSlbLyq
         VkIZJZHzy4RT6g4p1jB1P9UfBejXF3UCgqKrr86LAgp5kTZr6KcqYNUJSje9/eLSsW0y
         VDfA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=wlXqJZgY3M3lieZZ+5SwvW+wTVN4TRDqwa1cwwq422o=;
        b=l3FzCXAOgEj269eSlBEFwHRiAwTNlhivRnZJI1C+CDhJeccSKiaXWjH2ax/PNga63p
         ouHv6BfTQYrYk2R5N0ruX9cUg1R8aQ570NOQxcry71Lqbb6qdGSnpkCilobNSNpc6H7E
         W2RRehNe1CLGSiZ6+SEz/E2yQZRFuZs067qPQDlpwi89V3QyzT5m4NP5iEOxSPvxoO0O
         mrEtCKy635OR46GGrKm2u1SSJ8V0CNBhXH1BLvDSmiNUeasztKZZhCuPZsk+toQdTZow
         /g6xPEtYZKgUiP32PDvOWveE3xcfF8LxslhBEpOjmOrjWlNRSHXsHHGjrfjLTSvF1e6V
         6wKQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of pierre-louis.bossart@linux.intel.com designates 134.134.136.20 as permitted sender) smtp.mailfrom=pierre-louis.bossart@linux.intel.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=wlXqJZgY3M3lieZZ+5SwvW+wTVN4TRDqwa1cwwq422o=;
        b=GjR2QJ4gZa1GsjPssSytNyCMv9ybj7ai4PsXzdbNVRfKc6HxniI7ZvxAcpGtmY8Yyi
         MOs84QuQI32o0Z42t6HeGFeyTldUZaC9+n2H1pSrOcotKl0P9+/+yQmDLDccPV3uiH7R
         fYrc2Gb0FHlXfEQOzIA0AqnJ5eun2ga1EdtPEAsh4j7REExLFi2UtTly5EY4IAXF0wo8
         5YdHfNvvGR7X0lGmjsvGOAKiRV9ALdp+AJqJPHNm1TzTWZwzngE2vGpT+AEPjEKFhk6K
         w9gC0hqcCO8SaoMASKIogoz57mUkwAxdhAeZ1ytRMKs7NUDjh7VQaxwDcAULGg4MwSY4
         mA7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=wlXqJZgY3M3lieZZ+5SwvW+wTVN4TRDqwa1cwwq422o=;
        b=UxqVc4JGwtWY8j1WG8khhGvgxvjAEZP//pBBuq3qo5M3gL0ehCdPt3LRB8VJiSyXUD
         Aa7ef7goGKhfYYQ22hgTCvf+XfDdtkm/bB7sJS2CgnohpQv5kvHcw/a6PaUJjC5M901t
         OyvLqDrxiwVHJF+uW38un5YsbD6feyWxegk7S64UzYRKA+SxgBEDcpwDFKPq7S+q/x/x
         AAQsnIPRtNijVUF/OBTW9W6tM02iqWwhLbea99uuUGSUVCmbsAHirbJsf7uCgrrqV8KC
         ghQM1SWd07cV2CCQv8jduxZAhe9fslA53C4eT5znA1RPtda/AvjfhDUEpvKekTmUQAUc
         i1nw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532Ax5AjQil/MH9NbQa4u9q5spskUiOLcl7CchapSFMfQ6rCbH9R
	lqQMQokYt8nix2FVixXZYFI=
X-Google-Smtp-Source: ABdhPJyJe0uIMnmWPOa7ZxQ0ThEeSHGp6p0le3LVXT8qRW4q4s2jhO2csfZtAnJw3xwD4Y+wv0zRGQ==
X-Received: by 2002:a25:9201:: with SMTP id b1mr50736674ybo.354.1629824020765;
        Tue, 24 Aug 2021 09:53:40 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:b981:: with SMTP id r1ls2178376ybg.8.gmail; Tue, 24 Aug
 2021 09:53:40 -0700 (PDT)
X-Received: by 2002:a25:2007:: with SMTP id g7mr34544686ybg.434.1629824020282;
        Tue, 24 Aug 2021 09:53:40 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629824020; cv=none;
        d=google.com; s=arc-20160816;
        b=wDY5rq2sRtLc3Gj9dnNnVpAMSi1S9CthtmobZvQw3nHpKF2wosO7F6YMu/ckuTNB2b
         1zmxCbLLKkwXHx0cmqLnM94k+5t/CkBibv/crGE627xwUiXDTCbpkjbi2q1mXKhcSXAh
         BBLjW3QlT0Gbykl2+38EM2cRxb5Oj7kwzXiL9JNIKspfFbd+8CTTg5MLCwctaTd8hyK1
         VCaZ2guUiMJI2Z3tNmHAwH95dBua/tjnVsEArGmS9KUujaM+b30E5PS2MJf1rCxwX6T4
         eCqjzGJ+O4gCS9Zue5mtJ/a5kiiLuh+q0o6ycSZ5sMirk5EVSMH7CoNQkEXY/BaoWUT7
         8RFw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject;
        bh=rQc0B3g61oJ31Wrtfl9sp9KsDFiJse545f6956tSJgw=;
        b=nuYd5pq0tyGqKhya5b2U2t2HO3crrbFaWewzxPamJC1yReAGaEXyPR2ucEUfo3Orkx
         bSZMKCQCJZdPzN2KRPlvlMHmLEBqiRt+7aK7lVUhA11qZOr6UUgm9BZH4RNDWpUc6p+B
         3z/xUQb6YyRhmFGkx7V/PxVl5gC5WDWRcVeSp9OxUZqMB9K5mlB/XpHCRgICByhaUTOK
         8TGeeGJVhCSAzp6Se7xzTkN8s8NoC2dgRl+lSWneIzz/7NUo3Lt0FLWDy9KDZZlpMGf/
         b+BD+porlAYoP72iYpbALrttzqhCXRRHt9Hrxg2Wb6R6gbWDIk0v6zVLb5/rCSE/GQlA
         sTKw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of pierre-louis.bossart@linux.intel.com designates 134.134.136.20 as permitted sender) smtp.mailfrom=pierre-louis.bossart@linux.intel.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga02.intel.com (mga02.intel.com. [134.134.136.20])
        by gmr-mx.google.com with ESMTPS id x17si463174ybg.0.2021.08.24.09.53.39
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 24 Aug 2021 09:53:40 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of pierre-louis.bossart@linux.intel.com designates 134.134.136.20 as permitted sender) client-ip=134.134.136.20;
X-IronPort-AV: E=McAfee;i="6200,9189,10086"; a="204551710"
X-IronPort-AV: E=Sophos;i="5.84,347,1620716400"; 
   d="scan'208";a="204551710"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
  by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 24 Aug 2021 09:53:36 -0700
X-IronPort-AV: E=Sophos;i="5.84,347,1620716400"; 
   d="scan'208";a="685433469"
Received: from jlrivera-mobl1.amr.corp.intel.com (HELO [10.212.8.132]) ([10.212.8.132])
  by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 24 Aug 2021 09:53:35 -0700
Subject: Re: sound/soc/sof/intel/hda-dai.c:265:22: warning: Value stored to
 'sdev' during its initialization is never read
 [clang-analyzer-deadcode.DeadStores]
To: kernel test robot <lkp@intel.com>
Cc: clang-built-linux@googlegroups.com, kbuild-all@lists.01.org,
 linux-kernel@vger.kernel.org, Takashi Iwai <tiwai@suse.de>,
 Kai Vehmanen <kai.vehmanen@linux.intel.com>,
 Guennadi Liakhovetski <guennadi.liakhovetski@linux.intel.com>,
 Bard Liao <bard.liao@intel.com>
References: <202108241301.UdSncTEq-lkp@intel.com>
From: Pierre-Louis Bossart <pierre-louis.bossart@linux.intel.com>
Message-ID: <77ba5fc1-2bfa-0e9f-525c-dc260642c7ab@linux.intel.com>
Date: Tue, 24 Aug 2021 11:40:20 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Firefox/78.0 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <202108241301.UdSncTEq-lkp@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
X-Original-Sender: pierre-louis.bossart@linux.intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: best guess record for domain of pierre-louis.bossart@linux.intel.com
 designates 134.134.136.20 as permitted sender) smtp.mailfrom=pierre-louis.bossart@linux.intel.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=intel.com
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

Thanks for the report, I am not sure it's a real issue?
>>> sound/soc/sof/intel/hda-dai.c:265:22: warning: Value stored to 'sdev' during its initialization is never read [clang-analyzer-deadcode.DeadStores]
>            struct snd_sof_dev *sdev =
>                                ^~~~
>    sound/soc/sof/intel/hda-dai.c:265:22: note: Value stored to 'sdev' during its initialization is never read
>            struct snd_sof_dev *sdev =
>                                ^~~~
> fdd961e37e47f2 Keyon Jie         2019-04-12  259  
> fdd961e37e47f2 Keyon Jie         2019-04-12  260  static int hda_link_pcm_prepare(struct snd_pcm_substream *substream,
> fdd961e37e47f2 Keyon Jie         2019-04-12  261  				struct snd_soc_dai *dai)
> fdd961e37e47f2 Keyon Jie         2019-04-12  262  {
> ed3baacd76baa0 Ranjani Sridharan 2019-04-30  263  	struct hdac_ext_stream *link_dev =
> ed3baacd76baa0 Ranjani Sridharan 2019-04-30  264  				snd_soc_dai_get_dma_data(dai, substream);
> fdd961e37e47f2 Keyon Jie         2019-04-12 @265  	struct snd_sof_dev *sdev =
> fdd961e37e47f2 Keyon Jie         2019-04-12  266  				snd_soc_component_get_drvdata(dai->component);
> 1205300af9dba3 Kuninori Morimoto 2020-07-20  267  	struct snd_soc_pcm_runtime *rtd = asoc_substream_to_rtd(substream);
> fdd961e37e47f2 Keyon Jie         2019-04-12  268  	int stream = substream->stream;
> fdd961e37e47f2 Keyon Jie         2019-04-12  269  
> a3ebccb52efdfb Kai Vehmanen      2019-07-22  270  	if (link_dev->link_prepared)
> fdd961e37e47f2 Keyon Jie         2019-04-12  271  		return 0;
> fdd961e37e47f2 Keyon Jie         2019-04-12  272  
> ed3baacd76baa0 Ranjani Sridharan 2019-04-30  273  	dev_dbg(sdev->dev, "hda: prepare stream dir %d\n", substream->stream);
> fdd961e37e47f2 Keyon Jie         2019-04-12  274  
> fdd961e37e47f2 Keyon Jie         2019-04-12  275  	return hda_link_hw_params(substream, &rtd->dpcm[stream].hw_params,
> fdd961e37e47f2 Keyon Jie         2019-04-12  276  				  dai);
> fdd961e37e47f2 Keyon Jie         2019-04-12  277  }
> fdd961e37e47f2 Keyon Jie         2019-04-12  278  

The sdev variable is used in the dev_dbg() log, this looks legit to me?

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/77ba5fc1-2bfa-0e9f-525c-dc260642c7ab%40linux.intel.com.
