Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBQP2QPWQKGQEADIDBEA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x837.google.com (mail-qt1-x837.google.com [IPv6:2607:f8b0:4864:20::837])
	by mail.lfdr.de (Postfix) with ESMTPS id 3723ED4A30
	for <lists+clang-built-linux@lfdr.de>; Sat, 12 Oct 2019 00:08:03 +0200 (CEST)
Received: by mail-qt1-x837.google.com with SMTP id f15sf10866104qth.6
        for <lists+clang-built-linux@lfdr.de>; Fri, 11 Oct 2019 15:08:03 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1570831682; cv=pass;
        d=google.com; s=arc-20160816;
        b=KJ39r2ejZNkRAr3GFRk63+hbB+5rm9bfw5XjiXjgggTFWkxNwKU22n1KPaUXRz7DVv
         LsG17g2AWdJeOksyAhEbWjRAzhT4rNB3sjJ/e8m70ajdbPKypLg730rPrP7QvkLdVh15
         XmJxLCrJDdHMBJeV95Y3dRzzBDndSPIo1C1LbbXjJjtPlZ2q5Ep8fzhUyymhAKNava5Y
         wMwc/Okwyx8m1qfWMXCIgnmpwlEWhaa0APJ5kj515qm5cjXKipQU2b9KyF7CARY4XxSk
         I/q6zQAig84LdMatRaKzNPzxw/83j2OobPJ89VeZBI7KOcea/gAQs0XWk7MxgSdLrS2L
         P7LA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=BGgdKTN6bD1ij1k9NxPJV23diorf4YN1EO4W/syAcE0=;
        b=beb+WtOzVU4mQFwx9i/gP313TbV4OVChsfwcEpcb6ILrkmV4KYtAoe/+tQ7YHPIeYm
         Oe+cdEqOXqjmZNRTaaVLXwpv4j88YZi9f4TLmOQCZ1itEbHOFnRHGJ1YRI32oQOBY7Yu
         Pp/yYBUVrWvlXoIrhSZ+ixXhgQDcP1EGwuyXmADv5H3bqAjDz7iRdNiAKe+iTujt/Qem
         Zfx19J/F4HH0S4cqe9mSveq/ZDQiWsn3u3s5xMOFoENYbDz1X99bQkLsz6C3AqFup3D9
         XzDsO611wltKb1zccnqVWMni9CK1UX20Oo7EEVFMQ6pwvkPJq9XRfbcikF+kqnLsT/At
         fAHQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=AUmbSlE2;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::543 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=BGgdKTN6bD1ij1k9NxPJV23diorf4YN1EO4W/syAcE0=;
        b=QpOOtXFfW1o7dRglhFR+jMBhpzrZT/0HZNKtmTzed1x5ri47vzfwC25r0A0+wYbJBx
         6rR8Yz9yH5xWSwSP1ExcdL0WGaAVIHi7zymWk9VHrJD0zdQmjiUH9UMfednLKI+4fMz/
         fqxgfWlNtIhlF0+Tf09D+YZvZ5k+8Ur8vO5KnGLZIGnpgLa/e7ofnaZSBUtRK+GltaNc
         dJe3lVOvgJHITiIIqOVkSHxW4cjmoH5UR9Hevjx/CJkQwELJZi4knRnIwkyUGOKp1fJl
         0opvsG0E3yuAoVtV8GQtDzYGTV/nydHuAG2I7nQhQN0jDFSr6nOrAXT9wepUEXbbmcJa
         PwTw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=BGgdKTN6bD1ij1k9NxPJV23diorf4YN1EO4W/syAcE0=;
        b=W2TWNPZ/MN3gGFSqKS9C7xs1toxhKJbqRQ713FYLFH5/9MFvvqW2BAksOLQz6iMlar
         y8UFhKGYvh05AbUXEnKZ2HkQCkaiQl/WNcglvNkI8ZONw03aL5IDPeA+r1BOOS9v+7VL
         1pQiu+H10AC1QuPeSLXzo/2loseBXGJsxVROGpE156+C/oQSjNDfoINPEpdPY0Yypg+G
         p8owPn8MDNHvehWevq6YAhH0HRHych3H016Ia2qQUKYv6ITIEeUMtxgAn8splf3WlHnJ
         T8zLphZ61AODfhGYEExFPqjGlRzKtdiTTwwNSJ2WoRbHF13ZVNVvFWgZnRwqJYsguqQu
         YUJg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWt3Uy3+hSKvcUa3TBjt679xydStiVve5JlBktxLw1SCFb0AY+d
	QCffFSUGU0Ifz0ekIPCT/GQ=
X-Google-Smtp-Source: APXvYqwwpfSwzwRQWlygLhoej50b6IlCH2LQhcL18dKukjkASNS1gG9nL0FfkNghsjLaCiZOCCxEdg==
X-Received: by 2002:a05:620a:74f:: with SMTP id i15mr18722501qki.265.1570831682031;
        Fri, 11 Oct 2019 15:08:02 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ad4:436a:: with SMTP id u10ls1541991qvt.1.gmail; Fri, 11 Oct
 2019 15:08:01 -0700 (PDT)
X-Received: by 2002:a0c:ee49:: with SMTP id m9mr18749727qvs.118.1570831681729;
        Fri, 11 Oct 2019 15:08:01 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1570831681; cv=none;
        d=google.com; s=arc-20160816;
        b=z9VtsbI6QGNEAOGtbdQixWLqRJEb8d7JvM7AKDM0QzFd7mB2hjms4B22cnTAVA0gNf
         q5eBPpDKCA0ThmwJfHD0D9Y8E6X70S/xfj1xciq+9sGgXz+gXsABx9j4jVSBgS790Ihd
         zp4HeTK2rENM2EbKARTpOCcMBnc7uLc7xcQsrOABIxehCHbUm94bgi7CIFFxJUw72E0O
         wmYZ45vim1+CsXXma2eXC17k2abOpjtZVIcJZx4SNQpVyHNWp6uxlv/lTSyVrgweKHki
         5b+WGt+vRv1HV1Pka20uNMa7o49Uq8ts7d44DsL7+NWW3wqMYqE78j4xhxeYb4jZ+Nva
         H6ng==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=u657WMybRKGf4iTEdbvgPKUQHMvQCoMqXMiRc7mnyNw=;
        b=VIAlwsslWPLKxyikubHx7gc06X3iup4iWSB0h+MYR9YhGIzjzhf8BnZEJFMFIhbp/+
         1/Nhd4LFY3NLywdRFy4BGwlo7rXgq3AzICiJOSqOMRD3iUsNR9diUVVUJ92u8qcYVjCJ
         2GCbtQCe2m6X7tgztDo7e27XYUTe2jQwKDiukPaNNSlcjX5KNGaaW396ixhOYyZL4qbJ
         dXOaP9TBlJi/sHIi2BjKyYaMU9HYZ7NNxgBhY0qWsgUdNHUCj0pvdY7SBVJ1mReBBJm8
         ifM4XMwuvC6RflNGL8opQzUUGQXQpr7k6SzP2RtISZzJsp/v1vH9mepOeZKl1e9/dhud
         kArA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=AUmbSlE2;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::543 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pg1-x543.google.com (mail-pg1-x543.google.com. [2607:f8b0:4864:20::543])
        by gmr-mx.google.com with ESMTPS id n67si194655qkc.1.2019.10.11.15.08.01
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 11 Oct 2019 15:08:01 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::543 as permitted sender) client-ip=2607:f8b0:4864:20::543;
Received: by mail-pg1-x543.google.com with SMTP id p30so6551437pgl.2
        for <clang-built-linux@googlegroups.com>; Fri, 11 Oct 2019 15:08:01 -0700 (PDT)
X-Received: by 2002:aa7:956a:: with SMTP id x10mr18500783pfq.220.1570831680868;
        Fri, 11 Oct 2019 15:08:00 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id p66sm10301368pfg.127.2019.10.11.15.07.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 11 Oct 2019 15:07:59 -0700 (PDT)
Date: Fri, 11 Oct 2019 15:07:58 -0700
From: Kees Cook <keescook@chromium.org>
To: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>
Cc: Linus Torvalds <torvalds@linux-foundation.org>,
	Joe Perches <joe@perches.com>, linux-sctp@vger.kernel.org,
	Borislav Petkov <bp@alien8.de>, "H . Peter Anvin" <hpa@zytor.com>,
	Thomas Gleixner <tglx@linutronix.de>, Pavel Machek <pavel@ucw.cz>,
	"Gustavo A . R . Silva" <gustavo@embeddedor.com>,
	Arnaldo Carvalho de Melo <acme@kernel.org>,
	Kan Liang <kan.liang@linux.intel.com>,
	Namhyung Kim <namhyung@kernel.org>, Jiri Olsa <jolsa@redhat.com>,
	Alexander Shishkin <alexander.shishkin@linux.intel.com>,
	Shawn Landden <shawn@git.icu>,
	the arch/x86 maintainers <x86@kernel.org>,
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Andrew Morton <akpm@linux-foundation.org>,
	David Miller <davem@davemloft.net>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Jonathan Corbet <corbet@lwn.net>,
	Vlad Yasevich <vyasevich@gmail.com>,
	Neil Horman <nhorman@tuxdriver.com>,
	Marcelo Ricardo Leitner <marcelo.leitner@gmail.com>,
	"open list:DOCUMENTATION" <linux-doc@vger.kernel.org>,
	Netdev <netdev@vger.kernel.org>
Subject: Re: [PATCH 0/4] treewide: Add 'fallthrough' pseudo-keyword
Message-ID: <201910111506.45AE850D5@keescook>
References: <cover.1570292505.git.joe@perches.com>
 <CAHk-=whOF8heTGz5tfzYUBp_UQQzSWNJ_50M7-ECXkfFRDQWFA@mail.gmail.com>
 <CANiq72kDNT6iPxYYNzY_eb3ddWNUEzgg48pOenEBrJXynxsvoA@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CANiq72kDNT6iPxYYNzY_eb3ddWNUEzgg48pOenEBrJXynxsvoA@mail.gmail.com>
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=AUmbSlE2;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::543
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

On Fri, Oct 11, 2019 at 08:01:42PM +0200, Miguel Ojeda wrote:
> Hi Linus,
> 
> On Fri, Oct 11, 2019 at 6:30 PM Linus Torvalds
> <torvalds@linux-foundation.org> wrote:
> >
> > On Sat, Oct 5, 2019 at 9:46 AM Joe Perches <joe@perches.com> wrote:
> > >
> > > Add 'fallthrough' pseudo-keyword to enable the removal of comments
> > > like '/* fallthrough */'.
> >
> > I applied patches 1-3 to my tree just to make it easier for people to
> > start doing this. Maybe some people want to do the conversion on their
> > own subsystem rather than with a global script, but even if not, this
> > looks better as a "prepare for the future" series and I feel that if
> > we're doing the "fallthrough" thing eventually, the sooner we do the
> > prepwork the better.
> >
> > I'm a tiny bit worried that the actual conversion is just going to
> > cause lots of pain for the stable people, but I'll not worry about it
> > _too_ much. If the stable people decide that it's too painful for them
> > to deal with the comment vs keyword model, they may want to backport
> > these three patches too.
> 
> I was waiting for a v2 series to pick it up given we had some pending changes...

Hmpf, looks like it's in torvalds/master now. Miguel, most of the changes
were related to the commit log, IIRC, so that ship has sailed. :( Can the
stuff in Documentation/ be improved with a follow-up patch, perhaps?

-- 
Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/201910111506.45AE850D5%40keescook.
