Return-Path: <clang-built-linux+bncBDY3NC743AGBBHMO5XYQKGQEA7RB44Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd40.google.com (mail-io1-xd40.google.com [IPv6:2607:f8b0:4864:20::d40])
	by mail.lfdr.de (Postfix) with ESMTPS id 59698153B71
	for <lists+clang-built-linux@lfdr.de>; Wed,  5 Feb 2020 23:52:15 +0100 (CET)
Received: by mail-io1-xd40.google.com with SMTP id t12sf2577315iog.12
        for <lists+clang-built-linux@lfdr.de>; Wed, 05 Feb 2020 14:52:15 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1580943134; cv=pass;
        d=google.com; s=arc-20160816;
        b=0IhAWC7ZbQsxfyppnDvRgzNxeuIVXLbOEN4TKVZ4Wkdcq+FTBqArucxjiEz/V+4+kl
         GCtLMLgT0qet3u9NDuOsIQNA4gQWgGdsvdNw1N6DyMT+Pf2gYgMy99YuCcTV2DI1rpon
         Io/nY1KtLHmbNg8ZnFsRcCJftvGFwbyEi2UdZhXIkxxaixIzIyZLjAzIePVBpuPbaTso
         7aGdZ4TZiUOgSn/5zoRae0T92gV+CgauA4vz6GBznZGqM8lmfAh2PGTALoIK5L2mD9ph
         znaWX8ZZ+QP19jmtj+tPm7Gi2Qqad+rHZONiCVyjrt8kz6ZFv8tjYncs8HoVG9+Ktepw
         +2vA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id:sender
         :dkim-signature;
        bh=ChoJjI0JFhT56NGy7fhqdYGValkYRcpUuu9cILIReFY=;
        b=MAQ998yGDqpyy78mTmtLyDr4T09NkCGodgeaiNhoJ24Mj46OSQyJ1sLwfvSQK4EGAi
         LwfgwMm33v3vC+fOV7l6VpFl55bc83KSyWQcK2G1slvv17RQDrWYhEH8jDc7Zzs61ckY
         M89OVG888IMODIEQuUlkYkSqV22SM1YP03Sd7z5S1650GS8Gsvp4LhTQREjQtbRC8RMg
         RH/m2SbC06a2JBIoQAZ9MDvVUIUI0dBwT25kNcJwsb7rriDP2aWV7smHMCdcoemEEhqp
         yxfNiP8soRWDdonqnvfrBsoxj6JINA4LBoigHp4ZdUxGlGkBSp0hUug/CiFr0lorCUXn
         SpGQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=neutral (google.com: 216.40.44.200 is neither permitted nor denied by best guess record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:message-id:subject:from:to:cc:date:in-reply-to:references
         :user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=ChoJjI0JFhT56NGy7fhqdYGValkYRcpUuu9cILIReFY=;
        b=gSyZs5MKn2Rw0R5rgNFAGdmvY0jrG/+vH278D3hMjhWPSlxhjUBTHf26EHj7kCKy/y
         295vjqwRhZnRVujAPLqLj+yMu2iMTMqpf2zs2M8kBfRn6jrYbxTfOxEPPF7Zsatpa5yH
         C2m5VK2iK1yFBeF4inqp7utBKdiHsZzG8y5aKny6YKlijNNqWLj+/lyHkIGEC3XCLiWe
         PDK1xm7oOwlVS3nCbGoEDyDO01Ge+7CvSX059uJoyo7ACpiN1dEXljM6+8HUlAzzl3qM
         1iCYdbZoOQueM2oKRKvRDLLNclgoAVQaskfnQqqlj91Ob0/HrMoVZQD6qeVKLfz9vpoX
         nnsg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:message-id:subject:from:to:cc:date
         :in-reply-to:references:user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ChoJjI0JFhT56NGy7fhqdYGValkYRcpUuu9cILIReFY=;
        b=KDCBrFstZDxvvsBEb+Tokwkp5Gt1wiYyur3IadYiAo7KO/L1Pkuxo2pndO/ZCPjkJJ
         r+zOHqhyN0er4CzA5GJfSqDj7SMnE7yzXSTqxaVyWZNDJKlU9FiMAshtv+qUQaaD3Z2/
         9t7lVCFQ7QwW3qA7G4qmL2WD/Mdp4dxF1j7xgfDO1IuhDErqzIUq7neXkGgkn4VSQC3H
         q6KhBAhmqFXwxdEveUXgRv+KEO+qDvS3cBpj7mknFDSgiYKALsi3re7KU8ZABhSNc8hC
         3YGj3hPJTah4L8pdzCw4gc5kE1JUFvV/Va7gxXn5r0S1evvdaBP27odygAM0qjg57XGF
         jLPA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUBmNsEbLg8bTJyDTN9Bqoll5hUECDlWXxs6ZHoIKERMRFTsBDR
	aKwrpvDL/2tUO5KboKsHYBM=
X-Google-Smtp-Source: APXvYqwKYv2B+uKv5vGHE0qnxp2p9kWnwvs5NZ3AbV64DwBNixrgelGUQWGSDOZghHe1UR9zlwh8sA==
X-Received: by 2002:a6b:7b0d:: with SMTP id l13mr29405648iop.147.1580943134084;
        Wed, 05 Feb 2020 14:52:14 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:aad5:: with SMTP id p82ls970764ill.9.gmail; Wed, 05 Feb
 2020 14:52:13 -0800 (PST)
X-Received: by 2002:a92:81cf:: with SMTP id q76mr503844ilk.303.1580943133663;
        Wed, 05 Feb 2020 14:52:13 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1580943133; cv=none;
        d=google.com; s=arc-20160816;
        b=WOrddF7Aen3uppppFI0AYOgBU2TqtiBB6T51WEvP+0zXsXYJXvB2Z0EuIWNu3P+++u
         7f/srPx22OIWxTtdQkYKLJc8VF/VpEZjKNJHHuhO9q4GsuNOwDAhseEh8zZ6TpDsp2iQ
         ojHZp8xhScF+/r3LJOexdJP6cZK8sKyfpDdu6JngYk2bNIAM6vwJFSBhxEelxBOLA4Fe
         gPtMZnPax3BMcWYmCna5ujE3q5/CZRcJQHipQ1vjn/1ZyDVEgdrgdy884ESfMAZJZNtB
         Fk2c9FTSNfsa1a841JGcP4ph8TZLaQB/k0lU4kzSKgQ6g0m+Popsl7UzB1fL5B3T7v2x
         yV3Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id;
        bh=BQnWh4EYfAbivkvqSzu2uuCagvH8Q5hqZRB/OLnWvks=;
        b=mJGUBkd1mSb8WyweQxefrxNtPDIcCBxX6n6Q1OlH24tk0fDkEMcNuoprb9eLsMGWfs
         zi9K2U33a3T6PY4g1HrbAroYWKfHEqcgYDil+BJTWV2aTt+TZmcHSJQBo7dcC/8a2Y1R
         77nArq0wOWXqvU05uq9KB8pFxGKU7pkXkBbh322SU5SXhsZi8RYmf/8Y5x8LDNku0UzS
         lx7Ahb0cUCWA4cc47DwrSpHv2iO4BxQymml3tCh6Nat10YBeQ5Qu8rOhsQ8XxXh4Gs5k
         fjfmmhzZSGFjoewh0HfbZOaQA7MRwCWDOCcHirGyEB3AGRWHkhLPUKNrxpDTjz5lbz9m
         Hw/Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 216.40.44.200 is neither permitted nor denied by best guess record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
Received: from smtprelay.hostedemail.com (smtprelay0200.hostedemail.com. [216.40.44.200])
        by gmr-mx.google.com with ESMTPS id p9si72935iog.5.2020.02.05.14.52.13
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 05 Feb 2020 14:52:13 -0800 (PST)
Received-SPF: neutral (google.com: 216.40.44.200 is neither permitted nor denied by best guess record for domain of joe@perches.com) client-ip=216.40.44.200;
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net [216.40.38.60])
	by smtprelay02.hostedemail.com (Postfix) with ESMTP id C02BD3AB6;
	Wed,  5 Feb 2020 22:52:12 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Spam-Summary: 50,0,0,,d41d8cd98f00b204,joe@perches.com,:::::::::::::::::::,RULES_HIT:41:355:379:599:800:960:966:967:973:988:989:1260:1277:1311:1313:1314:1345:1359:1437:1515:1516:1518:1534:1541:1593:1594:1711:1730:1747:1777:1792:2196:2199:2393:2525:2553:2560:2563:2682:2685:2828:2859:2902:2933:2937:2939:2942:2945:2947:2951:2954:3022:3138:3139:3140:3141:3142:3352:3622:3865:3866:3867:3868:3870:3871:3934:3936:3938:3941:3944:3947:3950:3953:3956:3959:4321:4362:4385:4605:5007:7903:9025:10004:10400:10848:11026:11232:11233:11658:11914:12043:12048:12262:12297:12438:12555:12679:12740:12760:12895:12986:13069:13311:13357:13439:14096:14097:14181:14659:14721:21080:21365:21451:21611:21627:21740:21811:21939:30012:30054:30064:30091,0,RBL:none,CacheIP:none,Bayesian:0.5,0.5,0.5,Netcheck:none,DomainCache:0,MSF:not bulk,SPF:,MSBL:0,DNSBL:none,Custom_rules:0:0:0,LFtime:3,LUA_SUMMARY:none
X-HE-Tag: order36_1316b577d5b11
X-Filterd-Recvd-Size: 2066
Received: from XPS-9350.home (unknown [47.151.135.224])
	(Authenticated sender: joe@perches.com)
	by omf16.hostedemail.com (Postfix) with ESMTPA;
	Wed,  5 Feb 2020 22:52:11 +0000 (UTC)
Message-ID: <5a14078affad5e26330627d91df394da990ba301.camel@perches.com>
Subject: Re: [PATCH] drm: Add missing newline after comment
From: Joe Perches <joe@perches.com>
To: Stefan Agner <stefan@agner.ch>, maarten.lankhorst@linux.intel.com, 
 mripard@kernel.org, sean@poorly.run, airlied@linux.ie,
 daniel.vetter@ffwll.ch
Cc: airlied@redhat.com, dri-devel@lists.freedesktop.org, 
	linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com
Date: Wed, 05 Feb 2020 14:50:59 -0800
In-Reply-To: <586aab08af596120f48858005bb6784c83035d59.1580941448.git.stefan@agner.ch>
References: <586aab08af596120f48858005bb6784c83035d59.1580941448.git.stefan@agner.ch>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.34.1-2
MIME-Version: 1.0
X-Original-Sender: joe@perches.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=neutral
 (google.com: 216.40.44.200 is neither permitted nor denied by best guess
 record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
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

On Wed, 2020-02-05 at 23:26 +0100, Stefan Agner wrote:
> Clang prints a warning:
> drivers/gpu/drm/drm_lock.c:363:6: warning: misleading indentation;
> statement is not part of the previous 'if' [-Wmisleading-indentation]
>          */     mutex_lock(&dev->struct_mutex);
>                 ^
> drivers/gpu/drm/drm_lock.c:357:2: note: previous statement is here
>         if (!drm_core_check_feature(dev, DRIVER_LEGACY))
>         ^
> 
> Fix this by adding a newline after the multi-line comment.

Thanks, already in -next

commit 5b99cad6966b92f757863ff9b6688051633fde9a
Author: Dan Carpenter <dan.carpenter@oracle.com>
Date:   Wed Jan 8 08:43:12 2020 +0300

    gpu/drm: clean up white space in drm_legacy_lock_master_cleanup()
    
    We moved this code to a different file and accidentally deleted a
    newline.
    
    Signed-off-by: Dan Carpenter <dan.carpenter@oracle.com>
    Signed-off-by: Daniel Vetter <daniel.vetter@ffwll.ch>
    Link: https://patchwork.freedesktop.org/patch/msgid/20200108054312.yzlj5wmbdktejgob@kili.mountain


-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/5a14078affad5e26330627d91df394da990ba301.camel%40perches.com.
