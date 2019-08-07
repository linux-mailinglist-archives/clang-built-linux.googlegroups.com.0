Return-Path: <clang-built-linux+bncBCZOPTGF6YHRBK5IVTVAKGQEVG4MTSQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x438.google.com (mail-wr1-x438.google.com [IPv6:2a00:1450:4864:20::438])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C33C852B7
	for <lists+clang-built-linux@lfdr.de>; Wed,  7 Aug 2019 20:10:52 +0200 (CEST)
Received: by mail-wr1-x438.google.com with SMTP id p13sf43861280wru.17
        for <lists+clang-built-linux@lfdr.de>; Wed, 07 Aug 2019 11:10:52 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1565201451; cv=pass;
        d=google.com; s=arc-20160816;
        b=GraoEBPCYbWmbUlp0sj6UW0DZSHRyRbbFr7ECrU7RM1+HktES/lZs09Co0/SL7TFLI
         7dkuQOXI9kYGycucRxMG3L0FE+4LGVHyQ4dWoQtA0qKMoPwHVaqyvJCvThivKc/esx3I
         l2zInl/L664dtEXrzwqdjWMPOusjwhYAlkfOjpAPlGEs4shX92nt9vbJ9QEmomZrWgTK
         9SvjeTpIXC+tlUwHOvyeLjTtUNawYwtLZ9kYiZPMpNYAYSQWC0ngPBP95NPf7+uTPG7I
         UApgWqVCD6FvlcIAQyHLhhGMhGd6F9R3+ubIfiELS5XQ8CwUvURJ7x4M5BaZ7lhBWh6S
         zb6g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :content-language:in-reply-to:mime-version:user-agent:date
         :message-id:from:references:cc:to:subject:sender:dkim-signature;
        bh=TfCo9Y+8AsSclDQOIgiM/zi9ZQzEyeOAlM6tk+tXQRk=;
        b=ekskAgFtmQBHeQLIFPNKSJI8mU/8jb+uzWIHFv9zqrRROQfweA9Znnu1WItJz7oDCe
         WD6MTfikBCihleRvuTb0FD20xttes5eSRnc1/1vcSjl8gDhuF4onlyDnBMhwU8mbSdc0
         nsc3jkcv079P4NnPUs6PAUErEmuh2gO1ZOSsYKTwXvyTuL6Rr8ECDXhyFqPYPqCCwc3f
         IGip6fsf8otXykVGK7lVEF0Yr/rI+rcVno5R3HNMpXzP48GR5zoXXoVLiB/FD0S3tMvZ
         vyCjCq51GL3YUesjvdI9Y05MSvGJz23oGtxvOHRl867MxRw0tOw1nJ4sviV2+AUFCC80
         qznw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of robin.murphy@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=robin.murphy@arm.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=TfCo9Y+8AsSclDQOIgiM/zi9ZQzEyeOAlM6tk+tXQRk=;
        b=j7ZPBCvmavMCvnInphEco9vD/kvXByHOERgI4MUQYiU78fsFia+vnxkn7xfuI4DoHs
         OhWgFR1ej8b09F/WkHvGZLdlIH0v2YTJ6hsxqWRMJHo9d+bMZfGPBrNZXj56xHh6omOF
         F7XO/ICjCZuuft4mt/zjXCdyHfIAuSBRSwpmexWUi4+nxaPpsv8RQA6KirfbH5trfqnV
         grV2nsqW8fP+dIVPe6AQAwQu9Snsg2YOeGEq6edmgd3wX2BhO60vIiUMo7piaephVqwM
         J5HfNmYuh7by7jhzXcUbGCypAhjwqtaVE8BRJ0WJwekpHnXikw9aCf4V6F1kEvjEL3va
         5jDQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=TfCo9Y+8AsSclDQOIgiM/zi9ZQzEyeOAlM6tk+tXQRk=;
        b=CDGHxwdCtPrsGaRUsJUjVJ3SCxJ/yC5nMVvs/pF6jtLdCF6NLkkCwR0SPvwqU4I+nJ
         ufQLZQ8mpVntJ4KV+oKLVHAhrVuFEf39ybX0cyAtdGkxaxE3BvgT6xXh6e6lmMCJoMuN
         dJd5RMleIIgvNMgogofdHnI6RSTP1PHoT7yM6mIhM7sfY6hJ8myskYQw09mphXQQ5gUl
         qhEQfQLT6dN1GdjzR88HxXVX8dhru/yfqseORMjijiONOkyD7HT9F0+IVsI4dPEtfp7n
         El1MJsgAWwH8U9Z3+IbQBLcitdj8pK/swpNF5AvozuEgL827AweXtJmJezsvZW9HcpXQ
         2zaA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVQ88NpaViHK+0E4a7ZiroRdDORtmfqKHCqxH0s5MLiOLs29VHW
	HxrbMWd4njJQ8BlsMCLi8mo=
X-Google-Smtp-Source: APXvYqykdCJ7DmbIWdXI9Zq+i8aWA8RfjCkHwMDmDkqNtLRE+86OWszVBa/xBJYAkHanzau5mCbEbw==
X-Received: by 2002:a05:600c:225a:: with SMTP id a26mr1144668wmm.81.1565201451818;
        Wed, 07 Aug 2019 11:10:51 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5d:53c6:: with SMTP id a6ls26779888wrw.2.gmail; Wed, 07 Aug
 2019 11:10:51 -0700 (PDT)
X-Received: by 2002:a5d:4946:: with SMTP id r6mr2675513wrs.266.1565201451415;
        Wed, 07 Aug 2019 11:10:51 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1565201451; cv=none;
        d=google.com; s=arc-20160816;
        b=E6neby5omd9Z/t9PecvUux2QOoLizvKFMD1vzIlHOUV58GVkj7HMEiX62/1LZ8up+E
         hfqfGgcIzlIflEZvEJw8ukZ6noX7fBCgY43FYkl/iBfIBkNhD6l+Sm+Fhj+c1yDN+/jB
         chQRxUUEWZNiD+txPNNJtNLVkzePQbVm6sW8qWRBM51TF8BlffAAHSZ/2aOatYhNJhtA
         MKk6+aLkWsQjfelu76+7eeMx6cyWK76L7kTO98QQlxVPKKDWsubNLbIG+leDXvZ1OGfr
         +NGZTN8fGCDVwfTyQAFeQcRBiHc0sep2/2zgGeKQAOhZzsrmwqKzttoEBuQuCGw69x7x
         /dpg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject;
        bh=BXcJ8OS8N91BjZBmBGED33mgOx0L2jNuZxcFPf6fDcU=;
        b=DE1AMuTfMprYYRg51FwIYCBTKP+Z21Wk0vGJf5gmik5d9BcvAAU+wDP7SD6FWzcZmX
         eO0yJqvFmeyTh/BRFw/Qnzga6HSa+i0ktQZ06jSP7C+yHBEo0kbwWEfu3NCtESOj8Efc
         xwsgTAlJ/UQWh8teHc01raWnLraPMJN7cXbaXfKncBjtv6DDM4er10+M037DEzaaGxRl
         G4wFa9g6i9V5Q5nlUNqBMbr2X5b2StWCFBgioQVNUy0m7ZllPA3VkLUcRUdHRufRP1sS
         36XOKr1i+jA3dJYwlcaemrUcVI6+3+qORlo5IN6424awXK4ZnQoGEcvWT5c3qzY2TqGr
         cg1g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of robin.murphy@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=robin.murphy@arm.com
Received: from foss.arm.com (foss.arm.com. [217.140.110.172])
        by gmr-mx.google.com with ESMTP id p23si38832wma.1.2019.08.07.11.10.51
        for <clang-built-linux@googlegroups.com>;
        Wed, 07 Aug 2019 11:10:51 -0700 (PDT)
Received-SPF: pass (google.com: domain of robin.murphy@arm.com designates 217.140.110.172 as permitted sender) client-ip=217.140.110.172;
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 75EBC28;
	Wed,  7 Aug 2019 11:10:50 -0700 (PDT)
Received: from [10.1.197.57] (e110467-lin.cambridge.arm.com [10.1.197.57])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 2DDB83F575;
	Wed,  7 Aug 2019 11:10:49 -0700 (PDT)
Subject: Re: next/master build: 230 builds: 12 failed, 218 passed, 15 errors,
 1179 warnings (next-20190807)
To: Nathan Chancellor <natechancellor@gmail.com>,
 Guenter Roeck <linux@roeck-us.net>
Cc: Nick Desaulniers <ndesaulniers@google.com>,
 "kernelci.org bot" <bot@kernelci.org>,
 clang-built-linux <clang-built-linux@googlegroups.com>,
 naresh.kamboju@linaro.org, zhengyang@rock-chips.com, kishon@ti.com,
 heiko@sntech.de
References: <5d4ab6db.1c69fb81.8f6ca.5b76@mx.google.com>
 <CAKwvOdmZ40g0p9B5GF63q9p_fO-LQoSXaYuu9SS+rfNbjE29TA@mail.gmail.com>
 <20190807174331.GA98617@archlinux-threadripper>
 <957d68f7-3a93-8202-13d3-d692a56e62c3@roeck-us.net>
 <20190807180500.GA33631@archlinux-threadripper>
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <9b54c651-e875-99a0-84d4-50ae5c9d99a5@arm.com>
Date: Wed, 7 Aug 2019 19:10:48 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190807180500.GA33631@archlinux-threadripper>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-GB
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: robin.murphy@arm.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of robin.murphy@arm.com designates 217.140.110.172 as
 permitted sender) smtp.mailfrom=robin.murphy@arm.com
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

On 07/08/2019 19:05, Nathan Chancellor wrote:
> On Wed, Aug 07, 2019 at 10:52:16AM -0700, Guenter Roeck wrote:
>> On 8/7/19 10:43 AM, Nathan Chancellor wrote:
>>> On Wed, Aug 07, 2019 at 10:35:26AM -0700, 'Nick Desaulniers' via Clang =
Built Linux wrote:
>>>> On Wed, Aug 7, 2019 at 4:32 AM kernelci.org bot <bot@kernelci.org> wro=
te:
>>>>> ---------------------------------------------------------------------=
-----------
>>>>> allmodconfig (arm64, clang-8) =E2=80=94 FAIL, 1 error, 34 warnings, 0=
 section mismatches
>>>>>
>>>>> Errors:
>>>>>       drivers/phy/rockchip/phy-rockchip-inno-hdmi.c:1046:26: error: a=
nonymous bit-field has negative width (-1)
>>>>
>>>> This looks new, and only an error w/ Clang builds.
>>>>
>>>> Looks like it's been reported:
>>>> https://lkml.org/lkml/2019/8/7/320
>>>>
>>>
>>> Guenter reports that this is also an issue with GCC 8.3.0, I am going t=
o
>>> try to reproduce now:
>>>
>>> https://lore.kernel.org/lkml/20190807142728.GA16360@roeck-us.net/
>>>
>>> https://kerneltests.org/builders/next-arm64-next/builds/1207/steps/buil=
dcommand/logs/stdio
>>>
>>> Cheers,
>>> Nathan
>>>
>>
>> The problem isn't exactly unknown either:
>>
>> https://patchwork.kernel.org/cover/11037801/#22756703
>>
>> Guenter
>=20
> I suppose this is the fix?

To my eye it seems like the "9" may actually be a typo of "0", but I=20
don't know if anyone has actual documentation for this IP to confirm.

Robin.

> diff --git a/drivers/phy/rockchip/phy-rockchip-inno-hdmi.c b/drivers/phy/=
rockchip/phy-rockchip-inno-hdmi.c
> index b10a84cab4a7..3346b791ebbf 100644
> --- a/drivers/phy/rockchip/phy-rockchip-inno-hdmi.c
> +++ b/drivers/phy/rockchip/phy-rockchip-inno-hdmi.c
> @@ -198,7 +198,7 @@
>   #define RK3328_BYPASS_TERM_RESISTOR_CALIB		BIT(7)
>   #define RK3328_TERM_RESISTOR_CALIB_SPEED_14_8(x)	UPDATE((x) >> 8, 6, 0)
>   /* REG:0xc6 */
> -#define RK3328_TERM_RESISTOR_CALIB_SPEED_7_0(x)		UPDATE(x, 7, 9)
> +#define RK3328_TERM_RESISTOR_CALIB_SPEED_7_0(x)		UPDATE(x, 9, 7)
>   /* REG:0xc7 */
>   #define RK3328_TERM_RESISTOR_50				UPDATE(0, 2, 1)
>   #define RK3328_TERM_RESISTOR_62_5			UPDATE(1, 2, 1)
>=20

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/9b54c651-e875-99a0-84d4-50ae5c9d99a5%40arm.com.
