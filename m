Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBF4ZQLWAKGQEIV5S3HY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x437.google.com (mail-wr1-x437.google.com [IPv6:2a00:1450:4864:20::437])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B3DCB4859
	for <lists+clang-built-linux@lfdr.de>; Tue, 17 Sep 2019 09:34:48 +0200 (CEST)
Received: by mail-wr1-x437.google.com with SMTP id j2sf971064wre.1
        for <lists+clang-built-linux@lfdr.de>; Tue, 17 Sep 2019 00:34:48 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1568705687; cv=pass;
        d=google.com; s=arc-20160816;
        b=avUKx9E5OiFK1+Wje27Y9mwjHCS/hY9BA8NzIhh7zsBlUnwnG/cgL9B/rjXRpJQZYI
         +spIclAoXsnNGHrhOXaf7X1FLhmtqTORhLYdBFXSJK4iBYpWERfHSfdpYC/eFrffPJ4z
         qDzq0OQxDO20PocpBkpAdrxaWuwr9U+hMi8VE04Yu/LBZehW/6xWFEyJV0HHi8qMNbuE
         hSgpvV8ok1vpf4zPGXxov+BjnBh1qm1rJElWEDzcN/5VQVRwe4hnlPXfddRRcTlNWeJP
         y4fipw604Udhm9tPyMYXRSjceu8zN5NQK8Juk+pMt350g4TUMF51y/8BECW0uJcqwduO
         oN2A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:sender
         :dkim-signature:dkim-signature;
        bh=w1JQR11dw4Ni4nGqjMgEutP7QiH8jeIlx5RW0VpoAJY=;
        b=FvYS8KnSEat2UOcMsGspRtRFVNEH85agfaRRc+ejqUjg2cEFMUoU1xitgK92+o5r42
         gM3Qb/Jx+YQnYrAY1SR5+dOK5MDmvD6+j5aAozMYDdEYBUoqzjuiBYI+/RzPBwVPpHvu
         ctLHxmZjAirkpbNwVVhESk+WHDg7llyIZrkI7quP3BGV+6ThE1anhXIPFW8X1ym/ttIE
         e+a29FUzTqqnDaDrzccKzcKMtEsmXnv0h/A0e0/r9XKvORVcPndbz/YJf2aSm9Je3ZJz
         zwX+6CFEeLSQsZuaPttFtY4a4HGUPWosYbo6v+5OLf/UvYlJQAhnI6h3pN1Byn72QZ9q
         j1+A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=IL8kpvCE;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::442 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=w1JQR11dw4Ni4nGqjMgEutP7QiH8jeIlx5RW0VpoAJY=;
        b=qYkDTzyc024pzHONmQy6MP66Gptnf+OcgQyI2PLO2sUmo3ExKB9RIibz9wFK+0HLRn
         syELBqFx9feYrbKsDTjNfWI01QoIga9WLJOYYNLfdniH9evdkM4r7JI+7xUEq3PyTSGn
         3QnwQv163G98QgtALHPLdN5aV27LjepYPvKyRQsi+pMden0nlAX1f+EGr/xs3SFXCJt/
         KPGMQIR0XNjoY5j521XDvNhG2g8gn8U5BxXBp4giWvlXxgP4uRKl9Wf2RTHPOVNwXSpm
         1ncUwqlMjdlZfAlF58QV2VdlFbDA/ya96AbKeOLd1ycdyAYowT/Mj46HNxrki//U/m8p
         I6aw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=w1JQR11dw4Ni4nGqjMgEutP7QiH8jeIlx5RW0VpoAJY=;
        b=B+XKBKhojYJzTuCEWmuPnyHSRfWPeDvpganzsBqg7YQ00utYoXz9aXPVE+ZpN0QD7D
         T3aZkYFizzqppw9yq1QrH1J1Nih9D8YYbDZ+4lfo6+pSVzMTor3nrL10NKME90i1Z7kv
         LVso8DJebSdql/WIHIQTWZUMNXQNHFUFwJWk9PT8hgcItzRhsCZO+FNehcncBfSUXqWv
         PlNV4YnpfJGIeeniPBbW9kpp2PBnf15iI6hFtm17sTqoT2Agrg+SPiq5gW8evld2ITH9
         sC5G+IeglhFGSFdHF3L/2CMTZP+l52OZNiYxHiwL1/3AnUfhTwPPDt4boqcLH+g+5PXy
         RAcA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=w1JQR11dw4Ni4nGqjMgEutP7QiH8jeIlx5RW0VpoAJY=;
        b=qnes8Pcf0DHMycS391CWwaADwLtvFH1uvB3dL2oDV86Xlh0XAoZlxWkY2h9Vut5FMG
         7NEYyOvgSsBniK8/LYEWapTxv5AH2rGQYbg7Kqfk5EsrBHcR8JsdWlWmxPibs4Kj+F2A
         DTG39+PgbeJfPb8DeILuzwG16DOlNsffBvDj6pgtCBSEO46mE0W1+l549Q5f/SlgXcr5
         jIGLDz4mjhRhdYsB/2FKkHosYVGkMe+AskDpkCh21q6Iw6gR0jXBFii4H40za4eiQxmy
         03p5YftcClSW5k75ZcfRNJFmOdvdeVX0osD4aYPN3L6H9qem/FPQb2PNM4lOcNw2OfTC
         fJxg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUerb3mAhvNmUj1e3yGPix1Fd5kZ4QGypGXRh3spM76ZteUBC+d
	D7dOTRqRP1YnEAQkG/RmWDo=
X-Google-Smtp-Source: APXvYqwcsFjkLOjnZMo+qvfQOrvJwWZ5UsMFNMNgOYIvSmXadjVfyeVXR7DPJ0rOg+wHSY/aXqdBpw==
X-Received: by 2002:a05:600c:219a:: with SMTP id e26mr2406024wme.86.1568705687756;
        Tue, 17 Sep 2019 00:34:47 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1c:eb03:: with SMTP id j3ls588507wmh.0.gmail; Tue, 17 Sep
 2019 00:34:47 -0700 (PDT)
X-Received: by 2002:a05:600c:1002:: with SMTP id c2mr2332231wmc.95.1568705687371;
        Tue, 17 Sep 2019 00:34:47 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1568705687; cv=none;
        d=google.com; s=arc-20160816;
        b=fdTAV2EA/Mhn591M6yDYRe/nmDv0kQntQKd1+VjLECfZGS1dBZdUAqqNipwAEdDfh0
         QYP06BAKdXQ+c7Hpe80BZXgKfWawVA7wgDy+FpTGgQoAVeCvhV0IQINIKKwBysz16PU/
         g8VqMTXm4vOk5HgrG1iybQqcr21GngwqpOwxqa5Eq2IuKqWpy/uencar34wWlYR+P9bA
         5pgYKZg+nbVVBma+lrmvagIqrc+LYUWTemJD1T1LMI1cUVvZvlA/NvQX3EiKvwrX1tpS
         /0pWiGSTFtMzcfwTzsoMpHHNH6AH7aPhCl1dyewvKDiJ4meJf0Hh5LPnhGOMi5BL4EF+
         NRKw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=xs5COs3IFBd+FU/QFyQ3V/NOMrJdgrZhptW2Dami03g=;
        b=cwCgHpmOzw7AiwshVFXqjqzudxfZIg7xZoVfcDb5fcZmyVqNaeR+UE9///sBgWOZSq
         7fI+pRfCDV6nW101SHTvbLeW6jYTIoP6Z7fqE8N4KelM+8/a++jWSsm+TtX/6bFlNTlm
         Il8QW35mWh6nNXdAjUbpZJtlt30Zcj+4P4Joe494geizTC7YFUQyqx13kKII4j3LYFdB
         3TPosiMGogUUVm7BDFWJevo8gr9/7Om4tJkyc6rRi7FOM4DPRXf6rltoprZbXqGvKGf+
         ABsqW7efXegxcUHh32gtx+6xmy+HfgTs6RW9Y1IQy+yzP+e9K6TTxPwDzHHRq5/6G63y
         7aUQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=IL8kpvCE;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::442 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-wr1-x442.google.com (mail-wr1-x442.google.com. [2a00:1450:4864:20::442])
        by gmr-mx.google.com with ESMTPS id r1si24331wrn.2.2019.09.17.00.34.47
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 17 Sep 2019 00:34:47 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::442 as permitted sender) client-ip=2a00:1450:4864:20::442;
Received: by mail-wr1-x442.google.com with SMTP id i18so1895277wru.11
        for <clang-built-linux@googlegroups.com>; Tue, 17 Sep 2019 00:34:47 -0700 (PDT)
X-Received: by 2002:a5d:46c4:: with SMTP id g4mr1596417wrs.189.1568705686890;
        Tue, 17 Sep 2019 00:34:46 -0700 (PDT)
Received: from archlinux-threadripper ([2a01:4f8:222:2f1b::2])
        by smtp.gmail.com with ESMTPSA id s19sm1494984wrb.14.2019.09.17.00.34.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Sep 2019 00:34:46 -0700 (PDT)
Date: Tue, 17 Sep 2019 00:34:44 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Mike Kravetz <mike.kravetz@oracle.com>,
	Davidlohr Bueso <dave@stgolabs.net>
Cc: Nick Desaulniers <ndesaulniers@google.com>,
	Ilie Halip <ilie.halip@gmail.com>,
	David Bolvansky <david.bolvansky@gmail.com>, linux-mm@kvack.org,
	clang-built-linux@googlegroups.com
Subject: -Wsizeof-array-div in mm/hugetlb.c
Message-ID: <20190917073444.GA14505@archlinux-threadripper>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
User-Agent: Mutt/1.12.1 (2019-06-15)
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=IL8kpvCE;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2a00:1450:4864:20::442 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

Hi all,

Clang recently added a new diagnostic in r371605, -Wsizeof-array-div,
that tries to warn when sizeof(X) / sizeof(Y) does not compute the
number of elements in an array X (i.e., sizeof(Y) is wrong). See that
commit for more details:

https://github.com/llvm/llvm-project/commit/3240ad4ced0d3223149b72a4fc2a4d9b67589427

There is a warning in mm/hugetlb.c in hugetlb_fault_mutex_hash:

mm/hugetlb.c:4055:40: warning: expression does not compute the number of
elements in this array; element type is 'unsigned long', not 'u32' (aka
'unsigned int') [-Wsizeof-array-div]
        hash = jhash2((u32 *)&key, sizeof(key)/sizeof(u32), 0);
                                          ~~~ ^
mm/hugetlb.c:4049:16: note: array 'key' declared here
        unsigned long key[2];
                      ^
1 warning generated.

Should this warning be silenced? What is the reasoning behind having key
be an array of unsigned longs but representing it as an array of u32s?
Would it be better to avoid the cast and have it just be an array of
u32s directly? I am not familiar with this code so I may be naive for
asking such questions but we'd like to get these warnings cleaned up so
that this warning can be useful down the road.

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190917073444.GA14505%40archlinux-threadripper.
