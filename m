Return-Path: <clang-built-linux+bncBC27HSOJ44LBB3OYWX4AKGQEGNRNPLQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x13a.google.com (mail-lf1-x13a.google.com [IPv6:2a00:1450:4864:20::13a])
	by mail.lfdr.de (Postfix) with ESMTPS id BBB1B21EB4B
	for <lists+clang-built-linux@lfdr.de>; Tue, 14 Jul 2020 10:27:25 +0200 (CEST)
Received: by mail-lf1-x13a.google.com with SMTP id 201sf16337479lff.18
        for <lists+clang-built-linux@lfdr.de>; Tue, 14 Jul 2020 01:27:25 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1594715245; cv=pass;
        d=google.com; s=arc-20160816;
        b=QOVaa+8KVI4vRtPVCmdrlxqDlYTk9bSrHdKR+jTqlt+OZD4S/l74FFhDXXJhIAY3I2
         zfDweQlsxT8VnyQ7lI/+f87klouF7wSJeMTUNbCwW43ehXUryiJM4ySAQ6xn80xTmqzr
         091WVXZMbNXaYGWiFje8Ey2CY/LBf/A5I8ZX++FBgzRpd1atH7VvtIzEOIwTNGmByvZ4
         SXi1Yo6ZyDIgCbJD0cmJ3dT/MCMNDmk69EOL2H2GHWrEJkKenJjK16jPcvB9i8lmETKr
         J7aE3oKiLoQGMEdARfIrvoQg7dNPxEJ2EXv0Oa03tSJaiGdeZY+kQvZc8nTzMN/epmNO
         R8RQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:content-language
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from:sender:dkim-signature;
        bh=+jcDo8/nj7wi03shE/Ke7nxqpaJ5tJtvm3MNotd+Rn0=;
        b=OZ2NtUywlBq7KhpXbxi6qnOSUWRB/XVlsADMXOa54snC7tT3Wg4W1vDq3Ak/gk2KWo
         xKU3ruKWV8Mg4gEgXHq//OVM0WH2HJtuxP2bR4ZVOyhyNsQI1TJ3efEXowBgqb85BZHx
         ZBtnL1YIaB6es06JMo/urPK1mqxKONWrf86gvIOipXwFtDVQ5PeykWMk6V9RTJFNe43r
         ThSDDk1yubA9lbOeGyC8lBCmSO0XFwDinq20gcxHfPXDRFQcrK5/V33w2q3W8BuZrUQu
         KRB6ogWUDVGtcEHtDBYY4KjukJ5lt2ki9hHOJDM1hd6JhCZpcZi1CaNUhoMGV8P02AKf
         MshQ==
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
        bh=+jcDo8/nj7wi03shE/Ke7nxqpaJ5tJtvm3MNotd+Rn0=;
        b=OWFLNNsoR6N5TMc7yvB8GJaBmQcuYex5AO1p5VI2Yank1SHV4vnpR5gVlHr6nCsxgi
         YhcM751V1qnNYVhmrH06P2l4OwxqCXcRJXfgasoyHygmVPvhnaEvn9/CjiUQ/3D2dVyt
         G2LRtbQKhcw+GU9WM/QQizqqw9PS1Jk7Vwv9rzpu2Wf42w1pF7uhjejSeO8iDftIZbr6
         qW5+oonvuZ0Wrj03tHedc5vGeyHqv+eZC/jZTzu0u5I5HhkEr5m2AUGsgxNE+98XkNU0
         eIJSYXqYNWJK7njz0a6Wl8ANEXeaDV8RprO77VfK32y44TyGM3maDtxI4cv7iVhh+8eC
         +oVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:thread-topic
         :thread-index:date:message-id:references:in-reply-to:accept-language
         :content-language:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=+jcDo8/nj7wi03shE/Ke7nxqpaJ5tJtvm3MNotd+Rn0=;
        b=f2tVddqZcZbuHIQTvFarWQOLnj3LOE9OCsPN29zGcpPximFgiv6bI64gLMPukxU2WJ
         Pr8jbSZCHfEh+cuvxkCrgTKW6JcQX7ztiIh0oHcrGxUcXRJ4KnEEWTdMTpWMb8cSBF9H
         SHCtLoaKct6saIUpLtge6Get8ZNwg9dfK8hKkguy2JYPa8nEiBZ6jE4tzX3HfVkNHfFp
         TOaTagwEQCnwwtxpBFH+RUeqJlzEKggB8cXqSvGA52vPhhV700ynUuQd4bwd/9+C1ENl
         Ql8jobmyXICLCeoCe8T5rng7f+MThgB5F29e2k5QDihoTb9Bp6i/pTFN0Nx8vpUG2EIO
         O7sw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532EGJIlTbVJWSZzQvkEwc2MG6IzmatWceCrT3gNS8liIcNwIecM
	2JST5ju1n+wGp1yaC22zCMI=
X-Google-Smtp-Source: ABdhPJyOuzrQF29E6vns7xeCdwxckXzrcC+U3pVNjAZI51hHTYRDX83xxipjAw4qSZbtcwh5crZYwQ==
X-Received: by 2002:a2e:9017:: with SMTP id h23mr1851509ljg.61.1594715245186;
        Tue, 14 Jul 2020 01:27:25 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a19:c188:: with SMTP id r130ls2295367lff.2.gmail; Tue, 14
 Jul 2020 01:27:24 -0700 (PDT)
X-Received: by 2002:ac2:47ed:: with SMTP id b13mr1648158lfp.21.1594715244526;
        Tue, 14 Jul 2020 01:27:24 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1594715244; cv=none;
        d=google.com; s=arc-20160816;
        b=o7UYJxAHrjdzIlgCRVAr7IRpZpNzS3eDC4j8poKgjDwT8IDPO8Pfvo09kdOboPtA7u
         aGYYjLdCNsFlo2M0FNJf9t3vaKsUcI0oqq4i1Dirwvt5u0VHHdt07DxXfrkTnOfaaSLD
         2yAEntlt9sZpYA7EK9BG+uH4AtADFgzkZcL+9EAEb63wlCMxxlVu3m/eZhMJjR0ajA+s
         VFMSl7mDe3ZSoXKBgOMRZwzImhq+QDRlyjXoqO2tqwI/5LJ7fbhI2d4WbfWceZM9+k8f
         Bt+RvzXfsgEyLcpzStbPTvoiq19H5iuhJ5coReH5zvcEMdfceVFKF//0P+nK2VwlPMIs
         HgZw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:content-language
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from;
        bh=bCD15fWrffFDUaLSto039VmM/qMF+vfLPwiUxjL5ytM=;
        b=tLqAY8fBsYBfKrYpAzU/gE5/F7HtRIhuLzl5McRuiysxa3A8hmw8hltzxeJUjBoUrX
         QUdhgJ+x8reYN4ZANsF9sL6SFF8MO5NWoyqaX+zMRbHxPeWB/x1hqesKeDpKbihvj3WT
         Rm7KRn4f4jF8kQxOjElFpE4kh6XehSrunEwRqRChzBPEKNBNEgEkkuXMLIwFvmajodiX
         +bqYP1fjln1JFQPborOigAvgdgoevWDCT0W91eHLQfrZtyC229DDB14zuKDmfZwc4YKL
         EqvvCnCk6kE3R9fRYzx2wPc446zMFGWJmQkdico6h3acMbkde/uS3aOKDl/5me0aLN6x
         HTRw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of david.laight@aculab.com designates 207.82.80.151 as permitted sender) smtp.mailfrom=david.laight@aculab.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=aculab.com
Received: from eu-smtp-delivery-151.mimecast.com (eu-smtp-delivery-151.mimecast.com. [207.82.80.151])
        by gmr-mx.google.com with ESMTPS id u11si968388lfl.4.2020.07.14.01.27.24
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 14 Jul 2020 01:27:24 -0700 (PDT)
Received-SPF: pass (google.com: domain of david.laight@aculab.com designates 207.82.80.151 as permitted sender) client-ip=207.82.80.151;
Received: from AcuMS.aculab.com (156.67.243.126 [156.67.243.126]) (Using
 TLS) by relay.mimecast.com with ESMTP id
 uk-mta-172-hKkJFKMyNo2WmzryHRbtrg-1; Tue, 14 Jul 2020 09:27:21 +0100
X-MC-Unique: hKkJFKMyNo2WmzryHRbtrg-1
Received: from AcuMS.Aculab.com (fd9f:af1c:a25b:0:43c:695e:880f:8750) by
 AcuMS.aculab.com (fd9f:af1c:a25b:0:43c:695e:880f:8750) with Microsoft SMTP
 Server (TLS) id 15.0.1347.2; Tue, 14 Jul 2020 09:27:20 +0100
Received: from AcuMS.Aculab.com ([fe80::43c:695e:880f:8750]) by
 AcuMS.aculab.com ([fe80::43c:695e:880f:8750%12]) with mapi id 15.00.1347.000;
 Tue, 14 Jul 2020 09:27:20 +0100
From: David Laight <David.Laight@ACULAB.COM>
To: 'Adrian Bunk' <bunk@kernel.org>, Josh Triplett <josh@joshtriplett.org>
CC: Nick Desaulniers <ndesaulniers@google.com>, "alex.gaynor@gmail.com"
	<alex.gaynor@gmail.com>, "geofft@ldpreload.com" <geofft@ldpreload.com>,
	"jbaublitz@redhat.com" <jbaublitz@redhat.com>, Masahiro Yamada
	<masahiroy@kernel.org>, Linus Torvalds <torvalds@linux-foundation.org>, "Greg
 KH" <gregkh@linuxfoundation.org>, Miguel Ojeda
	<miguel.ojeda.sandonis@gmail.com>, Steven Rostedt <rostedt@goodmis.org>, LKML
	<linux-kernel@vger.kernel.org>, clang-built-linux
	<clang-built-linux@googlegroups.com>
Subject: RE: Linux kernel in-tree Rust support
Thread-Topic: Linux kernel in-tree Rust support
Thread-Index: AQHWWI1aGJZ9TFzlDkOe6uJPijYhMqkGvlGQ
Date: Tue, 14 Jul 2020 08:27:20 +0000
Message-ID: <732be8f3c8dc483785670259cc94dc26@AcuMS.aculab.com>
References: <CAKwvOdmuYc8rW_H4aQG4DsJzho=F+djd68fp7mzmBp3-wY--Uw@mail.gmail.com>
 <20200712123151.GB25970@localhost> <20200712193944.GA81641@localhost>
 <20200712204501.GC25970@localhost>
In-Reply-To: <20200712204501.GC25970@localhost>
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

From: Adrian Bunk
> Sent: 12 July 2020 21:45
....
> Rust gets updated frequently.
> Sometimes this also changes the LLVM version used by Rust.
> Debian stable supports targets like ARMv5 and 32bit MIPS.
> Distribution kernel updates are often automatically installed
> on user hardware.

This reminds me of why I never want to use an online compiler
service - never mind how hard companies push them.

If I need to do a bug-fix build of something that was released
2 (or more) years ago I want to use exactly the same toolchain
(warts and all) that was used for the original build.

If the compiler has changed I need to do a full test - just
in case it compiles some 'dodgy' code differently.
With the same compiler I only need to test the fix.

	David

-
Registered Address Lakeside, Bramley Road, Mount Farm, Milton Keynes, MK1 1PT, UK
Registration No: 1397386 (Wales)

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/732be8f3c8dc483785670259cc94dc26%40AcuMS.aculab.com.
