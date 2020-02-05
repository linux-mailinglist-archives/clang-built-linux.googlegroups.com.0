Return-Path: <clang-built-linux+bncBCEJHTXX7MFBBD4R5XYQKGQEGI6RTYA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x140.google.com (mail-lf1-x140.google.com [IPv6:2a00:1450:4864:20::140])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E715153B8A
	for <lists+clang-built-linux@lfdr.de>; Wed,  5 Feb 2020 23:58:24 +0100 (CET)
Received: by mail-lf1-x140.google.com with SMTP id w72sf987837lff.20
        for <lists+clang-built-linux@lfdr.de>; Wed, 05 Feb 2020 14:58:24 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1580943503; cv=pass;
        d=google.com; s=arc-20160816;
        b=z0M8Rd6ooqaS+L0IPEIC330wKmEmwKATt755W/EJUDSBVcm49Yp9woHxLuB+f4+C7G
         bnqjscn5dnX6kecW9NEeDRGUrTT4gP9e/RZcCY5sTqiennAa80C4eXn4GFRtCbxRM460
         3I1m+QqLqFT77RBdCqlq1nEhMLinhrd3RqPwhn+7PjMdIt6KePt/D8oBRN94RZnlA17V
         8B0aU/S2JIDTRdfp2aF9QbAKXw0qeHbzlImdVcum0eh08wuZm3ON/p0FhiKk12gMZnU2
         Ksqf88eIOJs1xgbTH5erGSBSVp507szEF3HUcQQpDBjq2+sDHm4L/bXennqM/q3mg2Yd
         Fbkw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:message-id:user-agent:references
         :in-reply-to:subject:cc:to:from:date:mime-version:sender
         :dkim-signature;
        bh=iB/oJgXXIPEJOJUdy/DzkopDfz+W6i5NEuHzfODKE/s=;
        b=aT/czFZfIVIBQSznKFIFRyuhWbiBGwOJpaU/NXC24vrMAvY7tqgLyy67YbVd6lYwNf
         Ph9LLWs/srrXIRHdBeOTipN3N+bpOSBa4frOoNNRPXeyGdz0xACVfy06TVr/nvTzi0sT
         4wvo3B6q21JEkp2NUmS07/s9tDKe6VRVhjqN6YJ+9YUd/gYZe/QuNM6KuSaOC9h0axHs
         khkc5pM2B4yqjUgqs3H2SEZDIhDudB4oG3ucJyBj8VYCkCWtliw9/OQ/1V6BaPIIpxFu
         nCwkeWjEMBR6vWtby6j5/wzNi2HPc2U3yV5ftQSnmSG0OEoaWRbh+i49+qYUl/bHC1nH
         gkzQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@agner.ch header.s=dkim header.b=ZFeVZv5C;
       spf=pass (google.com: domain of stefan@agner.ch designates 2a02:418:6a02::a2 as permitted sender) smtp.mailfrom=stefan@agner.ch
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:date:from:to:cc:subject:in-reply-to:references
         :user-agent:message-id:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=iB/oJgXXIPEJOJUdy/DzkopDfz+W6i5NEuHzfODKE/s=;
        b=qaMxjhLhbGV9bkMnG6PWBI9NI1OJXfXGsWATBd+lfi8QjEcrDGcyn4UCdJg4Yvl9gh
         EE1rtWj6LDO0BDqdjR+cK68gyE+aZenAGK2ZOExrJfJca+jjnDhBCjvwU1osjBjWueHH
         XyCdelTsclp83JXz+0UTL/Jaybu30+YKXQvYQ7okAHs9rA1CfsPEBVxS1xWC7E/Smrpb
         ASIo8tYLsyBrYQ1QwZFdUArBUMLn+Q7b+esyYqq6IpTWL3jctbaBnR2ol9DH2+UcGC6F
         b3ECHXsS/ftQjy6wvF2+CO9hPNPzPVMwI1B3bV64WPTCLVDKHgYWMOYXH1DYTG+S8aoz
         q3zQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:date:from:to:cc:subject
         :in-reply-to:references:user-agent:message-id:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=iB/oJgXXIPEJOJUdy/DzkopDfz+W6i5NEuHzfODKE/s=;
        b=RFmD7pAdXEseWi/3UtB5nW71i0PEilGXtCunypa/A6T2K9sZMUEjRflj4t5UpeVKVK
         m2b2MfcSa2IDNigLA1BA3TSay/pFGoV5LKtMcWxTNO207P5ksfTzeIRnLkr2i+3dBT2d
         gudeVCeQt4x6sVxnehh6LRbiMpaHUXyb50SeGXmlrnq2Itt/iWhLk1j/Exs0X7DsGLtn
         jHD/V3hgA3IQXeCVFZsPkXqtx3DzHiuaGOHLQ8aXlC31J2oYCpN6pd8m+Bh0VvvncA/M
         O7ulFxhrAi8nNgtvRRqieW8oH+xrI/6QCNr7WuqZT1KjXyt6LTvy5KWYbqi6H5qNK05L
         6a/Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXI2oa7b/SU/MeQXin9/Sa2xKVEy6LN4DHaY9ZupfL97jgvuian
	3J66RzQKhq0qCMA/DbJc/10=
X-Google-Smtp-Source: APXvYqzJpD7VWcOCbm48Va1q010D0FPs7O/ZFzGsZCik/3XatF+wth0T77XMJwO4h1PO7ukuMfxByA==
X-Received: by 2002:a2e:a36a:: with SMTP id i10mr95706ljn.107.1580943503609;
        Wed, 05 Feb 2020 14:58:23 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:8544:: with SMTP id u4ls706421ljj.6.gmail; Wed, 05 Feb
 2020 14:58:22 -0800 (PST)
X-Received: by 2002:a2e:9b05:: with SMTP id u5mr101810lji.59.1580943502558;
        Wed, 05 Feb 2020 14:58:22 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1580943502; cv=none;
        d=google.com; s=arc-20160816;
        b=Vt3T5n6wPcW/luLkuoIjxBnZFFq70atuVWUHiGQM49GDPrSKX6TQrSYjmymOOa8H3a
         rP/zB60j90PAPzw+2usAd6W2mZobrwjhw8aFjMmKS/hW3j+07w90PJ/rY1PJGNHdv71+
         RpwLjijhu6TLGciahq6UZgSzj58Qlo7DyFSvwQq+YTwTDp0gh9NKCadVA4LnTb82hIQu
         CwA/l3KjAudjy07Xjlp1P6cmF7lgfKDBwWxM+H8uMl+6lMd3/I2aFu70/5dNXHpPy1M5
         ehOxEp3UoJ+OD4rDRjhuhAK0g8mdVa9Iqfr1bLcmpo3Nhy/8OJKZf+Ren7WM72Ii2a4b
         00Pw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:user-agent:references:in-reply-to:subject:cc:to:from
         :date:content-transfer-encoding:mime-version:dkim-signature;
        bh=3VcufrJgxcsnT3S/lhbayM64sOm4ET3fTVcPeVl2zZQ=;
        b=wi3VbkvmyQQhhQLWtzDawIeiKF6CbadijkPI9PEohwjIpKUCwx1LAlHTwQ9vuilwfZ
         NjQILTWMU+ATWqwkBRrqhneoZjNDK1zPckVYHIGvdRprIHY9ShmFfRxpCBfk4Wlspkjz
         XEgJvuLDuLGsC1OBOC7kMz1RnrwkXYkrPQISHNAXHomr9aNMNq0tCLBt5a6GeVjz/Qbr
         Ee8SHUANrfud5HO4aTeiqYLHIHV+f59ZmgMZL+LsYfXt4i3CJnsWfD1se58Um1PT+fBf
         Gf6xWvMHiwW9yhRfBhEm6h1RNhGZW/yOJ2oXQ5Z2Y+pwuamD/oPbS3WLZ8i+YQybJwGR
         eLbA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@agner.ch header.s=dkim header.b=ZFeVZv5C;
       spf=pass (google.com: domain of stefan@agner.ch designates 2a02:418:6a02::a2 as permitted sender) smtp.mailfrom=stefan@agner.ch
Received: from mail.kmu-office.ch (mail.kmu-office.ch. [2a02:418:6a02::a2])
        by gmr-mx.google.com with ESMTPS id b10si53569lfi.1.2020.02.05.14.58.21
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 05 Feb 2020 14:58:21 -0800 (PST)
Received-SPF: pass (google.com: domain of stefan@agner.ch designates 2a02:418:6a02::a2 as permitted sender) client-ip=2a02:418:6a02::a2;
Received: from webmail.kmu-office.ch (unknown [IPv6:2a02:418:6a02::a3])
	by mail.kmu-office.ch (Postfix) with ESMTPSA id 92A8D5C406B;
	Wed,  5 Feb 2020 23:58:20 +0100 (CET)
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Date: Wed, 05 Feb 2020 23:58:20 +0100
From: Stefan Agner <stefan@agner.ch>
To: Joe Perches <joe@perches.com>
Cc: maarten.lankhorst@linux.intel.com, mripard@kernel.org, sean@poorly.run,
 airlied@linux.ie, daniel.vetter@ffwll.ch, airlied@redhat.com,
 dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 clang-built-linux@googlegroups.com
Subject: Re: [PATCH] drm: Add missing newline after comment
In-Reply-To: <5a14078affad5e26330627d91df394da990ba301.camel@perches.com>
References: <586aab08af596120f48858005bb6784c83035d59.1580941448.git.stefan@agner.ch>
 <5a14078affad5e26330627d91df394da990ba301.camel@perches.com>
User-Agent: Roundcube Webmail/1.4.1
Message-ID: <75de5f45061e2d13268479d43cb84625@agner.ch>
X-Sender: stefan@agner.ch
X-Original-Sender: stefan@agner.ch
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@agner.ch header.s=dkim header.b=ZFeVZv5C;       spf=pass
 (google.com: domain of stefan@agner.ch designates 2a02:418:6a02::a2 as
 permitted sender) smtp.mailfrom=stefan@agner.ch
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

On 2020-02-05 23:50, Joe Perches wrote:
> On Wed, 2020-02-05 at 23:26 +0100, Stefan Agner wrote:
>> Clang prints a warning:
>> drivers/gpu/drm/drm_lock.c:363:6: warning: misleading indentation;
>> statement is not part of the previous 'if' [-Wmisleading-indentation]
>>          */     mutex_lock(&dev->struct_mutex);
>>                 ^
>> drivers/gpu/drm/drm_lock.c:357:2: note: previous statement is here
>>         if (!drm_core_check_feature(dev, DRIVER_LEGACY))
>>         ^
>>
>> Fix this by adding a newline after the multi-line comment.
> 
> Thanks, already in -next

Whoops, sorry for the duplication. Searched for "indentation" which did
not bring that one up.

--
Stefan

> 
> commit 5b99cad6966b92f757863ff9b6688051633fde9a
> Author: Dan Carpenter <dan.carpenter@oracle.com>
> Date:   Wed Jan 8 08:43:12 2020 +0300
> 
>     gpu/drm: clean up white space in drm_legacy_lock_master_cleanup()
>     
>     We moved this code to a different file and accidentally deleted a
>     newline.
>     
>     Signed-off-by: Dan Carpenter <dan.carpenter@oracle.com>
>     Signed-off-by: Daniel Vetter <daniel.vetter@ffwll.ch>
>     Link:
> https://patchwork.freedesktop.org/patch/msgid/20200108054312.yzlj5wmbdktejgob@kili.mountain

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/75de5f45061e2d13268479d43cb84625%40agner.ch.
