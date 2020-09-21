Return-Path: <clang-built-linux+bncBCSJ7B6JQALRB74IUP5QKGQEB3QHZAY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x339.google.com (mail-ot1-x339.google.com [IPv6:2607:f8b0:4864:20::339])
	by mail.lfdr.de (Postfix) with ESMTPS id E26652729CD
	for <lists+clang-built-linux@lfdr.de>; Mon, 21 Sep 2020 17:19:28 +0200 (CEST)
Received: by mail-ot1-x339.google.com with SMTP id g2sf2721524otr.4
        for <lists+clang-built-linux@lfdr.de>; Mon, 21 Sep 2020 08:19:28 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1600701567; cv=pass;
        d=google.com; s=arc-20160816;
        b=TzmQgMTB/Y/K826ONJL+15WF8Y3GiEpzD7pIn5Cp2Qv6gwr33bDvgwcJ/CjOYlxwvV
         pJBTlB56pnOSMVhXzHlBz/a69u3TZ7rewG03jEZ3fI8YPHZ8CPo0PXTCBchMzSDYVRLI
         JPbehqSdf9SBJleZh0icIqYhJP3gN1dHxhqnVX+cEd2m83aFrguwKViTucrMQAOsj0H6
         T/GnKQ91dac9VD/GC8WFlZRCgHLjoK2DxDhhk9fSnL9VXbFwEYqkyi4qkytZjds4mvS3
         FhBlQ6JUujauHDlTOgLZDFGQukgFzV5HFDUnlsgTpi9UkxWP1KW1P6MWs548BfCff5Vu
         k7iw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=/iRV/WuJ98P+NqCzRxBQ3eJ3aw1svQWaIjAAARTP40o=;
        b=al517q+1LeLgc0L7Upkgq6KUvCgmrdfkkBftehIHCnxijZolEynTgkY6E6bTC6J54i
         qurj8d3Ke0PI8yZKKxNt1AH1iOgY+iLX4tpb7dmVfd5VS8utGbOdxEbsjlXXwnZuMQQl
         IGCxdtmczGumdXTfZeKLmaugajAg+tAQ9z+7THPvLTAGsHXvk2hiFETn2BRvqKRld7uo
         bvBk2GC5daylUwVj6QC/zTz2oTVb0ba32elQ26xgWGuAK4VWzjGR9nbaxuHgSYrqMpD/
         wdhBAK585Dny28cOaXHcO8n+srJfrXvu/9HqlBSP3HPtc7m1teUpQPzYx7NW+n3C3uOv
         G2vQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=IOBjkXZU;
       spf=pass (google.com: domain of jpoimboe@redhat.com designates 207.211.31.120 as permitted sender) smtp.mailfrom=jpoimboe@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=/iRV/WuJ98P+NqCzRxBQ3eJ3aw1svQWaIjAAARTP40o=;
        b=F741MvOUVXqKNz7KDVY83vDq/N0PsldiIUH+17Xxabi5eKHROO8TNk8YD8gYDK8IyL
         En4gunNbLnQvmZiy49HFb2MnPmQFWFkI+DfqpnjWrrjB9Tj+wU1lgy4ECzUXyKyiUlCA
         eTJmPHfAqtWFpMT6gw/gtQR5NucZEX6fyPZVSaxDCbnbCjeYLYsydACao326VibSslMZ
         GwyJ37WdDg3PYdgz6gqzEl025UmoPkHuiY2e7EmyqKKQUkvO4o4ROt27zwgxgL4CDzF9
         o+N37apNXFbyUxO4Hht3qWrs3IFABEQAx4gQfVM77ouw4J09JSY2DjSh18Ze1Mi/IkRn
         NHfA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=/iRV/WuJ98P+NqCzRxBQ3eJ3aw1svQWaIjAAARTP40o=;
        b=evhnSJ9uca9X+E14z7Q2O52pFhXVAJCzpfdHm4uj7Z86IGQ1KrMK9h74HUA5q7AwDB
         5Ii4xmOpE7g++DgcC5N+M0WwFYld//9kZuuKSf6cV3H2Dk51/V9ES8zUkJVZOeAlgGk1
         fzQrwCrBR/Br9SiLoPISdUH+wHWxdaOKAzyEMUtWt/URlR2Q/QNesVt0zkHcG/GWhjvh
         9+HX38GdWbGw2yWrI9PghbkzbHC7FKo2FOL+vOH0McUXo8TBRw4tJwxpSHyH0bW9y539
         ZC9tI8/8mXRwwh2Wwpe+M7FBVptw6hZ8N8nCkG0+absp2TcIYKbxTArw8+x/GNGzu00x
         YAow==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530gwmMLeKU2s4G9oHJgnpJET9XM6mbMrVLRDcuXK8HvlY6B2qis
	a5seS87PiuCEGq/wJtzxDGY=
X-Google-Smtp-Source: ABdhPJwD6mRo7bqjs6ACNg0ojojzFbNnDIjA9mdPtpL2ZbfGkxJEhjgWGrP4rS5GZYTkiaP3HfeA6g==
X-Received: by 2002:a9d:6e91:: with SMTP id a17mr27249otr.284.1600701567665;
        Mon, 21 Sep 2020 08:19:27 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6830:459:: with SMTP id d25ls2948472otc.7.gmail; Mon, 21
 Sep 2020 08:19:27 -0700 (PDT)
X-Received: by 2002:a9d:315:: with SMTP id 21mr29554otv.278.1600701567212;
        Mon, 21 Sep 2020 08:19:27 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1600701567; cv=none;
        d=google.com; s=arc-20160816;
        b=0S9c45wkqw2z7aK+X24L1h1PYlExny8fDDYU3YTR/dZ7RLntALULk1adtOfoc3AXqw
         uiN/9MusGzhaSyYLyWfCzKn992Xyqxmio2L2VL/qb9d7P0xJvMcoKm1w9Ie7/vlkdu9a
         ITa4ifqth41MQNMeCsQp76P5oJBCcxgOnPPeYcSAeaz3viVfhmZiyLbCtLrQK3nHuxl4
         SR2cx3Pvfz+Kp91d34l1jrhdc8uIow7uPP5wOtVX/1huoivFIDwQo1BSbheBzpxvXZi8
         ifyXyrorbpfwAZMVJ//xrmZzjCmgOkkbOUfRh/yCA51eBMlSbYTeykRUeA8Gi8WhpjvF
         Hzyw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=78VYwFftorgadheBNYzJKmL144uRfgx6TOEZIwj+BGo=;
        b=Pfwa+4X7Uyi/UPQxBt5cpLnkynx3aG7o6L5bUHTG48wRsXaEU6A2Je5t3DskFGVnBA
         nhhENQ934TNDQBODo2oj7ByJq4zmFeEVmoymfmffxywvUWq97Xx85Di3pRWMJAFc1ye6
         U+/yc1udIl1eMpWWT/Iysd8NtKxe1vcWfjHPxHguwCjeWsjHJULy12tjYt5erCtxCxdi
         Tc44b0HW9/mgXqSYPN40S66eXQ2jpp3Yv7YHEzKNqlH6kD9aP5jGt865u/JLSAhFm4ue
         ekF8PnITWLzKCd//ofOcl1PUh9uLMnHCC3TuuCBuaW4bseP7TCrpGuTU78YlrMx5Lg1t
         XVcQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=IOBjkXZU;
       spf=pass (google.com: domain of jpoimboe@redhat.com designates 207.211.31.120 as permitted sender) smtp.mailfrom=jpoimboe@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [207.211.31.120])
        by gmr-mx.google.com with ESMTPS id o22si685107otk.2.2020.09.21.08.19.27
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 21 Sep 2020 08:19:27 -0700 (PDT)
Received-SPF: pass (google.com: domain of jpoimboe@redhat.com designates 207.211.31.120 as permitted sender) client-ip=207.211.31.120;
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-535-gNN5vVhCM7KoxqTm9vt0JQ-1; Mon, 21 Sep 2020 11:19:18 -0400
X-MC-Unique: gNN5vVhCM7KoxqTm9vt0JQ-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 567BE801AE2;
	Mon, 21 Sep 2020 15:19:16 +0000 (UTC)
Received: from treble (ovpn-119-131.rdu2.redhat.com [10.10.119.131])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id ECE9655778;
	Mon, 21 Sep 2020 15:19:14 +0000 (UTC)
Date: Mon, 21 Sep 2020 10:19:13 -0500
From: Josh Poimboeuf <jpoimboe@redhat.com>
To: Ilie Halip <ilie.halip@gmail.com>
Cc: linux-kernel@vger.kernel.org,
	Nick Desaulniers <ndesaulniers@google.com>,
	Rong Chen <rong.a.chen@intel.com>, Marco Elver <elver@google.com>,
	Philip Li <philip.li@intel.com>, Borislav Petkov <bp@alien8.de>,
	kasan-dev@googlegroups.com, x86@kernel.org,
	clang-built-linux@googlegroups.com,
	kbuild test robot <lkp@intel.com>,
	Peter Zijlstra <peterz@infradead.org>,
	Nathan Chancellor <natechancellor@gmail.com>
Subject: Re: [PATCH v2] objtool: ignore unreachable trap after call to
 noreturn functions
Message-ID: <20200921151913.rrfbqfnrhfmb26w4@treble>
References: <20200918154840.h3xbspb5jq7zw755@treble>
 <20200919064118.1899325-1-ilie.halip@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200919064118.1899325-1-ilie.halip@gmail.com>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Original-Sender: jpoimboe@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=IOBjkXZU;
       spf=pass (google.com: domain of jpoimboe@redhat.com designates
 207.211.31.120 as permitted sender) smtp.mailfrom=jpoimboe@redhat.com;
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

On Sat, Sep 19, 2020 at 09:41:18AM +0300, Ilie Halip wrote:
> With CONFIG_UBSAN_TRAP enabled, the compiler may insert a trap instruction
> after a call to a noreturn function. In this case, objtool warns that the
> ud2 instruction is unreachable.
> 
> This is a behavior seen with clang, from the oldest version capable of
> building the mainline x64_64 kernel (9.0), to the latest experimental
> version (12.0).
> 
> objtool silences similar warnings (trap after dead end instructions), so
> so expand that check to include dead end functions.
> 
> Cc: Nick Desaulniers <ndesaulniers@google.com>
> Cc: Rong Chen <rong.a.chen@intel.com>
> Cc: Marco Elver <elver@google.com>
> Cc: Philip Li <philip.li@intel.com>
> Cc: Borislav Petkov <bp@alien8.de>
> Cc: kasan-dev@googlegroups.com
> Cc: x86@kernel.org
> Cc: clang-built-linux@googlegroups.com
> BugLink: https://github.com/ClangBuiltLinux/linux/issues/1148
> Link: https://lore.kernel.org/lkml/CAKwvOdmptEpi8fiOyWUo=AiZJiX+Z+VHJOM2buLPrWsMTwLnyw@mail.gmail.com
> Suggested-by: Nick Desaulniers <ndesaulniers@google.com>
> Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
> Tested-by: Nick Desaulniers <ndesaulniers@google.com>
> Reported-by: kbuild test robot <lkp@intel.com>
> Signed-off-by: Ilie Halip <ilie.halip@gmail.com>
> ---
> 
> Changed in v2:
>  - added a mention that this is a clang issue across all versions
>  - added Nick's Reviewed-by, Tested-by
>  - added Reported-by

Thanks.  Queued.

-- 
Josh

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200921151913.rrfbqfnrhfmb26w4%40treble.
