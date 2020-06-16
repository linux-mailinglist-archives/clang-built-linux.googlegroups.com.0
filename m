Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBD5FUD3QKGQEHZSPKQA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43c.google.com (mail-pf1-x43c.google.com [IPv6:2607:f8b0:4864:20::43c])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DB8A1FA526
	for <lists+clang-built-linux@lfdr.de>; Tue, 16 Jun 2020 02:30:09 +0200 (CEST)
Received: by mail-pf1-x43c.google.com with SMTP id q24sf14530257pfs.7
        for <lists+clang-built-linux@lfdr.de>; Mon, 15 Jun 2020 17:30:09 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1592267408; cv=pass;
        d=google.com; s=arc-20160816;
        b=BuiMv+a5tU7DbVLPyUqG6Kl0Gj1cBVlwlBJLOx5ws9xqxptUhue2hhSqaSY/M4yIbh
         /prIp59vyc5nR32QWBoMhQeI+vahq16cTkQ/dX10BkJrp175gcL2JEZZLyqPKZg1q8sp
         lvRCH2IKfwazmRzIuGxNandkpBaOiZV9sS23rZMuENhCpVlDvRfJw+mxRMquaIDiYYnF
         EJ7b+mREUkJNqxr4pUgZrIwRfWlTHf3s/IGtoCgX9d/AAKyisV56I9P58SUGofdF3eRE
         jgt7zhqN0i9MBPFEGt9wqhORG8y7BqPo9RdPIj+tjHfDWa/dDOe4DnOcbXywBkq2Wp0b
         4rXA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature:dkim-signature;
        bh=2hmcPXa7QMG0NnpaZlqFRS+O43JpQSOlbGpouCTrjOs=;
        b=gVOjLij5UFt2ILci64B7RMOZX1xKljU+G8IXeyzRwSl/y7GOZrP8BOlgx7FRYrTDhE
         7xdJHfevW97x96KrGt5zvSkzRhXFtROLnPrcuuAncb0uaR1/fXDZLdagt0lo6sv/1580
         VxApG+9rZz8ls2VsbKXuD2okdks+GHcTjcKhhQ8szH5WqAIqaTH2RSGjE91WJfSRaQJs
         Ez02tmXas+YNY2Bu+KMOBMsMN3aqEeiCuXxbatszPVf/wAG0ex7nWuqpwkSeiGJWLHb9
         6Svvr6cKdU/0rX9ULbD1oMWkkSPsQVB5yER62c3Vx5ysZG7bgXSC5kTzMvU+OSZO/XxP
         XBBg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=SWVn3c8e;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::344 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=2hmcPXa7QMG0NnpaZlqFRS+O43JpQSOlbGpouCTrjOs=;
        b=jwLnE+9Xs53NbShnDsR/pTSgiVGe9V7s0XkRrcLtPzZ31TFTqXrn8XBM96a8qYom/S
         VI0CnDOdfWp0Qu3IikiMNxSzWLLujnzDyOKZiviTeNg8QTfrR0OBxP9IYQr2hrv1GKuA
         eaGopF5S2EFMjOnnKjU6RGohkox2j8w9ejCkW06FwmtG19xVnwJS6/PS6oP9ymSFZxaX
         Fq3lkeJsjcpEQztIiWgvz4xVmtM3yz98dsLZlZdVqhZusxDPzJ+VoNaJ37r/O4n1KJpl
         43c4kXR/t66xbzCfs4AAthOIJ116TcFpGnb2Yn8T5wrEoDbYO89mwbVfeUHY6FLFJ1Ti
         Meuw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=2hmcPXa7QMG0NnpaZlqFRS+O43JpQSOlbGpouCTrjOs=;
        b=sDZ+V/WfKd0KSOwW2WI3WY6Lt8GyK067dF+s3PzP5O0JYYluKd+UB6HHK0KlbBBVSJ
         hdAH13iFGixM1i+RyffCD55upDA2ToJF7K2ZzBoSGB8ML3lU8+jvEHLS01Rij6ztrghy
         +gWVCnJrRVOo/dZgAWDyqbb+fKVxeBb9HSl9wq5FeKvbDLF/g/0sPq3LSzMwEIKCIYQS
         mE5g73dr3zYWOED4G1apo7SNGrYD/J+EbLQAwVokREYsx4M6v78Aw2JitchT2Vz1+gAf
         yufCLmWVkuLoJ06ZktUyKA8XyLzv89gDm09l4AsneNI4gKleddT9qXzKxcnks+U7lFhM
         tR+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=2hmcPXa7QMG0NnpaZlqFRS+O43JpQSOlbGpouCTrjOs=;
        b=H9gpKS2fyrSPddyOHuJTxs0mzhtE4oA/91wXeyh0NA9lalIn8EAFkCpNtpUHWkyoDS
         3YalU6Aiu0WIZdbh12RnrgUjhzeGRYyW77dRdyTwcSYb2ZJTiXGbLPIipYdOcvgfrf7B
         mIihL/o0YRqHePqkBjm3g7Y53/kqYrsWVI2jb5DNhlFs0OKPgkaPY1y5hgalTqZmojIB
         TzDPo9PhiITE9n76WJzs5mL08fe7r2T7yRJoxGVID4Xikr6DLe08Dds8dn+SVHj5bkTh
         7ZAsRFSvT9zG40qwSvEmFy5Y36/fxAIva+DMfbW71m7WnAzeBXKYu28PTkcAOipZDXqy
         q39w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531UsZ0diDN47+54jcKrtaQoP8kKFk1N2naxCJPMk9LWXBimFHW0
	9T8n3EMw2W5Ar4168swBL8g=
X-Google-Smtp-Source: ABdhPJy1lB4r//YeMlHR3+7vOWjKCrd8S9SCDJZtUXeYlCa835ilgAQEFgM21dMAp9MENlGy2sd5UA==
X-Received: by 2002:a63:4f1b:: with SMTP id d27mr89456pgb.389.1592267407694;
        Mon, 15 Jun 2020 17:30:07 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:185e:: with SMTP id 30ls3814413pgy.9.gmail; Mon, 15 Jun
 2020 17:30:07 -0700 (PDT)
X-Received: by 2002:a62:191:: with SMTP id 139mr222712pfb.94.1592267407238;
        Mon, 15 Jun 2020 17:30:07 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1592267407; cv=none;
        d=google.com; s=arc-20160816;
        b=SM1neRPJpngOO4rz1m8JUHpr/cOm9ysR45zWOCAfZV8f9mnw88t/dFI1KWtJdjBHjC
         H3meWN4qnxb2fZ4FlniEyfKPVmvXCMnG9EoMYHUe6Nb3MDHHZT1ExdWQqgXlbyhtWeDT
         MpP9dTTDXAZdnvHbKSBf2Hzj0ogYSTmZi0GdaSvpYxFrqM9vkz+Z6ypSryfIhA6c/5KK
         9UwGMI7MJrlCSOqdZd2gJ6EHEt/6RJUtRrgKXT+jSGfSNbyjAU6GBOGIipErtndBnR1N
         S2Slutcaj2I4+lQqC5Iy/jikSkqnuurr/Iz8kr1adwCg0PG70YT5J0e8H7E3laNwpz8A
         RWwA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=0+i3xhPEZXa0gRiDvTRs3pZ+q40HmUbfs/tMCxOEi04=;
        b=sAmSLFFiBlC5cT4LJ6et2PrzgMlHPpt3DzMMAPX7HceV4MqZfHsnqMTSlUCNNGrbcC
         bj/4tThBNTDnNzG+WJ1Z2qHUMk1Vw6Yr6/+AzKWRHgHLMy81q/roOnZRwmS5ZDv8HSnd
         2yTI6CpEZmfZ7SThUCS0MyIylkbkgKaZUBDLHKrrbaaSW0bo2Vro6BgPlvT1usZMyvaz
         QNWWeLup3rwP/+zPC9KolVIirfjvMpH8rS7GnYi2nIbhi7S3fB+xPWTqdUSpqeCz/da2
         fPwRC5unc8Qgg8i3nR+y/rgFnbPA24IbZ6hnF5JEj2uI5RxGZq2PRqjiNDb7E10K3fYu
         nJsg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=SWVn3c8e;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::344 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-ot1-x344.google.com (mail-ot1-x344.google.com. [2607:f8b0:4864:20::344])
        by gmr-mx.google.com with ESMTPS id q194si1079022pfq.4.2020.06.15.17.30.07
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 15 Jun 2020 17:30:07 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::344 as permitted sender) client-ip=2607:f8b0:4864:20::344;
Received: by mail-ot1-x344.google.com with SMTP id m2so14606947otr.12
        for <clang-built-linux@googlegroups.com>; Mon, 15 Jun 2020 17:30:07 -0700 (PDT)
X-Received: by 2002:a9d:22aa:: with SMTP id y39mr508401ota.76.1592267406541;
        Mon, 15 Jun 2020 17:30:06 -0700 (PDT)
Received: from ubuntu-n2-xlarge-x86 ([2604:1380:4111:8b00::3])
        by smtp.gmail.com with ESMTPSA id y206sm3608448ooa.32.2020.06.15.17.30.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 15 Jun 2020 17:30:05 -0700 (PDT)
Date: Mon, 15 Jun 2020 17:30:04 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>
Cc: linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com
Subject: Re: [PATCH] phy: intel: Eliminate unnecessary assignment in
 intel_cbphy_set_mode
Message-ID: <20200616003004.GB1307277@ubuntu-n2-xlarge-x86>
References: <20200523035043.3305846-1-natechancellor@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200523035043.3305846-1-natechancellor@gmail.com>
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=SWVn3c8e;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::344 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

On Fri, May 22, 2020 at 08:50:43PM -0700, Nathan Chancellor wrote:
> Clang warns:
> 
> drivers/phy/intel/phy-intel-combo.c:202:34: warning: implicit conversion
> from enumeration type 'enum intel_phy_mode' to different enumeration
> type 'enum intel_combo_mode' [-Wenum-conversion]
>         enum intel_combo_mode cb_mode = PHY_PCIE_MODE;
>                               ~~~~~~~   ^~~~~~~~~~~~~
> 1 warning generated.
> 
> The correct enum to use would be PCIE0_PCIE1_MODE. However, eliminating
> this assignment is a little better because the switch statement always
> assigns a new value to cb_mode, which also takes care of the warning.
> 
> Fixes: ac0a95a3ea78 ("phy: intel: Add driver support for ComboPhy")
> Link: https://github.com/ClangBuiltLinux/linux/issues/1034
> Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
> ---
>  drivers/phy/intel/phy-intel-combo.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/phy/intel/phy-intel-combo.c b/drivers/phy/intel/phy-intel-combo.c
> index c2a35be4cdfb..4bc1276ecf23 100644
> --- a/drivers/phy/intel/phy-intel-combo.c
> +++ b/drivers/phy/intel/phy-intel-combo.c
> @@ -199,9 +199,9 @@ static int intel_cbphy_pcie_dis_pad_refclk(struct intel_cbphy_iphy *iphy)
>  
>  static int intel_cbphy_set_mode(struct intel_combo_phy *cbphy)
>  {
> -	enum intel_combo_mode cb_mode = PHY_PCIE_MODE;
>  	enum aggregated_mode aggr = cbphy->aggr_mode;
>  	struct device *dev = cbphy->dev;
> +	enum intel_combo_mode cb_mode;
>  	enum intel_phy_mode mode;
>  	int ret;
>  
> 
> base-commit: c11d28ab4a691736e30b49813fb801847bd44e83
> -- 
> 2.27.0.rc0
> 

Gentle ping for review. Nick did comment that maybe keeping the
assignment and tidying up one of the switch cases would be better but
every maintainer has their preference. This warning has slipped into
mainline so it would be nice to get it cleaned up.

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200616003004.GB1307277%40ubuntu-n2-xlarge-x86.
