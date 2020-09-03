Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBRG4YX5AKGQEYRO4IRY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53b.google.com (mail-pg1-x53b.google.com [IPv6:2607:f8b0:4864:20::53b])
	by mail.lfdr.de (Postfix) with ESMTPS id C170B25CD90
	for <lists+clang-built-linux@lfdr.de>; Fri,  4 Sep 2020 00:29:25 +0200 (CEST)
Received: by mail-pg1-x53b.google.com with SMTP id r2sf2623224pga.12
        for <lists+clang-built-linux@lfdr.de>; Thu, 03 Sep 2020 15:29:25 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1599172164; cv=pass;
        d=google.com; s=arc-20160816;
        b=ILPbqk61K9CTYb4YrGUZqiJcxKsQReQ28CmZ8zm+DxaK3yUv3EZ4x15nUtjbJkMxtH
         mYFK9Ejv+NpvS/5641W5uDmzNbj+BTUn8aMP1jhbE0pGlk2EaosauO76gi6TrZZkvRAJ
         hbNWwcU5EV3ynEPlZQ95YEa431F60/ysimxF3holRCZzNYZWGWO2877qAF9MgSgfhvdr
         mprvfb3rGAm8AervJpBY2u7y6pitsRriqxEZOsjAA3b7fFYgTjcfuaj/lCZNoNI/ymws
         Tc5nsuY2yYQhTD99OJGpr0bxlwPAHuyAj7sLT97cqlRcnT+Gd6QDmhR71Cp/tvxl8XkV
         P9Sw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=XzwfFUtPmDjdBkG0gkBndVKF1EMHR0UpOABACZjnZdk=;
        b=e0zEPsu6g8PJ+MCT780p0+rC6fzKBw10EKgbfmFwybTqAc5UWPkVwX/zU2Ads9jEwt
         Gk9qGWHMkwEqwKuZarQHc4utXhrESuGCtHTpHdiQ5F1peHwlHS5/yF3xeNOQNX5+TKJZ
         xW6XoByQvo/hR1shM4/LeQ84ejgiJJUSX4creucZTAFcOrX0CfziCzwK2gdyKAnL91LF
         hqsNF895NggKGx08xN2j8lH920RNu0pQqswd739t53YK+3KwYdCBJH9BC6IhOX2LYc9p
         XDtJUibHE7zDGxo5PYmSS34rvga8+AvfhAL+K3A4Hrr3olO6s7D/6X9Y59zb8kKm/HOr
         qX3A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=KHsDbTkW;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=XzwfFUtPmDjdBkG0gkBndVKF1EMHR0UpOABACZjnZdk=;
        b=Cie99xlFE7TBjEUexk9dzXyG5g0mAf02LCBXuGsqFTwKXASr/E9dYggGL5o34uI2LE
         gV8RyoBc5jou2J20zZ/qyDKiuMYO6NZMoR1qf2KV5H5XHwdsWRTk25dEHG+Waic+mC5q
         s4kl8ZoeyYQimwhbEHE1omYnEjN9lHYgHcRndM1lb9hDWka6Csal4B/dsuXl+bkupjHK
         vfbTQsETrqMZTX+MLl5W3rG0JnFjA6y2LIrS2eFLGg0N1Xd8ecBTZwXnxEF2CMOcTnHd
         W+eCo/YVBsPgiaRyyghHUve0HT9kQvBM78OflR+7bfffy7IqNI5NqFOTLVPT7JBufqdl
         4cnA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=XzwfFUtPmDjdBkG0gkBndVKF1EMHR0UpOABACZjnZdk=;
        b=i+j/wFP1vm8mYS7e5yEnBA4eQ03YOcitP3dfnvg1LcLu86+PNu1Hc+yrU3q+Mnlx1l
         K6dn+SxDazagOEU3V4Pk3wbzOsAsZb04L0qFXqHWeQB+3hG4To1rS/IMV7IEjpXiVgk5
         G2yMb1OkV7XZKyytOQeb3PSs0Z2741vpR9k6BseFA5oi8p6HyPUYnN1uL2zR1M4QeTez
         1ObL8edJ/hi8Hu7jQn7/EmlgwjOuUygKn2F5H0MCe2ES3Pwe4Rfj8Pr5nYO4xtReOhju
         EdsCWE34X65cuRH9KXAAoyblRIOMCFNL2FnbRQ5krJEtE4prwS6btKFoz1jRTW1d34aG
         k7cQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532WyNSeU9HOXzRo+UbMrOQBED3Dy9mKa0eb24ct5wDJkAO3s8/b
	XV66qPD9ReCp+xh7t9ZHv8Q=
X-Google-Smtp-Source: ABdhPJwbCtJEkMpv/l0+evhgM9GfaXErMfKHLF/iKRyiIDOmUcmdglxVjYSQ1pfhKMPBWd+yDkNaMg==
X-Received: by 2002:a63:a559:: with SMTP id r25mr4771682pgu.153.1599172164507;
        Thu, 03 Sep 2020 15:29:24 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:7e90:: with SMTP id z138ls2933305pfc.8.gmail; Thu, 03
 Sep 2020 15:29:24 -0700 (PDT)
X-Received: by 2002:a62:8647:: with SMTP id x68mr4406471pfd.169.1599172164015;
        Thu, 03 Sep 2020 15:29:24 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1599172164; cv=none;
        d=google.com; s=arc-20160816;
        b=FQq3p4EBQ5IvH3vr/0dPgFKCM7gCX61hW9/XWe87PuUUNr/v3f373KzPntwG9J7bBK
         fKOALKkV7psozd89ezvMZBReP2BPxyA5Sds9oQAiUPs2fBtfmxnZzMvG5+nr0kvYB2dq
         QfesV+vJMKif0u/mkqcqCgjq6WXKDlTHk/Fjezzu+cjG/Fq6dl+iwUQm5tCep8DUOIIq
         vSSmOme+N6eIS76vzBntIMJBexRu93+FOaoqdl4DbwwLCv0I/HRtMZ5AzWxOOhjKfC8t
         EdqMRR1UL2rIAxiX34gJp5p0iwWcQwm4C9HnNn0SrpS3flb+io4xiU4dES6+mUq6HIWc
         I5bg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=TORQKLjaztafBoTASZ16yvu7ARDRy50kM4Q1p96biak=;
        b=0hCu0I5ubCRUud4N8ZnhvzHLAd3zkxyjhZGNamMY6fcM36/zynwNwRZ0/a4r22GMrE
         4Z3CMSoQvJXMZrE0vFCRbQ+Vh/hpK0Fw58qAdmpMuZsFjeDC+joS2Epe+dnxY4vf3USw
         9dHG0wCf5kUG1nmW6Ezx9CqMtxwBa3MP+1M9ap+cSHHbx+yFVLg4s1GXodjAApnUr5jg
         iJNZcoKxNsfZeMhhDcm7NZot8Ar1ZTqbUoCfFOVo/LsAvuq1dlsKNZRbw0IwbCzNatF9
         pJFcv+z/plu5LKYQZuOxMlN2gE9PWoEVR4W2IO7O3VSbmhufKGxUwVvBbeUyoBKIZ0F6
         9+UA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=KHsDbTkW;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pg1-x544.google.com (mail-pg1-x544.google.com. [2607:f8b0:4864:20::544])
        by gmr-mx.google.com with ESMTPS id y204si322837pfc.3.2020.09.03.15.29.24
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 03 Sep 2020 15:29:24 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::544 as permitted sender) client-ip=2607:f8b0:4864:20::544;
Received: by mail-pg1-x544.google.com with SMTP id 7so3231657pgm.11
        for <clang-built-linux@googlegroups.com>; Thu, 03 Sep 2020 15:29:24 -0700 (PDT)
X-Received: by 2002:a63:344f:: with SMTP id b76mr4554312pga.388.1599172163775;
        Thu, 03 Sep 2020 15:29:23 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id 64sm1588906pfg.98.2020.09.03.15.29.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 03 Sep 2020 15:29:22 -0700 (PDT)
Date: Thu, 3 Sep 2020 15:29:21 -0700
From: Kees Cook <keescook@chromium.org>
To: Sami Tolvanen <samitolvanen@google.com>
Cc: Masahiro Yamada <masahiroy@kernel.org>, Will Deacon <will@kernel.org>,
	Peter Zijlstra <peterz@infradead.org>,
	Steven Rostedt <rostedt@goodmis.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	"Paul E. McKenney" <paulmck@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux@googlegroups.com,
	kernel-hardening@lists.openwall.com, linux-arch@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, linux-kbuild@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org,
	x86@kernel.org
Subject: Re: [PATCH v2 14/28] kbuild: lto: remove duplicate dependencies from
 .mod files
Message-ID: <202009031529.78A2DE9D8@keescook>
References: <20200624203200.78870-1-samitolvanen@google.com>
 <20200903203053.3411268-1-samitolvanen@google.com>
 <20200903203053.3411268-15-samitolvanen@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200903203053.3411268-15-samitolvanen@google.com>
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=KHsDbTkW;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::544
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

On Thu, Sep 03, 2020 at 01:30:39PM -0700, Sami Tolvanen wrote:
> With LTO, llvm-nm prints out symbols for each archive member
> separately, which results in a lot of duplicate dependencies in the
> .mod file when CONFIG_TRIM_UNUSED_SYMS is enabled. When a module
> consists of several compilation units, the output can exceed the
> default xargs command size limit and split the dependency list to
> multiple lines, which results in used symbols getting trimmed.
> 
> This change removes duplicate dependencies, which will reduce the
> probability of this happening and makes .mod files smaller and
> easier to read.
> 
> Signed-off-by: Sami Tolvanen <samitolvanen@google.com>

Reviewed-by: Kees Cook <keescook@chromium.org>

-- 
Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202009031529.78A2DE9D8%40keescook.
