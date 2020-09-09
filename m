Return-Path: <clang-built-linux+bncBCQYFH77QIORBLUJ4L5AKGQEX27JOKA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3c.google.com (mail-io1-xd3c.google.com [IPv6:2607:f8b0:4864:20::d3c])
	by mail.lfdr.de (Postfix) with ESMTPS id E62D12628B8
	for <lists+clang-built-linux@lfdr.de>; Wed,  9 Sep 2020 09:30:56 +0200 (CEST)
Received: by mail-io1-xd3c.google.com with SMTP id a15sf1393318ioc.14
        for <lists+clang-built-linux@lfdr.de>; Wed, 09 Sep 2020 00:30:56 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1599636654; cv=pass;
        d=google.com; s=arc-20160816;
        b=NPZW0Vc035bopfLaHrIhWUy3KKyxRm8vcKmNjDRljThqMSeOKqeA40bWGB4sCFP2aK
         F5pelSpOUD8KeukzlezA4YkIJcYEruCRbmq91QWVKM6D//R9p4YccW6FSTOrLwHWsfH9
         jjynCKXs83DBttLAzUB89clAempvSPB0jwl9NmdI1lHznh96Wy3OHHxptI5bYhH0gHhW
         v1IR/ouSg/8S4lwPlo+yjo5Ac7S0Vvzzk1OzoAzFyXMHUEzUxT1mxmPVqYKPMkUXzj4a
         JCFSicZysrcv9+Zvo9ajyibkOzHiDSkW/4cI8LQPDFHIP1P5M5n1F+z3tc3PY44fyhns
         cBsg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:feedback-id:date:message-id
         :user-agent:cc:to:references:in-reply-to:from:subject:mime-version
         :dmarc-filter:sender:dkim-signature;
        bh=bv4q0/N06miwkmTadM/BZU/XDWja4jlfbSel/D5uM9w=;
        b=HTIqVTsaPWT7yU5QK9BVOD83PAiW9PYP6pRa8lV/1uitL804WKK8JXISir3IQMVgFJ
         Z758mxHYvAlq8ssZp0sMbXwcfdYx0r5MSuDFe3PZdk5TWEFUuRa5hf8YFT6amqzU7EcS
         Kqt1X9e8w46vb0IZ1V+xwGnGtJZh6btK+Se7TNIGUpjIeKOLNhozulyJfuC7LPSx+xnZ
         zPABYo7rezJizlby/1S8u7r8swrBDpyJYS+VWuWPx/l0xKLZc0IHfYI9sj3ISWE9Etgk
         jZnwCIA26s6Y+xLf9c5ADQPxZVilhNgGyFaowjR+53DytsJ/L1TYw0frB3/USy8ATWdr
         6xTg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@codeaurora.org header.s=zsmsymrwgfyinv5wlfyidntwsjeeldzt header.b=nPciaEJN;
       dkim=pass header.i=@amazonses.com header.s=hsbnp7p3ensaochzwyq5wwmceodymuwv header.b=MRudvjid;
       spf=pass (google.com: domain of 0101017471c64501-5e9a6d5c-8097-4e44-9e2e-66a8c2e3b256-000000@us-west-2.amazonses.com designates 54.240.27.18 as permitted sender) smtp.mailfrom=0101017471c64501-5e9a6d5c-8097-4e44-9e2e-66a8c2e3b256-000000@us-west-2.amazonses.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:dmarc-filter:mime-version:subject:from:in-reply-to
         :references:to:cc:user-agent:message-id:date:feedback-id
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=bv4q0/N06miwkmTadM/BZU/XDWja4jlfbSel/D5uM9w=;
        b=V6TydOeAwurbNfZ540qwE0PF7Sn1P+z6WbCWI51D+CHR1nwDM4gdcIhhqiu3afEWRn
         ry6GOU8XFSG47yTrYd+Qah7+hnUppa2kpXcjunlizSMKT0D2zj5JjfDjDjG55evBAWVB
         ico90iBgoR5wIb6QvENKkzuRkdO/1wakFXU/dBYEp64Z5D7Axt1ZBnRBsMgOJE74QR6b
         0h325Xog30QtJMXgvfW62CrME8EfLVeOaDt/+WOlpME9T0ktBruv06NaKlyrpUrDGz1a
         7XB5sviV53nxoI6rhoAiVQ0Xi/4UJcJDyjM67KqbOFFMgX6f4ftujJJnYNBmkhCdzR3I
         5Faw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:dmarc-filter:mime-version:subject:from
         :in-reply-to:references:to:cc:user-agent:message-id:date:feedback-id
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=bv4q0/N06miwkmTadM/BZU/XDWja4jlfbSel/D5uM9w=;
        b=TF2wxxklcXNESpOcd+Tf/hDjzQz/oz+ZYpMFjkOuyzgfykboUWEpO6vaQa2u2nIrb+
         e/VJPxaG2gWaaWNdiiLY5Oy/Ruig87/5hKJaKXmtRCy3+kchKGxbEOAx6m3DtMscJPS5
         0hjuokotfT4WiRyDIFIexZcL1Zum2nIOFjlx3Q27oGuZAEbhnbwcWzT6lJ9C14Gw2Kbv
         cQfHNxnnet6ld2Rfe48dQcjEOFcsBSy9LCmPaBS251MhvIh+fMWdHVcU4PDrzQO7+Tba
         icyGOSOeJQxfjinMEyg7XDtm3aiGLvlLKsHj9hW2T0IoFj8/8CREs3hn8x1slPGGFUOA
         lM4A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533HR2T44cmw2lzlcQbXhvmlxGhM6UP2PYdzD0m6d6yN+35lSiMj
	JU+JT0wECNcBziHM4PWdS/U=
X-Google-Smtp-Source: ABdhPJyWfy6cQNsC5aCnOxhvFiJ2CkA2xDwg1prr5dgRRFQMW9ENqfu/vnT6TF34KfXnUo95QtIzuA==
X-Received: by 2002:a92:1b4d:: with SMTP id b74mr2743285ilb.198.1599636654623;
        Wed, 09 Sep 2020 00:30:54 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:ce51:: with SMTP id a17ls495364ilr.0.gmail; Wed, 09 Sep
 2020 00:30:54 -0700 (PDT)
X-Received: by 2002:a92:1901:: with SMTP id 1mr2437317ilz.283.1599636654332;
        Wed, 09 Sep 2020 00:30:54 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1599636654; cv=none;
        d=google.com; s=arc-20160816;
        b=kDknrwfxALtReXvS7T0yb2tIZSvY+FVbkdGDZXH/fGvEy108u2fXvVCTlgGzl9sypN
         r1sxeecKoWss1YHUymjItZ+i4O6FV1faZZgcunsaEMoK1RcUTeew36wlA6N2kSiGzYOt
         lZfHS/jZGvADFeu9asiCtk2spI2neI2o+jinkiUJ3kGqWRAUBGSRBlAThS+hBEfCRIR/
         evkhG2z7Iy/gxP3SO+1QLbjvRy9iS6rM87v1RdV6MkwCgjtharIy55L1TX/2rLDq99Mw
         /z57tZ5G5NuiktN8c+3dGJ43EmQQH0x7nbrbkpOC/8sGinsSwTqs6XR3woqZP2IlabOm
         JM+g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=feedback-id:date:message-id:user-agent:cc:to:references:in-reply-to
         :from:subject:content-transfer-encoding:mime-version:dmarc-filter
         :dkim-signature:dkim-signature;
        bh=76MY/DArYKRC6Z8yPAtlBwjmW4z6M/v4NgFp8GsFgWs=;
        b=Bga5lixSqVYpGPNZ5y4y5gjqQDSf4x9PbIsLIBTO9eh9ALq3b701IvBWXMltQFiD0X
         i+Or742Y8ay1VhgSKwZje7w16aiRkPy9222XwmQN9OJlBC6OWvjEkvVl+ssDKSK9WrSA
         X6+0wzBXXAwonDlf9NBNB557dhzycfgwMtC/JLCaLZ6xmo0FpZOKh/dUJPPRwo+Cv+Zv
         cQtb+aAOYHKOCyw6SBHBQc/R50/C79l0m6Be8pvSBzaFYq3whyuk/t1S4PGNlyIQ8H1L
         A1WpP/3KZjAFVGaWI/y4jHsVfRI0z1faA29NNHlPQtLHIJZddD7HPZ8ekU709GDlfAgt
         +Klg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@codeaurora.org header.s=zsmsymrwgfyinv5wlfyidntwsjeeldzt header.b=nPciaEJN;
       dkim=pass header.i=@amazonses.com header.s=hsbnp7p3ensaochzwyq5wwmceodymuwv header.b=MRudvjid;
       spf=pass (google.com: domain of 0101017471c64501-5e9a6d5c-8097-4e44-9e2e-66a8c2e3b256-000000@us-west-2.amazonses.com designates 54.240.27.18 as permitted sender) smtp.mailfrom=0101017471c64501-5e9a6d5c-8097-4e44-9e2e-66a8c2e3b256-000000@us-west-2.amazonses.com
Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com. [54.240.27.18])
        by gmr-mx.google.com with ESMTPS id a26si180160ill.4.2020.09.09.00.30.54
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-SHA bits=128/128);
        Wed, 09 Sep 2020 00:30:54 -0700 (PDT)
Received-SPF: pass (google.com: domain of 0101017471c64501-5e9a6d5c-8097-4e44-9e2e-66a8c2e3b256-000000@us-west-2.amazonses.com designates 54.240.27.18 as permitted sender) client-ip=54.240.27.18;
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED,BAYES_00,
	MISSING_DATE,MISSING_MID,SPF_FAIL autolearn=no autolearn_force=no
	version=3.4.0
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org D53E3C433CA
Content-Type: text/plain; charset="UTF-8"
MIME-Version: 1.0
Subject: Re: [PATCH] mwifiex: remove function pointer check
From: Kalle Valo <kvalo@codeaurora.org>
In-Reply-To: <20200906200548.18053-1-trix@redhat.com>
References: <20200906200548.18053-1-trix@redhat.com>
To: trix@redhat.com
Cc: amitkarwar@gmail.com, ganapathi.bhat@nxp.com, huxinming820@gmail.com,
 davem@davemloft.net, kuba@kernel.org, natechancellor@gmail.com,
 ndesaulniers@google.com, bzhao@marvell.com, dkiran@marvell.com,
 frankh@marvell.com, linville@tuxdriver.com, linux-wireless@vger.kernel.org,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 clang-built-linux@googlegroups.com, Tom Rix <trix@redhat.com>
User-Agent: pwcli/0.1.0-git (https://github.com/kvalo/pwcli/) Python/3.5.2
Message-ID: <0101017471c64501-5e9a6d5c-8097-4e44-9e2e-66a8c2e3b256-000000@us-west-2.amazonses.com>
Date: Wed, 9 Sep 2020 07:30:53 +0000
X-SES-Outgoing: 2020.09.09-54.240.27.18
Feedback-ID: 1.us-west-2.CZuq2qbDmUIuT3qdvXlRHZZCpfZqZ4GtG9v3VKgRyF0=:AmazonSES
X-Original-Sender: kvalo@codeaurora.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@codeaurora.org header.s=zsmsymrwgfyinv5wlfyidntwsjeeldzt
 header.b=nPciaEJN;       dkim=pass header.i=@amazonses.com
 header.s=hsbnp7p3ensaochzwyq5wwmceodymuwv header.b=MRudvjid;       spf=pass
 (google.com: domain of 0101017471c64501-5e9a6d5c-8097-4e44-9e2e-66a8c2e3b256-000000@us-west-2.amazonses.com
 designates 54.240.27.18 as permitted sender) smtp.mailfrom=0101017471c64501-5e9a6d5c-8097-4e44-9e2e-66a8c2e3b256-000000@us-west-2.amazonses.com
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

trix@redhat.com wrote:

> From: Tom Rix <trix@redhat.com>
> 
> clang static analyzer reports this problem
> 
> init.c:739:8: warning: Called function pointer
>   is null (null dereference)
>         ret = adapter->if_ops.check_fw_status( ...
>               ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> 
> In mwifiex_dnld_fw, there is an earlier check for check_fw_status(),
> The check was introduced for usb support at the same time this
> check in _mwifiex_fw_dpc() was made
> 
> 	if (adapter->if_ops.dnld_fw) {
> 		ret = adapter->if_ops.dnld_fw(adapter, &fw);
> 	} else {
> 		ret = mwifiex_dnld_fw(adapter, &fw);
> 	}
> 
> And a dnld_fw function initialized as part the usb's
> mwifiex_if_ops.
> 
> The other instances of mwifiex_if_ops for pci and sdio
> both set check_fw_status.
> 
> So the first check is not needed and can be removed.
> 
> Fixes: 4daffe354366 ("mwifiex: add support for Marvell USB8797 chipset")
> Signed-off-by: Tom Rix <trix@redhat.com>
> Reviewed-by: Nathan Chancellor <natechancellor@gmail.com>

Patch applied to wireless-drivers-next.git, thanks.

eb2c6ca2db8c mwifiex: remove function pointer check

-- 
https://patchwork.kernel.org/patch/11759719/

https://wireless.wiki.kernel.org/en/developers/documentation/submittingpatches

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/0101017471c64501-5e9a6d5c-8097-4e44-9e2e-66a8c2e3b256-000000%40us-west-2.amazonses.com.
