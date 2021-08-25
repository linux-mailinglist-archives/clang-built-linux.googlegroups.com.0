Return-Path: <clang-built-linux+bncBDRPZAGFRAFBBR7JTCEQMGQEPWWPSVI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ej1-x63b.google.com (mail-ej1-x63b.google.com [IPv6:2a00:1450:4864:20::63b])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BDE23F74E9
	for <lists+clang-built-linux@lfdr.de>; Wed, 25 Aug 2021 14:17:11 +0200 (CEST)
Received: by mail-ej1-x63b.google.com with SMTP id s11-20020a170906060b00b005be824f15dasf8417447ejb.2
        for <lists+clang-built-linux@lfdr.de>; Wed, 25 Aug 2021 05:17:11 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629893831; cv=pass;
        d=google.com; s=arc-20160816;
        b=GTOwUS8UeUfaoA+qgMFmXNGGi+pfuYewJhaukabtW7DTJwvTpk7RbF4fvjfrrDarnf
         fSTj5G6/Ql6YWNAJ1yod9LDW05sLpwgig4xr0vcv6B7z1Yx0lzBREoszZM6gck2xQIl/
         KkVPOxH755ozBv566MyL85UT3YQhMI28Al5JYfWxFMW4gY+JKiZuGCiGruKTiPLBVlKt
         OYj1ibaolF0uD432YQx65XYCKmC2EZAdN68T3EegrHV+M6qb1Lrit+epZjFeZILNhS1K
         mb45PAM/XAphKTYdjOICq6Q00dMYlKNqg5uJRRQSJbDcY9lQQ60sQHWdYozPVAER/cxg
         ceMw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature:dkim-signature;
        bh=EUN4SpwtqIkwqcng5RgwI+u9m6CdgsbFGO+Rb8PgYA8=;
        b=Dqk3vG8dBAP1hRY61PXMVgRNds6UJqboBdMZXOU9sqSjRC7T7/aOuehI78stZxPs/7
         m3Urf8fEgR9aftkJPFIdDIOT2uVwxixp0PaHg2UoTrCbV2YwvsPUuiGtDjGnLrIOHRKC
         VkWiNBcOVuZM6Nk0cf8ER8w/89N+14xe61NBLIPJfRO0DGgYxtXyHOITNeysONhAElZl
         WKf26HDYy6udmavxtk7I6mjPu6//dZryKXIgtKVD3ztXi2hLXKRZQTceMSki0h33TyyS
         GnriqY1KEtYqpYrWcTU/TnsaJDn809QgiAoeK4ZgBKAoNVJ7nd05xNkwTYazkoPUeLcu
         zKSg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=EoeO8sZS;
       spf=pass (google.com: domain of paskripkin@gmail.com designates 2a00:1450:4864:20::12c as permitted sender) smtp.mailfrom=paskripkin@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=EUN4SpwtqIkwqcng5RgwI+u9m6CdgsbFGO+Rb8PgYA8=;
        b=Yk8dnmVBklMx3H0NF4RWjO/8qNmrZYqDDMuk/DrTRWHUBHe0FNKBIJnhBYcWItXuL+
         fqKGU56kpsQXxmvB6dXTG6dK/iu/xUg5QF1+nSw5eDkAhXDLDg57dh8T9+sPxX1JFob4
         pPaXdrHzxRfs5qoixZ4oH4HeJvwVclIR6WHzP4dOV5bPvKqGHMEWPtgr2NqJaxivLFxW
         wNYeeElpakWuw0ioqgRQigZ39piLkeNc3BBfmcDALaL169vEb4P+I4u8VvzIE8+w0TpL
         U6D2Pz9V68Piw71MHSslpZUYkkJvJapsaenLljJdeoK0PueCJYdx6zEVhGLnPSk+xr7w
         rv1w==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=EUN4SpwtqIkwqcng5RgwI+u9m6CdgsbFGO+Rb8PgYA8=;
        b=jaavqKfWwJhsb++iibU0cjNdJg9yDH+pnt4spmRRrR+cImrfmCDAx6fRSKUzaR6V92
         PdC76YAzadNWGjrrYjasF9z+vNQ8Fb6fC29ap96l8ZLIKGqDRKomPqAswCMCqzhdkOlz
         8V3HIU0yuAZc2L3QuXlMjWZYMGTF1tvZGPcQ7yPMIBXnIG4l2FMd9WNjWFXGeJeuR9j/
         T+Cipp694Pgjh1hqmx7n8wTz/c7ev+rNA7fWOKqMLWBC768krZldSn+l0ggLb0YIY3z0
         au+ht0BK1eUfEddrbLUcKW/zkhPn36p5uHaunC7ao0brtogFMjnp1D+3fsadbN1qqcvj
         1VWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=EUN4SpwtqIkwqcng5RgwI+u9m6CdgsbFGO+Rb8PgYA8=;
        b=j1E5WxTmPRyfbJ8h55URW6qg8Y/CXMPfJ8snRFiZcSsRztcrBHiWEWlzC4orrdX5UI
         l2mxotQyFyC++6m9KzTRJX8h3hpWGoHzSI+8o0y9bQTC/K/xHtM7bg1ofRDSV7EbMmwp
         Nrwkl56iO6l7mnOFMhSeUnQdt+BVvMgOvns3658xqM+Zy9HoZt4cJJz7a6x5F96FD4oU
         AXDYwuZibiDwAM2pXBUGxOOX/5FZr+4g6gHbwbazuIxySL+Xz/UfysDl2hCU8ZemHaMD
         kVzg8BA/lhxebrTnCBoxTcbQN3IbwD1oygMB1bXNKU/lWv8cwN9tVPOceSjQa6EWG2Z0
         L/3Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530ovlvApafGPVbDgHbZIfGTiuT3y298wwur6Q326rrvpvgDBfae
	qr97E3CoV9EyTeMZRajyvfA=
X-Google-Smtp-Source: ABdhPJz6hWjCu5eK5xhYuMoubJbqirL3QaTsM69iZPhd+le9ZjXaJbr6VtNTvvZWhpb7rR4kKy5kCA==
X-Received: by 2002:aa7:d547:: with SMTP id u7mr47649712edr.28.1629893831321;
        Wed, 25 Aug 2021 05:17:11 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:907:361:: with SMTP id rs1ls1030827ejb.4.gmail; Wed, 25
 Aug 2021 05:17:10 -0700 (PDT)
X-Received: by 2002:a17:906:9b53:: with SMTP id ep19mr21546654ejc.86.1629893830438;
        Wed, 25 Aug 2021 05:17:10 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629893830; cv=none;
        d=google.com; s=arc-20160816;
        b=qT0seaGTk1jqP9bT5xToKjRJAKtqj5Rv/MY/DM5m2yWWS/X2DSRv0nL6bKpKJD0e45
         XWJhUmn2YtrVNgAIRJSeDZpPyv6UW9r7IEWGUQM0BwxjwF5IftTHT47QJO/Onkiq+5Bs
         hSi3Ohmc82FWYPDCQNZ5BeUO2HC72TW5xl7hmrWAwKCyHBWO7Hhjgbi/NfCALbQKyRAz
         nenG+uG25yu7fZ0vXZb1askIvp0kp/CnhRsbrRq6tOfqHXusFSCouwV0r3Ne1PDejkzH
         IcQSYTM+/6GrJrE1kk0blDufttheQ17Sj4youuop164bxTbctr1vSU+MParXIg6D2TRJ
         yDkw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=zCxZkeEen3d25W+uS0Sr+vZJbSneoSqKjRT90Qz8wDY=;
        b=zLrS050PBhOx3YGDTpVRhHo+m7hYsc9e+FJkPkPiVTy3ngE0O2jvovUV2IP/ICLCa4
         SzYfLnvITpihnAqSzE18ip0fWuZp5E7CzCFACnNjZJt/9BzWTqRtZZZqK5OMscJMZdoS
         wy87h+/xZjGR6Zr2K4AgPluZhp3nMXVnbOt8W1RW9lIO6kNMdcwC+hwGDggA02GnBr5F
         fAyywKTi2EMPMKPSpTU0FWoR71FdMBuUx8lAYjvxD9iyjBVbXuajQuXiE04CITXWM+nq
         vJ0XFwZXb0zsd0E+B0fquHGBC8jkvp3k+bc7UnjbGUkOdN52nIiIEkcCR2NGtmNAEeDf
         UMIw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=EoeO8sZS;
       spf=pass (google.com: domain of paskripkin@gmail.com designates 2a00:1450:4864:20::12c as permitted sender) smtp.mailfrom=paskripkin@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-lf1-x12c.google.com (mail-lf1-x12c.google.com. [2a00:1450:4864:20::12c])
        by gmr-mx.google.com with ESMTPS id co13si194215edb.3.2021.08.25.05.17.10
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 25 Aug 2021 05:17:10 -0700 (PDT)
Received-SPF: pass (google.com: domain of paskripkin@gmail.com designates 2a00:1450:4864:20::12c as permitted sender) client-ip=2a00:1450:4864:20::12c;
Received: by mail-lf1-x12c.google.com with SMTP id m28so6213953lfj.6
        for <clang-built-linux@googlegroups.com>; Wed, 25 Aug 2021 05:17:10 -0700 (PDT)
X-Received: by 2002:a05:6512:3391:: with SMTP id h17mr31707375lfg.173.1629893829901;
        Wed, 25 Aug 2021 05:17:09 -0700 (PDT)
Received: from [192.168.1.11] ([46.235.66.127])
        by smtp.gmail.com with ESMTPSA id bt38sm2049619lfb.213.2021.08.25.05.17.08
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 25 Aug 2021 05:17:09 -0700 (PDT)
Subject: Re: [PATCH v3 3/6] staging: r8188eu: add error handling of rtw_read8
To: kernel test robot <lkp@intel.com>, Larry.Finger@lwfinger.net,
 phil@philpotter.co.uk, gregkh@linuxfoundation.org, straube.linux@gmail.com,
 fmdefrancesco@gmail.com
Cc: clang-built-linux@googlegroups.com, kbuild-all@lists.01.org,
 linux-staging@lists.linux.dev, linux-kernel@vger.kernel.org
References: <c59d5d850bf9aab208704182c83086609289cb9c.1629789580.git.paskripkin@gmail.com>
 <202108251911.Vwmzl4rI-lkp@intel.com>
From: Pavel Skripkin <paskripkin@gmail.com>
Message-ID: <9743e1ee-75f4-6231-427b-8c7f659fb252@gmail.com>
Date: Wed, 25 Aug 2021 15:17:06 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <202108251911.Vwmzl4rI-lkp@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
X-Original-Sender: paskripkin@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=EoeO8sZS;       spf=pass
 (google.com: domain of paskripkin@gmail.com designates 2a00:1450:4864:20::12c
 as permitted sender) smtp.mailfrom=paskripkin@gmail.com;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On 8/25/21 3:05 PM, kernel test robot wrote:
> Hi Pavel,
> 
> Thank you for the patch! Yet something to improve:
> 
> [auto build test ERROR on staging/staging-testing]
> 
> url:    https://github.com/0day-ci/linux/commits/Pavel-Skripkin/staging-r8188eu-remove-read-write-_macreg/20210824-162756
> base:   https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/staging.git 093991aaadf0fbb34184fa37a46e7a157da3f386
> config: arm-buildonly-randconfig-r001-20210825 (attached as .config)
> compiler: clang version 14.0.0 (https://github.com/llvm/llvm-project ea08c4cd1c0869ec5024a8bb3f5cdf06ab03ae83)
> reproduce (this is a W=1 build):
>          wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>          chmod +x ~/bin/make.cross
>          # install arm cross compiling tool for clang build
>          # apt-get install 11.1.1
>          # https://github.com/0day-ci/linux/commit/d4e4bbed4e59df37967086f60fe92cb1b4504d37
>          git remote add linux-review https://github.com/0day-ci/linux
>          git fetch --no-tags linux-review Pavel-Skripkin/staging-r8188eu-remove-read-write-_macreg/20210824-162756
>          git checkout d4e4bbed4e59df37967086f60fe92cb1b4504d37
>          # save the attached .config to linux build tree
>          mkdir build_dir
>          COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross O=build_dir ARCH=arm SHELL=/bin/bash drivers/staging/r8188eu/
> 
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kernel test robot <lkp@intel.com>
> 
> All errors (new ones prefixed by >>):
> 
>>> drivers/staging/r8188eu/hal/usb_halinit.c:2022:3: error: expected expression
>                     u8 tmp;
>                     ^
>     1 error generated.
> 
> Kconfig warnings: (for reference only)
>     WARNING: unmet direct dependencies detected for QCOM_SCM
>     Depends on (ARM || ARM64) && HAVE_ARM_SMCCC
>     Selected by
>     - ARM_QCOM_SPM_CPUIDLE && CPU_IDLE && (ARM || ARM64) && (ARCH_QCOM || COMPILE_TEST && !ARM64 && MMU
> 
> 

We need to fix Kconfig, ok, I will take a look at it later

> vim +2022 drivers/staging/r8188eu/hal/usb_halinit.c
> 

>    2020		case HW_VAR_BCN_VALID:
>    2021			/* BCN_VALID, BIT(16) of REG_TDECTRL = BIT(0) of REG_TDECTRL+2, write 1 to clear, Clear by sw */
>> 2022				u8 tmp;

Hm, I don't know anything about ARM compilers, so should I wrap this 
code block with {}?

My local gcc 11.1.1 (x86_64) does not produce any warnings/errors

>    2023	
>    2024			error = rtw_read8(Adapter, REG_TDECTRL + 2, &tmp);
>    2025			if (error)
>    2026				return;
>    2027	
>    2028			rtw_write8(Adapter, REG_TDECTRL + 2, tmp | BIT(0));
>    2029			break;
>    2030		default:
>    2031			break;
>    2032		}
>    2033	
> 



With regards,
Pavel Skripkin

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/9743e1ee-75f4-6231-427b-8c7f659fb252%40gmail.com.
