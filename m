Return-Path: <clang-built-linux+bncBDAMN6NI5EERBTP2W7ZQKGQEZTCKMOY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x23e.google.com (mail-lj1-x23e.google.com [IPv6:2a00:1450:4864:20::23e])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C003185BCB
	for <lists+clang-built-linux@lfdr.de>; Sun, 15 Mar 2020 11:02:54 +0100 (CET)
Received: by mail-lj1-x23e.google.com with SMTP id g17sf2124868ljl.6
        for <lists+clang-built-linux@lfdr.de>; Sun, 15 Mar 2020 03:02:54 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1584266573; cv=pass;
        d=google.com; s=arc-20160816;
        b=YuVyYDk0eOXoJREzNTwqcX+x9W+D+xII9IKIx9rVupfMHZzDlss3qX5o2dl/101w+W
         NshzFQHoZ/gRV0B98mCUKj4y/GvSfwNlUQjUh0jT5aWeH8lGe+RCVsUGSsiGmJPtgMBy
         JkGnqdNk4r1pSbgctec8fUxgYHePYqqvjM8hQg41uyBubmGUnK0R++Jhj/ZH7xaP3vov
         +ZPmCZu5cC7cwPdKPwvW/4GY/43DyUNXdSCQ6jNn+6kb/cy/NWsWQZQdF1j6rsKZGwaf
         HZy0JDtq1fuREfdOJhIcqjc8jiUnk5woUZCd6N5h8nK7JvhZ6Ugaxq5KJC/wbcnp6nm0
         rEvQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :references:in-reply-to:subject:cc:to:from:sender:dkim-signature;
        bh=9uuvpSBbrMEkHA9LKLxQYZxkYPzm2Hu9GfjPYGAKSJg=;
        b=fFjXVZgLGE04cNxEhoeGVq2DyTjg8QLwSYt8l606nN2C1zopHZf+uWz8/yBkzQ/KJh
         BE/58AV1FbYasUOJ/GKZMsvaCYtS7ayqvBDrETBAX2rUpJfJ+bhwzJU3ZWBt1ZjVyBV8
         zicak0HBF41SZ83mqO32gFWbWpZ/+cT8bzE48+rTBIomImSvNt7Z7eNUn9lKHIHTPx6t
         JbiE5p3OXEOBULBMhFHXXUllC9slp8Kp5YseWU7TZ9LCBto6A7RBmSozQBdba3ySyGnq
         XCIIdFqnApHiIGwOGPGey/VHKwhuXukDAn0ZVGY2e8RqZF38zlRdzCDt+lqgnNrr7n5r
         JTtA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of tglx@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted sender) smtp.mailfrom=tglx@linutronix.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:in-reply-to:references:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=9uuvpSBbrMEkHA9LKLxQYZxkYPzm2Hu9GfjPYGAKSJg=;
        b=NokwnqvWhuJPkHLTCkC6fGJnmcMPaUjAJBeXN8JX+lEg7AQqAnvFj3JFWjBVLinzdS
         MZdNmxGZjWuXdu4tcYKzTNN2lUcAvt0aAlNL6cjXmCtO4iFfonY6n4zGiPm5CACipcj5
         u/MpQdlEbvY3y8XEXvkaN0tKfw1P6L2q1RDjCMc9Z8IdzXKaNORadoZgvYL25J3gNPHU
         Uhl/vGyuSj4KqeHlR3VCWhqPC2RmXZy/Q7cSoqPEWVjxFI5A1X5iAvOjV5/szA1Whgk8
         ajr8+zcxmCP5A3GJF2nxkgKBAeEV8iH3h77d5xvb4e0ceVGLU/4Kf32gwAW2CdPIPG//
         OjrA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:in-reply-to:references
         :date:message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=9uuvpSBbrMEkHA9LKLxQYZxkYPzm2Hu9GfjPYGAKSJg=;
        b=UAXZd6lswaZjpicy/jrEFUx2lxt2R2/p3mh1kHQdj0fuC1YpNzuuDd1hzCfLWw8Tu+
         BYPwqaj93V2/IxrHHKZJAbkA4Mkj2SvLozlZOsHvVW/8eoowvLhL4dur40zazv8v9vRT
         xAczVfUECqsP+otAtFDjyzlQytQxaTIMMUlD3653pKugK1FiRVVeHEDfMmAEso2P71LV
         OOlQpvCCw/bSSNImmoIOZ3A+D9LUV7qJSJ/iPZU/Axsr1ouGcg4t5i2zwkVKg18rhPqq
         QIyBJ/pV1macIrE05shePbGNQ03LxTBz/7omd4kO2LVsQ8itmLb/TVy+dnznLcF7hDnX
         283A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ08orZsUtWgeQ8wBnUuX52yzl6Ne9JWxfgC0vGcTr6PEPCZVsq2
	NsZXR1sYqpnyy9UuuFxrvv8=
X-Google-Smtp-Source: ADFU+vuqmxl+fsXBP2wDjeGEoDXPYU8kH+CQ10LC2jpzhZv4KwMzAoVVRmfv5ekMt7gFFicHxEswTQ==
X-Received: by 2002:a19:ee13:: with SMTP id g19mr2966901lfb.205.1584266573472;
        Sun, 15 Mar 2020 03:02:53 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac2:41d5:: with SMTP id d21ls576331lfi.11.gmail; Sun, 15 Mar
 2020 03:02:52 -0700 (PDT)
X-Received: by 2002:ac2:59de:: with SMTP id x30mr13255251lfn.144.1584266572775;
        Sun, 15 Mar 2020 03:02:52 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584266572; cv=none;
        d=google.com; s=arc-20160816;
        b=vt3wRBh0RSqQMBnfT5WvVh4sWCRF6vk61Tiu6y7GmzDvXjNhkq8k6Ox3VppwQrZ0zP
         vQzeRwceCWsnCoWxuEivK8255SweRcdhnGXyNLr3Y9RQ2ypwoiQQe+9tXaxrSC8dlXzY
         WXqwrDf0Oskj7xZTwz80ycSV22DpfpD9JNEWU7dUWnv7F1Q8msooXO9chDT7jXKCgy5Y
         E4WjiwePXowk/oYWaqTq9vOhz1SN85VQ13mkQGm2jWaUGAAtTI7iKxXMLsS8ZKBHJ6HM
         teLvRWOaCmNhbnkjShTsHbfs/dfJg5npCp22NzeqQDzuW4Vk+T3dTW4gJIt+exEozWJa
         ZppA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
         :from;
        bh=OnATym2Ssz6pXenVi2dtMRvwkk2U1JGQuDX9vnQxjpg=;
        b=KpeuWTryikXLyvynLeYFO5x6mJpDRJbpTRoRIhTlCFOPFZ0B5ZLzkoIQPH4ib2Zoxl
         0vY+2Nr8MEaQzOa3cKSD7amT7vlR7DDGqF8/ip8HfqJ37dKIGdypq0w2wHBgd5dj/AXs
         qCqvhxq3/8JRqzr3mO/d3JawTePJTKnm+RiT23yndzaZNGX/B3aPq+f5ol+mD7WueJPE
         nFps97J9CFeVoyqdLEfOzAAInjNCar+LejZfUR5VqAPV2CVu/rFQlTsuYe65d2jyASvk
         w1zE5Qg2DaAUmQINXsHkFs7/a5C6R9xc09hyKlkTJjLVwv0zehK8Nvxdpa2sgs0kpj4D
         XTzQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of tglx@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted sender) smtp.mailfrom=tglx@linutronix.de
Received: from Galois.linutronix.de (Galois.linutronix.de. [2a0a:51c0:0:12e:550::1])
        by gmr-mx.google.com with ESMTPS id o4si50988ljp.4.2020.03.15.03.02.52
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=AES128-SHA bits=128/128);
        Sun, 15 Mar 2020 03:02:52 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of tglx@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted sender) client-ip=2a0a:51c0:0:12e:550::1;
Received: from p5de0bf0b.dip0.t-ipconnect.de ([93.224.191.11] helo=nanos.tec.linutronix.de)
	by Galois.linutronix.de with esmtpsa (TLS1.2:DHE_RSA_AES_256_CBC_SHA256:256)
	(Exim 4.80)
	(envelope-from <tglx@linutronix.de>)
	id 1jDQ6Y-0007T9-0n; Sun, 15 Mar 2020 11:02:46 +0100
Received: by nanos.tec.linutronix.de (Postfix, from userid 1000)
	id 09DCD101305; Sun, 15 Mar 2020 11:02:45 +0100 (CET)
From: Thomas Gleixner <tglx@linutronix.de>
To: Dmitry Safonov <0x7f454c46@gmail.com>, Vincenzo Frascino <vincenzo.frascino@arm.com>, linux-arch@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, linux-mips@vger.kernel.org, clang-built-linux@googlegroups.com, x86@kernel.org
Cc: Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will.deacon@arm.com>, Arnd Bergmann <arnd@arndb.de>, Russell King <linux@armlinux.org.uk>, Paul Burton <paul.burton@mips.com>, Andy Lutomirski <luto@kernel.org>, Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>, Stephen Boyd <sboyd@kernel.org>, Mark Salyzyn <salyzyn@android.com>, Kees Cook <keescook@chromium.org>, Peter Collingbourne <pcc@google.com>, Andrei Vagin <avagin@openvz.org>, Nick Desaulniers <ndesaulniers@google.com>, Marc Zyngier <maz@kernel.org>, Mark Rutland <Mark.Rutland@arm.com>
Subject: Re: [PATCH v3 00/26] Introduce common headers for vDSO
In-Reply-To: <693b6a61-b5f6-2744-1579-b356e6510547@gmail.com>
References: <20200313154345.56760-1-vincenzo.frascino@arm.com> <693b6a61-b5f6-2744-1579-b356e6510547@gmail.com>
Date: Sun, 15 Mar 2020 11:02:45 +0100
Message-ID: <87fteadjga.fsf@nanos.tec.linutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Linutronix-Spam-Score: -1.0
X-Linutronix-Spam-Level: -
X-Linutronix-Spam-Status: No , -1.0 points, 5.0 required,  ALL_TRUSTED=-1,SHORTCIRCUIT=-0.0001
X-Original-Sender: tglx@linutronix.de
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: best guess record for domain of tglx@linutronix.de designates
 2a0a:51c0:0:12e:550::1 as permitted sender) smtp.mailfrom=tglx@linutronix.de
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

Dmitry Safonov <0x7f454c46@gmail.com> writes:
> I like the idea, but I'm wondering if we could have less-grained
> headers? Like, AFAICS the patches create headers < 10 lines and even
> mostly < 5 lines.. I like that header's names perfectly describe what's
> inside, but I'm not sure how effective to have a lot of extra-small
> includes.

If that goes all into a big header then the headers from where the bits and
pieces are split out would have all to include this big header which
might result in other include dependency nightmares.

>>  create mode 100644 include/vdso/time.h
>>  create mode 100644 include/vdso/time32.h
>>  create mode 100644 include/vdso/time64.h
>
> Maybe we could made them less-grained?
>
> I.e, time32 + time64 + time.h => time.h?

Then you end up with ifdeffery. I like the clear separation.

Thanks,

        tglx

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/87fteadjga.fsf%40nanos.tec.linutronix.de.
