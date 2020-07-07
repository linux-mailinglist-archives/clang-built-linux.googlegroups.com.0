Return-Path: <clang-built-linux+bncBAABBV6SSL4AKGQESUC52NQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3b.google.com (mail-yb1-xb3b.google.com [IPv6:2607:f8b0:4864:20::b3b])
	by mail.lfdr.de (Postfix) with ESMTPS id 479F4217487
	for <lists+clang-built-linux@lfdr.de>; Tue,  7 Jul 2020 18:56:56 +0200 (CEST)
Received: by mail-yb1-xb3b.google.com with SMTP id y3sf48253261ybf.4
        for <lists+clang-built-linux@lfdr.de>; Tue, 07 Jul 2020 09:56:56 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1594141015; cv=pass;
        d=google.com; s=arc-20160816;
        b=Msr/PkDup+uCL5SQg/eSO3v98p8YUDXwpxtip9jnAZq20o52V6IO0C3z7Qo3zWjPsK
         84HD94VTTcx7VHqXnG1umVXYLERraR3r5khmjKGZ6PtsLak7mmWl+x0BVYkYtWcWPDNK
         wpjQPYzBkxaqAixGwdnSuJf5yxgesPJV1XTMOCxh+KmSyjwRGcqAZh4U1egHDRIoJsOJ
         h1IWJMsyYcH8eJbBrKAYrRdK9d4IiQiwXjvHxlESG/AE7aaBaGnCNJHn9onVFIaTw8GT
         eui9qwFQq2fQI66sR5jqFzi6gnhg9cFUhF92E+gK5CzdqfrQhaqgTvnCrJtYat4HYB4u
         Qe4A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:subject:cc:to:from:date:sender:dkim-signature;
        bh=dqsenxTIVdRth4nC4xD+WB1V7ihjEYjGUxqEHWh9n3o=;
        b=jtqNeMtHGd0WIHuVjjdUYpzA0ob9DQ0MwoXQQai87SJCm03Vn8IWAhiDFYOXxHsTrn
         HeE6yTDQDbfqFJlBey2cVw8AcLVJ38Ght5ne8OY8WZsURk8hDs41frYZ5JSmPzeX9uuH
         HlzaJGEm6ZnFsIQC0baPja49wyAmhbWIiNYCmIm9Qiu//TA3IhFDX+4A82f19Osy8sGY
         1DFJzmD1mPAbS6KYykS/sFLU3xr00IuNCLuHaem2MLvHQnCNm903kmOnWdz1aqDc7Vgp
         n8VOx44gOMPzqWAAkiM+Bez8QgBwaWJY1+Z4Nb/CDcg/Drtj+NWjhNazBCwqXOw3ynuR
         QW4Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=WfluW2mA;
       spf=pass (google.com: domain of kuba@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=kuba@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=dqsenxTIVdRth4nC4xD+WB1V7ihjEYjGUxqEHWh9n3o=;
        b=SrA6+lS7LuDtH3+nWnWOF5wZ8tkR2+bLPNrXOZXTPmJVX05yzCe2SqTG2vLaQ+/UK5
         A1rh2RHygU4NX2oJS4x11hde+XPtuZGd1iZoFo9nhovMT3O44lTTd5uWFtwN1RL0xm7P
         +OC3yU6xktdsokfdnPwWXm9veVY8nfhAIE0X/xwzf/Xt6hRYpmSk3MYUA8eazZD4NhBH
         jmI89sI9smRNtUKEbYZeybrpzv2IUqku3z0YVQR6D/wGIY6zCVE4Lht4NLtI1xJ8qwrV
         P0BQprKJBMblIXNEop/EhfTH8Mto+EyMhji1fuWY9QHZuvL7Bg+dq9AWhwfbEZpeMbeT
         VJRA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=dqsenxTIVdRth4nC4xD+WB1V7ihjEYjGUxqEHWh9n3o=;
        b=huZH6eZF7iTGr3/dRf7Zi1tssPtPAd5vAlg10fIzQn4FRnkF5SdAfwqo7+bYLKE+yd
         3anxf2TiP+uAEE/afcU5g7OotMAE7I6Cnhs4NKwb72qzZgZhrHP7jDpmxpnvUMZmt4e+
         T+xhcucN6nH/69J3l/xON/9W5nqjp9iRvaCvDQTE9ww1YhtrvxZuAupH+7UezUPeieH+
         pjepH0xhK5DaI6vJ4Vy2b8bdGFYXdTxcWytUVT6f2jiHxphaoEnAEGAwQsBHjRLQ6mv2
         o7MNFa85+jMqBS6r6CDUwBtUKldDurBEhP1m4bYGFb8Lxmq4NW35/Up++5NOpymwo6FB
         cHaQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM53101VLLNTyhrlhe+J1cbdbKkmLyw0zQxQV3JrhmRlGM3gd5T2gk
	znMca+zAaJfYyMqGRTPf9j4=
X-Google-Smtp-Source: ABdhPJwEN945gQbFXZ54jpBT4yUsuHt0tOfSDSkDFajhNxlBXvp7OCqRaIfvUQ9T4GWQGUaTyRy25Q==
X-Received: by 2002:a25:5d5:: with SMTP id 204mr82328858ybf.24.1594141015314;
        Tue, 07 Jul 2020 09:56:55 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:6087:: with SMTP id u129ls1284896ybb.10.gmail; Tue, 07
 Jul 2020 09:56:54 -0700 (PDT)
X-Received: by 2002:a25:41d3:: with SMTP id o202mr3699738yba.236.1594141014900;
        Tue, 07 Jul 2020 09:56:54 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1594141014; cv=none;
        d=google.com; s=arc-20160816;
        b=RvyQfnjtKw9huX9y9Nog417xN5wRJH3JVaAeepIfPn6AkXE6WDr0ei+Ac/oyxoLQk/
         DVRN695Uhvi52mB75qghLHNLOxMIDoNAy8Li9vA7s4v1rO/yW8/5cwlTCAr7xNn0F1+J
         MNfl8H64xcUYNk2rMGboXNNqYfy5U5cA5J7qC4JyeQigADjOy9RMHF3PK/aPvt3KZZd1
         BDut94KYj60VWaCGHaHso3bHgfWGD/JNQMg5zdbnkv5ZImr9gwyvVC1+uriVNxdt9cKM
         hsgD9xpe72MlVnP78prcSs5kP+Hq7Fg2gSSWH0TPjaqGLLqeowM0tDMehHSrzC/zqStJ
         MYwA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=zD6xWOBL5ttUfKdEHVH345hysM4dP6zavq18WfZXmuw=;
        b=uH8HBqk8p5pcKYRLgOlaTGXPdfLqeUIkKSdHSwDlS9beErM706t05X3W7U58FvEFpK
         89wK1WVhPV1nbHRXpZzaA2A5GRpm5aQPL2oKhfhicF0Fuh4BF1/JORjYxFzHOJDBcPCD
         /7HNQjUJt/rINGxPkqauy0+pIIttffMygubKZftNCv3KYJcV2E84EIU4LMx1DkOfNjeF
         ehTmnIFwe5xw5A9ayoTFYA41CWvshIVafX7TkVFrHd9U+DJCCNDGzre+pZf6p6ZSn7FU
         Mw5JVYjaNXhsNXm4QTsOHQJRlL+qBCZCPXly3DIzXzhSGuk3iGA+EOvP1fqXAPMPB1Pn
         V8dg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=WfluW2mA;
       spf=pass (google.com: domain of kuba@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=kuba@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id b36si913451ybj.1.2020.07.07.09.56.54
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 07 Jul 2020 09:56:54 -0700 (PDT)
Received-SPF: pass (google.com: domain of kuba@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com (unknown [163.114.132.1])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 5ECEC2065D;
	Tue,  7 Jul 2020 16:56:53 +0000 (UTC)
Date: Tue, 7 Jul 2020 09:56:51 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: Sami Tolvanen <samitolvanen@google.com>
Cc: Masahiro Yamada <masahiroy@kernel.org>, Will Deacon <will@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, "Paul E. McKenney"
 <paulmck@kernel.org>, Kees Cook <keescook@chromium.org>, Nick Desaulniers
 <ndesaulniers@google.com>, clang-built-linux
 <clang-built-linux@googlegroups.com>, Kernel Hardening
 <kernel-hardening@lists.openwall.com>, linux-arch
 <linux-arch@vger.kernel.org>, linux-arm-kernel
 <linux-arm-kernel@lists.infradead.org>, Linux Kbuild mailing list
 <linux-kbuild@vger.kernel.org>, Linux Kernel Mailing List
 <linux-kernel@vger.kernel.org>, linux-pci@vger.kernel.org, X86 ML
 <x86@kernel.org>
Subject: Re: [PATCH 00/22] add support for Clang LTO
Message-ID: <20200707095651.422f0b22@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
In-Reply-To: <20200707160528.GA1300535@google.com>
References: <20200624203200.78870-1-samitolvanen@google.com>
	<CAK7LNASvb0UDJ0U5wkYYRzTAdnEs64HjXpEUL7d=V0CXiAXcNw@mail.gmail.com>
	<20200629232059.GA3787278@google.com>
	<20200707155107.GA3357035@google.com>
	<20200707160528.GA1300535@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: kuba@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=WfluW2mA;       spf=pass
 (google.com: domain of kuba@kernel.org designates 198.145.29.99 as permitted
 sender) smtp.mailfrom=kuba@kernel.org;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=kernel.org
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

On Tue, 7 Jul 2020 09:05:28 -0700 Sami Tolvanen wrote:
> On Tue, Jul 07, 2020 at 08:51:07AM -0700, Sami Tolvanen wrote:
> > After spending some time debugging this with Nick, it looks like the
> > error is caused by a recent optimization change in LLVM, which together
> > with the inlining of ur_load_imm_any into jeq_imm, changes a runtime
> > check in FIELD_FIT that would always fail, to a compile-time check that
> > breaks the build. In jeq_imm, we have:
> > 
> >     /* struct bpf_insn: _s32 imm */
> >     u64 imm = insn->imm; /* sign extend */
> >     ...
> >     if (imm >> 32) { /* non-zero only if insn->imm is negative */
> >     	/* inlined from ur_load_imm_any */
> > 	u32 __imm = imm >> 32; /* therefore, always 0xffffffff */
> > 
> >         /*
> > 	 * __imm has a value known at compile-time, which means
> > 	 * __builtin_constant_p(__imm) is true and we end up with
> > 	 * essentially this in __BF_FIELD_CHECK:
> > 	 */
> > 	if (__builtin_constant_p(__imm) && __imm <= 255)  
> 
> Should be __imm > 255, of course, which means the compiler will generate
> a call to __compiletime_assert.

I think FIELD_FIT() should not pass the value into __BF_FIELD_CHECK().

So:

diff --git a/include/linux/bitfield.h b/include/linux/bitfield.h
index 48ea093ff04c..4e035aca6f7e 100644
--- a/include/linux/bitfield.h
+++ b/include/linux/bitfield.h
@@ -77,7 +77,7 @@
  */
 #define FIELD_FIT(_mask, _val)                                         \
        ({                                                              \
-               __BF_FIELD_CHECK(_mask, 0ULL, _val, "FIELD_FIT: ");     \
+               __BF_FIELD_CHECK(_mask, 0ULL, 0ULL, "FIELD_FIT: ");     \
                !((((typeof(_mask))_val) << __bf_shf(_mask)) & ~(_mask)); \
        })
 
It's perfectly legal to pass a constant which does not fit, in which
case FIELD_FIT() should just return false not break the build.

Right?

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200707095651.422f0b22%40kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com.
