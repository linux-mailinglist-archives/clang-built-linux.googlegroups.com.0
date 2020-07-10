Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBRXIUP4AKGQEJERJAZA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53b.google.com (mail-pg1-x53b.google.com [IPv6:2607:f8b0:4864:20::53b])
	by mail.lfdr.de (Postfix) with ESMTPS id 5AB0721C080
	for <lists+clang-built-linux@lfdr.de>; Sat, 11 Jul 2020 01:05:44 +0200 (CEST)
Received: by mail-pg1-x53b.google.com with SMTP id p8sf5137786pgj.14
        for <lists+clang-built-linux@lfdr.de>; Fri, 10 Jul 2020 16:05:44 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1594422343; cv=pass;
        d=google.com; s=arc-20160816;
        b=fk1BI43RGHPzZY6XqLQayz2f9tAJWr2dfypTNyCgiO+/TfcOfoPDqgi8sIWRIsIxrm
         uwaErYOqEih5JmkE7JowrwDl7LlDt7vYdv505rU/r01/8VpNzBZ4eVxsJWBsukLHwSjA
         U9C7Djzbhsb73wVYaCPOqm17CNT1FpgjYeTirbaqT7x503cmGZTco4B/uRsqZIWtA464
         ZCYifnIk71EdDn4VEV8s1colONyCdS7h9+tUARpvonsqSqtsV/wWkFUQx6prMl6+RY3G
         MICjNL2NKh2QlqjLy8lP1bEAF3ka5ETVdMo25PTlKGXzqv4Gi/Lf4w0ktOZzByVCZ65/
         4IMg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=rXnQACWVFIL1HbshMgS/4rc5BSJ/LE6a9e+LLjcSq8Q=;
        b=FxQXBuLmjojEoiP6WbJEcQ0p5s76pHvjVRM04ZxRAfRV7Y+M4z/+REAq+iWA60Kxhp
         QOOMGMvbQ/xDbbRMICteQf4SzshZgpzVf2ZBxtn5COh2iLZ7IK9tmwiu49aVKS//GtK5
         Guf25TLIuOXFXq6qKW8eldnmyutZbcLLijXIsrnms5noY5YMCYF5uhNhtgDlzZE3HoE6
         dWY3TVtEh4v2bFHNjw02OhRH8KjpDYqiFSaGDVEoLr2kSKnrSebamybZMJlx7ZqQiTkK
         zHpcJtj7JY1Gb95gsl5a9VVEJ4mzOEHa9832UWQ9Z7AD8y3/XV8d7dXRMyJmyE4vSHdR
         QEJw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=BxG2YXJw;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=rXnQACWVFIL1HbshMgS/4rc5BSJ/LE6a9e+LLjcSq8Q=;
        b=IamPBfY4FqqUSZYgatKvVZRT+ruSCig4n8Tz0VPlrkqP+SwDQT7RaB0dAS0Py6ntU+
         Os/jRqu/2kK0l0lKT03Kr8Bo9rG5Yvnqq57H05LDTVmMh8Juxxt47M9+9sFgGi43P1t/
         DQUoMnwSgnQMCKxr2kvHE2HL65tAhuIbeztOF1EGh33fK2knpYZhleFGgapQa1FMP8zw
         Yo4uRak+1kwei8axwgWBJsYeNiJNNcgA14C41Hnx+uFS990MKYPyrUmBAL4inViML4eD
         2qMkKSq9Kd8mgkSZLBaXTzJhh9YYgBAFJHnxTjvQ9/3vr9mou1VjNhgD1AFszwd/aB/7
         xikA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=rXnQACWVFIL1HbshMgS/4rc5BSJ/LE6a9e+LLjcSq8Q=;
        b=INxiSLEl/n5ZrZvkChNraCZQ2KKPlHSiDIaJ+Z1M2RhQAEBJgvThFxiM1cixZG7mtU
         GN/H+EOBhICnJU3SDvVMHw9O4kCiinFsWshmS310UdscH+XsRcGJtjadD8cESqlf2RpR
         2ZmubR9Dx9BB+3A0kc/HC0nkxHXmIZJQwSSrxwCS4KyK/7LqOb4rMJYOVQDxNDaQJuTd
         78dNL0BcLL/dLkrLRGmMzcWxH2lMpkmRSrc5i06aPMp3J/xQ5lJbw6qYVaJSLSOG8HLP
         DQhDA6AnYpHOKGb23fmAYwhaqExDSSQ3zEcUJM1Qq1AyjbHZm4Bc3WbH93pPzmcQaWou
         HsAw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533v8G/q30rcKUbC4FLTM0+6rgQOBdK95B5opBechd9AX2yk2sFc
	6iZlF8jBsL18v2ZQlFGYxpI=
X-Google-Smtp-Source: ABdhPJwMHIXaEqD9bhfkT24UAZI9EgriPYoOnaIshlGWBA2I/VQDlIx5qV/gHnS/pE2PbZXAJX/u0A==
X-Received: by 2002:a17:90a:ad02:: with SMTP id r2mr8310114pjq.74.1594422342954;
        Fri, 10 Jul 2020 16:05:42 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:565:: with SMTP id 92ls4264312plf.2.gmail; Fri, 10
 Jul 2020 16:05:42 -0700 (PDT)
X-Received: by 2002:a17:902:fe0d:: with SMTP id g13mr62040228plj.326.1594422342474;
        Fri, 10 Jul 2020 16:05:42 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1594422342; cv=none;
        d=google.com; s=arc-20160816;
        b=mBb7dZnwbj17O+JwAtcs0UERA+CchDmWacaPiTf1MZmwAxq4HgM1V4+X8McnkmXWCu
         Vmn5B0t63CTVkAH/4eX1OweFK+v46zr+SBqyqlzp8CQR10Z+MXXGaRJ0lPk2sWDR232+
         n6G0P1Poem6ejblbZssTHOLXadVktrrmWHczVz4pnYnakQv5cTJjbOiDZ2Ujli1tWzK4
         7unBWYOCxxOThPAbisMsBeXITPsED1gZePJ1AlvUS5gPYeGJZIQghz1OlwtUBhFxdMNu
         nGY0O4tlA/5OK+hqsIqrEOqwoEdVZlecnqgsBGrR+Ua27HSpy8dhvPiPd7nLhbDT1KqL
         isHQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=DLqqu28iK3HzfVLGGSoyKiRaazrB3YV5o+GyyPDcf8I=;
        b=F74cVGfae5Fkyq+umA5wqp+ah3BtQ/g+pghNvyhMwNOhb8mkqzRVf9tiACaHQHh9G/
         zHUSleAhn2gthRZCQ+mZEYvYqmbHk8kxZAEw2o1Pqc/eFl98hgEl+KzxpB+wpf+YkBgB
         Qwjb98SNxFZglCIC/FuOm1v2yF2h7qr7/h/jSQndQ0WFjHaYjRsRexWJt+lr2fvLAGxB
         +0hANfyFGvdDqP4UEhMl2lx9LW8IQ2ZCWGR/FMv2CKSpy5cqGVL4zWeMbl42WSvLkyWy
         gg1gfaTlysM07jZGFaf1+hJsIUQ4TKzlqnpi+QeS6pT/Kklso5baEGMq+Lel3WS1i37D
         oylw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=BxG2YXJw;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pg1-x542.google.com (mail-pg1-x542.google.com. [2607:f8b0:4864:20::542])
        by gmr-mx.google.com with ESMTPS id y19si396322pga.4.2020.07.10.16.05.42
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 10 Jul 2020 16:05:42 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::542 as permitted sender) client-ip=2607:f8b0:4864:20::542;
Received: by mail-pg1-x542.google.com with SMTP id e8so3163615pgc.5
        for <clang-built-linux@googlegroups.com>; Fri, 10 Jul 2020 16:05:42 -0700 (PDT)
X-Received: by 2002:a62:3204:: with SMTP id y4mr36745409pfy.50.1594422342212;
        Fri, 10 Jul 2020 16:05:42 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id c207sm7013552pfb.159.2020.07.10.16.05.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 10 Jul 2020 16:05:41 -0700 (PDT)
Date: Fri, 10 Jul 2020 16:05:40 -0700
From: Kees Cook <keescook@chromium.org>
To: Alex Gaynor <alex.gaynor@gmail.com>
Cc: Christian Brauner <christian.brauner@ubuntu.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Greg KH <gregkh@linuxfoundation.org>,
	Geoffrey Thomas <geofft@ldpreload.com>, jbaublitz@redhat.com,
	Masahiro Yamada <masahiroy@kernel.org>,
	Linus Torvalds <torvalds@linux-foundation.org>,
	Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>,
	Josh Triplett <josh@joshtriplett.org>,
	Steven Rostedt <rostedt@goodmis.org>,
	LKML <linux-kernel@vger.kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>
Subject: Re: Linux kernel in-tree Rust support
Message-ID: <202007101604.9ED99CCAED@keescook>
References: <CAKwvOdmuYc8rW_H4aQG4DsJzho=F+djd68fp7mzmBp3-wY--Uw@mail.gmail.com>
 <20200710062803.GA1071395@kroah.com>
 <20200710125022.alry7wkymalmv3ge@wittgenstein>
 <202007100905.94A79A7A76@keescook>
 <CAFRnB2WNo45J8h3-ncopLKENvcO0rf7J3xsy_eRKwFSpDD-5sQ@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAFRnB2WNo45J8h3-ncopLKENvcO0rf7J3xsy_eRKwFSpDD-5sQ@mail.gmail.com>
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=BxG2YXJw;       spf=pass
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

On Fri, Jul 10, 2020 at 12:28:30PM -0400, Alex Gaynor wrote:
> :wave:,
> 
> Hey Kees, that's Geoffrey Thomas and I, we're both on this thread :-)

*face palm* Hello! I swear I can read. Though perhaps not well enough
before lunch. :)

-- 
Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202007101604.9ED99CCAED%40keescook.
