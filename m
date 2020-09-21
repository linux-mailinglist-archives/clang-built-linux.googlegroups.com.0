Return-Path: <clang-built-linux+bncBCP4ZTXNRIFBBHWLUT5QKGQEKZ3R4SA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x437.google.com (mail-wr1-x437.google.com [IPv6:2a00:1450:4864:20::437])
	by mail.lfdr.de (Postfix) with ESMTPS id 7FA50273582
	for <lists+clang-built-linux@lfdr.de>; Tue, 22 Sep 2020 00:13:50 +0200 (CEST)
Received: by mail-wr1-x437.google.com with SMTP id b7sf6517894wrn.6
        for <lists+clang-built-linux@lfdr.de>; Mon, 21 Sep 2020 15:13:50 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1600726430; cv=pass;
        d=google.com; s=arc-20160816;
        b=TTfSMpB7YsX3yzpqxnBsaHmtzcXwmzwQSzhClFyKpxqMImi+tfwNzr/30jk1NHPYvy
         JFjFtqtLkItkQdAxgN5d6/ooZWFldiBaIzgVQyWuR0uLk81WQ1WJ9ZsgPRu1hkXjPvMt
         prTIwfBgOTOSMPanlqLjrcx7Q6x7H2uwxHCGMBeg4h4oQdEseIr17uAELt12j3hrbdLm
         aQ60qHqnTynPz/GSqP/Z9tSfhw0pW7VNBd4IBg+QhOpF7R0pjut7oOB27/DmNffJ2iay
         KWNhzKFWHMI/6V5E1YSPDLJX0Qxa4pHarU6P/PmFI8TJL7zXGVw2eKzGg3jM/Lw5N39S
         809Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=SfrBWKdBrUqhb6LQEQiVzOBwmQGB9TvZqfzBwCd2kFo=;
        b=XQe12tgxPlw38ifb7MugoH8hAbLuIdGoWqvn6lUXDhxfA61wqWmYaPRc2qET9aw4rI
         TkPcv1i3zRRVh4544rf4I3fSABRKyPzpLtEFrCbTNuS+kGQoWGO06diWtqt6aUIsVJVJ
         Dcc7zWBC/+fiMAJooRgomnHZVoAENQ+wZbRdIljEWBWCeRo8N2t3NN34Lot4gIJRU4fA
         YVVB79ilaort1pCPxkbsdNWOC2JSt+2I5CnYv3sUfNikEKAXLmfNo9XFdaxao8e0fyjW
         nnckaPuFsHRezaqHGSvWUEdvAgD/NjN+SkZw3BqQE3appf+DGYs4L1ZF2pUStFh0s6yf
         mpRQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@alien8.de header.s=dkim header.b=hhIFa+Hw;
       spf=pass (google.com: domain of bp@alien8.de designates 2a01:4f8:190:11c2::b:1457 as permitted sender) smtp.mailfrom=bp@alien8.de;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=alien8.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=SfrBWKdBrUqhb6LQEQiVzOBwmQGB9TvZqfzBwCd2kFo=;
        b=QUvnXV+6I0S8DG8ca6oBrPJBxCqCH7WuXD3eTOqrJV5/pnvOet13OiXXn18DUh3VRv
         u+nP8G2LIZWJZO8+p+1FBiKXaRdseEa5SH5xHFAebGX0nsjirfi0R4hs9LYBhfy1ERkq
         MUIvwur2KwPKJbbP+7RCbRnqbtkc8QWv3cCOyqfeOfSJzMYcaN3Yy+O+NoBTDdMaZ5KM
         AIsJPuERb+vUfXfgpOdT6Y/mLiitqTS/CAPJbmxd4kCMSUAdBmGX+G4P+caggx1ZAnUD
         IEN9z8fs6VLpGA6KONJ6evp2w63Nm87P/gxhzEM9KoXCvleoqEnHppxv23RW05JtVGYh
         Amxw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=SfrBWKdBrUqhb6LQEQiVzOBwmQGB9TvZqfzBwCd2kFo=;
        b=Yj36LaIRpKmzUWl5Pu51z+glZpMRN4+Svbr1z03oXQxoP4rN0hQhW9nN5zAK1eJldX
         T/aUXulI3ulBmSoDYmOWZ4lB3UUrEm23ojTBXDkLjuJzODiEcXrwUFZh5yF2YnaKhios
         rx6wNoPIFdYHQxR65uAG5a53vvcTFtbJ8xqVg7XVqR4dpzuNhT/1GUDEUDUQQ7v6sZLF
         7K5oZYtbia4ccK/U5QotDclWcxU4LhY+yct+T7WNnQ/jVpCeyiZ7WDbA716wtqT5OfFe
         tbSGoltTh7dSg12r1SJZGtP1YSB0gjDw9jG8Zjw0IInwMpPBxZCciApKdBT+n7BWkYIX
         s3yg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533eNtf3kvLXTiGeD+gDiAPIC5XnNPuW0iVg0I2mZziL+/AJ8eNJ
	45uyH1ei/JFg5C9i5PP9w10=
X-Google-Smtp-Source: ABdhPJy2eH5Ld6KkdFPQZ6Nh6iMj2iy/2FRYpcbjlJH0RgNfTI9zlNpAP/A+7fePCF08LJMgyT9sXQ==
X-Received: by 2002:a1c:b407:: with SMTP id d7mr1389203wmf.59.1600726430261;
        Mon, 21 Sep 2020 15:13:50 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5d:428e:: with SMTP id k14ls1559087wrq.0.gmail; Mon, 21 Sep
 2020 15:13:49 -0700 (PDT)
X-Received: by 2002:a5d:67d0:: with SMTP id n16mr2073490wrw.198.1600726429353;
        Mon, 21 Sep 2020 15:13:49 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1600726429; cv=none;
        d=google.com; s=arc-20160816;
        b=s1BP982kk0hFCWMRno42ti1ImnakSqm32/fEE0QS4SGJAvbbIImZ489EG09Y3yn4SR
         jFDlexkDk6SW+H1SjRTbod3UbxgfxF8oGT5P2UM4MA2C9HDqhPhd4VrG6rxWOkonxFCT
         xMoCNjc5cye2OawviP6F42GRXyb31l3xqeWMy9238psKavVBhhs7ma3XXvkKAiOh4F3c
         KfZD/1undF6MwDHRxbxvvuczAM69n3FqflcgLZyBn2EEnHX97TpmnJWiSO0Z8U87gVu0
         P3S5rF8W6YsLTbUU6J5AsC1hznw3Ttch7l6dptaQ49R8Ry4kT0jakY/cRTpoFatf8IC+
         xEag==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=u/ai9rsZw+bNAm914PoiDjMDRau8nkOxqRVQQam3P/4=;
        b=Ou003Ut0pHTAL1BT2BqHix5bbj+PI3opf3pBGzgeXhU96DBuLcf4YgPphs7qADxrTV
         qbZxXKJJynQNSXT7hruxdJNsS/lw15FbiPwMZqOvJI2GLBLN4fUc5LhqqDo5EnLayL2b
         JrE7U4Frrj8rK8t/V8wsCU7DvaaB6XJw5hKPmuXQLeTa35Tz30soVR8vPo1rUNIKrd+f
         K393iKq5munV9+FQ5+pYuH5PSi3OTnRTWiiuBgLyaB7HwW0WnCvRTtYzRRpNezIwBhCc
         5q8gHMWva56VaQGcxwTI5AROU919Kzan9uZzcKsSIrzT+v3uQRh7sErLSnHiEAZmSwsz
         zzUg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@alien8.de header.s=dkim header.b=hhIFa+Hw;
       spf=pass (google.com: domain of bp@alien8.de designates 2a01:4f8:190:11c2::b:1457 as permitted sender) smtp.mailfrom=bp@alien8.de;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=alien8.de
Received: from mail.skyhub.de (mail.skyhub.de. [2a01:4f8:190:11c2::b:1457])
        by gmr-mx.google.com with ESMTPS id g5si56458wmi.3.2020.09.21.15.13.49
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 21 Sep 2020 15:13:49 -0700 (PDT)
Received-SPF: pass (google.com: domain of bp@alien8.de designates 2a01:4f8:190:11c2::b:1457 as permitted sender) client-ip=2a01:4f8:190:11c2::b:1457;
Received: from zn.tnic (p200300ec2f07e300e2ed6c50343c7f1c.dip0.t-ipconnect.de [IPv6:2003:ec:2f07:e300:e2ed:6c50:343c:7f1c])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.skyhub.de (SuperMail on ZX Spectrum 128k) with ESMTPSA id 71B581EC03CE;
	Tue, 22 Sep 2020 00:13:48 +0200 (CEST)
Date: Tue, 22 Sep 2020 00:13:36 +0200
From: Borislav Petkov <bp@alien8.de>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Dmitry Vyukov <dvyukov@google.com>,
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
Message-ID: <20200921221336.GN5901@zn.tnic>
References: <00000000000052569205afa67426@google.com>
 <20200919110831.GD7462@zn.tnic>
 <CACT4Y+ZhofJhNjfav22YNVpxtH4_+3Qaut6rOiqv4MLNU5mcEg@mail.gmail.com>
 <CACT4Y+b9ZCKJkOmwbEC6sZxEQ-9g2g=-v4+X0aWv7AsrZo7utA@mail.gmail.com>
 <CAKwvOdmKcn=FNzwtBZ8z0evLz4BXgWtsoz9+QTC6GLqtNp1bXg@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAKwvOdmKcn=FNzwtBZ8z0evLz4BXgWtsoz9+QTC6GLqtNp1bXg@mail.gmail.com>
X-Original-Sender: bp@alien8.de
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@alien8.de header.s=dkim header.b=hhIFa+Hw;       spf=pass
 (google.com: domain of bp@alien8.de designates 2a01:4f8:190:11c2::b:1457 as
 permitted sender) smtp.mailfrom=bp@alien8.de;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=alien8.de
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

On Mon, Sep 21, 2020 at 01:59:43PM -0700, Nick Desaulniers wrote:
> Right, the two sequences above look almost the same, except those 4
> bytes of zeros (the disassembler gets confused about the rest, but
> it's the same byte sequence otherwise).  Are the two disassemblies a
> comparison of the code at runtime vs. compile-time? 

Yes.

> If so, how did you disassemble the runtime code?

./scripts/decodecode < /tmp/splat

where /tmp/splat contains the line starting with "Code:". Make sure you
have only one "Code:"-line, otherwise you'll see the code of the *last*
Code: line only.

> If runtime and compile time differ, I suspect some kind of runtime
> patching.

If it is, it ain't patching at the right place. :)

But no, that function is pretty simple and looking at its asm, there's
no asm goto() or alternatives in there. But that .config might add them.
It adds a lot of calls to *ASAN helpers and whatnot.

> I wonder if we calculated the address of a static_key wrong
> (asm goto). What function am I looking at the disassembly of?
> perf_misc_flags() in arch/x86/events/core.c?

Yes.

> With this config?
> https://syzkaller.appspot.com/x/.config?x=cd992d74d6c7e62 (though I
> don't see _any_ asm goto in the IR for this file built with this
> config).

Right, there should be none.

> If this is deterministically reproducible, I suppose we
> could set a watchpoint on the address being overwritten?

Sounds like worth a try. I'll go sleep instead, tho. :)

Gnight and good luck.

-- 
Regards/Gruss,
    Boris.

https://people.kernel.org/tglx/notes-about-netiquette

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200921221336.GN5901%40zn.tnic.
