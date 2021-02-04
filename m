Return-Path: <clang-built-linux+bncBDQJLKMJREOBBTOV6GAAMGQEWLNGUYI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc3f.google.com (mail-oo1-xc3f.google.com [IPv6:2607:f8b0:4864:20::c3f])
	by mail.lfdr.de (Postfix) with ESMTPS id 1806030FF75
	for <lists+clang-built-linux@lfdr.de>; Thu,  4 Feb 2021 22:44:47 +0100 (CET)
Received: by mail-oo1-xc3f.google.com with SMTP id u9sf2349697oon.23
        for <lists+clang-built-linux@lfdr.de>; Thu, 04 Feb 2021 13:44:47 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1612475085; cv=pass;
        d=google.com; s=arc-20160816;
        b=eVODZJb8zWHmGosBGK1oa1mvHQd5UYZOH90KIYRhTV99Z4E2jOkJxadUDJDhyC8MOn
         ydzfW6A2GFKrw3MHrmk8gWwOmZEGrUAJ76sTh+rLSQqkAmfYfhCOzXpzd61XwYDznMGN
         FTv+MDksBh6TBM+/NWhAyX6fVxISIXmrSwDL4OGoyxoMJHTJoSZIzzfG+iji5pQtikb4
         uYuIQ7iI2v8d7z0YE+CUXnqv9saOD7QKjrNETdzpr2G3p2+kRHXcJbOguzEskwXXf0n2
         K0LRxhWDxhIJcoxUvEVx4feHkIJ8dBMFwGYBCy2QsO8U0OtS7j5PmcceQyN6S0sA3ggI
         6yFw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=h6HR1ZP+d/U1FmGtSxrA17gUkmbYR4IeS47dG6QPsSY=;
        b=ohs6LYI4MhgBo5YTlYIMZykesuIyuf3jRic8bHfM1BQJ46fAkDJzjVQHgXFHZ3mKRP
         LEMnNczyXj3JZUNqousigcOmesit3Pnl6JNByOv7p2B9oy/6yCt4HqIhTX/2pAQBOXwh
         04Bx+7OUlftm/a6DIOH1jQ1ygAKUJe0PrgwbyBouC/aPV3OhMK6IVXmf6MlSwncHqskr
         WrW3BvvPemhHNMaaWvf0G45z1JlinGLAOeoF2B1RPaNFwjaKBJisoDHDJu02xZ19IyN1
         4UmO+pdIqzhs1Dfd+z9kaI8XUv+3uNgiI5zwSrVwkxBKxHPYanjwwLb1e8aTTXPaaEby
         aZ/Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=tRQBCZJ+;
       spf=pass (google.com: domain of thara.gopinath@linaro.org designates 2607:f8b0:4864:20::72f as permitted sender) smtp.mailfrom=thara.gopinath@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=h6HR1ZP+d/U1FmGtSxrA17gUkmbYR4IeS47dG6QPsSY=;
        b=QkCjYeSK+JGL43zUZ0/Dv/1cqzDWUhG0u2Xvv4w0qyJRghWm3VFQMphFDNaROl9UlK
         IfVUCOX4r1/MVUYnO24Ste0G+V8o1+igFAOXM4gJZYIHEDPpsYLL8yYSrCWEWwiUgyNh
         +KbYrfJEvReeV39OmoEvxfz06SsRxDKZMfMZpvnC01gRXylkGQ4G2ZHgZ8EfTn3+END+
         3/epSvJ7m+vnb+e4l2Yd17SDOP2YiMZQDBMrIh6Z1dpHYlN7vbXR4ESPaI7n6Wcmgx1A
         GETatsOLnVN2iH/eDDwAaiXgjPTmOlWOj+GJXUiiT6Oma4kda3OjK7tmOTpq3ScB1oWd
         YT1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=h6HR1ZP+d/U1FmGtSxrA17gUkmbYR4IeS47dG6QPsSY=;
        b=Lijnfv/9fkDMs+1THaYBmCs4stMne5YWSWKHrHt/yLtuqsT0V3dTRQ3BT0TF0QqLe1
         ERApusObkUnxVDBVAZ9p6RhK5HKGOSxkQYtgXgS548FIzYld0UJB7TLtX0DMLa3HCeIL
         7R3LJtxHye3GpKZgp9I8gMeLPYp5+SCFF+SjNnydk3xgaIToay3oFWnWBnNCpBy/W5dA
         /plXMPI1pqyPZ1YXqDmN1tAIi7XlvH50JyvCiXNv+N09Z1RSJQS7/fukpd1Ffu0NbClk
         fqDFz4/1UDzz/9BWHmhCubkwlme/pVlqNDWE0i2RcOQYUO3MqP/SKuCYsHDGb+gnbHrf
         7/DA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5332GpINkJaiex2ZC4b6z4qE3x2PVJA4Qm+MtmMUOWwa8zis8xPn
	soczCNLEf/ScxSAgnBLvsVI=
X-Google-Smtp-Source: ABdhPJykKeVk/ZxYR8sEI9TPsb1gxECKF2FpaB5fQeZ/V1HfjRav3HMiFNuynn69RirbzP6jZAQpZQ==
X-Received: by 2002:a05:6830:215a:: with SMTP id r26mr1067420otd.67.1612475085813;
        Thu, 04 Feb 2021 13:44:45 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:d755:: with SMTP id o82ls1665680oig.2.gmail; Thu, 04 Feb
 2021 13:44:45 -0800 (PST)
X-Received: by 2002:aca:f12:: with SMTP id 18mr1063509oip.106.1612475085431;
        Thu, 04 Feb 2021 13:44:45 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1612475085; cv=none;
        d=google.com; s=arc-20160816;
        b=HKqI5esybrmrh/UYquaL8u+LytbND/atvYKeCjsCj8N6lFKVFuoJvf9iFAzUtSL43h
         WV/d1sIb5B8c7GPqUfENTEJbeBN0cXiEuMA25JICecgFK52xkxuwrKMxQ4zwsmMyPuul
         HZxTbRwC8y9BsBesCQNyPT5HrlzbKDJz6Ypy8Spoayb3OqwV3ZS9YFbWrOnZ6jE653ik
         Mb2AOOuEEFKcW96hKzHN8A7eI+15o01crsBeDAmV3opTbTPsdnsSvkx7GIsEaoOZWGeY
         G5WEtbms23sdOt9TnkmxHwWa+zxS6atF+3SPMIH8uZQXPVZZ0LhegdGe4gjxnrTQP0pN
         hkdw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=hs1H1h3qwQTmNV+DMbywUe+Hs8J4rElNnCQHQMW80AE=;
        b=Iy76DVxAM6eECi4A0QaG+dWwQhq2XKEdTbh6CbfiYAVN4euOlE5gtt7KjdaFwBV4ze
         PTqXwU+p2HQYGUw2thINV06WSK7G2He5PcGtLLdxpkv0ZpVJ7fEEBd/G9oxoEvn0x4pB
         sDrX/fQfsZP3y6S5+ihdlTGnEpWz/jFIt06HUxweoLlg/LilAoZdJbSvdMOwVwTjNBQT
         bekNSWd+MZx4zsja17JPx+NH2T2ym/fJ9LYxo0bbz/MbVQ5l48Nhqf/7VTvPbBViBEcQ
         pety/HuX3Eal23cqdHRQhTtFhjvpjugvBf4RcbhnKuK2jatKa53Omv98rrJedIsRaX5l
         7c0Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=tRQBCZJ+;
       spf=pass (google.com: domain of thara.gopinath@linaro.org designates 2607:f8b0:4864:20::72f as permitted sender) smtp.mailfrom=thara.gopinath@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: from mail-qk1-x72f.google.com (mail-qk1-x72f.google.com. [2607:f8b0:4864:20::72f])
        by gmr-mx.google.com with ESMTPS id a188si674457oob.1.2021.02.04.13.44.45
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 04 Feb 2021 13:44:45 -0800 (PST)
Received-SPF: pass (google.com: domain of thara.gopinath@linaro.org designates 2607:f8b0:4864:20::72f as permitted sender) client-ip=2607:f8b0:4864:20::72f;
Received: by mail-qk1-x72f.google.com with SMTP id s77so4943351qke.4
        for <clang-built-linux@googlegroups.com>; Thu, 04 Feb 2021 13:44:45 -0800 (PST)
X-Received: by 2002:a37:e17:: with SMTP id 23mr1284287qko.185.1612475085182;
        Thu, 04 Feb 2021 13:44:45 -0800 (PST)
Received: from [192.168.1.93] (pool-71-163-245-5.washdc.fios.verizon.net. [71.163.245.5])
        by smtp.gmail.com with ESMTPSA id b16sm6133086qkh.21.2021.02.04.13.44.44
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 04 Feb 2021 13:44:44 -0800 (PST)
Subject: Re: [PATCH v4 01/11] crypto: qce: sha: Restore/save ahash state with
 custom struct in export/import
To: Herbert Xu <herbert@gondor.apana.org.au>,
 kernel test robot <lkp@intel.com>
Cc: davem@davemloft.net, bjorn.andersson@linaro.org, kbuild-all@lists.01.org,
 clang-built-linux@googlegroups.com, ebiggers@google.com, ardb@kernel.org,
 sivaprak@codeaurora.org, linux-crypto@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20210203143307.1351563-2-thara.gopinath@linaro.org>
 <202102040442.I3XzFSaf-lkp@intel.com>
 <20210204024250.GA5482@gondor.apana.org.au>
From: Thara Gopinath <thara.gopinath@linaro.org>
Message-ID: <64321827-068f-bb32-ea83-176c8fe88811@linaro.org>
Date: Thu, 4 Feb 2021 16:44:44 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20210204024250.GA5482@gondor.apana.org.au>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
X-Original-Sender: thara.gopinath@linaro.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b=tRQBCZJ+;       spf=pass
 (google.com: domain of thara.gopinath@linaro.org designates
 2607:f8b0:4864:20::72f as permitted sender) smtp.mailfrom=thara.gopinath@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
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



On 2/3/21 9:42 PM, Herbert Xu wrote:
> On Thu, Feb 04, 2021 at 04:56:17AM +0800, kernel test robot wrote:
>>
>> Thank you for the patch! Yet something to improve:
> 
> Please fix this before you resubmit again.

Hi Herbert.

Sorry about that. I have send the fix.

> 
> Thanks,
> 

-- 
Warm Regards
Thara

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/64321827-068f-bb32-ea83-176c8fe88811%40linaro.org.
