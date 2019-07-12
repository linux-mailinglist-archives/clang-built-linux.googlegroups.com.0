Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBO4VUPUQKGQEYUPUQOA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x43f.google.com (mail-wr1-x43f.google.com [IPv6:2a00:1450:4864:20::43f])
	by mail.lfdr.de (Postfix) with ESMTPS id D0680674D5
	for <lists+clang-built-linux@lfdr.de>; Fri, 12 Jul 2019 20:00:27 +0200 (CEST)
Received: by mail-wr1-x43f.google.com with SMTP id r4sf4660085wrt.13
        for <lists+clang-built-linux@lfdr.de>; Fri, 12 Jul 2019 11:00:27 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1562954427; cv=pass;
        d=google.com; s=arc-20160816;
        b=ezv8VVNpzfxq5u1Pg9P5RL8KRbrNGapYLUki6I2ZYQD51Uc4KgZxF6VVBm5i+f43ZP
         Qb2ZyQKq3SETuxEci2TG8AeP+0Fodqsco6UpWwbWAor5M+m1obmt5iHwekpFxtEcDAyy
         lPPNW7+Zf4XrgDzu9/F5vHrzq/aSHpGUJuhhGUNchCYVt6ikyfbfyBLKNbGWktkPO3mj
         EzbVWgYbVW3ZoqDYj1S4jNQzSoPtntuw/+fWdOeRKaN8ovFtWmO+LcWWQxA0alz4oBwt
         kartVXsmXCAMTNw/h+fucMamNX/jodV4WWycBm3uTxUeJu4Rz9NknGeiSr4ktG7kEAY1
         /FdA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature:dkim-signature;
        bh=o+YEmit2L7pG/WqVausDe2sWy+aib9uLlzWFG734uWE=;
        b=Z9boudE+KCUZeqF4zr7U48ZrhnvJaISg5jRse3I7egBJ9uIOMlTMCZfxesDHovDWjS
         IW9Wc60THx8MjU36wXHOgpgJtMaHN72UJu9zHbygqnVNgtB4x7l3we6Prgj9NIw93qp7
         fQdn9Rj2MUsI9MrmXW7Xep4+EiJ+nrazRtZeWsmdb7SbWXa4VNt1Ya8jQaCvpbw22oY4
         rm3L80le3h5zUqYMlpQcjUXuNlBDZ0tO4aXCCul+3RywLopAC/w4haDyFjxS1WF9LFL5
         j4PaIprwvwuIQw5zmvepJAF8YiRf0LYKfN0EOa4AVGgAb2bWl7mT4/wCwlPz/Cneb63J
         in3g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=WGLyidCE;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::441 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=o+YEmit2L7pG/WqVausDe2sWy+aib9uLlzWFG734uWE=;
        b=VOHR5xCj/S0p02/eEzr1xeILayud1jT/kaKfDs7tt/1O3TKMbR+OofKojXFdPnAlyk
         cWuzbb4IFJpZ2VomcTbgtwXadW7yK1KcV3PJPLka7OC9ZbVt1+L8nFmo0EvofNltkP1W
         +eaB5G13APlqhO8w15ir6y5vIrQC8iMdEFzXJxYicIfniKteb5YiW+FfaAVTT9mYDtoN
         lcRRaVDRTiGQ1Ar4pZ6p2W26w8HsMYfPWOmrlPIebBzVNqz4h0iv6KhAzmMo6FlLRhax
         CnFVKJwnJri9/Pma5n3J8e0vJYuY5Tys/U99IP7TMoPemKleI0ZX2yv44hRIBQi+gsJG
         zCBw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=o+YEmit2L7pG/WqVausDe2sWy+aib9uLlzWFG734uWE=;
        b=LoxNllIW/vh1IO761jDCN4AoYkDYL+alB5YSIgpgZ3S7RRU9lI9t7FaSYfuZCqczwD
         P46zGhQPqMrAGeG1LYD+s/wuD0rP2RTC4kZ7QYsiFJYLRqRDxazeUJHz4megXI5BDIGR
         1I8v5ifutwj3Kq0YP79pSuM67Baf3+nl6+KRmtFLXe0mLFKnV301ExWn9+qXqnCmctW7
         JSPS9alTHXso39TgwT+WL/+9nCSXK5HKZ7y2tfQ+JkxLWGrbDsJdLHm7zRgNR9stAVTq
         ypnDkMeY99247otFptgN/bFGxcSB2seeavhsH1RDnSZrI0MwncS9QG8FiU9fhbiik46i
         E6aA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=o+YEmit2L7pG/WqVausDe2sWy+aib9uLlzWFG734uWE=;
        b=AshfceAUToSHdmPCd4lCDfoRvnpxbh1gOJHQkgZFjLjrHJNgagSl/010pEUyfJlxYm
         me1TXctJlRYEZ6RvsPl5o+iRF3fOaeEjwACNt0pruSLHlW+pfezRUh3ohgaoZ4IOjStk
         3373wKdN4Aa4bJ6r1IU32q11w4fAE7R7Wg0EG1iHB0PlvIg5bxyMiRai7DAbA70GX6V7
         INxAnJAVF+GgVgoMqxjhQzHIuFKbMIybj3blT4uNHMpzE255CTXC7HpIg4+qwFvrwMTB
         mKjDz0nT8kxXsj/58gih93Lrnj7/MK9iO4zTe7/+RCsZO3NsfRx9YSnCw22BVgiLcP+P
         gYvg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWvYmippcmow61WdbjxH7EmK4U0VcEsM2NjzZNV2hdBqeSZq+DN
	MeQ6VDTkOQSr2gf6KcyXmjU=
X-Google-Smtp-Source: APXvYqya6rYA6xeWMdoI0pm12onfDiT8cGgiw3fvRZQZ+gVRoDZfXEjefIbO5TQQmrhs8xyed1AReg==
X-Received: by 2002:a7b:c0d0:: with SMTP id s16mr10952984wmh.141.1562954427606;
        Fri, 12 Jul 2019 11:00:27 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5d:448b:: with SMTP id j11ls3418535wrq.3.gmail; Fri, 12 Jul
 2019 11:00:27 -0700 (PDT)
X-Received: by 2002:adf:e941:: with SMTP id m1mr3247004wrn.279.1562954427147;
        Fri, 12 Jul 2019 11:00:27 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1562954427; cv=none;
        d=google.com; s=arc-20160816;
        b=AYAS2zLE0V4ww2QrAEKD3yZEgMDVyw61hAkrxVGNj4O9YwD1K61rdCWlEUp3MvDnq2
         CI5NIy91HxE3uDu1+PLh/8KAucdrGTvatJXpFQjpM1EwOVKKCX2Z+kMHrxsZPdgkObvy
         UKfNRoqii11mCoeCAQl14FvrdRdC7yRQ1CS6Rw/gxEvuScf6P7TvP5UgVvoetBlQumu+
         8yzSC8Z3yRe5nB6vWyqcP6rfyET0sb12HE9YMxxB+nIVFC3j0Ar1E7Jq+oq96B78HxhK
         O94ypNjjvxrnCkyZySMxSBkY4wy2VqkO9PmnaPIb54/8p7V8tgtWhEq0Hw5Wlj+EUGYD
         A4CQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=jSLflZiZITnN+LWl1xVscHlJHNXtKI7cPwZYoo7JveE=;
        b=J/mLK4MLlZ0s6bWj4797iqUHq4WTXfHG/mrq/ul8bbDUdeZknbJjPRaZDGY6ENcu4G
         J/OCs3uj1cJA2d7M1vNMzyHpuE6mDrJ9L1GFrm1+0KDW/cYvU05urn66duJZA1SSnJuz
         meVs3RFt+fwfGTJMjw5uxm6GudkB6VAciH9C8FuQXdM2uNhJyIhhQfOnNqL+/eu864YD
         +rfxEp1KxKbU0HDSkogMe4Ffy9xelJEiKIHAwufWKLYTTd8MMyQbAopU3Y/N/40SPbaY
         SXyaGV/qjrGzVg3e7CS2GevjDzB+MkVywWOThnJPUDlsBvEX7sdW8SK408SReZYLfHIt
         Wxvg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=WGLyidCE;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::441 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-wr1-x441.google.com (mail-wr1-x441.google.com. [2a00:1450:4864:20::441])
        by gmr-mx.google.com with ESMTPS id u18si597722wri.5.2019.07.12.11.00.27
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
        Fri, 12 Jul 2019 11:00:27 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::441 as permitted sender) client-ip=2a00:1450:4864:20::441;
Received: by mail-wr1-x441.google.com with SMTP id p17so10812311wrf.11
        for <clang-built-linux@googlegroups.com>; Fri, 12 Jul 2019 11:00:27 -0700 (PDT)
X-Received: by 2002:adf:f591:: with SMTP id f17mr3250076wro.119.1562954426638;
        Fri, 12 Jul 2019 11:00:26 -0700 (PDT)
Received: from archlinux-threadripper ([2a01:4f8:222:2f1b::2])
        by smtp.gmail.com with ESMTPSA id a6sm6755054wmj.15.2019.07.12.11.00.25
        (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
        Fri, 12 Jul 2019 11:00:26 -0700 (PDT)
Date: Fri, 12 Jul 2019 11:00:24 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Arnd Bergmann <arnd@arndb.de>
Cc: "Rafael J. Wysocki" <rjw@rjwysocki.net>, Len Brown <lenb@kernel.org>,
	Mika Westerberg <mika.westerberg@linux.intel.com>,
	Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
	Hans de Goede <hdegoede@redhat.com>,
	Sakari Ailus <sakari.ailus@linux.intel.com>,
	Rasmus Villemoes <linux@rasmusvillemoes.dk>,
	Keith Busch <keith.busch@intel.com>,
	Heikki Krogerus <heikki.krogerus@linux.intel.com>,
	linux-acpi@vger.kernel.org, linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: Re: [PATCH] acpi: fix false-positive -Wuninitialized warning
Message-ID: <20190712180024.GA21382@archlinux-threadripper>
References: <20190712090148.36582-1-arnd@arndb.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20190712090148.36582-1-arnd@arndb.de>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=WGLyidCE;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2a00:1450:4864:20::441 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Fri, Jul 12, 2019 at 11:01:21AM +0200, Arnd Bergmann wrote:
> clang gets confused by an uninitialized variable in what looks
> to it like a never executed code path:
> 
> arch/x86/kernel/acpi/boot.c:618:13: error: variable 'polarity' is uninitialized when used here [-Werror,-Wuninitialized]
>         polarity = polarity ? ACPI_ACTIVE_LOW : ACPI_ACTIVE_HIGH;
>                    ^~~~~~~~
> arch/x86/kernel/acpi/boot.c:606:32: note: initialize the variable 'polarity' to silence this warning
>         int rc, irq, trigger, polarity;
>                                       ^
>                                        = 0
> arch/x86/kernel/acpi/boot.c:617:12: error: variable 'trigger' is uninitialized when used here [-Werror,-Wuninitialized]
>         trigger = trigger ? ACPI_LEVEL_SENSITIVE : ACPI_EDGE_SENSITIVE;
>                   ^~~~~~~
> arch/x86/kernel/acpi/boot.c:606:22: note: initialize the variable 'trigger' to silence this warning
>         int rc, irq, trigger, polarity;
>                             ^
>                              = 0
> 
> This is unfortunately a design decision in clang and won't be fixed.
> 
> Changing the acpi_get_override_irq() macro to an inline function
> reliably avoids the issue.
> 
> Signed-off-by: Arnd Bergmann <arnd@arndb.de>

Reviewed-by: Nathan Chancellor <natechancellor@gmail.com>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190712180024.GA21382%40archlinux-threadripper.
