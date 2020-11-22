Return-Path: <clang-built-linux+bncBC27X66SWQMBBGE35L6QKGQEA6RPZDA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x13e.google.com (mail-il1-x13e.google.com [IPv6:2607:f8b0:4864:20::13e])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D8E72BC6A7
	for <lists+clang-built-linux@lfdr.de>; Sun, 22 Nov 2020 17:11:06 +0100 (CET)
Received: by mail-il1-x13e.google.com with SMTP id a10sf7468076iln.0
        for <lists+clang-built-linux@lfdr.de>; Sun, 22 Nov 2020 08:11:06 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1606061464; cv=pass;
        d=google.com; s=arc-20160816;
        b=VjxwdYvNa0/T/l2VXRUk5UEd/JylmB7Eu6WiuMkzMMnhsMln77IAgKDujfONReOR6S
         /m2FKC8XglFVSG9yW2+BXv7xlxezFcAnQRUS84jesa2l0tX2bvZ0gswNT+x5AgOpe8QJ
         MVgF9NEcWxYwSDoIT4NqMcCjxn6pCg5YEDafC9nnYBb2Nlc++I+BDI+c7LhqcpB3JpK8
         2rqmO2gG/uZG6eWpzZ6Hfk/OXXkL9h2D/4Byw/FVbF/e/QtxiMwHfUrD9anqVupADEea
         xw0EapiCM6ZTdtDpeL0KEWbL5uy9H4gM3XF0lmrOhMaMJZ05jBHIZy/wLF6s2p36kjtf
         3xvA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language
         :content-transfer-encoding:in-reply-to:mime-version:user-agent:date
         :message-id:from:references:cc:to:subject:sender:dkim-signature;
        bh=bcIDDGUhappgYDAjA3pXVjSbmAd2UVoOcFxjsEJU5ww=;
        b=kwBnC+Mm62niqsP7uxaCziMoentq2+wD3JM/vP4y7TUGprkjtBIQo7lzAYhS0nsonz
         VCbwYhe+bGsQWTvNqYzbk9KHFi8OpNjWTUWAVDT03gNSZd/Mt+e7jv3Ydbvi5XssOW9O
         ePGs+PSDfBsugFG3hg58Jxm5Xj77FeHWW6KUoXCub7cSY5YlyXzLiAg2IZbgw0uQ+O+e
         Bg143NwwlnChLOVRtB4JMCRicqE8XnvZAOTUo09WavttRsz2NBdKm4S1zAE4KMAaIOeW
         QBd+wnK3Om2dljEuqaYVbdSP0v5Tsixab35c8EcvkPirUdjQCNKq3lM2/sm7v2qWF4r4
         I/vw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=JuTdFtHh;
       spf=pass (google.com: domain of trix@redhat.com designates 63.128.21.124 as permitted sender) smtp.mailfrom=trix@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-transfer-encoding:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=bcIDDGUhappgYDAjA3pXVjSbmAd2UVoOcFxjsEJU5ww=;
        b=cCLmSdkqLUk4v5nZZEzmOMDUPQmsUn2tbrA+mjbn0RP/gYkh2hl7d7c2nMxjeE564e
         BpKdJjQLxlZ0tzRt/POhmlmXqAuc7dEBfw0QY9Aa5985i53EWkVKstPXvv0fUPTvQS4Q
         96T4sZydi1fVcJw1lTonunL3Qa7SPb4rIvnQMaP7oQ18Gqzam6Uww4PxvRzbNO8caVRS
         pyLsPezWW89PRs0M9YEBFWCtohqxav4GaKhIBhlYa86dpeFWP6QUzIzlRFbvpOCW8AMr
         CYBajN41cpj/f1vcY7/2i1kgX9cqiNhcPRkQURJQbq+AqUdDvjNAwa4bNrDyKWz0GFnP
         Qk5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-transfer-encoding
         :content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=bcIDDGUhappgYDAjA3pXVjSbmAd2UVoOcFxjsEJU5ww=;
        b=dJV2yGI6yXooszDvvrkTotwUatRESBGtfO8obqIr441DayxGqaT+eoWOKYU6k6URLC
         qEnVmR2MuqZrnwvP3konDPkNhp5YmtO2HUMtnZ9fEp5/GstTNv2cRY/dMWzQWO6+UHcT
         wk3Yr51wMtIZsOELKwjz67wE0PEBG2JWooVDTnlSr7Y9tLsAtQLjfoOuj9KWM0j6eKuI
         BRuT3xZ2t+Qjm2LTfCGHIsO088/sIgE1gTAxymGGnuVh6ef/9Ga3Eq3IcT6GAgu/TAc7
         LJ5z6axIc7SFjHyUaWWZrDXejui/Ca2Lx6oFfgtiHYai8Eo9uhLuWXVnZ8x9QCJ6gmDI
         ZW/g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532O3l1mnSmR1n77kTknKe/G14e3NkbSR/RbaaPTMjyN1XkQCHxh
	HWqkf2QlJmJw+nb066nqXP8=
X-Google-Smtp-Source: ABdhPJyo+vUIAGq9B7ZMBOo5soplHIpXl31AenWQCND8ftWMkNWgJKcbt7CJqzcC69VwfuCGBgC0Zw==
X-Received: by 2002:a5e:d80f:: with SMTP id l15mr31479354iok.21.1606061464612;
        Sun, 22 Nov 2020 08:11:04 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:bb4b:: with SMTP id w72ls195367ili.9.gmail; Sun, 22 Nov
 2020 08:11:04 -0800 (PST)
X-Received: by 2002:a92:da87:: with SMTP id u7mr101963iln.230.1606061464141;
        Sun, 22 Nov 2020 08:11:04 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1606061464; cv=none;
        d=google.com; s=arc-20160816;
        b=JLyxmRmbVxA/uAq5Hdqkqs6Dv5orbTanmrgaKrBYAZB4rzI+4ELzqfd8saM8G7TKOQ
         NaDAJK2zrp01aWUPsezUgZXUAzCdc38zFHZfLcxFqGRjpVn4sv6aHA4cFfSW27ZYTONE
         WfZqI5ER+cdYdn6IRzjWQY/VHTIh3dMsDKfwT6I/j99eTDMZ5hXJlHdiHrLXdR1ydShg
         niyxVJujgkxmbAeqy/EF4aPy6vtQ2N7A3tMMzayeluPV4DK3VP/anm+XaUIgxEJlegiv
         47z2RurqsIf5m7pwb00a/Nn3bo31EJXPWJ4CuXx6kyqH90izNtGEYi/x/Hv2zgkAWuiy
         Hreg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-language:content-transfer-encoding:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=D4o3+oRulyAmQWJaTM5GlynW0/tmbkOzx3PzhPB5iTg=;
        b=DBOGxvbh2dCT0n2iiDDS2d46fB/sxHQQmB+G5aGJbvU2Y5tT/dcHot9srGog2WiA0S
         ZiQQe0UIjuis2QYwEux441QzZoDRov5Jt1DQyuhy342m6nlEbbmpgLT5ivIFSWlq86Ly
         wnVBQIGZF/PxFmH0KWtpaSPZ9v6E2WiOEOPOqKoahzRBGNMiRU4o19utXkK38S7WzYkg
         iKsNrDgvg0jAjl+zffHagJhA7I3G1mjsRZCXybcCFqjzKBATP5GRQHLMXCpPCaLoMDKG
         Snpn88nA3Mm4Oeec+uHwLSfq17wVToKuwpkfE9wgXxI/l4vkiSR+WEtHVTjvlkkUHuKX
         dLNA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=JuTdFtHh;
       spf=pass (google.com: domain of trix@redhat.com designates 63.128.21.124 as permitted sender) smtp.mailfrom=trix@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [63.128.21.124])
        by gmr-mx.google.com with ESMTPS id u4si492573ilk.5.2020.11.22.08.11.03
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 22 Nov 2020 08:11:04 -0800 (PST)
Received-SPF: pass (google.com: domain of trix@redhat.com designates 63.128.21.124 as permitted sender) client-ip=63.128.21.124;
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com
 [209.85.160.198]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-194-UzHQf1soNZm9mm19wprk3w-1; Sun, 22 Nov 2020 11:11:00 -0500
X-MC-Unique: UzHQf1soNZm9mm19wprk3w-1
Received: by mail-qt1-f198.google.com with SMTP id r29so11672619qtu.21
        for <clang-built-linux@googlegroups.com>; Sun, 22 Nov 2020 08:11:00 -0800 (PST)
X-Received: by 2002:ac8:5a8c:: with SMTP id c12mr23364805qtc.97.1606061459263;
        Sun, 22 Nov 2020 08:10:59 -0800 (PST)
X-Received: by 2002:ac8:5a8c:: with SMTP id c12mr23364770qtc.97.1606061458997;
        Sun, 22 Nov 2020 08:10:58 -0800 (PST)
Received: from trix.remote.csb (075-142-250-213.res.spectrum.com. [75.142.250.213])
        by smtp.gmail.com with ESMTPSA id l3sm2779806qth.13.2020.11.22.08.10.54
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 22 Nov 2020 08:10:58 -0800 (PST)
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
 <ddb08a27-3ca1-fb2e-d51f-4b471f1a56a3@redhat.com>
 <20201122145635.GG4327@casper.infradead.org>
From: Tom Rix <trix@redhat.com>
Message-ID: <0819ce06-c462-d4df-d3d9-14931dc5aefc@redhat.com>
Date: Sun, 22 Nov 2020 08:10:53 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <20201122145635.GG4327@casper.infradead.org>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Content-Language: en-US
X-Original-Sender: trix@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=JuTdFtHh;
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


On 11/22/20 6:56 AM, Matthew Wilcox wrote:
> On Sun, Nov 22, 2020 at 06:46:46AM -0800, Tom Rix wrote:
>> On 11/21/20 7:23 PM, Matthew Wilcox wrote:
>>> On Sat, Nov 21, 2020 at 08:50:58AM -0800, trix@redhat.com wrote:
>>>> The fixer review is
>>>> https://reviews.llvm.org/D91789
>>>>
>>>> A run over allyesconfig for x86_64 finds 62 issues, 5 are false positi=
ves.
>>>> The false positives are caused by macros passed to other macros and by
>>>> some macro expansions that did not have an extra semicolon.
>>>>
>>>> This cleans up about 1,000 of the current 10,000 -Wextra-semi-stmt
>>>> warnings in linux-next.
>>> Are any of them not false-positives?  It's all very well to enable
>>> stricter warnings, but if they don't fix any bugs, they're just churn.
>>>
>> While enabling additional warnings may be a side effect of this effort
>>
>> the primary goal is to set up a cleaning robot. After that a refactoring=
 robot.
> Why do we need such a thing?  Again, it sounds like more churn.
> It's really annoying when I'm working on something important that gets
> derailed by pointless churn.  Churn also makes it harder to backport
> patches to earlier kernels.
>
A refactoring example on moving to treewide, consistent use of a new api ma=
y help.

Consider

2efc459d06f1630001e3984854848a5647086232

sysfs: Add sysfs_emit and sysfs_emit_at to format sysfs output

A new api for printing in the sysfs.=C2=A0 How do we use it treewide ?

Done manually, it would be a heroic effort requiring high level maintainers=
 pushing and likely only get partially done.

If a refactoring programatic fixit is done and validated on a one subsystem=
, it can run on all the subsystems.

The effort is a couple of weeks to write and validate the fixer, hours to r=
un over the tree.

It won't be perfect but will be better than doing it manually.

Tom

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/0819ce06-c462-d4df-d3d9-14931dc5aefc%40redhat.com.
