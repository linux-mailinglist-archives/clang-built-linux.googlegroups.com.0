Return-Path: <clang-built-linux+bncBDIOBYPK6QDRBRFTR35AKGQEWOG3BNQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x437.google.com (mail-wr1-x437.google.com [IPv6:2a00:1450:4864:20::437])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F5C024FBBB
	for <lists+clang-built-linux@lfdr.de>; Mon, 24 Aug 2020 12:43:17 +0200 (CEST)
Received: by mail-wr1-x437.google.com with SMTP id 89sf3803320wrr.15
        for <lists+clang-built-linux@lfdr.de>; Mon, 24 Aug 2020 03:43:17 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1598265797; cv=pass;
        d=google.com; s=arc-20160816;
        b=YTwLdqoa/i9Gq3zo5XSWaiUHO32Lx++WmLgQDtTjdG5s2d0pg0UPgHUWp2rGjq1Nkz
         h8nqYNgtRnXeH51Ky7zi1U35kWFLTY82Jbdqq6A1bZbBA/dQvnLtdonKT80Aty0+6GOt
         vbm9nxb/h852iOhNs9v6J8FDN05T8HEGq2uZuhLylLH4W9wj3mWUfOp3bw7S03JNbxin
         l/sMiiQfWcAnzBIlrAUusW1qRlunQL2srGDo+6PqPXPO+0/0oAkvuheA+VbGYOfr8orX
         eQjnoVfZrRWMe6Wsn2CVriZzozMXtNkRSrkZuopXoaHsXay90H3TpcASWAX4SHuEgqo5
         b9UQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=2TtFDpfIZeTSJhbzOa8rVB45XirDDGx+oQ1hqiofn38=;
        b=C+HwyBnDXwmJl9PxmBliPzkB8rcmQkcRdHUhIjwQZvJ962mDlnRVYqRcg92Aut4KiU
         RL6BrYjy369JD20WJrXwPhKPpSax4x2nOwEAETSpPg33okIIj6i2diuhfzI2cydSVl3+
         Z2ueZB3bYjtC0zLC3D8mtkVNCMIFQ5MvUYtW0Z8K0MAt2DaUVHRmf+A7EMgH/zw2u52w
         UT6aL29Yohx+WpKXUXvwdAyi2jchefmpMwZkeBNYu7W/04y2MgbzC7IyRmg30unpzfqt
         jICtb0U5wOtGLUj5SeQ+2O9hgZzQ1ylBMlsrEXRWw5eYHD4M2iy5DrORNZaNM4m8RvJ6
         mm5w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=neutral (google.com: 212.18.0.10 is neither permitted nor denied by best guess record for domain of marex@denx.de) smtp.mailfrom=marex@denx.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=2TtFDpfIZeTSJhbzOa8rVB45XirDDGx+oQ1hqiofn38=;
        b=DfM/uTHBhUhfVv5ECeY/C6tfGyTf/pEmmz0JLbFoi1UfV9CWZgKNhNwDM2I7cCxzpc
         r4VBQ91EgVUvxLiySrcNQ2EmCSVcEOO+9i7gx22vufwgR7q70NJiIN8LL9Gf5XgUzcXI
         6dQSy7oGEL1ulAMu+EBHUmJLMR7UzNrFqTLKwk5OSCbE8PPWbW+WGN8yJQMN3J7+3p3A
         dMUOdsCMS4vFS14CCA6GhD1oqV4KzSGJN11Jq0dxwtszaHYKjURS/akeLGXPPv53zorJ
         rWPvB/wPuuLVrJpBGZORPUnUUb3FBtZ+LSVzKnWI1QfxAGKgVtelIoBxcY1kcitxmlPc
         L++w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=2TtFDpfIZeTSJhbzOa8rVB45XirDDGx+oQ1hqiofn38=;
        b=AiGiUxuJXWV72Sx6ba9Iw3wLmlyjEc/CEie4MDxE/eWNd7liNPxDqeV9GAD0xXCesO
         eHuj3JI299caPRrYQCC1PAyfAS1jk3VykjPLfOhgeTnHHxoT9fAjzLZp52qCyW9f31D3
         A+oh6L/0vAU/LLnb58ksCLtgsIDCUEx0iYVRLB/LzLDZCPTbbldnDGrQhrx60wl7VXPu
         yIlRKU4Tyy0B378fPwZJTCF8lPWLwk7WPwMgXD29Op9BjmSm+6DCAoZaBSYpmcFxrEJB
         8gfr6DxYwS1rcGYzEoy2TK5oNX6MPnC1kNpYb9v8pS+t9MkUKuEUfHcB3HQC7RerNOix
         GxKw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532ESop+s6Lh8oLFgWx4UP0r6l6HFIYuuumA30Hd8e46Hy7bgn23
	BDGKSJLfkUt0todTq7qGmNk=
X-Google-Smtp-Source: ABdhPJyscmP57QWwOf+SwxMlJvw3Ssdm1V5vMMsY8KBqQabiUV4a0sXbpM0By6bo79b00DLdH7eIUg==
X-Received: by 2002:a1c:5a56:: with SMTP id o83mr1254377wmb.77.1598265796981;
        Mon, 24 Aug 2020 03:43:16 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:adf:b1cf:: with SMTP id r15ls660526wra.3.gmail; Mon, 24 Aug
 2020 03:43:16 -0700 (PDT)
X-Received: by 2002:adf:828f:: with SMTP id 15mr1354590wrc.360.1598265796342;
        Mon, 24 Aug 2020 03:43:16 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1598265796; cv=none;
        d=google.com; s=arc-20160816;
        b=I85B2JbdnYK6I5oXhXOP9hutvGCcZAIEzZcpqytREh1MHndq0AFVj+/4Ugct5oZy25
         WYtiloFtEyThtpxlUFJvyLN3eitQ3KP2o1gevYB15wpo0xbM7tEhMFiZa/SM/x6bYwLV
         lCgAdNlQsmJ53Vo5+Trz5qUbiKGiAPCU8pCzrAI91qTqWIVqnrSuySW0b+JFk6tSzwWH
         d5MzKnmi6oDJxKGDu3M2y0GKh45GI/MzO6LpuM1gzPJsywBOtfZef08y+iZY6T4wUeFr
         GHXqS9y+/6y74/Xx3MhNTOkUkJR0zFWZMNgrCSqeI4DrV2oGGNx9Z5bl+C5oBfqW/He4
         +jAg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject;
        bh=OJdchnvvXXKj/WlUmo9QA+02goodLUwmIyp/p97xfls=;
        b=iUU9mFsfcnJO5zdLNsm8+vuXB+/2m7sk3FPLvGWh4MdzOxE+rAKHaalxqIr0qSWSVU
         WjBM6Cw5ZUqvNoqTm1QA/vrE957XIU3eDeWvTUNOy7OOT6WaiMqiM4ABrkLZ5IrRoKNM
         exbJK54mdUlX7bnoXcPTB8aHhDLYOQVKxbxvdPfSOCHj/RPPDbBQTp8iQx6t879Xotym
         wV+7LFInLM5144UN8gkdbS8Vjw3PCh49+QLiQ37jXSmDZ9H4AX55sWe2f9wldsR0v1Bk
         G/wPBS/kbAe5f+BfAKtmu+fUnadYpuo3C2PNq/AJ9RAzjyt3Yb0UNkpDa+aDkou2NoJe
         tdTQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 212.18.0.10 is neither permitted nor denied by best guess record for domain of marex@denx.de) smtp.mailfrom=marex@denx.de
Received: from mail-out.m-online.net (mail-out.m-online.net. [212.18.0.10])
        by gmr-mx.google.com with ESMTPS id h11si392085wrc.2.2020.08.24.03.43.16
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 24 Aug 2020 03:43:16 -0700 (PDT)
Received-SPF: neutral (google.com: 212.18.0.10 is neither permitted nor denied by best guess record for domain of marex@denx.de) client-ip=212.18.0.10;
Received: from frontend01.mail.m-online.net (unknown [192.168.8.182])
	by mail-out.m-online.net (Postfix) with ESMTP id 4BZpcg3x0Sz1rxMJ;
	Mon, 24 Aug 2020 12:43:15 +0200 (CEST)
Received: from localhost (dynscan1.mnet-online.de [192.168.6.70])
	by mail.m-online.net (Postfix) with ESMTP id 4BZpcg3Vdvz1qxng;
	Mon, 24 Aug 2020 12:43:15 +0200 (CEST)
X-Virus-Scanned: amavisd-new at mnet-online.de
Received: from mail.mnet-online.de ([192.168.8.182])
	by localhost (dynscan1.mail.m-online.net [192.168.6.70]) (amavisd-new, port 10024)
	with ESMTP id fajBdvNOFd2J; Mon, 24 Aug 2020 12:43:13 +0200 (CEST)
X-Auth-Info: LJg1TmKZ5MnjXb3a/MTSq3D3f/DP1aZANSG60Ry9A5o=
Received: from [IPv6:::1] (p578adb1c.dip0.t-ipconnect.de [87.138.219.28])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.mnet-online.de (Postfix) with ESMTPSA;
	Mon, 24 Aug 2020 12:43:13 +0200 (CEST)
Subject: Re: [regulator:for-5.10 10/21]
 drivers/regulator/rpi-panel-attiny-regulator.c:196:34: warning: unused
 variable 'attiny_dt_ids'
To: kernel test robot <lkp@intel.com>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
 Mark Brown <broonie@kernel.org>
References: <202008240216.dPUkz7Qt%lkp@intel.com>
From: Marek Vasut <marex@denx.de>
Message-ID: <9c51f30d-b146-b752-f67b-37eab90492f6@denx.de>
Date: Mon, 24 Aug 2020 12:31:11 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.11.0
MIME-Version: 1.0
In-Reply-To: <202008240216.dPUkz7Qt%lkp@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
X-Original-Sender: marex@denx.de
X-Original-Authentication-Results: gmr-mx.google.com;       spf=neutral
 (google.com: 212.18.0.10 is neither permitted nor denied by best guess record
 for domain of marex@denx.de) smtp.mailfrom=marex@denx.de
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

On 8/23/20 8:24 PM, kernel test robot wrote:
> tree:   https://git.kernel.org/pub/scm/linux/kernel/git/broonie/regulator.git for-5.10
> head:   23ce1e5c27396e39efabb58714142e8f10ce1f0c
> commit: 38573472278da49e2ab588062d88bc2f0c11a325 [10/21] regulator: rpi-panel: Add regulator/backlight driver for RPi panel
> config: x86_64-randconfig-a005-20200824 (attached as .config)
> compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project b587ca93be114d07ec3bf654add97d7872325281)
> reproduce (this is a W=1 build):
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         # install x86_64 cross compiling tool for clang build
>         # apt-get install binutils-x86-64-linux-gnu
>         git checkout 38573472278da49e2ab588062d88bc2f0c11a325
>         # save the attached .config to linux build tree
>         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=x86_64 
> 
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kernel test robot <lkp@intel.com>
> 
> All warnings (new ones prefixed by >>):
> 
>>> drivers/regulator/rpi-panel-attiny-regulator.c:196:34: warning: unused variable 'attiny_dt_ids' [-Wunused-const-variable]
>    static const struct of_device_id attiny_dt_ids[] = {
>                                     ^
>    1 warning generated.
> 
> # https://git.kernel.org/pub/scm/linux/kernel/git/broonie/regulator.git/commit/?id=38573472278da49e2ab588062d88bc2f0c11a325
> git remote add regulator https://git.kernel.org/pub/scm/linux/kernel/git/broonie/regulator.git
> git fetch --no-tags regulator for-5.10
> git checkout 38573472278da49e2ab588062d88bc2f0c11a325
> vim +/attiny_dt_ids +196 drivers/regulator/rpi-panel-attiny-regulator.c
> 
>    195	
>  > 196	static const struct of_device_id attiny_dt_ids[] = {

Let me guess, the bot is building with disabled DT, right ?

Such issues were popping up recently in multiple drivers.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/9c51f30d-b146-b752-f67b-37eab90492f6%40denx.de.
