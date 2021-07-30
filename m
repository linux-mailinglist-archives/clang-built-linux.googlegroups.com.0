Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBTNQRWEAMGQE7VUM37I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x938.google.com (mail-ua1-x938.google.com [IPv6:2607:f8b0:4864:20::938])
	by mail.lfdr.de (Postfix) with ESMTPS id 684A73DB0AE
	for <lists+clang-built-linux@lfdr.de>; Fri, 30 Jul 2021 03:39:26 +0200 (CEST)
Received: by mail-ua1-x938.google.com with SMTP id b11-20020ab0238b0000b029029fcd5f3ea9sf3056541uan.14
        for <lists+clang-built-linux@lfdr.de>; Thu, 29 Jul 2021 18:39:26 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1627609165; cv=pass;
        d=google.com; s=arc-20160816;
        b=LeGRdqW0NVqA9RNxcAKJZSS6Y1S7i1nJq99Mk3Y4USWjzDmoWPxf/KrXKwdQJwFGTp
         UIr+WVNTh5HLbj5WWbZ0slC3o+g+z0nv711WlxiVSi8kplDVhFqlDFI+UtXl5bSUIyA2
         IVqmJScRdxQBOLmRQWTuNYbOvkRBM8yy0cCcb7Vzx3F1FdMh8bu7pU2JzTILug3zs+gW
         lP0cZiHDSPEMZxH6SsJvc3NalLCvf99/xm21tR38nyV8HBwCklSxwfEfCU6T8VGZPTfc
         zP4lp0J6irdMfMAtCfupfzlQWu+42PkxgfYmJl/z7JTdahHjWfOMw0ViwfEtezuQthKB
         2OxA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=PSlVJXo8sBM9jaRm85l4Fg8YlnJMUTlLF4xKVg16JXc=;
        b=ig47i/GgOERGzC60W1c8pYHL+YiDGwwN1ceFi/Qpg4Yu//w9SGdhec8JjNBmys3VF1
         4fNUfpkhEj7sdP8puRdMitF+ReXw+d0Irq5iA8flG5V1UX1ppPQ6J36KuXhY76cUCLJm
         D3cwtXsijSu+b4pJrpvpAEvY7Grbj+NeCNBMVG/IlIiPmSxrRJgF9ojk3hDsL/y8R8/F
         1DQ+1XWOV3oVgnCm3HU29X/AaDLLnTzkr1lcoSMSxYEMZ5isCHPZM54qdOj/eeQNOStT
         CojuytJMrT96DCKAM8UA1EUwkFU3oL9ttIws3tzJOhkRIZ7Sc3isjbLwFmufho6vlc+t
         Il8w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=Nkis4e81;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1029 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=PSlVJXo8sBM9jaRm85l4Fg8YlnJMUTlLF4xKVg16JXc=;
        b=toux0HlES2758yVsk8BMJcZVatFYNw2MMPQmkYKJdcNn7NM0rZt1XEj45ArTEY6BeX
         10nAUKUR6VjLewWMKCz2H+0kxozfr7zoahoznskXlQY/mwzirBfAVxamHC6UDMYdIUE7
         +bNxYZk4zR5OHvUUSENXI7EZgFyHE4m+YAa7sqpzIU6hO2H6gZ32KxoRymhEimFbAjme
         FQelui+LAG+j7Zz0trckIt3AUzxGaaHMvvOY6tHvwW5JFosaEHT64j8TeGERr1r2OYHz
         6yLZpEj4ps/EvjV5QCzkqFCeOewI/GaV1srCSdfA8jQg/0kMuEGfHMnS7K3L9n76bMko
         Etrg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=PSlVJXo8sBM9jaRm85l4Fg8YlnJMUTlLF4xKVg16JXc=;
        b=bKCcWWdkwOcnIaCiKAbh/Y+gwEPolxfje07FX0KuVHY30b6/ysS9Hsxo86PxfzNlea
         qI+Wseyozr8SNlQZ95GfG/9/nVRJjNvB9xVqH1ZytXk2YWw3kYNNlvKqg1O4Z8X4ATqZ
         r034wx+PbP2f3C2qSZ88FlhqAqo2kPvlIXLCiJmcxNkjy1nNBsTmZmhI+BmOYqTeLmg/
         45MeoJUB1haJVnijgbfxRChIKL2H53lvkKwtp7k5jQnDLrVSfRbtKXnUFxcjoeUF5LXq
         Osy9o5Z9QqFrIE0qYhR7tycBz4uOV+VHYWiqtYIJNSoRPXno8Iijd5dgONk6NRWoInaI
         o0QQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531uPl+2RrrmB4taJQPguZOfacsXlRKm0N5mtrAqDaaYLYl0r5l1
	Vin7xUlhvLWds8KYzV24Oyo=
X-Google-Smtp-Source: ABdhPJzKzvehlAk3ZZh5RJG7WZYDiNL7bDsGdbq6aWjyZ916KreE+auELIc9wIlV0XhX0vJmbr4dEg==
X-Received: by 2002:ab0:2610:: with SMTP id c16mr130054uao.124.1627609165418;
        Thu, 29 Jul 2021 18:39:25 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6122:224:: with SMTP id e4ls13731vko.1.gmail; Thu, 29
 Jul 2021 18:39:24 -0700 (PDT)
X-Received: by 2002:a05:6122:2209:: with SMTP id bb9mr140742vkb.10.1627609164921;
        Thu, 29 Jul 2021 18:39:24 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1627609164; cv=none;
        d=google.com; s=arc-20160816;
        b=pL6ZyEa1tC84Y8iuvxIJpU7lBxdD2myAiMhzW7yBNDxytay4LmaguIg6eAN60/adaV
         9Y2840LZSUw/8PMiKOhzkw5MxchYDYs9pMLeticW9stjMn2elA37ylDCw10wcLRnfcSQ
         rGkD4LFcWSV+6/AOqWAcmZ7vv2ji7sIXYXY/pZpkuRDZOWV1grXK/raIQEc91t+8RXbV
         aUboBKfnZmuvMXauu1D8vSfSTwhGHS1bviHp8PeWSAwriaXSwQ/B8Bpv5getV8yfCpEQ
         72d2GNDOKBPIze2RI/q+L8nn8y9oR0hIO3LD7aOY6pJvrC3DfNJzFnxKTtBzQudrqVnX
         Fglg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=vPAHzrcSpfKuQzB1lrV/ttkpcnRRhB/aWzazYKPR4LA=;
        b=sztJNUXsZ3y0p8rvCVz/EjtoWXcxYtrBhydzHkhXuBcCAqP0yWdvmO12JotENhV76d
         3MaVVce+7PvSx+TTikW8knPV4AFlQLc9cchi1t1LVFTFB+jEq5GPkCKjeXMU0MaU2Uv5
         cTrUl9yIaCmNDoft4W58X52GYksZ7W+aBG0oYaatuMuf/eyNNbXy36MMUW80fVGdMrc5
         vgRMEkfD2COYRkLsf9dG45phd3ES/Worq3gwzi/0ECgyrumpX3B/cIfixUR7JeU33ZCp
         Z7oztvpD3NYGryFiUNbkEyd29nQj73hO0kRPUG+6vdN5J0Juft+B1wLyNpvUhKztF2Y4
         YlIA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=Nkis4e81;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1029 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pj1-x1029.google.com (mail-pj1-x1029.google.com. [2607:f8b0:4864:20::1029])
        by gmr-mx.google.com with ESMTPS id i21si12023vko.5.2021.07.29.18.39.24
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 29 Jul 2021 18:39:24 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1029 as permitted sender) client-ip=2607:f8b0:4864:20::1029;
Received: by mail-pj1-x1029.google.com with SMTP id j1so12842810pjv.3
        for <clang-built-linux@googlegroups.com>; Thu, 29 Jul 2021 18:39:24 -0700 (PDT)
X-Received: by 2002:a63:1053:: with SMTP id 19mr5768pgq.395.1627609164105;
        Thu, 29 Jul 2021 18:39:24 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id z5sm97349pgz.77.2021.07.29.18.39.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 29 Jul 2021 18:39:23 -0700 (PDT)
Date: Thu, 29 Jul 2021 18:39:22 -0700
From: Kees Cook <keescook@chromium.org>
To: Rasmus Villemoes <linux@rasmusvillemoes.dk>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	linux-hardening@vger.kernel.org,
	"Gustavo A. R. Silva" <gustavoars@kernel.org>,
	Keith Packard <keithpac@amazon.com>,
	Andrew Morton <akpm@linux-foundation.org>,
	linux-kernel@vger.kernel.org, linux-wireless@vger.kernel.org,
	netdev@vger.kernel.org, dri-devel@lists.freedesktop.org,
	linux-staging@lists.linux.dev, linux-block@vger.kernel.org,
	linux-kbuild@vger.kernel.org, clang-built-linux@googlegroups.com
Subject: Re: [PATCH 62/64] netlink: Avoid false-positive memcpy() warning
Message-ID: <202107291838.25D1F118C@keescook>
References: <20210727205855.411487-1-keescook@chromium.org>
 <20210727205855.411487-63-keescook@chromium.org>
 <YQDv+oG7ok0T1L+r@kroah.com>
 <d7251d92-150b-5346-6237-52afc154bb00@rasmusvillemoes.dk>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <d7251d92-150b-5346-6237-52afc154bb00@rasmusvillemoes.dk>
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=Nkis4e81;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1029
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

On Wed, Jul 28, 2021 at 01:24:01PM +0200, Rasmus Villemoes wrote:
> On 28/07/2021 07.49, Greg Kroah-Hartman wrote:
> > On Tue, Jul 27, 2021 at 01:58:53PM -0700, Kees Cook wrote:
> >> In preparation for FORTIFY_SOURCE performing compile-time and run-time
> >> field bounds checking for memcpy(), memmove(), and memset(), avoid
> >> intentionally writing across neighboring fields.
> >>
> >> Add a flexible array member to mark the end of struct nlmsghdr, and
> >> split the memcpy() to avoid false positive memcpy() warning:
> >>
> >> memcpy: detected field-spanning write (size 32) of single field (size 16)
> >>
> >> Signed-off-by: Kees Cook <keescook@chromium.org>
> >> ---
> >>  include/uapi/linux/netlink.h | 1 +
> >>  net/netlink/af_netlink.c     | 4 +++-
> >>  2 files changed, 4 insertions(+), 1 deletion(-)
> >>
> >> diff --git a/include/uapi/linux/netlink.h b/include/uapi/linux/netlink.h
> >> index 4c0cde075c27..ddeaa748df5e 100644
> >> --- a/include/uapi/linux/netlink.h
> >> +++ b/include/uapi/linux/netlink.h
> >> @@ -47,6 +47,7 @@ struct nlmsghdr {
> >>  	__u16		nlmsg_flags;	/* Additional flags */
> >>  	__u32		nlmsg_seq;	/* Sequence number */
> >>  	__u32		nlmsg_pid;	/* Sending process port ID */
> >> +	__u8		contents[];
> > 
> > Is this ok to change a public, userspace visable, structure?
> 
> At least it should keep using a nlmsg_ prefix for consistency and reduce
> risk of collision with somebody having defined an object-like contents
> macro. But there's no guarantees in any case, of course.

Ah, good call. I've adjusted this and added a comment.

Thanks!

-Kees

-- 
Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202107291838.25D1F118C%40keescook.
