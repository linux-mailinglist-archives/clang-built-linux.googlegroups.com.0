Return-Path: <clang-built-linux+bncBDVIHK4E4ILBB4VGUCAAMGQE5CMIDHI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x237.google.com (mail-lj1-x237.google.com [IPv6:2a00:1450:4864:20::237])
	by mail.lfdr.de (Postfix) with ESMTPS id 0306C2FCF1D
	for <lists+clang-built-linux@lfdr.de>; Wed, 20 Jan 2021 12:26:43 +0100 (CET)
Received: by mail-lj1-x237.google.com with SMTP id c8sf6500243ljj.3
        for <lists+clang-built-linux@lfdr.de>; Wed, 20 Jan 2021 03:26:42 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1611142002; cv=pass;
        d=google.com; s=arc-20160816;
        b=QPqRPWN2JRPzK3dst/3RDzLa5J36ZE3GQ13ETtJv5sFLihDva0jcnPjjjX/5Qgp7J4
         iCiZNWGkCOK2aZkQWnR14CKq2HYRzHrJvHWHI8nx5yQpq1ffS20pF8TpCPrAnbyiQuqt
         BNuzhk5Urt5Xv7WY/VtTShuyZIv3qrLClF/j+p6jkZf8ZIzsT6Qa38kdqKoICwuk1uqh
         PqFY06QRrLPjt7txo6wuWBrovJ5+Elp/5sL7evrtAKziQj2hGurg2yUXiP9Yu6oUpFOi
         MCFMrEHsygXaGnly/rbpdxoKLk75KtlkWlILODMNzunL/LCGwxbImuJcj4HOrAaVn6jq
         Z5oQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=VaD6tFNjXAflh+3iKMWM7H7eT8N0e8vD+DtihHkr2+U=;
        b=GyUut58aLpA5jt9rfV/tXIL8blolbi+dS5XQv22hvctHsvrvqYy6NtQyi6U/0txMMD
         e25kPY3gD9BmdjUEqKRq7cPRnJOn1WJYTHrUAfls03Nk/vBVAp6yilwEAOpFeQGP+iZ4
         acXncv+W6aeBp04PQTZEiDz39XNdamqS/dub6YcEf+2THhB3nAJATeYRlEmFV7DjghnH
         JQmhWwmk+p6aHbp/U0z8zjqp36WO1t5T2O3Si9qAassO+VTBt+OPOGA0oL/psK6FPw6i
         P1gP/bwsKqCYXFFmaDlpetQq6D3TxrrM7PdByKvoq3hQRci2jXbApmJzMRnKamweL0IH
         PDtQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@shutemov-name.20150623.gappssmtp.com header.s=20150623 header.b=hUIiRPln;
       spf=neutral (google.com: 2a00:1450:4864:20::236 is neither permitted nor denied by best guess record for domain of kirill@shutemov.name) smtp.mailfrom=kirill@shutemov.name
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=VaD6tFNjXAflh+3iKMWM7H7eT8N0e8vD+DtihHkr2+U=;
        b=bSfQJt9hm0ZNEjnzpmg/JaVtTWECLWynZ5j27kmbabiA4YViEYpVBsPY07TuWtFP0I
         JuT9GGdlJrJhAqOSeykiM1mGUcqNEc4v/2/6xEB0r1NFCEzcoi11iXS50lwjDbnk86rL
         7RARqBfek2/XibiY3cur31PPCEWY2DJXaOdNUsg+TYNeEkUWcOmNj4CvvDq2YvIMXo8e
         2CAj4IFg18wx0qkMM3CMjpvDd06pupZ9S2obr+8YzV6RHdc4xVzIKIOdbsBgYd1CgWob
         JMmZws07yjM+sqlFePjFrv63N7Iln+wT2OQf6SCW/WhmFkwEcvfckl+VfztIizeb/wGK
         +kQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=VaD6tFNjXAflh+3iKMWM7H7eT8N0e8vD+DtihHkr2+U=;
        b=FOD//SSnZbHXUpRSGFDxTThAzbM2YJfKzkC9NJnK2qR+E8XXT0CpjsRJ6eiIkYC6+5
         KBixXJPPkuAQRMJQio23XjnE1JE2/g8SXFm48+HcM2awj4MBba/NFIkSQ3UJGUe62Ms7
         2WlOVG97doxfc5fRpOhLL+AHKsW6WNpaafnK37bysF8PrI53DFDwlkulCd/7npgQrt/q
         SxtUS9Af/TRR0cYCZ6BEzYFq+G7uxF8kTWl3C72h7LT7HIvzVzM8RA8518IIkI87F5Vy
         Mi+dFZ4QM0iXC9Fz+16SduWOl59T1z7j+8nn+yRdPHwgejL3KkE3TSgHHeqjeom6P7E7
         rbAw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532IHe6J7hlPzjQxx7lW/DddMByIjkc0AbkQpehZCNbygvPmnp0s
	kErfiveSGndWobSBw4CCG0Y=
X-Google-Smtp-Source: ABdhPJx1zoP5LPRlMp1OkWE6a8YzC9jYf3pqPJ4U40dctsFsYk41tjjoB9Fs8Ijlu01HmXYKwGqKBA==
X-Received: by 2002:a05:6512:3319:: with SMTP id k25mr4033533lfe.128.1611142002557;
        Wed, 20 Jan 2021 03:26:42 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:7d0d:: with SMTP id y13ls4036016ljc.9.gmail; Wed, 20 Jan
 2021 03:26:41 -0800 (PST)
X-Received: by 2002:a2e:9913:: with SMTP id v19mr4104397lji.209.1611142001640;
        Wed, 20 Jan 2021 03:26:41 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1611142001; cv=none;
        d=google.com; s=arc-20160816;
        b=EKSmJoiY/OkF1BQFuhgrpPR45KPH/7XIOm/4D7ze1sQmZ1BFSmXNhFjP/Ba84uNKSE
         FoVFUBEEl51mjDiqvdmlUhUQbe2Or8OWEwVBpq2lwpmS1X8aTc03KBiMCXJrSkHc6WMQ
         qDX+CBjACZNaUvsMvNWz5xXaAzv5oHLSqBrzMwUKD6oW3tV3I6V18K1UdZ4yMWmo/s4O
         KfSq6EbORL9JTnnvYMIuyJ9Ht1RDf9DIBpIKIoI0tzpfjzxuWal0qfZYzL47X0ms23l+
         e4P+Cwo1SweYDwytsnw2cWZXOavg3zCjoPfkuU9l2NEJ12JMZQR3bM6nnWXDdcgZl/nL
         C5Mg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=rA6bdLKAlmIoLWUk8dCMAvfvN7Iy5mLs9O7w+8do8z8=;
        b=abLEk/Mza/aryRkpAh8N8A2qf1z9QwcgXNEpIESQb/YylTWgrLstypEO9VZJkXBOV4
         whfxFYuF9NeQNPRhiign7TNjO3ziVxTxj2pHd6z5I9scYGjrm0D+D4mtqDC1nYJlY0ZA
         f2NYjSeEx1KAACuuFn9T6nAT3fo8/+/7tmA2hMOUzCYyNtHDjdTIBm9g5xaIKLVoP/sc
         D4q76dxF8ngOL28hPa8IPquBTqye2B66PuLv8HFiBSDB92XNv3qspPA0lY6cuKIs4L6V
         3auFl/g7bJ+IHzX25ylPJHmerwBS+4xCeiq09B7Pl1qMxPWuYIlvwNIoMo7jdXVIDvo7
         4opA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@shutemov-name.20150623.gappssmtp.com header.s=20150623 header.b=hUIiRPln;
       spf=neutral (google.com: 2a00:1450:4864:20::236 is neither permitted nor denied by best guess record for domain of kirill@shutemov.name) smtp.mailfrom=kirill@shutemov.name
Received: from mail-lj1-x236.google.com (mail-lj1-x236.google.com. [2a00:1450:4864:20::236])
        by gmr-mx.google.com with ESMTPS id z4si121558lfr.7.2021.01.20.03.26.41
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 20 Jan 2021 03:26:41 -0800 (PST)
Received-SPF: neutral (google.com: 2a00:1450:4864:20::236 is neither permitted nor denied by best guess record for domain of kirill@shutemov.name) client-ip=2a00:1450:4864:20::236;
Received: by mail-lj1-x236.google.com with SMTP id p13so25693232ljg.2
        for <clang-built-linux@googlegroups.com>; Wed, 20 Jan 2021 03:26:41 -0800 (PST)
X-Received: by 2002:a2e:b1d2:: with SMTP id e18mr4163694lja.101.1611142001496;
        Wed, 20 Jan 2021 03:26:41 -0800 (PST)
Received: from box.localdomain ([86.57.175.117])
        by smtp.gmail.com with ESMTPSA id 189sm172195lfj.192.2021.01.20.03.26.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 20 Jan 2021 03:26:40 -0800 (PST)
Received: by box.localdomain (Postfix, from userid 1000)
	id 4462C101448; Wed, 20 Jan 2021 14:26:43 +0300 (+03)
Date: Wed, 20 Jan 2021 14:26:43 +0300
From: "Kirill A. Shutemov" <kirill@shutemov.name>
To: Arvind Sankar <nivedita@alum.mit.edu>
Cc: Borislav Petkov <bp@alien8.de>, Ard Biesheuvel <ardb@kernel.org>,
	Arnd Bergmann <arnd@kernel.org>,
	Thomas Gleixner <tglx@linutronix.de>,
	Ingo Molnar <mingo@redhat.com>, X86 ML <x86@kernel.org>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Arnd Bergmann <arnd@arndb.de>, Darren Hart <dvhart@infradead.org>,
	Andy Shevchenko <andy@infradead.org>,
	"H. Peter Anvin" <hpa@zytor.com>,
	linux-efi <linux-efi@vger.kernel.org>,
	platform-driver-x86@vger.kernel.org,
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	"Kirill A. Shutemov" <kirill.shutemov@linux.intel.com>
Subject: Re: [PATCH] x86: efi: avoid BUILD_BUG_ON() for non-constant p4d_index
Message-ID: <20210120112643.ozlsru67yuur323i@box>
References: <20210107223424.4135538-1-arnd@kernel.org>
 <YAHoB4ODvxSqNhsq@rani.riverdale.lan>
 <YAH6r3lak/F2wndp@rani.riverdale.lan>
 <CAMj1kXGZFZciN1_KruCr=g6GANNpRrCLR48b3q13+QfK481C7Q@mail.gmail.com>
 <20210118202409.GG30090@zn.tnic>
 <YAYAvBARSRSg8z8G@rani.riverdale.lan>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <YAYAvBARSRSg8z8G@rani.riverdale.lan>
X-Original-Sender: kirill@shutemov.name
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@shutemov-name.20150623.gappssmtp.com header.s=20150623
 header.b=hUIiRPln;       spf=neutral (google.com: 2a00:1450:4864:20::236 is
 neither permitted nor denied by best guess record for domain of
 kirill@shutemov.name) smtp.mailfrom=kirill@shutemov.name
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

On Mon, Jan 18, 2021 at 04:42:20PM -0500, Arvind Sankar wrote:
> AFAICT, MODULES_END is only relevant as being something that happens to
> be in the top 512GiB, and -1ul would be clearer.

I think you are right. But -1UL is not very self-descriptive. :/

-- 
 Kirill A. Shutemov

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210120112643.ozlsru67yuur323i%40box.
