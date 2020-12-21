Return-Path: <clang-built-linux+bncBDRZHGH43YJRBYGQQL7QKGQELWZPZ3Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103f.google.com (mail-pj1-x103f.google.com [IPv6:2607:f8b0:4864:20::103f])
	by mail.lfdr.de (Postfix) with ESMTPS id 2EF412DFC6A
	for <lists+clang-built-linux@lfdr.de>; Mon, 21 Dec 2020 14:51:30 +0100 (CET)
Received: by mail-pj1-x103f.google.com with SMTP id z21sf7047588pjq.2
        for <lists+clang-built-linux@lfdr.de>; Mon, 21 Dec 2020 05:51:30 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1608558688; cv=pass;
        d=google.com; s=arc-20160816;
        b=lDy2sY6jyvbrANSUW48C7uQ599BJHHTvC+rokf+XF663oPF8kb1C6/g23iMlKzL6Nq
         8CrVOw40rskL9BB2OE+tu5dy2Spau53STKFJRUNSHjDfwkvZ50pkwl41tKGpQZ9YXSgz
         vFpo32px6dopuW2ngWPmWe2+p1mWhJYbJRXT+58t41/wj9Zeqs3Ik2KUzAZDC47tJ1Lu
         d5QqNkVVeMgECu16d/J1BQBhBmObWzdLgC9w8snGjdh7RNVnqiq5sufTQVP1bh8K5kry
         SSMIG7EfO+eKaPGlFoYncNAJQgHXE7uJRqiuTCXri9tb7EhWEi5jvvj7EkTq/kmeygWI
         1NKw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=dDXid142NuioQuhtGYl9CZ/OcBxrgyJVXQcO02JEzxk=;
        b=bcGWwlPwDuo4iIEicL1TnwlWVwX60YPBzt+CMq5smlBQXaND7Zg2uRkXNySsRTVu4R
         pqtyMqG3WqgtOFY3GZUP8KRSbvuZoGH/VjXOBF65FkdfT+XHVyjkf6RHoyAN43Bvru3a
         xB9K6N9hJ1ENKK8n1miHodSAFsdp6Xi6nurt6bxZk4+DgjUSacwi7Js3ZW+8uSWY4ExV
         jWzR9mfEDWSzMLvnJKKUX/fxE8BIJgGTCyiGbZyaTlH4kJnKYAfY6H1mDtkMUJcBHdd/
         wREu6v5FXyxshy261gZ2VqVGnp404dSeUmpqZBBS5QMzltnltSUNKMV2l4oPmEV4B2hh
         XWRg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=hEivyO3L;
       spf=pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 2607:f8b0:4864:20::b33 as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=dDXid142NuioQuhtGYl9CZ/OcBxrgyJVXQcO02JEzxk=;
        b=czfVdCp47NkQcEMZrxVwRSnsCc9/rmCMM/lDO5Yk4xlpDdfIbTj/hYoJyM3wyZWfxx
         3f0TOGaxBqfT8yugC2unIbR9TpCvgdc3QH0XCUck03pVTya5w1rHsoHA0Org1BrICpnu
         RO8KL/fFAUchF2QqHzOpYmuD3ZeR5YKCmW7r5ivgU7UUatUDPQLcdTrTdTe8q88qCEgs
         AM/v2yxmCSl73NPd4jo9un+cofAdfI1CWSXMo1ueFfKKD4O+HtUTbopY/EfGaLFjvwa/
         4Cohk9mSs60ysT9N5oqnMxDbQ6sUXoneTSD0dX9wt6r5USRgQn52jbnVH3KDNqZOVI3A
         qMhg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=dDXid142NuioQuhtGYl9CZ/OcBxrgyJVXQcO02JEzxk=;
        b=XxkrLeoftDmncx0wfyCTAIndCcnVx5xWcoo73IfXNKJyk+BDDOsomNRIiMD9twskBL
         rqRL0dLas0r6pyVW5Se3RLEqB6uL942RMAF4pOf+6fej0y2TRj0lf5j9LQngjeYWa+42
         8c75ZWufKFRC+HN7DjL3+HKEswabeFUQBzCP8HZTLXlocntKjW9gL0JOpgE8qxIXAawZ
         26cJYcJpYqSJVpF/TqCOXp1g8/he59H686NWdP4qW0uLym4kvC+A+jIscyVZ61RoQQ+L
         PgUYXSwW/Fn5b0tu8pu3t51WTLOGyGqZ6pm0cGBka2CxMC2m2h8vA+Tzfy3bZXQfYiIC
         fYxQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=dDXid142NuioQuhtGYl9CZ/OcBxrgyJVXQcO02JEzxk=;
        b=WlDzdnsg5Hb9KwBvZCzrR+CfNciXpIbyHys1OL33M1YLzGnX9WW8wElUL6nY5D+XrG
         7KWMhe4Z8KrJFBr4wuHAzUTKGZn441KH8Ocr5SY4f6SOOj2qSLsulk/NWwXuy7qOPMs5
         ph41Pu0Bm7jtFrJGs2FuRkFVetuuu9BH5ZDBl/jMdCO9YyPpK5WNFr4//3KgOBeiMLqo
         foOcSq+zfEjim6rq/GE4PafONyrcy3JQK5jMLs4O4RSq60yDuMRhBbe73ZfeaFhHxNsl
         y5sKqgwf+wHe5/uHnaEQm+ICdjwvW6joVLVcoOZ2TnKhMzRGuUzfkdoZQm7nQz32Vo7T
         gU8w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533Jb3LceBvB64ccIXz2y1aZPKhFAx/rfMoz/KIZN5bfh7SZ0bfB
	AJs/8zYcNv3j3IIypwYv5hQ=
X-Google-Smtp-Source: ABdhPJwDjQn+gjWFl82GMHFHzthNUF28nRG0uP4fugCKX0OiDtCrZVNtkwykBG3FQbCj31J83q5YVg==
X-Received: by 2002:a17:90b:3907:: with SMTP id ob7mr17541617pjb.70.1608558688680;
        Mon, 21 Dec 2020 05:51:28 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:b782:: with SMTP id e2ls18403047pls.10.gmail; Mon,
 21 Dec 2020 05:51:28 -0800 (PST)
X-Received: by 2002:a17:90b:943:: with SMTP id dw3mr17010209pjb.97.1608558688010;
        Mon, 21 Dec 2020 05:51:28 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1608558688; cv=none;
        d=google.com; s=arc-20160816;
        b=QIyOZ00ANpf3fRuZV03QTgAp9ieG6lQptKw2steB79Y/lup3tguIWK+xuWVessPO7+
         SOvAVwJDHEPUrS1txH91ya5g9YR+Ue6HX63YiekGuz6+jgkN6moJwLnQwfnt+QzWBOYO
         LQ362tilfR2IsPcZF8Bhn2tUok6CsKowGU2nVfLx4tZpttTOrydO6QYNVzJAbrqPMn11
         1kkvB4nS1z2zpq+kyX2/U3QgafurARF/JGk07IHwt55E44nvsACNlZuakypQuk8W9lyN
         8NIGwgTWsR90XrKxzHdM1KgVa1CFBxWvaAHStMWZVf+6Ul1tm0hBEJhtlXj+C5aby91R
         npCg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=22WfrYqwVdHV4R9eUfnFdyTLajoJ14FZuqG4/EZXiBg=;
        b=FP0COgHYCYfjJbO55gaDS0aA9Lh/NQhBMsuO+5Jkqm0Losvi5hskuJTSpOkXKWmsz3
         Wp7i15h+roZyDe/GOb2NrA+t7Hfe8Y2Zpuli+qV78hd7AdRma2uAfy6jVI4ZJVxMREFy
         TyunDY1+3nFYFyqFT5eC450lW+hgw3yuOe4h6c9Vk0fVYDpUyXcOB3kWds4jY0/2CqpH
         yq+vslWEMvtczYlDO7BAxbTVy1hzi1+AV3CnuozfMwhslyuRBmQetUk2eFiwiZHxuQb1
         KyLwZwcXNRjJh7DlmgzCh2DkfdE58ZGOpeG4tlrZpELK+wWUQyrNOl8AutusAErj1Md8
         TlKg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=hEivyO3L;
       spf=pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 2607:f8b0:4864:20::b33 as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-yb1-xb33.google.com (mail-yb1-xb33.google.com. [2607:f8b0:4864:20::b33])
        by gmr-mx.google.com with ESMTPS id q15si1224622pfs.1.2020.12.21.05.51.28
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 21 Dec 2020 05:51:28 -0800 (PST)
Received-SPF: pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 2607:f8b0:4864:20::b33 as permitted sender) client-ip=2607:f8b0:4864:20::b33;
Received: by mail-yb1-xb33.google.com with SMTP id x2so8821811ybt.11
        for <clang-built-linux@googlegroups.com>; Mon, 21 Dec 2020 05:51:27 -0800 (PST)
X-Received: by 2002:a5b:949:: with SMTP id x9mr22811402ybq.33.1608558687798;
 Mon, 21 Dec 2020 05:51:27 -0800 (PST)
MIME-Version: 1.0
References: <20201128193335.219395-1-masahiroy@kernel.org> <20201212161831.GA28098@roeck-us.net>
 <CANiq72=e9Csgpcu3MdLGB77dL_QBn6PpqoG215YUHZLNCUGP0w@mail.gmail.com>
 <8f645b94-80e5-529c-7b6a-d9b8d8c9685e@roeck-us.net> <CANiq72kML=UmMLyKcorYwOhp2oqjfz7_+JN=EmPp05AapHbFSg@mail.gmail.com>
 <X9YwXZvjSWANm4wR@kroah.com> <CANiq72=UzRTkh6bcNSjE-kSgBJYX12+zQUYphZ1GcY-7kNxaLA@mail.gmail.com>
 <CAK7LNARXa1CQSFJjcqN7Y_8dZ1CSGqjoeox3oGAS_3=4QrHs9g@mail.gmail.com> <55261f67-deb5-4089-5548-62bc091016ec@roeck-us.net>
In-Reply-To: <55261f67-deb5-4089-5548-62bc091016ec@roeck-us.net>
From: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>
Date: Mon, 21 Dec 2020 14:51:17 +0100
Message-ID: <CANiq72mQ=5JpMh1OZfJo6dypF0KHSUp9Umd_5qwATxEMgO5OmQ@mail.gmail.com>
Subject: Re: [PATCH v3] Compiler Attributes: remove CONFIG_ENABLE_MUST_CHECK
To: Guenter Roeck <linux@roeck-us.net>
Cc: Masahiro Yamada <masahiroy@kernel.org>, Greg KH <gregkh@linuxfoundation.org>, 
	"Jason A . Donenfeld" <Jason@zx2c4.com>, Nathan Chancellor <natechancellor@gmail.com>, 
	Nick Desaulniers <ndesaulniers@google.com>, Shuah Khan <shuah@kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	linux-kernel <linux-kernel@vger.kernel.org>, 
	"open list:KERNEL SELFTEST FRAMEWORK" <linux-kselftest@vger.kernel.org>, 
	Network Development <netdev@vger.kernel.org>, wireguard@lists.zx2c4.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: miguel.ojeda.sandonis@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=hEivyO3L;       spf=pass
 (google.com: domain of miguel.ojeda.sandonis@gmail.com designates
 2607:f8b0:4864:20::b33 as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
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

On Mon, Dec 21, 2020 at 11:02 AM Guenter Roeck <linux@roeck-us.net> wrote:
>
> On 12/20/20 10:18 PM, Masahiro Yamada wrote:
> With a change like this, I'd have expected that there is a coccinelle
> script or similar to ensure that claims made in the commit message
> are true.

It is only a warning -- the compiler already tells us what is wrong.

Cheers,
Miguel

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CANiq72mQ%3D5JpMh1OZfJo6dypF0KHSUp9Umd_5qwATxEMgO5OmQ%40mail.gmail.com.
