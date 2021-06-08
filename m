Return-Path: <clang-built-linux+bncBDRZXY4CYYORBFGY7SCQMGQEEIVE2TA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x1040.google.com (mail-pj1-x1040.google.com [IPv6:2607:f8b0:4864:20::1040])
	by mail.lfdr.de (Postfix) with ESMTPS id B809439F10C
	for <lists+clang-built-linux@lfdr.de>; Tue,  8 Jun 2021 10:36:37 +0200 (CEST)
Received: by mail-pj1-x1040.google.com with SMTP id jw3-20020a17090b4643b029016606f04954sf1751303pjb.9
        for <lists+clang-built-linux@lfdr.de>; Tue, 08 Jun 2021 01:36:37 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1623141396; cv=pass;
        d=google.com; s=arc-20160816;
        b=ZBOibCjl/rP1uPjuxTVXaZ5/W+U+r5vinFzQy4NlfOBCKvkBv+RM5BVHPy1lmhliFq
         FJhmtfimrI/R3q+hDH01ZOdfpqKvR0GZ3ozPAI58VER2IaqX9gGS9zZUcXiBvfg3EThf
         ZWYEfktxjJ1Bjo9bxxRf9SWFnQGux4K8yML+et3tGAj/YgZ/ZW6jzt3O/gMVcVDDpfLN
         S+efL7mz3RclDHq5lIuDbuiZhZSbL5zhtz9hyZ0ZbzOza165BRZUNCv9/KULgCJ5lifg
         +2oVPDbJKJQgybaeg2bKZTh8NYr5Sabey9gGWF0eWifVFxYVWBAlvTcGPR0j8X6iy0u4
         vC3A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=E9MdxjnAXLv8A12JOm+VYFXeaL+t7uP1IFebAXdoolo=;
        b=T8GKrjtnc5gqVZthP93LJYdUXmyYIfEVDIk4Ov9wQKsWrICr4hJQ/4FO/4nzh676x6
         adQLOmHBqQcsdq4lnshLpkWyt6Wqg1YipfU/J3XFmlRQ+78cusW63BE4d63VXKf0AcBr
         +DeNqfIfmY62F3yUoZde/XntDyxC8wbIaz512CmHFDKW6C3WkbxdCy7R8MNvGLtSdrgx
         4SfoQsMDNg2AyedxDgV8ruihDWTmYINHAetuva0osQUH1Z8WpSwFJpWMJKwenkVnshza
         UNnegJhdh9TkS3jaaR40g54s0GlWTqLWLuc1S/fkIrU5y4R8gwDvRustCKLcekRks/1x
         xzTg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=c8Nca9th;
       spf=pass (google.com: domain of hdegoede@redhat.com designates 216.205.24.124 as permitted sender) smtp.mailfrom=hdegoede@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=E9MdxjnAXLv8A12JOm+VYFXeaL+t7uP1IFebAXdoolo=;
        b=BeXTkHU4FDOotBwijh5c3kF1oHH/8MITlbjC59+iZg+LgvNmTTeEXFsZsqEcyK4IoH
         w+OwYpDSh8ogc+j0oUJLcZ6vJLbDQLiIMDxPzA+K4DS8iBnd7ADh6KsxFLughwWszwr+
         cZFfhUhzM7Ih7pbG4WefTKGG27eVdHZ/GjkIZUh1y1qb5omGbVPPaKggi3/ziY6nwnsX
         QT/Ry0V52vkcE9cdRWmauB6zY4Z7obDmNOFJekpq5Jy1rl8xXJ28goHhq371rkvLGXr/
         8l0E7/At8y3d5vnboEVacVTd5AKmJsM9QAV3GgxWLUC/pxLjIsK/JUKffliLOIuvtaVk
         uAhw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=E9MdxjnAXLv8A12JOm+VYFXeaL+t7uP1IFebAXdoolo=;
        b=moR+X60XO5Fyof69XhDHkH0zNgbJhqdxNC+mAbJmNkGAUWSf3FsMUBsYc1rgIKkUfl
         c0kje0xm4Q4PIcmWAF+038GKdN0AmckmWCFACvCfDWA3J7PI6m84B04LmruUYCNiWwPZ
         4hX86C3mB+IYsgIrgV1i01VLX7ouCRx2sj2brFN09KVVc+TKCEhJwnPO+mvqxSeTH06L
         K0NAWIK09DW1AKtcp90agcwcEkrkf9SZQ2QD3hNFRkzhIMduGmlYKDV7wyU9zbFxKF5D
         h7a/f2AkXgRfmnjSFeH7eCVQ/VIzsYn3PLMNKoKLHRxcuCdHPwGAboYFAjEfgqovT8EY
         d5rw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531lqxZ42MGCGOsYjRaw3jHNMmvCQGp8WsV1pOzfoqIsXAlj3JbN
	JOlrLO9DFNa5GuWVLsvFdgM=
X-Google-Smtp-Source: ABdhPJzIAxekxraX+DqeVt8rjjMhI+IzASqyIi6mOeC/HcV2VFRs6wCe0LaPAMspwL78dIXYUlZ6ug==
X-Received: by 2002:a17:90a:1441:: with SMTP id j59mr3586328pja.152.1623141396389;
        Tue, 08 Jun 2021 01:36:36 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:903:20d4:: with SMTP id i20ls10040322plb.8.gmail; Tue,
 08 Jun 2021 01:36:35 -0700 (PDT)
X-Received: by 2002:a17:90b:1203:: with SMTP id gl3mr2808768pjb.145.1623141395803;
        Tue, 08 Jun 2021 01:36:35 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1623141395; cv=none;
        d=google.com; s=arc-20160816;
        b=z8X+VZwVKmgmCVgYRL64Y+pOpO9zhCv6xecOREynoF+G5tV/oAWsNCf/5RUHKBKgR8
         UWjF8A70XT1gSdRGhnTSEmrh01kbOQBjPe5ENZtmI6R9/i6uAa1wVnyheVMv0/ay4ANV
         aWOdz/VlTELbf0y8h/m1rNU46RG5/vyeaB1IXXe7OAwB80By6vviGRVcc+Q31Y+itJkl
         ymX6tHUl/uF4HeWOWqnFkQZhomCI5TAXk2Mat/W2zigFHqTj96/3dGpiTkYE2rGDQM4D
         xX0VSAg5KfciculrRg8JUacAblMtyCM+1ZD+u95HVkc3K6WHfcoG5Dtlfx31O+1lETMa
         bCwg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=5Eh2tbzQy0I6sGObsp+EH5kZsIqpt+v1Z/Z8bPq4YTw=;
        b=kRovkTDXfb3wImD1qrIVCM+WijXfV0+uJKDyJ5tMoZFJPLNlpdCXV3uKFLGDuZ34d3
         lPraqUhMomL04MFyPWm1m6S7yOMc+p4dWo+6vsF3ZpLtZ19QhFR6/ASOlfn1Lc/mTF8Q
         Ci1+wDc+wLGgguuxwmqSM3u4eWmCjfSB7Ous3lOdJ5q4dPXMtElsvJj2px1jmkK1qPQa
         JqYCd0xfuiYQFeozbhqI8fNum6Ihn6QpqI5f03+6pN3lSp7HMgQqa0GoXR5Zh32/zaSc
         T1k5HBqdiNNSCb8M22pTo7wZwjcMBJUS3pusjgTHoLOYXgaT1eWZFCiDGE1ggRKdAVtF
         G73w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=c8Nca9th;
       spf=pass (google.com: domain of hdegoede@redhat.com designates 216.205.24.124 as permitted sender) smtp.mailfrom=hdegoede@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [216.205.24.124])
        by gmr-mx.google.com with ESMTPS id ob7si1260393pjb.1.2021.06.08.01.36.35
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 08 Jun 2021 01:36:35 -0700 (PDT)
Received-SPF: pass (google.com: domain of hdegoede@redhat.com designates 216.205.24.124 as permitted sender) client-ip=216.205.24.124;
Received: from mail-ej1-f72.google.com (mail-ej1-f72.google.com
 [209.85.218.72]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-195-WTekbdNpM2WoSCN0BLRN9A-1; Tue, 08 Jun 2021 04:36:30 -0400
X-MC-Unique: WTekbdNpM2WoSCN0BLRN9A-1
Received: by mail-ej1-f72.google.com with SMTP id jy19-20020a1709077633b02903eb7acdb38cso6425627ejc.14
        for <clang-built-linux@googlegroups.com>; Tue, 08 Jun 2021 01:36:29 -0700 (PDT)
X-Received: by 2002:a17:906:2459:: with SMTP id a25mr21706695ejb.306.1623141388693;
        Tue, 08 Jun 2021 01:36:28 -0700 (PDT)
X-Received: by 2002:a17:906:2459:: with SMTP id a25mr21706683ejb.306.1623141388509;
        Tue, 08 Jun 2021 01:36:28 -0700 (PDT)
Received: from x1.localdomain (2001-1c00-0c1e-bf00-1054-9d19-e0f0-8214.cable.dynamic.v6.ziggo.nl. [2001:1c00:c1e:bf00:1054:9d19:e0f0:8214])
        by smtp.gmail.com with ESMTPSA id cz14sm8599951edb.84.2021.06.08.01.36.28
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 08 Jun 2021 01:36:28 -0700 (PDT)
Subject: Re: drivers/platform/x86/dell/dell-smbios-smm.c:27:35: warning:
 unused variable 'dell_device_table'
To: kernel test robot <lkp@intel.com>,
 Mario Limonciello <mario.limonciello@outlook.com>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
 linux-kernel@vger.kernel.org
References: <202106080633.CrTbLIPD-lkp@intel.com>
From: Hans de Goede <hdegoede@redhat.com>
Message-ID: <e706a5d6-fabb-4506-1192-d8b40d1c2cf2@redhat.com>
Date: Tue, 8 Jun 2021 10:36:27 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.1
MIME-Version: 1.0
In-Reply-To: <202106080633.CrTbLIPD-lkp@intel.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
X-Original-Sender: hdegoede@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=c8Nca9th;
       spf=pass (google.com: domain of hdegoede@redhat.com designates
 216.205.24.124 as permitted sender) smtp.mailfrom=hdegoede@redhat.com;
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

<replaced Mario's old Dell email address which one which works>

Hi all,

On 6/8/21 12:41 AM, kernel test robot wrote:
> Hi Mario,
> 
> FYI, the error/warning still remains.
> 
> tree:   https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git master
> head:   614124bea77e452aa6df7a8714e8bc820b489922
> commit: f1e1ea516721d1ea0b21327ff9e6cb2c2bb86e28 platform/x86: Move all dell drivers to their own subdirectory
> date:   4 months ago
> config: x86_64-randconfig-r023-20210608 (attached as .config)
> compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project ae973380c5f6be77ce395022be40350942260be9)
> reproduce (this is a W=1 build):
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         # install x86_64 cross compiling tool for clang build
>         # apt-get install binutils-x86-64-linux-gnu
>         # https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=f1e1ea516721d1ea0b21327ff9e6cb2c2bb86e28
>         git remote add linus https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git
>         git fetch --no-tags linus master
>         git checkout f1e1ea516721d1ea0b21327ff9e6cb2c2bb86e28
>         # save the attached .config to linux build tree
>         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=x86_64 
> 
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kernel test robot <lkp@intel.com>
> 
> All warnings (new ones prefixed by >>):
> 
>>> drivers/platform/x86/dell/dell-smbios-smm.c:27:35: warning: unused variable 'dell_device_table' [-Wunused-const-variable]
>    static const struct dmi_system_id dell_device_table[] __initconst = {
>                                      ^
>    1 warning generated.
> 
> 
> vim +/dell_device_table +27 drivers/platform/x86/dell/dell-smbios-smm.c
> 
> 549b4930f05765 drivers/platform/x86/dell-smbios-smm.c Mario Limonciello 2017-11-01  26  
> 549b4930f05765 drivers/platform/x86/dell-smbios-smm.c Mario Limonciello 2017-11-01 @27  static const struct dmi_system_id dell_device_table[] __initconst = {
> 549b4930f05765 drivers/platform/x86/dell-smbios-smm.c Mario Limonciello 2017-11-01  28  	{
> 549b4930f05765 drivers/platform/x86/dell-smbios-smm.c Mario Limonciello 2017-11-01  29  		.ident = "Dell laptop",
> 549b4930f05765 drivers/platform/x86/dell-smbios-smm.c Mario Limonciello 2017-11-01  30  		.matches = {
> 549b4930f05765 drivers/platform/x86/dell-smbios-smm.c Mario Limonciello 2017-11-01  31  			DMI_MATCH(DMI_SYS_VENDOR, "Dell Inc."),
> 549b4930f05765 drivers/platform/x86/dell-smbios-smm.c Mario Limonciello 2017-11-01  32  			DMI_MATCH(DMI_CHASSIS_TYPE, "8"),
> 549b4930f05765 drivers/platform/x86/dell-smbios-smm.c Mario Limonciello 2017-11-01  33  		},
> 549b4930f05765 drivers/platform/x86/dell-smbios-smm.c Mario Limonciello 2017-11-01  34  	},
> 549b4930f05765 drivers/platform/x86/dell-smbios-smm.c Mario Limonciello 2017-11-01  35  	{
> 549b4930f05765 drivers/platform/x86/dell-smbios-smm.c Mario Limonciello 2017-11-01  36  		.matches = {
> 549b4930f05765 drivers/platform/x86/dell-smbios-smm.c Mario Limonciello 2017-11-01  37  			DMI_MATCH(DMI_SYS_VENDOR, "Dell Inc."),
> 549b4930f05765 drivers/platform/x86/dell-smbios-smm.c Mario Limonciello 2017-11-01  38  			DMI_MATCH(DMI_CHASSIS_TYPE, "9"), /*Laptop*/
> 549b4930f05765 drivers/platform/x86/dell-smbios-smm.c Mario Limonciello 2017-11-01  39  		},
> 549b4930f05765 drivers/platform/x86/dell-smbios-smm.c Mario Limonciello 2017-11-01  40  	},
> 549b4930f05765 drivers/platform/x86/dell-smbios-smm.c Mario Limonciello 2017-11-01  41  	{
> 549b4930f05765 drivers/platform/x86/dell-smbios-smm.c Mario Limonciello 2017-11-01  42  		.matches = {
> 549b4930f05765 drivers/platform/x86/dell-smbios-smm.c Mario Limonciello 2017-11-01  43  			DMI_MATCH(DMI_SYS_VENDOR, "Dell Inc."),
> 549b4930f05765 drivers/platform/x86/dell-smbios-smm.c Mario Limonciello 2017-11-01  44  			DMI_MATCH(DMI_CHASSIS_TYPE, "10"), /*Notebook*/
> 549b4930f05765 drivers/platform/x86/dell-smbios-smm.c Mario Limonciello 2017-11-01  45  		},
> 549b4930f05765 drivers/platform/x86/dell-smbios-smm.c Mario Limonciello 2017-11-01  46  	},
> 549b4930f05765 drivers/platform/x86/dell-smbios-smm.c Mario Limonciello 2017-11-01  47  	{
> 549b4930f05765 drivers/platform/x86/dell-smbios-smm.c Mario Limonciello 2017-11-01  48  		.ident = "Dell Computer Corporation",
> 549b4930f05765 drivers/platform/x86/dell-smbios-smm.c Mario Limonciello 2017-11-01  49  		.matches = {
> 549b4930f05765 drivers/platform/x86/dell-smbios-smm.c Mario Limonciello 2017-11-01  50  			DMI_MATCH(DMI_SYS_VENDOR, "Dell Computer Corporation"),
> 549b4930f05765 drivers/platform/x86/dell-smbios-smm.c Mario Limonciello 2017-11-01  51  			DMI_MATCH(DMI_CHASSIS_TYPE, "8"),
> 549b4930f05765 drivers/platform/x86/dell-smbios-smm.c Mario Limonciello 2017-11-01  52  		},
> 549b4930f05765 drivers/platform/x86/dell-smbios-smm.c Mario Limonciello 2017-11-01  53  	},
> 549b4930f05765 drivers/platform/x86/dell-smbios-smm.c Mario Limonciello 2017-11-01  54  	{ }
> 549b4930f05765 drivers/platform/x86/dell-smbios-smm.c Mario Limonciello 2017-11-01  55  };
> 549b4930f05765 drivers/platform/x86/dell-smbios-smm.c Mario Limonciello 2017-11-01  56  MODULE_DEVICE_TABLE(dmi, dell_device_table);

Note the MODULE_DEVICE_TABLE() here; and I checked and CONFIG_DMI=y in the config used
here as expected, so this seems like a false-positive warnings, with that said I was
still a bit surprised about the presence of this table since dell-smbios is depended
on by dell-laptop and that has this same table + same extra entries for chassis-type
30, 31 and 32.

Since dell-laptop will already auto-load based on the DMI table in there (which also is
more complete) and since dell-laptop will then bring in the dell-smbios module, the only
scenario I can think of where this DMI table inside dell-smbios-smm.c is useful is if
users have the dell-laptop module disabled and they want to use the sysfs interface
offered by dell-smbios-smm.c. But that seems such a corner case that I believe it
would be fair to tell users to do a modprobe themselves in this case ?

This would allow removing the dupplicate table from dell-smbios-smm.c, which would be
a good thing, because as the differences between the 2 copies which have accumulated
over time show, having the same table in 2 places seems like a bad idea.

Mario, even though you are no longer at Dell, I would still very much appreciate your
thoughts on this.

Regards,

Hans



> 549b4930f05765 drivers/platform/x86/dell-smbios-smm.c Mario Limonciello 2017-11-01  57  
> 
> :::::: The code at line 27 was first introduced by commit
> :::::: 549b4930f057658dc50d8010e66219233119a4d8 platform/x86: dell-smbios: Introduce dispatcher for SMM calls
> 
> :::::: TO: Mario Limonciello <mario.limonciello@dell.com>
> :::::: CC: Darren Hart (VMware) <dvhart@infradead.org>
> 
> ---
> 0-DAY CI Kernel Test Service, Intel Corporation
> https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/e706a5d6-fabb-4506-1192-d8b40d1c2cf2%40redhat.com.
