Return-Path: <clang-built-linux+bncBCP4ZTXNRIFBBDXOXX5QKGQE7SDMHDA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x43d.google.com (mail-wr1-x43d.google.com [IPv6:2a00:1450:4864:20::43d])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C4B6279B33
	for <lists+clang-built-linux@lfdr.de>; Sat, 26 Sep 2020 19:14:54 +0200 (CEST)
Received: by mail-wr1-x43d.google.com with SMTP id w7sf2585739wrp.2
        for <lists+clang-built-linux@lfdr.de>; Sat, 26 Sep 2020 10:14:54 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1601140494; cv=pass;
        d=google.com; s=arc-20160816;
        b=qk58v8xNTt+5hKQT18kkDwr9M5oZLTKIMQfdQuk2kPYarxcKTmo+AhkMZEWEZeCYBk
         RkyZ5lndDGMRCyqryS9ymDrltPjmNfPSitYK/9o4jAvJBzn4qlWbhGtujUTot3yX+bh9
         1Uf/SaXVdwUKyvdhbcVyamKckpWvZjAdSzlIUaESzRA2ii/InvYZ4NDA2udotI9WY7gI
         GCSZDMCzBb5Y9O3FCSFVX9iciFDyughevaObIrHxii9n4pQr8Ccjx4sEOhi00ibE+3Lb
         u/8ni3oh82uaAkGmy76N/wgQCpxrICIeWU0DaGz/loJs42GK738k6b5WOwoGUefwNPSR
         MnvQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=B+lD5zw6dKABMZAdA35xB4SgscBQJAnDdCXjFpsxAKc=;
        b=Ou99z72bTiV6tyOo0dDZjsX+wpJ3NwTTegZb1ci99cRLrpykBgMHpCPlAu58EYm+8d
         u7lt6EhZ/Mo0Ez3y9APi0aLAO7PUVMdeICuY6l8ntyjXGbgbDv1nTlhAFZ3GGETL2loS
         Dle50q3B1WzIt5TZB2+bih71bAG/steDlU9uslxpmGqgfGDUhpL8Dw773N+HRhnpWvK3
         mMf6lHfDcEfFwfLOiLzqsj/XhR0tfekWGwyCWxG5edf77SMQTwXRhHxg0+5eVoy6xZkB
         mKk81CUst/NqEPdY4fqTu9QzhBiEn9xPhLAvFKJFhsTIuZvLJ00AZQN90WTZ1WxsUoO+
         LBfw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@alien8.de header.s=dkim header.b=aIHN0152;
       spf=pass (google.com: domain of bp@alien8.de designates 5.9.137.197 as permitted sender) smtp.mailfrom=bp@alien8.de;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=alien8.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=B+lD5zw6dKABMZAdA35xB4SgscBQJAnDdCXjFpsxAKc=;
        b=NpW3Cay7cdwYv1suNfSFCg1A1Z23Ow+3xVfKhzfqR39O371VhDWdU9vcp8tZ+TAvGV
         5GBpIrY3TvBkPAqunVj06jiVRG21daVWenXYeBnGzDKLigyHo2BWMsl8PadGd0EEH1s1
         qbtYGYipn5FFRCbDR1vAQHoJhgxBsk0LSh9U91aaBl7WKpmtxQFKfaYf10hkgciTq09w
         hiW5cShSCmesleotXcZs9pNIBRKdOm7nO2lf1sDpDg1XzQEyzs8i2nV7CKrVZoXsJzrr
         QpMwi8khHok5+FVW9T4L95H/kftmi/jk5wGAkTlAclHlbEK1BNIOEjrSg5rd8xQHW8v7
         KS5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=B+lD5zw6dKABMZAdA35xB4SgscBQJAnDdCXjFpsxAKc=;
        b=T6tMi+hprgaNJxHSdOsfnGvAlWaz9N6JouxIdFkro22nZhocrqFqLrBFsFvED0rl6k
         UpxzgqjTiD9DXbjcdFu2/9/Y1Jd/Kn9yfhS6jvn8n3wJH6fkbH01HWyq1JUmzztdGzL+
         mmc0PKRm7IrbGfwReZ1fJHuz9eber9NZo5mx/18sHh8e8FuXkoirXupYpXURbi7PGZnt
         NI27oseklBxpICExHlCyy7QpbnDniExlUVWs2VvXyt37Cbke+gn5GKGw1Ui11XsZ01GH
         RdV0Zsc8m2POCPNyVS/CVixCRCFKQDHLJoWEjkzzxrcSuDKdWPmQ6MvoGwkRr7hZam+r
         bdKQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5336eXhZv7fPmcXn+Aqc1JRYU77i36nFuVXgNg5rPwSScOZkG6vw
	hFSIN7LXbP9kyhuE8nF8Q4E=
X-Google-Smtp-Source: ABdhPJwBZ63vbLMxB/hr08yR7h2qZ7VHp+iQm+oZmbujnmX5NIG0LXaga4dZju/ULIeuuP0Lvhbb2Q==
X-Received: by 2002:a05:6000:100c:: with SMTP id a12mr10924170wrx.115.1601140494366;
        Sat, 26 Sep 2020 10:14:54 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:adf:e3c3:: with SMTP id k3ls7093073wrm.1.gmail; Sat, 26 Sep
 2020 10:14:53 -0700 (PDT)
X-Received: by 2002:a5d:680b:: with SMTP id w11mr10989564wru.73.1601140493510;
        Sat, 26 Sep 2020 10:14:53 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1601140493; cv=none;
        d=google.com; s=arc-20160816;
        b=IfJUe1z+uvx3TenHotxzy07o+8SrFQhUatu6yszG/k4WMCpnGDVXEU7G0feuDgzMWx
         BVoMI90zdLZIZoQ7vmf/YHEkLE8KuFT3y+EOJV5ysAa6C5+pC54r5gvCkMbnZqr8I9qu
         mXQoU4nqdhsjhF0aNdYHXjWMpw7hfsfpZ41LolS37TTLxzEYn3T3ZqvZsEG0AMp1njaV
         CCoMW/rL229D0duu8XWVzaNoDSv3GMSIkBVS2sBKKsdyQDCPjr7uRK5voVFl57k3fhU8
         lpBLZSsJrsx/M/OqGiS83283+x0jXn9UH3hurqZbPS9j+Z4+xJM8SrzQXebJ4f9ESntX
         CxoA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=FRmt1ZU323p3kg9TO7fbBge69StpQX8q8Foc3zlvE2s=;
        b=ole3j6T9TEk8ykAY91QrgXI9SYkMEaYhu+4wbLcv0z5F1TsU7agugXMH4/+Eig3G9l
         d4H6+Y9nhLBtGlc2nJCY6NUY7/+QowuyxH8lnhqXvdLhmPrfJtQs1aOPEYM4o9FWNdhM
         n3RXNAwmcu/VFyQNFt1NZjKjKV26z54s1V/eAGLLpYog1Y16LLwqicZ+QuftBGAH+CpH
         6f2XA9BquCCKi7QiRZoZ32OhJuRQyKuD/TsrpR4wpX3b4lMV78XbbrGmWuJAQk1QQp65
         rWpHlShGQkZ+m7INaWnnQwmde8awAAMXgtiGZgzgIgICSFLJlbeyHzV/2Hs/DepUrmzP
         RlWQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@alien8.de header.s=dkim header.b=aIHN0152;
       spf=pass (google.com: domain of bp@alien8.de designates 5.9.137.197 as permitted sender) smtp.mailfrom=bp@alien8.de;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=alien8.de
Received: from mail.skyhub.de (mail.skyhub.de. [5.9.137.197])
        by gmr-mx.google.com with ESMTPS id s192si50511wme.1.2020.09.26.10.14.53
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 26 Sep 2020 10:14:53 -0700 (PDT)
Received-SPF: pass (google.com: domain of bp@alien8.de designates 5.9.137.197 as permitted sender) client-ip=5.9.137.197;
Received: from zn.tnic (p200300ec2f1c25001c55400185a26885.dip0.t-ipconnect.de [IPv6:2003:ec:2f1c:2500:1c55:4001:85a2:6885])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.skyhub.de (SuperMail on ZX Spectrum 128k) with ESMTPSA id EB5C31EC03EA;
	Sat, 26 Sep 2020 19:14:52 +0200 (CEST)
Date: Sat, 26 Sep 2020 19:14:51 +0200
From: Borislav Petkov <bp@alien8.de>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Dmitry Vyukov <dvyukov@google.com>,
	Josh Poimboeuf <jpoimboe@redhat.com>,
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
Message-ID: <20200926171451.GB22089@zn.tnic>
References: <CACT4Y+b9ZCKJkOmwbEC6sZxEQ-9g2g=-v4+X0aWv7AsrZo7utA@mail.gmail.com>
 <CAKwvOdmKcn=FNzwtBZ8z0evLz4BXgWtsoz9+QTC6GLqtNp1bXg@mail.gmail.com>
 <20200921221336.GN5901@zn.tnic>
 <CAKwvOd=E11KriNqeVv2-Tvq5sQy=4vyBzDEH22D5h5LgBeFsVw@mail.gmail.com>
 <20200923090336.GD28545@zn.tnic>
 <CACT4Y+Y4-vqdv01ebyzhUoggUCUyvbhjut7Wvj=r4dBfyxLeng@mail.gmail.com>
 <20200923103431.GF28545@zn.tnic>
 <CACT4Y+ayTBwBwsnV9Kp-vMQ=hgu9-r9g4qzAfd+HdQXX95PX9g@mail.gmail.com>
 <CACT4Y+bjyAfO-TRjBHT9wR194=prH2C284Oc9akVVHR1492WZA@mail.gmail.com>
 <CAKwvOdkYEP=oRtEu_89JBq2g41PL9_FuFyfeB94XwBKuSz4XLg@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAKwvOdkYEP=oRtEu_89JBq2g41PL9_FuFyfeB94XwBKuSz4XLg@mail.gmail.com>
X-Original-Sender: bp@alien8.de
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@alien8.de header.s=dkim header.b=aIHN0152;       spf=pass
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

On Fri, Sep 25, 2020 at 05:32:14PM -0700, Nick Desaulniers wrote:
> Boris, one question I have. Doesn't the kernel mark pages backing
> executable code as read only at some point?

Yes, I added some debug output:

[  562.959995][    T1] Freeing unused kernel image (initmem) memory: 2548K
[  563.672645][    T1] Write protecting the kernel read-only data: 137216k [0xffffffff81000000:0xffffffff89600000]

and perf_misc_flags() is well within that range:

ffffffff810118e0 <perf_misc_flags>:

[  566.076923][    T1] unused kernel image (text/rodata gap): [0xffffffff88608000:0xffffffff88800000]
[  567.039076][    T1] unused kernel image (rodata/data gap): [0xffffffff8941d000:0xffffffff89600000]
[  568.205550][    T1] Freeing unused kernel image (text/rodata gap) memory: 2016K
[  569.277742][    T1] Freeing unused kernel image (rodata/data gap) memory: 1932K

We also have this debug option which I enabled:

[  570.598533][    T1] x86/mm: Checked W+X mappings: passed, no W+X pages found.

so that looks ok too.

> If that were the case, then I don't see how the instruction stream
> could be modified. I guess static key patching would have to undo that
> permission mapping before patching.

Yap, and I still have no clue about the mechanism which would lead to
this corruption.

> You're right about the length shorter than what I would have expected
> from static key patching.  That could very well be a write through
> dangling int pointer...

Right.

Lemme try to setup one of my test boxes to run syzkaller and see how far
I can get. But don't hold your breath...

-- 
Regards/Gruss,
    Boris.

https://people.kernel.org/tglx/notes-about-netiquette

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200926171451.GB22089%40zn.tnic.
