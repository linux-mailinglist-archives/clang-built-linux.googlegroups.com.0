Return-Path: <clang-built-linux+bncBDHMVDGV54LBB4UR3CEAMGQEHEF653A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x437.google.com (mail-wr1-x437.google.com [IPv6:2a00:1450:4864:20::437])
	by mail.lfdr.de (Postfix) with ESMTPS id 579EE3EAFCC
	for <lists+clang-built-linux@lfdr.de>; Fri, 13 Aug 2021 07:53:55 +0200 (CEST)
Received: by mail-wr1-x437.google.com with SMTP id y12-20020adfee0c0000b0290154e82fef34sf2551100wrn.6
        for <lists+clang-built-linux@lfdr.de>; Thu, 12 Aug 2021 22:53:55 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1628834035; cv=pass;
        d=google.com; s=arc-20160816;
        b=pZi2VJaAFDovXx+5Yg0uUUX4pFTNfHbGiqa+qNh16j16hCpjIdbbINjA8HFWVvQrXX
         zntXY01GomQek/mzrXSLVRvmjxx/jKSxgMHqBU/Nd+aIbs4TUyZEAfiuj/4g3etLSVZf
         x11PLZCg2bNAzXWz8PHGSFIxLqmSAdrUCky5TOFQTkJRmxK5AgpF8E21q0RFHkiHXIT3
         U0i9DYxVZW6LQUsgPskjn0zK0ya6vTAS7zLERD7q0jXxUkjPCbs/no8+R6GP8BhRbET3
         aPc/wJdbu77hpZCi4MZHAKSpedsWWC47/TaDSPccIz0j2Jwt1iuGcsR4q/VKSLPZqz85
         v2nQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=7RTJ4furGg1kI9HR1ICe9rMmnKVCda18gFUhWHnEVvU=;
        b=RSqcfPCi2XCjZnIgYS3v3h9MLJ/7idNIOM3/PIQsA3NvaJi7HesiVLW2WMoD6CwUMD
         kzH3WvTHh9qD+WmllQUG1HpMm3WxR6jPdo50FlGWFxH+Z+a3s1BtDQgsIC5rinQSfBK+
         UOGdIfyFqg2S3HAXUBLe8HLbhIR8LDrR59fCHQOUAT26YLY6V3bFPopNagNMsW6KOTVg
         zcKdfsRi8Eve4SAidYJnVRTBm8NvBbFR0G+fmc3luQOvMLj2rjwenh1BwPKyKNCkmKS6
         FWFDzatzqEJo45MNRFZet58BRYehIFCL0LtfC2TE+PPa4oU9vilzPWrhGLM74GedBQCi
         uRIg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of jirislaby@gmail.com designates 209.85.128.49 as permitted sender) smtp.mailfrom=jirislaby@gmail.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=7RTJ4furGg1kI9HR1ICe9rMmnKVCda18gFUhWHnEVvU=;
        b=MWIFAHhMSsuk4wFGOFHm/ltzCPdbSJIV/ubBgZV3lDp6SLLUtmxwj7yngVzBMa4w8u
         2spnHgq/xzhVzp7gJK+JvDV1P35lAYUZtujdMW5AMvfCe2vUfS21eth2J7DaZeygBhGr
         GpYtCQMjZHqZCupLn6eAs/R73RPQrhoSuf8hEnxarJSdW8NAIVIenCzaQ47xNfp69thu
         P+WXxhflCo8i2lIr/kHl4EN+H7EniiDMEsHtalnq5PX+tOGpEAPRWzjnIso4cewEmf6r
         XOGmSSRtOj9qyC2Hnmu9CTt7tquq3htAq0i7EOB6Ppny2aAQtaiguGoEhi7m1XDivXNP
         SaeQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=7RTJ4furGg1kI9HR1ICe9rMmnKVCda18gFUhWHnEVvU=;
        b=c25P8z5mIq2UAhlSXZFIJeQxpKpU4bAlpP4EDXyAtpaDyAnTBkPU9O/FJcnYVhDgCd
         eRlWWQMHZ9tiDklplO6dtt+AW60kYFuNenbsyIAd4OPzLinbD/wgdMOEOLEsn6tK0sRn
         Dmcz8m1VeInaV/+YdqOb/or0atBIMWV+fpR60T3MZhp0GZHxBXw6Pp+SntjZgvA3eG/M
         KFO9AvgEbXwrl/915Tb9SHqwys+7P+eqXx8q6wEO7GArSsb/F+JTNF+5HHsdbA6moyAk
         xLkjpJFqgmZkJK2rjPWICZZOGtNcHAAjdOoK+k0nDJ/3E3Uk+fYR8U2C6nDsvvGMAsL5
         Trog==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532T2EaflOJ8RuKYPkHvjBzKW/qc4NsoxHyKNxwmv5r4YUxJMYR9
	2DBpHY/ICuGjPEqwS5moBv4=
X-Google-Smtp-Source: ABdhPJyr1+jl6gTYAIofVs1+bSIEmZBvJAr41ezM8TndR9fpC8dC9SKqbc+GoeT3SesnRCyzcZzh3g==
X-Received: by 2002:adf:f2ca:: with SMTP id d10mr966377wrp.149.1628834034968;
        Thu, 12 Aug 2021 22:53:54 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1c:414:: with SMTP id 20ls210308wme.3.gmail; Thu, 12 Aug
 2021 22:53:54 -0700 (PDT)
X-Received: by 2002:a1c:2316:: with SMTP id j22mr877723wmj.29.1628834033963;
        Thu, 12 Aug 2021 22:53:53 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1628834033; cv=none;
        d=google.com; s=arc-20160816;
        b=CSNI+I7CL2QkCfWS36pKtHGJJdtaiGGJrnslkiKKx4E30a+KRg19WYrjAYAMBPZysV
         Laf2jbJNoqws3l7N6TsXzEhAGsC3aMRDmhKfJszVw3af0gTiCFNKxrj4M2gnlLhGn9XV
         2DLkJHCzHWq8kQq7CSWtdVAwV5amElnHd7rDopycPmzSqq9tZ1/Q/Su1hA/U9gRjZk5q
         lBXk9o26lGoyAOw4r2Mi9+WzcWJSqMRAmAZX3hdrQwxfmjk04ThSl2eW6esil2Yq+IAl
         PKxCJLsF6C0JyMoie4nY2PZxGvePFOFO93Ylaj9knIBYks+gULYI0/9AuGUlb/IHC7Gu
         Kd9w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject;
        bh=kDicGygeeiPHvZ/oC8eypBw+MyBw86cziX0DHpCxNAc=;
        b=rtzxdvW+tiNwIwGzKaaD7HdGpr3UaKNPY73xnjtqgEgm5/VhhVCk5aa2YdNBPOgS2d
         u+8YZUyrckx9vf+5QBDK0AE3898JkMsRQfFBRH7C5F2GhcJtisquhgX35LCLIKgLQ/zU
         5xkBJK/N+5iAHf+qvDxLcF6G8P9MTANfOiHBlOKJsymkCIpYio4TxeXXYZHeCS28lFNA
         wZkBjRZYXJLDv0xkxxHBEtyEfV9DPNmHqZS5Krss0bfBGk/Dke1f6YWJG0bbFaDSf9ze
         R/q+OKAUG7ybA7L7sFoGVCqdEYTZOpZ4ER00xIlK3iNa99aePF/0aunvmF75282v0mpF
         HoaA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of jirislaby@gmail.com designates 209.85.128.49 as permitted sender) smtp.mailfrom=jirislaby@gmail.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail-wm1-f49.google.com (mail-wm1-f49.google.com. [209.85.128.49])
        by gmr-mx.google.com with ESMTPS id s12si39537wmh.3.2021.08.12.22.53.53
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 12 Aug 2021 22:53:53 -0700 (PDT)
Received-SPF: pass (google.com: domain of jirislaby@gmail.com designates 209.85.128.49 as permitted sender) client-ip=209.85.128.49;
Received: by mail-wm1-f49.google.com with SMTP id k4so6116970wms.3
        for <clang-built-linux@googlegroups.com>; Thu, 12 Aug 2021 22:53:53 -0700 (PDT)
X-Received: by 2002:a7b:c399:: with SMTP id s25mr917659wmj.180.1628834033697;
        Thu, 12 Aug 2021 22:53:53 -0700 (PDT)
Received: from ?IPv6:2a0b:e7c0:0:107::49? ([2a0b:e7c0:0:107::49])
        by smtp.gmail.com with ESMTPSA id l7sm388877wmj.9.2021.08.12.22.53.52
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 12 Aug 2021 22:53:52 -0700 (PDT)
Subject: Re: [PATCH v6 1/2] tty: hvc: pass DMA capable memory to put_chars()
To: kernel test robot <lkp@intel.com>,
 Xianting Tian <xianting.tian@linux.alibaba.com>, gregkh@linuxfoundation.org,
 amit@kernel.org, arnd@arndb.de, osandov@fb.com
Cc: clang-built-linux@googlegroups.com, kbuild-all@lists.01.org,
 linuxppc-dev@lists.ozlabs.org, virtualization@lists.linux-foundation.org,
 linux-kernel@vger.kernel.org
References: <20210812094532.145497-2-xianting.tian@linux.alibaba.com>
 <202108122040.lBf24DNp-lkp@intel.com>
From: Jiri Slaby <jirislaby@kernel.org>
Message-ID: <0c808001-7643-fdcf-66ba-738654ec0c21@kernel.org>
Date: Fri, 13 Aug 2021 07:53:51 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.12.0
MIME-Version: 1.0
In-Reply-To: <202108122040.lBf24DNp-lkp@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
X-Original-Sender: jirislaby@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of jirislaby@gmail.com designates 209.85.128.49 as
 permitted sender) smtp.mailfrom=jirislaby@gmail.com;       dmarc=fail (p=NONE
 sp=NONE dis=NONE) header.from=kernel.org
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

Hi,

On 12. 08. 21, 14:26, kernel test robot wrote:
>>> drivers/tty/hvc/hvc_console.c:190:26: warning: variable 'hp' is uninitialized when used here [-Wuninitialized]
>             spin_unlock_irqrestore(&hp->c_lock, flags);
>                                     ^~
>     drivers/tty/hvc/hvc_console.c:149:23: note: initialize the variable 'hp' to silence this warning
>             struct hvc_struct *hp;
>                                  ^
>                                   = NULL

So you clearly didn't test your change as it would crash quite 
instantly. I wonder, where do you intend to get hp from in the 
console::print() hook?

thanks,
-- 
js
suse labs

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/0c808001-7643-fdcf-66ba-738654ec0c21%40kernel.org.
