Return-Path: <clang-built-linux+bncBCCKLU67Z4KBBNHE6OAQMGQEE6ZD5KA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33c.google.com (mail-ot1-x33c.google.com [IPv6:2607:f8b0:4864:20::33c])
	by mail.lfdr.de (Postfix) with ESMTPS id 726C9328011
	for <lists+clang-built-linux@lfdr.de>; Mon,  1 Mar 2021 14:55:01 +0100 (CET)
Received: by mail-ot1-x33c.google.com with SMTP id l15sf10611569otp.4
        for <lists+clang-built-linux@lfdr.de>; Mon, 01 Mar 2021 05:55:01 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1614606900; cv=pass;
        d=google.com; s=arc-20160816;
        b=T82EegT0Q++Y93xPnfQ6KK2KAZm6EVcWUNiIhTmfuFSp5Gbj3oz9Wga/XBQO3p1n40
         lMCVCFsvQt0vXH59mB+IgP+UsC/vQSalaRqntmKSXxXOBWqKw5CEZ27YmbpfKRy89Z0n
         RQA0+ly0QOGdQV5vZehXxF2JjGO27HLAdzoteAXcTemz5DCklTeGkV0QhOFKw3PN0o+H
         k2uuKMO+qqV8lKAq1dBVFOMTZuL8PM81M5f57sgyHyyUX+LRewXx42p8miSqO/M2IVgM
         0I/fyNd6iXmdue2yQ2rZLrfiiyE3JxO7heUfsqLQv6vWO0Mjkn+NRVwZ+RHNuH6EhACa
         7khg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=sTM1MKl5sw4SyaQkfPUOBlUJDDqMHmOB0GnppRYdW04=;
        b=nlwVoB2qY+4SVzN5etcZwWZ4ctjsAkvMVYu5tKMm+c+qZMUHGQI8Dw8DT8w32X2b4w
         c/vWB3QM+ULMbFQoNtn1uf24PDaWdkntYoSv0lm2iaaRVQ8zBmPNWYgJ05S3cbVVNg3S
         6LXbcaR25/kyW6T0pX5yw+eVgMCROrOBY+4EsHn4+qPFNFHR8QlZ4YDVPDYTCwCH6mqX
         Vohhi0djSbheAcPlBDUoPjaLO2OY/wVeFCFrCgn+rI0nM9jBSmCYfYfp5sT8eiY9rNCJ
         HnGR3rGHAfnc2vK3KN1tk7lEeqekjVqX8NpefuVuAelG7pFx48mdib9dgNyvdSZqlFkW
         g1iA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of suzuki.poulose@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=suzuki.poulose@arm.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=arm.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=sTM1MKl5sw4SyaQkfPUOBlUJDDqMHmOB0GnppRYdW04=;
        b=Wsru4g/zE1T2iDvIDNm/yHeFEXBcigNtX70wq+qEgrE45QwNthygeAxTgrpCEm9E6f
         QLo/+meIaZ+64A5rH+L5+Iy4IR59NjQRWy5ZfhtYyj3ScujSCF7wzHEljVV0wGuAUvmk
         UyQUfEVXmBGiPnvkQ6tzAxzEJGo/nHDF/GI58fMyMAeH5izHzpBEb5cQy6kS/2h0nf3W
         rVpxlsyJte+5dUqrCShz/xNVYI5iMUs2LkvCIHBkjj8HTLPBqWi3ptXKTsCPkDV0cX0m
         /zke4piY56Ay14lA85ityUMTCKiYICXJDHY/cxseXRegysbE0kPcTxQViIAyQb3W0okD
         mXWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=sTM1MKl5sw4SyaQkfPUOBlUJDDqMHmOB0GnppRYdW04=;
        b=fu9QfuXkwpxHKC0ROquYpHIfQwkDqYmmxByAXLAcUFbOWOyW+a95U9BXisa7hGmXei
         uzEKXaKkz49NgN3cNiKWeZUl5lbDD1cskF8bzG7l2p1iVSf9M5EO0hE8l2XhSIE8ZW15
         6aW9oPz9U5WuU05qMdzjKEYYXECyISN67aaEIoWuplrUrVjplK63U+C9bPnQpvExHY0T
         nUuGET6NYTGX/H7x1W5HB/qF52+qKqKgPbHw4Y3OFcn2/LtNyz/R76+XaSH2i5zVQrID
         eOY6cb9J0Zk4VkHuu1F19kQNJozZA9qqKxYH/obXbFMq8Eb9mZeg661DGDi2KTEnoXHh
         LFwA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531DXdt6ozADumkGqouyqeBUPeCwYSKBZP+4wWkLMX4N0Hl4kXqR
	SILabNnap3jzNN5WUaVEGLM=
X-Google-Smtp-Source: ABdhPJw7AjH/U81PIzU4A/LD1Lje9MdnXhTLYxeQ79fcghQmmUisOx0344hiCFTxcMjo9raD/6EZkg==
X-Received: by 2002:aca:d68e:: with SMTP id n136mr11820157oig.179.1614606900471;
        Mon, 01 Mar 2021 05:55:00 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:6ad2:: with SMTP id m18ls1536332otq.1.gmail; Mon, 01 Mar
 2021 05:55:00 -0800 (PST)
X-Received: by 2002:a9d:3bc4:: with SMTP id k62mr13230512otc.318.1614606900054;
        Mon, 01 Mar 2021 05:55:00 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1614606900; cv=none;
        d=google.com; s=arc-20160816;
        b=tH1GIzpleYRBYQ6V5VeT1YEYipe942vqjuvD9y5AquKLi7GE/MhVhaHmvDMZQyQK8n
         2NrRmxxaJViYdyFtv3UdWvSbEFkWByWn2O1qVcS45oUh8Cs9eu8qishVjSIFGVCCEdjM
         rThGG3b/tfNpV7GHOAJqnNMOh08HabPuTHoOSU6cuKcEAXV1FHTkAby6qlk7nzPgIqbC
         0eAg9bW5Yp+niheACXA2A0gMaq57u4ZR6n9/1ntKhgOomboqRx3veK4DuchPB83rlBj1
         ft7iQs1vAgAOZ30grl6mlL/zGwtH8nRe+IJHgsFPn1W9ecDmAB9XH1Nxx5odvOfddRYp
         9Srg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject;
        bh=jJWGXjI+QB682aO8tCGVOyelL8KYwTUQUL2Szzla2M8=;
        b=PSKM05gFQJySIK3xLRnqF1d9IjVUABFflie6yOENM338e4HM+1YzT3WntfOlW96Rcz
         fFmVSvrZWvbrYcj8rknBWe54INL4YLex4xPbsagd8FA+4hStoepiDaD6BILmDkeA5oC6
         DiCARiGDoXV+Z/7Xkgv29krvlDzPCfni4TdcVUm3aDTcB/TYTiQoIbXhm+cGqUsbpx0W
         mKy4/8nSCqIofrUHBE8LezIPEpCr4AKTmm6FamgrjXoVlWkmYTqU6KB19QvA1ljmmk40
         rsCVaLeJZtU5mAicFIU6eyHoQr9paBbHG8gI/DDrH2qlNSXXwisWNr5M+U/z5ANpKC6A
         UQEw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of suzuki.poulose@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=suzuki.poulose@arm.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=arm.com
Received: from foss.arm.com (foss.arm.com. [217.140.110.172])
        by gmr-mx.google.com with ESMTP id b10si845284ots.5.2021.03.01.05.54.59
        for <clang-built-linux@googlegroups.com>;
        Mon, 01 Mar 2021 05:55:00 -0800 (PST)
Received-SPF: pass (google.com: domain of suzuki.poulose@arm.com designates 217.140.110.172 as permitted sender) client-ip=217.140.110.172;
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id C12081042;
	Mon,  1 Mar 2021 05:54:59 -0800 (PST)
Received: from [10.57.48.41] (unknown [10.57.48.41])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 2DF833F70D;
	Mon,  1 Mar 2021 05:54:58 -0800 (PST)
Subject: Re: [PATCH v4 17/19] coresight: core: Add support for dedicated
 percpu sinks
To: kernel test robot <lkp@intel.com>, linux-arm-kernel@lists.infradead.org
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
 linux-kernel@vger.kernel.org, mathieu.poirier@linaro.org,
 mike.leach@linaro.org, anshuman.khandual@arm.com, leo.yan@linaro.org
References: <20210225193543.2920532-18-suzuki.poulose@arm.com>
 <202102261412.zCSQLdKB-lkp@intel.com>
From: Suzuki K Poulose <suzuki.poulose@arm.com>
Message-ID: <5fad098f-8cdd-e56d-3812-d85720b1768c@arm.com>
Date: Mon, 1 Mar 2021 13:54:54 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.1
MIME-Version: 1.0
In-Reply-To: <202102261412.zCSQLdKB-lkp@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-GB
X-Original-Sender: suzuki.poulose@arm.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of suzuki.poulose@arm.com designates 217.140.110.172 as
 permitted sender) smtp.mailfrom=suzuki.poulose@arm.com;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=arm.com
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

On 2/26/21 6:34 AM, kernel test robot wrote:
> Hi Suzuki,
> 
> Thank you for the patch! Yet something to improve:
> 
> [auto build test ERROR on linus/master]
> [also build test ERROR on next-20210226]
> [cannot apply to kvmarm/next arm64/for-next/core tip/perf/core v5.11]
> [If your patch is applied to the wrong git tree, kindly drop us a note.
> And when submitting patch, we suggest to use '--base' as documented in
> https://git-scm.com/docs/git-format-patch]
> 
> url:    https://github.com/0day-ci/linux/commits/Suzuki-K-Poulose/arm64-coresight-Add-support-for-ETE-and-TRBE/20210226-035447
> base:   https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git 6fbd6cf85a3be127454a1ad58525a3adcf8612ab
> config: arm-randconfig-r024-20210225 (attached as .config)
> compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project a921aaf789912d981cbb2036bdc91ad7289e1523)
> reproduce (this is a W=1 build):
>          wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>          chmod +x ~/bin/make.cross
>          # install arm cross compiling tool for clang build
>          # apt-get install binutils-arm-linux-gnueabi
>          # https://github.com/0day-ci/linux/commit/c37564326cdf11e0839eae06c1bfead47d3e5775
>          git remote add linux-review https://github.com/0day-ci/linux
>          git fetch --no-tags linux-review Suzuki-K-Poulose/arm64-coresight-Add-support-for-ETE-and-TRBE/20210226-035447
>          git checkout c37564326cdf11e0839eae06c1bfead47d3e5775
>          # save the attached .config to linux build tree
>          COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=arm
> 
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kernel test robot <lkp@intel.com>

Thanks for the report. The following fixup should clear this :


---8>---



diff --git a/include/linux/coresight.h b/include/linux/coresight.h
index 8a3a3c199087..85008a65e21f 100644
--- a/include/linux/coresight.h
+++ b/include/linux/coresight.h
@@ -429,6 +429,33 @@ static inline void csdev_access_write64(struct csdev_access *csa, u64 val, u32 o
  		csa->write(val, offset, false, true);
  }

+#else	/* !CONFIG_64BIT */
+
+static inline u64 csdev_access_relaxed_read64(struct csdev_access *csa,
+					      u32 offset)
+{
+	WARN_ON(1);
+	return 0;
+}
+
+static inline u64 csdev_access_read64(struct csdev_access *csa, u32 offset)
+{
+	WARN_ON(1);
+	return 0;
+}
+
+static inline void csdev_access_relaxed_write64(struct csdev_access *csa,
+						u64 val, u32 offset)
+{
+	WARN_ON(1);
+}
+
+static inline void csdev_access_write64(struct csdev_access *csa, u64 val, u32 offset)
+{
+	WARN_ON(1);
+}
+#endif	/* CONFIG_64BIT */
+
  static inline bool coresight_is_percpu_source(struct coresight_device *csdev)
  {
  	return csdev && (csdev->type == CORESIGHT_DEV_TYPE_SOURCE) &&
@@ -440,32 +467,6 @@ static inline bool coresight_is_percpu_sink(struct coresight_device *csdev)
  	return csdev && (csdev->type == CORESIGHT_DEV_TYPE_SINK) &&
  	       (csdev->subtype.sink_subtype == CORESIGHT_DEV_SUBTYPE_SINK_PERCPU_SYSMEM);
  }
-#else	/* !CONFIG_64BIT */
-
-static inline u64 csdev_access_relaxed_read64(struct csdev_access *csa,
-					      u32 offset)
-{
-	WARN_ON(1);
-	return 0;
-}
-
-static inline u64 csdev_access_read64(struct csdev_access *csa, u32 offset)
-{
-	WARN_ON(1);
-	return 0;
-}
-
-static inline void csdev_access_relaxed_write64(struct csdev_access *csa,
-						u64 val, u32 offset)
-{
-	WARN_ON(1);
-}
-
-static inline void csdev_access_write64(struct csdev_access *csa, u64 val, u32 offset)
-{
-	WARN_ON(1);
-}
-#endif	/* CONFIG_64BIT */

  extern struct coresight_device *
  coresight_register(struct coresight_desc *desc);

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/5fad098f-8cdd-e56d-3812-d85720b1768c%40arm.com.
