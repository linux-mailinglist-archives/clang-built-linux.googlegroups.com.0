Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBCU54D4QKGQEAEMMYPQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3a.google.com (mail-yb1-xb3a.google.com [IPv6:2607:f8b0:4864:20::b3a])
	by mail.lfdr.de (Postfix) with ESMTPS id 7630B245176
	for <lists+clang-built-linux@lfdr.de>; Sat, 15 Aug 2020 18:34:19 +0200 (CEST)
Received: by mail-yb1-xb3a.google.com with SMTP id n19sf1382906ybf.0
        for <lists+clang-built-linux@lfdr.de>; Sat, 15 Aug 2020 09:34:19 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1597509258; cv=pass;
        d=google.com; s=arc-20160816;
        b=wzRXMQgdLV4xi3uhypg+jW5WB/WKwhekxatZR/wkiev1F5dKPU71p+aD83EwnesI5U
         gRImnXyP2oKkpOj5x00xZA5v+PtZEYRQTyLWuXEn3hgSybCL5cgBzCHxDznSeN3uOzeA
         hLdsw5YlXJonSW3VMy1T0omNnyhq7PLhkVZEUhNV2fgRmVzUfHQ2wUH2cOzwK5waS6gb
         6TiVzDtb/4nHUm9xtZwAq89xX1em/IzhoSCkEhGuYXE3CmdajQa36nsq5bbEuWRpGEnk
         A1Gnp5RCJtARZ//76LkuRa/g9nOlOV6jaNVAj8YjVOcAQIlwuo0ti3JnXqdkclxLWJEt
         otow==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=LvvF7DELtQL/nyVDA7cisYkgIPVYJ3Fqk61Gpae4GNo=;
        b=v6DI49wTzWoXj7o2NEqhV9qjMO/mdpnYGQLHmWnxP4+QAcoLzT5pXgjxGbJtzUZNB8
         PBMUAZJ5wcrBFOqUgolnEz9MGaDW9EDjyXwq/jIay7GDvLZDlGH0eVj2qafHB50LrYhI
         hBhN+ECBkWSHMLMlyb78QODsV+FMPJturnAPKvXnQtnCoHYRZ6TjMdmLxsPZyv+F5RIE
         dz6W/6RsvSLaxWGpxH3O5njrnkMh/HTVuUB8SqniXdUQKcDW+jGz3V5H9Q3GlqnEv5Zs
         oJmCr6kG7UIvbjGlHxIPA13L+CZCbzuSBtqoxPCDwxTrWynyt2rXhXsvA/AjYl9biMhh
         1QXA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=IpPDEUCj;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=LvvF7DELtQL/nyVDA7cisYkgIPVYJ3Fqk61Gpae4GNo=;
        b=HQ3SOmo4/waoElbWzuvdHUCI0CuOY8smekxBxX6p8DUD99Z3dmu4FKSODI9gbaORcy
         cTjCBt4ub6LswX4AMRemk7UDQIr5T7n29ckpf4Dwv1KgOzxCYIrQ7eiYQcEVRPpZwJ8J
         1vqfCvRpxMe+G4NKa0sL8LiBiAd9ZuQ+cndsPAxqeQXLVTshhfkvJF9hNBpDZS9yHLBv
         ji8z6oPM4FgWfU1foND/apvSFzrQuWiBGUg6p9/3ANUJpAVKCvwH9qM9LDIHDzaNDrz0
         sjdC6B/1M4xdzyOvGF07Tm4ZS7Zkvv5aUlIYcaOq9/DZzrEnaFK9FdOeUTMzbJjtJgRf
         liTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=LvvF7DELtQL/nyVDA7cisYkgIPVYJ3Fqk61Gpae4GNo=;
        b=fP+X0Bq0KvhxSFztPQ7s+87SF3MLAFjAWI/zAvyckIuTyDC0WKIvyf0EWQX6YS234s
         LCP0N0kIpfMRNkrc1w7Nxz5LNQmzsRU3tdGuoMq/AC7pDUiRe84G7WgNCbx9ZVrap6/u
         GQNda+EpMyKw+VhEvHEPHZI/QJSGMvHcf2hM2wH8ow1q4itYBM6CC9D+YKUNas8leNko
         X8WYHG/HcJ4SCtG6gdrqu3deqG6CLzc+WP032o79aCzd7v4lJlS2I6Hri69Xfo7UpQC+
         dJJjQ4ATs2jaOCshsGQMxmj/M47X53119VLgVbLDzxqyWPvZyfyMHkDggOH4F6AC33Qv
         ypPg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532Gs4I4lJTq1ZgBEuWeIyW67FD3gvbnHQ7A4jXY8bXsxDTo38fX
	DBVmWVlzhAcbs/EvgVmIlUc=
X-Google-Smtp-Source: ABdhPJxEUoW+1J3bkQfYVnm0IbY5Cm37lMvSAQ1CExjIscE+Pie0feBJvxPx11UWQ45Q1E1Rc/jrdw==
X-Received: by 2002:a25:74ca:: with SMTP id p193mr11200116ybc.302.1597509258330;
        Sat, 15 Aug 2020 09:34:18 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:d0c9:: with SMTP id h192ls4982759ybg.3.gmail; Sat, 15
 Aug 2020 09:34:18 -0700 (PDT)
X-Received: by 2002:a25:e74e:: with SMTP id e75mr10891827ybh.186.1597509258024;
        Sat, 15 Aug 2020 09:34:18 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1597509258; cv=none;
        d=google.com; s=arc-20160816;
        b=ZfobqCVIvtYFyKrPs5Hqfhu/lYrS4ORKK5lDHw7difphKoc9RyerKQnOgwb+s7xGnz
         p7yiSym0yOLBb2F0L6wKpU/W1ApUf6R1TXfyiP8ZBM0y67VCJGwIR410K36UGH2IStBV
         jn7yWcZZ69Omdm+57kYBG2RPv1TxgEYfCmFQbPJ9+dZphLvn9XfkRmWI4ygflES+PK+Z
         fjgI4LFgauYMptqp6ZQlEQBNlJasfew24PVY0ljWFr1lfckT8Bjs8SCg+mk8KA8GPOZp
         ssFgyvzwt9pSJnSqzaJdGULBXrg7ay68lkrN0csUkAy99zTKeWrGytimlt58UlBPn++Z
         MpyA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=zJX37WRUVbMU5pJLki7rAUhX9uBKXYYVUdVs+LildKI=;
        b=IDTxTlwVyBOizIlI+VNrRZozsAFZ7/FOODCZvsQmMh8/PuMXlGaj29460xPuxDB0lk
         Pho55cBn3zW0PYnJ+WQOue4qNAomSAvcQa6nwS07bQp51ad7+d7whJHy5ePH0KKDsogy
         4uo+OjCF2BCN0f1XhNfHTBOds/Cx2yuz3U27gXzKk5/U+8Aold06rdJidc3KS7zaHEf0
         UdALiwSmCJQ0O/xcK9XotXhNCu8XEc3vmoL4OWk7mYnWWghGQcy5GZRMbrWypwPFOhbR
         Z0jINfWOCK6DGeifO8eLdjvZKyEcEk5I1VAmXINoB0kZ+jqazFr4N4pqVXGXTEaOMHl2
         DmUg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=IpPDEUCj;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pg1-x542.google.com (mail-pg1-x542.google.com. [2607:f8b0:4864:20::542])
        by gmr-mx.google.com with ESMTPS id o14si564912ybm.5.2020.08.15.09.34.17
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 15 Aug 2020 09:34:18 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::542 as permitted sender) client-ip=2607:f8b0:4864:20::542;
Received: by mail-pg1-x542.google.com with SMTP id s15so5969660pgc.8
        for <clang-built-linux@googlegroups.com>; Sat, 15 Aug 2020 09:34:17 -0700 (PDT)
X-Received: by 2002:a63:4a4c:: with SMTP id j12mr5198869pgl.115.1597509257153;
        Sat, 15 Aug 2020 09:34:17 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id f27sm12433808pfk.217.2020.08.15.09.34.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 15 Aug 2020 09:34:16 -0700 (PDT)
Date: Sat, 15 Aug 2020 09:34:15 -0700
From: Kees Cook <keescook@chromium.org>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Andrew Morton <akpm@linux-foundation.org>,
	=?iso-8859-1?Q?D=E1vid_Bolvansk=FD?= <david.bolvansky@gmail.com>,
	Eli Friedman <efriedma@quicinc.com>, stable@vger.kernel.org,
	Arvind Sankar <nivedita@alum.mit.edu>,
	Joe Perches <joe@perches.com>,
	Sami Tolvanen <samitolvanen@google.com>,
	Vishal Verma <vishal.l.verma@intel.com>,
	Dan Williams <dan.j.williams@intel.com>,
	Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
	"Joel Fernandes (Google)" <joel@joelfernandes.org>,
	Daniel Axtens <dja@axtens.net>, Ingo Molnar <mingo@kernel.org>,
	Yury Norov <yury.norov@gmail.com>,
	Alexandru Ardelean <alexandru.ardelean@analog.com>,
	linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com
Subject: Re: [PATCH v2] lib/string.c: implement stpcpy
Message-ID: <202008150921.B70721A359@keescook>
References: <20200815014006.GB99152@rani.riverdale.lan>
 <20200815020946.1538085-1-ndesaulniers@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200815020946.1538085-1-ndesaulniers@google.com>
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=IpPDEUCj;       spf=pass
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

On Fri, Aug 14, 2020 at 07:09:44PM -0700, Nick Desaulniers wrote:
> LLVM implemented a recent "libcall optimization" that lowers calls to
> `sprintf(dest, "%s", str)` where the return value is used to
> `stpcpy(dest, str) - dest`. This generally avoids the machinery involved
> in parsing format strings.  Calling `sprintf` with overlapping arguments
> was clarified in ISO C99 and POSIX.1-2001 to be undefined behavior.
> 
> `stpcpy` is just like `strcpy` except it returns the pointer to the new
> tail of `dest`. This allows you to chain multiple calls to `stpcpy` in
> one statement.

O_O What?

No; this is a _terrible_ API: there is no bounds checking, there are no
buffer sizes. Anything using the example sprintf() pattern is _already_
wrong and must be removed from the kernel. (Yes, I realize that the
kernel is *filled* with this bad assumption that "I'll never write more
than PAGE_SIZE bytes to this buffer", but that's both theoretically
wrong ("640k is enough for anybody") and has been known to be wrong in
practice too (e.g. when suddenly your writing routine is reachable by
splice(2) and you may not have a PAGE_SIZE buffer).

But we cannot _add_ another dangerous string API. We're already in a
terrible mess trying to remove strcpy[1], strlcpy[2], and strncpy[3]. This
needs to be addressed up by removing the unbounded sprintf() uses. (And
to do so without introducing bugs related to using snprintf() when
scnprintf() is expected[4].)

-Kees

[1] https://github.com/KSPP/linux/issues/88
[2] https://github.com/KSPP/linux/issues/89
[3] https://github.com/KSPP/linux/issues/90
[4] https://lore.kernel.org/lkml/20200810092100.GA42813@2f5448a72a42/

-- 
Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202008150921.B70721A359%40keescook.
