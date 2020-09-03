Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBCHDYX5AKGQE4G4F23Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa37.google.com (mail-vk1-xa37.google.com [IPv6:2607:f8b0:4864:20::a37])
	by mail.lfdr.de (Postfix) with ESMTPS id 3DB4E25CDDB
	for <lists+clang-built-linux@lfdr.de>; Fri,  4 Sep 2020 00:43:21 +0200 (CEST)
Received: by mail-vk1-xa37.google.com with SMTP id w82sf1066466vkd.17
        for <lists+clang-built-linux@lfdr.de>; Thu, 03 Sep 2020 15:43:21 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1599173000; cv=pass;
        d=google.com; s=arc-20160816;
        b=pL9dkcsjH/QJcnVgX3vtdBG15d9swrY3NwkFJ7LLX6fp9vRYeb1OLyHUp4rqEq2K/r
         iaFw0HVFJt+zdkhdS+Aaal44hqdmH6YNuRJnStEkQ1tDc+qtSOaPu3EYs5jsjthirvRn
         ccDmd94z9rrbYoRrv5ISAZowlVIZ4DycQGutaWYTCtLxy+61qUX4H9q7ETS6osjSAIlo
         FGYFHnmEiuJ+/URDEe7jRKimiuy9hN0D2eqW9qiNHKt9nIhucXkSCnTWy+BxS5Yr09yJ
         7pyOKVqaIvUtedkVrGwDyCo1XTyRF+ZTXzAV0Dqa/l3aytZs8GVHPHpFcpCycbs8yAXe
         9W+w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=10kP9EndPJBZbwPiP0dp7PBy8Lx8ROOp66H8Bup3N/I=;
        b=meCX6Wyao8/cQ2fUMutoJXOfPZYTVRPFLi/043pQ0QtoAIk0vvPF/8FvVaQrrTFUSe
         LY7yBn0MQc8woq9Hf7SFmJaMLVMlHnzHDVCyq0AJlqeX+MAFHMmXmLzPxBENodU+HJ+R
         OMkNGK2TBa9cRcYfoBgOsS3LbNTmwf/C6gJojN+ZBl0U/xV2gVTV8ZASy23Pf+mgUajR
         cusQoKJ9RqhE7HHee74UZthGUvOFKOzwNoSPmPl7jcGXkZhE+c40sFV0AHbxkDvNHpwY
         1a4GMIZAtymYKBG9BEpZxWme7OLWDH2WBLB0qLkF5ChtC7ib0zhLfuKgN7fB2jph/f/W
         zkcw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b="Gv/ffUiV";
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=10kP9EndPJBZbwPiP0dp7PBy8Lx8ROOp66H8Bup3N/I=;
        b=WvXkXJGBmN83KfIV+RMkfzgr8liQMNSrJqUgsCQlJaOMG9X9957bmlDyOE+1vkAnnJ
         Ztj+BlLrGKPt0+PfmbZ1F2KetICdzNNn97SuKKqNWIeLir/rT6/3hOp0OqQpjychWV4y
         ciqQmdb3e731W/SnB/P6XGgFhV45uiKmnmGAjOKmwZsZgl8asMGp+nJzWaTABMFBt1oc
         wLIYn0ILFJ8G+ejLlbWUXOyJKE9Pwfr6va87zWm7sISvmljTNf8n59s0bzefpQ2XoAc1
         e+cV287d13Ew+Az7cUqEfuiKY5MwLstnMCbDilEvv0yulhzCUnxQCR1sDb4tK7rM3S9+
         RyhA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=10kP9EndPJBZbwPiP0dp7PBy8Lx8ROOp66H8Bup3N/I=;
        b=RHJntlu4ucJJ5kUnISQg/+WND+vVWNxjOPGOx+49B6hh6KdPibs+sUQZzzTNYEhNp0
         cafpYn4MgnWUAcxOkAd66YFt0bD/2GhPUFx7iOR5HAsTDmrAWvmj1rISWo+EcP5WA7Rj
         xq9OzJ1fXK3vMiHoABaoN0b1dfgP/LFmoIczTfkZna6MKIDG8kuwkyphitgbvB6493wd
         3/OywFeRDTW1hiZMakEtDyHGAcMMimCCM0cAXrjaIhCqxn8F7h6B3GgnWZO6B6PKOTHD
         m23FguBcQzLzTUWcH+b33dq8wUu3biIakA/Z2HkXWnEVUhyUW+0ZcxH9A6u7nAPWdmy9
         G3nQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532NSqjAX0d8qw8gnSLMvZ5n7axAoSWe1WxG1lpWZI3Qx1O259E0
	yM8503szbWkzOamQhk4lY6I=
X-Google-Smtp-Source: ABdhPJxZl4gUkatVVnxvr0m3ekUM7aa0DdtGlpv9MWih2PPhHI1jR0Fh56tEO0soilqcMfXUxqA2ug==
X-Received: by 2002:ab0:2aa:: with SMTP id 39mr3099906uah.46.1599173000300;
        Thu, 03 Sep 2020 15:43:20 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:c416:: with SMTP id c22ls989261vsk.4.gmail; Thu, 03 Sep
 2020 15:43:20 -0700 (PDT)
X-Received: by 2002:a05:6102:22cb:: with SMTP id a11mr3837875vsh.93.1599172999940;
        Thu, 03 Sep 2020 15:43:19 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1599172999; cv=none;
        d=google.com; s=arc-20160816;
        b=HyEBgZM7ZLet7xp+ZLJgg89K+mncyLijNF2bpWmXqkO0gPhCbANqQo1ie5fkUtsg2k
         7dDfuJP9jkA6N4iNmpowJaNRGyQcWIyiXZhghZUCP1sh+FluJDH8KqVTXzHY7aMsb0w0
         obFtx99I2Iqcrv3cIP5gr2+ZvGF9+MR0DaPcpCB4IHaFGHtpVvUIDifzFGELhXWMYYAQ
         JuHsFmNBtubSMOROBQ7y3hBb1kUhBiqQ5LrS/HHoNYoI26ex16mjSMhq6xq8/GyPV3Iz
         HiWLpS/kiq9bifcapxgPq+z2WPI+TZWR14JuhFDqWUPLfBZ2bueSWRPYj8iEiVBA7+VY
         uCZA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=JQ91+76gyHMY3xv40LcJfL22rVwnSHEWIrs+JY61Lfw=;
        b=MoMBbgAIDrwIYnjo5O7f3UftNwxI+N/NKmxkS1GbP+IkKRkoZjBOdCK0fudk3tV3UK
         Bg7QP9EAql04buC7WZTWiVcbMNnZfuSlCNLUxojp2Nq+/mGYHqinkSjw4k1lUv5mikzh
         yWqcRoTE16uvrVL1YCnUMaq9PIfmg9uXLtoz6hD+YDefUo5PEjeSaeDu1wpocG7iZmxU
         LlZ9HKh3cMZsDgWy6XsWqiTV8nrJLQK6eZ5dH9jGw/S2Hwww50oIN6WugKgq4kprj6pA
         lUJr5O+b2YcR8HkCC5ZfQOfXQXWuk5gFEFVWPciEVEUqorPp7krgKCzhIhcls1l8yPVU
         RDSw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b="Gv/ffUiV";
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pg1-x542.google.com (mail-pg1-x542.google.com. [2607:f8b0:4864:20::542])
        by gmr-mx.google.com with ESMTPS id 134si267260vkx.0.2020.09.03.15.43.19
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 03 Sep 2020 15:43:19 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::542 as permitted sender) client-ip=2607:f8b0:4864:20::542;
Received: by mail-pg1-x542.google.com with SMTP id v15so3267678pgh.6
        for <clang-built-linux@googlegroups.com>; Thu, 03 Sep 2020 15:43:19 -0700 (PDT)
X-Received: by 2002:a62:4e49:: with SMTP id c70mr5965062pfb.100.1599172999617;
        Thu, 03 Sep 2020 15:43:19 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id 141sm4425163pfb.50.2020.09.03.15.43.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 03 Sep 2020 15:43:18 -0700 (PDT)
Date: Thu, 3 Sep 2020 15:43:18 -0700
From: Kees Cook <keescook@chromium.org>
To: Sami Tolvanen <samitolvanen@google.com>
Cc: Masahiro Yamada <masahiroy@kernel.org>, Will Deacon <will@kernel.org>,
	Peter Zijlstra <peterz@infradead.org>,
	Steven Rostedt <rostedt@goodmis.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	"Paul E. McKenney" <paulmck@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux@googlegroups.com,
	kernel-hardening@lists.openwall.com, linux-arch@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, linux-kbuild@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org,
	x86@kernel.org
Subject: Re: [PATCH v2 19/28] scripts/mod: disable LTO for empty.c
Message-ID: <202009031543.A239909B@keescook>
References: <20200624203200.78870-1-samitolvanen@google.com>
 <20200903203053.3411268-1-samitolvanen@google.com>
 <20200903203053.3411268-20-samitolvanen@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200903203053.3411268-20-samitolvanen@google.com>
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b="Gv/ffUiV";       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::542
 as permitted sender) smtp.mailfrom=keescook@chromium.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=chromium.org
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

On Thu, Sep 03, 2020 at 01:30:44PM -0700, Sami Tolvanen wrote:
> With CONFIG_LTO_CLANG, clang generates LLVM IR instead of ELF object
> files. As empty.o is used for probing target properties, disable LTO
> for it to produce an object file instead.
> 
> Signed-off-by: Sami Tolvanen <samitolvanen@google.com>

Reviewed-by: Kees Cook <keescook@chromium.org>

-- 
Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202009031543.A239909B%40keescook.
