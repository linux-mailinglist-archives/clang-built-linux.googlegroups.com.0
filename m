Return-Path: <clang-built-linux+bncBDRZXY4CYYORB4HMUH7QKGQEBQKFHPQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23f.google.com (mail-oi1-x23f.google.com [IPv6:2607:f8b0:4864:20::23f])
	by mail.lfdr.de (Postfix) with ESMTPS id F38F52E30FD
	for <lists+clang-built-linux@lfdr.de>; Sun, 27 Dec 2020 12:56:33 +0100 (CET)
Received: by mail-oi1-x23f.google.com with SMTP id l23sf4007871oii.3
        for <lists+clang-built-linux@lfdr.de>; Sun, 27 Dec 2020 03:56:33 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1609070193; cv=pass;
        d=google.com; s=arc-20160816;
        b=Thij0z99xUFANVvkM4k8K7LNDEaW2ubzRU2UqjfpPH2+8BFEuq+oU/E6HyYJnKidxm
         bWkuE6/Drpm036YxVXOfufXPDjgGtYS/scqdiYre1IIs23b44tGkYCoN8GTvXxXZz5kS
         vAatVp50D6F0YHKBKjcS8wxvkHR2DUQLaFLKcmYzGFoIZoJiytdkOAf99Vns8lBgqrZw
         KbT+/ijU1JR149ssVzITQ/KKV7VlrYc8MTzmGIZTvbv9mypEmHRzTsx8QbhWqAHDknZ2
         BNunaBm+9YeS81X9Zmj1o+WbR6jDumK1iEND8oJ05rEN++4+cDnT67i8JfE4+n7MGRee
         5/CA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=kPlyBau/idWT+5RBhF7dW8PXxJdf2x3v4w0plE6bLfA=;
        b=fiLg3JoICjunpIWx8eG3aeW0azU32c7bNB4dcn1+DJN0oOtrSbepYca/56BDdxgbkm
         Y53MPim/NWI2fq4istSYXJSZH849p7ro/9EigyyGUrzj0MqJNeOyE5euVcZJpGa+nqpi
         EcztxkKwS7kuy9Kd5ZAiK0k6pGJnoQAw97rqGmjvv9Qrd+vlASr2d7BxWpFJHCTeb1dQ
         caE+oHjVxPs5JRlp5K1nVG8rrXWhgszw9uM27YdsCQvRuDtTLb+PvdOInhMO9sYSB30q
         pDoYYxWeoghDfGMvHosLCnw+mXgmXwML4OgYkPqnXwS6nnVU8BNXLiQegRypbTL8kQxe
         B3NA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=eMFVcR4A;
       spf=pass (google.com: domain of hdegoede@redhat.com designates 63.128.21.124 as permitted sender) smtp.mailfrom=hdegoede@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=kPlyBau/idWT+5RBhF7dW8PXxJdf2x3v4w0plE6bLfA=;
        b=ngH6qn1pLshAQoJKFwzofC6ciu6hBfOxbKQC6qdnAzqLu33uY60EOcuXD29TAwvQzj
         zYU0o7k3cSo1IUzGFgtVf7mKoOnwksp8bjofVoEvauE4zaHs/OpWLi7fo7QEcop0bC8M
         zY9VkuGJrZc9fegjLbJUeljjsknVIySKbivvCDyySajNVvSBgeW92EDXLX5sJJovjIGm
         lmpJRnN1lK/irNYVpLs5JBrD105TkblXQwhEENpCfsflcQ/xcP3IebRyocfIv1KpSEIt
         4ZmPGEcKcrZVU7r/+zuN4NJUvebR5Baey2oq0YNat8Ap8ErY4JmIwZwselv0a81sIBNB
         xVqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=kPlyBau/idWT+5RBhF7dW8PXxJdf2x3v4w0plE6bLfA=;
        b=avuxYCHYGo0FNuWXUSkvsxDaQJSKDqwJPCWx4h8cz/L96EHJ/XFpB8MwE1rGqa/GKi
         l4hRoxPqbaFNL1Vzfa63eOMpDCYy4/3YBXpfEiP7tAlYXJE2ltusRQoAXDTbueB3aimW
         pD3VXdL0YGbpOZyFQH/FkLnpA6B6XCDMHWEj9+qd6SgaNR7bOMO2ide4EgdX/YbaQKEi
         8xGhj9dZ+GPiIyhxaiAcYQe/PmYMp5Marq22ToiHkYcspnifZvkXzN0fSHIN3NSgmfYH
         Q8yOqfbNGNhSDi8cTX0lHUo2Dj2Z+IZni4ONXXw19U5MibhaPtfzUHdocrb6EPvt1spn
         uRuw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533WoXmS2IiU7tS+ucI4K93Y1SAEKruv2SWrKx4lXPWWQJOFLqJT
	INTEJTYUaBF1iCWLw0t4XxU=
X-Google-Smtp-Source: ABdhPJxt/WV2/4CtyOkc6vwWN5HYjwyBWDH6vIPf3D3u1/m11DZU63OQM74A+KtdQCABuuTXudzeAQ==
X-Received: by 2002:a05:6830:30a8:: with SMTP id g8mr29072278ots.291.1609070192975;
        Sun, 27 Dec 2020 03:56:32 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a54:4694:: with SMTP id k20ls6240850oic.0.gmail; Sun, 27 Dec
 2020 03:56:32 -0800 (PST)
X-Received: by 2002:a05:6808:8e4:: with SMTP id d4mr9198743oic.160.1609070192583;
        Sun, 27 Dec 2020 03:56:32 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1609070192; cv=none;
        d=google.com; s=arc-20160816;
        b=d+bOFwhsyvluKMUgyhxsa15+DCgFheP5LtVK9lCl3hD2T1XeUwEtFZtGG2b2q97PTN
         APJx4CpzxD1TH7Nze7mm134h+EV+prk0yI3miCR+wMS0mQgNmL/uXEwMhs8Qgy4XhZgi
         ZeahobMeA+2CuKsODuW6lUvMfC35SjXtsUHKD3yYAYRejO+O2fvmKYmXgvbIW4qdm1dz
         +pHDdRezbI0D6SjM9vQktTPN/ThEFDOArjaHCKHxBQhpRY4q0rP+dbfmZXoqY/hjBkSq
         l9Wz94C0JkKC2+f2D72xfBLKidoMrmqx4iMF0iu3XLYjssje0opyFzcb+bd4Nkq8Mdrb
         KsWQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=9ys+IfJQ4jaDgELByvREU1Pf0LqPPJ8r6KX3wnASlGk=;
        b=tnfJ3DRKBinWP/QNhTdpXzb18gx113lsTUKonCEipPwuw+mBFb8O8QNOjBNioRdb8V
         mUxgkYkM9pT1G8w6ekg5bWFGh3Gn+qcob0NUdQENyhVMbF0kemd1ViWE26CJqqNUlf1X
         wA7k374V072GzY1hvRBpf8kZIPxL5+W1DLpUh2BVW/pnjdW/LHVR/VEyN9lisWKDr+4C
         qOejjQzRt+EphKGF5YiK5IlekomZ6OPy4HACrFFQjdCMFpXVHt7PpgNERS4PABsESBYj
         Co6gqrONqkzAAeNuvBz2TzDYJffyzoMpdNgXFhXpYP+onvCe5NidwJj81Qjq/25LURyh
         mp2A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=eMFVcR4A;
       spf=pass (google.com: domain of hdegoede@redhat.com designates 63.128.21.124 as permitted sender) smtp.mailfrom=hdegoede@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [63.128.21.124])
        by gmr-mx.google.com with ESMTPS id u2si3225569otg.1.2020.12.27.03.56.32
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 27 Dec 2020 03:56:32 -0800 (PST)
Received-SPF: pass (google.com: domain of hdegoede@redhat.com designates 63.128.21.124 as permitted sender) client-ip=63.128.21.124;
Received: from mail-ej1-f69.google.com (mail-ej1-f69.google.com
 [209.85.218.69]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-368-GYGMOaCiMiuYggrSYHgehg-1; Sun, 27 Dec 2020 06:56:25 -0500
X-MC-Unique: GYGMOaCiMiuYggrSYHgehg-1
Received: by mail-ej1-f69.google.com with SMTP id gs3so3364495ejb.5
        for <clang-built-linux@googlegroups.com>; Sun, 27 Dec 2020 03:56:25 -0800 (PST)
X-Received: by 2002:a17:906:710b:: with SMTP id x11mr39696671ejj.433.1609070183311;
        Sun, 27 Dec 2020 03:56:23 -0800 (PST)
X-Received: by 2002:a17:906:710b:: with SMTP id x11mr39696662ejj.433.1609070183123;
        Sun, 27 Dec 2020 03:56:23 -0800 (PST)
Received: from x1.localdomain (2001-1c00-0c0c-fe00-d2ea-f29d-118b-24dc.cable.dynamic.v6.ziggo.nl. [2001:1c00:c0c:fe00:d2ea:f29d:118b:24dc])
        by smtp.gmail.com with ESMTPSA id w17sm34409942edu.90.2020.12.27.03.56.22
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 27 Dec 2020 03:56:22 -0800 (PST)
Subject: Re: [pm:bleeding-edge 8612/8615]
 drivers/acpi/platform_profile.c:147:24: warning: address of array
 'pprof->choices' will always evaluate to 'true'
To: kernel test robot <lkp@intel.com>, Mark Pearson <markpearson@lenovo.com>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
 linux-acpi@vger.kernel.org, devel@acpica.org, linux-pm@vger.kernel.org,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>
References: <202012271352.JvNDF17O-lkp@intel.com>
From: Hans de Goede <hdegoede@redhat.com>
Message-ID: <34a43212-ff2b-cbc6-a670-975d39ac9f12@redhat.com>
Date: Sun, 27 Dec 2020 12:56:21 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.4.0
MIME-Version: 1.0
In-Reply-To: <202012271352.JvNDF17O-lkp@intel.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
X-Original-Sender: hdegoede@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=eMFVcR4A;
       spf=pass (google.com: domain of hdegoede@redhat.com designates
 63.128.21.124 as permitted sender) smtp.mailfrom=hdegoede@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
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

Hi,

On 12/27/20 6:11 AM, kernel test robot wrote:
> tree:   https://git.kernel.org/pub/scm/linux/kernel/git/rafael/linux-pm.git bleeding-edge
> head:   a33520709645543f108361fe21fa9434a351c4e9
> commit: 8c9b909fb1282e43792433e6c1cba125ccfc6201 [8612/8615] ACPI: platform-profile: Add platform profile support
> config: x86_64-randconfig-a015-20201221 (attached as .config)
> compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project cee1e7d14f4628d6174b33640d502bff3b54ae45)
> reproduce (this is a W=1 build):
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         # install x86_64 cross compiling tool for clang build
>         # apt-get install binutils-x86-64-linux-gnu
>         # https://git.kernel.org/pub/scm/linux/kernel/git/rafael/linux-pm.git/commit/?id=8c9b909fb1282e43792433e6c1cba125ccfc6201
>         git remote add pm https://git.kernel.org/pub/scm/linux/kernel/git/rafael/linux-pm.git
>         git fetch --no-tags pm bleeding-edge
>         git checkout 8c9b909fb1282e43792433e6c1cba125ccfc6201
>         # save the attached .config to linux build tree
>         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=x86_64 
> 
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kernel test robot <lkp@intel.com>
> 
> All warnings (new ones prefixed by >>):
> 
>>> drivers/acpi/platform_profile.c:147:24: warning: address of array 'pprof->choices' will always evaluate to 'true' [-Wpointer-bool-conversion]
>            if (!pprof || !pprof->choices || !pprof->profile_set ||
>                          ~~~~~~~~^~~~~~~
>    1 warning generated.


Ah, this is caused by changing choices from a single long to:

	unsigned long choices[BITS_TO_LONGS(PLATFORM_PROFILE_LAST)];

So that we can use for_each_set_bit and are future proof for more then
32 profiles.

To fix this the check should be changed into this (untested):

#include <linux/bitmap.h>

	if (!pprof || bitmap_empty(pprof->choices, PLATFORM_PROFILE_LAST) ||
	    !pprof->profile_set || !pprof->profile_get) {
		mutex_unlock(&profile_lock);
		return -EINVAL;
	}

Mark can you provide a (tested) patch for this?

Regards,

Hans








> 
> 
> vim +147 drivers/acpi/platform_profile.c
> 
>    134	
>    135	int platform_profile_register(const struct platform_profile_handler *pprof)
>    136	{
>    137		int err;
>    138	
>    139		mutex_lock(&profile_lock);
>    140		/* We can only have one active profile */
>    141		if (cur_profile) {
>    142			mutex_unlock(&profile_lock);
>    143			return -EEXIST;
>    144		}
>    145	
>    146		/* Sanity check the profile handler field are set */
>  > 147		if (!pprof || !pprof->choices || !pprof->profile_set ||
>    148				!pprof->profile_get) {
>    149			mutex_unlock(&profile_lock);
>    150			return -EINVAL;
>    151		}
>    152	
>    153		err = sysfs_create_group(acpi_kobj, &platform_profile_group);
>    154		if (err) {
>    155			mutex_unlock(&profile_lock);
>    156			return err;
>    157		}
>    158	
>    159		cur_profile = pprof;
>    160		mutex_unlock(&profile_lock);
>    161		return 0;
>    162	}
>    163	EXPORT_SYMBOL_GPL(platform_profile_register);
>    164	
> 
> ---
> 0-DAY CI Kernel Test Service, Intel Corporation
> https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/34a43212-ff2b-cbc6-a670-975d39ac9f12%40redhat.com.
