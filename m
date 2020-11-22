Return-Path: <clang-built-linux+bncBCKPFB7SXUERBJPU436QKGQE7BZTF6I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x73b.google.com (mail-qk1-x73b.google.com [IPv6:2607:f8b0:4864:20::73b])
	by mail.lfdr.de (Postfix) with ESMTPS id EEF1E2BC2EF
	for <lists+clang-built-linux@lfdr.de>; Sun, 22 Nov 2020 02:08:54 +0100 (CET)
Received: by mail-qk1-x73b.google.com with SMTP id 198sf11539114qkj.7
        for <lists+clang-built-linux@lfdr.de>; Sat, 21 Nov 2020 17:08:54 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1606007333; cv=pass;
        d=google.com; s=arc-20160816;
        b=RdXtl2yk+PcHkclImmELq1HSxJWH1ZLDxq/qK1yUEiMEnvqtDWmCPSUdkLQGtHZayU
         UAByVumABnf0/sBIHEaRjks1LmKZCnPUbs4qftxIW+iazsGLDvpoz4ahH2wr1vZwrzkj
         HqfNl8+Y/GtDN2NNdyKFF+5PI5NLyTzm4jhWk2u9jDjhx1j9DCVfZW7mYxr+RsHoKtjP
         QraJ2aHbYwmpZEPf14NYRY6uswfj74XrTacyIuc6V57HmF612sv6S1xGFvS7aGGJQI29
         Aiv3JyXqWUPYduZkqMTfA42Cp4H1A9AQANzA3wzyqrVegiq8otOc4NxPS8Z99L2ubCkX
         YNiA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=ttC9MJ42Br0GO8XTZdijS8wwxGSo7nGWaS2rR9BETvk=;
        b=x+orua4floYyM1vHjO25XBHcAdeGF9RGwsrcRnyrK59lZiD+JWZtt0PTmKX5YR2CY9
         kKSZmfURcpLUucjpnic6VA+m2ICJdbmX+9ZOTN5UnM8GYPYFNN3gnYotvl+OI9MB4taS
         MnjECAIGyaxqsAO7wPo1S+DQPIf/sJLd0xpvOwpxNKUAJSF7+EyUPsMy8mUg3xyoUZb/
         5KxgrpF95VMLaWciJYjvYFH89VXqgnlOuRCv08de7iwyPJBTinf74CIHTTVsYBssmgrh
         mYIZj8c56CNyEEt/2jRxSmdtKG9GD1CVTjfGVhBMV05Vq7IADo5fXIpxBMW6UslhsQeY
         r71A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=gYI8iFES;
       spf=pass (google.com: domain of bhe@redhat.com designates 216.205.24.124 as permitted sender) smtp.mailfrom=bhe@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=ttC9MJ42Br0GO8XTZdijS8wwxGSo7nGWaS2rR9BETvk=;
        b=rc4OFLBApop6ghCBhC8e5EUEH26Vgiw0Jvqcp1uc0Jz0QjqBbsCt/Qz4rM5/lP7KRO
         MZOIy23Ei7rqPV3X/EMMLjMgdr5It9uL8IwCrCZiL4242NJjuQsGadZ7hBzWqu5xiKHc
         bO5/aY5CJsZFYS2T4j3i9ekKnU4AMnQYUY8rvEOTEukIO9ua8Ei3QtqMwoBISzaXLy90
         HvEsIC1djcHQK2eOyKOYWZhg/5JoZ+SLf2Af46ePw7/ON0TfmJk8tOVB7zs22AUS4ulE
         z4mGMBCB0i9qqk3hYtDiHZ2XEWxdjXgRc9nHWCjX9w97JCED8CDJm4dDV8D5hmB8hXTI
         oNgQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=ttC9MJ42Br0GO8XTZdijS8wwxGSo7nGWaS2rR9BETvk=;
        b=pvyUS+Cqb3O+NVpoNtWhFalA3mN4ZSFivxFWYXh7ehSbb+62mXveGfzBeJhfdUqWJ4
         nqM1mhUK+Q9wOFutbYLE4q0UIvVLVuq8vQY8h4KpF/TuB55rTJUiu3CpjOLWUEem+RXF
         0jMb8FlmyrA1wtqRjznAXm33OeynXuDFYPvopzzqK8fpCfgDaMO1j9yEBRb7ih/zlGEn
         xWuWlpNFyiQY47NIo8FN/vKfgKO41ztdrqO26MA4YQXkjKPVHCfK3f/FS1NzS0Wsvzq2
         +tzCptIv/xvJ9B8dK+K92RoNXPN9JPA/PzP3L+txbrgpVSJUa66dGsZ4hufUyAj0qDSB
         QHyQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5312c8k7ys5UZUk6uSVQwWzbwM9bCosaOuwjD/2IBwpR1eFYSLl6
	EHwC09jSaRobGm+efjDX5pI=
X-Google-Smtp-Source: ABdhPJxLlXOWrUCuDEhVENd8uOp916W4HP8xw8S+wHLJeFIfH2ycKBy+1yEhSwJtj0IQ3fT9HJ0WOw==
X-Received: by 2002:a0c:a5a2:: with SMTP id z31mr24680028qvz.15.1606007333599;
        Sat, 21 Nov 2020 17:08:53 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a37:6615:: with SMTP id a21ls4873486qkc.10.gmail; Sat, 21
 Nov 2020 17:08:53 -0800 (PST)
X-Received: by 2002:a37:a0c1:: with SMTP id j184mr22907843qke.364.1606007333189;
        Sat, 21 Nov 2020 17:08:53 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1606007333; cv=none;
        d=google.com; s=arc-20160816;
        b=RcHnXsmm2LnZZo0Si/3/0Jw/5sn5q1M8d7SxXXJPSux5+zQ3xJz+AJB1md0wQreNfu
         9pl9EJPPcEURdckV7ahIHvxTzfr7GHcusjeNlZqJ57eQjIEC/h1HLl5NVceatEma/fR3
         3t+GbK0cKt2Ci6cF+J4vh1onlGZsMge34dt9IIO4FOeeGBNIL8+OAVuY9TvM5MU5UORc
         2p+i819pp5zWu3GXAg5AlJ15qop8Qk7ZZaKMqekvHUc6aFlPieVs4SWU0yu3mXq2S7Vz
         jQNcwG9YfVWmrg5woRKky0d1q5IxRSm3y8RlQX732HeGcCkvHRumiWtT8eahN5BuLSgw
         Ckwg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=H1mJBEAPCS5iulYCKfM/Y6ftQHa8AEMLnYR4YHZozDM=;
        b=tEVLVpdYQ4eAVa3g++z5PkhMKDvL9UZuKVQT5vRPWYU73Fm2axGk+bCwO2iOE9vzq9
         ooWiEYp2Rhl5kC8VopwEm7wzRhdrohSHKhVWpzqmsdfN/eE3VUOKBbIBoYjx8MwCfQh+
         Po0msF1PIlR8PyGe8mCIuQTMLUOktmceryh8/5JifplNN6jj59me85rKUvkFtFwuaBgE
         Ir9MFUaRipFiNGMHcnG0iqS2o7uQJzFYCcVSyyh6UEJuMdXMWnHcgEUn+CfqfrcXEOtU
         5rYzYHZ9WRvFHNAQpeMWYRArb50Kv1cd4ULcgYsFJ426wrVxZUe/3TQbQMg+YqHD1T3W
         Siqg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=gYI8iFES;
       spf=pass (google.com: domain of bhe@redhat.com designates 216.205.24.124 as permitted sender) smtp.mailfrom=bhe@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [216.205.24.124])
        by gmr-mx.google.com with ESMTPS id g6si455007qtr.5.2020.11.21.17.08.53
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 21 Nov 2020 17:08:53 -0800 (PST)
Received-SPF: pass (google.com: domain of bhe@redhat.com designates 216.205.24.124 as permitted sender) client-ip=216.205.24.124;
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-201-9kqLa6NHP_qBOXzGpreZXQ-1; Sat, 21 Nov 2020 20:08:50 -0500
X-MC-Unique: 9kqLa6NHP_qBOXzGpreZXQ-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id CF23E51D5;
	Sun, 22 Nov 2020 01:08:48 +0000 (UTC)
Received: from localhost (ovpn-12-55.pek2.redhat.com [10.72.12.55])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 384C510016DB;
	Sun, 22 Nov 2020 01:08:46 +0000 (UTC)
Date: Sun, 22 Nov 2020 09:08:44 +0800
From: "bhe@redhat.com" <bhe@redhat.com>
To: Rahul Gopakumar <gopakumarr@vmware.com>
Cc: "linux-mm@kvack.org" <linux-mm@kvack.org>,
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
	"akpm@linux-foundation.org" <akpm@linux-foundation.org>,
	"natechancellor@gmail.com" <natechancellor@gmail.com>,
	"ndesaulniers@google.com" <ndesaulniers@google.com>,
	"clang-built-linux@googlegroups.com" <clang-built-linux@googlegroups.com>,
	"rostedt@goodmis.org" <rostedt@goodmis.org>,
	Rajender M <manir@vmware.com>, Yiu Cho Lau <lauyiuch@vmware.com>,
	Peter Jonasson <pjonasson@vmware.com>,
	Venkatesh Rajaram <rajaramv@vmware.com>
Subject: Re: Performance regressions in "boot_time" tests in Linux 5.8 Kernel
Message-ID: <20201122010844.GR8486@MiWiFi-R3L-srv>
References: <DM6PR05MB52926FDAB0E58F5CFA2E892DA41F0@DM6PR05MB5292.namprd05.prod.outlook.com>
 <20201020151814.GU25604@MiWiFi-R3L-srv>
 <DM6PR05MB529293AC2B077B5170FFE625A41F0@DM6PR05MB5292.namprd05.prod.outlook.com>
 <20201022040440.GX25604@MiWiFi-R3L-srv>
 <DM6PR05MB5292D8B85FA9DDE263F6147AA41D0@DM6PR05MB5292.namprd05.prod.outlook.com>
 <DM6PR05MB5292DF14DF1C82FFE001AC24A4100@DM6PR05MB5292.namprd05.prod.outlook.com>
 <20201102143035.GA3177@MiWiFi-R3L-srv>
 <DM6PR05MB5292FD196FF6B18DCB47CE25A4110@DM6PR05MB5292.namprd05.prod.outlook.com>
 <20201112145149.GN8486@MiWiFi-R3L-srv>
 <DM6PR05MB52920B2D4267AD7D073D3C36A4FF0@DM6PR05MB5292.namprd05.prod.outlook.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <DM6PR05MB52920B2D4267AD7D073D3C36A4FF0@DM6PR05MB5292.namprd05.prod.outlook.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-Original-Sender: bhe@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=gYI8iFES;
       spf=pass (google.com: domain of bhe@redhat.com designates
 216.205.24.124 as permitted sender) smtp.mailfrom=bhe@redhat.com;
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

On 11/20/20 at 03:11am, Rahul Gopakumar wrote:
> Hi Baoquan,
> 
> To which commit should we apply the draft patch. We tried applying
> the patch to the commit 3e4fb4346c781068610d03c12b16c0cfb0fd24a3
> (the one we used for applying the previous patch) but it fails.

I tested on 5.10-rc3+. You can append below change to the old patch in
your testing kernel.

diff --git a/mm/page_alloc.c b/mm/page_alloc.c
index fa6076e1a840..5e5b74e88d69 100644
--- a/mm/page_alloc.c
+++ b/mm/page_alloc.c
@@ -448,6 +448,8 @@ defer_init(int nid, unsigned long pfn, unsigned long end_pfn)
 	if (end_pfn < pgdat_end_pfn(NODE_DATA(nid)))
 		return false;
 
+	if (NODE_DATA(nid)->first_deferred_pfn != ULONG_MAX)
+		return true;
 	/*
 	 * We start only with one section of pages, more pages are added as
 	 * needed until the rest of deferred pages are initialized.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201122010844.GR8486%40MiWiFi-R3L-srv.
