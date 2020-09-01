Return-Path: <clang-built-linux+bncBD6LJ6GMUUPBBVGQXD5AKGQEYSE3UFI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43a.google.com (mail-pf1-x43a.google.com [IPv6:2607:f8b0:4864:20::43a])
	by mail.lfdr.de (Postfix) with ESMTPS id 2821D258D0B
	for <lists+clang-built-linux@lfdr.de>; Tue,  1 Sep 2020 12:54:14 +0200 (CEST)
Received: by mail-pf1-x43a.google.com with SMTP id k12sf407710pfu.19
        for <lists+clang-built-linux@lfdr.de>; Tue, 01 Sep 2020 03:54:14 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1598957652; cv=pass;
        d=google.com; s=arc-20160816;
        b=mraoKCAZvoYbZfAMuaQhw1h/fBwMfsWp35hrmG/sV4tDUhGxGHctS2h+Dn0ZqEdcmK
         tQOvPi2/qRl2iJm7Y+E3gnMwWVwpfUikJ/2rsObW1WGtS/KRJ4BCnHs9wt31MMZUrPI4
         1HKlVfRM+GkjTr5VNZ1rYeE94OJhFsJHBrTZeFGoCwL6j1jUcyoYxG+KVr3yeo907D/k
         Zp4oVdO6JKlFoAvTsHJxlrswlc7b/O5kcoUfAWxEiOQ/teBR5AzHx8c95lnUGz2rLeHt
         2F3KrY8qk0CJAMJMWN1SoyVF88HsefYpTgnuFclorhiSfUt51AD/7k9XgH6GZQW+Jdca
         lRWw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:organization:from
         :references:cc:to:subject:ironport-sdr:ironport-sdr:sender
         :dkim-signature;
        bh=4NOhvPLgb4FBgeQ5+3uszCodZXkM/sHzFeXe36p214Y=;
        b=ks3qSPvrBim7uxTB/TM7ppfIZZAzZBUs5GHn5g6ILnb6CNLZUJuZfiZosZ6dJuDQxi
         A7sizdBfrcxwR30KNTondqKLTEDOmWQbVVBGLHxNn1NoVdqxt+FKev+gcxkP19R0zNws
         oOwW+T+ZUi1Fo83R1jo4M8iEmFnJhqSYzBoohwZiYA6ffdq33U5JmHz8wfFcdPIVHNgP
         sIC32s7sPpEcue/B4i5XFveuPRF+r2GfSbpCQgDqAtKVM92xzA+08eUkZpMFI76Nh598
         +xbP9P6Bbag8AUz8SlYLq8LvnRdMgVMnFGQDoCIXXqAs4v4lJu/18RKa9a9Y4k0OGdd5
         zHHA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of adrian.hunter@intel.com designates 134.134.136.20 as permitted sender) smtp.mailfrom=adrian.hunter@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:subject:to:cc:references:from
         :organization:message-id:date:user-agent:mime-version:in-reply-to
         :content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=4NOhvPLgb4FBgeQ5+3uszCodZXkM/sHzFeXe36p214Y=;
        b=ioBZ9P8WB94rA49LpFQrgCyTsD/iGsHPiH5FFoZHqyzvUJUS/vreCKhUK471qkgwfv
         fg6EtJaMk31yMvW9Du+froIrPEqlv1ZGiJNkwbTEToMUT4qYc0XPg2I1Fp4V9ZutO5Ac
         LORUyFIv8tZ+pADW+hBn0co5yI/hhTJllgpL64gfAEV8ug8D5nHt18KbJ0jM+exx1uBW
         SH2KIWyONNO4pyTpeBZs5YcmhJemPY4Zliaro2FlLidrIYaWxTZ3jc+u8XsYYZfd5uaw
         f/Hplr25UC3Olhkry1MgpVVTLKJjte+gqaxJ0tTGfDZrmVEdG6XKyjQrsjCwaCMkJL+B
         0rcQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:subject:to:cc
         :references:from:organization:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=4NOhvPLgb4FBgeQ5+3uszCodZXkM/sHzFeXe36p214Y=;
        b=rUAzW+mhy2b7RoSobSonZqdEMgB2FlQclDFqvaBBdqk/UcPl+n84rkMrcDLf3BY+La
         nb327Lu8OSLU03CihZDoCV3jObpD2GlatCRxiQafi3X3iucTlxb0zC6WoVjgCUkfRtDz
         6DZrh98NPA/gRL8FL6urmVqgFV49O5KqNq6sC84zTgYAeXXn0OnmH+LSmX5c3QlVJdUA
         7NE7fxW+OmzW3nLnQ6m6AmDVgrtPNl2ZKpRi+byoDDaRuXbYeUoLZTOksFZzJmfhYnJ2
         KFaKvP0HkM0o/v7Lbenm/KOAnit4AOdOZCbiRyTAWgvHP8UsIfQQb+qpmpWrMkwbmDtR
         lmcA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531M0L40KxN4tCA55qi7wYH7BP//Tlm7TILopVCF4p1Eh/dTRLxL
	BUQnnaqPKZtg+ww2Zld3nH8=
X-Google-Smtp-Source: ABdhPJzl7SeDwy6i7pwvfEL2/5jThlWu06hjpcFnTNOijy+zVM2gNJYKMWaSczIIUO0P+JOvbxLv1w==
X-Received: by 2002:a62:82c8:: with SMTP id w191mr1361678pfd.147.1598957652663;
        Tue, 01 Sep 2020 03:54:12 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aa7:96d9:: with SMTP id h25ls448831pfq.0.gmail; Tue, 01 Sep
 2020 03:54:12 -0700 (PDT)
X-Received: by 2002:a63:f30a:: with SMTP id l10mr984051pgh.345.1598957652130;
        Tue, 01 Sep 2020 03:54:12 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1598957652; cv=none;
        d=google.com; s=arc-20160816;
        b=J16/Eqp9nNcFuoL4n1/2eI6w1FQCIxu8p9NFjKm1mYlviW1XzUTNQBUpBF2n2TIlgi
         UBi+PgDaDPbjTQbKfsj1MieyBQE5NsecsEFzhriKC1uI78nEEK9bDYrSqJzEH5HBNfJY
         p3UndJYmEHAv42dLStIy07tadTmgCCbgQJkzbgwad8J9bflsoEh98ICRTbziLT0XZ+L7
         wEhE01v0K1ZzGVrJOsY4eqP96N/6k+NCpLLhjYytqIRmc0x4I5esW0E2dV3rp3kYiROJ
         jCfUYk2T++jKiXrBGkWm3/GlLjhxEv3yUwZ/k30sYgB9VK8lhQcD5ppyu9n7bdxO64Sw
         RS4g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:organization:from:references:cc:to
         :subject:ironport-sdr:ironport-sdr;
        bh=WZlRroDESXp0/Bv1kghFXcfC8sWiL6zLPwOMSWtllHg=;
        b=0FIQUU/PullEHd5fuhVh7OZ+XC43bCwAIV1qeD8EgcG8/3TVMvW26oLuS9k0uUFFwG
         JH1v1ImcCgbn5O9muCNG2B2RRsDcAVKNrQsUJtdAASSGej0NfG9EV/aur5esC9jAG+VG
         bxYzGO493e3RpJW17IbA/zojjViryIO7j+1auenfpTu4F8F6ZYErhey+zPpALbJXixF6
         YWz+GQj0q7kh3ILgSPP0bw+cggpnCZqcMx6QqmHsf2rN2U3+KniRTzqeObUSZPuRV5io
         JgqW9GEI+UY/kQT1x2C/AhhCuXX/D20yaHOka5mvLo/fI/Y9vVMq3W/uNNgErw9W7JeB
         pYdA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of adrian.hunter@intel.com designates 134.134.136.20 as permitted sender) smtp.mailfrom=adrian.hunter@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga02.intel.com (mga02.intel.com. [134.134.136.20])
        by gmr-mx.google.com with ESMTPS id bj6si35263plb.4.2020.09.01.03.54.12
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 01 Sep 2020 03:54:12 -0700 (PDT)
Received-SPF: pass (google.com: domain of adrian.hunter@intel.com designates 134.134.136.20 as permitted sender) client-ip=134.134.136.20;
IronPort-SDR: qQfoMU1PqwBjIsgAFzMP3Qm6vwGCas7ShQEcxovhqd6jhk/j1y/Kcb6svlE1APQ3ZIPNoZoTyQ
 PzNxDT8mhTeQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9730"; a="144885610"
X-IronPort-AV: E=Sophos;i="5.76,378,1592895600"; 
   d="scan'208";a="144885610"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
  by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 01 Sep 2020 03:54:11 -0700
IronPort-SDR: MhyLawlSYFxgTjbp1pRehKmCFmZMsQDM3v493i2rX8H9uVSQQF9pJehotKlIdp0o3M5Mf8+MeX
 GD5P5YmgZHFQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.76,378,1592895600"; 
   d="scan'208";a="477150956"
Received: from ahunter-desktop.fi.intel.com (HELO [10.237.72.73]) ([10.237.72.73])
  by orsmga005.jf.intel.com with ESMTP; 01 Sep 2020 03:54:03 -0700
Subject: Re: [PATCH v2] mmc: sdhci: Don't enable presets while tuning
To: Raul E Rangel <rrangel@chromium.org>
Cc: Nehal-bakulchandra.Shah@amd.com, chris.wang@amd.com,
 Akshu.Agrawal@amd.com, Jisheng Zhang <jszhang@marvell.com>,
 Ulf Hansson <ulf.hansson@linaro.org>, clang-built-linux@googlegroups.com,
 linux-kernel@vger.kernel.org, linux-mmc@vger.kernel.org
References: <20200824122131.v2.1.Id6f3c92fecf4acc60c3b7f57d5f4e4c854ace765@changeid>
From: Adrian Hunter <adrian.hunter@intel.com>
Organization: Intel Finland Oy, Registered Address: PL 281, 00181 Helsinki,
 Business Identity Code: 0357606 - 4, Domiciled in Helsinki
Message-ID: <873b0786-a088-54af-80ad-96d2b041945d@intel.com>
Date: Tue, 1 Sep 2020 13:53:26 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20200824122131.v2.1.Id6f3c92fecf4acc60c3b7f57d5f4e4c854ace765@changeid>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
X-Original-Sender: adrian.hunter@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of adrian.hunter@intel.com designates 134.134.136.20 as
 permitted sender) smtp.mailfrom=adrian.hunter@intel.com;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=intel.com
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

On 24/08/20 9:21 pm, Raul E Rangel wrote:
> SDHCI presets are not currently used for eMMC HS/HS200/HS400, but are
> used for DDR52. The HS400 retuning sequence is:
> 
>     HS400->DDR52->HS->HS200->Perform Tuning->HS->HS400
> 
> This means that when HS400 tuning happens, we transition through DDR52
> for a very brief period. This causes presets to be enabled
> unintentionally and stay enabled when transitioning back to HS200 or
> HS400.
> 
> This patch prevents enabling presets while tuning is in progress.

Preset value should not generally have to depend on tuning, so this
seems less than ideal.  Also I am not sure you can say some controllers
are not accidentally benefiting from the current situation.

What about just letting drivers choose the timing modes that support
preset values?  e.g. using the change below, a driver could alter
host->preset_value_support as needed

diff --git a/drivers/mmc/host/sdhci.c b/drivers/mmc/host/sdhci.c
index 3ad394b40eb1..3e69c25c90a3 100644
--- a/drivers/mmc/host/sdhci.c
+++ b/drivers/mmc/host/sdhci.c
@@ -2360,12 +2360,7 @@ void sdhci_set_ios(struct mmc_host *mmc, struct mmc_ios *ios)
 		host->timing = ios->timing;
 
 		if (!(host->quirks2 & SDHCI_QUIRK2_PRESET_VALUE_BROKEN) &&
-				((ios->timing == MMC_TIMING_UHS_SDR12) ||
-				 (ios->timing == MMC_TIMING_UHS_SDR25) ||
-				 (ios->timing == MMC_TIMING_UHS_SDR50) ||
-				 (ios->timing == MMC_TIMING_UHS_SDR104) ||
-				 (ios->timing == MMC_TIMING_UHS_DDR50) ||
-				 (ios->timing == MMC_TIMING_MMC_DDR52))) {
+		    sdhci_preset_value_support(host, ios->timing)) {
 			u16 preset;
 
 			sdhci_enable_preset_value(host, true);
@@ -3934,6 +3929,13 @@ struct sdhci_host *sdhci_alloc_host(struct device *dev,
 	 */
 	host->adma_table_cnt = SDHCI_MAX_SEGS * 2 + 1;
 
+	host->preset_value_support = (1 << MMC_TIMING_UHS_SDR12 ) |
+				     (1 << MMC_TIMING_UHS_SDR25 ) |
+				     (1 << MMC_TIMING_UHS_SDR50 ) |
+				     (1 << MMC_TIMING_UHS_SDR104) |
+				     (1 << MMC_TIMING_UHS_DDR50 ) |
+				     (1 << MMC_TIMING_MMC_DDR52 );
+
 	return host;
 }
 
diff --git a/drivers/mmc/host/sdhci.h b/drivers/mmc/host/sdhci.h
index 0770c036e2ff..79be471ff934 100644
--- a/drivers/mmc/host/sdhci.h
+++ b/drivers/mmc/host/sdhci.h
@@ -603,6 +603,9 @@ struct sdhci_host {
 	/* Host ADMA table count */
 	u32			adma_table_cnt;
 
+	/* Which transfer modes support preset value */
+	u32			preset_value_support;
+
 	u64			data_timeout;
 
 	unsigned long private[] ____cacheline_aligned;
@@ -760,6 +763,14 @@ static inline void sdhci_read_caps(struct sdhci_host *host)
 	__sdhci_read_caps(host, NULL, NULL, NULL);
 }
 
+static inline bool sdhci_preset_value_support(struct sdhci_host *host,
+					      unsigned char timing)
+{
+	if (timing < 32)
+		return host->preset_value_support & (1 << timing);
+	return false;
+}
+
 u16 sdhci_calc_clk(struct sdhci_host *host, unsigned int clock,
 		   unsigned int *actual_clock);
 void sdhci_set_clock(struct sdhci_host *host, unsigned int clock);





> 
> Fixes: 0dafa60eb2506 ("mmc: sdhci: also get preset value and driver type for MMC_DDR52")
> Signed-off-by: Raul E Rangel <rrangel@chromium.org>
> ---
> The indentation changed because I ran clang-format
> 
> Changes in v2:
> - Fixed commit message. Patman didn't properly strip off the TEST= line.
> 
>  drivers/mmc/host/sdhci.c | 13 +++++++------
>  1 file changed, 7 insertions(+), 6 deletions(-)
> 
> diff --git a/drivers/mmc/host/sdhci.c b/drivers/mmc/host/sdhci.c
> index 37b1158c1c0c9..fd702c436c165 100644
> --- a/drivers/mmc/host/sdhci.c
> +++ b/drivers/mmc/host/sdhci.c
> @@ -2360,12 +2360,13 @@ void sdhci_set_ios(struct mmc_host *mmc, struct mmc_ios *ios)
>  		host->timing = ios->timing;
>  
>  		if (!(host->quirks2 & SDHCI_QUIRK2_PRESET_VALUE_BROKEN) &&
> -				((ios->timing == MMC_TIMING_UHS_SDR12) ||
> -				 (ios->timing == MMC_TIMING_UHS_SDR25) ||
> -				 (ios->timing == MMC_TIMING_UHS_SDR50) ||
> -				 (ios->timing == MMC_TIMING_UHS_SDR104) ||
> -				 (ios->timing == MMC_TIMING_UHS_DDR50) ||
> -				 (ios->timing == MMC_TIMING_MMC_DDR52))) {
> +		    !mmc_doing_retune(mmc) &&
> +		    ((ios->timing == MMC_TIMING_UHS_SDR12) ||
> +		     (ios->timing == MMC_TIMING_UHS_SDR25) ||
> +		     (ios->timing == MMC_TIMING_UHS_SDR50) ||
> +		     (ios->timing == MMC_TIMING_UHS_SDR104) ||
> +		     (ios->timing == MMC_TIMING_UHS_DDR50) ||
> +		     (ios->timing == MMC_TIMING_MMC_DDR52))) {
>  			u16 preset;
>  
>  			sdhci_enable_preset_value(host, true);
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/873b0786-a088-54af-80ad-96d2b041945d%40intel.com.
