Return-Path: <clang-built-linux+bncBCF5XGNWYQBRB64YUD5AKGQEQY2P4TQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53b.google.com (mail-pg1-x53b.google.com [IPv6:2607:f8b0:4864:20::53b])
	by mail.lfdr.de (Postfix) with ESMTPS id 6910D254EE5
	for <lists+clang-built-linux@lfdr.de>; Thu, 27 Aug 2020 21:41:49 +0200 (CEST)
Received: by mail-pg1-x53b.google.com with SMTP id 187sf5137652pgb.12
        for <lists+clang-built-linux@lfdr.de>; Thu, 27 Aug 2020 12:41:49 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1598557308; cv=pass;
        d=google.com; s=arc-20160816;
        b=DCDsen6bJqwunBCFMM3OxZvrTfvX6Sg/U4AorQkmDcXkynsm94/SXzO/diBlmHQX8j
         f2OlJMzfTjgAxwIfpvU7hgMIZzD7Pmt1W8FQ26H06gCq6Bjkx6hKwIeYqMr9EwhtL/7y
         YHM1cU9OAcDOO6B1HWYemw9jCmLrhEWAYMOK286EKRj77qXfTaMawvXIkODhBCwjzsXq
         9Ke+496kuZY53ruQDfztpdKhbgBMHlKZ88lKBmuHNwFmYfw5icNz8oGIduvNaghiRjnU
         4IRx5bxYwbi0JqvMH4IDo5n1C0lLoFtXNUIPJGQZmneU8Rsx4BnZX3PIg8lHy4/wlpbH
         SeuA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=cCZOw6nHv6fg6trCOnsDJMZNDGehbCSqnPQg3Lb93ac=;
        b=wdC+l4k6qCcWsy6d30WwuGWYZ3khxswxzoyQs6/thO80ET9czk8JGx6JmuopSyq6zC
         yPhAB/X3Q6M7uUkFVQrE5INFberfaMqMBX7DgEyrFnHdfi2E6dzm0NmJnzDB1PldrJJn
         JJ4QuofWfZWaHqeMXVALWhPWJ+RcwqxXTha8y68FNJUhxvFK7r7doH4WUTai1L9Dpt1O
         7gNTmw2JFsVETVmiLP8AO8CR8U0KNphbM6qhJNmoZxDhhC49GKxCg4S+Uj3jVtT2Kdyl
         uDR39sTRqO371zv8qqDMloUyegsR33o0K3xifbieoLey3TqfcRRQJJ7dcsFvixx34+YJ
         GhNA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=hH+kc7t4;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::444 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=cCZOw6nHv6fg6trCOnsDJMZNDGehbCSqnPQg3Lb93ac=;
        b=SpQtVqWzmcB7AiAwafYvLVjV5N1CdiJ9DDEsqRAhXDfuY2j15ZTYpUnhWGd9qTqa2p
         3W7yLyzGUJZcNql3MANgLmFFQVAwnFZQLqguYPahbS9NBKCAPjF04qhIhaMaU+jUEpXL
         cYguHoV+Ob+VQAXfLyLh+t2b/TXQ0xe+hdwejJ5teEhQ1RtyknzdK7dE4RcCk1WjkSov
         Nh51PuFUsSja4ugzNzcpQGvtUqhc3jvlP/oqFSY40NMw5PSx8Y71nXPo2c1b49aGNn3K
         t06T0cBTFhW11jWFQI8iT54bTEa4ktuX6uZ6OE7Z48ECSqmT6Aic3OsFaoiMkF81gCzg
         gDBQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=cCZOw6nHv6fg6trCOnsDJMZNDGehbCSqnPQg3Lb93ac=;
        b=BpF6wiTehfBwckJoHZTX/Gz0ucotBRfHP5DRyNKk+77oWI5V0NfD82Bn9GKYiWspYw
         RNbsr6XgOnssO7t2XVmhy3KZR9r3ahnI4uhQYz8gXrTL3JFYubFntOjQXHEDd9scthbW
         ap6E631Oh/Jo41FCte35RHK+F9SmOUez+GC5eDxQyGI8joV9pvbqkh6lRSx3AcI3mzL3
         0TkKNo512HUze4CUkKi2d7z8YTh1KqSaMA05jvNCXOeZXjNeRdq6blQhHkbHITbYge6b
         gyN0q6upEXXxRTNZv/88HuZbECbbhDYu97ZVmEeChKeIiKv1vtZPkrdDo+kdOm2HqPkR
         NRqg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532I7NjyoFeRC+l6pxToEmiSu0J4Brk4gXz+2w6Uz1ndSaVWX+kq
	9lRaFJ3qwLnMbcZZFbj8BDI=
X-Google-Smtp-Source: ABdhPJy5NkMWy9urxrF3FBgBvcQf9K4tauojvs1pIWE4ILYa/Wm4BZmlGsByIgdObb53Ov+7swXuog==
X-Received: by 2002:a17:90a:2846:: with SMTP id p6mr367294pjf.75.1598557308048;
        Thu, 27 Aug 2020 12:41:48 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:6b4c:: with SMTP id g12ls1691800plt.7.gmail; Thu, 27
 Aug 2020 12:41:47 -0700 (PDT)
X-Received: by 2002:a17:90a:d90a:: with SMTP id c10mr385445pjv.31.1598557307656;
        Thu, 27 Aug 2020 12:41:47 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1598557307; cv=none;
        d=google.com; s=arc-20160816;
        b=XDnpz3/BEo7tc3zSdoUfCYqphKOAy0A5/IV4IraqpJncA41JXEiKAegQDNBbBfnZQf
         3Gsey0yoJ3D1nZHNxRIcSabEMZz7n2GdmblJOcr0GDYBCZfpfQhYBPS2pkAqc80gMIqj
         pSZlGu3E5BDXnnuOuKoVS/Msup1jURsTwI3GQWBJ84141gtVwjtQJh7q57QpStIi8Yci
         nJNe4C2QWqSAYOwyoHHzIeGrHAX+N4dd22zWU7yZS1k1/Vmz6tZn1gheNowqFIUs7BBW
         8GdWGX+ATli0sXtkhwn6LIBK24kQIUe5Rhjyzi6/YZCEt7XlB/EZJ6xN44aj/Z3T/BYZ
         afbQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=n1Qwu/XvsgELXtbnoKiEGwTeI5Cm7GPhhnM6wHJRuAQ=;
        b=R+2rcxH1fHM2RetgYwms3AAssrVZnMtIee2a33hZXi3p5E4FW5bjLyuPEhs3okeuhY
         8EqOcn9YM1/nLsDbUz915bpCHQpzPvE+jlNiGevjHwfJ04EZTUOEuI1hm4BXJIA5ZjMo
         nQeW3obaXroD8VFzyg8SnEuRZFmBqd//GePK1AM/ImfcY1UfLlDMJLR9wfyVN2+zbgsF
         rnTgPeZmMHWv7KYnZ6+ORKBQZ9Rkz368lVHExzCbYk+BdXoLCrAYdO1ViR894lcyUcs0
         lAoAYpZjMD9AHmi3qRav7NlioKELyq5bfal5toQCsTozPpnlj6Bdt6aA5yk3eXuVzBFT
         MmNg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=hH+kc7t4;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::444 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pf1-x444.google.com (mail-pf1-x444.google.com. [2607:f8b0:4864:20::444])
        by gmr-mx.google.com with ESMTPS id bg1si189405plb.5.2020.08.27.12.41.47
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 27 Aug 2020 12:41:47 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::444 as permitted sender) client-ip=2607:f8b0:4864:20::444;
Received: by mail-pf1-x444.google.com with SMTP id u20so4312602pfn.0
        for <clang-built-linux@googlegroups.com>; Thu, 27 Aug 2020 12:41:47 -0700 (PDT)
X-Received: by 2002:a62:3583:: with SMTP id c125mr17402856pfa.1.1598557307051;
        Thu, 27 Aug 2020 12:41:47 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id n68sm3453245pfn.145.2020.08.27.12.41.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 27 Aug 2020 12:41:46 -0700 (PDT)
Date: Thu, 27 Aug 2020 12:41:45 -0700
From: Kees Cook <keescook@chromium.org>
To: Joe Perches <joe@perches.com>
Cc: Andy Shevchenko <andy.shevchenko@gmail.com>,
	Masahiro Yamada <masahiroy@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	stable <stable@vger.kernel.org>, Andy Lavr <andy.lavr@gmail.com>,
	Arvind Sankar <nivedita@alum.mit.edu>,
	Rasmus Villemoes <linux@rasmusvillemoes.dk>,
	Sami Tolvanen <samitolvanen@google.com>,
	Andrew Morton <akpm@linux-foundation.org>,
	Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
	Alexandru Ardelean <alexandru.ardelean@analog.com>,
	Yury Norov <yury.norov@gmail.com>,
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH v3] lib/string.c: implement stpcpy
Message-ID: <202008271240.8D47596B0@keescook>
References: <20200825135838.2938771-1-ndesaulniers@google.com>
 <CAK7LNAQXo5-5W6hvNMEVPBPf3tRWaf-pQdSR-0OHyi4RCGhjsQ@mail.gmail.com>
 <d56bf7b93f7a28c4a90e4e16fd412e6934704346.camel@perches.com>
 <CAKwvOd=YrVtPsB7HYPO0N=K7QJm9KstayqqeYQERSaGtGy2Bjg@mail.gmail.com>
 <CAK7LNAQKwOo=Oas+7Du9+neSm=Ev6pxdPV7ges7eEEpW+jh8Ug@mail.gmail.com>
 <202008261627.7B2B02A@keescook>
 <CAHp75VfniSw3AFTyyDk2OoAChGx7S6wF7sZKpJXNHmk97BoRXA@mail.gmail.com>
 <202008271126.2C397BF6D@keescook>
 <98787c53f0577952be3f0ec0f7e58d618a165c33.camel@perches.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <98787c53f0577952be3f0ec0f7e58d618a165c33.camel@perches.com>
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=hH+kc7t4;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::444
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

On Thu, Aug 27, 2020 at 12:37:03PM -0700, Joe Perches wrote:
> On Thu, 2020-08-27 at 11:30 -0700, Kees Cook wrote:
> 
> > Most of the uses of strcpy() in the kernel are just copying between two
> > known-at-compile-time NUL-terminated character arrays. We had wanted to
> > introduce stracpy() for this, but Linus objected to yet more string
> > functions.
> 
> https://lore.kernel.org/kernel-hardening/24bb53c57767c1c2a8f266c305a670f7@sk2.org/T/
> 
> I still think stracpy is a good idea.
> 
> Maybe when the strcpy/strlcpy uses are removed
> it'll be more acceptable.
> 
> And here's a cocci script to convert most of them.
> https://lore.kernel.org/kernel-hardening/b9bb5550b264d4b29b2b20f7ff8b1b40d20def6a.camel@perches.com/

Yeah, thanks again for that. Most of this is very mechanical. (strncpy is not, unfortunately)

-- 
Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202008271240.8D47596B0%40keescook.
