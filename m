Return-Path: <clang-built-linux+bncBC3ZPIWN3EFBBDMDQPWQKGQE2DDJG5I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x43e.google.com (mail-wr1-x43e.google.com [IPv6:2a00:1450:4864:20::43e])
	by mail.lfdr.de (Postfix) with ESMTPS id 3899ED46F4
	for <lists+clang-built-linux@lfdr.de>; Fri, 11 Oct 2019 19:53:18 +0200 (CEST)
Received: by mail-wr1-x43e.google.com with SMTP id i10sf4669314wrb.20
        for <lists+clang-built-linux@lfdr.de>; Fri, 11 Oct 2019 10:53:18 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1570816398; cv=pass;
        d=google.com; s=arc-20160816;
        b=nP5P08hLZKNO6IJJjPRAyogkZxjz3U5zWgwPuhPAlBX1HM75qxgSwr91a4HP+ZOvSN
         TcRZECkdX0U6UR48Y/4unQHTwU/74/9rYt+3Bxr6OgYwyFl3fK9IAhTXu/IRVrqS0PgU
         rupc0L4Z+6vlcsnts7/TP8mLUib4QwS9rjm+FtgL4dIcfPSZQyKNqynUp+KyGxJkncsP
         R9ReiUCx9Gc1U2WDaKo0AxuFvnGuISmpkrWz/GNiOWOkv2H0Vd5PFhYsQBJlRdL15f7j
         0r+qeNJpijb2UR6WzZYjx1MndS7oOtt7eKM4xDvFS0/URGmPI4BS4xFwp9M6UOKO6c0z
         eHTQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=qOrxCosqZmGeIaFct4+VdfSzjvGELqLnqOQs5O54E+s=;
        b=ihKLUP+Uej8QRHpyzuYMk//KKQlsJA1j57UU7rQa2DJLGaNzldluRmWe4zP4xTbm4h
         EcCTyfX7a9O2nD+8XeiW22C6uAudvD3MDDzEgfF46/M0ScJ/16TAKdtM+oG7vpfCm54q
         226sM90SEzjbexj1pMR+5tSGImbr2awMN7+ASkMH0/T5ahOdDF+wkHt9iNNsaHAHNWCB
         tweNMGHtwBG0WS8vPFtrkzjONZ5uPgYAjzsWYSesbIDwARLJNtoKwx6SHroPj/TiyFff
         bBEuB5VqKoBqHvdGSHLfnWPKrYlVdEuS9mi0t7d5bMBJmuOTWyq00ObSGKXETC1gUKi2
         SwXA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linux-foundation.org header.s=google header.b=Q2UkfBZS;
       spf=pass (google.com: domain of torvalds@linuxfoundation.org designates 2a00:1450:4864:20::242 as permitted sender) smtp.mailfrom=torvalds@linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=qOrxCosqZmGeIaFct4+VdfSzjvGELqLnqOQs5O54E+s=;
        b=q5YnGBAoIUykOy1bidSjWwVhOkD+lEkLpsOUhPIwtoB/HXEEPXoWlrHHaR71tN+5L/
         cvrsyy2jPntzAe3qlmkPNsQLePpnuJPcP6Q5Lx5Me9XyC37v0HYacN6x5AzCuSTY02cC
         ip3rVMgugrISh2kOxk2LfztWkVD/8ZYJeqz0bqBoihFJVhHYUXAOp61SN18VMAh+w6wW
         Xpoe0lHllmcyyT7QSKHnklr1XRKHu/AUBwMOAkD2dPwy2nUl8iFVdAcagQlGm/hjDeb6
         4j/awOPAOMK7gTP1JtFYkEKTgKKqQXZcxqfZD/Arfa9+hcXqfq1z2W71GUxTqArP5As3
         9WBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=qOrxCosqZmGeIaFct4+VdfSzjvGELqLnqOQs5O54E+s=;
        b=qd6x8wOFaPmFzGVyKOfZ+sWSurj2+HKkl1xYVtcileV12movOzgN+Qj+K4urqepD2M
         M/vGCFa+IKCXCyopdm7iSlcQt2bBg7LjEVI8LhFC8gY3iqOqQurUQFsopPifVahZ+/SW
         XsXT8H/F+mcBfBWYxaehjMTPOZXtLDoHLeK4ja+3hIfL201OCocnbq7f2ueKfGHdbxkf
         a24+0dJh0hP7j/zOcSrp+QvFA7I1jI/Y6n77X8Y4iPGMD5z5YIpnPpf/LrZ7elEc3d+8
         fgoStlnlu7wNjxyxCpal8LzP1b9NClIwGadAr6mMNvYkp8I4glpAHJopykk3F0M9KVab
         JRfA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUQ3ixNJL7lGb30JE5E7SvZ+DTN7JXzEY4xnJKlWV/gypDnCTWl
	xR716UNI7K4wLv79RATi+gI=
X-Google-Smtp-Source: APXvYqwBJ8A3agwKWkJ6+jADiDHmPSIKaLbyqkabMcxfWoiVkhrVLRgyVznkPJj3xXwOTtDsOMtdeQ==
X-Received: by 2002:a1c:55c4:: with SMTP id j187mr4218062wmb.155.1570816397932;
        Fri, 11 Oct 2019 10:53:17 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:adf:b7cd:: with SMTP id t13ls2833994wre.5.gmail; Fri, 11 Oct
 2019 10:53:17 -0700 (PDT)
X-Received: by 2002:a5d:5743:: with SMTP id q3mr14473628wrw.394.1570816397338;
        Fri, 11 Oct 2019 10:53:17 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1570816397; cv=none;
        d=google.com; s=arc-20160816;
        b=W/1YvxSRfvIkr7YOsyzHyxy4nvkTRmsQnDLLbfqA2BPJvGq5QiPJAIXr/bWfz6OczF
         /RImF4bvqpE+lODOLHEqmIBwKtVfWQ54s14pS7igahcBf6law/HXrdXVtTLfhC5pOu9R
         AX4/XHgPGoNclUhB6ZRrPqq3C61vEPXCGARZHHsLGZd6asm+cDAMiakBjySDRn8K4KwP
         05qRLPm5qxXTqwh7sszDmMTM5bsR+LRtWkzjXoyIx4SecJeBr63gt88B2vaZXZwv3Q+O
         p5hDVriBRjIGHF6eKzBkj1XqlvBvMpBhI6sLAUZs2NdtIxK+9JRXH+WpkccWewRqQ8dV
         g/tQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=LgOWyC4KuQvhExdqsSsy/AfsFX2Dxg7AbZdsgfAmHWQ=;
        b=dUAoFs5d197zOKc5UA+Efhwq2KoY9JdSBoPJ0QTC/csnYaST26dK3u1aOVM5j7XBlc
         yxJzjpIOveH/GGO+mcbPjIuxqC3NzGzXFruSpr5Uci2ALM4yg0Uu4lI1xP/Idri88YAk
         PfV4Pd+yanpUX32tA/uMvISuq+pulC4GchyZ+B8VRbZFwK1mjrqnXEVdSQzdbFVHgXck
         jvvVv6Lj9movdCzt5ta1vfCcC6/mxOSbZl8mC+mT4paKtTkitMShZay6zXVbdcDf7MmR
         W6Dz/8L0Jrb0BRnPihhj9D/UYRAAX8KmjrFhZQXonVWg65/XBteNIo42rzTkHAg5iwPl
         QtLg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linux-foundation.org header.s=google header.b=Q2UkfBZS;
       spf=pass (google.com: domain of torvalds@linuxfoundation.org designates 2a00:1450:4864:20::242 as permitted sender) smtp.mailfrom=torvalds@linuxfoundation.org
Received: from mail-lj1-x242.google.com (mail-lj1-x242.google.com. [2a00:1450:4864:20::242])
        by gmr-mx.google.com with ESMTPS id n16si668666wrs.4.2019.10.11.10.53.17
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 11 Oct 2019 10:53:17 -0700 (PDT)
Received-SPF: pass (google.com: domain of torvalds@linuxfoundation.org designates 2a00:1450:4864:20::242 as permitted sender) client-ip=2a00:1450:4864:20::242;
Received: by mail-lj1-x242.google.com with SMTP id y3so10667474ljj.6
        for <clang-built-linux@googlegroups.com>; Fri, 11 Oct 2019 10:53:17 -0700 (PDT)
X-Received: by 2002:a2e:63c7:: with SMTP id s68mr10167476lje.244.1570816396247;
        Fri, 11 Oct 2019 10:53:16 -0700 (PDT)
Received: from mail-lj1-f180.google.com (mail-lj1-f180.google.com. [209.85.208.180])
        by smtp.gmail.com with ESMTPSA id n5sm2462911ljh.54.2019.10.11.10.53.15
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 11 Oct 2019 10:53:15 -0700 (PDT)
Received: by mail-lj1-f180.google.com with SMTP id q64so10625905ljb.12
        for <clang-built-linux@googlegroups.com>; Fri, 11 Oct 2019 10:53:15 -0700 (PDT)
X-Received: by 2002:a2e:6a04:: with SMTP id f4mr9892356ljc.97.1570816006661;
 Fri, 11 Oct 2019 10:46:46 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1570292505.git.joe@perches.com> <CAHk-=whOF8heTGz5tfzYUBp_UQQzSWNJ_50M7-ECXkfFRDQWFA@mail.gmail.com>
 <9fe980f7e28242c2835ffae34914c5f68e8268a7.camel@perches.com>
In-Reply-To: <9fe980f7e28242c2835ffae34914c5f68e8268a7.camel@perches.com>
From: Linus Torvalds <torvalds@linux-foundation.org>
Date: Fri, 11 Oct 2019 10:46:30 -0700
X-Gmail-Original-Message-ID: <CAHk-=wi1T1m-su8zK5LeESoz_Pgf1-4hnjr516NiDLNyb4USug@mail.gmail.com>
Message-ID: <CAHk-=wi1T1m-su8zK5LeESoz_Pgf1-4hnjr516NiDLNyb4USug@mail.gmail.com>
Subject: Re: [PATCH 0/4] treewide: Add 'fallthrough' pseudo-keyword
To: Joe Perches <joe@perches.com>
Cc: linux-sctp@vger.kernel.org, Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>, 
	Kees Cook <keescook@chromium.org>, Borislav Petkov <bp@alien8.de>, "H . Peter Anvin" <hpa@zytor.com>, 
	Thomas Gleixner <tglx@linutronix.de>, Pavel Machek <pavel@ucw.cz>, 
	"Gustavo A . R . Silva" <gustavo@embeddedor.com>, Arnaldo Carvalho de Melo <acme@kernel.org>, 
	Kan Liang <kan.liang@linux.intel.com>, Namhyung Kim <namhyung@kernel.org>, 
	Jiri Olsa <jolsa@redhat.com>, Alexander Shishkin <alexander.shishkin@linux.intel.com>, 
	Shawn Landden <shawn@git.icu>, "the arch/x86 maintainers" <x86@kernel.org>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, Nathan Chancellor <natechancellor@gmail.com>, 
	Nick Desaulniers <ndesaulniers@google.com>, Andrew Morton <akpm@linux-foundation.org>, 
	David Miller <davem@davemloft.net>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Jonathan Corbet <corbet@lwn.net>, 
	Vlad Yasevich <vyasevich@gmail.com>, Neil Horman <nhorman@tuxdriver.com>, 
	Marcelo Ricardo Leitner <marcelo.leitner@gmail.com>, 
	"open list:DOCUMENTATION" <linux-doc@vger.kernel.org>, Netdev <netdev@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: torvalds@linux-foundation.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linux-foundation.org header.s=google header.b=Q2UkfBZS;
       spf=pass (google.com: domain of torvalds@linuxfoundation.org designates
 2a00:1450:4864:20::242 as permitted sender) smtp.mailfrom=torvalds@linuxfoundation.org
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

On Fri, Oct 11, 2019 at 10:43 AM Joe Perches <joe@perches.com> wrote:
>
> Shouldn't a conversion script be public somewhere?

I feel the ones that might want to do the conversion on their own are
the ones that don't necessarily trust the script.

But I don't even know if anybody does want to, I just feel it's an option.

              Linus

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAHk-%3Dwi1T1m-su8zK5LeESoz_Pgf1-4hnjr516NiDLNyb4USug%40mail.gmail.com.
