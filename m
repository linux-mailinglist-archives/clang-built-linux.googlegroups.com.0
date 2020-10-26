Return-Path: <clang-built-linux+bncBC7M5BFO7YCRBTH63T6AKGQE4XVYRGA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x339.google.com (mail-ot1-x339.google.com [IPv6:2607:f8b0:4864:20::339])
	by mail.lfdr.de (Postfix) with ESMTPS id 87E172998B7
	for <lists+clang-built-linux@lfdr.de>; Mon, 26 Oct 2020 22:27:41 +0100 (CET)
Received: by mail-ot1-x339.google.com with SMTP id o60sf4105770ota.7
        for <lists+clang-built-linux@lfdr.de>; Mon, 26 Oct 2020 14:27:41 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1603747660; cv=pass;
        d=google.com; s=arc-20160816;
        b=0yYlxEviQIS4ISSE3Z4uhxtZ2CdjRc/i/uhnJqYOr+uM1MMrIWcLQrFoWAZ1fjHbY4
         fRNqWrYbWBiCATs+J+835tJaNKwZWuki6Wz8Iv/OgGOpSZ4ibh07ksmC6UM19QW7r4Rb
         yREnsVwPoZbzzQCegWgtlXsoq9a4oKBo1no4QSDqK1F1rU7qikeQHUApFJ3lPL5fLzoz
         1CcBRd9jnGZG7dSjCSrZORNlm11pfTn7lgePPPhySkQ0VbCGgSmMqLAH4SP/Y9tuaGqH
         H995Li7Etmz8KprYakhBIcb9K6SwISTWCLgrI+DIfkV81rksIRmTTQ/rEoAUHCd+dWyZ
         XSkA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=qqxX4+KnGh2zqJpA1Qb+efsS0IZhHJ6LAQ52Im7nguU=;
        b=zOsP2u7CG00vnNaDiQnjGUsVQj00e+YrPzBmGsv5jeMdJU3MQobwWWR102NYuMaNow
         tEQeUmckKRJBCkSuhXTpO6VTHMbJQ+1SP7fAkm0gQoMMpHpn7DzdbadlvJeapZzoAN5B
         NG2IfmPbrK7oSRkj+FK4J88j+LN0w9sXEsIENQD3lteEL90/PAA+Z8UKurWoT+h8mgeK
         nZx7mBUgiIBa6R8329jFbCNPzCKJ30CSpdjaFeI3QHq4jkQh3yTg8rOeZjQVIBF/6bfw
         vht+8wVz3EBCdnbjT/GtDaRkGcdsAZYyR00/3ydQ6R9c/ACtyhIM+TsiI1UaDR1X5gbc
         ymow==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Pqd4GnvU;
       spf=pass (google.com: domain of groeck7@gmail.com designates 2607:f8b0:4864:20::343 as permitted sender) smtp.mailfrom=groeck7@gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=qqxX4+KnGh2zqJpA1Qb+efsS0IZhHJ6LAQ52Im7nguU=;
        b=o7XUVf4JsB9WaFtzx+DLdP1YJxwawWMId1THRraTfrTppyIdLDXZ9ccmwvutbHK3OE
         JuWew2C3ofdNq0iXvdGDbzceY+5WuYKoX5BeDRc+I4ufjX6iM73sg/VVgjsotBPj9yHn
         d+ScvKkpYEfjHwex7rU7PlyiKASFf2c9bCHY6h510opBscQ3pvcvF3t+T0LqrbvX1eYg
         Hwt7QPpI/2i11k3L88cbuD+dkFx5j7r2bt4CipWZH9zV/s5RJsBQt2WWFZAmL77CvMPB
         2ujS1tCk4opdxEHJXJQsu4N9ew3lm91eY/00IQfqKC0NWtEUqRpA8lvceaWR5grUpmNt
         4noA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=qqxX4+KnGh2zqJpA1Qb+efsS0IZhHJ6LAQ52Im7nguU=;
        b=OFcg7r1Zhk1PGuxZxbwGBD6IerqpVK+pPdekqPWnPTUqUBravtidcBbsomXfcpFbae
         Zk2jAoydSvXTQhKx3bnM3q7ER/2cS4SbaOeCKi+XXEGE0wGLmgDKZmVzZptOmohkauTk
         u+V6woFKaYplOOQVGXB44+jy/Bw7Y6EeHOMuqN1SMVKedPVN+Me55V5reXNpsCxYYXwX
         1MAV/G9ea3kP2e1gvm05nfcft1xrJUgrRj1Rp4HLTwrqRFNZ5e+5wTOvOO5ok68wQGne
         BekgHhE1fQpC6kIVfTQvqInc/apO66BY5xGVbysHUwiKqWgI+wQNYGxuvN2o8u3SUiOX
         NMbg==
X-Gm-Message-State: AOAM5308CU69jCvRXLsUqdmlZHBB8jD7BVprFMQNgrDP3kyt/WW9GJVe
	5nVmBbDeEsHBJpiDVd7Ak1U=
X-Google-Smtp-Source: ABdhPJxY2gL0YxOydwrMR6glN38Le14mC0JM6drkTD99+B41Z/DOSC2uwJ9PBqIM6N43FUbDtNdQPg==
X-Received: by 2002:aca:356:: with SMTP id 83mr11844521oid.66.1603747660438;
        Mon, 26 Oct 2020 14:27:40 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a4a:c193:: with SMTP id w19ls665823oop.9.gmail; Mon, 26 Oct
 2020 14:27:40 -0700 (PDT)
X-Received: by 2002:a4a:e1d7:: with SMTP id n23mr15904744oot.85.1603747660015;
        Mon, 26 Oct 2020 14:27:40 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1603747660; cv=none;
        d=google.com; s=arc-20160816;
        b=fO14y/xk7SNRg4zIc4/SY28tHc/kxbAytkNAMZszavzClHM36RBEnt1CWDczvwr1EL
         B7R1zOUbC0zcT8AhvAMYS8qphUJ37eFiGvC/9I0d7TqgMbawRE7fY8QkMrTpgnZyPjjJ
         Q2FXU0izYwwh77sWh4leM0V7SJJAlzwx3cxhqAT5a7z5ZeHaW/GHa5ZzKy3m2REU7hZD
         UOxNXVhkGQbSTWljCSY1VgScYWokeolQi0+Q30NRDe6qa9Vp6XoM5ntjLp6GhgXmXTVJ
         ZCZtmU5wnBGMc1arsd92CEa62yHJNYIKdnrTLs+ry7uw+JTPdz0drLc3BvGPq7XO50IE
         7h1A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:sender:dkim-signature;
        bh=C7iBjVOiLEiQoedNWLzG0TU122Ys5J9UkVQlTCn6OG0=;
        b=YP+klFmJe7F8MK4bZxaFAX+pjZJDGOaWW6IpXuxIS1LVDOgokdMIy9Io1E+KvzB6wB
         u55SyqCW1I1JbZgh2WNAF6FWiXKEaQ8xLYqhPeSpRN7icmpNhaE6R6Edn+QAPV/UVG85
         t8egBMF9jSkqF60U07Degiw6wV+l8Sx63f07OsT/0fhGOUfBVlthoXlwN5GpzSWELAzO
         OS7GhhqDovdFNRj/lTs2qFBC8d0JJJ7aD3729Chql9foN1J9PVmffo9kGakbmRIOLHmG
         jZGO+J1vwF2p2hzb2e70/gKfsBvj57HGobej6BRI3HOgUZ4iMRX4vpyXsYMoOdKRjEPG
         nDmA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Pqd4GnvU;
       spf=pass (google.com: domain of groeck7@gmail.com designates 2607:f8b0:4864:20::343 as permitted sender) smtp.mailfrom=groeck7@gmail.com
Received: from mail-ot1-x343.google.com (mail-ot1-x343.google.com. [2607:f8b0:4864:20::343])
        by gmr-mx.google.com with ESMTPS id r6si1485438oth.4.2020.10.26.14.27.39
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 26 Oct 2020 14:27:39 -0700 (PDT)
Received-SPF: pass (google.com: domain of groeck7@gmail.com designates 2607:f8b0:4864:20::343 as permitted sender) client-ip=2607:f8b0:4864:20::343;
Received: by mail-ot1-x343.google.com with SMTP id h62so9330893oth.9
        for <clang-built-linux@googlegroups.com>; Mon, 26 Oct 2020 14:27:39 -0700 (PDT)
X-Received: by 2002:a9d:71dc:: with SMTP id z28mr12227830otj.249.1603747659773;
        Mon, 26 Oct 2020 14:27:39 -0700 (PDT)
Received: from localhost ([2600:1700:e321:62f0:329c:23ff:fee3:9d7c])
        by smtp.gmail.com with ESMTPSA id r8sm4298695otq.43.2020.10.26.14.27.39
        (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
        Mon, 26 Oct 2020 14:27:39 -0700 (PDT)
Sender: Guenter Roeck <groeck7@gmail.com>
Date: Mon, 26 Oct 2020 14:27:37 -0700
From: Guenter Roeck <linux@roeck-us.net>
To: Linus Torvalds <torvalds@linux-foundation.org>
Cc: Joe Perches <joe@perches.com>,
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>,
	linuxppc-dev <linuxppc-dev@lists.ozlabs.org>
Subject: Re: [PATCH] treewide: Convert macro and uses of __section(foo) to
 __section("foo")
Message-ID: <20201026212737.GA113829@roeck-us.net>
References: <fe8abcc88cff676ead8ee48db1e993e63b0611c7.1603327264.git.joe@perches.com>
 <20201026194127.GA106214@roeck-us.net>
 <CAHk-=whjhHuwANGerJLJyn7jXCfMQMiaBAW+o2r_T+n=Ki+New@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAHk-=whjhHuwANGerJLJyn7jXCfMQMiaBAW+o2r_T+n=Ki+New@mail.gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Original-Sender: linux@roeck-us.net
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=Pqd4GnvU;       spf=pass
 (google.com: domain of groeck7@gmail.com designates 2607:f8b0:4864:20::343 as
 permitted sender) smtp.mailfrom=groeck7@gmail.com
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

On Mon, Oct 26, 2020 at 01:33:48PM -0700, Linus Torvalds wrote:
> On Mon, Oct 26, 2020 at 12:41 PM Guenter Roeck <linux@roeck-us.net> wrote:
> >
> > make ARCH=um SUBARCH=x86_64 defconfig:
> >
> > Building um:defconfig ... failed
> > --------------
> > Error log:
> > arch/um/kernel/skas/clone.c:24:16: error: expected declaration specifiers or '...' before string constant
> > arch/x86/um/stub_segv.c:11:16: error: expected declaration specifiers or '...' before string constant
> 
> Weird. Is __section() not defined somehow for those files?
> 
> It does look like they have very minimal headers, so undoing that
> patch just for those two files is likely the right thing to do.
> 
> > As with s390, reverting this patch fixes the problem.
> 
> s390 should be fixed already.
> 
> Is the attached minimal patch sufficient for um to get back to working
> order, or is there something else hiding there too?
> 
That works for me.

Tested-by: Guenter Roeck <linux@roeck-us.net>

Thanks,
Guenter

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201026212737.GA113829%40roeck-us.net.
