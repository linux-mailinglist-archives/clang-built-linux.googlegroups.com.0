Return-Path: <clang-built-linux+bncBC27HSOJ44LBBW6V633QKGQEOABHDAA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x23c.google.com (mail-lj1-x23c.google.com [IPv6:2a00:1450:4864:20::23c])
	by mail.lfdr.de (Postfix) with ESMTPS id 06CB7212014
	for <lists+clang-built-linux@lfdr.de>; Thu,  2 Jul 2020 11:37:32 +0200 (CEST)
Received: by mail-lj1-x23c.google.com with SMTP id s22sf11737873ljs.21
        for <lists+clang-built-linux@lfdr.de>; Thu, 02 Jul 2020 02:37:32 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1593682651; cv=pass;
        d=google.com; s=arc-20160816;
        b=Q4oc7rlslQxjZAXJz42RllOsOthn2sghFuKuPmcnAIStmkzzhYl60XgIW4h8Ib2VmF
         PCjVbo0+7xbTGFd0r26/F8aoP21+dLWRFYlC9dpXoxu7e6FZU5StQSaBatvbRhmaNL+o
         qTjVxBBTZiSQn/T+2dQTokUvkncZHYiIBlmirDr27/5mZ12TeZZCAGED5DBxncVk/R2e
         Sg/VfD+s01eegiL/lzIEe8trzQ4+8qBAH2iFV22Xl/x/VtK4iVxMPPp39kEKFGvzGwKd
         xUB5Rj16Id+YXjxXbP/LYD/lT+Uv92wqw7X2AVJOU+vdl04Gjb8U5CJvdh+edr2QCarv
         euIw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:content-language
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from:sender:dkim-signature;
        bh=YIkmp0zm6iCEc17qHJrkhJwUWcRsUkAlqWAxysUx9Bs=;
        b=JkT/y4XI82ExU+WNdY+AXkGEWKfhNwSQhr7HlYRVp2AW6yupLOyIy5kHTthBslRALv
         BQbS99QKJ/Wa0Wj/vEn3iw+Lhm9oL4AS8SVq7Fz1SKYfwvoNQKKqEGIAyYBcdPVQ7TNw
         rCLKXsJPoPrNPuEZ+d9tEYJO05iYiFrttY4q2+CmB6iV/QKvWwFksaAykyDvedo1DfMp
         sWcF9WortDRp/Mf0U2pc8w7ZwNNO8TpQjO8UWqh4Z1kDZAZ71Dv5WP9GRSPFaL+CV94S
         ZJKuqM/aVSQw9kDPWsztINxxvH+HQNh/Pn9sfXKkyL0KFDJEejEsdaoYcOySXKIcKB1Z
         Lrzw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of david.laight@aculab.com designates 207.82.80.151 as permitted sender) smtp.mailfrom=david.laight@aculab.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=aculab.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:thread-topic:thread-index:date:message-id
         :references:in-reply-to:accept-language:content-language
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=YIkmp0zm6iCEc17qHJrkhJwUWcRsUkAlqWAxysUx9Bs=;
        b=F/teFQQziZlizofPl9wXcooOp5BGDcM2Qin7lr46b/Z7646lwIT0Q4fPemLh0jsfY2
         CYDuGVdl/EY7+j5pPDTHz4Sg0UI0/qUnb2ej3zG96p2Cpwe8gSiukQuJ6LOje8H/3cSD
         QVZuqNOx+F0dq2YruE4oxZ11n/Vu7eRjt52+JxoUi0Trc77T5ICDgWTpE4BYGZOrTRuB
         tO9MlJ+wTJMsxLvw6NkNXEtZIfTnXF6ItrvkIAn6idEt+HdR2E1LLeeao9CPavLXZ8JB
         jUBO8wwtAv+jxTnD601oC2FdQXCaPKp1MVdsvqd17eqIAKz5Yul2ABwMvMkDzpGarlN6
         w63Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:thread-topic
         :thread-index:date:message-id:references:in-reply-to:accept-language
         :content-language:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=YIkmp0zm6iCEc17qHJrkhJwUWcRsUkAlqWAxysUx9Bs=;
        b=E82qZIxAOmVKl6/eKSQedF173mHbNwp6KQBbYx0RmnxRpGsbyTPWqFcp2KOaz4wVI7
         lUOi7KuTTRTs1Q8hXwQHPnrxdEDoInR0/vj9BGZqgyUT7kzlciDvhbwUlVEcfwAZGQTN
         A6RVEyCvmBPl0sl/9OJ0i4MtRS7W1MmotZ+BtzfaPLx6fe+XZjcxTujHdiyHLw+Vgcdd
         c3E+cQz17NslTY+ZjbNhDAaKQrVAY79QvTn2qsoLrte+OFUZu5wAcB2W6Q4S/shjrwq2
         AD0BNcek0afLeqo8DYny+mc7U6TUNyDBd9tsSRe/lUdF/hg7AcDFEmuUGvQR5PED9fQS
         GuwQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531pKpKQtDGt6YHrBSXRjGA5b36n8su5MiWfQM+91xzch15MeeWd
	gMe/fFd0a5zkV5ubyLR+gzU=
X-Google-Smtp-Source: ABdhPJyVg3AQ94Cb84zcuvF9dwrncWgBJ0DGAgZZh3UW8ZmzVqJ+Kx1AJM2c/txb4LqDqcJepXQ1SA==
X-Received: by 2002:a2e:b004:: with SMTP id y4mr1898881ljk.175.1593682651573;
        Thu, 02 Jul 2020 02:37:31 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a19:c188:: with SMTP id r130ls1979845lff.2.gmail; Thu, 02
 Jul 2020 02:37:31 -0700 (PDT)
X-Received: by 2002:a19:691c:: with SMTP id e28mr17964562lfc.131.1593682651048;
        Thu, 02 Jul 2020 02:37:31 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1593682651; cv=none;
        d=google.com; s=arc-20160816;
        b=xy7AtU81h5KQLsO0hVMOStnYHm2Raz3ouqQAPYygN7limuhcZuQGrlCt5uCKxfr3LM
         rSQESAdn2lrST2ZAEWR0Ee5U/lrimv5FI5Bj0ivbwHt32EbaYtVw3ioo4vEOnGQA0snL
         EKWfyUyfwMRL9YnyI0vMtOghXfQzqXPNf9vuJGLNeFteVx/YCUsUpmCPTLcWD9ZPUOcv
         86UZLJsrxUdnymdI4G3plXGpV0TtNriueiDfgQP2ebddGAb0SWpgiwOimTXDS/kxMbUb
         rVOv8Ppkc2ZE458QjX476q/23A2TNKX/sb3f+PvD5GQqlCvTVrJdHbC/rABrnjYA7QpS
         GxwA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:content-language
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from;
        bh=RoTzrtBmjB9wZLmv0H8fOpyD7NC99wMay/nlH+hArhM=;
        b=mbxZnucN7/Ul4oYXwk4hwNnhz+xt3HOaf4Q8Fjj40APAsPFHX0A99XLYagzDezGHw8
         VTuujzgadnyigkvruhy3Ac+I1BL98LAgBuortYaBxXX0oKYEPjXqnWbav9Yh+6nD2vLQ
         DBkKCBcyMgebcjb3FUmUYJW812l4ThFckhmiYRSMPq4WfW1EU6lhumQ9S8A4ixsTrMsA
         q//iuJZooVz6t0SXdRg09++bt7wpIVy3NwI+72/CgJuhztZVoCfhOKIMcVj006xBbxuI
         VuL3VHr+4Ayv5zxVs33blOryLm/KRT02hj4fGe5B5EBPE+Wu4l/l61o3h3KRZBvUn0bk
         KNSg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of david.laight@aculab.com designates 207.82.80.151 as permitted sender) smtp.mailfrom=david.laight@aculab.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=aculab.com
Received: from eu-smtp-delivery-151.mimecast.com (eu-smtp-delivery-151.mimecast.com. [207.82.80.151])
        by gmr-mx.google.com with ESMTPS id k9si608246ljj.5.2020.07.02.02.37.29
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 02 Jul 2020 02:37:29 -0700 (PDT)
Received-SPF: pass (google.com: domain of david.laight@aculab.com designates 207.82.80.151 as permitted sender) client-ip=207.82.80.151;
Received: from AcuMS.aculab.com (156.67.243.126 [156.67.243.126]) (Using
 TLS) by relay.mimecast.com with ESMTP id
 uk-mta-132-_943ttHWM7K-SXNAkBuyNw-1; Thu, 02 Jul 2020 10:37:27 +0100
X-MC-Unique: _943ttHWM7K-SXNAkBuyNw-1
Received: from AcuMS.Aculab.com (fd9f:af1c:a25b:0:43c:695e:880f:8750) by
 AcuMS.aculab.com (fd9f:af1c:a25b:0:43c:695e:880f:8750) with Microsoft SMTP
 Server (TLS) id 15.0.1347.2; Thu, 2 Jul 2020 10:37:26 +0100
Received: from AcuMS.Aculab.com ([fe80::43c:695e:880f:8750]) by
 AcuMS.aculab.com ([fe80::43c:695e:880f:8750%12]) with mapi id 15.00.1347.000;
 Thu, 2 Jul 2020 10:37:26 +0100
From: David Laight <David.Laight@ACULAB.COM>
To: "'paulmck@kernel.org'" <paulmck@kernel.org>
CC: 'Peter Zijlstra' <peterz@infradead.org>, Marco Elver <elver@google.com>,
	Nick Desaulniers <ndesaulniers@google.com>, Sami Tolvanen
	<samitolvanen@google.com>, Masahiro Yamada <masahiroy@kernel.org>, "Will
 Deacon" <will@kernel.org>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Kees Cook <keescook@chromium.org>, clang-built-linux
	<clang-built-linux@googlegroups.com>, Kernel Hardening
	<kernel-hardening@lists.openwall.com>, linux-arch
	<linux-arch@vger.kernel.org>, Linux ARM
	<linux-arm-kernel@lists.infradead.org>, Linux Kbuild mailing list
	<linux-kbuild@vger.kernel.org>, LKML <linux-kernel@vger.kernel.org>,
	"linux-pci@vger.kernel.org" <linux-pci@vger.kernel.org>, "maintainer:X86
 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>
Subject: RE: [PATCH 00/22] add support for Clang LTO
Thread-Topic: [PATCH 00/22] add support for Clang LTO
Thread-Index: AQHWT4eVR3DE4y9c50++UkzL75GurajywsMggAAQjQCAATOsAA==
Date: Thu, 2 Jul 2020 09:37:26 +0000
Message-ID: <aeed740a4d86470d84ae7d5f1cf07951@AcuMS.aculab.com>
References: <20200624211540.GS4817@hirez.programming.kicks-ass.net>
 <CAKwvOdmxz91c-M8egR9GdR1uOjeZv7-qoTP=pQ55nU8TCpkK6g@mail.gmail.com>
 <20200625080313.GY4817@hirez.programming.kicks-ass.net>
 <20200625082433.GC117543@hirez.programming.kicks-ass.net>
 <20200625085745.GD117543@hirez.programming.kicks-ass.net>
 <20200630191931.GA884155@elver.google.com>
 <20200630201243.GD4817@hirez.programming.kicks-ass.net>
 <20200630203016.GI9247@paulmck-ThinkPad-P72>
 <20200701091054.GW4781@hirez.programming.kicks-ass.net>
 <4427b0f825324da4b1640e32265b04bd@AcuMS.aculab.com>
 <20200701160624.GO9247@paulmck-ThinkPad-P72>
In-Reply-To: <20200701160624.GO9247@paulmck-ThinkPad-P72>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.202.205.107]
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: aculab.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: david.laight@aculab.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of david.laight@aculab.com designates 207.82.80.151 as
 permitted sender) smtp.mailfrom=david.laight@aculab.com;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=aculab.com
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

From: Paul E. McKenney
> Sent: 01 July 2020 17:06
...
> > Would an asm statement that uses the same 'register' for input and
> > output but doesn't actually do anything help?
> > It won't generate any code, but the compiler ought to assume that
> > it might change the value - so can't do optimisations that track
> > the value across the call.
> 
> It might replace the volatile load, but there are optimizations that
> apply to the downstream code as well.
> 
> Or are you suggesting periodically pushing the dependent variable
> through this asm?  That might work, but it would be easier and
> more maintainable to just mark the variable.

Marking the variable requires compiler support.
Although what 'volatile register int foo;' means might be interesting.

So I was thinking that in the case mentioned earlier you do:
	ptr += LAUNDER(offset & 1);
to ensure the compiler didn't convert to:
	if (offset & 1) ptr++;
(Which is probably a pessimisation - the reverse is likely better.)

	David

-
Registered Address Lakeside, Bramley Road, Mount Farm, Milton Keynes, MK1 1PT, UK
Registration No: 1397386 (Wales)

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/aeed740a4d86470d84ae7d5f1cf07951%40AcuMS.aculab.com.
