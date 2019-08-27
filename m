Return-Path: <clang-built-linux+bncBCSJ7B6JQALRBE4GS3VQKGQEIEKZRUA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43f.google.com (mail-pf1-x43f.google.com [IPv6:2607:f8b0:4864:20::43f])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C3E19F33B
	for <lists+clang-built-linux@lfdr.de>; Tue, 27 Aug 2019 21:23:01 +0200 (CEST)
Received: by mail-pf1-x43f.google.com with SMTP id a6sf80065pfk.11
        for <lists+clang-built-linux@lfdr.de>; Tue, 27 Aug 2019 12:23:01 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1566933779; cv=pass;
        d=google.com; s=arc-20160816;
        b=X6yWlooHADKzFmHqm4ZxldVGcAxhsy3IMFFOFZJTy/9Sewn/97wxTalkeBtGY2GE2J
         WrTOYDpQSEQXtMoYIO2V/cU5yk91oR7A4DQQ51s3eO1q1RsTmyEGh9oYECoZEgQK2Wk2
         x1S1fp09p1mYBvT9cBY51WsXKOf8pZc/IgsW4HG1yQn3+HVUKOEZYn8+EJuCT1/KePkp
         B3c1GlkUFfMgUQupYgGiEaw4fkxarEDJpAJLb8VwjkbZMOgeHU+wtgxeqE81l9E1L002
         rB2+eHBvBW53YCnpG7puzLHAdnDsfuCwPrsDIbD4tfEIohm3TmDriFPfzJmF/zZn0Zh8
         Ufww==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=VpXwTU8oCTlb+A4L3aqB22m/G0bur0oZry/RPzh31aE=;
        b=eoUu4z627n/vtTThmP95NHpMSkP6GgdawqWVM/VP7o8sYhcxaNjmUz/FkVg0uThCBX
         n7573uW1XXC5aVNv2XsVKCFU/cTrnmdHextQgu1AUOq9RwgCDgqKLcaRT3Wvoh19fh0f
         brT2ks8uaW8lgREC4XbRHFwfGIyjx30pQiZM3XjHySSIvtxz+Q6vQMLueUp/YVI4YJyD
         gmitsoKeMlOTCOBstYDl2RSCZa994/yj9cZcQ99DrzGvY70gDdt0MtQf67vpBXGTNM9D
         PQjAFeiNDMaTpxm5U92qiFqEG0HBE37hCetrFxQmxIc+FrprNPMWO4yJ7lQQrZQ9P4W3
         gadw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of jpoimboe@redhat.com designates 209.132.183.28 as permitted sender) smtp.mailfrom=jpoimboe@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=VpXwTU8oCTlb+A4L3aqB22m/G0bur0oZry/RPzh31aE=;
        b=P1qjlE36GxHMzlRnZAJ4lxHVe/fWFy3hLKSPyILLcIeBVHXg1jpxMn0HvMT36z6tv9
         JC/bq7umM53zo+5Y51f52XzoDp5dw7X+GARL37GTpC+FE9oF/Z/Vbjdgk+kRprgamTFI
         MoVZx0oUPi601LjYZsET/iYZrWFgnwSAfKRQdDjBPeacTQIGBvuREGYHKvXRsbsBGj/7
         UTpGBCdk0GcnPZyVRHugnRPhLSW0/HYCmy3HYFuKwT1AUs5MkOPqlWwpvXR0mqvglqlf
         9G8pmaUthaYKC4yY+fM06OMFBeFmhnzLJT8pMUuDqg76ipydlJ15r43rRSln8w/chOun
         XYNQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=VpXwTU8oCTlb+A4L3aqB22m/G0bur0oZry/RPzh31aE=;
        b=BDoUOeVQ2bkX6h6fFO7DFaioXFUzpS+N9S04yBGtQWckoYX75JL23YGtNzys2qzp4T
         3q/DXa81CXk5tkN5n2WqI9R+18MyCMQ97wKBUzegvqB0/kIxkzwRzQTN+U8Hk2Flvanr
         n1iPYBwx2eE99bTlv85gA5qcyjXo6gDSCI36aPDWGiYA+wlZykl9XQ1/ajTtUJQsNTUa
         YtAVQpkiFofcCzKxDz7YE948wmyC4Vt+KrkmOxDtyi6hKM4nPWkUlEo4mBl6qdvh1jn5
         wUrgT7CTXTdfPItQkTEjtM5mjkeZrD6di0wAn1gsquaOAFB/87NTVnHBAGZ8ggI1l0FA
         NMnw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUiBm9TFI3az8SZFNDf1H8K0N3HntXzfKEZfhCGDfodManPWOTX
	lOPav/qLoGF3rEtg1Jbsl2k=
X-Google-Smtp-Source: APXvYqx2LOj9N6SJI+kjx3XsB3dcEO65udyk9/xxWelPF4xZnHY5NLwCEt6VsZVAU4k0jwTj3IKj5A==
X-Received: by 2002:a62:5cc2:: with SMTP id q185mr16997388pfb.221.1566933779629;
        Tue, 27 Aug 2019 12:22:59 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:334f:: with SMTP id m73ls70266pjb.5.canary-gmail;
 Tue, 27 Aug 2019 12:22:59 -0700 (PDT)
X-Received: by 2002:a17:90a:a611:: with SMTP id c17mr304711pjq.17.1566933779345;
        Tue, 27 Aug 2019 12:22:59 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1566933779; cv=none;
        d=google.com; s=arc-20160816;
        b=Yw95Lk9tFxkvz1z6hXnqoGI9ejTfsTU+3TeiekeAbLC6sFXdeU0J6PH8b4X4AriyKF
         j/o3dAX2rQpyeXyymTW6wE83WKL6GW7OLopzxG/eHAb8qUNiNHOYLP4jLWi/wRhD3Fxc
         uKywEdXt98FOEjaWca0zCQBfbqU7veSiwSMvzc1D7+1NRpKxWUdKaQtXtggtJUiH0/ui
         FCibXSLM6f/FKbhhXIWQ7oJo5vUe5SMUpYBPdU9h4zqVH99C2ZiyOlir3/si/HjmRnp9
         GDTi8EKXOlCZKHvMyDgo0fg+t2Roa3q+IFMtdBebZc9GnQ7DhpFLMG01Ym8/FOEgF+ZD
         rakg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=Qll15RikyR2Nn3pVItiZU+SAGRIlJKDRoCWw0QNE45E=;
        b=q/A4GJCAPeDOgyVB7aE7hqrpMp9TGaPfLuYpqm7NuZjwEw/wCvEDufoyFYILnHAczk
         gD60WP9q7HUw6Vvranadiaf+J7u5TYTp5IiTsuLa7IYBmd4ozvh7htwoJ8SF0fyWh3D/
         TRuzFFuSkPdD7n/9y003YppN4ocAJLrgGgDc7WIiC9e9qcC3eETec988WojzH6L9CoIE
         YSt1+ut9v5R2h50Mwu2Km54fswVmw+Ze25mjyISOtSOgk2NGF6qS3EMAmdm2CelX9txn
         1OnVO+v+mKA8OK7cmZ4x1k7GB9zsOq7Dg0ZlZAg0e6IWOUUkMPGc/0I9hQ7T4ACNosaX
         P1ig==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of jpoimboe@redhat.com designates 209.132.183.28 as permitted sender) smtp.mailfrom=jpoimboe@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from mx1.redhat.com (mx1.redhat.com. [209.132.183.28])
        by gmr-mx.google.com with ESMTPS id i11si9031pju.1.2019.08.27.12.22.59
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 27 Aug 2019 12:22:59 -0700 (PDT)
Received-SPF: pass (google.com: domain of jpoimboe@redhat.com designates 209.132.183.28 as permitted sender) client-ip=209.132.183.28;
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com [10.5.11.16])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mx1.redhat.com (Postfix) with ESMTPS id 086DAA53262;
	Tue, 27 Aug 2019 19:22:58 +0000 (UTC)
Received: from treble (ovpn-121-55.rdu2.redhat.com [10.10.121.55])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 58D1E5C1D6;
	Tue, 27 Aug 2019 19:22:57 +0000 (UTC)
Date: Tue, 27 Aug 2019 14:22:55 -0500
From: Josh Poimboeuf <jpoimboe@redhat.com>
To: Arnd Bergmann <arnd@arndb.de>
Cc: Ilie Halip <ilie.halip@gmail.com>,
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Nick Desaulniers <ndesaulniers@google.com>
Subject: Re: objtool warning "uses BP as a scratch register" with clang-9
Message-ID: <20190827192255.wbyn732llzckmqmq@treble>
References: <CAK8P3a3G=GCpLtNztuoLR4BuugAB=zpa_Jrz5BSft6Yj-nok1g@mail.gmail.com>
 <20190827145102.p7lmkpytf3mngxbj@treble>
 <CAHFW8PRsmmCR6TWoXpQ9gyTA7azX9YOerPErCMggcQX-=fAqng@mail.gmail.com>
 <CAK8P3a2TeaMc_tWzzjuqO-eQjZwJdpbR1yH8yzSQbbVKdWCwSg@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAK8P3a2TeaMc_tWzzjuqO-eQjZwJdpbR1yH8yzSQbbVKdWCwSg@mail.gmail.com>
User-Agent: NeoMutt/20180716
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.6.2 (mx1.redhat.com [10.5.110.68]); Tue, 27 Aug 2019 19:22:58 +0000 (UTC)
X-Original-Sender: jpoimboe@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of jpoimboe@redhat.com designates 209.132.183.28 as
 permitted sender) smtp.mailfrom=jpoimboe@redhat.com;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=redhat.com
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

On Tue, Aug 27, 2019 at 09:00:52PM +0200, Arnd Bergmann wrote:
> On Tue, Aug 27, 2019 at 5:00 PM Ilie Halip <ilie.halip@gmail.com> wrote:
> >
> > > > $ clang-9 -c  crc32.i  -O2   ; objtool check  crc32.o
> > > > crc32.o: warning: objtool: fn1 uses BP as a scratch register
> >
> > Yes, I see it too. https://godbolt.org/z/N56HW1
> >
> > > Do you still see this warning with -fno-omit-frame-pointer (assuming
> > > clang has that option)?
> >
> > Using this makes the warning go away. Running objtool with --no-fp
> > also gets rid of it.
> 
> I still see the warning after adding back the -fno-omit-frame-pointer
> in my reduced test case:
> 
> $ clang-9 -c  crc32.i -Werror -Wno-address-of-packed-member -Wall
> -Wno-pointer-sign -Wno-unused-value -Wno-constant-logical-operand -O2
> -Wno-unused -fno-omit-frame-pointer
> $ objtool check  crc32.o
> crc32.o: warning: objtool: fn1 uses BP as a scratch register

This warning most likely means that clang is clobbering RBP in leaf
functions.  With -fno-omit-frame-pointer, leaf functions don't need to
set up the frame pointer, but they at least need to leave RBP untouched,
so that an interrupts/exceptions can unwind through the function.

-- 
Josh

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190827192255.wbyn732llzckmqmq%40treble.
