Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBEO3ZT6QKGQECVO2KUQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43e.google.com (mail-pf1-x43e.google.com [IPv6:2607:f8b0:4864:20::43e])
	by mail.lfdr.de (Postfix) with ESMTPS id A806F2B566F
	for <lists+clang-built-linux@lfdr.de>; Tue, 17 Nov 2020 02:55:30 +0100 (CET)
Received: by mail-pf1-x43e.google.com with SMTP id r6sf13582319pfg.4
        for <lists+clang-built-linux@lfdr.de>; Mon, 16 Nov 2020 17:55:30 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1605578129; cv=pass;
        d=google.com; s=arc-20160816;
        b=ziYrvjgt6RcSa3XJV9vdrBUCofJl+QjtSHvUP6FIVE5zh7O6Q6Kd/rQwLzem0yhD6+
         MQ2WHbtBKE3mGa2W3BKj5mcgqBQKU+zSgaDF54K7x7tRSJJP5QilAWE/7PRyYB+rjm3d
         2YD+fzbaFkrCWHf2KKJe4qqhcmUxbA/VsZ4mNxZymo5EeHbqBhVy/VrvRoKnbhyr7bmg
         oOMT41P4gMPH0scCF2eqv8Y50rkzOSDdp+b8RPt/w9NVq1O6YX2z/5ZP8qi6E1tHcWQo
         fUQof9YhuAwqIK46pWCA+L8Tbuq+c30eHyLME89aUyPMu2ppoOTACTTBMg9pjmMALamc
         swRw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature:dkim-signature;
        bh=yGsK5D4C/TClTL4PWbeCTcDOI8NQ/yozVYYHT92bfT0=;
        b=PFpgjmpfXXrKjRKa1bJal0gcIm2RgTpdMm8l52S6luBdGGDaCgpfjCGJsI2e1bZu6U
         bFdS/uHlEGukLwb2DvSfrqPovjWKMXQC8pxTRMlZjP2eS/OqKuEpzgp6UZD7WCvusf6P
         MCcylQ4fuitSja4uCWdsBq5YGFAcLluE6eBNaxDhNiGpf1FWQEPO+OOR8B+OuV+BP5Cz
         VoEJOyn/tfD5C2gE+nteRfh8+jjPFO+tB74b/HRpNdh7KNSBiWLc6dMxEsPycOYlm0iM
         zOME6E9bj1bzORJR9bljcbGsMRi7201dSYa2jrHYz5nNFyIQT+jwnCkuLD1T23CpxVAe
         cKbA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=aqmrosfB;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::742 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=yGsK5D4C/TClTL4PWbeCTcDOI8NQ/yozVYYHT92bfT0=;
        b=cicHRgjHXrj1LJnfBjNoE0SaguDRqLqqk7mxgQaKfmPZxi1xliAOVVpBy6XBpNaZi2
         yeMOHyoHgkO6kJs8pEGzob+r0VuxGyjNHPQk7lnEt9iM42s8X+vmtbjvRM6t2fqEcsrs
         6TuTD5bynloVpwkccIypYH3rdJ5c9ZHtTJ6ft2B1tjPlJ76WWOi6oOJidZNxR4rKn4Qs
         bs5FPz3n8jeBOndhbCD3Bh8pefsWD7pOjmcZwhKQ92QKFW6STPjnAIoa24dS9Ity5QCl
         0T4so5cylEovsWU6+nl6wVXBSMbwvnO7uMev7gq2hNqMMt47KNzfDF2vOWL1U7VbE7XF
         nhxg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=yGsK5D4C/TClTL4PWbeCTcDOI8NQ/yozVYYHT92bfT0=;
        b=j8EgiirdDbrnJvnjyfPhQHEtAJgMCEQg/WKUuAqWRdotO0VjcYKIDzMkdzZofZXp/x
         0IQYjIdKb2CCWeShIYTE4h30avGEYl5GsHfYASSs3m2jFOBt4/fvVKf8xLAtreNQi263
         Z2R/2bbrebrcNA6oH+FTuQn/KmHb1vts9k3b6gXixGEuMg82y2DkP2C7EebfK7k79zro
         3XdGxGAVJGEl4x5N39wOHGfuHolfXWibDtX3oKypuwNJWhbIeYHsaBAD3KvMNgptuGZ1
         i/8eJbFau4S5+jwutXCdNNHHdYEi19R7uFHd3XXY99WnjqrggdW0P+ZkuuzrbcTiJwAJ
         SMcQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=yGsK5D4C/TClTL4PWbeCTcDOI8NQ/yozVYYHT92bfT0=;
        b=A16rAdrvoQSV231tttsssEkzedeGIaFqhh7wkACClAUb33rEiFBvLE/9kow1O+WynQ
         RmADuOihOqbH+iSmmjt/ToKIm3TvymBNoaXJEpCD8023kTaEQxVsQI5CMTyP8unyQSI3
         IkX7GMMU6onRey+yhBKnfmc4sS2zxR8RUc48bkZbTvK63emCgj2ulc3AI/d97i96oAdL
         c9i/15ibM/6BPbRDJvpUygSWUK0oPOPLi29zmxITdENZanR4woRzUaWE8xImEMOS7g3X
         OmMS2rQc90S2YEzt+1B8wa+KIGhDr/H1cxOKxDqZa2NCPpr1fx72rtfZ857i+uR1vUlS
         yTEA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5309Ds8YBblebIeLdhpmHX/KZy6KbOl2yzn77p0NKDCOGnXvnFnP
	bVeWMF/xlh6dT2y9BQqxryo=
X-Google-Smtp-Source: ABdhPJxLtKVwTl2WCJA+qFQKgswJ9S5UPkQ2aRlkpPZGPbyLxWMGQuVw06c3IEvBXKie206jJxDcgQ==
X-Received: by 2002:a62:804d:0:b029:18b:9bf:2979 with SMTP id j74-20020a62804d0000b029018b09bf2979mr16152511pfd.11.1605578129408;
        Mon, 16 Nov 2020 17:55:29 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:7d6:: with SMTP id 205ls5283779pgh.8.gmail; Mon, 16 Nov
 2020 17:55:28 -0800 (PST)
X-Received: by 2002:a63:6246:: with SMTP id w67mr1706940pgb.239.1605578128840;
        Mon, 16 Nov 2020 17:55:28 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1605578128; cv=none;
        d=google.com; s=arc-20160816;
        b=V2tSc13O7Yi7OXGHSlLkOT9XHuiZIxa8L/Y2XSwZIoT6i4/diJo91hhfcSoKdXVH5O
         X0WMIVD/3ozL39Oh+5iTmsQihYhogk1AYjt9CZjMsDLJIXeLTs3I23wQRLqX1DZXZO6U
         De6CJb2453jOrtf+XHRlBBFqGdtMH6nW4CzFkGhmXM+i1qo2uWZuuPfqWs2HdizgTOqe
         mzYePneU/Zs9dowwxEHKM/zsTjIBMrmiYtmip2W5fYe+E1HT1BrFNCTN6sF0B9TCzyGB
         +N4JWPlX92nwd7o8co5ibfqEMuFRlOvgIiUFVICOQPGRYyrPjXoiCGfKM9koL7MjgcZE
         02kg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=KEPcv8NsHyY9jn1p7ctfrHalxftbHgtxAgS6+iU39QQ=;
        b=SKRkWEXCCtv3qzbqZJaaaVUVDtfdEcWBu1LVsYPAJSQ0vNTusRJN9mrOoZ2ZTzTcjZ
         Tc9l7OqYHB8/VzOfHPKTf07WawoG4IeLdLuA5dv/wWtxdGI3taoDJtmH2gmZmyD6SoD8
         8yziL5BuGER8L1eT8/zKEk6cC5U7+nhmIFSE2Mtucl9uvLFnsCPfsrk2aYg3DPoF/2ib
         LRz1GAAdIgGJuk9iKGo/ViIe3TFP3UD4qGilKAJWY/MokcLqlBpD1WyY2UjJesXQkaU6
         7Ox+QHpnuMUNR5aIggx+Ps13oaXQbzB8HANZdTNRFXd4bZ9TyLFLAi1GuomUIDWSQ3gL
         wGdA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=aqmrosfB;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::742 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-qk1-x742.google.com (mail-qk1-x742.google.com. [2607:f8b0:4864:20::742])
        by gmr-mx.google.com with ESMTPS id h11si168312plr.1.2020.11.16.17.55.28
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 16 Nov 2020 17:55:28 -0800 (PST)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::742 as permitted sender) client-ip=2607:f8b0:4864:20::742;
Received: by mail-qk1-x742.google.com with SMTP id v143so19111643qkb.2
        for <clang-built-linux@googlegroups.com>; Mon, 16 Nov 2020 17:55:28 -0800 (PST)
X-Received: by 2002:ae9:ea14:: with SMTP id f20mr17234195qkg.239.1605578128013;
        Mon, 16 Nov 2020 17:55:28 -0800 (PST)
Received: from ubuntu-m3-large-x86 ([2604:1380:45f1:1d00::1])
        by smtp.gmail.com with ESMTPSA id c6sm3401553qkg.54.2020.11.16.17.55.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 16 Nov 2020 17:55:27 -0800 (PST)
Date: Mon, 16 Nov 2020 18:55:25 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Lukas Bulwahn <lukas.bulwahn@gmail.com>
Cc: Christoph Hellwig <hch@lst.de>, Hannes Reinecke <hare@suse.de>,
	"Martin K . Petersen" <martin.petersen@oracle.com>,
	"James E . J . Bottomley" <jejb@linux.ibm.com>,
	linux-scsi@vger.kernel.org, Arnd Bergmann <arnd@arndb.de>,
	Tom Rix <trix@redhat.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux@googlegroups.com, kernel-janitors@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH] scsi: sd: remove obsolete variable in sd_remove()
Message-ID: <20201117015525.GA801777@ubuntu-m3-large-x86>
References: <20201116070035.11870-1-lukas.bulwahn@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20201116070035.11870-1-lukas.bulwahn@gmail.com>
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=aqmrosfB;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::742 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

On Mon, Nov 16, 2020 at 08:00:35AM +0100, Lukas Bulwahn wrote:
> Commit 140ea3bbf39a ("sd: use __register_blkdev to avoid a modprobe for an
> unregistered dev_t") removed blk_register_region(devt, ...) in sd_remove()
> and since then, devt is unused in sd_remove().
> 
> Hence, make W=1 warns:
> 
>   drivers/scsi/sd.c:3516:8:
>       warning: variable 'devt' set but not used [-Wunused-but-set-variable]
> 
> Simply remove this obsolete variable.
> 
> Signed-off-by: Lukas Bulwahn <lukas.bulwahn@gmail.com>

Reviewed-by: Nathan Chancellor <natechancellor@gmail.com>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201117015525.GA801777%40ubuntu-m3-large-x86.
