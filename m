Return-Path: <clang-built-linux+bncBD4NDKWHQYDRB3V27D7QKGQE7TVBHSY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x539.google.com (mail-pg1-x539.google.com [IPv6:2607:f8b0:4864:20::539])
	by mail.lfdr.de (Postfix) with ESMTPS id A09792F3C20
	for <lists+clang-built-linux@lfdr.de>; Tue, 12 Jan 2021 23:06:39 +0100 (CET)
Received: by mail-pg1-x539.google.com with SMTP id c3sf125236pgq.16
        for <lists+clang-built-linux@lfdr.de>; Tue, 12 Jan 2021 14:06:39 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1610489198; cv=pass;
        d=google.com; s=arc-20160816;
        b=ZcvkbPjg+uyJnIW7jxEIYKIHjzsMzlBkaEeeYKIT4Yw3aLKkhnMENd3t17c3ufKfVx
         qDqTB5PPnEes9emM0eQq7sran3jH9I5wRxgsOuyFcc+BfjKzQ5+CydlznwKE6BljbOGm
         6ABZDz4YiIi1gz8fsKeWZAzlMMQpv1C32v/WxID0G8UAW8C/RUDxkvnFokTT89k8eVQz
         HRcc0X1xlNqk9uV7ts3ME8ny3I5meAavmQBReejNxbl3DgoKEGjOERHaLynQpbsWOdgz
         ZWEs/AFV1p+lUwZ7F/I+W/FMfTxpPr1DRl80nyUxYEymJuqMHrsCXUsJvo/DvyMzzI3b
         czmw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature:dkim-signature;
        bh=RhRrBm7CETBoLGCBKFcEXp6eIGWakFdUxUhjfLjefmc=;
        b=tAh3KjjGDyZ4Sw9AwxENj/FwjJyM/579oBu3BVueBSMG2sbfP7r3ssWKb1tQ9hfi/4
         3hwjn+i+pBANTpB7Dg4onbUN+yHXibIUHJB2NvQfJtNcYpS0/wsk3B98W8LDkQApgVWW
         44jujUL6fPSbHBQjuv4sFwfperZpbsueEDhm2oedOHrOsWAXmL0XFQX/8fnx1LdSPRtA
         Y5TlREG5B2ehwnxEehNR4971mP2fT4gJDyGYVjU1tX/utXODMplJ+gsa1xT2eiLbUSH8
         1HgL4j5sv/0tbMapKVsq7dkLZBcCAwaxeD0yNqWzLI5djOuT3Jc6YDykI3lZo+/P1UQZ
         qJIQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=C6CHTBNX;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::d35 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=RhRrBm7CETBoLGCBKFcEXp6eIGWakFdUxUhjfLjefmc=;
        b=cvFJ+BehPWOLmxc9Dd2wcK0bqm4jJkmR9E3Ln59eRkF0coFq3waJaLyPBmBf++eNhq
         4yA0HHrKTAAk2WXND9+xsH3UumQQFNV6JqJzk8eRje5TzZWRUPI4fIq+UHtgP85tHpFK
         LNSR6F3ozlU6qrs1YLgMAAbfrbQihJYxyJoqgxUt9ZyC/Tq4tFkPnL9sdF34ZRe2Ehgm
         dmtdn9EAHWGJ5CZE5dLHa0zrA1uefS0i/x9Olvx4F5w9ll2vkU6e4XwEJPgfGTLYk2Fl
         t6idecRPpZoVxROm0YJebd+G5xMqOIlSNhp0IxUYbyhIsOyZRcY++wAJuA1tYjO40ceH
         iVNg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=RhRrBm7CETBoLGCBKFcEXp6eIGWakFdUxUhjfLjefmc=;
        b=o06uhmx8kvvRfTk2RUPMhVsyGhfWFBx4fObdwgdIWLYb4ol3F4FH63Zl/8ai+cHj0V
         nTe5fqPcIm3F17ohLfz96R9daACUd38KN01IR2nC3mRDpz+EBjamT2+4l7okoBl6oVzU
         8qhQgzqE21WIjFPab4tYE4/Ll16/AaXixULJxBLg4KmqkKsXMxLLACWRnzro4UOi3WoJ
         93Fhy4R/BSb2ov/JDe34ITYxi2INgz8UWbES88kCEEd7kXwfDnGzrKcCWZC5jWvgyJlR
         oUMg18mJiX0I0Yq71xJpFk7ly1oP5FLMFXq+z8zXDb/s0I8fLPAPXlMsD19wHjKSh2M0
         3YRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=RhRrBm7CETBoLGCBKFcEXp6eIGWakFdUxUhjfLjefmc=;
        b=mM9zOBfucJlZU8uyNnoAvN0xtiYhATVwGSss7BOb5pTokq2MOhULyATtgYe2Dkb5o+
         kVC8qyuW0dJ/2neG7DLUD0NmaEXC0AEKz4GCgytZPPEqXI5/HtckQEK9HsjfH1fdgjB7
         FhPC8r1aoZJ5Avaew1HO3+LmmVPIK6PTTMhANdBE8FfmQZEXsDiapfbyRpu4WqD1PXd4
         nzIyy85aGhOTGVBO0J4JrMAUOZSDR5FspmegiubxvhfNCY9qwJlj9drYaka0Aq+AzTBb
         Yy0T2AHi514DsqP2ywu8/HeLiMXnCrFjNTgdYe/nMwYRUNrHWRf2kIFxI7NQHXfzyDxW
         P96A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531B/8RlLrA0hW6aij7fx6j4CcG50f9DQEUGP1t16c6us8+uJ/1d
	KuASGiUNnUbUgenNW1yafec=
X-Google-Smtp-Source: ABdhPJxz9WzvexzBpjCRt1EsxXyqHFo1RnDTfAYrWHLThkZdie/gUCyurtIsnb1d3IVH1cHrFcFkoA==
X-Received: by 2002:a17:90a:ee8f:: with SMTP id i15mr1277780pjz.82.1610489198238;
        Tue, 12 Jan 2021 14:06:38 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aa7:96d4:: with SMTP id h20ls43116pfq.5.gmail; Tue, 12 Jan
 2021 14:06:37 -0800 (PST)
X-Received: by 2002:a65:4bc2:: with SMTP id p2mr1128547pgr.169.1610489197661;
        Tue, 12 Jan 2021 14:06:37 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1610489197; cv=none;
        d=google.com; s=arc-20160816;
        b=qbOGWvQQA9Su4US+Ava3rZL2ydpXSUF0ENlJics2zB1akVpIrFgC3a6yoEiGWbclRE
         qgvXyGTMvR7OG8dJ3Zw3kFvuXIhF2U0jxsRsqRVcqvH2gn4ttWb1lurGA5FFLwFHDWuC
         KXbc0Gxj0MU5GnSLm69H7Ca2DvvO2xZlobMynixHHmZjrmQCRs9vvbhI60ThBGlk1BDl
         eVGQ/Hy8r5qohCWgD5WD/14xYF5w3MIsG9TReYQOWOu8cl9QYZbtllflivorio//UXHQ
         tAcB6M28zkN7paDWUihM/Mfw7+ANMbhro2dnFS0aw3kHrSw4OU62brVak1M/09T1mnNz
         P1rg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=PAaIIToNfkh2YDvfiyNmhQxep4I10YuTfP4xkCJeuVc=;
        b=HMPbpjntayxRbuRqnr5pqiP012yXJNKBCqNArOL37gysqlpN48gSNKjASZQPb0G9tQ
         DTIbRQK3RW5n6qhfEeAoEJhPwLOEgwoHiAxwwvDgSB1ofFsX0iVMzc+W0DMR/bvWq+zV
         8xu1ObnZRw2E99VO4k35uuDcIv4Qzm+/HYsxM7me2x3p4ldzrbgT1EjOi7QZauXcd0xQ
         ldaEH6vFxmvosyJa9SdAIA73YMWe09a/h2+/l4Rr0N2BF4KRQ9Q+xXJANIiG/7kV4cH9
         APmmf4ImvuMTfw2i2yNdSjhDthz3Cv6JI3P/ohjWUlXlMAMw8IIlpjLzoAtflYx0NpsM
         uuWw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=C6CHTBNX;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::d35 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-io1-xd35.google.com (mail-io1-xd35.google.com. [2607:f8b0:4864:20::d35])
        by gmr-mx.google.com with ESMTPS id z2si1224pjq.0.2021.01.12.14.06.37
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 12 Jan 2021 14:06:37 -0800 (PST)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::d35 as permitted sender) client-ip=2607:f8b0:4864:20::d35;
Received: by mail-io1-xd35.google.com with SMTP id q137so7434065iod.9
        for <clang-built-linux@googlegroups.com>; Tue, 12 Jan 2021 14:06:37 -0800 (PST)
X-Received: by 2002:a6b:dd13:: with SMTP id f19mr1004530ioc.74.1610489197305;
        Tue, 12 Jan 2021 14:06:37 -0800 (PST)
Received: from ubuntu-m3-large-x86 ([2604:1380:45f1:1d00::1])
        by smtp.gmail.com with ESMTPSA id a17sm33570ilc.77.2021.01.12.14.06.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 12 Jan 2021 14:06:36 -0800 (PST)
Date: Tue, 12 Jan 2021 15:06:34 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Kees Cook <keescook@chromium.org>,
	Andrew Morton <akpm@linux-foundation.org>,
	LKML <linux-kernel@vger.kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>
Subject: Re: [PATCH] ubsan: Implement __ubsan_handle_alignment_assumption
Message-ID: <20210112220634.GA1377517@ubuntu-m3-large-x86>
References: <20210112205542.1375847-1-natechancellor@gmail.com>
 <CAKwvOd=yrVKBn9TN2cP8SiB7A8=c2g41PyodKGJu+xEQwAmnDA@mail.gmail.com>
 <20210112213703.GA1376568@ubuntu-m3-large-x86>
 <CAKwvOdkA5kmXhKFDFTApLyT5LcUX2-Xr6vJJ0b8wePunMpLu0g@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAKwvOdkA5kmXhKFDFTApLyT5LcUX2-Xr6vJJ0b8wePunMpLu0g@mail.gmail.com>
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=C6CHTBNX;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::d35 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Tue, Jan 12, 2021 at 01:53:30PM -0800, Nick Desaulniers wrote:
> On Tue, Jan 12, 2021 at 1:37 PM Nathan Chancellor
> <natechancellor@gmail.com> wrote:
> >
> > > if real_ptr is an unsigned long, do we want to use `__ffs(real_ptr) +
> > > 1` here rather than ffs which takes an int?  It seems the kernel is
> > > missing a definition of ffsl. :(
> >
> > Why the + 1? I think if we use __ffs (which it seems like we should), I
> > think that needs to become
> 
> This came up recently in an internal code review; ffs and __ffs differ
> in output by one.  See also the definition of ffs for alpha in
> arch/alpha/include/asm/bitops.h.

Interesting, thanks for bringing it up! Looks like ffs returns 1-32 and
__ffs returns 0-31. I think that we want __ffs here because we are
shifting (1UL << 32 overflows on 32-bit architectures) and the code in
LLVM appears to agree. LeastSignificantSetBitIndex evaluates to
__builtin_ctzl, which is the asm-generic implementation of __ffs.

Cheers,
NAthan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210112220634.GA1377517%40ubuntu-m3-large-x86.
