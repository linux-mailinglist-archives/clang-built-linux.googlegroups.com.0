Return-Path: <clang-built-linux+bncBDAZZCVNSYPBBRUEQL2QKGQEDGNUIBQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53a.google.com (mail-pg1-x53a.google.com [IPv6:2607:f8b0:4864:20::53a])
	by mail.lfdr.de (Postfix) with ESMTPS id 4AAF81B4BFF
	for <lists+clang-built-linux@lfdr.de>; Wed, 22 Apr 2020 19:43:36 +0200 (CEST)
Received: by mail-pg1-x53a.google.com with SMTP id 75sf2336563pge.4
        for <lists+clang-built-linux@lfdr.de>; Wed, 22 Apr 2020 10:43:36 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1587577414; cv=pass;
        d=google.com; s=arc-20160816;
        b=iu/Ss5XL+XO7Un8lKv1HkJJ96a6VF0ivunehZf7YsdPsd5QECuYpFjpGgOo88vyDc8
         sG9x6LQhlsxpW8nk9+vxxLDiFBRqUww6Zbw51FVJ3R8cROWGeny8aZR8S6NFXISxBVCO
         LYZG25A3uT8K5kBxnjfSKEzxOtfcffPvBVi73L/Y6eClj6xlErlzF2YGV99VRxnolJtj
         aK+HACxtTJOVc/TORlzn/+NsbWhSMwsGXtYTPip2oMu7OxKkLD4HX4Bd+p3eQ1pnrExG
         dxhBOId1j5jYe5pa3qhF0opq+IpzAaY6dYVeN1KE6ecainaVyadoqANuzQ//XDpF04Iv
         7hXw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=/NHswr2UJh4fWod5idex8HgFDTKCTW4nmx5Ox8Wxguw=;
        b=KfHxoty8S7CpSRyhEpQeNCsKl/WS8j94EpUVfscsjhd4SSV8ILI869asy4gePCYN4l
         P8iTp9h9VQ7dwcAGRnK0KopjsJ9oLTFH1M7lN5sAhjtfkWcsv50aKmtzjqDWTzBeCEmy
         gPO1yYa27BTMVZPkg4NufRa6cbPDOA0kqV1PBTdrmN0Wo3V448ptMNzF5zn9Q8pdJ1WH
         43YAkuieex41ad/IJNugbwkCyTnrX6uovgSh7PTao+crurkwRtlnHWakfLms9MegTZQP
         Mf7lviIis+Hgs327vRebO5QPI74ynU9PPzWvYU5QKV6etWd8EoZs7lc66CecQgzsF53l
         5OIA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=ElNvhNTf;
       spf=pass (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=will@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=/NHswr2UJh4fWod5idex8HgFDTKCTW4nmx5Ox8Wxguw=;
        b=qpc6vrEMw3OFsfmc0kD2ojZXGEXhaXfiC2Zlt6EAnyRUa+xlR3b56n2pumBuFpnto8
         UWlJwUP75hOAo0K6/LfNUBEMwON+fNN5FZ/vCHXy4UDyMx1Fw1gKGSRApWNxuirl/TXm
         OKdhdRAQ5nUxt0hdwF1S+1exApa0xOmc3Yc4YoHbioC43LK25dJuW3AjBayjazTGTzXJ
         4GS1B20CV1e9uIYcjPn7fBrpw1Th1JIgfFENUy61jvUGUex6z4MhVz00rzFgNvwgKhNx
         cDpcVk7y8EOt/3+v0gtk0L3WXlydXfKO6ngmzIzxFjrXXvagxGebJIu2EmKymgwzadMe
         euGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=/NHswr2UJh4fWod5idex8HgFDTKCTW4nmx5Ox8Wxguw=;
        b=aOr69wn/pXSxScWfOnYKdnr+rVINMq9AW82wRaK4B+5YkCxFvwHlb0ACa1z/73Xm34
         fdeuVe52r4SUS7U8tWDn6BvXo8f3zme8TqZ9LspQSqQKG8VzR1F9LJhQ+8am/iT8cpsQ
         pR7VJc4uc/nM4WgtJMK3wxn4+0ckezZWpyLmOs2EAawW8xg0Xmr936PmBybO+C9brg6Z
         CgYTUyJU5IIaYMYZ8A7xCCkIfg4EKQTqaPIWWaUku9kLS7RwFoO+hp5qORofAH3u9hnr
         QEIkI9iVx9FZhA30xt8vCh9p9vwaiPxSjSAQlpdSELC16UTT/0+h7gZImBmpjr6nNOGy
         ETEA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0Puavwme3vo57j0MdYhRci41XRYE37rSsU6qFij7ZsTfLLoIhZQsU
	gIjc07mswZ8c5WB/mRKcow8=
X-Google-Smtp-Source: APiQypIg03g393fVh1GevoIVpS6V5eFe7m9FhcdsWbGuvF2JfduUD44E259TEtyWs5wzvYVALeI4vg==
X-Received: by 2002:a17:90a:191a:: with SMTP id 26mr13162604pjg.35.1587577414566;
        Wed, 22 Apr 2020 10:43:34 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:a701:: with SMTP id w1ls1477763plq.7.gmail; Wed, 22
 Apr 2020 10:43:34 -0700 (PDT)
X-Received: by 2002:a17:902:8a8f:: with SMTP id p15mr27897338plo.45.1587577414188;
        Wed, 22 Apr 2020 10:43:34 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1587577414; cv=none;
        d=google.com; s=arc-20160816;
        b=pVyC8q6Oib2yxlu7/0cZigCW6PVr9/WdPvpI81HFpoxq9NRywpBWXS2IR8RQhRWA4P
         9BeT5altNYqrJQNNSVY0iXya0hLm7sNLKpfbV74AXADif+Y8Py9rXOfQhboQvRTYncAG
         kHGu+ipt138O0EWP4Sip7PyEn9E1pWM51x1I7QtN+1wUgvKmhQklXtQ5GKmt/AUKC4xf
         wrhvyexdUGsrV9l716+6x+tPeEjlRmqorH9csZ3knHdtFeAUT6yxFZ8idat2fxpAHjQb
         opT+jdPzo7Wuz7+R9ky8gHj15qbz7abDvmsZphtMklY4HFYQjuM4VlYz+1X/7tGQhJH2
         ttHA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=t06PEnAuK7PeRs92UnLjupgTbL/Vlzm5hzzD5NxRors=;
        b=muAYhKV9IOkWEZ7fYWnQZFyZGUjEbpJRMg8DZLyIQ0+2UDcyQRB6igxVgrcWOVWCPP
         3kSgm2O6/v6eYJBGIqK+atnFfmW3nZ1H72VEo7mpRk3KrbJK+nhKzGmscfvkRNisgEBF
         2LYbjvNc9RIZ7E5CbFrC6WsNPOVoqefYWa2zlPh0wbbhzQG64FTIvbwe+1Kkjl2Ghtql
         Kvp3qVgg9gEKtc19/MDwaSuObgtoSXHyxxQofPjqzPnkoVyF3+aRxSYd4FGj2/CxEcH1
         OJ/u5dddUM0GUHhPkxmt06GfgUBZFmKKwbZAu1JrRM1zZt8QkLlldb1jjEDRVncHb8g3
         6/VQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=ElNvhNTf;
       spf=pass (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=will@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id g20si1997pfb.2.2020.04.22.10.43.34
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 22 Apr 2020 10:43:34 -0700 (PDT)
Received-SPF: pass (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id DF5C02076E;
	Wed, 22 Apr 2020 17:43:29 +0000 (UTC)
Date: Wed, 22 Apr 2020 18:43:26 +0100
From: Will Deacon <will@kernel.org>
To: Sami Tolvanen <samitolvanen@google.com>
Cc: Catalin Marinas <catalin.marinas@arm.com>,
	James Morse <james.morse@arm.com>,
	Steven Rostedt <rostedt@goodmis.org>,
	Ard Biesheuvel <ard.biesheuvel@linaro.org>,
	Mark Rutland <mark.rutland@arm.com>,
	Masahiro Yamada <masahiroy@kernel.org>,
	Michal Marek <michal.lkml@markovi.net>,
	Ingo Molnar <mingo@redhat.com>,
	Peter Zijlstra <peterz@infradead.org>,
	Juri Lelli <juri.lelli@redhat.com>,
	Vincent Guittot <vincent.guittot@linaro.org>,
	Dave Martin <Dave.Martin@arm.com>,
	Kees Cook <keescook@chromium.org>,
	Laura Abbott <labbott@redhat.com>, Marc Zyngier <maz@kernel.org>,
	Masami Hiramatsu <mhiramat@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Jann Horn <jannh@google.com>,
	Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>,
	clang-built-linux@googlegroups.com,
	kernel-hardening@lists.openwall.com,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v12 02/12] scs: add accounting
Message-ID: <20200422174326.GA3121@willie-the-truck>
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20200421021453.198187-1-samitolvanen@google.com>
 <20200421021453.198187-3-samitolvanen@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200421021453.198187-3-samitolvanen@google.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: will@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=ElNvhNTf;       spf=pass
 (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted
 sender) smtp.mailfrom=will@kernel.org;       dmarc=pass (p=NONE sp=NONE
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

On Mon, Apr 20, 2020 at 07:14:43PM -0700, Sami Tolvanen wrote:
> This change adds accounting for the memory allocated for shadow stacks.
> 
> Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
> Reviewed-by: Kees Cook <keescook@chromium.org>
> ---
>  drivers/base/node.c    |  6 ++++++
>  fs/proc/meminfo.c      |  4 ++++
>  include/linux/mmzone.h |  3 +++
>  kernel/scs.c           | 16 ++++++++++++++++
>  mm/page_alloc.c        |  6 ++++++
>  mm/vmstat.c            |  3 +++
>  6 files changed, 38 insertions(+)

Acked-by: Will Deacon <will@kernel.org>

Thanks!

Will

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200422174326.GA3121%40willie-the-truck.
