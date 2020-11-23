Return-Path: <clang-built-linux+bncBC27X66SWQMBBBGY576QKGQEP4QAIOY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33a.google.com (mail-ot1-x33a.google.com [IPv6:2607:f8b0:4864:20::33a])
	by mail.lfdr.de (Postfix) with ESMTPS id 535C02C114F
	for <lists+clang-built-linux@lfdr.de>; Mon, 23 Nov 2020 18:06:13 +0100 (CET)
Received: by mail-ot1-x33a.google.com with SMTP id q4sf2418968otf.2
        for <lists+clang-built-linux@lfdr.de>; Mon, 23 Nov 2020 09:06:13 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1606151172; cv=pass;
        d=google.com; s=arc-20160816;
        b=M/b8B8CV+Q4rHkYI3K+KL8+YOdFE+r1sCSHrU9VLq9XBeqdim2GjylvzOSja+cPggF
         Ez6JFIANC3TaN4rSej6/Mxb65C0J0l+D7TPqOOFW2Z93KBGHHYWN0MeXkiADnXgnD4kN
         T8X7Kyo4E8ohuJGNiyWC3Sh3pq6DLbPhtD+Oo7iW6yvKnnuVu8DgTk+w2aQJVf6yYJXo
         28JzwIUccflz7mcXKzZ5aTvZ0B/QGUpwnojalFhF17ziCC09LxeAbdzX/h0LhHD4IdU6
         J/V5UM6qrULBntKll/eHuMWUQRKvosLpXWjvsr/1ctFTY2T+peNYohYVTr5ElJj36bU2
         OkWg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=b4AG1aF0uS6tKW4Oyfuys8j4vyauM4pFzNwHrL+RxYk=;
        b=zrQLieXyDtyWQJvxXD4D8T0tdaKy/iM5u4prbXrQtuGzuzTLrwnXvhtcxt3oMFe24J
         UE7nP79vUzMxg5UMPFU02/tstN5/QDc2vkeEZHNggRrTkxyVTzJPf1sNe6ZSgiQOUpCx
         u51vyujfdwWcYjicyMADQEs666g7WlIcNWGsM3WlBxGul76k7X1KjY9dN11Vr9/WAFwW
         B8Bj/yKKF2y021QMTnRaSk+KuiAFrgbI3qCwyEEsi5HnxziTooFtb5CegYX3xG28UK5J
         65xlz4XRso+KxHXI+Uvxf2obEEdPUdoSG2cYQ1Y8UeL6C4XDTiCZUn7oFxnzjdQ7bkU7
         fK/Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=BtEofZ03;
       spf=pass (google.com: domain of trix@redhat.com designates 63.128.21.124 as permitted sender) smtp.mailfrom=trix@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=b4AG1aF0uS6tKW4Oyfuys8j4vyauM4pFzNwHrL+RxYk=;
        b=hlD89LE3K+FqCzvXbi/kvSON98RXKUtojW25RGmgiZ9UfmdobQjkMdB+jjHwlkLZIv
         tjjKUQ1+HaDLw66EuWuWwiYsUgL6B7svzFBR4jlNkEsVPfbtd2w7Vqq+3fMhUDDkym+I
         rv/aqL9uSKD6duHELDlo+M82oQzW7PGHwU4s04gdONF2xNAseKfv3KBmJFCsRmSgVaT+
         FI+0dlUCq3+NCmMVZGTtKT3sJvbgfKESLvHOXK6NblzSRn90J4QUhVA7aXaAkFlY42Ah
         Lvux1lZ7XPH8m25Ql6G7x6ew1+GQFpH4YlJhq6vTZNJmF2rsdc3YOSyJQKyEwmxe5LTq
         btXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=b4AG1aF0uS6tKW4Oyfuys8j4vyauM4pFzNwHrL+RxYk=;
        b=VTdMHOn/7zLNqe9ykhBYRz5wOacgj7+Ad1VBzWRimj4NEO0tyyJyQqLEtvcvrujTJ9
         +TQgqikuhH2OFDN3DcwNZvOeQsVWvZ9qWlq/8LbH+JfcDJFGjsnLtZxKBWpw9u9KkzRL
         4bfmmQLlb0pBtplIQhxMfYuTebiPD2JuXr3dI7LVjr4ku5LCPYOR83lUbdbNVStkmJV5
         1R4Ntpv44dG67RXEiNSZrzWlZ3L65aIBortnsjZTSBI/aLl2XdWBPBXOzHCRAf2ZC1BT
         72pEsVKfQsfQvgXAfIhf2cS/8A8xrg2zsgKGOToiLuy075lThcZmr5cMxMv98cxO1w1n
         uWxw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532E8+rHHmUBeULfvlgtPvhxwlnVNZ//WspIJ1uhvAu55zZtvhLF
	QFv85pIWjBRu6khh+F2VAZI=
X-Google-Smtp-Source: ABdhPJwzlnvFJbadiFxjouC22wErODooDDk2Q2HX8soLZ5bbL9s6bpLO5FCgpLs9ValW7v11T87eZQ==
X-Received: by 2002:aca:b887:: with SMTP id i129mr91463oif.25.1606151172113;
        Mon, 23 Nov 2020 09:06:12 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:5214:: with SMTP id g20ls3526010oib.9.gmail; Mon, 23 Nov
 2020 09:06:11 -0800 (PST)
X-Received: by 2002:a54:4603:: with SMTP id p3mr77469oip.127.1606151171686;
        Mon, 23 Nov 2020 09:06:11 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1606151171; cv=none;
        d=google.com; s=arc-20160816;
        b=pJu48YOoOVIjceGV4nLaW7Sc8d0tcu+dstIL4orRAbWwpPswcaFZmDH1KRuVJdL+sG
         5r20qvb7ja6zlMGmgwjcZ2c0uYWKEdUftYJ8iM8ekzCI0dIwX7kVgz0x9/omQ9NUx7c5
         fm+Y2rYkwrDQOBMEKMb8hc/0TgkTXbluoizbeCFeTdCWsXDrLQuhkmDG1Q5NaXmBpLuU
         PniuBScP4+y5hsR3shveRutbBy7+TyQ1zv20WL38tXxf7vOyy4rlVmCTUk4m1t8jmfJJ
         K2cGpBCQ1JcFbz+P+3iLVwZor0XDQuUeD3JoYPjmaFhkE2mrRcKIr93sh+N/xwIqqbby
         zTCQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-language:content-transfer-encoding:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=ETdBmUCF01QVQJOZ+sQu9TUGQeVKu9xOEmE1E5gBvfU=;
        b=ZPI+Hn4NXlv8Y75gf+hHPGCXB0JQ5HV6nkQUqHlGqoSsy0vc16ksxm7gpRMyohvmjv
         aQdI74mwZqEu/FnU6327nvma8Pm3CpAKvYiGepeNwZtb1AWjnldtrglFDvNRe1CFZBjI
         tVHOEpkAzeUOqQrf7w9UmOwYDiTKz4Ho7f+wpBMO5M4DACN+t0Mf68wj4hyAOPXPssWN
         KU7X0DFlT8Dder+2YhFFrTQOaeEJ0KhhCzZ1GfyU38DPGKt/+S+N+ZNbwu3hd8qsELRH
         u+W5Qfdubu9s9Q/Zc2C2CWcfS6F0cQ+NFBqulxAWHuvJo3+586MeyLEfJXwR+vOQ14nm
         9PVw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=BtEofZ03;
       spf=pass (google.com: domain of trix@redhat.com designates 63.128.21.124 as permitted sender) smtp.mailfrom=trix@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [63.128.21.124])
        by gmr-mx.google.com with ESMTPS id f20si304254oov.1.2020.11.23.09.06.11
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 23 Nov 2020 09:06:11 -0800 (PST)
Received-SPF: pass (google.com: domain of trix@redhat.com designates 63.128.21.124 as permitted sender) client-ip=63.128.21.124;
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com
 [209.85.219.71]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-250-au32vl2RM6uLxUjejArbVg-1; Mon, 23 Nov 2020 12:06:09 -0500
X-MC-Unique: au32vl2RM6uLxUjejArbVg-1
Received: by mail-qv1-f71.google.com with SMTP id cu18so13350301qvb.17
        for <clang-built-linux@googlegroups.com>; Mon, 23 Nov 2020 09:06:09 -0800 (PST)
X-Received: by 2002:ac8:5d53:: with SMTP id g19mr70870qtx.354.1606151168818;
        Mon, 23 Nov 2020 09:06:08 -0800 (PST)
X-Received: by 2002:ac8:5d53:: with SMTP id g19mr70839qtx.354.1606151168572;
        Mon, 23 Nov 2020 09:06:08 -0800 (PST)
Received: from trix.remote.csb (075-142-250-213.res.spectrum.com. [75.142.250.213])
        by smtp.gmail.com with ESMTPSA id o187sm10226153qkb.120.2020.11.23.09.06.04
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 23 Nov 2020 09:06:07 -0800 (PST)
Subject: Re: [RFC] MAINTAINERS tag for cleanup robot
To: Joe Perches <joe@perches.com>, clang-built-linux@googlegroups.com
Cc: linux-hyperv@vger.kernel.org, linux-kernel@vger.kernel.org,
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
 <2105f0c05e9eae8bee8e17dcc5314474b3c0bc73.camel@perches.com>
 <6e8c1926-4209-8f10-d0f9-72c875a85a88@redhat.com>
 <859bae8ddae3238116824192f6ddf1c91a381913.camel@perches.com>
From: Tom Rix <trix@redhat.com>
Message-ID: <88eeba27-ee36-df63-8cd9-3cccbe5e0850@redhat.com>
Date: Mon, 23 Nov 2020 09:06:03 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <859bae8ddae3238116824192f6ddf1c91a381913.camel@perches.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
X-Original-Sender: trix@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=BtEofZ03;
       spf=pass (google.com: domain of trix@redhat.com designates
 63.128.21.124 as permitted sender) smtp.mailfrom=trix@redhat.com;
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


On 11/22/20 10:22 AM, Joe Perches wrote:
> On Sun, 2020-11-22 at 08:33 -0800, Tom Rix wrote:
>> On 11/21/20 9:10 AM, Joe Perches wrote:
>>> On Sat, 2020-11-21 at 08:50 -0800, trix@redhat.com wrote:
>>>> A difficult part of automating commits is composing the subsystem
>>>> preamble in the commit log.  For the ongoing effort of a fixer producing
>>>> one or two fixes a release the use of 'treewide:' does not seem appropriate.
>>>>
>>>> It would be better if the normal prefix was used.  Unfortunately normal is
>>>> not consistent across the tree.
>>>>
>>>> So I am looking for comments for adding a new tag to the MAINTAINERS file
>>>>
>>>> 	D: Commit subsystem prefix
>>>>
>>>> ex/ for FPGA DFL DRIVERS
>>>>
>>>> 	D: fpga: dfl:
>>> I'm all for it.  Good luck with the effort.  It's not completely trivial.
>>>
>>> From a decade ago:
>>>
>>> https://lore.kernel.org/lkml/1289919077.28741.50.camel@Joe-Laptop/
>>>
>>> (and that thread started with extra semicolon patches too)
>> Reading the history, how about this.
>>
>> get_maintainer.pl outputs a single prefix, if multiple files have the
>> same prefix it works, if they don't its an error.
>>
>> Another script 'commit_one_file.sh' does the call to get_mainainter.pl
>> to get the prefix and be called by run-clang-tools.py to get the fixer
>> specific message.
> It's not whether the script used is get_maintainer or any other script,
> the question is really if the MAINTAINERS file is the appropriate place
> to store per-subsystem patch specific prefixes.
>
> It is.
>
> Then the question should be how are the forms described and what is the
> inheritance priority.  My preference would be to have a default of
> inherit the parent base and add basename(subsystem dirname).
>
> Commit history seems to have standardized on using colons as the separator
> between the commit prefix and the subject.
>
> A good mechanism to explore how various subsystems have uses prefixes in
> the past might be something like:
>
> $ git log --no-merges --pretty='%s' -<commit_count> <subsystem_path> | \
>   perl -n -e 'print substr($_, 0, rindex($_, ":") + 1) . "\n";' | \
>   sort | uniq -c | sort -rn

Thanks, I have shamelessly stolen this line and limited the commits to the maintainer.

I will post something once the generation of the prefixes is done.

Tom

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/88eeba27-ee36-df63-8cd9-3cccbe5e0850%40redhat.com.
