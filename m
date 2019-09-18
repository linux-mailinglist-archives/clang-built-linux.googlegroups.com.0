Return-Path: <clang-built-linux+bncBDZYPUPHYEJBB34ARPWAKGQE62K72QI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x83e.google.com (mail-qt1-x83e.google.com [IPv6:2607:f8b0:4864:20::83e])
	by mail.lfdr.de (Postfix) with ESMTPS id 7FEE3B6FBF
	for <lists+clang-built-linux@lfdr.de>; Thu, 19 Sep 2019 01:40:32 +0200 (CEST)
Received: by mail-qt1-x83e.google.com with SMTP id 59sf1966370qtc.5
        for <lists+clang-built-linux@lfdr.de>; Wed, 18 Sep 2019 16:40:32 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1568850031; cv=pass;
        d=google.com; s=arc-20160816;
        b=c1z2UQVnEq0loUro3G3RXy2kBRjGkSLr9eqwrGS1c0Za/2X3JeFackMpYgNQqgDe6r
         C56oEugpZBLHcCyFnPC1yj/VKziCdUMFmlgG7qD4aCGGwkNDlnQ+q7SDZnAloiXLSG3y
         YwNMSZRXrEVpkZk1P0Na4+VWRqo6/MjiRXJW8Rsm1RTyrl4VVHa5KEsyrExHF753/4w4
         3+LOj+Hk2P1+tAj8svFaAqCWWYMxw8sIs/q2KtY4R1DFqfatFqSgZlB4HTmtJaijG+I1
         GDnrMNnSu1xLGwGNJgvWt22ugnZkr/Pq2Qmq8DGnDoBUhsZBJpM7C36BthIPlNTC1H9O
         C0VA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=UH4R04umJOjqn5Hi2ZpEHwvFq9KwxECUiCW7nbl1AFA=;
        b=kZPRRzIu8yODAV5cHaPbaQz93VqMTR7RsvWDbAEmLAdWjM6tt1/loZFOAjSBl8VddT
         Lqc/uQeeFGhYGdv9WbUu00aACWmHW+OELvmSUU4F4L9Mu7zD7L8NmnF3xXeSh8AseR/Z
         Uf1eCsK11EPm08//wA4sBuqHfRprNwj+wARASJ837UkT2zYR9OES5ItQhwuDAxa54/5G
         A+X1R6S/6vFC4cBBPb0V+jfdfk8irSqSNgbYDYtz7unX1PhjMQ1UrGX/OpRA0ciJeubd
         opfX09hZ30xGTq1PDtYvBBm4JmLHOoqghsywzphCqiwMdcb1N+eVDi2uk5U5ZHIwgNKa
         Dfkg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@intel-com.20150623.gappssmtp.com header.s=20150623 header.b=g8sIiTEU;
       spf=pass (google.com: domain of dan.j.williams@intel.com designates 2607:f8b0:4864:20::343 as permitted sender) smtp.mailfrom=dan.j.williams@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=UH4R04umJOjqn5Hi2ZpEHwvFq9KwxECUiCW7nbl1AFA=;
        b=fpvktM+mUqtgORNm66Qu0o0rsPUYTMwItsnuvc73vkN6e2GsgAgpbd9+5GcNnIlqW6
         DMeyTjrM/ZRANmJA8H+lBHmkTfa64W9h2WKSvnyT2A5KwS3sTFDKjyLga+2U7nnUhb0+
         fp7PW5YaQj5PI/50jYCVTZHkWma9X3Va9wVSUFZ5HN6IYZlS0ud7pDrZBj0cYcK9Zu0+
         VM6Eyj+PAaYM6O91x81q+CHM6XzB0wGNgQK809VRyiJKgrz7oT9BJnICQKJ7TL2e6IIt
         NALzGX99mWHhp862N/XrR56mxXMqMzWyqGryY08xP6UkPaIz/8rGkyW7Z+bXO7xLTSp4
         fvQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=UH4R04umJOjqn5Hi2ZpEHwvFq9KwxECUiCW7nbl1AFA=;
        b=I6Wp2wefPnstYIvP347A2tXYyKErMv718eWT/10+cTmEbNG7qJ1Nupbx4kdj3FgAXS
         sGVJPTyT8WAI9Tdd6TCzU8tS/BzXqAKib1GSJ5o/Rx8Kggw8pGcH2nH8XbKmKsyScBiE
         32seZZFG7UkJcGTGsSck/zEX75UBaB8UiBwx2oLGCtOH56tNUqmSGWNx9A6OucEbPGMs
         Q6yyppYo7CZ6jc1VW4XjkPrZhpjY8+dA3S9V1dVqNzddRzNXaSIM48KErGbCJPfnXs9b
         huG+BdMEVipzAJ315cMGsmK5vipzFjPVLG2ThPpVXPmHmof82m/6hrLC4Q89lRR9IeIz
         KHPg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVyiqYUFe+3pjGcqI6yyoN6vSnWtmL7HmEd9/9fTn0biMkhytYb
	tU3SwO334vmbAyQ8PtuRN3U=
X-Google-Smtp-Source: APXvYqx0V3MAA8hkmWtjUbvv8kdS+MaYjJWM13z7Zby+9vwMX6vvsk4FI/ZvbVwj5uHMZ4dxEJszeQ==
X-Received: by 2002:ae9:c214:: with SMTP id j20mr88540qkg.498.1568850031592;
        Wed, 18 Sep 2019 16:40:31 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a37:83c4:: with SMTP id f187ls551079qkd.11.gmail; Wed, 18
 Sep 2019 16:40:31 -0700 (PDT)
X-Received: by 2002:a37:9ccc:: with SMTP id f195mr116305qke.110.1568850031310;
        Wed, 18 Sep 2019 16:40:31 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1568850031; cv=none;
        d=google.com; s=arc-20160816;
        b=wk7SOEhmaebJWyPB+UMYWnkwXIBphMqtuca/hg0rFdRIhpHQ46h1LHvMbManf5SJ1R
         e3Ro1ig7Anl9dTc6/d4U+kfXXkeq5/EhNY8zp6GeQgGO8rM9aMRlPcTCFCiS3iSdqOgE
         OZBr4unDRWy+2gkOzIm0D5yvuqSZJIC51BAb2aBTmQGtR5u0qsq26gWsLlbh9QVeviiz
         aFoPZCJChU+DGIRc0/5wXI816B72j7OhqAJsBhQZhvDJfVBPe7U5GrXOko+xd9oRLyKR
         HekuM8++MB07+mLbC/I8Tl2wz4P5HyHC7JvDwpD7tUXG3eFn521+Q3gU8/XG7/rWKfwK
         tiQw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=PDQmKC/gOMi6sqZQA7S/aMJ9nwprCWZMCL6cDdDtiwo=;
        b=YHfSM+6c/+6ZI2mX359gz+w51+RJG0PHZH/HVp2CiIAT4fiaE+Lw0e24npD00TaiXP
         m+oG3dkbvTO8jWXHVqyc2W+tBygICam6uww1pJJKMed3aNT68LB++PYYFcG2WS/ljg8Q
         g+89+SHHiMT8xAJz27hGvx1uhZhXQokr2K0M4jFNjdS5RSYJPY0mD6wSHwLlG10lgDIi
         +t4UgsdybvlNcLwRXOokbZHD00GGUF3K25B3HEVkaGTfmH/tN51aYXcFt1JFpJ16KRjC
         TkqkJ2k2F6XSv5GFqjXg2EQ0+O7zmSLOXnsPwRVCE0OWnQWkyLz533L/TMA9n18cTZ4T
         EIyg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@intel-com.20150623.gappssmtp.com header.s=20150623 header.b=g8sIiTEU;
       spf=pass (google.com: domain of dan.j.williams@intel.com designates 2607:f8b0:4864:20::343 as permitted sender) smtp.mailfrom=dan.j.williams@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mail-ot1-x343.google.com (mail-ot1-x343.google.com. [2607:f8b0:4864:20::343])
        by gmr-mx.google.com with ESMTPS id j18si947150qkg.7.2019.09.18.16.40.30
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 18 Sep 2019 16:40:30 -0700 (PDT)
Received-SPF: pass (google.com: domain of dan.j.williams@intel.com designates 2607:f8b0:4864:20::343 as permitted sender) client-ip=2607:f8b0:4864:20::343;
Received: by mail-ot1-x343.google.com with SMTP id g13so1441606otp.8
        for <clang-built-linux@googlegroups.com>; Wed, 18 Sep 2019 16:40:30 -0700 (PDT)
X-Received: by 2002:a9d:5ccc:: with SMTP id r12mr4419959oti.71.1568850030063;
 Wed, 18 Sep 2019 16:40:30 -0700 (PDT)
MIME-Version: 1.0
References: <20190918042148.77553-1-natechancellor@gmail.com>
In-Reply-To: <20190918042148.77553-1-natechancellor@gmail.com>
From: Dan Williams <dan.j.williams@intel.com>
Date: Wed, 18 Sep 2019 16:40:18 -0700
Message-ID: <CAPcyv4g-aCrn7pq967rFJ+K_ENifNkZ_azLg6S03V8TGuFdOhg@mail.gmail.com>
Subject: Re: [PATCH] libnvdimm/nfit_test: Fix acpi_handle redefinition
To: Nathan Chancellor <natechancellor@gmail.com>
Cc: Vishal Verma <vishal.l.verma@intel.com>, Dave Jiang <dave.jiang@intel.com>, 
	Keith Busch <keith.busch@intel.com>, Ira Weiny <ira.weiny@intel.com>, 
	Jason Gunthorpe <jgg@mellanox.com>, linux-nvdimm <linux-nvdimm@lists.01.org>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: dan.j.williams@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@intel-com.20150623.gappssmtp.com header.s=20150623
 header.b=g8sIiTEU;       spf=pass (google.com: domain of dan.j.williams@intel.com
 designates 2607:f8b0:4864:20::343 as permitted sender) smtp.mailfrom=dan.j.williams@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
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

On Tue, Sep 17, 2019 at 9:23 PM Nathan Chancellor
<natechancellor@gmail.com> wrote:
>
> After commit 62974fc389b3 ("libnvdimm: Enable unit test infrastructure
> compile checks"), clang warns:
>
> In file included from
> ../drivers/nvdimm/../../tools/testing/nvdimm/test/iomap.c:15:
> ../drivers/nvdimm/../../tools/testing/nvdimm/test/nfit_test.h:206:15:
> warning: redefinition of typedef 'acpi_handle' is a C11 feature
> [-Wtypedef-redefinition]
> typedef void *acpi_handle;
>               ^
> ../include/acpi/actypes.h:424:15: note: previous definition is here
> typedef void *acpi_handle;      /* Actually a ptr to a NS Node */
>               ^
> 1 warning generated.
>
> The include chain:
>
> iomap.c ->
>     linux/acpi.h ->
>         acpi/acpi.h ->
>             acpi/actypes.h
>     nfit_test.h
>
> Avoid this by including linux/acpi.h in nfit_test.h, which allows us to
> remove both the typedef and the forward declaration of acpi_object.
>
> Link: https://github.com/ClangBuiltLinux/linux/issues/660
> Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
> ---
>
> I know that every maintainer has their own thing with the number of
> includes in each header file; this issue can be solved in a various
> number of ways, I went with the smallest diff stat. Please solve it in a
> different way if you see fit :)
>

Looks good to me. I'll pick this up for a post v5.4-rc1 push.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAPcyv4g-aCrn7pq967rFJ%2BK_ENifNkZ_azLg6S03V8TGuFdOhg%40mail.gmail.com.
