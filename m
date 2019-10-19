Return-Path: <clang-built-linux+bncBCPLJUXI24IRBVEDVPWQKGQEKX676MQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x438.google.com (mail-wr1-x438.google.com [IPv6:2a00:1450:4864:20::438])
	by mail.lfdr.de (Postfix) with ESMTPS id D0346DD72E
	for <lists+clang-built-linux@lfdr.de>; Sat, 19 Oct 2019 09:57:08 +0200 (CEST)
Received: by mail-wr1-x438.google.com with SMTP id c6sf3856795wrp.3
        for <lists+clang-built-linux@lfdr.de>; Sat, 19 Oct 2019 00:57:08 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1571471828; cv=pass;
        d=google.com; s=arc-20160816;
        b=aSAqBwJfHzR+XYB7B4IgS+vEr2WuD18/acmHo0jW9NDXzYFRnrghfvSJpYXjQ9nFuQ
         WSwDl0GUxfWBiA776ZMTxHsm+fbuURXGmebg0O+amOybDvQUFJN9Z/2jmYWCJnw9vuD4
         i9qH6GEq716xlvY1pKhoAu7qMTZshz73mZk2Ad9J+0bMl9JcM6Wi291jf1YulrkvaaQC
         jGoLUt2SNcN2GvxNLa3pRs4MFA18MEqrVaMlwKK123z43pM7kUYrGWYltHLK4jBEep2l
         uNse//pYOuhj+KZzC8rLA7jpdFKFQVZRLZay33gVrT1fy+dE6UJLx45lkpHd5Ji3eB+e
         eJtg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:to:references:message-id:cc:date
         :in-reply-to:from:subject:mime-version:sender:dkim-signature;
        bh=AQz+8k5H5FKtCyBZJ+Ovy/OvH1HfAtlCd3ljEV6lupA=;
        b=IFsUdiBl3Ht8JhA5d68cnCORHPWfNiU5XTWkXdsIso9RGD586SRonUadooz/tJguqg
         3eDMgNWte7jMW5LQ+DIGNcJQRrslhPWVjmmXt/uAkCsU0IO0hNYCsF5etsHKMVX4vJEB
         Lm+hm2JI/093e+lZXihkJNsSwFnPIug82HKIe5UwyhgqDs85QRIoPn0TKHbu74pQyc0s
         QBQKGb0J14cfXgOzIDunsT2eWNhT+ZFlyO8wiq6L5j+syy5rHPpYaRQNLk8DCWL/QJFP
         RFV87EqfQhr1p6VORvP6vaDecmLeADNoznJcT5cVRaFW1/ETCpO1CenZNmlXrgApNeB9
         mTDQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of marcel@holtmann.org designates 212.227.132.17 as permitted sender) smtp.mailfrom=marcel@holtmann.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:subject:from:in-reply-to:date:cc:message-id
         :references:to:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=AQz+8k5H5FKtCyBZJ+Ovy/OvH1HfAtlCd3ljEV6lupA=;
        b=YtyjNXuuH4Rjv/895ozk5bi4G8akVZv2GGV+M4t3cDxj5oU8fL9M8Zf/niSSiHb8Lb
         40KiLv9J4mgi9oTlb0HcnxOfhW7q93NsZhIBRVeNkfaI4wLh3uCAbVVa+yZZkjF7M5Lq
         nFpNW1sjKoojnojlgDjem1TM2LY98ChKmwYbWp+hfHepRaC5zYzfbxtRftuFR4x64eK4
         J3evJmbKT4p8M8R7k0Gg3Q8PXWsbH7ajicx7IGUR4ytKqqX0W6k649z0TmQPX0mcoWUV
         jSDW1y53uZC+c5uh7VOsn5GvBHxHFy728KxF4Sv8Tj8uMFUoq+sYqm29I7anaXd/ghS+
         c9Vw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:subject:from:in-reply-to
         :date:cc:message-id:references:to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=AQz+8k5H5FKtCyBZJ+Ovy/OvH1HfAtlCd3ljEV6lupA=;
        b=pY8OvtSOHdzNHxSOOIL+PVSyVLSGserclZz96z2KWYink/nd2cN+rcydYzjFvy7MED
         V1bKhLGSxnkst4cWxiJYb6U6hO/8+hotDfYYEfviMnvmo8tbNlsrq82ZO1FISRHjWuRA
         uRzDfuyKAeMB4YY/Ig9nyOdXM2zGSoKnP+wT8WleW3s6F/6nFgBW+4/YVSoVG46SyJew
         99DyroVY6mXicfBkmh4MY1WUfhv/MlSQgL0X2WuTNAqub3B5uJkHAlXIg/HFdDSOW/Uy
         uqKk+vN8RTQ3RSlBdDN80CI1m3bP0KXQiSpVgSY9yNnZXDEBsGU495hqEF9U/dw38feA
         FyDQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUCIjpNSqrrLAwA+nptEBxC5wCEljTJNwVM9zaDuUAu4k1g9Pvi
	Bt8EJtbOMnNVtpZqOg/JRKU=
X-Google-Smtp-Source: APXvYqwUaKbn7GI/mNDL88nJ/hmlxC5ExE0eW6wl2rWnmmtYpQFuoArCIHt59hGZ0V9hyOOxluWZqg==
X-Received: by 2002:a5d:4701:: with SMTP id y1mr11695276wrq.385.1571471828425;
        Sat, 19 Oct 2019 00:57:08 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a7b:c7c1:: with SMTP id z1ls2602986wmk.2.gmail; Sat, 19 Oct
 2019 00:57:08 -0700 (PDT)
X-Received: by 2002:a05:600c:2503:: with SMTP id d3mr11506818wma.44.1571471828000;
        Sat, 19 Oct 2019 00:57:08 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1571471827; cv=none;
        d=google.com; s=arc-20160816;
        b=JQ+HuncKN25+HQTHJEKXpe/Y95LEL3GpOvn5aXWn2I3EaNiuDIoSwnkkDRP1Hur40q
         FlOilHda662Vt595hzuLUskxSW6F0o0YmkaWGfIEAS+TYVFRubS8733Y9oE2hvILpZz+
         6QolLKWzxO4d7o6IT26oMp9phT8TWs5Hc1BSz5or+MaaMLFmDrsa4ifXukO3WI2VGjFr
         D+v3PyAeasF0azuyil9bHXAv4xks/Kndq6Y1ocK9v0GzZd3JSuSnl7vdjfYf8OFYWruW
         DI+81NlYOCHrGCCY38L6vdRHJFQAiRpxsc/3XWE+cYZ9HF+cFiynf1wbLh/9zqIErmym
         Z+AA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:references:message-id:content-transfer-encoding:cc:date
         :in-reply-to:from:subject:mime-version;
        bh=0kL2oF6TRfewUAbK7TLd9vHyASjV66BpBWePUrgc51U=;
        b=lCvouCqFTpUmW5te+mxdSN+HQX2qUEYu53oXvYbtFq/liEOoqJ7UpfnCSWzW+RLkhS
         ax3Fv4NNBioyj5H3oSTwFDWyzRUOB9zfgv3+ZrxMhq0Uz1KFg1cJZdhunUFhQ54m+xHH
         81VoTJs4aJ/ZhTs3sORq9P8qCl7tVDBYFRvCKXj+xHDrNXgJbaJY1NETo9zL9GR+9fHL
         6sDY4j+OFIZ5d3B7Njapq11ZOFEr0Kjk5gJGNfauZ9GFyeofTpEqYm7+EUzMc5tVoJRI
         uPp7Y8L984HNEb8gFWKC7ejD37zYPXpHTmC7thnZouPqEJo7jomAvpo6b8IQ3pOOqT8C
         gPPg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of marcel@holtmann.org designates 212.227.132.17 as permitted sender) smtp.mailfrom=marcel@holtmann.org
Received: from mail.holtmann.org (coyote.holtmann.net. [212.227.132.17])
        by gmr-mx.google.com with ESMTP id l23si42587wmg.2.2019.10.19.00.57.07
        for <clang-built-linux@googlegroups.com>;
        Sat, 19 Oct 2019 00:57:07 -0700 (PDT)
Received-SPF: pass (google.com: domain of marcel@holtmann.org designates 212.227.132.17 as permitted sender) client-ip=212.227.132.17;
Received: from surfer-172-29-2-69-hotspot.internet-for-guests.com (p2E5701B0.dip0.t-ipconnect.de [46.87.1.176])
	by mail.holtmann.org (Postfix) with ESMTPSA id F3E01CED04;
	Sat, 19 Oct 2019 10:06:05 +0200 (CEST)
Content-Type: text/plain; charset="UTF-8"
Mime-Version: 1.0 (Mac OS X Mail 13.0 \(3594.4.19\))
Subject: Re: [PATCH -next] Bluetooth: btusb: Remove return statement in
 btintel_reset_to_bootloader
From: Marcel Holtmann <marcel@holtmann.org>
In-Reply-To: <20191018222924.49256-1-natechancellor@gmail.com>
Date: Sat, 19 Oct 2019 09:57:06 +0200
Cc: Johan Hedberg <johan.hedberg@gmail.com>,
 Amit K Bag <amit.k.bag@intel.com>,
 Chethan T N <chethan.tumkur.narayan@intel.com>,
 Raghuram Hegde <raghuram.hegde@intel.com>,
 linux-bluetooth@vger.kernel.org,
 linux-kernel@vger.kernel.org,
 clang-built-linux@googlegroups.com,
 Stephen Rothwell <sfr@canb.auug.org.au>
Message-Id: <859945F9-E674-4906-A18D-BCA6027AA535@holtmann.org>
References: <20191018111343.5a34ee33@canb.auug.org.au>
 <20191018222924.49256-1-natechancellor@gmail.com>
To: Nathan Chancellor <natechancellor@gmail.com>
X-Mailer: Apple Mail (2.3594.4.19)
X-Original-Sender: marcel@holtmann.org
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of marcel@holtmann.org designates 212.227.132.17 as
 permitted sender) smtp.mailfrom=marcel@holtmann.org
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

Hi Nathan,

> When building with Clang and CONFIG_BT_INTEL unset, the following error
> occurs:
> 
> In file included from drivers/bluetooth/hci_ldisc.c:34:
> drivers/bluetooth/btintel.h:188:2: error: void function
> 'btintel_reset_to_bootloader' should not return a value [-Wreturn-type]
>        return -EOPNOTSUPP;
>        ^      ~~~~~~~~~~~
> 1 error generated.
> 
> Remove the unneeded return statement to fix this.
> 
> Fixes: b9a2562f4918 ("Bluetooth: btusb: Trigger Intel FW download error recovery")
> Link: https://github.com/ClangBuiltLinux/linux/issues/743
> Reported-by: <ci_notify@linaro.org>
> Reported-by: Stephen Rothwell <sfr@canb.auug.org.au>
> Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
> ---
> drivers/bluetooth/btintel.h | 1 -
> 1 file changed, 1 deletion(-)

patch has been applied to bluetooth-next tree.

Regards

Marcel

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/859945F9-E674-4906-A18D-BCA6027AA535%40holtmann.org.
