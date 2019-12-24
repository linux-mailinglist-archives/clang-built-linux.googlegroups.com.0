Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBEGLQ3YAKGQEEWDJJ6I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x73d.google.com (mail-qk1-x73d.google.com [IPv6:2607:f8b0:4864:20::73d])
	by mail.lfdr.de (Postfix) with ESMTPS id D29D0129DE0
	for <lists+clang-built-linux@lfdr.de>; Tue, 24 Dec 2019 06:43:46 +0100 (CET)
Received: by mail-qk1-x73d.google.com with SMTP id i135sf11823805qke.14
        for <lists+clang-built-linux@lfdr.de>; Mon, 23 Dec 2019 21:43:46 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1577166225; cv=pass;
        d=google.com; s=arc-20160816;
        b=pIUQyGEiBZNhT0KQDwwsx0XSAWNLk4DQ9LlSN/Lr57+/1WderFusv6v+fyGikE6FAq
         dndm3rfWgnlKBJeYqLpOwtuNF9fNLAl6HLZvoXO+nxSv7MQkXDir4hi4YZ0FWlsgoxYT
         tIUAtrv8sbdrgbcxhCo9tkNo0oGpL8iucZX6iCEU7+vIR/2kYZsKVsb8B2S3oilu0EFP
         OIrSreE2tpv+/lT83UnU8f2KJ+WyQ7GNjZs6nc65jowMS6Oyvl05JoUWouWOK1luZ1oP
         qm/j9sFW4UGPLBQGbbB8YJp/EICL+JeQNw2rJCgZRDuFQicTNAv240d/0JaEv8dLI1is
         wWDQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature:dkim-signature;
        bh=VjeIC4VwBzuweP0ambMVG+6GMOnMmnYE7nIvhA2MbgM=;
        b=yuoIwiKqW1NXzFirEk9XYtv3ffuwpAXDiNFL5/uYQJxUmUtrHCC10uLpmnvk2ErBAg
         2LL3mwVyoxsvAt6+/D42ULGX7hJy6BgJGSt3Fx/M4XdV9qwWBpFKp7AY+SSES01Pq6zK
         Apru6XjKW3GgIdlkhpbYyYj/SWD6ddhxYnZRsDpASlZ/kuuTDAa02zigVF4q7YJCoypt
         r26m2MWPHo3ThfKGBYeSXpRyrSyD/NR9rmhHjyWt/aMOjqrJMtQHu/vho2c35kCLzdUx
         29EMkU0vLBZ+bwMCDk0wgEOoWAjTeMVGG5W0OVe6KixVCg2Q2ZREvMpA+xQ6Ug8dUEJs
         kSlg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="Xk8/entG";
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::342 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=VjeIC4VwBzuweP0ambMVG+6GMOnMmnYE7nIvhA2MbgM=;
        b=EdHk5GQ1pISN5fER3FbISdVJJQf9RTIs+wt0kAWm/zgN9Ty8iOKOKPdFGFOSs0BW8g
         7pz2sbxkAZSxrQ465yw0m4IyMazKf4REKZBQsqszoYgYFZNsh2UB7QhtdtOUnEr0/lAz
         2PRYVl+yN0esyyO3qHEePS91xAOQzhtIWvGnjhGO7rfpFoUR0l6EYBqMI+t6Xc9jpiF2
         Qs6S7k9eKQO17FvtF59NKNH425fy03ceU/5VCAUmI75+eju7pBIH3y33j0Pfc4CPFXsr
         wJh8zLfuzKbNgaE12od8c4Cs5sRPbUfti8LrpS7r7Md7+G8gO0uW5TRXMyLBbnLNa1aF
         aPDw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=VjeIC4VwBzuweP0ambMVG+6GMOnMmnYE7nIvhA2MbgM=;
        b=gZWS887AI3MLRVQ7efiyVreeMLKfTSKtybdOSup0bRr5UhLSrbhtTnQ3VwdDPsXhIm
         Cml5b44VNOzI27x5EimD89zfXMFpPCe7Wn7KPwbcIR9eUhouF5ntShWMhW13dHivCNoB
         rc+omhLkmYiFt42skmylqjWiTaaA9pmuyRb9iG2Tvx3mO9C7ZxHoF7ydOfTAfRVcZqTx
         9dnvY5G+eBB6S/OEBOQpaCofgAR0JMcBt7AiSkxkEizXF4l08t12xxDF9Q6p63mZ5Z4Y
         iFcw09B8S8sF+427CJ+sVOTmpuM8ZAutgNvm1w5ciwSyZ+ZsRLq63Ow2svtdvVUugdvR
         JZLg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=VjeIC4VwBzuweP0ambMVG+6GMOnMmnYE7nIvhA2MbgM=;
        b=GncNLoJsO8GukVjCjCuVa902v+Jzg9dfFGiBObDqmDjgcqrt4IapXAdfyoLVLpe9uF
         1+iNHVqwmEiJXgSuLxo3yvwvKPvQmIQ8AEKTrxMeakKbb5t+org6lZTvQISSk7X2PUo2
         fx8/mBCZTBD07nB7eh4PaJ+p4pDrl1ImcF4xMsTuqDpEszMq84beD+Rz1shIsR11TEZP
         C+R25hA+gUfNofvRMp/TgI2++wLfuFQbNfMLWGxVzRRZPSV144Sg7ep36LeZkM136vrA
         4hnTAn1PBHWtpXqLuAADJk9MkB9bRFO564qhWK/DjdBDJo34WPGXw+6h1cNsGTwcDGrX
         9Jkg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVYBSZ9vaeqejAX2OZ6zPMObA5iQ40qGejIKtLP7Vy7uKBjSBIG
	kfR3/G98exwQQqRxeVUV8nk=
X-Google-Smtp-Source: APXvYqww6OsjxsWnTheV5LX+pDDLdrnrV8ZQXqlEbLpt7IDv7qTzJI32mB5jGNIHsK9ewYni1GVZBA==
X-Received: by 2002:ad4:4e6b:: with SMTP id ec11mr27130693qvb.149.1577166224168;
        Mon, 23 Dec 2019 21:43:44 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aed:279b:: with SMTP id a27ls4804249qtd.9.gmail; Mon, 23 Dec
 2019 21:43:43 -0800 (PST)
X-Received: by 2002:ac8:27ed:: with SMTP id x42mr11242107qtx.299.1577166223800;
        Mon, 23 Dec 2019 21:43:43 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1577166223; cv=none;
        d=google.com; s=arc-20160816;
        b=EXcZ3TgEmSUteLPslNdtdMuWhVBImmGbaVfMtB2xO6clGpNmtWQtJ3Waur3Fm9UVH3
         AIf54vfZdhqOZgrGV+fX1IsjUQ8MOsHT1S3vpIkk9y43pl81LBFyXfMEznF9YAK58ckL
         go/Q2im18UrkuXyeJxgR1p9trkUuWJ5kYgForOJliEDO105+clKCc1hdtYSRNVzVoBS+
         E7V/xJbPLnjPipIpHuLPmQ4TFo/cvX2l8q2k1/I9hDdxB2jtvwCosPFdPqG69On3UKlI
         DYYPb+XbphK9A6Rb1jkosWkfjg+/gT3S0flF342W+4GrochcOwB+O/MiSeP5OVRT+Utk
         r7bQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=X9kKOIlHeT2ihB72YT665o/9Gpkm00ecVAFub60YPaE=;
        b=XK1AK6j13GNfZiO840i3sablSJgjIR8tyoFn66vR2EJWNHRdwcyTZV273cr4VJqUDv
         LvqsqZs4pYBiRvdBxBqHrpy7PrWfNrXzETTySlalSbVQpkhtlM+RCuzUgVtryQIsFESK
         rNkCafs9HVmwLfjrNxIz9rX8L0Gjsp0GKys83NfIYx/zzadTNcsNK+5uA3u1yHhkJhoC
         oEZROkHJoAT3f6tM1w7GIdJSS5KyPnLeOSz4TdthsGM1kQLDMKKbUzMHV0+vLZl5hpw4
         Pul/T2jbQaM1iKBfiIMfJh7bvJLNAsW/79nMA3OfUHmTE7+xR5mys47FgesOK16OFGHR
         5BcA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="Xk8/entG";
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::342 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-ot1-x342.google.com (mail-ot1-x342.google.com. [2607:f8b0:4864:20::342])
        by gmr-mx.google.com with ESMTPS id g2si769681qtv.3.2019.12.23.21.43.43
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 23 Dec 2019 21:43:43 -0800 (PST)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::342 as permitted sender) client-ip=2607:f8b0:4864:20::342;
Received: by mail-ot1-x342.google.com with SMTP id 59so24979087otp.12
        for <clang-built-linux@googlegroups.com>; Mon, 23 Dec 2019 21:43:43 -0800 (PST)
X-Received: by 2002:a9d:1d02:: with SMTP id m2mr34329276otm.45.1577166223191;
        Mon, 23 Dec 2019 21:43:43 -0800 (PST)
Received: from ubuntu-m2-xlarge-x86 ([2604:1380:4111:8b00::1])
        by smtp.gmail.com with ESMTPSA id q18sm7416914otk.38.2019.12.23.21.43.42
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Mon, 23 Dec 2019 21:43:42 -0800 (PST)
Date: Mon, 23 Dec 2019 22:43:40 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Suganath Prabu S <suganath-prabu.subramani@broadcom.com>
Cc: linux-scsi@vger.kernel.org, martin.petersen@oracle.com,
	sreekanth.reddy@broadcom.com, sathya.prakash@broadcom.com,
	kashyap.desai@broadcom.com, clang-built-linux@googlegroups.com
Subject: Re: [PATCH 02/10] mpt3sas: Add support for NVMe shutdown.
Message-ID: <20191224054340.GA55348@ubuntu-m2-xlarge-x86>
References: <20191220103210.43631-1-suganath-prabu.subramani@broadcom.com>
 <20191220103210.43631-3-suganath-prabu.subramani@broadcom.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20191220103210.43631-3-suganath-prabu.subramani@broadcom.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b="Xk8/entG";       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::342 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Fri, Dec 20, 2019 at 05:32:02AM -0500, Suganath Prabu S wrote:
<snip>

Hi Suganath,

We received an email from the 0day bot about this patch (see below)
about this patch. Would you look into addressing it?

> diff --git a/drivers/scsi/mpt3sas/mpt3sas_scsih.c b/drivers/scsi/mpt3sas/mpt3sas_scsih.c
> index a038be8..c451e57 100644
> --- a/drivers/scsi/mpt3sas/mpt3sas_scsih.c
> +++ b/drivers/scsi/mpt3sas/mpt3sas_scsih.c
> @@ -1049,6 +1049,34 @@ mpt3sas_get_pdev_by_handle(struct MPT3SAS_ADAPTER *ioc, u16 handle)
>  	return pcie_device;
>  }
>  
> +/**
> + * _scsih_set_nvme_max_shutdown_latency - Update max_shutdown_latency.
> + * @ioc: per adapter object
> + * Context: This function will acquire ioc->pcie_device_lock
> + *
> + * Update ioc->max_shutdown_latency to that NVMe drives RTD3 Entry Latency
> + * which has reported maximum among all available NVMe drives.
> + * Minimum max_shutdown_latency will be six seconds.
> + */
> +static void
> +_scsih_set_nvme_max_shutdown_latency(struct MPT3SAS_ADAPTER *ioc)
> +{
> +	struct _pcie_device *pcie_device;
> +	unsigned long flags;
> +	u16 shutdown_latency = IO_UNIT_CONTROL_SHUTDOWN_TIMEOUT;
> +
> +	spin_lock_irqsave(&ioc->pcie_device_lock, flags);
> +	list_for_each_entry(pcie_device, &ioc->pcie_device_list, list) {
> +		if (pcie_device->shutdown_latency) {
> +			if (shutdown_latency < pcie_device->shutdown_latency)
> +				shutdown_latency =
> +					pcie_device->shutdown_latency;
> +		}
> +	}
> +	ioc->max_shutdown_latency = shutdown_latency;
> +	spin_unlock_irqrestore(&ioc->pcie_device_lock, flags);
> +}
> +
>  /**
>   * _scsih_pcie_device_remove - remove pcie_device from list.
>   * @ioc: per adapter object
> @@ -1063,6 +1091,7 @@ _scsih_pcie_device_remove(struct MPT3SAS_ADAPTER *ioc,
>  {
>  	unsigned long flags;
>  	int was_on_pcie_device_list = 0;
> +	u8 update_latency;

This should be initialized to 0 like the remove_by_handle function
below.

Cheers,
Nathan

On Tue, Dec 24, 2019 at 05:13:52AM +0800, kbuild test robot wrote:
> CC: kbuild-all@lists.01.org
> In-Reply-To: <20191220103210.43631-3-suganath-prabu.subramani@broadcom.com>
> References: <20191220103210.43631-3-suganath-prabu.subramani@broadcom.com>
> TO: Suganath Prabu S <suganath-prabu.subramani@broadcom.com>
> CC: linux-scsi@vger.kernel.org, martin.petersen@oracle.com
> CC: sreekanth.reddy@broadcom.com, sathya.prakash@broadcom.com, kashyap.desai@broadcom.com, Suganath Prabu S <suganath-prabu.subramani@broadcom.com>
> 
> Hi Suganath,
> 
> I love your patch! Perhaps something to improve:
> 
> [auto build test WARNING on scsi/for-next]
> [also build test WARNING on mkp-scsi/for-next v5.5-rc3 next-20191220]
> [if your patch is applied to the wrong git tree, please drop us a note to help
> improve the system. BTW, we also suggest to use '--base' option to specify the
> base tree in git format-patch, please see https://stackoverflow.com/a/37406982]
> 
> url:    https://github.com/0day-ci/linux/commits/Suganath-Prabu-S/mpt3sas-Enhancements-of-phase14/20191223-182859
> base:   https://git.kernel.org/pub/scm/linux/kernel/git/jejb/scsi.git for-next
> config: arm64-defconfig (attached as .config)
> compiler: clang version 10.0.0 (git://gitmirror/llvm_project 891e25b02d760d0de18c7d46947913b3166047e7)
> reproduce:
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         # save the attached .config to linux build tree
>         make.cross ARCH=arm64 
> 
> If you fix the issue, kindly add following tag
> Reported-by: kbuild test robot <lkp@intel.com>
> 
> All warnings (new ones prefixed by >>):
> 
> >> drivers/scsi/mpt3sas/mpt3sas_scsih.c:1114:6: warning: variable 'update_latency' is used uninitialized whenever 'if' condition is false [-Wsometimes-uninitialized]
>            if (pcie_device->shutdown_latency == ioc->max_shutdown_latency)
>                ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>    drivers/scsi/mpt3sas/mpt3sas_scsih.c:1128:6: note: uninitialized use occurs here
>            if (update_latency)
>                ^~~~~~~~~~~~~~
>    drivers/scsi/mpt3sas/mpt3sas_scsih.c:1114:2: note: remove the 'if' if its condition is always true
>            if (pcie_device->shutdown_latency == ioc->max_shutdown_latency)
>            ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>    drivers/scsi/mpt3sas/mpt3sas_scsih.c:1094:19: note: initialize the variable 'update_latency' to silence this warning
>            u8 update_latency;
>                             ^
>                              = '\0'
>    1 warning generated.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191224054340.GA55348%40ubuntu-m2-xlarge-x86.
