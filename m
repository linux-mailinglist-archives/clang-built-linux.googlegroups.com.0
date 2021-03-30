Return-Path: <clang-built-linux+bncBCZNXZV44IJBBSHFROBQMGQEUJDDSDI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x137.google.com (mail-il1-x137.google.com [IPv6:2607:f8b0:4864:20::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 1699134E49C
	for <lists+clang-built-linux@lfdr.de>; Tue, 30 Mar 2021 11:43:38 +0200 (CEST)
Received: by mail-il1-x137.google.com with SMTP id f4sf8021869ilj.9
        for <lists+clang-built-linux@lfdr.de>; Tue, 30 Mar 2021 02:43:38 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1617097416; cv=pass;
        d=google.com; s=arc-20160816;
        b=MTfoMrNJ3yOcD7Qzlh3KFzVejIeEatN/fW+cwPvJozYjGSfv7dCiM/VNmt8BdkWusp
         gvX0z0xRszckkZABZVc/4slejY727bkkmJkdlIs3e2dldOKaA/y6CWTQO6onQFHFRpT3
         C4WKb6ZwD3LsVLkKCNp1EDoH0z2WgYrTYrjZkj8IyxNcoiZmgMEv/ElMBLz14GQVhMzJ
         iL8Y7Si/GGEgTwqf4Omi8TadkPs8Dp78U4g3BIcCe2gMCUSGMRbCN+0JnORVmAlfGeXf
         FAKPMlxDI5jWPtBdQkLK1FRHyQlyDa7OJeV+8F0f53l+Wo2bUeRrWqm4p9e9o0QNcpbg
         6A6A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :references:in-reply-to:subject:cc:to:from:sender:dkim-signature;
        bh=aiXJe6NRTfT3/7AqhaPIqjuzjTpPXXqWJV0jvOX4XBM=;
        b=mPWBEi2ItknCKmq4T1H6T6TpNF2UNRSPT8zmbI4ZZMfdJyi29UN/tXPAMzjBDoZggN
         K9039MvT786OPSP05hzXZk1/1BKcMKp479J3x8fu0i549n9T+q/d1CaW/Fjsx5PhkCzn
         gQVIBsjEpPx811B4X852C3S0EsznNMyud9RYZhfcXaM+27d+tVXDMmvZb4FlHKz4AtNn
         MjkHncwXQvNWnJIO0eWWAO2GfbH4VD/fLDwINBEVwTuTTAkRPqCyy3ALsxTYAAhogyZ7
         RvMrcIcyc1fa3hhjZ8qBL8rPBoN92N2zHgxp/Y+xA2XddQuXdBm/vDGiix8U99OWbvEo
         q5xA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=PKvrIn1c;
       spf=pass (google.com: domain of vkuznets@redhat.com designates 216.205.24.124 as permitted sender) smtp.mailfrom=vkuznets@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:in-reply-to:references:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=aiXJe6NRTfT3/7AqhaPIqjuzjTpPXXqWJV0jvOX4XBM=;
        b=Yr4sU/btP20XUrMnAW8jQiRZ60jrtGK7n0T2WtTAadWHukkbNE1ZrjWtsE2AyCgTNG
         czZHMmd4g0PXxhltjc3J+AziMUoLCtMZQjPdGUcW/g0wtmI5kUfZGf9l3ihA42UT5RJk
         ORYLHqGTGloEUaBdwyYd3vPQYILZan3vag4ex2v0Ap7E8dDV8g+y6Oo97lycXvxCI5jt
         O3G2jzeV06Od9j4U4/9aScW1sFnW66EHO2GbXWv+VoOCsfD50Csfh5gUDnzL6TH87veZ
         jK2CI43h+GEG4/f58VERdtA746yIwbvncW+HPCfTWO4cHx/k1MXNXNggUjRml+UR8/3r
         zUVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:in-reply-to:references
         :date:message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=aiXJe6NRTfT3/7AqhaPIqjuzjTpPXXqWJV0jvOX4XBM=;
        b=twYpxQt21QzDzfb9M/sD6/L4UNyfkDj0ypNDO32DDHLuDSzub62r25cOrmEcYdkQ37
         tH05yU/qHVx/c+izvhRD/rCrDqbZSYNDrzVwA7Mwvnp0ubo4p370KVFnNfyQIzLkNK/U
         9Ti2vjhpN9x5VHzmkBBgR1w0F8a2ElYcCrNwF6nZwxwiaPV0IhG+kBD0dF/rxzhEQ7Nh
         FM4e8/3HkbsJBUTX/QDh3X611njbZ43Fu2xhIenzRgMnRAll7K3WANYO6iyJARpVM0hj
         3Q5jTeGvIxwE2w3XCZCXNrsr8Cf8cEH3ReOEQYoUFv+FWBmUhAh0OmbWoXF/hlsw5pAn
         H4Ng==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532O/282YGZSHBu94wnR2h/kKI2tlMvCs5rmu/tTrtO2hkH+xTG6
	O3tKLutZ9VD2YUAaHgD1f2E=
X-Google-Smtp-Source: ABdhPJwkr6TE1cSOzDw0usQ2+R1ae6OWBYpDJX+WFM50yDok0xmEDcUd3q8bflOE2UMLRr3saCVK0g==
X-Received: by 2002:a02:294e:: with SMTP id p75mr28010115jap.34.1617097416692;
        Tue, 30 Mar 2021 02:43:36 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:907:: with SMTP id y7ls644214ilg.4.gmail; Tue, 30 Mar
 2021 02:43:36 -0700 (PDT)
X-Received: by 2002:a92:d912:: with SMTP id s18mr22256740iln.230.1617097416311;
        Tue, 30 Mar 2021 02:43:36 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617097416; cv=none;
        d=google.com; s=arc-20160816;
        b=vftc9R5RGnW3c5BxCp5NRsng5pcGjbjLvrMCEMJxshRgGeF679wxDDitWggmXrnB1m
         LjCkbNp5KtASrk3fEMawCKGl+pFI/0dZfUM9b3ZUrhF/szHarj5hUbMmR8JTbIK6zOvT
         VtFFHXcEISQX0XXUbgkPLR/kZRXSFTMEMtIvmPh1hye3zwQ5dc6ZmHcmfIx5zpTChqy+
         5NXuIDgepvHXSTIo1psxFrgX3+7VW+MpC6g+GwaLzE0DoFoD2qPhi5YL8XKxIZr0KDrw
         AE1NOdWZ3vuAok8C5pi04DclwYX7FtwGrd73+ko4dobIlQKXhW0n7EVQ80jyqHO2WAB3
         FPTw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
         :from:dkim-signature;
        bh=g6WYQfr2zYY7caL+uqTK6vngT15vqF+k7JyRicFrFTM=;
        b=agqapXI8EEgJNVH+WobF8dgLhyE3ppP2EbA8FUclHAjqQT6Zlo32n9sarjxy4yu7KT
         3bxPqHj9QJB6+6WyD/Ay0jjqzloNMRqkbfKM3aBqvrjBWhYHhOdBKXBiJCPKBoy7RMT4
         T2PJmm54MbVfNhehdPtogF4wKt+DMdKgwr6bmgXy6l11GQK4uW7HlxZXp0SNKopDjIaG
         UpZ/0GwYCvdNewkMZpnthFTyAbM6ge5vWpwd20yQwZMZ8ldho1Mf+9R1WPpaDehvLwJY
         hWp7xPg7hnQQcdQdk8iM7cxpS2FV4dD7+jlhGr5h7reWB5JyDdpHL1EGHR2DK35dOWBc
         +suA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=PKvrIn1c;
       spf=pass (google.com: domain of vkuznets@redhat.com designates 216.205.24.124 as permitted sender) smtp.mailfrom=vkuznets@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [216.205.24.124])
        by gmr-mx.google.com with ESMTPS id y4si1484986iln.3.2021.03.30.02.43.36
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 30 Mar 2021 02:43:36 -0700 (PDT)
Received-SPF: pass (google.com: domain of vkuznets@redhat.com designates 216.205.24.124 as permitted sender) client-ip=216.205.24.124;
Received: from mail-ed1-f70.google.com (mail-ed1-f70.google.com
 [209.85.208.70]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-477-EPcoZJ3FOK6pBEsDP1E5Tw-1; Tue, 30 Mar 2021 05:43:24 -0400
X-MC-Unique: EPcoZJ3FOK6pBEsDP1E5Tw-1
Received: by mail-ed1-f70.google.com with SMTP id a2so9916127edx.0
        for <clang-built-linux@googlegroups.com>; Tue, 30 Mar 2021 02:43:24 -0700 (PDT)
X-Received: by 2002:a05:6402:5113:: with SMTP id m19mr33248385edd.78.1617097403542;
        Tue, 30 Mar 2021 02:43:23 -0700 (PDT)
X-Received: by 2002:a05:6402:5113:: with SMTP id m19mr33248375edd.78.1617097403386;
        Tue, 30 Mar 2021 02:43:23 -0700 (PDT)
Received: from vitty.brq.redhat.com (g-server-2.ign.cz. [91.219.240.2])
        by smtp.gmail.com with ESMTPSA id f9sm10626380edq.43.2021.03.30.02.43.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 30 Mar 2021 02:43:22 -0700 (PDT)
From: Vitaly Kuznetsov <vkuznets@redhat.com>
To: kernel test robot <lkp@intel.com>, "Rafael J. Wysocki" <rjw@rjwysocki.net>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
 linux-acpi@vger.kernel.org, devel@acpica.org, linux-pm@vger.kernel.org
Subject: Re: [pm:bleeding-edge 47/48] drivers/acpi/processor_idle.c:548:7:
 error: implicit declaration of function 'wakeup_cpu0'
In-Reply-To: <202103300806.BOpYVHTe-lkp@intel.com>
References: <202103300806.BOpYVHTe-lkp@intel.com>
Date: Tue, 30 Mar 2021 11:43:22 +0200
Message-ID: <87sg4d9dtx.fsf@vitty.brq.redhat.com>
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: vkuznets@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=PKvrIn1c;
       spf=pass (google.com: domain of vkuznets@redhat.com designates
 216.205.24.124 as permitted sender) smtp.mailfrom=vkuznets@redhat.com;
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

kernel test robot <lkp@intel.com> writes:

> tree:   https://git.kernel.org/pub/scm/linux/kernel/git/rafael/linux-pm.git bleeding-edge
> head:   a70fdf61936ab0200d31bebea4b44bb67454ce07
> commit: 5f5e49e999acd8556e694e841d63226d21e409d9 [47/48] ACPI: processor: Fix CPU0 wakeup in acpi_idle_play_dead()
> config: x86_64-randconfig-a013-20210329 (attached as .config)
> compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project 2a28d1d3b7bf2062288b46af34e33ccc543a99fa)
> reproduce (this is a W=1 build):
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         # install x86_64 cross compiling tool for clang build
>         # apt-get install binutils-x86-64-linux-gnu
>         # https://git.kernel.org/pub/scm/linux/kernel/git/rafael/linux-pm.git/commit/?id=5f5e49e999acd8556e694e841d63226d21e409d9
>         git remote add pm https://git.kernel.org/pub/scm/linux/kernel/git/rafael/linux-pm.git
>         git fetch --no-tags pm bleeding-edge
>         git checkout 5f5e49e999acd8556e694e841d63226d21e409d9
>         # save the attached .config to linux build tree
>         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=x86_64 
>
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kernel test robot <lkp@intel.com>
>
> All errors (new ones prefixed by >>):
>
>>> drivers/acpi/processor_idle.c:548:7: error: implicit declaration of function 'wakeup_cpu0' [-Werror,-Wimplicit-function-declaration]
>                    if (wakeup_cpu0())
>                        ^

Sigh,

This one is under CONFIG_SMP in arch/x86/include/asm/smp.h

>>> drivers/acpi/processor_idle.c:549:4: error: implicit declaration of function 'start_cpu0' [-Werror,-Wimplicit-function-declaration]
>                            start_cpu0();

This one is under CONFIG_HOTPLUG_CPU0 (which obviously depends on
CONFIG_SMP)

I think we can put the whole block under #ifdef CONFIG_HOTPLUG_CPU0 as
it makes zero sense otherwise. I'll send a follow-up patch.

>                            ^
>    drivers/acpi/processor_idle.c:1103:12: warning: no previous prototype for function 'acpi_processor_ffh_lpi_probe' [-Wmissing-prototypes]
>    int __weak acpi_processor_ffh_lpi_probe(unsigned int cpu)
>               ^
>    drivers/acpi/processor_idle.c:1103:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
>    int __weak acpi_processor_ffh_lpi_probe(unsigned int cpu)
>    ^
>    static 
>    drivers/acpi/processor_idle.c:1108:12: warning: no previous prototype for function 'acpi_processor_ffh_lpi_enter' [-Wmissing-prototypes]
>    int __weak acpi_processor_ffh_lpi_enter(struct acpi_lpi_state *lpi)
>               ^
>    drivers/acpi/processor_idle.c:1108:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
>    int __weak acpi_processor_ffh_lpi_enter(struct acpi_lpi_state *lpi)
>    ^
>    static 
>    2 warnings and 2 errors generated.
>
>
> vim +/wakeup_cpu0 +548 drivers/acpi/processor_idle.c
>
>    524	
>    525	/**
>    526	 * acpi_idle_play_dead - enters an ACPI state for long-term idle (i.e. off-lining)
>    527	 * @dev: the target CPU
>    528	 * @index: the index of suggested state
>    529	 */
>    530	static int acpi_idle_play_dead(struct cpuidle_device *dev, int index)
>    531	{
>    532		struct acpi_processor_cx *cx = per_cpu(acpi_cstate[index], dev->cpu);
>    533	
>    534		ACPI_FLUSH_CPU_CACHE();
>    535	
>    536		while (1) {
>    537	
>    538			if (cx->entry_method == ACPI_CSTATE_HALT)
>    539				safe_halt();
>    540			else if (cx->entry_method == ACPI_CSTATE_SYSTEMIO) {
>    541				inb(cx->address);
>    542				wait_for_freeze();
>    543			} else
>    544				return -ENODEV;
>    545	
>    546	#ifdef CONFIG_X86
>    547			/* If NMI wants to wake up CPU0, start CPU0. */
>  > 548			if (wakeup_cpu0())
>  > 549				start_cpu0();
>    550	#endif
>    551		}
>    552	
>    553		/* Never reached */
>    554		return 0;
>    555	}
>    556	
>
> ---
> 0-DAY CI Kernel Test Service, Intel Corporation
> https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
Vitaly

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/87sg4d9dtx.fsf%40vitty.brq.redhat.com.
