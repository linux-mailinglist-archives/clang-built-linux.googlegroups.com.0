Return-Path: <clang-built-linux+bncBD7LZ45K3ECBBKM52L5AKGQE3E6G3PY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ej1-x63e.google.com (mail-ej1-x63e.google.com [IPv6:2a00:1450:4864:20::63e])
	by mail.lfdr.de (Postfix) with ESMTPS id 996D625ED26
	for <lists+clang-built-linux@lfdr.de>; Sun,  6 Sep 2020 09:24:25 +0200 (CEST)
Received: by mail-ej1-x63e.google.com with SMTP id b23sf4342218ejv.2
        for <lists+clang-built-linux@lfdr.de>; Sun, 06 Sep 2020 00:24:25 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1599377065; cv=pass;
        d=google.com; s=arc-20160816;
        b=QOohHY2OXhhNOdfO4tYDe0WupRLN1f/R9qFuOc+pveMOHeXrV9mgIqFB/gz38eSXAU
         6Aa/bUPG+q5Ka9ATckpNhoLlGpRBtw69xN1QAn4TlalOh6M+BcL8toKXkrzIwFL+kFsX
         z9BCp+UJha7MyDr4S19i6XOHR61gfdwKmwlWecnOkvSJUCUJrbQ842wGJle/cR0KDvpU
         JSqxshi6jEhuf5PYz4VerCSZNXUcO3wPkvd8rj4qAhF6icUM7NFYD0F71hsWigQVIS5L
         RC17IKSAWnT4VxHT9Z9ZnAjnY0u8+FIOXIc7KSzn+MpR3dZJhenIvZgrkaYrUMXgvBkQ
         xGYA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=2cKrRt/FcICIhNfL00/1uKvWNJSHcDQBNCHN4tWldBY=;
        b=o7tjGlzk/dsSy/ehpncy6VL6Sftj4SMaaVV0UnuEziYE0vEeqAGBVNlTFDjJwJBrOs
         8h4rrUNsAlllecdlECt2NcACCBImUSiG3ZunGW/5qNhtF5dQYE5bW0kecg15kYSp8rIv
         +ADkq/Bro2J7K6k9TdOC4uJbgFBBfruWI7dgyg3Ek1m5yeUS1ORdnvmiTF/a+FXcZfW5
         OfdJrL1HH9pKAw3fRyy8uqc33rOTdy8P0PYMZIxZpbtClUXB8B5npH8mrjPVWI8eOjXM
         ML7cAiiN2xxs3MPP2tzSUjPYVYj+t0TnXLM91W3tYbQI7AS+rgVnW0ND8kdzLmJEc+JI
         QE+A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=BB6hDfiw;
       spf=pass (google.com: domain of mingo.kernel.org@gmail.com designates 2a00:1450:4864:20::643 as permitted sender) smtp.mailfrom=mingo.kernel.org@gmail.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=2cKrRt/FcICIhNfL00/1uKvWNJSHcDQBNCHN4tWldBY=;
        b=Q75xr/JqL8LWpBol3Bcs70SePYHqDRdbSLfqOTN/8XXVL4mUqcy/SOx7eEv8FtpAHf
         wKtlzDqWejGOnK+J49b5EUrNJsdsOfCI2p31OS5jStHa/3p2XV+k/h0JlpnOU9ruZIC1
         zeQlejzwAx4MPMo8+H7U8bgg8STKWl8ZeYGjj7IzZXV3Bwj9kfgwWKYbue4TcqiHKLCt
         y7Zpi6+Nln02f0P6NrY/av1s9dPWNGRRGos5OqYPWkM9qfpnTnPPwu6ui4LlUh0HyFva
         GYJmYAd76zzwQE/0J0fSztG2jrZJU7r85PqtYnLyloQFb6sNVcBL4wPTP6OmN7rf1rGa
         cA/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=2cKrRt/FcICIhNfL00/1uKvWNJSHcDQBNCHN4tWldBY=;
        b=SWbUuanAGcTMuDDqWfdHukwBnhhJn+ncGdR5fvhTqi2L/3zm5qgq8FPqpHy9VTb9VP
         VTg/BBN/ySP0mFCzMelS1bCQkvnEWutZ2radElUZsQZ9LfiCNp3SYdXOsCNZZ7oGQsg8
         Ajbt/dGI7Ln7MdFsDjgK73F+Y4kJ7rbLEeRI8SU8sxBDkj6ko7frDoK5EEvc11NLcpX/
         z+jO6plu3B+vpLE8D0YKs+kM6HT0tdHZVptoIsZMQpL3l76Ys7tNwvfAAko4xc8dECHz
         CFxdWHW3np9s0BQhBjNQ7+XbiMzOzqcOlLL43dezWskuS2hIfVP80py4UUmNXrjjxvxZ
         17NQ==
X-Gm-Message-State: AOAM5300HlmipIa+AL8nUIEkryG+3ZALYxYc6U/UO6u/mbrjot40Hn+7
	yjErYKr9R8S5esO7hWCt8gw=
X-Google-Smtp-Source: ABdhPJw1StoRu5WHoDtX0DeQSs27wV/eMMA142uIaqfUetYQRDT8ZeSsiFbqcZl+rAXD9n278z9gbQ==
X-Received: by 2002:a05:6402:1584:: with SMTP id c4mr16689927edv.192.1599377065319;
        Sun, 06 Sep 2020 00:24:25 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a50:bc05:: with SMTP id j5ls3036140edh.0.gmail; Sun, 06 Sep
 2020 00:24:24 -0700 (PDT)
X-Received: by 2002:a50:a44a:: with SMTP id v10mr14972473edb.133.1599377064448;
        Sun, 06 Sep 2020 00:24:24 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1599377064; cv=none;
        d=google.com; s=arc-20160816;
        b=vucVAPOcn5OaanZJieJ21V5z7VdAQtrK3Nbm31K93VHVIfYJTERO635/sJTpZkdmW6
         bTgecaK+txVKG9qxOVWk6QcHpw6B8X1jYnOFL87PcPfTXHoiSjdQuyqkgBYUPboCcEG/
         F674GeaqNLXtv+UhqSrowBcmB/DQbJR6f8BwTY/uh38Icav/9FKfqTyZnReNpJfuhFQO
         b+KcCWcHjTbj9maPJ4x8fgfp5ZDEed51wG8FRth8VYm6aKRsHLDg2qBIegzTz/dcatmy
         McQ6fyRoP4V/kPqVm9jZm/LDHoRqdTFRqF8zg9U5T82vpX5ZqZBa8QLFsLbou0Dcfr47
         j5dA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:sender:dkim-signature;
        bh=tXMiLtKX1CVIBd5uJ7b5aMxZLokTxvClgRBNmQrzapA=;
        b=IHF7PYEI43ytYJ2JtR5QrWlGRwk65Ul2udl75ircYusIfFFAC+yBEp4lNRYFIkfyNk
         /6/rhARVrLxitt+rd0XGfyyQofkVKTN3UXXBy+9s03i6yk1ACUJWGLlXcOnw5T03M5tU
         5EcWE4r8Y4pqc4lNdg5QbGEkyrqDV0Ucc1B+MGdD1kidpgLx4fGYgqT0Ysp//yECExUX
         hnB7zJuYSRxMWVWSA3G7STadyeaCkJeDKn3McU74v7ELA/czezXm5MEc6j4gw3FxxyCe
         ch1qetmZ0Yq2ur3jD5URFV1zmNg8M6VYb16AFjRfIxWJecC1/IAbVpVAPU2TvZw1mqgg
         Icdg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=BB6hDfiw;
       spf=pass (google.com: domain of mingo.kernel.org@gmail.com designates 2a00:1450:4864:20::643 as permitted sender) smtp.mailfrom=mingo.kernel.org@gmail.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail-ej1-x643.google.com (mail-ej1-x643.google.com. [2a00:1450:4864:20::643])
        by gmr-mx.google.com with ESMTPS id k6si339747eds.3.2020.09.06.00.24.24
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 06 Sep 2020 00:24:24 -0700 (PDT)
Received-SPF: pass (google.com: domain of mingo.kernel.org@gmail.com designates 2a00:1450:4864:20::643 as permitted sender) client-ip=2a00:1450:4864:20::643;
Received: by mail-ej1-x643.google.com with SMTP id i26so13770975ejb.12
        for <clang-built-linux@googlegroups.com>; Sun, 06 Sep 2020 00:24:24 -0700 (PDT)
X-Received: by 2002:a17:906:a0c2:: with SMTP id bh2mr16076951ejb.493.1599377064196;
        Sun, 06 Sep 2020 00:24:24 -0700 (PDT)
Received: from gmail.com (54033286.catv.pool.telekom.hu. [84.3.50.134])
        by smtp.gmail.com with ESMTPSA id a5sm2709217edl.6.2020.09.06.00.24.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 06 Sep 2020 00:24:22 -0700 (PDT)
Sender: Ingo Molnar <mingo.kernel.org@gmail.com>
Date: Sun, 6 Sep 2020 09:24:19 +0200
From: Ingo Molnar <mingo@kernel.org>
To: Kees Cook <keescook@chromium.org>
Cc: Nick Desaulniers <ndesaulniers@google.com>,
	Borislav Petkov <bp@suse.de>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Mark Rutland <mark.rutland@arm.com>,
	Ard Biesheuvel <ardb@kernel.org>,
	Peter Collingbourne <pcc@google.com>,
	James Morse <james.morse@arm.com>, Ingo Molnar <mingo@redhat.com>,
	Russell King <linux@armlinux.org.uk>,
	Masahiro Yamada <masahiroy@kernel.org>,
	Arvind Sankar <nivedita@alum.mit.edu>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Arnd Bergmann <arnd@arndb.de>,
	"maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	linux-arch <linux-arch@vger.kernel.org>,
	linux-efi <linux-efi@vger.kernel.org>,
	Linux ARM <linux-arm-kernel@lists.infradead.org>,
	LKML <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH v7 0/5] Warn on orphan section placement
Message-ID: <20200906072419.GA886844@gmail.com>
References: <20200902025347.2504702-1-keescook@chromium.org>
 <CAKwvOd=r8X1UeBRgYMcjUoQX_nbOEbXCQYGX6n7kMnJhGXis=Q@mail.gmail.com>
 <20200904055825.GA2779622@gmail.com>
 <202009041117.5EAC7C242@keescook>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <202009041117.5EAC7C242@keescook>
X-Original-Sender: mingo@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=BB6hDfiw;       spf=pass
 (google.com: domain of mingo.kernel.org@gmail.com designates
 2a00:1450:4864:20::643 as permitted sender) smtp.mailfrom=mingo.kernel.org@gmail.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
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


* Kees Cook <keescook@chromium.org> wrote:

> On Fri, Sep 04, 2020 at 07:58:25AM +0200, Ingo Molnar wrote:
> > 
> > * Nick Desaulniers <ndesaulniers@google.com> wrote:
> > 
> > > On Tue, Sep 1, 2020 at 7:53 PM Kees Cook <keescook@chromium.org> wrote:
> > > >
> > > > Hi Ingo,
> > > >
> > > > The ever-shortening series. ;) Here is "v7", which is just the remaining
> > > > Makefile changes to enable orphan section warnings, now updated to
> > > > include ld-option calls.
> > > >
> > > > Thanks for getting this all into -tip!
> > > 
> > > For the series,
> > > Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
> > > 
> > > As the recent ppc vdso boogaloo exposed, what about the vdsos?
> > > * arch/x86/entry/vdso/Makefile
> > > * arch/arm/vdso/Makefile
> > > * arch/arm64/kernel/vdso/Makefile
> > > * arch/arm64/kernel/vdso32/Makefile
> > 
> > Kees, will these patches DTRT for the vDSO builds? I will be unable to test 
> > these patches on that old system until tomorrow the earliest.
> 
> I would like to see VDSO done next, but it's entirely separate from
> this series. This series only touches the core kernel build (i.e. via the
> interactions with scripts/link-vmlinux.sh) or the boot stubs. So there
> is no impact on VDSO linking.

Great!

I also double checked that things still build fine with ancient LD.

> > I'm keeping these latest changes in WIP.core/build for now.
> 
> They should be safe to land in -next, which is important so we can shake
> out any other sneaky sections that all our existing testing hasn't
> found. :)

OK, cool - I've graduated them over into tip:core/build. :-)

Thanks,

	Ingo

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200906072419.GA886844%40gmail.com.
