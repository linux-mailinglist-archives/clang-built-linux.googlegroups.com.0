Return-Path: <clang-built-linux+bncBDS5JPEL3IIRB47JYOAAMGQEBDLQN6A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23b.google.com (mail-oi1-x23b.google.com [IPv6:2607:f8b0:4864:20::23b])
	by mail.lfdr.de (Postfix) with ESMTPS id 16B103051B4
	for <lists+clang-built-linux@lfdr.de>; Wed, 27 Jan 2021 06:07:01 +0100 (CET)
Received: by mail-oi1-x23b.google.com with SMTP id t21sf480410oif.16
        for <lists+clang-built-linux@lfdr.de>; Tue, 26 Jan 2021 21:07:01 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1611724020; cv=pass;
        d=google.com; s=arc-20160816;
        b=WLTjfAuCPEVJzOXHsectQjqUwEOdKzj0WvtvoabYOVC4e5DLDPFFvB1UoHe1F63rq7
         ddckbtPOaK0SeUAL+DHx6cPoylS96u8jJxjKB9Ry1di6C6O0fEOr6yj0SQ2Dp4hwxagp
         7hVAJdjGf2319NNdJrPsQDMyEtIDb7kqApJNKzMNgwwI0J66Uo9NVzumUVSSafMZMUOo
         TiwmXKe7EGexUZ7nkYC3FN0gbGScQsTgAbKJIzG7dBOlIJTO2BPG6BOyU4cM74m2pZ46
         2t7tsk6bI6YtHHgZI/zi7AiJUvcI75Wbasg7iWEmeHyBj/+g9JHOpzcw01teBGKr1xOB
         /EJg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=E+ZQ5xfQGEJa8OdR/56M5frG95CmLkfg/ZI6MzzLzmY=;
        b=sdJeQP9dxUG6gmcQWwY+6gRMZIHRb7SLI1UjDlpaYgDXMUNeTBUo12RjgzRnq6GO9H
         Is9Zjpf96T4v/uZVJBe67P2uIM8esRmK7U/BuO1aPRai27xjNXhnDajR7LBhmP19bmHD
         xzrHocaTawF2Fnk/DXqSqGoW1WINN+e6wn8vPk0JH6aJyz2u6/XnaEOsIGZ9paeSXbTJ
         cRS1gelyz63QMC02uNKKfn9QhiSCXCucRc4yYiQq9ApPlyzzvCFOEUKn0fyEtFE6qYXC
         hkMHBv0i3ZNEohzTBHR0NB0xJjhqGmIB1CVYFdIWLiSco8bce0Z5u6EYeCP/X2xW5Mja
         LjmQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=O6QBYPbw;
       spf=pass (google.com: domain of lukas.bulwahn@gmail.com designates 2607:f8b0:4864:20::d2c as permitted sender) smtp.mailfrom=lukas.bulwahn@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=E+ZQ5xfQGEJa8OdR/56M5frG95CmLkfg/ZI6MzzLzmY=;
        b=Go86aWQjUFVW6HUk7ObQDYUsxx/zgq+gZ8zUl7UNaTyUuqQIXoRwkzVzp/DjJhD02A
         wlOIV1S1u2efbSdRWI7E8VpZfXTyO6oLp84Ckg+tzvxQnJ0pZ/NdAXzHYyDROJBXXYJU
         N/K9oqf+BJNFj1hU5T9XLMNDYHDWUzO1hyyWCuDMSDwVrCclgWgHdk8lMgQ/x5B2Gpye
         ESpDWx/eIpDkk2ZEf5aKX5iHFVxK/nrIGelj3g8dtnA3HapIiKTjzwc8D0DhwfxNrMgd
         TiGek0+t69Dra+irxy8+SMDov+mQv5PamV9ZbvThSvpQ4FQ6D5GN7JwZsg7J4IpykUdS
         WuWw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=E+ZQ5xfQGEJa8OdR/56M5frG95CmLkfg/ZI6MzzLzmY=;
        b=aQJwlAuApS5sz/EvUglLHekWthTfMkPfL51VJHE4xeN2mE43TPYSORFNXNMZeSS354
         Akp9TVUKdZYMtnUNZn/vkQxtZLkGwcMTqRueE0Xwlm7pFQFBg1ZZBoH63MBswEOWmo7a
         s3o3ZNPPyPXvuwkxRzsSAOW4tB7BzjfkQ+njG+ScTQEGdCZ16H65nhMP/c+XvgtWvkmv
         xTSd62F1tkUsOEyeqL7vNvkwFlHHDps5b1gQKzPCPyNYgj7Cl8BUd/eymsaAgLn10mgX
         2zF52ULoQ6Zi4Ozhm0wwd9QVNa4AeRlVZO0AMkDbOrVz1Cs8ALZQTwaX7/cW0DZe9WiT
         a5Vw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=E+ZQ5xfQGEJa8OdR/56M5frG95CmLkfg/ZI6MzzLzmY=;
        b=YiU2bILMepimZJqJh8JNfdTNQLtOl8qECR1zPdlMWr4osONHktfhp4fipnBmQZg5tG
         xAvFzlMMwg5BVYL2GH5dLk6I7A+Tg8hybca0DNtmXOXoPuWSXrChlQeYN2T9BkW+06bl
         V9GCH8KSgLV6Dvk3v9109B9Li8sI9gCYDcx3BR6C/CMHCPGT2oXXykf9UlXSejCv7AgE
         gg8l4UDQWMzwhisnC+xYhk/RSSK+Y49+k6LAuhlKHCg/apo8TsMk7asVfGlKSsQD/tci
         zElikpicx2rTtWNx7h4dspK+qDTWCJgqFOXLL5G1MgftfEmwAdtBXViAIqPwPHtcWTHm
         QBqA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530cP8EtqyX6yfEaDWWk1cH86Ei+JpGYSfFSt0LZ7vzXE/3GAIo3
	XNqqdjqsLFnnLFq13YF0qWM=
X-Google-Smtp-Source: ABdhPJx7vydCuAGkYDXnxiEsZDTXLaE6g9SrJKU8Pq4AyBbHn/6bnefQsoS8mbEf1QCMdJZhpsR/kQ==
X-Received: by 2002:a9d:4b0d:: with SMTP id q13mr6465497otf.325.1611724019839;
        Tue, 26 Jan 2021 21:06:59 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:d755:: with SMTP id o82ls231735oig.2.gmail; Tue, 26 Jan
 2021 21:06:59 -0800 (PST)
X-Received: by 2002:aca:ad12:: with SMTP id w18mr2087482oie.80.1611724019387;
        Tue, 26 Jan 2021 21:06:59 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1611724019; cv=none;
        d=google.com; s=arc-20160816;
        b=sQ45Xr9WMOcrDbnMw25qfhOvom59Iij7EnAJjQtz63B44KwLWBodUAGZDdcuag83r8
         6DcSDnVn2OUGuieHf1jlmTXkRiUKPRESxdbzMLXje7FzqIX6ccqIlpWwqBlqWCYSFuRk
         Ja9Po1j3iJhSw/FqproWGMHdFKwgxFCgQF7JTpjYp3yOeUm+9MroTec/vl7q47KT8Ea2
         G6Dh+anqyd6xTtW8EbbRCDLadBIMjIfNxKH1n5cd7KJFq0TzNBUK886Fsc3j0Q8Wfz5z
         c+nCZmoBhfvujfYHIAy5xR8pBJiQQLl8cIJ26gDO3fOfXyVK5yVqSAo5wGqv8qfNpdvf
         qZ+A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=xsfi0E/1hcgT86JJVgJBp6A7gRXQnVKva5usCU2Ktzo=;
        b=X/e+MNwQI93J6HgkKT1AlK+SrM+cSyq4biKXH0QtQOiTyu6SnyOP3vQ0Na0JYBs62+
         nb0ZjRYiYa1SGyLfkfnkv9exrQImkxDgAU8ELa8l0bEYsC1QICaEqdXM7G8DZ9zLWITL
         awcO75Ycz/TASgj3DdBa5y36tJASLt69LlFgWd0rJ6473mm0sghAwmccOh950uPX/Tcu
         zchVH/3EdThzfxEXj7QXkLOlddbn7RMGi8w4uBn+tJVQhEuONExV2juT77cvqx5eHWcg
         LHS1MTNBEX5wdT5ScR2lcT5FoltGWlQqlQBh3lVnrZBuoVBxlSWzRK2Pxu7MCD0fSL9Y
         vPkg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=O6QBYPbw;
       spf=pass (google.com: domain of lukas.bulwahn@gmail.com designates 2607:f8b0:4864:20::d2c as permitted sender) smtp.mailfrom=lukas.bulwahn@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-io1-xd2c.google.com (mail-io1-xd2c.google.com. [2607:f8b0:4864:20::d2c])
        by gmr-mx.google.com with ESMTPS id a33si41428ooj.2.2021.01.26.21.06.59
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 26 Jan 2021 21:06:59 -0800 (PST)
Received-SPF: pass (google.com: domain of lukas.bulwahn@gmail.com designates 2607:f8b0:4864:20::d2c as permitted sender) client-ip=2607:f8b0:4864:20::d2c;
Received: by mail-io1-xd2c.google.com with SMTP id u8so625331ior.13
        for <clang-built-linux@googlegroups.com>; Tue, 26 Jan 2021 21:06:59 -0800 (PST)
X-Received: by 2002:a05:6638:138e:: with SMTP id w14mr7496998jad.98.1611724019002;
 Tue, 26 Jan 2021 21:06:59 -0800 (PST)
MIME-Version: 1.0
References: <20210126212730.2097108-1-nathan@kernel.org>
In-Reply-To: <20210126212730.2097108-1-nathan@kernel.org>
From: Lukas Bulwahn <lukas.bulwahn@gmail.com>
Date: Wed, 27 Jan 2021 06:06:48 +0100
Message-ID: <CAKXUXMwErhv-vt1LC6a79yJ2oukDkPa1BnijDXpdwYu1RK3z=A@mail.gmail.com>
Subject: Re: [PATCH] MAINTAINERS/.mailmap: Use my @kernel.org address
To: Nathan Chancellor <nathan@kernel.org>
Cc: Andrew Morton <akpm@linux-foundation.org>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: lukas.bulwahn@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=O6QBYPbw;       spf=pass
 (google.com: domain of lukas.bulwahn@gmail.com designates 2607:f8b0:4864:20::d2c
 as permitted sender) smtp.mailfrom=lukas.bulwahn@gmail.com;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Tue, Jan 26, 2021 at 10:27 PM Nathan Chancellor <nathan@kernel.org> wrote:
>
> Use my @kernel.org for all points of contact so that I am always
> accessible.
>
> Signed-off-by: Nathan Chancellor <nathan@kernel.org>

Congrats, Nathan. You deserve it for all the warning fixes, reports,
maintenance, CI, reviews and much more stuff you are doing.

Lukas

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKXUXMwErhv-vt1LC6a79yJ2oukDkPa1BnijDXpdwYu1RK3z%3DA%40mail.gmail.com.
