Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBBXGUD5AKGQERV4OXPA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb40.google.com (mail-yb1-xb40.google.com [IPv6:2607:f8b0:4864:20::b40])
	by mail.lfdr.de (Postfix) with ESMTPS id D2884255106
	for <lists+clang-built-linux@lfdr.de>; Fri, 28 Aug 2020 00:26:15 +0200 (CEST)
Received: by mail-yb1-xb40.google.com with SMTP id x6sf9337348ybp.10
        for <lists+clang-built-linux@lfdr.de>; Thu, 27 Aug 2020 15:26:15 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1598567175; cv=pass;
        d=google.com; s=arc-20160816;
        b=XO+JalqXqdOXeQdhBXbVdzG9oiIZfLhPYA/+v7NtTU9FhHSlFSdVcWkCN3giKcVXqX
         uHZd70MPEYcxYygRq0Cej4jfrjDqJf2cwZhjG0ytbYRq84p7w3+TZNxaS/GXRZnXxA7z
         kV78nTbPoU+b963lPcRGvjYr5YDM4846UiFoNlZwNecxYPTOsXCDO5SEoyKCB+bdpew2
         vzucXFklpfnfU20zoOLW/MNhOOuuugA3PrMtX5ow4CSNvT7wYed/U5tiXKcydC7FoJwD
         XEbJfKoTB++36mrX+YZiKES06ruUbJ2J97xTnib3CzYf3bwe14XzaT89t9RyWHgJALs8
         zw8w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=NSJljTCkk23cDEzlulwMcElTFfhW4J0h1mcKpw/cq3Y=;
        b=gYAKCd2/7yV9M512k3SeIrPfxloIIQxFmS4bz2hmq05tg4QDTMQNwtk6glslJWHF0g
         GsNXUsY9lmpKhLblp7bXMKhj/8+ecYCal+l6SfGpwJ6pb8TB4C7Nhw5BvxsL9Kghp8c8
         D93964fwfgDM05FkxkRiEdKXgYLb6SBP6koedWfh25LoeY3yg8eucFg2eGG9j/V4uIYa
         f5xIbT9ULxnIQSFh6eSe8yWqbxBLKs9ArxIqK1HmFkVacl3xkdXpLqGmSgHZJQAW3L1L
         PkjsMNPOv7FYqc1tKps+Hy+zSiAeWSLlhd5KbK0JAD1leolCEgm2eEtw/i5A19OcPN6/
         WW9A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b="K/syNsgg";
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1044 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=NSJljTCkk23cDEzlulwMcElTFfhW4J0h1mcKpw/cq3Y=;
        b=gp3Wjyqm+Ll8i8sJAXuR3HnO1Tx7wGvOzH1pJ3MvoTB97v1z3OYtzIHPIlhs1ECs2y
         Yn9XJAa0jm5OOY7XL0LTtCyjPUA2Be0UKAmrbVNk/mdFGI3DGv7TqEOeYh/OmeIxAUvm
         HedgoBSpNsw6RssPJa31ydJMvMqs8CAvBSBAqiw2CcAQMIY7tCJUxtvcr258WTZbnazp
         J7EzNRO/UkMN0XKnDJxweK+W37WWVYrGA851bFjkad2CfmyDzwZ3LltmDEt9CIJ8t87n
         0EOV5ILbaJa72SHTo7/bA9zlTYqz3zN0JO6Wl3ZV7CQVbkMAPLzszrK9lXlYsaMlgc1/
         +aTA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=NSJljTCkk23cDEzlulwMcElTFfhW4J0h1mcKpw/cq3Y=;
        b=owp/UjpETgW7I6hf3yWJB52zVM+N6jJyNz5SFdb3og3+9hSITR+Xm4Xe0RLsmlAIh7
         7sWMa4xxZ87DwAXYNmZYdfwyXJ3rkxLgVXiy6MQG+jMqnQ17ycWVoVBdqNSpfl+G3KcM
         q1BC/x/cqm/YX4JsixirHM8LLsaI/9O5GHifOMq8qsxuZIwrzTjs4uXTy7sIsM4rREg8
         E8BNzssyfLNtWgxO/KvsC8gfkmlK7/TjB+0YOswfitNz+AfR8Ks9UMiv3ssY4CQA6Sz1
         5Nhtlf7Oq68y9TrI/e+oo7SF0zYHaXVVqnom0sO0hYNWTMcoq6N7IhalLKGjUCC6AoFI
         FZgw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530UQwL58fYryEgfcOUMtZV3ItrFcFPU/yeclxHh5Qk3AkgPbPMO
	CnZ8g62PmG4c2btGvcYcKjQ=
X-Google-Smtp-Source: ABdhPJzlJIqrsHvWhij1vQksVdDsAridGvLXkeWPZ6PsMMtVQD+CUPLoZigAO2U2Cz7hWMPTmduMUA==
X-Received: by 2002:a25:cfcc:: with SMTP id f195mr32578189ybg.490.1598567174723;
        Thu, 27 Aug 2020 15:26:14 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:840a:: with SMTP id u10ls1731868ybk.0.gmail; Thu, 27 Aug
 2020 15:26:14 -0700 (PDT)
X-Received: by 2002:a25:3483:: with SMTP id b125mr33817862yba.8.1598567174349;
        Thu, 27 Aug 2020 15:26:14 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1598567174; cv=none;
        d=google.com; s=arc-20160816;
        b=QUPVjuoVSExXHd3/4Fpvr4QqPWUQfC/cmr5oupVSWh3CKCzMLsJmjcUIfpulpiX8bx
         gSgE22syB23BW+6UvR94BFdAaEqA0A/G9VwhyjHhp4hq5pXW3peA9s8CF1byixCwLOaN
         S3rOOaQp3eHcwQ3BiYB+mVniCyPz946wd2Zn5jr660Xb4++Hw7HpyHve0OkRi+6Ky9cr
         p/jImS+jdoAEbHaMMqjWc3rrH7oUOPb0wfpKYhYEDlE6auzkTAEgsBhOKzZu3I53KFi6
         OmJ7XardOlW571wbvsZuPbIITYlZBd77zv8+1z4edVkB9XjkeMLvcJIfmZvq8F0EEehO
         7f7g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=oiRYPTV9Xp4hDmIJl3FIgZQBNMfOgdOX8kJLpd9LdbA=;
        b=UmHu2XtR7u6gopgi/Ddee0nRHPJ90RQu7nxzRGJU4F93b07XZdC9wCE4QuWPjkhtS2
         3yZYBACZD2TChVxz37+RWxj7vdLrwTsBDUE56O5KVDODC0NHn2SM9o/dWbwXxRMPICK/
         5hTZgUJhzf9EsEkBb9V/IMgwjBxndlKhoBDzpSNa8e+VeqaQq22fBn0c92mNLXIOURSa
         6f60EghJN7qc8D1v7qS5MS5Bdpwcv+mKXzhInF/HzS/7pZS+SnIGwcjuA9BUBckg27fY
         ygBobVO30IBArfPOeakTmgWRD8sUexiElBGbmi5o5v4RdHF2khf1uvtE1xVe18DJxBi7
         mPug==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b="K/syNsgg";
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1044 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pj1-x1044.google.com (mail-pj1-x1044.google.com. [2607:f8b0:4864:20::1044])
        by gmr-mx.google.com with ESMTPS id 7si153694ybc.0.2020.08.27.15.26.14
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 27 Aug 2020 15:26:14 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1044 as permitted sender) client-ip=2607:f8b0:4864:20::1044;
Received: by mail-pj1-x1044.google.com with SMTP id mt12so3377005pjb.4
        for <clang-built-linux@googlegroups.com>; Thu, 27 Aug 2020 15:26:14 -0700 (PDT)
X-Received: by 2002:a17:90a:6b07:: with SMTP id v7mr910704pjj.138.1598567173631;
        Thu, 27 Aug 2020 15:26:13 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id y1sm3960582pfp.95.2020.08.27.15.26.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 27 Aug 2020 15:26:12 -0700 (PDT)
Date: Thu, 27 Aug 2020 15:26:11 -0700
From: Kees Cook <keescook@chromium.org>
To: Andy Shevchenko <andy.shevchenko@gmail.com>
Cc: Masahiro Yamada <masahiroy@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Joe Perches <joe@perches.com>,
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
Message-ID: <202008271523.88796F201F@keescook>
References: <20200825135838.2938771-1-ndesaulniers@google.com>
 <CAK7LNAQXo5-5W6hvNMEVPBPf3tRWaf-pQdSR-0OHyi4RCGhjsQ@mail.gmail.com>
 <d56bf7b93f7a28c4a90e4e16fd412e6934704346.camel@perches.com>
 <CAKwvOd=YrVtPsB7HYPO0N=K7QJm9KstayqqeYQERSaGtGy2Bjg@mail.gmail.com>
 <CAK7LNAQKwOo=Oas+7Du9+neSm=Ev6pxdPV7ges7eEEpW+jh8Ug@mail.gmail.com>
 <202008261627.7B2B02A@keescook>
 <CAHp75VfniSw3AFTyyDk2OoAChGx7S6wF7sZKpJXNHmk97BoRXA@mail.gmail.com>
 <202008271126.2C397BF6D@keescook>
 <CAHp75VeA6asim81CwxPD7LKc--DEvOWH9fwgQ9Bbb1Xf55OYKw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAHp75VeA6asim81CwxPD7LKc--DEvOWH9fwgQ9Bbb1Xf55OYKw@mail.gmail.com>
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b="K/syNsgg";       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1044
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

On Thu, Aug 27, 2020 at 11:05:42PM +0300, Andy Shevchenko wrote:
> In general it's better to have a robust API, but what may go wrong
> with the interface where we have no length of  the buffer passed, but
> we all know that it's PAGE_SIZE?
> So, what's wrong with doing something like
> strcpy(buf, "Yes, we know we won't overflow here\n");

(There's a whole thread[1] about this right now, actually.)

The problem isn't the uses where it's safe (obviously), it's about the
uses where it is NOT safe. (Or _looks_ safe but isn't.) In order to
eliminate bug classes, we need remove the APIs that are foot-guns. Even
if one developer never gets it wrong, others might.

[1] https://lore.kernel.org/lkml/c256eba42a564c01a8e470320475d46f@AcuMS.aculab.com/T/#mac95487d7ae427de03251b49b75dd4de40c2462d

-- 
Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202008271523.88796F201F%40keescook.
