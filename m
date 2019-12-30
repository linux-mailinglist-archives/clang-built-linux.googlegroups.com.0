Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBAW5UXYAKGQERSH47SY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf38.google.com (mail-qv1-xf38.google.com [IPv6:2607:f8b0:4864:20::f38])
	by mail.lfdr.de (Postfix) with ESMTPS id 78AED12CC18
	for <lists+clang-built-linux@lfdr.de>; Mon, 30 Dec 2019 04:26:59 +0100 (CET)
Received: by mail-qv1-xf38.google.com with SMTP id k2sf22218119qvu.22
        for <lists+clang-built-linux@lfdr.de>; Sun, 29 Dec 2019 19:26:59 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1577676418; cv=pass;
        d=google.com; s=arc-20160816;
        b=DUL/Itj0P4eIpw0+C6fkxXjfVDZiOuNky4EhFnqaleYjoH8fPlQpSgPUBWw+fj+AeD
         UH+EA+Fo1lpXVePe1eVMFND3BZ+CCmVTySHLIQoqeHBp62IcDPoP6SlKVafeHMxMcTZ/
         PsnPyP0sydESOo5fhCom9VNMHTU3Lx9xEEdX4WJcY5gy6zGZ8Afu8E889Gr+XUtdfTyl
         OX9x6vjohHr5dEeO2XElSGP0GmLGEAeqCftw6ljqZq7ZOidUMg16+PZ8LflHcaQ7CunY
         2+Tgk0ZVFtxtEdTxrFn5Al7xieCVtQ+W+kxCoTdUxAU5cKkBXda3dI9sTwSg2gXqBKWQ
         HWIw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature:dkim-signature;
        bh=jUQ/q9jluu1ygcGKtsoaEfwsLDdPUPJiORxlBGW9p6g=;
        b=rQSlHeexcuJZriuyr21oVvvjfOUqZ8JWcHm2eA73pxb6aBRuxgIthuBaPrJfdRfd/s
         m4WSIkynOHDPg6/tcnA9QDVtptRzIUpdQQWUKB8rSy2XHBYeJ0eSk+fz4rrwIP9v/MF0
         WMhHVvzw/hnGQlx3wX/1SBR4Z8zoGl5NdJwhGwGByUplZD7fLh4bBJg8hBA74L9w/Azz
         AJkrUlfQI5Xsn5mwDStEuTSUpTiexwOBmyQNz4snO4I/LMjhAsxjF+957HBhISxew7vb
         tK0Lb9TuQXUFIDj7+vPbWdsocszEpNFTxUqTdbxVGWO8RBb1tuzl5C1V8RfoGMm2ki6X
         veww==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ZnJdLw8V;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::344 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=jUQ/q9jluu1ygcGKtsoaEfwsLDdPUPJiORxlBGW9p6g=;
        b=BWA9hgRNTUEPPJtOXta3tfU1h//wb6BqVJaaa1X70rETPcDakjwiAkDZKyG74qeJww
         HOTQB9apKVwnaGLedcZ1eY1YAdW6DP4xIl2LVRag1IjJvSut/9/skkqGPmXovw16ZRx4
         svdo5pzwEzdsBO6X56HHIgi3spPjjNunk3XnLlE1Z6UFye9m8SZPBQBL6DiQve0uANqE
         Doawl0nWHOWqdeH0/jeCzuaUF4mV8AB5TzZfiZ3D6K8g7gksEfnzWTTQET5g20AIdloy
         VoMCwjVRpq/vId/zmH2gioxEomCHjVhsNw7Vl+q0YMk3ifG4S/7r3yyez0Lm60SJoIPx
         pEgA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=jUQ/q9jluu1ygcGKtsoaEfwsLDdPUPJiORxlBGW9p6g=;
        b=F1u1OmIohaUej00d5f2+u/CfbkR98mYdjWOqSvV2GEA2QthsT5qE/HpBanKp5pdsQN
         dsAuVBr4+bfbvglOQgNcWCiQ4i/GVLCJGKLZqb3nAVxMaYlcCabA47zWYmnGq/Pp46BQ
         keXW7QR8UgdunJcV5Z+6IKvJa/bvACsx7/e1wyPB2aiHWWZL0cNPG431U/FLgYI2DC4E
         HhV5cEh3axaA3l41lhf/uwhQcHqwqz6jOZE/BpkoRvJRfjmmiz6OQGC9ncdNOwxsxUb4
         DKwsSkxPZBhfxdyuL3TrvYq9wlb0AO872XB/Fnz+mimSZE1pfmPXsLVylvvi4u7/NVsk
         +c7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=jUQ/q9jluu1ygcGKtsoaEfwsLDdPUPJiORxlBGW9p6g=;
        b=BmcpNwHDjEJJnxVEAknPGP2bkMdmZNG2EU23eCN2HWV29Im/abOOGQ6YksM0JR7HZ3
         +5qr2KK8GS/DDtPLm5niSWwKSMtN5K5DGLFcXMviJP3N7lRuLSGqpBU4/dpW8HcElGJt
         dZFHyo/Yp+r28DATN5BPEsirrlPi3PlwrAAEWM7mJoCj4MbvJy4gN7TQFNG1cx6AImF/
         Mj07Tx4w1C/RyIpva4bvBYRuiWpeXkMTbYuvdW4DO+Rk5sJ/Ca7Gb64nPq8oaAELBzOu
         AaEJZOMM0S8VXEg8TsagwaS35Udxlx1NK4Mnod/3PHI8Uvlgu1lUcYVI3xhI1yaXQI6C
         QqEQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWrS07y6KhYz0zjrjXYGbIPggfVEr26xFp8ji9sufzOtjOGv/Dp
	yagEYpFkSovgdwrpRdRG95A=
X-Google-Smtp-Source: APXvYqxyATl96SPvbcWR2IFEZO55LzkruNHALVeTN5M+CeKv3vmMQ4BhE4+28aYic2pew8En+FMUwA==
X-Received: by 2002:ac8:7155:: with SMTP id h21mr44512603qtp.95.1577676418499;
        Sun, 29 Dec 2019 19:26:58 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ad4:5441:: with SMTP id h1ls5243725qvt.8.gmail; Sun, 29 Dec
 2019 19:26:58 -0800 (PST)
X-Received: by 2002:ad4:4810:: with SMTP id g16mr47215367qvy.22.1577676418178;
        Sun, 29 Dec 2019 19:26:58 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1577676418; cv=none;
        d=google.com; s=arc-20160816;
        b=xGezgFVaOWB3xB2xSIRbPufd7iZczsHSmKJReK3CiZATyo3uiKyDLF/E+GXIWzVP62
         bd2hqWGCnJusyS9py73Z4pLucHRuLgOOg5QDCgLDaSfj1Dx6AfJBDwPChJ2dtRHnNEGS
         QST4TWroGMrBHSmkt+HSAl7wOYFNAEqyHiFCOnz9JkR1Ycw4W0bOYPQ8WDb4UvKGNBD2
         PLTLd9jYCT1KO8b2e4TPeod2jfhbqEAdlCwe6xAIx4RWuavlZyV7pVkFAdOTfTMy5n3y
         +Gj3xMhQ9AhDiPm+qZCN9DJoIyiDCfDOiJrbXYUi28EX8GgNQpRQv8ygqKzmZsFYG9DS
         ssbw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=Gv0OLo3Ag/B/dHMfjPCdcXnTNQKEgoSIqR8n6vs8xDY=;
        b=jlqKlvRCNv9tfztVIVCz+y3/hoRbKpvwzJ6p9bCLyfYKdb1PL5bVtM89RiJ8re8XI2
         ZzBxXJiQ0zk/cDs/bcUuf4Um6nzk69bucPaapmL+7Y/O2lkWA/kmHJKaPFXq5mWDBMXr
         7YxgMvySJSRFZx7v1eDCR/NIYJdzEaJ5eO5rZ0a5nB/kHIGUWnjoVyxdFdF9yynBbFEe
         ec4jrdrbDobQFWkFpyj1O0VgKm3yCUzYYXhhxIzq3ubmYlhS9nCWq7jc6GdbY5Jyd+Kp
         X+rA1YHkF1nrmU49qJtpevJx038hfYmLhMkAZc54rAegp7y9jb4fGB+a7LYZ50vzde9I
         QLxA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ZnJdLw8V;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::344 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-ot1-x344.google.com (mail-ot1-x344.google.com. [2607:f8b0:4864:20::344])
        by gmr-mx.google.com with ESMTPS id w10si1488717qtn.1.2019.12.29.19.26.58
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 29 Dec 2019 19:26:58 -0800 (PST)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::344 as permitted sender) client-ip=2607:f8b0:4864:20::344;
Received: by mail-ot1-x344.google.com with SMTP id d7so40195902otf.5
        for <clang-built-linux@googlegroups.com>; Sun, 29 Dec 2019 19:26:58 -0800 (PST)
X-Received: by 2002:a9d:6481:: with SMTP id g1mr73581601otl.180.1577676417545;
        Sun, 29 Dec 2019 19:26:57 -0800 (PST)
Received: from ubuntu-m2-xlarge-x86 ([2604:1380:4111:8b00::1])
        by smtp.gmail.com with ESMTPSA id q25sm15294943otf.45.2019.12.29.19.26.56
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Sun, 29 Dec 2019 19:26:56 -0800 (PST)
Date: Sun, 29 Dec 2019 20:26:55 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Chanwoo Choi <cw00.choi@samsung.com>
Cc: linux-pm@vger.kernel.org, linux-kernel@vger.kernel.org,
	chanwoo@kernel.org, myungjoo.ham@samsung.com,
	kyungmin.park@samsung.com, clang-built-linux@googlegroups.com
Subject: Re: [PATCH] PM / devfreq: Add debugfs support with devfreq_summary
 file
Message-ID: <20191230032655.GA40172@ubuntu-m2-xlarge-x86>
References: <CGME20191226060101epcas1p11a225c00bb7ab2f6b7895b4cb00b9871@epcas1p1.samsung.com>
 <20191226060749.13881-1-cw00.choi@samsung.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20191226060749.13881-1-cw00.choi@samsung.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=ZnJdLw8V;       spf=pass
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

Hi Chanwoo,

On Thu, Dec 26, 2019 at 03:07:49PM +0900, Chanwoo Choi wrote:
> Add debugfs interface to provide debugging information of devfreq device.
> It contains 'devfreq_summary' entry to show the summary of registered
> devfreq devices as following: And the additional debugfs file will be added.
> - /sys/kernel/debug/devfreq/devfreq_summary
> 
> [For example on Exynos5422-based Odroid-XU3 board]
> - In order to show the multiple governors on devfreq_summay result,
> change the governor of devfreq0 from simple_ondemand to userspace.
> 
> $ cat /sys/kernel/debug/devfreq/devfreq_summary
> dev name                       dev        parent dev governor        cur_freq     min_freq     max_freq
> ------------------------------ ---------- ---------- --------------- ------------ ------------ ------------
> 10c20000.memory-controller     devfreq0              userspace       165000000    165000000    825000000
> soc:bus_wcore                  devfreq1              simple_ondemand 400000000    84000000     400000000
> soc:bus_noc                    devfreq2   devfreq1   passive         100000000    67000000     100000000
> soc:bus_fsys_apb               devfreq3   devfreq1   passive         200000000    100000000    200000000
> soc:bus_fsys                   devfreq4   devfreq1   passive         200000000    100000000    200000000
> soc:bus_fsys2                  devfreq5   devfreq1   passive         150000000    75000000     150000000
> soc:bus_mfc                    devfreq6   devfreq1   passive         333000000    96000000     333000000
> soc:bus_gen                    devfreq7   devfreq1   passive         267000000    89000000     267000000
> soc:bus_peri                   devfreq8   devfreq1   passive         67000000     67000000     67000000
> soc:bus_g2d                    devfreq9   devfreq1   passive         333000000    84000000     333000000
> soc:bus_g2d_acp                devfreq10  devfreq1   passive         267000000    67000000     267000000
> soc:bus_jpeg                   devfreq11  devfreq1   passive         300000000    75000000     300000000
> soc:bus_jpeg_apb               devfreq12  devfreq1   passive         167000000    84000000     167000000
> soc:bus_disp1_fimd             devfreq13  devfreq1   passive         200000000    120000000    200000000
> soc:bus_disp1                  devfreq14  devfreq1   passive         300000000    120000000    300000000
> soc:bus_gscl_scaler            devfreq15  devfreq1   passive         300000000    150000000    300000000
> soc:bus_mscl                   devfreq16  devfreq1   passive         400000000    84000000     400000000
> 
> Signed-off-by: Chanwoo Choi <cw00.choi@samsung.com>
> ---
>  drivers/devfreq/devfreq.c | 65 +++++++++++++++++++++++++++++++++++++++
>  1 file changed, 65 insertions(+)
> 
> diff --git a/drivers/devfreq/devfreq.c b/drivers/devfreq/devfreq.c
> index acd21345a070..d7177cc0a914 100644
> --- a/drivers/devfreq/devfreq.c
> +++ b/drivers/devfreq/devfreq.c
> @@ -10,6 +10,7 @@
>  #include <linux/kernel.h>
>  #include <linux/kmod.h>
>  #include <linux/sched.h>
> +#include <linux/debugfs.h>
>  #include <linux/errno.h>
>  #include <linux/err.h>
>  #include <linux/init.h>
> @@ -33,6 +34,7 @@
>  #define HZ_PER_KHZ	1000
>  
>  static struct class *devfreq_class;
> +static struct dentry *devfreq_debugfs;
>  
>  /*
>   * devfreq core provides delayed work based load monitoring helper
> @@ -1670,6 +1672,62 @@ static struct attribute *devfreq_attrs[] = {
>  };
>  ATTRIBUTE_GROUPS(devfreq);
>  
> +static int devfreq_summary_show(struct seq_file *s, void *data)
> +{
> +	struct devfreq *devfreq;
> +	struct devfreq *parent_devfreq;
> +	unsigned long cur_freq, min_freq, max_freq;
> +
> +	seq_printf(s, "%-30s %-10s %-10s %-15s %-12s %-12s %-12s\n",
> +			"dev name",
> +			"dev",
> +			"parent dev",
> +			"governor",
> +			"cur_freq",
> +			"min_freq",
> +			"max_freq");
> +	seq_printf(s, "%-30s %-10s %-10s %-15s %-12s %-12s %-12s\n",
> +			"------------------------------",
> +			"----------",
> +			"----------",
> +			"---------------",
> +			"------------",
> +			"------------",
> +			"------------");
> +
> +	mutex_lock(&devfreq_list_lock);
> +

The 0day team has been doing builds with Clang and it pointed out that
when CONFIG_DEVFREQ_GOV_PASSIVE is unset, parent_devfreq is always
uninitialized. The else branch should probably be eliminated, moving the
parent_devfreq NULL initialization above the if preprocessor directive.

The full report is below.

> +	list_for_each_entry_reverse(devfreq, &devfreq_list, node) {
> +#if IS_ENABLED(CONFIG_DEVFREQ_GOV_PASSIVE)
> +		if (!strncmp(devfreq->governor_name, DEVFREQ_GOV_PASSIVE,
> +							DEVFREQ_NAME_LEN)) {
> +			struct devfreq_passive_data *data = devfreq->data;
> +			parent_devfreq = data->parent;
> +		} else {
> +			parent_devfreq = NULL;
> +		}
> +#endif
> +		mutex_lock(&devfreq->lock);
> +		cur_freq = devfreq->previous_freq,
> +		get_freq_range(devfreq, &min_freq, &max_freq);
> +		mutex_unlock(&devfreq->lock);
> +
> +		seq_printf(s, "%-30s %-10s %-10s %-15s %-12ld %-12ld %-12ld\n",
> +			dev_name(devfreq->dev.parent),
> +			dev_name(&devfreq->dev),
> +			parent_devfreq ? dev_name(&parent_devfreq->dev) : "",
> +			devfreq->governor_name,
> +			cur_freq,
> +			min_freq,
> +			max_freq);
> +	}
> +
> +	mutex_unlock(&devfreq_list_lock);
> +
> +	return 0;
> +}
> +DEFINE_SHOW_ATTRIBUTE(devfreq_summary);
> +
>  static int __init devfreq_init(void)
>  {
>  	devfreq_class = class_create(THIS_MODULE, "devfreq");
> @@ -1686,6 +1744,13 @@ static int __init devfreq_init(void)
>  	}
>  	devfreq_class->dev_groups = devfreq_groups;
>  
> +	devfreq_debugfs = debugfs_create_dir("devfreq", NULL);
> +	if (PTR_ERR(devfreq_debugfs) != -ENODEV && IS_ERR(devfreq_debugfs))
> +		pr_warn("%s: couldn't create debugfs dir\n", __FILE__);
> +
> +	debugfs_create_file("devfreq_summary", 0444, devfreq_debugfs, NULL,
> +			&devfreq_summary_fops);
> +
>  	return 0;
>  }
>  subsys_initcall(devfreq_init);
> -- 
> 2.17.1
> 

Cheers,
Nathan

On Thu, Dec 26, 2019 at 11:47:26PM +0800, kbuild test robot wrote:
> CC: kbuild-all@lists.01.org
> In-Reply-To: <20191226060749.13881-1-cw00.choi@samsung.com>
> References: <20191226060749.13881-1-cw00.choi@samsung.com>
> TO: Chanwoo Choi <cw00.choi@samsung.com>
> 
> Hi Chanwoo,
> 
> I love your patch! Perhaps something to improve:
> 
> [auto build test WARNING on linux/master]
> [also build test WARNING on linus/master v5.5-rc3 next-20191220]
> [if your patch is applied to the wrong git tree, please drop us a note to help
> improve the system. BTW, we also suggest to use '--base' option to specify the
> base tree in git format-patch, please see https://stackoverflow.com/a/37406982]
> 
> url:    https://github.com/0day-ci/linux/commits/Chanwoo-Choi/PM-devfreq-Add-debugfs-support-with-devfreq_summary-file/20191226-140227
> base:   https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git 1522d9da40bdfe502c91163e6d769332897201fa
> config: arm64-defconfig (attached as .config)
> compiler: clang version 10.0.0 (git://gitmirror/llvm_project c5b4a2386b51a18daad7e42040c685c2e9708c47)
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
> >> drivers/devfreq/devfreq.c:1653:4: warning: variable 'parent_devfreq' is uninitialized when used here [-Wuninitialized]
>                            parent_devfreq ? dev_name(&parent_devfreq->dev) : "",
>                            ^~~~~~~~~~~~~~
>    drivers/devfreq/devfreq.c:1613:32: note: initialize the variable 'parent_devfreq' to silence this warning
>            struct devfreq *parent_devfreq;
>                                          ^
>                                           = NULL
>    1 warning generated.
> 
> vim +/parent_devfreq +1653 drivers/devfreq/devfreq.c
> 
>   1609	
>   1610	static int devfreq_summary_show(struct seq_file *s, void *data)
>   1611	{
>   1612		struct devfreq *devfreq;
>   1613		struct devfreq *parent_devfreq;
>   1614		unsigned long cur_freq, min_freq, max_freq;
>   1615	
>   1616		seq_printf(s, "%-30s %-10s %-10s %-15s %-12s %-12s %-12s\n",
>   1617				"dev name",
>   1618				"dev",
>   1619				"parent dev",
>   1620				"governor",
>   1621				"cur_freq",
>   1622				"min_freq",
>   1623				"max_freq");
>   1624		seq_printf(s, "%-30s %-10s %-10s %-15s %-12s %-12s %-12s\n",
>   1625				"------------------------------",
>   1626				"----------",
>   1627				"----------",
>   1628				"---------------",
>   1629				"------------",
>   1630				"------------",
>   1631				"------------");
>   1632	
>   1633		mutex_lock(&devfreq_list_lock);
>   1634	
>   1635		list_for_each_entry_reverse(devfreq, &devfreq_list, node) {
>   1636	#if IS_ENABLED(CONFIG_DEVFREQ_GOV_PASSIVE)
>   1637			if (!strncmp(devfreq->governor_name, DEVFREQ_GOV_PASSIVE,
>   1638								DEVFREQ_NAME_LEN)) {
>   1639				struct devfreq_passive_data *data = devfreq->data;
>   1640				parent_devfreq = data->parent;
>   1641			} else {
>   1642				parent_devfreq = NULL;
>   1643			}
>   1644	#endif
>   1645			mutex_lock(&devfreq->lock);
>   1646			cur_freq = devfreq->previous_freq,
>   1647			get_freq_range(devfreq, &min_freq, &max_freq);
>   1648			mutex_unlock(&devfreq->lock);
>   1649	
>   1650			seq_printf(s, "%-30s %-10s %-10s %-15s %-12ld %-12ld %-12ld\n",
>   1651				dev_name(devfreq->dev.parent),
>   1652				dev_name(&devfreq->dev),
> > 1653				parent_devfreq ? dev_name(&parent_devfreq->dev) : "",
>   1654				devfreq->governor_name,
>   1655				cur_freq,
>   1656				min_freq,
>   1657				max_freq);
>   1658		}
>   1659	
>   1660		mutex_unlock(&devfreq_list_lock);
>   1661	
>   1662		return 0;
>   1663	}
>   1664	DEFINE_SHOW_ATTRIBUTE(devfreq_summary);
>   1665	
> 
> ---
> 0-DAY kernel test infrastructure                 Open Source Technology Center
> https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org Intel Corporation
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191230032655.GA40172%40ubuntu-m2-xlarge-x86.
