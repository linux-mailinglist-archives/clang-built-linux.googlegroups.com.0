Return-Path: <clang-built-linux+bncBD35N45CXILBB5M65L4QKGQE5XPN7DI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-f62.google.com (mail-oo1-f62.google.com [209.85.161.62])
	by mail.lfdr.de (Postfix) with ESMTPS id D8BC92467F9
	for <lists+clang-built-linux@lfdr.de>; Mon, 17 Aug 2020 16:08:54 +0200 (CEST)
Received: by mail-oo1-f62.google.com with SMTP id f13sf8254399ooo.13
        for <lists+clang-built-linux@lfdr.de>; Mon, 17 Aug 2020 07:08:54 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1597673333; cv=pass;
        d=google.com; s=arc-20160816;
        b=SNY0Wz+rAh98+yt6GK5QRNy/VR6oyuBHaV9rPUzyakW09G0vTXFoCwXV78D02Egazc
         hxAaEil0x6obownFrAsu5AIJKgDbk9tXi/nAFpZFa+cpaLyTC2GDOCAQsCxUpWDNQ/ei
         QvCvgHwp5uOK7HKvWvN6ixqXIMX+ldbzQmjqkAVF2pubR3DXD9ITm7Wey3e5Y0iwwotr
         M5+xNayQ2tTkglA5kHgDsCriIGOwoxPktbueMInIS3gsx+3etrZBFfetcqTriA8q9l43
         Gq9k6dPdAfCwkPupgq1uxQHv4l4qDCN0i9I/Eb4LFZUpSJvqAliNRQDX6B2VhJx65G+O
         xo/A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:message-id:references
         :in-reply-to:subject:cc:to:from:date:mime-version:sender;
        bh=PEH+SsMrA2ao/i7QfLMp44bOYqDtQJD6hxLFekdSpCc=;
        b=jwdJTVtrmRSlxyK/U0LfjogtoaiNxHI9U+G3WBfffQ5vJJOOL7UYw3B5G90lRDxSY9
         zdsukZJvrWOioilMvtPom9ghbwQWPqZYaLsyyBkjquq29HLO3ubUEIot3UaO/hcjT1Pt
         09wYicXW6soRwHLgSyfFmCysT0JX7S12vohH8n60vn7NzM3hHx5BaOiE75XNNsjv7Tn5
         YlWzbJ2eSo8GWxzkoMatnX5lKOf4u3YChpOPHwqIxemIFNiF2agdVvNO45eo4e7I4ktc
         gBPYFDANHbqI9fF0wzc/k5h8sUHtBjrt3NfDwsp8DvTKXLa1sQxgLOXyCPonFdfV22bx
         pS6Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@mg.codeaurora.org header.s=smtp header.b=bDWvDGRG;
       spf=pass (google.com: domain of bounce+a1e0a8.be9e4a-clang-built-linux=googlegroups.com@mg.codeaurora.org designates 69.72.43.7 as permitted sender) smtp.mailfrom="bounce+a1e0a8.be9e4a-clang-built-linux=googlegroups.com@mg.codeaurora.org"
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:mime-version:date:from:to:cc:subject
         :in-reply-to:references:message-id:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=PEH+SsMrA2ao/i7QfLMp44bOYqDtQJD6hxLFekdSpCc=;
        b=o6pbXF+U/K4ayGNRQO6s5YvAWfUC2vckvi2aNcAMCbQrplq4mC/4DdRVr6a67n4K4y
         GRXWbbrllBo660stzfV5cWjq7IQv/kdwjVzY50JHjp108uif6ha4L8wqs/ABLRFI5SA0
         QdMzxPUzlYKgO+sj4118MOIE3lNNPahFlNkdC+glEV50zuDUzj0RyDTNSdeurQ1HER18
         2C/2ZYshKaqXxijs7GC+Gg9SRxPu+psPIwMzSPVWifBRv92DEUIxuJ6+WzCalcf560A6
         9qzJWBC2hTgcb5yXp3SFVl7iB5mqBGuYoxidqHX69V9oZqndMcS5BoZXMS7qISylz1Gk
         tu2w==
X-Gm-Message-State: AOAM532UuhIvwGIFGZeEqxFObva2b/nx3HavsW3NpyEinG4VDr0+h0Mh
	TZNGHF+yANOLr0eVNTtXeWg=
X-Google-Smtp-Source: ABdhPJw8ww1pK2pnuq2pMbYAYeAo88STTWIrnRnkUE4c1q2JNVLj0EWzK566GHnaEGtL+5ay67FbUw==
X-Received: by 2002:a9d:69cd:: with SMTP id v13mr10854587oto.64.1597673333518;
        Mon, 17 Aug 2020 07:08:53 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6830:1c78:: with SMTP id s24ls3609370otg.9.gmail; Mon,
 17 Aug 2020 07:08:53 -0700 (PDT)
X-Received: by 2002:a9d:7acb:: with SMTP id m11mr11537037otn.197.1597673333070;
        Mon, 17 Aug 2020 07:08:53 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1597673333; cv=none;
        d=google.com; s=arc-20160816;
        b=nw+OWJHPzVTSX3NEOe2Ijfot4vbB+Da9WO6fnUKO22gCD7rhAIwJmdvUBFBnrkSVrn
         DRd2oxb9qwl4OAgPfLUzBg2qTgTSE8smfP+OvVZeWaoPs2pN4eQ2IxkzTapKLZJQmyKf
         0LPm7rCrrAtNW5sFazLx4bGIC6wVpVPEcc+CYscaE31vlu162r4VZGwHaQ3+aiSIORAP
         EhKXTH85cOuJP5DJyMFAD/PbA7hz0/Ax4+fogwyp7J55lAcUAis4Yoliz5nd91v8CRvM
         RDYc+AEsmZZCcBIbjNGoXGHxMTxgblcpmfOQco8XJ6ZgN4bWFUPxCUg+NsZSyZ1B6HT3
         Ee2w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:message-id:references:in-reply-to:subject:cc:to:from
         :date:content-transfer-encoding:mime-version:sender:dkim-signature;
        bh=t4hLN9MLXcZJt9GM/Fc8JoQMEeFYiDnOvn2HIImnesY=;
        b=oUwWlHCNasRodCxiH1m2lWhEOWi4v01LnLfyX+u9jc2ssF+KrEwDzoUUrEN7/PEdKu
         ZWwSo6Ht0xt/51Rqzgyubirr9y+TCQstL5EQN1NgVy2qxxNljGwfLsXqg48xxJIbr0Rc
         XoO349WB3Rq+gFdZ0+waf0VAiQ/VB7j3tld9x1tl3fiNyN8FmuonKTM2Nf/l26XWvFsM
         nR7/5msugCTGjmzZMqGF4hahUmZYpO6oOh5MWjKu4bTFnszV3HGLVmyHSXzTHcPPuv7h
         OPhrhxK0OWGVG1jTBAExD378biy0mvzBzv3JpwaBofdwNWAzSI9BtzQugZDSSsAtaONG
         Tj9A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@mg.codeaurora.org header.s=smtp header.b=bDWvDGRG;
       spf=pass (google.com: domain of bounce+a1e0a8.be9e4a-clang-built-linux=googlegroups.com@mg.codeaurora.org designates 69.72.43.7 as permitted sender) smtp.mailfrom="bounce+a1e0a8.be9e4a-clang-built-linux=googlegroups.com@mg.codeaurora.org"
Received: from m43-7.mailgun.net (m43-7.mailgun.net. [69.72.43.7])
        by gmr-mx.google.com with UTF8SMTPS id r64si794024oor.2.2020.08.17.07.08.52
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 17 Aug 2020 07:08:53 -0700 (PDT)
Received-SPF: pass (google.com: domain of bounce+a1e0a8.be9e4a-clang-built-linux=googlegroups.com@mg.codeaurora.org designates 69.72.43.7 as permitted sender) client-ip=69.72.43.7;
X-Mailgun-Sending-Ip: 69.72.43.7
X-Mailgun-Sid: WyIyMWUwOCIsICJjbGFuZy1idWlsdC1saW51eEBnb29nbGVncm91cHMuY29tIiwgImJlOWU0YSJd
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171]) by
 smtp-out-n05.prod.us-west-2.postgun.com with SMTP id
 5f3a8f732889723bf8c6d961 (version=TLS1.2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256); Mon, 17 Aug 2020 14:08:51
 GMT
Sender: saiprakash.ranjan=codeaurora.org@mg.codeaurora.org
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
	id 3290CC433C6; Mon, 17 Aug 2020 14:08:51 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED
	autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.codeaurora.org (localhost.localdomain [127.0.0.1])
	(using TLSv1 with cipher ECDHE-RSA-AES256-SHA (256/256 bits))
	(No client certificate requested)
	(Authenticated sender: saiprakash.ranjan)
	by smtp.codeaurora.org (Postfix) with ESMTPSA id 4B220C433CA;
	Mon, 17 Aug 2020 14:08:50 +0000 (UTC)
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"; format=flowed
Date: Mon, 17 Aug 2020 19:38:50 +0530
From: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
To: kernel test robot <lkp@intel.com>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson
 <bjorn.andersson@linaro.org>, Stephen Boyd <swboyd@chromium.org>,
 kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
 linux-arm-msm@vger.kernel.org, Douglas Anderson <dianders@chromium.org>,
 linux-kernel@vger.kernel.org, "Isaac J. Manjarres" <isaacm@codeaurora.org>
Subject: Re: [PATCH] soc: qcom: llcc: Support chipsets that can write to llcc
 registers
In-Reply-To: <202008172052.mtVMHotl%lkp@intel.com>
References: <20200817081138.6755-1-saiprakash.ranjan@codeaurora.org>
 <202008172052.mtVMHotl%lkp@intel.com>
Message-ID: <ca48bfaf94267bc9883ad6c41de3f796@codeaurora.org>
X-Sender: saiprakash.ranjan@codeaurora.org
User-Agent: Roundcube Webmail/1.3.9
X-Original-Sender: saiprakash.ranjan@codeaurora.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@mg.codeaurora.org header.s=smtp header.b=bDWvDGRG;       spf=pass
 (google.com: domain of bounce+a1e0a8.be9e4a-clang-built-linux=googlegroups.com@mg.codeaurora.org
 designates 69.72.43.7 as permitted sender) smtp.mailfrom="bounce+a1e0a8.be9e4a-clang-built-linux=googlegroups.com@mg.codeaurora.org"
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

On 2020-08-17 18:13, kernel test robot wrote:
> Hi Sai,
> 
> Thank you for the patch! Perhaps something to improve:
> 
> [auto build test WARNING on linux/master]
> [also build test WARNING on linus/master v5.9-rc1 next-20200817]
> [cannot apply to agross-msm/qcom/for-next]
> [If your patch is applied to the wrong git tree, kindly drop us a note.
> And when submitting patch, we suggest to use '--base' as documented in
> https://git-scm.com/docs/git-format-patch]
> 
> url:
> https://github.com/0day-ci/linux/commits/Sai-Prakash-Ranjan/soc-qcom-llcc-Support-chipsets-that-can-write-to-llcc-registers/20200817-161342
> base:
> https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git
> bcf876870b95592b52519ed4aafcf9d95999bc9c
> config: mips-randconfig-r006-20200817 (attached as .config)
> compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project
> de71b46a519db014ce906a39f8a0e1b235ef1568)
> reproduce (this is a W=1 build):
>         wget
> https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross
> -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         # install mips cross compiling tool for clang build
>         # apt-get install binutils-mips-linux-gnu
>         # save the attached .config to linux build tree
>         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross 
> ARCH=mips
> 
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kernel test robot <lkp@intel.com>
> 
> All warnings (new ones prefixed by >>):
> 
>    drivers/soc/qcom/llcc-qcom.c:343:28: warning: unused variable 'np'
> [-Wunused-variable]
>            const struct device_node *np = dev_of_node(&pdev->dev);
>                                      ^
>>> drivers/soc/qcom/llcc-qcom.c:324:34: warning: unused variable 
>>> 'qcom_llcc_configure_of_match' [-Wunused-const-variable]
>    static const struct of_device_id qcom_llcc_configure_of_match[] = {
>                                     ^
>    2 warnings generated.
> 

Ok, W=1 build and CONFIG_OF=n, so I need __maybe_unused for 
qcom_llcc_configure_of_match.
Will add and send v2.

Thanks,
Sai

-- 
QUALCOMM INDIA, on behalf of Qualcomm Innovation Center, Inc. is a 
member
of Code Aurora Forum, hosted by The Linux Foundation

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/ca48bfaf94267bc9883ad6c41de3f796%40codeaurora.org.
