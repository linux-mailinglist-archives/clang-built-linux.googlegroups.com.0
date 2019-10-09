Return-Path: <clang-built-linux+bncBDYJPJO25UGBBAFN7HWAKGQEXSBMGPI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x339.google.com (mail-ot1-x339.google.com [IPv6:2607:f8b0:4864:20::339])
	by mail.lfdr.de (Postfix) with ESMTPS id 77748D1B38
	for <lists+clang-built-linux@lfdr.de>; Wed,  9 Oct 2019 23:52:01 +0200 (CEST)
Received: by mail-ot1-x339.google.com with SMTP id o4sf1947085otp.16
        for <lists+clang-built-linux@lfdr.de>; Wed, 09 Oct 2019 14:52:01 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1570657920; cv=pass;
        d=google.com; s=arc-20160816;
        b=dhpoQw+8l4VBNtsgvM9VbJqBkWpkBh0brjY+Ae3wdhyKD/gGgSlBRpjUxD4wkA4Zj5
         1/vYVEZYVyF96uYQFd052hXy7HFXo9g0LnuxDFwj63lp38kJViA/ZykPp0Ha3OpYm9PN
         Ja0LFlmobtap6Oy+DP86+2rKqFUTKmODymP2qJHnN2006jD14/vgSCSGZUkvetg7vYML
         +sokMbhbn5xdwOzHcSJ1AJSfJlKOQaILeHdIGqBpgbQQCXEjAXwPJf7TPxJHVBsbgbzO
         OXDpP3IIH6HWR0KYj/RqcJqwYtHz/8vIc6PRGglIqL50/KnXRO9JLfDK9LJtSi7cQtf4
         rjwg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=JJb+NFn1tMYKXvQRVjYvkhe4YtFfwU8Js8aqx7CYBi8=;
        b=fZS/dVeREjZ+xYmPD8ListEP/MNtZ4uid/7CUO6EoEvsqJXOX7pPdc0I3KJxTG4nR0
         3IfTn+GtazfM7hSKUaEfgo/DPOWwYC1dmw9PO+IAFmi47ZScx5wk0G5yVFdlamnXRjqh
         JwoMeMapxIS+SvdcxPKtx3CJDJaiKicihf9EUn5sgWLzyv7xTKJ7MqLG4JDAPNTB8aOQ
         dVfRU5XVxrrp5yzKbgGRdJKMC6LDqfuX+11DeIwQhn65N1AZe9qyihFyfRgBRfHe2yda
         XQeyMk5z0pdj/NueFIIZlbw4qwSA5a2OdTwq9VyL3iAgbniNN3tkH1mgZ2FSaLbBVEfL
         PCnQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=InKPrTMa;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=JJb+NFn1tMYKXvQRVjYvkhe4YtFfwU8Js8aqx7CYBi8=;
        b=TZqQ4BJQl6YU3+wQzhUzaerPo57kuMfqmeSlmw5izy6h//uDpQeR+0w1GtU7wI8lrA
         Pj2luFUIFVdqMgf7mlF+nYY5WODJ2bQx5qWnlZSIoDGgTwXQ9GsGoMBZc2FhEMRgWHo3
         p9TkUi3LynSrjYDUDELX1nIQaXRlmOTMtdUEmOGp6z1DpxYXQlXFy0BUAMU4x+emA4JI
         44A4oGQo7BpJCnmdSCzYGex5n25a2W/pWA/ZTVShgK/O6MylpaiRMZSEuc1H/UJVmNXB
         nFiVFbsHmwbL0Eu4IIFL6b6TFbdbUt061QSrhecsMhV3+kl7K52XBXmsCJrW35KzqArc
         RSWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=JJb+NFn1tMYKXvQRVjYvkhe4YtFfwU8Js8aqx7CYBi8=;
        b=sVLJZjkckSuUmeDNlUPRPXZ2V2Iy3i9yiGUFtIzZ9/bQb7b/8GoNNwGFM2nZ+S5L5V
         0hLg6u26SrXOXzq9jqzHMVpOeFRaTGh0r8gGh1fi2ibQEPpO5bpEb9rrwlxjZAm8zrqU
         hz2bXO+4OTf+QbpUiTuCDDRTeEcGa6JtK6gTD0uJwF1YRt5QqiPUWrl+RaD2EX3zdM5N
         9fObpfnNYcJ1G9lkOmhlDAPWeoUiX0uNQRaUweQfEU7QSRDokCvwUDuQiHWCVnNqswpL
         lGbM80xhlHxcLvicVDQy8uvKleJS55e5+yoIY5kOAkGpfLU8s4sf4HfkiN768UCrUZL1
         5q7A==
X-Gm-Message-State: APjAAAUgx1wpIdCxTkUYiPQmSroZ9Trf1/AyoF/BgeUdHyEBzIx6krqd
	4MH+9cFDmKgh5niA2i5RdGo=
X-Google-Smtp-Source: APXvYqwIodYUaqpU84D561Nt8Gk8jazGiS11qZqQ+lr3mm9bVb9xXI7qc9PcFgSYNDncKW0zUE7a5g==
X-Received: by 2002:a05:6830:18e3:: with SMTP id d3mr4651904otf.213.1570657920382;
        Wed, 09 Oct 2019 14:52:00 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:2c42:: with SMTP id f60ls332950otb.8.gmail; Wed, 09 Oct
 2019 14:52:00 -0700 (PDT)
X-Received: by 2002:a9d:7e8e:: with SMTP id m14mr5062125otp.158.1570657920062;
        Wed, 09 Oct 2019 14:52:00 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1570657920; cv=none;
        d=google.com; s=arc-20160816;
        b=Fr23vKgotc+fBwYZ6R2kJnEWgTqBV3PD18iSfRTFo7/OFAyOt6pY2L4nV0sViF1d8X
         AjrJGqUN/w9bx+FXT4dYh2FR0kQuJcdn49twcVDasZy65RaaqN/UVly015moloiWCoLt
         Dbs5UY762hXT5c/jjfXvoSIdnD+vk52zlbwr1rw7mRjruJ1uCFt1xVd+s5eyhr35TLzs
         xaQNURJXaVeX7e4JBI4fOYgEfftkE+l4pK+dAAyRCMfN7LISR3fFd68WOF45PqgdKVVp
         JpHfuqQ/+L9GtVKzICgal+kPSOAH2AG9diQ0tDGZ3uT3Agq5KpsK+FipGeq6439CZL+v
         2sAA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=97UEnZkq1363enDKYmWWwRqD4DtS+tvynceFknVUyPM=;
        b=UO2GNi7cwEpJJjTrcYjOy+mOucOsseUBZZWwZsBmMaB8wQ0RRsm4O2mD2M4G7KAapL
         ttKjRDfNPSHjmKcVHk1EvP1EDVYcltpLe89SH7SH37awF5lsQN6jy2VlNnro/EAN5QT8
         Um3lY56XE7B/ZWllZbVEr5RpJGtQNwyz1NpfzBHfQklR7gHKI2JV+bX2rhf3my/73Wem
         ksmIxlzzGcCV44u0jOJ+srMEnE2DjvXPalZqcThdccImkoNgyv4CM3/StUf9dMYYXDQS
         XMjPZCoJNGGbdD9sQXfgXTAn1HNq6bM7qaFwSnhyLvBcaoR/1q9jbi2K6IPmLF+ujjma
         KZXQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=InKPrTMa;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x441.google.com (mail-pf1-x441.google.com. [2607:f8b0:4864:20::441])
        by gmr-mx.google.com with ESMTPS id c6si240841oto.5.2019.10.09.14.52.00
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 09 Oct 2019 14:52:00 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::441 as permitted sender) client-ip=2607:f8b0:4864:20::441;
Received: by mail-pf1-x441.google.com with SMTP id q7so2488750pfh.8
        for <clang-built-linux@googlegroups.com>; Wed, 09 Oct 2019 14:52:00 -0700 (PDT)
X-Received: by 2002:a63:ef51:: with SMTP id c17mr6596833pgk.10.1570657918818;
 Wed, 09 Oct 2019 14:51:58 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1570292505.git.joe@perches.com> <09a42c7275afa7e6e9e3fc57a15122201fccd6f7.1570292505.git.joe@perches.com>
 <CANiq72=KMcYmcHL442OKwDBJj3czey-XtjtOBTLqh_HAsoJAzA@mail.gmail.com>
In-Reply-To: <CANiq72=KMcYmcHL442OKwDBJj3czey-XtjtOBTLqh_HAsoJAzA@mail.gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Wed, 9 Oct 2019 14:51:46 -0700
Message-ID: <CAKwvOdmuk_3AJKoiQi2feMD=3cHcTYFCfxuQ53VS_aHWeDEh9g@mail.gmail.com>
Subject: Re: [PATCH 3/4] Documentation/process: Add fallthrough pseudo-keyword
To: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>
Cc: Joe Perches <joe@perches.com>, Linus Torvalds <torvalds@linux-foundation.org>, 
	linux-kernel <linux-kernel@vger.kernel.org>, Kees Cook <keescook@chromium.org>, 
	Borislav Petkov <bp@alien8.de>, "H . Peter Anvin" <hpa@zytor.com>, Thomas Gleixner <tglx@linutronix.de>, 
	Pavel Machek <pavel@ucw.cz>, "Gustavo A . R . Silva" <gustavo@embeddedor.com>, 
	Arnaldo Carvalho de Melo <acme@kernel.org>, Kan Liang <kan.liang@linux.intel.com>, 
	Namhyung Kim <namhyung@kernel.org>, Jiri Olsa <jolsa@redhat.com>, 
	Alexander Shishkin <alexander.shishkin@linux.intel.com>, Shawn Landden <shawn@git.icu>, 
	"maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>, Nathan Chancellor <natechancellor@gmail.com>, 
	Andrew Morton <akpm@linux-foundation.org>, David Miller <davem@davemloft.net>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Jonathan Corbet <corbet@lwn.net>, 
	Linux Doc Mailing List <linux-doc@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=InKPrTMa;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::441
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

On Sat, Oct 5, 2019 at 10:48 AM Miguel Ojeda
<miguel.ojeda.sandonis@gmail.com> wrote:
>
> On Sat, Oct 5, 2019 at 6:47 PM Joe Perches <joe@perches.com> wrote:
> >
> > +When the C17/C18  [[fallthrough]] syntax is more commonly supported by
>
> Note that C17/C18 does not have [[fallthrough]]. C++17 introduced it,
> as it is mentioned above. I would keep the
> __attribute__((fallthrough)) -> [[fallthrough]] change you did,
> though, since that is indeed the standard syntax (given the paragraph
> references C++17).
>
> I was told by Aaron Ballman (who is proposing them for C) that it is
> more or less likely that it becomes standardized in C2x. However, it
> is still not added to the draft (other attributes are already,
> though). See N2268 and N2269:
>
>     http://www.open-std.org/jtc1/sc22/wg14/www/docs/n2268.pdf (fallthrough)
>     http://www.open-std.org/jtc1/sc22/wg14/www/docs/n2269.pdf
> (attributes in general)
>

Interesting. I think those links might be useful to include, or drop
the section on C++ style attributes outright. Either way:
Acked-by: Nick Desaulniers <ndesaulniers@google.com>

-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdmuk_3AJKoiQi2feMD%3D3cHcTYFCfxuQ53VS_aHWeDEh9g%40mail.gmail.com.
