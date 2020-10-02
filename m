Return-Path: <clang-built-linux+bncBCLMT5XNV4GRBEFA3T5QKGQEQYXCMTQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3a.google.com (mail-io1-xd3a.google.com [IPv6:2607:f8b0:4864:20::d3a])
	by mail.lfdr.de (Postfix) with ESMTPS id 58765281146
	for <lists+clang-built-linux@lfdr.de>; Fri,  2 Oct 2020 13:33:37 +0200 (CEST)
Received: by mail-io1-xd3a.google.com with SMTP id a2sf740532iod.13
        for <lists+clang-built-linux@lfdr.de>; Fri, 02 Oct 2020 04:33:37 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1601638416; cv=pass;
        d=google.com; s=arc-20160816;
        b=Gs+FGlk4/ZMHmafVbCp3HR/rXM47aFZwRW3jKch+o1i5c5usBX2MBKLUOlEA8eRRUR
         x8Cd787+hpQ+3FvsUA/qLuFaqijCy5I0hrKFehHeM3RlW7HIIPoO+EFe7cTlnQdPI6Br
         foJzul6XypWaS6hFT9aC7lreAv3SgBgRqN8iYSEimT9W4yRtmTEEku+vVDPovHrxnKgl
         +KLV+oElFJ0lWYc8sorw2RFtbf4fErc4Jc9efnUN55+ugNWsfb+QCu4wbLkVVlMvDI98
         TzQt1MXwbOnjf3I7leA2WSIMPbjhPfW9NhsTVQt77RBQduUvsOpzxG877SilQq5eEXwy
         d/LA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:organization:autocrypt:from
         :references:cc:to:subject:sender:dkim-signature;
        bh=7zIOD5dFQYFm24zasN4K66fhu+3WgKpkidZ+cIUOQ1o=;
        b=YG8iz3pOl383FuCII6fe8mMLvjb70E/ahRq9eGEPRtwXQoIvoLHx0ezGV2ohl5SWiE
         N2FMow02U1H/zZpSJLoCfFB6loU0jiZxo5eGzirUyaeEXyM9mLamVz7RLzRzOKXIe4gL
         tTZuGs6yILiXKm17pFTMjYzyipwd3gCjUjlO8Dsi3j5R1WWXx+223VBno8k77Murs3sd
         CLuQzgGejdwnojAeRDItJOs9Qq8aH84IXBsaPqg2oTOaD4l6VeplsLAXqDmjzVZ6NIMY
         vkLGQ9mgfboi2bnJBOdGCB7G4LDM0RW6oyv7SrYSRgdwCZDzuHWLxM3QWU3cvdCgW63j
         M/KQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=DTohmhba;
       spf=pass (google.com: domain of nickc@redhat.com designates 63.128.21.124 as permitted sender) smtp.mailfrom=nickc@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:autocrypt:organization
         :message-id:date:user-agent:mime-version:in-reply-to
         :content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=7zIOD5dFQYFm24zasN4K66fhu+3WgKpkidZ+cIUOQ1o=;
        b=OunCf8RouyORBDdivNaZWiqo4szKOnX9eubhQpshLtjvcbLOhRtEh/QzdKUUX92RA/
         0XosakFD0RMe80ZskbJ3YH8rJqTTf5HEBxuLJF+UqokBIQRQbrK+gFJ4/YkNFUE5kFb1
         eI7ptDsyVC1yXtbpXNlQzej8sl/+LitssaGTNs/rhy0sbhLXI0Crkt5EsIg1wcP3NYwl
         YtwFSSlGCpAqJu5Mkr4tjCbOmtpGoZ/2y1Qd7kN3SX6nFzlwWCoeCXRRu/92SpnZYzzy
         V8XBsljvhyYo5orLv20L1RbFSheFbnkYtp3Yz4QND+56vfhxrCE5mNM69K/lZ/tWBpFK
         Sp+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:autocrypt
         :organization:message-id:date:user-agent:mime-version:in-reply-to
         :content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=7zIOD5dFQYFm24zasN4K66fhu+3WgKpkidZ+cIUOQ1o=;
        b=Xp+l4ekYAnk+sgBgV5j5G3GC21c+1YxtESH9x4Ansgnq1wcP45/q0sOvik7PBOy7a1
         hubqRec6B8/Svo8bgvjV4/WFhwpMhCuMy7rS6OmzGgtFq1bxooZ/Bz0XQBFjiTZtf9tY
         hH677uMaXCXmBvr7kajomE5MdvFfgHVvgKHSeOXT4e9hFKSnIrW7tAVMkMJ12m/q9uhw
         TjjXAmdVj5rBFEQ7CeuLFJzbrUZhM+Q5r1SnEthRz/SdB9f7htiDshudr/aM+OqObkt/
         2gdM2fZyybhfj52kFgqyBsc0dFaOOxPX4ZzmXkrvSwFSh/XyJoucsLifdCSKTfkGsGVJ
         YDig==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533p0ZNNVl4pVfsuYZCf3UObB0BpyxXZV3p+sadZAyB2HAo1Cajz
	4NOxlxtjW5/Lb7WeLPGxtpk=
X-Google-Smtp-Source: ABdhPJxcZKg5hXfpbHWJHkm5WnfBXNUAE/Tabgip3CtDIhtTczG2QrO+6Sfogsv3X0COcoWFjK53XA==
X-Received: by 2002:a02:ab85:: with SMTP id t5mr1792174jan.51.1601638416241;
        Fri, 02 Oct 2020 04:33:36 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:8bc6:: with SMTP id i189ls270398ild.9.gmail; Fri, 02 Oct
 2020 04:33:35 -0700 (PDT)
X-Received: by 2002:a92:c084:: with SMTP id h4mr1522714ile.6.1601638415826;
        Fri, 02 Oct 2020 04:33:35 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1601638415; cv=none;
        d=google.com; s=arc-20160816;
        b=chycqSHV4BSry3JC48WcI49T0kEYcmlTSsXXVNjLOL6ROflagJm1pqSHcShVdz7ysT
         JDYcfje6zNq2ByCTOJzZSRrMFCF1BmKEznVi1CSwUU06rS3j4hQLmBQl4dusk3qegKo1
         KNK8zdAK/P7fJBaHPdeczrcrXSC/ze8cO/sdi7CYI3jXVxd+FYO8W6Y0dPnkK3ASjQfR
         k2l/BoTo3ThXJT22AVyQoTzPRV3IPlPXe0Y08UyUoE/5B3hSKKOjGgUKps6MuGiwrBNT
         4VeYISYe0NQ3oZnSTOsaVB8baHJGIpuKrCbaz9f26s9aP7d6dgK4tliMtgk026aQ/3+q
         c6qQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:organization:autocrypt:from:references
         :cc:to:subject:dkim-signature;
        bh=8vZo2mFm2ciX2DzJCWZZBr9gunYPcmiUmQLtKIWCGwU=;
        b=LQIEGnmlidAaMePAz21XZeN21RhVCxRUwI+PhblSsZkcJORQCauC551d7U11u6kreq
         KpXMi4gFbF/sMgi1zFV7DLGXufXfJoPo46dkXV3Iq+HAjjvJn87sYFBGoN8yN11YWLvM
         70XCMLb2GgXwW1oBkrzlc59nyCOQ7o1PwYe+FFCq+snfZMBYpT/jEswRUxw3EDnaNjUs
         5t+kLhHzIkUaWUQkdTH+ZRmicJu5tACxPgKnRB9gRAByL1sHsI9qRPNfkaGMpyA09NtA
         DK3tfk2YofCGX9VNqyfp4ZjxVQad/aSpxOZ4t1uMwcQLd/bNzxP61nwWDJE1csaqxEs4
         9P9g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=DTohmhba;
       spf=pass (google.com: domain of nickc@redhat.com designates 63.128.21.124 as permitted sender) smtp.mailfrom=nickc@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [63.128.21.124])
        by gmr-mx.google.com with ESMTPS id q22si62738iob.1.2020.10.02.04.33.35
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 02 Oct 2020 04:33:35 -0700 (PDT)
Received-SPF: pass (google.com: domain of nickc@redhat.com designates 63.128.21.124 as permitted sender) client-ip=63.128.21.124;
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-292-AD91f9nfMkemL8cn1D9ziw-1; Fri, 02 Oct 2020 07:33:31 -0400
X-MC-Unique: AD91f9nfMkemL8cn1D9ziw-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 267B0100C636;
	Fri,  2 Oct 2020 11:33:29 +0000 (UTC)
Received: from [10.36.114.142] (ovpn-114-142.ams2.redhat.com [10.36.114.142])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id BBF8C55792;
	Fri,  2 Oct 2020 11:33:24 +0000 (UTC)
Subject: Re: linux tooling mailing list
To: David Miller <davem@davemloft.net>, ndesaulniers@google.com
Cc: sedat.dilek@gmail.com, maskray@google.com, segher@kernel.crashing.org,
 linux@rasmusvillemoes.dk, clang-built-linux@googlegroups.com,
 linux-kernel@vger.kernel.org, postmaster@vger.kernel.org,
 peterz@infradead.org, behanw@converseincode.com
References: <CAKwvOdmFm9-FPrqt42NsusWRbDzNx6NF1GeSJhz_9kaAGV8eOA@mail.gmail.com>
 <20200930173719.GE2628@hirez.programming.kicks-ass.net>
 <CAKwvOdk+Rp0QGJmX07XxD8L7WVgco98LHFTu-R_2R22+UMVerQ@mail.gmail.com>
 <20200930.152652.1530458864962753844.davem@davemloft.net>
From: Nick Clifton <nickc@redhat.com>
Autocrypt: addr=nickc@redhat.com; prefer-encrypt=mutual; keydata=
 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
 6susi2ReUyNJEJaSnjO5z13TQ1U=
Organization: Red Hat
Message-ID: <fcbb4bf9-9a7a-bfe0-7f3b-088273c3ff51@redhat.com>
Date: Fri, 2 Oct 2020 12:33:23 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <20200930.152652.1530458864962753844.davem@davemloft.net>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-GB
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Original-Sender: nickc@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=DTohmhba;
       spf=pass (google.com: domain of nickc@redhat.com designates
 63.128.21.124 as permitted sender) smtp.mailfrom=nickc@redhat.com;
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

Hi Guys,

>> linux-toolchains@vger.kernel.org
> Created.

I have been able to subscribe to this list, so it looks like thunderbirds are go...

Cheers
  Nick


-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/fcbb4bf9-9a7a-bfe0-7f3b-088273c3ff51%40redhat.com.
