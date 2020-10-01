Return-Path: <clang-built-linux+bncBCP4ZTXNRIFBB4PP235QKGQERZ2DJSI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x23f.google.com (mail-lj1-x23f.google.com [IPv6:2a00:1450:4864:20::23f])
	by mail.lfdr.de (Postfix) with ESMTPS id CEAEF27FE15
	for <lists+clang-built-linux@lfdr.de>; Thu,  1 Oct 2020 13:05:22 +0200 (CEST)
Received: by mail-lj1-x23f.google.com with SMTP id s14sf1097368ljj.6
        for <lists+clang-built-linux@lfdr.de>; Thu, 01 Oct 2020 04:05:22 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1601550322; cv=pass;
        d=google.com; s=arc-20160816;
        b=KXoS7sXRYP56nVAZ+6It5aDsbgQrvdN+zFoTSva+bTiT56NWeqpAdLBtt8dDPMUcLA
         mU82LL1xEJ+4rsj9Kt6RVXB3wwKINSZJYqIFKpR1v6YF0q5bbukJ5IaEpm5UUzcfjq4t
         i30UQAbl+Qm1KLWIV9bwZblK1U49hz35Ko0KMbuEYcs90q0hGbVFt88XoBDHFdgk8pMG
         y9UWnYRuCjv6Mc2PuJUDHS5Qha0TZpZXy/YcWFW/Q8pywFT2nnVJM2sJ/HfRbQJF1hon
         +4x3F22a/UmNwxd1rZDoMo+kD8R2DRDVjRLfn+Csh0LqHXVmet3mQ87W+WxZwHBODlVE
         bWuw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=szCsJFLPSwa4jNwz7M6CE0AQWSHv2ELspQwAcY/xr2Q=;
        b=pHbogm8UqkX6rHygfwNP1BzTsO+vuZfCbFI9xOLazxGQz8WdU5pFRsYrDQz8Sg/qc7
         UqmxAhJja0I9Ms5tNELnS++Lbh/Igqf7SOvnpi0IhiSBRs/CzddaTA+7cdhe/WCkvgBu
         dIRlZx5Kd7iZUNLwrYn5VUR2Ks4YXZiN8PP9iZ+9xd+/4aCCIOQM4XNtvM6132mMkHMS
         JazI8H9BpodoTQfnaOiXnRN1SPPhpO1FRKZaCcTi54WrxtpgsEjalhnsloDDy30DE0N7
         y90TqfmTP5iYoYheKiYFwV7/2igZJfVYTWjVh3x7vFEGYVMAo98O3tiHG9c+K5b3oU8z
         NWUA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@alien8.de header.s=dkim header.b="j/AbL0Rw";
       spf=pass (google.com: domain of bp@alien8.de designates 5.9.137.197 as permitted sender) smtp.mailfrom=bp@alien8.de;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=alien8.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=szCsJFLPSwa4jNwz7M6CE0AQWSHv2ELspQwAcY/xr2Q=;
        b=TztoO22CCPhfZlUiXAsMJfcP/XZQHKd61Cax65ttIAFWPymUpJKIo8KniKzG4fqJO2
         5xrFNzJy0yrsMvvvBRb276oco81eHuWtVjd7iikiMVXw/9fnC1xWlH3LGN2flPU2nqYe
         QyNVpu866RdrWa2byz3yqO3Ez3cgaSu5lQi7dUzjWIeNWpbdH9H+NzlexLnqQ9hYOwxO
         OpBtpai+XRMoxjR6bSTGzjEQBJktFJoNDlqW8IN9WMG76ksidY7VHYtw9MUmGhJ5DgUh
         5UuHIHTvAXDPn0gX0/xiaagfh4lMPON+XPh/OJ+r5wCh0rHz3bTQVSPiLBqKxCvpHiKf
         8GWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=szCsJFLPSwa4jNwz7M6CE0AQWSHv2ELspQwAcY/xr2Q=;
        b=bAw1WDd06HhO+vzwqjwt8fEFBFc4goBlhB6IeACYlXfCtBsoomnoG2NKF52Bng207m
         kyxg2LNSZpt4dld/mevDVk3bMshpQ6N7dZ7IyfaRF+Hc0Leniypa8RKrurCvpDxXRL5i
         qhFpxn4d2I2AXDp5kwIJJoYl+K8ZUbRlRHPKBITa8Qa46naIEu0Tk3TA3H/8c/7e1tr/
         gzWQ6Ky+6uRkwToS5K7hbJVPN9Gm8Z/lTcFS26WXYAl/7ksBS6foQCBaxOkUdgB+537R
         FCRnBBcA/RDXt6AfEuU3QkLz4yBGIhwQeZtn8vluWq5Ov8J+Yjpe1ugsDjD7vN7potRi
         05ZQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5317Z7c5G/ttgyMCjiTSPHaEWZ/cnn27E8Y5rC1jOdjxJswqs692
	nUIp+3c+umSYUyjkXG6JKPg=
X-Google-Smtp-Source: ABdhPJxY4X58hXKxF4FxgfZiKfhf1owpmdj7+oKK8Y4EIEjIJ+gGxsBdCnSV7oQBuSa6sx/AykxN+w==
X-Received: by 2002:a19:910b:: with SMTP id t11mr2670081lfd.394.1601550322330;
        Thu, 01 Oct 2020 04:05:22 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac2:544e:: with SMTP id d14ls808093lfn.2.gmail; Thu, 01 Oct
 2020 04:05:21 -0700 (PDT)
X-Received: by 2002:ac2:54b4:: with SMTP id w20mr2599887lfk.13.1601550321245;
        Thu, 01 Oct 2020 04:05:21 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1601550321; cv=none;
        d=google.com; s=arc-20160816;
        b=AEkpBZVZsLkbOxH9y8nC/ICaRYWt4VstOgY7Hc3y+KpjY8oHBpvNTEAJZkcY6EoAFR
         0ZZqCthBSKnd3GT7z/EFmnLoed5kCbw3JWlQVwMSRydq+vOUQ/CXuIuvw2ZIRmOuITG7
         wFgE4IazpbwVKVDQPz5qSFYsM3ZFQrrlN5D3QVE0p9BWIfDlRWruxx+Ezhgpk1qHYCAY
         K2h1mD/kgL2XhJqKQpnW891Clp1wbLgj/IrLAtiAJUpWk7WiuvO5xYLa9ohGQZpb4ScK
         m5yv2pAnYLwnU0Qpq7SOo8h8ZrsEfEUUh+Z6sp+03u84AzpcC7ENqYBCT/kR94ZsAKWn
         TxNw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=9c/l0kmClTAlJvD865tYjP10jYTfLqBs8vejfOpvoT4=;
        b=ljM/x8nPXH7iJpxel42RInlpLB8EAxfn7eHN91SeUeUWje6muhlSkHqC2KZ2whl1rk
         QmDIYP38g+TdcRwfCtPpk3oh9j51JwiWjhBXSAuXIx3V1okVyh1Vii2dx+BTLxkhqgSU
         +++RH1xiocuBbyrWDdx9CBvRTx+z7B0LYrS1hchRkerdshWU+CRBvCFf7ZimKqOrNz4R
         2HCEIvi1f5/NAlICMWj6iLM7Qbk+pTGz33Ex+EG99M6nNFYWXYBSHDIQzpaXocDPUjUs
         q8oeYDUeqYZts5tYst0/WyiQR5JNbeB7sdBar5EsBJX3zbNnAtmiChAgCTv01ihKUpEU
         WEug==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@alien8.de header.s=dkim header.b="j/AbL0Rw";
       spf=pass (google.com: domain of bp@alien8.de designates 5.9.137.197 as permitted sender) smtp.mailfrom=bp@alien8.de;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=alien8.de
Received: from mail.skyhub.de (mail.skyhub.de. [5.9.137.197])
        by gmr-mx.google.com with ESMTPS id r6si168231lji.4.2020.10.01.04.05.21
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 01 Oct 2020 04:05:21 -0700 (PDT)
Received-SPF: pass (google.com: domain of bp@alien8.de designates 5.9.137.197 as permitted sender) client-ip=5.9.137.197;
Received: from zn.tnic (p200300ec2f089d0086f50977b536c1c2.dip0.t-ipconnect.de [IPv6:2003:ec:2f08:9d00:86f5:977:b536:c1c2])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.skyhub.de (SuperMail on ZX Spectrum 128k) with ESMTPSA id 5551A1EC04B9;
	Thu,  1 Oct 2020 13:05:20 +0200 (CEST)
Date: Thu, 1 Oct 2020 13:05:12 +0200
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
Message-ID: <20201001110512.GB17683@zn.tnic>
References: <CACT4Y+bPFASnmFRKpQ=KY1z+RnTbGmkPU3aikzdXZpKkV03D9A@mail.gmail.com>
 <20200928085401.GE1685@zn.tnic>
 <CACT4Y+Z4Y6SJJ6iYBhVRiknrWBAD6gGhQXiXLhxPniDNBFJGsA@mail.gmail.com>
 <20200928202353.GI1685@zn.tnic>
 <20200929083336.GA21110@zn.tnic>
 <CACT4Y+bfKwoZe3SC-BKJkOET1GxGp9tCpLzkae8q1sjWYnmgmw@mail.gmail.com>
 <20200930161711.GH6810@zn.tnic>
 <CACT4Y+Zc7kD431Aed49U4R6cqzWGAWqEXevnheRHKQRQoEnh7w@mail.gmail.com>
 <20200930163120.GJ6810@zn.tnic>
 <CACT4Y+amigeTPFtwEgbeOGGTiRXFOVZauhOhQCz9CQ70HM17Ow@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CACT4Y+amigeTPFtwEgbeOGGTiRXFOVZauhOhQCz9CQ70HM17Ow@mail.gmail.com>
X-Original-Sender: bp@alien8.de
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@alien8.de header.s=dkim header.b="j/AbL0Rw";       spf=pass
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

On Thu, Oct 01, 2020 at 12:23:08PM +0200, Dmitry Vyukov wrote:
> I've prepared a change that removes rodata=n:
> https://github.com/google/syzkaller/pull/2155

Looks good.

> I think we will be able to indirectly evaluate if it helps or not over
> some period of time based on occurrence of any new similar crashes.

Yap, that would be interesting to see whether those corruptions
disappear. If they do, you probably should start getting #PFs of writes
to RO memory, instead, resulting from those stray writes. We'll see.

Thx.

-- 
Regards/Gruss,
    Boris.

https://people.kernel.org/tglx/notes-about-netiquette

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201001110512.GB17683%40zn.tnic.
