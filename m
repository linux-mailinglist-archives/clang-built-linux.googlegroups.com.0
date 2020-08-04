Return-Path: <clang-built-linux+bncBCS7XUWOUULBB4HFUP4QKGQE6W5TP5Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x1038.google.com (mail-pj1-x1038.google.com [IPv6:2607:f8b0:4864:20::1038])
	by mail.lfdr.de (Postfix) with ESMTPS id 37FA923B46B
	for <lists+clang-built-linux@lfdr.de>; Tue,  4 Aug 2020 07:32:34 +0200 (CEST)
Received: by mail-pj1-x1038.google.com with SMTP id k72sf1336226pjb.4
        for <lists+clang-built-linux@lfdr.de>; Mon, 03 Aug 2020 22:32:34 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1596519152; cv=pass;
        d=google.com; s=arc-20160816;
        b=YXE1RMbnq/79xkr6oYKbMpY7ptSssYjL3+WA1DWrHriw0qsWZtfuO2XuZuX+UEOOGk
         sb8Fj/I9bSdpbMLda/B3xxC1/ooWLi7Xm+XHVwdCVhRiQozxfhQGSYe030dCciKVhyQY
         uOjNjYjPBu1jbqW/q/vL+b44pnVL3cctwM28d6CnhcfHNAaoooJ62ZdrS5SbvpTH/MrE
         5ryyyKSEunv2GWyZmtQqnbpYgOcRMHpdo6IZkcbt2G9U0OSYNG3tPZGS4DtuekwD9hKD
         8yKnQiiECl1PFqycUmWl0Ak1XmHURA6f6zPjeGNED2rhU26QvHpk1L7EZEcehsE/FviY
         oxoA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=GCg1F9pDCB6XGQPqbtgVLJMwdLDaI925DW+2mBHD8Lo=;
        b=EKpriVNu2mxhCFXmrUc0W6q9gbz5nDZYwqCvY6nIoUXWP/ZS4lWTA6XFckNcHXeS0m
         FCIOVHFn11o0ZuJgJD6kGbh0C/Un5ZjMyNiWi1iq5/3hhrJi6NfnylgE74Q9MFaoQ0FZ
         j/42wF1HU9rGTh0/S9ljYr+/nTYztnGmA/lJFgVw3EIBwPUiJeTXnRHPIs1byXtDMHDR
         dg28d4gD0LDjCcqDdATeZHAh+3fWtYG/hTD5mndflzrnGT6Z3sqLFsjkX5M7/tAWf3Du
         x5JzEQETKzdBCb5ptuCPOjE+U5lgUBHIp6c0R5BzDZ6MKKJULOPj7ncBMWkGeHoaFGBm
         nKUw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Ph8ZuBGU;
       spf=pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::530 as permitted sender) smtp.mailfrom=maskray@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=GCg1F9pDCB6XGQPqbtgVLJMwdLDaI925DW+2mBHD8Lo=;
        b=XprKm7J1oIKLq9VDufARl9NOj729BBs4DIdHJPJncOGknpJy93rH2JOgDukLokbQBf
         TlKQFjwKULTJhGEYxOr9xz1TcPEVWog8eQu6n00TzWXAaPKRHmBXidZfoZ7yePlDppob
         17Yf+b6q8b/la8elSvrXXDNkxlcvoRuwmgBQbjIBjT8c9TkE5itQj43MmDj8Wa7LDcKT
         PCEEcj/hQrLWGLPUjZewuO3QVRc8QUD/dBXAoyqj7EN8Z8GlD3PnRT+lvUMus7iZ33X4
         5q9BOm5wnW3U6FBsKrq9LiWhdpmRr4vb246jTQiLx7zrQpSmjw23qL6rKkG1ZuOV9Vow
         shkg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=GCg1F9pDCB6XGQPqbtgVLJMwdLDaI925DW+2mBHD8Lo=;
        b=AQbFa3Bcn2x3jgcQwqN56U6XPTPgmW2ZdS/e2MOU4cwQi+h5SSA5AyvuwdDdEcQMXP
         Ebfw8SSrkQlICv07M0dBQ6CWilDsMIkY0krc0+B8l6AIOo7VHfbalKKYmk98uAHuqImH
         PzUE/0mvP9n2Qq7JbvbSJ6uDVPzA2ZcMJWPiHF8jIQjIPA/fnP4Kp/6p+1saw0YEfBnl
         f3n/ecPCFj4ije3zAAXbiUkm/szC+aR9DPGY0U54S4mn1IsAxwKAisHrHYS/4Kgqyzmb
         8Kna5S0TwzCihTf9acYtUOtUC/3tIrxibETZptjHBYxPlqUGG2cg+fu+V9sEnsw5BEXq
         zbhg==
X-Gm-Message-State: AOAM533P1P/rTs1At7isfpPg70lCcGKxlDUq9AMd4TDR19zKrdh/rF6Y
	XDhSGjFVILBt9wP5A1+1JvM=
X-Google-Smtp-Source: ABdhPJyg1c0gvzBOShvynUBZPWU2iz0MJaAAYWMJmBhH5QmB8t6jPbpaL6mLh7SYx9PyXbyVGX0KFg==
X-Received: by 2002:aa7:9468:: with SMTP id t8mr18236473pfq.182.1596519152533;
        Mon, 03 Aug 2020 22:32:32 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:142:: with SMTP id 60ls5534527plb.9.gmail; Mon, 03
 Aug 2020 22:32:32 -0700 (PDT)
X-Received: by 2002:a17:90a:eb18:: with SMTP id j24mr2788039pjz.76.1596519152094;
        Mon, 03 Aug 2020 22:32:32 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1596519152; cv=none;
        d=google.com; s=arc-20160816;
        b=H4WrmaHz+6WSdrvrWpFRBJRkUzm/FIjRcedLxJZii8TG/8q3nUkSpJZhC6XRjZ394v
         qY+b6UKAQkUB0ny4o7DXfkudzyDfxGntet6hA++EaIQxOHmoSgnpZBfzrBpBbyIGsI0b
         dREU28Y5BO0kl9r3pmm9MpfO++fYv1HKbMGjOqDrrDTs1Rj4sjhhxrLnmz6ZE7d2cNBt
         YDjwV2VHzxBuxTsXojh2v+77vk8aW6imDvuTXFjNwBStXkqexrmdCdubiZHZf2UtO/P0
         h7f8YUTz873VchFVONMc2S/LWDTqq9cFAfDYtMBJFZKpMvrfs1tKlg+EIMJ20Pk/ZvJe
         2VCg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=SYIRLxV49LREgpupMxZqNaA5o9fHAoeWk6pTwu6HNpo=;
        b=J5iF4+idZ1KDpsEnQJyuL/4iav+gdnX4P5A0f2aohnB4kzNCmq3RtSsvGhTs43i/gH
         L8kXDM1oBT943OK7jkqZI+ceatzF40d/MIE0qz13hhobPI4aPT64BoGHtJSM7hkJ8CZH
         RuqsO39smmrzRFrOY3iiALm5g6rHjIA5K+PIvYkdLUrdh4EJUG56wH5CZb9w+xep+rwE
         RnPSFYIuhyIFQZYeeMk0cy/i3v1arUTRhY4lI9He+zFoFyIsANx0mqDNekAxw9PNR3D3
         8UupD9T5mIc82+cuiFW4ech5WTiMs1NHVYUyuj8RCipFMnSh7+F7hCO3tF50cQlLBZGy
         48BA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Ph8ZuBGU;
       spf=pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::530 as permitted sender) smtp.mailfrom=maskray@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x530.google.com (mail-pg1-x530.google.com. [2607:f8b0:4864:20::530])
        by gmr-mx.google.com with ESMTPS id q137si669781pfc.4.2020.08.03.22.32.32
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 03 Aug 2020 22:32:32 -0700 (PDT)
Received-SPF: pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::530 as permitted sender) client-ip=2607:f8b0:4864:20::530;
Received: by mail-pg1-x530.google.com with SMTP id f5so4201638pgg.10
        for <clang-built-linux@googlegroups.com>; Mon, 03 Aug 2020 22:32:32 -0700 (PDT)
X-Received: by 2002:a63:cf0e:: with SMTP id j14mr10344966pgg.119.1596519151489;
        Mon, 03 Aug 2020 22:32:31 -0700 (PDT)
Received: from google.com ([2620:15c:2ce:0:a6ae:11ff:fe11:4abb])
        by smtp.gmail.com with ESMTPSA id go12sm1117217pjb.2.2020.08.03.22.32.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 03 Aug 2020 22:32:30 -0700 (PDT)
Date: Mon, 3 Aug 2020 22:32:27 -0700
From: =?UTF-8?B?J0bEgW5nLXJ1w6wgU8OybmcnIHZpYSBDbGFuZyBCdWlsdCBMaW51eA==?= <clang-built-linux@googlegroups.com>
To: Andi Kleen <ak@linux.intel.com>
Cc: Arvind Sankar <nivedita@alum.mit.edu>,
	Kees Cook <keescook@chromium.org>,
	Thomas Gleixner <tglx@linutronix.de>, Will Deacon <will@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Jian Cai <jiancai@google.com>, Luis Lozano <llozano@google.com>,
	Manoj Gupta <manojgupta@google.com>, stable@vger.kernel.org,
	Catalin Marinas <catalin.marinas@arm.com>,
	Mark Rutland <mark.rutland@arm.com>,
	Ard Biesheuvel <ardb@kernel.org>,
	Peter Collingbourne <pcc@google.com>,
	James Morse <james.morse@arm.com>, Borislav Petkov <bp@suse.de>,
	Ingo Molnar <mingo@redhat.com>,
	Russell King <linux@armlinux.org.uk>,
	Masahiro Yamada <masahiroy@kernel.org>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Arnd Bergmann <arnd@arndb.de>, x86@kernel.org,
	clang-built-linux@googlegroups.com, linux-arch@vger.kernel.org,
	linux-efi@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Michal Marek <michal.lkml@markovi.net>
Subject: Re: [PATCH v5 13/36] vmlinux.lds.h: add PGO and AutoFDO input
 sections
Message-ID: <20200804053227.k7zyozzrw5mhv6qi@google.com>
References: <20200731230820.1742553-1-keescook@chromium.org>
 <20200731230820.1742553-14-keescook@chromium.org>
 <20200801035128.GB2800311@rani.riverdale.lan>
 <20200803190506.GE1299820@tassilo.jf.intel.com>
 <20200803201525.GA1351390@rani.riverdale.lan>
 <20200804044532.GC1321588@tassilo.jf.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Disposition: inline
In-Reply-To: <20200804044532.GC1321588@tassilo.jf.intel.com>
X-Original-Sender: maskray@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=Ph8ZuBGU;       spf=pass
 (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::530
 as permitted sender) smtp.mailfrom=maskray@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: =?utf-8?B?RsSBbmctcnXDrCBTw7JuZw==?= <maskray@google.com>
Reply-To: =?utf-8?B?RsSBbmctcnXDrCBTw7JuZw==?= <maskray@google.com>
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

On 2020-08-03, Andi Kleen wrote:
>> Why is that? Both .text and .text.hot have alignment of 2^4 (default
>> function alignment on x86) by default, so it doesn't seem like it should
>> matter for packing density.  Avoiding interspersing cold text among
>
>You may lose part of a cache line on each unit boundary. Linux has
>a lot of units, some of them small. All these bytes add up.
>
>It's bad for TLB locality too. Sadly with all the fine grained protection
>changes the 2MB coverage is eroding anyways, but this makes it even worse.

> Gives worse packing for the hot part
> if they are not aligned to 64byte boundaries, which they are usually
> not.

I do not see how the 64-byte argument is related to this patch.
If a function requires 64-byte alignment to be efficient, the compiler
should communicate this fact by setting the alignment of its containing
section to 64 bytes or above.

If a text section has a 16-byte alignment, the linker can reorder it to
an address which is a multiple of 16 but not a multiple of 64.

I agree with your other statement that having a single input section
description might be helpful. With more than one input section
descrition, the linker has to respect the ordering requirement. With
just one input section description, the linker has more freedom ordering
sections if profitable. For example, LLD performs two ordering
heuristics as my previous reply mentions.

It'd be good if someone can measure the benefit. Personally I don't
think this kind of ordering has significant benefit. (For
arm/aarch64/powerpc there might be some size benefit due to fewer range
extension thunks)

>> regular/hot text seems like it should be a net win.
>
>>
>> That old commit doesn't reference efficiency -- it says there was some
>> problem with matching when they were separated out, but there were no
>> wildcard section names back then.
>
>It was about efficiency.
>
>-Andi
>
>-- 
>You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
>To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
>To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200804044532.GC1321588%40tassilo.jf.intel.com.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200804053227.k7zyozzrw5mhv6qi%40google.com.
