Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBGUX2H2QKGQEITUESJI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vs1-xe3f.google.com (mail-vs1-xe3f.google.com [IPv6:2607:f8b0:4864:20::e3f])
	by mail.lfdr.de (Postfix) with ESMTPS id 8894B1C9872
	for <lists+clang-built-linux@lfdr.de>; Thu,  7 May 2020 19:55:39 +0200 (CEST)
Received: by mail-vs1-xe3f.google.com with SMTP id j187sf1623565vsd.4
        for <lists+clang-built-linux@lfdr.de>; Thu, 07 May 2020 10:55:39 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1588874138; cv=pass;
        d=google.com; s=arc-20160816;
        b=AMbxOG92BA9bo8djs5RuNv8aHZKbfcb+x6BbjLFJMlRUOapjxjKVUtfq4h81VKIIs5
         mEExbijesPsD1dBHr1SD2OzWz/6C+N9EAYJVLpgbRdmNy/rYScLNqa3ZYlzrIV6oGmxq
         ItVShgAwfgPrRjqQGsmJ3P2wal1JxlUWz5RvvCu7lYwJjv7B5oN3RTQ3q1EfzDFTBCyK
         vXcazP6h1SRBokZLkssZu0OTDQLXne0IaIAm50ZJ6K56BJ502g7Cz7hmANFCPt6c3Bpu
         FroIWPbIOXZxf/hPQBIeBGTo5ZuKttKrYjbps8AzVkx7TPpQ5Wjc69QgfAAUjGkNNMnj
         BDNA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=H7uNwAodgh5eJK2AvO5xRoTQcM8k0TKOewfMow8JIbs=;
        b=ZoUX+IRFunQy68OCX93ofVE/LrR0fc+hFdoW6rTfUapPkh0eHu2z5Jxir84MTGr581
         rC6mUUsDw43b9SBj/p/A2c8oOUcwKSwee0hqXffe6cr+gQnYvjJDK0IgtiT+fsufSxm5
         JKs+VTX6KzwVgW/K/OTVh6k/Oj10fL4VQMlLeDRcHMOdgvFJXhLSVoevUcF5SRlOh2uk
         f4S5Yh6geusmkLKLuxeA4FXI2EvpfunuXk5PNcuKHcQ9WcqXszI4nI7YCTC+pza8f51h
         lOwWEMXAQEajI5SA2m2XNFbNLc+X7rNQftKjViqdtRO3+2nkCEQvvM15c5W9KAqGD1ih
         s+aQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b="Y9cx/kiJ";
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::52b as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=H7uNwAodgh5eJK2AvO5xRoTQcM8k0TKOewfMow8JIbs=;
        b=m/DHxB9ed4BJBl2Ww8FvYqP+BAha9e5mFqURQW83KZVFFm33PMfA+GmtTC4scIwrP/
         wuTUPz/6XPF5VCCca84CLEMfyZUUy8IBbC1L01re/flxNsweLC+dPpV8lQU/gIc0Vmej
         Xp2gc2gFxAabQBTatBJ4j+NQpFoeDk/x+JbE8yIZNpDu/tKocKwfpHzXEyWf43iKgqAB
         4cwDj1OrOVEosr86F4v5nwn9qM29nTKOsHwGlGIs07Asxf/JfMN9FdGmi5Rav0xdPasE
         4/COzexLfbGNKjRdCA7kOn06k2ehCnCWS4WxRI00Y3NcyVXJ0naUefEUaxHJGV9LZbAU
         NIUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=H7uNwAodgh5eJK2AvO5xRoTQcM8k0TKOewfMow8JIbs=;
        b=aA5DVT59AyXGHnF+ePI4CB7MeDcvXoqD+XkKhVJInxmN8RBfYQM8BYKD91jnLG9vP9
         wszOYvlSE27tWnAQBHxXKHfzgWKGMveDGV4v9sUaZ+O/JCDr/YambgNzOCrNQyMT5o+u
         G5SFNsjBvFlsaz3fXqaTAO4gG0YZfnMtGBj52G1WTXMtO0y2xqGrQYVZZ5tx6P8tEI9e
         Blfy0riI/Jyxzx5tbCu3Gh6iz7N/sLpKjOcc+k+Jvs6maHX5D27fpiQkFpTxJGJIb0+2
         cDt9SbJ8bng3DoLA4lx/+ID9J64XntmXcTYF3lzBvBmWafw86E8Bsx/LDuB1znRllmqO
         AteA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0PuZ0/BibBla/TB1cGJsi+bU4JaSGCv839BH3Q21Qx8VTzNf97HII
	1cjVCse8vG2rmiTzCQUKTLg=
X-Google-Smtp-Source: APiQypL7YdNLdBhmVz5rZld1x1MHMKZPAAvhltiGZkDJkrHgh4kzkFwp9ZWABvTBJ3B11NAvLcDPLw==
X-Received: by 2002:a67:f254:: with SMTP id y20mr13758493vsm.177.1588874138370;
        Thu, 07 May 2020 10:55:38 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:7f86:: with SMTP id a128ls773618vsd.8.gmail; Thu, 07 May
 2020 10:55:38 -0700 (PDT)
X-Received: by 2002:a67:ebd2:: with SMTP id y18mr14730122vso.116.1588874137910;
        Thu, 07 May 2020 10:55:37 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1588874137; cv=none;
        d=google.com; s=arc-20160816;
        b=eaonxsgYBJnPtvFOUsswR9SKrXZjvZFiM8WYPfJNa0jTJnJWxTDSmaihC7e3y+FLQO
         2UCWtMULsCdGUEKd15FT2w5DidvDXeMauuq+9DQKKPyFNUbb3okgywb5BHf2ZK0fuaBA
         hEFDTXiAjCSW5r+UITmjOI/ob/k8KN7wwFGYwx8fH4Hp1YU3NWWC8W991wdRVz5CQk8/
         RRFvjqki7zzdUOTYVO+9p1PrNkhRJfruncxveLpcY5W8Zw6amS0JMpoGfi3Id8cvoXY6
         pG5iYeKaPBZNjr6A+LxFc191AgAUXyiSB//iUYA6LXUNBc/NeEgYy9wc7YEkg06t/ium
         DvFA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=wyR3mIHDG/oVnEqkkdDI/gLJMGnrjxuCfhzFGjARxQA=;
        b=ZxGQAxhfcDCFmuadhuXUyqLvkDKSulVyTDzhvEVU9X44VnqjXW8jyhgsdwUbypAoa1
         VYbWD0jtU1Z5EHCAs7eGDfPaV2z2f+lZi+F6Lf0fP2H1YgNGgP4rf+qbaSJ7wKiswgaw
         zY4KMHXHLhQ8yjl38oH+wJhTnQe0FelLhZ0xtL1gv5CIO9BC+rumBod9ftVdFOBwcqdt
         RkNNRGepEMS9Ea2tIEsu0FLEw2ep9plcQEAHYoBPy/A4h8DcENMD1VVyFbUtGc/dYjNz
         aj8dJUCmLlvCxiM1Xh/0i5sBePuILjwWp/US+xKuvk9HdHyilXnvQ1JtutenRzcHy0uq
         hCjw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b="Y9cx/kiJ";
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::52b as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pg1-x52b.google.com (mail-pg1-x52b.google.com. [2607:f8b0:4864:20::52b])
        by gmr-mx.google.com with ESMTPS id a65si426091vki.2.2020.05.07.10.55.37
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 07 May 2020 10:55:37 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::52b as permitted sender) client-ip=2607:f8b0:4864:20::52b;
Received: by mail-pg1-x52b.google.com with SMTP id q124so2817613pgq.13
        for <clang-built-linux@googlegroups.com>; Thu, 07 May 2020 10:55:37 -0700 (PDT)
X-Received: by 2002:a62:dd03:: with SMTP id w3mr14640125pff.76.1588874137490;
        Thu, 07 May 2020 10:55:37 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id z7sm5349033pff.47.2020.05.07.10.55.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 07 May 2020 10:55:36 -0700 (PDT)
Date: Thu, 7 May 2020 10:55:35 -0700
From: Kees Cook <keescook@chromium.org>
To: Alexander Potapenko <glider@google.com>
Cc: Nick Desaulniers <ndesaulniers@google.com>,
	Android-LLVM <android-llvm@google.com>,
	clang linux fellowship <clang-linux-fellowship@google.com>,
	clang-built-linux <clang-built-linux@googlegroups.com>
Subject: Re: Clang-Built Linux Meeting Notes - May 6, 2020
Message-ID: <202005071054.E7FDB5AE9B@keescook>
References: <0000000000003c4d7f05a5002a86@google.com>
 <CAG_fn=VZ6tR0wD+grUFn+B_ywU4hbXV7eQDqM2xYb5cAQKOtLg@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAG_fn=VZ6tR0wD+grUFn+B_ywU4hbXV7eQDqM2xYb5cAQKOtLg@mail.gmail.com>
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b="Y9cx/kiJ";       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::52b
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

On Thu, May 07, 2020 at 10:10:51AM +0200, 'Alexander Potapenko' via Clang Built Linux wrote:
> > Kcov + boundsan or tsan - kcov gets disabled
> 
> Any details on this?

This is the bug arnd opened:
https://bugs.llvm.org/show_bug.cgi?id=45831

-- 
Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202005071054.E7FDB5AE9B%40keescook.
