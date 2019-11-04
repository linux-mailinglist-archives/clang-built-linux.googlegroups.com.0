Return-Path: <clang-built-linux+bncBDYJPJO25UGBBYNLQLXAKGQESWQRTHQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53a.google.com (mail-pg1-x53a.google.com [IPv6:2607:f8b0:4864:20::53a])
	by mail.lfdr.de (Postfix) with ESMTPS id 11125EEAF1
	for <lists+clang-built-linux@lfdr.de>; Mon,  4 Nov 2019 22:19:31 +0100 (CET)
Received: by mail-pg1-x53a.google.com with SMTP id v17sf4483592pgc.13
        for <lists+clang-built-linux@lfdr.de>; Mon, 04 Nov 2019 13:19:30 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1572902369; cv=pass;
        d=google.com; s=arc-20160816;
        b=wxsAYm/chtr86h4Nr4Fmam51OSaXPJIXumI6++dOXidaSW7DXOUcozLI9sPp9Ugkr5
         rqzWcZNtyzQvVDZMmtvdaXmfb/ViBC03XRCoBxg9D5C/Limdt+zrOo50AF9g4NXnfHiB
         kPKoH03R1RrAe3yueQhrqduD/fluVcNdmElKnpKqXGjwC/Z7meBYXs+uVs+bnoYDmhqK
         ucR1e9cwZ7KaySWuag+uR+i79ug8rct4Br3MW9H7LdIq1E9A8KdeFC3W7gaFvvNTz51O
         5N5ACPoJEvakhYpExMhOz1FJzwgRb1ZsDyg+3g8Z8wG35ZhRD8TtbyEAK0xdzpYEu+5k
         MEtQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-transfer-encoding
         :cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=DmMlNiydgWAW7hJ+tbFRo2Y48lDzIHm356Z7M/HV2+I=;
        b=Vpm0b1gqFviNBoQN3pbNJG/WZZ0WSkbUj0aZOrreEietONa4RhMvAm19DNqJiPeLm3
         MHpXwHWDTZ/bLqSPrKUQJ3kpqj4fQK8VRJO72QqFAO3B4QUzEykt9U0PvupgkBTWzxgn
         DhQjqialqhdqKu7fRHvXbuTzguCRJa8lO6koL4C5GYTT+BdIugLWMDWK5fXc1n+KjOQ9
         YHHs0D2n7kzALOYVUBJOwJpxUpcuQj9YSW9sfkMChhqYwF7EPDhPGiIy9si1aboxBjYU
         TXUp0vwrNHqqahHFudkqni8Rs0rqe2uN1fhQ9t/Xqpi/C+5enk1vUuqYvg4tiMH1q01/
         HFLQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=HbeuStW1;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::636 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=DmMlNiydgWAW7hJ+tbFRo2Y48lDzIHm356Z7M/HV2+I=;
        b=gbH/orKoN3Kr6oNpQwqYnL69hwc8i+ZYzTbcOWREmgCnPdZQvu/OwwLEQ8GQoFCHUN
         OflYfIKk3/jUc6BmHjOoWYKNtE/QQwZ54Jl5TmHebViIAwzJvklja6/0caWtF/XtD8Tt
         pWAYaL9w/5vG8H96o16rae9j+NqHWQ18LhYN0GUh+Ni9YO0O2Qxts+pjKLfDj0GxaddN
         YHpPiBGGGyLBOrkJrqpcElYanJBOzuUArkPNwOjP+l8qXCQ90Uzgzkg7rdR0ThfQsNJr
         8vdniJ5jdRQbcxLbYhWEjugW9I/7KeeAi+9rV61TtxBnjSJ9XYIrvA1aiB5Ow6LsYoy0
         PlDQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=DmMlNiydgWAW7hJ+tbFRo2Y48lDzIHm356Z7M/HV2+I=;
        b=ZnII5Ss8ZoEWwN0n7HTZ4dk6qkqH+2aeTZ76epRIp9uwoWPs3mJZeozQTafyhr9pRj
         gPzGKUro1LITTtW/3g+uHhm6vKFm5DWhP1/p55OubPZycUskjHV0XBk9zmKWyGeNiXAL
         VQLgkUPlack4R2LmM2KDd0veMdiFMTO68X50P3p7bvHBRjFAJn7zhwiRElNedt0XArM4
         lAVtPXB7tzACGEByQ3bgTZP0dn6CxqRHQKSXbVkEFrodHXfYkekKto0hFDBaT1LwpZ5g
         dkr0+4h7ghPL6UhmWfONN9juFh6wHLUrIeyIccPBjN3QDSHaVxnuWZxWSOceJZUcD/gE
         SecA==
X-Gm-Message-State: APjAAAVXkyF+tflibiF1iLWQjai/jpujSo5msDq4DCSgkKIbzPPoxziU
	cEbK0MN0IbunY1YwybmTKrw=
X-Google-Smtp-Source: APXvYqzUt1W2cXJfoH7oVk2mX+5tLdoepmHvusY+5BzKf0ScdE+zBYO58lyVpfmE0jeFOEZpBPECsQ==
X-Received: by 2002:a62:1ac6:: with SMTP id a189mr33130161pfa.96.1572902369639;
        Mon, 04 Nov 2019 13:19:29 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:1ae6:: with SMTP id p93ls151686pjp.2.canary-gmail;
 Mon, 04 Nov 2019 13:19:29 -0800 (PST)
X-Received: by 2002:a17:902:9343:: with SMTP id g3mr9058825plp.278.1572902369137;
        Mon, 04 Nov 2019 13:19:29 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1572902369; cv=none;
        d=google.com; s=arc-20160816;
        b=DiiqxbqzpmMyyPT9uval2QcDK3ROeDhM81u99HuBMtlhP/R34AfWj68XB4sF494oDC
         9kGMcxdHrXwJ05jCJVpeTTb++H1QQx+puvufpHkSD4gfZU1VNuJGyJmJv1/8hiNCvLv4
         HOJtUlRuzDot2wEWwSt+twkLkHk+g8PI+s+qDfYj4DgElqx+x8BXIuQxTS5v0ND/7qLb
         SakN7/sKfG4LUxZ4wJvoT7ukLYtsEBCYCF1Ap/FjKw+LN/+BV/Pthv2PB5xsNXKzDTi9
         F4oazxo/6h58tedGtvpiF0+FIwMrVChyT34LDBkm6zmDs6vXOqwS5mGe0DNz1WJx2nNN
         Yp9w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=KdzhyqifTRe8TDX3UUxFdfviyflBHzucf/ZpTqGnSEQ=;
        b=isMr1Ijl2Sa3aa5BTK7kMBTmpcKESS/JT45T7EPq2sMbXep9rx8Oro4q3oebY9wvUr
         M49H4anCh1lL3pfDXsL7KqI5oGchnPpuIhYl0+XzxiCQ5Jr/B8t/vdm6yC194lLOcm/D
         SDIUO/eld71QlHEV0Vc01y7Mc87GPMGi35Xj/C3uKAxKR1MfHDaciktH2SvptG3fqu/w
         y/hqbI0djkBjmMjgFs7kv+leJMMUlghjnzR568GMKeB8eAdzef4J9/xuhBzT4PM/Y0h6
         kblhkrK2IX5CedMss1g1u90wvFQYA2fxb9vdcLqxy/nJk4dI4Kn/1QcvRXkFksL9s6wh
         MIeg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=HbeuStW1;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::636 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x636.google.com (mail-pl1-x636.google.com. [2607:f8b0:4864:20::636])
        by gmr-mx.google.com with ESMTPS id f17si948651pgk.3.2019.11.04.13.19.29
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 04 Nov 2019 13:19:29 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::636 as permitted sender) client-ip=2607:f8b0:4864:20::636;
Received: by mail-pl1-x636.google.com with SMTP id e3so6127044plt.7
        for <clang-built-linux@googlegroups.com>; Mon, 04 Nov 2019 13:19:29 -0800 (PST)
X-Received: by 2002:a17:902:9b83:: with SMTP id y3mr29037517plp.179.1572902368245;
 Mon, 04 Nov 2019 13:19:28 -0800 (PST)
MIME-Version: 1.0
References: <CAGG=3QWPXoYMwWcDMu+sAGgdJPXULw2XjZB76Uhjcx+z6yo9rg@mail.gmail.com>
In-Reply-To: <CAGG=3QWPXoYMwWcDMu+sAGgdJPXULw2XjZB76Uhjcx+z6yo9rg@mail.gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 4 Nov 2019 13:19:16 -0800
Message-ID: <CAKwvOdkUdYXTiQQqYohQ+kZN4BQ4DFexDRqO-8SpOkkNkfXeOg@mail.gmail.com>
Subject: Re: [Meet-Up] Call For Presentations
To: Bill Wendling <morbo@google.com>
Cc: clang linux fellowship <clang-linux-fellowship@google.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Nathan Huckleberry <nhuck15@gmail.com>, 
	Behan Webster <behanw@converseincode.com>, Behan Webster <behanw@gmail.com>, 
	Lukas Bulwahn <lukas.bulwahn@gmail.com>, Arnd Bergmann <arnd@arndb.de>, 
	Nathan Chancellor <natechancellor@gmail.com>, Dmitry Golovin <dima@golovin.in>, 
	Peter Smith <peter.smith@linaro.org>, Masahiro Yamada <masahiroy@kernel.org>, 
	Sedat Dilek <sedat.dilek@gmail.com>, Stefan Agner <stefan@agner.ch>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=HbeuStW1;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::636
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

+ more folks, explicitly

On Mon, Nov 4, 2019 at 1:06 PM Bill Wendling <morbo@google.com> wrote:
>
> The Official Clang-Built Linux Meet-Up Call For Presentations Announcemen=
t
>
> Now that we have a date for the meet-up and people are starting to sign u=
p, we need content. :-) We are looking for presentations you think would be=
 interesting to people. Your presentation could be an hour or half hour, th=
ough I wouldn't focus too much on the time aspect.

Hi Bill, if time permits, I'd like to do the following talks:
1. welcome/intro/background/history on the project
2. LLVM: how do I debug this shit?

>
> If you have a presentation please contact me and Nick to let us know.
>
> Some people have already mentioned presentations they would like to give.=
 If you did, please let us know again just to verify.
>
> Share and enjoy!
> -bw

--=20
Thanks,
~Nick Desaulniers

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/CAKwvOdkUdYXTiQQqYohQ%2BkZN4BQ4DFexDRqO-8SpOkkNkfXeOg%40m=
ail.gmail.com.
