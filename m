Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBTFD475AKGQEG466NHQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x73c.google.com (mail-qk1-x73c.google.com [IPv6:2607:f8b0:4864:20::73c])
	by mail.lfdr.de (Postfix) with ESMTPS id 299C2263E2D
	for <lists+clang-built-linux@lfdr.de>; Thu, 10 Sep 2020 09:12:13 +0200 (CEST)
Received: by mail-qk1-x73c.google.com with SMTP id r184sf2942529qka.21
        for <lists+clang-built-linux@lfdr.de>; Thu, 10 Sep 2020 00:12:13 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1599721932; cv=pass;
        d=google.com; s=arc-20160816;
        b=YBD/lbFBHmkb9T8ezSRPxCavHKPyqUv17ynhacA/JXbzg6V3n/v0zWnagVY2QXKjb5
         Oc0B2uzs9hCvXvFUma/1S7XziVF8afqbX9v5Mz2UMFb4q8x7T7QuBUHgrhpnIY54mDMF
         sBgZ5KJ1fvCVV3fHId8UOA2nVMvLa0JUh3b66W3GJX13IHRRxawK47KRlWPCNdIbKo5A
         7LsVk9Np7uzLw0chBVUaLU04HTlQcNs/8PPCnb44Wv8lfmxrMZIbaT9E1k4A46hwxC4B
         +GLxTFW7Vkg+1MXsJ9tRseGQjlKkh7g87G8Y4uXQgUoUpBHAJ1XoG/3QmbI7rmOHYlCr
         ydiA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr:sender:dkim-signature;
        bh=TlHfHTMjikx+cMpOJh3bUzPyPign9S2cK3SvHrRwZSo=;
        b=VSODwBUh2mGX0TPcFCUY8rCghfzpQOcwcLv56eY8IECKq4KsXQtU1UNM7CqamSP27/
         qSAYCDEoChCxJRsfQ9BjQXgCnUC8Qw1mzcMLVa7SDL4+bHN1TehrGA1gzBPG7Fn16tTi
         HuIsUsRTtua2GUBtEGOpVQzSy7Gc3TkbbO/4Bv6qVewPr3txAYK+8lKBHtjMeJMMHEVa
         KO7SHdSI/VZyoaBiEFlckhFcTgHk8AmfAM3fXjGY5lvTO+FL/MB1RY6yHKDPTbW6mRT3
         IHIe2/fzkKSMPsZIWOe2Gdjjulhi5K8m4hpjxLxoNEJ/tLiwy0LaUnZy+4KwSSpP99i7
         9JVg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.93 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=TlHfHTMjikx+cMpOJh3bUzPyPign9S2cK3SvHrRwZSo=;
        b=k0Nyk849BNJemdhkF34obqA8xHHEIcA7J5qtIFPcBdEPgdx+ZqhRqZpwegTYVsKHSB
         Fy1ibJ3r0m7t3lLTQ33axp1HiodB8fba06vD1slk+8Xn2cMI+FuclDyEBFNJZ5mH+7gW
         HBYocuqnITfSHGpM2Jf2HEhIrugIi8a4VmJ+5cLW9DxFG7ezXPns/09CU9PH/cGClI4I
         Nr8HxEUTPM7BK74gMZOq1+1Gy9luawSqbGWF2Byt5ZSDRMyS3TziQeOSoTsM0CyCLbTv
         JUkAaIOcrai6YdtSLaUDV4mHlTStqTf5byugG40Vznxvxiobs4W0ia03Mg8Kki8wAZi3
         2lnQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:references:mime-version:content-disposition
         :in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=TlHfHTMjikx+cMpOJh3bUzPyPign9S2cK3SvHrRwZSo=;
        b=jzfq9Xmak9KwfFMiRUQ0jI6UGnX9OFnO72y6eppb4o9QQbY06zAeTubS/NU5WCdbsB
         4h3NgMTySLHredbtHajB9AmCndkxy+dddNb5z/88BYvPJQQLjbgioXP0+d/od/gB05s6
         B/xh8QXQCxwBi9BYgPH3Ydz+rQfGJjvr09qSbvyTDspoRnL+1DwpD29sKhWLNKh5Hkpp
         alfZcoWKgg2SL7BcO6RJ7xlTzkZ1QLt25Xwk3jphGN0PAUzlHFHrbRlCBwKQm8P0b4rW
         pXYZzrx9GlJBRqisu+IOykXJTW2JHYv49vI+I1ENZXEN/I7dzZXlS3cIWJ15Ig1DzafY
         nmRg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5305YNFOmZn9EMOTzuzlWZdKLP5e1HNhNINAMerDrlW9PR60iDXg
	f16N6YA2dq8KJxEvcR0v7wQ=
X-Google-Smtp-Source: ABdhPJx4BNE598izfs1SIMmUfomepAb8VRDQb6W1RcdBK7ubdT6GpYfemLk8tdeF3aw25AJECP/mUA==
X-Received: by 2002:ac8:7108:: with SMTP id z8mr6929762qto.55.1599721932105;
        Thu, 10 Sep 2020 00:12:12 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:620a:146b:: with SMTP id j11ls2591412qkl.0.gmail; Thu,
 10 Sep 2020 00:12:11 -0700 (PDT)
X-Received: by 2002:ae9:f40d:: with SMTP id y13mr6611620qkl.165.1599721931563;
        Thu, 10 Sep 2020 00:12:11 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1599721931; cv=none;
        d=google.com; s=arc-20160816;
        b=I0MbVspmn+mF+r/AwDuho0CVGicLgblZn+y5vwnRTxNaShqyZ7097DTMnQZ4PLgNjR
         BfNTMe5HnKl38aaC6OlcpCU0AljQoK/8eV4ZSHTbcassIid2PeYuBo/PZ/bMbLojiPPu
         dpB0R2QbPc2putoLd8PTt8/tb31ir8Fp2ZozANvAcmo0GU7WZnhxlt/whIZLHJ/v9vpY
         9DNVCwGaYPbStoR2nNerMhlSHC4LZo9drK2iJI6t8obc5lNxHDHZDF2nv9z+8hUHxmZY
         BFzp3fNJNFH/t3ZW0WU+ozzSWH7DoGfPyZ/8KUVNdk0AzfNNieCWkg9IfwCSIJ9vdE1S
         4dZw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:ironport-sdr:ironport-sdr;
        bh=UvMRho5Tcd8CZK/Wnab03uZb8+i6KWOBbvp5qoLPNUU=;
        b=ObcIltXorERQVSOUSxW8GSn9eMwJC/Mzg+eh9o/rwMj1h7Pg1Qndw1Qk6XAjx5L874
         9WbDnqL2q/Oq/0DthkO5rSjEwGvC/IuWTct41pc3cdESnSe3ik9O/NoacXun9oUT/j4w
         MOtnUuISwI9FEFta12CE8FElzGeXdoYW+PfOdYYugvghxbB8BSrR4TCJLm9QctSLjUOz
         yHCyeVy3/W33MUTj88Xft46BHYDVKxxXp0TxKeYpCU/JeHcjDrX4LHlBX4/9XAtnLPCP
         mo74xj2nGFmFkcJbTrr445OMlAAp+3z+J+DUf0Ul3FHUAEw8g6TU4EQuPFsSHYI1RaWE
         fBMw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.93 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga11.intel.com (mga11.intel.com. [192.55.52.93])
        by gmr-mx.google.com with ESMTPS id h17si321293qtu.2.2020.09.10.00.12.11
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 10 Sep 2020 00:12:11 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 192.55.52.93 as permitted sender) client-ip=192.55.52.93;
IronPort-SDR: jAS7TQW3FzYh7GjklRc1WvaiqOKtn//cfFQqW8vLuR12RkZ2WvE2TlnuhIyuCMDJBfNLDo6FQV
 wJInC1yLW52w==
X-IronPort-AV: E=McAfee;i="6000,8403,9739"; a="155942585"
X-IronPort-AV: E=Sophos;i="5.76,412,1592895600"; 
   d="gz'50?scan'50,208,50";a="155942585"
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
  by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 10 Sep 2020 00:12:09 -0700
IronPort-SDR: WhgHRXCu/mrm1ss+pj+1VjfI3+TMq/wz2/1mr4hGiwJypj65TMOWKvxrsvZl8/77iibtBmnXar
 IuO+j/qM/akg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.76,412,1592895600"; 
   d="gz'50?scan'50,208,50";a="334086727"
Received: from lkp-server01.sh.intel.com (HELO 12ff3cf3f2e9) ([10.239.97.150])
  by orsmga008.jf.intel.com with ESMTP; 10 Sep 2020 00:12:06 -0700
Received: from kbuild by 12ff3cf3f2e9 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1kGGkY-0000lg-4N; Thu, 10 Sep 2020 07:12:06 +0000
Date: Thu, 10 Sep 2020 15:11:37 +0800
From: kernel test robot <lkp@intel.com>
To: Bryan O'Donoghue <bryan.odonoghue@linaro.org>, kvalo@codeaurora.org,
	wcn36xx@lists.infradead.org, linux-wireless@vger.kernel.org
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	bryan.odonoghue@linaro.org, shawn.guo@linaro.org,
	loic.poulain@linaro.org
Subject: Re: [PATCH v4 3/7] wcn36xx: Move BSS parameter setup to
 wcn36xx_smd_set_bss_params()
Message-ID: <202009101556.8ouwjqMB%lkp@intel.com>
References: <20200909153628.2904888-4-bryan.odonoghue@linaro.org>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="opJtzjQTFsWo+cga"
Content-Disposition: inline
In-Reply-To: <20200909153628.2904888-4-bryan.odonoghue@linaro.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lkp@intel.com designates 192.55.52.93 as permitted
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


--opJtzjQTFsWo+cga
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

Hi Bryan,

I love your patch! Perhaps something to improve:

[auto build test WARNING on 160b351d75cb50a0dd2abf9b63e1891935aa9e4a]

url:    https://github.com/0day-ci/linux/commits/Bryan-O-Donoghue/wcn36xx-Tidy-up-BSS-STA-config/20200910-011120
base:    160b351d75cb50a0dd2abf9b63e1891935aa9e4a
config: powerpc-randconfig-r011-20200909 (attached as .config)
compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project 0a5dc7effb191eff740e0e7ae7bd8e1f6bdb3ad9)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install powerpc cross compiling tool for clang build
        # apt-get install binutils-powerpc-linux-gnu
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=powerpc 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

   drivers/net/wireless/ath/wcn36xx/smd.c:150:1: warning: no previous prototype for function 'wcn36xx_smd_set_bss_vht_params' [-Wmissing-prototypes]
   wcn36xx_smd_set_bss_vht_params(struct ieee80211_vif *vif,
   ^
   drivers/net/wireless/ath/wcn36xx/smd.c:149:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   void
   ^
   static 
   drivers/net/wireless/ath/wcn36xx/smd.c:186:6: warning: no previous prototype for function 'wcn36xx_smd_set_sta_vht_params' [-Wmissing-prototypes]
   void wcn36xx_smd_set_sta_vht_params(struct wcn36xx *wcn,
        ^
   drivers/net/wireless/ath/wcn36xx/smd.c:186:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   void wcn36xx_smd_set_sta_vht_params(struct wcn36xx *wcn,
   ^
   static 
   drivers/net/wireless/ath/wcn36xx/smd.c:208:6: warning: no previous prototype for function 'wcn36xx_smd_set_sta_ht_ldpc_params' [-Wmissing-prototypes]
   void wcn36xx_smd_set_sta_ht_ldpc_params(struct ieee80211_sta *sta,
        ^
   drivers/net/wireless/ath/wcn36xx/smd.c:208:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   void wcn36xx_smd_set_sta_ht_ldpc_params(struct ieee80211_sta *sta,
   ^
   static 
   drivers/net/wireless/ath/wcn36xx/smd.c:233:6: warning: no previous prototype for function 'wcn36xx_smd_set_sta_default_vht_params' [-Wmissing-prototypes]
   void wcn36xx_smd_set_sta_default_vht_params(struct wcn36xx *wcn,
        ^
   drivers/net/wireless/ath/wcn36xx/smd.c:233:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   void wcn36xx_smd_set_sta_default_vht_params(struct wcn36xx *wcn,
   ^
   static 
   drivers/net/wireless/ath/wcn36xx/smd.c:249:6: warning: no previous prototype for function 'wcn36xx_smd_set_sta_default_ht_ldpc_params' [-Wmissing-prototypes]
   void wcn36xx_smd_set_sta_default_ht_ldpc_params(struct wcn36xx *wcn,
        ^
   drivers/net/wireless/ath/wcn36xx/smd.c:249:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   void wcn36xx_smd_set_sta_default_ht_ldpc_params(struct wcn36xx *wcn,
   ^
   static 
   drivers/net/wireless/ath/wcn36xx/smd.c:1253:1: warning: no previous prototype for function 'wcn36xx_smd_set_sta_params_v1' [-Wmissing-prototypes]
   wcn36xx_smd_set_sta_params_v1(struct wcn36xx *wcn,
   ^
   drivers/net/wireless/ath/wcn36xx/smd.c:1252:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   void
   ^
   static 
>> drivers/net/wireless/ath/wcn36xx/smd.c:1387:6: warning: no previous prototype for function 'wcn36xx_smd_set_bss_params' [-Wmissing-prototypes]
   void wcn36xx_smd_set_bss_params(struct wcn36xx *wcn,
        ^
   drivers/net/wireless/ath/wcn36xx/smd.c:1387:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   void wcn36xx_smd_set_bss_params(struct wcn36xx *wcn,
   ^
   static 
   7 warnings generated.

# https://github.com/0day-ci/linux/commit/1c12f515815cc2fa84d00b7c6aa77bf5dc5f1d20
git remote add linux-review https://github.com/0day-ci/linux
git fetch --no-tags linux-review Bryan-O-Donoghue/wcn36xx-Tidy-up-BSS-STA-config/20200910-011120
git checkout 1c12f515815cc2fa84d00b7c6aa77bf5dc5f1d20
vim +/wcn36xx_smd_set_bss_params +1387 drivers/net/wireless/ath/wcn36xx/smd.c

  1251	
  1252	void
> 1253	wcn36xx_smd_set_sta_params_v1(struct wcn36xx *wcn,
  1254				      struct ieee80211_vif *vif,
  1255				      struct ieee80211_sta *sta,
  1256				      struct wcn36xx_hal_config_sta_params_v1 *sta_par)
  1257	{
  1258		struct wcn36xx_sta *sta_priv = NULL;
  1259		struct wcn36xx_hal_config_sta_params sta_par_v0;
  1260	
  1261		wcn36xx_smd_set_sta_params(wcn, vif, sta, &sta_par_v0);
  1262		wcn36xx_smd_convert_sta_to_v1(wcn, &sta_par_v0, sta_par);
  1263	
  1264		if (sta) {
  1265			sta_priv = wcn36xx_sta_to_priv(sta);
  1266			wcn36xx_smd_set_sta_vht_params(wcn, sta, sta_par);
  1267			wcn36xx_smd_set_sta_ht_ldpc_params(sta, sta_par);
  1268			memcpy(&sta_par->supported_rates, &sta_priv->supported_rates,
  1269			       sizeof(sta_par->supported_rates));
  1270		} else {
  1271			wcn36xx_set_default_rates_v1(&sta_par->supported_rates);
  1272			wcn36xx_smd_set_sta_default_vht_params(wcn, sta_par);
  1273			wcn36xx_smd_set_sta_default_ht_ldpc_params(wcn, sta_par);
  1274		}
  1275	}
  1276	
  1277	static int wcn36xx_smd_config_sta_rsp(struct wcn36xx *wcn,
  1278					      struct ieee80211_sta *sta,
  1279					      void *buf,
  1280					      size_t len)
  1281	{
  1282		struct wcn36xx_hal_config_sta_rsp_msg *rsp;
  1283		struct config_sta_rsp_params *params;
  1284		struct wcn36xx_sta *sta_priv = wcn36xx_sta_to_priv(sta);
  1285	
  1286		if (len < sizeof(*rsp))
  1287			return -EINVAL;
  1288	
  1289		rsp = (struct wcn36xx_hal_config_sta_rsp_msg *)buf;
  1290		params = &rsp->params;
  1291	
  1292		if (params->status != WCN36XX_FW_MSG_RESULT_SUCCESS) {
  1293			wcn36xx_warn("hal config sta response failure: %d\n",
  1294				     params->status);
  1295			return -EIO;
  1296		}
  1297	
  1298		sta_priv->sta_index = params->sta_index;
  1299		sta_priv->dpu_desc_index = params->dpu_index;
  1300		sta_priv->ucast_dpu_sign = params->uc_ucast_sig;
  1301	
  1302		wcn36xx_dbg(WCN36XX_DBG_HAL,
  1303			    "hal config sta rsp status %d sta_index %d bssid_index %d uc_ucast_sig %d p2p %d\n",
  1304			    params->status, params->sta_index, params->bssid_index,
  1305			    params->uc_ucast_sig, params->p2p);
  1306	
  1307		return 0;
  1308	}
  1309	
  1310	static int wcn36xx_smd_config_sta_v1(struct wcn36xx *wcn,
  1311					     struct ieee80211_vif *vif,
  1312					     struct ieee80211_sta *sta)
  1313	{
  1314		struct wcn36xx_hal_config_sta_req_msg_v1 msg_body;
  1315		struct wcn36xx_hal_config_sta_params_v1 *sta_params;
  1316	
  1317		INIT_HAL_MSG(msg_body, WCN36XX_HAL_CONFIG_STA_REQ);
  1318		msg_body.header.len -= WCN36XX_DIFF_STA_PARAMS_V1_NOVHT;
  1319	
  1320		sta_params = &msg_body.sta_params;
  1321	
  1322		wcn36xx_smd_set_sta_params_v1(wcn, vif, sta, sta_params);
  1323	
  1324		PREPARE_HAL_BUF(wcn->hal_buf, msg_body);
  1325	
  1326		wcn36xx_dbg(WCN36XX_DBG_HAL,
  1327			    "hal config sta v1 action %d sta_index %d bssid_index %d bssid %pM type %d mac %pM aid %d\n",
  1328			    sta_params->action, sta_params->sta_index, sta_params->bssid_index,
  1329			    sta_params->bssid, sta_params->type, sta_params->mac, sta_params->aid);
  1330	
  1331		return wcn36xx_smd_send_and_wait(wcn, msg_body.header.len);
  1332	}
  1333	
  1334	static int wcn36xx_smd_config_sta_v0(struct wcn36xx *wcn,
  1335					     struct ieee80211_vif *vif,
  1336					     struct ieee80211_sta *sta)
  1337	{
  1338		struct wcn36xx_hal_config_sta_req_msg msg;
  1339		struct wcn36xx_hal_config_sta_params *sta_params;
  1340	
  1341		INIT_HAL_MSG(msg, WCN36XX_HAL_CONFIG_STA_REQ);
  1342	
  1343		sta_params = &msg.sta_params;
  1344	
  1345		wcn36xx_smd_set_sta_params(wcn, vif, sta, sta_params);
  1346	
  1347		PREPARE_HAL_BUF(wcn->hal_buf, msg);
  1348	
  1349		wcn36xx_dbg(WCN36XX_DBG_HAL,
  1350			    "hal config sta action %d sta_index %d bssid_index %d bssid %pM type %d mac %pM aid %d\n",
  1351			    sta_params->action, sta_params->sta_index,
  1352			    sta_params->bssid_index, sta_params->bssid,
  1353			    sta_params->type, sta_params->mac, sta_params->aid);
  1354	
  1355		return wcn36xx_smd_send_and_wait(wcn, msg.header.len);
  1356	}
  1357	
  1358	int wcn36xx_smd_config_sta(struct wcn36xx *wcn, struct ieee80211_vif *vif,
  1359				   struct ieee80211_sta *sta)
  1360	{
  1361		int ret;
  1362	
  1363		mutex_lock(&wcn->hal_mutex);
  1364	
  1365		if (!wcn36xx_is_fw_version(wcn, 1, 2, 2, 24))
  1366			ret = wcn36xx_smd_config_sta_v1(wcn, vif, sta);
  1367		else
  1368			ret = wcn36xx_smd_config_sta_v0(wcn, vif, sta);
  1369	
  1370		if (ret) {
  1371			wcn36xx_err("Sending hal_config_sta failed\n");
  1372			goto out;
  1373		}
  1374		ret = wcn36xx_smd_config_sta_rsp(wcn,
  1375						 sta,
  1376						 wcn->hal_buf,
  1377						 wcn->hal_rsp_len);
  1378		if (ret) {
  1379			wcn36xx_err("hal_config_sta response failed err=%d\n", ret);
  1380			goto out;
  1381		}
  1382	out:
  1383		mutex_unlock(&wcn->hal_mutex);
  1384		return ret;
  1385	}
  1386	
> 1387	void wcn36xx_smd_set_bss_params(struct wcn36xx *wcn,
  1388					struct ieee80211_vif *vif,
  1389					struct ieee80211_sta *sta,
  1390					const u8 *bssid,
  1391					bool update,
  1392					struct wcn36xx_hal_config_bss_params *bss)
  1393	{
  1394		struct wcn36xx_vif *vif_priv = wcn36xx_vif_to_priv(vif);
  1395		struct wcn36xx_hal_config_sta_params *sta_params;
  1396	
  1397		sta_params = &bss->sta;
  1398	
  1399		WARN_ON(is_zero_ether_addr(bssid));
  1400	
  1401		memcpy(&bss->bssid, bssid, ETH_ALEN);
  1402	
  1403		memcpy(bss->self_mac_addr, vif->addr, ETH_ALEN);
  1404	
  1405		if (vif->type == NL80211_IFTYPE_STATION) {
  1406			bss->bss_type = WCN36XX_HAL_INFRASTRUCTURE_MODE;
  1407	
  1408			/* STA */
  1409			bss->oper_mode = 1;
  1410			bss->wcn36xx_hal_persona = WCN36XX_HAL_STA_MODE;
  1411		} else if (vif->type == NL80211_IFTYPE_AP ||
  1412			   vif->type == NL80211_IFTYPE_MESH_POINT) {
  1413			bss->bss_type = WCN36XX_HAL_INFRA_AP_MODE;
  1414	
  1415			/* AP */
  1416			bss->oper_mode = 0;
  1417			bss->wcn36xx_hal_persona = WCN36XX_HAL_STA_SAP_MODE;
  1418		} else if (vif->type == NL80211_IFTYPE_ADHOC) {
  1419			bss->bss_type = WCN36XX_HAL_IBSS_MODE;
  1420	
  1421			/* STA */
  1422			bss->oper_mode = 1;
  1423		} else {
  1424			wcn36xx_warn("Unknown type for bss config: %d\n", vif->type);
  1425		}
  1426	
  1427		if (vif->type == NL80211_IFTYPE_STATION)
  1428			wcn36xx_smd_set_bss_nw_type(wcn, sta, bss);
  1429		else
  1430			bss->nw_type = WCN36XX_HAL_11N_NW_TYPE;
  1431	
  1432		bss->short_slot_time_supported = vif->bss_conf.use_short_slot;
  1433		bss->lla_coexist = 0;
  1434		bss->llb_coexist = 0;
  1435		bss->llg_coexist = 0;
  1436		bss->rifs_mode = 0;
  1437		bss->beacon_interval = vif->bss_conf.beacon_int;
  1438		bss->dtim_period = vif_priv->dtim_period;
  1439	
  1440		wcn36xx_smd_set_bss_ht_params(vif, sta, bss);
  1441	
  1442		bss->oper_channel = WCN36XX_HW_CHANNEL(wcn);
  1443	
  1444		if (conf_is_ht40_minus(&wcn->hw->conf))
  1445			bss->ext_channel = IEEE80211_HT_PARAM_CHA_SEC_BELOW;
  1446		else if (conf_is_ht40_plus(&wcn->hw->conf))
  1447			bss->ext_channel = IEEE80211_HT_PARAM_CHA_SEC_ABOVE;
  1448		else
  1449			bss->ext_channel = IEEE80211_HT_PARAM_CHA_SEC_NONE;
  1450	
  1451		bss->reserved = 0;
  1452	
  1453		/* wcn->ssid is only valid in AP and IBSS mode */
  1454		bss->ssid.length = vif_priv->ssid.length;
  1455		memcpy(bss->ssid.ssid, vif_priv->ssid.ssid, vif_priv->ssid.length);
  1456	
  1457		bss->obss_prot_enabled = 0;
  1458		bss->rmf = 0;
  1459		bss->max_probe_resp_retry_limit = 0;
  1460		bss->hidden_ssid = vif->bss_conf.hidden_ssid;
  1461		bss->proxy_probe_resp = 0;
  1462		bss->edca_params_valid = 0;
  1463	
  1464		/* FIXME: set acbe, acbk, acvi and acvo */
  1465	
  1466		bss->ext_set_sta_key_param_valid = 0;
  1467	
  1468		/* FIXME: set ext_set_sta_key_param */
  1469	
  1470		bss->spectrum_mgt_enable = 0;
  1471		bss->tx_mgmt_power = 0;
  1472		bss->max_tx_power = WCN36XX_MAX_POWER(wcn);
  1473		bss->action = update;
  1474	
  1475		vif_priv->bss_type = bss->bss_type;
  1476	}
  1477	

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202009101556.8ouwjqMB%25lkp%40intel.com.

--opJtzjQTFsWo+cga
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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
AA==

--opJtzjQTFsWo+cga--
