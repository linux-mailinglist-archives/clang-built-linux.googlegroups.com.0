Return-Path: <clang-built-linux+bncBCUJ7YGL3QFBBCFMV76AKGQEFED5HTA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x438.google.com (mail-pf1-x438.google.com [IPv6:2607:f8b0:4864:20::438])
	by mail.lfdr.de (Postfix) with ESMTPS id EEF5F291610
	for <lists+clang-built-linux@lfdr.de>; Sun, 18 Oct 2020 07:43:37 +0200 (CEST)
Received: by mail-pf1-x438.google.com with SMTP id h9sf3915137pfe.10
        for <lists+clang-built-linux@lfdr.de>; Sat, 17 Oct 2020 22:43:37 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1602999816; cv=pass;
        d=google.com; s=arc-20160816;
        b=mUBrdNavzZ+yVPSLn1Nrb/Y99Dk1KeZXuR2IcjZ1EcV+eKJv5TdSgn6KL5Ll+f2wdd
         zfXlLeLGCGYDZXmJVhXDdCTqQDjAeiUFLzcUFOF1hzFvccY8t4LufvvyfiHg3hgqTxv6
         ZGav7w9bvLK2xSVc/bbJUeleD495VCN7S87+N5zdcddVez1xafbMt6X4x21+tdPr0c4m
         n45bkCpfCsnzcpMi2A1l2YlO8LCBkg7apo7Fs1LuBF/+IWhcBSqbN9p/swfDw0mNSXzg
         zNtzd7gKw823QM+oyGRmcpMytsdTkRqXsRaB4xsNnzoXHFrZjpORYhFvNwBLjQhRDbfZ
         FyFw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=Vq8nHWd8ovl77iMNZ0ZgvQfGuo8MCizA8my0QAKRWAc=;
        b=SxAkTkuDCHyw8kBn60x6z1TjbZWLI7bck8rpbUjsKt+aQDP7h7zWV6xB4LM6kEoduM
         opmemIQUQt50Eyk8DpvDhTHHD+o6bKS/5hSwWh3v5JmaJaEpshnPN41U8rdsGZK9VRqL
         VbG5k4LQMOWTj2WcSKUrBMTfDdGmRZjMx7Ey151XY2Cp7avUFelN3LqdyEf6ZrBykBAN
         /ije8HRlKOEA8RyAt+rDl/p+LK/lol1CfEpK33kY/oC/GdF7Lqb75yeEOllz8d/jg0eg
         /PzWYd8ss+ydLPY/UM67ekM1USebCFs3gDVoea4PSP4iqho2fkRpi/sboleTfAAIlhPR
         Ttdg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=w5E1+nGV;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Vq8nHWd8ovl77iMNZ0ZgvQfGuo8MCizA8my0QAKRWAc=;
        b=k8J879cgIaNkXjCjLifIgesVy33cVBOo0KjQZHvZxiMGyL9kUJ+1206WsEIUWlIyHy
         QVemVznSLbyNwphhaDjzGE0DvI7kZ9RJuqLI24XZmIMtkyw/px+vxJvtM7ygdAoNEgRh
         A3di5DGUjP82o27BdvUuJc2glm9TA9WXc81rHcVGmprXi/02wLhL7Pto9Ov+lHtogqgA
         zkTfH52UorZRB+H4X6BqBoIiF21wfKM5u7UL4XBV7vsooW2j/GISyGTYgEgO9XwbsMKV
         sCPESnqCVIlJqXokw+hD1I+0ncCcz/mCEWcUFpkx7eFG3MvjTFSeAeour3x+T6azUUJH
         aDEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=Vq8nHWd8ovl77iMNZ0ZgvQfGuo8MCizA8my0QAKRWAc=;
        b=cM6BkepcSm1YsVJsZsOR9NuRRd1ozEbP/UuQ91N0NawzErbohgPAnxXRUdqERc72R4
         qkC9QhXV6OcSWnEEWdf7pN1Y6mW1MahHHmob5AJSX3m89oGtE6uo0eGQqBw3DwSso7wd
         91Gjh7z5jISmdW3R51o7mY775mplz8O3/2RkEb0DEbRqf2KjX9i0t+8pjOQS1vGxFvlx
         PoODvDxlIZCdL4Yxm+03akB8/Lgjg3WP/QyDp095ZoQaRtYKxt2KXlmMB2UDdG+8VN1H
         roOPQw3reO3lavCF12eJppqS0o2qlwvuIYiElakujefj3m/dctozB6tQ6D0G5fIR92S7
         OZ8w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5304r3KKEWyz8KCyvYTWw77Ee3E2Ekw7bDLRp8nJgTUTb7yvGjQj
	PLjKDa6Rkz/+/D3SOUGiVmk=
X-Google-Smtp-Source: ABdhPJxogGo7N5pCSlhir5zS78wW2VuMMhUMxVJQzhcrumLGpHfXho1WGFBj9tibEkVnJNbt2Azn1g==
X-Received: by 2002:a05:6a00:d2:b029:152:5ebd:426 with SMTP id e18-20020a056a0000d2b02901525ebd0426mr11433035pfj.5.1602999816247;
        Sat, 17 Oct 2020 22:43:36 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:bc0c:: with SMTP id w12ls3358091pjr.2.gmail; Sat, 17
 Oct 2020 22:43:35 -0700 (PDT)
X-Received: by 2002:a17:90a:d80e:: with SMTP id a14mr11691215pjv.168.1602999815724;
        Sat, 17 Oct 2020 22:43:35 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1602999815; cv=none;
        d=google.com; s=arc-20160816;
        b=sda67bwqBFbMuoCUr5bLLSTkZ5zZ1SZQ6SQPI9x9lx/LpohU3afkS+SCyuwjFxiSOI
         P+3gEd66lh7bRuTc95x4v0juekXfKNV1XXYPU//raOHyrSw8JIOOm6nExqQFcKhB7Af+
         4Fq3qAzlQqNUCOJX063YqBxgqjR6wRydVOtgbRH8f7HTB2qDHjbKtcZIwQqulLc5CJGe
         LyS63bUeo/yPnMxkz7R+ZmbJEBmHnqijTD4GvdSZ7axbNZDd2y+zttLGbCkBR0Q9r1nH
         2VP8QHisGobYFieL9zYRHcRDe3UnA5RWEmIIW0BrLdjG4Ggu3tZF3nLv4EM8eGqczHw3
         0/Qg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=JurCVFtAoyh9qe5r+OuCp4/b4fTGbLU/ueayB1ZEMFQ=;
        b=E54LGsSqkrz5l3oKURYKi7q2S9L9J5u5vFrZh3yVR2XUMB8UPRxwywyJVUvAFUd5gl
         j472EcmCJsBdzrKglduLsqJcGTl3F+julBnOVuPy0SWFiAOGiLEs3G3m7ubFmv8VBKNE
         8JpxB0g4WfRwZa1n8jSYWg67GM69UenlI0H/1daUmgLfLPpIvUnLSeUwpMAbMOvYKBZF
         vbdG+PS7OY+Yhq2MgUrjxeCNy1tATYY5gxqGirnlI9vNHiG90lr0UXQfflRKA9jLe4El
         UiBlI3wQV+Oh+cjzCX3zc3+35p2AKrsVAZSmuNjLvfUEO7bFK53L2Jwh+rAiS0n/esgT
         +zkQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=w5E1+nGV;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id x1si9952pgx.3.2020.10.17.22.43.35
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 17 Oct 2020 22:43:35 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from localhost (83-86-74-64.cable.dynamic.v4.ziggo.nl [83.86.74.64])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 781412080D;
	Sun, 18 Oct 2020 05:43:34 +0000 (UTC)
Date: Sun, 18 Oct 2020 07:43:32 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: trix@redhat.com
Cc: linux-kernel@vger.kernel.org, linux-edac@vger.kernel.org,
	linux-acpi@vger.kernel.org, linux-pm@vger.kernel.org,
	xen-devel@lists.xenproject.org, linux-block@vger.kernel.org,
	openipmi-developer@lists.sourceforge.net,
	linux-crypto@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-power@fi.rohmeurope.com, linux-gpio@vger.kernel.org,
	amd-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
	nouveau@lists.freedesktop.org,
	virtualization@lists.linux-foundation.org,
	spice-devel@lists.freedesktop.org, linux-iio@vger.kernel.org,
	linux-amlogic@lists.infradead.org,
	industrypack-devel@lists.sourceforge.net,
	linux-media@vger.kernel.org, MPT-FusionLinux.pdl@broadcom.com,
	linux-scsi@vger.kernel.org, linux-mtd@lists.infradead.org,
	linux-can@vger.kernel.org, netdev@vger.kernel.org,
	intel-wired-lan@lists.osuosl.org, ath10k@lists.infradead.org,
	linux-wireless@vger.kernel.org,
	linux-stm32@st-md-mailman.stormreply.com, linux-nfc@lists.01.org,
	linux-nvdimm@lists.01.org, linux-pci@vger.kernel.org,
	linux-samsung-soc@vger.kernel.org,
	platform-driver-x86@vger.kernel.org, patches@opensource.cirrus.com,
	storagedev@microchip.com, devel@driverdev.osuosl.org,
	linux-serial@vger.kernel.org, linux-usb@vger.kernel.org,
	usb-storage@lists.one-eyed-alien.net,
	linux-watchdog@vger.kernel.org, ocfs2-devel@oss.oracle.com,
	bpf@vger.kernel.org, linux-integrity@vger.kernel.org,
	linux-security-module@vger.kernel.org, keyrings@vger.kernel.org,
	alsa-devel@alsa-project.org, clang-built-linux@googlegroups.com
Subject: Re: [RFC] treewide: cleanup unreachable breaks
Message-ID: <20201018054332.GB593954@kroah.com>
References: <20201017160928.12698-1-trix@redhat.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20201017160928.12698-1-trix@redhat.com>
X-Original-Sender: gregkh@linuxfoundation.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=w5E1+nGV;       spf=pass
 (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as
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

On Sat, Oct 17, 2020 at 09:09:28AM -0700, trix@redhat.com wrote:
> From: Tom Rix <trix@redhat.com>
> 
> This is a upcoming change to clean up a new warning treewide.
> I am wondering if the change could be one mega patch (see below) or
> normal patch per file about 100 patches or somewhere half way by collecting
> early acks.

Please break it up into one-patch-per-subsystem, like normal, and get it
merged that way.

Sending us a patch, without even a diffstat to review, isn't going to
get you very far...

thanks,

greg k-h

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201018054332.GB593954%40kroah.com.
