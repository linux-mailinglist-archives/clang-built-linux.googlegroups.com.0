Return-Path: <clang-built-linux+bncBC32535MUICBB6WU32AQMGQEH57FI5Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3e.google.com (mail-io1-xd3e.google.com [IPv6:2607:f8b0:4864:20::d3e])
	by mail.lfdr.de (Postfix) with ESMTPS id 0BD433250B3
	for <lists+clang-built-linux@lfdr.de>; Thu, 25 Feb 2021 14:47:40 +0100 (CET)
Received: by mail-io1-xd3e.google.com with SMTP id q5sf4308964iot.9
        for <lists+clang-built-linux@lfdr.de>; Thu, 25 Feb 2021 05:47:39 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1614260859; cv=pass;
        d=google.com; s=arc-20160816;
        b=Crzu6qxgLZRSn4+gFyXLcr8V+liqMHsTVxsXL+eZg43DETh+T1VLe4SmSSQPNm4XpU
         DsspRta7JdJsyTqWbdW5hGYL6EvFfBWgzJf2326Pbq94WxYCPwCM03Dlp78tXJrPECka
         zzFnKN4JKySohjR32n3Y0kHtVWy5/WkeGcOf/rtM9KFvSDG4sUrXZg9k3aIvb/zYrJFm
         23DcAqfqNV+Xxdg4/mI00aiH23GTGLuGTJkHAIg/qzUC9nfmVLk/wNJ1Ek4UjkWhoUM6
         0jfvwXoj/bz95vdJ9e7FZ37zp+oeRIfBaG+mLGW1fvNyYY1KaLEsB3p3WxsXDm+P3hI4
         lTvw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:organization:from
         :references:cc:to:subject:sender:dkim-signature;
        bh=uYm2gYnrV8i24dYTqRfN/LOE6WeW+74n4OGt3kiLysE=;
        b=Uw6wl4nmrD2m/7XjPexjmGaNP80bQIsafH8tR1s2je5tV7Fl9X5PrS7zLZV+Ei+gSV
         NNdI51Owol/yL0affg+i4VuF+LGekJTkN2VYBKcgQ+wEHNV5llTH4HdIKp1GwhAgrU3E
         jAnsZuzofVaLgvSvt8ndPYp+/B3KJv8bx/uH4Wb77/4HMppfoK3C1F/PluXhaOuslQvm
         vh27DbrExNWOcQuJXp2MI2JK9bq7NadDPelpHZlkgQfwltTtFD2hBCLqDf5SsZ2Ennwi
         knYT9f/cv4AFUBOMD95wJaC+ULN2RBz1p5xLRCKOGrVuedHrGIcC+eN4azubC17wfgdv
         CGEA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b="Z/uQbHjN";
       spf=pass (google.com: domain of david@redhat.com designates 63.128.21.124 as permitted sender) smtp.mailfrom=david@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:organization:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=uYm2gYnrV8i24dYTqRfN/LOE6WeW+74n4OGt3kiLysE=;
        b=DUgKKUe6+UPj158wBrepU1mSF4Ys5s0Xs2dTlPYnSXF89rNhnyHvh9kRh9BrVqut8e
         8QzUyPJZp0jL53pcEDR8VkXEIXraj4X1bKpJQLAG/gnZAhkp91iMwh6nkzqXZPE/b50Z
         0yOlxTlxxt5foi0QIo4HIgabFSzUpG+1x8x859ivsjEnyjaGTBSuS72OsStqIFMWH098
         dKUfjsFT8zTZP7mYS58u0v4mg/bmjlQ9kOBgsD2LLpugi6miLktTioIN7v/eRYFJTL2n
         oYMk9mDACgf5eHgfItpM6xZo22J0YVNWGxDOPAEhYfdMzIrdjy2huzTmc0FNL1CYBQJS
         xuzQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from
         :organization:message-id:date:user-agent:mime-version:in-reply-to
         :content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=uYm2gYnrV8i24dYTqRfN/LOE6WeW+74n4OGt3kiLysE=;
        b=P7c4ySFYm+1Ye+eZTm5GQHgb3GZV5kn9pBkIfTM0uLv74HMaVM3BBBkTCWakpsNDt3
         kWi42miyW/f80t+QYwFz6ifAadxe73EEP2HaYtT8IR/yTVufy6z+QJhrpYqX+LD9sBEd
         2Sc9FoSydW/3xe89CvvauCtCx4hbA8rhB+XHJkbkkPnKqqwXfQ1iUcwVHWzV7UqTNnl4
         Vbepk9mwyDfhUvP4YWYt87RdNIFZ6HVvBrcwa7lSPbDPkDFkKpJtW6VkeuE3d+HhdRJF
         Xcb5cfewZG/FNKSTu4OYSDikX1Dt1bt17ldLyImVku7fdNpB+HC+GNF+aD1EHiag9o4W
         v3/A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532xaiRhygF32BAqsSlQaxoCfSunYTq2xf5b5eiHOcDQaW20NCSP
	7rZhCqvZ4LnITIZrG/fj7zI=
X-Google-Smtp-Source: ABdhPJxHyruCRDfw1cV371wNi6nqBFaZMYUdlqdPiB87yzJ/N44AvplLv+e3uyRIHx+0piokLtDlqg==
X-Received: by 2002:a92:ad10:: with SMTP id w16mr2649402ilh.122.1614260859029;
        Thu, 25 Feb 2021 05:47:39 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6638:2656:: with SMTP id n22ls827282jat.4.gmail; Thu, 25
 Feb 2021 05:47:38 -0800 (PST)
X-Received: by 2002:a05:6638:14c:: with SMTP id y12mr3167517jao.34.1614260858687;
        Thu, 25 Feb 2021 05:47:38 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1614260858; cv=none;
        d=google.com; s=arc-20160816;
        b=xX6DYL1IL8svXuKOGx97+DUoV7Mu1hOYBU6zmOhvW/PHaDlJ00qyXzQhgVIEfmbiRu
         wau8LIcUnkxmgY33Cfue7cSp+x4xdtnh5smqW8dtISsuko0+JUbQpSQUkpwDjROENEFJ
         fKs4Iftf4BcQGZzuDXyZqGUhty6g/3Rg8h080hVJY/xvx4I0Qx+Z54bgtdqTZ3Lf5dDW
         vx240WMgIZeOkPb42ALt5gXtKr586uRJe5UZoQwjGPmZlNo+2Tq69tj93rssLuEyBFUs
         Ezpljn1OaBYZf29hZ8hB+ZWcruRqEXSiV2Hexf4OJBMOUjJAYwDyBiua0reWEzrafsi1
         F2pA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:organization:from:references:cc:to
         :subject:dkim-signature;
        bh=EgjC+rf5BpRHQVKEWQzIdMLice8BLuA8Q1gYTkfD844=;
        b=mpzxfuO+C3fvsG57RZXL3aqZMFKZjd2i5hm1ErLf4Ctu7AFju8tAEM+bmKyXSsY96q
         j/7mT3RHShv/uS6cI7katPWW804r6lEVJRN8Jkb7k6Pcl4Xx7nBKKuyGXvZPenlWbchB
         zvIXdJlganeae+Nh5rDbJT3oRyvHdfGaOXMuCbZVhmOwHZ6g4CIkFD8UOwBHt14Q8xmG
         DZwFPMWxVetvpL+B2SHyXAK1X++IAvhp4CrFlRa/wfN2l/lzhKpbqf+FCk+v6QbZN7Hu
         /f1K82m+fMd3TRZ/8a1zWVLV7HJqpS/FzMwJqGOqwJjF82j5HAkMLIfn7wO4sm1Xe4or
         dbwA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b="Z/uQbHjN";
       spf=pass (google.com: domain of david@redhat.com designates 63.128.21.124 as permitted sender) smtp.mailfrom=david@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [63.128.21.124])
        by gmr-mx.google.com with ESMTPS id d2si282818ila.5.2021.02.25.05.47.38
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 25 Feb 2021 05:47:38 -0800 (PST)
Received-SPF: pass (google.com: domain of david@redhat.com designates 63.128.21.124 as permitted sender) client-ip=63.128.21.124;
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-406-f7r-gXxdPe6w62d-1y8HYQ-1; Thu, 25 Feb 2021 08:47:34 -0500
X-MC-Unique: f7r-gXxdPe6w62d-1y8HYQ-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 2E40A8799E0;
	Thu, 25 Feb 2021 13:47:32 +0000 (UTC)
Received: from [10.36.114.58] (ovpn-114-58.ams2.redhat.com [10.36.114.58])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 9CE4919C79;
	Thu, 25 Feb 2021 13:47:29 +0000 (UTC)
Subject: Re: [PATCH] memblock: fix section mismatch warning
To: Arnd Bergmann <arnd@kernel.org>, Mike Rapoport <rppt@kernel.org>,
 Nathan Chancellor <nathan@kernel.org>,
 Nick Desaulniers <ndesaulniers@google.com>,
 Faiyaz Mohammed <faiyazm@codeaurora.org>
Cc: Arnd Bergmann <arnd@arndb.de>, Andrew Morton <akpm@linux-foundation.org>,
 Baoquan He <bhe@redhat.com>, Thomas Bogendoerfer
 <tsbogend@alpha.franken.de>, Aslan Bakirov <aslan@fb.com>,
 linux-mm@kvack.org, linux-kernel@vger.kernel.org,
 clang-built-linux@googlegroups.com
References: <20210225133808.2188581-1-arnd@kernel.org>
From: David Hildenbrand <david@redhat.com>
Organization: Red Hat GmbH
Message-ID: <60989b76-1ae6-6be3-0277-df9f0cc8dc3e@redhat.com>
Date: Thu, 25 Feb 2021 14:47:28 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.0
MIME-Version: 1.0
In-Reply-To: <20210225133808.2188581-1-arnd@kernel.org>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-Original-Sender: david@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b="Z/uQbHjN";
       spf=pass (google.com: domain of david@redhat.com designates
 63.128.21.124 as permitted sender) smtp.mailfrom=david@redhat.com;
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

On 25.02.21 14:38, Arnd Bergmann wrote:
> From: Arnd Bergmann <arnd@arndb.de>
> 
> The inlining logic in clang-13 is rewritten to often not inline
> some functions that were inlined by all earlier compilers.
> 
> In case of the memblock interfaces, this exposed a harmless bug
> of a missing __init annotation:
> 
> WARNING: modpost: vmlinux.o(.text+0x507c0a): Section mismatch in reference from the function memblock_bottom_up() to the variable .meminit.data:memblock
> The function memblock_bottom_up() references
> the variable __meminitdata memblock.
> This is often because memblock_bottom_up lacks a __meminitdata
> annotation or the annotation of memblock is wrong.
> 
> Interestingly, these annotations were present originally, but got removed
> with the explanation that the __init annotation prevents the function
> from getting inlined. I checked this again and found that while this
> is the case with clang, gcc (version 7 through 10, did not test others)
> does inline the functions regardless.

Did I understand correctly, that with this change it will not get 
inlined with any version of clang? Maybe __always_inline is more 
appropriate then.

(I don't see why to not inline that function, but I am obviously not a 
compiler person :) )

-- 
Thanks,

David / dhildenb

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/60989b76-1ae6-6be3-0277-df9f0cc8dc3e%40redhat.com.
