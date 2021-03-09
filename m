Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBHUIT2BAMGQE75OFTYQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc3a.google.com (mail-oo1-xc3a.google.com [IPv6:2607:f8b0:4864:20::c3a])
	by mail.lfdr.de (Postfix) with ESMTPS id 829AC332860
	for <lists+clang-built-linux@lfdr.de>; Tue,  9 Mar 2021 15:20:15 +0100 (CET)
Received: by mail-oo1-xc3a.google.com with SMTP id w12sf7011673ooo.7
        for <lists+clang-built-linux@lfdr.de>; Tue, 09 Mar 2021 06:20:15 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1615299614; cv=pass;
        d=google.com; s=arc-20160816;
        b=O+vyjKbLuQLk38frJWmAeGWxfSdAU4rJWopKXlQE8PLpy8LzPkOuWqXiEo6gLYgUYj
         qMv2t4cehd3ny4P2/shOglHI9W1jrIHomolhf68KM3u9AAZ+t47YV2PacbDNTFhAmJk6
         dIRTUMfEcOaqLeLJEHqF4Wv+pJoaCQt4hzG2pbBsLA1pUsk3J/BPYoRX6IkiSWoAlbXf
         N7tuA9ZT1/BAC+0LB5dQOwuF9sSZwRn/ZZ67fSc7W4a3BgPIHwqLTz007hLyqZieWZjR
         4gqDyqiZT7ggoxYIRLCg0V2HqAJH+VoqZlR0FXJVd90PY69Rrrs/6D6Kn9dXCxW5OqKf
         PrvA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:ironport-sdr
         :ironport-sdr:sender:dkim-signature;
        bh=SzSTxISs/v9Kuj9RuppCgqRXMUcwTkAsjQmo+hHqhKI=;
        b=prb4tl5N26+dKtCf/+W/s51u6Gd0xYEZDV8l6yg+oMI4jfWsiKO+EZwETmCYNWZLrg
         4bTd2L7gJZ6e+zvDcjKe2Vf/sEMGP0YiYcjiApvN6QP8+btdCnBJj/Ww6Egs8I1kXNd7
         iIPC7+aX0pUp9rQR5RToPcI8fUtxW9/s5gnSDh+YBeV3aFo8IuIcJVL+Ca2jTMNfOCI6
         u62fkykHS5Gb0adZjJ4XhW1fRFwqounPFlqFGB2l9lwkfi2xzQ3DcVOfR2f84pXL4Jfe
         CpQajQW1LO1u23BR5Q9nY+XR9uiHQqQaN8a0K1CyUgc8NOo3uhzNQgLiJZyslZsB7wGA
         TLqg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.88 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=SzSTxISs/v9Kuj9RuppCgqRXMUcwTkAsjQmo+hHqhKI=;
        b=ojAOgTae9HmHXpc13c9+MR903S+07G0Sxmja6E4Bz5yijur6pacuBDL72QXX7uLKTY
         85JYPppGLdy5l3z7GegMbUusrgUeh/yB8s2e7idSJsszgSnPuFnIs+KUIApfxWFvqnLq
         H/xDdfbrdpsUx/BdxclIIhhVLmmYCtynEml6l35PR/qp9kCjm1F/PUh7RSh29+oUbrsp
         +USKtG+y6y3jdPUnZodqNbylrmPwgeHh6VCXlz2fk1po2tjysMIz59HSrdQSRtylTqWs
         jtinmkFxgeZk09cyheWeeTRrBEljewK5ef9unIx57ruPqLQVceNG4P4Xz+mR42OqdaUV
         GBCQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:mime-version:content-disposition:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=SzSTxISs/v9Kuj9RuppCgqRXMUcwTkAsjQmo+hHqhKI=;
        b=DggxVfIZNbXfos1UGYa4atwXzKkinkDZ/1j1uo6sfCsMY4jZZNyXAS8z0RRzK7+SNJ
         7YDqitGEaWzDAqPQiIyEX7c/bRq2HZKQSnMHtgqIBevPi1MJHLTfC+7C2JJvs2We12P6
         uh3TbgzarkhLspUhg+2DwFgmAQSLp4BOTeMPiL8MlwwCzQAKyrDWPYMAB9tEjpHo2z6S
         nIWlAKDZFwITo77bFpOPjBwZY9p0PxdTUh1lw1FZfDh8lSlmc7ohRmaQGze3OAkhccbQ
         ocAiim3o60urrvSweWEEuhszZTO/fywZ44FmeikfghuXwTVU1sAAi1nT0tyEVMblzly5
         1Ucw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531c2QrDCW1k5wQN+ooN1FQdWqebqFJurD5EwFWyTTtP8gzdLWgc
	2Pw+QtmXOUHIT7HdS8Fd0Xw=
X-Google-Smtp-Source: ABdhPJyJJqeiHnFWsjT/ZqaiTnjUkFVuCS1ZxKam/99ohqVL67X+qT60eRfRx6ss4e9HXugNaA0q8A==
X-Received: by 2002:aca:3743:: with SMTP id e64mr3199030oia.60.1615299614393;
        Tue, 09 Mar 2021 06:20:14 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6808:10d0:: with SMTP id s16ls5337630ois.7.gmail; Tue,
 09 Mar 2021 06:20:14 -0800 (PST)
X-Received: by 2002:aca:f4ce:: with SMTP id s197mr3137200oih.94.1615299613793;
        Tue, 09 Mar 2021 06:20:13 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1615299613; cv=none;
        d=google.com; s=arc-20160816;
        b=ZcZE0ODQjL+AXt9x7ZzuLn2t0SDdFrUekMWi7BfGcO0zmb7YyIjvYH8vqlcJhrGgo7
         41ZLVL+B4C1mtPzKcrfGinmDcd5aYdv3s6xAuAG3pn6W/fo9NO0Mt9HnBx9ZA/UTmvlc
         LvnuvfVM0nFV0emu7Jj40QxEnreU23EqCe/QFa13Z4Kk8j+SeXKvoMWwB9bF83NgZwcC
         ugQkpLVZdtaaMejKwdQ0GzyAkEW41xPm1sixREclVSkBe9pI5Hk3BYBzcsnWU53a+InZ
         qk1KDVdRisFW8io6m3jtsIlk/MiwS2ozlI0r1XZjyf0N4YkF746d7n6lva3lFtelHGQe
         P8GA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr;
        bh=5Q+tGgr1RG5AGZMH3UV4y9emh/GM2sJ/4hcH9E4+T8I=;
        b=BAc0jmOfV7wQ6qd+V/4Vx5eLWRDDeGaWlbHJbrpfXgQlpsyD7ZwfUMM3j03wvQncDB
         RGHN+yv2LrlxXF6lcZjygfskrsHAThMU7VY0g/lzJwNY6e50OA4+qYXbZFFihuRoN01F
         42I3wWra141AbsGX6L6oCvFaHo9nrrN0MNTORACuem+5qP6HK+ql6JYuyz1esCX6Ltbs
         qxR9/nSedVqYhy8u/gYPnWOvUd0/DX42k1wdohjQZdCpmm9zClOqQ3XS9642HbKyg0Zy
         gnls+mxDC4il4DkznyEzEXSj4/IyJgZwUcFSeRl+RnMAMpJ83KSghiHhn5ze/1VMyKwe
         DYfA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.88 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga01.intel.com (mga01.intel.com. [192.55.52.88])
        by gmr-mx.google.com with ESMTPS id h5si7220otk.1.2021.03.09.06.20.13
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 09 Mar 2021 06:20:13 -0800 (PST)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 192.55.52.88 as permitted sender) client-ip=192.55.52.88;
IronPort-SDR: 6XWI4Wjz/X8eqIx8znyGA1AgzqReq/KRbMS7k7nfH9S7api4FGTrb7bWXJ5/gGuLaXcYsmJyU5
 4iM6ii4zxGGQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9918"; a="208023020"
X-IronPort-AV: E=Sophos;i="5.81,234,1610438400"; 
   d="gz'50?scan'50,208,50";a="208023020"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
  by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 09 Mar 2021 06:20:11 -0800
IronPort-SDR: umGKduL9hAP76XMYfDaSk75b9ulCrvm8VLd70RY7MXEQHvjWodlWl8kGx41rbvvUB76HGXb+CR
 OMdD5UqmyYuw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,234,1610438400"; 
   d="gz'50?scan'50,208,50";a="371550878"
Received: from lkp-server01.sh.intel.com (HELO 3e992a48ca98) ([10.239.97.150])
  by orsmga006.jf.intel.com with ESMTP; 09 Mar 2021 06:20:09 -0800
Received: from kbuild by 3e992a48ca98 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1lJdDU-0001ff-GD; Tue, 09 Mar 2021 14:20:08 +0000
Date: Tue, 9 Mar 2021 22:19:12 +0800
From: kernel test robot <lkp@intel.com>
To: Karthikeyan Mani <kmani@codeaurora.org>
Cc: kbuild-all@01.org, clang-built-linux@googlegroups.com,
	Saravana Kannan <saravanak@google.com>
Subject: [intel-linux-intel-lts:4.19/android_r 16403/22085]
 sound/soc/soc-dapm.c:3678:12: warning: stack frame size of 2080 bytes in
 function 'snd_soc_dai_link_event'
Message-ID: <202103092201.pDqygSUI-lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="ew6BAiZeqk4r7MaW"
Content-Disposition: inline
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


--ew6BAiZeqk4r7MaW
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

Hi Karthikeyan,

FYI, the error/warning still remains.

tree:   https://github.com/intel/linux-intel-lts.git 4.19/android_r
head:   42da0a5bc28f55c05347ef8eb88d9e41f369333e
commit: 8c62976a01249b4da610adc1d4d2ead9185a6131 [16403/22085] ANDROID: GKI: ALSA: pcm: add locks for accessing runtime resource
config: x86_64-randconfig-a005-20210309 (attached as .config)
compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project 820f508b08d7c94b2dd7847e9710d2bc36d3dd45)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install x86_64 cross compiling tool for clang build
        # apt-get install binutils-x86-64-linux-gnu
        # https://github.com/intel/linux-intel-lts/commit/8c62976a01249b4da610adc1d4d2ead9185a6131
        git remote add intel-linux-intel-lts https://github.com/intel/linux-intel-lts.git
        git fetch --no-tags intel-linux-intel-lts 4.19/android_r
        git checkout 8c62976a01249b4da610adc1d4d2ead9185a6131
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=x86_64 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

>> sound/soc/soc-dapm.c:3678:12: warning: stack frame size of 2080 bytes in function 'snd_soc_dai_link_event' [-Wframe-larger-than=]
   static int snd_soc_dai_link_event(struct snd_soc_dapm_widget *w,
              ^
   1 warning generated.


vim +/snd_soc_dai_link_event +3678 sound/soc/soc-dapm.c

4ba1327ab8ce17 Mark Brown         2008-05-13  3677  
c74184ed30ecce Mark Brown         2012-04-04 @3678  static int snd_soc_dai_link_event(struct snd_soc_dapm_widget *w,
c74184ed30ecce Mark Brown         2012-04-04  3679  				  struct snd_kcontrol *kcontrol, int event)
c74184ed30ecce Mark Brown         2012-04-04  3680  {
c74184ed30ecce Mark Brown         2012-04-04  3681  	struct snd_soc_dapm_path *source_p, *sink_p;
c74184ed30ecce Mark Brown         2012-04-04  3682  	struct snd_soc_dai *source, *sink;
249dc49576fc95 Charles Keepax     2018-08-15  3683  	struct snd_soc_pcm_runtime *rtd = w->priv;
c66150824b8a80 Nikesh Oswal       2015-02-02  3684  	const struct snd_soc_pcm_stream *config = w->params + w->params_select;
c74184ed30ecce Mark Brown         2012-04-04  3685  	struct snd_pcm_substream substream;
9747cec21e2d55 Mark Brown         2012-04-26  3686  	struct snd_pcm_hw_params *params = NULL;
8053f21675b073 Nicolin Chen       2016-07-26  3687  	struct snd_pcm_runtime *runtime = NULL;
3ba66feb59810e Takashi Iwai       2018-07-25  3688  	unsigned int fmt;
0376916b7b2cff Charles Keepax     2018-09-06  3689  	int ret = 0;
c74184ed30ecce Mark Brown         2012-04-04  3690  
bf4edea863c435 Takashi Iwai       2013-11-07  3691  	if (WARN_ON(!config) ||
a3423b02cf745c Lars-Peter Clausen 2015-08-11  3692  	    WARN_ON(list_empty(&w->edges[SND_SOC_DAPM_DIR_OUT]) ||
a3423b02cf745c Lars-Peter Clausen 2015-08-11  3693  		    list_empty(&w->edges[SND_SOC_DAPM_DIR_IN])))
bf4edea863c435 Takashi Iwai       2013-11-07  3694  		return -EINVAL;
c74184ed30ecce Mark Brown         2012-04-04  3695  
c74184ed30ecce Mark Brown         2012-04-04  3696  	/* We only support a single source and sink, pick the first */
a3423b02cf745c Lars-Peter Clausen 2015-08-11  3697  	source_p = list_first_entry(&w->edges[SND_SOC_DAPM_DIR_OUT],
a3423b02cf745c Lars-Peter Clausen 2015-08-11  3698  				    struct snd_soc_dapm_path,
a3423b02cf745c Lars-Peter Clausen 2015-08-11  3699  				    list_node[SND_SOC_DAPM_DIR_OUT]);
a3423b02cf745c Lars-Peter Clausen 2015-08-11  3700  	sink_p = list_first_entry(&w->edges[SND_SOC_DAPM_DIR_IN],
a3423b02cf745c Lars-Peter Clausen 2015-08-11  3701  				    struct snd_soc_dapm_path,
a3423b02cf745c Lars-Peter Clausen 2015-08-11  3702  				    list_node[SND_SOC_DAPM_DIR_IN]);
c74184ed30ecce Mark Brown         2012-04-04  3703  
c74184ed30ecce Mark Brown         2012-04-04  3704  	source = source_p->source->priv;
c74184ed30ecce Mark Brown         2012-04-04  3705  	sink = sink_p->sink->priv;
c74184ed30ecce Mark Brown         2012-04-04  3706  
c74184ed30ecce Mark Brown         2012-04-04  3707  	/* Be a little careful as we don't want to overflow the mask array */
c74184ed30ecce Mark Brown         2012-04-04  3708  	if (config->formats) {
c74184ed30ecce Mark Brown         2012-04-04  3709  		fmt = ffs(config->formats) - 1;
c74184ed30ecce Mark Brown         2012-04-04  3710  	} else {
30a6a1a4eed170 Liam Girdwood      2012-11-19  3711  		dev_warn(w->dapm->dev, "ASoC: Invalid format %llx specified\n",
c74184ed30ecce Mark Brown         2012-04-04  3712  			 config->formats);
c74184ed30ecce Mark Brown         2012-04-04  3713  		fmt = 0;
c74184ed30ecce Mark Brown         2012-04-04  3714  	}
c74184ed30ecce Mark Brown         2012-04-04  3715  
c74184ed30ecce Mark Brown         2012-04-04  3716  	/* Currently very limited parameter selection */
9747cec21e2d55 Mark Brown         2012-04-26  3717  	params = kzalloc(sizeof(*params), GFP_KERNEL);
9747cec21e2d55 Mark Brown         2012-04-26  3718  	if (!params) {
9747cec21e2d55 Mark Brown         2012-04-26  3719  		ret = -ENOMEM;
9747cec21e2d55 Mark Brown         2012-04-26  3720  		goto out;
9747cec21e2d55 Mark Brown         2012-04-26  3721  	}
9747cec21e2d55 Mark Brown         2012-04-26  3722  	snd_mask_set(hw_param_mask(params, SNDRV_PCM_HW_PARAM_FORMAT), fmt);
c74184ed30ecce Mark Brown         2012-04-04  3723  
9747cec21e2d55 Mark Brown         2012-04-26  3724  	hw_param_interval(params, SNDRV_PCM_HW_PARAM_RATE)->min =
c74184ed30ecce Mark Brown         2012-04-04  3725  		config->rate_min;
9747cec21e2d55 Mark Brown         2012-04-26  3726  	hw_param_interval(params, SNDRV_PCM_HW_PARAM_RATE)->max =
c74184ed30ecce Mark Brown         2012-04-04  3727  		config->rate_max;
c74184ed30ecce Mark Brown         2012-04-04  3728  
9747cec21e2d55 Mark Brown         2012-04-26  3729  	hw_param_interval(params, SNDRV_PCM_HW_PARAM_CHANNELS)->min
c74184ed30ecce Mark Brown         2012-04-04  3730  		= config->channels_min;
9747cec21e2d55 Mark Brown         2012-04-26  3731  	hw_param_interval(params, SNDRV_PCM_HW_PARAM_CHANNELS)->max
c74184ed30ecce Mark Brown         2012-04-04  3732  		= config->channels_max;
c74184ed30ecce Mark Brown         2012-04-04  3733  
c74184ed30ecce Mark Brown         2012-04-04  3734  	memset(&substream, 0, sizeof(substream));
c74184ed30ecce Mark Brown         2012-04-04  3735  
8053f21675b073 Nicolin Chen       2016-07-26  3736  	/* Allocate a dummy snd_pcm_runtime for startup() and other ops() */
8053f21675b073 Nicolin Chen       2016-07-26  3737  	runtime = kzalloc(sizeof(*runtime), GFP_KERNEL);
8053f21675b073 Nicolin Chen       2016-07-26  3738  	if (!runtime) {
8053f21675b073 Nicolin Chen       2016-07-26  3739  		ret = -ENOMEM;
8053f21675b073 Nicolin Chen       2016-07-26  3740  		goto out;
8053f21675b073 Nicolin Chen       2016-07-26  3741  	}
8053f21675b073 Nicolin Chen       2016-07-26  3742  	substream.runtime = runtime;
249dc49576fc95 Charles Keepax     2018-08-15  3743  	substream.private_data = rtd;
8053f21675b073 Nicolin Chen       2016-07-26  3744  
c74184ed30ecce Mark Brown         2012-04-04  3745  	switch (event) {
c74184ed30ecce Mark Brown         2012-04-04  3746  	case SND_SOC_DAPM_PRE_PMU:
c74184ed30ecce Mark Brown         2012-04-04  3747  		substream.stream = SNDRV_PCM_STREAM_CAPTURE;
9900a4226c785d Kuninori Morimoto  2017-09-25  3748  		if (source->driver->ops->startup) {
9b8ef9f6b3fccc Jeeja KP           2015-10-20  3749  			ret = source->driver->ops->startup(&substream, source);
9b8ef9f6b3fccc Jeeja KP           2015-10-20  3750  			if (ret < 0) {
9b8ef9f6b3fccc Jeeja KP           2015-10-20  3751  				dev_err(source->dev,
9b8ef9f6b3fccc Jeeja KP           2015-10-20  3752  					"ASoC: startup() failed: %d\n", ret);
9b8ef9f6b3fccc Jeeja KP           2015-10-20  3753  				goto out;
9b8ef9f6b3fccc Jeeja KP           2015-10-20  3754  			}
9b8ef9f6b3fccc Jeeja KP           2015-10-20  3755  			source->active++;
9b8ef9f6b3fccc Jeeja KP           2015-10-20  3756  		}
93e6958a3674d2 Benoit Cousson     2014-07-08  3757  		ret = soc_dai_hw_params(&substream, params, source);
93e6958a3674d2 Benoit Cousson     2014-07-08  3758  		if (ret < 0)
9747cec21e2d55 Mark Brown         2012-04-26  3759  			goto out;
c74184ed30ecce Mark Brown         2012-04-04  3760  
c74184ed30ecce Mark Brown         2012-04-04  3761  		substream.stream = SNDRV_PCM_STREAM_PLAYBACK;
9900a4226c785d Kuninori Morimoto  2017-09-25  3762  		if (sink->driver->ops->startup) {
9b8ef9f6b3fccc Jeeja KP           2015-10-20  3763  			ret = sink->driver->ops->startup(&substream, sink);
9b8ef9f6b3fccc Jeeja KP           2015-10-20  3764  			if (ret < 0) {
9b8ef9f6b3fccc Jeeja KP           2015-10-20  3765  				dev_err(sink->dev,
9b8ef9f6b3fccc Jeeja KP           2015-10-20  3766  					"ASoC: startup() failed: %d\n", ret);
9b8ef9f6b3fccc Jeeja KP           2015-10-20  3767  				goto out;
9b8ef9f6b3fccc Jeeja KP           2015-10-20  3768  			}
9b8ef9f6b3fccc Jeeja KP           2015-10-20  3769  			sink->active++;
9b8ef9f6b3fccc Jeeja KP           2015-10-20  3770  		}
93e6958a3674d2 Benoit Cousson     2014-07-08  3771  		ret = soc_dai_hw_params(&substream, params, sink);
93e6958a3674d2 Benoit Cousson     2014-07-08  3772  		if (ret < 0)
9747cec21e2d55 Mark Brown         2012-04-26  3773  			goto out;
c74184ed30ecce Mark Brown         2012-04-04  3774  		break;
c74184ed30ecce Mark Brown         2012-04-04  3775  
c74184ed30ecce Mark Brown         2012-04-04  3776  	case SND_SOC_DAPM_POST_PMU:
da18396f949eca Mark Brown         2013-02-06  3777  		ret = snd_soc_dai_digital_mute(sink, 0,
da18396f949eca Mark Brown         2013-02-06  3778  					       SNDRV_PCM_STREAM_PLAYBACK);
c74184ed30ecce Mark Brown         2012-04-04  3779  		if (ret != 0 && ret != -ENOTSUPP)
30a6a1a4eed170 Liam Girdwood      2012-11-19  3780  			dev_warn(sink->dev, "ASoC: Failed to unmute: %d\n", ret);
9747cec21e2d55 Mark Brown         2012-04-26  3781  		ret = 0;
c74184ed30ecce Mark Brown         2012-04-04  3782  		break;
c74184ed30ecce Mark Brown         2012-04-04  3783  
c74184ed30ecce Mark Brown         2012-04-04  3784  	case SND_SOC_DAPM_PRE_PMD:
da18396f949eca Mark Brown         2013-02-06  3785  		ret = snd_soc_dai_digital_mute(sink, 1,
da18396f949eca Mark Brown         2013-02-06  3786  					       SNDRV_PCM_STREAM_PLAYBACK);
c74184ed30ecce Mark Brown         2012-04-04  3787  		if (ret != 0 && ret != -ENOTSUPP)
30a6a1a4eed170 Liam Girdwood      2012-11-19  3788  			dev_warn(sink->dev, "ASoC: Failed to mute: %d\n", ret);
9747cec21e2d55 Mark Brown         2012-04-26  3789  		ret = 0;
9b8ef9f6b3fccc Jeeja KP           2015-10-20  3790  
9b8ef9f6b3fccc Jeeja KP           2015-10-20  3791  		source->active--;
9900a4226c785d Kuninori Morimoto  2017-09-25  3792  		if (source->driver->ops->shutdown) {
9b8ef9f6b3fccc Jeeja KP           2015-10-20  3793  			substream.stream = SNDRV_PCM_STREAM_CAPTURE;
9b8ef9f6b3fccc Jeeja KP           2015-10-20  3794  			source->driver->ops->shutdown(&substream, source);
9b8ef9f6b3fccc Jeeja KP           2015-10-20  3795  		}
9b8ef9f6b3fccc Jeeja KP           2015-10-20  3796  
9b8ef9f6b3fccc Jeeja KP           2015-10-20  3797  		sink->active--;
9900a4226c785d Kuninori Morimoto  2017-09-25  3798  		if (sink->driver->ops->shutdown) {
9b8ef9f6b3fccc Jeeja KP           2015-10-20  3799  			substream.stream = SNDRV_PCM_STREAM_PLAYBACK;
9b8ef9f6b3fccc Jeeja KP           2015-10-20  3800  			sink->driver->ops->shutdown(&substream, sink);
9b8ef9f6b3fccc Jeeja KP           2015-10-20  3801  		}
c74184ed30ecce Mark Brown         2012-04-04  3802  		break;
c74184ed30ecce Mark Brown         2012-04-04  3803  
c74184ed30ecce Mark Brown         2012-04-04  3804  	default:
a6ed0608bd289b Takashi Iwai       2013-11-06  3805  		WARN(1, "Unknown event %d\n", event);
75881df3fd7708 Sudip Mukherjee    2015-09-10  3806  		ret = -EINVAL;
c74184ed30ecce Mark Brown         2012-04-04  3807  	}
c74184ed30ecce Mark Brown         2012-04-04  3808  
9747cec21e2d55 Mark Brown         2012-04-26  3809  out:
8053f21675b073 Nicolin Chen       2016-07-26  3810  	kfree(runtime);
9747cec21e2d55 Mark Brown         2012-04-26  3811  	kfree(params);
9747cec21e2d55 Mark Brown         2012-04-26  3812  	return ret;
c74184ed30ecce Mark Brown         2012-04-04  3813  }
c74184ed30ecce Mark Brown         2012-04-04  3814  

:::::: The code at line 3678 was first introduced by commit
:::::: c74184ed30ecce2a5e9ae9aa22cb5e3942e0c7c7 ASoC: core: Support transparent CODEC<->CODEC DAI links

:::::: TO: Mark Brown <broonie@opensource.wolfsonmicro.com>
:::::: CC: Mark Brown <broonie@opensource.wolfsonmicro.com>

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202103092201.pDqygSUI-lkp%40intel.com.

--ew6BAiZeqk4r7MaW
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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

--ew6BAiZeqk4r7MaW--
