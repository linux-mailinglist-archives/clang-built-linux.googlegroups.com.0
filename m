Return-Path: <clang-built-linux+bncBDYJPJO25UGBBSHH4SCQMGQE7HYDBHY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x237.google.com (mail-lj1-x237.google.com [IPv6:2a00:1450:4864:20::237])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D15739AB1F
	for <lists+clang-built-linux@lfdr.de>; Thu,  3 Jun 2021 21:55:53 +0200 (CEST)
Received: by mail-lj1-x237.google.com with SMTP id x26-20020a2e9c9a0000b02900eaf62d380esf3009504lji.2
        for <lists+clang-built-linux@lfdr.de>; Thu, 03 Jun 2021 12:55:53 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1622750152; cv=pass;
        d=google.com; s=arc-20160816;
        b=OqNCDZtrf243dKrvGiHdbM3WYdpH9Ep8SgH+VUGYln0LQopz+HiliwWQW1oW9zfaZS
         SQhho96kgK3zKeZac0JZHxk95PTZjPbbImX05Akt5F6sQexu9WUB0G8w2evK9pz1ToJo
         OTrh8FPjDF/Cb31q69ChcWNoJEwaHxV0UQIYdPT5+rQnTRhr74Xg+KH0cZVIFPxQIC1L
         Ab62bzC7Z/ZfVJgw25xpZNOVflJYV/+41q1W5xas76dpc1UWReq/2HIUk91XTnawgC+p
         6DIGQJyhBSeEbqUgpQBbNpBI/cspa34v+pSH+EA+3BoCvzH8J50lCdl6DqYR2lpVpbo1
         hgvw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:mime-version:dkim-signature;
        bh=saz8hWU7KOOFlgC2lxpAlREnRUhhwcNFJhu4JFX+/4w=;
        b=lGnrrWNTp8fL8vnmh3I0JXR9crnpRbir1ltSO7YZMrLz5pIBeGfO4NEwtTOusD19xo
         Sg7gNe2YYtQnVpK8p9129KeaNCLQdLGwpbKdmGU6PoICSiTaQHfAvbx7J7EOOC9CZ1w9
         ny4foDvu+TFT/cLF32Tg6UTXcO83uh4FndgTXSquC/GLNxOK5xvGdb56Re2jd5+w4qJO
         2699slzC3giNeq5HHe7N4SUjVNAr/kb0I1+YSAvojl53K51OFBO3dHCqkggVcA8i5s5x
         Y9n9g3vm8ZhLbPGTNYDmu5NA7BCC2aw/3RdyeIdMqce7+saE4+atLrb3LnmutmeGqrIM
         lz0Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=MKJacLC+;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::132 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=saz8hWU7KOOFlgC2lxpAlREnRUhhwcNFJhu4JFX+/4w=;
        b=eF02XxLWDShRnCqOHDSwO2q9Ac4Lw+1kjYWZU+uFLvQXVr6lgxvcTqLcvr3TV4mzm8
         kJMefjrnMKwZdw7MjAZvHAFq1dVjK2DFQngj+AzOn0c2WFW6eHHcnit7j7FE5m31O5H2
         15gP5uxdw0weLaqexVTD5e+W7lnvqYszVDq3enraIhyr1RWp4kFYzspoSklc1LphEWzZ
         TMIWjepfqKcp+0keAyM4YZt1ZgQqdbloESc7W94wiEdVxOcoFTapke+FakoF7wc9CTgy
         nsPPtqMaeaNabAfHVacrk1BlBqC1KlxkfCcCuF+XlQDYn4d1Q+kI4NTrA28fk5nwSu7L
         kbqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=saz8hWU7KOOFlgC2lxpAlREnRUhhwcNFJhu4JFX+/4w=;
        b=HvudAOj5QCez3DZYubxUyxw3Sq+i8nEZmJYYEpvVULVAP/SQ/LZbMl86yF6u0Sc3B9
         tjsc8O4eaB58iy9FLa5HDVgQii743nYTYRY5afy7g+HkWEdPnOfPDlLjFXRoZTaSUecb
         trAtDT9Zlz+frHV2yzacimhgT/6BP6iE39Y+YvGFYxo2jhPhNeRvDXyRHS9EABG2ycbg
         2BT9UXufhr7p66LaLhFkzvaP9fEczJK1AG98eqbgvuj3ap5p4MHdb8umBlNOZRdEbZAM
         96lkjRGaiYt9N6aQ2djPc9Z38a5QPvBW5Gy0bNf5O6ofCjVrroriosSxqaRAKy7U9JNi
         Y6yg==
X-Gm-Message-State: AOAM530VaZqWmSeFBzTnriKHezy2YQX+DtJjzGacvkHJVMO7J9sGDpjs
	4vdj/Y0834g0j1Q1mEKGSNQ=
X-Google-Smtp-Source: ABdhPJyUqpKtGZ6PxgtKaqJNUrkdKl0BVXshr+33Q1l7wZbytBczVV1eqacGdyF29/hV2d5Hi3Hrlg==
X-Received: by 2002:a2e:22c3:: with SMTP id i186mr723761lji.273.1622750152469;
        Thu, 03 Jun 2021 12:55:52 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:651c:211d:: with SMTP id a29ls1086458ljq.8.gmail; Thu,
 03 Jun 2021 12:55:51 -0700 (PDT)
X-Received: by 2002:a2e:b4b3:: with SMTP id q19mr702748ljm.374.1622750151403;
        Thu, 03 Jun 2021 12:55:51 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1622750151; cv=none;
        d=google.com; s=arc-20160816;
        b=HUzBvf0OGORfEiUthSA27zLc6pXbVY/D0dkcnQH9WWK2BQ1jmWvnfa5x+h0ngvuGtg
         pmqIHbtEIJx4lMoYuLyQrEIwlndjIEH2rNu1+OlgohtL8wqVft+/T1prQnOM2pIrh3CP
         OKsZYX4hePNRwRvW0U1s9SxOO/JRPtPNeLMOWR4KVo0+N8JScX4V9yD70EyFgTF9g+VB
         MCY/qW2hhZ6ljVZ3xhPm9QkVfEZSe47ts0KdePEQ6Vq28XoehPGUAvK4hybAvIuVuoIA
         x+vDu3SpHD4O+vUesaTQ0nWHY6FLcy7J5iLS48lQnTvhlpefC7dnq/Y3AlwK8C76EgUu
         RU/Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:mime-version:dkim-signature;
        bh=N/hqFhie22qC5Vt3k/upj4hK8Z9hNkli4niqioWLmMA=;
        b=fNAI2Mri8plZAcOscCp5wfxJ3JXkL2mkIchmQlIdrxrCTI42qJolYqC9YEtzBW4XQo
         oGhuvVWQVy2QyXDAgkK5dFgyPkQIqy5ViY6XPQL39wDD54Em5bqc3npfUXbIZg3yfwgf
         eA4grrWgak9nHZN8SUXhgbvsgiGAoDVpbp+TVJ0w+maCsdJNyGs1R2ny5g2leuDKq6nH
         XRo+u4IOn1RxBNdI6YQGMkh+R10jXOiLLU8lFlpVz7DOvnMqLxBrTPXipSNN+pYBJCYc
         KbQmRnXYd0Iq8id42xjBuup28WsNJXwK/mXoB2H3kdXPgqSKYOYtIlCKS639ccOKAiRO
         blQA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=MKJacLC+;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::132 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-lf1-x132.google.com (mail-lf1-x132.google.com. [2a00:1450:4864:20::132])
        by gmr-mx.google.com with ESMTPS id i14si163480ljg.7.2021.06.03.12.55.51
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 03 Jun 2021 12:55:51 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::132 as permitted sender) client-ip=2a00:1450:4864:20::132;
Received: by mail-lf1-x132.google.com with SMTP id i10so10642260lfj.2
        for <clang-built-linux@googlegroups.com>; Thu, 03 Jun 2021 12:55:51 -0700 (PDT)
X-Received: by 2002:a05:6512:ace:: with SMTP id n14mr365462lfu.368.1622750150596;
 Thu, 03 Jun 2021 12:55:50 -0700 (PDT)
MIME-Version: 1.0
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Thu, 3 Jun 2021 12:55:39 -0700
Message-ID: <CAKwvOdki5X_Lyb8g-mpVvsoaJcoktWiUq6rNO=WXq-zopzJvQA@mail.gmail.com>
Subject: Announcing Clang Built Linux Meetup II turbo
To: Nathan Chancellor <nathan@kernel.org>, Kees Cook <keescook@chromium.org>, 
	Manoj Gupta <manojgupta@google.com>, Nathan Huckleberry <nhuck15@gmail.com>, 
	Dmitry Golovin <dima@golovin.in>, Alexander Potapenko <glider@google.com>, 
	Behan Webster <behanw@converseincode.com>, Peter Smith <Peter.Smith@arm.com>, 
	Sedat Dilek <sedat.dilek@gmail.com>, Arnd Bergmann <arnd@kernel.org>, 
	Masahiro Yamada <masahiroy@kernel.org>, Jann Horn <jannh@google.com>, 
	Sami Tolvanen <samitolvanen@google.com>, Bill Wendling <morbo@google.com>, 
	Mark Brown <broonie@kernel.org>, bernhard.rosenkraenzer.ext@huawei.com
Cc: clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=MKJacLC+;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::132
 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Nick Desaulniers <ndesaulniers@google.com>
Reply-To: Nick Desaulniers <ndesaulniers@google.com>
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

(bcc llvm-dev, linux-toolchains)

Hey all,
Following the success of our in person 2020 meetup
https://github.com/ClangBuiltLinux/CBL-meetup-2020-slides, we'd like
to hold another; this time virtually due to the circumstances.

We're planning a one day meeting to discuss any and all things related
to building the Linux kernel with Clang (and LLVM), before heading
into Linux Plumbers Conf 2021 https://linuxplumbersconf.org/event/11/
the next week.  Perhaps a good place to practice a talk for Plumbers,
or for topics maybe more specific than would be appropriate at
Plumbers?

See also slides from our event last year
https://github.com/ClangBuiltLinux/CBL-meetup-2020-slides for ideas of
subject matter and target audience (ie. a mix of kernel developers,
compiler devs, folks who understand one or the other, perhaps both; in
my case, neither).

When

Friday September 17 2021; times to be determined.

Call For Papers (CFP)

Please file an issue at
https://github.com/ClangBuiltLinux/CBL-meetup-II-turbo/issues with a
proposal. The CFP deadline is Friday September 10; one week before the
conference. We will add a schedule here with accepted talks.

Updates

Please click the "subscribe" button on
https://github.com/ClangBuiltLinux/CBL-meetup-II-turbo/issues/1 to get
email updates, or "watch" this repo on GitHub at
https://github.com/ClangBuiltLinux/CBL-meetup-II-turbo.

(We'll also be holding a "distributors conf" the day before, checkout
out https://lists.llvm.org/pipermail/llvm-dev/2021-June/150861.html)
Please feel free to forward this announcement to folks I might have missed!
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdki5X_Lyb8g-mpVvsoaJcoktWiUq6rNO%3DWXq-zopzJvQA%40mail.gmail.com.
