Return-Path: <clang-built-linux+bncBC27X66SWQMBBYPT5H6QKGQEUT7LUNQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53d.google.com (mail-pg1-x53d.google.com [IPv6:2607:f8b0:4864:20::53d])
	by mail.lfdr.de (Postfix) with ESMTPS id 2AA862BC619
	for <lists+clang-built-linux@lfdr.de>; Sun, 22 Nov 2020 15:46:59 +0100 (CET)
Received: by mail-pg1-x53d.google.com with SMTP id b20sf10554184pgh.17
        for <lists+clang-built-linux@lfdr.de>; Sun, 22 Nov 2020 06:46:59 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1606056417; cv=pass;
        d=google.com; s=arc-20160816;
        b=n+f8SnhkJyXq/Tcl5YcFma4MQ9D9iSez4CImaHe209FI/gmatm/a1xZoHwpcss3Pur
         fnAs79p4l2MdifMb4l8SdTTrEgifuO1LQl5x/BRGxbMIuWgx5e50eDVy1QYyErhwGwM1
         tJCWzW/UipcD3YQlsFqoyZjT5ijOcUBX8Lp2alEHrtnMcOfZnstXFkN+XAlW1tyENmHm
         azwvVCF5nidnz/8T3cBPTvmLQ3bsN6w/00hS2xpj7Ff2772pkIeiwgTQN3ZOFxGGkF0h
         aLYcAtITVHPgorg4r5xOoNM6ju5SM5XYdGGHr+Nx8GdG7j9D2Jf+K4PnxIzz6ly4Gz08
         8JCg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=vPGYGi9F2diLITlS7MOZE1hbCj9YpLHnaaBkc5iUx6Q=;
        b=JZTFy0PZBItLdtCfVfA27v6pgkEjchwyHkxtZL1sgYSBrsLwqLNxQyh5DMFMmExuEB
         I9PwBgWqQ1c0eEkgOZ0ZKmRk3Itwg1piWMsE60gKZrh0Ci8lm7lGJ9xf7m1AuMliDWMK
         NHUCeFSWAPP2I21Me5QYrng8yeRP3jpz+c2/BoPoGY+CZQHEJvsRubwUDN91M9b+RMBe
         ozeB7A/Wq96zWrB36tkc3/LpqaHLNS5viljqhhiAbBEIdoZNV5Pg91Jm4Tbrr7ozA+Qe
         dxe9Qs2RUtfZ6eEI9J/tCX996MczhfpXWDWqC5F3JdxAs30344lRqqkWfOit4f5aIwml
         jvUQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b="D1/B/CrA";
       spf=pass (google.com: domain of trix@redhat.com designates 216.205.24.124 as permitted sender) smtp.mailfrom=trix@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=vPGYGi9F2diLITlS7MOZE1hbCj9YpLHnaaBkc5iUx6Q=;
        b=YyHlQ9qwS+BVdDq+7bWZSVlEzCoXLECTS/lvFHjuwPDnS0M8nkecAyh7gwNu36lK29
         CGi+i/YInYgXHcBFsnJq8PoWyKFmBHTxA5pgl2+Pyek5+JYlpGc8EFHDmN5glDuw6C+A
         P6o/JinWEbZEKFQf92NZ48paOs1xgJOsvOlnSuu0dpxWKOgYA2xKd7lreW09GX0wjhRt
         AbdzTelA88LlxG2hppVt+oubgxEayfkXI9vBLW5DfrJOI2caYPFpZomD4dgeUjp5XIy+
         rcHkqNezX5M6mtd41v/9UU0h0Q8JqrmsDMjkM6YcJ92rIKuMYg3YfB8HFFkrIGZLnDrj
         5LIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=vPGYGi9F2diLITlS7MOZE1hbCj9YpLHnaaBkc5iUx6Q=;
        b=bJUuytibZQ8TKS+mxhq+AF0PtFZ/AsNdzGxo5Vp+GcFwk2O4fZQXZOCZUNummE3wE0
         XZFp4bZABUn4HMyP5KmABd583rXJZ4TyH3b8ilge9aMGzaD1+RIJyErg6jxuKJbpfh6Y
         LKE8O+8R8MapDtcm0NVPIS6hNPpCUGWLFX7vlHrWGaxKEZN5JEdFZPDXuChICr7u+I07
         d9HRdpNG9k3JHfyIHQZUOqMZnP0+5onitaFxRl1tuxrBQtRApjavJXTZw0hr+zmFrbRB
         Mgmm6gdhyKbi0+R+lMqWUsHDLUtNmd8BhjPg8xuwQalC4eWEflm8e7CTPC1bVcf9zFdF
         dpvw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530sjN98hrYCLer79Di+E4A0QJTqWLU5ARInFI8y68RJ5Jvq8Jkg
	xkKLxmQzNh3wIhGU3Wv+sBY=
X-Google-Smtp-Source: ABdhPJzchvkDQABvdJ6ud3kqqU5U30vvSUr8iFytelaYHatoOk6HFC5ucO+CQTK46u/TYnLNkf0t3g==
X-Received: by 2002:a05:6a00:1593:b029:198:195:4d93 with SMTP id u19-20020a056a001593b029019801954d93mr2236432pfk.32.1606056417235;
        Sun, 22 Nov 2020 06:46:57 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:e905:: with SMTP id k5ls5223568pld.4.gmail; Sun, 22
 Nov 2020 06:46:56 -0800 (PST)
X-Received: by 2002:a17:90a:5310:: with SMTP id x16mr20328289pjh.62.1606056416608;
        Sun, 22 Nov 2020 06:46:56 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1606056416; cv=none;
        d=google.com; s=arc-20160816;
        b=c0Cy9WXm3PpHVkXehd15kD8hH+Ecb1TlcACKneBu1YADfZTuMSc6V5Tf+UheGTPjQH
         4tyHngFZjTD0gsDosdrr5bT9IeZsU4SDhh1226hNZekUA6vCCbuuIDZby5mCjPfl1hhT
         4GyG+/jyFOIvy8xFJ7icZgqPITUO13v6PJW6py6cdtQfbCgHPe+95k+T3aRGKLErnG+X
         ek0VQawq1jbw0H2vYAxELUjvWcLq45NaeVxq4z/taDmAbvZSKhTMB70Anlpcqc+k2Kh3
         ArZI6tu+syYXrUiHL4iu2bNWA3HPFjuif1JLLpDvqejWM4wLC/uiSFxq8Q0T3S8qB24f
         CQ6g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-language:content-transfer-encoding:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=apju6gP6XSpkYwp4WdL57a/nFAvNI/QCKhQkuBxc3S8=;
        b=H7GwTWGOjf7t5z+1r2aZFh3bluJzSHGchQ/u9lMHAyA7l7Cr2gg7sh4VwGb/lsFgb3
         /GfOo61gKwuLtPtZZKxv61U5tocn4vooSgVJcepYPpOCmoj630vpNssGQkZCGkHs/I+F
         rO6RRNEJ0r0NdPb7/HHhg9cjIijxgtZ52AX8fuRbfdSZRRCj2LqDGPHgRL7nMpZcHe7I
         KiDxsNuXvTMR2YgjkkrLHm0lSGz4mCEN5hXPK3cx1R8Tz3pprBGQ4Qu5iK+52ZVchznz
         N8lB3BhaSPPDUoMLf9wRGDmrEelM5dr5gpvLrHtDSN2JoSSadruGGJ5NX629n9I/C0tO
         00ow==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b="D1/B/CrA";
       spf=pass (google.com: domain of trix@redhat.com designates 216.205.24.124 as permitted sender) smtp.mailfrom=trix@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [216.205.24.124])
        by gmr-mx.google.com with ESMTPS id ch19si1009522pjb.0.2020.11.22.06.46.56
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 22 Nov 2020 06:46:56 -0800 (PST)
Received-SPF: pass (google.com: domain of trix@redhat.com designates 216.205.24.124 as permitted sender) client-ip=216.205.24.124;
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com
 [209.85.222.200]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-115-tASptjiqMWm-4WAJm2R6iA-1; Sun, 22 Nov 2020 09:46:52 -0500
X-MC-Unique: tASptjiqMWm-4WAJm2R6iA-1
Received: by mail-qk1-f200.google.com with SMTP id c71so12533242qkg.21
        for <clang-built-linux@googlegroups.com>; Sun, 22 Nov 2020 06:46:52 -0800 (PST)
X-Received: by 2002:ad4:476b:: with SMTP id d11mr26026165qvx.57.1606056412428;
        Sun, 22 Nov 2020 06:46:52 -0800 (PST)
X-Received: by 2002:ad4:476b:: with SMTP id d11mr26026152qvx.57.1606056412222;
        Sun, 22 Nov 2020 06:46:52 -0800 (PST)
Received: from trix.remote.csb (075-142-250-213.res.spectrum.com. [75.142.250.213])
        by smtp.gmail.com with ESMTPSA id x72sm6888242qkb.90.2020.11.22.06.46.47
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 22 Nov 2020 06:46:51 -0800 (PST)
Subject: Re: [RFC] MAINTAINERS tag for cleanup robot
To: Matthew Wilcox <willy@infradead.org>
Cc: joe@perches.com, clang-built-linux@googlegroups.com,
 linux-hyperv@vger.kernel.org, linux-kernel@vger.kernel.org,
 xen-devel@lists.xenproject.org, tboot-devel@lists.sourceforge.net,
 kvm@vger.kernel.org, linux-crypto@vger.kernel.org,
 linux-acpi@vger.kernel.org, devel@acpica.org, amd-gfx@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 netdev@vger.kernel.org, linux-media@vger.kernel.org,
 MPT-FusionLinux.pdl@broadcom.com, linux-scsi@vger.kernel.org,
 linux-wireless@vger.kernel.org, ibm-acpi-devel@lists.sourceforge.net,
 platform-driver-x86@vger.kernel.org, linux-usb@vger.kernel.org,
 linux-omap@vger.kernel.org, linux-fbdev@vger.kernel.org,
 ecryptfs@vger.kernel.org, linux-fsdevel@vger.kernel.org,
 cluster-devel@redhat.com, linux-mtd@lists.infradead.org,
 keyrings@vger.kernel.org, netfilter-devel@vger.kernel.org,
 coreteam@netfilter.org, alsa-devel@alsa-project.org, bpf@vger.kernel.org,
 linux-bluetooth@vger.kernel.org, linux-nfs@vger.kernel.org,
 patches@opensource.cirrus.com
References: <20201121165058.1644182-1-trix@redhat.com>
 <20201122032304.GE4327@casper.infradead.org>
From: Tom Rix <trix@redhat.com>
Message-ID: <ddb08a27-3ca1-fb2e-d51f-4b471f1a56a3@redhat.com>
Date: Sun, 22 Nov 2020 06:46:46 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <20201122032304.GE4327@casper.infradead.org>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
X-Original-Sender: trix@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b="D1/B/CrA";
       spf=pass (google.com: domain of trix@redhat.com designates
 216.205.24.124 as permitted sender) smtp.mailfrom=trix@redhat.com;
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


On 11/21/20 7:23 PM, Matthew Wilcox wrote:
> On Sat, Nov 21, 2020 at 08:50:58AM -0800, trix@redhat.com wrote:
>> The fixer review is
>> https://reviews.llvm.org/D91789
>>
>> A run over allyesconfig for x86_64 finds 62 issues, 5 are false positives.
>> The false positives are caused by macros passed to other macros and by
>> some macro expansions that did not have an extra semicolon.
>>
>> This cleans up about 1,000 of the current 10,000 -Wextra-semi-stmt
>> warnings in linux-next.
> Are any of them not false-positives?  It's all very well to enable
> stricter warnings, but if they don't fix any bugs, they're just churn.
>
While enabling additional warnings may be a side effect of this effort

the primary goal is to set up a cleaning robot. After that a refactoring robot.

Tom

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/ddb08a27-3ca1-fb2e-d51f-4b471f1a56a3%40redhat.com.
