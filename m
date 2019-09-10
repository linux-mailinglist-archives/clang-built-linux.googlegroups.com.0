Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBK573TVQKGQEWWYIL3Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x23f.google.com (mail-lj1-x23f.google.com [IPv6:2a00:1450:4864:20::23f])
	by mail.lfdr.de (Postfix) with ESMTPS id 58D1CAE2B2
	for <lists+clang-built-linux@lfdr.de>; Tue, 10 Sep 2019 05:59:40 +0200 (CEST)
Received: by mail-lj1-x23f.google.com with SMTP id f20sf1004090ljm.2
        for <lists+clang-built-linux@lfdr.de>; Mon, 09 Sep 2019 20:59:40 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1568087980; cv=pass;
        d=google.com; s=arc-20160816;
        b=D1UyvM37vqQK7OKQEvUI2pFefzzI14UmjBSDknEMRI7KarNhZALERPV8QbvE6obLoO
         uIf6dCPL4Mq9GMdBljZal7iaTDhea5j555tMzs8oI8I9V4rw2Ory6nQ24RNljUYU59OC
         TPk9sUlrARc7m+y89OOtAsUUbv4VP6NCOX8Wd1uxhLm7VIQX39EOCknOFY9WZE0Lpm2u
         1fQTGwDnCrFHv6kTVNUcPPT9Z0xnJE4MvJ5AJLT3qk0JZW98xNDKAtWtPox7kYdies+T
         mkMJfBUt7xsrsU46GH9pRZqJp5zzEEpdm6Ja8FAULIoezmQVkyiUQczSWymOx8qhJMMS
         D0Mg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature:dkim-signature;
        bh=GxUH7Efe6uhVbhlRhqMof4syRp+VOrpHDdbvKpHmutI=;
        b=nCO2vbsBznm7i1DHaTm8oHL7Nxd9BZh7D29f7BSAr5wjuXHM7cW8kYiXrY3PG7B9qK
         KNkUeu9cSsrrHaubgsHlmjM+740krlmXQdY/CwwoUlOBz5uJ5vc6nqRJ6QhZwdTcWT6O
         z88UVHHySgM0C+jxXT96OtIw+rpoirwyDG3EZfi+r8lq+U4qrym29FIINuujQwZEcbKS
         AGsItTcXJWL1QWyILWjcIP4/CL2WMk7SZ7TTkJWwmGkm4f1wMmTBj3rzTaoFQcCNNXGU
         I8UUV97H57tD1nElLaLaiqC1Apn136oIY9V0yWemq+Lnxg7byf4bkRCJYabicVCKZYqw
         fh5A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="X14uc/Xs";
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::441 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=GxUH7Efe6uhVbhlRhqMof4syRp+VOrpHDdbvKpHmutI=;
        b=Ck47vx04UAjJJ0y19tbI3+vkqCZpiV9wFLf1jzxHvmWmGqJ4DhQxn6B73sXtvSdw/h
         sy5rFLDAqWrpUz3eI9sCFFDmFUxz5S7nPPVXL8StzN65aCm4hPVx0rGA2EjRBzsfMk1H
         EmOMAZjbNoBjEUCyYRAV156GqhB7d+BMHqxZoVwwFPkvppWvQTE9gCIoThhYyH3izw6a
         KkyTnm7KgiMpYcugVFMXCKXPUXNvbD1q6F7ORwKJO8JzBcF+fBwvihDBpDJo+LZQ/oMa
         qq3WNy3ByOnTVb7Q0+4KL5Wf4fw3ugRALfK5MM3VFGJV7cMv6JwokZfN1S9hVfVPmGx1
         MLbA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=GxUH7Efe6uhVbhlRhqMof4syRp+VOrpHDdbvKpHmutI=;
        b=mGvZ4UoHBbsgcvujQvu9bfUvvIh1r1IVX9+nQ9gE/g6eDuUKaApy3rXtYf79ozNDrR
         lNLgLsWk6h4x4+JvcDfE4QFY4OlOM9l1SPREyceO9TN27ZSOQault6CVGjg1Yi0Dx0mI
         ZwbDS2fZP//hg1OwhdpUnqiehk1kwRSmY+BTZjFb+qAUB43xzb8YVgfwVWox4EefzQuL
         Z9vaTwUIkxisajzKh2OiKzMXbt71908I0D2Wk2uaG34QIBdlqrq9oS+9/Wa7/r+fhH2a
         PUOsxwDUg8CdDjTCA1+giIc+TjZ8OPEJWvh1z3eEBE+vOykRHAaMHWkNq+Z4aE1BUi6L
         eoWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=GxUH7Efe6uhVbhlRhqMof4syRp+VOrpHDdbvKpHmutI=;
        b=g8PDcDh/XAONagGecIkTRijx3IdR3cU1N7iw6TeaWor/Ph3DkDAyRKXKMk/jPkzEgD
         3c8JtOlNJpp3/cwSjuEIFJD3VZUgJeuNz8S2eEyJFjimy+zBQAfGhkmoY96KY3Qm0zWo
         yBMuOh/wSaHpghaUN+0Mg0IIfwc5o6yCxqYF5sp27zXzqtPsnfdokMzEO/5PrxwFH19R
         j+W5GI6axgtOTn+7vsVyHjkh1X4Z5q65VwN9ITuyfvXorROI8jwNwHkEwF8LBVHIDF3S
         ifIDiBIKsnupL4m2Z206fWXDlXny5ZelvO8qLL0eM1NYDa3JnN+dT3hBlz32bIkdz8nQ
         O8Ug==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXniIuhKLTIBDBEotn3U2MuP1y7+2tN7VCoZqxb3dNuKWl1asYa
	DlHpraYXCOT7CMWhaqG4T/c=
X-Google-Smtp-Source: APXvYqzuLjNS1hYmYcRHUFdRNrh+05yVaxwzTJjIc3O/TkeiaAaS+PDhfwNSElF0KMt/C1RPEVMeEQ==
X-Received: by 2002:ac2:53a3:: with SMTP id j3mr18987191lfh.155.1568087979965;
        Mon, 09 Sep 2019 20:59:39 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a19:5d57:: with SMTP id p23ls1549848lfj.4.gmail; Mon, 09 Sep
 2019 20:59:39 -0700 (PDT)
X-Received: by 2002:ac2:43cb:: with SMTP id u11mr18945062lfl.38.1568087979537;
        Mon, 09 Sep 2019 20:59:39 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1568087979; cv=none;
        d=google.com; s=arc-20160816;
        b=WsXcKZszVsW8Agq7C50BlH0g5Sp2OmhEp+q5P198trhDlR8YYJ/6sYHrkknV+TlxK3
         JI9qJLPz9lUcDe8cRuA+6Ytn0347Y9ibRlhNxa+3F0lvIGOhtgh/uzbCOOgtss9twe0H
         BppQRFDFPTgczSA+TCJLSATzP0kGpVJdH2zuQIeut2QkKyG1kyUQwvjEpTu6jReNuRZt
         adEYDkeewqfUWW2LhAMJzZ6jp6QtjralV6GpKwRaXE7TLkF8c+V+EUbn/dEApdDCjyF6
         D/E3ujVDqMFs6I4Zg5uIqu7XdK9FgjACb87gUZT0afs9dHR9qLuoWrGNaILOijQrSW2Q
         fb/A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=CdYOaNhXvcY5IsZc+PHraynL6zISDk7P1CMJy/8+TXQ=;
        b=NdtE4pJCtL2AjYb9vSuLJVcdAEFGXPPmeZJ6gX5gIOUsH6aWpJqprKvoq4sJaflkLY
         f7H3eCYbn0kQ2Bsgs2AdL1KJypolTtqrsEq8O1D4fVqNwHIXLiqWszedb3Hchqy2yi0m
         vdUFTsIJHwIQ6vFE8KoehrO4zOsXJYJygFMm7430LCwvkQ+buIYraDm29+V75h7AzVWa
         A/uMbSyp8CinVW83MmKZgkeVOEn5pH+19zEQ5VUGZJsZF1p0FaUTfNoE32NKRxA+73VT
         BB9gOHt00KWnolgW/78pjAOaU1MdcIXROmXzz5S87nR0ZaLN3MbA0nlDWNf3VjVXhHUK
         Lw4A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="X14uc/Xs";
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::441 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-wr1-x441.google.com (mail-wr1-x441.google.com. [2a00:1450:4864:20::441])
        by gmr-mx.google.com with ESMTPS id i21si684193ljj.1.2019.09.09.20.59.39
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 09 Sep 2019 20:59:39 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::441 as permitted sender) client-ip=2a00:1450:4864:20::441;
Received: by mail-wr1-x441.google.com with SMTP id a11so7321105wrx.1
        for <clang-built-linux@googlegroups.com>; Mon, 09 Sep 2019 20:59:39 -0700 (PDT)
X-Received: by 2002:a5d:5305:: with SMTP id e5mr18082738wrv.174.1568087978852;
        Mon, 09 Sep 2019 20:59:38 -0700 (PDT)
Received: from archlinux-threadripper ([2a01:4f8:222:2f1b::2])
        by smtp.gmail.com with ESMTPSA id k9sm31649063wrd.7.2019.09.09.20.59.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 09 Sep 2019 20:59:38 -0700 (PDT)
Date: Mon, 9 Sep 2019 20:59:36 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Kristian Klausen <kristian@klausen.dk>,
	Andy Shevchenko <andriy.shevchenko@linux.intel.com>
Cc: kbuild@01.org, Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux@googlegroups.com,
	kbuild test robot <lkp@intel.com>
Subject: Re: [dvhart-pdx86:review-andy 57/57]
 drivers/platform/x86/asus-wmi.c:422:6: warning: logical not is only applied
 to the left hand side of this comparison
Message-ID: <20190910035936.GD1778@archlinux-threadripper>
References: <201909100442.LLEfPkdR%lkp@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <201909100442.LLEfPkdR%lkp@intel.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b="X14uc/Xs";       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2a00:1450:4864:20::441 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

Hi Kristian and Andy,

The 0day team has been doing clang builds for us and this warning came
up. Please look into it when you have a chance and let me know if you
have any questions.

On Tue, Sep 10, 2019 at 04:35:46AM +0800, kbuild test robot wrote:
> CC: kbuild-all@01.org
> TO: Kristian Klausen <kristian@klausen.dk>
> CC: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
> 
> tree:   https://github.com/dvhart/linux-pdx86.git review-andy
> head:   5c66bd2e30d2f939987ba6d3d5790d4d852055f8
> commit: 5c66bd2e30d2f939987ba6d3d5790d4d852055f8 [57/57] platform/x86: asus-wmi: Refactor charge threshold to use the battery hooking API
> config: x86_64-rhel-7.6 (attached as .config)
> compiler: clang version 10.0.0 (git://gitmirror/llvm_project 45a3fd206fb06f77a08968c99a8172cbf2ccdd0f)
> reproduce:
>         git checkout 5c66bd2e30d2f939987ba6d3d5790d4d852055f8
>         # save the attached .config to linux build tree
>         make ARCH=x86_64 
> 
> If you fix the issue, kindly add following tag
> Reported-by: kbuild test robot <lkp@intel.com>
> 
> All warnings (new ones prefixed by >>):
> 
> >> drivers/platform/x86/asus-wmi.c:422:6: warning: logical not is only applied to the left hand side of this comparison [-Wlogical-not-parentheses]
>            if (!strcmp(battery->desc->name, "BAT0") == 0)
>                ^                                    ~~
>    drivers/platform/x86/asus-wmi.c:422:6: note: add parentheses after the '!' to evaluate the comparison first
>            if (!strcmp(battery->desc->name, "BAT0") == 0)
>                ^
>                 (                                       )
>    drivers/platform/x86/asus-wmi.c:422:6: note: add parentheses around left hand side expression to silence this warning
>            if (!strcmp(battery->desc->name, "BAT0") == 0)
>                ^
>                (                                   )
>    1 warning generated.
> 
> vim +422 drivers/platform/x86/asus-wmi.c
> 
>    416	
>    417	static int asus_wmi_battery_add(struct power_supply *battery)
>    418	{
>    419		/* The WMI method does not provide a way to specific a battery, so we
>    420		 * just assume it is the first battery.
>    421		 */
>  > 422		if (!strcmp(battery->desc->name, "BAT0") == 0)

Wouldn't it be clearer to write just

if (strcmp(battery->desc->name, "BAT0"))

?

>    423			return -ENODEV;
>    424	
>    425		if (device_create_file(&battery->dev,
>    426		    &dev_attr_charge_control_end_threshold))
>    427			return -ENODEV;
>    428	
>    429		/* The charge threshold is only reset when the system is power cycled,
>    430		 * and we can't get the current threshold so let set it to 100% when
>    431		 * a battery is added.
>    432		 */
>    433		asus_wmi_set_devstate(ASUS_WMI_DEVID_RSOC, 100, NULL);
>    434		charge_end_threshold = 100;
>    435	
>    436		return 0;
>    437	}
>    438	
> 
> ---
> 0-DAY kernel test infrastructure                Open Source Technology Center
> https://lists.01.org/pipermail/kbuild-all                   Intel Corporation

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190910035936.GD1778%40archlinux-threadripper.
