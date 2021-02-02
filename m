Return-Path: <clang-built-linux+bncBCK2XL5R4APRBO4P4SAAMGQEE5E4KWQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x337.google.com (mail-wm1-x337.google.com [IPv6:2a00:1450:4864:20::337])
	by mail.lfdr.de (Postfix) with ESMTPS id C37C330B92E
	for <lists+clang-built-linux@lfdr.de>; Tue,  2 Feb 2021 09:05:15 +0100 (CET)
Received: by mail-wm1-x337.google.com with SMTP id k64sf1068921wmb.6
        for <lists+clang-built-linux@lfdr.de>; Tue, 02 Feb 2021 00:05:15 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1612253115; cv=pass;
        d=google.com; s=arc-20160816;
        b=S3uktibAfTxVnmG+t0c2Qg5sehJxsaagny0W8eV/9zCLzcL8CYwECQtFybaGg1E40p
         EYguSWD83vjBUQoeTEEIjQVYGMulMUPLMiU7ftY5Ud93/PqAJ9nTkDB2Ew3PHy+i3Tf1
         ynsgmga2729P20x4QJIUBEkXBYvbc6n6wmU+8l7lS6fApqLeoViOtUtrmgnYNQ2EEoZ2
         BZVQSyuSDqrXtm4F/IYEH1EdbPIZlOyHdM/x+RsluKnGF5Xf3lVRhwilpEEhGcFYyuBR
         wmTFC4WeMdboJzlc1aZYO91LulJ5f319UfJp0LDKH8GgWKpsRIuAhXdAVHrZdoiZ5jxI
         1PEA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=Z+/z5CDr9trubd+8wf2a9RdXLuklgBsuF18gCSL/Wu0=;
        b=HWcZNQy/IQQB7M5sHuwAQAi00mAiErXC9kAw5ISLh2eb2oJpzf+PkCiCuw84DrBaXK
         7vicl4JykRFFdIPn8uDGcnsRfLducWn6zHIMI81YiT/74NbnnyZXuhU0uglcZ4HtBAas
         AlJSUNxG1rCedknbKOSOM6mQhguObReH4l1r7GRBUId5FjIyipi0iGrPpSEpDGiXacSy
         tSUvLJeGwiIoInx64hJ1PD1mSgfOEVhckojTSk207obLNsRoEocU86uqB0Sac5GIRQxo
         xHTSlRhQBdThbuOonLik8/BBP9VATTKwu3ooAEUBqJss+LGOn2Q308cwMILbI1qyfwuN
         Xzdw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=casper.20170209 header.b=FvPEpVXT;
       spf=pass (google.com: best guess record for domain of batv+78410b086ab5a19d433c+6372+infradead.org+hch@casper.srs.infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) smtp.mailfrom=BATV+78410b086ab5a19d433c+6372+infradead.org+hch@casper.srs.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Z+/z5CDr9trubd+8wf2a9RdXLuklgBsuF18gCSL/Wu0=;
        b=Q8a66Yu2ewGEgV71sP1SirXnbIpb6dQqLRhxQcP2A60vOCs8VvWU9zR7w3W6zjEaVJ
         tOiDKd8W04Y4ehKSW84A+Yo+Zi6Jxn9pZGdutMX9QOO5wxiK/J6X4MRZsUJavo6YGljD
         ei6/oRh1Iyhw8+ubvHbcHEOsF6RvIqD6UM4wWw+s479lwkV5xYQSBXGjw09XHrnRACqH
         c0CtF94/TcVcw5tjqsyO9pwF+kbFTTxaVRm9EFfmAEK8pjc5ZAqkbIcQs/C/zvppwA81
         qKC5mw6U7M2jzRXoA7jAhYOUTlMRQsZE/SbWKoXtCq+XMZvfqld3jR4doKdTIXu3iMqn
         J/rg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=Z+/z5CDr9trubd+8wf2a9RdXLuklgBsuF18gCSL/Wu0=;
        b=lIiputz84JxmVFgUEX+Hp89kji3Syov5XZfnIHXMQEboCJJd5S8Zg0HpsjH2IdIyhk
         kJcKmgHRXuMSaIdGjLWIw48811sJuOte5NawwyeBALcTWfmP2viOA5hxMxJGYMOgpRJ3
         G1QDf9yEqcjaM3QAGk2rSkvtP7ogvk+93GsbEpTWDmzheHq68NbRoAErRyv8h6jzXiSk
         dP3Q13jmgmKOLdktptanE9Dt6k01p+MEIDSwTMbIL2CjCD0ASZVgkTj26Ieq1zXzg8rs
         Q2OrBRGUgMIKdXqOaX8nRUtTTCnlIpUNqgX5AP988p3EQVipY1/PTfvP67AmzInZFghK
         irvQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531y33Vcihdy1LK+yuGrnWlmfXjo0QkrsfntivS+simJutzQ4c10
	+PnpkAzf07QG/hdD9GsVLFE=
X-Google-Smtp-Source: ABdhPJwgw3JK2j1fKqzSpCL/3AhYql0zXl6mOtnlFIF9T+INfvqYYx7pRQjjveM1FSXuG6LP1mcloA==
X-Received: by 2002:a5d:414c:: with SMTP id c12mr22807720wrq.251.1612253115516;
        Tue, 02 Feb 2021 00:05:15 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5d:4485:: with SMTP id j5ls1719423wrq.1.gmail; Tue, 02 Feb
 2021 00:05:14 -0800 (PST)
X-Received: by 2002:a05:6000:2cf:: with SMTP id o15mr21798878wry.184.1612253114729;
        Tue, 02 Feb 2021 00:05:14 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1612253114; cv=none;
        d=google.com; s=arc-20160816;
        b=BYqF23OGqKW15kOD0+c0mpEIceF+v/DNzHXhWMt3amwWzRYoIy2NXPoVYoNOsh8WPw
         qrI389ipIENb6qC2z79XwHVcYa0IO4XT9PxQHKTVjn0kbOW/u1c5o6B76FDRhmmQ+6oj
         D1/PLxZucCpLluNGDgmMbx0lVJ/8vfr1JA9RzIkUSvHT9vPw6Yw8DSIgAcNGXodx0Gqi
         J9h6VcODqMVLpsV7YIRwhAt8U/TjgZxJTk3lYwJ9+mNlEZfFbAvxFdi6FK1mTgEzucJ8
         bVVw3qyenPUx+Y3DwmRJkFa2DP+yv+SLVcpTyGN1SPFsWuXBE46prfI4CqfNu9N8ZYhi
         Q/Wg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=GXKqg1wRs9RGvWZ1qTCHS+IG1zrHxoDxyev40JGQz0I=;
        b=VEoTPWhICSFrHdeGNotBLgpnjx+xWQPVt34BzTiPYUmt3ZlN2pNpP1lnOIT/hemAi0
         MtyD0D62DoK6SuLMbHKmL5fOX3tu9zZaIiXEmSrkqgCsvT2JoYtPeD54xN0X2XlqsSqA
         OwTDPgbNI3VA55hLpyXPwdQxFDXwfYhAzIQZdtqllhHcsl4m1LsJkU17F4PeG4z3laFY
         60Ena/YVcULU1t0mPbxvgF0I7HeYOhfWgqWkLLUSFMADb+4IpinVsFfWhVzI3PELhpNw
         TURiCcgU8Z+qOqkTKGi3BEkgzDJ1YRijTHBnVuICaaSOJiVikJKEThtnLMIKQMP4d9BX
         QKIQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=casper.20170209 header.b=FvPEpVXT;
       spf=pass (google.com: best guess record for domain of batv+78410b086ab5a19d433c+6372+infradead.org+hch@casper.srs.infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) smtp.mailfrom=BATV+78410b086ab5a19d433c+6372+infradead.org+hch@casper.srs.infradead.org
Received: from casper.infradead.org (casper.infradead.org. [2001:8b0:10b:1236::1])
        by gmr-mx.google.com with ESMTPS id t16si138188wmi.3.2021.02.02.00.05.14
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 02 Feb 2021 00:05:14 -0800 (PST)
Received-SPF: pass (google.com: best guess record for domain of batv+78410b086ab5a19d433c+6372+infradead.org+hch@casper.srs.infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) client-ip=2001:8b0:10b:1236::1;
Received: from hch by casper.infradead.org with local (Exim 4.94 #2 (Red Hat Linux))
	id 1l6qgO-00Eto6-7S; Tue, 02 Feb 2021 08:05:08 +0000
Date: Tue, 2 Feb 2021 08:05:08 +0000
From: Christoph Hellwig <hch@infradead.org>
To: Theodore Ts'o <tytso@mit.edu>
Cc: Vinicius Tinti <viniciustinti@gmail.com>,
	Christoph Hellwig <hch@infradead.org>,
	Andreas Dilger <adilger.kernel@dilger.ca>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	linux-ext4@vger.kernel.org, linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: Re: [PATCH v2] ext4: Enable code path when DX_DEBUG is set
Message-ID: <20210202080508.GA3550351@infradead.org>
References: <AAB32610-D238-4137-96DE-33655AAAB545@dilger.ca>
 <20210201003125.90257-1-viniciustinti@gmail.com>
 <20210201124924.GA3284018@infradead.org>
 <CALD9WKxc0kMPCHSoikko+qYk2+ZLUy73+ryKGW9qMSpyzAobLA@mail.gmail.com>
 <YBg20AuSC3/9w2zz@mit.edu>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <YBg20AuSC3/9w2zz@mit.edu>
X-SRS-Rewrite: SMTP reverse-path rewritten from <hch@infradead.org> by casper.infradead.org. See http://www.infradead.org/rpr.html
X-Original-Sender: hch@infradead.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=casper.20170209 header.b=FvPEpVXT;
       spf=pass (google.com: best guess record for domain of
 batv+78410b086ab5a19d433c+6372+infradead.org+hch@casper.srs.infradead.org
 designates 2001:8b0:10b:1236::1 as permitted sender) smtp.mailfrom=BATV+78410b086ab5a19d433c+6372+infradead.org+hch@casper.srs.infradead.org
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

On Mon, Feb 01, 2021 at 12:13:52PM -0500, Theodore Ts'o wrote:
> However, if there *is* a bug, having an early detection that the
> representation invariant of the data structure has been violated can
> be useful in root causing a bug.  This would probably be clearer if
> the code was pulled out into a separate function with comments
> explaining that this is a rep invariant check.
> 
> The main thing about DX_DEBUG right now is that it is **super**
> verbose.  Unwary users who enable it.... will be sorry.  If we want to
> make it to be a first-class feature enabled via CONFIG_EXT4_DEBUG, we
> should convert all of the dx_trace calls to use pr_debug so they are
> enabled only if dynamic debug enables those pr_debug() statements.
> And this should absolutely be a separate patch.

Yes.  The problem with a non-Kconfig ifdef is that is is almost
guaranteed to bitrot very fast, so you might as well just remove the
code.  The "if (0)", while ugly, at least ensures the code still
actually is seen and checked by the compiler.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210202080508.GA3550351%40infradead.org.
