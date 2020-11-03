Return-Path: <clang-built-linux+bncBCKPFB7SXUERBUWGQX6QKGQEXSUPIRQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x437.google.com (mail-pf1-x437.google.com [IPv6:2607:f8b0:4864:20::437])
	by mail.lfdr.de (Postfix) with ESMTPS id 714242A472D
	for <lists+clang-built-linux@lfdr.de>; Tue,  3 Nov 2020 15:04:04 +0100 (CET)
Received: by mail-pf1-x437.google.com with SMTP id g14sf12235087pfb.8
        for <lists+clang-built-linux@lfdr.de>; Tue, 03 Nov 2020 06:04:04 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1604412243; cv=pass;
        d=google.com; s=arc-20160816;
        b=uPxdNWzgTiJPRV+Esbak45oVRl8V1Y3KYqLB5rmJcE9Y3ergBNa6ZXFS+jWde527DO
         OfMV5e5STdEd4SZ+ntNYTb9Dq9JxaPpzd/A6vxSXjeT/FAvxh1T7Ro6kZwaEv1cJ9heH
         zm8FyVFOv9Z1+ND2M8W+MyvK6ixQudAmYZleqEYnHGnL2NZas0ICYJuGClGUsNA1EjYP
         KTPenB4gsmj1hKjNngnXfZqlRh6L7/7aWml2d5r+1mMnXH5bdo44Nb5szP4iCzUT1xWy
         HI/ZAF7p70UFNSXx5xDMTz5Eq3c9vgNByG/+ta5i5HrlIDsya+qzg6PKkxKA/0cBxfss
         DIkA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=I5/GF0zjkMfpWnv46W9e89z4jEvf9oSTM/7YvyRr/bw=;
        b=qjtq0JWgBU+nJ0Tvx5Riwh1WYLcmtMbq8/DjDEpQrOj5TJsrn//0UtnLdOJe7dtbCt
         eVYcPLO0NPjRNqavrmb6P81GTH53g9NU1h0PLbfJV4QDdb4HzDTL7VUJx4RmOE8G48pz
         42pCJJA0+79ftHPiXXjJ8wcywDw+my0UkAdxt7i2YJRHvV7B56sHLB8HQi0igjPVJ4F8
         cPcFDexBLEmIYjR+QJcXHage/eothU5NNDanGa8FyORW0Kf9cNcB2XJvYzyio0Q07ETP
         uIISsOs/swL5PdYsbLL4XLA4xQkYaHgAapRAT9QmkyqmBFW9LhPSIjnmCHD1VDiNsbH/
         v++w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=ZVtIltKK;
       spf=pass (google.com: domain of bhe@redhat.com designates 216.205.24.124 as permitted sender) smtp.mailfrom=bhe@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=I5/GF0zjkMfpWnv46W9e89z4jEvf9oSTM/7YvyRr/bw=;
        b=LjtVHYNSZFJqKluyd3anT5ZAejhv9Xq8YGnXOD0uLqrGpWjUyzVB0Y70OXFrlS/t/v
         +YWEZxqAQfv9Ut+VFpFlukFht6wKeOjFjEkXnB3tUQwleW/rZ1lYDPjnjOlzWFxiyfI2
         uguI28zHzw8JYH6k+HL5Juuk5QvKM6GN7VXmWpxt0g8X9fpTQGhW5PQ/pxGjudKFcWcz
         0C7wOfmeG/GRzeDk+vb0hIgK5xESW4y16CvCevqjeGk6GySmQXQuu11+65ZnujDmgl0L
         pozoGDZOjnRYAbeRra1rwQmJD7p6RRuYu1DFHrXOzTM5HuhboD6vciUO6LgGFrwfi4Iz
         V73A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=I5/GF0zjkMfpWnv46W9e89z4jEvf9oSTM/7YvyRr/bw=;
        b=c79cJGOEmwhskMHe8PUXkK7fEtJMIHuxAIL+3pL9V2w1aKCkVE71tOgPS7kZUKzL/C
         H6QhOOFgjwlQWHHkj24bhFi1vPDIaKl1wTLc5CawyyBdeCMNFiDK6VB+4ArgPnKPHfrx
         ngZz5oZvcu4jeqBR8w+IHJHK4V/V5EvsH6TTWtCWFoVoLx1NfMRzbFpM9KEXiSpmCWzM
         f33KcerPfSFYCnPmkVwFNfMoSswkzo0seaDVtFg07oaqDZDyQtPSj8XR+gnA72s7RqaM
         W28N0/Tn53Zr21hlBYpwS4GhmRQxW76TlOqx4CMimYT/dridt6X9L6xHnWpGktoj2VHC
         iASw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531qu3cj3Zgo6xsot+pTW+oHlBzJ7litoaU0tuK1ld2FWxgVG5IS
	wg2eCzcrIVHgKByoEwCapt8=
X-Google-Smtp-Source: ABdhPJwIkEad46nJCE0xWGfdsSpazvAe/RwJDlQ9/4BkWd31I17uYZbO9mdbkadGoeZpYPsYI5C1TQ==
X-Received: by 2002:a17:90b:e8e:: with SMTP id fv14mr4043763pjb.94.1604412243111;
        Tue, 03 Nov 2020 06:04:03 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:8f47:: with SMTP id r7ls689087pgn.8.gmail; Tue, 03 Nov
 2020 06:04:02 -0800 (PST)
X-Received: by 2002:a62:6586:0:b029:164:1cb9:8aff with SMTP id z128-20020a6265860000b02901641cb98affmr26978632pfb.64.1604412242465;
        Tue, 03 Nov 2020 06:04:02 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1604412242; cv=none;
        d=google.com; s=arc-20160816;
        b=DWIjsYQQjk/ZlkThxnJ67uWz2n6i3/UQFOMmYYAXdVPBLGNM/zMUBxvw7qTC09xIyx
         oxbRI77LkPSzhoXnURl4cSTBDmy827ht8yUvD8aHFiplf6J2qOM5p8oO2YkHXzeYOYwh
         AbeAE0gm43MoKIpuXS6kaSks7MCLIXALla6gLzGo+n91u2/Hskm5S2Usd7npqrzvWjHw
         UG+j4mPN92npEgmxjeVSNsy5I1/+YWxCLAKEK7t+jTraEfAbyahHU1WIqxZEdw+7F4rR
         KQ6bqpmM5GmCYo0J6vYPjHTT+wsU3fT6JVhO9iSRhbv3reXL6BoEB4CqKikjpu+aY7h1
         jefw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=IsejNI8EYSmowoiAvOvFY33zKF4jozyNUSQ9LBHEIew=;
        b=msF1UGnTUTeLD5n+0FdenA97kZafdGMY3z+IFe7IhAu/uy/34PPQoirWHM8j1+Y1dH
         lbLvVvC4+gotwr7bdqNAi+6KQigRd5qIIXnGdh7qciPIkA6RKFR8QHtD4mrA5LX1ckr9
         efkT9fBfGC9t7KPuVTShRmrheZY+Ur/x9uuwjYD6wnsLG15G2hUv8uiQ3OCccKmTUlQx
         uEtUhCqs1D/6PnHubZ5KH9ots1XbxFGhkO5h4wa+r/9vXfsTEIqL3QgNO/7X9wRafSPC
         z9Cfj3WMYq2BTG96iccnMgt8bCfIcIdGE7vheryOUehTriNEFNngwWZ1mVWrLC+sPHP7
         8qqg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=ZVtIltKK;
       spf=pass (google.com: domain of bhe@redhat.com designates 216.205.24.124 as permitted sender) smtp.mailfrom=bhe@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [216.205.24.124])
        by gmr-mx.google.com with ESMTPS id i4si186275pjj.2.2020.11.03.06.04.02
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 03 Nov 2020 06:04:02 -0800 (PST)
Received-SPF: pass (google.com: domain of bhe@redhat.com designates 216.205.24.124 as permitted sender) client-ip=216.205.24.124;
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-595-cvTYnFueNbGheckDPJMuxw-1; Tue, 03 Nov 2020 09:03:58 -0500
X-MC-Unique: cvTYnFueNbGheckDPJMuxw-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com [10.5.11.16])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 7A2E3107465A;
	Tue,  3 Nov 2020 14:03:56 +0000 (UTC)
Received: from localhost (ovpn-12-165.pek2.redhat.com [10.72.12.165])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 5383F5C230;
	Tue,  3 Nov 2020 14:03:55 +0000 (UTC)
Date: Tue, 3 Nov 2020 22:03:52 +0800
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
Message-ID: <20201103140352.GB3177@MiWiFi-R3L-srv>
References: <DM6PR05MB529281F914953691E0F52D1CA4070@DM6PR05MB5292.namprd05.prod.outlook.com>
 <20201013131735.GL25604@MiWiFi-R3L-srv>
 <DM6PR05MB52926FDAB0E58F5CFA2E892DA41F0@DM6PR05MB5292.namprd05.prod.outlook.com>
 <20201020151814.GU25604@MiWiFi-R3L-srv>
 <DM6PR05MB529293AC2B077B5170FFE625A41F0@DM6PR05MB5292.namprd05.prod.outlook.com>
 <20201022040440.GX25604@MiWiFi-R3L-srv>
 <DM6PR05MB5292D8B85FA9DDE263F6147AA41D0@DM6PR05MB5292.namprd05.prod.outlook.com>
 <DM6PR05MB5292DF14DF1C82FFE001AC24A4100@DM6PR05MB5292.namprd05.prod.outlook.com>
 <20201102143035.GA3177@MiWiFi-R3L-srv>
 <DM6PR05MB5292FD196FF6B18DCB47CE25A4110@DM6PR05MB5292.namprd05.prod.outlook.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <DM6PR05MB5292FD196FF6B18DCB47CE25A4110@DM6PR05MB5292.namprd05.prod.outlook.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-Original-Sender: bhe@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=ZVtIltKK;
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

On 11/03/20 at 12:34pm, Rahul Gopakumar wrote:
> >> So, you mean with the draft patch applied, the initial performance
> regression goes away, just many page corruption errors with call trace
> are seen, right?
> 
> Yes, that's right.
> 
> >> And the performance regression is about 2sec delay in
> your system?
> 
> The delay due to this new page corruption issue is about
> 3 secs.
> 
> Here is the summary
> 
> * Initial problem - 2 secs
> * Draft patch - Fixes initial problem (recovers 2 secs) but
> brings in new page corruption issue (3 secs)
> 
> >> Could you tell how you setup vmware VM so that I can ask our QA for
> help to create a vmware VM for me to test?
> 
> * Use vSphere ESXi 6.7 or 7.0 GA.
> * Create VM using vSphere Web Client and specify 1TB VM Memory.
> * Install RHEL 8.1, that's the guest used in this test.

OK, I see. The draft patch fix the original issue, seems some boundary
of memory region is not handled correctly. Thanks for confirmation.

The memory layout is important in this case. Not sure if making a VM gesut
as you suggested can also create a system with below memory layout.

[    0.008842] ACPI: SRAT: Node 0 PXM 0 [mem 0x00000000-0x0009ffff]
[    0.008842] ACPI: SRAT: Node 0 PXM 0 [mem 0x00100000-0xbfffffff]
[    0.008843] ACPI: SRAT: Node 0 PXM 0 [mem 0x100000000-0x55ffffffff]
[    0.008844] ACPI: SRAT: Node 1 PXM 1 [mem 0x5600000000-0xaaffffffff]
[    0.008844] ACPI: SRAT: Node 2 PXM 2 [mem 0xab00000000-0xfcffffffff]
[    0.008845] ACPI: SRAT: Node 2 PXM 2 [mem 0x10000000000-0x1033fffffff]


> 
> With draft patch, you should be able to reproduce the issue.
> Let me know if you need more details.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201103140352.GB3177%40MiWiFi-R3L-srv.
