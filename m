Return-Path: <clang-built-linux+bncBCP4ZTXNRIFBBXHF2L5QKGQEBVYDXRQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x43a.google.com (mail-wr1-x43a.google.com [IPv6:2a00:1450:4864:20::43a])
	by mail.lfdr.de (Postfix) with ESMTPS id B54F127EF3C
	for <lists+clang-built-linux@lfdr.de>; Wed, 30 Sep 2020 18:31:24 +0200 (CEST)
Received: by mail-wr1-x43a.google.com with SMTP id s8sf801743wrb.15
        for <lists+clang-built-linux@lfdr.de>; Wed, 30 Sep 2020 09:31:24 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1601483484; cv=pass;
        d=google.com; s=arc-20160816;
        b=AwDbjnFaWRJVRDvxUf336HacMkVuEyHEo5WchmEkBYpC4Herbqa2k8wFsLsBTSs+/f
         ad0Otr0gtgHtvxclIDr27zto8/ar3OJznMrJ5Ylv38RyqwUegHTwb70jSNKN/5+7RYng
         xdvt6XZSzohaWNC75nlEasttMvjgEb5UHGdEDJE05P+gfRZlbAgFAaUxwmlv2WtAp5a0
         taoVARrpNrzQmKBh11FYKW4FU0zk75lUCOP8yLql5de2KZqXaRa2vVCg5UVWRUZcGH80
         ZvW4S6EqlbLrTSwJps9yVpJ/Oc8yEi/7TpDJW/eJQMbRIYtI2LNMIVhBYWL+p6J07cn5
         JQRA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=oupbmYeE/38hddXjCnRmG0gBlCD8KBM4dozyPC/CL/o=;
        b=jGE0EJWs1ns3fj9EyF3PNANqg3HsPr4aXtoP46YCjk3BwHwl9YXYFpTh9KZIICb8MC
         fiFQ+daqXYpJ8Hc9THkFA6IQP4FnsmtA+4ZkVZH//Pd1QDPUslsWScLxA+/bBm6TtS1O
         JHPvnMI/FrdCS1+qf9jckTlJYL/QvxUKD9Krxm+joz9noC9CjFj8/5cio2dbBM/EL3aq
         gWLt8Yb4e5pcDZY6OJ9k9At7UbkKfseqzN8wiX0dWjHb+1DlOurvwLTlQEGaOAVHpoMA
         EFpQtgVa4+PXD6bAnKgZfikDhI7P+q6WZ04Vlfuwi4EfMUAl82vtThfUe68d1An3XNko
         1hNg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@alien8.de header.s=dkim header.b="WbG9D0/S";
       spf=pass (google.com: domain of bp@alien8.de designates 2a01:4f8:190:11c2::b:1457 as permitted sender) smtp.mailfrom=bp@alien8.de;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=alien8.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=oupbmYeE/38hddXjCnRmG0gBlCD8KBM4dozyPC/CL/o=;
        b=KOlyaZ1qUhRFNuxgecU7GrJgZVbu33PrhcHA15oNEI32tkRD2Vwzt1HbpFdexzn9P7
         FA81O0X1D7JBXfduf0OEyCqXZWm87HUlfcCp9RhCVQyfrxr+iabOiQNOY3LHOdkMJhdn
         IHjdOBDUSSTAjfwxXaT80nJQ1w4HnVED9e/lHprN2DToQMEgpnbvMj7tgwGfjri69wPg
         FzE6TPxlmkE+5REcnLMB7o+rOCQEwWxVXDfHLXdh6owDwEet3Q/VUN1sfyR+niw1My1o
         maQsN1Bgpqnl61lvqpDvlnpmUXL+5+fKdUDuuR4zMMEKntpYqcCeUNYBuvj6JoZcKv88
         WGHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=oupbmYeE/38hddXjCnRmG0gBlCD8KBM4dozyPC/CL/o=;
        b=mf6zB9CU+D+PPzsH0Z6R5iNHgSRScG/hAg49P7Q/4M7xRoyn/Svhk24k0oBRvqbQY/
         4dCnwxf+r1K8tv7WUkEN68AKhkpYxAPcx8DVxzh/ZsT+mLMZTm1pKz6GjUGFcWTL9ZEw
         nLmjOPLRxAdkhKfeaJoBYVxvmeQFouTXcJ/7lRtWL0xaFfh4kI+RKjTWmUo7g9cEl51m
         Rp5x6ll9YhWm0b93vq0VIEQGAsX2NJnppHg3Zf74RWxyUNw6E2PnAc9uv4UWxioIIDsK
         kR27DVAQlutRg0MpuaF807btOmYRW8rF/oN8EPoI/d8qxVwEm2GXyQrmsBcmIHfsNhMg
         W3DQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531UXSVrySpX3Z9ZRJuPiHxXreinu6949k7oUcAh0xUit1/YkK4z
	xQUbuvTG3FH4Ffs37IvgAUc=
X-Google-Smtp-Source: ABdhPJyIuDloP/Gqrey2+1cctefoWm9wr7NbNUPBv9pHMXyuEf1mqaGpyKBFEqPCcgNxfFMPKYSpjg==
X-Received: by 2002:adf:e84a:: with SMTP id d10mr4333142wrn.66.1601483484522;
        Wed, 30 Sep 2020 09:31:24 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1c:9e53:: with SMTP id h80ls1405452wme.1.canary-gmail; Wed,
 30 Sep 2020 09:31:23 -0700 (PDT)
X-Received: by 2002:a1c:6055:: with SMTP id u82mr4026885wmb.126.1601483483606;
        Wed, 30 Sep 2020 09:31:23 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1601483483; cv=none;
        d=google.com; s=arc-20160816;
        b=zsc3Pvgkvlv47wem9yYaep4dxDoaTUxR4dEg6ll/vPo51L3WzYMMiJceNCI/DDXLoR
         YWqX336ug6uFVD94AUAWeocyTXpxaCDeeGFXz0MJRU0srQU/gHbkBVkBc3NwQLe8NpUh
         5IQj0MQz+0ZjJQt6k0r0y97TnZhUHg4v81af+lRMmT6t6mVxg/FhyRQNtkS+pnhTSKby
         E+AwL1a1kEGS5ozyHkZWjg8VRXDxG7czfWkLgPxMQSwgYfQdmetTqMTwKdeG5bE/hTp5
         ARkJrom8u3kZd3vmh+0dK6Ztdi3GqZeC0fSY28lyWQpcNU8JAgOT5MThQUR4+ZYFw0JO
         t/nw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=Dx1aQOyK27/HcHW28nNDA9Vv+UI+LGYZbrAVg6hlBNU=;
        b=zZ9Fr5kOo7/7UYXHdeR54kms+2gyHkrkNwcc54K7VDYfJSVOirzldCKHavqM4O0vVR
         oxhXhs/dfUxCZHTx3uSBdOrFVaM3Jzv6uwqoV0Ndko195pitEoHNBVMCOLeszd5WH8Eb
         TJsKhAEIxf7D509yuurH11ig0J22jZuQK2X46NK00+oifMhJbzf6lpmVO4pWuGBzjdB+
         KBsM2mz+R+QPxf6nhXXKJfkNC37DYOdHLA8xS0KtMiUJjYDlKUcRnC6hb8ObzZGtnk+k
         ZuPgklKFrRFuGG+o/OXbXsJs5wpMuY67hr+HAIrbzFvuWBsbspJOZxCmJzpaMwsxJTSR
         AUeQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@alien8.de header.s=dkim header.b="WbG9D0/S";
       spf=pass (google.com: domain of bp@alien8.de designates 2a01:4f8:190:11c2::b:1457 as permitted sender) smtp.mailfrom=bp@alien8.de;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=alien8.de
Received: from mail.skyhub.de (mail.skyhub.de. [2a01:4f8:190:11c2::b:1457])
        by gmr-mx.google.com with ESMTPS id z17si61709wrm.2.2020.09.30.09.31.23
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 30 Sep 2020 09:31:23 -0700 (PDT)
Received-SPF: pass (google.com: domain of bp@alien8.de designates 2a01:4f8:190:11c2::b:1457 as permitted sender) client-ip=2a01:4f8:190:11c2::b:1457;
Received: from zn.tnic (p200300ec2f092a00869c7b979af15d7f.dip0.t-ipconnect.de [IPv6:2003:ec:2f09:2a00:869c:7b97:9af1:5d7f])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.skyhub.de (SuperMail on ZX Spectrum 128k) with ESMTPSA id 161D51EC0445;
	Wed, 30 Sep 2020 18:31:23 +0200 (CEST)
Date: Wed, 30 Sep 2020 18:31:20 +0200
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
	clang-built-linux <clang-built-linux@googlegroups.com>,
	syzkaller <syzkaller@googlegroups.com>
Subject: Re: general protection fault in perf_misc_flags
Message-ID: <20200930163120.GJ6810@zn.tnic>
References: <CACT4Y+ZZH76qg810RzGp6FDLTxJWVqZgkrXSxqgq7AjpPYG9XQ@mail.gmail.com>
 <20200928083819.GD1685@zn.tnic>
 <CACT4Y+bPFASnmFRKpQ=KY1z+RnTbGmkPU3aikzdXZpKkV03D9A@mail.gmail.com>
 <20200928085401.GE1685@zn.tnic>
 <CACT4Y+Z4Y6SJJ6iYBhVRiknrWBAD6gGhQXiXLhxPniDNBFJGsA@mail.gmail.com>
 <20200928202353.GI1685@zn.tnic>
 <20200929083336.GA21110@zn.tnic>
 <CACT4Y+bfKwoZe3SC-BKJkOET1GxGp9tCpLzkae8q1sjWYnmgmw@mail.gmail.com>
 <20200930161711.GH6810@zn.tnic>
 <CACT4Y+Zc7kD431Aed49U4R6cqzWGAWqEXevnheRHKQRQoEnh7w@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CACT4Y+Zc7kD431Aed49U4R6cqzWGAWqEXevnheRHKQRQoEnh7w@mail.gmail.com>
X-Original-Sender: bp@alien8.de
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@alien8.de header.s=dkim header.b="WbG9D0/S";       spf=pass
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

On Wed, Sep 30, 2020 at 06:23:44PM +0200, Dmitry Vyukov wrote:
> Here is the answer:
> https://github.com/google/syzkaller/blob/master/tools/create-gce-image.sh#L189
> 
> # rodata=n: mark_rodata_ro becomes very slow with KASAN (lots of PGDs)
> 
> I have some vague memory that there was some debug double checking
> that pages are indeed read-only and that debug check was slow, but it
> was always executed without rodata=n.

Sounds like debug_checkwx() which is disabled by turning off
CONFIG_DEBUG_WX.

You could either disable it in your .configs or, provided there's even
such an option, disable KASAN checking around it until that one-time
boot test completes and then reenable KASAN.

-- 
Regards/Gruss,
    Boris.

https://people.kernel.org/tglx/notes-about-netiquette

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200930163120.GJ6810%40zn.tnic.
