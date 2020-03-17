Return-Path: <clang-built-linux+bncBDYJPJO25UGBBCNSYXZQKGQERJVZ6HI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63a.google.com (mail-pl1-x63a.google.com [IPv6:2607:f8b0:4864:20::63a])
	by mail.lfdr.de (Postfix) with ESMTPS id F0E5D1891CF
	for <lists+clang-built-linux@lfdr.de>; Wed, 18 Mar 2020 00:11:06 +0100 (CET)
Received: by mail-pl1-x63a.google.com with SMTP id f20sf13639223plj.5
        for <lists+clang-built-linux@lfdr.de>; Tue, 17 Mar 2020 16:11:06 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1584486665; cv=pass;
        d=google.com; s=arc-20160816;
        b=eEplAJtT5rBi52oNiD5lXhfj6XXR8j8LyxH2j9t3ldNvsNJcQ05uoeggM1WP2v3jZ+
         JXvao0nDSD5VRfs6q1zbVN5pOJytS1Tp9iVvj+Aw85Goed0P5jAVEQiXpz5XksWpUY9Y
         tMRW14lPIL0LFGLxoziUd7cnWL9RUW7TTdu+oZ8fGWa5+Gb7d6BkXCRFXjQr9+AvSkDC
         ClhbThpeegZcvrYnmDYgypbE4gvBqXYLOIeJiT1LoRIYs0ios51f/zLhM/xuZudQdcxZ
         A+fxH+VkMgpvGWUfYcMl+7EtUH/FN2fzrYmWcp7u7yrOrEuzdZVMJRWcPEGBqM2v4cUg
         KHXg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=0NgCSR4VjilU8c2ZQeziW9K0bmMIbhSXaqjKKuebfdM=;
        b=dWdsbtHVPfPW2l0DUQTq7sUGXhYjwPT+1/Y1ZIIDHXek2JQQtXQem6UlvNi7I3Ch3E
         eA5DCOwEIy26ac4pEb69zpRreObdRuaFy0Zli4GUHJOkVDPImEUfchUfXQ4EHgW/NYwS
         MSfKPO6WdmpkvOwrOke7rEiXY6fzuwDe2W+o3kE6hLNLdMlUT5zXjMFwn8C7ap5XokF8
         2j/zk7+mU62rKPwxEO3OSLfHEoiBMS6mjnbYTVq6kjTyJAWl0xQGNwr7jWZKGdEhWLlk
         sw5TBo3ZHehKtrk3pVO3rxvlTWh0Y+vTbrm1lIz96PH+jFGdu9bOd1KOCJKpS5ZddRwx
         yWQQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=eUMPbzAq;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::543 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=0NgCSR4VjilU8c2ZQeziW9K0bmMIbhSXaqjKKuebfdM=;
        b=deKmc2pKwrRU78JR8jw+O7UIdXvKQzd8c1k/64ECBSGR+uxhpcD7sxIoL/r9k3Qfkb
         DNddDWbz/A/IXkyP9i25xwFk8AxMSX4JzRJSkamo2FY39/GRtUrSn3HhrNCKRviHFi3e
         y8Z6klqaGea+RP+nU3MljtH/9SyamOLM/yeNJ44fLrgSQEvS5CVCnyo9Hsaglq9cC2fa
         oOWWNCk37+lnc16jNMrHND58WGPgiHr321ZUy3/eStAUie9ddbZoQcPJjrzUVwAPdt/W
         lel5wmcx1sFndcjaVq5UtNyoWO5NuV9wUxnkHEmUFWsx3sxUjyEm635ajsHpNg/ZSBxn
         R9Xg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=0NgCSR4VjilU8c2ZQeziW9K0bmMIbhSXaqjKKuebfdM=;
        b=ISLCAJKO3+XJmDum/Jk5iVtXFaO73zq5F+/D0xVrrYk++4gzpUgEB+06WHXlsfB5nW
         8IU2wjFMwBQuSDcwgQXYKo0EPStvgRw/o/25BTs8soklEWHqiVS1ctx859Wp6YSpdrp0
         HwTR/35c4e6Wg+HbCoZBC0jIxGtJW/0LD+T9eITvFOuP4248ijVJ1ZA/l6K42gHJdfgf
         3c8P4IBBaN1efz/qHGlTkN/4HXKaVoUzrXj2LkP0+7vUjLK91bkFTJBNb6ePjrRKeTpC
         7zeQTan8O5W1D3UYe9LXQPIwK/L8tsEevdQm3nn2jd9EPy/AoePhPG3+ccVWwIHmJNeu
         aZpQ==
X-Gm-Message-State: ANhLgQ1o2WY/CsQSSV3KhjVdYmKBQKLPgi+9Jw33JElMZt3fnm4mP5jA
	8mj9UIE9uwMmiiWWHWL9BzE=
X-Google-Smtp-Source: ADFU+vtBLJxkWdbRGpXwjkDPpi9N1sIjDV8XG6jSk/dX21hzZuxM8uUV73zsmuFyEOi5KIJfW1BwIg==
X-Received: by 2002:a63:58e:: with SMTP id 136mr1544063pgf.306.1584486665548;
        Tue, 17 Mar 2020 16:11:05 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:1853:: with SMTP id 80ls11359370pfy.11.gmail; Tue, 17
 Mar 2020 16:11:05 -0700 (PDT)
X-Received: by 2002:a63:6944:: with SMTP id e65mr1642506pgc.406.1584486665028;
        Tue, 17 Mar 2020 16:11:05 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584486665; cv=none;
        d=google.com; s=arc-20160816;
        b=uhd8LbfWCOOTWe/xs+df4Bs2yiSijBq0czooG11WS0FFkfFVBUeYGlDrhcOUsuS0zq
         CPQY470VeXH49fyQSwUdIa332+X9XnxCAzgRcfyRfuhWrZA3mUlowP93xa1Go9xjM+9h
         wg3xr3RXY7nGJpewvpasE6xDHtd7RzOshO2c6JSqWgRmYOVBrLs7h7x2x3E3Nzg2wIBC
         T97I5WspSR01n+ji0h67qGqq4t0R93wXnxkYOf5py/zG/lp8WMPE6TQMNfwaHGfGVQVq
         jfB4E4dzBRaGORSSB1PBIx0KrZottHRFR7tIQKWMiYUbp9IUoB2P+x5TynMd1L9VgfTE
         gEWQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=655SZyZ4kTa0wHYVMzoiHvAnRif4SDxsc5wkKB6CdU4=;
        b=zhYtTk+iCoETzLLoytdQkxj7TJ0ZGWWZ/PCT5IK+JSnLllJlKlWvLxchU+ehVjNcYz
         JIBTx7HB2JDsPKqagWfo3dgzO/wbH/YB7Nkl+JUbBK6233x3VN1nX1vD/KrK38lsEOqV
         NKwbcIFWy7NpJ8Iq++CyvN6OaQ8QcBG4Y35trmlxDVkyUtHPMETXyaCozERfZQ+du5gg
         NCp+Y71lExFP9eaqu64+Ntwuj48JkDwMKR+xaBpvy6RgBhgNRIdkGlLZ4ACrEtUcohDY
         taTcQ/+jRLOwZEgkCbxNv0nwsh/k9oarynPRiFwzjt2ajZXw39G/3LvY1U8syIipt5Ve
         kR7A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=eUMPbzAq;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::543 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x543.google.com (mail-pg1-x543.google.com. [2607:f8b0:4864:20::543])
        by gmr-mx.google.com with ESMTPS id k3si275130plt.1.2020.03.17.16.11.05
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 17 Mar 2020 16:11:05 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::543 as permitted sender) client-ip=2607:f8b0:4864:20::543;
Received: by mail-pg1-x543.google.com with SMTP id 7so12569917pgr.2
        for <clang-built-linux@googlegroups.com>; Tue, 17 Mar 2020 16:11:05 -0700 (PDT)
X-Received: by 2002:aa7:8b54:: with SMTP id i20mr1155834pfd.39.1584486664473;
 Tue, 17 Mar 2020 16:11:04 -0700 (PDT)
MIME-Version: 1.0
References: <20200228002244.15240-1-keescook@chromium.org> <20200228002244.15240-8-keescook@chromium.org>
 <20200317215614.GB20788@willie-the-truck> <202003171558.7E1D46AED6@keescook>
In-Reply-To: <202003171558.7E1D46AED6@keescook>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 17 Mar 2020 16:10:53 -0700
Message-ID: <CAKwvOd=9JHM4yhfCWEa-8OhZ70v_pChjgKj=TSGZgxZrhS5a_g@mail.gmail.com>
Subject: Re: [PATCH 7/9] arm64/build: Warn on orphan section placement
To: Kees Cook <keescook@chromium.org>
Cc: Will Deacon <will@kernel.org>, Borislav Petkov <bp@suse.de>, "H.J. Lu" <hjl.tools@gmail.com>, 
	Russell King <linux@armlinux.org.uk>, Catalin Marinas <catalin.marinas@arm.com>, 
	Mark Rutland <mark.rutland@arm.com>, Peter Collingbourne <pcc@google.com>, James Morse <james.morse@arm.com>, 
	Arnd Bergmann <arnd@arndb.de>, Masahiro Yamada <masahiroy@kernel.org>, 
	"maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>, Linux ARM <linux-arm-kernel@lists.infradead.org>, 
	linux-arch <linux-arch@vger.kernel.org>, 
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=eUMPbzAq;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::543
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

On Tue, Mar 17, 2020 at 4:01 PM Kees Cook <keescook@chromium.org> wrote:
>
> On Tue, Mar 17, 2020 at 09:56:14PM +0000, Will Deacon wrote:
> > On Thu, Feb 27, 2020 at 04:22:42PM -0800, Kees Cook wrote:
> > > We don't want to depend on the linker's orphan section placement
> > > heuristics as these can vary between linkers, and may change between
> > > versions. All sections need to be explicitly named in the linker
> > > script.
> > >
> > > Explicitly include debug sections when they're present. Add .eh_frame*
> > > to discard as it seems that these are still generated even though
> > > -fno-asynchronous-unwind-tables is being specified. Add .plt and
> > > .data.rel.ro to discards as they are not actually used. Add .got.plt
> > > to the image as it does appear to be mapped near .data. Finally enable
> > > orphan section warnings.
> >
> > Hmm, I don't understand what .got.plt is doing here. Please can you
> > elaborate?
>
> I didn't track it down, but it seems to have been present (and merged
> into the kernel .data) for a while now. I can try to track this down if
> you want?

Yes, the presence of a procedure linkage table makes sense for symbol
interposition and lazy binding in userspace executables with runtime
shared object loading support, but not so much the kernel, I would
think.  (Though someone did just recently ask me if loadable kernel
modules could interpose weakly defined symbols in the kernel, and if
so what happens on unload.  I have no idea and suspect kernel modules
cannot do that, but I have looked into the kernel's runtime relocation
support.)
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOd%3D9JHM4yhfCWEa-8OhZ70v_pChjgKj%3DTSGZgxZrhS5a_g%40mail.gmail.com.
