Return-Path: <clang-built-linux+bncBCUJ7YGL3QFBBWGEZCGQMGQEJXKRBRA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x33f.google.com (mail-wm1-x33f.google.com [IPv6:2a00:1450:4864:20::33f])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FF2746EB68
	for <lists+clang-built-linux@lfdr.de>; Thu,  9 Dec 2021 16:35:53 +0100 (CET)
Received: by mail-wm1-x33f.google.com with SMTP id 187-20020a1c02c4000000b003335872db8dsf3321814wmc.2
        for <lists+clang-built-linux@lfdr.de>; Thu, 09 Dec 2021 07:35:53 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1639064153; cv=pass;
        d=google.com; s=arc-20160816;
        b=WVrZ1OfLygZ+t6FCPN3uEB7TFyjC4/hxpAe/jFxIOO9SBCTS8D2d7a3so2KONokVkC
         rAj8bmNxs6OtulXteSVcx0uQEEgiWZSnhmSAhud2WW1gfjIo5SaTLhC6OqIAwC/yNtgZ
         Pobtj1cdxqrGdGUgRh4FFl7LT43iGDnjai7JFfDzxVxnyrFU1V3ORSC4QsdRB0AoPjGL
         AzQpPN2VgEUKv4zPgnzM58eF+kzpeFmR5lMijU7Mb6PaN4oMKNerKkAbpxIbCU7p+DZn
         vw4cS/AGZO632bdjVPN7u8pTvrrsADJGgjs/o4A5XlvYcpza/WZs9A8K9dbkvh2f+r+z
         zDvg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=+G9p+z5ifBLkx+rkxFy0RqTRKHOWFbpptdtSg7MPAPk=;
        b=UyXC4z8aIpTTSbQGBnXrVAcdyeyYOQjc/KWhvdSINk9kJp8pAJHkDH68FEgFI41nHV
         L62tiCo5IrgeTJDVWzsf+NW/U+SsZtMXvdZPKeEJvwejT5+oSHDBMhH47AZ5B/0JJ+Mv
         AugAeQwuOvXfpf+1fU5+3w+8B04FTsoCfmUufNejAG6VtmWQXgz++KemKxbN4CWVMC6K
         HS8t+q/ncdN6fbyHj/GBxhptFmVRqoaAk/bM9bcNXAe6zCWG88EKm2AwEWLSjiqQ1H1l
         VU2zmtXQXvs37k6/u2JdY/vJEBLZ2pao4BME437tHB/cyq/mm2UtA40FCWbinOcisMz8
         mNbw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=QpwvVAao;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 145.40.68.75 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=+G9p+z5ifBLkx+rkxFy0RqTRKHOWFbpptdtSg7MPAPk=;
        b=QpKJXwCjDYSaRhLGDcBqumWyox8FbQluMvFDvmcWsclEN4rZEt3UmN+oUTHafHr8gT
         QRNHY+RLaUiBFccxK7mjWorQ8AqZ9b3w3Mcq+NRpIsCQWbHtdvOZdMSY3wLcOVZap5iB
         O4/yeztp133r7eqQ5VHo4O0DaVSAp8J9lJzq2FHHJ/wg0mAVS35/XyXkVsEMsfDkBa2F
         9zFqMAffUQxwxu5YkMOhmvp/psaj0hl3/xeurappyBpZaP3n/2RLqbXceayGm3cwK9tA
         fwIktGpubW5zFlFegxnLQxPSXcAoSkXtOHSUSkeGo4iH335Ozdx2pTQCBHAlPbcAguV7
         eh0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=+G9p+z5ifBLkx+rkxFy0RqTRKHOWFbpptdtSg7MPAPk=;
        b=HFzJ3gAoEPSHXaJTYobTNuxiuN2vSNOtX3EozK2iv5B9l/x9ehVfbAxQhmH1zLi7o4
         5NMFBe41FyDmxJ4WDj6fs4zQTbA1eIdBV6Ybwu4XwcVXSozeSjnRFur3NhkCkF215amP
         nd/Euadc8IKLRGg2HExbu4HIeGzDCxegiEaSca8Y+VIafHi+v5LbT+3j5jb6GTT40dHv
         1m/aToxMzifHy+RQAl+ls32cvRkR6Il0uxn1sXxMwk8+CBKHXW3Jp6h9SqLhAJjgm/ZH
         lbHEBiTNOY1KBeYKwKrDDBAdL4ic2xIo2aTnm0paK7BLkTEnGEcH1QZ6tB9M03D0o421
         9q/A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5337zZ0RTIrQoDmF4IK/NTHF7BA0Eed8etrfGQrylX0zQ+q/8pkH
	mP18tqPRu4tentDP20fFSgQ=
X-Google-Smtp-Source: ABdhPJyAGXh43PrrHdTlzm+iBDJf3AVTLMLGZ7CaS0pVIYW1MmU4NIGj+hOHYG6RbZBT+7vwj7n8PQ==
X-Received: by 2002:a5d:4904:: with SMTP id x4mr7339510wrq.139.1639064152849;
        Thu, 09 Dec 2021 07:35:52 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5d:4092:: with SMTP id o18ls725215wrp.1.gmail; Thu, 09 Dec
 2021 07:35:52 -0800 (PST)
X-Received: by 2002:a5d:668f:: with SMTP id l15mr7279357wru.182.1639064151990;
        Thu, 09 Dec 2021 07:35:51 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1639064151; cv=none;
        d=google.com; s=arc-20160816;
        b=JZLcpZpwCvuah0UMBL2c95DCZ24Y38O51iqIu3DR5B+xiEJO5aBGLhZlDtxWlGAPTQ
         QsjzJxc0jbJzCC/MdGh7ZhGpgHBj0HEg8YaRIVG0/6P71tsTJVHcQS3wj9xMxzwMlWUe
         cbpK9h7KQQIHFJW1RdhSSzd5AL4o6xiGKyD3UAiZGmmOB6EI/H/vD/31PcHPatO0gUVH
         +g4SXiIsdHrqineXajZDyuusoK/JRWQA48QEipa6iNNTTBfsp3FzVyM5+cIhm4s6H1OB
         XuKw5BeatvZtIycefNBrc244oKzfubjIE6TDJ4K/jxYcKJOtIDVpSNvGvkHsW/nyVSwx
         Fn5Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=dj5x1iV23hKhga0DPpYRWyq61K9Vkf/CLRALNNJweuE=;
        b=k8dvDEz3bxkMbTyG4TzV2Skhe8CCIjMmYhgM0F2nGZ1PO51CLCw+NN+Fje13R/Vd6k
         rrW4+OiYR76QMc4sAtFC8w99ZcUNdUxWoaL/X24V99fnyT4DyholwHslJ9y12wRbBG73
         jpW9y+Lk3Xi04lSaMWlA6w0LlShwKTubuXndqf/uhhSFtgswXgguFQmgM4SIvr3GZQgx
         g0qg19KNwOJmm3L9Nbphoo9Y79gHjd7EObxnrvW6StHJmhZgpJ0P5UYTU+CowZQ0TrGj
         GO4uOY5AyGgDguRV9+6RXxuc4497+Izbm2htJmphjIn9Izp+oWC4yBsUjQaPC95f38LW
         BvSQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=QpwvVAao;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 145.40.68.75 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Received: from ams.source.kernel.org (ams.source.kernel.org. [145.40.68.75])
        by gmr-mx.google.com with ESMTPS id p5si7629wru.1.2021.12.09.07.35.51
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 09 Dec 2021 07:35:51 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 145.40.68.75 as permitted sender) client-ip=145.40.68.75;
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id 7E44EB82524;
	Thu,  9 Dec 2021 15:35:51 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A88B3C341C7;
	Thu,  9 Dec 2021 15:35:50 +0000 (UTC)
Date: Thu, 9 Dec 2021 16:35:48 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Mark-PK Tsai <mark-pk.tsai@mediatek.com>
Cc: luca.stefani.ge1@gmail.com, akpm@linux-foundation.org, anton@tuxera.com,
	clang-built-linux@googlegroups.com, linux-kernel@vger.kernel.org,
	linux-ntfs-dev@lists.sourceforge.net, michalechner92@googlemail.com,
	stable@vger.kernel.org, yj.chiang@mediatek.com
Subject: Re: [PATCH v2] ntfs: Fix ntfs_test_inode and ntfs_init_locked_inode
 function type
Message-ID: <YbIiVL404/Px0gXl@kroah.com>
References: <20200718112513.533800-1-luca.stefani.ge1@gmail.com>
 <20211209143839.31021-1-mark-pk.tsai@mediatek.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20211209143839.31021-1-mark-pk.tsai@mediatek.com>
X-Original-Sender: gregkh@linuxfoundation.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linuxfoundation.org header.s=korg header.b=QpwvVAao;       spf=pass
 (google.com: domain of gregkh@linuxfoundation.org designates 145.40.68.75 as
 permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
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

On Thu, Dec 09, 2021 at 10:38:39PM +0800, Mark-PK Tsai wrote:
> > Clang's Control Flow Integrity (CFI) is a security mechanism that can
> > help prevent JOP chains, deployed extensively in downstream kernels
> > used in Android.
> > 
> > It's deployment is hindered by mismatches in function signatures.  For
> > this case, we make callbacks match their intended function signature,
> > and cast parameters within them rather than casting the callback when
> > passed as a parameter.
> > 
> > When running `mount -t ntfs ...` we observe the following trace:
> > 
> > Call trace:
> > __cfi_check_fail+0x1c/0x24
> > name_to_dev_t+0x0/0x404
> > iget5_locked+0x594/0x5e8
> > ntfs_fill_super+0xbfc/0x43ec
> > mount_bdev+0x30c/0x3cc
> > ntfs_mount+0x18/0x24
> > mount_fs+0x1b0/0x380
> > vfs_kern_mount+0x90/0x398
> > do_mount+0x5d8/0x1a10
> > SyS_mount+0x108/0x144
> > el0_svc_naked+0x34/0x38
> > 
> > Signed-off-by: Luca Stefani <luca.stefani.ge1@gmail.com>
> > Tested-by: freak07 <michalechner92@googlemail.com>
> > Acked-by: Anton Altaparmakov <anton@tuxera.com>
> > ---
> >  fs/ntfs/dir.c   |  2 +-
> >  fs/ntfs/inode.c | 27 ++++++++++++++-------------
> >  fs/ntfs/inode.h |  4 +---
> >  fs/ntfs/mft.c   |  4 ++--
> >  4 files changed, 18 insertions(+), 19 deletions(-)
> > 
> 
> Hi,
> 
> I think stable tree should pick this change.
> 
> Below is the mainline commit.
> 
> (1146f7e2dc15 ntfs: fix ntfs_test_inode and ntfs_init_locked_inode function type)
> 
> 5.4 stable have the same issue when CFI is enabled.

Now queued up, thanks.

greg k-h

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/YbIiVL404/Px0gXl%40kroah.com.
