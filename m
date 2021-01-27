Return-Path: <clang-built-linux+bncBCSJ7B6JQALRBSHNY6AAMGQEBRJQLZA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x93e.google.com (mail-ua1-x93e.google.com [IPv6:2607:f8b0:4864:20::93e])
	by mail.lfdr.de (Postfix) with ESMTPS id B32303067CD
	for <lists+clang-built-linux@lfdr.de>; Thu, 28 Jan 2021 00:27:05 +0100 (CET)
Received: by mail-ua1-x93e.google.com with SMTP id u32sf947101uau.21
        for <lists+clang-built-linux@lfdr.de>; Wed, 27 Jan 2021 15:27:05 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1611790024; cv=pass;
        d=google.com; s=arc-20160816;
        b=ztB/6vj43ocJ0uZkYjKTrugMolJuCApY6jCjH72JkSay/U/WudELPbioY+DawvWELJ
         XmprTwBQ21G/bLk2Bdek/FRoH8pNblytOHMRXIHtA40IaTZYLuc/2PO6sAq3u/I5zrUs
         O0V27KBwU3lcGRPp/hnRrzQSGcFHVsEnGhnUf3dWp6omM1aOTmHnKY9kgoDr6nbJACfr
         SEZwyvXvzrU7T2CkJUbUvJ+GjmzUhZemD1gqrl9Tftiza8GU74xRn3S6CizKoGMlweG6
         1LVc4fKkqZMEONCSUho7swrDnyzHss3xOBfJiGp2bzQ/Xf2hVp7bPBFiuLT3vH8iOX3D
         j6kg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=UUHTESGO7Eg6nziULGVp2u7ucETwqNiLxiPNSK/fZOk=;
        b=Wsv/1cmH+UacSX4PJJojogThf4s2y3nSlozHDcIMntpHwaAczG5N9x3f8sOJwmfdYt
         mpOeeza0bhojmtd1nawZrHHYGOHX3Pa+dfGGfXCVdlhvXIQcf1+wdZY+Cq5nDMt533y6
         6FOLWhLqXuuPxUqFOIyuG+gJ9qdi28vszibL7Oym9P+Yr4BCAzaiWjaAkVKwBtCat1hJ
         FqJOc0zeZQ69Hj+s2RP7IX8TnWfCrENxvgrxoE/Rx8zLBZ6ELdEgMkPn1xoa7/WxqadL
         kz2SsqqMd3rcLTdwP/PgiN8i9m27WQkLCDmG4vvdVjBEcEaZu6LsmLCsI7ZmI/QIu4Xf
         36+A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=V5Hf+EOs;
       spf=pass (google.com: domain of jpoimboe@redhat.com designates 63.128.21.124 as permitted sender) smtp.mailfrom=jpoimboe@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=UUHTESGO7Eg6nziULGVp2u7ucETwqNiLxiPNSK/fZOk=;
        b=th5ChyUlRDot1PKdg3UF5+iUNDpljt+RtVeQ/hGOXM1FVLIBicWP0+zQGfLFfwFsqK
         lQt0JfsMZA6DSHcrmEA3MyIZhwNNNWXp4RZtgoSIiC/HcIdrzwehth8Zh0M9L3H9wIl5
         OI2oJnvE4UpruUk+oK0KJpeFpfVbf6YG7agJTIn6FQqb2V6r49fG2zPnSbW4GOyKVbqj
         NO3r/9onQgvRCyL8BYqYYEwkdYVJC6F6/gA4VKckFsHzbGAtvzvVQf+l6hyiWkpxDkuj
         tpO4OhVkIE89qYbqo85iaBvRg39fT5k/WjY/KnPI+7fUbcvnRb0N0GpX0RCjxzAwowjs
         vEvg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=UUHTESGO7Eg6nziULGVp2u7ucETwqNiLxiPNSK/fZOk=;
        b=B3crKUM9McuA8XsTnbxBK6Lwt3t4FIemjKDQGQX0futMPir++aQ+fSE/R0tioQbqqr
         HCV2a4uXrpS0oRmPUv1cxkId7+UDoyzUUVXVdnjcooe/4tE2vvAZKPYzLr+5vVv64Wy7
         one76t0CsSnEsrctLdkTDtgEG5z3pB3eZuttoSylq8gyu6wVbiyatTybXV47Ru2m0PLY
         XUTIJlSZnTEZ+nW/fFny9eR0+DrF9+Ym/Ugubcya1aBJc6cWRkWloiv/CVe8Bx4lktZG
         WEathDvuEggSEgVAIVaDu/2cyQJ3o4F8+cta2OAIGlY+MBEUTSkE650gz0ZvQcbYLKr1
         z3Dg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5310VRUCbuckgknF1lrBsLM6yLjiLRIvHjcdwY7XzLZY0s/JuQcN
	wT3WLqciKh+8Fn9KM32S6wI=
X-Google-Smtp-Source: ABdhPJxpMHZ0Oc/xOL9wXXXyUAG+huydLwQMz+flyKVrq3oO2VTd8u5UiN1NiHtmSrkAUxgXYgWv9Q==
X-Received: by 2002:a1f:1c4c:: with SMTP id c73mr10152984vkc.22.1611790024593;
        Wed, 27 Jan 2021 15:27:04 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:f898:: with SMTP id h24ls501630vso.5.gmail; Wed, 27 Jan
 2021 15:27:04 -0800 (PST)
X-Received: by 2002:a05:6102:36a:: with SMTP id f10mr9925274vsa.52.1611790024114;
        Wed, 27 Jan 2021 15:27:04 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1611790024; cv=none;
        d=google.com; s=arc-20160816;
        b=LzkBqFkssz7gKm/gfzlk1gucm3hfEr2616dVkxLNQV1mBD1Z+FgKr+nm/B/8IeiA+1
         wQHXnNbLN5W5B1wQHiSm56wv09o8UUSup5MPu+1WfQBE3QCWaVZE+ZWBEBH91L0VrYb+
         kkMJvvzC3FGFV49roK3O1N+jNrU7Cw4noPMbQLB37gvU4Mi1/fsqBw+QJhgYx24s2p0V
         DcHddeiUtUPAs9NvwRuemsflLOv5EILGiJQYqHmtI8G0gbRn6pXkELN2FUpCgw7+WPMo
         d+CRYPvWUCFvgi3xt0zNMFeThOEHrBMMtQCAe70AGyrWvrNv3aPVQFGoGdogHT+d+yFB
         plDA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=UmZtO9S6cUQ2CC3kIdExR5VZtUZQ7YeAA3zNA2d3Y68=;
        b=G2+KlfzjekusxHE9kGOyVDlnFHOG1jXtckuxEGn16I7ntkW0DmqJBWNHyrkGU5pBuk
         FkSrMz7pO4k2oWm8CWmh/gstLA/o05r0A4/JRvk5MbQ/flu87/njYU28PnTPTTod/d35
         t96DfpTfcy79SPMAyl2JXesn3TaQr0hwa49TpqK4zqoOHWEghyrppt0icGQEbzAT9yMi
         llUloJUvvauENpL2iDgOaqULqThQk3GCG+ROVE782cvoP9FlIruAnpU9+9dqzwYITAVg
         LcYXK/qzHNK58+gElt/wEPrrgGFUNV/dLk/flz310afGUZMGDf6f794Osm6jjz86L3mU
         GMQg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=V5Hf+EOs;
       spf=pass (google.com: domain of jpoimboe@redhat.com designates 63.128.21.124 as permitted sender) smtp.mailfrom=jpoimboe@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [63.128.21.124])
        by gmr-mx.google.com with ESMTPS id g17si213774vso.1.2021.01.27.15.27.04
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 27 Jan 2021 15:27:04 -0800 (PST)
Received-SPF: pass (google.com: domain of jpoimboe@redhat.com designates 63.128.21.124 as permitted sender) client-ip=63.128.21.124;
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-508-yX2crCwSMlywEzTRrvJlVw-1; Wed, 27 Jan 2021 18:27:00 -0500
X-MC-Unique: yX2crCwSMlywEzTRrvJlVw-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 25DAC911E3;
	Wed, 27 Jan 2021 23:26:57 +0000 (UTC)
Received: from treble (ovpn-120-118.rdu2.redhat.com [10.10.120.118])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 6681D10016FA;
	Wed, 27 Jan 2021 23:26:53 +0000 (UTC)
Date: Wed, 27 Jan 2021 17:26:51 -0600
From: Josh Poimboeuf <jpoimboe@redhat.com>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: jthierry@redhat.com, ardb@kernel.org, broonie@kernel.org,
	catalin.marinas@arm.com, keescook@chromium.org,
	linux-arm-kernel@lists.infradead.org, linux-efi@vger.kernel.org,
	linux-hardening@vger.kernel.org, linux-kernel@vger.kernel.org,
	mark.rutland@arm.com, masahiroy@kernel.org, michal.lkml@markovi.net,
	peterz@infradead.org, raphael.gault@arm.com, will@kernel.org,
	clang-built-linux@googlegroups.com
Subject: Re: [RFC PATCH 12/17] gcc-plugins: objtool: Add plugin to detect
 switch table on arm64
Message-ID: <20210127232651.rj3mo7c2oqh4ytsr@treble>
References: <20210120173800.1660730-13-jthierry@redhat.com>
 <20210127221557.1119744-1-ndesaulniers@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20210127221557.1119744-1-ndesaulniers@google.com>
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-Original-Sender: jpoimboe@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=V5Hf+EOs;
       spf=pass (google.com: domain of jpoimboe@redhat.com designates
 63.128.21.124 as permitted sender) smtp.mailfrom=jpoimboe@redhat.com;
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

On Wed, Jan 27, 2021 at 02:15:57PM -0800, Nick Desaulniers wrote:
> > From: Raphael Gault <raphael.gault@arm.com>
> > 
> > This plugins comes into play before the final 2 RTL passes of GCC and
> > detects switch-tables that are to be outputed in the ELF and writes
> > information in an ".discard.switch_table_info" section which will be
> > used by objtool.
> > 
> > Signed-off-by: Raphael Gault <raphael.gault@arm.com>
> > [J.T.: Change section name to store switch table information,
> >        Make plugin Kconfig be selected rather than opt-in by user,
> >        Add a relocation in the switch_table_info that points to
> >        the jump operation itself]
> > Signed-off-by: Julien Thierry <jthierry@redhat.com>
> 
> Rather than tightly couple this feature to a particular toolchain via
> plugin, it might be nice to consider what features could be spec'ed out
> for toolchains to implement (perhaps via a -f flag).

The problem is being able to detect switch statement jump table vectors.

For a given indirect branch (due to a switch statement), what are all
the corresponding jump targets?

We would need the compiler to annotate that information somehow.

> Distributions (like Android, CrOS) wont be able to use such a feature as
> is.

Would a Clang plugin be out of the question?

-- 
Josh

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210127232651.rj3mo7c2oqh4ytsr%40treble.
