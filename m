Return-Path: <clang-built-linux+bncBDRZXY4CYYORBEX26X7QKGQEVSWJUHQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3e.google.com (mail-yb1-xb3e.google.com [IPv6:2607:f8b0:4864:20::b3e])
	by mail.lfdr.de (Postfix) with ESMTPS id 33BB42F2D13
	for <lists+clang-built-linux@lfdr.de>; Tue, 12 Jan 2021 11:42:27 +0100 (CET)
Received: by mail-yb1-xb3e.google.com with SMTP id x17sf2019162ybs.12
        for <lists+clang-built-linux@lfdr.de>; Tue, 12 Jan 2021 02:42:27 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1610448146; cv=pass;
        d=google.com; s=arc-20160816;
        b=JKyeC/AOWcWTvOZks10sVzdWQl2/x/ijx8CRGyAb4k0cnT4bn16pjnvQi8G7U6Hb5A
         AoshKnLHUL686v+9B8y9uxDn3LG4q1wl8Idn121ESHVuNQyNeGRMPVR7Vdw2b1hXDQon
         4XrrX64TZ1Nfvv2PBljqP/5Bl3oNcYSlkU5B7pPOSN2J7LaS3EpSQnfwM8Gmza/cd/Vo
         oCNFQWW7s6/e4Gdik+9Q2+plKRnYlLsBFPVIFGrQW9tb2Lm7T/0+1c+24e5lyLPZ7GlR
         sJVbicETMelAo9PbChLuxOlvQlizB24pjTFZ9CNumQlYBK9SZFENkFclGB/OC+HCHYp6
         prKw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=fatz28DM9gDyvZEur66bqIVRTAzScdP/FHYTb7CbfOI=;
        b=xE5BKko3nOEH7UA4hrlzXlie9dl3Qww3CqOaU2cZ6rga77l7NgO2DPTjmQ/acEhLx8
         xhYGkQ72c53Wu9Nhg9VzKVmNSGbl/+hV23/lEYT00PbDh5R8Uh8FSFq/FBGFBpzWMGOc
         9hUfBMQMm6wQ59uUQQUWaSJRC8+oF7Biv3ACL6ueDSwYz3OMr+mk7IQOEoiBMmCujENt
         OTicRkD82yhoJy4lwlOBplHOttMOg888W+d4wlFzuKMacAdmLxr3ilbxWPobgI5nRaIk
         4JG2Qm0eSma5VKLkzwCWFvaJCfjWdYwIOGDvCylJ7BBBx1lz81yAq1kfJDVrTGCFpNED
         WDwg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=FR3lpSdN;
       spf=pass (google.com: domain of hdegoede@redhat.com designates 216.205.24.124 as permitted sender) smtp.mailfrom=hdegoede@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=fatz28DM9gDyvZEur66bqIVRTAzScdP/FHYTb7CbfOI=;
        b=X43r7bPD5nJZa8afh1mpWuZX3O37WgD1LejI+kqAl1I7hlw488jAQyho6F6BPy77Dk
         fBCEWcPKL8cAW/T8m+M/R9Ce7mwFb4hOAB1WjGUw4tegzLd5Jr0H5gcZ3SehIityWO7q
         LSS5l1S6BSUpWnqzdbV+RFKKOxDtamQCx59Kvs4L8WKJvQ9sHn/jXxmAcOIrcNYofGNN
         k7dA4I+UEw5EwMvRQgZjWcgGipfg0/A2anyk9iil9k78qQ/dKPJMdy/0NgNR2bm9Gjfi
         qCZyg2meKk6VpR7FiDxPWxpvM4dpt93/8RgFipb2qHvgN0RM5CI0CAHMRCwOlFtDzN5X
         K4UQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=fatz28DM9gDyvZEur66bqIVRTAzScdP/FHYTb7CbfOI=;
        b=WHeGIlJKmmn8eRLSKqETGiVmnKk7Cgj/JFoFvZLYzLePqrbmjlqeXpzAEHXxLQUVti
         uz9nRwo+ilk+jFQT6xQkJZgBaOr2ZvjzumP5iNANTwZuDYmsZgdqrHU9JwczW1K20q/k
         kjXBMqxOHXFTxTqYCbDuIP6FHnykui9rDDeJO7+BKlkiH8C87/yLiODCaxMlDdEkaS/q
         dEQY5ox+Fplz3XVAkg2l3bKgsVDKB7T3dhB1lqe0uiOvydQnY5zjDEFRrANP1ENM9Rev
         HActGNckjMaX3BlWDRhi8dQbyTOzfWzyPqoxxgrFupyaEGuFB+mTfINLVFl2ECk7NcHc
         LPwQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533wUkMJYR6pwhOei/6T2Qqj8x++mtUXSEqXwo5Rn4Ba1XhkgPgZ
	0ycCYp99Be3poZrqDXB8+AM=
X-Google-Smtp-Source: ABdhPJyCgF2RpnNzKgSEigB2FzIf9RKPzL9SWMCJS6NUcCWecnpHaurSrSVQ99C7x2PVeXiURhCi5g==
X-Received: by 2002:a5b:ac4:: with SMTP id a4mr6105274ybr.187.1610448146290;
        Tue, 12 Jan 2021 02:42:26 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:946:: with SMTP id u6ls1380837ybm.1.gmail; Tue, 12 Jan
 2021 02:42:25 -0800 (PST)
X-Received: by 2002:a25:5:: with SMTP id 5mr5849202yba.478.1610448145870;
        Tue, 12 Jan 2021 02:42:25 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1610448145; cv=none;
        d=google.com; s=arc-20160816;
        b=DsGAmlUQCEgDrNyuxVMFkRxnwMH/uXp8m5/EMsdZXRvEwpnRsbxjkDA/QI3AZ2c9G7
         0h64biFqeVk9dE0NSF2Z1jt7wkVdu4QKr6Si7j9cyYHqrg7QUWdcWU0n31yx7l1Bb/WY
         +s33m0N4CR9i6J7YratPJJXJoNCLkLPPgiNimNAnr1JcA7soFvWb+ScisKYh/q4OHvoJ
         AZzWlimTghyMPgEGL9pec0Ihod+ajt9vAatQU7BNvhMgTgYfgPaxkFE1GgH8nb1wKx0B
         gVb35TKJiGT60AufqJP3m1GutQxRMVwyH/E7zYKjsfH5e5rFJh8aD+h/ZheUFKJi+LSa
         Vs6A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=3oNdvQC+Ac+sooybQJvFa4jEanbWZLFkjC2sBkbCnHM=;
        b=kM2tpdL9Jz7w6StARPgmJxg9bFkrmBlun8Ec4AEaRteEEAK49z5vnFdcW3lpoYk3Fr
         SxFcVL+aMl8zxDxMTa3SHjEpMb/U23/V+ommdM9NCAt7oCh1/l4gs5MCWjdK/S504j0c
         3Kgg4iG4z6rsy6YnrUPSUNgpueetd+LgByBGhfnCHN0M+km2zeUQTOqDSPACFBxTs/Ei
         h5PuHfPI7jpE47Wkty7goYEU+TaTahaa6hm10ZZ6puv3x56SlzkpewRVcWHpeB6D4oiR
         tnxTH6cRuRqPktuMJM53EcCEBbJ6unYunkz2OgMya8azn3J4a8BKp4kReoyENqw1UCiI
         IynQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=FR3lpSdN;
       spf=pass (google.com: domain of hdegoede@redhat.com designates 216.205.24.124 as permitted sender) smtp.mailfrom=hdegoede@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [216.205.24.124])
        by gmr-mx.google.com with ESMTPS id e10si315517ybp.4.2021.01.12.02.42.25
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 12 Jan 2021 02:42:25 -0800 (PST)
Received-SPF: pass (google.com: domain of hdegoede@redhat.com designates 216.205.24.124 as permitted sender) client-ip=216.205.24.124;
Received: from mail-ej1-f71.google.com (mail-ej1-f71.google.com
 [209.85.218.71]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-381-eBfx38rFNymqXq3dLoPyoQ-1; Tue, 12 Jan 2021 05:42:12 -0500
X-MC-Unique: eBfx38rFNymqXq3dLoPyoQ-1
Received: by mail-ej1-f71.google.com with SMTP id r26so837982ejx.6
        for <clang-built-linux@googlegroups.com>; Tue, 12 Jan 2021 02:42:11 -0800 (PST)
X-Received: by 2002:a50:8b02:: with SMTP id l2mr2798207edl.322.1610448129267;
        Tue, 12 Jan 2021 02:42:09 -0800 (PST)
X-Received: by 2002:a50:8b02:: with SMTP id l2mr2798200edl.322.1610448129094;
        Tue, 12 Jan 2021 02:42:09 -0800 (PST)
Received: from x1.localdomain (2001-1c00-0c1e-bf00-37a3-353b-be90-1238.cable.dynamic.v6.ziggo.nl. [2001:1c00:c1e:bf00:37a3:353b:be90:1238])
        by smtp.gmail.com with ESMTPSA id j23sm261937ejs.112.2021.01.12.02.42.08
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 12 Jan 2021 02:42:08 -0800 (PST)
Subject: Re: [pm:bleeding-edge 20/29] drivers/acpi/platform_profile.c:67:33:
 error: passing 'const struct platform_profile_handler to parameter of type
 'struct platform_profile_handler discards qualifiers
To: kernel test robot <lkp@intel.com>, Jiaxun Yang <jiaxun.yang@flygoat.com>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
 linux-acpi@vger.kernel.org, devel@acpica.org, linux-pm@vger.kernel.org,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>
References: <202101081623.CGkLO3Kx-lkp@intel.com>
From: Hans de Goede <hdegoede@redhat.com>
Message-ID: <5e7a4d87-52ef-e487-9cc2-8e7094beaa08@redhat.com>
Date: Tue, 12 Jan 2021 11:42:07 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.4.0
MIME-Version: 1.0
In-Reply-To: <202101081623.CGkLO3Kx-lkp@intel.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
X-Original-Sender: hdegoede@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=FR3lpSdN;
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

Hi,

On 1/8/21 9:52 AM, kernel test robot wrote:
> tree:   https://git.kernel.org/pub/scm/linux/kernel/git/rafael/linux-pm.git bleeding-edge
> head:   2691096b51bae3563007c4b0188c3eec9878224b
> commit: b417d9c7404df67b9be0104585fefb2ca8d36677 [20/29] ACPI: platform-profile: Pass profile pointer to driver callbacks
> config: x86_64-randconfig-r011-20210108 (attached as .config)
> compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project 5c951623bc8965fa1e89660f2f5f4a2944e4981a)
> reproduce (this is a W=1 build):
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         # install x86_64 cross compiling tool for clang build
>         # apt-get install binutils-x86-64-linux-gnu
>         # https://git.kernel.org/pub/scm/linux/kernel/git/rafael/linux-pm.git/commit/?id=b417d9c7404df67b9be0104585fefb2ca8d36677
>         git remote add pm https://git.kernel.org/pub/scm/linux/kernel/git/rafael/linux-pm.git
>         git fetch --no-tags pm bleeding-edge
>         git checkout b417d9c7404df67b9be0104585fefb2ca8d36677
>         # save the attached .config to linux build tree
>         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=x86_64 
> 
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kernel test robot <lkp@intel.com>
> 
> All errors (new ones prefixed by >>):
> 
>>> drivers/acpi/platform_profile.c:67:33: error: passing 'const struct platform_profile_handler *' to parameter of type 'struct platform_profile_handler *' discards qualifiers [-Werror,-Wincompatible-pointer-types-discards-qualifiers]
>            err = cur_profile->profile_get(cur_profile, &profile);
>                                           ^~~~~~~~~~~
>    drivers/acpi/platform_profile.c:107:33: error: passing 'const struct platform_profile_handler *' to parameter of type 'struct platform_profile_handler *' discards qualifiers [-Werror,-Wincompatible-pointer-types-discards-qualifiers]
>            err = cur_profile->profile_set(cur_profile, i);
>                                           ^~~~~~~~~~~
>    2 errors generated.

Ugh, so that means that the current version of the
"ACPI: platform-profile: Pass profile pointer to driver callbacks"
patch is no good. Since this is causing compile errors I assume
that it will be dropped from the bleeding-edge branch.
Is that right Rafael?

I believe that the best fix is to just drop the const everywhere,
neither of the 2 planned uses has its platform_profile_handler defined
as const:

1. In the thinkpad_acpi case it is not const, because of using set_bit
calls to set the choices bits.

2. In the ideapad-laptop case it is not const because it will be
embedded in the dynamically allocated drv_data struct.

Jiaxun, can you do a new version where you drop the const (and
explain why this is done in the commit message)  ?

Regards,

Hans




> 
> 
> vim +67 drivers/acpi/platform_profile.c
> 
>     50	
>     51	static ssize_t platform_profile_show(struct device *dev,
>     52						struct device_attribute *attr,
>     53						char *buf)
>     54	{
>     55		enum platform_profile_option profile = PLATFORM_PROFILE_BALANCED;
>     56		int err;
>     57	
>     58		err = mutex_lock_interruptible(&profile_lock);
>     59		if (err)
>     60			return err;
>     61	
>     62		if (!cur_profile) {
>     63			mutex_unlock(&profile_lock);
>     64			return -ENODEV;
>     65		}
>     66	
>   > 67		err = cur_profile->profile_get(cur_profile, &profile);
>     68		mutex_unlock(&profile_lock);
>     69		if (err)
>     70			return err;
>     71	
>     72		/* Check that profile is valid index */
>     73		if (WARN_ON((profile < 0) || (profile >= ARRAY_SIZE(profile_names))))
>     74			return -EIO;
>     75	
>     76		return sysfs_emit(buf, "%s\n", profile_names[profile]);
>     77	}
>     78	
> 
> ---
> 0-DAY CI Kernel Test Service, Intel Corporation
> https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/5e7a4d87-52ef-e487-9cc2-8e7094beaa08%40redhat.com.
