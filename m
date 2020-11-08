Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBYMFTX6QKGQEETBKKMY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23a.google.com (mail-oi1-x23a.google.com [IPv6:2607:f8b0:4864:20::23a])
	by mail.lfdr.de (Postfix) with ESMTPS id 873BD2AA8A7
	for <lists+clang-built-linux@lfdr.de>; Sun,  8 Nov 2020 01:59:14 +0100 (CET)
Received: by mail-oi1-x23a.google.com with SMTP id 65sf2891848oii.10
        for <lists+clang-built-linux@lfdr.de>; Sat, 07 Nov 2020 16:59:14 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1604797153; cv=pass;
        d=google.com; s=arc-20160816;
        b=sVd+Y9ahsExrZ/FHggehMdHgghf5cHEnW3lmIJiZIs/lbVW3R4QHbah/K1Kppl5s2j
         lnlPcvtcBkKeXR3iYakKNV0m3HmzJQfz8rbaD1rg8hbLBkb+T5g9/dgfPIGnRn6ufIx9
         +9r4e0WU+zgv9thhORjLkRNcaYOSTHOB8qY6oPRfbfAA/zrRcOKpxrdY/NOpPjFsqAVA
         Nrey93oUvOmHrF8ZZvgSMlLpO1EKIgG28RESsQUFoUyi8ReIeYlgGAHUyme4px5S+LxW
         8gmpZH3MX3Ek3MEbJRccYtzfPV3YuFzKI/MwB4jnLq+OIpNCjGXP8jNskV7HtX9ezUYh
         bqMg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature:dkim-signature;
        bh=zdEO1XWQjlQUrOWHsYABx9ymqFwvuF8rOlacnwQjhxs=;
        b=jKA3NwjH/s3b17AhkQJw3OMxSbNksY9nBwCKMdqcGyUTbRseEL9tPQ8yJF373eZVvl
         9ozBsmp/HtpKb4WQ8lI1WaY8NhKQPhZ7kjHh/asWmL/JE8HVvOUwK96K2etHcr467XqA
         TUsP3N7Mp976SHz5+w3hGKTKNfw9aW8nIbQEM7JZre+kuHM/5H5vDSmsdzfgb3i07vUE
         4ph9nL0iAky1o5MBVCA0HTeu2kZTVXJxm4WmiV9DD7Y53ZsbRNJMYRQsUbfOykuQFYCU
         Vfa6o7QSkUHUuCfdkgRcB2m9HUI+Z2C/pY32O4YBSnCztNhQK69VjLFQOd7QrbWIdD5c
         rRYg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="I6pWa/qy";
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::842 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=zdEO1XWQjlQUrOWHsYABx9ymqFwvuF8rOlacnwQjhxs=;
        b=CPD7+NjDEOb34UvkjPA7ZguZjSGEaqZ/eyGZT2uTpsU3LjLv5AtUvObU5FJqsNV413
         /DjoloTX8cL2XT++6V84ObNvhO/x71RwQ7zwlAIWc74bqca8fwSt5KGJ/RCi/7OdwV+E
         TSgEWXmuDcngZcdl5y8i5d1ztG2p0PTh+WGmy/Tb1cm9AppiHyqEIiLmuiYdiTzy5QxX
         k/wFbGce9dTjuvRNB2LEfMtt9IJFIfYuZYZj0TLv0EaF/BHmQJ5G0CFxk+ETh07ixzQt
         sriRUNuuCQ/vSoQOyjDcft9jmtNw2YZrg0ZDmx/XKc/a9w7ccQFP6lSHc4ySjNMcszX4
         G84g==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=zdEO1XWQjlQUrOWHsYABx9ymqFwvuF8rOlacnwQjhxs=;
        b=GpizcHySOKEoRZTzHMxhimZb5444zuCDe6eIQDHjBQHO4Z3bQ5UCsl4G1iHKI2T3KV
         mvk4pXt0StKHxQUS2M7JPdQiu1L4Mq2vzmH60t0b4Kaczi8WOjNfNtRMGY4SJM4vWvlR
         z5gLfKGcT9RDbGSSt13KFr1j+zwVUw8hiA9qBKoZCyLIkH5aMjzZbjSoCZbyeInPHweM
         nJlhlW/OBUiYnX3F7VRM9kQj9yropdU8yYKUC2n6fr6bOPKt7nzbwaB0cQkuEAWPWUPo
         pZ7+4uP1vvm0LC70PJ6SsGq/Xg3UjW6pfKNhruApkvmxvjqPJ7t99s4VyVTAh40OuS2w
         gM7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=zdEO1XWQjlQUrOWHsYABx9ymqFwvuF8rOlacnwQjhxs=;
        b=T84DEyhV91B0eydFooimaEXRgrR34BO1sIPexNndgGdpI5wjyoZhg5sf02ArinIdiB
         IgNThWu4/bl7FMb7Vz7rjvjVPtNEeO0GJX0vGqWKvQ1xaRBBwPRMtc354ydtAaBnEBw4
         NKLVC5YJPNISTOzTAr9fe6YE6nT8y4tnDRIWg2paY7Tbk4vjRkT4JcN0RBKRmn0/IfFR
         ZncbYh+53xIXoengpy9YJdvNPtlEqEYclsBHNMsIMiiavAAsMGIdUMMmYcbH4PPliz29
         Nt7QooU7Z6je1huW52LFFavCDkk7ZvfV8dSGvsYGqLMVSj9IeD3KyuQxNdglmrxw22gn
         cOEQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5314EhEq+q3Qvg2sIXAPNBdQkJV2mUyWMOc0CGp+G1UiDOO1fzDv
	EI5348O8o0CL9b5Xqq7mINU=
X-Google-Smtp-Source: ABdhPJxVbX0EfQvdNAzmCPyRwXVqFzpZjcsAAxmJxh9S9EjnjVu9NXy2/Ls6p1H+YY5K3pJ8ZAi2FQ==
X-Received: by 2002:a05:6830:1347:: with SMTP id r7mr5966896otq.172.1604797153198;
        Sat, 07 Nov 2020 16:59:13 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:1917:: with SMTP id l23ls312496oii.1.gmail; Sat, 07 Nov
 2020 16:59:12 -0800 (PST)
X-Received: by 2002:aca:c6d4:: with SMTP id w203mr3392386oif.47.1604797152844;
        Sat, 07 Nov 2020 16:59:12 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1604797152; cv=none;
        d=google.com; s=arc-20160816;
        b=AeJ9WkV/VrPXRq/sm7oWDdosCkqKHyV3kecqzxpkAprPkWxhCG1POrNQwCTj7qd/zK
         U6rkZn5CapWJOZiP+qp8H8dqkEOdii6hdlBqRQZVPLO168wTuy/SrVnwFMz+iFcE5GYV
         I7tevrZGm4Up0y1iYn/GWjSsSuTDtB1ovYcK5QaBJUFPxXYfNLXMUbgbWPQPmBbXmq9z
         tipW53EVecGSt8u+HH2xjxKd4so82oPFKSNuME/sgy/SZROqL4leC9+DiQBjqeXViobN
         PGhK6LnHoahPp4hublthPmwHGpBj/iPZBhRnk9O9F4o8PhPkgmh3iNsJ03348HG482CR
         a58Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=AsoeVCmseQ5falp3iLcr/023VW5hw+9BKoCmJiBAHrM=;
        b=g6fYUVmtS8MzMLnO6Q4tNXge5mLIvmmg+HukNNMLHK7pOa1abKadEylEjJwLIzsATQ
         9WTlCCBi9mLqsFf3cBCf6YdabF0Qqb9TDnFPgE7bmZbZFFudn1PCIG9WCHe0zoQ2ZG26
         XUz08oOst6Xar3f3VE91JtSCH7W6KwHGCEbVmC+t0OZmF5C9BtEgs8cd9Vc8/uE8PuBu
         TsohdcLLLv67mRc//h/PVL3gaoVvsuP0r97xkSTE9TMyDWJ3tmIvwfpSq1JJErklyPNf
         cb3wkWpz+kvzXAiTGHTrkFt0pXbNlp0+qmUJXw0r92RsB1G1Miy9neA5YQ65ByHvyRdo
         CEjg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="I6pWa/qy";
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::842 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-qt1-x842.google.com (mail-qt1-x842.google.com. [2607:f8b0:4864:20::842])
        by gmr-mx.google.com with ESMTPS id d22si478202ooj.1.2020.11.07.16.59.12
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 07 Nov 2020 16:59:12 -0800 (PST)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::842 as permitted sender) client-ip=2607:f8b0:4864:20::842;
Received: by mail-qt1-x842.google.com with SMTP id n63so3652188qte.4
        for <clang-built-linux@googlegroups.com>; Sat, 07 Nov 2020 16:59:12 -0800 (PST)
X-Received: by 2002:ac8:5191:: with SMTP id c17mr8095758qtn.116.1604797152258;
        Sat, 07 Nov 2020 16:59:12 -0800 (PST)
Received: from ubuntu-m3-large-x86 ([2604:1380:45f1:1d00::1])
        by smtp.gmail.com with ESMTPSA id r14sm3465343qtu.25.2020.11.07.16.59.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 07 Nov 2020 16:59:11 -0800 (PST)
Date: Sat, 7 Nov 2020 17:59:10 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: "James E . J . Bottomley" <jejb@linux.ibm.com>,
	"Martin K . Petersen" <martin.petersen@oracle.com>,
	linux-scsi@vger.kernel.org, linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: Re: [PATCH] scsi: core: fix -Wformat
Message-ID: <20201108005910.GA95971@ubuntu-m3-large-x86>
References: <20201107081132.2629071-1-ndesaulniers@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20201107081132.2629071-1-ndesaulniers@google.com>
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b="I6pWa/qy";       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::842 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

On Sat, Nov 07, 2020 at 12:11:32AM -0800, Nick Desaulniers wrote:
> Clang is more aggressive about -Wformat warnings when the format flag
> specifies a type smaller than the parameter. Turns out, struct
> Scsi_Host's member can_queue is actually an int. Fixes:
> 
> warning: format specifies type 'short' but the argument has type 'int'
> [-Wformat]
> shost_rd_attr(can_queue, "%hd\n");
> ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>                           %d
> Link: https://github.com/ClangBuiltLinux/linux/issues/378
> Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>

Reviewed-by: Nathan Chancellor <natechancellor@gmail.com>

> ---
>  drivers/scsi/scsi_sysfs.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/scsi/scsi_sysfs.c b/drivers/scsi/scsi_sysfs.c
> index d6e344fa33ad..b6378c8ca783 100644
> --- a/drivers/scsi/scsi_sysfs.c
> +++ b/drivers/scsi/scsi_sysfs.c
> @@ -370,7 +370,7 @@ static DEVICE_ATTR(eh_deadline, S_IRUGO | S_IWUSR, show_shost_eh_deadline, store
>  
>  shost_rd_attr(unique_id, "%u\n");
>  shost_rd_attr(cmd_per_lun, "%hd\n");
> -shost_rd_attr(can_queue, "%hd\n");
> +shost_rd_attr(can_queue, "%d\n");
>  shost_rd_attr(sg_tablesize, "%hu\n");
>  shost_rd_attr(sg_prot_tablesize, "%hu\n");
>  shost_rd_attr(unchecked_isa_dma, "%d\n");
> -- 
> 2.29.2.222.g5d2a92d10f8-goog
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201108005910.GA95971%40ubuntu-m3-large-x86.
