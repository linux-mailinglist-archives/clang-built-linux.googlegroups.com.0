Return-Path: <clang-built-linux+bncBC27X66SWQMBBCOQST6AKGQEU3YGCIA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x13a.google.com (mail-il1-x13a.google.com [IPv6:2607:f8b0:4864:20::13a])
	by mail.lfdr.de (Postfix) with ESMTPS id D075228C7BB
	for <lists+clang-built-linux@lfdr.de>; Tue, 13 Oct 2020 06:07:38 +0200 (CEST)
Received: by mail-il1-x13a.google.com with SMTP id m1sf14134054iln.19
        for <lists+clang-built-linux@lfdr.de>; Mon, 12 Oct 2020 21:07:38 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1602562057; cv=pass;
        d=google.com; s=arc-20160816;
        b=xNBWmXbDTyOAnfaFY4sM8GYwGzuRuhhlKL48QVg/Xx1QV7sHl1BZkd0M87dtR3VVCi
         yniyDrd5ZGwh9AwJEQz0pe/t90osASj4/7EdXdMu39MlCUu889KArKclRWBHgnRXngpo
         /g9zu9SN116Pv3DyVrbFxfGN+sbdbLrEe3I8fk++t4okDAgJa/etUckakMEwe8mvnO4b
         zWaVaH3Biydq9kYvaSHimKonF8Bauo930P7g/xtZ5a88nQ1vPDNknZX6TiLAeKuvrjKJ
         mCBbnMhUxM5js/ZPk/y1sLSRLZb7CyeupzZogEGKi8S1Zv0GvZ2FAjQbLvz3DZaww7pK
         Sqjg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=Az7rgZtoDoNgSzC2QC2NVdHxKx7CMaW1FYS3TEniTfQ=;
        b=CvS+Bg2d+WgoQGU7ey0n7lp7h8vUOI4HMePHe5yZhRoKWtUHzSODb+I3b9MlS2r79j
         reL9CWJboJRpYTjn3wyq32chbJ3GyZ41cJ7nUbISpwJE1bgWAAhA+sB7zDqLdzCU+XiG
         ZnD0tWvDBqfvawbi66IK89sncWBw+4KNUdAdO9ND2M/S+SiL636+Gh6kiurvehEvfdmg
         ZQVPSKb8pWDFQkvpEh4u5b4ZfuaZZogdYO6ntrUlxGJc1sTVMXSNpwZ9PjszHBFXX2s7
         IGcrjLk1fX42vOTu9YAnll39eKGpo77NjXwfg46A3mp9Z3jCnD+bYxDyn1vfrGgBWIhU
         8/ew==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=iwWaL5X9;
       spf=pass (google.com: domain of trix@redhat.com designates 63.128.21.124 as permitted sender) smtp.mailfrom=trix@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Az7rgZtoDoNgSzC2QC2NVdHxKx7CMaW1FYS3TEniTfQ=;
        b=hi6l64Kkl0ZIweEBwEcPbS3XxsGBiTWTQpSQkwZkK7qhsTvQw2MVNxpBOXXUzH5l2o
         o1ghrdkzsMKNGzCmkSHl+2H2kkjZtBVNgNowaB1IXEi8ycFow3sVqElJyQbkiUXRTiAi
         x+euj0bcUf0KEn+wAVqRzuFDejLOXnoSWSt5KZlM3kOVn4K+S1kfMJ5y3Zu6esFnJrJf
         oOaN6K9441f4ZzRP0ohNGDhd4IfiSMPQooQbS5uqoHMsOC/og4D8TEsV1noqUd8kjBaO
         rPQyLlgKXeT2pqgA5jd22GlnwbLc18yVkfiFOfJtQ09fnqgG5PhaWZ+QVO+5ZvX2C9IJ
         ORhA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=Az7rgZtoDoNgSzC2QC2NVdHxKx7CMaW1FYS3TEniTfQ=;
        b=TF0Vw1hKO8g19OahC1FiHkYJq9ddi2WuhlfrsQWozaieUNJzvRI1MxJa6KIeXW3I+F
         Ljc3z69WzkCvZkFwevbb0TSHmX8M7DXFo3ke5X8P0UReQ6NB3Y9AWcXLxEJSh91bNx7g
         BJVVHwqufIU2MaS/BrKBl364mMxDnaNQIv0SAFN/BBLh5i61PaMgrUmgr034Jxbo3/Rr
         IhAv2mRkoj0gLkFPiXQefiP8dOIFHvLflpVm5x+d6Z6+mG0fslkvnZz1j7c4ezR+PEAt
         8if+ebyrgxv5Dzbu/yopK+qRGfxK0O4+gD0XsqQMJsgC9zECn4pWySR4yyG0O40S8GEs
         +VFA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5335KDgYN9UiEY9GB9iIJc/s7QzRuwXafAVwFAlNslsCT4WMiJ0B
	rTMuBavay1Gbbn2sZXD7KFk=
X-Google-Smtp-Source: ABdhPJxatrPYQ+G3070y/KXXvrqbifJhDyaMI4JBhg9lTbeZavsxiTd7ILVMnWwNyo3hw3dKHJ8rHw==
X-Received: by 2002:a05:6602:2354:: with SMTP id r20mr1909550iot.93.1602562057717;
        Mon, 12 Oct 2020 21:07:37 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:6612:: with SMTP id a18ls4216774ilc.7.gmail; Mon, 12 Oct
 2020 21:07:37 -0700 (PDT)
X-Received: by 2002:a92:b006:: with SMTP id x6mr573840ilh.130.1602562057371;
        Mon, 12 Oct 2020 21:07:37 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1602562057; cv=none;
        d=google.com; s=arc-20160816;
        b=uMJgfaFdPpUFvi538GIpJ0wpGsleWwvii+SV1urdIvwrztmv4HD6WKd7kCk+E7SXR/
         9qEfatIF75uuFrQk0e8uxYzFwqlbeQGCRfRbTF3TVDooFl4SAy6AAFCn0yphA1mi1rtv
         e1Y5Axlj4pWtkkeZG2Mr6MgZXSQ6kjv9Kd2mMlQTOxKzgqpzaC/nMjFmvl8ZrMntVW3P
         euH4ObjCqcnsIffLYVLgQmhGOpzXCVjRKcfwyO2Lop+OiaylF4vUT4xohaw0zmnlIn+w
         bAtYQgLh5Fhacj2errQR6sek1H/T8KnWNJZ6nyiXh34iaxEX1+63lGDub0JH1BmOmO1P
         iYAg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-language:content-transfer-encoding:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=JirT+4vZS4Wlh/KjRG5Gnr9Co+Ss0bLSO4bv8e9Yukw=;
        b=Q6dckr1hmaNtihbs2lxoN57XsF9gseKpSVqnacWkAl5TLg67LsRwmRdWf8q+/KESQO
         QFLnRvAFcpZalgi9CGzUkYKiWwhywxg0vWI26NCsS7lH7wmkbyhezFbfQn/hNt14IYD6
         0+bLk4/7Og94vz1kecLgcxMpQSGKeyVefUgtQGzKMEMmNclDoH+SOZmtwBJOGJDUGw23
         TkXK15PmgcIPJR265zrV8yyoejSzDPMMCVB0YW5ZWlJD8ckOwiIZNM19HZPqyT9YYfMu
         O/pg6CnF+7kuup1iAANpbfSHSk/61ZNRkKEZ7pnknmACFntSoazk9J86BfQPZBvZko9Y
         N4CA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=iwWaL5X9;
       spf=pass (google.com: domain of trix@redhat.com designates 63.128.21.124 as permitted sender) smtp.mailfrom=trix@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [63.128.21.124])
        by gmr-mx.google.com with ESMTPS id b12si259589ile.3.2020.10.12.21.07.36
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 12 Oct 2020 21:07:37 -0700 (PDT)
Received-SPF: pass (google.com: domain of trix@redhat.com designates 63.128.21.124 as permitted sender) client-ip=63.128.21.124;
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com
 [209.85.160.197]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-230-Eu6uwVvJMvK34-nFfpEsRg-1; Tue, 13 Oct 2020 00:07:34 -0400
X-MC-Unique: Eu6uwVvJMvK34-nFfpEsRg-1
Received: by mail-qt1-f197.google.com with SMTP id a16so14049588qtj.7
        for <clang-built-linux@googlegroups.com>; Mon, 12 Oct 2020 21:07:34 -0700 (PDT)
X-Received: by 2002:ac8:31b4:: with SMTP id h49mr13612801qte.258.1602562053509;
        Mon, 12 Oct 2020 21:07:33 -0700 (PDT)
X-Received: by 2002:ac8:31b4:: with SMTP id h49mr13612782qte.258.1602562053198;
        Mon, 12 Oct 2020 21:07:33 -0700 (PDT)
Received: from trix.remote.csb (075-142-250-213.res.spectrum.com. [75.142.250.213])
        by smtp.gmail.com with ESMTPSA id s17sm13274100qta.26.2020.10.12.21.07.31
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 12 Oct 2020 21:07:32 -0700 (PDT)
Subject: Re: [PATCH] ptp: ptp_clockmatrix: initialize variables
To: Richard Cochran <richardcochran@gmail.com>
Cc: natechancellor@gmail.com, ndesaulniers@google.com,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 clang-built-linux@googlegroups.com
References: <20201011200955.29992-1-trix@redhat.com>
 <20201012220126.GB1310@hoboy>
From: Tom Rix <trix@redhat.com>
Message-ID: <05da63b8-f1f5-9195-d156-0f2e7f3ea116@redhat.com>
Date: Mon, 12 Oct 2020 21:07:30 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <20201012220126.GB1310@hoboy>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
X-Original-Sender: trix@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=iwWaL5X9;
       spf=pass (google.com: domain of trix@redhat.com designates
 63.128.21.124 as permitted sender) smtp.mailfrom=trix@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
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


On 10/12/20 3:01 PM, Richard Cochran wrote:
> On Sun, Oct 11, 2020 at 01:09:55PM -0700, trix@redhat.com wrote:
>> From: Tom Rix <trix@redhat.com>
>>
>> Clang static analysis reports this representative problem
>>
>> ptp_clockmatrix.c:1852:2: warning: 5th function call argument
>>   is an uninitialized value
>>         snprintf(idtcm->version, sizeof(idtcm->version), "%u.%u.%u",
>>         ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>>
>> idtcm_display_version_info() calls several idtcm_read_*'s without
>> checking a return status.
> So why not check the return status?

calling function is a print information only function that returns void.

I do think not adding error handling is worth it.

I could change the return and then the calls if if you like.

Tom

>
> Your patch papers over the issue.
>
> Thanks,
> Richard
>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/05da63b8-f1f5-9195-d156-0f2e7f3ea116%40redhat.com.
