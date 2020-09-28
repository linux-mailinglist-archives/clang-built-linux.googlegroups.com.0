Return-Path: <clang-built-linux+bncBCP4ZTXNRIFBBYUMZH5QKGQEZN5JBYI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x13d.google.com (mail-lf1-x13d.google.com [IPv6:2a00:1450:4864:20::13d])
	by mail.lfdr.de (Postfix) with ESMTPS id D6B3F27B627
	for <lists+clang-built-linux@lfdr.de>; Mon, 28 Sep 2020 22:24:02 +0200 (CEST)
Received: by mail-lf1-x13d.google.com with SMTP id n133sf2332295lfd.8
        for <lists+clang-built-linux@lfdr.de>; Mon, 28 Sep 2020 13:24:02 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1601324642; cv=pass;
        d=google.com; s=arc-20160816;
        b=oRokWVXpqnQ/D9y4zPlLLizelemk9ZfyAiEfKck56U4XpsY3wFLOuuyVwGzJ6hAQ1E
         UVieprmt6/NeINF8PAjuoxNX6nvXhit0I7H48WuzO8ODrq21cV8mrNUuPeyIm0WYh4WJ
         7BwJKcU/AQT7lrG5NOCYABBYCFSIneiHwiV9mQQ5rZFQI3AdJ4BCrfQDeORbd+uoQdkl
         QViAUrg6Bd5wLVGcH13V1PReI4R/43eb83ti6Nd05UsdhtygYqTWLYpCLGPhdqefWxlg
         CYsyJ9eIPHNmgr1IBdrkLUYR+JCnec4NKrO6gnMJFvs0abgNZf0oDSe5Q11ffyUEtHV4
         BXGQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=ODVB5I8y7oVzFdR8n/RIXC36LVyMTPl4FTZbjIeE3kU=;
        b=rKkk0b+pNGmlyJCIqAdJH07Knv9I22buKMeEzIiMZfTKXW70JtLNfqnfur0ZgO+k/Q
         ef5TjasQ7oocfbwT/SyxTDxCfQhZXQcuNpVFTHP8P1qlx+LoypkJ4s+7qSQZGA6ibOIv
         lCd/zFTyWQ5qrqN2XIceGf1lWC66m5SESHDRC1kml3saOKhhbA2C4wzEOqFUDoOiF4OF
         IvkcuwbvhSVzKwIKY25L7VAulAzeC8Y/2ycQz3yDlpf4TkTVmX9NVDiVIey9e8SawmE1
         pCMbyHXR9GZ5Sf3SuRKDk13i7h9X0RN2uygTJ8mZxTVc3U+IiTo1tDRtFC9Osa0nZbHv
         S7AA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@alien8.de header.s=dkim header.b=LJzByyTu;
       spf=pass (google.com: domain of bp@alien8.de designates 5.9.137.197 as permitted sender) smtp.mailfrom=bp@alien8.de;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=alien8.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=ODVB5I8y7oVzFdR8n/RIXC36LVyMTPl4FTZbjIeE3kU=;
        b=Gg7zHUpx2qQzOGlJIjhpzRnbVZrt2JzIWypZhremty6ssLlwpEmmb9WhvNoFTFH/mg
         xcUL2cpZedoH/2I7WWsNn55qKAYhUciGc4RZDG4PbfU2IiwvyKV9vvMbBhb6jkixKAiW
         qIOKiPvgf2NnzPJM1lXxZpuK8TFNhwtX4tU0aVcPe2zxpNaDkc4F2txOJPE/KsfnqPDD
         QB9t9NS3046ZcJ9/abC/Iy8YOKz5T9ygjLORPfqde9AJvcnK35fBHubD/BV0cqeVj0hF
         p3sOIY/7ETX4X5QPgIrEd54/Fw5PLIgJUbxv1WhVxNhbvJhgfHRbIHc7MVAekG5tCQUZ
         1yqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=ODVB5I8y7oVzFdR8n/RIXC36LVyMTPl4FTZbjIeE3kU=;
        b=QsyaR8t0zlIL3tQ0iEAcxZvmyais8is+hM1yqAQvHG7S2NVkFwdoB1mBpXmXZtc7+5
         XoxMmLQEf4uYREH4Cjn2PtkRZOVHlMEHIur0O+/xy9GjSUhpifZ2pC07AP66ZqqQufym
         PJnqKz6Uk0JmGNJ56dZx0/gYK7A13HOKgsbTR0VAdpXI4q8ZQB1eO4fXM8cvXCgwF8Al
         99xG3qNSPTv7zqLLUYAb8V29ssssV1KKqveu9qBYfiZOfwrqdhjbmzxY8iCAhL2ZOkAm
         NvsKK0WiDmlTZgWkm3JH9RIfmkWapFPPUfoCkrkeoyPN70WCqUbSwd9GepBcKU3kQQ7+
         0eOw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532nhwufZmcfNyqS9ewtzfIybNsWMnt2iWdhGI7/q/wSfa4us+sg
	CT7v0VzKhuG/iNv1H7ZuNP0=
X-Google-Smtp-Source: ABdhPJx7w+cYtLg4pnEtzWaaHBTf6BturMc6tlyn22+nekLND5iI5T87j9zYVvjKlq7ZM8duPIkJ2g==
X-Received: by 2002:ac2:42c4:: with SMTP id n4mr1148953lfl.563.1601324642376;
        Mon, 28 Sep 2020 13:24:02 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:651c:555:: with SMTP id q21ls365659ljp.3.gmail; Mon, 28
 Sep 2020 13:24:01 -0700 (PDT)
X-Received: by 2002:a2e:2241:: with SMTP id i62mr96900lji.265.1601324641249;
        Mon, 28 Sep 2020 13:24:01 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1601324641; cv=none;
        d=google.com; s=arc-20160816;
        b=XcP7erl11iF+liraxS2tBuRGzaF+DC1Ji3YqMmTwuVE1wbDagJg3OnBqKY1tjuMALw
         k4si3APPfn8W2y/r0eGjN0w2naGffLAc8nG4JTcb8WZLOLh4ofzsU0GF7ske+gKBeut3
         mTHOAOzEXtJYUgrS6we+U+X0fvKQ/eWy4wEqhxjAp+UDs63GPlfiLlhxGmyy+TG0yUvN
         8ZLq4Pas+gY9jwJ1IRKdS/AgqpADSCHdnUzMbDGF0pRvRYdx5XLSSnlgm+fbdXw2uTdb
         /gu24c7OFQfaWrF/dmHEqYkbGkoVm0WZbdLkmE0+0loLTdSshDV3VQyMNc+lsvTQ9+N6
         W3wQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=/Vc/EOWpwj9Re8MBl2KQeXE6/D+XkoCsL9dg0BIB/+M=;
        b=oXPo2Nrkf8WXmyBSUNsOyw9Vqg/0LpMlkKlZQkGJ4hQB9tWpphYl94Zt0xdlkYuU0U
         hvqM1cxpRzPihFSu/Rwv9P8HCZaJCjB0tKejfQmq2L6zXBf0wU0R480CaYGe2imMC114
         gH8duLoH7/FHsBHu5nlNynIrBayQZJnBiHDzTsHOqOkdndk5r+FmhS3Hs0qPvyZEsFpf
         jiL7XNPpjE8wkCw7J6x5pfKwSv6gqFrkIjaTEjCubFJVoetvgEPN8kjiwwqIx59f5DwW
         VmJHB4VFtzbZII3C89a82XINXvUuYSzdFNLFFMUfxrVBfOWOrnUjhTnRLj0oVFwNZ/oF
         GewQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@alien8.de header.s=dkim header.b=LJzByyTu;
       spf=pass (google.com: domain of bp@alien8.de designates 5.9.137.197 as permitted sender) smtp.mailfrom=bp@alien8.de;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=alien8.de
Received: from mail.skyhub.de (mail.skyhub.de. [5.9.137.197])
        by gmr-mx.google.com with ESMTPS id r16si195341ljg.1.2020.09.28.13.24.01
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 28 Sep 2020 13:24:01 -0700 (PDT)
Received-SPF: pass (google.com: domain of bp@alien8.de designates 5.9.137.197 as permitted sender) client-ip=5.9.137.197;
Received: from zn.tnic (p200300ec2f0722007a3ac295e7df05a2.dip0.t-ipconnect.de [IPv6:2003:ec:2f07:2200:7a3a:c295:e7df:5a2])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.skyhub.de (SuperMail on ZX Spectrum 128k) with ESMTPSA id 4CCF71EC0409;
	Mon, 28 Sep 2020 22:24:00 +0200 (CEST)
Date: Mon, 28 Sep 2020 22:23:53 +0200
From: Borislav Petkov <bp@alien8.de>
To: Dmitry Vyukov <dvyukov@google.com>
Cc: Alexander Potapenko <glider@google.com>, Marco Elver <elver@google.com>,
	syzbot <syzbot+ce179bc99e64377c24bc@syzkaller.appspotmail.com>,
	Arnaldo Carvalho de Melo <acme@kernel.org>,
	Alexander Shishkin <alexander.shishkin@linux.intel.com>,
	"H. Peter Anvin" <hpa@zytor.com>, Jiri Olsa <jolsa@redhat.com>,
	LKML <linux-kernel@vger.kernel.org>,
	Mark Rutland <mark.rutland@arm.com>, Ingo Molnar <mingo@redhat.com>,
	Namhyung Kim <namhyung@kernel.org>,
	Peter Zijlstra <peterz@infradead.org>,
	syzkaller-bugs <syzkaller-bugs@googlegroups.com>,
	Thomas Gleixner <tglx@linutronix.de>,
	the arch/x86 maintainers <x86@kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>
Subject: Re: general protection fault in perf_misc_flags
Message-ID: <20200928202353.GI1685@zn.tnic>
References: <00000000000052569205afa67426@google.com>
 <20200927145737.GA4746@zn.tnic>
 <CACT4Y+Zxt3-Dj6r53mEkwv24PazPzTxQ7usV1O+RB0bk2FzO8g@mail.gmail.com>
 <CACT4Y+ZZH76qg810RzGp6FDLTxJWVqZgkrXSxqgq7AjpPYG9XQ@mail.gmail.com>
 <20200928083819.GD1685@zn.tnic>
 <CACT4Y+bPFASnmFRKpQ=KY1z+RnTbGmkPU3aikzdXZpKkV03D9A@mail.gmail.com>
 <20200928085401.GE1685@zn.tnic>
 <CACT4Y+Z4Y6SJJ6iYBhVRiknrWBAD6gGhQXiXLhxPniDNBFJGsA@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CACT4Y+Z4Y6SJJ6iYBhVRiknrWBAD6gGhQXiXLhxPniDNBFJGsA@mail.gmail.com>
X-Original-Sender: bp@alien8.de
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@alien8.de header.s=dkim header.b=LJzByyTu;       spf=pass
 (google.com: domain of bp@alien8.de designates 5.9.137.197 as permitted
 sender) smtp.mailfrom=bp@alien8.de;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=alien8.de
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

On Mon, Sep 28, 2020 at 12:33:57PM +0200, Dmitry Vyukov wrote:
> It may be related to VMs, but also may well not be related to VMs.

Right, and so I tried to set it up on a test box here, it looks like
it worked, see below. I'll let it fuzz in the coming days and see what
explodes...

2020/09/28 22:19:51 booting test machines...
2020/09/28 22:19:51 wait for the connection from test machine...
2020/09/28 22:20:27 machine check:
2020/09/28 22:20:27 syscalls                : 3389/3739
2020/09/28 22:20:27 code coverage           : enabled
2020/09/28 22:20:27 comparison tracing      : enabled
2020/09/28 22:20:27 extra coverage          : enabled
2020/09/28 22:20:27 setuid sandbox          : enabled
2020/09/28 22:20:27 namespace sandbox       : enabled
2020/09/28 22:20:27 Android sandbox         : enabled
2020/09/28 22:20:27 fault injection         : enabled
2020/09/28 22:20:27 leak checking           : CONFIG_DEBUG_KMEMLEAK is not enabled
2020/09/28 22:20:27 net packet injection    : enabled
2020/09/28 22:20:27 net device setup        : enabled
2020/09/28 22:20:27 concurrency sanitizer   : /sys/kernel/debug/kcsan does not exist
2020/09/28 22:20:27 devlink PCI setup       : PCI device 0000:00:10.0 is not available
2020/09/28 22:20:27 USB emulation           : enabled
2020/09/28 22:20:27 hci packet injection    : enabled
2020/09/28 22:20:27 wifi device emulation   : enabled
2020/09/28 22:20:29 corpus                  : 458 (deleted 0 broken)
2020/09/28 22:20:31 seeds                   : 620/667
2020/09/28 22:20:31 VMs 1, executed 0, corpus cover 0, corpus signal 0, max signal 0, crashes 0, repro 0
2020/09/28 22:20:41 VMs 2, executed 12, corpus cover 0, corpus signal 0, max signal 0, crashes 0, repro 0
2020/09/28 22:20:51 VMs 2, executed 28, corpus cover 5578, corpus signal 5925, max signal 10155, crashes 0, repro 0
2020/09/28 22:21:01 VMs 3, executed 179, corpus cover 11792, corpus signal 10881, max signal 19337, crashes 0, repro 0
...


-- 
Regards/Gruss,
    Boris.

https://people.kernel.org/tglx/notes-about-netiquette

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200928202353.GI1685%40zn.tnic.
