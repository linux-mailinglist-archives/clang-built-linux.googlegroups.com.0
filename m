Return-Path: <clang-built-linux+bncBD6K324WS4FBBBG2QL5QKGQEEHSUDTA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x43e.google.com (mail-wr1-x43e.google.com [IPv6:2a00:1450:4864:20::43e])
	by mail.lfdr.de (Postfix) with ESMTPS id D3BE826A489
	for <lists+clang-built-linux@lfdr.de>; Tue, 15 Sep 2020 14:01:09 +0200 (CEST)
Received: by mail-wr1-x43e.google.com with SMTP id s8sf1128572wrb.15
        for <lists+clang-built-linux@lfdr.de>; Tue, 15 Sep 2020 05:01:09 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1600171268; cv=pass;
        d=google.com; s=arc-20160816;
        b=Gk1Bnc9Aoq4P/XDshDSCigxPItPwvVHl6n5qkjknCU8UfLWd/QthVfB0wukpv5FXPU
         LvBnJ2w4LrLHE4/lTzciuF2Wy0XmBgSo7eDMUyP+pZLvXn8Yc2CVnKHLUpw++LKqk/g+
         C1pI+8FYKnpDZ4iFUMoWt9YUSLnAhEOCt8wlb3DGtIWtXRH4nRdefVqWQf590fqcybCS
         5Z44l4QDum5XdrcD7Z40oSqM8hejTkj5h0L6Zlkad183JmI4Qidi5i/BwnQUbtU0H5iX
         paOTOvcf+Ym2DSRfNH5ztzB1RZbCQyZTeDmhLxzX4IlzR66+r3nphe6oFEyfIucxEseS
         NvRg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=VuUBvQkS666HiStl5JGWWAhFzB9vzCoTbBJXbGBMXdU=;
        b=WaZGp2VzuALeLwXkM/ICTzjrhFuK5QcWwEvC5CCl+qN/np6hFj22CyI13ALMElKwTH
         0l3crur9m0mp7iJvKwALO8fs5STgKfe3aGE3r689ZmxuGNcZT5FaInHBnKS2M5979sFN
         5I+1BhSdRaf6KlLeJeIGZe6rNQKgJerMzomuUDFrm4r5tgaiDVM+hpQQoCM2OsQB6qGj
         fE1sS4LDB3CicDckTD15rat81merRmGy54wdeL5Yucv/b5cM5cfGOtSYz+9XRRhyVC85
         mkLhRzSwUokhXMHx3WVBdVU8D0cF1CX9LwdB/eyD4TfwekYw+Bp/txWbgnczrFpbGUML
         pPYQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Zb9L1job;
       spf=pass (google.com: domain of georgepope@google.com designates 2a00:1450:4864:20::444 as permitted sender) smtp.mailfrom=georgepope@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=VuUBvQkS666HiStl5JGWWAhFzB9vzCoTbBJXbGBMXdU=;
        b=UDo9c4PK1DbgtuV9RKgjKunKqY1AJRarFUwXAWzcsDFqGvOS+iIxMItD0rBfNhUTpX
         5adC7kNHRjIRLaCifyZroa2c1Ahtw9+/mGH5Clgs+d1DhJ8eWOAq/isnwsEPGGWOJZMu
         yoO8dbjB7qQmNpInQK86J6PoAf0Bhrymk+5VWkm0tDR32WP04NhYFDL71lfoJHOtnBBI
         inZTs2xHnjAGfZmIfTeTQilgXmtdVP61Dp4JCfCTk8juS1Y3YfxIuHavNToLmulTW/+H
         5PzjzWZopHkowQuS658oVU7xB6eCNHkBgT+cse56F4pBHaZK2RbQpsAMrujWmQr1JD0/
         yt/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=VuUBvQkS666HiStl5JGWWAhFzB9vzCoTbBJXbGBMXdU=;
        b=j32Cul65EnISKmtyogX4yGlqfqchwJ2xistz5RxrIKvoYh4k3rUbB4IQjrq3Upy1+1
         xrBt91r7h6gRKtAeFDi+HjrAEM00NQx3qAp+H6IlMJo7BFzAPBm7bcAwHq28ZD5HJ+mu
         QdOg7JzyFG3SyWvG1SDAgzg+Ko3j7kgNP0KPYJoZRS8JB/Bpt72wGgN9p3JmJ1xcUU3N
         3dtVwHoSuJNZZ9dRmNsT/KAmuQi3iWFG+gll6pSacBQyjGGK8b2sPu61Vnd8U4ETpUUa
         VQtYvxctaOnAzoFrYMth0wjzDVSzDMLziJ30TQF5YsF588viS5yID73HTZRdCiGRRXau
         lEBQ==
X-Gm-Message-State: AOAM5320kCWpkcAgRU5T2DAngDzhtxqlt5SioI1H38I+JtiQ1vxoIVZX
	TeMOr1X/epqagXPAAmtklLE=
X-Google-Smtp-Source: ABdhPJyKyrwuy43Y3IFKs2ebxp46q/XL+iiU92+QL5zz/0RG610c1PI0RwA+/MPxetf8CSCgQmfq2Q==
X-Received: by 2002:a05:600c:ce:: with SMTP id u14mr4496823wmm.137.1600171268497;
        Tue, 15 Sep 2020 05:01:08 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:adf:e3c3:: with SMTP id k3ls1494157wrm.1.gmail; Tue, 15 Sep
 2020 05:01:07 -0700 (PDT)
X-Received: by 2002:a5d:4682:: with SMTP id u2mr22567627wrq.254.1600171267674;
        Tue, 15 Sep 2020 05:01:07 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1600171267; cv=none;
        d=google.com; s=arc-20160816;
        b=O5REStSint8nnQIqHXeR2emT6yvwa0SdP6GK3LSALNgBQprKbvV6tSMo42MXQGvKhK
         0hMvX8s5DOmYFXS1/mSXoBPN5A56oWMcQlDD6Yn+2oA+fnFM/GOlbUyKiuJ56rpRD0iF
         SwrTPJNrORKdarmKNSLJO+rbUJrLemOs1V9I5jf+8AHLBLobMxCYpARsE1AUryIcc0Wm
         PJYhRa5mQ1MFWzudKpT5sHJg2/BlO8JtT0As3fHnE7uG9U9TkNOHD+ob/LG/xwGTArb0
         9skRby5mOuLpc4Tss9kYdujAxWRJW6h6B7jLAo7r/Oafz+nkLDm12f5QhmFVke3AhZDh
         xGVQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=D1RHl8ABdhn5KjoXJVQFbK3lZzim3prS8WaJzdIy+Zo=;
        b=gHbwEFySD1UpElf5QcKTCZ3VddZmymoWC8f+UWlXnMiZnr4Jd+ru+NtFYKstQlu9tP
         0LQTCE9hWLBHuyebQ3wdT8KxZ+YhULrk9n5loDrC1ulDdb0+1BYUm5N4QDpPVcie/Hjl
         pcdIOinCv6p7Wy9KUilbjOVGBAHsFbE7i06nHKB/dvA40wOkFdf5xRkytWf+60A5Tvb+
         Ra0lso9WAL+xnNqhBcVF1Q64iGup88dgOh5ZilOLn+Sm3S4dn8JQJvUpGDLXjWsNSHce
         u1kYYpUQPR8jbSxA2fLpwEL807U/OQGXOVqMicGa1qQvxOe2pDZ1ujNnuAMVQxFJrcwP
         CrGQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Zb9L1job;
       spf=pass (google.com: domain of georgepope@google.com designates 2a00:1450:4864:20::444 as permitted sender) smtp.mailfrom=georgepope@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-wr1-x444.google.com (mail-wr1-x444.google.com. [2a00:1450:4864:20::444])
        by gmr-mx.google.com with ESMTPS id h11si329311wrr.3.2020.09.15.05.01.07
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 15 Sep 2020 05:01:07 -0700 (PDT)
Received-SPF: pass (google.com: domain of georgepope@google.com designates 2a00:1450:4864:20::444 as permitted sender) client-ip=2a00:1450:4864:20::444;
Received: by mail-wr1-x444.google.com with SMTP id o5so2954733wrn.13
        for <clang-built-linux@googlegroups.com>; Tue, 15 Sep 2020 05:01:07 -0700 (PDT)
X-Received: by 2002:adf:91c2:: with SMTP id 60mr22458843wri.292.1600171267204;
        Tue, 15 Sep 2020 05:01:07 -0700 (PDT)
Received: from google.com (49.222.77.34.bc.googleusercontent.com. [34.77.222.49])
        by smtp.gmail.com with ESMTPSA id s124sm25145526wme.29.2020.09.15.05.01.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 15 Sep 2020 05:01:06 -0700 (PDT)
Date: Tue, 15 Sep 2020 12:01:05 +0000
From: "'George Popescu' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Marco Elver <elver@google.com>
Cc: Kees Cook <keescook@chromium.org>, maz@kernel.org,
	Catalin Marinas <catalin.marinas@arm.com>,
	Will Deacon <will@kernel.org>,
	Masahiro Yamada <masahiroy@kernel.org>,
	Michal Marek <michal.lkml@markovi.net>,
	Linux ARM <linux-arm-kernel@lists.infradead.org>,
	kvmarm@lists.cs.columbia.edu, LKML <linux-kernel@vger.kernel.org>,
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	james.morse@arm.com, julien.thierry.kdev@gmail.com,
	suzuki.poulose@arm.com,
	Nathan Chancellor <natechancellor@gmail.com>,
	Nick Desaulniers <ndesaulniers@google.com>, dbrazdil@google.com,
	broonie@kernel.org, maskray@google.com, ascull@google.com,
	Andrew Morton <akpm@linux-foundation.org>,
	Dmitry Vyukov <dvyukov@google.com>,
	Thomas Gleixner <tglx@linutronix.de>, Arnd Bergmann <arnd@arndb.de>
Subject: Re: [PATCH 06/14] Fix CFLAGS for UBSAN_BOUNDS on Clang
Message-ID: <20200915120105.GA2294884@google.com>
References: <20200914172750.852684-1-georgepope@google.com>
 <20200914172750.852684-7-georgepope@google.com>
 <202009141509.CDDC8C8@keescook>
 <20200915102458.GA1650630@google.com>
 <CANpmjNOTcS_vvZ1swh1iHYaRbTvGKnPAe4Q2DpR1MGhk_oZDeA@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CANpmjNOTcS_vvZ1swh1iHYaRbTvGKnPAe4Q2DpR1MGhk_oZDeA@mail.gmail.com>
X-Original-Sender: georgepope@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=Zb9L1job;       spf=pass
 (google.com: domain of georgepope@google.com designates 2a00:1450:4864:20::444
 as permitted sender) smtp.mailfrom=georgepope@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: George Popescu <georgepope@google.com>
Reply-To: George Popescu <georgepope@google.com>
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

On Tue, Sep 15, 2020 at 01:18:11PM +0200, Marco Elver wrote:
> On Tue, 15 Sep 2020 at 12:25, George Popescu <georgepope@google.com> wrote:
> > On Mon, Sep 14, 2020 at 03:13:14PM -0700, Kees Cook wrote:
> > > On Mon, Sep 14, 2020 at 05:27:42PM +0000, George-Aurelian Popescu wrote:
> > > > From: George Popescu <georgepope@google.com>
> > > >
> > > > When the kernel is compiled with Clang, UBSAN_BOUNDS inserts a brk after
> > > > the handler call, preventing it from printing any information processed
> > > > inside the buffer.
> > > > For Clang -fsanitize=bounds expands to -fsanitize=array-bounds and
> > > > -fsanitize=local-bounds, and the latter adds a brk after the handler
> > > > call
> > >
> > This would mean losing the local-bounds coverage. I tried to  test it without
> > local-bounds and with a locally defined array on the stack and it works fine
> > (the handler is called and the error reported). For me it feels like
> > --array-bounds and --local-bounds are triggered for the same type of
> > undefined_behaviours but they are handling them different.
> 
> Does -fno-sanitize-trap=bounds help?>

I tried replacing it with:
      ifdef CONFIG_CC_IS_CLANG
            CFLAGS_UBSAN += $(call cc-option, -fno-sanitize-trap=bounds)
            CFLAGS_UBSAN += $(call cc-option, -fsanitize=bounds)
      else
            CFLAGS_UBSAN += $(call cc-option, -fsanitize=bounds)
      endif

The code traps.

Thanks,
George

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200915120105.GA2294884%40google.com.
