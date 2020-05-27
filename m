Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBB5QXL3AKGQEWUMHJ6Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd38.google.com (mail-io1-xd38.google.com [IPv6:2607:f8b0:4864:20::d38])
	by mail.lfdr.de (Postfix) with ESMTPS id 743A81E4A79
	for <lists+clang-built-linux@lfdr.de>; Wed, 27 May 2020 18:40:40 +0200 (CEST)
Received: by mail-io1-xd38.google.com with SMTP id p8sf4806768ios.19
        for <lists+clang-built-linux@lfdr.de>; Wed, 27 May 2020 09:40:40 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1590597639; cv=pass;
        d=google.com; s=arc-20160816;
        b=Wa8piPdCO3JvOH4PUouAhC/5DGXPX+WFMpfdXceSbfiEBHXFwpxtDyERsp4Nq5FheJ
         lp89sex2BIrrgb6wju0h+z9LJEBIFYR2NmDylv6GELaxfXLHbCHPG0SMibeq37VWNpdo
         EgcTDOPrlgbw6GRSL+2CtJNe4bEy6+6ZCruFb576GreRNTIwpDIdCAepPwRb9JlJqbJc
         Bplj0OJp9/WTRy0hDfHR0jIJn5+e2RTO8ZvpM3pj0OdIHldOJLhB22Uo+OEBfqb6+woo
         W4rbiVYCPYKbJzqJnXlg25hERgjnSVeyt7VrNHHE3ISUvR6ybpARsikmg4obkC/sRdT/
         /9HA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature:dkim-signature;
        bh=SC6S4N0iE/iWtMJoGybw22VcajWnSZh+8bfZIhUdl+k=;
        b=Z7ZLWQiKITwxhZt8dR2M8k8bGMSRCTs5HXqWywfWIKai+xfyTWZrmQhSn9X44DRFjO
         Luf9DfDlWubxJx6JE9srvDr7ETlTcKwdWVsoCTBgiV2RJf1H5y/aMfDFxjq8sVPEMuQO
         yfL3tEzwUe4oPHQgNttMqjIACD39GncvjV4Ojmc8eAWl2c4Y3MpZ8qQg8YuSu7lJ4Rtw
         2Y0SzXwWcdFGPglo+YXHyJ4CRg0CjM6dpVLJQNJQ9/HMnrnOUbqqwzZL/Wbp/c7uehOK
         52lilb9x+wuJJWsN2NvGTY6wjvl+1eI4PAmSXVrt3sqvoo+bDqr0nmKItHuHkyx0XltD
         044Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=qcAowrrt;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::641 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=SC6S4N0iE/iWtMJoGybw22VcajWnSZh+8bfZIhUdl+k=;
        b=Wrf/Cnff9YUubgD25JDMP0alvoQm+oHWUpbPYht0BQLpZ+LOSNMmCeImEyIt1KyLvY
         REOGfF26OTw4SwXxwRd1o7duc5DEqWRO6ry36IEtFH8lAP/tj1QoORb4XYqwGrSVfXmY
         X2f7jHn8KelZmhSvIDXVqfkwxmBjNOdAd3CFnB1iTZbVgqRCA9A2WuRIk5yGPK1YPcdG
         sDOqosm65GY4IlHoz2iBr9lycq7S/kp3s2BjisgBI0uidNsAEdrGQ+ZwGWoguWj+ZGV+
         TvJpws1HqkDmmnszZwyTa7rar+9jYErJgNH7Bs8QKoLTe92MlNhvMHwogFFPN2E76v77
         N2Lg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=SC6S4N0iE/iWtMJoGybw22VcajWnSZh+8bfZIhUdl+k=;
        b=O58dxB2nQi+7K7Z3S3V/ERtH6LhutSj5UZeXRo/X9alfyQdL4n9qm4nU5bXaJjbZjZ
         bJAuZzk4w3HzWR3/PudJQBQ/hTbQmQ0+4xBEsjpKZ3WROvbmhoMzXzBNDDlFGlJcdQfl
         C2oa1dyRfnLRKuuCAS8iJq9OwiEWQ1tBPsyZm9nxURGJE/BTTLBE3zY5ptOcp0nZOM7D
         4DgEuEIlSdSL0f0UClsdQDz0DOr+gXRxkuLXpzPRhlo+wDxP0d+LPUNuyNqNaoKtvchc
         F6xyaBncRDLnx4WYi58GohH63GDZ7vubLmy5/FDx4l2cGk2MpK42ssK0ByQ9o5hMO/Ad
         NqoA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=SC6S4N0iE/iWtMJoGybw22VcajWnSZh+8bfZIhUdl+k=;
        b=ikZ7gTLPr9RVa3INJpmh4nIelrl5yrIMmJ+hrKP422WNdSCcNFUE7MtdgGVY6BqqH6
         k29jdIPeUA3csLNfQbURm92Gqeg1M/nY2ybTcfxD+Fd9Df24FiuB+1rPVKKtRvqmFXou
         V6g6UzSo+VzE+uquZD5z/JFUQuFWm1zWkp2zcS5dOW9OjOID7qedLwBdZwCjCEGFLbvT
         FuqetT89SgAf6eUiBQ4WBcKXw+zqO+ya6Fi/55YZgwGmCAbtNr1tpGYzXg1oZ6apAM4T
         9ZzkOD3iQ5RjrdIorAoLVEpexTIxNdvsotw+yavGQitmfT1OMiw5xcryg/2oCMyyY75Z
         mFpQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533sccI24bsWSAlfSwpVuWuoKKZumzWD9uqbFUvkfs5wP/DVltc0
	c8Gn9winZhwLi7Xt+Ly7HfY=
X-Google-Smtp-Source: ABdhPJyb0YvG9c9V5Vk+gDaWdMeEf9GJa4urZCcHaeuhz9SQGrMA54R1AVatS2s8Ks04p3P+lm5H8w==
X-Received: by 2002:a92:d6c5:: with SMTP id z5mr6475545ilp.194.1590597639432;
        Wed, 27 May 2020 09:40:39 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:79c2:: with SMTP id u185ls3900474ilc.9.gmail; Wed, 27
 May 2020 09:40:39 -0700 (PDT)
X-Received: by 2002:a92:de10:: with SMTP id x16mr3782570ilm.6.1590597639070;
        Wed, 27 May 2020 09:40:39 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1590597639; cv=none;
        d=google.com; s=arc-20160816;
        b=mwTfeioiVAmSQvWQ0LZ0GMwp+oYmEFAiQdylreoWtQpyfostXuBX2CgdsDdO1/FEgC
         2hrvRpYXIrza+hYbZW8zWqKsBrsrl1S+OkwaCPPr2WEUOPPWZrKUCxwML5botguWwnof
         o776mIVrNA+RuIsTO0qvMRhuhafZ0IeW/wXul8b/+MZW6lfis2nfDJRZg42zFBCddprb
         +zTap1urVLsWfF+BOzB4AbvcKXRART6SgQTugrwcfv+GZADE9rATkGUUlIVuNxkM/YAu
         dr8zHvJde2uW7/ZEUTv+UbdtSwXAuJLtAy00X8pUKlRkbficgbD2646239m6pvprmRo+
         Nx4g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=uHhJpfFsD/vONvAsVvtz6rjp43VNNhX+VTZ9/q4aMwo=;
        b=qoMBHbegsnCNVhvFpRRCgT8OFNQwU9peX2txwXJCV43WtMyiqXJ1r/1Nl41+1WMQtN
         MWu0RkCxNMnsmLib9VvH8VjuMDeW7I1LsHwi57RCE/PmUj/VmqfzNp73nRPPF9RWMFtD
         V3JMCYgxnoTl83wneHUzcNjfIxXAnmMkZXGFu04YCnZnI+G/xCaFJOIK1VNdPKo3Wd7g
         sspgREvKoGGGX5onvaUJpNTAe6hWQNnS1HUzZAKe+F+qM+5dSYrFZcrUpcjU8cNl2VW3
         AQsxN9y/ZSUzLVPeH1K8QfHqWG99nZZ4GGGOZ0j9O+D8OzG7hyK3rm39FZT0gwhgP+vz
         MQ6A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=qcAowrrt;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::641 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-pl1-x641.google.com (mail-pl1-x641.google.com. [2607:f8b0:4864:20::641])
        by gmr-mx.google.com with ESMTPS id h14si234734iol.1.2020.05.27.09.40.39
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 27 May 2020 09:40:39 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::641 as permitted sender) client-ip=2607:f8b0:4864:20::641;
Received: by mail-pl1-x641.google.com with SMTP id d3so10328046pln.1
        for <clang-built-linux@googlegroups.com>; Wed, 27 May 2020 09:40:39 -0700 (PDT)
X-Received: by 2002:a17:90a:1aa3:: with SMTP id p32mr6262456pjp.4.1590597638410;
        Wed, 27 May 2020 09:40:38 -0700 (PDT)
Received: from ubuntu-s3-xlarge-x86 ([2604:1380:4111:8b00::1])
        by smtp.gmail.com with ESMTPSA id q145sm2425759pfq.128.2020.05.27.09.40.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 27 May 2020 09:40:37 -0700 (PDT)
Date: Wed, 27 May 2020 09:40:35 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Arnd Bergmann <arnd@arndb.de>
Cc: Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>,
	Dilip Kota <eswara.kota@linux.intel.com>,
	linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com
Subject: Re: [PATCH] phy: intel: fix enum type mismatch warning
Message-ID: <20200527164035.GA1073507@ubuntu-s3-xlarge-x86>
References: <20200527134518.908624-1-arnd@arndb.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200527134518.908624-1-arnd@arndb.de>
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=qcAowrrt;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::641 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

On Wed, May 27, 2020 at 03:45:06PM +0200, Arnd Bergmann wrote:
> clang points out that a local variable is initialized with
> an enum value of the wrong type:
> 
> drivers/phy/intel/phy-intel-combo.c:202:34: error: implicit conversion from enumeration type 'enum intel_phy_mode' to different enumeration type 'enum intel_combo_mode' [-Werror,-Wenum-conversion]
>         enum intel_combo_mode cb_mode = PHY_PCIE_MODE;
>                               ~~~~~~~   ^~~~~~~~~~~~~
> 
> From reading the code, it seems that this was not only the
> wrong type, but not even supposed to be a code path that can
> happen in practice.
> 
> Change the code to have no default phy mode but instead return an
> error for invalid input.
> 
> Fixes: ac0a95a3ea78 ("phy: intel: Add driver support for ComboPhy")
> Signed-off-by: Arnd Bergmann <arnd@arndb.de>
> ---
>  drivers/phy/intel/phy-intel-combo.c | 4 +++-
>  1 file changed, 3 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/phy/intel/phy-intel-combo.c b/drivers/phy/intel/phy-intel-combo.c
> index c2a35be4cdfb..04f7b0d08742 100644
> --- a/drivers/phy/intel/phy-intel-combo.c
> +++ b/drivers/phy/intel/phy-intel-combo.c
> @@ -199,7 +199,7 @@ static int intel_cbphy_pcie_dis_pad_refclk(struct intel_cbphy_iphy *iphy)
>  
>  static int intel_cbphy_set_mode(struct intel_combo_phy *cbphy)
>  {
> -	enum intel_combo_mode cb_mode = PHY_PCIE_MODE;
> +	enum intel_combo_mode cb_mode;
>  	enum aggregated_mode aggr = cbphy->aggr_mode;
>  	struct device *dev = cbphy->dev;
>  	enum intel_phy_mode mode;
> @@ -224,6 +224,8 @@ static int intel_cbphy_set_mode(struct intel_combo_phy *cbphy)
>  
>  		cb_mode = SATA0_SATA1_MODE;
>  		break;
> +	default:
> +		return -EINVAL;
>  	}
>  
>  	ret = regmap_write(cbphy->hsiocfg, REG_COMBO_MODE(cbphy->bid), cb_mode);
> -- 
> 2.26.2
> 

I sent an almost identical patch:

https://lore.kernel.org/lkml/20200523035043.3305846-1-natechancellor@gmail.com/

I left out the default case since clang warns when a switch on an enum
does not handle all the values (compile time scream) versus a run time
scream like yours.

I don't have a preference for either so:

Reviewed-by: Nathan Chancellor <natechancellor@gmail.com>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200527164035.GA1073507%40ubuntu-s3-xlarge-x86.
