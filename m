Return-Path: <clang-built-linux+bncBDYJPJO25UGBBMFK234QKGQEAWNLYTQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x640.google.com (mail-pl1-x640.google.com [IPv6:2607:f8b0:4864:20::640])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D61E243F50
	for <lists+clang-built-linux@lfdr.de>; Thu, 13 Aug 2020 21:32:02 +0200 (CEST)
Received: by mail-pl1-x640.google.com with SMTP id a20sf4547593pls.20
        for <lists+clang-built-linux@lfdr.de>; Thu, 13 Aug 2020 12:32:02 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1597347120; cv=pass;
        d=google.com; s=arc-20160816;
        b=EIdQ73YTswH2hxx9pkl57bqgYVAIcQBJCJY6wZlMOV6bdAqRsFtDRXrow7jdCGnYfg
         /adIalJu4r9MSZiHiB6lHUPqT7tpm3QHiGYz//wmpJrXXi+kuX4OT9k7bgCc/amfQ2ev
         f8HPufQJsvymilvYzqHyr1ShAPV+1rXi5vOfWl8dpGQa4g64VBM/3MAxGZ5zqwxQRgFP
         YnjLbuLXUxRmfHJhlLFrB15/UNBKBrsIEXIHfNJAhAYTem2qHtPYqxGH2bHhTk+et3wr
         lR6Xkc595IL5icvud6FjydW4s0VJ/mHDsCPc6BforBNljmErqFpxNiaxMqqlQw1aip7/
         EUcg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=WhRGw8fJrU1F6hOtcHBOQCoUJilaJJHRJPqqwOmJ3FI=;
        b=cJBL3A8B26HyhJcuRVzCZEYiQZ7BInvje8qY0K9FuxlZHjci27+1SohTAk/aekciKa
         klzhqKibPc48vGfzrHdFOFeMUHPIqNvVScDSAJMzB7J9e+MkEHb6JWpj7/HdOUKK5mFn
         jaWzqexdrn7glKjId3811bxAiLMv1Jz0edjFrmgdpL9EUgRkQVTRpl8yThvao8z8FQ0l
         kRK74J0z+rMsCN+PiaHqzf/dLqkG7l+ySLE5wydS/HQ5jQ5Fmu6BFTh/JCRxuAEDMzqE
         AtfwlFFlzeXAxuBuBTQk+zGeuEqYY16tQqtEnIpdKIKmOBl92jqsZ4Mhc7LWB9KIBm2K
         uatg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=h6TFpibu;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=WhRGw8fJrU1F6hOtcHBOQCoUJilaJJHRJPqqwOmJ3FI=;
        b=YG+KkC67+XhSYUhhPK2jVywthRIkzRLGKaG9I/uBiQUgxGTlWg26zmS+9L8cn35qxz
         rfV8V0UF+L1JdJhyZrcLyMiitxUgpx1/XfXQPBKuYO9FHRyrfuDXEm0fYvld/efx/8Gi
         03fbIpg30wbDzgqlXqvCL5z50Y9a6x4HsETsboJLYrZIKxDQI1kOuAlIZYYBFV7sx7jU
         m5bZ4IkhskhmhF18d7k67UROpRX1eepyJ9tf1vw9+AYr/0NbbFwimDyFo7/M7OpneNgB
         KaarfzOJObqTpvqflruOsZFQSzxiqL+mlxGtfjw3ok+i9f5V5ohfzdIb48ZqgtDO/ZUP
         4pKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=WhRGw8fJrU1F6hOtcHBOQCoUJilaJJHRJPqqwOmJ3FI=;
        b=Brb+TEZqebKf4hnaDsYMj6Zke82ucbuIAOfaZuy1KqCFt9KIXzTwd8d4/iDY1j66oL
         CUv+/P+zXpdfTWpvIpYEM4Yhei1c2sx2Q5JPh3a+Abz/xB4Cg2cqLDpOMtMxqByiU4IG
         vpgQ3ybqpsJKRCvngThjSaC8QYQa2HcITUDhLM84Mhk8wKIs3DARh1aM18fmJmb5BpCF
         YAXoyFir1SDoEnrwvvkmOb/kHmuJGWWb3hn3nmcJMlqF6EyllIAYbIrlBU0B3CypYwF5
         KgBLb9peww3GSMTez+sozcLAZZioFB74ceXXxIyQ9kdEOcSaORRWukC80NU8YsF8Ad2L
         tnlA==
X-Gm-Message-State: AOAM533acIcZ3rV12M025UsXmPjVpXjyNGL97QR8m2BJhyZe1F1RDAG8
	qNZ9T9ofs6ufvkARHtM04WU=
X-Google-Smtp-Source: ABdhPJy2unP60UguyxYmMujKy1M+lRZO53qjf4+ZVG+DzaHi04Wxrln5s72V1hKXWILlLiqMSaOe/g==
X-Received: by 2002:a63:e157:: with SMTP id h23mr5243581pgk.239.1597347120628;
        Thu, 13 Aug 2020 12:32:00 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:ca88:: with SMTP id y8ls2666369pjt.1.gmail; Thu, 13
 Aug 2020 12:32:00 -0700 (PDT)
X-Received: by 2002:a17:90b:128e:: with SMTP id fw14mr6779796pjb.66.1597347120117;
        Thu, 13 Aug 2020 12:32:00 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1597347120; cv=none;
        d=google.com; s=arc-20160816;
        b=ficjEJHoQqVXCVxL5ZarcpcGkM6edyTqhkjMVPz3NziCuBkdcJPygnioeh9LqzvbDB
         Oo/jSooeF/Ti8UcDvbolkZ28tOnPkD5a0XTNsxnFpq8XxnWnj3To9a4i4Zel43IUUYqn
         LgnQMfWeWw/kN/gvrRqbR7MKWcZukJHavlBcqGQtsE8sM1HfPA7X7oXMOfmrOYCZoBc7
         wPpy6bt0lK8tQS92lkvBU9TQsBz6482mBHDnMp6z5VaJff94OvGsyxPsYhBRYzfmR476
         yYOr0Q7wYxSdwAVKb4BpT+4A+U6TZHKEPJOcSC0WbKT3fpCXmlLF61y212975ptyZXjV
         FUAA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=ELuFU+iJIOfeaRgXBIJaDiZljyYpQD9DR66y5oN87KM=;
        b=GLW+azMH/BgqG6TRr52CN7eMB8kP0S4uzQWdW2Mj/XOAd0Pdp2+RZp0zUygvaQgQ+X
         l56gqQ3BRmsY+jb6dFd/1e/XQQ5Ghm97MrVfxkYfdGubhkI6uJ9Rp9l24rlovjg8u0CP
         7ayUbgBLOue1JfuLOrIp8i0hUNcbmfhwhWLGOmoSFQP08p83GTv7JasQfhhXRkjRuOre
         TdeMqLDniLjRKSf/BnOsWhTHaPtMGWCFjya2YgwqlL5f4K9oPenwe9XYrt4SXU2iU+DG
         go5aFPkfeB/g653AImDwyMh4vFB6KeCY1JOuSvTBDpgHs2k0bKZG6DVjADkwf6DqCaZ3
         Nd9Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=h6TFpibu;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x544.google.com (mail-pg1-x544.google.com. [2607:f8b0:4864:20::544])
        by gmr-mx.google.com with ESMTPS id m15si379750pgc.5.2020.08.13.12.32.00
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 13 Aug 2020 12:32:00 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::544 as permitted sender) client-ip=2607:f8b0:4864:20::544;
Received: by mail-pg1-x544.google.com with SMTP id 189so2681231pgg.13
        for <clang-built-linux@googlegroups.com>; Thu, 13 Aug 2020 12:32:00 -0700 (PDT)
X-Received: by 2002:a63:a119:: with SMTP id b25mr4972564pgf.10.1597347119499;
 Thu, 13 Aug 2020 12:31:59 -0700 (PDT)
MIME-Version: 1.0
References: <20200813141946.GB5541@sirena.org.uk>
In-Reply-To: <20200813141946.GB5541@sirena.org.uk>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Thu, 13 Aug 2020 12:31:47 -0700
Message-ID: <CAKwvOdk5ABSXa+q=LWQ8zi-mq58GH-ee-0OheGqSHoSYWGSqrQ@mail.gmail.com>
Subject: Re: KernelCI rootfs
To: Mark Brown <broonie@kernel.org>
Cc: clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=h6TFpibu;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::544
 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Nick Desaulniers <ndesaulniers@google.com>
Reply-To: Nick Desaulniers <ndesaulniers@google.com>
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

On Thu, Aug 13, 2020 at 7:20 AM Mark Brown <broonie@kernel.org> wrote:
>
> Hi Nick,
>
> As discussed in yesterday's clang call the KernelCI rootfs binaries are
> in:
>
>         https://storage.kernelci.org/images/rootfs/debian/

Thanks for the link.  I didn't see s390x binaries; I guess that's the
pointer to the below build scripts?

>
> (we used to use buildroot, you can see that up a level).  These are
> built using the stuff in:
>
>         https://github.com/kernelci/kernelci-core/tree/master/jenkins/debian
>
> s390 is a first class architecture in Debian so should just work
> hopefully though we don't test that, riscv is in Debian ports and Kevin
> and other Baylibre people are looking at getting that working so it
> probably also just works already (I think it's basically there and the
> remaining sticking points were with the qemu stuff).
>
> Thanks,
> Mark



-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdk5ABSXa%2Bq%3DLWQ8zi-mq58GH-ee-0OheGqSHoSYWGSqrQ%40mail.gmail.com.
