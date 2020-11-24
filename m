Return-Path: <clang-built-linux+bncBD26TVH6RINBBLH46L6QKGQEBHZ4MGA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x638.google.com (mail-pl1-x638.google.com [IPv6:2607:f8b0:4864:20::638])
	by mail.lfdr.de (Postfix) with ESMTPS id C57342C1F54
	for <lists+clang-built-linux@lfdr.de>; Tue, 24 Nov 2020 09:02:53 +0100 (CET)
Received: by mail-pl1-x638.google.com with SMTP id j12sf13155745plj.20
        for <lists+clang-built-linux@lfdr.de>; Tue, 24 Nov 2020 00:02:53 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1606204972; cv=pass;
        d=google.com; s=arc-20160816;
        b=vSS5eBPy6TprX7XUdC9dznPbGA8msKFcWZYizJi8JZ0ecGfs0ngFpl2yP1jkIpRjqv
         YhlES3MiENSas7tYYO84fhtO/s54MObgmGEZKpk5GDocTwqhNhcVxD8eZUzbT9Upf8d0
         XLJDItfCdM9aqxWjTY/JjSrqWGXZaG/ZlrxsO7SlkgdAk8Q3pU6VFyBzbLR2o/Nq9hDC
         AaFMnCE3S7HWy77kI7Y9CQuSMJwi4RF2KX2Uis1UidnzZ4Oa0W+H9asi/naZZRFbK0lU
         WqU+E+r+CwvstTgnEtB9wLQtnWqYCA7Dw5Y18osCeVSH8FEwJn51TTMbLDGVZd8gsxQ7
         G7Sg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:ironport-sdr:ironport-sdr:sender:dkim-signature;
        bh=15LsDYlAs35vkpFbPaZryuLH8yx2Uzox+AteYvd61c0=;
        b=ZD6zmTRPfzC7LB56tCRaANxUl5lnQaTv3B6gMod3fE/srrn8GNtrt3mkWAHC8A4TPy
         /I4+L3FsZf7diE8s109k69Mrb1y8pQsHjQMdqxz+eXHLaNF2o606lypitfMjqzYcc9oT
         ZoLJE0BkZvBvLfKo5fFFzp/Ohs9UPo58mteZOLQUGFXhwMJ8rA1hDZEl4iA6Wmin6PwS
         QsKX907QHndJUa8rafQGXmBsfLzU+2WDJeKy26q6fIdRvqIiCZj+xJxhJ76qFdjUYJMM
         OMpSVVRZNvFwX7a1QDzimQYlPvAJuvEd3e9CNaYZSIDnHLlkdp7o7UkiJsexeuaGRtit
         2okw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of rong.a.chen@intel.com designates 192.55.52.93 as permitted sender) smtp.mailfrom=rong.a.chen@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:subject:to:cc:references:from
         :message-id:date:user-agent:mime-version:in-reply-to
         :content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=15LsDYlAs35vkpFbPaZryuLH8yx2Uzox+AteYvd61c0=;
        b=VmXRtBkDN/9Hy1xDkWriiivpFOsUclS81+150qpiQtvQDuLVKuPOq7fx6GhzCMIn14
         IR1/2W5CAg6ucKEQRnimnaLgmDpZ1n5pQx89kFKNVuCpJO8iEZy7m0lb4AQmCxi51kc0
         Vf6QpTTgivUvbEUD8bx7LBFWgtQugsJPQ39SZnSb92+4w0PgQQ2+rL+dNzqZ1ZDvNv7S
         n2mrWtPBaWP/NLhLlX/gEuvJn4Aej042ze4CWWU029waH6HxrCe2DiSq2M09JD/S+g+F
         Aytq7DVh+ruuTEEYBSCYYJQ2tnVN6mz43V6ZXwCpC8A+YR3pVoHTNecZHn7nDvr1mSAX
         S6lw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:subject:to:cc
         :references:from:message-id:date:user-agent:mime-version:in-reply-to
         :content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=15LsDYlAs35vkpFbPaZryuLH8yx2Uzox+AteYvd61c0=;
        b=Wb3IOQZbYVvuZyL+cekgfH2nXiHdfIIgH4sM7Jr170giYhVHIEByeEGBLOhQH4jlIh
         gpn7XvJg6xV1rvfobN2gLceGZKBJQr4iwSkEV68zEZBzJRlRyRGl0r6BrTYrmHBGIrFl
         CqSLZVCvDrriB7dgEEZ7io996OBOZgIOndIa8BHoFVXLhGgCe+bXbsG4XyvWnvvKObCC
         XLGKMMadJkVazCiPy3H/Xw5cs6WYoZd2n3X5RhRuWRxEhQyuXSN6vNeiZE31MQczeh3y
         OOFT2brMOcSwps2p98Do7hIRS7nhrZ5vGjbTfDlGyamIOwLzNods//IMhS1/5SYvIlaM
         UzTw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531mL8MJKjTOEUzu4glmFNtfAn2KLZXNEuczmmt8DcFn/6p4kGvt
	fA6uwjMkjNp7vmb6SFt+rzs=
X-Google-Smtp-Source: ABdhPJxIUJIOp21sTh2D3+u6O3HSUltJ+bPHdRpTJXET6Ji6jSTBOvcSvpCNywjQ6B1/JWGG0CB/BA==
X-Received: by 2002:a63:3145:: with SMTP id x66mr2763737pgx.179.1606204972548;
        Tue, 24 Nov 2020 00:02:52 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:a503:: with SMTP id a3ls1394201pjq.2.gmail; Tue, 24
 Nov 2020 00:02:52 -0800 (PST)
X-Received: by 2002:a17:90b:814:: with SMTP id bk20mr3508064pjb.61.1606204971908;
        Tue, 24 Nov 2020 00:02:51 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1606204971; cv=none;
        d=google.com; s=arc-20160816;
        b=K4SryolRIoIQOoDLbk9uspBgF/K1V2lzUy0aWmeoQ7iAeLsC+96FEVJe+yXcaCCa5F
         Jo3sFPSyo8m09HGVS2wApOD6ZRX+svcWk3oYa8JxZtU9mw1CgQtd2RR/HLPMH8WIdvfY
         Oma7MwYp28DTXbM/XQbn93PvvFUm6ZwepSIj5x+amxeaGZPvl9uzyGELXp48JvKqAe6E
         ip60KFNiog1iY+K6mFIKpz1kL0eiwx6BZrQtUbTgU6SpmZSFCOVB0sl9hPgSdymOA7XS
         dzJP7b/bGraFo/iSL/YCx6rFWkpJPAtxQszwdQ301VrwOOHx/OuXM+dYswGqZQ5ga5mW
         +vAw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-language:content-transfer-encoding:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :ironport-sdr:ironport-sdr;
        bh=Nmz281zWZKOmflmWncy2vIyyXVDPcEnLKdLfc3OsCt0=;
        b=hqY0y9CGV/tGWXVxe0kn/I6ovnkre5re8uXvcVytMlZ0NlMJz5M5mtf9WkoTunbXrK
         EjRZPdStgY0E85FzpJt9aN/H7a86CjAw4YfE9nYTCYDCH4lMDzgvNizhkeYGQfuv07FX
         RQYRnvFmiBIH3eWx9RpXjHy3Yw7Cxpzk9HwvjnnozzhmrRStop08Xmw+0pRiOJzPHIJl
         EVQ64XWsbgH5Sd696c/lQz/DMgYm/gnuPPI1ULTQMwFM7X0PA5ImCFNtWmuqKezQJ5e/
         bkW5i/idMDFr+V7X4ofEQvSv1S+l+heHGNG963e6pEyFZ3OlcWLlqT3WQeG5ujE6Cll8
         tBAw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of rong.a.chen@intel.com designates 192.55.52.93 as permitted sender) smtp.mailfrom=rong.a.chen@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga11.intel.com (mga11.intel.com. [192.55.52.93])
        by gmr-mx.google.com with ESMTPS id bg19si167195pjb.2.2020.11.24.00.02.50
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 24 Nov 2020 00:02:50 -0800 (PST)
Received-SPF: pass (google.com: domain of rong.a.chen@intel.com designates 192.55.52.93 as permitted sender) client-ip=192.55.52.93;
IronPort-SDR: 0VWKtd+626gimPDkaBNNcTbdgfCfUEAfPtYMVI3UziCs6WR7E7vs6B7sMXAqMNDjr/P9XjiU77
 keCYbGHbq0JA==
X-IronPort-AV: E=McAfee;i="6000,8403,9814"; a="168397588"
X-IronPort-AV: E=Sophos;i="5.78,365,1599548400"; 
   d="scan'208";a="168397588"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
  by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 24 Nov 2020 00:02:50 -0800
IronPort-SDR: 3JphZjpq3JdJnRoPGc5Y0j14NIUBG18Z1ITdlXdmhM0K4IoyOe+yDxx5gIBPcrNYR1jOmUEiiM
 Qgmb6ruhny+A==
X-IronPort-AV: E=Sophos;i="5.78,365,1599548400"; 
   d="scan'208";a="478418204"
Received: from shao2-debian.sh.intel.com (HELO [10.239.13.117]) ([10.239.13.117])
  by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 24 Nov 2020 00:02:47 -0800
Subject: Re: [kbuild-all] Re: drivers/net/wan/slic_ds26522.c:205:12: warning:
 stack frame size of 12288 bytes in function 'slic_ds26522_probe'
To: Andrey Konovalov <andreyknvl@google.com>,
 kernel test robot <lkp@intel.com>
Cc: kbuild-all@lists.01.org,
 clang-built-linux <clang-built-linux@googlegroups.com>,
 LKML <linux-kernel@vger.kernel.org>,
 Andrew Morton <akpm@linux-foundation.org>,
 Linux Memory Management List <linux-mm@kvack.org>
References: <202011200603.Fq2dmeMk-lkp@intel.com>
 <CAAeHK+zykqmcDPAa5GAeu4hSfyWF-D4PAa15y=CSgtAxSQTkGQ@mail.gmail.com>
From: Rong Chen <rong.a.chen@intel.com>
Message-ID: <71e44c1f-3c9f-db89-0347-3e23699d67cb@intel.com>
Date: Tue, 24 Nov 2020 16:01:58 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <CAAeHK+zykqmcDPAa5GAeu4hSfyWF-D4PAa15y=CSgtAxSQTkGQ@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
X-Original-Sender: rong.a.chen@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of rong.a.chen@intel.com designates 192.55.52.93 as
 permitted sender) smtp.mailfrom=rong.a.chen@intel.com;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=intel.com
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



On 11/23/20 10:15 PM, Andrey Konovalov wrote:
> On Thu, Nov 19, 2020 at 11:16 PM kernel test robot <lkp@intel.com> wrote:
>> tree:   https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git master
>> head:   3494d58865ad4a47611dbb427b214cc5227fa5eb
>> commit: cae9dc35ed9ff82a99754e51d57ff6c332e1f7e4 kasan: allow enabling stack tagging for tag-based mode
>> date:   3 months ago
>> config: arm64-randconfig-r002-20201119 (attached as .config)
>> compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project b2613fb2f0f53691dd0211895afbb9413457fca7)
>> reproduce (this is a W=1 build):
>>          wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>>          chmod +x ~/bin/make.cross
>>          # install arm64 cross compiling tool for clang build
>>          # apt-get install binutils-aarch64-linux-gnu
>>          # https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=cae9dc35ed9ff82a99754e51d57ff6c332e1f7e4
>>          git remote add linus https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git
>>          git fetch --no-tags linus master
>>          git checkout cae9dc35ed9ff82a99754e51d57ff6c332e1f7e4
>>          # save the attached .config to linux build tree
>>          COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=arm64
>>
>> If you fix the issue, kindly add following tag as appropriate
>> Reported-by: kernel test robot <lkp@intel.com>
>>
>> All warnings (new ones prefixed by >>):
>>
>>>> drivers/net/wan/slic_ds26522.c:205:12: warning: stack frame size of 12288 bytes in function 'slic_ds26522_probe' [-Wframe-larger-than=]
>>     static int slic_ds26522_probe(struct spi_device *spi)
>>                ^
>>     1 warning generated.
>> --
>>>> drivers/gpu/drm/panel/panel-sitronix-st7789v.c:194:12: warning: stack frame size of 18352 bytes in function 'st7789v_prepare' [-Wframe-larger-than=]
>>     static int st7789v_prepare(struct drm_panel *panel)
>>                ^
>>     1 warning generated.
> Same issue as reported previously. Copying my response from the other
> email just in case:
>
> This is the same issue in LLVM that was reported by Arnd for generic
> KASAN (also see KASAN_STACK_ENABLE option description). By default
> KASAN shouldn't have stack instrumentation enabled unless
> KASAN_STACK_ENABLE is specified. Perhaps it makes sense to disable it
> for KASAN_SW_TAGS config on the kernel test robot.
>
> [1] https://bugs.llvm.org/show_bug.cgi?id=38809

Hi Andrey,

Thanks for the explanation, we'll disable CONFIG_KASAN_SW_TAGS.

Best Regards,
Rong Chen

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/71e44c1f-3c9f-db89-0347-3e23699d67cb%40intel.com.
